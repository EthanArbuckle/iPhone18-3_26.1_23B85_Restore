uint64_t hevcbridgeMeasureSliceHeaderCallbackUnsigned(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 <= 0x1F)
  {
    v3 = 0;
  }

  else
  {
    v3 = -12712;
  }

  if (a2)
  {
    return 4294954584;
  }

  else
  {
    return v3;
  }
}

size_t FigHEVCBridge_CopyParsingInformation(uint64_t a1, uint64_t a2, void *a3, __CFString **a4)
{
  v23 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  v14 = 0u;
  v17 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = 0;
  v16[3] = a1 + a2;
  BYTE8(v17) = 1;
  v18 = a1;
  v19 = a1;
  DWORD2(v20) = 0;
  v9 = hevcbridgeAdvanceInBitstream(v16, 0);
  if (v9)
  {
    goto LABEL_8;
  }

  *(&v15[7] + 1) = -1;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(&v15[6] + 8) = v10;
  *(&v15[5] + 8) = v10;
  *(&v15[4] + 8) = v10;
  *(&v15[3] + 8) = v10;
  *(&v15[2] + 8) = v10;
  *(&v15[1] + 8) = v10;
  *(v15 + 8) = v10;
  *&v13 = Mutable;
  *(&v13 + 1) = hevcbridgeCopyParsingInformationCallbackFlag;
  *&v14 = hevcbridgeCopyParsingInformationCallbackUnsigned;
  *(&v14 + 1) = hevcbridgeCopyParsingInformationCallbackSigned;
  *&v15[0] = hevcbridgeCopyParsingInformationCallbackCFData;
  if (a3)
  {
    *&v15[6] = *a3;
    *(&v15[6] + 1) = a3 + 1;
  }

  *&v15[7] = 0;
  v11 = hevcbridgeParseNALUnit(v16, &v13);
  if (v11)
  {
    CFStringAppendFormat(Mutable, 0, @"Error found: %d\n", v11);
  }

  if (!a4)
  {
LABEL_8:
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    *a4 = Mutable;
  }

  return v9;
}

uint64_t hevcbridgeCopyParsingInformationCallbackFlag(__CFString *a1, int a2, int a3, uint64_t a4)
{
  if (a2 < 0)
  {
    v4 = "unknown field";
  }

  else
  {
    v4 = NALFieldsStrings[a2];
  }

  v5 = "SET";
  if (!a3)
  {
    v5 = "not set";
  }

  if ((a4 & 0x80000000) != 0)
  {
    CFStringAppendFormat(a1, 0, @"%s: %s\n", v4, v5);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%s[%d]: %s\n", v4, a4, v5);
  }

  return 0;
}

uint64_t hevcbridgeCopyParsingInformationCallbackUnsigned(__CFString *a1, int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v3 = "unknown field";
  }

  else
  {
    v3 = NALFieldsStrings[a2];
  }

  if (a2 <= 115)
  {
    if (a2 <= 29)
    {
      if (a2)
      {
        if (a2 == 27)
        {
          v7 = a3;
          v8 = a3 >> 8;
LABEL_33:
          CFStringAppendFormat(a1, 0, @"%s: %u and %u\n", v3, v7, v8);
          return 0;
        }

        goto LABEL_35;
      }

      v4 = nalUnitTypeString;
      goto LABEL_29;
    }

    if (a2 == 30)
    {
      v7 = a3;
      v8 = WORD1(a3);
      goto LABEL_33;
    }

    if (a2 != 72)
    {
LABEL_35:
      CFStringAppendFormat(a1, 0, @"%s: %u\n", v3, a3);
      return 0;
    }

    if (a3 <= 3)
    {
      v4 = off_1E74A2A50;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (a2 <= 327)
  {
    if (a2 == 116)
    {
      if (a3 <= 5)
      {
        v4 = off_1E74A2A70;
        goto LABEL_29;
      }
    }

    else
    {
      if (a2 != 269)
      {
        goto LABEL_35;
      }

      if (a3 <= 2)
      {
        v4 = off_1E74A2AA0;
LABEL_29:
        v5 = v4[a3];
        goto LABEL_31;
      }
    }

LABEL_30:
    v5 = "?";
    goto LABEL_31;
  }

  if (a2 == 328)
  {
    CFStringAppendFormat(a1, 0, @"%s: %u (%f)\n", v3, a3, (a3 / 30.0));
    return 0;
  }

  if (a2 != 344)
  {
    goto LABEL_35;
  }

  v5 = "?";
  if (a3 > 136)
  {
    if (a3 <= 147)
    {
      switch(a3)
      {
        case 0x89:
          v5 = "mastering_display_colour_volume";
          break;
        case 0x90:
          v5 = "content_light_level_info";
          break;
        case 0x93:
          v5 = "alternative_transfer_characteristics";
          break;
      }
    }

    else if (a3 > 164)
    {
      if (a3 == 165)
      {
        v5 = "alpha_channel_info";
      }

      else if (a3 == 176)
      {
        v5 = "three_dimensional_reference_displays_info";
      }
    }

    else if (a3 == 148)
    {
      v5 = "ambient_viewing_environment";
    }

    else if (a3 == 149)
    {
      v5 = "content_color_volume";
    }
  }

  else if (a3 <= 4)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v5 = "pic_timing";
      }

      else if (a3 == 4)
      {
        v5 = "user_data_registered_itut35";
      }
    }

    else
    {
      v5 = "buffering_period";
    }
  }

  else if (a3 > 128)
  {
    if (a3 == 129)
    {
      v5 = "active_parameter_sets";
    }

    else if (a3 == 132)
    {
      v5 = "decoded_picture_hash";
    }
  }

  else if (a3 == 5)
  {
    v5 = "user_data_unregistered";
  }

  else if (a3 == 128)
  {
    v5 = "structure_of_pictures_info";
  }

LABEL_31:
  CFStringAppendFormat(a1, 0, @"%s: %s (%u)\n", v3, v5, a3);
  return 0;
}

uint64_t hevcbridgeCopyParsingInformationCallbackSigned(__CFString *a1, int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v5 = "unknown field";
  }

  else
  {
    v5 = NALFieldsStrings[a2];
  }

  CFStringAppendFormat(a1, 0, @"%s: %d\n", v5, a3, v3, v4);
  return 0;
}

uint64_t hevcbridgeCopyParsingInformationCallbackCFData(__CFString *a1, int a2, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  if (a2 < 0)
  {
    v8 = "unknown field";
  }

  else
  {
    v8 = NALFieldsStrings[a2];
  }

  CFStringAppendFormat(a1, 0, @"%s: ", v8);
  CFStringAppendFormat(a1, 0, @"{length = %lu, bytes = 0x", Length);
  if (Length < 25)
  {
    if (Length >= 1)
    {
      do
      {
        v12 = *BytePtr++;
        CFStringAppendFormat(a1, 0, @"%02x", v12);
        --Length;
      }

      while (Length);
    }
  }

  else
  {
    v9 = 0;
    do
    {
      CFStringAppendFormat(a1, 0, @"%02x%02x%02x%02x", BytePtr[v9], BytePtr[v9 + 1], BytePtr[v9 + 2], BytePtr[v9 + 3]);
      v10 = v9 >= 0xC;
      v9 += 4;
    }

    while (!v10);
    CFStringAppend(a1, @" ... ");
    v11 = Length - 8;
    do
    {
      CFStringAppendFormat(a1, 0, @"%02x%02x%02x%02x", BytePtr[v11], BytePtr[v11 + 1], BytePtr[v11 + 2], BytePtr[v11 + 3]);
      v11 += 4;
    }

    while (v11 < Length);
  }

  CFStringAppend(a1, @"}\n");
  return 0;
}

uint64_t hevcbridgeGetRPUMetadataCallbackUnsigned(uint64_t a1, int a2, int a3)
{
  if (a3 != 62 && a2 == 0)
  {
    return 4294954584;
  }

  else
  {
    return 0;
  }
}

size_t FigHEVCBridge_WritePaddingNALU(unsigned int a1, unsigned int a2, _WORD *a3)
{
  if (!a3)
  {
    FigHEVCBridge_WritePaddingNALU_cold_5(&v13);
    return v13;
  }

  if (a2 <= 4 && ((1 << a2) & 0x16) != 0)
  {
    v6 = a1 - (a2 + 2);
    if (a1 <= a2 + 2)
    {
      FigHEVCBridge_WritePaddingNALU_cold_1(&v13);
    }

    else
    {
      v7 = a1 - a2;
      if (a2 == 2)
      {
        if (a1 < 0x10000)
        {
          *a3 = bswap32(v7) >> 16;
          goto LABEL_17;
        }

        FigHEVCBridge_WritePaddingNALU_cold_2(&v13);
      }

      else if (a2 == 1)
      {
        if (a1 < 0x100)
        {
          *a3 = v7;
LABEL_17:
          v12 = (a3 + a2);
          *v12 = 332;
          memset(v12 + 1, 255, v6);
          result = 0;
          *(a3 + a1 - 1) = 0x80;
          return result;
        }

        FigHEVCBridge_WritePaddingNALU_cold_3(&v13);
      }

      else
      {
        if (a1 <= 0x10000 || a2 != 4)
        {
          *a3 = bswap32(v7);
          goto LABEL_17;
        }

        FigHEVCBridge_WritePaddingNALU_cold_4(&v13);
      }
    }

    return v13;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x37FE, v3, v9, v10);
}

size_t FigHEVCBridge_CreateSEIMessageWithITUT35Payload(CFDataRef theData, CFDataRef *a2)
{
  if (!a2)
  {
    FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_6(&v25);
LABEL_23:
    v11 = 0;
    v3 = 0;
    goto LABEL_24;
  }

  v3 = theData;
  if (!theData)
  {
    FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_5(&v25);
    v11 = 0;
    goto LABEL_24;
  }

  Length = CFDataGetLength(theData);
  if (Length >= 0xFF)
  {
    FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_4(&v25);
    goto LABEL_23;
  }

  v6 = Length;
  BytePtr = CFDataGetBytePtr(v3);
  if (!BytePtr)
  {
    FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_3(&v25);
    goto LABEL_23;
  }

  v8 = BytePtr;
  v9 = *BytePtr;
  if (v9 == 4 || v9 == 181)
  {
    v10 = v6 + 2;
    v3 = malloc_type_calloc(1uLL, v6 + 2, 0xECEC7A3EuLL);
    v11 = malloc_type_calloc(1uLL, 2 * (v6 + 2), 0x24D5DD78uLL);
    if (v3)
    {
      if (*v8 == 181)
      {
        *v3 = 4;
        *(v3 + 1) = v6;
        memcpy(v3 + 2, v8, v6);
      }

      else
      {
        v10 = v6 - 2;
        v16 = v8[v6 - 2];
        v17 = v8[v6 - 1];
        memcpy(v3, v8, v6 - 2);
        if (v16 != 128 || v17 != 0)
        {
          v10 = v6;
        }
      }

      BufferWithStartCodeEmulationBytes = generateBufferWithStartCodeEmulationBytes(v10, v3, v11);
      v20 = BufferWithStartCodeEmulationBytes;
      v21 = *MEMORY[0x1E695E480];
      GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc(BufferWithStartCodeEmulationBytes);
      v23 = CFDataCreateWithBytesNoCopy(v21, v11, v20, GlobalCFAllocatorFigMalloc);
      if (v23)
      {
        v11 = 0;
        v15 = 0;
        *a2 = v23;
        goto LABEL_18;
      }

      FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_1(&v25);
    }

    else
    {
      FigHEVCBridge_CreateSEIMessageWithITUT35Payload_cold_2(&v25);
    }

LABEL_24:
    v15 = v25;
    goto LABEL_18;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", 0x3837, v2, v13, v14);
  v11 = 0;
  v3 = 0;
LABEL_18:
  free(v3);
  free(v11);
  return v15;
}

size_t hevcbridgeUPullLong(uint64_t a1, int a2, _DWORD *a3)
{
  v8 = 0;
  if (*(a1 + 41))
  {
    hevcbridgeUPullLong_cold_1(&v9);
LABEL_12:
    v6 = 0;
    result = v9;
    goto LABEL_8;
  }

  if (a2 <= 0)
  {
    hevcbridgeUPullLong_cold_3(&v9);
    goto LABEL_12;
  }

  if (a2 >= 0x21)
  {
    hevcbridgeUPullLong_cold_2(&v9);
    goto LABEL_12;
  }

  if (a2 > 0x18)
  {
    v9 = 0;
    v7 = 0;
    result = hevcbridgeUPull(a1, a2 - 16, &v9);
    if (result)
    {
      v6 = 0;
    }

    else
    {
      result = hevcbridgeUPull(a1, 16, &v7);
      v6 = v7 + (v9 << 16);
    }
  }

  else
  {
    result = hevcbridgeUPull(a1, a2, &v8);
    v6 = v8;
  }

LABEL_8:
  *a3 = v6;
  return result;
}

size_t hevcbridgeUPullAlways(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, _DWORD *a5, int a6)
{
  result = hevcbridgeUPullLong(a1, a6, a5);
  if (a3 && !result)
  {
    v11 = a2[2];
    v12 = *a2;
    v13 = *a5;

    return v11(v12, a4, v13, 0xFFFFFFFFLL);
  }

  return result;
}

size_t hevcbridgeParseVideoParameterSet(uint64_t a1, uint64_t *a2)
{
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v4 = *(a2 + 44);
  v5 = hevcbridgeUPullLong(a1, 4, &v42);
  v6 = v5;
  if ((v4 & 1) != 0 && !v5)
  {
    v6 = (a2[2])(*a2, 3, v42, 0xFFFFFFFFLL);
  }

  if (v6)
  {
    goto LABEL_5;
  }

  v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 1) & 1, 4, &v41 + 1);
  if (v15)
  {
    goto LABEL_17;
  }

  v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 2) & 1, 5, &v41);
  if (v15)
  {
    goto LABEL_17;
  }

  v16 = *(a2 + 44);
  v17 = hevcbridgeUPullLong(a1, 6, &v40 + 1);
  v6 = v17;
  if ((v16 & 8) != 0 && !v17)
  {
    v6 = (a2[2])(*a2, 6, HIDWORD(v40), 0xFFFFFFFFLL);
  }

  if (v6)
  {
    goto LABEL_5;
  }

  v15 = hevcbridgeUPullAlways(a1, a2, (*(a2 + 44) >> 4) & 1, 7, &v40, 3);
  if (v15)
  {
    goto LABEL_17;
  }

  v15 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 5) & 1, 8);
  if (v15)
  {
    goto LABEL_17;
  }

  v15 = hevcbridgeUSkip(a1, 16);
  if (v15)
  {
    goto LABEL_17;
  }

  v18 = v40;
  v19 = hevcbridgeParseProfileTierLevel(a1, a2, 1, v40);
  v6 = v19;
  if (v19 == 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = a2[18];
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_11:
    v11 = *v9;
    if (v11)
    {
      v12 = v42;
      *v11 = 32;
      v11[1] = v12;
    }

    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_5;
  }

  v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 6) & 1, 9, &v39);
  if (v15)
  {
    goto LABEL_17;
  }

  v20 = v39 ? 0 : v18;
  do
  {
    v15 = hevcbridgeUESkip(a1);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = hevcbridgeUESkip(a1);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = hevcbridgeUESkip(a1);
    if (v15)
    {
      goto LABEL_17;
    }

    ++v20;
  }

  while (v20 <= v18);
  v15 = hevcbridgeUPullAlways(a1, a2, *(a2 + 44) >> 7, 10, &v38, 6);
  if (v15 || (v15 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 8) & 1, 11, &v37), v15))
  {
LABEL_17:
    v6 = v15;
LABEL_5:
    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v31 = v37;
  if (v37 < 0x400)
  {
    if (v37)
    {
      v21 = v38;
      v22 = v38 + 1;
      v32 = malloc_type_calloc(v37 + 1, v38 + 1, 0x100004077774924uLL);
      v23 = 1;
      v30 = malloc_type_calloc(v31 + 1, 1uLL, 0x100004077774924uLL);
LABEL_43:
      v24 = 0;
      v25 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v26 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 9) & 1, 12, &v34);
        if (v26)
        {
          goto LABEL_55;
        }

        if (v34)
        {
          v32[v22 * v23 + v24++] = v25;
        }

        if (++v25 > v21)
        {
          v30[v23++] = v24;
          if (v23 <= v31)
          {
            goto LABEL_43;
          }

          goto LABEL_51;
        }
      }
    }

    v30 = 0;
    v32 = 0;
LABEL_51:
    v26 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 10) & 1, 13, &v36 + 1);
    if (v26)
    {
      goto LABEL_55;
    }

    if (HIBYTE(v36))
    {
      v35 = 0;
      v34 = 0;
      v26 = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 11) >> 11) & 1, 14, 32);
      if (v26)
      {
        goto LABEL_55;
      }

      v26 = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 11) >> 12) & 1, 15, 32);
      if (v26)
      {
        goto LABEL_55;
      }

      v26 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 13) & 1, 16, &v35);
      if (v26)
      {
        goto LABEL_55;
      }

      if (v35)
      {
        v26 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 11) >> 14) & 1, 17);
        if (v26)
        {
          goto LABEL_55;
        }
      }

      v26 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 15) & 1, 18, &v34);
      if (v26)
      {
        goto LABEL_55;
      }

      v27 = v34;
      if (v34)
      {
        v28 = 0;
        do
        {
          v26 = hevcbridgeUESkip(a1);
          if (v26)
          {
            goto LABEL_55;
          }

          if (v28)
          {
            v33 = 0;
            v26 = hevcbridgeUPull(a1, 1, &v33);
            if (v26)
            {
              goto LABEL_55;
            }

            v29 = v33;
          }

          else
          {
            v29 = 1;
          }

          v26 = hevcbridgeParseHRDParameters(a1, a2, v29, v18);
          if (v26)
          {
            goto LABEL_55;
          }
        }

        while (v27 != ++v28);
      }
    }

    v6 = hevcbridgeUPullFlagAlways(a1, a2, HIWORD(*(a2 + 11)) & 1, 19, &v36);
    if (v6 || !v36)
    {
      goto LABEL_56;
    }

    v34 = 0;
    while (*(a1 + 76))
    {
      v26 = hevcbridgeUPullLong(a1, 1, &v34);
      if (v26)
      {
        goto LABEL_55;
      }

      if (v34 != 1)
      {
        hevcbridgeParseVideoParameterSet_cold_1();
        v6 = 4294954582;
        goto LABEL_56;
      }
    }

    v26 = hevcbridgeParseVPSExtension(a1, a2, HIBYTE(v41), v41, HIDWORD(v40), v18, v31, v38, v32, v30);
    if (!v26)
    {
      v26 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 17) & 1, 20, &v33);
    }

LABEL_55:
    v6 = v26;
LABEL_56:
    v7 = v32;
    v8 = v30;
    goto LABEL_6;
  }

  hevcbridgeParseVideoParameterSet_cold_2();
  v7 = 0;
  v8 = 0;
  v6 = 4294954582;
LABEL_6:
  v9 = a2[18];
  if (v9)
  {
    v10 = v6 >= 2;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v13 = *v9;
  if (*v9)
  {
    *v9 = 0;
    free(v13);
  }

LABEL_15:
  free(v7);
  free(v8);
  return v6;
}

size_t hevcbridgeParsePictureParameterSet(uint64_t a1, uint64_t *a2)
{
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v4 = *(a2 + 44);
  v5 = hevcbridgeUEPullLong(a1, &v52);
  v6 = v5;
  if ((v4 & 1) != 0 && !v5)
  {
    v6 = (a2[2])(*a2, 163, v52, 0xFFFFFFFFLL);
  }

  if (v6)
  {
    goto LABEL_13;
  }

  if (a2[18])
  {
    *a2[18] = malloc_type_calloc(1uLL, 0x11A0uLL, 0x1000040A601553DuLL);
    v7 = *a2[18];
    if (!v7)
    {
      v6 = 4294954583;
      goto LABEL_13;
    }

    v8 = v52;
    *v7 = 34;
    v7[1] = v8;
    v9 = v7 + 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 44);
  v11 = hevcbridgeUEPullLong(a1, &v51);
  v6 = v11;
  if ((v10 & 2) != 0 && !v11)
  {
    v6 = (a2[2])(*a2, 164, v51, 0xFFFFFFFFLL);
  }

  if (v6)
  {
    goto LABEL_13;
  }

  v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 2) & 1, 165, &v50 + 1);
  if (v15)
  {
    goto LABEL_19;
  }

  v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 3) & 1, 166, &v50);
  if (v15)
  {
    goto LABEL_19;
  }

  v15 = hevcbridgeUPullAlways(a1, a2, (*(a2 + 44) >> 4) & 1, 167, &v47, 3);
  if (v15)
  {
    goto LABEL_19;
  }

  v15 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 5) & 1, 168);
  if (v15)
  {
    goto LABEL_19;
  }

  v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 6) & 1, 169, &v49);
  if (v15)
  {
    goto LABEL_19;
  }

  v15 = hevcbridgeUEPullAlways(a1, a2, *(a2 + 44) >> 7, 170, &v48 + 1);
  if (v15)
  {
    goto LABEL_19;
  }

  v16 = HIDWORD(v48);
  if (HIDWORD(v48) >= 0xF)
  {
    hevcbridgeParsePictureParameterSet_cold_4();
    goto LABEL_51;
  }

  v15 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 8) & 1, 171, &v48);
  if (v15)
  {
    goto LABEL_19;
  }

  v17 = v48;
  if (v48 >= 0xF)
  {
    hevcbridgeParsePictureParameterSet_cold_3();
    goto LABEL_51;
  }

  if ((v15 = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 11) >> 9) & 1, 172), v15) || (v15 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 11) >> 10) & 1, 173), v15) || (v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 11) & 1, 174, &v46 + 1), v15) || (v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 12) & 1, 175, &v46), v15) || v46 && (v15 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 11) >> 13) & 1, 176), v15) || (v15 = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 11) >> 14) & 1, 177), v15) || (v15 = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 11) >> 15) & 1, 178), v15) || (v15 = hevcbridgeUPullFlagAlways(a1, a2, HIWORD(*(a2 + 11)) & 1, 179, &v45 + 1), v15) || (v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 17) & 1, 180, &v45), v15) || (v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 18) & 1, 181, &v44 + 1), v15) || (v15 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 11) >> 19) & 1, 182), v15) || (v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 20) & 1, 183, &v44), v15) || (v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 21) & 1, 184, &v43 + 1), v15))
  {
LABEL_19:
    v6 = v15;
    goto LABEL_13;
  }

  v18 = a2[16];
  if (v18)
  {
    v19 = a2[17];
    while (1)
    {
      v20 = *v19;
      if (**v19 == 33 && v20[1] == v51)
      {
        break;
      }

      ++v19;
      if (!--v18)
      {
        goto LABEL_47;
      }
    }

    v21 = v20 + 2;
  }

  else
  {
LABEL_47:
    v21 = 0;
  }

  v32 = v44;
  if (v44)
  {
    v53 = 0;
    v34 = 0;
    v33 = 0;
    v15 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 22) & 1, 185, &v53);
    if (v15)
    {
      goto LABEL_19;
    }

    v15 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 23) & 1, 186, &v34);
    if (v15)
    {
      goto LABEL_19;
    }

    if (v21)
    {
      v22 = ~(-1 << (*(v21 + 8) + *(v21 + 12) + 3));
      if (v53 >= (v21[4] + v22) >> (*(v21 + 8) + *(v21 + 12) + 3))
      {
        v30 = 4500;
      }

      else
      {
        if (v34 < (v21[5] + v22) >> (*(v21 + 8) + *(v21 + 12) + 3))
        {
          goto LABEL_59;
        }

        v30 = 4502;
      }

      hevcbridgeParsePictureParameterSet_cold_1(v30);
      goto LABEL_51;
    }

LABEL_59:
    v15 = hevcbridgeUPullFlagAlways(a1, a2, HIBYTE(*(a2 + 11)) & 1, 187, &v33);
    if (v15)
    {
      goto LABEL_19;
    }

    if (!v33)
    {
      v23 = v53;
      if (v53)
      {
        do
        {
          v15 = hevcbridgeUESkip(a1);
          if (v15)
          {
            goto LABEL_19;
          }
        }

        while (--v23);
      }

      v24 = v34;
      if (v34)
      {
        do
        {
          v15 = hevcbridgeUESkip(a1);
          if (v15)
          {
            goto LABEL_19;
          }
        }

        while (--v24);
      }
    }

    v15 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 11) >> 25) & 1, 188);
    if (v15)
    {
      goto LABEL_19;
    }
  }

  v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 26) & 1, 189, &v43);
  if (v15)
  {
    goto LABEL_19;
  }

  v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 27) & 1, 190, &v42 + 1);
  if (v15)
  {
    goto LABEL_19;
  }

  if (!HIBYTE(v42))
  {
LABEL_76:
    v25 = 0;
    goto LABEL_77;
  }

  v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 28) & 1, 191, &v42);
  if (v15)
  {
    goto LABEL_19;
  }

  v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 29) & 1, 192, &v41 + 1);
  if (v15)
  {
    goto LABEL_19;
  }

  v25 = HIBYTE(v41);
  if (!HIBYTE(v41))
  {
    v15 = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 11) >> 30) & 1, 193);
    if (v15)
    {
      goto LABEL_19;
    }

    v15 = hevcbridgeSEPullIfRequested(a1, a2, *(a2 + 11) >> 31, 194);
    if (v15)
    {
      goto LABEL_19;
    }

    goto LABEL_76;
  }

LABEL_77:
  v15 = hevcbridgeUPullFlagAlways(a1, a2, a2[6] & 1, 195, &v41);
  if (v15)
  {
    goto LABEL_19;
  }

  if (!v41)
  {
    goto LABEL_81;
  }

  v26 = hevcbridgeParseScalingListData(a1);
  v6 = v26;
  if (v26 == 1)
  {
    return v6;
  }

  if (!v26)
  {
LABEL_81:
    v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 33) & 1, 196, &v40 + 1);
    if (v15)
    {
      goto LABEL_19;
    }

    v15 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 34) & 1, 197);
    if (v15)
    {
      goto LABEL_19;
    }

    v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 35) & 1, 198, &v40);
    if (v15)
    {
      goto LABEL_19;
    }

    v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 36) & 1, 199, &v39 + 1);
    if (v15)
    {
      goto LABEL_19;
    }

    if (!HIBYTE(v39))
    {
      goto LABEL_110;
    }

    v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 37) & 1, 200, &v39);
    if (v15)
    {
      goto LABEL_19;
    }

    v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 38) & 1, 201, &v38 + 1);
    if (v15)
    {
      goto LABEL_19;
    }

    v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 39) & 1, 202, &v38);
    if (v15)
    {
      goto LABEL_19;
    }

    v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 40) & 1, 203, &v37);
    if (v15)
    {
      goto LABEL_19;
    }

    v15 = hevcbridgeUPullAlways(a1, a2, (*(a2 + 44) >> 41) & 1, 204, &v36, 4);
    if (v15)
    {
      goto LABEL_19;
    }

    if (v39)
    {
      if (HIBYTE(v46))
      {
        v15 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 42) & 1, 205);
        if (v15)
        {
          goto LABEL_19;
        }
      }

      v15 = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 43) & 1, 206);
      if (v15)
      {
        goto LABEL_19;
      }

      v15 = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 44) & 1, 207, &v35);
      if (v15)
      {
        goto LABEL_19;
      }

      v27 = v35;
      if (v35)
      {
        v53 = 0;
        v15 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 45) & 1, 208);
        if (!v15)
        {
          v15 = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 44) >> 46) & 1, 209, &v53);
          if (!v15)
          {
            v28 = v53;
            if (v53 <= 5)
            {
              v29 = 0;
              while (1)
              {
                v15 = hevcbridgeSESkip(a1);
                if (v15)
                {
                  goto LABEL_19;
                }

                v15 = hevcbridgeSESkip(a1);
                if (v15)
                {
                  goto LABEL_19;
                }

                if (++v29 > v28)
                {
                  goto LABEL_104;
                }
              }
            }

            hevcbridgeParsePictureParameterSet_cold_2();
LABEL_51:
            v6 = 4294954582;
            goto LABEL_13;
          }
        }

        goto LABEL_19;
      }

LABEL_104:
      v15 = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) >> 47) & 1, 210);
      if (v15)
      {
        goto LABEL_19;
      }

      v15 = hevcbridgeUEPullIfRequested(a1, a2, *(a2 + 25) & 1, 211);
      if (v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_110:
      v27 = 0;
    }

    if (v9)
    {
      v31 = v47;
      *v9 = v51;
      v9[1] = v31;
      v9[2] = v16;
      v9[3] = v17;
      *(v9 + 16) = HIBYTE(v50);
      *(v9 + 17) = v50;
      *(v9 + 18) = HIBYTE(v40);
      *(v9 + 19) = v49;
      *(v9 + 20) = v45;
      *(v9 + 21) = HIBYTE(v44);
      *(v9 + 22) = HIBYTE(v45);
      *(v9 + 23) = v27;
      *(v9 + 24) = v42;
      *(v9 + 25) = v25;
      *(v9 + 26) = v43;
      *(v9 + 27) = v32;
      *(v9 + 28) = HIBYTE(v43);
      *(v9 + 29) = v40;
    }

    if (HIBYTE(v38))
    {
      v15 = hevcbridgeParsePictureParameterSetMultilayerExtension(a1, a2);
      if (v15)
      {
        goto LABEL_19;
      }
    }

    if (v38)
    {
      hevcbridgeParsePictureParameterSet_cold_6();
      goto LABEL_51;
    }

    if (!v37)
    {
      if (!v36)
      {
        return 0;
      }

      goto LABEL_124;
    }

    v6 = hevcbridgeParsePictureParameterSetSCCExtension(a1, a2);
    if (!v6 && v36)
    {
LABEL_124:
      hevcbridgeParsePictureParameterSet_cold_5(a1, a2, &v53);
      v6 = v53;
    }
  }

LABEL_13:
  if (v6 >= 2)
  {
    v12 = a2[18];
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        *v12 = 0;
        free(v13);
      }
    }
  }

  return v6;
}

uint64_t hevcbridgeParseSEIRBSP(void *a1, void *a2, uint64_t a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v6 = *MEMORY[0x1E695E480];
  do
  {
    v51 = 0;
    v52 = 0;
    if (*(a2 + 44))
    {
      Mutable = CFDataCreateMutable(v6, 0);
      if (!Mutable)
      {
        hevcbridgeParseSEIRBSP_cold_1(bytes);
        v11 = *bytes;
        if (*bytes)
        {
          return v11;
        }

        continue;
      }
    }

    else
    {
      Mutable = 0;
    }

    LODWORD(v8) = 0;
    do
    {
      v9 = *(a2 + 44);
      v10 = hevcbridgeUPullLong(a1, 8, &v52);
      v11 = v10;
      if ((v9 & 2) != 0 && !v10)
      {
        v11 = (a2[2])(*a2, 343, v52, 0xFFFFFFFFLL);
      }

      if (v11)
      {
LABEL_92:
        if (!Mutable)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      v12 = v52;
      if (Mutable)
      {
        bytes[0] = v52;
        CFDataAppendBytes(Mutable, bytes, 1);
      }

      v8 = v12 + v8;
    }

    while (v12 == 255);
    if ((*(a2 + 44) & 4) != 0)
    {
      v13 = (a2[2])(*a2, 344, v8, 0xFFFFFFFFLL);
      if (v13)
      {
        goto LABEL_32;
      }
    }

    LODWORD(v14) = 0;
    do
    {
      v15 = *(a2 + 44);
      v16 = hevcbridgeUPullLong(a1, 8, &v51);
      v11 = v16;
      if ((v15 & 8) != 0 && !v16)
      {
        v11 = (a2[2])(*a2, 345, v51, 0xFFFFFFFFLL);
      }

      if (v11)
      {
        goto LABEL_92;
      }

      v17 = v51;
      if (Mutable)
      {
        bytes[0] = v51;
        CFDataAppendBytes(Mutable, bytes, 1);
      }

      v14 = v17 + v14;
    }

    while (v17 == 255);
    if (v14 >= 0x100000)
    {
      hevcbridgeParseSEIRBSP_cold_8(bytes);
    }

    else
    {
      if (!Mutable)
      {
        v21 = 0;
        goto LABEL_30;
      }

      Length = CFDataGetLength(Mutable);
      if ((Length & 0x8000000000000000) != 0)
      {
        hevcbridgeParseSEIRBSP_cold_4(bytes);
        goto LABEL_132;
      }

      v19 = Length;
      if (Length >= 0x100000)
      {
        hevcbridgeParseSEIRBSP_cold_3(bytes);
        goto LABEL_132;
      }

      CFDataSetLength(Mutable, Length + v14);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      if (!MutableBytePtr)
      {
        hevcbridgeParseSEIRBSP_cold_2(bytes);
LABEL_132:
        v11 = *bytes;
LABEL_93:
        CFRelease(Mutable);
        goto LABEL_94;
      }

      v21 = &MutableBytePtr[v19];
LABEL_30:
      if ((*(a2 + 44) & 0x10) != 0)
      {
        v13 = (a2[2])(*a2, 346, v14, 0xFFFFFFFFLL);
        if (v13)
        {
LABEL_32:
          v11 = v13;
          if (!Mutable)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }
      }

      if (a3 != 39 || ((v48 = 1, (v8 - 148) > 0x1C) || ((1 << (v8 + 108)) & 0x10020001) == 0) && v8 != 4)
      {
        if ((*(a2 + 44) & 0x20) == 0)
        {
          if (!v21)
          {
            v13 = hevcbridgeUSkip(a1, 8 * v14);
            if (v13)
            {
              goto LABEL_32;
            }

            v29 = 0;
            v48 = 0;
LABEL_54:
            v30 = *(a2 + 44);
            if ((v30 & 0x20) != 0)
            {
              v31 = (a2[4])(*a2, 347, v29);
              if (v31)
              {
                v11 = v31;
                goto LABEL_90;
              }

              v30 = *(a2 + 44);
            }

            if (v30)
            {
              v32 = (a2[4])(*a2, 342, Mutable);
              v11 = v32;
              if (v32 == 1)
              {
                goto LABEL_90;
              }

              v33 = v48;
              if (v32)
              {
                v33 = 0;
              }

              if ((v33 & 1) == 0)
              {
                goto LABEL_90;
              }
            }

            else if (!v48)
            {
LABEL_61:
              v11 = 0;
              goto LABEL_90;
            }

            v61 = 0;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            *bytes = 0u;
            v56 = 0u;
            BytePtr = CFDataGetBytePtr(v29);
            v35 = CFDataGetLength(v29);
            *bytes = BytePtr;
            *&bytes[8] = v35;
            *&v56 = 0;
            *(&v56 + 1) = &BytePtr[v35];
            WORD4(v57) = 0;
            *&v58 = BytePtr;
            *(&v58 + 1) = BytePtr;
            v59 = 0uLL;
            *(&v60 + 1) = 0;
            LODWORD(v61) = 0;
            v36 = hevcbridgeAdvanceInBitstream(bytes, 0);
            if (v36)
            {
              v11 = v36;
            }

            else
            {
              v11 = 4294954584;
            }

            if (v36 || a3 != 39)
            {
              goto LABEL_90;
            }

            v11 = 4294954584;
            if (v8 > 164)
            {
              if (v8 == 176)
              {
                v37 = hevcbridgeParseSEI3DReferenceDisplaysInformation(bytes, a2);
              }

              else
              {
                if (v8 != 165)
                {
                  goto LABEL_90;
                }

                v37 = hevcbridgeParseSEIAlphaChannelInfo(bytes, a2);
              }

              goto LABEL_88;
            }

            if (v8 != 4)
            {
              if (v8 != 148)
              {
                goto LABEL_90;
              }

              v37 = hevcbridgeUPullIfRequested(bytes, a2, a2[9] & 1, 356, 32);
              if (!v37)
              {
                v37 = hevcbridgeUPullIfRequested(bytes, a2, (*(a2 + 72) >> 1) & 1, 357, 16);
                if (!v37)
                {
                  v37 = hevcbridgeUPullIfRequested(bytes, a2, (*(a2 + 72) >> 2) & 1, 358, 16);
                }
              }

LABEL_88:
              v11 = v37;
              v40 = 1;
              goto LABEL_89;
            }

            v54 = 0;
            v53 = 0;
            v38 = *(a2 + 80);
            v39 = hevcbridgeUPullLong(bytes, 8, &v54 + 1);
            v11 = v39;
            if ((v38 & 1) != 0 && !v39)
            {
              v11 = (a2[2])(*a2, 372, HIDWORD(v54), 0xFFFFFFFFLL);
            }

            if (!v11)
            {
              if (HIDWORD(v54) == 181)
              {
                v42 = *(a2 + 80);
                v43 = hevcbridgeUPullLong(bytes, 16, &v54);
                v11 = v43;
                if ((v42 & 4) != 0 && !v43)
                {
                  v11 = (a2[2])(*a2, 374, v54, 0xFFFFFFFFLL);
                }

                if (v11)
                {
                  goto LABEL_86;
                }

                if (v54 != 60)
                {
                  goto LABEL_138;
                }

                v44 = *(a2 + 80);
                v45 = hevcbridgeUPullLong(bytes, 16, &v53);
                v11 = v45;
                if ((v44 & 8) != 0 && !v45)
                {
                  v11 = (a2[2])(*a2, 375, v53, 0xFFFFFFFFLL);
                }

                if (v11)
                {
                  goto LABEL_86;
                }

                if (v53 == 1)
                {
                  v11 = hevcbridgeParseHDR10PlusITUT35();
                }

                else
                {
LABEL_138:
                  v11 = 0;
                }
              }

              else if (HIDWORD(v54) == 255)
              {
                v11 = hevcbridgeUPullIfRequested(bytes, a2, (*(a2 + 80) >> 1) & 1, 373, 8);
              }

              else
              {
                v11 = 0;
              }
            }

LABEL_86:
            v40 = 0;
LABEL_89:
            if (v11 == 1)
            {
              goto LABEL_90;
            }

            if (!v11)
            {
              if (BYTE9(v57))
              {
                goto LABEL_61;
              }

              HIDWORD(v54) = 0;
              v11 = hevcbridgeUPullLong(bytes, 8 - HIDWORD(v59), &v54 + 1);
              if (!v11)
              {
                if (BYTE9(v57))
                {
                  v41 = HIDWORD(v54);
                }

                else
                {
                  v41 = *(*bytes + *&bytes[8] - 1);
                }

                if (v41)
                {
                  v46 = 0;
                }

                else
                {
                  v46 = v40;
                }

                if (v46 == 1)
                {
                  hevcbridgeParseSEIRBSP_cold_7();
                  v11 = 4294954582;
                  goto LABEL_90;
                }

                v11 = 0;
              }
            }

            if (!v11)
            {
              goto LABEL_61;
            }

LABEL_90:
            if (!v29)
            {
              goto LABEL_92;
            }

            goto LABEL_91;
          }

          v49 = v6;
          v22 = a3;
          v23 = 0;
          v24 = 0;
          v48 = 0;
          if (v14)
          {
            goto LABEL_47;
          }

LABEL_53:
          a3 = v22;
          v29 = v24;
          v6 = v49;
          goto LABEL_54;
        }

        v48 = 0;
      }

      v25 = CFDataCreateMutable(v6, v14);
      if (v25)
      {
        v26 = v25;
        v49 = v6;
        v22 = a3;
        CFDataSetLength(v25, v14);
        v24 = v26;
        v27 = CFDataGetMutableBytePtr(v26);
        if (!v27)
        {
          hevcbridgeParseSEIRBSP_cold_5(bytes);
          v11 = *bytes;
          v29 = v24;
          v6 = v49;
LABEL_91:
          CFRelease(v29);
          goto LABEL_92;
        }

        v23 = v27;
        if (v14)
        {
LABEL_47:
          while (1)
          {
            *bytes = 0;
            v28 = hevcbridgeUPullLong(a1, 8, bytes);
            if (v28)
            {
              break;
            }

            if (v23)
            {
              *v23++ = bytes[0];
            }

            if (v21)
            {
              *v21++ = bytes[0];
            }

            if (!--v14)
            {
              goto LABEL_53;
            }
          }

          v11 = v28;
          a3 = v22;
          v29 = v24;
          v6 = v49;
          goto LABEL_90;
        }

        goto LABEL_53;
      }

      hevcbridgeParseSEIRBSP_cold_6(bytes);
    }

    v11 = *bytes;
    if (Mutable)
    {
      goto LABEL_93;
    }

LABEL_94:
    if (v11)
    {
      return v11;
    }
  }

  while ((a1[6] + 1) < a1[1] + *a1 && hevcbridgeMoreRBSPData(a1));
  v11 = hevcbridgeUPullLong(a1, 8, &v50);
  if (!v11)
  {
    if (v50 == 128)
    {
      return 0;
    }

    else
    {
      hevcbridgeParseSEIRBSP_cold_9();
      return 4294954582;
    }
  }

  return v11;
}

uint64_t hevcbridgeParseSliceSegmentLayer(uint64_t a1, uint64_t *a2, int a3, unsigned int a4, int a5)
{
  v144 = *MEMORY[0x1E69E9840];
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  result = hevcbridgeUPullFlagAlways(a1, a2, *(a2 + 11) & 1, 263, &v137);
  if (result)
  {
    return result;
  }

  if ((a3 & 0xFFFFFFF8) == 0x10)
  {
    result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 1) & 1, 264);
    if (result)
    {
      return result;
    }
  }

  v12 = *(a2 + 44);
  result = hevcbridgeUEPullLong(a1, &v136);
  if ((v12 & 4) != 0 && !result)
  {
    result = (a2[2])(*a2, 265, v136, 0xFFFFFFFFLL);
  }

  if (result)
  {
    return result;
  }

  v13 = a2[16];
  if (v13)
  {
    v14 = a2[17];
    v15 = a2[16];
    while (1)
    {
      v16 = *v14;
      if (**v14 == 34 && v16[1] == v136)
      {
        break;
      }

      ++v14;
      if (!--v15)
      {
        goto LABEL_14;
      }
    }

    v23 = a2[17];
    v24 = a2[16];
    while (1)
    {
      v25 = *v23;
      if (**v23 == 33 && v25[1] == v16[2])
      {
        break;
      }

      ++v23;
      if (!--v24)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v20 = v5;
        v21 = emitter;
        v22 = 4672;
        goto LABEL_15;
      }
    }

    v27 = a2[17];
    while (1)
    {
      v28 = *v27;
      if (**v27 == 32 && v28[1] == v25[2])
      {
        break;
      }

      ++v27;
      if (!--v13)
      {
        v29 = 0;
        goto LABEL_29;
      }
    }

    v29 = v28 + 2;
LABEL_29:
    if (*(v25 + 53))
    {
      if (!v29)
      {
        hevcbridgeParseSliceSegmentLayer_cold_1(v143);
        return v143[0];
      }
    }

    else if (!a4 || !v29)
    {
      v113 = 0;
      v111 = 0;
      v114 = 0;
      v33 = v25 + 6;
      v34 = v25 + 7;
      v35 = v25 + 54;
      v36 = v25 + 11;
      goto LABEL_39;
    }

    v30 = v29 + a4;
    if (*(v25 + 52))
    {
      v31 = v25[12];
    }

    else
    {
      v31 = v30[4];
    }

    if (v31 > *v29)
    {
      hevcbridgeParseSliceSegmentLayer_cold_11(v143);
      return v143[0];
    }

    v32 = &v29[4 * v31];
    v33 = v32 + 1122;
    v34 = v32 + 1123;
    v35 = (v32 + 1125);
    v36 = (v32 + 1124);
    v111 = *(v29 + 197);
    v114 = v30[132] != 0;
    LODWORD(v113) = v30[68];
    HIDWORD(v113) = *(v29 + 196) != 0;
LABEL_39:
    v119 = *v35;
    v112 = *v36;
    if (!v137)
    {
      v39 = ~(-1 << (*(v25 + 16) + *(v25 + 20) + 3));
      v40 = log2((((*v33 + v39) >> (*(v25 + 16) + *(v25 + 20) + 3)) * ((*v34 + v39) >> (*(v25 + 16) + *(v25 + 20) + 3))));
      if (*(v16 + 24))
      {
        v52 = v40;
        result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 3) & 1, 266, &v135);
        v40 = v52;
        if (result)
        {
          return result;
        }
      }

      result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 44) >> 4) & 1, 267, vcvtpd_s64_f64(v40));
      if (result)
      {
        return result;
      }

      if (v135)
      {
LABEL_48:
        if (*(v16 + 35) || *(v16 + 36))
        {
          v143[0] = 0;
          v41 = *(a2 + 44);
          result = hevcbridgeUEPullLong(a1, v143);
          if ((v41 & 0x20000000000) != 0 && !result)
          {
            result = (a2[2])(*a2, 304, v143[0], 0xFFFFFFFFLL);
          }

          if (result)
          {
            return result;
          }

          v42 = v143[0];
          if (v143[0])
          {
            LODWORD(v142[0]) = 0;
            result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 44) >> 42) & 1, 305, v142);
            if (!result)
            {
              v43 = v142[0];
              while (1)
              {
                result = hevcbridgeUSkip(a1, v43 + 1);
                if (result)
                {
                  break;
                }

                if (!--v42)
                {
                  goto LABEL_59;
                }
              }
            }

            return result;
          }
        }

LABEL_59:
        if (*(v16 + 37))
        {
          v143[0] = 0;
          result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 44) >> 43) & 1, 306, v143);
          if (result)
          {
            return result;
          }

          v44 = v143[0];
          if (v143[0])
          {
            do
            {
              result = hevcbridgeUSkip(a1, 8);
              if (result)
              {
                return result;
              }
            }

            while (--v44);
          }
        }

        result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 44) >> 44) & 1, 307, &v133 + 1, 1);
        if (result)
        {
          return result;
        }

        if (HIDWORD(v133) == 1)
        {
          while (*(a1 + 76))
          {
            result = hevcbridgeUPullLong(a1, 1, &v133);
            if (result)
            {
              return result;
            }

            if (v133)
            {
              hevcbridgeParseSliceSegmentLayer_cold_9();
              return 4294954582;
            }
          }

          return 0;
        }

        hevcbridgeParseSliceSegmentLayer_cold_8();
        return 4294954582;
      }
    }

    memset(v143, 0, 164);
    v132 = 0;
    v142[1] = 0;
    v142[0] = 0;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    if (v16[3])
    {
      result = hevcbridgeUSkip(a1, 1);
      if (result)
      {
        return result;
      }

      v37 = v16[3];
      if (v37 >= 2)
      {
        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 5) & 1, 268);
        if (!result)
        {
          v37 = v16[3];
          v38 = 2;
          goto LABEL_75;
        }

        return result;
      }

      v38 = 1;
LABEL_75:
      while (v38 < v37)
      {
        result = hevcbridgeUSkip(a1, 1);
        if (result)
        {
          return result;
        }

        ++v38;
        v37 = v16[3];
      }
    }

    result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 44) >> 6) & 1, 269, &v134);
    if (result)
    {
      return result;
    }

    if (*(v16 + 25))
    {
      result = hevcbridgeUPullFlagIfRequested(a1, a2, *(a2 + 44) >> 7, 270);
      if (result)
      {
        return result;
      }
    }

    if (v119 == 1)
    {
      result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 11) >> 8) & 1, 271, 2);
      if (result)
      {
        return result;
      }
    }

    if (a4 == 0 || v114)
    {
      if ((a3 - 21) > 0xFFFFFFFD)
      {
        goto LABEL_88;
      }
    }

    else if ((a3 - 21) >= 0xFFFFFFFE && *(v25 + 89))
    {
      goto LABEL_88;
    }

    result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 11) >> 9) & 1, 272, v25[8] + 4);
    if (result)
    {
      return result;
    }

    if ((a3 - 21) <= 0xFFFFFFFD)
    {
      v138[0] = 0;
      LODWORD(v141[0]) = 0;
      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 10) & 1, 273, v138);
      if (result)
      {
        return result;
      }

      v58 = v138[0];
      v59 = v25[23];
      if (v138[0])
      {
        if (v59 >= 2)
        {
          v60 = log2(v59);
          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 11) >> 11) & 1, 274, v141, vcvtpd_s64_f64(v60));
          if (result)
          {
            return result;
          }
        }

        if (v58 == 1)
        {
          if (LODWORD(v141[0]) >= v25[23])
          {
            hevcbridgeParseSliceSegmentLayer_cold_2();
            return 4294954582;
          }

          v61 = &v25[41 * LODWORD(v141[0]) + 24];
        }

        else
        {
          v61 = v143;
        }

        v107 = v61;
      }

      else
      {
        v107 = v143;
        result = hevcbridgeParseSTRefPicSet(a1, v59, v59, (v25 + 24), v143);
        if (result)
        {
          return result;
        }
      }

      if (*(v25 + 55))
      {
        if (v25[9])
        {
          result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 12) & 1, 275, &v132 + 1);
          if (result)
          {
            return result;
          }
        }

        result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 13) & 1, 276, &v132);
        if (result)
        {
          return result;
        }

        v123 = HIDWORD(v132);
        if (HIDWORD(v132) >= 0x11)
        {
          hevcbridgeParseSliceSegmentLayer_cold_5();
          return 4294954582;
        }

        v110 = v132;
        if (v132 >= 0x11)
        {
          hevcbridgeParseSliceSegmentLayer_cold_4();
          return 4294954582;
        }

        v118 = (v132 + HIDWORD(v132));
        if (v118 > 0x10)
        {
          hevcbridgeParseSliceSegmentLayer_cold_3();
          return 4294954582;
        }

        if (v118)
        {
          for (i = 0; i != v118; ++i)
          {
            LODWORD(v140[0]) = 0;
            if (i >= v123)
            {
              result = hevcbridgeUSkip(a1, v25[8] + 4);
              if (result)
              {
                return result;
              }

              LODWORD(v139[0]) = 0;
              result = hevcbridgeUPull(a1, 1, v139);
              if (result)
              {
                return result;
              }

              v71 = v139[0];
            }

            else
            {
              v69 = v25[9];
              if (v69 >= 2)
              {
                v70 = log2(v69);
                result = hevcbridgeUPullLong(a1, vcvtpd_s64_f64(v70), v140);
                if (result)
                {
                  return result;
                }
              }

              v71 = 0;
            }

            LODWORD(v139[0]) = 0;
            result = hevcbridgeUPull(a1, 1, v139);
            if (result)
            {
              return result;
            }

            if (LOBYTE(v139[0]))
            {
              result = hevcbridgeUESkip(a1);
              if (result)
              {
                return result;
              }
            }

            if (i < v123)
            {
              v71 = *(v25 + LODWORD(v140[0]) + 56);
            }

            *(v142 + i) = v71;
          }
        }
      }

      else
      {
        v110 = 0;
        LODWORD(v123) = 0;
      }

      if (v25[10])
      {
        result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 14) & 1, 277, &v131 + 1);
        if (result)
        {
          return result;
        }
      }

      v47 = 1;
      v48 = v107;
      v46 = v123;
      v45 = v110;
LABEL_89:
      v49 = 0;
      if ((a4 == 0) | BYTE4(v113) & 1 || !v113)
      {
LABEL_91:
        if (*(v25 + 88))
        {
          v116 = v47;
          v54 = v45;
          v121 = v46;
          result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 18) & 1, 281, &v130 + 1);
          if (result)
          {
            return result;
          }

          v46 = v121;
          v45 = v54;
          v47 = v116;
          if (v112)
          {
            result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 19) & 1, 282, &v130);
            v47 = v116;
            v45 = v54;
            v46 = v121;
            if (result)
            {
              return result;
            }
          }
        }

        v50 = v134;
        if (v134 > 1)
        {
          goto LABEL_93;
        }

        v117 = v47;
        v109 = v45;
        v122 = v46;
        v127 = 0;
        v106 = v16[4];
        v125 = v16[5];
        v126 = v106;
        v105 = v125;
        result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 20) & 1, 283, &v127);
        if (result)
        {
          return result;
        }

        if (v127)
        {
          result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 21) & 1, 284, &v126);
          if (result)
          {
            return result;
          }

          v106 = v126;
          if (v126 >= 0xF)
          {
            hevcbridgeParseSliceSegmentLayer_cold_7();
            return 4294954582;
          }

          if (!v50)
          {
            result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 11) >> 22) & 1, 285, &v125);
            if (result)
            {
              return result;
            }

            v105 = v125;
            if (v125 >= 0xF)
            {
              hevcbridgeParseSliceSegmentLayer_cold_6();
              return 4294954582;
            }
          }
        }

        v55 = a2[17];
        if (!v55 || v29)
        {
          if (v29)
          {
LABEL_189:
            v72 = *(v29 + a4 + 68);
            if (!*(v29 + a4 + 68))
            {
LABEL_208:
              v78 = v117;
              if (v117)
              {
                if (!v48)
                {
                  hevcbridgeParseSliceSegmentLayer_cold_10();
                  return 4294954582;
                }

                v79 = v48[160];
                if (v48[160])
                {
                  v78 = 0;
                  v80 = v48 + 128;
                  do
                  {
                    if (*v80++)
                    {
                      ++v78;
                    }

                    --v79;
                  }

                  while (v79);
                }

                else
                {
                  v78 = 0;
                }

                v82 = v48[161];
                if (v48[161])
                {
                  v83 = v48 + 144;
                  do
                  {
                    if (*v83++)
                    {
                      ++v78;
                    }

                    --v82;
                  }

                  while (v82);
                }

                v85 = (v109 + v122);
                if (v109 + v122)
                {
                  v86 = v142;
                  do
                  {
                    if (*v86++)
                    {
                      ++v78;
                    }

                    --v85;
                  }

                  while (v85);
                }
              }

              if (*(v16 + 38))
              {
                ++v78;
              }

              v88 = v78 + v72;
              if (*(v16 + 26))
              {
                v89 = v88 >= 2;
              }

              else
              {
                v89 = 0;
              }

              if (v89)
              {
                LOBYTE(v141[0]) = 0;
                v96 = log2(v88);
                result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 23) & 1, 286, v141);
                if (result)
                {
                  return result;
                }

                v97 = vcvtpd_s64_f64(v96);
                if (LOBYTE(v141[0]))
                {
                  v98 = 0;
                  do
                  {
                    result = hevcbridgeUSkip(a1, v97);
                    if (result)
                    {
                      return result;
                    }
                  }

                  while (++v98 <= v106);
                }

                if (!v50)
                {
                  LOBYTE(v140[0]) = 0;
                  result = hevcbridgeUPullFlagAlways(a1, a2, HIBYTE(*(a2 + 11)) & 1, 287, v140);
                  if (result)
                  {
                    return result;
                  }

                  if (LOBYTE(v140[0]))
                  {
                    v99 = 0;
                    do
                    {
                      result = hevcbridgeUSkip(a1, v97);
                      if (result)
                      {
                        return result;
                      }
                    }

                    while (++v99 <= v105);
                  }
                }
              }

              if (!v50)
              {
                result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 11) >> 25) & 1, 288);
                if (result)
                {
                  return result;
                }
              }

              if (*(v16 + 27))
              {
                result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 11) >> 26) & 1, 289);
                if (result)
                {
                  return result;
                }
              }

              if (HIBYTE(v131))
              {
                v90 = 1;
                LOBYTE(v141[0]) = 1;
                if (v50)
                {
                  goto LABEL_238;
                }

                result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 27) & 1, 290, v141);
                if (result)
                {
                  return result;
                }

                v90 = LOBYTE(v141[0]);
                if (LOBYTE(v141[0]))
                {
LABEL_238:
                  if (v106)
                  {
                    goto LABEL_241;
                  }
                }

                if (!v90 && v105)
                {
LABEL_241:
                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 11) >> 28) & 1, 291);
                  if (result)
                  {
                    return result;
                  }
                }
              }

              if (v50 == 1 && *(v16 + 28) || !v50 && *(v16 + 29))
              {
                memset(v141, 0, 15);
                memset(v140, 0, 15);
                result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 11) >> 29) & 1, 292);
                if (!result)
                {
                  if (!v112 || (result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 11) >> 30) & 1, 293), !result))
                  {
                    v91 = 0;
                    while (1)
                    {
                      LODWORD(v139[0]) = 0;
                      result = hevcbridgeUPull(a1, 1, v139);
                      *(v141 + v91) = v139[0];
                      if (result)
                      {
                        break;
                      }

                      if (++v91 > v106)
                      {
                        if (v112)
                        {
                          v92 = 0;
                          while (1)
                          {
                            LODWORD(v139[0]) = 0;
                            result = hevcbridgeUPull(a1, 1, v139);
                            *(v140 + v92) = v139[0];
                            if (result)
                            {
                              break;
                            }

                            if (++v92 > v106)
                            {
                              goto LABEL_256;
                            }
                          }
                        }

                        else
                        {
LABEL_256:
                          v93 = 0;
                          while (1)
                          {
                            if (*(v141 + v93))
                            {
                              result = hevcbridgeSESkip(a1);
                              if (result)
                              {
                                break;
                              }

                              result = hevcbridgeSESkip(a1);
                              if (result)
                              {
                                break;
                              }
                            }

                            if (*(v140 + v93))
                            {
                              v94 = 1;
                              do
                              {
                                v95 = v94;
                                result = hevcbridgeSESkip(a1);
                                if (result)
                                {
                                  return result;
                                }

                                result = hevcbridgeSESkip(a1);
                                if (result)
                                {
                                  return result;
                                }

                                v94 = 0;
                              }

                              while ((v95 & 1) != 0);
                            }

                            if (++v93 > v106)
                            {
                              if (v50)
                              {
                                goto LABEL_267;
                              }

                              v100 = 0;
                              memset(v139, 0, 15);
                              memset(v138, 0, 15);
                              while (1)
                              {
                                v124 = 0;
                                result = hevcbridgeUPull(a1, 1, &v124);
                                *(v139 + v100) = v124;
                                if (result)
                                {
                                  return result;
                                }

                                if (++v100 > v105)
                                {
                                  if (v112)
                                  {
                                    v101 = 0;
                                    while (1)
                                    {
                                      v124 = 0;
                                      result = hevcbridgeUPull(a1, 1, &v124);
                                      v138[v101] = v124;
                                      if (result)
                                      {
                                        break;
                                      }

                                      if (++v101 > v105)
                                      {
                                        goto LABEL_299;
                                      }
                                    }
                                  }

                                  else
                                  {
LABEL_299:
                                    v102 = 0;
                                    while (1)
                                    {
                                      if (*(v139 + v102))
                                      {
                                        result = hevcbridgeSESkip(a1);
                                        if (result)
                                        {
                                          break;
                                        }

                                        result = hevcbridgeSESkip(a1);
                                        if (result)
                                        {
                                          break;
                                        }
                                      }

                                      if (v138[v102])
                                      {
                                        v103 = 1;
                                        do
                                        {
                                          v104 = v103;
                                          result = hevcbridgeSESkip(a1);
                                          if (result)
                                          {
                                            return result;
                                          }

                                          result = hevcbridgeSESkip(a1);
                                          if (result)
                                          {
                                            return result;
                                          }

                                          v103 = 0;
                                        }

                                        while ((v104 & 1) != 0);
                                      }

                                      if (++v102 > v105)
                                      {
                                        goto LABEL_267;
                                      }
                                    }
                                  }

                                  return result;
                                }
                              }
                            }
                          }
                        }

                        return result;
                      }
                    }
                  }
                }

                return result;
              }

LABEL_267:
              result = hevcbridgeUEPullIfRequested(a1, a2, *(a2 + 11) >> 31, 294);
              if (result)
              {
                return result;
              }

LABEL_93:
              result = hevcbridgeSEPullIfRequested(a1, a2, a2[6] & 1, 295);
              if (result)
              {
                return result;
              }

              if (*(v16 + 30))
              {
                result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 33) & 1, 296);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 34) & 1, 297);
                if (result)
                {
                  return result;
                }
              }

              if (*(v16 + 31))
              {
                result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 35) & 1, 298);
                if (result)
                {
                  return result;
                }
              }

              if (!*(v16 + 32))
              {
                goto LABEL_100;
              }

              result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 36) & 1, 299, &v131);
              if (result)
              {
                return result;
              }

              if (v131)
              {
                result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 37) & 1, 300, &v129 + 1);
                if (result)
                {
                  return result;
                }

                if (HIBYTE(v129))
                {
                  v51 = 1;
                }

                else
                {
                  result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 38) & 1, 301);
                  if (result)
                  {
                    return result;
                  }

                  result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 39) & 1, 302);
                  if (result)
                  {
                    return result;
                  }

                  v51 = 0;
                }
              }

              else
              {
LABEL_100:
                v51 = *(v16 + 33) != 0;
              }

              if (*(v16 + 34))
              {
                if ((HIBYTE(v130) | v130) != 0 || !v51)
                {
                  result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 40) & 1, 303);
                  if (result)
                  {
                    return result;
                  }
                }
              }

              goto LABEL_48;
            }

            v62 = 0;
            v73 = *(v29 + a4 + 198);
            v74 = a5 - 1;
            v75 = *(v29 + v73 + 262);
            v76 = &v29[16 * v73 + 97] + 2;
            do
            {
              if (v74 <= v75 && (a5 == 1 || v74 < *(v76 + *(v29 + a4 + 326))))
              {
                ++v62;
              }

              --v72;
            }

            while (v72);
LABEL_196:
            if (a4)
            {
              v72 = v62;
            }

            else
            {
              v72 = 0;
            }

            if (v62)
            {
              v77 = a4 == 0;
            }

            else
            {
              v77 = 1;
            }

            if (((v77 | HIDWORD(v113)) & 1) == 0)
            {
              if (v49)
              {
                v72 = 1;
                if (!v111 && v113 != 1)
                {
                  v72 = v128 + 1;
                }
              }

              else
              {
                v72 = 0;
              }
            }

            goto LABEL_208;
          }
        }

        else
        {
          v56 = a2[16];
          if (v56)
          {
            while (1)
            {
              v57 = *v55;
              if (**v55 == 32 && v57[1] == v25[2])
              {
                break;
              }

              ++v55;
              if (!--v56)
              {
                goto LABEL_142;
              }
            }

            v29 = v57 + 2;
            goto LABEL_189;
          }
        }

LABEL_142:
        v62 = 1;
        goto LABEL_196;
      }

      v115 = v47;
      v108 = v45;
      v120 = v46;
      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 11) >> 15) & 1, 278, &v129);
      if (result)
      {
        return result;
      }

      v49 = v129;
      if (!v129)
      {
LABEL_115:
        v46 = v120;
        v45 = v108;
        v47 = v115;
        goto LABEL_91;
      }

      v46 = v120;
      v45 = v108;
      v47 = v115;
      if (v113 < 2)
      {
        goto LABEL_91;
      }

      v53 = vcvtpd_s64_f64(log2(v113));
      if (!v111)
      {
        if (v53 < 0 || v113 <= v53)
        {
          v63 = fig_log_get_emitter("com.apple.coremedia", "");
          v66 = v5;
          v67 = 4847;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, 1uLL, "<<<< HEVCBridge >>>>", v67, v66, v64, v65);
        }

        result = hevcbridgeUPullAlways(a1, a2, HIWORD(*(a2 + 11)) & 1, 279, &v128, v53);
        if (result)
        {
          return result;
        }
      }

      if ((v53 & 0x80000000) == 0 && v53 < v113)
      {
        v49 = 1;
        goto LABEL_115;
      }

      v63 = fig_log_get_emitter("com.apple.coremedia", "");
      v66 = v5;
      v67 = 4857;
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, 1uLL, "<<<< HEVCBridge >>>>", v67, v66, v64, v65);
    }

LABEL_88:
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    goto LABEL_89;
  }

LABEL_14:
  v17 = fig_log_get_emitter("com.apple.coremedia", "");
  v20 = v5;
  v21 = v17;
  v22 = 4663;
LABEL_15:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 0xFFFFCE58uLL, "<<<< HEVCBridge >>>>", v22, v20, v18, v19);
}

size_t hevcbridgeUPull(uint64_t a1, int a2, _DWORD *a3)
{
  if (*(a1 + 41))
  {
    hevcbridgeUPull_cold_1(&v6);
    v4 = 0;
    result = v6;
  }

  else if (a2 <= 0)
  {
    hevcbridgeUPull_cold_3(&v8);
    v4 = 0;
    result = v8;
  }

  else if (a2 >= 0x1A)
  {
    hevcbridgeUPull_cold_2(&v7);
    v4 = 0;
    result = v7;
  }

  else
  {
    v4 = *(a1 + 80) >> -a2;
    result = hevcbridgeAdvanceInBitstream(a1, a2);
  }

  *a3 = v4;
  return result;
}

uint64_t hevcbridgeUPullFlagIfRequested(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v10 = 0;
    result = hevcbridgeUPull(a1, 1, &v10);
    if (!result)
    {
      v7 = *a2;
      v8 = a2[1];
      v9 = v10;

      return v8(v7, a4, v9, 0xFFFFFFFFLL);
    }
  }

  else
  {

    return hevcbridgeUSkip(a1, 1);
  }

  return result;
}

size_t hevcbridgeUSkip(uint64_t a1, int a2)
{
  if (*(a1 + 41))
  {
    hevcbridgeUSkip_cold_1(&v3);
    return v3;
  }

  else if (a2 < 0)
  {
    hevcbridgeUSkip_cold_2(&v4);
    return v4;
  }

  else
  {

    return hevcbridgeAdvanceInBitstream(a1, a2);
  }
}

uint64_t hevcbridgeParseProfileTierLevel(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  v37 = 0;
  *(v36 + 3) = 0;
  v36[0] = 0;
  *(v35 + 3) = 0;
  v35[0] = 0;
  if (a4 >= 7)
  {
    hevcbridgeParseProfileTierLevel_cold_1();
    return 4294954582;
  }

  if (a3)
  {
    result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 15) & 1, 308, 2);
    if (result)
    {
      return result;
    }

    result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 60) >> 1) & 1, 309);
    if (result)
    {
      return result;
    }

    v8 = *(a2 + 15);
    result = hevcbridgeUPullLong(a1, 5, &v37 + 1);
    if ((v8 & 4) != 0 && !result)
    {
      result = (a2[2])(*a2, 310, HIDWORD(v37), 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    v9 = *(a2 + 15);
    result = hevcbridgeUPullLong(a1, 32, &v37);
    if ((v9 & 8) != 0 && !result)
    {
      result = (a2[2])(*a2, 311, v37, 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    v10 = *(a2 + 15);
    if ((v10 & 0x30) != 0)
    {
      result = hevcbridgeUPullIfRequested(a1, a2, (v10 >> 4) & 1, 312, 16);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 60) >> 5) & 1, 313, 32);
      if (result)
      {
        return result;
      }
    }

    else
    {
      v20 = &v37;
      v21 = vld1q_dup_f32(v20);
      v32 = v21;
      result = hevcbridgeUPullFlagIfRequested(a1, a2, (v10 >> 6) & 1, 314);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUPullFlagIfRequested(a1, a2, *(a2 + 60) >> 7, 315);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 8) & 1, 316);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 9) & 1, 317);
      if (result)
      {
        return result;
      }

      v22.i64[0] = 0x101010101010101;
      v22.i64[1] = 0x101010101010101;
      v23 = vbicq_s8(v22, vuzp1q_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v32, xmmword_197166480)), vceqzq_s32(vandq_s8(v32, xmmword_197166490))), vuzp1q_s16(vceqzq_s32(vandq_s8(v32, xmmword_1971664A0)), vceqzq_s32(vandq_s8(v32, xmmword_1971664B0))))).u64[0];
      v30 = v23.i32[0];
      v24 = *&vzip2_s8(v23, v23) & 0xFF00FF00FF00FFLL;
      v25 = vtst_s16(v24, v24);
      v33.i32[0] = v25.i32[0];
      v31 = HIDWORD(v37);
      if ((vmaxv_u16(v25) & 1) != 0 || (HIDWORD(v37) - 4) <= 3)
      {
        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 10) & 1, 318);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 11) & 1, 319);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 12) & 1, 320);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 13) & 1, 321);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 14) & 1, 322);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 15) & 1, 323);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, HIWORD(*(a2 + 15)) & 1, 324);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 17) & 1, 325);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 18) & 1, 326);
        if (result)
        {
          return result;
        }

        v26 = a1;
        v27 = 34;
      }

      else
      {
        v26 = a1;
        v27 = 43;
      }

      result = hevcbridgeUSkip(v26, v27);
      if (result)
      {
        return result;
      }

      if (v31 - 1) < 5 || (!BYTE1(v30) ? (v28 = BYTE2(v30) == 0) : (v28 = 0), v28 ? (v29 = HIBYTE(v30) == 0) : (v29 = 0), !v29 || (v33.i8[0] & 1) != 0 || (v33.i8[2]))
      {
        result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 15) >> 19) & 1, 327);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = hevcbridgeUSkip(a1, 1);
        if (result)
        {
          return result;
        }
      }
    }
  }

  result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 15) >> 20) & 1, 328, 8);
  if (!result)
  {
    if (a4)
    {
      v11 = a4;
      v12 = v36;
      v13 = v35;
      v14 = a4;
      while (1)
      {
        v34 = 0;
        result = hevcbridgeUPull(a1, 1, &v34);
        *v12 = v34;
        if (result)
        {
          break;
        }

        v34 = 0;
        result = hevcbridgeUPull(a1, 1, &v34);
        *v13 = v34;
        if (result)
        {
          break;
        }

        ++v12;
        ++v13;
        if (!--v14)
        {
          v15 = a4 - 8;
          while (1)
          {
            result = hevcbridgeUSkip(a1, 2);
            if (result)
            {
              break;
            }

            if (__CFADD__(v15++, 1))
            {
              v17 = v36;
              v18 = v35;
              do
              {
                if (*v17++)
                {
                  result = hevcbridgeUSkip(a1, 88);
                  if (result)
                  {
                    break;
                  }
                }

                if (*v18)
                {
                  result = hevcbridgeUSkip(a1, 8);
                  if (result)
                  {
                    break;
                  }
                }

                result = 0;
                ++v18;
                --v11;
              }

              while (v11);
              return result;
            }
          }

          return result;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t hevcbridgeUESkip(uint64_t a1)
{
  if (*(a1 + 41))
  {
    hevcbridgeUESkip_cold_1(&v7);
    return v7;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0x80)
  {
    v5 = (2 * __clz(v2)) | 1;

    return hevcbridgeAdvanceInBitstream(a1, v5);
  }

  v6 = 0;
  hevcbridgeUPull(a1, 1, &v6);
  if (v6)
  {
    hevcbridgeUESkip_cold_2(&v7);
    return v7;
  }

  v3 = 0;
  while (1)
  {
    result = hevcbridgeUPull(a1, 1, &v6);
    if (result)
    {
      break;
    }

    ++v3;
    if (v6)
    {
      if (v3 < 0x20)
      {
        return hevcbridgeAdvanceInBitstream(a1, v3);
      }

      hevcbridgeUESkip_cold_3(&v7);
      return v7;
    }
  }

  return result;
}

size_t hevcbridgeUEPullAlways(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, unsigned int *a5)
{
  result = hevcbridgeUEPullLong(a1, a5);
  if (a3 && !result)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = *a5;

    return v10(v11, a4, v12, 0xFFFFFFFFLL);
  }

  return result;
}

uint64_t hevcbridgeUPullIfRequested(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int a5)
{
  if (a3)
  {
    v11 = 0;
    result = hevcbridgeUPullLong(a1, a5, &v11);
    if (!result)
    {
      v8 = a2[2];
      v9 = *a2;
      v10 = v11;

      return v8(v9, a4, v10, 0xFFFFFFFFLL);
    }
  }

  else
  {

    return hevcbridgeUSkip(a1, a5);
  }

  return result;
}

uint64_t hevcbridgeUEPullIfRequested(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v10 = 0;
    result = hevcbridgeUEPullLong(a1, &v10);
    if (!result)
    {
      v7 = a2[2];
      v8 = *a2;
      v9 = v10;

      return v7(v8, a4, v9, 0xFFFFFFFFLL);
    }
  }

  else
  {

    return hevcbridgeUESkip(a1);
  }

  return result;
}

size_t hevcbridgeParseHRDParameters(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v19 = 0;
  v18 = 0;
  if (!a3)
  {
    goto LABEL_2;
  }

  result = hevcbridgeUPullFlagAlways(a1, a2, *(a2 + 64) & 1, 329, &v19 + 1);
  if (!result)
  {
    result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 64) >> 1) & 1, 330, &v19);
    if (!result)
    {
      v8 = HIBYTE(v19);
      v6 = v19;
      if (!(HIBYTE(v19) | v19))
      {
LABEL_2:
        v6 = 0;
        v7 = 0;
        v8 = 0;
LABEL_3:
        v9 = 0;
        while (1)
        {
          v16 = 0;
          v17 = 0;
          result = hevcbridgeUPull(a1, 1, &v16);
          if (result)
          {
            return result;
          }

          if (v16)
          {
            goto LABEL_8;
          }

          v16 = 0;
          result = hevcbridgeUPull(a1, 1, &v16);
          if (result)
          {
            return result;
          }

          if (v16)
          {
LABEL_8:
            result = hevcbridgeUESkip(a1);
            if (result)
            {
              return result;
            }
          }

          else
          {
            v16 = 0;
            result = hevcbridgeUPull(a1, 1, &v16);
            if (result)
            {
              return result;
            }

            if (v16)
            {
              v11 = 0;
              if (v8)
              {
                goto LABEL_12;
              }

              goto LABEL_24;
            }
          }

          result = hevcbridgeUEPullLong(a1, &v17);
          if (result)
          {
            return result;
          }

          v11 = v17;
          if (v17 >= 0x20)
          {
            hevcbridgeParseHRDParameters_cold_1();
            return 4294954582;
          }

          if (v8)
          {
LABEL_12:
            v12 = 0;
            do
            {
              result = hevcbridgeUESkip(a1);
              if (result)
              {
                return result;
              }

              result = hevcbridgeUESkip(a1);
              if (result)
              {
                return result;
              }

              if (v7)
              {
                result = hevcbridgeUESkip(a1);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeUESkip(a1);
                if (result)
                {
                  return result;
                }
              }

              result = hevcbridgeUSkip(a1, 1);
              if (result)
              {
                return result;
              }
            }

            while (++v12 <= v11);
          }

LABEL_24:
          if (v6)
          {
            v13 = 0;
            do
            {
              result = hevcbridgeUESkip(a1);
              if (result)
              {
                return result;
              }

              result = hevcbridgeUESkip(a1);
              if (result)
              {
                return result;
              }

              if (v7)
              {
                result = hevcbridgeUESkip(a1);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeUESkip(a1);
                if (result)
                {
                  return result;
                }
              }

              result = hevcbridgeUSkip(a1, 1);
              if (result)
              {
                return result;
              }
            }

            while (++v13 <= v11);
          }

          if (++v9 > a4)
          {
            return 0;
          }
        }
      }

      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 64) >> 2) & 1, 331, &v18);
      if (!result)
      {
        v15 = v18;
        if (!v18 || (result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 3) & 1, 332, 8), !result) && (result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 4) & 1, 333, 5), !result) && (result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 64) >> 5) & 1, 334), !result) && (result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 6) & 1, 335, 5), !result))
        {
          result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 64) >> 7, 336, 4);
          if (!result)
          {
            result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 65) & 1, 337, 4);
            if (!result)
            {
              if (!v15 || (result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 9) & 1, 338, 4), !result))
              {
                result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 10) & 1, 339, 5);
                if (!result)
                {
                  result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 11) & 1, 340, 5);
                  if (!result)
                  {
                    result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 64) >> 12) & 1, 341, 5);
                    if (!result)
                    {
                      v7 = v15;
                      goto LABEL_3;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

size_t hevcbridgeUEPullLong(uint64_t a1, unsigned int *a2)
{
  v11 = 0;
  if (*(a1 + 41))
  {
    hevcbridgeUEPullLong_cold_1(&v12);
LABEL_17:
    v7 = 0;
    result = v12;
    goto LABEL_9;
  }

  v4 = *(a1 + 80);
  if (v4 < 0x80000)
  {
    v10 = 0;
    hevcbridgeUPull(a1, 1, &v10);
    if (v10)
    {
      hevcbridgeUEPullLong_cold_2(&v12);
    }

    else
    {
      v5 = 0;
      do
      {
        result = hevcbridgeUPull(a1, 1, &v10);
        if (result)
        {
          v7 = 0;
          goto LABEL_9;
        }

        ++v5;
      }

      while (!v10);
      if (v5 < 0x20)
      {
        result = hevcbridgeUPullLong(a1, v5, &v11);
        v7 = v11 + ~(-1 << v5);
        goto LABEL_9;
      }

      hevcbridgeUEPullLong_cold_3(&v12);
    }

    goto LABEL_17;
  }

  v8 = __clz(v4);
  v9 = v4 << (v8 + 1) >> -v8;
  if (!v8)
  {
    v9 = 0;
  }

  *(a1 + 80) = v9;
  v7 = v9 + ~(-1 << v8);
  result = hevcbridgeAdvanceInBitstream(a1, v8 + 1 + v8);
LABEL_9:
  *a2 = v7;
  return result;
}

uint64_t hevcbridgeParseRepFormat(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v8 = *(a2 + 44);
  result = hevcbridgeUPullLong(a1, 16, &v18 + 1);
  if ((v8 & 0x4000000000000) != 0 && !result)
  {
    result = (a2[2])(*a2, 53, HIDWORD(v18), 0xFFFFFFFFLL);
  }

  if (!result)
  {
    v10 = *(a2 + 44);
    result = hevcbridgeUPullLong(a1, 16, &v18);
    if ((v10 & 0x8000000000000) != 0 && !result)
    {
      result = (a2[2])(*a2, 54, v18, 0xFFFFFFFFLL);
    }

    if (!result)
    {
      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 52) & 1, 55, &v17);
      if (!result)
      {
        if (!v17)
        {
          v12 = 0;
          goto LABEL_22;
        }

        v11 = *(a2 + 44);
        result = hevcbridgeUPullLong(a1, 2, &v16);
        if ((v11 & 0x20000000000000) != 0 && !result)
        {
          result = (a2[2])(*a2, 56, v16, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v12 = v16;
          if (v16 != 3 || (result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 54) & 1, 57), !result))
          {
            result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 44) >> 55) & 1, 58, 4);
            if (!result)
            {
              result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 51) & 1, 59, 4);
              if (!result)
              {
LABEL_22:
                result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) & 0x200000000000000) != 0, 60, &v15);
                if (result)
                {
                  return result;
                }

                if (v15)
                {
                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) & 0x400000000000000) != 0, 61);
                  if (result)
                  {
                    return result;
                  }

                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) & 0x800000000000000) != 0, 62);
                  if (result)
                  {
                    return result;
                  }

                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) & 0x1000000000000000) != 0, 63);
                  if (result)
                  {
                    return result;
                  }

                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 44) & 0x2000000000000000) != 0, 64);
                  if (!a4 || result)
                  {
                    return result;
                  }
                }

                else if (!a4)
                {
                  return 0;
                }

                result = 0;
                v13 = v18;
                v14 = a4 + 16 * a3;
                *(v14 + 4488) = HIDWORD(v18);
                *(v14 + 4492) = v13;
                *(v14 + 4496) = v12;
                *(v14 + 4500) = 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

size_t hevcbridgeParseScalingListData(uint64_t a1)
{
  v2 = 0;
LABEL_2:
  v3 = 0;
  v4 = 16 << (2 * v2);
  if (v4 >= 0x40)
  {
    v4 = 64;
  }

  if (v2 == 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  if (v4 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4;
  }

  while (1)
  {
    v9 = 0;
    result = hevcbridgeUPull(a1, 1, &v9);
    if (result)
    {
      return result;
    }

    if (v9)
    {
      v8 = v6;
      if (v2 < 2 || (result = hevcbridgeSESkip(a1), v8 = v6, !result))
      {
        while (1)
        {
          result = hevcbridgeSESkip(a1);
          if (result)
          {
            break;
          }

          if (!--v8)
          {
            goto LABEL_18;
          }
        }
      }

      return result;
    }

    result = hevcbridgeUESkip(a1);
    if (result)
    {
      return result;
    }

LABEL_18:
    v3 += v5;
    if (v3 >= 6)
    {
      if (++v2 != 4)
      {
        goto LABEL_2;
      }

      return 0;
    }
  }
}

size_t hevcbridgeParseSTRefPicSet(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v56[2] = *MEMORY[0x1E69E9840];
  v54 = 0;
  if (a2)
  {
    LODWORD(v56[0]) = 0;
    result = hevcbridgeUPull(a1, 1, v56);
    if (result)
    {
      return result;
    }

    if (LOBYTE(v56[0]))
    {
      v11 = 0;
      v53 = 0;
      v52 = 0;
      v56[0] = 0;
      v56[1] = 0;
      v55[0] = 0;
      v55[1] = 0;
      if (a2 != a3)
      {
        goto LABEL_7;
      }

      result = hevcbridgeUEPullLong(a1, &v53 + 1);
      if (result)
      {
        return result;
      }

      v11 = HIDWORD(v53);
      if (HIDWORD(v53) > a2 - 1)
      {
        hevcbridgeParseSTRefPicSet_cold_4();
      }

      else
      {
LABEL_7:
        result = hevcbridgeUPullLong(a1, 1, &v53);
        if (result)
        {
          return result;
        }

        result = hevcbridgeUEPullLong(a1, &v52);
        if (result)
        {
          return result;
        }

        if (v52 >= 0x8000)
        {
          hevcbridgeParseSTRefPicSet_cold_3();
        }

        else
        {
          v12 = ~v11 + a2;
          v13 = a4 + 164 * v12;
          v14 = *(v13 + 161) + *(v13 + 160);
          if (v14 <= 0xF)
          {
            v15 = v52 + 1 - 2 * v53 * (v52 + 1);
            v50 = *(v13 + 161) + *(v13 + 160);
            v16 = v14 + 1;
            v17 = v55;
            v18 = v56;
            while (1)
            {
              v51 = 0;
              result = hevcbridgeUPull(a1, 1, &v51);
              v19 = v51;
              *v18 = v51;
              if (result)
              {
                return result;
              }

              if (v19)
              {
                *v17 = 1;
              }

              else
              {
                v51 = 0;
                result = hevcbridgeUPull(a1, 1, &v51);
                *v17 = v51;
                if (result)
                {
                  return result;
                }
              }

              ++v17;
              ++v18;
              if (!--v16)
              {
                v20 = *(v13 + 161);
                if (*(v13 + 161))
                {
                  v21 = 0;
                  v22 = v20 - 1;
                  v23 = (4 * v20 + 164 * v12 + a4 + 60);
                  v24 = v50;
                  do
                  {
                    v25 = *v23--;
                    v26 = v25 + v15;
                    if (v25 + v15 < 0)
                    {
                      v27 = v22 + *(v13 + 160);
                      if (*(v55 + v27))
                      {
                        *(a5 + 4 * v21) = v26;
                        *(a5 + 128 + v21++) = *(v56 + v27);
                      }
                    }

                    v28 = v22-- + 1;
                  }

                  while (v28 > 1);
                }

                else
                {
                  v21 = 0;
                  v24 = v50;
                }

                if (v15 < 0 && *(v55 + v24))
                {
                  *(a5 + 4 * v21) = v15;
                  *(a5 + v21++ + 128) = *(v56 + v24);
                }

                v37 = *(v13 + 160);
                if (!*(v13 + 160))
                {
                  goto LABEL_67;
                }

                v38 = 0;
                do
                {
                  v39 = *(v13 + 4 * v38) + v15;
                  if (v39 < 0 && *(v55 + v38))
                  {
                    *(a5 + 4 * v21) = v39;
                    *(a5 + 128 + v21++) = *(v56 + v38);
                    v37 = *(v13 + 160);
                  }

                  ++v38;
                }

                while (v38 < v37);
                if (v37)
                {
                  v40 = 0;
                  v41 = v37 - 1;
                  do
                  {
                    v42 = *(v13 + 4 * v41) + v15;
                    if (v42 >= 1 && *(v55 + v41))
                    {
                      *(a5 + 64 + 4 * v40) = v42;
                      *(a5 + 144 + v40++) = *(v56 + v41);
                    }

                    v43 = v41-- + 1;
                  }

                  while (v43 > 1);
                }

                else
                {
LABEL_67:
                  v40 = 0;
                }

                if (v15 >= 1 && *(v55 + v24))
                {
                  *(a5 + 4 * v40 + 64) = v15;
                  *(a5 + v40++ + 144) = *(v56 + v24);
                }

                v44 = *(v13 + 161);
                if (*(v13 + 161))
                {
                  v45 = 0;
                  v46 = v55;
                  v47 = v56;
                  do
                  {
                    v48 = *(v13 + 64 + 4 * v45) + v15;
                    if (v48 >= 1)
                    {
                      v49 = *(v13 + 160);
                      if (*(v46 + v49))
                      {
                        *(a5 + 64 + 4 * v40) = v48;
                        *(a5 + 144 + v40++) = *(v47 + v49);
                        v44 = *(v13 + 161);
                      }
                    }

                    ++v45;
                    v46 = (v46 + 1);
                    v47 = (v47 + 1);
                  }

                  while (v45 < v44);
                }

                if (v40 + v21 < 0x10)
                {
                  result = 0;
                  *(a5 + 160) = v21;
                  *(a5 + 161) = v40;
                  return result;
                }

                hevcbridgeParseSTRefPicSet_cold_1();
                return 4294954582;
              }
            }
          }

          hevcbridgeParseSTRefPicSet_cold_2();
        }
      }

      return 4294954582;
    }
  }

  result = hevcbridgeUEPullLong(a1, &v54 + 1);
  if (result)
  {
    return result;
  }

  result = hevcbridgeUEPullLong(a1, &v54);
  if (result)
  {
    return result;
  }

  v29 = HIDWORD(v54);
  if (HIDWORD(v54) >= 0x10)
  {
    hevcbridgeParseSTRefPicSet_cold_9();
    return 4294954582;
  }

  v30 = v54;
  if (v54 >= 0x10)
  {
    hevcbridgeParseSTRefPicSet_cold_8();
    return 4294954582;
  }

  if ((v54 + HIDWORD(v54)) >= 0x10)
  {
    hevcbridgeParseSTRefPicSet_cold_7();
    return 4294954582;
  }

  *(a5 + 160) = BYTE4(v54);
  *(a5 + 161) = v30;
  if (v29)
  {
    v31 = 0;
    while (1)
    {
      LODWORD(v56[0]) = 0;
      result = hevcbridgeUEPullLong(a1, v56);
      if (result)
      {
        break;
      }

      LODWORD(v55[0]) = 0;
      result = hevcbridgeUPull(a1, 1, v55);
      if (result)
      {
        break;
      }

      v32 = v56[0];
      if (LODWORD(v56[0]) >= 0x8000)
      {
        hevcbridgeParseSTRefPicSet_cold_5();
        return 4294954582;
      }

      *(a5 + v31 + 128) = v55[0];
      if (v31)
      {
        v33 = *(a5 + 4 * v31 - 4) + ~v32;
      }

      else
      {
        v33 = ~v32;
      }

      *(a5 + 4 * v31++) = v33;
      if (v29 == v31)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
LABEL_39:
    if (v30)
    {
      v34 = 0;
      v35 = a5 + 144;
      do
      {
        LODWORD(v56[0]) = 0;
        result = hevcbridgeUEPullLong(a1, v56);
        if (result)
        {
          break;
        }

        LODWORD(v55[0]) = 0;
        result = hevcbridgeUPull(a1, 1, v55);
        if (result)
        {
          break;
        }

        v36 = v56[0];
        if (LODWORD(v56[0]) >= 0x8000)
        {
          hevcbridgeParseSTRefPicSet_cold_6();
          return 4294954582;
        }

        *(v35 + v34) = v55[0];
        if (v34)
        {
          *(v35 + 4 * v34 - 80) = v36 + *(v35 + 4 * v34 - 84) + 1;
        }

        else
        {
          *(a5 + 64) = v36 + 1;
        }

        result = 0;
        ++v34;
      }

      while (v30 != v34);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

size_t hevcbridgeSESkip(uint64_t a1)
{
  if (*(a1 + 41))
  {
    v5 = v1;
    v6 = v2;
    hevcbridgeSESkip_cold_1(&v4);
    return v4;
  }

  else
  {

    return hevcbridgeUESkip(a1);
  }
}

uint64_t hevcbridgeSEPullIfRequested(uint64_t a1, uint64_t *a2, int a3, uint64_t a4)
{
  if (a3)
  {
    v10 = 0;
    result = hevcbridgeSEPullLong(a1, &v10);
    if (!result)
    {
      v7 = a2[3];
      v8 = *a2;
      v9 = v10;

      return v7(v8, a4, v9, 0xFFFFFFFFLL);
    }
  }

  else
  {

    return hevcbridgeSESkip(a1);
  }

  return result;
}

uint64_t hevcbridgeParsePictureParameterSetMultilayerExtension(uint64_t a1, uint64_t *a2)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 44) >> 49) & 1, 212);
  if (result)
  {
    return result;
  }

  result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 50) & 1, 213, &v20);
  if (result)
  {
    return result;
  }

  if (v20)
  {
    result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 44) >> 51) & 1, 214, 6);
    if (result)
    {
      return result;
    }
  }

  v5 = *(a2 + 44);
  result = hevcbridgeUEPullLong(a1, &v19);
  if ((v5 & 0x10000000000000) != 0 && !result)
  {
    result = (a2[2])(*a2, 215, v19, 0xFFFFFFFFLL);
  }

  if (result)
  {
    return result;
  }

  v6 = v19;
  if (v19 > 0x400)
  {
    hevcbridgeParsePictureParameterSetMultilayerExtension_cold_2();
    return 4294954582;
  }

  if (!v19)
  {
LABEL_32:
    result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 52) >> 5) & 1, 232, &v17);
    if (result)
    {
      return result;
    }

    if (!v17)
    {
      return result;
    }

    result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 52) >> 6) & 1, 233, &v16);
    if (result)
    {
      return result;
    }

    v7 = v16;
    if (v16 <= 0x3D)
    {
      if (v16)
      {
        while (1)
        {
          result = hevcbridgeUPullIfRequested(a1, a2, *(a2 + 52) >> 7, 234, 6);
          if (result)
          {
            break;
          }

          if (!--v7)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
LABEL_39:
        result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 13) >> 8) & 1, 235, &v15 + 1, 2);
        if (!result)
        {
          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 13) >> 9) & 1, 236, &v15, 2);
          if (!result)
          {
            result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 13) >> 10) & 1, 237, &v14 + 1);
            if (!result)
            {
              result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 13) >> 11) & 1, 238);
              if (!result)
              {
                result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 13) >> 12) & 1, 239, &v14);
                if (!result)
                {
                  result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 13) >> 13) & 1, 240);
                  if (!result)
                  {
                    result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 13) >> 14) & 1, 241, &v13 + 1, 2);
                    if (!result)
                    {
                      result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 13) >> 15) & 1, 242, &v13, 2);
                      if (!result)
                      {
                        v9 = v14;
                        v8 = HIDWORD(v14);
                        v11 = v13;
                        v10 = HIDWORD(v13);
                        v12 = HIDWORD(v15);
                        if (HIDWORD(v15) != 1 || (result = hevcbridgeSEPullIfRequested(a1, a2, HIWORD(*(a2 + 13)) & 1, 243), !result) && (result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 13) >> 17) & 1, 244), !result))
                        {
                          hevcBridgeParseColourMappingOctants(a1, a2, v12, v15, (v8 - (v9 + v10) + ~v11 + 10), 0, 0, 0, 0, 1 << v12);
                          return 0;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      return result;
    }

    hevcbridgeParsePictureParameterSetMultilayerExtension_cold_1();
    return 4294954582;
  }

  while (1)
  {
    result = hevcbridgeUPullIfRequested(a1, a2, (*(a2 + 44) >> 53) & 1, 216, 6);
    if (result)
    {
      return result;
    }

    result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) >> 54) & 1, 217, &v18 + 1);
    if (result)
    {
      return result;
    }

    if (HIBYTE(v18))
    {
      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) >> 55) & 1, 218);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, *(a2 + 51) & 1, 219);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) & 0x200000000000000) != 0, 220);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) & 0x400000000000000) != 0, 221);
      if (result)
      {
        return result;
      }
    }

    result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 44) & 0x800000000000000) != 0, 222, &v18);
    if (result)
    {
      return result;
    }

    if (v18)
    {
      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) & 0x1000000000000000) != 0, 223);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) & 0x2000000000000000) != 0, 224);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 44) & 0x4000000000000000) != 0, 225);
      if (result)
      {
        return result;
      }

      result = hevcbridgeSEPullIfRequested(a1, a2, *(a2 + 44) >> 63, 226);
      if (result)
      {
        return result;
      }
    }

    result = hevcbridgeUPullFlagAlways(a1, a2, *(a2 + 13) & 1, 227, &v17 + 1);
    if (result)
    {
      return result;
    }

    if (HIBYTE(v17))
    {
      result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 52) >> 1) & 1, 228);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 52) >> 2) & 1, 229);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 52) >> 3) & 1, 230);
      if (result)
      {
        return result;
      }

      result = hevcbridgeUEPullIfRequested(a1, a2, (*(a2 + 52) >> 4) & 1, 231);
      if (result)
      {
        return result;
      }
    }

    if (!--v6)
    {
      goto LABEL_32;
    }
  }
}

size_t hevcbridgeParsePictureParameterSetSCCExtension(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v4 = *(a2 + 144);
  if (v4)
  {
    v5 = *v4;
    if (!v5)
    {
      return 4294954583;
    }

    v7 = v5 + 8;
  }

  else
  {
    v7 = 0;
  }

  result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 52) >> 23) & 1, 250, &v22 + 1);
  if (!result)
  {
    result = hevcbridgeUPullFlagAlways(a1, a2, HIBYTE(*(a2 + 52)) & 1, 251, &v22);
    if (!result)
    {
      if (!v22 || (result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 52) >> 25) & 1, 252), !result) && (result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 52) >> 26) & 1, 253), !result) && (result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 52) >> 27) & 1, 254), !result) && (result = hevcbridgeSEPullIfRequested(a1, a2, (*(a2 + 52) >> 28) & 1, 255), !result))
      {
        result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 52) >> 29) & 1, 256, &v21);
        if (!result)
        {
          if (!v21)
          {
            goto LABEL_18;
          }

          v17 = 0;
          v18 = 0;
          result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 52) >> 30) & 1, 257, &v20);
          if (result)
          {
            return result;
          }

          v8 = v20;
          if (v20)
          {
            result = hevcbridgeUPullFlagAlways(a1, a2, *(a2 + 52) >> 31, 258, &v19);
            if (!result)
            {
              result = hevcbridgeUEPullAlways(a1, a2, *(a2 + 56) & 1, 259, &v18);
              if (!result)
              {
                if (v19)
                {
                  v9 = 1;
                  v10 = 8;
                }

                else
                {
                  result = hevcbridgeUEPullAlways(a1, a2, (*(a2 + 52) >> 33) & 1, 260, &v17);
                  if (result)
                  {
                    return result;
                  }

                  v10 = v17 + 8;
                  v9 = 3;
                }

                v11 = 0;
                v12 = v18;
LABEL_25:
                v13 = v8;
                while (1)
                {
                  if (v11)
                  {
                    v14 = a1;
                    v15 = a2;
                    v16 = v10;
                  }

                  else
                  {
                    v16 = v12 + 8;
                    v14 = a1;
                    v15 = a2;
                  }

                  result = hevcbridgeUPullIfRequested(v14, v15, (*(a2 + 52) >> 34) & 1, 261, v16);
                  if (result)
                  {
                    break;
                  }

                  if (!--v13)
                  {
                    if (++v11 != v9)
                    {
                      goto LABEL_25;
                    }

                    goto LABEL_18;
                  }
                }
              }
            }
          }

          else
          {
LABEL_18:
            result = 0;
            if (v7)
            {
              *(v7 + 30) = HIBYTE(v22);
            }
          }
        }
      }
    }
  }

  return result;
}

size_t hevcbridgeSEPullLong(uint64_t a1, unsigned int *a2)
{
  v5 = 0;
  if (*(a1 + 41))
  {
    hevcbridgeSEPullLong_cold_1(&v6);
    v4 = 0;
    result = v6;
  }

  else
  {
    result = hevcbridgeUEPullLong(a1, &v5);
    v4 = ((v5 + 1) >> 1) - ((v5 + 1) >> 1) * 2 * ((v5 + 1) & 1);
  }

  *a2 = v4;
  return result;
}

uint64_t hevcBridgeParseColourMappingOctants(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, int a7, int a8, int a9, unsigned int a10)
{
  v43 = 0;
  if (a6 >= a3)
  {
    goto LABEL_2;
  }

  result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 13) >> 18) & 1, 245, &v43);
  if (result)
  {
    return result;
  }

  if (v43)
  {
    v25 = 0;
    v26 = a10;
    v27 = 1;
    v39 = a4;
LABEL_29:
    v28 = 0;
    v36 = v27;
    v38 = a7 + (((v25 << a4) * v26) >> 1);
    v29 = 1;
LABEL_30:
    v30 = 0;
    v37 = v29;
    v31 = a8 + ((v28 * v26) >> 1);
    v32 = 1;
    while (1)
    {
      v33 = v32;
      v34 = v26;
      LODWORD(v35) = a9 + ((v30 * v26) >> 1);
      HIDWORD(v35) = a10 >> 1;
      result = hevcBridgeParseColourMappingOctants(a1, a2, a3, v39, a5, a6 + 1, v38, v31, v35);
      if (result)
      {
        break;
      }

      v32 = 0;
      v30 = 1;
      v26 = v34;
      if ((v33 & 1) == 0)
      {
        v29 = 0;
        v28 = 1;
        if (v37)
        {
          goto LABEL_30;
        }

        v27 = 0;
        result = 0;
        v25 = 1;
        LOBYTE(a4) = v39;
        if (v36)
        {
          goto LABEL_29;
        }

        return result;
      }
    }
  }

  else
  {
LABEL_2:
    v14 = 0;
LABEL_3:
    v15 = 0;
    while (1)
    {
      v42 = 0;
      result = hevcbridgeUPullFlagAlways(a1, a2, (*(a2 + 13) >> 19) & 1, 246, &v42);
      if (result)
      {
        break;
      }

      if (v42)
      {
        v17 = 3;
        do
        {
          v40 = 0;
          v41 = 0;
          v18 = *(a2 + 52);
          result = hevcbridgeUEPullLong(a1, &v41);
          if ((v18 & 0x100000) != 0 && !result)
          {
            result = (a2[2])(*a2, 247, v41, 0xFFFFFFFFLL);
          }

          if (result)
          {
            return result;
          }

          if (a5)
          {
            v19 = *(a2 + 52);
            result = hevcbridgeUPullLong(a1, a5, &v40);
            if ((v19 & 0x200000) != 0 && !result)
            {
              result = (a2[2])(*a2, 248, v40, 0xFFFFFFFFLL);
            }

            if (result)
            {
              return result;
            }

            v20 = v40 != 0;
          }

          else
          {
            v20 = 0;
          }

          if (v41 || v20)
          {
            result = hevcbridgeUPullFlagIfRequested(a1, a2, (*(a2 + 13) >> 22) & 1, 249);
            if (result)
            {
              return result;
            }
          }
        }

        while (--v17);
      }

      if (++v15 == 4)
      {
        if (!(++v14 >> a4))
        {
          goto LABEL_3;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t hevcbridgeParseVPSForHVCCCallbackFlag(uint64_t a1, int a2, char a3)
{
  if (a2 == 309)
  {
    result = 0;
    *(a1 + 33) = a3;
  }

  else if (a2 == 8)
  {
    result = 0;
    *(a1 + 32) = a3;
  }

  else
  {
    return 4294954584;
  }

  return result;
}

uint64_t hevcbridgeParseVPSForHVCCCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  v3 = 4294954584;
  if (a2 <= 309)
  {
    if (a2 > 6)
    {
      if (a2 == 7)
      {
        ++a1;
      }

      else
      {
        if (a2 != 308)
        {
          return v3;
        }

        a1 += 2;
      }
    }

    else
    {
      if (!a2)
      {
        if (a3 != 32)
        {
          return v3;
        }

        return 0;
      }

      if (a2 != 3)
      {
        return v3;
      }
    }

LABEL_22:
    *a1 = a3;
    return 0;
  }

  if (a2 <= 311)
  {
    if (a2 == 310)
    {
      a1 += 3;
    }

    else
    {
      a1 += 4;
    }

    goto LABEL_22;
  }

  switch(a2)
  {
    case 312:
      a1 += 5;
      goto LABEL_22;
    case 313:
      a1 += 6;
      goto LABEL_22;
    case 328:
      a1[7] = a3;
      return 1;
  }

  return v3;
}

uint64_t hevcbridgeParseSPSForHVCCCallbackFlag(uint64_t a1, int a2, int a3)
{
  if (a2 == 139 || a2 == 108)
  {
    return a3 == 0;
  }

  else
  {
    return 4294954584;
  }
}

BOOL hevcbridgeParseSPSForHVCCCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  v3 = 4294954584;
  if (a2 > 76)
  {
    if (a2 <= 79)
    {
      if (a2 == 77)
      {
        a1 += 8;
      }

      else if (a2 == 78)
      {
        a1 += 9;
      }

      else
      {
        a1 += 10;
      }

      goto LABEL_31;
    }

    if (a2 <= 81)
    {
      if (a2 == 80)
      {
        a1 += 11;
      }

      else
      {
        a1 += 3;
      }

      goto LABEL_31;
    }

    if (a2 != 82)
    {
      if (a2 == 143)
      {
        a1[5] = a3;
        return 1;
      }

      return v3;
    }

    a1 += 4;
LABEL_31:
    *a1 = a3;
    return 0;
  }

  if (a2 > 71)
  {
    switch(a2)
    {
      case 'H':
        a1 += 2;
        break;
      case 'J':
        a1 += 6;
        break;
      case 'K':
        a1 += 7;
        break;
      default:
        return v3;
    }

    goto LABEL_31;
  }

  switch(a2)
  {
    case 0:
      if (a3 != 33)
      {
        return v3;
      }

      return 0;
    case 1:
      goto LABEL_31;
    case 69:
      a1[1] = a3;
      return *a1 != 0;
  }

  return v3;
}

uint64_t hevcbridgeParsePPSForHVCCCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  if (a2 == 163)
  {
    *a1 = a3;
    return 1;
  }

  else
  {
    if (a3 == 34)
    {
      v3 = 0;
    }

    else
    {
      v3 = -12712;
    }

    if (a2)
    {
      return 4294954584;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t hevcbridgeParseSEIForHVCCCallbackUnsigned(_DWORD *a1, int a2, int a3)
{
  if (a2 == 344)
  {
    *a1 = a3;
    return 1;
  }

  else
  {
    if ((a3 - 41) >= 0xFFFFFFFE)
    {
      v3 = 0;
    }

    else
    {
      v3 = -12712;
    }

    if (a2)
    {
      return 4294954584;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t hevcbridgeParseSEIPayloadData(uint64_t a1, int a2, CFTypeRef cf)
{
  if (a2 != 347)
  {
    return 4294954584;
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 1;
}

__CFData *hevcbridge_copyPatchedParameterSet(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  CFDataAppendBytes(Mutable, (a1 + a2), a3);
  *newBytes = bswap32(a4 & 0xFFFFFE07 | (8 * a5)) >> 16;
  v13.location = 0;
  v13.length = 2;
  CFDataReplaceBytes(Mutable, v13, newBytes, 2);
  return Mutable;
}

size_t hevcbridgeSPullAlways(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int *a5, int a6)
{
  if (*(a1 + 41))
  {
    hevcbridgeSPullAlways_cold_1(&v17);
    v14 = 0;
    result = v17;
  }

  else
  {
    v10 = a6;
    v11 = *(a1 + 80);
    v12 = v11 >> -a6;
    result = hevcbridgeAdvanceInBitstream(a1, a6);
    if (v11 >= 0)
    {
      v14 = v12 & 0x7FFFFFF;
    }

    else
    {
      v14 = (-1 << v10) | (v11 >> 1 >> ~v10);
    }
  }

  *a5 = v14;
  if (a3 && !result)
  {
    v15 = a2[3];
    v16 = *a2;

    return v15(v16, a4);
  }

  return result;
}

uint64_t hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks(void *a1, void *a2, int a3, uint64_t a4)
{
  if (a3 == 1)
  {
    v84 = 0;
    v83 = 0;
    v7 = *(a2 + 120);
    result = hevcbridgeUEPullLong(a1, &v84);
    if ((v7 & 1) != 0 && !result)
    {
      result = (a2[2])(*a2, 512, v84, 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    v9 = *(a2 + 120);
    result = hevcbridgeUPullLong(a1, 8, &v83);
    if ((v9 & 2) != 0 && !result)
    {
      result = (a2[2])(*a2, 513, v83, 0xFFFFFFFFLL);
    }
  }

  else
  {
    v84 = 0;
    v83 = 0;
    v10 = *(a2 + 124);
    result = hevcbridgeUEPullLong(a1, &v84);
    if ((v10 & 2) != 0 && !result)
    {
      result = (a2[2])(*a2, 592, v84, 0xFFFFFFFFLL);
    }

    if (result)
    {
      return result;
    }

    v11 = *(a2 + 124);
    result = hevcbridgeUPullLong(a1, 8, &v83);
    if ((v11 & 4) != 0 && !result)
    {
      result = (a2[2])(*a2, 593, v83, 0xFFFFFFFFLL);
    }
  }

  if (result)
  {
    return result;
  }

  v12 = v84;
  if (v84 >= 0x101)
  {
    hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_3(&v84);
    return v84;
  }

  if (v83 >= 0x100)
  {
    hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_2(&v84);
    return v84;
  }

  if (a1[1] + *a1 - a1[7] < v84)
  {
    hevcbridgeParseVdrDmDataPayloadExMetadatatBlocks_cold_1(&v84);
    return v84;
  }

  v13 = 0;
  if (v83 > 7u)
  {
    if (v83 > 0xAu)
    {
      switch(v83)
      {
        case 0xBu:
          v84 = 0;
          v83 = 0;
          v82 = 0;
          v42 = *(a2 + 58);
          result = hevcbridgeUPullLong(a1, 8, &v84);
          if ((v42 & 2) != 0 && !result)
          {
            result = (a2[2])(*a2, 579, v84, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 116) >> 2) & 1, 580, &v83, 8);
            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 116) >> 3) & 1, 581, &v82 + 1, 8);
              if (!result)
              {
                result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 116) >> 4) & 1, 582, &v82, 8);
                if (!result)
                {
                  if (a4)
                  {
                    *(a4 + 29129) = 1;
                    *(a4 + 29604) = v84;
                    v43 = BYTE4(v82);
                    *(a4 + 29605) = v83;
                    *(a4 + 29606) = v43;
                    *(a4 + 29607) = v82;
                  }

                  v13 = 32;
                  goto LABEL_205;
                }
              }
            }
          }

          break;
        case 0xFEu:
          v84 = 0;
          v83 = 0;
          v58 = *(a2 + 58);
          result = hevcbridgeUPullLong(a1, 8, &v84);
          if ((v58 & 0x20) != 0 && !result)
          {
            result = (a2[2])(*a2, 583, v84, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 116) >> 6) & 1, 584, &v83, 8);
            if (!result)
            {
              if (a4)
              {
                *(a4 + 29130) = 1;
                *(a4 + 29608) = v84;
                v59 = v83;
                *(a4 + 29609) = v83;
                if (v59 == 2)
                {
                  *(a4 + 4) = 1;
                }
              }

              v13 = 16;
              goto LABEL_205;
            }
          }

          break;
        case 0xFFu:
          v84 = 0;
          v83 = 0;
          v81 = 0;
          v82 = 0;
          v26 = *(a2 + 58);
          result = hevcbridgeUPullLong(a1, 8, &v84);
          if ((v26 & 0x80) != 0 && !result)
          {
            result = (a2[2])(*a2, 585, v84, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, *(a2 + 117) & 1, 586, &v83, 8);
            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 58) >> 9) & 1, 587, &v82 + 1, 8);
              if (!result)
              {
                result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 58) >> 10) & 1, 588, &v82, 8);
                if (!result)
                {
                  result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 58) >> 11) & 1, 589, &v81 + 1, 8);
                  if (!result)
                  {
                    result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 58) >> 12) & 1, 590, &v81, 8);
                    if (!result)
                    {
                      if (a4)
                      {
                        *(a4 + 29131) = 1;
                        *(a4 + 29610) = v84;
                        v27 = BYTE4(v82);
                        *(a4 + 29611) = v83;
                        *(a4 + 29612) = v27;
                        v28 = BYTE4(v81);
                        *(a4 + 29613) = v82;
                        *(a4 + 29614) = v28;
                        *(a4 + 29615) = v81;
                      }

                      v13 = 48;
                      goto LABEL_205;
                    }
                  }
                }
              }
            }
          }

          break;
        default:
          goto LABEL_205;
      }
    }

    else if (v83 == 8)
    {
      v84 = 0;
      v83 = 0;
      v81 = 0;
      v82 = 0;
      HIDWORD(v80) = 0;
      v33 = *(a2 + 108);
      result = hevcbridgeUPullLong(a1, 8, &v84);
      if ((v33 & 0x800000) != 0 && !result)
      {
        result = (a2[2])(*a2, 537, v84, 0xFFFFFFFFLL);
      }

      if (!result)
      {
        v34 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 12, &v83);
        if ((v34 & 0x1000000) != 0 && !result)
        {
          result = (a2[2])(*a2, 538, v83, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 25) & 1, 539, &v82 + 1, 12);
          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 26) & 1, 540, &v82, 12);
            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 27) & 1, 541, &v81 + 1, 12);
              if (!result)
              {
                result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 28) & 1, 542, &v81, 12);
                if (!result)
                {
                  result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 29) & 1, 543, &v80 + 1, 12);
                  if (!result)
                  {
                    if (a4)
                    {
                      *(a4 + 29126) = 1;
                      v35 = *(a4 + 29284);
                      v36 = a4 + 36 * v35 + 29288;
                      *(v36 + 4) = v84;
                      v37 = WORD2(v82);
                      *(v36 + 6) = v83;
                      *(v36 + 8) = v37;
                      v38 = WORD2(v81);
                      *(v36 + 10) = v82;
                      *(v36 + 12) = v38;
                      v39 = WORD2(v80);
                      *(v36 + 14) = v81;
                      *(v36 + 16) = v39;
                      *v36 = v12;
                      if (v35 <= 4)
                      {
                        *(a4 + 29284) = v35 + 1;
                      }
                    }

                    else
                    {
                      v35 = 0;
                    }

                    if (v12 < 0xB)
                    {
                      v13 = 80;
                    }

                    else
                    {
                      LODWORD(v80) = 0;
                      result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 30) & 1, 544, &v80, 12);
                      if (result)
                      {
                        return result;
                      }

                      if (a4)
                      {
                        *(a4 + 36 * v35 + 29306) = v80;
                      }

                      if (v12 < 0xD)
                      {
                        v13 = 92;
                      }

                      else
                      {
                        LODWORD(v80) = 0;
                        result = hevcbridgeUPullAlways(a1, a2, *(a2 + 27) >> 31, 545, &v80, 12);
                        if (result)
                        {
                          return result;
                        }

                        if (a4)
                        {
                          *(a4 + 36 * v35 + 29308) = v80;
                        }

                        if (v12 == 13)
                        {
                          v13 = 104;
                        }

                        else
                        {
                          LODWORD(v80) = 0;
                          v78 = 0;
                          v79 = 0;
                          v77 = 0;
                          result = hevcbridgeUPullAlways(a1, a2, a2[14] & 1, 546, &v80, 8);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 33) & 1, 547, &v79 + 1, 8);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 34) & 1, 548, &v79, 8);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 35) & 1, 549, &v78 + 1, 8);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 36) & 1, 550, &v78, 8);
                          if (result)
                          {
                            return result;
                          }

                          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 37) & 1, 551, &v77, 8);
                          if (result)
                          {
                            return result;
                          }

                          if (a4)
                          {
                            v69 = BYTE4(v79);
                            v70 = (a4 + 36 * v35 + 29288);
                            v70[22] = v80;
                            v70[23] = v69;
                            v71 = BYTE4(v78);
                            v70[24] = v79;
                            v70[25] = v71;
                            v72 = v77;
                            v70[26] = v78;
                            v70[27] = v72;
                          }

                          if (v12 < 0x14)
                          {
                            v13 = 152;
                          }

                          else
                          {
                            LODWORD(v80) = 0;
                            v78 = 0;
                            v79 = 0;
                            v77 = 0;
                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 38) & 1, 552, &v80, 8);
                            if (result)
                            {
                              return result;
                            }

                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 39) & 1, 553, &v79 + 1, 8);
                            if (result)
                            {
                              return result;
                            }

                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 40) & 1, 554, &v79, 8);
                            if (result)
                            {
                              return result;
                            }

                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 41) & 1, 555, &v78 + 1, 8);
                            if (result)
                            {
                              return result;
                            }

                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 42) & 1, 556, &v78, 8);
                            if (result)
                            {
                              return result;
                            }

                            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 43) & 1, 557, &v77, 8);
                            if (result)
                            {
                              return result;
                            }

                            if (a4)
                            {
                              v73 = BYTE4(v79);
                              v74 = (a4 + 36 * v35 + 29288);
                              v74[28] = v80;
                              v74[29] = v73;
                              v75 = BYTE4(v78);
                              v74[30] = v79;
                              v74[31] = v75;
                              v76 = v77;
                              v74[32] = v78;
                              v74[33] = v76;
                            }

                            v13 = 200;
                          }
                        }
                      }
                    }

                    goto LABEL_205;
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (v83 == 9)
    {
      v84 = 0;
      v52 = *(a2 + 108);
      result = hevcbridgeUPullLong(a1, 8, &v84);
      if ((v52 & 0x100000000000) != 0 && !result)
      {
        result = (a2[2])(*a2, 558, v84, 0xFFFFFFFFLL);
      }

      if (!result)
      {
        if (a4)
        {
          *(a4 + 29127) = 1;
          v53 = v84;
          *(a4 + 29468) = v84;
        }

        else
        {
          v53 = v84;
        }

        if (v53 < 0x13)
        {
          v13 = 8;
        }

        else
        {
          v83 = 0;
          v81 = 0;
          v82 = 0;
          v80 = 0;
          HIDWORD(v79) = 0;
          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 45) & 1, 559, &v83, 16);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 46) & 1, 560, &v82 + 1, 16);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 47) & 1, 561, &v82, 16);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, *(a2 + 57) & 1, 562, &v81 + 1, 16);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 49) & 1, 563, &v81, 16);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 50) & 1, 564, &v80 + 1, 16);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 51) & 1, 565, &v80, 16);
          if (result)
          {
            return result;
          }

          result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) >> 52) & 1, 566, &v79 + 1, 16);
          if (result)
          {
            return result;
          }

          if (a4)
          {
            v60 = WORD2(v82);
            *(a4 + 29470) = v83;
            *(a4 + 29472) = v60;
            v61 = WORD2(v81);
            *(a4 + 29474) = v82;
            *(a4 + 29476) = v61;
            v62 = WORD2(v80);
            *(a4 + 29478) = v81;
            *(a4 + 29480) = v62;
            v63 = WORD2(v79);
            *(a4 + 29482) = v80;
            *(a4 + 29484) = v63;
          }

          v13 = 136;
        }

        goto LABEL_205;
      }
    }

    else
    {
      v84 = 0;
      v83 = 0;
      v82 = 0;
      v18 = *(a2 + 108);
      result = hevcbridgeUPullLong(a1, 8, &v84);
      if ((v18 & 0x20000000000000) != 0 && !result)
      {
        result = (a2[2])(*a2, 567, v84, 0xFFFFFFFFLL);
      }

      if (!result)
      {
        result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 54) & 1, 568, &v83, 12);
        if (!result)
        {
          result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 55) & 1, 569, &v82 + 1, 12);
          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, *(a2 + 115) & 1, 570, &v82, 8);
            if (!result)
            {
              if (a4)
              {
                *(a4 + 29128) = 1;
                v19 = *(a4 + 29488);
                if (v19 <= 3)
                {
                  *(a4 + 29488) = v19 + 1;
                }

                v20 = a4 + 28 * v19 + 29492;
                *(v20 + 4) = v84;
                v21 = WORD2(v82);
                *(v20 + 6) = v83;
                *(v20 + 8) = v21;
                v22 = v82;
                *(v20 + 10) = v82;
              }

              else
              {
                v19 = 0;
                v22 = v82;
              }

              if (v22 < 0x13)
              {
                v13 = 40;
              }

              else
              {
                v80 = 0;
                v81 = 0;
                v78 = 0;
                v79 = 0;
                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) & 0x200000000000000) != 0, 571, &v81 + 1, 16);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) & 0x400000000000000) != 0, 572, &v81, 16);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) & 0x800000000000000) != 0, 573, &v80 + 1, 16);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) & 0x1000000000000000) != 0, 574, &v80, 16);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) & 0x2000000000000000) != 0, 575, &v79 + 1, 16);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 108) & 0x4000000000000000) != 0, 576, &v79, 16);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, *(a2 + 108) >> 63, 577, &v78 + 1, 16);
                if (result)
                {
                  return result;
                }

                result = hevcbridgeSPullAlways(a1, a2, *(a2 + 58) & 1, 578, &v78, 16);
                if (result)
                {
                  return result;
                }

                if (a4)
                {
                  v64 = v81;
                  v65 = (a4 + 28 * v19 + 29492);
                  v65[6] = WORD2(v81);
                  v65[7] = v64;
                  v66 = v80;
                  v65[8] = WORD2(v80);
                  v65[9] = v66;
                  v67 = v79;
                  v65[10] = WORD2(v79);
                  v65[11] = v67;
                  v68 = v78;
                  v65[12] = WORD2(v78);
                  v65[13] = v68;
                }

                v13 = 168;
              }

              goto LABEL_205;
            }
          }
        }
      }
    }
  }

  else if (v83 > 3u)
  {
    switch(v83)
    {
      case 4u:
        v84 = 0;
        v83 = 0;
        v40 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 12, &v84);
        if ((v40 & 0x2000) != 0 && !result)
        {
          result = (a2[2])(*a2, 527, v84, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v41 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 12, &v83);
          if ((v41 & 0x4000) != 0 && !result)
          {
            result = (a2[2])(*a2, 528, v83, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            if (a4)
            {
              *(a4 + 29123) = 1;
              *(a4 + 29262) = v84;
              *(a4 + 29264) = v83;
            }

            v13 = 24;
            goto LABEL_205;
          }
        }

        break;
      case 5u:
        v84 = 0;
        v83 = 0;
        v82 = 0;
        v54 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 13, &v84);
        if ((v54 & 0x8000) != 0 && !result)
        {
          result = (a2[2])(*a2, 529, v84, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v55 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 13, &v83);
          if ((v55 & 0x10000) != 0 && !result)
          {
            result = (a2[2])(*a2, 530, v83, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            v56 = *(a2 + 108);
            result = hevcbridgeUPullLong(a1, 13, &v82 + 1);
            if ((v56 & 0x20000) != 0 && !result)
            {
              result = (a2[2])(*a2, 531, HIDWORD(v82), 0xFFFFFFFFLL);
            }

            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 18) & 1, 532, &v82, 13);
              if (!result)
              {
                if (a4)
                {
                  *(a4 + 29124) = 1;
                  *(a4 + 29266) = v84;
                  v57 = WORD2(v82);
                  *(a4 + 29268) = v83;
                  *(a4 + 29270) = v57;
                  *(a4 + 29272) = v82;
                }

                v13 = 52;
                goto LABEL_205;
              }
            }
          }
        }

        break;
      case 6u:
        v84 = 0;
        v83 = 0;
        v82 = 0;
        v23 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 16, &v84);
        if ((v23 & 0x80000) != 0 && !result)
        {
          result = (a2[2])(*a2, 533, v84, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v24 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 16, &v83);
          if ((v24 & 0x100000) != 0 && !result)
          {
            result = (a2[2])(*a2, 534, v83, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 21) & 1, 535, &v82 + 1, 16);
            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 22) & 1, 536, &v82, 16);
              if (!result)
              {
                if (a4)
                {
                  *(a4 + 29125) = 1;
                  *(a4 + 29274) = v84;
                  v25 = WORD2(v82);
                  *(a4 + 29276) = v83;
                  *(a4 + 29278) = v25;
                  *(a4 + 29280) = v82;
                }

                v13 = 64;
                goto LABEL_205;
              }
            }
          }
        }

        break;
      default:
        goto LABEL_205;
    }
  }

  else
  {
    switch(v83)
    {
      case 1u:
        v84 = 0;
        HIDWORD(v82) = 0;
        v83 = 0;
        v29 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 12, &v84);
        if ((v29 & 1) != 0 && !result)
        {
          result = (a2[2])(*a2, 514, v84, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v30 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 12, &v83);
          if ((v30 & 2) != 0 && !result)
          {
            result = (a2[2])(*a2, 515, v83, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            v31 = *(a2 + 108);
            result = hevcbridgeUPullLong(a1, 12, &v82 + 1);
            if ((v31 & 4) != 0 && !result)
            {
              result = (a2[2])(*a2, 516, HIDWORD(v82), 0xFFFFFFFFLL);
            }

            if (!result)
            {
              if (a4)
              {
                *(a4 + 29120) = 1;
                *(a4 + 29132) = v84;
                v32 = WORD2(v82);
                *(a4 + 29134) = v83;
                *(a4 + 29136) = v32;
              }

              goto LABEL_99;
            }
          }
        }

        break;
      case 2u:
        v84 = 0;
        v83 = 0;
        v81 = 0;
        v82 = 0;
        HIDWORD(v80) = 0;
        if (a4)
        {
          ++*(a4 + 29140);
        }

        v44 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 12, &v84);
        if ((v44 & 8) != 0 && !result)
        {
          result = (a2[2])(*a2, 517, v84, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v45 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 12, &v83);
          if ((v45 & 0x10) != 0 && !result)
          {
            result = (a2[2])(*a2, 518, v83, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            v46 = *(a2 + 108);
            result = hevcbridgeUPullLong(a1, 12, &v82 + 1);
            if ((v46 & 0x20) != 0 && !result)
            {
              result = (a2[2])(*a2, 519, HIDWORD(v82), 0xFFFFFFFFLL);
            }

            if (!result)
            {
              result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 108) >> 6) & 1, 520, &v82, 12);
              if (!result)
              {
                result = hevcbridgeUPullAlways(a1, a2, *(a2 + 108) >> 7, 521, &v81 + 1, 12);
                if (!result)
                {
                  result = hevcbridgeUPullAlways(a1, a2, (*(a2 + 27) >> 8) & 1, 522, &v81, 12);
                  if (!result)
                  {
                    result = hevcbridgeSPullAlways(a1, a2, (*(a2 + 27) >> 9) & 1, 523, &v80 + 1, 13);
                    if (!result)
                    {
                      if (a4)
                      {
                        v47 = *(a4 + 29140);
                        *(a4 + 29121) = 1;
                        v48 = (a4 + 14 * (v47 - 1) + 29144);
                        *v48 = v84;
                        v49 = WORD2(v82);
                        v48[1] = v83;
                        v48[2] = v49;
                        v50 = WORD2(v81);
                        v48[3] = v82;
                        v48[4] = v50;
                        v51 = WORD2(v80);
                        v48[5] = v81;
                        v48[6] = v51;
                        if (v47 >= 8)
                        {
                          v47 = 8;
                        }

                        *(a4 + 29140) = v47;
                      }

                      v13 = 85;
                      goto LABEL_205;
                    }
                  }
                }
              }
            }
          }
        }

        break;
      case 3u:
        v84 = 0;
        HIDWORD(v82) = 0;
        v83 = 0;
        v14 = *(a2 + 108);
        result = hevcbridgeUPullLong(a1, 12, &v84);
        if ((v14 & 0x400) != 0 && !result)
        {
          result = (a2[2])(*a2, 524, v84, 0xFFFFFFFFLL);
        }

        if (!result)
        {
          v15 = *(a2 + 108);
          result = hevcbridgeUPullLong(a1, 12, &v83);
          if ((v15 & 0x800) != 0 && !result)
          {
            result = (a2[2])(*a2, 525, v83, 0xFFFFFFFFLL);
          }

          if (!result)
          {
            v16 = *(a2 + 108);
            result = hevcbridgeUPullLong(a1, 12, &v82 + 1);
            if ((v16 & 0x1000) != 0 && !result)
            {
              result = (a2[2])(*a2, 526, HIDWORD(v82), 0xFFFFFFFFLL);
            }

            if (!result)
            {
              if (a4)
              {
                *(a4 + 29122) = 1;
                *(a4 + 29256) = v84;
                v17 = WORD2(v82);
                *(a4 + 29258) = v83;
                *(a4 + 29260) = v17;
              }

LABEL_99:
              v13 = 36;
LABEL_205:
              if (8 * v12 <= v13)
              {
                return 0;
              }

              else
              {

                return hevcbridgeUSkip(a1, 8 * v12 - v13);
              }
            }
          }
        }

        break;
      default:
        goto LABEL_205;
    }
  }

  return result;
}

size_t hevcbridgeSEPush(uint64_t a1, int a2)
{
  if (*(a1 + 41))
  {
    hevcbridgeSEPush_cold_1(&v10);
    return v10;
  }

  else
  {
    v3 = a2 < 1;
    if (a2 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    v5 = 0;
    if (a2)
    {
      v6 = v4;
      do
      {
        v7 = v5++;
        if (v7 > 0x1D)
        {
          break;
        }

        v8 = v6 > 1;
        v6 >>= 1;
      }

      while (v8);
    }

    result = hevcbridgeUPush(a1, v5 + 1, 1, 0);
    if (v5 && !result)
    {

      return hevcbridgeUPush(a1, v5, (((2 * v4) | v3) - (1 << v5)) & ((1 << v5) - 1), 0);
    }
  }

  return result;
}

size_t hevcbridgeIPush(uint64_t a1, char a2, int a3)
{
  if (*(a1 + 41))
  {
    hevcbridgeIPush_cold_1(&v5);
    return v5;
  }

  else if (1 << (a2 - 1) <= a3)
  {
    hevcbridgeIPush_cold_2(&v6);
    return v6;
  }

  else if (-1 << (a2 - 1) > a3)
  {
    hevcbridgeIPush_cold_3(&v7);
    return v7;
  }

  else
  {
    v3 = a3 & ~(-1 << a2);

    return hevcbridgeUPush(a1, a2, v3, 0);
  }
}

double OUTLINED_FUNCTION_8_17()
{
  v1 = v0 - 208;
  *(v1 + 96) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  return result;
}

void OUTLINED_FUNCTION_10_13(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v6 - 56) = a1;
  *(v6 - 64) = 0;
  *(v6 - 96) = 0u;
  *(v6 - 80) = 0u;
  *(v6 - 128) = 0u;
  *(v6 - 112) = 0u;

  bzero(va, 0x88uLL);
}

size_t OUTLINED_FUNCTION_13_10()
{
  *(v2 - 160) = v1;
  *(v2 - 152) = v0;
  *(v2 - 144) = 0;
  *(v2 - 136) = v1 + v0;
  *(v2 - 120) = 1;
  *(v2 - 112) = v1;
  *(v2 - 104) = v1;
  *(v2 - 96) = 0;
  *(v2 - 88) = 0;
  *(v2 - 72) = 0;
  *(v2 - 64) = 0;

  return hevcbridgeAdvanceInBitstream(v2 - 160, 0);
}

size_t OUTLINED_FUNCTION_14_11()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0;
  *(v0 - 72) = 0;
  *(v0 - 64) = 0;

  return hevcbridgeAdvanceInBitstream(v0 - 160, 0);
}

size_t OUTLINED_FUNCTION_21_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return hevcbridgeUPush(&a9, 10, 256, 0);
}

size_t OUTLINED_FUNCTION_22_7()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;

  return hevcbridgeAdvanceInBitstream(v0 - 208, 0);
}

size_t OUTLINED_FUNCTION_26_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return hevcbridgeUPush(&a9, 10, 128, 0);
}

size_t OUTLINED_FUNCTION_28_5(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return hevcbridgeUPush(&a9, 12, a3, 0);
}

void OUTLINED_FUNCTION_32_3(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v7 - 56) = a1;
  *(v6 + 96) = 0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;

  bzero(va, 0x88uLL);
}

__n128 OUTLINED_FUNCTION_34_2()
{
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  return result;
}

size_t OUTLINED_FUNCTION_42_0()
{
  *(v1 + 48) = v0;
  *(v1 + 56) = v0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;

  return hevcbridgeAdvanceInBitstream(v2 - 160, 0);
}

size_t OUTLINED_FUNCTION_46_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  a39 = 0;
  a40 = 0;
  a42 = 0;
  a43 = 0;

  return hevcbridgeAdvanceInBitstream(&a31, 0);
}

size_t OUTLINED_FUNCTION_50_0(uint64_t *a1)
{

  return hevcbridgeUPush(a1, 1, 1, 0);
}

size_t OUTLINED_FUNCTION_54_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return hevcbridgeUPush(va, 1, a3, 1);
}

size_t OUTLINED_FUNCTION_55_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return hevcbridgeSEPush(&a9, -1);
}

size_t OUTLINED_FUNCTION_58_0(uint64_t *a1, int a2)
{

  return hevcbridgeUPush(a1, a2, 1, 0);
}

double OUTLINED_FUNCTION_59_0@<D0>(_OWORD *a1@<X8>)
{
  *(v2 - 56) = v1;
  *(v2 - 64) = 0;
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_0(const void *a1, int a2, int a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return hevcbridge_getHEVCParameterSetAtIndex(a1, a2, a3, 0, a5, a6, 0, 0, a9, a10);
}

size_t OUTLINED_FUNCTION_64_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return hevcbridgeUPush(va, 4, a3, 1);
}

size_t OUTLINED_FUNCTION_65_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return hevcbridgeUPush(va, 5, a3, 1);
}

size_t OUTLINED_FUNCTION_67_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return hevcbridgeSEPush(&a9, -2);
}

void OUTLINED_FUNCTION_70()
{
  *v2 = v1;
  v2[1] = v0;
  v2[2] = 0;
  v2[3] = v1 + v0;
}

void OUTLINED_FUNCTION_71()
{
  *(v2 - 208) = v1;
  *(v2 - 200) = v0;
  *(v2 - 192) = 0;
  *(v2 - 184) = v1 + v0;
}

size_t OUTLINED_FUNCTION_74()
{
  v4 = (*(v0 + 100) >> 1) & 1;

  return hevcbridgeUPullFlagAlways(v1, v0, v4, 497, (v2 - 109));
}

size_t OUTLINED_FUNCTION_75(uint64_t *a1, uint64_t a2, int a3)
{

  return hevcbridgeUPush(a1, 23, a3, 0);
}

void *OUTLINED_FUNCTION_81()
{

  return malloc_type_calloc(v1, 1uLL, v0);
}

void *OUTLINED_FUNCTION_82(size_t a1, size_t a2)
{

  return malloc_type_calloc(a1, a2, 0x100004077774924uLL);
}

size_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return hevcbridgeUPush(va, 17, a3, 1);
}

void OUTLINED_FUNCTION_84(uint64_t a1@<X8>)
{

  bzero((a1 + 8), 0x98uLL);
}

size_t OUTLINED_FUNCTION_85(uint64_t *a1, int a2)
{

  return hevcbridgeUPush(a1, a2, 2, 0);
}

uint64_t OUTLINED_FUNCTION_92(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  result = 0;
  *v11 = a9;
  *v10 = a10;
  return result;
}

size_t OUTLINED_FUNCTION_103()
{
  v3 = *(v1 - 124);

  return hevcbridgeUPullLong(v0, v3, (v1 - 96));
}

size_t OUTLINED_FUNCTION_104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return hevcbridgeSEPush(&a9, -4);
}

size_t OUTLINED_FUNCTION_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return hevcbridgeSEPush(&a9, -5);
}

uint64_t OUTLINED_FUNCTION_106()
{

  return hevcbridgeParseNALUnit(v0 - 208, &STACK[0x2B0]);
}

size_t OUTLINED_FUNCTION_107(uint64_t *a1, int a2)
{

  return hevcbridgeUPush(a1, a2, 480, 0);
}

size_t OUTLINED_FUNCTION_108(uint64_t *a1, int a2)
{

  return hevcbridgeUPush(a1, a2, 288, 0);
}

size_t OUTLINED_FUNCTION_109(uint64_t *a1, int a2)
{

  return hevcbridgeUPush(a1, a2, 96, 0);
}

CC_MD5_CTX *FigDigestMD5Create()
{
  v0 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  v1 = v0;
  if (v0)
  {
    CC_MD5_Init(v0);
  }

  return v1;
}

CC_SHA1_CTX *FigDigestSHA1Create()
{
  v0 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
  v1 = v0;
  if (v0)
  {
    CC_SHA1_Init(v0);
  }

  return v1;
}

uint64_t FigOSEventLinkRemoteCreateFromXPCObject(int a1, void *a2, const void *a3, const void *a4, uint64_t *a5)
{
  v18 = 0;
  cf = 0;
  if (!a2)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_8(&v20);
LABEL_27:
    LODWORD(v6) = 0;
    goto LABEL_28;
  }

  if (!a3)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_7(&v20);
    goto LABEL_27;
  }

  v6 = a4;
  if (!a4)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_6(&v20);
LABEL_28:
    v16 = v20;
    goto LABEL_15;
  }

  if (MEMORY[0x19A8DA4F0](a2) != MEMORY[0x1E69E9E80])
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_1(&v20);
    goto LABEL_27;
  }

  value = xpc_dictionary_get_value(a2, "RemoteEventLinkCreationInfo");
  if (figOSEventLinkRemote_GetTypeID_sRegisterFigOSEventLinkRemoteTypeOnce != -1)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_5(&v20);
    goto LABEL_27;
  }

  v12 = Instance;
  v13 = FigXPCMessageCopyBlockBufferUsingMemoryRecipient(*MEMORY[0x1E695E480], value, "BlockBuffer", v6, &cf);
  if (v13 || (v13 = figOSEventLinkMemoryObjects_createInternal(a1, a3, v6, cf, &v18), v13))
  {
    v16 = v13;
    v14 = 0;
    LODWORD(v6) = 0;
    goto LABEL_33;
  }

  *(v12 + 16) = v18;
  LODWORD(v6) = xpc_dictionary_copy_mach_send();
  if (!v6)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_4(&v20);
    v14 = 0;
LABEL_31:
    v16 = v20;
    goto LABEL_33;
  }

  xpc_dictionary_get_string(value, "EventLinkIdentifier");
  v14 = os_eventlink_create_with_port();
  if (!v14)
  {
    FigOSEventLinkRemoteCreateFromXPCObject_cold_3(&v20);
    goto LABEL_31;
  }

  v15 = os_eventlink_activate();
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = os_eventlink_associate();
    if (!v16)
    {
      *(v12 + 24) = v14;
      *(v12 + 32) = 0;
      *(v12 + 40) = 5;
      *a5 = v12;
LABEL_15:
      FigMachPortReleaseSendRight_(v6, 0, 0, 0, 0);
      v14 = 0;
      goto LABEL_16;
    }
  }

LABEL_33:
  FigMachPortReleaseSendRight_(v6, 0, 0, 0, 0);
  CFRelease(v12);
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
  }

  return v16;
}

uint64_t figOSEventLinkMemoryObjects_createInternal(int a1, const void *a2, const void *a3, CMBlockBufferRef theBuffer, uint64_t *a5)
{
  if (!theBuffer)
  {
    figOSEventLinkMemoryObjects_createInternal_cold_4(&v21);
    return v21;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (DataLength % *MEMORY[0x1E69E9AC8])
  {
    figOSEventLinkMemoryObjects_createInternal_cold_1(&v19);
    return v19;
  }

  v10 = DataLength;
  if (figOSEventLinkMemoryObjects_GetTypeID_sRegisterFigOSEventLinkMemoryObjectsTypeOnce != -1)
  {
    figOSEventLinkMemoryObjects_createInternal_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    figOSEventLinkMemoryObjects_createInternal_cold_3(&v20);
    return v20;
  }

  v12 = Instance;
  if (a2)
  {
    v13 = CFRetain(a2);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 16) = v13;
  if (a3)
  {
    v14 = CFRetain(a3);
  }

  else
  {
    v14 = 0;
  }

  *(v12 + 24) = v14;
  v15 = CMBlockBufferCreateWithBufferReference(0, theBuffer, 0, 0x20uLL, 0, (v12 + 32));
  if (v15 || (v16 = (v10 - 32) >> 1, v15 = CMBlockBufferCreateWithBufferReference(0, theBuffer, 0x20uLL, v16, 0, (v12 + 40)), v15))
  {
    v17 = v15;
    goto LABEL_18;
  }

  v17 = CMBlockBufferCreateWithBufferReference(0, theBuffer, v16 + 32, v16, 0, (v12 + 48));
  if (v17)
  {
LABEL_18:
    CFRelease(v12);
    return v17;
  }

  *a5 = v12;
  return v17;
}

uint64_t FigOSEventLinkRemoteSetAbortActionCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    FigOSEventLinkRemoteSetAbortActionCallback_cold_5(&v7);
    return v7;
  }

  if (!a2)
  {
    FigOSEventLinkRemoteSetAbortActionCallback_cold_4(&v7);
    return v7;
  }

  if (!a3)
  {
    FigOSEventLinkRemoteSetAbortActionCallback_cold_3(&v7);
    return v7;
  }

  if (*(a1 + 48))
  {
    FigOSEventLinkRemoteSetAbortActionCallback_cold_1(&v7);
    return v7;
  }

  if (*(a1 + 56))
  {
    FigOSEventLinkRemoteSetAbortActionCallback_cold_2(&v7);
    return v7;
  }

  v5 = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
  result = 0;
  *(a1 + 48) = v5;
  *(a1 + 56) = a3;
  return result;
}

uint64_t figOSEventLinkResolveMessageStatus(atomic_uint *a1, BOOL *a2)
{
  while (1)
  {
    v4 = FigAtomicCompareAndSwap32(2, 2u, a1);
    v5 = v4;
    if (v4)
    {
LABEL_4:
      result = 0;
      goto LABEL_5;
    }

    if ((*a1 - 3) <= 0xFFFFFFFD)
    {
      break;
    }

    if (FigAtomicCompareAndSwap32(1, 3u, a1))
    {
      goto LABEL_4;
    }
  }

  figOSEventLinkResolveMessageStatus_cold_1(&v7);
  result = v7;
LABEL_5:
  *a2 = v5;
  return result;
}

uint64_t FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority(os_unfair_lock_s *a1, uint32_t a2)
{
  if (a1)
  {
    if (a2 - 98 <= 0xFFFFFF9E)
    {
      FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority_cold_1(&v5);
      return v5;
    }

    else
    {
      os_unfair_lock_lock(a1 + 8);
      a1[9]._os_unfair_lock_opaque = a2;
      a1[10]._os_unfair_lock_opaque = 5;
      os_unfair_lock_unlock(a1 + 8);
      return 0;
    }
  }

  else
  {
    FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority_cold_2(&v6);
    return v6;
  }
}

uint64_t FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority(os_unfair_lock_s *a1, unsigned int a2)
{
  if (a1)
  {
    if (a2 == 5 || a2 >= 0x33)
    {
      FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority_cold_1(&v5);
      return v5;
    }

    else
    {
      os_unfair_lock_lock(a1 + 8);
      a1[9]._os_unfair_lock_opaque = 0;
      a1[10]._os_unfair_lock_opaque = a2;
      os_unfair_lock_unlock(a1 + 8);
      return 0;
    }
  }

  else
  {
    FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority_cold_2(&v6);
    return v6;
  }
}

size_t FigOSEventLinkServerCreate(int a1, unsigned int a2, int a3, const __CFString *a4, uint64_t a5, const void *a6, const void *a7, const void *a8, void *a9)
{
  cf = 0;
  v34 = 0;
  v32 = 0;
  if (!a7)
  {
    FigOSEventLinkServerCreate_cold_8(&v35);
LABEL_31:
    v11 = 0;
    goto LABEL_32;
  }

  if (!a8)
  {
    FigOSEventLinkServerCreate_cold_7(&v35);
    goto LABEL_31;
  }

  if (!a6)
  {
    FigOSEventLinkServerCreate_cold_6(&v35);
    goto LABEL_31;
  }

  v11 = a4;
  if (!a4)
  {
    FigOSEventLinkServerCreate_cold_5(&v35);
LABEL_32:
    v30 = v35;
    goto LABEL_19;
  }

  if (a2 == 5 && !a3)
  {
    FigOSEventLinkServerCreate_cold_4(&v35);
    goto LABEL_31;
  }

  if (figOSEventLinkServer_GetTypeID_sRegisterFigOSEventLinkServerTypeOnce != -1)
  {
    FigOSEventLinkServerCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigOSEventLinkServerCreate_cold_3(&v35);
    goto LABEL_31;
  }

  v18 = Instance;
  BlockBuffer = FigMemoryPoolCreateBlockBuffer(a6, *MEMORY[0x1E69E9AC8], &cf, v17);
  if (BlockBuffer || (BlockBuffer = figOSEventLinkMemoryObjects_createInternal(a1, a7, a8, cf, &v32), BlockBuffer))
  {
LABEL_24:
    v30 = BlockBuffer;
    Mutable = 0;
    v11 = 0;
    goto LABEL_34;
  }

  v18[3] = v32;
  v32 = 0;
  v20 = CFRetain(a6);
  v18[4] = cf;
  v18[5] = v20;
  cf = 0;
  v18[10] = CFRetain(v11);
  CFStringGetCStringPtr(v11, 0x8000100u);
  v21 = os_eventlink_create();
  if (v21)
  {
    v22 = v21;
    BlockBuffer = os_eventlink_activate();
    if (!BlockBuffer)
    {
      v18[6] = v22;
      v23 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v11 = CFStringCreateWithFormat(v23, 0, @"%@.%p", v11, v22);
      CFDictionarySetValue(Mutable, @"com.apple.fig.ThreadCreateKey_Identifier", v11);
      if (a3)
      {
        FigCFDictionarySetInt32(Mutable, @"com.apple.fig.ThreadCreateKey_MachThreadPriority", a3, v25, v26, v27, v28, v29);
      }

      v30 = FigThreadCreate(FigOSEventLinkServerMain, v18, a2, 0, Mutable, &v34, v28, v29);
      if (!v30)
      {
        CFRetain(v18);
        *a9 = v18;
        if (!Mutable)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_34;
    }

    goto LABEL_24;
  }

  FigOSEventLinkServerCreate_cold_2(&v35);
  Mutable = 0;
  v11 = 0;
  v30 = v35;
LABEL_34:
  CFRelease(v18);
  if (Mutable)
  {
LABEL_18:
    CFRelease(Mutable);
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v30;
}

uint64_t FigOSEventLinkServerSetCallbacks(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    a1[7] = *a3;
    a1[8] = a3[1];
    v5 = a1[9];
    if (v5)
    {
      CFRelease(v5);
      a1[9] = 0;
    }

    if (a2)
    {
      v6 = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
      result = 0;
      a1[9] = v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigOSEventLinkServerSetCallbacks_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t FigOSEventLinkServerSetAbortActionCallbacks(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_7(&v9);
    return v9;
  }

  if (!a2)
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_6(&v9);
    return v9;
  }

  if (!a3)
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_5(&v9);
    return v9;
  }

  if (!a4)
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_4(&v9);
    return v9;
  }

  if (a1[11])
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_1(&v9);
    return v9;
  }

  if (a1[12])
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_2(&v9);
    return v9;
  }

  if (a1[13])
  {
    FigOSEventLinkServerSetAbortActionCallbacks_cold_3(&v9);
    return v9;
  }

  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
  result = 0;
  a1[11] = v7;
  a1[12] = a3;
  a1[13] = a4;
  return result;
}

uint64_t FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 16))
      {
        FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_1(&v5);
        return v5;
      }

      else
      {
        v3 = FigXPCRetain(a2);
        result = 0;
        *(a1 + 16) = v3;
      }
    }

    else
    {
      FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_3(&v7);
    return v7;
  }

  return result;
}

uint64_t FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection_cold_1();
  return 0;
}

double figOSEventLinkRemote_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__CFString *figOSEventLinkRemote_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = *(*(a1 + 16) + 40);
  DataLength = CMBlockBufferGetDataLength(v3);
  v5 = *(*(a1 + 16) + 48);
  v6 = CMBlockBufferGetDataLength(v5);
  CFStringAppendFormat(Mutable, 0, @"<FigOSEventLinkRemote %p sharedMessageBBuf %p (size %zu) sharedReplyBBuf %p (size %zu)>", a1, v3, DataLength, v5, v6);
  return Mutable;
}

double figOSEventLinkMemoryObjects_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figOSEventLinkMemoryObjects_Finalize(void *a1)
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

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }
}

__CFString *figOSEventLinkMemoryObjects_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = *(a1 + 40);
  DataLength = CMBlockBufferGetDataLength(v3);
  v5 = *(a1 + 48);
  v6 = CMBlockBufferGetDataLength(v5);
  CFStringAppendFormat(Mutable, 0, @"<FigOSEventLinkMemoryObjects %p sharedMessageBBuf %p (size %zu) sharedReplyBBuf %p (size %zu)>", a1, v3, DataLength, v5, v6);
  return Mutable;
}

void figOSEventLinkRemoteAbortAction(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 8));
  if (v2)
  {
    v3 = v2;
    (*a1)(v2, *(a1 + 16));

    CFRelease(v3);
  }
}

double figOSEventLinkServer_Init(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void figOSEventLinkServer_Finalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
    a1[5] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[6];
  if (v5)
  {

    a1[6] = 0;
  }

  v6 = a1[2];
  if (v6)
  {

    a1[2] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
    a1[10] = 0;
  }

  v9 = a1[11];
  if (v9)
  {
    CFRelease(v9);
    a1[11] = 0;
  }

  a1[12] = 0;
  a1[13] = 0;
}

__CFString *figOSEventLinkServer_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = *(*(a1 + 24) + 40);
  DataLength = CMBlockBufferGetDataLength(v3);
  v5 = *(a1 + 24);
  v6 = *(v5 + 48);
  v7 = CMBlockBufferGetDataLength(*(v5 + 40));
  CFStringAppendFormat(Mutable, 0, @"<FigOSEventLinkServer %p sharedMessageBBuf %p (size %zu) sharedReplyBBuf %p (size %zu)>", a1, v3, DataLength, v6, v7);
  return Mutable;
}

uint64_t FigPreferAudioSessionOverCMSession()
{
  if (FigPreferAudioSessionOverCMSession_onceToken != -1)
  {
    FigPreferAudioSessionOverCMSession_cold_1();
  }

  return 1;
}

size_t FigCaptionGroupFormatDescriptionRegisterOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = 0;
  v13 = figCaptionGroupFormatDescriptionFinalize;
  v12 = figCaptionGroupFormatDescriptionCopyDebugDesc;
  v10 = 4;
  v11 = figCaptionGroupFormatDescriptionEqual;
  return FigDerivedFormatDescriptionRegister(0x63706772u, &v9, a3, a4, a5, a6, a7, a8);
}

size_t FigCaptionGroupFormatDescriptionCreate(const __CFAllocator *a1, int a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    FigThreadRunOnce(&sFigCaptionGroupFormatDescriptionRegisterOnce, FigCaptionGroupFormatDescriptionRegisterOnce);
    v16 = FigDerivedFormatDescriptionCreate(a1, 0x63706772, a2, 0, &cf, v6, v7, v8);
    if (v16)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *FigDerivedFormatDescriptionGetDerivedStorage(cf, v9, v10, v11, v12, v13, v14, v15) = a2;
      *a3 = cf;
    }
  }

  else
  {
    FigCaptionGroupFormatDescriptionCreate_cold_1(&v19);
    return v19;
  }

  return v16;
}

__CFString *figCaptionGroupFormatDescriptionCopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v10, 0);
  CFStringAppendFormat(Mutable, 0, @"\t\tsubType: '%c%c%c%c'", HIBYTE(*DerivedStorage), BYTE2(*DerivedStorage), BYTE1(*DerivedStorage), *DerivedStorage);
  return Mutable;
}

uint64_t FigTaggedBufferGroupGetTypeID()
{
  if (_MergedGlobals_45 != -1)
  {
    FigTaggedBufferGroupGetTypeID_cold_1();
  }

  return qword_1ED4CCC60;
}

CFTypeID CMTaggedBufferGroupGetTypeID(void)
{
  if (_MergedGlobals_45 != -1)
  {
    FigTaggedBufferGroupGetTypeID_cold_1();
  }

  return qword_1ED4CCC60;
}

uint64_t taggedBufferGroup_registerClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t taggedBufferGroup_createCommon(int a1, const __CFArray *a2, CFArrayRef theArray, uint64_t *a4)
{
  if (!a2)
  {
    taggedBufferGroup_createCommon_cold_6(&v15);
    return v15;
  }

  if (!theArray)
  {
    taggedBufferGroup_createCommon_cold_5(&v15);
    return v15;
  }

  Count = CFArrayGetCount(theArray);
  if (Count != CFArrayGetCount(a2))
  {
    taggedBufferGroup_createCommon_cold_1(&v15);
    return v15;
  }

  if (!a4)
  {
    taggedBufferGroup_createCommon_cold_4(&v15);
    return v15;
  }

  if (_MergedGlobals_45 != -1)
  {
    FigTaggedBufferGroupGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    taggedBufferGroup_createCommon_cold_3(&v15);
    return v15;
  }

  v9 = Instance;
  *(Instance + 16) = Count;
  if (Count >= 1)
  {
    v10 = 0;
    v11 = (Instance + 32);
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      *(v11 - 1) = CFRetain(ValueAtIndex);
      v13 = CFArrayGetValueAtIndex(a2, v10);
      *v11 = CFRetain(v13);
      v11 += 2;
      ++v10;
    }

    while (v10 < *(v9 + 16));
  }

  result = 0;
  *a4 = v9;
  return result;
}

OSStatus CMTaggedBufferGroupCreateCombined(CFAllocatorRef allocator, CFArrayRef taggedBufferGroups, CMTaggedBufferGroupRef *groupOut)
{
  cf = 0;
  if (!taggedBufferGroups || (Count = CFArrayGetCount(taggedBufferGroups), Count <= 0))
  {
    CMTaggedBufferGroupCreateCombined_cold_4(&v21);
LABEL_18:
    Common = v21;
    goto LABEL_14;
  }

  if (!groupOut)
  {
    CMTaggedBufferGroupCreateCombined_cold_3(&v21);
    goto LABEL_18;
  }

  v7 = Count;
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    CMTaggedBufferGroupCreateCombined_cold_2(&v21);
    goto LABEL_18;
  }

  v9 = Mutable;
  v10 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v10)
  {
    CMTaggedBufferGroupCreateCombined_cold_1(v9, &v21);
    goto LABEL_18;
  }

  v11 = v10;
  for (i = 0; i != v7; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(taggedBufferGroups, i);
    if (*(ValueAtIndex + 2) >= 1)
    {
      v14 = ValueAtIndex;
      v15 = 0;
      v16 = (ValueAtIndex + 32);
      do
      {
        CFArrayAppendValue(v11, *(v16 - 1));
        v17 = *v16;
        v16 += 2;
        CFArrayAppendValue(v9, v17);
        ++v15;
      }

      while (v15 < *(v14 + 2));
    }
  }

  Common = taggedBufferGroup_createCommon(allocator, v9, v11, &cf);
  if (!Common)
  {
    *groupOut = cf;
    cf = 0;
  }

  CFRelease(v9);
  CFRelease(v11);
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return Common;
}

CMItemCount CMTaggedBufferGroupGetCount(CMTaggedBufferGroupRef group)
{
  if (group)
  {
    return *(group + 2);
  }

  CMTaggedBufferGroupGetCount_cold_1();
  return 0;
}

CMTagCollectionRef CMTaggedBufferGroupGetTagCollectionAtIndex(CMTaggedBufferGroupRef group, CFIndex index)
{
  if (!group)
  {
    CMTaggedBufferGroupGetTagCollectionAtIndex_cold_2();
    return 0;
  }

  if (index < 0 || *(group + 2) <= index)
  {
    CMTaggedBufferGroupGetTagCollectionAtIndex_cold_1();
    return 0;
  }

  return *(group + 2 * index + 4);
}

uint64_t FigTaggedBufferGroupGetCVPixelBufferAtIndex(uint64_t a1, uint64_t a2)
{
  TypeID = CVPixelBufferGetTypeID();

  return taggedBufferGroup_getBufferAtIndexWithTypeCheck(a1, a2, TypeID);
}

CVPixelBufferRef CMTaggedBufferGroupGetCVPixelBufferAtIndex(CMTaggedBufferGroupRef group, CFIndex index)
{
  TypeID = CVPixelBufferGetTypeID();

  return taggedBufferGroup_getBufferAtIndexWithTypeCheck(group, index, TypeID);
}

uint64_t taggedBufferGroup_getBufferAtIndexWithTypeCheck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    taggedBufferGroup_getBufferAtIndexWithTypeCheck_cold_2();
    return 0;
  }

  if (a2 < 0 || *(a1 + 16) <= a2)
  {
    taggedBufferGroup_getBufferAtIndexWithTypeCheck_cold_1();
    return 0;
  }

  v3 = a1 + 16 * a2;
  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0;
  }

  if (CFGetTypeID(*(v3 + 24)) == a3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

CVPixelBufferRef CMTaggedBufferGroupGetCVPixelBufferForTagCollection(CMTaggedBufferGroupRef group, CMTagCollectionRef tagCollection, CFIndex *indexOut)
{
  v10 = -1;
  CountAndLastIndexForMatchedTagCollection = taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection(group, tagCollection, &v10);
  v6 = v10;
  if (CountAndLastIndexForMatchedTagCollection != 1 || v10 == -1)
  {
    return 0;
  }

  TypeID = CVPixelBufferGetTypeID();
  result = taggedBufferGroup_getBufferAtIndexWithTypeCheck(group, v6, TypeID);
  if (indexOut)
  {
    if (result)
    {
      *indexOut = v10;
    }
  }

  return result;
}

uint64_t taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection(uint64_t a1, CMTagCollectionRef containedTagCollection, uint64_t *a3)
{
  if (!a1)
  {
    taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection_cold_2();
    return 0;
  }

  if (!containedTagCollection)
  {
    taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection_cold_1();
    return 0;
  }

  if (*(a1 + 16) < 1)
  {
    v6 = 0;
    v9 = -1;
    if (!a3)
    {
      return v6;
    }

LABEL_11:
    *a3 = v9;
    return v6;
  }

  v6 = 0;
  v7 = 0;
  v8 = (a1 + 32);
  v9 = -1;
  do
  {
    v10 = *v8;
    v8 += 2;
    if (CMTagCollectionContainsTagsOfCollection(v10, containedTagCollection))
    {
      v9 = v7;
      ++v6;
    }

    ++v7;
  }

  while (v7 < *(a1 + 16));
  if (a3)
  {
    goto LABEL_11;
  }

  return v6;
}

uint64_t FigTaggedBufferGroupGetCMSampleBufferAtIndex(uint64_t a1, uint64_t a2)
{
  TypeID = CMSampleBufferGetTypeID();

  return taggedBufferGroup_getBufferAtIndexWithTypeCheck(a1, a2, TypeID);
}

CMSampleBufferRef CMTaggedBufferGroupGetCMSampleBufferAtIndex(CMTaggedBufferGroupRef group, CFIndex index)
{
  TypeID = CMSampleBufferGetTypeID();

  return taggedBufferGroup_getBufferAtIndexWithTypeCheck(group, index, TypeID);
}

CMSampleBufferRef CMTaggedBufferGroupGetCMSampleBufferForTagCollection(CMTaggedBufferGroupRef group, CMTagCollectionRef tagCollection, CFIndex *indexOut)
{
  v10 = -1;
  CountAndLastIndexForMatchedTagCollection = taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection(group, tagCollection, &v10);
  v6 = v10;
  if (CountAndLastIndexForMatchedTagCollection != 1 || v10 == -1)
  {
    return 0;
  }

  TypeID = CMSampleBufferGetTypeID();
  result = taggedBufferGroup_getBufferAtIndexWithTypeCheck(group, v6, TypeID);
  if (indexOut)
  {
    if (result)
    {
      *indexOut = v10;
    }
  }

  return result;
}

void taggedBufferGroup_finalize(uint64_t a1)
{
  if (*(a1 + 16) >= 1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v4 = *(v3 - 1);
      if (v4)
      {
        CFRelease(v4);
        *(v3 - 1) = 0;
      }

      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }

      ++v2;
      v3 += 2;
    }

    while (v2 < *(a1 + 16));
  }
}

uint64_t taggedBufferGroup_equal(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = (a2 + 32);
  for (i = (a1 + 32); ; i += 2)
  {
    result = CFEqual(*(i - 1), *(v5 - 1));
    if (!result)
    {
      break;
    }

    result = CFEqual(*i, *v5);
    if (!result)
    {
      break;
    }

    ++v4;
    v5 += 2;
    if (v4 >= *(a1 + 16))
    {
      return 1;
    }
  }

  return result;
}

CFHashCode taggedBufferGroup_hash(uint64_t a1)
{
  if (*(a1 + 16) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = (a1 + 32);
  do
  {
    v5 = ((v2 << 6) + 2654435769u + (v2 >> 2) + CFHash(*(v4 - 1))) ^ v2;
    v6 = *v4;
    v4 += 2;
    v2 = (CFHash(v6) + 2654435769u + (v5 << 6) + (v5 >> 2)) ^ v5;
    ++v3;
  }

  while (v3 < *(a1 + 16));
  return v2;
}

__CFString *taggedBufferGroup_copyDesc(const void **a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  if (Mutable)
  {
    v4 = CFGetAllocator(a1);
    v5 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    if (v5)
    {
      v6 = v5;
      if (a1[2] >= 1)
      {
        v7 = 0;
        v8 = a1 + 4;
        do
        {
          CFArrayAppendValue(v6, *(v8 - 1));
          v9 = *v8;
          v8 += 2;
          CFArrayAppendValue(v6, v9);
          ++v7;
        }

        while (v7 < a1[2]);
      }

      v10 = FigCFCopyCompactDescription(v6);
      CFStringAppendFormat(Mutable, 0, @"<CMTaggedBufferGroup %p>: TaggedBuffers %@", a1, v10);
      if (v10)
      {
        CFRelease(v10);
      }

      CFRelease(v6);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"<CMTaggedBufferGroup %p>: TaggedBuffers %@", a1, 0);
    }
  }

  else
  {
    taggedBufferGroup_copyDesc_cold_1();
  }

  return Mutable;
}

uint64_t registerFigRegistryItem()
{
  result = _CFRuntimeRegisterClass();
  sFigRegistryItemID = result;
  return result;
}

uint64_t FigRegistryItemCopyDescription(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    CFRetain(v4);
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return 0;
}

uint64_t FigRegistryItemCopyMatchingInfo(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    CFRetain(v4);
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return 0;
}

uint64_t FigRegistryItemCopyBundle(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    CFRetain(*(v3 + 8));
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return 0;
}

size_t FigRegistryItemGetFactory(uint64_t a1, int a2, void *a3)
{
  result = 0;
  v7 = *(a1 + 72);
  if (a2 && !v7)
  {
    v8 = *(a1 + 24);
    FigSimpleMutexLock(*v8);
    if (!*(a1 + 72))
    {
      *(a1 + 72) = CFBundleGetFunctionPointerForName(*(v8 + 8), *(a1 + 48));
    }

    FigSimpleMutexUnlock(*v8);
    v7 = *(a1 + 72);
    if (v7)
    {
      result = 0;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6CuLL, "<<<< FigRegistry >>>>", 0x353, v3, v10, v11);
      v7 = *(a1 + 72);
    }
  }

  *a3 = v7;
  return result;
}

uint64_t registerFigRegistry()
{
  result = _CFRuntimeRegisterClass();
  sFigRegistryID = result;
  return result;
}

size_t FigRegistryCreate(const __CFAllocator *a1, const __CFString *a2, void *a3)
{
  FigThreadRunOnce(&FigRegistryGetTypeID_registerOnce, registerFigRegistry);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v8 = MEMORY[0x1E695E9F8];
    Instance[3] = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
    Instance[4] = CFArrayCreateMutable(a1, 0, 0);
    Instance[5] = CFSetCreateMutable(a1, 0, v8);
    Instance[6] = FigReentrantMutexCreate();
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Instance[7] = Mutable;
    if (Instance[3] && Instance[4] && Instance[5] && (Instance[6] ? (v10 = Mutable == 0) : (v10 = 1), !v10))
    {
      v18 = 0;
      Instance[2] = CFStringCreateCopy(a1, a2);
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x6FB, v3, v12, v13);
      if (v18)
      {
        CFRelease(Instance);
        Instance = 0;
      }
    }
  }

  else
  {
    v14 = fig_log_get_emitter("com.apple.coremedia", "");
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x6EB, v3, v15, v16);
  }

  *a3 = Instance;
  return v18;
}

size_t FigRegistryAddSearchPathWithOptions(uint64_t a1, const void *a2, int a3)
{
  FigReentrantMutexLock(*(a1 + 48));
  if (CFSetContainsValue(*(a1 + 24), a2))
  {
    v6 = 0;
  }

  else
  {
    value = 0;
    v6 = registryCacheAddPath(a2, 0, a3, &value);
    if (!v6)
    {
      CFArrayAppendValue(*(a1 + 32), value);
      CFSetAddValue(*(a1 + 24), a2);
    }
  }

  FigReentrantMutexUnlock(*(a1 + 48));
  return v6;
}

size_t registryCacheAddPath(const void *a1, int a2, int a3, CFTypeRef **a4)
{
  FigThreadRunOnce(&stru_1EAF1B650, registryCacheInitOnce);
  if (!qword_1EAF1B648)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x66A, v4, v14, v15);
    Value = 0;
    goto LABEL_22;
  }

  FigSimpleMutexLock(qword_1EAF1B648);
  Value = CFDictionaryGetValue(sRegistryCache, a1);
  if (!Value)
  {
    v17 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
    if (v17)
    {
      Value = v17;
      *(v17 + 4) = a3;
      *(v17 + 5) = 0;
      Mutable = CFDictionaryCreateMutable(qword_1EAF1B640, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *Value = Mutable;
      if (Mutable)
      {
        v19 = FigSimpleMutexCreate();
        Value[1] = v19;
        if (v19)
        {
          CFDictionaryAddValue(sRegistryCache, a1, Value);
          goto LABEL_3;
        }
      }

      v20 = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x39D, v4, v21, v22);
      if (*Value)
      {
        CFRelease(*Value);
      }

      free(Value);
    }

    else
    {
      v23 = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x39D, v4, v24, v25);
    }

    FigSimpleMutexUnlock(qword_1EAF1B648);
    Value = 0;
    result = 4294954603;
    goto LABEL_22;
  }

LABEL_3:
  FigSimpleMutexUnlock(qword_1EAF1B648);
  FigSimpleMutexLock(Value[1]);
  v10 = *(Value + 5);
  if (!a2 && v10)
  {
    goto LABEL_21;
  }

  if (v10)
  {
    CFDictionaryApplyFunction(*Value, registryCacheClearClass, 0);
  }

  BundlesFromDirectory = CFBundleCreateBundlesFromDirectory(qword_1EAF1B640, a1, @"bundle");
  if (BundlesFromDirectory)
  {
    v12 = BundlesFromDirectory;
    v29.length = CFArrayGetCount(BundlesFromDirectory);
    v29.location = 0;
    CFArrayApplyFunction(v12, v29, registryCacheProcessBundle, Value);
    CFRelease(v12);
  }

  else
  {
    v26 = fig_log_get_emitter("com.apple.coremedia", "");
    if (FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFCE6DuLL, "<<<< FigRegistry >>>>", 0x64C, v4, v27, v28))
    {
      goto LABEL_21;
    }
  }

  ++*(Value + 5);
LABEL_21:
  FigSimpleMutexUnlock(Value[1]);
  result = 0;
LABEL_22:
  if (a4)
  {
    *a4 = Value;
  }

  return result;
}

size_t FigRegistryAddItem(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  cf = 0;
  Value = CFDictionaryGetValue(theDict, @"CMClassID");
  if (Value && CFEqual(Value, *(a1 + 16)))
  {
    v8 = CFGetAllocator(a1);
    v9 = figRegistryItemCreate(v8, 0, a3, theDict, &cf);
    if (v9)
    {
      v10 = cf;
      if (!cf)
      {
        return v9;
      }
    }

    else
    {
      FigReentrantMutexLock(*(a1 + 48));
      v10 = cf;
      CFSetAddValue(*(a1 + 40), cf);
      FigReentrantMutexUnlock(*(a1 + 48));
      if (!v10)
      {
        return v9;
      }
    }

    CFRelease(v10);
    return v9;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6EuLL, "<<<< FigRegistry >>>>", 0x734, v3, v13, v14);
}

size_t figRegistryItemCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict, void *a5)
{
  if (!(a2 | a3) || (v7 = theDict) == 0)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6EuLL, "<<<< FigRegistry >>>>", 0x257, v5, v13, v14);
LABEL_6:
    *a5 = 0;
    return v15;
  }

  valuePtr = 0;
  if (CFDictionaryGetValue(theDict, @"CMClassImplementationID"))
  {
    v11 = 0;
    goto LABEL_14;
  }

  if (a2)
  {
    v16 = *(a2 + 8);
    if (v16)
    {
      v17 = CFBundleCopyBundleURL(v16);
      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy(a1, v7);
  if (!MutableCopy)
  {
    figRegistryItemCreate_cold_2(&v49);
    v15 = v49;
    goto LABEL_6;
  }

  v11 = MutableCopy;
  v19 = FigAtomicIncrement32(figRegistryItemCreate_sNextMadeUpNumber);
  v20 = CFStringCreateWithFormat(a1, 0, @"anon-%d", v19);
  if (!v20)
  {
    figRegistryItemCreate_cold_1(a5, &v49);
    v15 = v49;
    goto LABEL_34;
  }

  v21 = v20;
  CFDictionarySetValue(v11, @"CMClassImplementationID", v20);
  CFRelease(v21);
  v7 = v11;
LABEL_14:
  Value = CFDictionaryGetValue(v7, @"CMClassID");
  cf = CFDictionaryGetValue(v7, @"CMClassImplementationName");
  v45 = CFDictionaryGetValue(v7, @"CMFactoryFunction");
  v23 = CFDictionaryGetValue(v7, @"CMClassImplementationVersion");
  v24 = CFDictionaryGetValue(v7, @"CMClassImplementationID");
  v46 = CFDictionaryGetValue(v7, @"CMMatchingInfo");
  if (!Value)
  {
    goto LABEL_32;
  }

  if (!cf)
  {
    goto LABEL_32;
  }

  if (!v23)
  {
    goto LABEL_32;
  }

  if (!v46)
  {
    goto LABEL_32;
  }

  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = a5;
  v26 = CFGetTypeID(Value);
  v27 = v26 == CFStringGetTypeID();
  a5 = v25;
  if (!v27)
  {
    goto LABEL_32;
  }

  v28 = CFGetTypeID(cf);
  v27 = v28 == CFStringGetTypeID();
  a5 = v25;
  if (!v27)
  {
    goto LABEL_32;
  }

  v29 = CFGetTypeID(v23);
  v27 = v29 == CFNumberGetTypeID();
  a5 = v25;
  if (!v27)
  {
    goto LABEL_32;
  }

  v30 = CFGetTypeID(v46);
  v27 = v30 == CFDictionaryGetTypeID();
  a5 = v25;
  if (!v27)
  {
    goto LABEL_32;
  }

  v31 = CFGetTypeID(v24);
  v27 = v31 == CFStringGetTypeID();
  a5 = v25;
  if (!v27 || !CFNumberGetValue(v23, kCFNumberSInt64Type, &valuePtr))
  {
    goto LABEL_32;
  }

  if (v45)
  {
    v32 = CFGetTypeID(v45);
    if (v32 != CFStringGetTypeID())
    {
LABEL_32:
      v33 = fig_log_get_emitter("com.apple.coremedia", "");
      v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFCE6EuLL, "<<<< FigRegistry >>>>", 0x28C, v5, v34, v35);
      Instance = 0;
      goto LABEL_33;
    }
  }

  else if (!a3)
  {
    goto LABEL_32;
  }

  FigThreadRunOnce(&FigRegistryItemGetTypeID_registerOnce, registerFigRegistryItem);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[2] = CFRetain(v7);
    Instance[3] = a2;
    if (a2)
    {
      FigAtomicIncrement32((a2 + 16));
      v38 = *(a2 + 8);
      if (v38)
      {
        CFRetain(v38);
      }
    }

    Instance[4] = CFRetain(Value);
    Instance[5] = CFRetain(cf);
    v39 = v45;
    if (v45)
    {
      v39 = CFRetain(v45);
    }

    Instance[6] = v39;
    v40 = CFRetain(v46);
    v15 = 0;
    v41 = valuePtr;
    Instance[7] = v40;
    Instance[8] = v41;
    Instance[9] = a3;
  }

  else
  {
    v42 = fig_log_get_emitter("com.apple.coremedia", "");
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x2A7, v5, v43, v44);
  }

LABEL_33:
  *a5 = Instance;
  if (v11)
  {
LABEL_34:
    CFRelease(v11);
  }

  return v15;
}

uint64_t FigRegistryRemoveItem(uint64_t a1, const void *a2)
{
  FigReentrantMutexLock(*(a1 + 48));
  CFSetRemoveValue(*(a1 + 40), a2);
  FigReentrantMutexUnlock(*(a1 + 48));
  return 0;
}

uint64_t FigRegistryRescan(uint64_t a1)
{
  FigReentrantMutexLock(*(a1 + 48));
  CFSetApplyFunction(*(a1 + 24), figRegistryRescanDirectory, a1);
  FigReentrantMutexUnlock(*(a1 + 48));
  return 0;
}

size_t FigRegistryCopyFilteredItemList(CFTypeRef cf, uint64_t a2, uint64_t a3, CFMutableArrayRef *a4, _DWORD *a5)
{
  context[0] = cf;
  context[1] = a2;
  context[2] = a3;
  if (a4)
  {
    v9 = CFGetAllocator(cf);
    Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x7F0, v5, v12, v13);
      Count = 0;
      goto LABEL_15;
    }
  }

  else
  {
    Mutable = 0;
  }

  FigReentrantMutexLock(*(cf + 6));
  Count = CFSetGetCount(*(cf + 5));
  if (a4)
  {
    CFDictionaryRemoveAllValues(*(cf + 7));
  }

  v16 = CFArrayGetCount(*(cf + 4));
  if (v16 >= 1)
  {
    v17 = v16;
    for (i = 0; i != v17; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(cf + 4), i);
      FigSimpleMutexLock(ValueAtIndex[1]);
      v20 = *(ValueAtIndex + 5);
      if (a4)
      {
        Value = CFDictionaryGetValue(*ValueAtIndex, *(cf + 2));
        if (Value)
        {
          CFSetApplyFunction(Value, figRegistryAddResultItem, context);
        }
      }

      Count += v20;
      FigSimpleMutexUnlock(ValueAtIndex[1]);
    }
  }

  if (a4)
  {
    CFSetApplyFunction(*(cf + 5), figRegistryAddResultItem, context);
    CFDictionaryApplyFunction(*(cf + 7), figRegistryAddItemsToResult, Mutable);
    FigReentrantMutexUnlock(*(cf + 6));
    v14 = 0;
LABEL_15:
    *a4 = Mutable;
    Mutable = 0;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  FigReentrantMutexUnlock(*(cf + 6));
  v14 = 0;
  if (a5)
  {
LABEL_16:
    *a5 = Count;
  }

LABEL_17:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

void figRegistryAddResultItem(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (!v3 || v3(*(a2 + 16), a1))
  {
    Value = CFDictionaryGetValue(*(a1 + 16), @"CMClassImplementationID");
    v6 = CFDictionaryGetValue(v4[7], Value);
    if (v6)
    {
      v7 = v6;
      Count = CFArrayGetCount(v6);
      if (Count < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
          v11 = *(a1 + 64);
          v12 = ValueAtIndex[8];
          if (v11 > v12)
          {
            break;
          }

          if (v11 == v12)
          {
            goto LABEL_15;
          }

          if (Count == ++v9)
          {
            goto LABEL_16;
          }
        }

        CFArrayInsertValueAtIndex(v7, v9, a1);
      }

LABEL_15:
      if (v9 == Count)
      {
LABEL_16:

        CFArrayAppendValue(v7, a1);
      }
    }

    else
    {
      v13 = CFGetAllocator(v4);
      Mutable = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, a1);
      CFDictionarySetValue(v4[7], Value, Mutable);

      CFRelease(Mutable);
    }
  }
}

void figRegistryAddItemsToResult(int a1, const __CFArray *a2, CFMutableArrayRef theArray)
{
  v4.location = 0;
  v4.length = 1;
  CFArrayAppendArray(theArray, a2, v4);
}

double figRegistryItemInit(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

double figRegistryItemFinalize(void *a1)
{
  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = a1[3];
  if (v4)
  {
    if (!CFBundleIsExecutableLoaded(*(v4 + 8)) || CFGetRetainCount(*(v4 + 8)) >= 2)
    {
      CFRelease(*(v4 + 8));
    }

    if (!FigAtomicDecrement32((v4 + 16)))
    {
      FigSimpleMutexDestroy(*v4);
      free(v4);
    }
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    CFRelease(v8);
  }

  result = 0.0;
  v3[2] = 0u;
  v3[3] = 0u;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

uint64_t figRegistryItemEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), @"CMClassImplementationID");
  v5 = CFDictionaryGetValue(*(a2 + 16), @"CMClassImplementationID");
  result = CFEqual(Value, v5);
  if (result)
  {
    return CFEqual(*(a1 + 32), *(a2 + 32)) != 0;
  }

  return result;
}

CFHashCode figRegistryItemHash(uint64_t a1)
{
  v2 = CFHash(*(a1 + 32));
  v3 = CFHash(*(a1 + 40));
  v6 = *(a1 + 64);
  v7 = v6;
  if (v6 < 0)
  {
    v7 = -v6;
  }

  *v4.i64 = floor(v7 + 0.5);
  v8 = (v7 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  v11 = v10 + v8;
  v12 = fabs(v8);
  if (v8 <= 0.0)
  {
    v11 = v10;
  }

  v13 = v10 - v12;
  if (v8 >= 0.0)
  {
    v13 = v11;
  }

  return v3 ^ v2 ^ v13;
}

CFStringRef figRegistryItemCopyDebugDesc(CFTypeRef cf)
{
  v2 = *(cf + 3);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = CFBundleCopyBundleURL(*(v2 + 8));
    v5 = CFGetAllocator(cf);
    if (CFBundleIsExecutableLoaded(v3))
    {
      v6 = @" (loaded)";
    }

    else
    {
      v6 = &stru_1F0B78830;
    }

    if (v4)
    {
      v7 = CFURLGetString(v4);
      v8 = 0;
    }

    else
    {
      v7 = @"none";
      v8 = 1;
    }
  }

  else
  {
    v5 = CFGetAllocator(cf);
    v3 = 0;
    v4 = 0;
    v7 = @"none";
    v8 = 1;
    v6 = &stru_1F0B78830;
  }

  v9 = *(cf + 4);
  Value = CFDictionaryGetValue(*(cf + 2), @"CMClassImplementationID");
  v11 = *(cf + 6);
  if (!v11)
  {
    v11 = &stru_1F0B78830;
  }

  v12 = CFStringCreateWithFormat(v5, 0, @"<FigRegistryItem %p> {\n\tBundle: %p%@\n\tBundle URL: %@\n\tClass ID: %@\n\tClass Implementation ID: %@\n\tObject name: %@\n\tVersion: %lld\n\tFactory function name: %@\n\tFactory function: %p\n}", cf, v3, v6, v7, v9, Value, *(cf + 5), *(cf + 8), v11, *(cf + 9));
  if ((v8 & 1) == 0)
  {
    CFRelease(v4);
  }

  return v12;
}

double figRegistryInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

double figRegistryFinalize(void *a1)
{
  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    FigReentrantMutexDestroy(v8);
  }

  result = 0.0;
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  return result;
}

size_t registryCacheInitOnce()
{
  sRegistryCache = CFDictionaryCreateMutable(qword_1EAF1B640, 0, MEMORY[0x1E695E9D8], 0);
  if (sRegistryCache)
  {
    qword_1EAF1B648 = FigSimpleMutexCreate();
    if (qword_1EAF1B648)
    {
      return 0;
    }

    v2 = 881;
  }

  else
  {
    v2 = 876;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v1 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", v2, v0, v4, v5);
  if (v1 && sRegistryCache)
  {
    CFRelease(sRegistryCache);
    sRegistryCache = 0;
  }

  return v1;
}

void registryCacheProcessBundle(__CFBundle *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(a1, @"CMClassImplementations");
  if (ValueForInfoDictionaryKey)
  {
    v7 = ValueForInfoDictionaryKey;
    v8 = CFGetTypeID(ValueForInfoDictionaryKey);
    if (v8 == CFArrayGetTypeID())
    {
      v33 = a2;
      Count = CFArrayGetCount(v7);
      v10 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200404B2C534EuLL);
      *(v10 + 1) = a1;
      v10[20] = v5 & 1;
      *(v10 + 4) = 1;
      v32 = (v10 + 16);
      v35 = v10;
      *v10 = FigSimpleMutexCreate();
      if (Count >= 1)
      {
        v11 = 0;
        v34 = *MEMORY[0x1E695E4D0];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
          v13 = CFGetTypeID(ValueAtIndex);
          if (v13 == CFDictionaryGetTypeID())
          {
            break;
          }

LABEL_33:
          if (Count == ++v11)
          {
            goto LABEL_39;
          }
        }

        if ((((v5 >> 2) | (v5 >> 1) | (v5 >> 3)) & 1) == 0 || (Value = CFDictionaryGetValue(ValueAtIndex, @"CMMatchingInfo")) == 0 || (v15 = Value, v16 = CFGetTypeID(Value), v16 != CFDictionaryGetTypeID()))
        {
          MutableCopy = 0;
          goto LABEL_17;
        }

        v17 = CFGetAllocator(ValueAtIndex);
        MutableCopy = FigCFDictionaryCreateMutableCopy(v17, ValueAtIndex);
        v19 = CFGetAllocator(v15);
        v20 = FigCFDictionaryCreateMutableCopy(v19, v15);
        v21 = v20;
        if ((v5 & 2) != 0)
        {
          FigCFDictionarySetValue(v20, @"IsProWorkflowPlugin", v34);
          if ((v5 & 4) == 0)
          {
LABEL_11:
            if ((v5 & 8) == 0)
            {
LABEL_13:
              FigCFDictionarySetValue(MutableCopy, @"CMMatchingInfo", v21);
              if (v21)
              {
                CFRelease(v21);
              }

              ValueAtIndex = MutableCopy;
LABEL_17:
              cf = 0;
              v22 = CFDictionaryGetValue(ValueAtIndex, @"CMExecutableArchitectures");
              if (!v22 || (v23 = v22, v24 = CFGetTypeID(v22), v24 != CFArrayGetTypeID()) || !FigCFArrayContainsValue(v23, @"arm64e") && (!CFEqual(@"arm64e", @"arm64e") || !FigCFArrayContainsValue(v23, @"arm64")))
              {
LABEL_31:
                if (MutableCopy)
                {
                  CFRelease(MutableCopy);
                }

                goto LABEL_33;
              }

              v25 = figRegistryItemCreate(qword_1EAF1B640, v35, 0, ValueAtIndex, &cf);
              v26 = cf;
              if (v25)
              {
                if (!cf)
                {
                  goto LABEL_31;
                }
              }

              else
              {
                v27 = CFDictionaryGetValue(*v33, *(cf + 4));
                if (!v27)
                {
                  Mutable = CFSetCreateMutable(qword_1EAF1B640, 0, MEMORY[0x1E695E9F8]);
                  if (!Mutable)
                  {
                    emitter = fig_log_get_emitter("com.apple.coremedia", "");
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x562, v2, v30, v31);
                    goto LABEL_30;
                  }

                  v27 = Mutable;
                  CFDictionaryAddValue(*v33, v26[4], Mutable);
                  CFRelease(v27);
                }

                CFSetAddValue(v27, v26);
              }

LABEL_30:
              CFRelease(v26);
              goto LABEL_31;
            }

LABEL_12:
            FigCFDictionarySetValue(v21, @"IsPreferredInternalPlugin", v34);
            goto LABEL_13;
          }
        }

        else if ((v5 & 4) == 0)
        {
          goto LABEL_11;
        }

        FigCFDictionarySetValue(v21, @"IsAppExclusivePlugin", v34);
        if ((v5 & 8) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

LABEL_39:
      if (!FigAtomicDecrement32(v32))
      {
        FigSimpleMutexDestroy(*v35);
        free(v35);
      }
    }
  }

  CFRelease(a1);
}

uint64_t FigEndpointGetClassID()
{
  if (_MergedGlobals_46 != -1)
  {
    FigEndpointGetClassID_cold_1();
  }

  return qword_1ED4CCC80;
}

size_t FigEndpointGetClassIDCallback(void *a1)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&FigEndpointGetClassIDCallback_sFigEndpointClassDesc, ClassID, 1, a1, v3, v4, v5, v6);
}

uint64_t FigEndpointGetTypeID()
{
  if (_MergedGlobals_46 != -1)
  {
    FigEndpointGetClassID_cold_1();
  }

  v1 = qword_1ED4CCC80;

  return CMBaseClassGetCFTypeID(v1);
}

uint64_t registerFigHALAudioConduitDevice()
{
  result = _CFRuntimeRegisterClass();
  sFigHALAudioConduitDeviceID = result;
  return result;
}

uint64_t FigHALAudioConduitDeviceSuspendAndInvalidate(uint64_t a1)
{
  FigSimpleMutexLock(*(a1 + 168));
  if (*(a1 + 129))
  {
    v3 = 0;
LABEL_7:
    FigSimpleMutexUnlock(*(a1 + 168));
    return v3;
  }

  *(a1 + 129) = 1;
  if (*(a1 + 128) != 1)
  {
    v3 = 4294954514;
    goto LABEL_7;
  }

  *(a1 + 128) = 0;
  FigSimpleMutexUnlock(*(a1 + 168));
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification(DefaultLocalCenter, @"Suspended", a1, 0);
  return 0;
}

uint64_t figHALAudioConduitDeviceCallControlIODelegate(uint64_t a1, int a2, uint64_t a3)
{
  FigSimpleMutexLock(*(a1 + 168));
  if (*(a1 + 128) && !*(a1 + 129))
  {
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        v6 = *(a1 + 112);
        if (!v6)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v6 = *(a1 + 104);
      if (v6)
      {
LABEL_13:
        v6(*(a1 + 120), a3);
      }
    }

    else
    {
      if (a2 == 1)
      {
        v6 = *(a1 + 88);
        if (!v6)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v6 = *(a1 + 96);
      if (v6)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  v7 = *(a1 + 168);

  return FigSimpleMutexUnlock(v7);
}

double FigHALAudioConduitDeviceInit(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FigHALAudioConduitDeviceFinalize(uint64_t a1)
{
  FigSimpleMutexDestroy(*(a1 + 80));
  FigSimpleMutexDestroy(*(a1 + 168));
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 152);
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *FigHALAudioConduitDeviceCopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v1, 0);
  CFStringAppendFormat(Mutable, 0, @"FigHALAudioConduitDevice");
  return Mutable;
}

uint64_t FigGeometryMappingGetTypeID()
{
  if (sRegisterFigGeometryMappingTypeOnce != -1)
  {
    FigGeometryMappingGetTypeID_cold_1();
  }

  return sFigGeometryMappingID;
}

uint64_t RegisterFigGeometryMappingType()
{
  result = _CFRuntimeRegisterClass();
  sFigGeometryMappingID = result;
  return result;
}

uint64_t FigGeometryMappingGetSourceUnits(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      v6 = *(a1 + 72);
      *a2 = *(a1 + 56);
      a2[1] = v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = v2;
    v9 = v3;
    FigGeometryMappingGetSourceUnits_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigGeometryMappingGetDestinationUnits(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      v6 = *(a1 + 104);
      *a2 = *(a1 + 88);
      a2[1] = v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = v2;
    v9 = v3;
    FigGeometryMappingGetDestinationUnits_cold_1(&v7);
    return v7;
  }

  return result;
}

size_t FigGeometryMappingCreate(uint64_t a1, const void *a2, int a3, const void *a4, int a5, uint64_t *a6)
{
  v75 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    FigGeometryMappingCreate_cold_7(__src);
    return LODWORD(__src[0]);
  }

  if (!a4)
  {
    FigGeometryMappingCreate_cold_6(__src);
    return LODWORD(__src[0]);
  }

  if ((a3 - 3) <= 0xFFFFFFFD)
  {
    FigGeometryMappingCreate_cold_5(__src);
    return LODWORD(__src[0]);
  }

  if ((a5 - 3) <= 0xFFFFFFFD)
  {
    FigGeometryMappingCreate_cold_4(__src);
    return LODWORD(__src[0]);
  }

  if (!a6)
  {
    FigGeometryMappingCreate_cold_3(__src);
    return LODWORD(__src[0]);
  }

  *a6 = 0;
  if (sRegisterFigGeometryMappingTypeOnce != -1)
  {
    FigGeometryMappingGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBC4DuLL, "<<<< FigGeometryMapping >>>>", 0x54E, v6, v14, v15);
  }

  v17 = Instance;
  memset(__src, 0, sizeof(__src));
  *(Instance + 16) = 0x16D617070;
  *(Instance + 128) = CFRetain(a2);
  *(v17 + 136) = CFRetain(a4);
  *(v17 + 120) = 0;
  *(v17 + 24) = kFigGeometryAffineTransform1DIdentity;
  *(v17 + 40) = kFigGeometryAffineTransform1DIdentity;
  *(v17 + 56) = kFigGeometrySizeZero;
  *(v17 + 72) = unk_1971652B8;
  *(v17 + 88) = kFigGeometrySizeZero;
  *(v17 + 104) = unk_1971652B8;
  if (!_figUpdateCoordinateSpaceGeometryCache(a2, __src))
  {
    v48 = 1377;
LABEL_32:
    FigGeometryMappingCreate_cold_2(v48, v17, &v55);
    return v55;
  }

  memset(v62, 0, sizeof(v62));
  if (!_figUpdateCoordinateSpaceGeometryCache(a4, v62))
  {
    v48 = 1379;
    goto LABEL_32;
  }

  memcpy((v17 + 144), __src, 0x160uLL);
  memcpy((v17 + 496), v62, 0x160uLL);
  *(v17 + 848) = a3;
  *(v17 + 852) = a5;
  if (a3 == 1)
  {
    v72 = __src[12];
    v73 = __src[13];
    v74 = *&__src[14];
    v70 = *(&__src[14] + 12);
    v18 = DWORD2(__src[14]);
    v71 = DWORD1(__src[15]);
    v53 = *(&__src[15] + 1);
    if (a5 == 1)
    {
      v64 = v62[16];
      v65 = v62[17];
      v19 = v62[18];
      v20 = v62[19];
    }

    else
    {
      v64 = v62[0];
      v65 = v62[1];
      v19 = v62[2];
      v20 = v62[3];
    }

    v66 = v19;
    v67 = v20;
    _figApplyNormalizedCGRectToFigGeometryRect(&v64, &v55, *&__src[20], *(&__src[20] + 1), *&__src[21], *(&__src[21] + 1));
    v64 = v55;
    v65 = v56;
    *&v66 = v57;
    v22 = v58;
    v68 = v59;
    v69 = v60;
    v52 = v61;
    v21 = v53;
  }

  else
  {
    if (a5 == 1)
    {
      v64 = __src[16];
      v65 = __src[17];
      v66 = __src[18];
      v67 = __src[19];
      _figApplyNormalizedCGRectToFigGeometryRect(&v64, &v55, *&v62[20], *(&v62[20] + 1), *&v62[21], *(&v62[21] + 1));
      v72 = v55;
      v73 = v56;
      v74 = v57;
      v18 = v58;
      v70 = v59;
      v71 = v60;
      v21 = v61;
      v64 = v62[12];
      v65 = v62[13];
      *&v66 = *&v62[14];
      v22 = DWORD2(v62[14]);
      v69 = DWORD1(v62[15]);
      v68 = *(&v62[14] + 12);
      v23 = *(&v62[15] + 1);
    }

    else
    {
      v72 = __src[0];
      v73 = __src[1];
      v74 = *&__src[2];
      v70 = *(&__src[2] + 12);
      v18 = DWORD2(__src[2]);
      v71 = DWORD1(__src[3]);
      v21 = *(&__src[3] + 1);
      *&v66 = *&v62[2];
      v64 = v62[0];
      v65 = v62[1];
      v22 = DWORD2(v62[2]);
      v69 = DWORD1(v62[3]);
      v68 = *(&v62[2] + 12);
      v23 = *(&v62[3] + 1);
    }

    v52 = v23;
  }

  v54 = v21;
  v55 = v72;
  v56 = v73;
  v57 = v74;
  v58 = v18;
  v59 = v70;
  v60 = v71;
  v61 = v21;
  v24 = FigGeometryRectGetCGRect(&v55);
  v26 = v25;
  v50 = v25;
  v28 = v27;
  v30 = v29;
  v55 = v64;
  v56 = v65;
  v57 = v66;
  v58 = v22;
  v59 = v68;
  v60 = v69;
  v61 = v52;
  v51 = FigGeometryRectGetCGRect(&v55);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v77.origin.x = v24;
  v77.origin.y = v26;
  v49 = v28;
  v77.size.width = v28;
  v77.size.height = v30;
  MinX = CGRectGetMinX(v77);
  v78.origin.x = v24;
  v78.origin.y = v26;
  v78.size.width = v28;
  v38 = v30;
  v78.size.height = v30;
  MaxX = CGRectGetMaxX(v78);
  v79.origin.x = v51;
  v79.origin.y = v32;
  v79.size.width = v34;
  v79.size.height = v36;
  v40 = CGRectGetMinX(v79);
  v80.origin.x = v51;
  v80.origin.y = v32;
  v80.size.width = v34;
  v80.size.height = v36;
  v41 = (CGRectGetMaxX(v80) - v40) / (MaxX - MinX);
  *(v17 + 24) = v41;
  *(v17 + 32) = v40 - MinX * v41;
  v81.origin.x = v24;
  v81.origin.y = v50;
  v81.size.width = v49;
  v81.size.height = v38;
  v42 = v38;
  MinY = CGRectGetMinY(v81);
  v82.origin.x = v24;
  v82.origin.y = v50;
  v82.size.width = v49;
  v82.size.height = v42;
  MaxY = CGRectGetMaxY(v82);
  v83.origin.x = v51;
  v83.origin.y = v32;
  v83.size.width = v34;
  v83.size.height = v36;
  v45 = CGRectGetMinY(v83);
  v84.origin.x = v51;
  v84.origin.y = v32;
  v84.size.width = v34;
  v84.size.height = v36;
  v46 = CGRectGetMaxY(v84);
  result = 0;
  v47 = (v46 - v45) / (MaxY - MinY);
  *(v17 + 40) = v47;
  *(v17 + 48) = v45 - MinY * v47;
  *(v17 + 64) = v18;
  *(v17 + 80) = v54;
  *(v17 + 96) = v22;
  *(v17 + 112) = v52;
  *a6 = v17;
  return result;
}