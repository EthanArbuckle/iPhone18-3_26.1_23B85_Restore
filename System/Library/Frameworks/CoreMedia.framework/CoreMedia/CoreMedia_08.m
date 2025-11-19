const __CFDictionary *figBridge_GetMPEG4VideoCodecTypeAndCopyDecoderSpecificInfo(const __CFDictionary *result, int *a2, __CFDictionary **a3)
{
  if (result)
  {
    v19 = 0;
    Value = CFDictionaryGetValue(result, @"SampleDescriptionExtensionAtoms");
    if (!Value)
    {
      return 0;
    }

    v7 = Value;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(v7))
    {
      return 0;
    }

    v9 = CFDictionaryGetValue(v7, @"esds");
    if (!v9)
    {
      return 0;
    }

    ValueAtIndex = v9;
    v11 = CFArrayGetTypeID();
    if (v11 == CFGetTypeID(ValueAtIndex))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      if (!ValueAtIndex)
      {
        return 0;
      }
    }

    v12 = CFDataGetTypeID();
    if (v12 != CFGetTypeID(ValueAtIndex))
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    Length = CFDataGetLength(ValueAtIndex);
    if (FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo(BytePtr, Length, &v19, 0, a3))
    {
      return 0;
    }

    v15 = 1836069238;
    if (v19 > 0x64u)
    {
      if (v19 != 101)
      {
        if (v19 == 106)
        {
          goto LABEL_18;
        }

        if (v19 == 108)
        {
          v15 = 1785750887;
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    else if (v19 - 96 >= 2)
    {
      if (v19 == 32)
      {
        v15 = 1836070006;
LABEL_18:
        *a2 = v15;
        return 0;
      }

LABEL_21:
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0xAEB, v3, v17, v18);
    }

    v15 = 1836069494;
    goto LABEL_18;
  }

  return result;
}

void figbridge_ConsumeMP4BridgeDecoderSpecificInfo(const void *a1, const __CFNumber *a2, uint64_t a3)
{
  if (CFEqual(a1, @"VideoWidth"))
  {
    SInt32 = FigCFNumberGetSInt32(a2);
    if (SInt32 >= 1)
    {
      *(a3 + 16) = SInt32;
    }
  }

  else if (CFEqual(a1, @"VideoHeight"))
  {
    v7 = FigCFNumberGetSInt32(a2);
    if (v7 >= 1)
    {
      *(a3 + 20) = v7;
    }
  }

  else if (!CFDictionaryContainsKey(*a3, a1))
  {
    MutableCopy = *(a3 + 8);
    if (MutableCopy || (MutableCopy = FigCFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], *a3), (*(a3 + 8) = MutableCopy) != 0))
    {

      CFDictionaryAddValue(MutableCopy, a1, a2);
    }
  }
}

const __CFDictionary *figBridge_GetConciseProtectedCodecType(const __CFDictionary *result)
{
  if (!result)
  {
    return result;
  }

  result = CFDictionaryGetValue(result, @"SampleDescriptionExtensionAtoms");
  if (!result)
  {
    return result;
  }

  result = CFDictionaryGetValue(result, @"sinf");
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = CFGetTypeID(result);
  if (v2 != CFArrayGetTypeID())
  {
    v8 = CFGetTypeID(v1);
    if (v8 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v1);
      Length = CFDataGetLength(v1);

      return figBridge_GetConciseProtectedCodecTypeFromSinfData(BytePtr, Length);
    }

    return 0;
  }

  if (CFArrayGetCount(v1) < 1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v3);
    v5 = CFGetTypeID(ValueAtIndex);
    if (v5 == CFDataGetTypeID())
    {
      v6 = CFDataGetBytePtr(ValueAtIndex);
      v7 = CFDataGetLength(ValueAtIndex);
      result = figBridge_GetConciseProtectedCodecTypeFromSinfData(v6, v7);
      if (result)
      {
        break;
      }
    }

    if (CFArrayGetCount(v1) <= ++v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigVideoCodecTypeIsH264Flavor(int a1)
{
  result = 1;
  if (a1 <= 1700886114)
  {
    if (a1 > 1667331682)
    {
      if (a1 == 1667331683)
      {
        return result;
      }

      v3 = 1685220713;
    }

    else
    {
      if (a1 == 1635148593)
      {
        return result;
      }

      v3 = 1635148595;
    }

    goto LABEL_13;
  }

  if (a1 <= 1902212706)
  {
    if (a1 == 1700886115)
    {
      return result;
    }

    v3 = 1718908515;
    goto LABEL_13;
  }

  if (a1 != 1902212707 && a1 != 1902212709)
  {
    v3 = 2053207651;
LABEL_13:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(int a1)
{
  result = 1;
  if (a1 <= 1752589104)
  {
    if (a1 > 1685481572)
    {
      if (a1 > 1718908527)
      {
        if (a1 == 1718908528)
        {
          return result;
        }

        v3 = 1751479857;
      }

      else
      {
        if (a1 == 1685481573)
        {
          return result;
        }

        v3 = 1718908520;
      }
    }

    else if (a1 > 1684895095)
    {
      if (a1 == 1684895096)
      {
        return result;
      }

      v3 = 1685481521;
    }

    else
    {
      if (a1 == 1667524657)
      {
        return result;
      }

      v3 = 1667790435;
    }

    goto LABEL_26;
  }

  if (a1 <= 1902405732)
  {
    if (a1 <= 1869117026)
    {
      if (a1 == 1752589105)
      {
        return result;
      }

      v3 = 1836415073;
      goto LABEL_26;
    }

    if (a1 == 1869117027)
    {
      return result;
    }

    v4 = 26673;
    goto LABEL_25;
  }

  if (a1 <= 1902667125)
  {
    if (a1 == 1902405733)
    {
      return result;
    }

    v4 = 28024;
LABEL_25:
    v3 = v4 | 0x71640000;
LABEL_26:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 != 1902667126 && a1 != 1902671459)
  {
    v3 = 1902998904;
    goto LABEL_26;
  }

  return result;
}

size_t FigBridge_MakeFallbackExtensionsFromVUI(const __CFAllocator *a1, int a2, uint64_t a3, const __CFDictionary **a4)
{
  v130 = *MEMORY[0x1E69E9840];
  v5 = *a4;
  v126 = 0;
  memset(v129, 0, sizeof(v129));
  memset(v128, 0, sizeof(v128));
  if (!v5)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v5, @"SampleDescriptionExtensionAtoms");
  if (!Value)
  {
    return 0;
  }

  v11 = Value;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v11))
  {
    return 0;
  }

  v13 = @"avcC";
  if (a2 <= 1751479856)
  {
    if (a2 > 1684895095)
    {
      if (a2 > 1700886114)
      {
        if (a2 <= 1718908519)
        {
          if (a2 == 1700886115)
          {
            goto LABEL_46;
          }

          v14 = 1718908515;
          goto LABEL_67;
        }

        if (a2 == 1718908520)
        {
          goto LABEL_45;
        }

        v16 = 1718908528;
      }

      else
      {
        if (a2 <= 1685481520)
        {
          if (a2 != 1684895096)
          {
            v14 = 1685220713;
            goto LABEL_67;
          }

LABEL_45:
          v13 = @"hvcC";
          goto LABEL_46;
        }

        if (a2 == 1685481521)
        {
          goto LABEL_45;
        }

        v16 = 1685481573;
      }

      goto LABEL_44;
    }

    if (a2 <= 1667331682)
    {
      if (a2 != 1635135537)
      {
        if (a2 == 1635148593)
        {
          goto LABEL_46;
        }

        v14 = 1635148595;
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    if (a2 <= 1667790434)
    {
      if (a2 == 1667331683)
      {
        goto LABEL_46;
      }

      v16 = 1667524657;
      goto LABEL_44;
    }

    if (a2 == 1667790435)
    {
      goto LABEL_45;
    }

    v17 = 1684108849;
LABEL_63:
    if (a2 != v17)
    {
      goto LABEL_68;
    }

LABEL_64:
    v13 = @"av1C";
    goto LABEL_46;
  }

  if (a2 > 1902403957)
  {
    if (a2 > 1902667125)
    {
      if (a2 > 1902998903)
      {
        if (a2 == 2053207651)
        {
          goto LABEL_46;
        }

        v16 = 1902998904;
      }

      else
      {
        if (a2 == 1902667126)
        {
          goto LABEL_45;
        }

        v16 = 1902671459;
      }

      goto LABEL_44;
    }

    if (a2 > 1902405732)
    {
      if (a2 == 1902405733)
      {
        goto LABEL_45;
      }

      v15 = 28024;
    }

    else
    {
      if (a2 == 1902403958)
      {
        goto LABEL_64;
      }

      v15 = 26673;
    }

    v16 = v15 | 0x71640000;
    goto LABEL_44;
  }

  if (a2 <= 1869117026)
  {
    if (a2 == 1751479857 || a2 == 1752589105)
    {
      goto LABEL_45;
    }

    v16 = 1836415073;
LABEL_44:
    if (a2 == v16)
    {
      goto LABEL_45;
    }

LABEL_68:
    FigBridge_MakeFallbackExtensionsFromVUI_cold_9();
    return 0;
  }

  if (a2 <= 1902212706)
  {
    if (a2 == 1869117027)
    {
      goto LABEL_45;
    }

    v17 = 1902212657;
    goto LABEL_63;
  }

  if (a2 == 1902212707)
  {
    goto LABEL_46;
  }

  v14 = 1902212709;
LABEL_67:
  if (a2 != v14)
  {
    goto LABEL_68;
  }

LABEL_46:
  v18 = CFDictionaryGetValue(v11, v13);
  if (!v18)
  {
    return 0;
  }

  ValueAtIndex = v18;
  v20 = CFArrayGetTypeID();
  if (v20 == CFGetTypeID(ValueAtIndex))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    if (!ValueAtIndex)
    {
      return 0;
    }
  }

  v21 = CFDataGetTypeID();
  if (v21 != CFGetTypeID(ValueAtIndex))
  {
    return 0;
  }

  v124 = 0;
  v125 = 0;
  if (a2 > 1751479856)
  {
    if (a2 <= 1902403957)
    {
      if (a2 <= 1869117026)
      {
        if (a2 == 1751479857 || a2 == 1752589105)
        {
          goto LABEL_97;
        }

        v24 = 1836415073;
        goto LABEL_96;
      }

      if (a2 <= 1902212706)
      {
        if (a2 == 1869117027)
        {
          goto LABEL_97;
        }

        v25 = 1902212657;
LABEL_102:
        if (a2 != v25)
        {
          goto LABEL_111;
        }

LABEL_103:
        HEVCParameterSetAtIndex = FigAV1Bridge_Getav1CStartAndLength(ValueAtIndex, &v125, &v124);
        goto LABEL_108;
      }

      if (a2 == 1902212707)
      {
        goto LABEL_107;
      }

      v22 = 1902212709;
    }

    else
    {
      if (a2 <= 1902667125)
      {
        if (a2 > 1902405732)
        {
          if (a2 == 1902405733)
          {
            goto LABEL_97;
          }

          v23 = 28024;
        }

        else
        {
          if (a2 == 1902403958)
          {
            goto LABEL_103;
          }

          v23 = 26673;
        }

        v24 = v23 | 0x71640000;
        goto LABEL_96;
      }

      if (a2 <= 1902998903)
      {
        if (a2 == 1902667126)
        {
          goto LABEL_97;
        }

        v24 = 1902671459;
        goto LABEL_96;
      }

      if (a2 == 1902998904)
      {
        goto LABEL_97;
      }

      v22 = 2053207651;
    }

LABEL_106:
    if (a2 == v22)
    {
      goto LABEL_107;
    }

LABEL_111:
    FigBridge_MakeFallbackExtensionsFromVUI_cold_1();
    goto LABEL_112;
  }

  if (a2 <= 1684895095)
  {
    if (a2 > 1667331682)
    {
      if (a2 <= 1667790434)
      {
        if (a2 != 1667331683)
        {
          v24 = 1667524657;
          goto LABEL_96;
        }

        goto LABEL_107;
      }

      if (a2 == 1667790435)
      {
        goto LABEL_97;
      }

      v25 = 1684108849;
      goto LABEL_102;
    }

    if (a2 == 1635135537)
    {
      goto LABEL_103;
    }

    if (a2 == 1635148593)
    {
      goto LABEL_107;
    }

    v22 = 1635148595;
    goto LABEL_106;
  }

  if (a2 <= 1700886114)
  {
    if (a2 <= 1685481520)
    {
      if (a2 != 1684895096)
      {
        v22 = 1685220713;
        goto LABEL_106;
      }

LABEL_97:
      HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex(ValueAtIndex, 33, 0, &v125, &v124, 0, 0);
      goto LABEL_108;
    }

    if (a2 == 1685481521)
    {
      goto LABEL_97;
    }

    v24 = 1685481573;
LABEL_96:
    if (a2 != v24)
    {
      goto LABEL_111;
    }

    goto LABEL_97;
  }

  if (a2 > 1718908519)
  {
    if (a2 == 1718908520)
    {
      goto LABEL_97;
    }

    v24 = 1718908528;
    goto LABEL_96;
  }

  if (a2 != 1700886115)
  {
    v22 = 1718908515;
    goto LABEL_106;
  }

LABEL_107:
  BytePtr = CFDataGetBytePtr(ValueAtIndex);
  Length = CFDataGetLength(ValueAtIndex);
  HEVCParameterSetAtIndex = FigH264Bridge_GetSPSFromAVCC(BytePtr, Length, 0, &v125, &v124);
LABEL_108:
  if (HEVCParameterSetAtIndex)
  {
    return 0;
  }

LABEL_112:
  v31 = *MEMORY[0x1E6965D00];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x1E6965D00]))
  {
    v33 = 0;
    goto LABEL_114;
  }

  colorPrimariesCodePoint[0] = 0;
  transferFunctionCodePoint[1] = 0;
  if (a2 <= 1751479856)
  {
    if (a2 > 1684895095)
    {
      if (a2 <= 1700886114)
      {
        if (a2 <= 1685481520)
        {
          if (a2 != 1684895096)
          {
            v36 = 1685220713;
            goto LABEL_281;
          }

          goto LABEL_194;
        }

        if (a2 != 1685481521)
        {
          v40 = 1685481573;
          goto LABEL_193;
        }

LABEL_194:
        if (FigHEVCBridge_GetSPS_VUI_ChromaLocation(v125, v124, colorPrimariesCodePoint, &transferFunctionCodePoint[1]))
        {
LABEL_284:
          transferFunctionCodePoint[1] = 0;
          colorPrimariesCodePoint[0] = 0;
          goto LABEL_285;
        }

        goto LABEL_285;
      }

      if (a2 <= 1718908519)
      {
        if (a2 != 1700886115)
        {
          v36 = 1718908515;
          goto LABEL_281;
        }

LABEL_282:
        SPS_VUI_ChromaLocation = FigH264Bridge_GetSPS_VUI_ChromaLocation(v125, v124, colorPrimariesCodePoint, &transferFunctionCodePoint[1], v32);
LABEL_283:
        if (!SPS_VUI_ChromaLocation)
        {
          goto LABEL_285;
        }

        goto LABEL_284;
      }

      if (a2 == 1718908520)
      {
        goto LABEL_194;
      }

      v40 = 1718908528;
LABEL_193:
      if (a2 == v40)
      {
        goto LABEL_194;
      }

LABEL_551:
      FigBridge_MakeFallbackExtensionsFromVUI_cold_2();
      goto LABEL_285;
    }

    if (a2 > 1667331682)
    {
      if (a2 <= 1667790434)
      {
        if (a2 != 1667331683)
        {
          v40 = 1667524657;
          goto LABEL_193;
        }

        goto LABEL_282;
      }

      if (a2 == 1667790435)
      {
        goto LABEL_194;
      }

      v42 = 1684108849;
      goto LABEL_206;
    }

    if (a2 == 1635135537)
    {
      goto LABEL_207;
    }

    if (a2 == 1635148593)
    {
      goto LABEL_282;
    }

    v36 = 1635148595;
LABEL_281:
    if (a2 == v36)
    {
      goto LABEL_282;
    }

    goto LABEL_551;
  }

  if (a2 > 1902403957)
  {
    if (a2 <= 1902667125)
    {
      if (a2 > 1902405732)
      {
        if (a2 == 1902405733)
        {
          goto LABEL_194;
        }

        v38 = 28024;
      }

      else
      {
        if (a2 == 1902403958)
        {
          goto LABEL_207;
        }

        v38 = 26673;
      }

      v40 = v38 | 0x71640000;
      goto LABEL_193;
    }

    if (a2 <= 1902998903)
    {
      if (a2 == 1902667126)
      {
        goto LABEL_194;
      }

      v40 = 1902671459;
      goto LABEL_193;
    }

    if (a2 == 1902998904)
    {
      goto LABEL_194;
    }

    v36 = 2053207651;
    goto LABEL_281;
  }

  if (a2 <= 1869117026)
  {
    if (a2 != 1751479857 && a2 != 1752589105)
    {
      v40 = 1836415073;
      goto LABEL_193;
    }

    goto LABEL_194;
  }

  if (a2 > 1902212706)
  {
    if (a2 == 1902212707)
    {
      goto LABEL_282;
    }

    v36 = 1902212709;
    goto LABEL_281;
  }

  if (a2 == 1869117027)
  {
    goto LABEL_194;
  }

  v42 = 1902212657;
LABEL_206:
  if (a2 != v42)
  {
    goto LABEL_551;
  }

LABEL_207:
  LOBYTE(transferFunctionCodePoint[0]) = 0;
  v127 = 0;
  SPS_VUI_ChromaLocation = FigAV1Bridge_GetChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord(v125, v124, &v127, transferFunctionCodePoint, 0);
  if (SPS_VUI_ChromaLocation)
  {
    goto LABEL_283;
  }

  if (LOBYTE(transferFunctionCodePoint[0]) == 2)
  {
    v46 = 3;
  }

  else if (LOBYTE(transferFunctionCodePoint[0]))
  {
    v46 = 0;
  }

  else
  {
    if (v127 == 100)
    {
      v45 = 3;
    }

    else
    {
      v45 = 0;
    }

    if (v127)
    {
      v46 = v45;
    }

    else
    {
      v46 = 1;
    }
  }

  colorPrimariesCodePoint[0] = v46;
  transferFunctionCodePoint[1] = v46;
LABEL_285:
  if (a2 <= 1700886114)
  {
    if (a2 > 1667331682)
    {
      if (a2 == 1667331683)
      {
        goto LABEL_298;
      }

      v66 = 1685220713;
    }

    else
    {
      if (a2 == 1635148593)
      {
        goto LABEL_298;
      }

      v66 = 1635148595;
    }
  }

  else if (a2 <= 1902212706)
  {
    if (a2 == 1700886115)
    {
      goto LABEL_298;
    }

    v66 = 1718908515;
  }

  else
  {
    if (a2 == 1902212707 || a2 == 1902212709)
    {
      goto LABEL_298;
    }

    v66 = 2053207651;
  }

  if (a2 != v66)
  {
    v67 = colorPrimariesCodePoint[0];
    goto LABEL_301;
  }

LABEL_298:
  v67 = colorPrimariesCodePoint[0];
  if (colorPrimariesCodePoint[0] == 2 && transferFunctionCodePoint[1] == 2)
  {
    v67 = 1;
    transferFunctionCodePoint[1] = 1;
    colorPrimariesCodePoint[0] = 1;
  }

LABEL_301:
  v68 = figConvertChromaLocationIndexToString(v67);
  if (v68)
  {
    *&v128[0] = CFRetain(v68);
    if (*&v128[0])
    {
      v69 = v128 + 1;
      v70 = v129 + 1;
      *&v129[0] = v31;
      v33 = 1;
      goto LABEL_307;
    }

    v33 = 0;
  }

  else
  {
    v33 = 0;
    *&v128[0] = 0;
  }

  v70 = v129;
  v69 = v128;
LABEL_307:
  v71 = figConvertChromaLocationIndexToString(LOBYTE(transferFunctionCodePoint[1]));
  if (v71)
  {
    v72 = CFRetain(v71);
    *v69 = v72;
    if (v72)
    {
      ++v33;
      *v70 = *MEMORY[0x1E6965CF0];
    }
  }

  else
  {
    *v69 = 0;
  }

LABEL_114:
  v34 = *MEMORY[0x1E6965D88];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x1E6965D88]))
  {
    goto LABEL_236;
  }

  colorPrimariesCodePoint[0] = 0;
  *transferFunctionCodePoint = 0;
  if (a2 > 1751479856)
  {
    if (a2 <= 1902403957)
    {
      if (a2 <= 1869117026)
      {
        if (a2 == 1751479857 || a2 == 1752589105)
        {
          goto LABEL_190;
        }

        v39 = 1836415073;
        goto LABEL_189;
      }

      if (a2 <= 1902212706)
      {
        if (a2 == 1869117027)
        {
          goto LABEL_190;
        }

        v41 = 1902212657;
LABEL_202:
        if (a2 != v41)
        {
          goto LABEL_550;
        }

LABEL_203:
        SeqOBU_VUI_NCLC = FigAV1Bridge_GetSeqOBU_VUI_NCLC(v125, v124, colorPrimariesCodePoint, &transferFunctionCodePoint[1], transferFunctionCodePoint);
        goto LABEL_220;
      }

      if (a2 == 1902212707)
      {
        goto LABEL_219;
      }

      v35 = 1902212709;
    }

    else
    {
      if (a2 <= 1902667125)
      {
        if (a2 > 1902405732)
        {
          if (a2 == 1902405733)
          {
            goto LABEL_190;
          }

          v37 = 28024;
        }

        else
        {
          if (a2 == 1902403958)
          {
            goto LABEL_203;
          }

          v37 = 26673;
        }

        v39 = v37 | 0x71640000;
        goto LABEL_189;
      }

      if (a2 <= 1902998903)
      {
        if (a2 == 1902667126)
        {
          goto LABEL_190;
        }

        v39 = 1902671459;
        goto LABEL_189;
      }

      if (a2 == 1902998904)
      {
        goto LABEL_190;
      }

      v35 = 2053207651;
    }

LABEL_218:
    if (a2 == v35)
    {
      goto LABEL_219;
    }

LABEL_550:
    FigBridge_MakeFallbackExtensionsFromVUI_cold_3();
    goto LABEL_221;
  }

  if (a2 <= 1684895095)
  {
    if (a2 > 1667331682)
    {
      if (a2 <= 1667790434)
      {
        if (a2 != 1667331683)
        {
          v39 = 1667524657;
          goto LABEL_189;
        }

        goto LABEL_219;
      }

      if (a2 == 1667790435)
      {
        goto LABEL_190;
      }

      v41 = 1684108849;
      goto LABEL_202;
    }

    if (a2 == 1635135537)
    {
      goto LABEL_203;
    }

    if (a2 == 1635148593)
    {
      goto LABEL_219;
    }

    v35 = 1635148595;
    goto LABEL_218;
  }

  if (a2 <= 1700886114)
  {
    if (a2 <= 1685481520)
    {
      if (a2 != 1684895096)
      {
        v35 = 1685220713;
        goto LABEL_218;
      }

LABEL_190:
      SeqOBU_VUI_NCLC = FigHEVCBridge_GetSPS_VUI_NCLC();
      goto LABEL_220;
    }

    if (a2 == 1685481521)
    {
      goto LABEL_190;
    }

    v39 = 1685481573;
LABEL_189:
    if (a2 != v39)
    {
      goto LABEL_550;
    }

    goto LABEL_190;
  }

  if (a2 > 1718908519)
  {
    if (a2 == 1718908520)
    {
      goto LABEL_190;
    }

    v39 = 1718908528;
    goto LABEL_189;
  }

  if (a2 != 1700886115)
  {
    v35 = 1718908515;
    goto LABEL_218;
  }

LABEL_219:
  SeqOBU_VUI_NCLC = FigH264Bridge_GetSPS_VUI_NCLC(v125, v124, colorPrimariesCodePoint, &transferFunctionCodePoint[1], transferFunctionCodePoint);
LABEL_220:
  if (SeqOBU_VUI_NCLC)
  {
    goto LABEL_236;
  }

LABEL_221:
  StringForIntegerCodePoint = CVColorPrimariesGetStringForIntegerCodePoint(colorPrimariesCodePoint[0]);
  v48 = v128;
  if (StringForIntegerCodePoint)
  {
    v49 = CFRetain(StringForIntegerCodePoint);
    *(v128 + v33) = v49;
    if (!v49)
    {
      goto LABEL_226;
    }

    v50 = v33 + 1;
    v48 = v129;
  }

  else
  {
    v34 = 0;
    v50 = v33;
  }

  *(v48 + v33) = v34;
  v33 = v50;
LABEL_226:
  v51 = CVTransferFunctionGetStringForIntegerCodePoint(transferFunctionCodePoint[1]);
  v52 = v128;
  if (v51)
  {
    v53 = CFRetain(v51);
    *(v128 + v33) = v53;
    if (!v53)
    {
      goto LABEL_231;
    }

    v54 = *MEMORY[0x1E6965F30];
    v55 = v33 + 1;
    v52 = v129;
  }

  else
  {
    v54 = 0;
    v55 = v33;
  }

  *(v52 + v33) = v54;
  v33 = v55;
LABEL_231:
  v56 = CVYCbCrMatrixGetStringForIntegerCodePoint(transferFunctionCodePoint[0]);
  v57 = v128;
  if (v56)
  {
    v58 = CFRetain(v56);
    *(v128 + v33) = v58;
    if (!v58)
    {
      goto LABEL_236;
    }

    v59 = *MEMORY[0x1E6965F98];
    v60 = v33 + 1;
    v57 = v129;
  }

  else
  {
    v59 = 0;
    v60 = v33;
  }

  *(v57 + v33) = v59;
  v33 = v60;
LABEL_236:
  if (CFDictionaryContainsKey(v5, @"FullRangeVideo"))
  {
    goto LABEL_326;
  }

  LOBYTE(colorPrimariesCodePoint[0]) = 0;
  if (a2 > 1751479856)
  {
    if (a2 <= 1902403957)
    {
      if (a2 <= 1869117026)
      {
        if (a2 == 1751479857 || a2 == 1752589105)
        {
          goto LABEL_276;
        }

        v63 = 1836415073;
        goto LABEL_275;
      }

      if (a2 <= 1902212706)
      {
        if (a2 == 1869117027)
        {
          goto LABEL_276;
        }

        v64 = 1902212657;
LABEL_314:
        if (a2 != v64)
        {
          goto LABEL_552;
        }

LABEL_315:
        ColorRangeFromAV1CodecConfigurationRecord = FigAV1Bridge_GetColorRangeFromAV1CodecConfigurationRecord(v125, v124, colorPrimariesCodePoint);
        goto LABEL_320;
      }

      if (a2 == 1902212707)
      {
        goto LABEL_319;
      }

      v61 = 1902212709;
    }

    else
    {
      if (a2 <= 1902667125)
      {
        if (a2 > 1902405732)
        {
          if (a2 == 1902405733)
          {
            goto LABEL_276;
          }

          v62 = 28024;
        }

        else
        {
          if (a2 == 1902403958)
          {
            goto LABEL_315;
          }

          v62 = 26673;
        }

        v63 = v62 | 0x71640000;
        goto LABEL_275;
      }

      if (a2 <= 1902998903)
      {
        if (a2 == 1902667126)
        {
          goto LABEL_276;
        }

        v63 = 1902671459;
        goto LABEL_275;
      }

      if (a2 == 1902998904)
      {
        goto LABEL_276;
      }

      v61 = 2053207651;
    }
  }

  else
  {
    if (a2 > 1684895095)
    {
      if (a2 <= 1700886114)
      {
        if (a2 <= 1685481520)
        {
          if (a2 != 1684895096)
          {
            v61 = 1685220713;
            goto LABEL_318;
          }

LABEL_276:
          ColorRangeFromAV1CodecConfigurationRecord = FigHEVCBridge_GetSPS_VUI_FullRangeVideo(v125, v124, colorPrimariesCodePoint);
          goto LABEL_320;
        }

        if (a2 == 1685481521)
        {
          goto LABEL_276;
        }

        v63 = 1685481573;
LABEL_275:
        if (a2 != v63)
        {
          goto LABEL_552;
        }

        goto LABEL_276;
      }

      if (a2 > 1718908519)
      {
        if (a2 == 1718908520)
        {
          goto LABEL_276;
        }

        v63 = 1718908528;
        goto LABEL_275;
      }

      if (a2 != 1700886115)
      {
        v61 = 1718908515;
        goto LABEL_318;
      }

LABEL_319:
      ColorRangeFromAV1CodecConfigurationRecord = FigH264Bridge_GetSPS_VUI_FullRangeVideo();
LABEL_320:
      if (ColorRangeFromAV1CodecConfigurationRecord)
      {
        goto LABEL_326;
      }

      goto LABEL_321;
    }

    if (a2 > 1667331682)
    {
      if (a2 <= 1667790434)
      {
        if (a2 != 1667331683)
        {
          v63 = 1667524657;
          goto LABEL_275;
        }

        goto LABEL_319;
      }

      if (a2 == 1667790435)
      {
        goto LABEL_276;
      }

      v64 = 1684108849;
      goto LABEL_314;
    }

    if (a2 == 1635135537)
    {
      goto LABEL_315;
    }

    if (a2 == 1635148593)
    {
      goto LABEL_319;
    }

    v61 = 1635148595;
  }

LABEL_318:
  if (a2 == v61)
  {
    goto LABEL_319;
  }

LABEL_552:
  FigBridge_MakeFallbackExtensionsFromVUI_cold_4();
LABEL_321:
  v73 = MEMORY[0x1E695E4D0];
  if (!LOBYTE(colorPrimariesCodePoint[0]))
  {
    v73 = MEMORY[0x1E695E4C0];
  }

  v74 = *v73;
  if (*v73)
  {
    v74 = CFRetain(v74);
  }

  *(v128 + v33) = v74;
  *(v129 + v33++) = @"FullRangeVideo";
LABEL_326:
  v75 = *MEMORY[0x1E6965EF8];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x1E6965EF8]))
  {
    goto LABEL_327;
  }

  colorPrimariesCodePoint[0] = 0;
  transferFunctionCodePoint[1] = 0;
  if (a2 > 1751479856)
  {
    if (a2 > 1902403957)
    {
      if (a2 > 1902667125)
      {
        if (a2 <= 1902998903)
        {
          if (a2 == 1902667126)
          {
            goto LABEL_495;
          }

          v85 = 1902671459;
          goto LABEL_494;
        }

        if (a2 == 1902998904)
        {
          goto LABEL_495;
        }

        v79 = 2053207651;
        goto LABEL_506;
      }

      if (a2 > 1902405732)
      {
        if (a2 == 1902405733)
        {
          goto LABEL_495;
        }

        v82 = 28024;
      }

      else
      {
        if (a2 == 1902403958)
        {
          goto LABEL_502;
        }

        v82 = 26673;
      }

      v85 = v82 | 0x71640000;
      goto LABEL_494;
    }

    if (a2 <= 1869117026)
    {
      if (a2 == 1751479857 || a2 == 1752589105)
      {
        goto LABEL_495;
      }

      v85 = 1836415073;
      goto LABEL_494;
    }

    if (a2 > 1902212706)
    {
      if (a2 == 1902212707)
      {
        goto LABEL_507;
      }

      v79 = 1902212709;
      goto LABEL_506;
    }

    if (a2 == 1869117027)
    {
      goto LABEL_495;
    }

    v86 = 1902212657;
    goto LABEL_501;
  }

  if (a2 <= 1684895095)
  {
    if (a2 <= 1667331682)
    {
      if (a2 != 1635135537)
      {
        if (a2 == 1635148593)
        {
          goto LABEL_507;
        }

        v79 = 1635148595;
        goto LABEL_506;
      }

LABEL_502:
      if (FigAV1Bridge_GetSeqOBU_VUI_AspectRatio(v125, v124, colorPrimariesCodePoint, &transferFunctionCodePoint[1]))
      {
        goto LABEL_327;
      }

      goto LABEL_508;
    }

    if (a2 <= 1667790434)
    {
      if (a2 == 1667331683)
      {
        goto LABEL_507;
      }

      v85 = 1667524657;
      goto LABEL_494;
    }

    if (a2 == 1667790435)
    {
      goto LABEL_495;
    }

    v86 = 1684108849;
LABEL_501:
    if (a2 != v86)
    {
      goto LABEL_553;
    }

    goto LABEL_502;
  }

  if (a2 <= 1700886114)
  {
    if (a2 <= 1685481520)
    {
      if (a2 != 1684895096)
      {
        v79 = 1685220713;
        goto LABEL_506;
      }

LABEL_495:
      if (FigHEVCBridge_GetSPS_VUI_AspectRatio(v125, v124, colorPrimariesCodePoint, &transferFunctionCodePoint[1]))
      {
        goto LABEL_327;
      }

      goto LABEL_508;
    }

    if (a2 == 1685481521)
    {
      goto LABEL_495;
    }

    v85 = 1685481573;
LABEL_494:
    if (a2 != v85)
    {
      goto LABEL_553;
    }

    goto LABEL_495;
  }

  if (a2 > 1718908519)
  {
    if (a2 == 1718908520)
    {
      goto LABEL_495;
    }

    v85 = 1718908528;
    goto LABEL_494;
  }

  if (a2 == 1700886115)
  {
    goto LABEL_507;
  }

  v79 = 1718908515;
LABEL_506:
  if (a2 == v79)
  {
LABEL_507:
    if (FigH264Bridge_GetSPS_VUI_AspectRatio(v125, v124, colorPrimariesCodePoint, &transferFunctionCodePoint[1], v76))
    {
      goto LABEL_327;
    }

    goto LABEL_508;
  }

LABEL_553:
  FigBridge_MakeFallbackExtensionsFromVUI_cold_5();
LABEL_508:
  v112 = colorPrimariesCodePoint[0];
  if (colorPrimariesCodePoint[0] && transferFunctionCodePoint[1])
  {
    *(v129 + v33) = v75;
    v113 = figBridge_CFDictionaryCreateWithNumbers(a1, v106, *MEMORY[0x1E6965EF0], v107, v108, v109, v110, v111, v112);
    *(v128 + v33) = v113;
    if (!v113)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v117 = v4;
      v118 = 3638;
      goto LABEL_538;
    }

    ++v33;
  }

LABEL_327:
  v77 = *MEMORY[0x1E6965E50];
  if (CFDictionaryContainsKey(v5, *MEMORY[0x1E6965E50]))
  {
    goto LABEL_328;
  }

  v80 = 0;
  LOBYTE(transferFunctionCodePoint[1]) = 0;
  if (a2 > 1751479856)
  {
    if (a2 <= 1902403957)
    {
      if (a2 <= 1869117026)
      {
        if (a2 == 1751479857 || a2 == 1752589105)
        {
          goto LABEL_521;
        }

        v87 = 1836415073;
        goto LABEL_520;
      }

      if (a2 <= 1902212706)
      {
        if (a2 == 1869117027)
        {
          goto LABEL_521;
        }

        v88 = 1902212657;
        goto LABEL_526;
      }

      if (a2 == 1902212707)
      {
        goto LABEL_531;
      }

      v81 = 1902212709;
    }

    else
    {
      if (a2 <= 1902667125)
      {
        if (a2 > 1902405732)
        {
          if (a2 == 1902405733)
          {
            goto LABEL_521;
          }

          v83 = 28024;
        }

        else
        {
          if (a2 == 1902403958)
          {
            goto LABEL_533;
          }

          v83 = 26673;
        }

        v87 = v83 | 0x71640000;
        goto LABEL_520;
      }

      if (a2 <= 1902998903)
      {
        if (a2 == 1902667126)
        {
          goto LABEL_521;
        }

        v87 = 1902671459;
        goto LABEL_520;
      }

      if (a2 == 1902998904)
      {
        goto LABEL_521;
      }

      v81 = 2053207651;
    }

LABEL_530:
    if (a2 == v81)
    {
      goto LABEL_531;
    }

LABEL_554:
    FigBridge_MakeFallbackExtensionsFromVUI_cold_6();
    goto LABEL_534;
  }

  if (a2 <= 1684895095)
  {
    if (a2 > 1667331682)
    {
      if (a2 <= 1667790434)
      {
        if (a2 == 1667331683)
        {
          goto LABEL_531;
        }

        v87 = 1667524657;
        goto LABEL_520;
      }

      if (a2 == 1667790435)
      {
        goto LABEL_521;
      }

      v88 = 1684108849;
LABEL_526:
      if (a2 == v88)
      {
        goto LABEL_533;
      }

      goto LABEL_554;
    }

    if (a2 == 1635135537)
    {
      goto LABEL_533;
    }

    if (a2 == 1635148593)
    {
      goto LABEL_531;
    }

    v81 = 1635148595;
    goto LABEL_530;
  }

  if (a2 > 1700886114)
  {
    if (a2 <= 1718908519)
    {
      if (a2 != 1700886115)
      {
        v81 = 1718908515;
        goto LABEL_530;
      }

LABEL_531:
      SPSIsInterlaced = FigH264Bridge_GetSPSIsInterlaced();
      goto LABEL_532;
    }

    if (a2 == 1718908520)
    {
      goto LABEL_521;
    }

    v87 = 1718908528;
LABEL_520:
    if (a2 != v87)
    {
      goto LABEL_554;
    }

    goto LABEL_521;
  }

  if (a2 > 1685481520)
  {
    if (a2 == 1685481521)
    {
      goto LABEL_521;
    }

    v87 = 1685481573;
    goto LABEL_520;
  }

  if (a2 != 1684895096)
  {
    v81 = 1685220713;
    goto LABEL_530;
  }

LABEL_521:
  SPSIsInterlaced = FigHEVCBridge_GetSPSIsInterlaced(v125, v124, &transferFunctionCodePoint[1]);
LABEL_532:
  v80 = SPSIsInterlaced;
LABEL_533:
  if (v80)
  {
    goto LABEL_328;
  }

LABEL_534:
  if (LOBYTE(transferFunctionCodePoint[1]))
  {
    goto LABEL_328;
  }

  colorPrimariesCodePoint[0] = 1;
  *(v129 + v33) = v77;
  v120 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, colorPrimariesCodePoint);
  *(v128 + v33) = v120;
  if (!v120)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v117 = v4;
    v118 = 3668;
LABEL_538:
    v29 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", v118, v117, v115, v116);
    if (!v33)
    {
      return v29;
    }

    goto LABEL_539;
  }

  ++v33;
LABEL_328:
  if (CFDictionaryContainsKey(v5, @"MasteringDisplayColorVolume"))
  {
    goto LABEL_383;
  }

  *colorPrimariesCodePoint = 0;
  IsHEVCFlavor = FigVideoCodecTypeIsHEVCFlavor(a2);
  if (!IsHEVCFlavor)
  {
    if (a2 > 1902212656)
    {
      if (a2 == 1902403958)
      {
        goto LABEL_375;
      }

      v84 = 1902212657;
    }

    else
    {
      if (a2 == 1635135537)
      {
        goto LABEL_375;
      }

      v84 = 1684108849;
    }

    if (a2 != v84)
    {
      goto LABEL_376;
    }

LABEL_375:
    IsHEVCFlavor = FigAV1Bridge_CopyMDCVDataFromAV1ConfigurationRecordConfigOBU(ValueAtIndex, colorPrimariesCodePoint);
    goto LABEL_376;
  }

  IsHEVCFlavor = FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 137, colorPrimariesCodePoint);
LABEL_376:
  v89 = *colorPrimariesCodePoint;
  if (!IsHEVCFlavor && *colorPrimariesCodePoint)
  {
    if (CFDataGetLength(*colorPrimariesCodePoint) == 24)
    {
      *(v129 + v33) = @"MasteringDisplayColorVolume";
      *(v128 + v33++) = *colorPrimariesCodePoint;
      goto LABEL_383;
    }

    v89 = *colorPrimariesCodePoint;
  }

  if (v89)
  {
    CFRelease(v89);
  }

LABEL_383:
  if (CFDictionaryContainsKey(v5, @"ContentLightLevelInfo"))
  {
    goto LABEL_400;
  }

  *colorPrimariesCodePoint = 0;
  v90 = FigVideoCodecTypeIsHEVCFlavor(a2);
  if (v90)
  {
    v90 = FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 144, colorPrimariesCodePoint);
    goto LABEL_393;
  }

  if (a2 > 1902212656)
  {
    if (a2 != 1902403958)
    {
      v91 = 1902212657;
LABEL_391:
      if (a2 != v91)
      {
        goto LABEL_393;
      }
    }
  }

  else if (a2 != 1635135537)
  {
    v91 = 1684108849;
    goto LABEL_391;
  }

  v90 = FigAV1Bridge_CopyCLLIDataFromAV1ConfigurationRecordConfigOBU(ValueAtIndex, colorPrimariesCodePoint);
LABEL_393:
  v92 = *colorPrimariesCodePoint;
  if (!v90 && *colorPrimariesCodePoint)
  {
    if (CFDataGetLength(*colorPrimariesCodePoint) == 4)
    {
      *(v129 + v33) = @"ContentLightLevelInfo";
      *(v128 + v33++) = *colorPrimariesCodePoint;
      goto LABEL_400;
    }

    v92 = *colorPrimariesCodePoint;
  }

  if (v92)
  {
    CFRelease(v92);
  }

LABEL_400:
  if (!CFDictionaryContainsKey(v5, @"AmbientViewingEnvironment") && FigVideoCodecTypeIsHEVCFlavor(a2))
  {
    *colorPrimariesCodePoint = 0;
    v95 = FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 148, colorPrimariesCodePoint);
    v96 = *colorPrimariesCodePoint;
    if (!v95 && *colorPrimariesCodePoint)
    {
      if (CFDataGetLength(*colorPrimariesCodePoint) == 8)
      {
        *(v129 + v33) = @"AmbientViewingEnvironment";
        *(v128 + v33++) = *colorPrimariesCodePoint;
        goto LABEL_401;
      }

      v96 = *colorPrimariesCodePoint;
    }

    if (v96)
    {
      CFRelease(v96);
    }
  }

LABEL_401:
  if (!CFDictionaryContainsKey(v5, @"ContentColorVolume") && FigVideoCodecTypeIsHEVCFlavor(a2))
  {
    *colorPrimariesCodePoint = 0;
    v97 = FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 149, colorPrimariesCodePoint);
    v98 = *colorPrimariesCodePoint;
    if (v97 || !*colorPrimariesCodePoint)
    {
      if (*colorPrimariesCodePoint)
      {
        CFRelease(*colorPrimariesCodePoint);
      }
    }

    else
    {
      *(v129 + v33) = @"ContentColorVolume";
      *(v128 + v33++) = v98;
    }
  }

  if (!CFDictionaryContainsKey(v5, @"AlternativeTransferCharacteristics"))
  {
    if (FigVideoCodecTypeIsHEVCFlavor(a2))
    {
      LOBYTE(colorPrimariesCodePoint[0]) = 0;
      if (!FigHEVCBridge_GetATCSEI(ValueAtIndex, colorPrimariesCodePoint))
      {
        *(v129 + v33) = @"AlternativeTransferCharacteristics";
        v99 = CVTransferFunctionGetStringForIntegerCodePoint(LOBYTE(colorPrimariesCodePoint[0]));
        if (v99)
        {
          v99 = CFRetain(v99);
        }

        *(v128 + v33++) = v99;
      }
    }
  }

  if (!CFDictionaryContainsKey(v5, @"AlphaChannelMode"))
  {
    if (FigVideoCodecTypeIsHEVCFlavor(a2))
    {
      *colorPrimariesCodePoint = 0;
      if (!FigHEVCBridge_CopyHEVCSEIPayloadData(ValueAtIndex, 165, colorPrimariesCodePoint))
      {
        if (*colorPrimariesCodePoint)
        {
          LOBYTE(transferFunctionCodePoint[1]) = 0;
          v100 = CFDataGetBytePtr(*colorPrimariesCodePoint);
          v101 = CFDataGetLength(*colorPrimariesCodePoint);
          if (!FigHEVCBridge_GetSEIAlphaChannelInfo(v100, v101, &transferFunctionCodePoint[1]))
          {
            if (LOBYTE(transferFunctionCodePoint[1]))
            {
              v102 = &kCMFormatDescriptionAlphaChannelMode_PremultipliedAlpha;
            }

            else
            {
              v102 = &kCMFormatDescriptionAlphaChannelMode_StraightAlpha;
            }

            *(v128 + v33) = *v102;
            *(v129 + v33++) = @"AlphaChannelMode";
          }

          if (*colorPrimariesCodePoint)
          {
            CFRelease(*colorPrimariesCodePoint);
          }
        }
      }
    }
  }

  if (CFDictionaryContainsKey(v5, @"ContainsAlphaChannel"))
  {
    v93 = *MEMORY[0x1E695E4D0];
    v94 = v93 == CFDictionaryGetValue(v5, @"ContainsAlphaChannel");
  }

  else if (FigVideoCodecTypeIsHEVCFlavor(a2) && figBridge_AlphaLayerIsPresent(v5))
  {
    *(v128 + v33) = *MEMORY[0x1E695E4D0];
    *(v129 + v33++) = @"ContainsAlphaChannel";
    v94 = 1;
  }

  else
  {
    v94 = 0;
  }

  if (a2 > 1836415072)
  {
    if (a2 <= 1902667125)
    {
      if (a2 == 1836415073)
      {
        goto LABEL_446;
      }

      v103 = 1869117027;
    }

    else
    {
      if (a2 == 1902667126 || a2 == 1902998904)
      {
        goto LABEL_446;
      }

      v103 = 1902671459;
    }
  }

  else
  {
    if (a2 > 1718908527)
    {
      if (a2 != 1718908528 && a2 != 1751479857)
      {
        v103 = 1752589105;
        goto LABEL_445;
      }

LABEL_446:
      if (v94)
      {
        colorPrimariesCodePoint[0] = 0;
        if (!FigHEVCBridge_CheckVPSPrimaryAlphaLayerCompatibility(ValueAtIndex, colorPrimariesCodePoint))
        {
          if (colorPrimariesCodePoint[0] == 2)
          {
            FigBridge_MakeFallbackExtensionsFromVUI_cold_7(a3);
          }

          else if (colorPrimariesCodePoint[0] == 1)
          {
            FigBridge_MakeFallbackExtensionsFromVUI_cold_8(a3);
          }
        }
      }

      goto LABEL_451;
    }

    if (a2 == 1667790435)
    {
      goto LABEL_446;
    }

    v103 = 1718908520;
  }

LABEL_445:
  if (a2 == v103)
  {
    goto LABEL_446;
  }

LABEL_451:
  if (!CFDictionaryContainsKey(v5, @"BitsPerComponent"))
  {
    LOBYTE(colorPrimariesCodePoint[0]) = 0;
    if (!figBridge_getSPS_VUI_ComponentBitDepth(a2, v125, v124, colorPrimariesCodePoint))
    {
      *(v128 + v33) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, colorPrimariesCodePoint);
      *(v129 + v33++) = @"BitsPerComponent";
    }
  }

  if (!v33)
  {
    return 0;
  }

  v29 = FigCFCreateExtendedDictionary(a1, v5, v129, v128, v33, &v126, v104, v105);
  if (!v29 && v126)
  {
    *a4 = v126;
    CFRelease(v5);
  }

LABEL_539:
  v121 = v128;
  do
  {
    if (*v121)
    {
      CFRelease(*v121);
    }

    ++v121;
    --v33;
  }

  while (v33);
  return v29;
}

void figBridge_OverrideTransferFunctionFromAlternativeTransferCharacteristics(const __CFAllocator *a1, const void *a2, CFDictionaryRef *a3)
{
  if (a3)
  {
    v7 = *MEMORY[0x1E6965F30];
    Value = CFDictionaryGetValue(*a3, *MEMORY[0x1E6965F30]);
    if (!Value || !FigCFEqual(Value, a2))
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy(a1, *a3);
      CFDictionarySetValue(MutableCopy, v7, a2);
      if (*a3)
      {
        CFRelease(*a3);
      }

      *a3 = MutableCopy;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0xCD3, v3, v11, v12);
  }
}

uint64_t FigVideoCodecTypeIsProRes(int a1)
{
  result = 1;
  if (a1 <= 1634743415)
  {
    if (a1 != 1634742376 && a1 != 1634742888)
    {
      v3 = 13416;
LABEL_9:
      if (a1 != (v3 | 0x61700000))
      {
        return 0;
      }
    }
  }

  else if (((a1 - 1634755432) > 0xB || ((1 << (a1 - 104)) & 0x8C1) == 0) && ((a1 - 1634759272) > 6 || ((1 << (a1 - 104)) & 0x51) == 0))
  {
    v3 = 13432;
    goto LABEL_9;
  }

  return result;
}

void figBridge_GetAlphaChannelExtensionForProRes(const __CFAllocator *a1, CFDictionaryRef *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  HIWORD(_8[0]) = 0;
  if (a2 && *a2)
  {
    FigCFDictionaryGetInt16IfPresent(*a2, @"Depth", _8 + 6, a4, a5, a6, a7, a8, v20, _8[0], _8[1], _8[2], _8[3], _8[4], _8[5], _8[6], _8[7], vars8);
    if (HIWORD(_8[0]) == 32)
    {
      v11 = CFDictionaryContainsKey(*a2, @"ContainsAlphaChannel");
      v12 = CFDictionaryContainsKey(*a2, @"AlphaChannelMode");
      if (!v11 || v12 == 0)
      {
        v14 = v12;
        MutableCopy = FigCFDictionaryCreateMutableCopy(a1, *a2);
        if (MutableCopy)
        {
          v16 = MutableCopy;
          if (!v11)
          {
            CFDictionarySetValue(MutableCopy, @"ContainsAlphaChannel", *MEMORY[0x1E695E4D0]);
          }

          if (!v14)
          {
            CFDictionarySetValue(v16, @"AlphaChannelMode", @"StraightAlpha");
          }

          if (*a2)
          {
            CFRelease(*a2);
          }

          *a2 = v16;
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0xD30, v8, v18, v19);
  }
}

const __CFDictionary *figBridge_Is3GP263ExtensionPresent(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"SampleDescriptionExtensionAtoms");
  if (result)
  {
    v2 = result;
    TypeID = CFDictionaryGetTypeID();
    result = 0;
    if (TypeID == CFGetTypeID(v2))
    {
      Value = CFDictionaryGetValue(v2, @"d263");
      if (Value)
      {
        v5 = Value;
        v6 = CFDataGetTypeID();
        if (v6 == CFGetTypeID(v5))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t figConvertChromaLocationIndexToString(int a1)
{
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        v2 = MEMORY[0x1E6965D38];
      }

      else
      {
        v2 = MEMORY[0x1E6965D10];
      }

      return *v2;
    }

    if (a1 == 5)
    {
      v2 = MEMORY[0x1E6965D08];
      return *v2;
    }

    if (a1 == 255)
    {
      v2 = MEMORY[0x1E6965D28];
      return *v2;
    }

LABEL_13:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0, "<<<< ImageDescriptionBridge >>>>", 0x874, v1, v4, v5);
    return 0;
  }

  if (!a1)
  {
    v2 = MEMORY[0x1E6965D30];
    return *v2;
  }

  if (a1 == 1)
  {
    v2 = MEMORY[0x1E6965D20];
    return *v2;
  }

  if (a1 != 2)
  {
    goto LABEL_13;
  }

  v2 = MEMORY[0x1E6965D40];
  return *v2;
}

CFDictionaryRef figBridge_CFDictionaryCreateWithNumbers(const __CFAllocator *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  *keys = 0u;
  v29 = 0u;
  v30 = 0u;
  *values = 0u;
  v28 = 0u;
  v26 = &a9;
  if (a3)
  {
    v11 = a3;
    v12 = 0;
    v13 = *MEMORY[0x1E695E480];
    while (v12 < 10)
    {
      v14 = v26++;
      valuePtr = *v14;
      v15 = CFNumberCreate(v13, kCFNumberSInt32Type, &valuePtr);
      values[v12] = v15;
      if (v15)
      {
        keys[v12++] = v11;
      }

      v16 = v26++;
      v11 = *v16;
      if (!*v16)
      {
        goto LABEL_10;
      }
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0x572, v9, v18, v19);
  }

  else
  {
    v12 = 0;
  }

LABEL_10:
  v20 = CFDictionaryCreate(a1, keys, values, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v12 >= 1)
  {
    v21 = v12 + 1;
    v22 = &values[v12 - 1];
    do
    {
      v23 = *v22--;
      CFRelease(v23);
      --v21;
    }

    while (v21 > 1);
  }

  return v20;
}

size_t figBridge_getSPS_VUI_ComponentBitDepth(int a1, char *a2, unint64_t a3, _BYTE *a4)
{
  v9 = 0;
  result = 4294954579;
  if (a1 <= 1752589104)
  {
    if (a1 > 1685481520)
    {
      if (a1 <= 1718908519)
      {
        if (a1 == 1685481521)
        {
          goto LABEL_32;
        }

        v7 = 1685481573;
      }

      else
      {
        if (a1 == 1718908520 || a1 == 1718908528)
        {
          goto LABEL_32;
        }

        v7 = 1751479857;
      }

      goto LABEL_31;
    }

    if (a1 <= 1667790434)
    {
      if (a1 != 1635135537)
      {
        v7 = 1667524657;
        goto LABEL_31;
      }
    }

    else
    {
      if (a1 == 1667790435)
      {
        goto LABEL_32;
      }

      if (a1 != 1684108849)
      {
        v7 = 1684895096;
        goto LABEL_31;
      }
    }

    goto LABEL_28;
  }

  if (a1 > 1902405680)
  {
    if (a1 <= 1902667125)
    {
      if (a1 != 1902405681 && a1 != 1902405733)
      {
        v7 = 1902407032;
        goto LABEL_31;
      }

LABEL_32:
      result = FigHEVCBridge_GetSPSBitDepths(a2, a3, &v9 + 1, &v9);
      if (result)
      {
        return result;
      }

      v8 = HIBYTE(v9);
      if (HIBYTE(v9) <= v9)
      {
        v8 = v9;
      }

      goto LABEL_35;
    }

    if (a1 == 1902667126 || a1 == 1902998904)
    {
      goto LABEL_32;
    }

    v7 = 1902671459;
LABEL_31:
    if (a1 != v7)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (a1 <= 1869117026)
  {
    if (a1 == 1752589105)
    {
      goto LABEL_32;
    }

    v7 = 1836415073;
    goto LABEL_31;
  }

  if (a1 == 1869117027)
  {
    goto LABEL_32;
  }

  if (a1 == 1902212657 || a1 == 1902403958)
  {
LABEL_28:
    result = FigAV1Bridge_GetChromaFormatAndBitDepthsFromAV1CodecConfigurationRecord(a2, a3, 0, 0, &v9);
    v8 = v9;
LABEL_35:
    *a4 = v8;
  }

  return result;
}

size_t FigVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBufferWithOptionsAndReporter(const __CFAllocator *a1, CMBlockBufferRef theBuffer, CFStringEncoding a3, const void *a4, char a5, const void *a6, const void *a7, CMVideoFormatDescriptionRef *a8)
{
  blockBufferOut = 0;
  if (theBuffer)
  {
    dataPointerOut = 0;
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    if (CMBlockBufferIsRangeContiguous(theBuffer, 0, 0))
    {
      v18 = CFRetain(theBuffer);
      blockBufferOut = v18;
    }

    else
    {
      v19 = CMBlockBufferCreateContiguous(a1, theBuffer, a1, 0, 0, DataLength, 0, &blockBufferOut);
      if (v19)
      {
        goto LABEL_9;
      }

      v18 = blockBufferOut;
    }

    CMBlockBufferGetDataPointer(v18, 0, 0, 0, &dataPointerOut);
    v19 = FigVideoFormatDescriptionCreateFromBigEndianImageDescriptionDataWithOptionsAndReporter(a1, dataPointerOut, DataLength, a3, a4, a5, a6, a7, a8);
LABEL_9:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    return v19;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", 0x107E, v8, v21, v22);
}

OSStatus CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(CFAllocatorRef allocator, CMVideoFormatDescriptionRef videoFormatDescription, CFStringEncoding stringEncoding, CMImageDescriptionFlavor flavor, CMBlockBufferRef *blockBufferOut)
{
  v73 = 0;
  theBuffer = 0;
  v72 = 0;
  if (videoFormatDescription)
  {
    TypeID = CMFormatDescriptionGetTypeID();
    if (TypeID == CFGetTypeID(videoFormatDescription))
    {
      if (CMFormatDescriptionGetMediaType(videoFormatDescription) == 1986618469)
      {
        if (blockBufferOut)
        {
          if (flavor)
          {
            if (CFEqual(flavor, @"ISOFamily"))
            {
              v12 = 0;
              LOBYTE(flavor) = 1;
            }

            else if (CFEqual(flavor, @"3GPFamily"))
            {
              v12 = 0;
              LOBYTE(flavor) = 3;
            }

            else if (CFEqual(flavor, @"FMP4InStreamParameterSets"))
            {
              v12 = 0;
              LOBYTE(flavor) = 5;
            }

            else if (CFEqual(flavor, @"ISOFamilyWithAppleExtensions"))
            {
              LOBYTE(flavor) = 9;
              v12 = 1;
            }

            else
            {
              if (!CFEqual(flavor, @"QuickTimeMovie"))
              {
                emitter = fig_log_get_emitter("com.apple.coremedia", "");
                v16 = v5;
                v17 = 4294954579;
                v18 = 4362;
                goto LABEL_77;
              }

              v12 = 0;
              LOBYTE(flavor) = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          MediaSubType = CMFormatDescriptionGetMediaSubType(videoFormatDescription);
          if (MediaSubType == 1785750887)
          {
            v20 = v12;
          }

          else
          {
            v20 = 1;
          }

          if ((flavor & 1) == 0)
          {
            v20 = 1;
          }

          if (v20)
          {
            v21 = MediaSubType;
          }

          else
          {
            v21 = 1835692135;
          }

          v70 = v21;
          if (v21 <= 1902403957)
          {
            if (v21 > 1902212656)
            {
              if ((v21 - 1902212657) > 0x34 || ((1 << (v21 - 49)) & 0x14000000000001) == 0)
              {
LABEL_49:
                if ((flavor & 7) != 1)
                {
                  goto LABEL_68;
                }

                if (v21 <= 1701733237)
                {
                  if (v21 > 1684890160)
                  {
                    if (v21 == 1684890161 || v21 == 1685220713)
                    {
                      goto LABEL_68;
                    }

                    v24 = 1685481521;
                  }

                  else
                  {
                    if (v21 == 1635135537 || v21 == 1635148593)
                    {
                      goto LABEL_68;
                    }

                    v24 = 1684108849;
                  }
                }

                else if (v21 <= 1785750886)
                {
                  if (v21 == 1701733238 || v21 == 1748121139)
                  {
                    goto LABEL_68;
                  }

                  v24 = 1752589105;
                }

                else if (v21 > 1836070005)
                {
                  if (v21 == 1836070006)
                  {
                    goto LABEL_68;
                  }

                  v24 = 1987063865;
                }

                else
                {
                  if (v21 == 1785750887)
                  {
                    goto LABEL_68;
                  }

                  v24 = 1835692135;
                }

                if (v21 != v24)
                {
                  emitter = fig_log_get_emitter("com.apple.coremedia", "");
                  v16 = v5;
                  v17 = 4294954579;
                  v18 = 4416;
                  goto LABEL_77;
                }

LABEL_68:
                if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v21), xmmword_197165C00))) & 1) == 0 && v21 != 1701733238 && (flavor & 2) != 0)
                {
                  emitter = fig_log_get_emitter("com.apple.coremedia", "");
                  v16 = v5;
                  v17 = 4294954579;
                  v18 = 4424;
                  goto LABEL_77;
                }

                if ((flavor & 4) != 0 && v21 != 1635148595 && v21 != 1751479857 && v21 != 1685481573)
                {
                  emitter = fig_log_get_emitter("com.apple.coremedia", "");
                  v16 = v5;
                  v17 = 4294954579;
                  v18 = 4430;
                  goto LABEL_77;
                }

                v26 = &kCMFormatDescriptionExtension_VerbatimSampleDescription;
                if (flavor)
                {
                  v26 = &kCMFormatDescriptionExtension_VerbatimISOSampleEntry;
                }

                Extension = CMFormatDescriptionGetExtension(videoFormatDescription, *v26);
                v71 = 0;
                if (Extension)
                {
                  v28 = Extension;
                  v29 = CFDataGetTypeID();
                  if (v29 == CFGetTypeID(v28))
                  {
                    Length = CFDataGetLength(v28);
                    BytePtr = CFDataGetBytePtr(v28);
                    dataPointerOut = 0;
                    v32 = CMBlockBufferCreateWithMemoryBlock(allocator, 0, Length, allocator, 0, 0, Length, 1u, &theBuffer);
                    if (!v32)
                    {
                      DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
                      if (!DataPointer)
                      {
                        memcpy(dataPointerOut, BytePtr, Length);
                        *blockBufferOut = theBuffer;
                        theBuffer = 0;
                      }

                      goto LABEL_93;
                    }

                    goto LABEL_92;
                  }
                }

                v34 = CMFormatDescriptionGetExtension(videoFormatDescription, @"RequiredButUnrecognizedFormatAtoms");
                if (v34)
                {
                  v35 = v34;
                  v36 = CFGetTypeID(v34);
                  if (v36 != CFArrayGetTypeID() || CFArrayGetCount(v35))
                  {
                    CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer_cold_1(&dataPointerOut);
                    DataPointer = dataPointerOut;
LABEL_93:
                    if (theBuffer)
                    {
                      CFRelease(theBuffer);
                    }

                    return DataPointer;
                  }
                }

                figBridge_WalkAndConvertVideoFormatDescriptionExtensions(videoFormatDescription, flavor, &v73, 0);
                v37 = v73 + 86;
                v32 = CMBlockBufferCreateWithMemoryBlock(allocator, 0, v73 + 86, allocator, 0, 0, v73 + 86, 1u, &theBuffer);
                if (v32 || (v32 = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v71)) != 0)
                {
LABEL_92:
                  DataPointer = v32;
                  goto LABEL_93;
                }

                Dimensions = CMVideoFormatDescriptionGetDimensions(videoFormatDescription);
                if (flavor)
                {
                  v43 = v71;
                  if ((flavor & 2) != 0 && v70 == 1748121139)
                  {
                    v32 = figBridge_ConvertH263SampleDescriptionExtensionToCodecType(videoFormatDescription, &v70);
                    if (v32)
                    {
                      goto LABEL_92;
                    }
                  }

                  *v43 = bswap32(v37);
                  *(v43 + 1) = bswap32(v70);
                  *(v43 + 2) = 0;
                  *(v43 + 3) = 0;
                  *(v43 + 1) = 0xFFFF000000000000;
                  *(v43 + 16) = bswap32(Dimensions.width) >> 16;
                  *(v43 + 17) = bswap32(Dimensions.height) >> 16;
                  *(v43 + 36) = 0x480000004800;
                  *(v43 + 11) = 0;
                  *(v43 + 24) = 256;
                  *(v43 + 82) = -59392;
                  *(v43 + 50) = 0u;
                  *(v43 + 66) = 0u;
                }

                else
                {
                  v39 = CMFormatDescriptionGetExtension(videoFormatDescription, @"Depth");
                  if (v39)
                  {
                    v40 = v39;
                    v41 = CFNumberGetTypeID();
                    v42 = 24;
                    if (v41 == CFGetTypeID(v40))
                    {
                      LOWORD(dataPointerOut) = 0;
                      if (CFNumberGetValue(v40, kCFNumberSInt16Type, &dataPointerOut))
                      {
                        v42 = dataPointerOut;
                      }

                      else
                      {
                        v42 = 24;
                      }
                    }
                  }

                  else
                  {
                    v42 = 24;
                  }

                  v44 = v70;
                  if (v70 <= 0x28 && ((1 << v70) & 0x11701010116) != 0)
                  {
                    v70 = 1918990112;
                    v42 = v44;
                  }

                  else if (v70 == 1836069494)
                  {
                    figBridge_ConvertMPEG2ProfileExtensionToCodecType(videoFormatDescription, &v70);
                  }

                  v45 = v71;
                  *v71 = bswap32(v37);
                  *(v45 + 1) = bswap32(v70);
                  *(v45 + 1) = 0xFFFF000000000000;
                  *(v45 + 2) = 0;
                  *(v45 + 3) = 0x2000000020000;
                  *(v45 + 16) = bswap32(Dimensions.width) >> 16;
                  *(v45 + 17) = bswap32(Dimensions.height) >> 16;
                  *(v45 + 36) = 0x480000004800;
                  *(v45 + 11) = 0;
                  *(v45 + 24) = 256;
                  *(v45 + 41) = bswap32(v42) >> 16;
                  *(v45 + 42) = -1;
                  *(v45 + 50) = 0u;
                  *(v45 + 66) = 0u;
                  v46 = CMFormatDescriptionGetExtension(videoFormatDescription, @"FormatName");
                  if (!v46 || (v47 = v46, v48 = CFStringGetTypeID(), v48 != CFGetTypeID(v47)) || !CFStringGetPascalString(v47, v71 + 50, 32, stringEncoding))
                  {
                    v49 = v71;
                    if (*(v71 + 1) == 1752589105)
                    {
                      *(v71 + 25) = 18436;
                      v49[52] = 69;
                      v50 = 67;
                      LOBYTE(v51) = 86;
                      v52 = 54;
                      v53 = 53;
                    }

                    else
                    {
                      *(v71 + 25) = 9990;
                      v51 = v70;
                      v49[52] = HIBYTE(v70);
                      v49[53] = BYTE2(v51);
                      v49[54] = BYTE1(v51);
                      v50 = 39;
                      v52 = 56;
                      v53 = 55;
                    }

                    v49[v53] = v51;
                    v49[v52] = v50;
                  }

                  v54 = CMFormatDescriptionGetExtension(videoFormatDescription, @"TemporalQuality");
                  if (v54)
                  {
                    v55 = v54;
                    v56 = CFNumberGetTypeID();
                    if (v56 == CFGetTypeID(v55))
                    {
                      LODWORD(dataPointerOut) = 0;
                      CFNumberGetValue(v55, kCFNumberSInt32Type, &dataPointerOut);
                      *(v71 + 6) = bswap32(dataPointerOut);
                    }
                  }

                  v57 = CMFormatDescriptionGetExtension(videoFormatDescription, @"SpatialQuality");
                  if (v57)
                  {
                    v58 = v57;
                    v59 = CFNumberGetTypeID();
                    if (v59 == CFGetTypeID(v58))
                    {
                      LODWORD(dataPointerOut) = 0;
                      CFNumberGetValue(v58, kCFNumberSInt32Type, &dataPointerOut);
                      *(v71 + 7) = bswap32(dataPointerOut);
                    }
                  }

                  v60 = CMFormatDescriptionGetExtension(videoFormatDescription, @"Version");
                  if (v60)
                  {
                    v61 = v60;
                    v62 = CFNumberGetTypeID();
                    if (v62 == CFGetTypeID(v61))
                    {
                      LOWORD(dataPointerOut) = 0;
                      CFNumberGetValue(v61, kCFNumberSInt16Type, &dataPointerOut);
                      *(v71 + 8) = bswap32(dataPointerOut) >> 16;
                    }
                  }

                  v63 = CMFormatDescriptionGetExtension(videoFormatDescription, @"RevisionLevel");
                  if (v63)
                  {
                    v64 = v63;
                    v65 = CFNumberGetTypeID();
                    if (v65 == CFGetTypeID(v64))
                    {
                      LOWORD(dataPointerOut) = 0;
                      CFNumberGetValue(v64, kCFNumberSInt16Type, &dataPointerOut);
                      *(v71 + 9) = bswap32(dataPointerOut) >> 16;
                    }
                  }

                  v66 = CMFormatDescriptionGetExtension(videoFormatDescription, @"Vendor");
                  if (v66)
                  {
                    v67 = v66;
                    v68 = CFStringGetTypeID();
                    if (v68 == CFGetTypeID(v67))
                    {
                      v76.location = 0;
                      v76.length = 4;
                      if (CFStringGetBytes(v67, v76, 0, 0, 0, v71 + 20, 4, 0) != 4)
                      {
                        *(v71 + 5) = 0;
                      }
                    }
                  }
                }

                if (v73)
                {
                  dataPointerOut = 0;
                  v32 = CMBlockBufferGetDataPointer(theBuffer, 0x56uLL, 0, 0, &dataPointerOut);
                  if (v32)
                  {
                    goto LABEL_92;
                  }

                  figBridge_WalkAndConvertVideoFormatDescriptionExtensions(videoFormatDescription, flavor, &v72, dataPointerOut);
                }

                DataPointer = 0;
                *blockBufferOut = theBuffer;
                return DataPointer;
              }
            }

            else if (v21 != 1667331683 && v21 != 1667524657)
            {
              v23 = 1667790435;
              goto LABEL_47;
            }
          }

          else if (v21 <= 1902407031)
          {
            if (v21 != 1902403958 && v21 != 1902405681)
            {
              v23 = 1902405733;
              goto LABEL_47;
            }
          }

          else if (v21 > 1902671458)
          {
            if (v21 != 1902998904)
            {
              v22 = 30307;
              goto LABEL_46;
            }
          }

          else if (v21 != 1902407032)
          {
            v22 = 25974;
LABEL_46:
            v23 = v22 | 0x71680000;
LABEL_47:
            if (v21 != v23)
            {
              goto LABEL_49;
            }
          }

          v70 = 1701733238;
          v21 = 1701733238;
          goto LABEL_49;
        }

        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v16 = v5;
        v17 = 4294954584;
        v18 = 4346;
      }

      else
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v16 = v5;
        v17 = 4294954584;
        v18 = 4344;
      }
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v16 = v5;
      v17 = 4294954584;
      v18 = 4342;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v5;
    v17 = 4294954584;
    v18 = 4340;
  }

LABEL_77:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v17, "<<<< ImageDescriptionBridge >>>>", v18, v16, v14, v15);
}

CFTypeID figBridge_WalkAndConvertVideoFormatDescriptionExtensions(const opaqueCMFormatDescription *a1, char a2, void *a3, uint64_t a4)
{
  v180 = 0;
  Extension = CMFormatDescriptionGetExtension(a1, @"SampleDescriptionExtensionAtoms");
  v177 = a2;
  if (Extension)
  {
    v9 = Extension;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v9))
    {
      Count = CFDictionaryGetCount(v9);
      if (Count)
      {
        v12 = Count;
        v13 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
        v14 = malloc_type_calloc(v12, 8uLL, 0x6004044C4A2DFuLL);
        if (v13)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        v175 = v13;
        v179 = v14;
        if (v15)
        {
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x1576, v4, v17, v18);
        }

        else
        {
          v19 = v14;
          v176 = a4;
          v173 = a3;
          CFDictionaryGetKeysAndValues(v9, v13, v14);
          v20 = 0;
          v21 = 0;
          v22 = v13;
          v23 = v19;
          do
          {
            v24 = v22[v21];
            v25 = v23[v21];
            v26 = CFStringGetTypeID();
            if (v26 == CFGetTypeID(v24) && CFStringGetPascalString(v24, buffer, 5, 0) && buffer[0] == 4)
            {
              v28 = bswap32(*&buffer[1]);
              if (v28)
              {
                v29 = CFGetTypeID(v25);
                if (CFDataGetTypeID() == v29)
                {
                  Length = CFDataGetLength(v25);
                  v31 = (Length + 8);
                  if (v176)
                  {
                    *(v176 + v20) = bswap64(v28 | (v31 << 32));
                    BytePtr = CFDataGetBytePtr(v25);
                    memcpy((v176 + v20 + 8), BytePtr, Length);
                  }

                  v20 += v31;
                  v22 = v175;
                }

                else if (CFArrayGetTypeID() == v29)
                {
                  v172 = v28;
                  v33 = CFArrayGetCount(v25);
                  if (v33)
                  {
                    v34 = v33;
                    for (i = 0; i != v34; ++i)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v25, i);
                      v37 = CFDataGetTypeID();
                      if (v37 == CFGetTypeID(ValueAtIndex))
                      {
                        v38 = CFDataGetLength(ValueAtIndex);
                        v39 = (v38 + 8);
                        if (v176)
                        {
                          *(v176 + v20) = bswap64(v172 | (v39 << 32));
                          v40 = CFDataGetBytePtr(ValueAtIndex);
                          v22 = v175;
                          memcpy((v176 + v20 + 8), v40, v38);
                        }

                        v20 += v39;
                        a2 = v177;
                      }

                      v23 = v179;
                    }
                  }
                }
              }
            }

            ++v21;
          }

          while (v21 != v12);
          v180 = v20;
          a3 = v173;
          a4 = v176;
        }

        if (v175)
        {
          free(v175);
        }

        if (v179)
        {
          free(v179);
        }
      }
    }
  }

  v41 = v180;
  if (a4)
  {
    v42 = a4 + v180;
  }

  else
  {
    v42 = 0;
  }

  if ((a2 & 2) != 0)
  {
    v47 = a1;
    goto LABEL_96;
  }

  v43 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965D88]);
  if (v43)
  {
    v44 = v43;
    v45 = CFGetTypeID(v43);
    if (v45 == CFStringGetTypeID())
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  v48 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F30]);
  v49 = v48;
  if (v48)
  {
    v50 = CFGetTypeID(v48);
    if (v50 != CFStringGetTypeID())
    {
      v49 = 0;
    }
  }

  v51 = a2 & 1;
  v52 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F98]);
  v174 = a3;
  if (v52)
  {
    v53 = v52;
    v54 = CFGetTypeID(v52);
    if (v54 == CFStringGetTypeID())
    {
      v55 = v53;
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    v55 = 0;
  }

  v56 = CMFormatDescriptionGetExtension(a1, @"FullRangeVideo");
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  IntegerCodePointForString = CVColorPrimariesGetIntegerCodePointForString(v46);
  v59 = CVTransferFunctionGetIntegerCodePointForString(v49);
  v60 = CVYCbCrMatrixGetIntegerCodePointForString(v55);
  if (MediaSubType > 1836415072)
  {
    if (MediaSubType <= 1902667125)
    {
      if (MediaSubType == 1836415073)
      {
        goto LABEL_67;
      }

      v61 = 1869117027;
    }

    else
    {
      if (MediaSubType == 1902667126 || MediaSubType == 1902998904)
      {
        goto LABEL_67;
      }

      v61 = 1902671459;
    }

LABEL_66:
    if (MediaSubType != v61)
    {
      goto LABEL_77;
    }

    goto LABEL_67;
  }

  if (MediaSubType <= 1718908527)
  {
    if (MediaSubType == 1667790435)
    {
      goto LABEL_67;
    }

    v61 = 1718908520;
    goto LABEL_66;
  }

  if (MediaSubType != 1718908528 && MediaSubType != 1751479857)
  {
    v61 = 1752589105;
    goto LABEL_66;
  }

LABEL_67:
  if (v59 == 18)
  {
    if (v51)
    {
      v62 = CMFormatDescriptionGetExtension(a1, @"SampleDescriptionExtensionAtoms");
      if (v62)
      {
        v63 = v62;
        v64 = CFGetTypeID(v62);
        if (v64 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v63, @"hvcC");
          if (Value)
          {
            v66 = CFArrayGetTypeID();
            if (v66 == CFGetTypeID(Value))
            {
              Value = CFArrayGetValueAtIndex(Value, 0);
            }
          }

          buffer[0] = 0;
          if (!FigHEVCBridge_GetATCSEI(Value, buffer))
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (CMFormatDescriptionGetExtension(a1, @"AlternativeTransferCharacteristics"))
    {
LABEL_70:
      v59 = 14;
    }
  }

LABEL_77:
  if (IntegerCodePointForString == 2 && v59 == 2 && v60 == 2)
  {
    v47 = a1;
    v67 = CMFormatDescriptionGetExtension(a1, @"CVImageBufferICCProfile");
    if (v67)
    {
      v68 = v67;
      v69 = CFDataGetTypeID();
      a3 = v174;
      a2 = v177;
      if (v69 == CFGetTypeID(v68))
      {
        v70 = CFDataGetLength(v68);
        v71 = v70 + 12;
        if (v42)
        {
          *v42 = bswap32(v71) | 0x726C6F6300000000;
          *(v42 + 8) = 1718579824;
          v72 = CFDataGetBytePtr(v68);
          memcpy((v42 + 12), v72, v70);
        }
      }

      else
      {
        v71 = 0;
      }

      goto LABEL_92;
    }

    v71 = 0;
  }

  else
  {
    v71 = v51 | 0x12;
    v47 = a1;
    if (v42)
    {
      *v42 = (v71 << 24) | 0x726C6F6300000000;
      v73 = v51 ? 2020369262 : 1668047726;
      *(v42 + 8) = v73;
      *(v42 + 12) = bswap32(IntegerCodePointForString) >> 16;
      *(v42 + 14) = bswap32(v59) >> 16;
      *(v42 + 16) = bswap32(v60) >> 16;
      if (v51)
      {
        *(v42 + 18) = (*MEMORY[0x1E695E4D0] == v56) << 7;
      }
    }
  }

  a3 = v174;
  a2 = v177;
LABEL_92:
  v180 = v71;
  if (v42)
  {
    v42 += v71;
  }

  else
  {
    v42 = 0;
  }

  v41 += v71;
LABEL_96:
  *buffer = 0;
  v74 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965E80]);
  if (v74 && (v75 = v74, v76 = CFNumberGetTypeID(), v76 == CFGetTypeID(v75)) && CFNumberGetValue(v75, kCFNumberDoubleType, buffer) && (v77 = vcvtd_n_s64_f64(*buffer, 0x10uLL)) != 0)
  {
    if (v42)
    {
      *v42 = 0x616D61670C000000;
      *(v42 + 8) = bswap32(v77);
    }

    v78 = 12;
  }

  else
  {
    v78 = 0;
  }

  v180 = v78;
  if (v42)
  {
    v79 = v42 + v78;
  }

  else
  {
    v79 = 0;
  }

  buffer[0] = 0;
  v80 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965E50]);
  v81 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965E58]);
  if (v80)
  {
    v82 = CFNumberGetTypeID();
    if (v82 == CFGetTypeID(v80))
    {
      CFNumberGetValue(v80, kCFNumberSInt8Type, buffer);
    }
  }

  if (v81 && (v83 = CFStringGetTypeID(), v83 == CFGetTypeID(v81)))
  {
    if (CFEqual(v81, *MEMORY[0x1E6965E78]))
    {
      v84 = 1;
    }

    else if (CFEqual(v81, *MEMORY[0x1E6965E70]))
    {
      v84 = 6;
    }

    else if (CFEqual(v81, *MEMORY[0x1E6965E60]))
    {
      v84 = 9;
    }

    else if (CFEqual(v81, *MEMORY[0x1E6965E68]))
    {
      v84 = 14;
    }

    else
    {
      v84 = 0;
    }
  }

  else
  {
    v84 = 0;
  }

  v85 = buffer[0];
  if (buffer[0])
  {
    if (v79)
    {
      *v79 = 0x6C6569660A000000;
      *(v79 + 8) = v85;
      *(v79 + 9) = v84;
    }

    v86 = 10;
  }

  else
  {
    v86 = 0;
  }

  v180 = v86;
  if (v79)
  {
    v87 = v79 + v86;
  }

  else
  {
    v87 = 0;
  }

  v88 = v78 + v41 + v86;
  *buffer = 0;
  v89 = CMFormatDescriptionGetExtension(v47, @"CVBytesPerRow");
  if (v89 && (v90 = v89, v91 = CFNumberGetTypeID(), v91 == CFGetTypeID(v90)) && CFNumberGetValue(v90, kCFNumberSInt32Type, buffer))
  {
    if (v87)
    {
      *v87 = 0x62776F720C000000;
      *(v87 + 8) = bswap32(*buffer);
    }

    v92 = 12;
  }

  else
  {
    v92 = 0;
  }

  v180 = v92;
  if (v87)
  {
    v93 = v87 + v92;
  }

  else
  {
    v93 = 0;
  }

  v94 = v88 + v92;
  buffer[0] = 0;
  valuePtr[4] = 0;
  v95 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965D00]);
  v96 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965CF0]);
  if (v95 && (v97 = v96, v98 = CFStringGetTypeID(), v98 == CFGetTypeID(v95)) && figBridge_ConvertChromaLocationStringToUInt8(v95, buffer))
  {
    if (!v97 || (v99 = CFStringGetTypeID(), v99 != CFGetTypeID(v97)) || !figBridge_ConvertChromaLocationStringToUInt8(v97, &valuePtr[4]))
    {
      valuePtr[4] = buffer[0];
    }

    if (v93)
    {
      *v93 = 0x6D7268630A000000;
      *(v93 + 8) = buffer[0];
      *(v93 + 9) = valuePtr[4];
    }

    v100 = 10;
  }

  else
  {
    v100 = 0;
  }

  v180 = v100;
  if (v93)
  {
    v101 = (v93 + v100);
  }

  else
  {
    v101 = 0;
  }

  v102 = v94 + v100;
  *buffer = 0;
  *&valuePtr[4] = 0;
  v103 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965EF8]);
  if (!v103)
  {
    goto LABEL_159;
  }

  v104 = v103;
  v105 = CFGetTypeID(v103);
  if (v105 != CFDictionaryGetTypeID())
  {
    goto LABEL_159;
  }

  v106 = CFDictionaryGetValue(v104, *MEMORY[0x1E6965EF0]);
  v107 = CFDictionaryGetValue(v104, *MEMORY[0x1E6965F00]);
  if (v106)
  {
    v108 = CFNumberGetTypeID();
    if (v108 == CFGetTypeID(v106))
    {
      CFNumberGetValue(v106, kCFNumberSInt32Type, buffer);
    }
  }

  if (v107 && (v109 = CFNumberGetTypeID(), v109 == CFGetTypeID(v107)))
  {
    CFNumberGetValue(v107, kCFNumberSInt32Type, &valuePtr[4]);
    v110 = 0;
    if (*buffer >= 1 && *&valuePtr[4] >= 1)
    {
      if (v101)
      {
        v111 = bswap64(*&valuePtr[4] | (*buffer << 32));
        *v101 = 0x7073617010000000;
        v101[1] = v111;
      }

      v110 = 2;
    }
  }

  else
  {
LABEL_159:
    v110 = 0;
  }

  v180 = v110 * 8;
  if (v101)
  {
    v112 = &v101[v110];
  }

  else
  {
    v112 = 0;
  }

  VEXUBridge_ConvertVideoExtendedUsageExtensionToAtom(v47, &v180, v112);
  if (v112)
  {
    v113 = v112 + v180;
  }

  else
  {
    v113 = 0;
  }

  v114 = v102 + v110 * 8 + v180;
  *buffer = 0;
  *valuePtr = 0;
  v183 = 0;
  v181 = 0;
  v182 = 0;
  v115 = CMFormatDescriptionGetExtension(v47, *MEMORY[0x1E6965D70]);
  if (v115 && (v116 = v115, v117 = CFGetTypeID(v115), v117 == CFDictionaryGetTypeID()))
  {
    figBridge_ReadRationalOrIntegerFromDictionary(v116, @"WidthAsRational", *MEMORY[0x1E6965D80], buffer, &valuePtr[4]);
    figBridge_ReadRationalOrIntegerFromDictionary(v116, @"HeightAsRational", *MEMORY[0x1E6965D60], valuePtr, &v183);
    figBridge_ReadRationalOrIntegerFromDictionary(v116, @"HorizontalOffsetAsRational", *MEMORY[0x1E6965D68], &v182 + 4, &v182);
    figBridge_ReadRationalOrIntegerFromDictionary(v116, @"VerticalOffsetAsRational", *MEMORY[0x1E6965D78], &v181 + 4, &v181);
    v118 = 0;
    v119 = *buffer;
    if (*buffer)
    {
      v120 = *valuePtr;
      if (*valuePtr)
      {
        v121 = *&valuePtr[4];
        if (*&valuePtr[4])
        {
          v122 = v183;
          if (v183)
          {
            v123 = v182;
            if (v182)
            {
              v124 = v181;
              if (v181)
              {
                if (v113)
                {
                  *v113 = 0x70616C6328000000;
                  v125 = bswap32(v119);
                  v126 = bswap32(v121);
                  v127 = bswap32(v122);
                  v128 = bswap32(HIDWORD(v182));
                  v129 = bswap32(HIDWORD(v181));
                  *(v113 + 8) = v125;
                  *(v113 + 12) = v126;
                  *(v113 + 16) = bswap32(v120);
                  *(v113 + 20) = v127;
                  *(v113 + 24) = v128;
                  *(v113 + 28) = bswap32(v123);
                  *(v113 + 32) = v129;
                  *(v113 + 36) = bswap32(v124);
                }

                v118 = 40;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v118 = 0;
  }

  v180 = v118;
  if (v113)
  {
    v130 = (v113 + v118);
  }

  else
  {
    v130 = 0;
  }

  v131 = v114 + v118;
  if ((a2 & 2) == 0)
  {
    figBridge_ConvertCFDataExtensionToAtom(v47, &v180, v130, @"MasteringDisplayColorVolume", 0x6D646376u);
    v132 = v180;
    if (v130)
    {
      v133 = &v130[v180];
    }

    else
    {
      v133 = 0;
    }

    figBridge_ConvertCFDataExtensionToAtom(v47, &v180, v133, @"ContentLightLevelInfo", 0x636C6C69u);
    if (v133)
    {
      v134 = &v133[v180];
    }

    else
    {
      v134 = 0;
    }

    v135 = v132 + v180;
    figBridge_ConvertCFDataExtensionToAtom(v47, &v180, v134, @"AmbientViewingEnvironment", 0x616D7665u);
    if (v134)
    {
      v136 = &v134[v180];
    }

    else
    {
      v136 = 0;
    }

    v137 = v135 + v180;
    figBridge_ConvertCFDataExtensionToAtom(v47, &v180, v136, @"ContentColorVolume", 0x63636C76u);
    if (v136)
    {
      v130 = &v136[v180];
    }

    else
    {
      v130 = 0;
    }

    v131 += v137 + v180;
  }

  if ((a2 & 1) == 0)
  {
    v138 = CMFormatDescriptionGetMediaSubType(v47);
    v139 = CMFormatDescriptionGetExtension(v47, @"AlternativeTransferCharacteristics");
    if (!v139 || (v140 = v139, v141 = CFGetTypeID(v139), v141 != CFStringGetTypeID()))
    {
      v142 = 0;
      goto LABEL_221;
    }

    v142 = 0;
    if (v138 > 1836415072)
    {
      if (v138 > 1902667125)
      {
        if (v138 == 1902667126 || v138 == 1902998904)
        {
          goto LABEL_218;
        }

        v143 = 1902671459;
        goto LABEL_217;
      }

      if (v138 != 1836415073)
      {
        v143 = 1869117027;
        goto LABEL_217;
      }
    }

    else
    {
      if (v138 > 1718908527)
      {
        if (v138 == 1718908528 || v138 == 1751479857)
        {
          goto LABEL_218;
        }

        v143 = 1752589105;
LABEL_217:
        if (v138 == v143)
        {
          goto LABEL_218;
        }

LABEL_221:
        v180 = v142;
        if (v130)
        {
          v130 += v142;
        }

        else
        {
          v130 = 0;
        }

        v131 += v142;
        goto LABEL_225;
      }

      if (v138 != 1667790435)
      {
        v143 = 1718908520;
        goto LABEL_217;
      }
    }

LABEL_218:
    v144 = CVTransferFunctionGetIntegerCodePointForString(v140);
    if (v130)
    {
      *v130 = 0x6863746109000000;
      v130[8] = v144;
    }

    v142 = 9;
    goto LABEL_221;
  }

LABEL_225:
  v145 = CMFormatDescriptionGetExtension(v47, @"AlphaChannelMode");
  if (FigCFEqual(v145, @"StraightAlpha"))
  {
    v146 = 0x10000;
    if (!v130)
    {
LABEL_228:
      v147 = 12;
      goto LABEL_229;
    }

LABEL_227:
    *v130 = 0x6F6D6C610C000000;
    *(v130 + 2) = v146;
    goto LABEL_228;
  }

  if (FigCFEqual(v145, @"PremultipliedAlpha"))
  {
    v146 = 33619968;
    if (!v130)
    {
      goto LABEL_228;
    }

    goto LABEL_227;
  }

  v147 = 0;
LABEL_229:
  v180 = v147;
  if (v130)
  {
    v148 = &v130[v147];
  }

  else
  {
    v148 = 0;
  }

  v149 = v147 + v131;
  v150 = CMFormatDescriptionGetExtension(v47, @"AuxiliaryTypeInfo");
  if (v150 && (v151 = v150, v152 = CFStringGetTypeID(), v152 == CFGetTypeID(v151)))
  {
    v153 = CFStringGetLength(v151);
    *buffer = 0;
    v186.location = 0;
    v186.length = v153;
    v154 = 0;
    if (CFStringGetBytes(v151, v186, 0x8000100u, 0, 0, 0, 0, buffer) == v153)
    {
      v155 = 0;
      if (*buffer >= 1)
      {
        v155 = malloc_type_malloc(*buffer + 1, 0x62240A63uLL);
        *&valuePtr[4] = 0;
        v187.location = 0;
        v187.length = v153;
        if (CFStringGetBytes(v151, v187, 0x8000100u, 0, 0, v155, *buffer, &valuePtr[4]) == v153 && *buffer == *&valuePtr[4])
        {
          v155[*buffer] = 0;
          v156 = *buffer;
          v157 = ++*buffer;
          v154 = (v156 + 9);
          if (v148)
          {
            *v148 = bswap32(v154) | 0x6978756100000000;
            memcpy(v148 + 1, v155, v157);
          }
        }

        else
        {
          v154 = 0;
        }
      }
    }

    else
    {
      v155 = 0;
    }
  }

  else
  {
    v154 = 0;
    v155 = 0;
  }

  v180 = v154;
  free(v155);
  if (v148)
  {
    v158 = v148 + v180;
  }

  else
  {
    v158 = 0;
  }

  v159 = v149 + v180;
  *buffer = 0;
  result = CMFormatDescriptionGetExtension(v47, @"HorizontalFieldOfView");
  if (result && (v161 = result, v162 = CFNumberGetTypeID(), result = CFGetTypeID(v161), v162 == result) && (result = CFNumberGetValue(v161, kCFNumberSInt32Type, buffer), result))
  {
    if (v158)
    {
      *v158 = 0x766F66680C000000;
      *(v158 + 2) = bswap32(*buffer);
    }

    v163 = 12;
  }

  else
  {
    v163 = 0;
  }

  v180 = v163;
  if (v158)
  {
    v164 = &v158[v163];
  }

  else
  {
    v164 = 0;
  }

  v165 = v159 + v163;
  if (a2)
  {
LABEL_269:
    if (!a3)
    {
      return result;
    }

    goto LABEL_270;
  }

  result = CMFormatDescriptionGetExtension(v47, @"LogTransferFunction");
  if (result && (v166 = result, v167 = CFGetTypeID(result), result = CFStringGetTypeID(), v167 == result) && (v168 = CFStringGetLength(v166), *buffer = 0, v188.location = 0, v188.length = v168, result = CFStringGetBytes(v166, v188, 0x600u, 0, 0, 0, 0, buffer), result == v168) && (v169 = *buffer, (*buffer - 1) <= 0xFFFFFFF6))
  {
    v170 = (*buffer + 8);
    if (v164)
    {
      *&valuePtr[4] = 0;
      *v164 = bswap32(v170) | 0x73676F6C00000000;
      v189.location = 0;
      v189.length = v168;
      result = CFStringGetBytes(v166, v189, 0x600u, 0, 0, v164 + 8, *&v169, &valuePtr[4]);
    }
  }

  else
  {
    v170 = 0;
  }

  if (v164)
  {
    v171 = &v164[v170];
  }

  else
  {
    v171 = 0;
  }

  if (v170 + v165)
  {
    if (v171)
    {
      *v171 = 0;
    }

    v165 += v170 + 4;
    goto LABEL_269;
  }

  v165 = 0;
  if (a3)
  {
LABEL_270:
    *a3 = v165;
  }

  return result;
}

size_t figBridge_ConvertH263SampleDescriptionExtensionToCodecType(const opaqueCMFormatDescription *a1, _DWORD *a2)
{
  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (Extensions && figBridge_Is3GP263ExtensionPresent(Extensions))
  {
    *a2 = 1932670515;
    return 0;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE53uLL, "<<<< ImageDescriptionBridge >>>>", 0x167E, v2, v7, v8);
  }
}

CFTypeID figBridge_ConvertMPEG2ProfileExtensionToCodecType(const opaqueCMFormatDescription *a1, void *a2)
{
  result = CMFormatDescriptionGetExtension(a1, @"ConformsToMPEG2VideoProfile");
  if (result)
  {
    v4 = result;
    TypeID = CFNumberGetTypeID();
    result = CFGetTypeID(v4);
    if (TypeID == result)
    {

      return CFNumberGetValue(v4, kCFNumberSInt32Type, a2);
    }
  }

  return result;
}

uint64_t figBridge_FlipImageDescriptionData(uint64_t a1, unint64_t a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    figBridge_FlipImageDescriptionData_cold_5(&v27);
    return v27;
  }

  v3 = bswap32(*a1);
  if (a3)
  {
    v3 = *a1;
  }

  if (v3 < 0x56 || v3 > a2)
  {
    figBridge_FlipImageDescriptionData_cold_4(&v27);
    return v27;
  }

  v5 = *(a1 + 84);
  if (!*(a1 + 84))
  {
    if (v3 <= 0x65)
    {
      figBridge_FlipImageDescriptionData_cold_3(&v27);
    }

    else
    {
      v7 = *(a1 + 92);
      v8 = bswap32(v7) >> 16;
      if (!a3)
      {
        LOWORD(v7) = v8;
      }

      if ((v7 & 0x8000) != 0)
      {
        figBridge_FlipImageDescriptionData_cold_2(&v27);
      }

      else
      {
        if (8 * v7 + 102 <= v3)
        {
          v6 = a1 + 86;
          goto LABEL_16;
        }

        figBridge_FlipImageDescriptionData_cold_1(&v27);
      }
    }

    return v27;
  }

  v6 = 0;
LABEL_16:
  v9 = *(a1 + 8);
  v10 = *(a1 + 28);
  v11 = *(a1 + 32);
  v12 = *(a1 + 34);
  v13 = *(a1 + 44);
  v14 = *(a1 + 48);
  v15 = *(a1 + 66);
  v27 = *(a1 + 50);
  v28 = v15;
  *&v15 = vrev16_s8(*(a1 + 12));
  v16 = vrev32_s8(*(a1 + 20));
  v17 = vrev32_s8(*(a1 + 36));
  v18 = bswap32(*(a1 + 82)) >> 16;
  v19 = bswap32(*(a1 + 84)) >> 16;
  *a1 = vrev32_s8(*a1);
  *(a1 + 8) = bswap32(v9);
  *(a1 + 12) = v15;
  *(a1 + 20) = v16;
  *(a1 + 28) = bswap32(v10);
  *(a1 + 32) = bswap32(v11) >> 16;
  *(a1 + 34) = bswap32(v12) >> 16;
  *(a1 + 36) = v17;
  *(a1 + 44) = bswap32(v13);
  *(a1 + 48) = bswap32(v14) >> 16;
  v20 = v27;
  *(a1 + 66) = v28;
  *(a1 + 50) = v20;
  *(a1 + 82) = v18;
  *(a1 + 84) = v19;
  if (!v5)
  {
    v21 = *(v6 + 6);
    v22 = bswap32(v21) >> 16;
    if (!a3)
    {
      LOWORD(v21) = v22;
    }

    v21 = v21;
    *v6 = bswap32(*v6) | ((bswap32(HIDWORD(*v6)) >> 16) << 32) | (__rev16(HIWORD(*v6)) << 48);
    if (v21 >= 1)
    {
      v23 = (a1 + 94);
      do
      {
        v24 = bswap32(*v23);
        *v23 = HIWORD(v24) | (v24 << 16) | ((bswap32(HIDWORD(*v23)) >> 16) << 32) | (__rev16(HIWORD(*v23)) << 48);
        ++v23;
        v25 = v21--;
      }

      while (v25 > 1);
    }
  }

  return 0;
}

size_t figBridge_WrapPayloadAsCFData(CFAllocatorRef allocator, uint64_t a2, uint64_t a3, void *a4, UInt8 *bytes, CFIndex length, CFTypeRef cf)
{
  if (a2)
  {
    *(a2 + 8 * *a4) = CFRetain(cf);
  }

  if (a3 && (v13 = CFDataCreate(allocator, bytes, length), (*(a3 + 8 * *a4) = v13) == 0))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x5BB, v7, v16, v17);
  }

  else
  {
    result = 0;
  }

  ++*a4;
  return result;
}

CFArrayRef figBridge_CFArrayCreateWithTwoIntegers(const __CFAllocator *a1, int a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = a3;
  valuePtr = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  values = v5;
  v6 = CFNumberCreate(v4, kCFNumberIntType, &v10);
  cf = v6;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = CFArrayCreate(a1, &values, 2, MEMORY[0x1E695E9C0]);
    v5 = values;
    if (!values)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = 0;
  if (v5)
  {
LABEL_9:
    CFRelease(v5);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t figBridge_GetConciseProtectedCodecTypeFromSinfData(uint64_t a1, uint64_t a2)
{
  OriginalFormatFromSinf = FigBridgeGetOriginalFormatFromSinf(a1, a2);
  CommonEncryptionScheme = FigBridgeGetCommonEncryptionScheme(a1, a2);
  v6 = &dword_197165C18;
  v7 = 21;
  while (OriginalFormatFromSinf != *(v6 - 2) || CommonEncryptionScheme != *(v6 - 1))
  {
    v6 += 3;
    if (!--v7)
    {
      return 0;
    }
  }

  return *v6;
}

unint64_t figBridge_ConvertCFDataExtensionToAtom(const opaqueCMFormatDescription *a1, void *a2, _DWORD *a3, CFStringRef extensionKey, unsigned int a5)
{
  result = CMFormatDescriptionGetExtension(a1, extensionKey);
  if (result && (v9 = result, TypeID = CFDataGetTypeID(), result = CFGetTypeID(v9), TypeID == result) && (result = CFDataGetLength(v9), result <= 0xFFFFFFF7))
  {
    v11 = result;
    v12 = (result + 8);
    if (a3)
    {
      *a3 = bswap32(v12);
      a3[1] = bswap32(a5);
      BytePtr = CFDataGetBytePtr(v9);
      result = memcpy(a3 + 2, BytePtr, v11);
    }
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  return result;
}

uint64_t figBridge_ConvertChromaLocationStringToUInt8(const void *a1, char *a2)
{
  if (CFEqual(a1, *MEMORY[0x1E6965D30]))
  {
    v4 = 0;
  }

  else if (CFEqual(a1, *MEMORY[0x1E6965D20]))
  {
    v4 = 1;
  }

  else if (CFEqual(a1, *MEMORY[0x1E6965D40]))
  {
    v4 = 2;
  }

  else if (CFEqual(a1, *MEMORY[0x1E6965D38]))
  {
    v4 = 3;
  }

  else if (CFEqual(a1, *MEMORY[0x1E6965D10]))
  {
    v4 = 4;
  }

  else if (CFEqual(a1, *MEMORY[0x1E6965D08]))
  {
    v4 = 5;
  }

  else
  {
    result = CFEqual(a1, *MEMORY[0x1E6965D28]);
    if (!result)
    {
      return result;
    }

    v4 = -1;
  }

  *a2 = v4;
  return 1;
}

CFTypeID figBridge_ReadRationalOrIntegerFromDictionary(const __CFDictionary *a1, const void *a2, const void *a3, void *a4, _DWORD *a5)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (v10 = Value, v11 = CFArrayGetTypeID(), v11 == CFGetTypeID(v10)) && CFArrayGetCount(v10) == 2 && (ValueAtIndex = CFArrayGetValueAtIndex(v10, 0), v13 = CFArrayGetValueAtIndex(v10, 1), ValueAtIndex) && (v14 = v13, v15 = CFNumberGetTypeID(), v15 == CFGetTypeID(ValueAtIndex)) && v14 && (v16 = CFNumberGetTypeID(), v16 == CFGetTypeID(v14)))
  {
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a4);

    return CFNumberGetValue(v14, kCFNumberSInt32Type, a5);
  }

  else
  {
    result = CFDictionaryGetValue(a1, a3);
    if (result)
    {
      v18 = result;
      TypeID = CFNumberGetTypeID();
      result = CFGetTypeID(v18);
      if (TypeID == result)
      {
        result = CFNumberGetValue(v18, kCFNumberSInt32Type, a4);
        *a5 = 1;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_19(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{

  return FigHEVCBridge_GetHEVCParameterSetAtIndex(a1, 32, 0, a4, a5, 0, 0);
}

void OUTLINED_FUNCTION_4_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  figSoundBridge_ReportParsingFailureMessage(v5, va);
}

uint64_t OUTLINED_FUNCTION_5_17(int a1, int a2, const char *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char __str)
{

  return snprintf(&__str, 0x100uLL, a3);
}

uint64_t FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo(unint64_t a1, unint64_t a2, unsigned __int8 *a3, _WORD *a4, __CFDictionary **a5)
{
  result = 4294954582;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v110 = a2;
  v111 = 0;
  v109 = 32;
  v114 = a1;
  v115 = a2;
  v118 = 0;
  v116 = a1;
  v117 = a1 + a2;
  result = CopyNextWord(&v114);
  if (result)
  {
    return result;
  }

  v11 = v116;
  v12 = v117;
  if (v116 >= v117)
  {
    goto LABEL_115;
  }

  Bits = 0;
  while (1)
  {
    v14 = v12 - v11;
    v15 = HIDWORD(v117) || v14 > 4;
    v16 = Bits;
    if (!v15 || Bits == 3)
    {
      break;
    }

    Bits = GetBits(&v114, 8u);
    v11 = v116;
    v12 = v117;
    if (v116 >= v117)
    {
      v16 = Bits;
      break;
    }
  }

  if (v16 != 3)
  {
LABEL_115:
    FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_1(&v119);
    goto LABEL_118;
  }

  v112 = 0;
  if (!GetBERInteger(&v114, &v112))
  {
    FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_6(&v119);
    goto LABEL_118;
  }

  if (v112 <= 0)
  {
    FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_5(&v119);
    goto LABEL_118;
  }

  if (v116 >= v117 || v117 - (v118 + v116) + (HIDWORD(v117) >> 3) < v112)
  {
    FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_4(&v119);
    goto LABEL_118;
  }

  if (v117 - v116 <= 4 && !HIDWORD(v117))
  {
    FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_3(&v119);
    goto LABEL_118;
  }

  SkipBits(&v114, 0x10u);
  v18 = GetBits(&v114, 8u);
  v19 = v18;
  if (v18 < 0)
  {
    SkipBits(&v114, 0x10u);
    if ((v19 & 0x40) == 0)
    {
LABEL_24:
      if ((v19 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v18 & 0x40) == 0)
  {
    goto LABEL_24;
  }

  v24 = GetBits(&v114, 8u);
  SkipBits(&v114, 8 * v24 + 8);
  if ((v19 & 0x20) != 0)
  {
LABEL_25:
    SkipBits(&v114, 0x10u);
  }

LABEL_26:
  if (v116 < v117 && (v117 - v116 > 4 || HIDWORD(v117)))
  {
    result = MP4Brige_ParseDecoderConfigDescriptor(&v114, &v109, &v111, &v110);
    if (result)
    {
      return result;
    }

    goto LABEL_30;
  }

  FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_2(&v119);
LABEL_118:
  result = v119;
  if (v119)
  {
    return result;
  }

LABEL_30:
  v20 = v109;
  if (a3)
  {
    *a3 = v109;
  }

  result = 0;
  if (v20 > 101)
  {
    if (v20 >= 105)
    {
      if (v20 <= 106)
      {
        if (v20 != 105)
        {
          v21 = v110;
          if (!v110)
          {
            return 0;
          }

          v22 = a1 + v111;
          v23 = 0;
          return MP4Bridge_ParseMPEGVideoSequenceHeader(v22, v21, v23, a5);
        }

        goto LABEL_67;
      }

      if (v20 == 107)
      {
LABEL_67:
        if (v110)
        {
          if (v110 <= 5)
          {
            FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_11();
          }

          else
          {
            v114 = a1 + v111;
            v115 = v110;
            v118 = 0;
            v116 = a1 + v111;
            v117 = a1 + v111 + v110;
            if (!CopyNextWord(&v114))
            {
              SkipBits(&v114, 0xBu);
              v51 = GetBits(&v114, 2u);
              if (v51 == 1)
              {
                FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_10();
              }

              else
              {
                v52 = v51;
                v53 = GetBits(&v114, 2u);
                v54 = 4 - v53;
                if ((4 - v53) < 4u)
                {
                  if (a5)
                  {
                    v55 = v53;
                    SkipBits(&v114, 5u);
                    v56 = GetBits(&v114, 2u);
                    if (v56 == 3)
                    {
                      FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_8();
                      return 0;
                    }

                    if (v56 > 2u)
                    {
                      v57 = 0;
                    }

                    else
                    {
                      v57 = dword_197165F50[v56 & 3];
                    }

                    if (v52)
                    {
                      if (v52 == 2)
                      {
                        v57 >>= 1;
                      }
                    }

                    else
                    {
                      v57 >>= 2;
                    }

                    SkipBits(&v114, 2u);
                    if (GetBits(&v114, 2u) == 3)
                    {
                      v66 = 1;
                    }

                    else
                    {
                      v66 = 2;
                    }

                    switch(v55)
                    {
                      case 1:
                        if (v57 <= 0x5DC0)
                        {
                          v67 = 576;
                        }

                        else
                        {
                          v67 = 1152;
                        }

                        break;
                      case 2:
                        v67 = 1152;
                        break;
                      case 3:
                        v67 = 384;
                        break;
                      default:
                        v67 = 0;
                        break;
                    }

                    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (!Mutable)
                    {
                      FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_7();
                      return 0;
                    }

                    v74 = Mutable;
                    FigCFDictionarySetInt32(Mutable, @"AudioSampleRate", v57, v69, v70, v71, v72, v73);
                    FigCFDictionarySetInt32(v74, @"AudioChannelCount", v66, v75, v76, v77, v78, v79);
                    FigCFDictionarySetInt32(v74, @"AudioFramesPerPacket", v67, v80, v81, v82, v83, v84);
                    *a5 = v74;
                  }

                  if (a4)
                  {
                    *a4 = v54;
                  }

                  return 0;
                }

                FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_9();
              }
            }
          }
        }

        return 0;
      }

      if (v20 != 108)
      {
        return result;
      }

      if (v110 < 7)
      {
        return 0;
      }

      v114 = a1 + v111;
      v115 = v110;
      v118 = 0;
      v116 = a1 + v111;
      v117 = a1 + v111 + v110;
      result = CopyNextWord(&v114);
      if (result)
      {
        return result;
      }

      SkipBits(&v114, 0x10u);
      v46 = GetBits(&v114, 0x10u);
      v47 = GetBits(&v114, 0x10u);
      SkipBits(&v114, 8u);
      v48 = *MEMORY[0x1E695E480];
      v35 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v35)
      {
        PixelAspectRatioDictionary = createPixelAspectRatioDictionary(v48, v46, v47);
        FigCFDictionarySetValue(v35, *MEMORY[0x1E6965EF8], PixelAspectRatioDictionary);
        if (PixelAspectRatioDictionary)
        {
          CFRelease(PixelAspectRatioDictionary);
        }

        if (!a5)
        {
          v50 = v35;
LABEL_66:
          CFRelease(v50);
          return 0;
        }
      }

      else if (!a5)
      {
        return 0;
      }

LABEL_135:
      result = 0;
      *a5 = v35;
      return result;
    }

    v25 = a1 + v111;
    v26 = v110;
    v119 = 0;
    v113 = 0;
    v114 = v25;
    v115 = v110;
    v118 = 0;
    v116 = v25;
    v117 = v25 + v110;
    result = CopyNextWord(&v114);
    if (result)
    {
      return result;
    }

    if (GetBits(&v114, 0x20u) != 1094994246)
    {
      v65 = v25;
      v64 = v26;
      return MP4Bridge_ParseMPEG4AudioSpecificConfig(v65, v64, a4, a5);
    }

    if (GetBits(&v114, 1u) == 1)
    {
      v27 = 9;
      do
      {
        SkipBits(&v114, 8u);
        --v27;
      }

      while (v27);
    }

    SkipBits(&v114, 1u);
    SkipBits(&v114, 1u);
    v28 = GetBits(&v114, 1u);
    SkipBits(&v114, 0x17u);
    if ((GetBits(&v114, 4u) + 1) == 1)
    {
      if (!v28)
      {
        SkipBits(&v114, 0x14u);
      }

      result = MP4Bridge_ParseProgramConfigElement(&v114, &v119, &v113);
      if (!a5 || result)
      {
        return result;
      }

      v29 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v29)
      {
        v35 = v29;
        FigCFDictionarySetInt32(v29, @"AudioSampleRate", v119, v30, v31, v32, v33, v34);
        FigCFDictionarySetInt32(v35, @"AudioChannelCount", v113, v36, v37, v38, v39, v40);
        FigCFDictionarySetInt32(v35, @"AudioFramesPerPacket", 1024, v41, v42, v43, v44, v45);
        goto LABEL_135;
      }

      FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_13(&v112);
    }

    else
    {
      FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_12(&v112);
    }

    return v112;
  }

  if ((v20 - 96) < 6)
  {
    v21 = v110;
    if (!v110)
    {
      return 0;
    }

    v22 = a1 + v111;
    v23 = 1;
    return MP4Bridge_ParseMPEGVideoSequenceHeader(v22, v21, v23, a5);
  }

  if (v20 != 32)
  {
    if (v20 != 64)
    {
      return result;
    }

    v64 = v110;
    v65 = a1 + v111;
    return MP4Bridge_ParseMPEG4AudioSpecificConfig(v65, v64, a4, a5);
  }

  if (!v110)
  {
    if (!FigMP4Bridge_GetESDSObjectTypeAndCopyDecoderSpecificInfo_cold_14(&v114))
    {
      return v114;
    }

    return 4294954582;
  }

  v114 = a1 + v111;
  v115 = v110;
  v118 = 0;
  v116 = a1 + v111;
  v117 = a1 + v111 + v110;
  result = CopyNextWord(&v114);
  if (result)
  {
    return result;
  }

  v58 = v116;
  v59 = v117;
  while (1)
  {
    if (v58 >= v59 || v59 - v58 <= 4 && !HIDWORD(v117))
    {
      return 4294954582;
    }

    while (PeekBits(&v114, 0x18u) != 1)
    {
      GetBits(&v114, 8u);
      if (v116 < v117 && (v117 - v116 > 4 || HIDWORD(v117) != 0))
      {
        continue;
      }

      return 4294954582;
    }

    GetBits(&v114, 0x18u);
    v61 = GetBits(&v114, 8u);
    if (v61 != 181)
    {
      break;
    }

    if (GetBits(&v114, 1u) == 1)
    {
      GetBits(&v114, 4u);
      GetBits(&v114, 3u);
    }

    v63 = GetBits(&v114, 4u);
    if ((v63 - 1) <= 1 && GetBits(&v114, 1u) == 1)
    {
      GetBits(&v114, 3u);
      GetBits(&v114, 1u);
      if (GetBits(&v114, 1u))
      {
        GetBits(&v114, 8u);
        GetBits(&v114, 8u);
        GetBits(&v114, 8u);
      }
    }

    GetBits(&v114, 1u);
    GetBits(&v114, BYTE12(v117) & 7);
    if (PeekBits(&v114, 0x20u) == 434)
    {
LABEL_113:
      result = EatUserData(&v114);
      if (result)
      {
        return result;
      }

      goto LABEL_96;
    }

    if (v63 != 1)
    {
      return 4294954579;
    }

    GetBits(&v114, 0x18u);
    GetBits(&v114, 8u);
    if (PeekBits(&v114, 0x16u) == 32)
    {
      return 4294954579;
    }

LABEL_96:
    v58 = v116;
    v59 = v117;
    if (v116 >= v117 || v117 - v116 <= 4 && !HIDWORD(v117))
    {
      return 4294954582;
    }
  }

  if (v61 == 176)
  {
    v62 = 8;
LABEL_112:
    GetBits(&v114, v62);
    if (PeekBits(&v114, 0x20u) == 434)
    {
      goto LABEL_113;
    }

    goto LABEL_96;
  }

  if (v61 < 0x20)
  {
    goto LABEL_96;
  }

  if ((v61 & 0xFFFFFFF0) != 0x20)
  {
    if (v61 != 179)
    {
      goto LABEL_96;
    }

    GetBits(&v114, 0x14u);
    GetBits(&v114, 1u);
    v62 = BYTE12(v117) & 7;
    goto LABEL_112;
  }

  GetBits(&v114, 1u);
  if (GetBits(&v114, 8u) == 18)
  {
    return 4294954579;
  }

  v85 = 1;
  if (GetBits(&v114, 1u))
  {
    v85 = GetBits(&v114, 4u);
    GetBits(&v114, 3u);
  }

  if (GetBits(&v114, 4u) == 15)
  {
    GetBits(&v114, 8u);
    GetBits(&v114, 8u);
  }

  if (GetBits(&v114, 1u) == 1)
  {
    GetBits(&v114, 2u);
    GetBits(&v114, 1u);
    if (GetBits(&v114, 1u) == 1)
    {
      GetBits(&v114, 0x1Bu);
      GetBits(&v114, 0x1Bu);
      GetBits(&v114, 0x19u);
    }
  }

  v86 = GetBits(&v114, 2u);
  if (v86 == 3 && v85 != 1)
  {
    return 4294954579;
  }

  if (!GetBits(&v114, 1u))
  {
    return 4294954582;
  }

  v87 = GetBits(&v114, 0x10u);
  if (!GetBits(&v114, 1u))
  {
    return 4294954582;
  }

  if (GetBits(&v114, 1u))
  {
    v88 = 32 - __clz(v87);
    if (v87 <= 1)
    {
      v89 = 1;
    }

    else
    {
      v89 = v88;
    }

    GetBits(&v114, v89);
  }

  if (v86 == 2)
  {
    return 4294954579;
  }

  if (v86)
  {
    v98 = 0;
LABEL_188:
    if (!GetBits(&v114, 1u) && GetBits(&v114, 1u))
    {
      v104 = v85 == 1 ? 1 : 2;
      if (!GetBits(&v114, v104) && (v85 == 1 || !v86 || GetBits(&v114, 1u)))
      {
        v105 = GetBits(&v114, 1u);
        result = 4294954579;
        if (v86 == 3 || v105 == 1)
        {
          return result;
        }

        if (GetBits(&v114, 1u) != 1 && (v85 == 1 || !GetBits(&v114, 1u)))
        {
          if (!GetBits(&v114, 1u))
          {
            DefineVOPComplexityEstimationHeader(&v114);
          }

          GetBits(&v114, 1u);
          if (GetBits(&v114, 1u))
          {
            GetBits(&v114, 1u);
          }

          if ((v85 == 1 || !GetBits(&v114, 1u) && !GetBits(&v114, 1u)) && !GetBits(&v114, 1u))
          {
            if (a5 && FigCFDictionaryGetCount(v98) >= 1)
            {
              result = 0;
              *a5 = v98;
              return result;
            }

            if (!v98)
            {
              return 0;
            }

            v50 = v98;
            goto LABEL_66;
          }
        }
      }
    }

    return 4294954579;
  }

  if (!GetBits(&v114, 1u))
  {
    return 4294954582;
  }

  v90 = GetBits(&v114, 0xDu);
  if (!GetBits(&v114, 1u))
  {
    return 4294954582;
  }

  v91 = GetBits(&v114, 0xDu);
  if (!GetBits(&v114, 1u))
  {
    return 4294954582;
  }

  v92 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v92)
  {
    v98 = v92;
    FigCFDictionarySetInt32(v92, @"VideoWidth", v90, v93, v94, v95, v96, v97);
    FigCFDictionarySetInt32(v98, @"VideoHeight", v91, v99, v100, v101, v102, v103);
    goto LABEL_188;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0EuLL, "(Fig)", 0x6D2, v5, v107, v108);
}

uint64_t GetBERInteger(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3 >= v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    Bits = 0x80;
    v8 = 5;
    while ((v4 - v3 > 4 || *(a1 + 36)) && Bits < 0)
    {
      if (!--v8)
      {
        GetBERInteger_cold_1();
        return 0;
      }

      Bits = GetBits(a1, 8u);
      v6 = Bits & 0x7F | (v6 << 7);
      v3 = *(a1 + 16);
      v4 = *(a1 + 24);
      if (v3 >= v4)
      {
        break;
      }
    }
  }

  *a2 = v6;
  return 1;
}

uint64_t SkipBits(uint64_t result, unsigned int a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24);
  if (v2 < v3)
  {
    v5 = result;
    do
    {
      if (v3 - v2 <= 4 && !*(v5 + 36))
      {
        break;
      }

      if (!a2)
      {
        break;
      }

      v6 = a2 >= 4 ? 4 : a2;
      result = GetBits(v5, v6);
      a2 -= v6;
      v2 = *(v5 + 16);
      v3 = *(v5 + 24);
    }

    while (v2 < v3);
  }

  return result;
}

uint64_t MP4Brige_ParseDecoderConfigDescriptor(uint64_t a1, _BYTE *a2, void *a3, unint64_t *a4)
{
  if (GetBits(a1, 8u) != 4)
  {
    MP4Brige_ParseDecoderConfigDescriptor_cold_1(&v24);
    return v24;
  }

  v23 = 0;
  if (!GetBERInteger(a1, &v23))
  {
    MP4Brige_ParseDecoderConfigDescriptor_cold_8(&v24);
    return v24;
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v8 >= v9)
  {
    if (!v23)
    {
LABEL_22:
      MP4Brige_ParseDecoderConfigDescriptor_cold_6(&v24);
      return v24;
    }

LABEL_26:
    MP4Brige_ParseDecoderConfigDescriptor_cold_7(&v24);
    return v24;
  }

  v10 = *(a1 + 36);
  v11 = v9 - (*(a1 + 40) + v8) + (v10 >> 3);
  v12 = v23 - v11;
  if (v23 > v11)
  {
    goto LABEL_26;
  }

  if (v9 - v8 <= 4 && !v10)
  {
    goto LABEL_22;
  }

  Bits = GetBits(a1, 8u);
  if ((GetBits(a1, 8u) & 0x3F8) != 0x10)
  {
    MP4Brige_ParseDecoderConfigDescriptor_cold_2(&v24);
    return v24;
  }

  SkipBits(a1, 0x58u);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (v14 < v15)
  {
    v16 = *(a1 + 36);
    v17 = v15 - (*(a1 + 40) + v14) + (v16 >> 3);
    v22 = 0;
    if (v15 - v14 <= 4 && !v16 || GetBits(a1, 8u) != 5)
    {
      v20 = 0;
      goto LABEL_19;
    }

    if (GetBERInteger(a1, &v22))
    {
      v18 = *(a1 + 16);
      v19 = *(a1 + 24);
      if (v18 >= v19)
      {
        v17 = 0;
      }

      else
      {
        v17 = v19 - (*(a1 + 40) + v18) + (*(a1 + 36) >> 3);
      }

      v20 = v22;
      if (v17 < v22)
      {
        MP4Brige_ParseDecoderConfigDescriptor_cold_4(&v24);
      }

      else
      {
        if (v12 + v17 >= v22)
        {
          goto LABEL_19;
        }

        MP4Brige_ParseDecoderConfigDescriptor_cold_3(&v24);
      }
    }

    else
    {
      MP4Brige_ParseDecoderConfigDescriptor_cold_5(&v24);
    }

    return v24;
  }

  v20 = 0;
  v17 = 0;
LABEL_19:
  result = 0;
  *a2 = Bits;
  *a3 = *(a1 + 8) - v17;
  *a4 = v20;
  return result;
}

uint64_t CopyNextWord(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = v3 - v2;
  if (v3 <= v2 || v3 == v2)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    return 4294954584;
  }

  else
  {
    if (v4 > 3)
    {
      v4 = 4;
    }

    else
    {
      *(a1 + 32) = 0;
    }

    memcpy((a1 + 32), v2, v4);
    v7 = bswap32(*(a1 + 32));
    *(a1 + 32) = v7;
    *(a1 + 36) = 8 * v4;
    if (v4 <= 3)
    {
      *(a1 + 32) = v7 >> (-8 * v4);
    }

    result = 0;
    *(a1 + 40) = v4;
  }

  return result;
}

void FigCFCharacterSetCreatePredefinedEscapeSetForRFC6381()
{
  v0 = CFStringCreateWithBytes(0, FigCFCharacterSetCreatePredefinedEscapeSetForRFC6381_rawCharsToEscapeForRFC6381, 53, 0x600u, 0);
  qword_1ED4CC968 = CFCharacterSetCreateWithCharactersInString(0, v0);
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t UnpackLEB128(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3 >= v4)
  {
    v8 = 0;
    v7 = 0;
    v11 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 128;
    while (1)
    {
      v10 = v4 - v3 > 4 || *(a1 + 36) != 0;
      v11 = v9 != 0;
      if (!v10 || !v9 || v6 > 0x37)
      {
        break;
      }

      Bits = GetBits(a1, 8u);
      ++v7;
      v9 = Bits & 0x80;
      v8 |= (Bits & 0x7F) << v6;
      v6 += 7;
      v3 = *(a1 + 16);
      v4 = *(a1 + 24);
      if (v3 >= v4)
      {
        v11 = v9 != 0;
        break;
      }
    }
  }

  if (a2)
  {
    *a2 = v7;
  }

  if (HIDWORD(v8) != 0 || v11)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t UnpackOBUHeader(uint64_t a1, _BYTE *a2, unsigned int *a3)
{
  Bits = GetBits(a1, 5u);
  SkipBits(a1, 1u);
  v7 = GetBits(a1, 1u);
  v8 = GetBits(a1, 1u);
  v21 = 0;
  result = UnpackLEB128(a1, &v21);
  v10 = result;
  v11 = 0;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  if (v13 < v12)
  {
    v11 = v12 - (*(a1 + 40) + v13) + (*(a1 + 36) >> 3);
  }

  if (v7)
  {
    UnpackLEB128(a1, &v21);
    result = UnpackLEB128(a1, &v21);
  }

  if (v8)
  {
    v14 = UnpackLEB128(a1, &v21);
    result = SkipBits(a1, 8 * v14);
  }

  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (v16 >= v15)
  {
    v17 = 0;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v17 = v15 - (*(a1 + 40) + v16) + (*(a1 + 36) >> 3);
  if (a2)
  {
LABEL_11:
    *a2 = Bits;
  }

LABEL_12:
  if (a3)
  {
    v18 = v11 - v17;
    v19 = v10 >= v18;
    v20 = v10 - v18;
    if (!v19)
    {
      v20 = 0;
    }

    *a3 = v20;
  }

  return result;
}

uint64_t EatUserData(uint64_t a1)
{
  v2 = 4294954582;
  if (GetBits(a1, 0x20u) == 434)
  {
    if (AdvanceToNextStartCode(a1) == 1)
    {
      return 0;
    }

    else
    {
      return 4294954582;
    }
  }

  return v2;
}

uint64_t DefineVOPComplexityEstimationHeader(uint64_t a1)
{
  result = GetBits(a1, 2u);
  if (result <= 1)
  {
    v3 = result;
    if (!GetBits(a1, 1u))
    {
      GetBits(a1, 6u);
    }

    if (!GetBits(a1, 1u))
    {
      GetBits(a1, 4u);
    }

    GetBits(a1, 1u);
    if (!GetBits(a1, 1u))
    {
      GetBits(a1, 4u);
    }

    if (!GetBits(a1, 1u))
    {
      GetBits(a1, 6u);
    }

    result = GetBits(a1, 1u);
    if (v3 == 1)
    {
      result = GetBits(a1, 1u);
      if (!result)
      {

        return GetBits(a1, 2u);
      }
    }
  }

  return result;
}

CFMutableDictionaryRef createPixelAspectRatioDictionary(const __CFAllocator *a1, int a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32(Mutable, *MEMORY[0x1E6965EF0], a2, v6, v7, v8, v9, v10);
  FigCFDictionarySetInt32(Mutable, *MEMORY[0x1E6965F00], a3, v11, v12, v13, v14, v15);
  return Mutable;
}

uint64_t MP4Bridge_ParseProgramConfigElement(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  SkipBits(a1, 4u);
  SkipBits(a1, 2u);
  Bits = GetBits(a1, 4u);
  if (Bits >= 0xD)
  {
    MP4Bridge_ParseProgramConfigElement_cold_1(&v26);
    return v26;
  }

  else
  {
    v25 = a2;
    v24 = sSamplingFrequencies[Bits];
    v7 = GetBits(a1, 4u);
    LOBYTE(v8) = GetBits(a1, 4u);
    LOBYTE(v9) = GetBits(a1, 4u);
    LOBYTE(v10) = GetBits(a1, 2u);
    v11 = GetBits(a1, 3u);
    v12 = GetBits(a1, 4u);
    if (GetBits(a1, 1u) == 1)
    {
      SkipBits(a1, 4u);
    }

    if (GetBits(a1, 1u) == 1)
    {
      SkipBits(a1, 4u);
    }

    if (GetBits(a1, 1u) == 1)
    {
      SkipBits(a1, 2u);
      SkipBits(a1, 1u);
    }

    v13 = a3;
    v14 = v7;
    if (v7)
    {
      v15 = 0;
      do
      {
        if (GetBits(a1, 1u) == 1)
        {
          v16 = 2;
        }

        else
        {
          v16 = 1;
        }

        v15 += v16;
        SkipBits(a1, 4u);
        --v14;
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v8 = v8;
    if (v8)
    {
      do
      {
        if (GetBits(a1, 1u) == 1)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v15 += v17;
        SkipBits(a1, 4u);
        --v8;
      }

      while (v8);
    }

    v9 = v9;
    if (v9)
    {
      do
      {
        if (GetBits(a1, 1u) == 1)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        v15 += v18;
        SkipBits(a1, 4u);
        --v9;
      }

      while (v9);
    }

    v19 = v10;
    if (v10)
    {
      v10 = v10;
      do
      {
        SkipBits(a1, 4u);
        --v10;
      }

      while (v10);
      v15 += v19;
    }

    v20 = v11;
    if (v11)
    {
      do
      {
        SkipBits(a1, 4u);
        --v20;
      }

      while (v20);
    }

    v21 = v12;
    if (v12)
    {
      do
      {
        SkipBits(a1, 1u);
        SkipBits(a1, 4u);
        --v21;
      }

      while (v21);
    }

    GetBits(a1, *(a1 + 36) & 7);
    for (i = GetBits(a1, 8u); i; --i)
    {
      SkipBits(a1, 8u);
    }

    if (v25)
    {
      *v25 = v24;
    }

    result = 0;
    if (v13)
    {
      *v13 = v15;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_7_14@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = 0.0;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v11 - 104) = 0;
  *(v11 - 144) = a9 + a1;
  *(v11 - 136) = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_8()
{
  v2 = *(v0 - 108) & 7;

  return GetBits(v0 - 144, v2);
}

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return GetBits(va, 1u);
}

uint64_t OUTLINED_FUNCTION_21_6(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return GetBits(va, 4u);
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return GetBits(va, 2u);
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return GetBits(va, 0xEu);
}

uint64_t FigTransportConnectionXPCClientCreate(uint64_t a1, void *a2)
{
  if (ntcxpc_getConnectionShared_once != -1)
  {
    FigTransportConnectionXPCClientCreate_cold_1();
  }

  if (ntcxpc_getConnectionShared_transportConnection)
  {
    v3 = CFRetain(ntcxpc_getConnectionShared_transportConnection);
    *a2 = v3;
    if (v3)
    {
      return 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return 4294955245;
}

void __ntcxpc_getConnectionShared_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v13, &type);
  v1 = v13[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFE;
  }

  if (v3)
  {
    v13[1] = 136315138;
    v14 = "ntcxpc_getConnectionShared_block_invoke";
    v4 = _os_log_send_and_compose_impl();
    LOBYTE(v1) = v13[0];
  }

  else
  {
    v4 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v4, v4 != &v15, v1, 0, v2);
  v5 = *MEMORY[0x1E695E480];
  ClassID = NeroTransportConnectionGetClassID();
  if (!CMDerivedObjectCreate(v5, &kFigTransportConnectionXPCVTable, ClassID, &ntcxpc_getConnectionShared_transportConnection, v7, v8, v9, v10))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(ntcxpc_getConnectionShared_transportConnection);
    if (ntcxpc_getClient_once != -1)
    {
      __ntcxpc_getConnectionShared_block_invoke_cold_1();
    }

    *DerivedStorage = ntcxpc_getClient_client;
    ntcxpc_initTransportConnection(ntcxpc_getConnectionShared_transportConnection);
  }
}

void ntcxpc_initTransportConnection(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = 0;
  v5 = 0;
  v2 = FigXPCCreateBasicMessage(0x696E6974u, 0, &v5);
  v3 = 0;
  if (!v2)
  {
    FigXPCRemoteClientSendSyncMessageCreatingReply(*DerivedStorage, v5, &v4);
    v3 = v4;
  }

  FigXPCRelease(v3);
  FigXPCRelease(v5);
}

void ntcxpc_Finalize()
{
  v7 = 0;
  v6 = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v7, &v6);
  v1 = v7;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v6))
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFE;
  }

  if (v3)
  {
    v4 = _os_log_send_and_compose_impl();
    LOBYTE(v1) = v7;
  }

  else
  {
    v4 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v4, v4 != &v5, v1, 0, v2);
  __break(1u);
}

__CFString *ntcxpc_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTransportConnectionXPC %p>", a1);
  return Mutable;
}

void __ntcxpc_getClient_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v18 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v18, &type);
  v2 = v18;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 0xFFFFFFFE;
  }

  if (v4)
  {
    v19 = 136315394;
    v20 = "ntcxpc_getClient_block_invoke";
    v21 = 2080;
    v22 = "com.apple.coremedia.nerotransportconnectionxpc";
    v5 = _os_log_send_and_compose_impl();
    LOBYTE(v2) = v18;
  }

  else
  {
    v5 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v5, v5 != v23, v2, 0, v3);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"FigTransportNTCXPCServerDied");
  FigCFDictionarySetInt32(Mutable, @"xpcRemoteClientOption_QueuePriority", 28, v6, v7, v8, v9, v10);
  v11 = FigXPCRemoteClientCreate("com.apple.coremedia.nerotransportconnectionxpc", kFigTransportConnectionXPC_FigTransportConnectionClass_block_invoke_clientCallbacks, Mutable, &ntcxpc_getClient_client);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v18, &type);
    v13 = v18;
    if (os_log_type_enabled(v12, type))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v19 = 136315394;
      v20 = "ntcxpc_getClient_block_invoke";
      v21 = 1024;
      LODWORD(v22) = v11;
      v16 = _os_log_send_and_compose_impl();
      LOBYTE(v13) = v18;
    }

    else
    {
      v16 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v16, v16 != v23, v13, 0, v14);
  }
}

void ntcxpc_handleServerDeath()
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v6, &type);
  v1 = v6[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v3 = v1;
  }

  else
  {
    v3 = v1 & 0xFFFFFFFE;
  }

  if (v3)
  {
    v6[1] = 136315138;
    v7 = "ntcxpc_handleServerDeath";
    v4 = _os_log_send_and_compose_impl();
    LOBYTE(v1) = v6[0];
  }

  else
  {
    v4 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v4, v4 != &v8, v1, 0, v2);
  if (ntcxpc_getConnectionShared_once != -1)
  {
    ntcxpc_handleServerDeath_cold_1();
  }

  ntcxpc_initTransportConnection(ntcxpc_getConnectionShared_transportConnection);
}

uint64_t ntcxpc_handleServerMessage(void *a1)
{
  if (ntcxpc_getConnectionShared_once != -1)
  {
    FigTransportConnectionXPCClientCreate_cold_1();
  }

  v2 = ntcxpc_getConnectionShared_transportConnection;
  v5 = 0;
  result = FigXPCMessageGetOpCode(a1, &v5);
  if (!result)
  {
    if (v5 == 1701671783)
    {
      v6 = 0;
      DerivedStorage = CMBaseObjectGetDerivedStorage(v2);
      if (!*(DerivedStorage + 16))
      {
        ntcxpc_handleServerMessage_cold_2(a1, &v6, DerivedStorage);
      }

      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

void figCustomAllocatorsInit(char a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __figCustomAllocatorsInit_block_invoke;
  block[3] = &__block_descriptor_tmp_30;
  v2 = a1;
  if (figCustomAllocatorsInit_onceToken != -1)
  {
    dispatch_once(&figCustomAllocatorsInit_onceToken, block);
  }
}

void *__figCustomAllocatorsInit_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  figCustomAllocatorsInit_allocators = "CMMediaAllocator";
  qword_1ED4CC988 = "CMPermanentAllocator";
  if (v1)
  {
    qword_1ED4CC978 = malloc_create_zone(0, 0);
    malloc_set_zone_name(qword_1ED4CC978, "CMMediaZone");
    qword_1ED4CC980 = darwinMemory_createCustomAllocator(&figCustomAllocatorsInit_allocators);
    qword_1ED4CC990 = malloc_create_zone(0, 0);
    malloc_set_zone_name(qword_1ED4CC990, "CMPermanentZone");
    result = darwinMemory_createCustomAllocator(&qword_1ED4CC988);
    qword_1ED4CC998 = result;
  }

  else
  {
    qword_1ED4CC980 = *MEMORY[0x1E695E480];
    v3 = qword_1ED4CC980;
    qword_1ED4CC978 = malloc_default_zone();
    qword_1ED4CC998 = v3;
    result = malloc_default_zone();
    qword_1ED4CC990 = result;
  }

  return result;
}

CFAllocatorRef darwinMemory_createCustomAllocator(void *a1)
{
  if (!_os_feature_enabled_impl() || (result = CFAllocatorCreateWithZone()) == 0)
  {
    context.version = 0;
    context.info = a1;
    context.retain = 0;
    context.release = 0;
    context.copyDescription = darwinMemory_copyDebugDescForCustomAllocator;
    context.allocate = darwinMemory_allocForCustomAllocator;
    context.reallocate = darwinMemory_reallocForCustomAllocator;
    context.deallocate = darwinMemory_deallocForCustomAllocator;
    context.preferredSize = 0;
    return CFAllocatorCreate(0, &context);
  }

  return result;
}

CFStringRef darwinMemory_copyDebugDescForCustomAllocator(uint64_t *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *a1;
  zone_name = malloc_get_zone_name(a1[1]);
  return CFStringCreateWithFormat(v2, 0, @"<%s with zone: %s(%p)>", v3, zone_name, a1[1]);
}

uint64_t metremote_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __metremote_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E74A0400;
  block[4] = &v3;
  if (metremote_ensureClientEstablished_sFigMetricEventTimelineRemoteClientSetupOnce != -1)
  {
    dispatch_once(&metremote_ensureClientEstablished_sFigMetricEventTimelineRemoteClientSetupOnce, block);
  }

  FigXPCRemoteClientKillServerOnTimeout(gFigMetricEventTimelineRemoteClient, *(v4 + 6), "metremote_ensureClientEstablished", 0);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

size_t metremote_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, CFTypeRef *a5)
{
  cf = 0;
  if (a5)
  {
    ClassID = FigMetricEventTimelineGetClassID();
    v15 = CMDerivedObjectCreate(a1, &kMetricEventTimeline_VTable, ClassID, &cf, v11, v12, v13, v14);
    v16 = cf;
    if (v15 || (DerivedStorage = CMBaseObjectGetDerivedStorage(cf), *DerivedStorage = a2, v18 = (DerivedStorage + 2), AllocatorForMedia = FigGetAllocatorForMedia(), v15 = FigMetricEventTimelineCreate(AllocatorForMedia, a3, a4, 0, 0, v18), v16 = cf, v15))
    {
      if (v16)
      {
        CFRelease(v16);
      }
    }

    else
    {
      *a5 = cf;
    }
  }

  else
  {
    metremote_create_cold_1(&v22);
    return v22;
  }

  return v15;
}

uint64_t __metremote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  v3[0] = 1;
  v3[1] = metremote_deadConnectionCallback;
  v3[2] = 0;
  v3[3] = metremote_handleServerMessage;
  v4 = 0u;
  v5 = 0u;
  result = FigXPCRemoteClientCreate("com.apple.coremedia.mediaplaybackd.figmetriceventtimeline.xpc", v3, 0, &gFigMetricEventTimelineRemoteClient);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t metremote_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage(a1);
  *(result + 8) = 1;
  return result;
}

CFStringRef metremote_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigMetricEventTimelineRemote %p %lld]", a1, *DerivedStorage);
}

size_t FigVirtualCaptureCardServerStart()
{
  v3[0] = 2;
  v3[1] = FigVirtualCaptureCardServerReplyingMessageHandler;
  v3[2] = FigVirtualCaptureCardServerNoReplyMessageHandler;
  memset(&v3[3], 0, 24);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcServerOption_SiloObjectIDs", *MEMORY[0x1E695E4D0]);
  v1 = FigXPCServerStart("com.apple.coremedia.figvirtualcapturecard.xpc", v3, Mutable, &gFigVirtualCaptureCardServer);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v1;
}

uint64_t __HandleFigVirtualCaptureCardCreationMessage_block_invoke()
{
  result = FigSimpleMutexCreate();
  qword_1ED4CC9B0 = result;
  return result;
}

uint64_t AudioToolbox_IsAmbisonicChannelLayout(uint64_t a1)
{
  v2 = pAudioFormatIsAmbisonicChannelLayout;
  if (!pAudioFormatIsAmbisonicChannelLayout)
  {
    FigThreadRunOnce(&loadAudioToolboxPointers_sLoadAudioToolboxPointersOnce, loadAudioToolboxPointersOnce);
    v2 = pAudioFormatIsAmbisonicChannelLayout;
    if (!pAudioFormatIsAmbisonicChannelLayout)
    {
      return 0;
    }
  }

  return v2(a1);
}

uint64_t FigHALAudioObjectGetClassID()
{
  if (FigHALAudioObjectGetClassID_sRegisterFigHALAudioDeviceOnce != -1)
  {
    FigHALAudioObjectGetClassID_cold_1();
  }

  return FigHALAudioObjectGetClassID_sFigHALAudioObjectClassID;
}

size_t __FigHALAudioObjectGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&FigHALAudioObjectGetClassID_sFigHALAudioObjectClassDesc, ClassID, 1, &FigHALAudioObjectGetClassID_sFigHALAudioObjectClassID, v1, v2, v3, v4);
}

uint64_t CelestialIsAppleTV()
{
  if (getDeviceClass_onceToken != -1)
  {
    CelestialIsAppleTV_cold_1();
  }

  if (getDeviceClass_deviceClass != 4)
  {
    return CelestialIsAppleTV_sIsAppleTV;
  }

  result = 1;
  CelestialIsAppleTV_sIsAppleTV = 1;
  return result;
}

uint64_t CelestialIsiPad()
{
  if (getDeviceClass_onceToken != -1)
  {
    CelestialIsAppleTV_cold_1();
  }

  if (getDeviceClass_deviceClass != 3)
  {
    return CelestialIsiPad_sIsiPad;
  }

  result = 1;
  CelestialIsiPad_sIsiPad = 1;
  return result;
}

uint64_t CelestialIsiPhone()
{
  if (getDeviceClass_onceToken != -1)
  {
    CelestialIsAppleTV_cold_1();
  }

  if (getDeviceClass_deviceClass != 1)
  {
    return CelestialIsiPhone_sIsiPhone;
  }

  result = 1;
  CelestialIsiPhone_sIsiPhone = 1;
  return result;
}

void CelestialGetSupportedAVCProfileAndLevel(_BYTE *a1, _BYTE *a2)
{
  if (CelestialGetSupportedAVCProfileAndLevel_onceToken == -1)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  CelestialGetSupportedAVCProfileAndLevel_cold_1();
  if (a1)
  {
LABEL_3:
    *a1 = 100;
  }

LABEL_4:
  if (a2)
  {
    *a2 = CelestialGetSupportedAVCProfileAndLevel_sLevel;
  }
}

void __CelestialGetSupportedAVCProfileAndLevel_block_invoke()
{
  v0 = MGCopyAnswer();
  SInt8 = FigCFNumberGetSInt8(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  if (SInt8 <= 0x33)
  {
    if (SInt8 == 51)
    {
      v2 = 51;
    }

    else if (SInt8 <= 0x31)
    {
      if (SInt8 < 0x2A)
      {
        return;
      }

      v2 = 42;
    }

    else
    {
      v2 = 50;
    }
  }

  else
  {
    v2 = 52;
  }

  CelestialGetSupportedAVCProfileAndLevel_sLevel = v2;
}

uint64_t CelestialGetModelSpecificResolutionCap(double *a1, double *a2, __int128 *a3)
{
  v12 = xmmword_197165F80;
  v10 = 0.0;
  v11 = 0.0;
  CelestialGetMainScreenSize(&v11, &v10, 2048.0);
  result = 0;
  v8 = v10;
  v7 = v11;
  if (v11 > 0.0 && v10 > 0.0 && v10 > 7.0)
  {
    v12 = kResolutionCap3K;
    result = 1;
  }

  *a3 = v12;
  *a1 = v7;
  *a2 = v8;
  return result;
}

double CelestialGetMainScreenSize(double *a1, double *a2, double result)
{
  if (a1)
  {
    if (a2)
    {
      *a1 = 0.0;
      *a2 = 0.0;
      v5 = MGGetSInt32Answer();
      v6 = MGGetSInt32Answer();
      v7 = MGGetSInt32Answer();
      if (v5 >= 1 && v6 >= 1)
      {
        v8 = v7;
        v9 = v6;
        if (v5 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v5;
        }

        if (v5 <= v6)
        {
          v9 = v5;
        }

        *a1 = v10 / v8;
        result = v9 / v8;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t CelestialIsAudioAccessory()
{
  if (CelestialIsAudioAccessory_onceToken != -1)
  {
    CelestialIsAudioAccessory_cold_1();
  }

  return CelestialIsAudioAccessory_sIsAudioAccessory;
}

uint64_t __CelestialIsAudioAccessory_block_invoke()
{
  result = MGGetSInt32Answer();
  if (result == 7)
  {
    CelestialIsAudioAccessory_sIsAudioAccessory = 1;
  }

  return result;
}

BOOL CelestialIs1GBAudioAccessory()
{
  if (CelestialIsAudioAccessory_onceToken != -1)
  {
    CelestialIsAudioAccessory_cold_1();
  }

  if (CelestialIsAudioAccessory_sIsAudioAccessory != 1)
  {
    return 0;
  }

  FigThreadRunOnce(&sGetSystemMemorySizeOnce, celestialGetSystemMemorySizeOnce);
  return sMemorySize < 0x40000001;
}

void __CelestialGetModelSpecificName_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  *cStr = 0u;
  v9 = 0u;
  v7 = 64;
  sysctlbyname("hw.model", cStr, &v7, 0, 0);
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v2 = Mutable;
    CFStringAppendCString(Mutable, cStr, 0);
    Length = CFStringGetLength(v2);
    if (CFStringHasSuffix(v2, @"AP"))
    {
      v4 = Length - 2;
    }

    else
    {
      v4 = 0;
    }

    if (CFStringHasSuffix(v2, @"DEV"))
    {
      v5.length = Length - 3;
    }

    else
    {
      v5.length = v4;
    }

    if (v5.length < 1)
    {
      v6 = CFRetain(v2);
    }

    else
    {
      v5.location = 0;
      v6 = CFStringCreateWithSubstring(v0, v2, v5);
    }

    CelestialGetModelSpecificName_sModelNameStr = v6;
    CFRelease(v2);
  }

  if (!CelestialGetModelSpecificName_sModelNameStr)
  {
    CelestialGetModelSpecificName_sModelNameStr = @"D421";
  }
}

uint64_t celestialGetSystemMemorySizeOnce()
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0x1800000006;
  v1 = 8;
  result = sysctl(v2, 2u, &sMemorySize, &v1, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    sMemorySize = 0;
  }

  return result;
}

CFPropertyListRef FigCreateModelSpecificPropertyListForModelAndBundleIdentifier(const __CFAllocator *a1, CFStringRef bundleID, const __CFString *a3, __CFString *cf)
{
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    if (!FigCFBundleIDResourceSubdirExists(bundleID, v4))
    {
      CFRelease(v4);
      v4 = @"Default";
    }
  }

  PropertyListFromBundleIdentifier = FigCreatePropertyListFromBundleIdentifier(a1, bundleID, a3, v4);
  v9 = PropertyListFromBundleIdentifier;
  if (v4 && !PropertyListFromBundleIdentifier)
  {
    v9 = FigCreatePropertyListFromBundleIdentifier(a1, bundleID, a3, 0);
LABEL_8:
    CFRelease(v4);
    return v9;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  return v9;
}

CFPropertyListRef FigCreateModelSpecificPropertyList(const __CFAllocator *a1, const __CFString *a2)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v4 = CelestialGetModelSpecificName_sModelNameStr;

  return FigCreateModelSpecificPropertyListForModelAndBundleIdentifier(a1, @"com.apple.MediaToolbox", a2, v4);
}

CFPropertyListRef CelestialCFCreatePropertyListFromBundleIdentifier(CFStringRef bundleID, const __CFString *a2)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v4 = CelestialGetModelSpecificName_sModelNameStr;
  v5 = *MEMORY[0x1E695E480];

  return FigCreateModelSpecificPropertyListForModelAndBundleIdentifier(v5, bundleID, a2, v4);
}

CFPropertyListRef FigCreateModelSpecificPropertyListFromBundleIdentifier(const __CFAllocator *a1, CFStringRef bundleID, const __CFString *a3)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v6 = CelestialGetModelSpecificName_sModelNameStr;

  return FigCreateModelSpecificPropertyListForModelAndBundleIdentifier(a1, bundleID, a3, v6);
}

uint64_t CelestialCustomizePlaybackImageQueueLevels(uint64_t a1, CMTime *a2, uint64_t a3, uint64_t a4)
{
  result = CelestialIsAppleTV();
  if (result)
  {
    memset(&v13, 0, sizeof(v13));
    v12 = *a2;
    CMTimeConvertScale(&v13, &v12, 60, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault(@"decode_depth", @"com.apple.coremedia", LODWORD(v13.value));
    CMTimeMake(&v12, CFPreferenceNumberWithDefault, 60);
    *&a2->value = *&v12.value;
    epoch = v12.epoch;
    a2->epoch = v12.epoch;
    v10 = *&a2->value;
    *(a3 + 16) = epoch;
    *a3 = v10;
    v11 = *&a2->value;
    *(a4 + 16) = a2->epoch;
    *a4 = v11;
    return 1;
  }

  return result;
}

double CelestialGetStreamingBackBufferDuration(double a1)
{
  FigThreadRunOnce(&sGetSystemMemorySizeOnce, celestialGetSystemMemorySizeOnce);
  if (sMemorySize <= 0x20000000 && !CelestialIsAppleTV())
  {
    return 1.0;
  }

  return a1;
}

uint64_t CelestialShouldLimitConcurrent4K60HEVCDecoding()
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v1 = CelestialGetModelSpecificName_sModelNameStr;

  return FigCFEqual(v1, @"J105a");
}

uint64_t CelestialShouldLimitHDRConcurrentPlayback(_DWORD *a1)
{
  result = CelestialIsAppleTV();
  if (result)
  {
    result = 1;
    if (a1)
    {
      *a1 = 1;
    }
  }

  return result;
}

uint64_t CelestialShouldLimitMVHEVCEncoding()
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v1 = CelestialGetModelSpecificName_sModelNameStr;

  return FigCFEqual(v1, @"J105a");
}

BOOL CelestialShouldLimitMVHEVCDecoding()
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v0 = CelestialGetModelSpecificName_sModelNameStr;
  return FigCFEqual(CelestialGetModelSpecificName_sModelNameStr, @"J71b") || FigCFEqual(v0, @"J72b") || FigCFEqual(v0, @"J120") || FigCFEqual(v0, @"J121") || FigCFEqual(v0, @"J171") || FigCFEqual(v0, @"J172") || FigCFEqual(v0, @"J207") || FigCFEqual(v0, @"J208") != 0;
}

uint64_t CelestialShouldLimit4kConcurrentPlayback(_DWORD *a1)
{
  result = CelestialIsAppleTV();
  if (result)
  {
    result = 1;
    if (a1)
    {
      *a1 = 1;
    }
  }

  return result;
}

uint64_t CelestialShouldLimitHDRFrameRateForPlayback(void *a1, double a2, double a3)
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v6 = FigCFEqual(CelestialGetModelSpecificName_sModelNameStr, @"J105a");
  result = 0;
  if (v6)
  {
    v8 = a3 <= 1920.0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && a2 > 1080.0)
  {
    if (a1)
    {
      *a1 = 0x403E000000000000;
    }

    return 1;
  }

  return result;
}

BOOL CelestialShouldSupportHDR10Plus()
{
  if (CelestialGetModelSpecificName_sModelNameCheckOnce != -1)
  {
    CelestialGetModelSpecificName_cold_1();
  }

  v0 = CelestialGetModelSpecificName_sModelNameStr;
  return !FigCFEqual(CelestialGetModelSpecificName_sModelNameStr, @"J42d") && !FigCFEqual(v0, @"J105a") && !FigCFEqual(v0, @"J305");
}

uint64_t CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA()
{
  if (CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA_once != -1)
  {
    CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA_cold_1();
  }

  return CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA_result;
}

void __CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x1E695E4D0];
    if (v2 == CFDictionaryGetValue(v0, @"buffer-compression") && v2 == CFDictionaryGetValue(v1, @"media-compression"))
    {
      CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA_result = 1;
    }

    CFRelease(v1);
  }
}

uint64_t FigIsAirplaydEnabled()
{
  if (FigIsAirplaydEnabled_once != -1)
  {
    FigIsAirplaydEnabled_cold_1();
  }

  return FigIsAirplaydEnabled_result;
}

uint64_t __FigIsAirplaydEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  FigIsAirplaydEnabled_result = result;
  return result;
}

uint64_t __getDeviceClass_block_invoke()
{
  result = MGGetSInt32Answer();
  getDeviceClass_deviceClass = result;
  return result;
}

uint64_t FigOSTransactionCreateWithProcessName(const char *a1, const char *a2, uint64_t a3, const __CFURL *a4, uint64_t a5)
{
  v100 = *MEMORY[0x1E69E9840];
  v57 = 0;
  cf = 0;
  memset(v99, 0, 128);
  v55 = 0;
  v56 = 0;
  v97 = 0u;
  memset(v98, 0, sizeof(v98));
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  qmemcpy(v67, "n/a", sizeof(v67));
  v10 = time(0);
  v54 = 0;
  theString = 0;
  memset(buffer, 0, sizeof(buffer));
  if (!a1)
  {
    FigOSTransactionCreateWithProcessName_cold_3(v10, v11, v12, v13, v14, v15, v16, v17);
    v38 = 0;
    goto LABEL_42;
  }

  v50 = v10;
  v18 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigOSTransactionUtilities[1], @"figostransactionutilities_trace", @"com.apple.coremedia", "playback-memory", "com.apple.coremedia", v18, 0, gFigOSTransactionUtilities);
  fig_note_initialize_category_with_default_work_cf(&dword_1ED4CC300, @"figostransactionutilities_trace", @"com.apple.coremedia", "playback-memory", "com.apple.coremedia", 1u, 0, &qword_1ED4CC2F8);
  if (a3 < 1 || a5)
  {
    v25 = a2;
    v26 = a1;
    if (a3 < 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    FigServer_CopyProcessName(a3, &cf);
    FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(cf, v99, 128, 0x600u);
    v25 = a2;
    v26 = a1;
  }

  FigApplicationStateMonitorGetHostPIDIfAvailable(a3, &v54, v19, v20, v21, v22, v23, v24);
  if (v54 >= 1)
  {
    FigServer_CopyProcessName(v54, &theString);
    if (theString)
    {
      CFStringGetCString(theString, buffer, 128, 0x600u);
    }
  }

LABEL_9:
  if (a4)
  {
    if (FigIsItOKToLogURLs())
    {
      v27 = CFURLGetString(a4);
      if (v27)
      {
        CFStringGetCString(v27, v67, 512, 0x8000100u);
      }
    }

    else
    {
      v28 = CFURLCopyScheme(a4);
      if (v28)
      {
        v29 = v28;
        v30 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@://<redacted>", v28);
        CFStringGetCString(v30, v67, 512, 0x8000100u);
        if (v30)
        {
          CFRelease(v30);
        }

        CFRelease(v29);
      }
    }
  }

  if (!v54 || v54 == a3)
  {
    asprintf(&v57, "%ld %s %s %d:%s ");
  }

  else
  {
    asprintf(&v57, "%ld %s %s %d->%d:%s->%s ", v50);
  }

  asprintf(&v56, "%s %s", v57, v67);
  v38 = os_transaction_create();
  if (!v38)
  {
    FigOSTransactionCreateWithProcessName_cold_2(0, v31, v32, v33, v34, v35, v36, v37);
    goto LABEL_42;
  }

  if (sFigOSTransactions != -1)
  {
    FigOSTransactionCreateWithProcessName_cold_1();
  }

  v39 = FigCFWeakReferenceHolderCreateWithReferencedObject(v38);
  FigSimpleMutexLock(qword_1ED4CCA30);
  figPruneOSTransactionArrayWhilePerformingOperation(0);
  CFArrayAppendValue(qword_1ED4CCA28, v39);
  if (!a4)
  {
    if (!dword_1ED4CC300)
    {
      goto LABEL_40;
    }

    v52 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2F8, 1, &v52, &type);
    v43 = v52;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v47 = v43;
    }

    else
    {
      v47 = v43 & 0xFFFFFFFE;
    }

    if (v47)
    {
      v59 = 136315650;
      v60 = "FigOSTransactionCreateWithProcessName";
      v61 = 2048;
      v62 = v39;
      v63 = 2080;
      v64 = v57;
      goto LABEL_37;
    }

LABEL_38:
    v48 = 0;
    goto LABEL_39;
  }

  v40 = v57;
  v41 = CFHash(a4);
  asprintf(&v55, "%s %lu", v40, v41);
  if (!dword_1ED4CC300)
  {
    goto LABEL_40;
  }

  v52 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2F8, 1, &v52, &type);
  v43 = v52;
  if (os_log_type_enabled(v42, type))
  {
    v45 = v43;
  }

  else
  {
    v45 = v43 & 0xFFFFFFFE;
  }

  if (!v45)
  {
    goto LABEL_38;
  }

  v59 = 136315650;
  v60 = "FigOSTransactionCreateWithProcessName";
  v61 = 2048;
  v62 = v39;
  v63 = 2080;
  v64 = v55;
LABEL_37:
  v48 = _os_log_send_and_compose_impl();
  LOBYTE(v43) = v52;
LABEL_39:
  fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2F8, 1u, 1, v48, v48 != &v65, v43, 0, v44);
LABEL_40:
  FigSimpleMutexUnlock(qword_1ED4CCA30);
  FigPerformanceMonitorUpdateOSTransactionData(v39, v26, v25, a3);
  if (v39)
  {
    CFRelease(v39);
  }

LABEL_42:
  free(v56);
  free(v57);
  free(v55);
  if (cf)
  {
    CFRelease(cf);
  }

  if (theString)
  {
    CFRelease(theString);
  }

  return v38;
}

void figPruneOSTransactionArrayWhilePerformingOperation(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(qword_1ED4CCA28);
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1ED4CCA28, v4);
      v6 = FigCFWeakReferenceHolderCopyReferencedObject(ValueAtIndex);
      if (v6)
      {
        v7 = v6;
        if (a1)
        {
          (*(a1 + 16))(a1, v6);
        }

        ++v4;
        os_release(v7);
      }

      else
      {
        if (dword_1ED4CC300)
        {
          v14[0] = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1ED4CC2F8, 1, v14, &type);
          v9 = v14[0];
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v11 = v9;
          }

          else
          {
            v11 = v9 & 0xFFFFFFFE;
          }

          if (v11)
          {
            v14[1] = 136315394;
            v15 = "figPruneOSTransactionArrayWhilePerformingOperation";
            v16 = 2048;
            v17 = ValueAtIndex;
            v12 = _os_log_send_and_compose_impl();
            LOBYTE(v9) = v14[0];
          }

          else
          {
            v12 = 0;
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1ED4CC2F8, 1u, 1, v12, v12 != &v18, v9, 0, v10);
        }

        CFArrayRemoveValueAtIndex(qword_1ED4CCA28, v4);
        --v3;
      }
    }

    while (v4 < v3);
  }
}

CFMutableArrayRef FigOSTransactionCopyDescriptions(const __CFAllocator *a1)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (sFigOSTransactions != -1)
  {
    FigOSTransactionCopyDescriptions_cold_1();
  }

  FigSimpleMutexLock(qword_1ED4CCA30);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __FigOSTransactionCopyDescriptions_block_invoke;
  v4[3] = &__block_descriptor_tmp_35;
  v4[4] = a1;
  v4[5] = Mutable;
  figPruneOSTransactionArrayWhilePerformingOperation(v4);
  FigSimpleMutexUnlock(qword_1ED4CCA30);
  return Mutable;
}

void __FigOSTransactionCopyDescriptions_block_invoke(uint64_t a1)
{
  v2 = os_transaction_copy_description();
  v3 = CFStringCreateWithCString(*(a1 + 32), v2, 0x8000100u);
  CFArrayAppendValue(*(a1 + 40), v3);
  if (v3)
  {
    CFRelease(v3);
  }

  free(v2);
}

uint64_t figOSTransactionsInitializer_block_invoke()
{
  qword_1ED4CCA28 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  result = FigSimpleMutexCreateWithFlags(AllocatorForPermanentAllocations, 0);
  qword_1ED4CCA30 = result;
  return result;
}

uint64_t FigCustomURLHandlerRemoteClientCreateWithXPCEndpoint(uint64_t a1, unint64_t **a2)
{
  result = FigXPCRemoteClientCreateWithXPCEndpoint("customURLHandler", a1, FigCustomURLHandlerRemoteClientCreateWithXPCEndpoint_sFigCustomURLHandlerRemoteClientCallbacks, 0, a2);
  if (result)
  {
    FigCustomURLHandlerRemoteClientCreateWithXPCEndpoint_cold_1(&v3);
    return v3;
  }

  return result;
}

uint64_t figCustomURLHandlerRemote_DeadConnectionCallback(const void *a1)
{
  v2 = CFGetTypeID(a1);
  result = FigCustomURLHandlerGetTypeID();
  if (v2 == result)
  {
    result = CMBaseObjectGetDerivedStorage(a1);
    *(result + 40) = 1;
  }

  return result;
}

uint64_t figCustomURLHandlerRemote_MessageHandler(uint64_t a1, void *a2)
{
  v13 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v13);
  if (OpCode || v13 != 1667777603)
  {
    return OpCode;
  }

  if (_MergedGlobals_33 != -1)
  {
    figCustomURLHandlerRemote_MessageHandler_cold_1();
  }

  v5 = qword_1ED4CCA40;
  if (!qword_1ED4CCA40 && !figCustomURLHandlerRemote_MessageHandler_cold_2(&v14))
  {
    return v14;
  }

  v6 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (!v6)
  {
    figCustomURLHandlerRemote_MessageHandler_cold_4(&v14);
    return v14;
  }

  v7 = v6;
  v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v6, 8, v5);
  if (!v8)
  {
    figCustomURLHandlerRemote_MessageHandler_cold_3(v7, &v14);
    return v14;
  }

  v9 = v8;
  *v7 = FigXPCRetain(a2);
  uint64 = xpc_dictionary_get_uint64(a2, "CustomURLHandler_RequestID");
  v11 = *(*(CMBaseObjectGetVTable(a1) + 16) + 56);
  if (v11)
  {
    OpCode = v11(a1, uint64, figCustomURLHandler_handleDataCallbackMessageWithRegisteredRequestInfo, v9);
  }

  else
  {
    OpCode = 4294954514;
  }

  CFRelease(v9);
  return OpCode;
}

size_t FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint(int a1, uint64_t a2, void *a3)
{
  if (FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_sFigCustomURLRemoteXPCRemoteClientByPIDMutexRegisterOnce != -1)
  {
    FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_1();
  }

  if (!gFigCustomURLRemoteXPCRemoteClientByPIDTable)
  {
    FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_4(&v8);
    return v8;
  }

  FigSimpleMutexLock(gFigCustomURLRemoteXPCRemoteClientByPIDMutex);
  v8 = FigCFWeakReferenceTableCopyValue(gFigCustomURLRemoteXPCRemoteClientByPIDTable, a1);
  if (!v8)
  {
    if (a2)
    {
      if (!FigXPCRemoteClientCreateWithXPCEndpoint("customURLHandler", a2, FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_sFigCustomURLHandlerRemoteClientCallbacks, 0, &v8))
      {
        FigCFWeakReferenceTableRemoveValue(gFigCustomURLRemoteXPCRemoteClientByPIDTable, a1);
        v6 = FigCFWeakReferenceTableAddValueAssociatedWithKey(gFigCustomURLRemoteXPCRemoteClientByPIDTable, v8, a1);
        goto LABEL_9;
      }

      FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_2(&v9);
    }

    else
    {
      FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_cold_3(&v9);
    }

    v6 = v9;
    goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  FigSimpleMutexUnlock(gFigCustomURLRemoteXPCRemoteClientByPIDMutex);
  *a3 = v8;
  return v6;
}

uint64_t __FigCustomURLHandlerRemoteClientCopyExistingOrCreateIfNeccessaryWithXPCEndpoint_block_invoke()
{
  gFigCustomURLRemoteXPCRemoteClientByPIDMutex = FigSimpleMutexCreate();
  v0 = *MEMORY[0x1E695E480];

  return FigCFWeakReferenceTableCreate(v0, 1, &gFigCustomURLRemoteXPCRemoteClientByPIDTable);
}

void figCustomURLHandlerRemote_shimHandleRequestCallback(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, void (*a5)(uint64_t, void, uint64_t), uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  *v42 = 0;
  v11 = (DerivedStorage + 40);
  if (*(DerivedStorage + 40))
  {
    v38 = 0;
    v27 = 4294949923;
    goto LABEL_20;
  }

  v12 = DerivedStorage;
  v13 = FigXPCCreateBasicMessage(0x63684852u, *(DerivedStorage + 32), v42);
  if (v13)
  {
    v27 = v13;
LABEL_31:
    v38 = 0;
    goto LABEL_20;
  }

  v43 = 0;
  if (*v11)
  {
    v27 = 4294949923;
    goto LABEL_31;
  }

  NSSecureCodingTypesSerializable = FigCustomURLRequestInfoCreateMutableCopy(*MEMORY[0x1E695E480], a3, &v43, v14, v15, v16, v17, v18);
  if (NSSecureCodingTypesSerializable)
  {
    goto LABEL_24;
  }

  v20 = v43;
  v44 = 0;
  cf = 0;
  v21 = FigCustomURLRequestInfoCopyCryptor(v43, &cf);
  if (v21 == -17360)
  {
    v27 = 0;
  }

  else
  {
    v27 = v21;
    if (!v21)
    {
      IDForCryptorByAssociatingWithClientPID = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID(cf, *(v12 + 8), &v44, v22, v23, v24, v25, v26);
      if (IDForCryptorByAssociatingWithClientPID)
      {
        v27 = IDForCryptorByAssociatingWithClientPID;
        figCustomURLHandlerRemote_shimHandleRequestCallback_cold_1(IDForCryptorByAssociatingWithClientPID);
      }

      else
      {
        v35 = FigCustomURLRequestInfoSetCryptorID(v20, v44, v29, v30, v31, v32, v33, v34);
        if (v35)
        {
          v27 = v35;
          figCustomURLHandlerRemote_shimHandleRequestCallback_cold_2(v35);
        }

        else
        {
          v36 = FigCustomURLRequestInfoSetCryptor(v20, 0);
          v27 = v36;
          if (v36)
          {
            figCustomURLHandlerRemote_shimHandleRequestCallback_cold_3(v36);
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    goto LABEL_29;
  }

  v37 = FigCustomURLRequestInfoSetNetworkHistory(v43, 0);
  if (v37)
  {
    v27 = v37;
    figCustomURLHandlerRemote_shimHandleRequestCallback_cold_4(v37);
LABEL_29:
    if (v43)
    {
      CFRelease(v43);
    }

    goto LABEL_31;
  }

  NSSecureCodingTypesSerializable = FigCustomURLRequestInfoMakeNSSecureCodingTypesSerializable(v43);
  if (NSSecureCodingTypesSerializable)
  {
LABEL_24:
    v27 = NSSecureCodingTypesSerializable;
    goto LABEL_29;
  }

  v38 = v43;
  xpc_dictionary_set_uint64(*v42, "CustomURLHandler_RequestID", a4);
  FigXPCMessageSetCFDictionary(*v42, "CustomURLHandler_RequestInfo", v38);
  v39 = *v12;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 0x40000000;
  v41[2] = __figCustomURLHandlerRemote_shimHandleRequestCallback_block_invoke;
  v41[3] = &__block_descriptor_tmp_11_2;
  v41[4] = a5;
  v41[5] = a6;
  v40 = FigXPCRemoteClientSendAsyncMessageWithNoTimeoutWithReplyHandler(v39, *v42, v41);
  if (!v40)
  {
    goto LABEL_21;
  }

  v27 = v40;
  if (v38)
  {
    figCustomURLHandlerRemote_shimHandleRequestCallback_cold_5(v11, v38, v12);
  }

LABEL_20:
  a5(a6, 0, v27);
LABEL_21:
  FigXPCRelease(*v42);
  if (v38)
  {
    CFRelease(v38);
  }
}

void dataCallbackMessageRec_dealloc(xpc_object_t *a1)
{
  FigXPCRelease(*a1);

  free(a1);
}

uint64_t figCustomURLHandlerRemote_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v2 = *(DerivedStorage + 16);
  if (!v2)
  {
    return 4294954516;
  }

  v3 = *(*(CMBaseObjectGetVTable(*(DerivedStorage + 16)) + 8) + 24);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v2);
}

void figCustomURLHandlerRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v3 = *(DerivedStorage + 32);
  v6 = 0;
  figCustomURLHandlerRemote_Invalidate(a1);
  if (!*(DerivedStorage + 40))
  {
    if (!*DerivedStorage)
    {
      goto LABEL_3;
    }

    figCustomURLHandlerRemote_Finalize_cold_1(*DerivedStorage, v3, &v6, DerivedStorage);
  }

  figCustomURLHandlerRemote_Finalize_cold_2(DerivedStorage);
LABEL_3:
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 24) = 0;
  }

  FigXPCRelease(v6);
}

uint64_t figCustomURLHandlerRemote_HandleRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(CMBaseObjectGetDerivedStorage(a1) + 16);
  v16 = *(*(CMBaseObjectGetVTable(v15) + 16) + 32);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v15, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t figCustomURLHandlerRemote_CancelRequest(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage(a1) + 16);
  v4 = *(*(CMBaseObjectGetVTable(v3) + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t figCustomURLHandlerRemote_RequestSetDormant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage(a1) + 16);
  v6 = *(*(CMBaseObjectGetVTable(v5) + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID(const void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (qword_1ED4CCA48 != -1)
  {
    figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_1();
  }

  v9 = qword_1ED4CCA50;
  if (!qword_1ED4CCA50 && !figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_2(&v20))
  {
    return v20;
  }

  v10 = malloc_type_calloc(1uLL, 0x18uLL, 0xE0040C2B16B6AuLL);
  if (v10)
  {
    v11 = v10;
    v12 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10, 24, v9);
    if (v12)
    {
      v13 = v12;
      if (a1)
      {
        v14 = CFRetain(a1);
      }

      else
      {
        v14 = 0;
      }

      *v11 = v14;
      *(v11 + 1) = a3;
      if (a4)
      {
        v15 = CFRetain(a4);
      }

      else
      {
        v15 = 0;
      }

      *(v11 + 2) = v15;
      v16 = *(DerivedStorage + 16);
      v17 = *(*(CMBaseObjectGetVTable(v16) + 16) + 56);
      if (v17)
      {
        v18 = v17(v16, a2, figCustomURLHandlerRemote_shimLookupAndRetainRegisteredInfoCallback, v13);
      }

      else
      {
        v18 = 4294954514;
      }

      CFRelease(v13);
    }

    else
    {
      figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_3(v11, &v21);
      return v21;
    }
  }

  else
  {
    figCustomURLHandlerRemote_lookupAndRetainRegisteredInfoForRequestID_cold_4(&v22);
    return v22;
  }

  return v18;
}

uint64_t figCustomURLHandlerRemote_shimLookupAndRetainRegisteredInfoCallback(int a1, uint64_t a2, CFDataRef theData, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  BytePtr = CFDataGetBytePtr(theData);
  v18 = *(BytePtr + 1);
  v19 = *(BytePtr + 2);
  v20 = *BytePtr;

  return v18(v20, a2, v19, a4, a5, a6, a7, a8, a9, a10, a11);
}

void remoteHandlerLookupAndRetainRec_dealloc(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

void __NeroValeriaListenerCreate_block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 == 1684628836)
  {
    v10[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v10, &type);
    v5 = v10[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v10[1] = 136315138;
      v11 = "NeroValeriaListenerCreate_block_invoke";
      v8 = _os_log_send_and_compose_impl();
      LOBYTE(v5) = v10[0];
    }

    else
    {
      v8 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v8, v8 != &v12, v5, 0, v6);
  }

  else if (a2 == 1651470958)
  {
    NeroTransportStopAcceptingConnections(**(a1 + 40));
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

void NeroValeriaListenerDestroy(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      NeroTransportInvalidate(v2);
      if (*a1)
      {
        CFRelease(*a1);
        *a1 = 0;
      }
    }

    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }

    free(a1);
  }
}

void NeroValeriaListenerSetActiveStatus(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __NeroValeriaListenerSetActiveStatus_block_invoke;
    v3[3] = &__block_descriptor_tmp_3_0;
    v4 = a2;
    v3[4] = a1;
    dispatch_async(v2, v3);
  }
}

uint64_t __NeroValeriaListenerSetActiveStatus_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **(a1 + 32);
  if (v1)
  {
    return NeroTransportStartAcceptingConnections(v2);
  }

  else
  {
    return NeroTransportStopAcceptingConnections(v2);
  }
}

uint64_t FigTransportSessionGetClassID()
{
  if (_MergedGlobals_34 != -1)
  {
    FigTransportSessionGetClassID_cold_1();
  }

  return qword_1ED4CCA60;
}

size_t session_getClassID(void *a1)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&session_getClassID_sClassDesc, ClassID, 1, a1, v3, v4, v5, v6);
}

uint64_t FigTransportSessionGetTypeID()
{
  if (_MergedGlobals_34 != -1)
  {
    FigTransportSessionGetClassID_cold_1();
  }

  v1 = qword_1ED4CCA60;

  return CMBaseClassGetCFTypeID(v1);
}

uint64_t FigEndpointStreamAirPlayGetClassID()
{
  if (_MergedGlobals_35 != -1)
  {
    FigEndpointStreamAirPlayGetClassID_cold_1();
  }

  return qword_1ED4CCA70;
}

size_t FigEndpointStreamAirPlayGetClassIDCallback(void *a1)
{
  ClassID = FigEndpointStreamGetClassID();

  return FigBaseClassRegisterClass(&FigEndpointStreamAirPlayGetClassIDCallback_sFigEndpointStreamAirPlayClassDesc, ClassID, 0, a1, v3, v4, v5, v6);
}

uint64_t CMTimeSyncCoPresenceNTPClockGetTypeID()
{
  if (_MergedGlobals_36 != -1)
  {
    CMTimeSyncCoPresenceNTPClockGetTypeID_cold_1();
  }

  return qword_1ED4CCA80;
}

uint64_t RegisterFigTimeSyncCoPresenceNTPClockIDType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CCA80 = result;
  return result;
}

size_t CMTimeSyncCoPresenceNTPClockCreate(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (sTimeSyncFunctionsLoadedOnce_0 != -1)
  {
    CMTimeSyncCoPresenceNTPClockCreate_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = qword_1EAF1CE40;
    v13 = v8;
    v14 = 4294947546;
    v15 = 409;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (_MergedGlobals_36 != -1)
  {
    CMTimeSyncCoPresenceNTPClockGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v11 = Instance;
    *(Instance + 16) = 0;
    *(Instance + 24) = FigReentrantMutexCreate();
    *(v11 + 32) = FigConditionVariableCreate();
    *(v11 + 16) = 1;
    FigNTPClientCreate(*MEMORY[0x1E695E480], (v11 + 40));
    goto LABEL_12;
  }

  v12 = qword_1EAF1CE40;
  v13 = v8;
  v14 = 4294947545;
  v15 = 415;
LABEL_10:
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v14, "<<<< TimeSyncCoPresenceNTPClock >>>>", v15, v13, a7, a8);
  if (result)
  {
    return result;
  }

  v11 = 0;
LABEL_12:
  result = 0;
  *a2 = v11;
  return result;
}

void *LoadTimeSyncFunctions_0()
{
  v0 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigTimeSyncCoPresenceNTPClockTrace[1], @"ts_cop_ntp_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v0, 0, gFigTimeSyncCoPresenceNTPClockTrace);
  fig_note_initialize_category_with_default_work_cf(algn_1EAF1CE48, @"ts_cop_ntp_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CE40);
  v1 = dlopen("/System/Library/PrivateFrameworks/TimeSync.framework/TimeSync", 4);
  if (!v1)
  {
    v11 = 111;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v1;
  sTimeSyncClockDispose_0 = dlsym(v1, "TimeSyncClockDispose");
  if (!sTimeSyncClockDispose_0)
  {
    v11 = 92;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncAddgPTPServices = dlsym(v9, "TimeSyncAddgPTPServices");
  if (!sTimeSyncAddgPTPServices)
  {
    v11 = 93;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncgPTPManagerNotifyWhenAvailable = dlsym(v9, "TimeSyncgPTPManagerNotifyWhenAvailable");
  if (!sTimeSyncgPTPManagerNotifyWhenAvailable)
  {
    v11 = 94;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncCopresencePTPInstanceClockIdentifier = dlsym(v9, "TimeSyncCopresencePTPInstanceClockIdentifier");
  if (!sTimeSyncCopresencePTPInstanceClockIdentifier)
  {
    v11 = 95;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncGetCopresencePTPInstanceConfiguration = dlsym(v9, "TimeSyncGetCopresencePTPInstanceConfiguration");
  if (!sTimeSyncGetCopresencePTPInstanceConfiguration)
  {
    v11 = 96;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockGetgPTPGrandmasterIdentity_0 = dlsym(v9, "TimeSyncClockGetgPTPGrandmasterIdentity");
  if (!sTimeSyncClockGetgPTPGrandmasterIdentity_0)
  {
    v11 = 97;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockSetLockStateChangeCallback_0 = dlsym(v9, "TimeSyncClockSetLockStateChangeCallback");
  if (!sTimeSyncClockSetLockStateChangeCallback_0)
  {
    v11 = 98;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockSetMasterChangeCallback = dlsym(v9, "TimeSyncClockSetMasterChangeCallback");
  if (!sTimeSyncClockSetMasterChangeCallback)
  {
    v11 = 99;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockCreateWithClockIdentifer_0 = dlsym(v9, "TimeSyncClockCreateWithClockIdentifer");
  if (!sTimeSyncClockCreateWithClockIdentifer_0)
  {
    v11 = 100;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncAddCopresencePTPInstanceRef = dlsym(v9, "TimeSyncAddCopresencePTPInstanceRef");
  if (!sTimeSyncAddCopresencePTPInstanceRef)
  {
    v11 = 101;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncRemoveCopresencePTPInstance = dlsym(v9, "TimeSyncRemoveCopresencePTPInstance");
  if (!sTimeSyncRemoveCopresencePTPInstance)
  {
    v11 = 102;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockGetLockState_0 = dlsym(v9, "TimeSyncClockGetLockState");
  if (!sTimeSyncClockGetLockState_0)
  {
    v11 = 103;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  off_1ED4CCA88 = dlsym(v9, "TimeSyncClockGetClockTimeForHostTime");
  if (!off_1ED4CCA88)
  {
    v11 = 104;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  off_1ED4CCA90 = dlsym(v9, "TimeSyncClockGetHostTimeForClockTime");
  if (!off_1ED4CCA90)
  {
    v11 = 105;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  result = dlsym(v9, "TimeSyncClockCreateAudioClockDeviceUID");
  sTimeSyncClockCreateAudioClockDeviceUID = result;
  if (!result)
  {
    v11 = 106;
    return LoadTimeSyncFunctions_cold_1_0(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

uint64_t figTimeSyncCoPresenceNTPClock_GetCoPresenceNTPAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v12 = 0uLL;
  memset(&v11, 0, sizeof(v11));
  memset(&v10, 0, sizeof(v10));
  v5 = FigNTPGetTimeOfDay(a1, &v12);
  UpTime = FigGetUpTime();
  if (!v5)
  {
    v7 = UpTime;
    CMTimeMake(&v11, ((*(&v12 + 1) / 1000000000.0 + v12) * 1000000.0), 1000000);
    v8 = FigHostTimeToNanoseconds(v7);
    CMTimeMake(&v10, v8, 1000000000);
    *a2 = v11;
    *a3 = v10;
  }

  return v5;
}

size_t CMTimeSyncCoPresenceNTPClockCopyDeviceIdentifier(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (*(a1 + 80))
  {
    *a2 = sTimeSyncClockCreateAudioClockDeviceUID();
    return 0;
  }

  else
  {
    v10 = qword_1EAF1CE40;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFB2D8uLL, "<<<< TimeSyncCoPresenceNTPClock >>>>", 0x2DB, v8, a7, a8);
  }
}

double figTimeSyncCoPresenceNTPClock_Init(_OWORD *a1)
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

void figTimeSyncCoPresenceNTPClock_Finalize(uint64_t a1)
{
  if (*(a1 + 80))
  {
    sTimeSyncClockDispose_0();
    *(a1 + 80) = 0;
    dispatch_source_cancel(*(a1 + 88));
    v2 = *(a1 + 88);
    if (v2)
    {
      dispatch_release(v2);
      *(a1 + 88) = 0;
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      dispatch_release(v3);
    }

    sTimeSyncRemoveCopresencePTPInstance();
  }

  FigConditionVariableDestroy(*(a1 + 32));
  FigReentrantMutexDestroy(*(a1 + 24));
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

CFStringRef figTimeSyncCoPresenceNTPClock_CopyFormattingDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"CMTimeSyncCoPresenceNTPClock");
}

CFStringRef figTimeSyncCoPresenceNTPClock_CopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"CMTimeSyncCoPresenceNTPClock");
}

uint64_t OUTLINED_FUNCTION_1_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a23 = 0;
  a24 = 0;
  a25 = 0;
  a20 = 0;
  a21 = 0;
  a22 = 0;
  v27 = *(v25 + 40);

  return figTimeSyncCoPresenceNTPClock_GetCoPresenceNTPAnchorTime(v27, &a20, &a23);
}

CMTime *OUTLINED_FUNCTION_2_22@<X0>(CMTime *a1@<X8>, __int128 a2, uint64_t a3, uint64_t a4, CMTime *lhs, uint64_t lhs_8, CMTime *lhs_16, uint64_t a8, uint64_t a9)
{
  lhs_16 = a1;
  a2 = *v9;
  a3 = *(v9 + 16);

  return CMTimeSubtract(&a9, &lhs, &a2);
}

CMTime *OUTLINED_FUNCTION_3_21@<X0>(uint64_t a1@<X8>, __int128 a2, uint64_t a3, uint64_t a4, CMTime *lhs, uint64_t lhs_8, __int128 lhs_16, __int128 a8, uint64_t a9)
{
  *&lhs_16 = a1;
  a2 = a8;
  a3 = a9;

  return CMTimeSubtract((v9 - 80), &lhs, &a2);
}

__n128 OUTLINED_FUNCTION_5_19()
{
  result = *(v1 - 80);
  *v0 = result;
  v0[1].n128_u64[0] = *(v1 - 64);
  return result;
}

__n128 OUTLINED_FUNCTION_6_17@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 80) = *a1;
  *(v1 - 64) = a1[1].n128_u64[0];
  return result;
}

size_t FigAudioDeviceClockServerStart()
{
  v6[0] = 1;
  v6[1] = HandleAudioDeviceClockMessage;
  v7 = 0u;
  v8 = 0u;
  if (FigServer_IsMediaparserd())
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC0E9uLL, "<<<< FADCS(XPC) >>>>", 0xF5, v0, v2, v3);
  }

  else
  {
    if (FigServer_IsMediaplaybackd())
    {
      v5 = "com.apple.coremedia.mediaplaybackd.audiodeviceclock.xpc";
    }

    else
    {
      v5 = "com.apple.coremedia.audiodeviceclock.xpc";
    }

    return FigXPCServerStart(v5, v6, 0, &gAudioDeviceClockServer);
  }
}

uint64_t FigXPCAudioDeviceClockServerCopyClockForID(void *a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID(gAudioDeviceClockServer, a1, a2);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CMClockGetTypeID())
    {
      return 0;
    }

    FigXPCAudioDeviceClockServerCopyClockForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

CMTag CMTagMakeWithSInt64Value(CMTagCategory category, int64_t value)
{
  v2 = category | 0x200000000;
  result.value = value;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

CMTag CMTagMakeWithFloat64Value(CMTagCategory category, Float64 value)
{
  v3 = category | 0x300000000;
  *&result.value = value;
  result.category = v3;
  result.dataType = HIDWORD(v3);
  return result;
}

CMTag CMTagMakeWithOSTypeValue(CMTagCategory category, OSType value)
{
  v2 = value;
  v3 = category | 0x500000000;
  result.category = v3;
  result.dataType = HIDWORD(v3);
  LODWORD(result.value) = value;
  return result;
}

CMTag CMTagMakeWithFlagsValue(CMTagCategory category, uint64_t flagsForTag)
{
  v2 = category | 0x700000000;
  result.value = flagsForTag;
  result.category = v2;
  result.dataType = HIDWORD(v2);
  return result;
}

CFHashCode CMTagHash(CMTag tag)
{
  v5 = tag;
  v4 = tag.dataType & 0xBFFFFFFF;
  if ((tag.dataType & 0xBFFFFFFF) != 0)
  {
    v1 = _CMTagCFHashBytes(&v5.value, 8);
  }

  else
  {
    v1 = 0x1000000;
  }

  v2 = (_CMTagCFHashBytes(&v4, 4) + (v1 << 6) + (v1 >> 2) + 2654435769u) ^ v1;
  return (_CMTagCFHashBytes(&v5, 4) + (v2 << 6) + (v2 >> 2) + 2654435769u) ^ v2;
}

uint64_t _CMTagCFHashBytes(uint64_t a1, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = 0;
    v3 = a2;
  }

  else
  {
    v2 = 0;
    v3 = a2;
    v4 = a2 + 4;
    v5 = ((a2 & 0xFFFFFFFF00000000) + a1 + 3);
    do
    {
      v6 = *(v5 - 3) + 16 * v2;
      v7 = *(v5 - 2) + 16 * (v6 ^ (16 * (v6 >> 28)));
      v8 = *(v5 - 1) + 16 * (v7 ^ (16 * (v7 >> 28)));
      v9 = *v5;
      v5 += 4;
      v10 = v9 + 16 * (v8 ^ (16 * (v8 >> 28)));
      v2 = (v10 ^ ((v10 & 0xF0000000) >> 24)) & ~(v10 & 0xF0000000);
      v3 -= 4;
      v4 -= 4;
    }

    while (v4 > 7);
  }

  switch(v3)
  {
    case 1:
      goto LABEL_11;
    case 2:
LABEL_10:
      v12 = *(a1 + a2 - 2) + 16 * v2;
      v2 = (v12 ^ ((v12 & 0xF0000000) >> 24)) & ~(v12 & 0xF0000000);
LABEL_11:
      v13 = *(a1 + a2 - 1) + 16 * v2;
      return (v13 ^ ((v13 & 0xF0000000) >> 24)) & ~(v13 & 0xF0000000);
    case 3:
      v11 = *(a1 + a2 - 3) + 16 * v2;
      v2 = (v11 ^ ((v11 & 0xF0000000) >> 24)) & ~(v11 & 0xF0000000);
      goto LABEL_10;
  }

  return v2;
}

Boolean CMTagEqualToTag(CMTag tag1, CMTag tag2)
{
  v3 = ((*&tag2.category ^ *&tag1.category) & 0xBFFFFFFF00000000) == 0 && tag1.value == tag2.value;
  if (tag1.category == tag2.category)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

CFComparisonResult CMTagCompare(CMTag tag1, CMTag tag2)
{
  if (tag1.category < tag2.category)
  {
    return -1;
  }

  if (tag1.category != tag2.category)
  {
    return 1;
  }

  v3 = tag1.dataType & 0xBFFFFFFF;
  if ((tag1.dataType & 0xBFFFFFFF) < (tag2.dataType & 0xBFFFFFFF))
  {
    return -1;
  }

  if (v3 != (tag2.dataType & 0xBFFFFFFF))
  {
    return 1;
  }

  v4 = (tag1.value > tag2.value);
  if (tag1.value < tag2.value)
  {
    v4 = kCFCompareLessThan;
  }

  v5 = (*&tag1.value > *&tag2.value);
  if (*&tag1.value < *&tag2.value)
  {
    v5 = kCFCompareLessThan;
  }

  if (v3 == 3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

CFStringRef CMTagCopyDescription(CFAllocatorRef allocator, CMTag tag)
{
  value = tag.value;
  v3 = *&tag.category;
  Mutable = CFStringCreateMutable(allocator, 0);
  v5 = Mutable;
  if (Mutable)
  {
    v10 = bswap32(v3);
    CFStringAppendFormat(Mutable, 0, @"{");
    CFStringAppendFormat(v5, 0, @"category:'%.4s'", &v10);
    v6 = HIDWORD(v3);
    if (!v6)
    {
      CFStringAppendFormat(v5, 0, @"{INVALID}");
      return v5;
    }

    CFStringAppendFormat(v5, 0, @" value:");
    v7 = v6 & 0xBFFFFFFF;
    if ((v6 & 0xBFFFFFFF) <= 2)
    {
      if (!v7)
      {
        CFStringAppendFormat(v5, 0, @"<invalid>", v9);
        goto LABEL_16;
      }

      if (v7 == 2)
      {
        CFStringAppendFormat(v5, 0, @"%lld <int64>", value);
        goto LABEL_16;
      }
    }

    else
    {
      switch(v7)
      {
        case 3:
          CFStringAppendFormat(v5, 0, @"%0.2f <Flt64>", value);
          goto LABEL_16;
        case 5:
          v11 = bswap32(value);
          CFStringAppendFormat(v5, 0, @"'%.4s' <OSType>", &v11);
          goto LABEL_16;
        case 7:
          CFStringAppendFormat(v5, 0, @"0x%llx <flags>", value);
LABEL_16:
          CFStringAppendFormat(v5, 0, @"}");
          return v5;
      }
    }

    CFStringAppendFormat(v5, 0, @"<raw:0x%0llu type:%d>", value, v6 & 0xBFFFFFFF);
    goto LABEL_16;
  }

  return v5;
}

CFDictionaryRef CMTagCopyAsDictionary(CMTag tag, CFAllocatorRef allocator)
{
  value = tag.value;
  dataType = tag.dataType;
  v43 = *MEMORY[0x1E69E9840];
  *keys = xmmword_1E74A0708;
  v42 = @"value";
  SInt32 = 0;
  SInt64 = 0;
  v5 = *MEMORY[0x1E695E480];
  values = FigCFNumberCreateSInt32(*MEMORY[0x1E695E480], tag.category);
  if (!values)
  {
    CMTagCopyAsDictionary_cold_4(0, v6, v7, v8, v9, v10, v11, v12);
LABEL_14:
    v34 = 0;
    goto LABEL_6;
  }

  SInt32 = FigCFNumberCreateSInt32(v5, dataType & 0xBFFFFFFF);
  if (!SInt32)
  {
    CMTagCopyAsDictionary_cold_3(0, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_14;
  }

  SInt64 = FigCFNumberCreateSInt64(v5, value);
  if (!SInt64)
  {
    CMTagCopyAsDictionary_cold_2(0, v20, v21, v22, v23, v24, v25, v26);
    goto LABEL_14;
  }

  v34 = CFDictionaryCreate(allocator, keys, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v34)
  {
    CMTagCopyAsDictionary_cold_1(0, v27, v28, v29, v30, v31, v32, v33);
  }

LABEL_6:
  for (i = 0; i != 24; i += 8)
  {
    v36 = *(&values + i);
    if (v36)
    {
      CFRelease(v36);
    }
  }

  return v34;
}

void *FigTagCopyAsXPCDictionary(unint64_t a1, uint64_t a2)
{
  empty = xpc_dictionary_create_empty();
  v12 = empty;
  if (empty)
  {
    xpc_dictionary_set_uint64(empty, "CMTagCategory", a1);
    xpc_dictionary_set_uint64(v12, "CMTagDataType", HIDWORD(a1) & 0xFFFFFFFFBFFFFFFFLL);
    xpc_dictionary_set_uint64(v12, "CMTagValue", a2);
  }

  else
  {
    FigTagCopyAsXPCDictionary_cold_1(0, v5, v6, v7, v8, v9, v10, v11);
  }

  return v12;
}

uint64_t FigTagMakeFromXPCDictionary(void *a1)
{
  if (a1)
  {
    uint64 = xpc_dictionary_get_uint64(a1, "CMTagCategory");
    v3 = xpc_dictionary_get_uint64(a1, "CMTagDataType");
    xpc_dictionary_get_uint64(a1, "CMTagValue");
    v4 = HIDWORD(uint64);
    if (HIDWORD(v3))
    {
      v5 = 0;
    }

    else
    {
      v5 = v3 << 32;
    }

    if (HIDWORD(v3))
    {
      v6 = 0;
    }

    else
    {
      v6 = uint64;
    }

    v7 = v4 == 0;
    if (v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v5;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t FigNote_AllowInternalDefaultLogs()
{
  if (FigNote_AllowInternalDefaultLogs_onceToken != -1)
  {
    FigNote_AllowInternalDefaultLogs_cold_1();
  }

  return gAllowInternalDefaultLogs;
}

uint64_t fig_note_initialize_allow_internal_default_logs()
{
  result = FigDebugIsInternalBuild();
  gAllowInternalDefaultLogs = result;
  return result;
}

char *fig_get_timestamp(uint64_t a1, char *__str, size_t __size)
{
  if (a1 == 2)
  {
    fig_get_offsetTimeStamp(__str, __size);
  }

  else if (a1 == 1)
  {
    FigCFGetLocalTimeString(__str, __size);
  }

  else
  {
    snprintf(__str, __size, " ");
  }

  return __str;
}

char *fig_get_offsetTimeStamp(char *a1, size_t a2)
{
  v11.tv_sec = 0;
  *&v11.tv_usec = 0;
  gettimeofday(&v11, 0);
  v4 = v11.tv_usec - dword_1ED4CCAB0;
  if (v11.tv_usec - dword_1ED4CCAB0 < 0)
  {
    if (v4 <= 0xFFF0BDC0)
    {
      v4 = -1000000;
    }

    v6 = dword_1ED4CCAB0 + v4;
    if (v6 == v11.tv_usec)
    {
      tv_usec = v11.tv_usec;
    }

    else
    {
      tv_usec = v11.tv_usec + 1;
    }

    v8 = v6 == v11.tv_usec;
    LODWORD(v9) = (v6 - tv_usec) / 0xF4240;
    if (v8)
    {
      v9 = v9;
    }

    else
    {
      v9 = (v9 + 1);
    }

    v5 = v11.tv_sec + ~sStartTime - v9;
    v4 = v11.tv_usec + 1000000 * v9 + 1000000 - dword_1ED4CCAB0;
  }

  else
  {
    v5 = v11.tv_sec - sStartTime;
  }

  snprintf(a1, a2, "%02d:%02d.%06d", v5 / 60, v5 % 60, v4);
  return a1;
}

uint64_t fig_log_emitter_get_os_log(uint64_t *a1, BOOL *a2, char *a3)
{
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
  if (!a1 || (result = *a1) == 0)
  {
    result = *fig_log_get_emitter("com.apple.coremedia", "");
  }

  if (a2)
  {
    *a2 = (_MergedGlobals_1 & 0xFFFFFFFE) == 8;
  }

  if (a3)
  {
    if (byte_1ED4CC169)
    {
      v7 = 0;
    }

    else
    {
      v7 = _MergedGlobals_1 == 8;
    }

    v8 = !v7;
    *a3 = v8;
  }

  return result;
}

void *fig_log_get_emitter(const char *a1, const char *a2)
{
  if (fig_log_get_emitter_onceToken != -1)
  {
    fig_log_get_emitter_cold_1();
  }

  if (!a1)
  {
    a1 = "com.apple.coremedia";
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = "";
  }

  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s-%s", a1, v4);
  os_unfair_lock_lock(&fig_log_get_emitter_lock);
  Value = CFDictionaryGetValue(fig_log_get_emitter_emitterTable, v5);
  if (!Value)
  {
    AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
    Copy = CFStringCreateCopy(AllocatorForPermanentAllocations, v5);
    MallocZoneForPermanentAllocations = FigGetMallocZoneForPermanentAllocations();
    Value = malloc_type_zone_calloc(MallocZoneForPermanentAllocations, 1uLL, 8uLL, 0x2004093837F09uLL);
    *Value = os_log_create(a1, v4);
    CFDictionarySetValue(fig_log_get_emitter_emitterTable, Copy, Value);
    CFRelease(Copy);
  }

  os_unfair_lock_unlock(&fig_log_get_emitter_lock);
  if (v5)
  {
    CFRelease(v5);
  }

  return Value;
}

uint64_t fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(uint64_t *a1, int a2, int *a3, _BYTE *a4)
{
  os_log_and_send_and_compose_flags = fig_log_emitter_get_os_log_and_send_and_compose_flags(a1, a3);
  if (a4)
  {
    *a4 = fig_log_get_os_log_type(a2);
  }

  return os_log_and_send_and_compose_flags;
}

uint64_t fig_log_emitter_get_os_log_and_send_and_compose_flags(uint64_t *a1, int *a2)
{
  v5 = 0;
  result = fig_log_emitter_get_os_log(a1, &v5 + 1, &v5);
  if (a2)
  {
    v4 = 2 * (v5 != 0);
    *a2 = v4;
    if (HIBYTE(v5))
    {
      *a2 = v4 | 1;
    }
  }

  return result;
}

uint64_t fig_log_get_os_log_type(int a1)
{
  if (a1)
  {
    if (a1 == 2)
    {
      v1 = 16;
    }

    else
    {
      v1 = 0;
    }

    if (a1 == 3)
    {
      return 17;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    if (FigNote_AllowInternalDefaultLogs_onceToken != -1)
    {
      FigNote_AllowInternalDefaultLogs_cold_1();
    }

    if (gAllowInternalDefaultLogs)
    {
      return 16;
    }

    else
    {
      return 16 * FigServer_ShouldLogFigErrorsAsErrorsInThisProcess();
    }
  }
}

void fig_log_call_emit_and_clean_up_after_send_and_compose(uint64_t *a1, unsigned __int16 a2, char a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if ((a6 & 2) != 0)
  {
    v8 = a5;
    fig_log_emit(a1, a2, a3 | 8, 0, a5, "%s", a7, a8, a4);
    if (v8)
    {

      free(a4);
    }
  }
}

void fig_log_emit(uint64_t *a1, unsigned __int16 a2, char a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8, char a9)
{
  if (_MergedGlobals_1)
  {
    v9 = (a4 | a6) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (!a4)
    {
      a3 |= 4u;
    }

    fig_log_internal(a1, a2, a3, a4, a6, &a9);
  }
}

void fig_log(unsigned __int16 a1, char a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a5)
  {
    if (_MergedGlobals_1)
    {
      fig_log_internal(0, a1, a2 | 4, 0, a5, &a9);
    }
  }
}

void fig_log_with_return_address(uint64_t *a1, unsigned __int16 a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, char a9)
{
  if (a7)
  {
    if (_MergedGlobals_1)
    {
      fig_log_internal(a1, a2, a3 | 4, 0, a7, &a9);
    }
  }
}

void fig_log_CF1(unsigned __int16 a1, char a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a5)
  {
    if (_MergedGlobals_1)
    {
      fig_log_internal(0, a1, a2, 0, a5, &a9);
    }
  }
}

void fig_post_a_symptom_guts(uint64_t a1)
{
  if (fig_post_a_symptom_guts_onceToken != -1)
  {
    fig_post_a_symptom_guts_cold_1();
  }

  v2 = fig_post_a_symptom_guts_sFigLogOSLogSymptom;
  if (os_log_type_enabled(fig_post_a_symptom_guts_sFigLogOSLogSymptom, OS_LOG_TYPE_ERROR))
  {
    fig_post_a_symptom_guts_cold_2(a1, v2);
  }
}

uint64_t __fig_post_a_symptom_guts_block_invoke()
{
  fig_post_a_symptom_guts_sFigLogOSLogSymptom = os_log_create("com.apple.coremedia", "Symptoms");

  return FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
}

void *fig_log_handle()
{
  result = fig_log_get_emitter("com.apple.coremedia", "");
  if (result)
  {
    return *result;
  }

  return result;
}

CFMutableDictionaryRef __fig_log_get_emitter_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  fig_log_get_emitter_emitterTable = result;
  return result;
}

void fig_note_initialize_category_with_default_work_cf(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, void *a8)
{
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
  FigThreadRunOnce(&sFigNoteInit, fig_note_init_timestamps_once);
  v23 = 0;
  v24 = 0;
  v22[0] = a3;
  v22[1] = a2;
  v22[2] = a5;
  v22[3] = a4;
  v22[4] = a1;
  v22[5] = a6;
  if (initialize_fignote_variable_registry_sInitRegistryOnce != -1)
  {
    fig_note_initialize_category_with_default_work_cf_cold_1();
  }

  dispatch_sync_f(gFigNoteVariableRegistry_0, v22, perform_fignote_variable_registration);
  v15 = v23;
  if (v24 && v23)
  {
    v16 = CFPreferencesCopyAppValue(a2, a3);
    v17 = v16;
    v18 = gAllowAutomaticFigNotes;
    if (gAllowAutomaticFigNotes)
    {
      v18 = *(v15 + 16);
    }

    **(v15 + 8) = v18;
    if (v16)
    {
      v19 = CFGetTypeID(v16);
      if (v19 == CFStringGetTypeID())
      {
        LODWORD(v22[0]) = 0;
        if (!fig_note_get_value_for_string_preference(v17, v22))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v20 = CFGetTypeID(v17);
        if (v20 != CFNumberGetTypeID())
        {
          v21 = CFGetTypeID(v17);
          if (v21 == CFBooleanGetTypeID())
          {
            **(v15 + 8) = CFEqual(v17, *MEMORY[0x1E695E4D0]);
          }

          goto LABEL_16;
        }

        LODWORD(v22[0]) = 0;
        if (!CFNumberGetValue(v17, kCFNumberIntType, v22))
        {
LABEL_16:
          CFRelease(v17);
          goto LABEL_17;
        }
      }

      **(v15 + 8) = v22[0];
      goto LABEL_16;
    }
  }

LABEL_17:
  if (a8)
  {
    if (v15)
    {
      *a8 = *v15;
    }
  }
}

void fig_note_initialize_category_with_default_work(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, void *a8)
{
  v14 = *MEMORY[0x1E695E480];
  v15 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v16 = CFStringCreateWithCString(v14, a3, 0x8000100u);
  fig_note_initialize_category_with_default_work_cf(a1, v15, v16, a4, a5, a6, v17, a8);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {

    CFRelease(v16);
  }
}

uint64_t FigNote_OneTimeInitializationForMediaServerd()
{
  if (initialize_fignote_variable_registry_sInitRegistryOnce != -1)
  {
    fig_note_initialize_category_with_default_work_cf_cold_1();
  }

  sRunningInMediaserverd = 1;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"rpc_timeout", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = 1000000 * AppIntegerValue;
  }

  else
  {
    v1 = 9000000000;
  }

  FigRPCServer_SetTimeoutNanoseconds(v1);
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
  return fig_note_read_control_preferences();
}

uint64_t fig_note_read_control_preferences()
{
  FigReentrantMutexLock(gFigLogControlMutex);
  v0 = CFPreferencesCopyAppValue(@"fig_notes", @"com.apple.coremedia");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      fig_note_close_external_log_file();
      if (CFStringCompare(v1, @"true", 1uLL) && CFStringCompare(v1, @"yes", 1uLL) && CFStringCompare(v1, @"on", 1uLL) && CFStringCompare(v1, @"oslog", 1uLL))
      {
        if (CFStringCompare(v1, @"syslog", 1uLL) == kCFCompareEqualTo)
        {
          _MergedGlobals_1 = 1;
          goto LABEL_28;
        }

        if (CFStringCompare(v1, @"stderr", 1uLL))
        {
          if (CFStringCompare(v1, @"stdout", 1uLL))
          {
            if (CFStringCompare(v1, @"external", 1uLL) == kCFCompareEqualTo || CFStringCompare(v1, @"external_no_echo_oslog", 1uLL) == kCFCompareEqualTo || CFStringCompare(v1, @"public", 1uLL) == kCFCompareEqualTo && sRunningInMediaserverd)
            {
              fig_note_configure_external_log_file(v1);
LABEL_28:
              CFRelease(v1);
              goto LABEL_29;
            }

            if (CFStringCompare(v1, @"bbuf", 1uLL))
            {
              if (CFStringCompare(v1, @"ring", 1uLL))
              {
                IntValue = CFStringGetIntValue(v1);
                goto LABEL_23;
              }

              v5 = &byte_1ED4CC000;
              v6 = 6;
            }

            else
            {
              if (!sNoteBBufQueue)
              {
                sNoteBBufQueue = dispatch_queue_create("com.apple.coremedia.fignote", 0);
                CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0x100u, 0, &sNoteBBuf);
              }

              v5 = &byte_1ED4CC000;
              v6 = 5;
            }
          }

          else
          {
            v5 = &byte_1ED4CC000;
            v6 = 3;
          }
        }

        else
        {
          v5 = &byte_1ED4CC000;
          v6 = 2;
        }
      }

      else
      {
        v5 = &byte_1ED4CC000;
        v6 = 8;
      }

      *(v5 + 84) = v6;
      goto LABEL_28;
    }

    v3 = CFGetTypeID(v1);
    if (v3 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      v4 = valuePtr == 0;
LABEL_24:
      v9 = !v4;
      _MergedGlobals_1 = 8 * v9;
      goto LABEL_28;
    }

    v7 = CFGetTypeID(v1);
    if (v7 != CFBooleanGetTypeID())
    {
      goto LABEL_28;
    }

    IntValue = CFEqual(v1, *MEMORY[0x1E695E4D0]);
LABEL_23:
    v4 = IntValue == 0;
    goto LABEL_24;
  }

  fig_note_close_external_log_file();
  if (_MergedGlobals_1 != 8)
  {
    _MergedGlobals_1 = 8;
  }

LABEL_29:
  v10 = CFPreferencesCopyAppValue(@"automatic_fig_notes", @"com.apple.coremedia");
  gAllowAutomaticFigNotes = 1;
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFStringGetTypeID())
    {
      v18 = 0;
      if (!fig_note_get_value_for_string_preference(v11, &v18))
      {
LABEL_36:
        CFRelease(v11);
        return FigReentrantMutexUnlock(gFigLogControlMutex);
      }

      v13 = v18;
    }

    else
    {
      v14 = CFGetTypeID(v11);
      if (v14 != CFNumberGetTypeID())
      {
        v16 = CFGetTypeID(v11);
        if (v16 == CFBooleanGetTypeID())
        {
          gAllowAutomaticFigNotes = CFEqual(v11, *MEMORY[0x1E695E4D0]);
        }

        goto LABEL_36;
      }

      v17 = 0;
      CFNumberGetValue(v11, kCFNumberIntType, &v17);
      v13 = v17 != 0;
    }

    gAllowAutomaticFigNotes = v13;
    goto LABEL_36;
  }

  return FigReentrantMutexUnlock(gFigLogControlMutex);
}

uint64_t FigNote_RefreshControlPreferences()
{
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);

  return fig_note_read_control_preferences();
}

uint64_t FigNote_ChangeValue(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 4294950614;
  v8 = -16682;
  if (gFigNoteVariableRegistry_0)
  {
    v4 = gFigNoteVariableRegistry_1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __FigNote_ChangeValue_block_invoke;
    v6[3] = &__block_descriptor_tmp_12_0;
    v6[4] = a1;
    v6[5] = a2;
    v7 = a3;
    v6[6] = &v8;
    dispatch_sync(gFigNoteVariableRegistry_0, v6);
    return v8;
  }

  return v3;
}

uint64_t FigNote_GetValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294950614;
  v7 = -16682;
  if (gFigNoteVariableRegistry_0)
  {
    v4 = gFigNoteVariableRegistry_1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigNote_GetValue_block_invoke;
    block[3] = &__block_descriptor_tmp_13_2;
    block[4] = a1;
    block[5] = a2;
    block[6] = a3;
    block[7] = &v7;
    dispatch_sync(gFigNoteVariableRegistry_0, block);
    return v7;
  }

  return v3;
}

uint64_t fignote_initialize_ringlog()
{
  if (fignote_initialize_ringlog_initializeLogRingBuffer != -1)
  {
    fignote_initialize_ringlog_cold_1();
  }

  if (byte_1ED4CC168)
  {
    return 0;
  }

  else
  {
    return 4294950613;
  }
}

void fig_note_dropRingBufferDataStructuresInternal()
{
  if (qword_1ED4CC170)
  {
    CFRelease(qword_1ED4CC170);
    qword_1ED4CC170 = 0;
  }

  else
  {
    fig_note_dropRingBufferDataStructuresInternal_cold_1();
  }
}

void fig_log_ring_backing_deallocator(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t FigNote_CopyKeys(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (gFigNoteVariableRegistry_0)
  {
    v2 = gFigNoteVariableRegistry_1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || (v7[0] = MEMORY[0x1E69E9820], v7[1] = 0x40000000, v7[2] = __FigNote_CopyKeys_block_invoke, v7[3] = &unk_1E74A0818, v7[4] = &v8, v7[5] = a1, dispatch_sync(gFigNoteVariableRegistry_0, v7), (v4 = v9[3]) == 0))
  {
    v5 = 4294950614;
  }

  else
  {
    v12.length = CFArrayGetCount(v9[3]);
    v12.location = 0;
    CFArraySortValues(v4, v12, MEMORY[0x1E695D7F0], 0);
    v5 = 0;
    *a2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fig_note_write_to_external_log_file(const char *a1)
{
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
  FigReentrantMutexLock(gFigLogControlMutex);
  if (sExternalLogfile)
  {
    v2 = fprintf(sExternalLogfile, "%s\n", a1);
    fflush(sExternalLogfile);
    if (v2 >= 1 && sExternalLogfileSizeLimit != 0)
    {
      sExternalLogfileNumBytesWritten += v2;
      if (sExternalLogfileNumBytesWritten > sExternalLogfileSizeLimit)
      {
        fig_note_close_external_log_file();
        unlink(sExternalLogfilePath);
        fig_note_open_external_log_file();
      }
    }
  }

  v4 = gFigLogControlMutex;

  return FigReentrantMutexUnlock(v4);
}

void append_and_release_noteBBuf(CMBlockBufferRef targetBBuf)
{
  CMBlockBufferAppendBufferReference(sNoteBBuf, targetBBuf, 0, 0, 0);

  CFRelease(targetBBuf);
}

uint64_t safe_snprintf_0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  LODWORD(result) = vsnprintf(a1, 0x600uLL, "[%s] ", &a9);
  if (result >= 0x5FF)
  {
    return 1535;
  }

  else
  {
    return result;
  }
}

uint64_t fig_note_close_external_log_file()
{
  FigReentrantMutexLock(gFigLogControlMutex);
  if (sExternalLogfile)
  {
    if (sFigNoteExternalLogDeleteWatchSource)
    {
      dispatch_source_cancel(sFigNoteExternalLogDeleteWatchSource);
      dispatch_release(sFigNoteExternalLogDeleteWatchSource);
      sFigNoteExternalLogDeleteWatchSource = 0;
    }

    else
    {
      fclose(sExternalLogfile);
    }

    sExternalLogfile = 0;
  }

  v0 = gFigLogControlMutex;

  return FigReentrantMutexUnlock(v0);
}

uint64_t fig_note_open_external_log_file()
{
  v11 = *MEMORY[0x1E69E9840];
  FigReentrantMutexLock(gFigLogControlMutex);
  v8 = 0;
  time(&v8);
  if (sPublicLogFileInUse == 1)
  {
    qmemcpy(handler, "/private/var/mobile/Library/Logs/CrashReporter/mediaserverd_log_", sizeof(handler));
    v0 = localtime(&v8);
    strftime(v10, 0x3C0uLL, "%Y-%m-%d-%H%M%S.txt", v0);
    __strlcpy_chk();
  }

  sExternalLogfileNumBytesWritten = 0;
  v1 = fopen(sExternalLogfilePath, "ab");
  sExternalLogfile = v1;
  if (v1)
  {
    setvbuf(v1, 0, 2, 0);
    v2 = sExternalLogfile;
    v3 = ctime(&v8);
    fprintf(v2, "\n\n\n=== New Log Starting At %.24s =============================================================\n", v3);
    _MergedGlobals_1 = 4;
    if (sExternalEchoToOSLog)
    {
      fwrite("**** WARNING: Using external_no_echo_oslog causes standard Fig logging to be omitted from the log captured by sysdiagnose, which will mean that engineering is not able to analyze radars created while it's set\n\n", 0xD2uLL, 1uLL, sExternalLogfile);
    }

    else
    {
      _MergedGlobals_1 = 9;
    }

    sExternalLogfileNumBytesWritten = MEMORY[0x19A8D9180](sExternalLogfile);
    v4 = sExternalLogfile;
    if (sExternalLogfile)
    {
      v5 = fileno(sExternalLogfile);
      global_queue = dispatch_get_global_queue(0, 0);
      sFigNoteExternalLogDeleteWatchSource = dispatch_source_create(MEMORY[0x1E69E9728], v5, 1uLL, global_queue);
      dispatch_source_set_event_handler(sFigNoteExternalLogDeleteWatchSource, &__block_literal_global_35);
      *&handler[0] = MEMORY[0x1E69E9820];
      *(&handler[0] + 1) = 0x40000000;
      *&handler[1] = __fig_note_setup_log_delete_watch_block_invoke_2;
      *(&handler[1] + 1) = &__block_descriptor_tmp_36;
      *&handler[2] = v4;
      dispatch_source_set_cancel_handler(sFigNoteExternalLogDeleteWatchSource, handler);
      dispatch_resume(sFigNoteExternalLogDeleteWatchSource);
    }
  }

  else
  {
    _MergedGlobals_1 = 8;
  }

  return FigReentrantMutexUnlock(gFigLogControlMutex);
}

uint64_t __fig_note_setup_log_delete_watch_block_invoke()
{
  FigReentrantMutexLock(gFigLogControlMutex);
  if (sExternalLogfile)
  {
    fig_note_close_external_log_file();
    fig_note_open_external_log_file();
  }

  v0 = gFigLogControlMutex;

  return FigReentrantMutexUnlock(v0);
}

void __fig_log_append_to_ring_buffer_async_block_invoke(uint64_t a1)
{
  v1 = a1;
  v52 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = byte_1ED4CC191 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    byte_1ED4CC191 = 1;
    v3 = @"==== WARNING: One or more messages were dropped ====";
  }

  else
  {
    v3 = *(a1 + 32);
    if (!*(a1 + 48))
    {
      byte_1ED4CC191 = 0;
    }

    if (!v3)
    {
      goto LABEL_59;
    }
  }

  v31 = *(a1 + 40);
  Length = CFStringGetLength(v3);
  sourceBytes = 0;
  destination = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  dispatch_assert_queue_V2(qword_1ED4CC188);
  if (qword_1ED4CC170)
  {
    v53.location = 0;
    v53.length = Length;
    CFStringGetBytes(v3, v53, 0x8000100u, 0, 0, 0, 0, &sourceBytes);
    sourceBytes += 4;
    if (sourceBytes <= qword_1ED4CC180)
    {
      v28 = Length;
      v29 = v3;
      v30 = v1;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
LABEL_15:
        v8 = qword_1ED4CC178;
        v9 = (v7 >> 42) & 0x1FFFFF;
        v10 = (qword_1ED4CC178 >> 42) & 0x1FFFFF;
        v11 = qword_1ED4CC178;
        if (v9 == v10)
        {
          v12 = (v7 >> 21) & 0x1FFFFF;
          v13 = v7 & 0x1FFFFF;
          if (v12 == ((qword_1ED4CC178 >> 21) & 0x1FFFFF) && v13 == (qword_1ED4CC178 & 0x1FFFFF))
          {
            os_log = fig_log_emitter_get_os_log(v31, 0, 0);
            if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 134219776;
              v37 = qword_1ED4CC180;
              v38 = 1024;
              v39 = v13;
              v40 = 1024;
              v41 = v12;
              v42 = 1024;
              v43 = v9;
              v44 = 1024;
              v45 = v6 & 0x1FFFFF;
              v46 = 1024;
              v47 = (v6 >> 21) & 0x1FFFFF;
              v48 = 1024;
              v49 = (v6 >> 42) & 0x1FFFFF;
              v50 = 1024;
              v51 = destination;
              _os_log_error_impl(&dword_196FA7000, os_log, OS_LOG_TYPE_ERROR, "Ring buffer (size %zu) contained unrecoverable garbage when going from (oldest:%d loop:%d latest:%d) to (oldest:%d loop:%d latest:%d). Last log size read from buffer was %u", buf, 0x36u);
            }

            LODWORD(v10) = 0x1FFFFF;
            v11 = v6 & 0x8000000000000000 | 0x7FFFFC00001FFFFFLL;
          }

          else
          {
            v10 = (v7 >> 42) & 0x1FFFFF;
            v11 = qword_1ED4CC178;
          }
        }

        v16 = v11 & 0xFFFFFFFFFFE00000;
        if (v10 == 0x1FFFFF)
        {
          v17 = 0;
        }

        else
        {
          v17 = v10;
        }

        if (v10 != 0x1FFFFF)
        {
          v16 = v11;
        }

        v18 = (v17 + sourceBytes) & 0x1FFFFF;
        v19 = v16 & 0x8000000000000000;
        v20 = v16 & 0x800003FFFFFFFFFFLL | (((v17 + sourceBytes) & 0x1FFFFFLL) << 42);
        if (qword_1ED4CC180 < v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

        if (qword_1ED4CC180 < v18)
        {
          v20 = (v19 | (v17 << 21)) & 0x800003FFFFFFFFFFLL | ((sourceBytes & 0x1FFFFF) << 42);
        }

        if (((v20 >> 42) & 0x1FFFFF) <= ((v20 >> 21) & 0x1FFFFF))
        {
          v6 = v20;
        }

        else
        {
          v6 = v20 & 0xFFFFFC00001FFFFFLL | (((v20 >> 42) & 0x1FFFFF) << 21);
        }

        if (v10 != 0x1FFFFF)
        {
          v22 = v6 & 0x1FFFFF;
          if (v21 <= (v6 & 0x1FFFFF))
          {
            while (v22 < ((v6 >> 42) & 0x1FFFFF))
            {
              CMBlockBufferCopyDataBytes(qword_1ED4CC170, v6 & 0x1FFFFF, 4uLL, &destination);
              if (destination < 4 || (qword_1ED4CC180 >= destination ? (v24 = (v6 & 0x1FFFFF) > qword_1ED4CC180 - destination) : (v24 = 1), v24))
              {
                v7 = v8;
                goto LABEL_15;
              }

              v25 = (destination + v6) & 0x1FFFFF;
              if (v25 >= ((v8 >> 21) & 0x1FFFFF))
              {
                v6 = (v6 >> 21) & 0x3FFFFE00000 | v6 & 0xFFFFFC0000000000;
              }

              else
              {
                v6 = v6 & 0xFFFFFFFFFFE00000 | v25;
              }

              v22 = v6 & 0x1FFFFF;
              if (v21 > (v6 & 0x1FFFFF))
              {
                break;
              }
            }
          }
        }

        v23 = v8;
        atomic_compare_exchange_strong_explicit(&qword_1ED4CC178, &v23, v6, memory_order_relaxed, memory_order_relaxed);
        v7 = v8;
      }

      while (v23 != v8);
      CMBlockBufferReplaceDataBytes(&sourceBytes, qword_1ED4CC170, v21, 4uLL);
      CMBlockBufferGetDataPointer(qword_1ED4CC170, v21 + 4, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (lengthAtOffsetOut >= sourceBytes)
      {
        v26 = sourceBytes;
      }

      else
      {
        v26 = lengthAtOffsetOut;
      }

      v54.length = v28;
      v54.location = 0;
      CFStringGetBytes(v29, v54, 0x8000100u, 0, 0, dataPointerOut, v26, 0);
      v1 = v30;
    }

    else
    {
      v5 = fig_log_emitter_get_os_log(v31, 0, 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __fig_log_append_to_ring_buffer_async_block_invoke_cold_1(&sourceBytes, v5);
      }
    }
  }

  v27 = *(v1 + 32);
  if (v27)
  {
    CFRelease(v27);
  }

LABEL_59:
  atomic_fetch_add_explicit(&unk_1ED4CC190, 0xFFu, memory_order_relaxed);
}