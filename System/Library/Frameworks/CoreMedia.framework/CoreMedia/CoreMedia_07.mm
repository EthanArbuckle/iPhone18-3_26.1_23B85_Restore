size_t FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences(const opaqueCMFormatDescription *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_7(v58);
LABEL_88:
    v31 = 0;
    v32 = 0;
    v9 = 0;
LABEL_89:
    result = LODWORD(v58[0]);
    if (!a3)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  v9 = a2;
  if (!a2)
  {
    FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_6(v58);
    v31 = 0;
    v32 = 0;
    goto LABEL_89;
  }

  if (CMFormatDescriptionGetMediaType(a1) != 1936684398)
  {
    FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_1(v58);
    goto LABEL_88;
  }

  if (a3 || a4 && a5)
  {
    v61 = 0;
    v62 = 0;
    sizeOut = 0;
    v59 = 0;
    FormatList = CMAudioFormatDescriptionGetFormatList(a1, &sizeOut);
    if (FormatList && (v11 = sizeOut, sizeOut > 0x2F))
    {
      result = FigAudioFormatGetRichestDecodableFormatIndex(FormatList, sizeOut, &v59);
      if (!result)
      {
        v53 = a1;
        v54 = a3;
        v13 = v11 / 0x30;
        MaximumChannelCountAndPreferredChannelLayout = FigAudioRenderingPreferencesGetMaximumChannelCountAndPreferredChannelLayout(v9, &v62, &v61);
        v15 = MaximumChannelCountAndPreferredChannelLayout;
        v55 = a4;
        if (!v61)
        {
          goto LABEL_24;
        }

        v16 = v59;
        if (MaximumChannelCountAndPreferredChannelLayout > FormatList[v59].mASBD.mChannelsPerFrame || v59 >= v13)
        {
          goto LABEL_24;
        }

        p_mChannelsPerFrame = &FormatList[v59].mASBD.mChannelsPerFrame;
        v19 = p_mChannelsPerFrame;
        while (1)
        {
          v20 = *v19;
          v19 += 12;
          if (v15 == v20)
          {
            *&v63[4] = 0;
            v64 = 0;
            *v63 = 0;
            v57 = 4;
            memset(v58, 0, sizeof(v58));
            LODWORD(v58[0]) = *(p_mChannelsPerFrame + 12);
            *&v63[4] = v58;
            v64 = v61;
            AudioToolbox_AudioFormatGetProperty(1667786097, 16, &v63[4], &v57, v63);
            if (*v63 == 1)
            {
              break;
            }
          }

          ++v16;
          p_mChannelsPerFrame = v19;
          if (v13 == v16)
          {
            goto LABEL_24;
          }
        }

        if (v16 == 0xFFFFFFFFLL)
        {
LABEL_24:
          v33 = malloc_type_calloc(v15, 4uLL, 0x100004052888210uLL);
          if (v33)
          {
            v34 = v33;
            v16 = v59;
            if (v59 >= v13)
            {
LABEL_36:
              free(v34);
            }

            else
            {
              while (1)
              {
                v35 = &FormatList[v16];
                if (v15 >= v35->mASBD.mChannelsPerFrame)
                {
                  *v63 = 4 * v15;
                  memset(v58 + 4, 0, 28);
                  LODWORD(v58[0]) = v35->mChannelLayoutTag;
                  *&v63[4] = v58;
                  v64 = v61;
                  if (!AudioToolbox_AudioFormatGetProperty(1667788144, 16, &v63[4], v63, v34) && ((4 * v15) & 0x3FFFFFFFCLL) == *v63)
                  {
                    v36 = 0;
                    if (v15)
                    {
                      v37 = 1;
                      v38 = v34;
                      do
                      {
                        v39 = *v38++;
                        if (v39 != -1)
                        {
                          ++v36;
                        }
                      }

                      while (v15 > v37++);
                    }

                    if (v35->mASBD.mChannelsPerFrame == v36)
                    {
                      break;
                    }
                  }
                }

                if (++v16 == v13)
                {
                  goto LABEL_36;
                }
              }

              free(v34);
              if (v16 != 0xFFFFFFFFLL)
              {
                goto LABEL_54;
              }
            }
          }

          LODWORD(v58[0]) = 0;
          *&v63[4] = 4;
          Property = AudioToolbox_AudioFormatGetProperty(1936745324, v62, v61, &v63[4], v58);
          v42 = v59;
          if (v59 < v13)
          {
            v44 = (v58[0] & 0x20) == 0 || Property != 0;
            p_mChannelLayoutTag = &FormatList[v59].mChannelLayoutTag;
            v46 = -1;
            LODWORD(v16) = -1;
            while (1)
            {
              if (!v44 || (memset(v58 + 4, 0, 28), LODWORD(v58[0]) = *p_mChannelLayoutTag, *v63 = 4, AudioToolbox_AudioFormatGetProperty(1936745324, 32, v58, v63, &v63[4])) || (v63[4] & 0x20) == 0)
              {
                v47 = *(p_mChannelLayoutTag - 3);
                if (v15 >= v47)
                {
                  LODWORD(v16) = v42;
                  goto LABEL_54;
                }

                if (v47 < v46)
                {
                  LODWORD(v16) = v42;
                  v46 = *(p_mChannelLayoutTag - 3);
                }
              }

              ++v42;
              p_mChannelLayoutTag += 12;
              if (v13 == v42)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_54:
        if (v16 >= v59 && v16 < v13)
        {
          v9 = &FormatList[v16];
          DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(v53, v21, v22, v23, v24, v25, v26, v27);
          if (DerivedStorage[10] / 0x30uLL - 1 == v16)
          {
            result = figAudioFormatDescriptionEnsureMostCompatibleLayout(v53);
            if (!result)
            {
              v31 = DerivedStorage[15];
              a3 = v54;
              result = 0;
              if (v31)
              {
                v32 = DerivedStorage[14];
              }

              else
              {
                v32 = DerivedStorage[7];
                v31 = DerivedStorage[8];
              }

              a4 = v55;
              if (!v54)
              {
LABEL_77:
                if (!a4)
                {
                  goto LABEL_79;
                }

                goto LABEL_78;
              }

LABEL_76:
              *a3 = v9;
              goto LABEL_77;
            }

            goto LABEL_93;
          }

          result = figAudioFormatDescriptionEnsureRichestDecodableLayout(v53);
          if (result)
          {
LABEL_93:
            v31 = 0;
            v32 = 0;
            goto LABEL_75;
          }

          if (v16 == v59)
          {
            v31 = DerivedStorage[13];
            result = 0;
            if (v31)
            {
              v32 = DerivedStorage[12];
            }

            else
            {
              v32 = DerivedStorage[7];
              v31 = DerivedStorage[8];
            }

LABEL_75:
            a3 = v54;
            a4 = v55;
            if (!v54)
            {
              goto LABEL_77;
            }

            goto LABEL_76;
          }

          v50 = DerivedStorage[17];
          if (v50)
          {
            v51 = (v16 - 1);
            if (DerivedStorage[16] > v51)
            {
              result = 0;
              v52 = (v50 + 16 * v51);
              v32 = *v52;
              v31 = v52[1];
              goto LABEL_75;
            }

            FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_2(v58);
          }

          else
          {
            FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_3(v58);
          }

          v31 = 0;
          v32 = 0;
LABEL_63:
          result = LODWORD(v58[0]);
          goto LABEL_75;
        }

LABEL_62:
        FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_4(v58);
        v31 = 0;
        v32 = 0;
        v9 = 0;
        goto LABEL_63;
      }
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE52uLL, "<<<< AudioFormatDescription >>>>", 0xA9D, v5, v29, v30);
    }

    v31 = 0;
    v32 = 0;
    v9 = 0;
    if (!a3)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_5(v58);
  v32 = 0;
  v31 = 0;
  result = LODWORD(v58[0]);
  if (a4)
  {
LABEL_78:
    *a4 = v32;
  }

LABEL_79:
  if (a5)
  {
    *a5 = v31;
  }

  return result;
}

uint64_t CMAudioFormatDescriptionCreateCopyWithNewChannelLayout(const opaqueCMFormatDescription *a1, unint64_t a2, AudioChannelLayout *a3, CMAudioFormatDescriptionRef *a4)
{
  formatDescriptionOut = 0;
  if (!a1)
  {
    CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_6(&v29);
LABEL_29:
    v24 = v29;
    goto LABEL_19;
  }

  if (CMFormatDescriptionGetMediaType(a1) != 1936684398)
  {
    CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_1(&v29);
    goto LABEL_29;
  }

  if (!a3)
  {
    CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_5(&v29);
    goto LABEL_29;
  }

  if (a2 <= 0xB)
  {
    CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_4(&v29);
    goto LABEL_29;
  }

  if (!a4)
  {
    CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_3(&v29);
    goto LABEL_29;
  }

  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, v8, v9, v10, v11, v12, v13, v14);
  Extensions = CMFormatDescriptionGetExtensions(a1);
  v17 = Extensions;
  if (Extensions && ((Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms"), (v19 = Value) != 0) ? (v20 = CFDictionaryGetValue(Value, @"chnl") == 0) : (v20 = 1), v21 = CFGetAllocator(a1), v17 = CFDictionaryCreateMutableCopy(v21, 0, v17), CFDictionaryRemoveValue(v17, @"VerbatimISOSampleEntry"), CFDictionaryRemoveValue(v17, @"VerbatimSampleDescription"), !v20))
  {
    v26 = CFGetAllocator(v19);
    MutableCopy = CFDictionaryCreateMutableCopy(v26, 0, v19);
    CFDictionaryRemoveValue(v17, @"SampleDescriptionExtensionAtoms");
    CFDictionaryRemoveValue(MutableCopy, @"chnl");
    if (FigCFDictionaryGetCount(MutableCopy) >= 1)
    {
      CFDictionarySetValue(v17, @"SampleDescriptionExtensionAtoms", MutableCopy);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  v27 = 0;
  evaluateLayoutAgainstFormatList(*(DerivedStorage + 88), *(DerivedStorage + 80), a3, a2, 0, 0, &v27 + 1, &v27, 0);
  if (v27 | HIBYTE(v27))
  {
    v23 = CFGetAllocator(a1);
    v24 = CMAudioFormatDescriptionCreate(v23, DerivedStorage, a2, a3, *(DerivedStorage + 40), *(DerivedStorage + 48), v17, &formatDescriptionOut);
    if (!v24)
    {
      *a4 = formatDescriptionOut;
      formatDescriptionOut = 0;
    }

    if (!MutableCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_2(&v29);
  v24 = v29;
  if (MutableCopy)
  {
LABEL_16:
    CFRelease(MutableCopy);
  }

LABEL_17:
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_19:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  return v24;
}

const opaqueCMFormatDescription *FigAudioFormatDescriptionUsesAudibleDRM(const opaqueCMFormatDescription *result)
{
  if (result)
  {
    v1 = result;
    if (CMFormatDescriptionGetMediaType(result) == 1936684398)
    {
      return (CMFormatDescriptionGetMediaSubType(v1) == 1633771875);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_OWORD *FigAudioFormatDescriptionAudibleContentIsAuthorized(const opaqueCMFormatDescription *a1, int a2)
{
  result = FigAudioFormatDescriptionUsesAudibleDRM(a1);
  if (result)
  {
    v15 = 0;
    sizeOut = 0;
    result = CMAudioFormatDescriptionGetStreamBasicDescription(a1);
    if (result)
    {
      v5 = *result;
      v6 = result[1];
      v11 = *(result + 4);
      v10[0] = v5;
      v10[1] = v6;
      MagicCookie = CMAudioFormatDescriptionGetMagicCookie(a1, &sizeOut);
      if (HIDWORD(sizeOut))
      {
        return 0;
      }

      else
      {
        v13 = sizeOut;
        v14 = a2;
        v8 = 4;
        if (AudioToolbox_AudioFormatGetProperty(1633776744, 56, v10, &v8, &v15))
        {
          v7 = 1;
        }

        else
        {
          v7 = v15 == 0;
        }

        return !v7;
      }
    }
  }

  return result;
}

CFTypeRef aclCopyDebugDesc(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 8;
  AudioToolbox_AudioFormatGetProperty(1819242093, a2, a1, &v5, &v6);
  result = v6;
  if (!v6)
  {
    if (a1 && a2)
    {
      return 0;
    }

    else
    {
      return CFRetain(@"(null)");
    }
  }

  return result;
}

uint64_t FigAudioFormatDescriptionCopySceneInformation(const opaqueCMFormatDescription *a1, uint64_t a2, void *a3)
{
  v16 = 0;
  if (!a1)
  {
    FigAudioFormatDescriptionCopySceneInformation_cold_2(v12);
    return LODWORD(v12[0]);
  }

  if (!a3)
  {
    FigAudioFormatDescriptionCopySceneInformation_cold_1(v12);
    return LODWORD(v12[0]);
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(a1);
  if (StreamBasicDescription)
  {
    v15 = 0;
    sizeOut = 0;
    v10 = 8;
    v6 = *&StreamBasicDescription->mBitsPerChannel;
    v7 = *&StreamBasicDescription->mBytesPerPacket;
    v12[0] = *&StreamBasicDescription->mSampleRate;
    v12[1] = v7;
    v13 = v6;
    MagicCookie = CMAudioFormatDescriptionGetMagicCookie(a1, &sizeOut);
    LODWORD(v15) = sizeOut;
    AudioToolbox_AudioFormatGetProperty(1936286825, 56, v12, &v10, &v16);
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *a3 = v8;
  return result;
}

size_t CMAudioFormatDescriptionGetPlaintextMediaSubTypeAndEncryptionScheme(const opaqueCMFormatDescription *a1, signed int *a2, int *a3)
{
  if (!a1)
  {
    CMAudioFormatDescriptionGetPlaintextMediaSubTypeAndEncryptionScheme_cold_1(&v25);
    return v25;
  }

  v7 = 1852796517;
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v9 = MediaSubType;
  if (MediaSubType <= 1902207794)
  {
    if (MediaSubType <= 1685220712)
    {
      if (MediaSubType <= 1667524656)
      {
        if (MediaSubType <= 1667326823)
        {
          if (MediaSubType == 1633771875 || MediaSubType == 1667312947)
          {
            goto LABEL_83;
          }

          v11 = 24931;
        }

        else if (MediaSubType > 1667330146)
        {
          if (MediaSubType == 1667330147)
          {
            goto LABEL_83;
          }

          v11 = 30307;
        }

        else
        {
          if (MediaSubType == 1667326824)
          {
            goto LABEL_83;
          }

          v11 = 25456;
        }

        v12 = v11 | 0x63610000;
        goto LABEL_82;
      }

      if (MediaSubType <= 1667656802)
      {
        if (MediaSubType != 1667524657 && MediaSubType != 1667574579)
        {
          v12 = 1667575091;
          goto LABEL_82;
        }
      }

      else if (MediaSubType > 1668047202)
      {
        if (MediaSubType != 1668047203)
        {
          v12 = 1668641633;
          goto LABEL_82;
        }
      }

      else if (MediaSubType != 1667656803)
      {
        v12 = 1667790435;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (MediaSubType <= 1885430578)
    {
      if (MediaSubType <= 1701733237)
      {
        if (MediaSubType != 1685220713 && MediaSubType != 1700886115)
        {
          v12 = 1701733217;
          goto LABEL_82;
        }
      }

      else if (MediaSubType > 1882599479)
      {
        if (MediaSubType != 1882599480)
        {
          v12 = 1885430115;
          goto LABEL_82;
        }
      }

      else if (MediaSubType != 1701733238)
      {
        v12 = 1869117027;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (MediaSubType <= 1885547314)
    {
      if ((MediaSubType - 1885430579) > 0x3D || ((1 << (MediaSubType - 51)) & 0x2020000000000001) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_83;
    }

    if (MediaSubType <= 1886745440)
    {
      if (MediaSubType != 1885547315)
      {
        v12 = 1885692723;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (MediaSubType == 1886745441)
    {
      goto LABEL_83;
    }

    v13 = 24931;
LABEL_74:
    v12 = v13 | 0x71610000;
    goto LABEL_82;
  }

  if (MediaSubType <= 1902667125)
  {
    if (MediaSubType > 1902324530)
    {
      if (MediaSubType <= 1902405732)
      {
        if (MediaSubType == 1902324531 || MediaSubType == 1902403958)
        {
          goto LABEL_83;
        }

        v14 = 26673;
      }

      else
      {
        if (MediaSubType > 1902469938)
        {
          if (MediaSubType == 1902469939)
          {
            goto LABEL_83;
          }

          v12 = 1902537827;
          goto LABEL_82;
        }

        if (MediaSubType == 1902405733)
        {
          goto LABEL_83;
        }

        v14 = 28024;
      }

      v12 = v14 | 0x71640000;
      goto LABEL_82;
    }

    if ((MediaSubType - 1902207795) <= 0x3D && ((1 << (MediaSubType - 51)) & 0x2020000000000001) != 0 || (MediaSubType - 1902212657) <= 0x34 && ((1 << (MediaSubType - 49)) & 0x14000000000001) != 0)
    {
      goto LABEL_83;
    }

    v13 = 28771;
    goto LABEL_74;
  }

  if (MediaSubType > 2053202738)
  {
    if (MediaSubType <= 2053319474)
    {
      if ((MediaSubType - 2053202739) > 0x3D || ((1 << (MediaSubType - 51)) & 0x2020000000000001) == 0)
      {
        v10 = 30307;
LABEL_77:
        v12 = v10 | 0x7A610000;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (MediaSubType <= 2053923170)
    {
      if (MediaSubType != 2053319475)
      {
        v12 = 2053464883;
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (MediaSubType == 2054517601)
    {
      goto LABEL_83;
    }

    v12 = 2053923171;
LABEL_82:
    if (MediaSubType != v12)
    {
      goto LABEL_92;
    }

    goto LABEL_83;
  }

  if (MediaSubType <= 1902998903)
  {
    if (MediaSubType != 1902667126 && MediaSubType != 1902671459)
    {
      v12 = 1902928227;
      goto LABEL_82;
    }
  }

  else if (MediaSubType > 1903587384)
  {
    if (MediaSubType != 1903587385)
    {
      v10 = 24931;
      goto LABEL_77;
    }
  }

  else if (MediaSubType != 1902998904)
  {
    v12 = 1903522657;
    goto LABEL_82;
  }

LABEL_83:
  v15 = &dword_197165A68;
  v16 = 10;
  do
  {
    if (MediaSubType == *v15)
    {
      v7 = 1667591779;
      v9 = *(v15 - 2);
      goto LABEL_92;
    }

    v15 += 3;
    --v16;
  }

  while (v16);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(a1);
  if (!StreamBasicDescription)
  {
    goto LABEL_92;
  }

  mFormatID = StreamBasicDescription->mFormatID;
  v25 = 0;
  v24 = 8;
  if (AudioToolbox_AudioFormatGetProperty(1718183273, 4, &mFormatID, &v24, &v25))
  {
    v18 = 3528;
    goto LABEL_103;
  }

  v9 = v25;
  v7 = HIDWORD(v25);
  v18 = 3552;
  if (SHIDWORD(v25) <= 1885695586)
  {
    if (HIDWORD(v25) == 1667392371)
    {
      goto LABEL_92;
    }

    v19 = 1667591779;
LABEL_99:
    if (HIDWORD(v25) == v19)
    {
      v7 = 1667591779;
      goto LABEL_92;
    }

LABEL_103:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE52uLL, "<<<< AudioFormatDescription >>>>", v18, v3, v22, v23);
  }

  if (HIDWORD(v25) != 1885695587)
  {
    v19 = 2053467747;
    goto LABEL_99;
  }

LABEL_92:
  if (a2)
  {
    *a2 = v9;
  }

  result = 0;
  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t FigAudioFormatDescriptionGetCinematicAudioEffectEligibility(const opaqueCMFormatDescription *a1)
{
  if (!a1)
  {
    FigAudioFormatDescriptionGetCinematicAudioEffectEligibility_cold_3();
    return 0;
  }

  if (CMFormatDescriptionGetMediaType(a1) != 1936684398)
  {
    FigAudioFormatDescriptionGetCinematicAudioEffectEligibility_cold_1();
    return 0;
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    return 0;
  }

  theDict = 0;
  if (!FigCFDictionaryGetValueIfPresent(Extensions, @"SampleDescriptionExtensionAtoms", &theDict))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"ngst");
  if (!Value)
  {
    return 0;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFArrayGetTypeID())
  {
    v7 = CFGetTypeID(v4);
    if (v7 == CFDataGetTypeID())
    {
      FigAudioFormatDescriptionGetCinematicAudioEffectEligibility_cold_2(v4, &v9);
      return v9;
    }

    return 0;
  }

  v9 = 0;
  FigCFArrayApplyFunction(v4, fafd_checkNgstExtensionDataApplier, &v9);
  if (HIDWORD(v9))
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t fafd_IngestSignalingInfoFromExtensionData(const void *a1, int8x8_t *a2)
{
  v7 = 0;
  v6 = 0;
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDataGetTypeID()))
  {
    fafd_IngestSignalingInfoFromExtensionData_cold_2(&v8);
    return v8;
  }

  if (CFDataGetLength(a1) != 12)
  {
    fafd_IngestSignalingInfoFromExtensionData_cold_1(&v8);
    return v8;
  }

  v9.location = 0;
  v9.length = 12;
  CFDataGetBytes(a1, v9, &v6);
  result = 0;
  v6 = vrev32_s8(v6);
  v7 = bswap32(v7);
  a2[1].i32[0] = v7;
  *a2 = v6;
  return result;
}

uint64_t FigAudioFormatDescriptionGetEligibleCinematicAudioEffectVersion(const opaqueCMFormatDescription *a1, __int32 *a2)
{
  if (!a1)
  {
    FigAudioFormatDescriptionGetEligibleCinematicAudioEffectVersion_cold_2(&v15);
    return v15.u32[0];
  }

  if (CMFormatDescriptionGetMediaType(a1) != 1936684398)
  {
    FigAudioFormatDescriptionGetEligibleCinematicAudioEffectVersion_cold_1(&v15);
    return v15.u32[0];
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (!Extensions)
  {
    return 4294954578;
  }

  theDict = 0;
  if (!FigCFDictionaryGetValueIfPresent(Extensions, @"SampleDescriptionExtensionAtoms", &theDict))
  {
    return 4294954578;
  }

  Value = CFDictionaryGetValue(theDict, @"ngst");
  if (!Value)
  {
    return 4294954578;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 == CFArrayGetTypeID())
  {
    if (CFArrayGetCount(v6) > 0)
    {
      v8 = 0;
      v9 = 1;
      while (1)
      {
        v16 = 0;
        v15 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9 - 1);
        result = fafd_IngestSignalingInfoFromExtensionData(ValueAtIndex, &v15);
        if (result)
        {
          return result;
        }

        if (v15.i32[0] == 1667853921)
        {
          v12 = v15.i32[1];
          if (v15.i32[1] == 0x10000)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v15.i32[0] != 1885958241)
          {
            goto LABEL_17;
          }

          v12 = v15.i32[1];
        }

        if ((v12 & 0xFFFF0000) == 0x10000 && v16 == 1)
        {
          v13 = 1;
          v8 = v12;
          goto LABEL_18;
        }

LABEL_17:
        v13 = 0;
LABEL_18:
        if (v9 < CFArrayGetCount(v6))
        {
          ++v9;
          if (!v13)
          {
            continue;
          }
        }

        goto LABEL_31;
      }
    }

    return 4294954578;
  }

  v14 = CFGetTypeID(v6);
  if (v14 != CFDataGetTypeID())
  {
    return 4294954578;
  }

  v16 = 0;
  v15 = 0;
  result = fafd_IngestSignalingInfoFromExtensionData(v6, &v15);
  if (result)
  {
    return result;
  }

  if (v15.i32[0] == 1667853921)
  {
    v8 = v15.i32[1];
    if (v15.i32[1] == 0x10000)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v15.i32[0] != 1885958241)
    {
      goto LABEL_30;
    }

    v8 = v15.i32[1];
  }

  if ((v8 & 0xFFFF0000) == 0x10000 && v16 == 1)
  {
    v13 = 1;
    goto LABEL_31;
  }

LABEL_30:
  v8 = 0;
  v13 = 0;
LABEL_31:
  if (!v13)
  {
    return 4294954578;
  }

  result = 0;
  if (a2)
  {
    *a2 = v8;
  }

  return result;
}

_DWORD *FigAudioChannelLayoutGetChannelCount(_DWORD *result)
{
  if (result)
  {
    if (*result == 0x10000)
    {
      v1 = result[1];
      if (v1)
      {
        LODWORD(result) = 0;
        do
        {
          result = ((v1 & 1) + result);
          v2 = v1 >= 2;
          v1 >>= 1;
        }

        while (v2);
      }

      else
      {
        return 0;
      }
    }

    else if (*result)
    {
      return *result;
    }

    else
    {
      return result[2];
    }
  }

  return result;
}

__CFString *figAudioFormatDescriptionCopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v10, 0);
  v12 = asbdCopyDebugDesc(a1, DerivedStorage);
  v14 = DerivedStorage[5];
  v13 = DerivedStorage[6];
  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || (v16 = CFGetAllocator(a1), (v17 = CFDataCreate(v16, v13, v14)) == 0))
  {
    v19 = 0;
  }

  else
  {
    v18 = v17;
    v19 = CFCopyDescription(v17);
    CFRelease(v18);
  }

  v20 = aclCopyDebugDesc(DerivedStorage[8], DerivedStorage[7]);
  v21 = DerivedStorage[11];
  if (v21 && (v22 = DerivedStorage[10], v22 >= 0x30))
  {
    v29 = Mutable;
    v23 = CFGetAllocator(a1);
    v24 = CFStringCreateMutable(v23, 0);
    v25 = 0;
    v26 = v22 / 0x30;
    do
    {
      v27 = asbdCopyDebugDesc(a1, v21);
      if (v25)
      {
        CFStringAppend(v24, @"\n");
      }

      CFStringAppendFormat(v24, 0, @"\n\t\t\tIndex: %d \n\t\t\tChannelLayoutTag: 0x%x \n\t\t\tASBD: {%@\t}", v25, *(v21 + 40), v27);
      if (v27)
      {
        CFRelease(v27);
      }

      ++v25;
      v21 += 48;
    }

    while (v26 != v25);
    Mutable = v29;
  }

  else
  {
    v24 = CFRetain(@"(null)");
  }

  CFStringAppendFormat(Mutable, 0, @"\t\tASBD: {%@\t} \n\t\tcookie: {%@} \n\t\tACL: {%@}\n\t\tFormatList Array: {%@}", v12, v19, v20, v24);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return Mutable;
}

uint64_t figAudioFormatDescriptionEqual(const opaqueCMFormatDescription *a1, const opaqueCMFormatDescription *a2, unint64_t a3, unint64_t a4)
{
  result = CMAudioFormatDescriptionEqual(a1, a2, 7u, 0);
  if (result)
  {
    Extensions = CMFormatDescriptionGetExtensions(a1);
    v10 = CMFormatDescriptionGetExtensions(a2);

    return FigFormatDescriptionExtensionsDictionariesEqualIgnoringKeys(Extensions, v10, a3, a4);
  }

  return result;
}

__CFString *asbdCopyDebugDesc(const void *a1, uint64_t a2)
{
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"\n\t\t\tmSampleRate: %f \n\t\t\tmFormatID: '%c%c%c%c' \n\t\t\tmFormatFlags: 0x%x \n\t\t\tmBytesPerPacket: %u \n\t\t\tmFramesPerPacket: %u \n\t\t\tmBytesPerFrame: %u \n\t\t\tmChannelsPerFrame: %u \n\t\t\tmBitsPerChannel: %u ", *a2, HIBYTE(*(a2 + 8)), BYTE2(*(a2 + 8)), BYTE1(*(a2 + 8)), *(a2 + 8), *(a2 + 12), *(a2 + 16), *(a2 + 20), *(a2 + 24), *(a2 + 28), *(a2 + 32));
  return Mutable;
}

uint64_t getChannelLayoutTagFromLayout(_DWORD *a1, unint64_t a2)
{
  v5 = 4;
  v6 = -65536;
  if (HIDWORD(a2))
  {
    getChannelLayoutTagFromLayout_cold_1();
    return 4294901760;
  }

  else
  {
    Property = AudioToolbox_AudioFormatGetProperty(1668116596, a2, a1, &v5, &v6);
    result = v6;
    if (!Property && v6 == 6553601)
    {
      if (*a1)
      {
        return 6553601;
      }

      else
      {
        result = 6553601;
        if (a1[2] == 1)
        {
          if (a1[3] == 3)
          {
            return 4294901760;
          }

          else
          {
            return 6553601;
          }
        }
      }
    }
  }

  return result;
}

BOOL isValidAudioChannelLayoutAndSize(_DWORD *a1, unint64_t a2)
{
  if (!a1 || a2 < 4)
  {
    return 0;
  }

  if (!*a1)
  {
    return a2 >= 0xC && 20 * a1[2] + 12 <= a2;
  }

  return *a1 != 0x10000 || a2 >= 8;
}

uint64_t allocAudioChannelLayoutForAudioChannelLayoutTag(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= 0xFFFEFFFF)
  {
    v7 = MEMORY[0x19A8D7200](a1, 12, 2779978007, 0);
    if (!v7)
    {
      allocAudioChannelLayoutForAudioChannelLayoutTag_cold_1(&v11);
      return v11;
    }

    *v7 = 0;
    *(v7 + 8) = 0;
    v6 = 12;
    *v7 = a2;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = 0;
  *a3 = v6;
  *a4 = v7;
  return v9;
}

uint64_t CreateBasicRemoteAudioDeviceClock(CFTypeRef *a1)
{
  cf = 0;
  v2 = *MEMORY[0x1E695E480];
  HostTimeClock = CMClockGetHostTimeClock();
  CMTimeMake(&v18, 1, 10);
  TimeCallback = FigDerivedClockCreateWithGetTimeCallback(v2, gFigAudioDeviceRemoteClockCallbacks, HostTimeClock, &v18.value, 1, &cf, v4, v5);
  if (TimeCallback)
  {
    v16 = TimeCallback;
  }

  else
  {
    DerivedStorage = FigDerivedClockGetDerivedStorage(cf, v7, v8, v9, v10, v11, v12, v13);
    v15 = dispatch_queue_create("com.apple.coremedia.audioclock.reconnect", 0);
    *(DerivedStorage + 16) = v15;
    if (v15)
    {
      v16 = 0;
      *a1 = cf;
      return v16;
    }

    v16 = 4294954549;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

size_t FigAudioDeviceClockXPCRemoteGetObjectID(OpaqueCMClock *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a1)
  {
    v12 = DerivedStorage;
    if (CMClockGetHostTimeClock() == a1 || !FigDerivedClockVerifyCallbacksMatch(a1, gFigAudioDeviceRemoteClockCallbacks))
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< FADCR(XPC) >>>>", 0x251, v8, v15, v16);
    }

    else
    {
      result = 0;
      *a2 = *v12;
    }
  }

  else
  {
    FigAudioDeviceClockXPCRemoteGetObjectID_cold_1(&v17);
    return v17;
  }

  return result;
}

size_t FigAudioDeviceClock_GetServerClockToken(OpaqueCMClock *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (CMClockGetHostTimeClock() == a1 || !FigDerivedClockVerifyCallbacksMatch(a1, gFigAudioDeviceRemoteClockCallbacks))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< FADCR(XPC) >>>>", 0x27E, v8, v14, v15);
  }

  else
  {
    *a2 = *DerivedStorage;
    return 0;
  }
}

uint64_t remoteDeviceClock_DeadConnectionCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  *(result + 8) = 1;
  return result;
}

CFStringRef remoteDeviceClock_CopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v19 = 0;
  v18 = 0;
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = 0;
  remoteDeviceClock_GetAudioDevice(a1, &v19, &v18, &v17, v10, v11, v12, v13);
  v14 = CFGetAllocator(a1);
  v15 = "true";
  if (!v17)
  {
    v15 = "false";
  }

  return CFStringCreateWithFormat(v14, 0, @"RemoteAudioDeviceClockXPC(objectID=%lld deviceUID='%@', deviceID=%d, trackDefaultDevice=%s)", *DerivedStorage, v19, v18, v15);
}

size_t remoteDeviceClock_GetAudioDevice(uint64_t a1, void *a2, _DWORD *a3, BOOL *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  xdict = 0;
  v22 = 0;
  if (!DerivedStorage)
  {
    v16 = 4294954550;
    goto LABEL_14;
  }

  v14 = DerivedStorage;
  if (FigDerivedClockVerifyCallbacksMatch(a1, gFigAudioDeviceRemoteClockCallbacks))
  {
    v15 = FigXPCCreateBasicMessage(0x67646576u, *v14, &v22);
    if (v15)
    {
LABEL_16:
      v16 = v15;
      goto LABEL_14;
    }

    v16 = FigXPCRemoteClientSendSyncMessageCreatingReply(qword_1ED4CC930, v22, &xdict);
    FigXPCRemoteClientKillServerOnTimeout(qword_1ED4CC930, v16, "remoteDeviceClock_GetAudioDevice", 0);
    if (!v16)
    {
      if (!a2 || (v15 = FigXPCMessageCopyCFString(xdict, "DeviceUID", a2), !v15))
      {
        if (a3)
        {
          *a3 = xpc_dictionary_get_int64(xdict, "DeviceID");
        }

        v16 = 0;
        if (a4)
        {
          *a4 = xpc_dictionary_get_BOOL(xdict, "TrackDefaultDevice");
        }

        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_14:
    FigXPCRelease(v22);
    FigXPCRelease(xdict);
    return v16;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE36uLL, "<<<< FADCR(XPC) >>>>", 0x1B3, v8, v18, v19);
}

void MaybeReacquireServerClockObject(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  if (FigAtomicCompareAndSwap32(0, 1u, (DerivedStorage + 12)))
  {
    v17 = FigDerivedClockGetDerivedStorage(a1, v10, v11, v12, v13, v14, v15, v16);
    if (*v17)
    {
      FigXPCRemoteClientDisassociateObject(qword_1ED4CC930, *v17);
      *v17 = 0;
    }

    CFRetain(a1);
    v18 = *(v17 + 16);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = __ReacquireServerClockObject_block_invoke;
    v19[3] = &__block_descriptor_tmp_11_1;
    v19[4] = v17;
    v19[5] = a1;
    dispatch_async(v18, v19);
  }
}

void __ReacquireServerClockObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = *(a1 + 32);
  if (*(v9 + 12) && !*v9)
  {
    __ReacquireServerClockObject_block_invoke_cold_1(a1, (a1 + 32), a3, a4, a5, a6, a7, a8);
  }

  v10 = *(a1 + 40);

  CFRelease(v10);
}

uint64_t FigCustomURLRequestInfoSetNSURLAuthenticationChallenge(__CFDictionary *a1, void *value)
{
  if (a1)
  {
    if (value)
    {
      CFDictionarySetValue(a1, @"RequestInfoNSURLAuthenticationChallenge", value);
    }

    else
    {
      CFDictionaryRemoveValue(a1, @"RequestInfoNSURLAuthenticationChallenge");
    }

    CFDictionaryRemoveValue(a1, @"RequestInfoSerializedNSURLAuthenticationChallenge");
    return 0;
  }

  else
  {
    FigCustomURLRequestInfoSetNSURLAuthenticationChallenge_cold_1(&v4);
    return v4;
  }
}

uint64_t FigCustomURLRequestInfoCopyNSURLAuthenticationChallenge(const __CFDictionary *a1, const void **value)
{
  if (a1)
  {
    if (value)
    {
      if (CFDictionaryGetValueIfPresent(a1, @"RequestInfoNSURLAuthenticationChallenge", value))
      {
        v3 = 0;
      }

      else
      {
        v3 = 4294949936;
      }

      if (*value)
      {
        CFRetain(*value);
      }
    }

    else
    {
      FigCustomURLRequestInfoCopyNSURLAuthenticationChallenge_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigCustomURLRequestInfoCopyNSURLAuthenticationChallenge_cold_2(&v6);
    return v6;
  }

  return v3;
}

uint64_t FigCustomURLResponseInfoSetNSURLCredential(__CFDictionary *a1, void *value)
{
  if (a1)
  {
    if (value)
    {
      CFDictionarySetValue(a1, @"ResponseInfoNSURLCredential", value);
    }

    else
    {
      CFDictionaryRemoveValue(a1, @"ResponseInfoNSURLCredential");
    }

    CFDictionaryRemoveValue(a1, @"ResponseInfoSerializedNSURLCredential");
    return 0;
  }

  else
  {
    FigCustomURLResponseInfoSetNSURLCredential_cold_1(&v4);
    return v4;
  }
}

uint64_t FigCustomURLResponseInfoCopyNSURLCredential(const __CFDictionary *a1, const void **value)
{
  if (a1)
  {
    if (value)
    {
      if (CFDictionaryGetValueIfPresent(a1, @"ResponseInfoNSURLCredential", value))
      {
        v3 = 0;
      }

      else
      {
        v3 = 4294949936;
      }

      if (*value)
      {
        CFRetain(*value);
      }
    }

    else
    {
      FigCustomURLResponseInfoCopyNSURLCredential_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigCustomURLResponseInfoCopyNSURLCredential_cold_2(&v6);
    return v6;
  }

  return v3;
}

uint64_t FigCustomURLResponseInfoSetNSURLSessionAuthChallengeDisposition(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    FigCFDictionarySetCFIndex(a1, @"ResponseInfoNSURLSessionAuthChallengeDispositionKey", a2, a4, a5, a6, a7, a8);
    return 0;
  }

  else
  {
    FigCustomURLResponseInfoSetNSURLSessionAuthChallengeDisposition_cold_1(&v9);
    return v9;
  }
}

uint64_t FigHALAudioConfigChangeCreateRecord(int a1, uint64_t *a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x100004021716A34uLL);
  if (v6)
  {
    *v6 = a1;
    if (a2)
    {
      v7 = *a2;
      *(v6 + 3) = *(a2 + 2);
      *(v6 + 4) = v7;
    }

    v8 = 0;
    *a3 = v6;
  }

  else
  {
    FigHALAudioConfigChangeCreateRecord_cold_1(&v10);
    return v10;
  }

  return v8;
}

uint64_t FigHALAudioConfigChangeCloneRecord(int a1, uint64_t a2, uint64_t *a3)
{
  FigHALAudioConfigChangeCreateRecord(a1, 0, a3);
  v5 = *a3;
  v6 = *(a2 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 32);
  *v5 = *a2;
  *(v5 + 16) = v8;
  *(v5 + 32) = v7;
  *(v5 + 48) = v6;
  return 0;
}

void FigHALAudioConfigChangeSendRequest(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (GetHostCallbackQueue_sInitCallbackQueueOnce != -1)
  {
    FigHALAudioConfigChangeSendRequest_cold_1();
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __FigHALAudioConfigChangeSendRequest_block_invoke;
  v8[3] = &__block_descriptor_tmp_27;
  v9 = a2;
  v8[4] = a1;
  v8[5] = a3;
  v8[6] = a4;
  dispatch_async(GetHostCallbackQueue_sCallbackQueue, v8);
}

void FigHALAudioConfigChangeSendRequestWithCustomChangeRecord(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (GetHostCallbackQueue_sInitCallbackQueueOnce != -1)
  {
    FigHALAudioConfigChangeSendRequest_cold_1();
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __FigHALAudioConfigChangeSendRequestWithCustomChangeRecord_block_invoke;
  v8[3] = &__block_descriptor_tmp_5_0;
  v9 = a2;
  v8[4] = a1;
  v8[5] = a3;
  v8[6] = a4;
  dispatch_async(GetHostCallbackQueue_sCallbackQueue, v8);
}

void FigHALAudioPropertySendOneChange(uint64_t (**a1)(void, uint64_t, uint64_t, _DWORD *), uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v85 = *MEMORY[0x1E69E9840];
  v57[0] = a3;
  v57[1] = a4;
  v57[2] = a5;
  v56 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v56, &type);
  v11 = v56;
  v12 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
  v14 = v11 & 0xFFFFFFFE;
  if (v12)
  {
    v14 = v11;
  }

  if (v14)
  {
    v15 = MEMORY[0x1E69E9830];
    if ((a3 & 0x80000000) != 0)
    {
      v16 = __maskrune(HIBYTE(a3), 0x40000uLL);
    }

    else
    {
      v16 = *(MEMORY[0x1E69E9830] + 4 * HIBYTE(a3) + 60) & 0x40000;
    }

    if (v16)
    {
      v18 = HIBYTE(a3);
    }

    else
    {
      v18 = 46;
    }

    v53 = v18;
    if (BYTE2(a3) > 0x7Fu)
    {
      v19 = __maskrune(BYTE2(a3), 0x40000uLL);
    }

    else
    {
      v19 = *(v15 + 4 * BYTE2(a3) + 60) & 0x40000;
    }

    if (v19)
    {
      v20 = BYTE2(a3);
    }

    else
    {
      v20 = 46;
    }

    v52 = v20;
    if (BYTE1(a3) > 0x7Fu)
    {
      v21 = __maskrune(BYTE1(a3), 0x40000uLL);
    }

    else
    {
      v21 = *(v15 + 4 * BYTE1(a3) + 60) & 0x40000;
    }

    if (v21)
    {
      v22 = BYTE1(a3);
    }

    else
    {
      v22 = 46;
    }

    v51 = v22;
    if (a3 > 0x7Fu)
    {
      v23 = __maskrune(a3, 0x40000uLL);
    }

    else
    {
      v23 = *(v15 + 4 * a3 + 60) & 0x40000;
    }

    if (v23)
    {
      v24 = a3;
    }

    else
    {
      v24 = 46;
    }

    v50 = v24;
    if ((a4 & 0x80000000) != 0)
    {
      v25 = __maskrune(HIBYTE(a4), 0x40000uLL);
    }

    else
    {
      v25 = *(v15 + 4 * HIBYTE(a4) + 60) & 0x40000;
    }

    if (v25)
    {
      v26 = HIBYTE(a4);
    }

    else
    {
      v26 = 46;
    }

    v49 = v26;
    if (BYTE2(a4) > 0x7Fu)
    {
      v27 = __maskrune(BYTE2(a4), 0x40000uLL);
    }

    else
    {
      v27 = *(v15 + 4 * BYTE2(a4) + 60) & 0x40000;
    }

    if (v27)
    {
      v28 = BYTE2(a4);
    }

    else
    {
      v28 = 46;
    }

    v48 = v28;
    if (BYTE1(a4) > 0x7Fu)
    {
      v29 = __maskrune(BYTE1(a4), 0x40000uLL);
    }

    else
    {
      v29 = *(v15 + 4 * BYTE1(a4) + 60) & 0x40000;
    }

    if (v29)
    {
      v30 = BYTE1(a4);
    }

    else
    {
      v30 = 46;
    }

    v47 = v30;
    v54 = a1;
    if (a4 > 0x7Fu)
    {
      v31 = __maskrune(a4, 0x40000uLL);
    }

    else
    {
      v31 = *(v15 + 4 * a4 + 60) & 0x40000;
    }

    if (v31)
    {
      v32 = a4;
    }

    else
    {
      v32 = 46;
    }

    if ((a5 & 0x80000000) != 0)
    {
      v33 = __maskrune(HIBYTE(a5), 0x40000uLL);
    }

    else
    {
      v33 = *(v15 + 4 * HIBYTE(a5) + 60) & 0x40000;
    }

    if (v33)
    {
      v34 = HIBYTE(a5);
    }

    else
    {
      v34 = 46;
    }

    if (BYTE2(a5) > 0x7Fu)
    {
      v35 = __maskrune(BYTE2(a5), 0x40000uLL);
    }

    else
    {
      v35 = *(v15 + 4 * BYTE2(a5) + 60) & 0x40000;
    }

    if (v35)
    {
      v36 = BYTE2(a5);
    }

    else
    {
      v36 = 46;
    }

    if (BYTE1(a5) > 0x7Fu)
    {
      v37 = __maskrune(BYTE1(a5), 0x40000uLL);
    }

    else
    {
      v37 = *(v15 + 4 * BYTE1(a5) + 60) & 0x40000;
    }

    if (v37)
    {
      v38 = BYTE1(a5);
    }

    else
    {
      v38 = 46;
    }

    if (a5 > 0x7Fu)
    {
      v39 = __maskrune(a5, 0x40000uLL);
    }

    else
    {
      v39 = *(v15 + 4 * a5 + 60) & 0x40000;
    }

    v58 = 136318210;
    if (v39)
    {
      v40 = a5;
    }

    else
    {
      v40 = 46;
    }

    v59 = "FigHALAudioPropertySendOneChange";
    v60 = 1024;
    v61 = v53;
    v62 = 1024;
    v63 = v52;
    v64 = 1024;
    v65 = v51;
    v66 = 1024;
    v67 = v50;
    v68 = 1024;
    v69 = v49;
    v70 = 1024;
    v71 = v48;
    v72 = 1024;
    v73 = v47;
    v74 = 1024;
    v75 = v32;
    v76 = 1024;
    v77 = v34;
    v78 = 1024;
    v79 = v36;
    v80 = 1024;
    v81 = v38;
    v82 = 1024;
    v83 = v40;
    v17 = _os_log_send_and_compose_impl();
    LOBYTE(v11) = v56;
    a2 = a2;
    a1 = v54;
  }

  else
  {
    v17 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v17, v17 != v84, v11, 0, v13);
  v41 = (*a1)(a1, a2, 1, v57);
  v56 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v56, &type);
  v43 = v56;
  if (os_log_type_enabled(v42, type))
  {
    v45 = v43;
  }

  else
  {
    v45 = v43 & 0xFFFFFFFE;
  }

  if (v45)
  {
    v58 = 136316162;
    v59 = "FigHALAudioPropertySendOneChange";
    v60 = 1024;
    v61 = v41;
    v62 = 1024;
    v63 = a3;
    v64 = 1024;
    v65 = a4;
    v66 = 1024;
    v67 = a5;
    v46 = _os_log_send_and_compose_impl();
    LOBYTE(v43) = v56;
  }

  else
  {
    v46 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v46, v46 != v84, v43, 0, v44);
}

void FigHALAudioPropertySendChanges(uint64_t (**a1)(void, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v20 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v20, &type);
  v9 = v20;
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
    v21 = 136315650;
    v22 = "FigHALAudioPropertySendChanges";
    v23 = 1024;
    v24 = a2;
    v25 = 1024;
    v26 = a3;
    v12 = _os_log_send_and_compose_impl();
    LOBYTE(v9) = v20;
  }

  else
  {
    v12 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v12, v12 != v29, v9, 0, v10);
  v13 = (*a1)(a1, a2, a3, a4);
  v20 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v20, &type);
  v15 = v20;
  if (os_log_type_enabled(v14, type))
  {
    v17 = v15;
  }

  else
  {
    v17 = v15 & 0xFFFFFFFE;
  }

  if (v17)
  {
    v21 = 136315906;
    v22 = "FigHALAudioPropertySendChanges";
    v23 = 1024;
    v24 = v13;
    v25 = 1024;
    v26 = a2;
    v27 = 1024;
    v28 = a3;
    v18 = _os_log_send_and_compose_impl();
    LOBYTE(v15) = v20;
  }

  else
  {
    v18 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v18, v18 != v29, v15, 0, v16);
}

void FigHALAudioPropertySendOneChangeAsync(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (GetHostCallbackQueue_sInitCallbackQueueOnce != -1)
  {
    FigHALAudioConfigChangeSendRequest_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigHALAudioPropertySendOneChangeAsync_block_invoke;
  block[3] = &__block_descriptor_tmp_6_0;
  block[4] = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  dispatch_async(GetHostCallbackQueue_sCallbackQueue, block);
}

dispatch_queue_t __GetHostCallbackQueue_block_invoke()
{
  result = dispatch_queue_create("FigHALAudioHostCallbackQueue", 0);
  GetHostCallbackQueue_sCallbackQueue = result;
  return result;
}

void ids_didReceivePackage(const void *a1, const void *a2)
{
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
    if (!*DerivedStorage)
    {
      v5 = DerivedStorage;
      CFRetain(a2);
      CFRetain(a1);
      v6 = *(v5 + 6);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __ids_didReceivePackage_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = v5;
      block[5] = a2;
      block[6] = a1;
      dispatch_async(v6, block);
    }
  }
}

size_t FigTransportConnectionIDSCreate(uint64_t a1, CFTypeRef *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a2)
  {
    FigTransportConnectionIDSCreate_cold_3(v49);
    v4 = v49[0];
LABEL_13:
    if (cf)
    {
      CFRelease(cf);
    }

    return v4;
  }

  if (FigTransportConnectionIDSCreate_onceToken != -1)
  {
    FigTransportConnectionIDSCreate_cold_1();
  }

  v4 = 0;
  if (!ids_IDSOpenSocketOptionTransportKey)
  {
    goto LABEL_13;
  }

  if (!ids_IDSOpenSocketOptionPriorityKey)
  {
    goto LABEL_13;
  }

  if (!ids_IDSOpenSocketOptionScopeKey)
  {
    goto LABEL_13;
  }

  if (!_MergedGlobals_30)
  {
    goto LABEL_13;
  }

  if (!qword_1ED4CC950)
  {
    goto LABEL_13;
  }

  if (!qword_1ED4CC948)
  {
    goto LABEL_13;
  }

  if (!ids_IDSDeviceConnectionClass)
  {
    goto LABEL_13;
  }

  if (!ids_IDSServiceClass)
  {
    goto LABEL_13;
  }

  ClassID = NeroTransportConnectionGetClassID();
  v4 = CMDerivedObjectCreate(a1, &kFigTransportConnectionUSBVTable, ClassID, &cf, v6, v7, v8, v9);
  if (v4)
  {
    goto LABEL_13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage(cf);
  if (ids_ensureAndGetIDSServiceObject_sIDSServiceSetupOnce != -1)
  {
    FigTransportConnectionIDSCreate_cold_2();
  }

  v11 = ids_ensureAndGetIDSServiceObject_neroTransportConnectionIDSService;
  v12 = [ids_ensureAndGetIDSServiceObject_neroTransportConnectionIDSService devices];
  if ([v12 count])
  {
    v13 = 0;
    do
    {
      if ([objc_msgSend(v12 objectAtIndexedSubscript:{v13), "isDefaultPairedDevice"}])
      {
        *(DerivedStorage + 160) = [v12 objectAtIndexedSubscript:v13];
      }

      ++v13;
    }

    while ([v12 count] > v13);
  }

  v14 = [*(DerivedStorage + 160) deviceType];
  v15 = *(DerivedStorage + 160);
  if (v14 == 6)
  {
    if (v15)
    {
      [v15 operatingSystemVersion];
      if (v43 > 10)
      {
        goto LABEL_30;
      }

      v15 = *(DerivedStorage + 160);
    }

    else
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
    }
  }

  if ([v15 deviceType] != 2)
  {
    goto LABEL_38;
  }

  v16 = *(DerivedStorage + 160);
  if (!v16)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    goto LABEL_38;
  }

  [v16 operatingSystemVersion];
  if (v40 < 18)
  {
LABEL_38:
    v39 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v39, &type);
    v23 = v39;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 0xFFFFFFFE;
    }

    if (v25)
    {
      v47 = 136315138;
      v48 = "FigTransportConnectionIDSCreate";
      v26 = _os_log_send_and_compose_impl();
      LOBYTE(v23) = v39;
    }

    else
    {
      v26 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v26, v26 != v49, v23, 0, v24);
    v27 = NeroMessageCenterSocket;
    goto LABEL_47;
  }

LABEL_30:
  if (!FigGetCFPreferenceBooleanWithDefault(@"EnableNeroIDSService", @"com.apple.coremedia", 0) && !_os_feature_enabled_impl())
  {
    goto LABEL_38;
  }

  v39 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &v39, &type);
  v18 = v39;
  if (os_log_type_enabled(v17, type))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 0xFFFFFFFE;
  }

  if (v20)
  {
    v47 = 136315138;
    v48 = "FigTransportConnectionIDSCreate";
    v21 = _os_log_send_and_compose_impl();
    LOBYTE(v18) = v39;
  }

  else
  {
    v21 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v21, v21 != v49, v18, 0, v19);
  v27 = NeroMessageCenterService;
LABEL_47:
  v28 = [v27 alloc];
  v29 = [v28 initWithIDSService:v11 connection:cf];
  *(DerivedStorage + 72) = v29;
  if (!v29)
  {
    goto LABEL_59;
  }

  v30 = FigDispatchQueueCreateWithPriority("FigTransportConnectionIDS", 0, 28);
  *(DerivedStorage + 8) = v30;
  if (!v30)
  {
    goto LABEL_59;
  }

  v31 = FigDispatchQueueCreateWithPriority("FigTransportConnectionIDS.data", 0, 28);
  *(DerivedStorage + 16) = v31;
  if (!v31)
  {
    goto LABEL_59;
  }

  v32 = dispatch_semaphore_create(0);
  *(DerivedStorage + 144) = v32;
  if (!v32)
  {
    goto LABEL_59;
  }

  v33 = dispatch_semaphore_create(0);
  *(DerivedStorage + 152) = v33;
  if (!v33)
  {
    goto LABEL_59;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"FigMemoryPool_LoggingName", @"TransportConnectionIDS");
  v35 = CMMemoryPoolCreate(Mutable);
  *(DerivedStorage + 56) = v35;
  if (Mutable)
  {
    CFRelease(Mutable);
    v35 = *(DerivedStorage + 56);
  }

  if (!v35)
  {
LABEL_59:
    v4 = 4294955245;
    goto LABEL_13;
  }

  Allocator = CMMemoryPoolGetAllocator(v35);
  *(DerivedStorage + 64) = Allocator;
  if (Allocator)
  {
    CFRetain(Allocator);
  }

  v4 = 0;
  *a2 = cf;
  return v4;
}

void *__FigTransportConnectionIDSCreate_block_invoke()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/IDSFoundation.framework/IDSFoundation", 1);
  if (v0)
  {
    v1 = v0;
    ids_IDSOpenSocketOptionTransportKey = dlsym(v0, "IDSOpenSocketOptionTransportKey");
    ids_IDSOpenSocketOptionPriorityKey = dlsym(v1, "IDSOpenSocketOptionPriorityKey");
    ids_IDSOpenSocketOptionScopeKey = dlsym(v1, "IDSOpenSocketOptionScopeKey");
  }

  result = dlopen("/System/Library/PrivateFrameworks/IDS.framework/IDS", 1);
  if (result)
  {
    v3 = result;
    ids_IDSDeviceConnectionClass = objc_getClass("IDSDeviceConnection");
    ids_IDSServiceClass = objc_getClass("IDSService");
    _MergedGlobals_30 = dlsym(v3, "IDSLinkPreferenceOptionPacketsPerSecondKey");
    qword_1ED4CC950 = dlsym(v3, "IDSLinkPreferenceOptionInputBytesPerSecondKey");
    result = dlsym(v3, "IDSLinkPreferenceOptionOutputBytesPerSecondKey");
    qword_1ED4CC948 = result;
  }

  return result;
}

void __ids_didReceivePackage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, *(a1 + 40));
    }
  }

  CFRelease(*(a1 + 48));
  v4 = *(a1 + 40);

  CFRelease(v4);
}

uint64_t ids_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  *DerivedStorage = 1;
  v2 = *(DerivedStorage + 72);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 72) = 0;
  }

  return 0;
}

void ids_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  ids_Invalidate(a1);
  v3 = DerivedStorage[1];
  if (v3)
  {
    dispatch_release(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    dispatch_release(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[5];
  if (v5)
  {
    _Block_release(v5);
    DerivedStorage[5] = 0;
  }

  v6 = DerivedStorage[18];
  if (v6)
  {
    dispatch_release(v6);
    DerivedStorage[18] = 0;
  }

  v7 = DerivedStorage[19];
  if (v7)
  {
    dispatch_release(v7);
    DerivedStorage[19] = 0;
  }

  v8 = DerivedStorage[7];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[7] = 0;
  }

  v9 = DerivedStorage[8];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[8] = 0;
  }

  v10 = DerivedStorage[6];
  if (v10)
  {
    dispatch_release(v10);
    DerivedStorage[6] = 0;
  }
}

__CFString *ids_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigTransportConnectionIDS %p>", a1);
  return Mutable;
}

uint64_t ids_Start(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage(a1) + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __ids_Start_block_invoke;
  v5[3] = &unk_1E74A0240;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_197013AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ids_Stop(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(CMBaseObjectGetDerivedStorage(a1) + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __ids_Stop_block_invoke;
  v5[3] = &unk_1E74A0240;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_197013BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ids_threadMain(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  do
  {
    v3 = objc_autoreleasePoolPush();
    v4 = CMBaseObjectGetDerivedStorage(a1);
    CFRetain(a1);
    v5 = *(v4 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __ids_sendPackagesMain_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = v4;
    block[5] = a1;
    dispatch_async(v5, block);
    while (!*(v4 + 88) && [*(v4 + 72) isActive])
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(v4 + 152);
      v8 = dispatch_time(0, 300000000);
      if (!dispatch_semaphore_wait(v7, v8))
      {
        ids_sendData(a1, 0);
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRetain(a1);
    v9 = *(v4 + 16);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __ids_sendPackagesMain_block_invoke_3;
    v13[3] = &__block_descriptor_48_e5_v8__0l;
    v13[4] = v4;
    v13[5] = a1;
    dispatch_async(v9, v13);
    v10 = *(DerivedStorage + 144);
    v11 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v10, v11);
    objc_autoreleasePoolPop(v3);
  }

  while (!*(DerivedStorage + 88) && ([*(DerivedStorage + 72) isActive] & 1) != 0);
  return 0;
}

void __ids_sendPackagesMain_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 112) = 0;
  *(*(a1 + 32) + 120) = *(a1 + 32) + 112;
  *(*(a1 + 32) + 128) = 0;
  *(*(a1 + 32) + 136) = *(a1 + 32) + 128;
  v2 = *(a1 + 32);
  v2[89] = 1;
  if (!*v2)
  {
    CFRetain(*(a1 + 40));
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __ids_sendPackagesMain_block_invoke_2;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v4 = *(a1 + 32);
    dispatch_async(*(v4 + 48), v3);
  }

  CFRelease(*(a1 + 40));
}

void __ids_sendPackagesMain_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 1, 0);
    }
  }

  v4 = *(a1 + 40);

  CFRelease(v4);
}

void ids_sendData(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v4 = *(DerivedStorage + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __ids_sendData_block_invoke;
  v5[3] = &__block_descriptor_44_e5_v8__0l;
  v6 = a2;
  v5[4] = DerivedStorage;
  dispatch_sync(v4, v5);
}

void __ids_sendPackagesMain_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v2[89] = 0;
  if (!*v2)
  {
    CFRetain(*(a1 + 40));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __ids_sendPackagesMain_block_invoke_4;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v10 = *(a1 + 32);
    dispatch_async(*(v10 + 48), v9);
    v2 = *(a1 + 32);
  }

  for (i = 1; i != 3; ++i)
  {
    while (1)
    {
      v4 = &v2[16 * i];
      v7 = *(v4 + 12);
      v5 = (v4 + 96);
      v6 = v7;
      if (!v7)
      {
        break;
      }

      v8 = *v6;
      *v5 = *v6;
      if (!v8)
      {
        *(*(a1 + 32) + 16 * i + 104) = *(a1 + 32) + 16 * i + 96;
      }

      free(v6[1]);
      free(v6);
      v2 = *(a1 + 32);
    }
  }

  CFRelease(*(a1 + 40));
}

void __ids_sendPackagesMain_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 2, 0);
    }
  }

  v4 = *(a1 + 40);

  CFRelease(v4);
}

void __ids_sendData_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16 * v2 + 96);
    if (v4 && [*(v3 + 72) sendMemoryBlock:v4[1] withLength:v4[2]])
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 32) + 16 * v5;
      v7 = **(v6 + 96);
      *(v6 + 96) = v7;
      if (!v7)
      {
        *(*(a1 + 32) + 16 * v5 + 104) = *(a1 + 32) + 16 * v5 + 96;
      }

      free(v4);
    }
  }

  else
  {
    for (i = 112; i != 144; i += 16)
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + i);
      if (v10 && [*(v9 + 72) sendMemoryBlock:v10[1] withLength:v10[2]])
      {
        v11 = *(a1 + 32);
        v12 = **(v11 + i);
        *(v11 + i) = v12;
        if (!v12)
        {
          *(*(a1 + 32) + i + 8) = *(a1 + 32) + i;
        }

        free(v10);
      }
    }
  }
}

void __ids_ensureAndGetIDSServiceObject_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  ids_ensureAndGetIDSServiceObject_neroTransportConnectionIDSService = [[ids_IDSServiceClass alloc] initWithService:@"com.apple.private.alloy.fignero"];
  if (!ids_ensureAndGetIDSServiceObject_neroTransportConnectionIDSService)
  {
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
      v7 = "ids_ensureAndGetIDSServiceObject_block_invoke";
      v4 = _os_log_send_and_compose_impl();
      LOBYTE(v1) = v6[0];
    }

    else
    {
      v4 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v4, v4 != &v8, v1, 0, v2);
  }
}

uint64_t OUTLINED_FUNCTION_1_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19)
{
  a19 = 0;
  a18 = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, &a19, &a18);
}

BOOL OUTLINED_FUNCTION_5_14(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type, int a19)
{

  return os_log_type_enabled(a1, type);
}

void *OUTLINED_FUNCTION_7_11()
{

  return malloc_type_calloc(1uLL, 0x18uLL, 0x10A00404E934A1DuLL);
}

uint64_t FigIsHDRAllowedOnDevice()
{
  if (FigIsHDRAllowedOnDevice_onceTokenIsHDRAllowedOnDevice != -1)
  {
    FigIsHDRAllowedOnDevice_cold_1();
  }

  return FigIsHDRAllowedOnDevice_sIsHDRAllowedOnDevice;
}

uint64_t __FigIsHDRAllowedOnDevice_block_invoke()
{
  v0 = MGGetBoolAnswer();
  v1 = 0;
  result = MGGetProductType();
  if (result <= 2385671068)
  {
    if (result > 789142226)
    {
      if (result > 1380747800)
      {
        if (result == 1380747801)
        {
          goto LABEL_27;
        }

        v3 = 1878257790;
      }

      else
      {
        if (result == 789142227)
        {
          goto LABEL_27;
        }

        v3 = 896202454;
      }
    }

    else if (result > 240711086)
    {
      if (result == 240711087)
      {
        goto LABEL_27;
      }

      v3 = 337183581;
    }

    else
    {
      if (result == 42878382)
      {
        goto LABEL_27;
      }

      v3 = 228444038;
    }
  }

  else if (result <= 3215673113)
  {
    if (result > 2781508712)
    {
      if (result == 2781508713)
      {
        goto LABEL_27;
      }

      v3 = 3196805751;
    }

    else
    {
      if (result == 2385671069)
      {
        goto LABEL_27;
      }

      v3 = 2614323575;
    }
  }

  else if (result <= 3402870383)
  {
    if (result == 3215673114)
    {
      goto LABEL_27;
    }

    v3 = 3397214291;
  }

  else
  {
    if (result == 3402870384 || result == 3645319985)
    {
      goto LABEL_27;
    }

    v3 = 4242862982;
  }

  if (result != v3)
  {
    v1 = v0;
  }

LABEL_27:
  FigIsHDRAllowedOnDevice_sIsHDRAllowedOnDevice = v1;
  return result;
}

BOOL FigIsDeviceCapableOfGeneratingStatisticsForHDR()
{
  if (FigIsDeviceCapableOfGeneratingStatisticsForHDR_onceTokenDeviceCapableOfGeneratingStatisticsForHDR != -1)
  {
    FigIsDeviceCapableOfGeneratingStatisticsForHDR_cold_1();
  }

  return (FigIsDeviceCapableOfGeneratingStatisticsForHDR_sDeviceCapableOfGeneratingStatisticsForHDR & 1) == 0;
}

void __FigIsDeviceCapableOfGeneratingStatisticsForHDR_block_invoke()
{
  if (FigIsHDRAllowedOnDevice_onceTokenIsHDRAllowedOnDevice != -1)
  {
    FigIsHDRAllowedOnDevice_cold_1();
  }

  if (!FigIsHDRAllowedOnDevice_sIsHDRAllowedOnDevice)
  {
    FigIsDeviceCapableOfGeneratingStatisticsForHDR_sDeviceCapableOfGeneratingStatisticsForHDR = 1;
  }
}

uint64_t ParseAC3MP4Cookie(unsigned __int8 *a1, unsigned int a2, uint64_t a3, int *a4)
{
  v4 = 4294954582;
  if (a1 && a2 >= 0xB)
  {
    v5 = a1[8] >> 6;
    if (v5 == 3)
    {
      return 4294954582;
    }

    v6 = ParseEnhancedAC3MP4Cookie_theSampleRateTable[v5];
    v7 = a1[9];
    v8 = (v7 >> 3) & 7;
    v9 = ParseAC3MP4Cookie_theChannelTable[v8];
    v10 = v7 & 4;
    if (a4)
    {
      if (v8 > 4)
      {
        if (v8 == 5)
        {
          v12 = v10 == 0;
          v11 = 10092549;
          v13 = 9895940;
        }

        else
        {
          v12 = v10 == 0;
          if (v8 == 6)
          {
            v11 = 9043973;
            v13 = 8650756;
          }

          else
          {
            v11 = 8060934;
            v13 = 7798789;
          }
        }
      }

      else
      {
        switch(v8)
        {
          case 1:
            v12 = v10 == 0;
            v11 = 9764866;
            v13 = 6553601;
            break;
          case 3:
            v11 = 9961476;
            v12 = v10 == 0;
            v13 = 9830403;
            break;
          case 4:
            v11 = 10027012;
            v12 = v10 == 0;
            v13 = 8585219;
            break;
          default:
            v12 = v10 == 0;
            v11 = 8716291;
            v13 = 6619138;
            break;
        }
      }

      if (v12)
      {
        v11 = v13;
      }

      *a4 = v11;
    }

    if (((a1[10] >> 5) & 0xFFFFFFE7 | (8 * (a1[9] & 3))) > 0x12)
    {
      return 4294954582;
    }

    else
    {
      v4 = 0;
      if (a3)
      {
        *a3 = v6;
        *(a3 + 8) = 1633889587;
        *(a3 + 16) = 0x60000000000;
        *(a3 + 24) = 0;
        *(a3 + 28) = v9 + (v10 >> 2);
        *(a3 + 32) = 0;
      }
    }
  }

  return v4;
}

uint64_t ParseEnhancedAC3MP4Cookie(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, unsigned int *a5)
{
  v68 = *MEMORY[0x1E69E9840];
  result = 4294954582;
  if (!a1 || a2 < 0xD)
  {
    return result;
  }

  v8 = 0;
  v9 = a1 + 8;
  v10 = a2 - 8;
  v11 = *(a1 + 9) & 7;
  v39 = 0;
  v12 = (a1 + 10);
  v13 = 0.0;
  v14 = 0.0;
  do
  {
    if (&v12[-v9 + 3] > v10)
    {
      return 4294954582;
    }

    v15 = *v12 >> 6;
    v67 = 0;
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    __src = 0uLL;
    if (v15 == 3)
    {
      return 4294954582;
    }

    if (*&ParseEnhancedAC3MP4Cookie_theSampleRateTable[v15] > v14 || v8 == 0)
    {
      v13 = *&ParseEnhancedAC3MP4Cookie_theSampleRateTable[v15];
      v14 = v13;
    }

    v17 = v12[1];
    v18 = (v17 >> 1) & 7;
    if (v18 > 4)
    {
      switch(v18)
      {
        case 5u:
          LODWORD(__src) = 1;
          DWORD1(v41) = 3;
          v19 = 4;
          DWORD2(v42) = 2;
          HIDWORD(v43) = 9;
          if (v17)
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        case 6u:
          LODWORD(__src) = 1;
          DWORD1(v41) = 2;
          v19 = 4;
          DWORD2(v42) = 5;
          HIDWORD(v43) = 6;
          if ((v17 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_31:
          v20 = 20 * v19++;
          *(&__src + v20) = 4;
          goto LABEL_32;
        case 7u:
          LODWORD(__src) = 1;
          DWORD1(v41) = 3;
          v19 = 5;
          DWORD2(v42) = 2;
          HIDWORD(v43) = 5;
          LODWORD(v45) = 6;
          if (v17)
          {
            goto LABEL_31;
          }

          goto LABEL_32;
      }

      goto LABEL_26;
    }

    if (v18 == 1)
    {
      LODWORD(__src) = 3;
      v19 = 1;
      if (v17)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v18 != 3)
    {
      if (v18 == 4)
      {
        LODWORD(__src) = 1;
        DWORD1(v41) = 2;
        v19 = 3;
        DWORD2(v42) = 9;
        if (v17)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      }

LABEL_26:
      v19 = 2;
      LODWORD(__src) = 1;
      DWORD1(v41) = 2;
      if (v17)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v19 = 3;
    LODWORD(__src) = 1;
    DWORD1(v41) = 3;
    DWORD2(v42) = 2;
    if (v17)
    {
      goto LABEL_31;
    }

LABEL_32:
    v21 = v12[2];
    if ((v21 & 0x1E) == 0)
    {
      v12 += 3;
      continue;
    }

    if (&v12[-v9 + 4] > v10)
    {
      return 4294954582;
    }

    v22 = v12[3];
    if (v22)
    {
      v23 = v19 + 1;
      *(&__src + 5 * v19) = 7;
      v19 += 2;
      *(&__src + 5 * v23) = 8;
      if ((v22 & 2) == 0)
      {
LABEL_36:
        if ((v22 & 4) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      }
    }

    else if ((v12[3] & 2) == 0)
    {
      goto LABEL_36;
    }

    v24 = v19 + 1;
    *(&__src + 5 * v19) = 33;
    v19 += 2;
    *(&__src + 5 * v24) = 34;
    if ((v22 & 4) == 0)
    {
      goto LABEL_43;
    }

LABEL_41:
    if (v18 - 6 <= 0xFFFFFFFD)
    {
      v25 = 20 * v19++;
      *(&__src + v25) = 9;
    }

LABEL_43:
    if ((v22 & 8) != 0)
    {
      v28 = 20 * v19++;
      *(&__src + v28) = 12;
      if ((v22 & 0x10) == 0)
      {
LABEL_45:
        if ((v22 & 0x20) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_55;
      }
    }

    else if ((v22 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    v29 = v19 + 1;
    *(&__src + 5 * v19) = 10;
    v19 += 2;
    *(&__src + 5 * v29) = 11;
    if ((v22 & 0x20) == 0)
    {
LABEL_46:
      if ((v22 & 0x40) != 0)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }

LABEL_55:
    v30 = v19 + 1;
    *(&__src + 5 * v19) = 35;
    v19 += 2;
    *(&__src + 5 * v30) = 36;
    if ((v22 & 0x40) != 0)
    {
LABEL_56:
      v31 = v19 + 1;
      *(&__src + 5 * v19) = 13;
      v19 += 2;
      *(&__src + 5 * v31) = 15;
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_57;
    }

LABEL_47:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_48;
    }

LABEL_57:
    v32 = 20 * v19++;
    *(&__src + v32) = 14;
LABEL_48:
    v12 += 4;
    if (v21)
    {
      v26 = 20 * v19++;
      *(&__src + v26) = 37;
    }
  }

  while (v8++ < v11);
  if (a4 && a5)
  {
    v37 = 4;
    v38 = 0;
    v33 = 20 * v19 + 12;
    v34 = malloc_type_calloc(1uLL, v33, 0x1000040E0EAB150uLL);
    *v34 = 0;
    v34[2] = v19;
    memcpy(v34 + 3, &__src, 20 * v19);
    if (!AudioToolbox_AudioFormatGetProperty(1668116596, v33, v34, &v37, &v38))
    {
      free(v34);
      v33 = 32;
      v34 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
      *v34 = v38;
      v34[2] = 0;
    }

    *a5 = v33;
    *a4 = v34;
  }

  result = 0;
  if (a3)
  {
    *a3 = v13;
    *(a3 + 8) = 1700998451;
    *(a3 + 16) = 0x60000000000;
    *(a3 + 24) = 0;
    *(a3 + 28) = v19;
    *(a3 + 32) = v39;
  }

  return result;
}

OSStatus CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(CFAllocatorRef allocator, CMAudioFormatDescriptionRef audioFormatDescription, CMSoundDescriptionFlavor flavor, CMBlockBufferRef *blockBufferOut)
{
  sizeOut = 0;
  theBuffer = 0;
  if (audioFormatDescription)
  {
    TypeID = CMFormatDescriptionGetTypeID();
    if (TypeID == CFGetTypeID(audioFormatDescription))
    {
      if (CMFormatDescriptionGetMediaType(audioFormatDescription) == 1936684398)
      {
        if (blockBufferOut)
        {
          if (!flavor)
          {
LABEL_21:
            v10 = 1;
LABEL_22:
            totalLengthOut = 0;
            MediaSubType = CMFormatDescriptionGetMediaSubType(audioFormatDescription);
            if (MediaSubType <= 1902324530)
            {
              if (MediaSubType > 1700998450)
              {
                if (MediaSubType == 1700998451 || MediaSubType == 1885547315)
                {
                  goto LABEL_50;
                }

                v19 = 1885692723;
              }

              else
              {
                if (MediaSubType == 1667574579 || MediaSubType == 1667575091)
                {
                  goto LABEL_50;
                }

                v19 = 1700997939;
              }

              if (MediaSubType != v19)
              {
                goto LABEL_41;
              }

LABEL_50:
              if (CMAudioFormatDescriptionGetStreamBasicDescription(audioFormatDescription)->mFramesPerPacket == 1536)
              {
LABEL_41:
                v21 = &kCMFormatDescriptionExtension_VerbatimISOSampleEntry;
                if ((flavor & 1) == 0)
                {
                  v21 = &kCMFormatDescriptionExtension_VerbatimSampleDescription;
                }

                Extension = CMFormatDescriptionGetExtension(audioFormatDescription, *v21);
                if (Extension)
                {
                  v23 = Extension;
                  v24 = CFDataGetTypeID();
                  if (v24 == CFGetTypeID(v23))
                  {
                    Length = CFDataGetLength(v23);
                    BytePtr = CFDataGetBytePtr(v23);
                    v27 = BytePtr;
                    dataPointerOut = 0;
                    if (((v10 | flavor) & 1) != 0 || *(BytePtr + 8) == 512)
                    {
                      NativeMovieSoundDescriptionFromASBD = CMBlockBufferCreateWithMemoryBlock(allocator, 0, Length, allocator, 0, 0, Length, 1u, &theBuffer);
                      if (!NativeMovieSoundDescriptionFromASBD)
                      {
                        DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
                        if (!DataPointer)
                        {
                          memcpy(dataPointerOut, v27, Length);
                          *blockBufferOut = theBuffer;
                          theBuffer = 0;
                        }

                        goto LABEL_59;
                      }

                      goto LABEL_58;
                    }
                  }
                }

                MostCompatibleFormatAndChannelLayout = FigAudioFormatDescriptionGetMostCompatibleFormatAndChannelLayout(audioFormatDescription, 0, 0);
                if (MostCompatibleFormatAndChannelLayout)
                {
                  v37 = MostCompatibleFormatAndChannelLayout;
                  MagicCookie = CMAudioFormatDescriptionGetMagicCookie(audioFormatDescription, &sizeOut);
                  if (flavor)
                  {
                    NativeMovieSoundDescriptionFromASBD = figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD(v37, allocator, &theBuffer);
                    if (NativeMovieSoundDescriptionFromASBD)
                    {
                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    NativeMovieSoundDescriptionFromASBD = figSoundBridge_CreateNativeMovieSoundDescriptionFromASBD(v37, allocator, flavor, &theBuffer);
                    if (NativeMovieSoundDescriptionFromASBD)
                    {
                      goto LABEL_58;
                    }

                    if ((FigAudioFormatDescriptionGetCreationChannelLayoutSignificance(audioFormatDescription, v39, v40, v41, v42, v43, v44, v45) & 0xFFFFFFFE) == 2)
                    {
                      dataPointerOut = 0;
                      ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(audioFormatDescription, &dataPointerOut);
                      if (ChannelLayout)
                      {
                        if ((dataPointerOut - 1) <= 0xFFFFFFFE)
                        {
                          NativeMovieSoundDescriptionFromASBD = figSoundBridge_AddChannelLayoutExtensionToNativeSoundDescriptionBBuf(theBuffer, allocator, ChannelLayout, dataPointerOut);
                          if (NativeMovieSoundDescriptionFromASBD)
                          {
                            goto LABEL_58;
                          }
                        }
                      }
                    }
                  }

                  NativeMovieSoundDescriptionFromASBD = figSoundBridge_AddCookieExtensionToNativeSoundDescriptionBBuf(theBuffer, *(v37 + 8), allocator, MagicCookie, sizeOut, flavor);
                  if (NativeMovieSoundDescriptionFromASBD)
                  {
                    goto LABEL_58;
                  }

                  if (flavor)
                  {
                    NativeMovieSoundDescriptionFromASBD = figSoundBridge_AddSamplingRateBoxIfNecessaryToNativeISOAudioSampleEntry(theBuffer, allocator, v37);
                    if (NativeMovieSoundDescriptionFromASBD)
                    {
                      goto LABEL_58;
                    }

                    NativeMovieSoundDescriptionFromASBD = figSoundBridge_AddISOChannelLayoutBoxToNativeISOAudioSampleEntryIfEligible(theBuffer, allocator, audioFormatDescription);
                    if (NativeMovieSoundDescriptionFromASBD)
                    {
                      goto LABEL_58;
                    }
                  }

                  NativeMovieSoundDescriptionFromASBD = figSoundBridge_AddMiscellaneousSampleDescriptionExtensionsToNativeSoundDescriptionBBuf(theBuffer, audioFormatDescription, allocator);
                  if (NativeMovieSoundDescriptionFromASBD)
                  {
                    goto LABEL_58;
                  }

                  DataLength = CMBlockBufferGetDataLength(theBuffer);
                  totalLengthOut = DataLength;
                  IsRangeContiguous = CMBlockBufferIsRangeContiguous(theBuffer, 0, DataLength);
                  v49 = theBuffer;
                  if (!IsRangeContiguous)
                  {
                    dataPointerOut = 0;
                    NativeMovieSoundDescriptionFromASBD = CMBlockBufferCreateContiguous(allocator, theBuffer, allocator, 0, 0, DataLength, 0, &dataPointerOut);
                    if (NativeMovieSoundDescriptionFromASBD)
                    {
                      goto LABEL_58;
                    }

                    if (theBuffer)
                    {
                      CFRelease(theBuffer);
                    }

                    v49 = dataPointerOut;
                    theBuffer = dataPointerOut;
                  }

                  dataPointerOut = 0;
                  totalLengthOut = 0;
                  NativeMovieSoundDescriptionFromASBD = CMBlockBufferGetDataPointer(v49, 0, 0, &totalLengthOut, &dataPointerOut);
                  if (!NativeMovieSoundDescriptionFromASBD)
                  {
                    DataPointer = figSoundBridge_FlipSoundDescriptionData(dataPointerOut, totalLengthOut, 1);
                    if (!DataPointer)
                    {
                      *blockBufferOut = theBuffer;
                      return DataPointer;
                    }

LABEL_59:
                    if (theBuffer)
                    {
                      CFRelease(theBuffer);
                    }

                    return DataPointer;
                  }

LABEL_58:
                  DataPointer = NativeMovieSoundDescriptionFromASBD;
                  goto LABEL_59;
                }

                emitter = fig_log_get_emitter("com.apple.coremedia", "");
                v33 = v4;
                v34 = 4294954586;
                v35 = 7628;
LABEL_57:
                NativeMovieSoundDescriptionFromASBD = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v34, "<<< SoundDescriptionBridge >>>", v35, v33, v31, v32);
                goto LABEL_58;
              }

LABEL_51:
              emitter = fig_log_get_emitter("com.apple.coremedia", "");
              v33 = v4;
              v34 = 4294954579;
              v35 = 7558;
              goto LABEL_57;
            }

            if (MediaSubType > 1935767393)
            {
              if (MediaSubType == 2053464883 || MediaSubType == 2053319475)
              {
                goto LABEL_50;
              }

              v20 = 30562;
            }

            else
            {
              if (MediaSubType == 1902324531 || MediaSubType == 1902469939)
              {
                goto LABEL_50;
              }

              v20 = 28018;
            }

            if (MediaSubType != (v20 | 0x73610000) || (flavor & 3) != 1)
            {
              goto LABEL_41;
            }

            goto LABEL_51;
          }

          if (CFEqual(flavor, @"ISOFamily"))
          {
            v10 = 1;
            LODWORD(flavor) = 1;
            goto LABEL_22;
          }

          if (CFEqual(flavor, @"QuickTimeMovieV2"))
          {
            v10 = 0;
            LODWORD(flavor) = 4;
            goto LABEL_22;
          }

          if (CFEqual(flavor, @"3GPFamily"))
          {
            LODWORD(flavor) = 3;
            goto LABEL_21;
          }

          if (CFEqual(flavor, @"QuickTimeMovie"))
          {
            LODWORD(flavor) = 0;
            goto LABEL_21;
          }

          v11 = fig_log_get_emitter("com.apple.coremedia", "");
          v14 = v4;
          v15 = 4294954579;
          v16 = 7552;
        }

        else
        {
          v11 = fig_log_get_emitter("com.apple.coremedia", "");
          v14 = v4;
          v15 = 4294954584;
          v16 = 7540;
        }
      }

      else
      {
        v11 = fig_log_get_emitter("com.apple.coremedia", "");
        v14 = v4;
        v15 = 4294954584;
        v16 = 7538;
      }
    }

    else
    {
      v11 = fig_log_get_emitter("com.apple.coremedia", "");
      v14 = v4;
      v15 = 4294954584;
      v16 = 7536;
    }
  }

  else
  {
    v11 = fig_log_get_emitter("com.apple.coremedia", "");
    v14 = v4;
    v15 = 4294954584;
    v16 = 7534;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v15, "<<< SoundDescriptionBridge >>>", v16, v14, v12, v13);
}

size_t figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD(uint64_t a1, const __CFAllocator *a2, CMBlockBufferRef *a3)
{
  v7 = 0;
  v8 = *a1;
  v9 = (*a1 * 65536.0 + 0.5);
  dataPointerOut = 0;
  theBuffer = 0;
  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
  do
  {
    if (v10 == figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_isoDenylist[v7])
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v21 = v3;
      v22 = 7153;
      goto LABEL_15;
    }

    ++v7;
  }

  while (v7 != 3);
  v38 = *(a1 + 28);
  if (v10 != 1819304813)
  {
    v24 = translateMP4AFormatID(v10);
    if (v10 == 1718378851)
    {
      v16 = 1716281667;
LABEL_37:
      v15 = 0;
      v13 = 0;
      v17 = 0;
      if (v8 >= 65536.0)
      {
        v9 = 0x10000;
      }

      goto LABEL_39;
    }

    v16 = v24;
    if (v24 > 1718641516)
    {
      if (v24 > 1836069984)
      {
        if (v24 != 1836069985 && v24 != 1935764850)
        {
          v25 = 1935767394;
          goto LABEL_34;
        }
      }

      else if (v24 != 1718641517 && v24 != 1768973165)
      {
        v25 = 1832149349;
        goto LABEL_34;
      }
    }

    else if (v24 > 1700998450)
    {
      if (v24 != 1700998451 && v24 != 1701733217)
      {
        v25 = 1716281667;
        goto LABEL_34;
      }
    }

    else if (v24 != 1633889587 && v24 != 1634492771)
    {
      v25 = 1685220723;
LABEL_34:
      if (v24 == v25)
      {
        goto LABEL_35;
      }

      v44 = v24;
      v45 = 0x6D70346600000000;
      v43 = 0;
      v42 = 0;
      v41 = 0;
      if (!AudioToolbox_AudioFormatGetPropertyInfo(1668180324, 12, &v44, &v41))
      {
        if (v41 == 12)
        {
          if (!AudioToolbox_AudioFormatGetProperty(1668180324, 12, &v44, &v41, &v42))
          {
            v16 = v43;
            goto LABEL_35;
          }

          figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_2();
        }

        else
        {
          figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_1(&v46);
        }

        if (!v46)
        {
          goto LABEL_35;
        }
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v21 = v3;
      v22 = 7193;
LABEL_15:
      v23 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE54uLL, "<<< SoundDescriptionBridge >>>", v22, v21, v19, v20);
      goto LABEL_43;
    }

LABEL_35:
    v13 = 0;
    v15 = 0;
    if (v16 == 1768973165 || v16 == 1718641517)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

  LODWORD(v42) = 0;
  if (AudioToolbox_AudioFormatGetPropertyInfo(1935962211, 40, a1, &v42))
  {
    figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_3();
    goto LABEL_63;
  }

  v12 = MEMORY[0x19A8D7200](a2, v42, 1243346576, 0);
  if (!v12)
  {
    figSoundBridge_CreateNativeISOAudioSampleEntryFromASBD_cold_4(&v44);
LABEL_63:
    v23 = v44;
    if (v44)
    {
      goto LABEL_43;
    }

    goto LABEL_67;
  }

  v13 = v12;
  Property = AudioToolbox_AudioFormatGetProperty(1935962211, 40, a1, &v42, v12);
  if (Property)
  {
    v33 = Property;
    v34 = fig_log_get_emitter("com.apple.coremedia", "");
    v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v33, "<<< SoundDescriptionBridge >>>", 0x17EF, v3, v35, v36);
    if (v37)
    {
      v23 = v37;
      goto LABEL_42;
    }

LABEL_67:
    v13 = 0;
    v15 = 0;
    goto LABEL_9;
  }

  v15 = v42;
LABEL_9:
  if (v11)
  {
    v16 = 1718641517;
  }

  else
  {
    v16 = 1768973165;
  }

LABEL_12:
  if (v8 >= 65536.0)
  {
    v9 = 0x10000;
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

LABEL_39:
  v26 = v15;
  v27 = v15 + 36;
  DataPointer = CMBlockBufferCreateWithMemoryBlock(a2, 0, v27, a2, 0, 0, v27, 1u, &theBuffer);
  if (!DataPointer)
  {
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (!DataPointer)
    {
      v30 = dataPointerOut;
      *dataPointerOut = v27;
      *(v30 + 1) = v16;
      *(v30 + 1) = 0xFFFF000000000000;
      *(v30 + 8) = v17;
      *(v30 + 9) = 0;
      *(v30 + 5) = 0;
      if (v16 == 1768973165 || v16 == 1718641517)
      {
        v31 = v38;
      }

      else
      {
        v31 = 2;
      }

      *(v30 + 12) = v31;
      *(v30 + 26) = 16;
      *(v30 + 15) = 0;
      v32 = v8;
      if (v10 != 1835823201)
      {
        v32 = v9;
      }

      *(v30 + 8) = v32;
      if (v26 && v13)
      {
        memcpy(v30 + 36, v13, v26);
      }

      v23 = 0;
      *a3 = theBuffer;
      theBuffer = 0;
      if (!v13)
      {
        goto LABEL_43;
      }

LABEL_42:
      CFAllocatorDeallocate(a2, v13);
      goto LABEL_43;
    }
  }

  v23 = DataPointer;
  if (v13)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v23;
}

size_t figSoundBridge_CreateNativeMovieSoundDescriptionFromASBD(uint64_t a1, CFAllocatorRef structureAllocator, char a3, CFTypeRef *a4)
{
  cf = 0;
  dataPointerOut = 0;
  if (!a4)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v19 = v4;
    v20 = 4294954584;
    v21 = 6743;
LABEL_17:
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v20, "<<< SoundDescriptionBridge >>>", v21, v19, v17, v18);
LABEL_18:
    appended = DataPointer;
    goto LABEL_19;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 16);
  v11 = *(a1 + 20);
  v12 = *(a1 + 24);
  v13 = *(a1 + 28);
  v14 = *(a1 + 32);
  *a4 = 0;
  if (v8 <= 1768829491)
  {
    if (v8 > 1718367025)
    {
      if (v8 != 1718367026)
      {
        v15 = 1718367796;
        goto LABEL_15;
      }
    }

    else if (v8)
    {
      v15 = 1313820229;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v8 <= 1918990111)
  {
    if (v8 != 1768829492)
    {
      v15 = 1768829746;
      goto LABEL_15;
    }

LABEL_16:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v19 = v4;
    v20 = 4294954581;
    v21 = 6762;
    goto LABEL_17;
  }

  if (v8 == 1918990112 || v8 == 1953984371)
  {
    goto LABEL_16;
  }

  v15 = 1936684916;
LABEL_15:
  if (v8 == v15)
  {
    goto LABEL_16;
  }

  if (!v13)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v19 = v4;
    v20 = 4294954581;
    v21 = 6769;
    goto LABEL_17;
  }

  if (v8 == 1819304813)
  {
    if (!v12 || !v14 || !v10 || v11 != 1)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v19 = v4;
      v20 = 4294954581;
      v21 = 6782;
      goto LABEL_17;
    }

    if (!(v9 & 8 | v14 & 7) && v10 == (v14 >> 3) * v13)
    {
      v9 |= 8u;
    }
  }

  if ((a3 & 5) != 4 && v7 < 65536.0 && v13 <= 2)
  {
    if (v8 == 1819304813)
    {
      if (v14 && (v14 & 7) == 0 && (v9 & 0xFFFFFFF8) == 8)
      {
        if (v9)
        {
          v26 = 0;
          v27 = 1;
          v28 = 52;
          if (v14 == 32)
          {
            goto LABEL_53;
          }

          v25 = 1;
          if (v14 == 64)
          {
            goto LABEL_33;
          }
        }

        else if ((v9 & 4) != 0)
        {
          if ((v14 & 0xFFFFFFE8) == 8)
          {
LABEL_52:
            v26 = 0;
            v27 = 1;
            v28 = 52;
LABEL_53:
            v25 = 1;
            goto LABEL_33;
          }

          v26 = 0;
          v27 = 1;
          v28 = 52;
          if (v14 == 16)
          {
            goto LABEL_53;
          }

          v25 = 1;
          if (v14 == 32)
          {
            goto LABEL_33;
          }
        }

        else if (v14 == 8)
        {
          goto LABEL_52;
        }
      }
    }

    else if (v8 != 1718378851 && v8 != 1634492771 || (v9 & 6) == 0)
    {
      goto LABEL_52;
    }
  }

  v25 = 0;
  v26 = 1;
  v27 = 2;
  v28 = 72;
LABEL_33:
  v45 = v25;
  v46 = v27;
  v47 = v26;
  DataPointer = CMBlockBufferCreateWithMemoryBlock(structureAllocator, 0, v28, structureAllocator, 0, 0, v28, 1u, &cf);
  if (DataPointer)
  {
    goto LABEL_18;
  }

  DataPointer = CMBlockBufferGetDataPointer(cf, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_18;
  }

  bzero(dataPointerOut, v28);
  v29 = dataPointerOut;
  *dataPointerOut = v28;
  *(v29 + 8) = v46;
  *(v29 + 7) = -1;
  v30 = translateMP4AFormatID(v8);
  if (v47)
  {
    *(v29 + 3) = 0xFFFE00100003;
    *(v29 + 1) = v30;
    *(v29 + 8) = 0x10000;
    *(v29 + 9) = v28;
    *(v29 + 5) = v7;
    *(v29 + 12) = v13;
    *(v29 + 13) = 2130706432;
    *(v29 + 14) = v14;
    *(v29 + 15) = v9;
    *(v29 + 17) = v11;
    v31 = 64;
LABEL_106:
    *&v29[v31] = v10;
    goto LABEL_107;
  }

  if (!v45)
  {
LABEL_107:
    appended = 0;
    *a4 = cf;
    return appended;
  }

  if (v30 != 1819304813)
  {
    *(v29 + 1) = v30;
LABEL_96:
    *(v29 + 12) = v13;
    if (v14 == 8)
    {
      v41 = 8;
    }

    else
    {
      v41 = 16;
    }

    *(v29 + 13) = v41;
    *(v29 + 8) = (v7 * 65536.0 + 0.5);
    *(v29 + 9) = v11;
    v42 = v41 >> 3;
    if (v10)
    {
      v43 = -1;
    }

    else
    {
      v43 = -2;
    }

    if (v10)
    {
      v44 = v10;
    }

    else
    {
      v44 = 2;
    }

    *(v29 + 14) = v43;
    *(v29 + 11) = v44;
    *(v29 + 12) = v42;
    v10 = v44 / v13;
    v31 = 40;
    goto LABEL_106;
  }

  if ((v9 & 1) == 0)
  {
    if (v14 == 32)
    {
      v32 = 1768829746;
    }

    else
    {
      if (v14 != 24)
      {
        if ((v9 & 4) != 0)
        {
          if ((v9 & 2) != 0)
          {
            v35 = 1953984371;
          }

          else
          {
            v35 = 1936684916;
          }
        }

        else
        {
          v35 = 1918990112;
        }

        *(v29 + 1) = v35;
        goto LABEL_96;
      }

      v32 = 1768829492;
    }

    goto LABEL_73;
  }

  if (v14 == 64)
  {
    v32 = 1718367796;
    goto LABEL_73;
  }

  if (v14 == 32)
  {
    v32 = 1718367026;
LABEL_73:
    *(v29 + 1) = v32;
    goto LABEL_74;
  }

  v36 = *(v29 + 1);
  if (v36 > 1768829491)
  {
    if (v36 == 1768829746)
    {
      goto LABEL_74;
    }

    v37 = 1768829492;
  }

  else
  {
    if (v36 == 1718367026)
    {
      goto LABEL_74;
    }

    v37 = 1718367796;
  }

  if (v36 != v37)
  {
    goto LABEL_96;
  }

LABEL_74:
  if ((v9 & 2) != 0)
  {
    goto LABEL_96;
  }

  v33 = v29;
  v48 = 0;
  theBuffer = 0;
  appended = CMBlockBufferCreateWithMemoryBlock(structureAllocator, 0, 0x26uLL, structureAllocator, 0, 0, 0x26uLL, 1u, &theBuffer);
  if (!appended)
  {
    v34 = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v48);
    if (v34)
    {
      appended = v34;
      if (theBuffer)
      {
        CFRelease(theBuffer);
      }

      goto LABEL_19;
    }

    v39 = v48;
    v38 = theBuffer;
    *v48 = xmmword_197165B50;
    v40 = bswap32(*(v33 + 1));
    *(v39 + 30) = 0x8000000;
    v39 += 30;
    *(v39 - 14) = v40;
    *(v39 - 10) = 0x61646E650A000000;
    *(v39 - 1) = 256;
    v48 = v39;
    appended = CMBlockBufferAppendBufferReference(cf, v38, 0, 0x26uLL, 0);
    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

    if (appended)
    {
      goto LABEL_19;
    }

    v29 = v33;
    *v33 += 38;
    goto LABEL_96;
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return appended;
}

size_t figSoundBridge_AddChannelLayoutExtensionToNativeSoundDescriptionBBuf(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, const void *a3, unsigned int a4)
{
  v22 = 0;
  cf = 0;
  if (a1)
  {
    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (DataPointer)
    {
      goto LABEL_3;
    }

    if (lengthAtOffsetOut < 4)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x1670, v4, v16, v17);
    }

    v18 = a4 + 12;
    DataPointer = CMBlockBufferCreateWithMemoryBlock(a2, 0, a4 + 12, a2, 0, 0, a4 + 12, 1u, &cf);
    if (DataPointer || (DataPointer = CMBlockBufferGetDataPointer(cf, 0, 0, 0, &v22), DataPointer) || (*v22 = bswap32(v18), v19 = v22, v22 += 4, *(v19 + 1) = 1851877475, v22 += 4, *v22 = 0, v22 += 4, memcpy(v22, a3, a4), DataPointer = figSoundBridge_EndianAudioChannelLayout_NtoB(v22, a4), DataPointer))
    {
LABEL_3:
      appended = DataPointer;
    }

    else
    {
      appended = CMBlockBufferAppendBufferReference(a1, cf, 0, a4 + 12, 0);
      if (!appended)
      {
        *dataPointerOut += v18;
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return appended;
  }

  v11 = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x1661, v4, v12, v13);
}

size_t figSoundBridge_AddCookieExtensionToNativeSoundDescriptionBBuf(CMBlockBufferRef theBuffer, int a2, const __CFAllocator *a3, uint64_t a4, unsigned int a5, char a6)
{
  *&__n[1] = a4;
  cf = 0;
  __n[0] = a5;
  if (theBuffer && (a4 || !a5))
  {
    if (!a5)
    {
      appended = 0;
LABEL_14:
      if (cf)
      {
        CFRelease(cf);
      }

      return appended;
    }

    dataPointerOut = 0;
    v39 = 0;
    lengthAtOffsetOut = 0;
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (DataPointer)
    {
      goto LABEL_9;
    }

    if (lengthAtOffsetOut < 4)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x18A7, v6, v19, v20);
    }

    v21 = !(a6 & 1);
    v22 = translateMP4AFormatID(a2);
    if (v22 == 1836069985 || v22 == 1832149349)
    {
      v23 = *&__n[1];
      v24 = __n[0];
      v25 = a3;
      v26 = a2;
      v27 = 0;
LABEL_24:
      DataPointer = figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension(v25, v26, v27, v23, v24, a6, &__n[1], __n);
      goto LABEL_25;
    }

    if (figSoundBridge_isProtectedMP4AFormatUsingESDS(a2))
    {
      v23 = *&__n[1];
      v24 = __n[0];
      v25 = a3;
      v26 = a2;
      v27 = 1;
      goto LABEL_24;
    }

    if (a2 > 1902537826)
    {
      if (a2 > 1935764849)
      {
        if (a2 != 1935764850 && a2 != 1935767394)
        {
          v33 = 2053923171;
          goto LABEL_47;
        }

        DataPointer = figSoundBridge_ConvertAMRMagicCookieToSoundDescriptionExtension(a3, a2, *&__n[1], __n[0], a6, &__n[1], __n);
LABEL_25:
        v28 = !(a6 & 1);
        if (DataPointer)
        {
          goto LABEL_9;
        }

        goto LABEL_26;
      }

      if (a2 != 1902537827)
      {
        v33 = 1902928227;
LABEL_47:
        if (a2 == v33)
        {
          goto LABEL_48;
        }

LABEL_54:
        if (FigAudioCodecTypeIsAC3(a2))
        {
          goto LABEL_62;
        }

        if (a2 <= 1885692722)
        {
          if (a2 == 1667575091)
          {
            goto LABEL_62;
          }

          v35 = 1700998451;
        }

        else
        {
          if (a2 == 1885692723 || a2 == 1902469939)
          {
            goto LABEL_62;
          }

          v35 = 2053464883;
        }

        if (a2 != v35)
        {
          DataPointer = figSoundBridge_EncapsulatedMagicCookieFromCanonicalMagicCookie();
          if (DataPointer)
          {
            if ((a6 & 1) == 0)
            {
              v28 = 1;
LABEL_26:
              v29 = __n[0] + 8;
              if (v28)
              {
                v30 = __n[0] + 8;
              }

              else
              {
                v30 = __n[0];
              }

              DataPointer = CMBlockBufferCreateWithMemoryBlock(a3, 0, v30, a3, 0, 0, v30, 1u, &cf);
              if (!DataPointer)
              {
                DataPointer = CMBlockBufferGetDataPointer(cf, 0, 0, 0, &v39);
                if (!DataPointer)
                {
                  if (v28)
                  {
                    *v39 = bswap32(v29);
                    v31 = v39;
                    v39 += 4;
                    *(v31 + 1) = 1702257015;
                    v32 = v39 + 4;
                    v39 += 4;
                  }

                  else
                  {
                    v32 = v39;
                  }

                  memcpy(v32, *&__n[1], __n[0]);
                  appended = CMBlockBufferAppendBufferReference(theBuffer, cf, 0, v30, 0);
                  if (!appended)
                  {
                    *dataPointerOut += v30;
                  }

                  goto LABEL_10;
                }
              }

LABEL_9:
              appended = DataPointer;
LABEL_10:
              if (*&__n[1] && *&__n[1] != a4)
              {
                CFAllocatorDeallocate(a3, *&__n[1]);
              }

              goto LABEL_14;
            }

            if (a2 != 1634754915 && a2 != 1667330147)
            {
              v28 = !(a6 & 1);
              if (a2 != 1902211171)
              {
                goto LABEL_9;
              }

              goto LABEL_26;
            }
          }

          else
          {
            v28 = 0;
            if (a2 == 1634754915 || a2 == 1667330147 || a2 == 1902211171)
            {
              goto LABEL_26;
            }
          }

LABEL_64:
          v28 = v21;
          goto LABEL_26;
        }

LABEL_62:
        v36 = 0;
        figSoundBridge_AreAtomsWellFormed(*&__n[1], __n[0], !(a6 & 1), &v36);
        if (v36 < __n[0])
        {
          __n[0] = v36;
        }

        goto LABEL_64;
      }

LABEL_49:
      DataPointer = figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension(a3, *&__n[1], __n[0], &__n[1], __n);
      goto LABEL_25;
    }

    if (a2 > 1668047202)
    {
      if (a2 != 1668047203)
      {
        v34 = 1718378851;
LABEL_43:
        if (a2 != v34)
        {
          goto LABEL_54;
        }

        goto LABEL_49;
      }
    }

    else if (a2 != 1634492771)
    {
      v34 = 1667656803;
      goto LABEL_43;
    }

LABEL_48:
    DataPointer = figSoundBridge_ConvertALACMagicCookieToSoundDescriptionExtension(a3, *&__n[1], __n[0], a6, &__n[1], __n);
    goto LABEL_25;
  }

  v12 = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x1896, v6, v13, v14);
}

size_t figSoundBridge_AddSamplingRateBoxIfNecessaryToNativeISOAudioSampleEntry(OpaqueCMBlockBuffer *a1, const __CFAllocator *a2, uint64_t a3)
{
  v20 = 0;
  cf = 0;
  if (a1)
  {
    if (*a3 < 65536.0 || *(a3 + 8) != 1819304813)
    {
      return 0;
    }

    lengthAtOffsetOut = 0;
    dataPointerOut = 0;
    DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (DataPointer)
    {
      goto LABEL_5;
    }

    if (lengthAtOffsetOut >= 4)
    {
      DataPointer = CMBlockBufferCreateWithMemoryBlock(a2, 0, 0x10uLL, a2, 0, 0, 0x10uLL, 1u, &cf);
      if (!DataPointer)
      {
        DataPointer = CMBlockBufferGetDataPointer(cf, 0, 0, 0, &v20);
        if (!DataPointer)
        {
          *v20 = 0x10000000;
          v16 = v20;
          v20 += 4;
          *(v16 + 1) = 1952543347;
          v20 += 4;
          *v20 = 0;
          v17 = v20;
          v20 += 4;
          *(v17 + 1) = bswap32(*a3);
          appended = CMBlockBufferAppendBufferReference(a1, cf, 0, 0x10uLL, 0);
          if (!appended)
          {
            *dataPointerOut += 16;
          }

          goto LABEL_6;
        }
      }

LABEL_5:
      appended = DataPointer;
LABEL_6:
      if (cf)
      {
        CFRelease(cf);
      }

      return appended;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x195A, v3, v14, v15);
  }

  v10 = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x194B, v3, v11, v12);
}

size_t figSoundBridge_AddMiscellaneousSampleDescriptionExtensionsToNativeSoundDescriptionBBuf(OpaqueCMBlockBuffer *a1, const opaqueCMFormatDescription *a2, const __CFAllocator *a3)
{
  cf = 0;
  v19 = 0;
  appended = figBridge_ConvertMiscellaneousSampleDescriptionExtensionsToAtoms(a2, &v19, 0);
  if (!appended)
  {
    v8 = v19;
    if (v19)
    {
      lengthAtOffsetOut = 0;
      dataPointerOut = 0;
      v14 = 0;
      DataPointer = CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (DataPointer)
      {
        goto LABEL_4;
      }

      if (lengthAtOffsetOut < 4)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", 0x1D0C, v3, v11, v12);
      }

      DataPointer = CMBlockBufferCreateWithMemoryBlock(a3, 0, v8, a3, 0, 0, v8, 1u, &cf);
      if (DataPointer || (DataPointer = CMBlockBufferGetDataPointer(cf, 0, 0, 0, &v14), DataPointer) || (DataPointer = figBridge_ConvertMiscellaneousSampleDescriptionExtensionsToAtoms(a2, &v15, v14), DataPointer))
      {
LABEL_4:
        appended = DataPointer;
      }

      else
      {
        appended = CMBlockBufferAppendBufferReference(a1, cf, 0, v8, 0);
        if (!appended)
        {
          *dataPointerOut += v8;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  return appended;
}

size_t figSoundBridge_FlipSoundDescriptionData(uint64_t a1, unint64_t a2, int a3)
{
  if (!a1)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v8 = v3;
    v9 = 4294954584;
    v10 = 7799;
    goto LABEL_20;
  }

  if (a2 <= 0x11)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v8 = v3;
    v9 = 4294954582;
    v10 = 7802;
LABEL_20:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<< SoundDescriptionBridge >>>", v10, v8, v6, v7);
  }

  v12 = *(a1 + 16);
  v13 = bswap32(*a1);
  v14 = bswap32(v12) >> 16;
  if (a3)
  {
    v15 = *a1;
  }

  else
  {
    LOWORD(v12) = v14;
    v15 = v13;
  }

  if (v12 >= 3u)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v8 = v3;
    v9 = 4294954582;
    v10 = 7813;
    goto LABEL_20;
  }

  if (v12 == 1)
  {
    LOWORD(v12) = figSoundBridge_IsDataISOv1(a1, a2, a3 == 0) ^ 1;
  }

  if (v15 > a2 || !v12 && v15 < 0x24 || v12 == 1 && v15 < 0x34 || v12 == 2 && v15 <= 0x47)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v8 = v3;
    v9 = 4294954582;
    v10 = 7822;
    goto LABEL_20;
  }

  v17 = 0uLL;
  if (v12 == 1)
  {
    v17 = *(a1 + 36);
  }

  v18 = vrev32_s8(*a1);
  v19 = bswap32(*(a1 + 8));
  v20 = vrev16_s8(*(a1 + 12));
  v21 = bswap32(*(a1 + 20));
  v22 = vrev16_s8(*(a1 + 24));
  v23 = bswap32(*(a1 + 32));
  if (v12 == 1)
  {
    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 12) = v20;
    *(a1 + 20) = v21;
    *(a1 + 24) = v22;
    *(a1 + 32) = v23;
    *(a1 + 36) = vrev32q_s8(v17);
  }

  else
  {
    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 12) = v20;
    *(a1 + 20) = v21;
    *(a1 + 24) = v22;
    *(a1 + 32) = v23;
    if (v12 == 2)
    {
      v24 = bswap64(*(a1 + 40));
      v25 = vrev32q_s8(*(a1 + 48));
      v26 = vrev32_s8(*(a1 + 64));
      *(a1 + 36) = bswap32(*(a1 + 36));
      *(a1 + 40) = v24;
      *(a1 + 48) = v25;
      *(a1 + 64) = v26;
    }
  }

  return 0;
}

uint64_t figSoundBridge_IsDataISOv1(uint64_t a1, unint64_t a2, int a3)
{
  v3 = 0;
  if (a1 && a2 >= 0x24)
  {
    v6 = *a1;
    v7 = *(a1 + 16);
    v8 = bswap32(*a1);
    v9 = bswap32(v7) >> 16;
    if (a3)
    {
      v6 = v8;
      LOWORD(v7) = v9;
    }

    v10 = v6;
    if (v6 < 0x24 || v6 > a2 || v7 != 1)
    {
      return 0;
    }

    if (v6 == 36)
    {
      return 1;
    }

    v14 = 1;
    v15 = figSoundBridge_AreAtomsWellFormed(a1 + 36, v6 - 36, 1, 0);
    if (v10 >= 0x35)
    {
      v3 = 1;
      v22 = figSoundBridge_AreAtomsWellFormed(a1 + 52, v10 - 52, 1, 0);
      v14 = !v22;
      if (v15 && !v22)
      {
        return v3;
      }

      if (!v15 && v22)
      {
        return 0;
      }
    }

    v16 = *(a1 + 4);
    v17 = bswap32(v16);
    if (a3)
    {
      v16 = v17;
    }

    v3 = 1;
    if (v16 != 1716281667 && v16 != 1718641517 && v16 != 1768973165)
    {
      v18 = *(a1 + 28);
      v19 = bswap32(v18) >> 16;
      if (a3)
      {
        LOWORD(v18) = v19;
      }

      if (v18 > 0xFFFDu)
      {
        return 0;
      }

      if (!v15)
      {
        if (v14)
        {
          return 0;
        }

LABEL_37:
        figSoundBridge_IsKnownAtomFoundInExtension(a1 + 52, v10 - 52, 1);
        return 0;
      }

      IsKnownAtomFoundInExtension = figSoundBridge_IsKnownAtomFoundInExtension(a1 + 36, v10 - 36, 0);
      v3 = IsKnownAtomFoundInExtension != 0;
      if (IsKnownAtomFoundInExtension)
      {
        v21 = 1;
      }

      else
      {
        v21 = v14;
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  return v3;
}

uint64_t FigAudioCodecTypeIsDecodable(int a1)
{
  LODWORD(size) = 0;
  PropertyInfo = AudioToolbox_AudioFormatGetPropertyInfo(1633904998, 0, 0, &size);
  if (PropertyInfo)
  {
    FigAudioCodecTypeIsDecodable_cold_1(PropertyInfo);
LABEL_14:
    v6 = 0;
    v3 = 0;
    goto LABEL_11;
  }

  if (size <= 4)
  {
    FigAudioCodecTypeIsDecodable_cold_4();
    goto LABEL_14;
  }

  v3 = malloc_type_calloc(1uLL, size, 0x100004052888210uLL);
  if (!v3)
  {
    FigAudioCodecTypeIsDecodable_cold_3();
    goto LABEL_9;
  }

  Property = AudioToolbox_AudioFormatGetProperty(1633904998, 0, 0, &size, v3);
  if (Property)
  {
    FigAudioCodecTypeIsDecodable_cold_2(Property);
    goto LABEL_9;
  }

  if (size < 4)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = 0;
  while (*&v3[v5] != a1)
  {
    v5 += 4;
    if ((size & 0xFFFFFFFC) == v5)
    {
      goto LABEL_9;
    }
  }

  v6 = 1;
LABEL_11:
  free(v3);
  return v6;
}

uint64_t ReadESDSAtomAndData(uint64_t a1, CMBlockBufferRef *a2, CMBlockBufferRef *a3)
{
  theBuffer = 0;
  blockBufferOut = 0;
  v5 = FigAtomStreamReadCurrentAtomDataAndCreateBBuf(a1, 4, 0, &theBuffer);
  if (v5)
  {
    v12 = v5;
    v10 = 0;
  }

  else
  {
    DataLength = CMBlockBufferGetDataLength(theBuffer);
    v7 = DataLength + 8;
    v8 = *MEMORY[0x1E695E488];
    v9 = MEMORY[0x19A8D7200](*MEMORY[0x1E695E488], DataLength + 8, 0x100004000313F17, 0);
    v10 = v9;
    if (v9)
    {
      *v9 = bswap32(v7);
      v9[1] = 1935962981;
      v11 = CMBlockBufferCopyDataBytes(theBuffer, 0, DataLength, v9 + 2);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v10, v7, v8, 0, 0, v7, 0, &blockBufferOut);
        if (!v12)
        {
          v10 = 0;
          *a2 = blockBufferOut;
          *a3 = theBuffer;
          theBuffer = 0;
          blockBufferOut = 0;
          goto LABEL_6;
        }

        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

LABEL_6:
  free(v10);
  return v12;
}

uint64_t figSoundBridge_GetDecodeFormatIDForUnknownExtensionType(int a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a2 + 4);
  if ((*a2 & 1) != 0 && (v7 = *(a2 + 12) - 1, v7 <= 2))
  {
    v8 = dword_197165BD4[v7];
  }

  else
  {
    v8 = 1299148630;
  }

  v15 = v8;
  v16 = 4;
  v17 = v6;
  v13 = 0;
  v14 = 0;
  if (!AudioToolbox_AudioFormatGetPropertyInfo(1701733230, 12, &v15, &v14 + 4))
  {
    if (HIDWORD(v14) == 12)
    {
      if (!AudioToolbox_AudioFormatGetProperty(1701733230, 12, &v15, &v14 + 4, &v13))
      {
        v9 = v14;
        return v9 == a1 && !figSoundBridge_GetDecodeFormatIDForCodingName(v6, a2, a3);
      }

      figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_2();
    }

    else
    {
      figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_1(&v18);
    }

    v9 = v18;
    if (!v18)
    {
      return v9 == a1 && !figSoundBridge_GetDecodeFormatIDForCodingName(v6, a2, a3);
    }
  }

  if ((*a2 & 1) != 0 && (v11 = *(a2 + 12) - 1, v11 <= 2))
  {
    v12 = dword_197165BD4[v11];
  }

  else
  {
    v12 = 1299148630;
  }

  v15 = v12;
  v16 = 4;
  v17 = a1;
  v18 = 0;
  HIDWORD(v14) = 0;
  if (AudioToolbox_AudioFormatGetPropertyInfo(1768187246, 12, &v15, &v14 + 4))
  {
    return 0;
  }

  if (HIDWORD(v14) == 4)
  {
    if (!AudioToolbox_AudioFormatGetProperty(1768187246, 12, &v15, &v14 + 4, &v18))
    {
      *a3 = v18;
      return 1;
    }

    figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_4();
  }

  else
  {
    figSoundBridge_GetDecodeFormatIDForUnknownExtensionType_cold_3(&v13);
  }

  return !v13;
}

BOOL figSoundBridge_isAACUsingESDSinMOV(unsigned int a1)
{
  if (a1 - 1633772389 > 0xE)
  {
    goto LABEL_6;
  }

  v1 = 1 << (a1 - 101);
  if ((v1 & 0x4888) != 0)
  {
    return 1;
  }

  if ((v1 & 7) != 0)
  {
    return 0;
  }

LABEL_6:
  if (a1 == 1633772320)
  {
    return 1;
  }

  return a1 >> 8 == 6381923;
}

uint64_t translateMP4AFormatID(int a1)
{
  result = 1836069985;
  if (a1 <= 1752594530)
  {
    if (a1 > 1667312946)
    {
      if (a1 <= 1667575090)
      {
        if (a1 <= 1667326823)
        {
          if (a1 == 1667312947)
          {
            return 1701733217;
          }

          v4 = 24931;
        }

        else
        {
          if (a1 == 1667326824 || a1 == 1667326832)
          {
            return 1701733217;
          }

          v4 = 28771;
        }

        v5 = v4 | 0x63610000;
        goto LABEL_51;
      }

      if (a1 > 1667656802)
      {
        if (a1 == 1667656803 || a1 == 1668047203)
        {
          return 1701733217;
        }

        v5 = 1668641633;
        goto LABEL_51;
      }

      if (a1 == 1667575091)
      {
        return 1701733217;
      }

      v3 = 1667591280;
    }

    else
    {
      if (a1 > 1633772388)
      {
        if ((a1 - 1633772389) > 0xE || ((1 << (a1 - 101)) & 0x488F) == 0)
        {
          v3 = 1634497332;
          goto LABEL_55;
        }

        return result;
      }

      if (a1 == 1633771875)
      {
        return 1633777252;
      }

      v3 = 1633772320;
    }

LABEL_55:
    if (a1 == v3)
    {
      return result;
    }

    goto LABEL_58;
  }

  if (a1 <= 1902207794)
  {
    if (a1 <= 1885430578)
    {
      if (a1 == 1752594531 || a1 == 1836069684)
      {
        return result;
      }

      if (a1 != 1885430115)
      {
        goto LABEL_58;
      }

      return 1685220723;
    }

    if (a1 <= 1885692722)
    {
      if ((a1 - 1885430579) > 0x3D || ((1 << (a1 - 51)) & 0x2020000000000001) == 0)
      {
        goto LABEL_58;
      }

      return 1685220723;
    }

    if (a1 == 1885692723 || a1 == 1886745441)
    {
      return 1685220723;
    }

    v5 = 1902207331;
LABEL_51:
    if (a1 == v5)
    {
      return 1701733217;
    }

LABEL_58:
    if (a1 >> 8 == 6381923)
    {
      return 1836069985;
    }

    else
    {
      return a1;
    }
  }

  if (a1 <= 1902928226)
  {
    if (a1 <= 1902211170)
    {
      if ((a1 - 1902207795) > 0x3D || ((1 << (a1 - 51)) & 0x2020000000000001) == 0)
      {
        goto LABEL_58;
      }

      return 1701733217;
    }

    if (a1 == 1902211171 || a1 == 1902469939)
    {
      return 1701733217;
    }

    v5 = 1902537827;
    goto LABEL_51;
  }

  if (a1 <= 1936487277)
  {
    if (a1 != 1902928227 && a1 != 1903522657)
    {
      if (a1 == 1936487267)
      {
        return 1832149349;
      }

      goto LABEL_58;
    }

    return 1701733217;
  }

  if (a1 != 1936487278 && a1 != 1953986161)
  {
    v3 = 1970495843;
    goto LABEL_55;
  }

  return result;
}

size_t figSoundBridge_EndianAudioChannelLayout_NtoB(int8x8_t *a1, unsigned int a2)
{
  if (a1)
  {
    v4 = a2;
    if (FigAudioChannelLayoutIsValid(a1, a2))
    {
      v5 = *a1;
      v6 = a1[1].u32[0];
      if (20 * v6 + 12 <= v4)
      {
        v7 = bswap32(v6);
        if (v6)
        {
          v13 = 0;
          v14 = &a1[2] + 1;
          do
          {
            v15 = 0;
            *(&a1[1] + 20 * v13 + 4) = vrev32_s8(*(&a1[1] + 20 * v13 + 4));
            do
            {
              v14[v15] = bswap32(v14[v15]);
              ++v15;
            }

            while (v15 != 3);
            ++v13;
            v14 += 5;
          }

          while (v13 != v6);
        }

        goto LABEL_13;
      }

      if (v5.i32[0])
      {
        v7 = 0;
LABEL_13:
        *a1 = vrev32_s8(v5);
        a1[1].i32[0] = v7;
        return 0;
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v11 = v2;
      v12 = 1269;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v11 = v2;
      v12 = 1259;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = v2;
    v12 = 1256;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", v12, v11, v9, v10);
}

uint64_t figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension(const __CFAllocator *a1, int a2, int a3, uint64_t a4, int a5, char a6, void *a7, _DWORD *a8)
{
  LODWORD(v11) = a5;
  if (a3)
  {
    v15 = 4;
  }

  else
  {
    v15 = 12;
  }

  if (a3)
  {
    v16 = translateMP4AFormatID(a2);
  }

  else
  {
    v16 = 1836069985;
  }

  v17 = v15 + v11;
  if (a6)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 32;
  }

  if (HIDWORD(v18))
  {
    figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_4(&v29);
    return v29;
  }

  if (!a7 || !a8)
  {
    figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_3(&v29);
    return v29;
  }

  v28 = a1;
  v19 = MEMORY[0x19A8D7200](a1, v18, 3551839186, 0);
  if (!v19)
  {
    figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_2(&v29);
    return v29;
  }

  v20 = v19;
  v21 = v19;
  if ((a6 & 1) == 0)
  {
    *v19 = 0x616D72660C000000;
    v22 = bswap32(v16);
    v19[2] = v22;
    v19[3] = 201326592;
    v19[4] = v22;
    v19[5] = 0;
    v21 = (v19 + 6);
  }

  *v21 = bswap32(v17);
  *(v21 + 4) = 1935962981;
  v23 = v21 + 12;
  if (a3)
  {
    v24 = v11 >= 8;
    v11 = (v11 - 8);
    if (!v24)
    {
      figSoundBridge_ConvertMP4AESDSMagicCookieToSoundDescriptionExtension_cold_1(v28, v19, &v29);
      return v29;
    }

    v25 = (a4 + 8);
    v26 = v21 + 12;
  }

  else
  {
    v11 = v11;
    v26 = v21 + 12;
    v25 = a4;
  }

  memcpy(v26, v25, v11);
  if ((a6 & 1) == 0)
  {
    *&v23[v11] = 0x8000000;
  }

  result = 0;
  *a7 = v20;
  *a8 = v18;
  return result;
}

uint64_t figSoundBridge_isProtectedMP4AFormatUsingESDS(int a1)
{
  result = 1;
  if (a1 <= 1885430631)
  {
    if (a1 > 1667326831)
    {
      if (a1 != 1667326832 && a1 != 1668641633)
      {
        v3 = 1885430115;
LABEL_18:
        if (a1 != v3)
        {
          return 0;
        }
      }
    }

    else if (a1 != 1633771875 && a1 != 1667326307)
    {
      v3 = 1667326824;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > 1902207330)
    {
      if (a1 > 1902207855)
      {
        if (a1 == 1902207856)
        {
          return result;
        }

        v3 = 1903522657;
      }

      else
      {
        if (a1 == 1902207331)
        {
          return result;
        }

        v3 = 1902207848;
      }

      goto LABEL_18;
    }

    if (a1 != 1885430632 && a1 != 1885430640)
    {
      v3 = 1886745441;
      goto LABEL_18;
    }
  }

  return result;
}

size_t figSoundBridge_ConvertALACMagicCookieToSoundDescriptionExtension(uint64_t a1, _DWORD *a2, unsigned int a3, char a4, uint64_t *a5, _DWORD *a6)
{
  if (!a5 || !a6)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v6;
    v17 = 4294954584;
    v18 = 5993;
    goto LABEL_8;
  }

  if (a3 > 0x2F)
  {
    if (a2[1] == 1634562662)
    {
      if (*a2 == 201326592)
      {
        if (a2[2] == 1667329121)
        {
          if (a2[4] == 1667329121)
          {
            v20 = bswap32(a2[3]);
            if (v20 + 12 <= a3)
            {
              if (a4)
              {
                v12 = v20;
              }

              else
              {
                v12 = a3;
              }

              v25 = MEMORY[0x19A8D7200](a1, v12, 2677723469, 0);
              if (v25)
              {
                v11 = v25;
                if (a4)
                {
                  v26 = a2 + 3;
                }

                else
                {
                  v26 = a2;
                }

                memcpy(v25, v26, v12);
                goto LABEL_27;
              }

              emitter = fig_log_get_emitter("com.apple.coremedia", "");
              v16 = v6;
              v17 = 4294954583;
              v18 = 6038;
            }

            else
            {
              emitter = fig_log_get_emitter("com.apple.coremedia", "");
              v16 = v6;
              v17 = 4294954580;
              v18 = 6025;
            }
          }

          else
          {
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            v16 = v6;
            v17 = 4294954580;
            v18 = 6021;
          }
        }

        else
        {
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          v16 = v6;
          v17 = 4294954580;
          v18 = 6014;
        }
      }

      else
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v16 = v6;
        v17 = 4294954580;
        v18 = 6010;
      }

      goto LABEL_8;
    }

    if (a2[7] != 1851877475)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v16 = v6;
      v17 = 4294954580;
      v18 = 6051;
      goto LABEL_8;
    }

    if (a3 - 24 != bswap32(a2[6]))
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v16 = v6;
      v17 = 4294954580;
      v18 = 6057;
      goto LABEL_8;
    }
  }

  else
  {
    if (a3 != 24)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v16 = v6;
      v17 = 4294954580;
      v18 = 5997;
      goto LABEL_8;
    }

    if (!a2)
    {
      v11 = 0;
      LODWORD(v12) = 0;
LABEL_27:
      *a5 = v11;
      *a6 = v12;
      return 0;
    }
  }

  if (a4)
  {
    v23 = MEMORY[0x19A8D7200](a1, 36, 0x10000408AA14F5FLL, 0);
    if (v23)
    {
      v11 = v23;
      *v23 = 0x63616C6124000000;
      *(v23 + 8) = 0;
      v24 = *a2;
      *(v23 + 28) = *(a2 + 2);
      *(v23 + 12) = v24;
      LODWORD(v12) = 36;
      goto LABEL_27;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v6;
    v17 = 4294954583;
    v18 = 6071;
  }

  else
  {
    v21 = MEMORY[0x19A8D7200](a1, 56, 0x100004021716A34, 0);
    if (v21)
    {
      v11 = v21;
      *v21 = xmmword_197165B60;
      *(v21 + 16) = 1667329121;
      v22 = *a2;
      *(v21 + 40) = *(a2 + 2);
      *(v21 + 24) = v22;
      *(v21 + 48) = 0x8000000;
      LODWORD(v12) = 56;
      goto LABEL_27;
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v6;
    v17 = 4294954583;
    v18 = 6085;
  }

LABEL_8:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v17, "<<< SoundDescriptionBridge >>>", v18, v16, v14, v15);
}

size_t figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension(const __CFAllocator *a1, unsigned int *a2, uint64_t a3, unsigned int **a4, unsigned int *a5)
{
  if (a3 >= 9 && a2[1] == 1632396900)
  {
    v11 = bswap32(*a2);
    if (v11 <= a3)
    {
      v12 = 0;
      *a4 = a2;
LABEL_9:
      *a5 = v11;
      return v12;
    }

    figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension_cold_3(&v22);
    return v22;
  }

  v21 = 0;
  if (AudioToolbox_AudioFormatGetPropertyInfo(1835230310, a3, a2, &v21))
  {
    figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension_cold_1();
    return v22;
  }

  v13 = MEMORY[0x19A8D7200](a1, a3, 2131282619, 0);
  if (!v13)
  {
    figSoundBridge_ConvertFLACMagicCookieToSoundDescriptionExtension_cold_2(&v22);
    return v22;
  }

  v14 = v13;
  Property = AudioToolbox_AudioFormatGetProperty(1835230310, a3, a2, &v21, v13);
  if (!Property)
  {
    v12 = 0;
    *a4 = v14;
    v11 = v21;
    goto LABEL_9;
  }

  v17 = Property;
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v17, "<<< SoundDescriptionBridge >>>", 0x181F, v5, v19, v20);
  if (v12)
  {
    CFAllocatorDeallocate(a1, v14);
  }

  return v12;
}

size_t figSoundBridge_ConvertAMRMagicCookieToSoundDescriptionExtension(uint64_t a1, int a2, _DWORD *a3, int a4, char a5, void *a6, _DWORD *a7)
{
  if (a6 && a7)
  {
    if (a4 == 47)
    {
      if (*a3 == 201326592)
      {
        if (a3[1] == 1634562662)
        {
          if (bswap32(a3[2]) == a2)
          {
            v12 = bswap32(*(a3 + 26));
            if (v12 == 1684106610 || v12 == 1935764850)
            {
              if (*(a3 + 22) == 285212672)
              {
                if (a5)
                {
                  v13 = 17;
                }

                else
                {
                  v13 = 47;
                }

                v14 = MEMORY[0x19A8D7200](a1, v13, 1378289394, 0);
                if (v14)
                {
                  v15 = v14;
                  if (a5)
                  {
                    v16 = a3 + 22;
                  }

                  else
                  {
                    v16 = a3;
                  }

                  if (a5)
                  {
                    v17 = 4;
                  }

                  else
                  {
                    v17 = 26;
                  }

                  if (a5)
                  {
                    v18 = 1919770980;
                  }

                  else
                  {
                    v18 = 1919770995;
                  }

                  memcpy(v14, v16, v13);
                  *&v15[v17] = v18;
                  *a6 = v15;
                  *a7 = v13;
                  return 0;
                }

                emitter = fig_log_get_emitter("com.apple.coremedia", "");
                v23 = v7;
                v24 = 4294954583;
                v25 = 6259;
              }

              else
              {
                emitter = fig_log_get_emitter("com.apple.coremedia", "");
                v23 = v7;
                v24 = 4294954580;
                v25 = 6246;
              }
            }

            else
            {
              emitter = fig_log_get_emitter("com.apple.coremedia", "");
              v23 = v7;
              v24 = 4294954580;
              v25 = 6242;
            }
          }

          else
          {
            emitter = fig_log_get_emitter("com.apple.coremedia", "");
            v23 = v7;
            v24 = 4294954580;
            v25 = 6226;
          }
        }

        else
        {
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          v23 = v7;
          v24 = 4294954580;
          v25 = 6222;
        }
      }

      else
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v23 = v7;
        v24 = 4294954580;
        v25 = 6218;
      }
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v23 = v7;
      v24 = 4294954580;
      v25 = 6211;
    }
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v23 = v7;
    v24 = 4294954584;
    v25 = 6208;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v24, "<<< SoundDescriptionBridge >>>", v25, v23, v21, v22);
}

uint64_t FigAudioCodecTypeIsAC3(int a1)
{
  result = 1;
  if (a1 > 1885430578)
  {
    if (a1 != 1885430579 && a1 != 1902207795)
    {
      v3 = 2053202739;
LABEL_8:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else if (a1 != 1633889587 && a1 != 1667312947)
  {
    v3 = 1667326771;
    goto LABEL_8;
  }

  return result;
}

size_t figBridge_ConvertMiscellaneousSampleDescriptionExtensionsToAtoms(const opaqueCMFormatDescription *a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  Extension = CMFormatDescriptionGetExtension(a1, @"SampleDescriptionExtensionAtoms");
  if (!Extension)
  {
    return 0;
  }

  v7 = Extension;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v7))
  {
    return 0;
  }

  theDict = v7;
  Count = CFDictionaryGetCount(v7);
  if (!Count)
  {
    return 0;
  }

  v10 = Count;
  v11 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (v11)
  {
    v42 = a2;
    CFDictionaryGetKeysAndValues(theDict, v11, 0);
    qsort(v11, v10, 8uLL, SampleDescriptionExtensionComparator);
    v12 = 0;
    v13 = 0;
    v45 = v10;
    do
    {
      v14 = v11[v13];
      Value = CFDictionaryGetValue(theDict, v14);
      v16 = CFStringGetTypeID();
      if (v16 == CFGetTypeID(v14))
      {
        v17 = figBridge_ConvertStringToAtomType(v14);
        if (v17)
        {
          v18 = v17;
          v19 = CFGetTypeID(Value);
          if (CFDataGetTypeID() == v19)
          {
            Length = CFDataGetLength(Value);
            v21 = Length + 8;
            if (a3)
            {
              v22 = (a3 + v12);
              *v22 = bswap32(v21);
              v22[1] = bswap32(v18);
              BytePtr = CFDataGetBytePtr(Value);
              memcpy((a3 + v12 + 8), BytePtr, Length);
            }

            v12 += v21;
            v10 = v45;
          }

          else if (CFArrayGetTypeID() == v19)
          {
            v24 = CFArrayGetCount(Value);
            if (v24)
            {
              v25 = v24;
              v26 = 0;
              v43 = bswap32(v18);
              v44 = Value;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(Value, v26);
                v28 = CFDataGetTypeID();
                if (v28 == CFGetTypeID(ValueAtIndex))
                {
                  v29 = CFDataGetLength(ValueAtIndex);
                  v30 = v29 + 8;
                  if (a3)
                  {
                    v31 = v25;
                    v32 = v11;
                    v33 = a3;
                    v34 = (a3 + v12);
                    *v34 = bswap32(v30);
                    v34[1] = v43;
                    v35 = CFDataGetBytePtr(ValueAtIndex);
                    v36 = v34 + 2;
                    a3 = v33;
                    v11 = v32;
                    v25 = v31;
                    Value = v44;
                    memcpy(v36, v35, v29);
                  }

                  v12 += v30;
                  v10 = v45;
                }

                ++v26;
              }

              while (v25 != v26);
            }
          }
        }
      }

      ++v13;
    }

    while (v13 != v10);
    v37 = 0;
    *v42 = v12;
  }

  else
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v37 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0x1CB2, v3, v40, v41);
  }

  free(v11);
  return v37;
}

uint64_t SampleDescriptionExtensionComparator(const __CFString **a1, const __CFString **a2)
{
  v3 = figBridge_ConvertStringToAtomType(*a1);
  v4 = v3;
  v5 = 0;
  while (SampleDescriptionExtensionISOAtomPriority_isoAtomOrdering[v5] != v3)
  {
    if (++v5 == 8)
    {
      LODWORD(v5) = 0;
      break;
    }
  }

  v6 = v5;
  v7 = figBridge_ConvertStringToAtomType(*a2);
  v8 = 0;
  while (SampleDescriptionExtensionISOAtomPriority_isoAtomOrdering[v8] != v7)
  {
    if (++v8 == 8)
    {
      if (v6)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return (v4 - v7);
      }
    }
  }

  if (v6 && v8)
  {
    return (v6 - v8);
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4 - v7;
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v10;
  }
}

uint64_t figBridge_ConvertStringToAtomType(const __CFString *a1)
{
  PascalString = CFStringGetPascalString(a1, &buffer, 5, 0);
  result = 0;
  if (PascalString)
  {
    if (buffer == 4)
    {
      return bswap32(v4);
    }
  }

  return result;
}

uint64_t figSoundBridge_IsKnownAtomFoundInExtension(uint64_t a1, uint64_t a2, int a3)
{
  memset(v11, 0, sizeof(v11));
  CFPreferenceNumberWithDefault = figSoundBridge_AllowZeroSizeTerminatorAtom_value;
  if (figSoundBridge_AllowZeroSizeTerminatorAtom_value == -1)
  {
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault(@"zero_size_terminator_atom", @"com.apple.coremedia", 1);
    figSoundBridge_AllowZeroSizeTerminatorAtom_value = CFPreferenceNumberWithDefault;
  }

  if (!FigAtomStreamInitWithMemoryBlock(a1, a2, 0, CFPreferenceNumberWithDefault != 0, v11))
  {
    while (1)
    {
      v10 = 0;
      v9 = 0;
      if (FigAtomStreamGetCurrentAtomTypeAndDataLength(v11, &v10, &v9))
      {
        return 0;
      }

      if (v10 <= 1969513847)
      {
        break;
      }

      if ((v10 - 1969514801) < 2)
      {
        goto LABEL_19;
      }

      if (v10 != 2002876005)
      {
        if (v10 != 1969513848)
        {
          goto LABEL_20;
        }

LABEL_19:
        if (!a3)
        {
          return 1;
        }

        goto LABEL_20;
      }

      if (a3 == 1)
      {
        return 1;
      }

LABEL_20:
      if (FigAtomStreamAdvanceToNextAtom(v11))
      {
        return 0;
      }
    }

    if (v10 <= 1936875891)
    {
      if (v10 != 1667788396 && v10 != 1684892024)
      {
        if (!v10)
        {
          return 0;
        }

        goto LABEL_20;
      }
    }

    else if ((v10 - 1969513265) >= 2 && v10 != 1936875892)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v4 = *(v2 + 528);

  return CMBlockBufferAppendBufferReference(v4, a2, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_13_5(OpaqueCMBlockBuffer *a1, uint64_t a2, size_t *a3, uint64_t a4, char **a5)
{

  return CMBlockBufferGetDataPointer(a1, 0, a3, 0, a5);
}

uint64_t OUTLINED_FUNCTION_15_6()
{
  LODWORD(STACK[0x2D8]) = 0;
  *(v0 + 512) = 0;
  LODWORD(STACK[0x2D0]) = 0;

  return FigAtomStreamGetCurrentAtomTypeAndDataLength(&STACK[0x260], &STACK[0x2D8], &STACK[0x2F0]);
}

void *OUTLINED_FUNCTION_24_4()
{

  return malloc_type_calloc(v0, 8uLL, v1);
}

size_t OUTLINED_FUNCTION_28_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return FigAtomWriterBeginAtom(va, 1718775137, 0, a4, a5, a6, a7, a8);
}

size_t OUTLINED_FUNCTION_29_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout(v11, (v12 - 72), (v12 - 80), va);
}

OSStatus CMSwapBigEndianClosedCaptionDescriptionToHost(uint8_t *closedCaptionDescriptionData, size_t closedCaptionDescriptionSize)
{
  if (closedCaptionDescriptionSize <= 0xF)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", 0x88, v4, v2, v3);
  }

  v6 = bswap32(*(closedCaptionDescriptionData + 2));
  v7 = bswap32(*(closedCaptionDescriptionData + 6)) >> 16;
  v8 = bswap32(*(closedCaptionDescriptionData + 7)) >> 16;
  *closedCaptionDescriptionData = vrev32_s8(*closedCaptionDescriptionData);
  *(closedCaptionDescriptionData + 2) = v6;
  *(closedCaptionDescriptionData + 6) = v7;
  *(closedCaptionDescriptionData + 7) = v8;
  return 0;
}

OSStatus CMSwapHostEndianClosedCaptionDescriptionToBig(uint8_t *closedCaptionDescriptionData, size_t closedCaptionDescriptionSize)
{
  if (closedCaptionDescriptionSize <= 0xF)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", 0x91, v4, v2, v3);
  }

  v6 = bswap32(*(closedCaptionDescriptionData + 2));
  v7 = bswap32(*(closedCaptionDescriptionData + 6)) >> 16;
  v8 = bswap32(*(closedCaptionDescriptionData + 7)) >> 16;
  *closedCaptionDescriptionData = vrev32_s8(*closedCaptionDescriptionData);
  *(closedCaptionDescriptionData + 2) = v6;
  *(closedCaptionDescriptionData + 6) = v7;
  *(closedCaptionDescriptionData + 7) = v8;
  return 0;
}

OSStatus CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionBlockBuffer(CFAllocatorRef allocator, CMBlockBufferRef closedCaptionDescriptionBlockBuffer, CMClosedCaptionDescriptionFlavor flavor, CMClosedCaptionFormatDescriptionRef *formatDescriptionOut)
{
  cf = 0;
  if (closedCaptionDescriptionBlockBuffer)
  {
    dataPointerOut = 0;
    DataLength = CMBlockBufferGetDataLength(closedCaptionDescriptionBlockBuffer);
    if (CMBlockBufferIsRangeContiguous(closedCaptionDescriptionBlockBuffer, 0, 0))
    {
      v13 = CFRetain(closedCaptionDescriptionBlockBuffer);
      cf = v13;
    }

    else
    {
      Contiguous = CMBlockBufferCreateContiguous(allocator, closedCaptionDescriptionBlockBuffer, allocator, 0, 0, DataLength, 0, &cf);
      if (Contiguous)
      {
LABEL_4:
        if (cf)
        {
          CFRelease(cf);
        }

        return Contiguous;
      }

      v13 = cf;
    }

    CMBlockBufferGetDataPointer(v13, 0, 0, 0, &dataPointerOut);
    Contiguous = CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData(allocator, dataPointerOut, DataLength, v14, formatDescriptionOut);
    goto LABEL_4;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", 0x162, v6, v4, v5);
}

OSStatus CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(CFAllocatorRef allocator, CMClosedCaptionFormatDescriptionRef closedCaptionFormatDescription, CMClosedCaptionDescriptionFlavor flavor, CMBlockBufferRef *blockBufferOut)
{
  closedCaptionDescriptionData = 0;
  v47 = 0;
  if (closedCaptionFormatDescription)
  {
    TypeID = CMFormatDescriptionGetTypeID();
    if (TypeID == CFGetTypeID(closedCaptionFormatDescription))
    {
      if (CMFormatDescriptionGetMediaType(closedCaptionFormatDescription) == 1668047728)
      {
        if (blockBufferOut)
        {
          Extensions = CMFormatDescriptionGetExtensions(closedCaptionFormatDescription);
          if (!Extensions)
          {
            v15 = 0;
            v26 = 16;
            goto LABEL_41;
          }

          Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
          if (Value)
          {
            v13 = Value;
            dataPointerOut = 0;
            theBuffer = 0;
            Count = CFDictionaryGetCount(Value);
            v15 = Count;
            if (Count)
            {
              v16 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
              v17 = malloc_type_calloc(v15, 8uLL, 0xC0040B8AA526DuLL);
              CFDictionaryGetKeysAndValues(v13, v16, v17);
              v45 = v17;
              if (v15 < 1)
              {
                v20 = v16;
                v18 = 0;
              }

              else
              {
                v18 = 0;
                v19 = v15;
                v20 = v16;
                do
                {
                  if (*v17)
                  {
                    v21 = CFGetTypeID(*v17);
                    if (v21 == CFDataGetTypeID())
                    {
                      if (*v16)
                      {
                        v22 = CFGetTypeID(*v16);
                        if (v22 == CFStringGetTypeID())
                        {
                          v18 += CFDataGetLength(*v17) + 8;
                        }
                      }
                    }
                  }

                  ++v16;
                  ++v17;
                  --v19;
                }

                while (v19);
              }

              v27 = CMBlockBufferCreateWithMemoryBlock(allocator, 0, v18, allocator, 0, 0, v18, 1u, &theBuffer);
              if (v27)
              {
                v28 = v27;
                v15 = 0;
                v29 = v20;
              }

              else
              {
                DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
                v29 = v20;
                if (!DataPointer)
                {
                  v31 = v45;
                  if (v15 >= 1)
                  {
                    v36 = v45;
                    v37 = v29;
                    do
                    {
                      if (*v36)
                      {
                        v38 = CFGetTypeID(*v36);
                        if (v38 == CFDataGetTypeID())
                        {
                          if (*v37)
                          {
                            v39 = CFGetTypeID(*v37);
                            if (v39 == CFStringGetTypeID())
                            {
                              Length = CFDataGetLength(*v36);
                              *dataPointerOut = bswap32(Length + 8);
                              dataPointerOut += 4;
                              v51.location = 0;
                              v51.length = 4;
                              CFStringGetBytes(*v37, v51, 0, 0, 0, dataPointerOut, 4, 0);
                              dataPointerOut += 4;
                              v41 = dataPointerOut;
                              BytePtr = CFDataGetBytePtr(*v36);
                              v43 = CFDataGetLength(*v36);
                              memcpy(v41, BytePtr, v43);
                              v44 = CFDataGetLength(*v36);
                              dataPointerOut += v44;
                            }
                          }
                        }
                      }

                      ++v37;
                      ++v36;
                      --v15;
                    }

                    while (v15);
                  }

                  v28 = 0;
                  v15 = theBuffer;
                  theBuffer = 0;
                  if (!v29)
                  {
LABEL_33:
                    if (v31)
                    {
                      free(v31);
                    }

                    if (theBuffer)
                    {
                      CFRelease(theBuffer);
                    }

                    if (v28)
                    {
                      if (v15)
                      {
                        CFRelease(v15);
                        v15 = 0;
                      }

                      goto LABEL_45;
                    }

                    goto LABEL_40;
                  }

LABEL_32:
                  free(v29);
                  goto LABEL_33;
                }

                v28 = DataPointer;
                v15 = 0;
              }

              v31 = v45;
              if (!v29)
              {
                goto LABEL_33;
              }

              goto LABEL_32;
            }
          }

          else
          {
            v15 = 0;
          }

LABEL_40:
          v26 = CMBlockBufferGetDataLength(v15) + 16;
LABEL_41:
          v32 = CMBlockBufferCreateWithMemoryBlock(allocator, 0, v26, allocator, 0, 0, v26, 1u, &v47);
          if (!v32)
          {
            v32 = CMBlockBufferGetDataPointer(v47, 0, 0, 0, &closedCaptionDescriptionData);
            if (!v32)
            {
              *closedCaptionDescriptionData = v26;
              MediaSubType = CMFormatDescriptionGetMediaSubType(closedCaptionFormatDescription);
              v34 = closedCaptionDescriptionData;
              *(closedCaptionDescriptionData + 1) = MediaSubType;
              *(v34 + 1) = 0xFFFF000000000000;
              v32 = CMSwapHostEndianClosedCaptionDescriptionToBig(v34, 0x10uLL);
              if (!v32)
              {
                if (!v15 || (DataLength = CMBlockBufferGetDataLength(v15), (v32 = CMBlockBufferCopyDataBytes(v15, 0, DataLength, closedCaptionDescriptionData + 16)) == 0))
                {
                  v28 = 0;
                  *blockBufferOut = v47;
                  v47 = 0;
                  if (!v15)
                  {
                    return v28;
                  }

                  goto LABEL_48;
                }
              }
            }
          }

          v28 = v32;
LABEL_45:
          if (v47)
          {
            CFRelease(v47);
          }

          if (!v15)
          {
            return v28;
          }

LABEL_48:
          CFRelease(v15);
          return v28;
        }

        v23 = v6;
        v24 = 529;
      }

      else
      {
        v23 = v6;
        v24 = 527;
      }
    }

    else
    {
      v23 = v6;
      v24 = 525;
    }
  }

  else
  {
    v23 = v6;
    v24 = 523;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", v24, v23, v4, v5);
}

int8x8_t flipTextDescriptionData(int a1, unsigned __int16 *__dst)
{
  memset(__src, 0, 46);
  if (a1 > 2004251763)
  {
    if (a1 == 2021028980)
    {
LABEL_7:
      __src[0] = *__dst;
      *&__src[0] = vrev32_s8(*&__src[0]);
      DWORD2(__src[0]) = bswap32(DWORD2(__src[0]));
      WORD6(__src[0]) = bswap32(WORD6(__src[0])) >> 16;
      HIWORD(__src[0]) = bswap32(HIWORD(__src[0])) >> 16;
      v5 = 16;
      goto LABEL_9;
    }

    v4 = 2004251764;
  }

  else
  {
    if (a1 == 1937010800)
    {
      __src[0] = *__dst;
      *&__src[0] = vrev32_s8(*&__src[0]);
      DWORD2(__src[0]) = bswap32(DWORD2(__src[0]));
      WORD6(__src[0]) = bswap32(WORD6(__src[0])) >> 16;
      HIWORD(__src[0]) = bswap32(HIWORD(__src[0])) >> 16;
      result = *&__src[0];
      *__dst = __src[0];
      return result;
    }

    v4 = 1937142900;
  }

  if (a1 == v4)
  {
    goto LABEL_7;
  }

  __src[0] = *__dst;
  v6 = *(__dst + 4);
  *&__src[0] = vrev32_s8(*&__src[0]);
  DWORD2(__src[0]) = bswap32(DWORD2(__src[0]));
  WORD6(__src[0]) = bswap32(WORD6(__src[0])) >> 16;
  HIWORD(__src[0]) = bswap32(HIWORD(__src[0])) >> 16;
  LODWORD(__src[1]) = bswap32(v6);
  v5 = 20;
LABEL_9:
  memcpy(__dst, __src, v5);
  if (a1 == 1952807028)
  {
    *(__dst + 5) = bswap32(*(__dst + 5));
    v11 = bswap32(__dst[13]);
    v12 = bswap32(__dst[14]);
    __dst[12] = bswap32(__dst[12]) >> 16;
    __dst[13] = HIWORD(v11);
    __dst[14] = HIWORD(v12);
    v13 = *(__dst + 15);
    v14 = HIDWORD(v13);
    v15 = HIWORD(v13);
    LODWORD(v13) = bswap32(v13);
    *(__dst + 15) = ((bswap32(v14) >> 16) << 32) | (__rev16(v15) << 48) | (v13 << 16) | WORD1(v13);
    LODWORD(v14) = bswap32(__dst[21]);
    LODWORD(v15) = bswap32(__dst[22]);
    v16 = bswap32(__dst[23]);
    result = vrev16_s8(*(__dst + 25));
    *(__dst + 19) = bswap32(*(__dst + 19));
    __dst[21] = WORD1(v14);
    __dst[22] = WORD1(v15);
    __dst[23] = HIWORD(v16);
    *(__dst + 25) = result;
  }

  else if (a1 == 1954034535)
  {
    v8 = *(__dst + 13);
    v9 = HIDWORD(v8);
    v10 = HIWORD(v8);
    LODWORD(v8) = bswap32(v8);
    *(__dst + 13) = ((bswap32(v9) >> 16) << 32) | (__rev16(v10) << 48) | (v8 << 16) | WORD1(v8);
    LODWORD(v9) = bswap32(__dst[18]) >> 16;
    LODWORD(v10) = bswap32(__dst[19]);
    __dst[17] = bswap32(__dst[17]) >> 16;
    __dst[18] = v9;
    __dst[19] = WORD1(v10);
  }

  return result;
}

OSStatus CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer(CFAllocatorRef allocator, CMBlockBufferRef textDescriptionBlockBuffer, CMTextDescriptionFlavor flavor, CMMediaType mediaType, CMTextFormatDescriptionRef *formatDescriptionOut)
{
  blockBufferOut = 0;
  if (textDescriptionBlockBuffer)
  {
    dataPointerOut = 0;
    DataLength = CMBlockBufferGetDataLength(textDescriptionBlockBuffer);
    if (!DataLength)
    {
      CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer_cold_1(&v22);
      v19 = v22;
      goto LABEL_12;
    }

    v11 = DataLength;
    if (CMBlockBufferIsRangeContiguous(textDescriptionBlockBuffer, 0, 0))
    {
      v12 = CFRetain(textDescriptionBlockBuffer);
      blockBufferOut = v12;
    }

    else
    {
      DataPointer = CMBlockBufferCreateContiguous(allocator, textDescriptionBlockBuffer, allocator, 0, 0, v11, 0, &blockBufferOut);
      if (DataPointer)
      {
LABEL_11:
        v19 = DataPointer;
LABEL_12:
        if (blockBufferOut)
        {
          CFRelease(blockBufferOut);
        }

        return v19;
      }

      v12 = blockBufferOut;
    }

    DataPointer = CMBlockBufferGetDataPointer(v12, 0, 0, 0, &dataPointerOut);
    if (!DataPointer)
    {
      DataPointer = CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData(allocator, dataPointerOut, v11, v14, mediaType, formatDescriptionOut);
    }

    goto LABEL_11;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<< TextDescBridge >>>", 0x6EE, v5, v16, v17);
}

OSStatus CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(CFAllocatorRef allocator, CMTextFormatDescriptionRef textFormatDescription, CMTextDescriptionFlavor flavor, CMBlockBufferRef *blockBufferOut)
{
  v65 = 0;
  dataPointerOut = 0;
  MediaSubType = CMFormatDescriptionGetMediaSubType(textFormatDescription);
  Extensions = CMFormatDescriptionGetExtensions(textFormatDescription);
  v9 = Extensions;
  v10 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  value = 0;
  v61 = 0;
  v58 = 0;
  theDict = 0;
  v56 = 0;
  v57 = 0;
  context = 0;
  v55 = 0;
  v53 = 0;
  v49 = blockBufferOut;
  if (MediaSubType <= 2004251763)
  {
    if (MediaSubType != 1937010800)
    {
      v11 = 1937142900;
      goto LABEL_6;
    }

    v51 = 0;
    theString = 0;
    v50 = 0;
    if (Extensions)
    {
      ValueIfPresent = CFDictionaryGetValueIfPresent(Extensions, @"XMLNamespaces", &theString);
      CFDictionaryGetValueIfPresent(v9, @"XMLSchemas", &v51);
      v17 = CFDictionaryGetValueIfPresent(v9, @"AuxiliaryMIMETypes", &v50);
      if (ValueIfPresent)
      {
        v12 = v17;
        if (theString)
        {
          if (emitUTF8StringFromCFString(0, 0, theString, &v53))
          {
            CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_1();
            goto LABEL_182;
          }

          v15 = v53;
        }

        else
        {
          v15 = 0;
        }

        if (v51)
        {
          if (emitUTF8StringFromCFString(0, 0, v51, &v53))
          {
            CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_2();
            goto LABEL_182;
          }

          v14 = v53;
        }

        else
        {
          v14 = 0;
        }

        if (!v50)
        {
          v13 = 0;
          goto LABEL_36;
        }

        if (!emitUTF8StringFromCFString(0, 0, v50, &v53))
        {
          v13 = v53;
LABEL_36:
          v47 = 0;
          v48 = 0;
LABEL_37:
          v18 = 0;
          goto LABEL_38;
        }

        CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_3();
      }

      else
      {
        CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_4(v67);
      }
    }

    else
    {
      CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_5(v67);
    }

LABEL_182:
    v40 = v67[0];
    goto LABEL_161;
  }

  if (MediaSubType == 2004251764)
  {
    goto LABEL_8;
  }

  v11 = 2021028980;
LABEL_6:
  if (MediaSubType != v11)
  {
    v10 = 1;
  }

LABEL_8:
  if (MediaSubType != 1937142900 && MediaSubType != 2004251764 && MediaSubType != 2021028980 && !Extensions)
  {
    CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_19(&theString);
    v40 = theString;
    goto LABEL_161;
  }

  if (!Extensions)
  {
    v10 = 0;
  }

  if (v10 != 1)
  {
    if (!Extensions)
    {
      v19 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v45 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v20 = 0;
LABEL_55:
      v23 = 0;
      v22 = 16;
      goto LABEL_60;
    }

    v47 = 0;
    v48 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_37;
  }

  if (CFDictionaryGetValueIfPresent(Extensions, @"FontTable", &value) == 1)
  {
    context = 0;
    v55 = 0;
    v56 = 0;
    CFDictionaryApplyFunction(value, FontTableEmittingApplierFunction, &context);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v47 = context;
    v48 = v55 + 10;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v18 = 1;
LABEL_38:
  v45 = v12;
  if (CFDictionaryGetValueIfPresent(v9, @"SampleDescriptionExtensionAtoms", &theDict) == 1)
  {
    context = 0;
    v55 = 0;
    v56 = 0;
    CFDictionaryApplyFunction(theDict, MiscExtensionEmittingApplierFunction, &context);
    v20 = v55;
    if ((v18 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v20 = 0;
    if (!v18)
    {
LABEL_49:
      v46 = 0;
      v19 = 0;
      goto LABEL_50;
    }
  }

  if (CFDictionaryGetValueIfPresent(v9, @"DefaultFontName", &v64) != 1 || v64 == 0)
  {
    goto LABEL_49;
  }

  v19 = malloc_type_malloc(0x100uLL, 0x30088C0FuLL);
  if (!CFStringGetPascalString(v64, v19, 256, 0))
  {
    free(v19);
    goto LABEL_49;
  }

  v46 = *v19;
LABEL_50:
  if (MediaSubType != 1937142900 && MediaSubType != 2021028980 && MediaSubType != 2004251764)
  {
    goto LABEL_55;
  }

  if (CFDictionaryGetValueIfPresent(v9, @"rqdf", &v58) == 1)
  {
    context = 0;
    v55 = 0;
    v56 = 0;
    CFDictionaryApplyFunction(v58, RequiredFeaturesEmittingApplierFunction, &context);
    v22 = v55 + 16;
  }

  else
  {
    v22 = 16;
  }

  if (CFDictionaryGetValueIfPresent(v9, @"InlineResources", &v57) == 1)
  {
    context = 0;
    v55 = 0;
    v56 = 0;
    CFDictionaryApplyFunction(v57, InlineResourcesEmittingApplierFunction, &context);
    v23 = v55;
  }

  else
  {
    v23 = 0;
  }

LABEL_60:
  if (MediaSubType <= 1952807027)
  {
    if (MediaSubType == 1937010800)
    {
      v28 = (v20 | v13) != 0;
      if (v14)
      {
        v28 = v14;
      }

      if (v20)
      {
        v29 = v13 == 0;
      }

      else
      {
        v29 = 0;
      }

      if (v29)
      {
        v30 = 1;
      }

      else
      {
        v30 = v13;
      }

      v26 = v15 + v30 + v28 + 16;
      v25 = 16;
      v27 = v26;
      goto LABEL_79;
    }

    v24 = 1937142900;
  }

  else
  {
    if (MediaSubType == 1952807028)
    {
      v25 = 0;
      v27 = v46 + 59;
      v26 = v46 + 59 + v48;
      goto LABEL_79;
    }

    if (MediaSubType == 2021028980)
    {
LABEL_67:
      v25 = 0;
      v26 = v23 + v22;
      v27 = 16;
      goto LABEL_79;
    }

    v24 = 2004251764;
  }

  if (MediaSubType == v24)
  {
    goto LABEL_67;
  }

  v25 = 0;
  v26 = v48 + 46;
  v27 = 46;
LABEL_79:
  v31 = v26 + v20;
  DictionaryNumberWithNtoBFlip = CMBlockBufferCreateWithMemoryBlock(allocator, 0, v26 + v20, allocator, 0, 0, v26 + v20, 1u, &v65);
  if (DictionaryNumberWithNtoBFlip)
  {
LABEL_141:
    v40 = DictionaryNumberWithNtoBFlip;
    goto LABEL_186;
  }

  CMBlockBufferGetDataPointer(v65, 0, 0, 0, &dataPointerOut);
  bzero(dataPointerOut, v31);
  if (MediaSubType <= 1952807027)
  {
    if (MediaSubType != 1937010800)
    {
      v33 = 1937142900;
      goto LABEL_86;
    }

    v36 = dataPointerOut;
    *dataPointerOut = bswap32(v31);
    *(v36 + 1) = bswap32(CMFormatDescriptionGetMediaSubType(textFormatDescription));
    *(v36 + 7) = -1;
    if (CFDictionaryGetValueIfPresent(v9, @"XMLNamespaces", &v62) == 1)
    {
      if (emitUTF8StringFromCFString(v36 + 16, v31 - v25, v62, &v53))
      {
        CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_11();
      }

      else
      {
        v37 = &v36[v53 + 16];
        v38 = v27 - v25 - v53;
        if (CFDictionaryGetValueIfPresent(v9, @"XMLSchemas", &v62))
        {
          if (emitUTF8StringFromCFString(v37, v38, v62, &v53))
          {
            CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_12();
            goto LABEL_185;
          }

          v37 += v53;
          v38 -= v53;
        }

        else if (v20 || v45)
        {
          *v37++ = 0;
          --v38;
        }

        if (CFDictionaryGetValueIfPresent(v9, @"AuxiliaryMIMETypes", &v62))
        {
          if (emitUTF8StringFromCFString(v37, v38, v62, &v53))
          {
            CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_13();
            goto LABEL_185;
          }

          v38 -= v53;
        }

        else if (v20)
        {
          *v37 = 0;
          --v38;
        }

        if (!v38)
        {
          goto LABEL_151;
        }

        CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_14(&theString);
      }
    }

    else
    {
      CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_10(&theString);
    }

LABEL_185:
    v40 = theString;
LABEL_186:
    blockBufferOut = v49;
    if (!v19)
    {
      goto LABEL_161;
    }

    goto LABEL_160;
  }

  if (MediaSubType == 1952807028)
  {
    v35 = dataPointerOut;
    *dataPointerOut = bswap32(v31);
    *(v35 + 1) = bswap32(CMFormatDescriptionGetMediaSubType(textFormatDescription));
    *(v35 + 7) = -1;
    DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v9, @"DisplayFlags", 3, v35 + 4);
    if (DictionaryNumberWithNtoBFlip)
    {
      goto LABEL_141;
    }

    DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v9, @"TextJustification", 3, v35 + 5);
    if (DictionaryNumberWithNtoBFlip)
    {
      goto LABEL_141;
    }

    if (CFDictionaryGetValueIfPresent(v9, @"BackgroundColor", &v63) == 1)
    {
      DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Red", 2, v35 + 6);
      if (DictionaryNumberWithNtoBFlip)
      {
        goto LABEL_141;
      }

      DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Green", 2, v35 + 26);
      if (DictionaryNumberWithNtoBFlip)
      {
        goto LABEL_141;
      }

      DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Blue", 2, v35 + 7);
      if (DictionaryNumberWithNtoBFlip)
      {
        goto LABEL_141;
      }

      if (CFDictionaryGetValueIfPresent(v9, @"DefaultTextBox", &v63) == 1)
      {
        DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Top", 2, v35 + 30);
        if (DictionaryNumberWithNtoBFlip)
        {
          goto LABEL_141;
        }

        DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Left", 2, v35 + 8);
        if (DictionaryNumberWithNtoBFlip)
        {
          goto LABEL_141;
        }

        DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Right", 2, v35 + 9);
        if (DictionaryNumberWithNtoBFlip)
        {
          goto LABEL_141;
        }

        DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Bottom", 2, v35 + 34);
        if (DictionaryNumberWithNtoBFlip)
        {
          goto LABEL_141;
        }

        if (CFDictionaryGetValueIfPresent(v9, @"DefaultStyle", &v63) == 1)
        {
          DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"StartChar", 3, v35 + 38);
          if (DictionaryNumberWithNtoBFlip)
          {
            goto LABEL_141;
          }

          DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Height", 2, v35 + 42);
          if (DictionaryNumberWithNtoBFlip)
          {
            goto LABEL_141;
          }

          DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Ascent", 2, v35 + 11);
          if (DictionaryNumberWithNtoBFlip)
          {
            goto LABEL_141;
          }

          DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Font", 2, v35 + 46);
          if (DictionaryNumberWithNtoBFlip)
          {
            goto LABEL_141;
          }

          DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"FontFace", 1, v35 + 12);
          if (DictionaryNumberWithNtoBFlip)
          {
            goto LABEL_141;
          }

          DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"FontSize", 2, v35 + 50);
          if (DictionaryNumberWithNtoBFlip)
          {
            goto LABEL_141;
          }

          if (CFDictionaryGetValueIfPresent(v63, @"ForegroundColor", &v61) == 1)
          {
            DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v61, @"Red", 2, v35 + 13);
            if (DictionaryNumberWithNtoBFlip)
            {
              goto LABEL_141;
            }

            DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v61, @"Green", 2, v35 + 54);
            if (DictionaryNumberWithNtoBFlip)
            {
              goto LABEL_141;
            }

            DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v61, @"Blue", 2, v35 + 14);
            if (DictionaryNumberWithNtoBFlip)
            {
              goto LABEL_141;
            }

            if (v19)
            {
              memcpy(v35 + 58, v19, v46 + 1);
            }

            goto LABEL_151;
          }

          CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_9(&theString);
        }

        else
        {
          CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_8(&theString);
        }
      }

      else
      {
        CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_7(&theString);
      }
    }

    else
    {
      CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_6(&theString);
    }

    goto LABEL_185;
  }

  if (MediaSubType == 2021028980)
  {
LABEL_87:
    v34 = dataPointerOut;
    *dataPointerOut = bswap32(v31);
    *(v34 + 1) = bswap32(CMFormatDescriptionGetMediaSubType(textFormatDescription));
    *(v34 + 7) = -1;
    goto LABEL_151;
  }

  v33 = 2004251764;
LABEL_86:
  if (MediaSubType == v33)
  {
    goto LABEL_87;
  }

  v39 = dataPointerOut;
  *dataPointerOut = bswap32(v31);
  *(v39 + 1) = bswap32(CMFormatDescriptionGetMediaSubType(textFormatDescription));
  *(v39 + 7) = -1;
  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v9, @"DisplayFlags", 3, v39 + 4);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v9, @"HorizontalJustification", 1, v39 + 5);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v9, @"VerticalJustification", 1, v39 + 21);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  if (CFDictionaryGetValueIfPresent(v9, @"BackgroundColor", &v63) != 1)
  {
    CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_15(&theString);
    goto LABEL_185;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Red", 1, v39 + 22);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Green", 1, v39 + 23);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Blue", 1, v39 + 6);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Alpha", 1, v39 + 25);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  if (CFDictionaryGetValueIfPresent(v9, @"DefaultTextBox", &v63) != 1)
  {
    CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_16(&theString);
    goto LABEL_185;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Top", 2, v39 + 26);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Left", 2, v39 + 7);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Right", 2, v39 + 8);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Bottom", 2, v39 + 30);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  if (CFDictionaryGetValueIfPresent(v9, @"DefaultStyle", &v63) != 1)
  {
    CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_17(&theString);
    goto LABEL_185;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"StartChar", 2, v39 + 34);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"EndChar", 2, v39 + 9);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"Font", 2, v39 + 38);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"FontFace", 1, v39 + 10);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v63, @"FontSize", 1, v39 + 41);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  if (CFDictionaryGetValueIfPresent(v63, @"ForegroundColor", &v61) != 1)
  {
    CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer_cold_18(&theString);
    goto LABEL_185;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v61, @"Red", 1, v39 + 42);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v61, @"Green", 1, v39 + 43);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v61, @"Blue", 1, v39 + 11);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

  DictionaryNumberWithNtoBFlip = FetchDictionaryNumberWithNtoBFlip(v61, @"Alpha", 1, v39 + 45);
  if (DictionaryNumberWithNtoBFlip)
  {
    goto LABEL_141;
  }

LABEL_151:
  v56 = &dataPointerOut[v27];
  if (value)
  {
    *&dataPointerOut[v27] = bswap32(v48);
    v41 = v56;
    v56 += 4;
    *(v41 + 1) = 1650553958;
    v42 = v56;
    v56 += 4;
    *(v42 + 2) = bswap32(v47) >> 16;
    v56 += 2;
    CFDictionaryApplyFunction(value, FontTableEmittingApplierFunction, &context);
  }

  if (theDict)
  {
    CFDictionaryApplyFunction(theDict, MiscExtensionEmittingApplierFunction, &context);
  }

  blockBufferOut = v49;
  if (v58)
  {
    CFDictionaryApplyFunction(v58, RequiredFeaturesEmittingApplierFunction, &context);
  }

  if (v57)
  {
    CFDictionaryApplyFunction(v57, InlineResourcesEmittingApplierFunction, &context);
  }

  v40 = 0;
  if (v19)
  {
LABEL_160:
    free(v19);
  }

LABEL_161:
  v43 = v65;
  if (v40 && v65)
  {
    CFRelease(v65);
    v43 = 0;
  }

  *blockBufferOut = v43;
  return v40;
}

uint64_t emitUTF8StringFromCFString(void *a1, size_t a2, CFStringRef theString, size_t *a4)
{
  __n = 0;
  if (!theString)
  {
    emitUTF8StringFromCFString_cold_4(&v13);
    return v13;
  }

  if ((a1 != 0) != (a2 != 0))
  {
    emitUTF8StringFromCFString_cold_3(&v13);
    return v13;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = FigCreateBytesFromCFString(*MEMORY[0x1E695E480], theString, 0x8000100u, 1, &__n);
  if (!v8)
  {
    emitUTF8StringFromCFString_cold_2(&v13);
    return v13;
  }

  v9 = v8;
  v10 = __n;
  if (!a1)
  {
    goto LABEL_7;
  }

  if (__n > a2)
  {
    emitUTF8StringFromCFString_cold_1(&v13);
    return v13;
  }

  memcpy(a1, v8, __n);
LABEL_7:
  CFAllocatorDeallocate(v7, v9);
  result = 0;
  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

CFIndex FontTableEmittingApplierFunction(const __CFString *a1, CFStringRef theString, uint64_t a3)
{
  Length = CFStringGetLength(theString);
  v7 = CFGetTypeID(a1);
  if (v7 != CFStringGetTypeID())
  {
    return FontTableEmittingApplierFunction_cold_1();
  }

  v8 = CFGetTypeID(theString);
  if (v8 != CFStringGetTypeID())
  {
    return FontTableEmittingApplierFunction_cold_2();
  }

  maxBufLen = 0;
  v14.location = 0;
  v14.length = Length;
  result = CFStringGetBytes(theString, v14, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  if (!maxBufLen)
  {
    return FontTableEmittingApplierFunction_cold_3();
  }

  v10.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v10.i64[1] = maxBufLen + 3;
  *a3 = vaddq_s64(v10, *a3);
  if (*(a3 + 16))
  {
    **(a3 + 16) = bswap32(CFStringGetIntValue(a1)) >> 16;
    v11 = *(a3 + 16);
    *(a3 + 16) = v11 + 2;
    *(v11 + 2) = maxBufLen;
    v12 = (*(a3 + 16) + 1);
    *(a3 + 16) = v12;
    v15.location = 0;
    v15.length = Length;
    result = CFStringGetBytes(theString, v15, 0x8000100u, 0, 0, v12, maxBufLen, &maxBufLen);
    *(a3 + 16) += maxBufLen;
  }

  return result;
}

void MiscExtensionEmittingApplierFunction(const __CFString *a1, const void *a2, int64x2_t *a3)
{
  Length = CFStringGetLength(a1);
  v7 = CFGetTypeID(a1);
  if (v7 == CFStringGetTypeID())
  {
    if (a2)
    {
      v8 = CFGetTypeID(a2);
      if (v8 == CFDataGetTypeID())
      {
        v9 = CFDataGetLength(a2);
        if (v9 <= 0)
        {
          MiscExtensionEmittingApplierFunction_cold_4();
        }

        else
        {
          v10 = v9;
          v11.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v11.i64[1] = v9 + 8;
          *a3 = vaddq_s64(*a3, v11);
          v12 = a3[1].i64[0];
          if (v12)
          {
            usedBufLen = 0;
            *buffer = 0;
            *v12 = bswap32(v9 + 8);
            a3[1].i64[0] += 4;
            v16.location = 0;
            v16.length = Length;
            CFStringGetBytes(a1, v16, 0, 0, 0, buffer, 4, &usedBufLen);
            if (usedBufLen == 4)
            {
              *a3[1].i64[0] = *buffer;
              v13 = (a3[1].i64[0] + 4);
              a3[1].i64[0] = v13;
              v17.location = 0;
              v17.length = v10;
              CFDataGetBytes(a2, v17, v13);
              a3[1].i64[0] += v10;
            }

            else
            {
              MiscExtensionEmittingApplierFunction_cold_3();
            }
          }
        }
      }

      else
      {
        MiscExtensionEmittingApplierFunction_cold_2();
      }
    }

    else
    {
      MiscExtensionEmittingApplierFunction_cold_5();
    }
  }

  else
  {
    MiscExtensionEmittingApplierFunction_cold_1();
  }
}

uint64_t RequiredFeaturesEmittingApplierFunction(const void *a1, const void *a2, int64x2_t *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID())
  {
    return RequiredFeaturesEmittingApplierFunction_cold_1();
  }

  result = CFEqual(a1, @"feat");
  if (result)
  {
    maxBufLen = 0;
    v8 = CFGetTypeID(a2);
    if (v8 == CFArrayGetTypeID())
    {
      result = CFArrayGetCount(a2);
      v9 = result;
      v11 = a3->i64[1];
      v10 = a3[1].i64[0];
      a3->i64[1] = v11 + 8;
      if (v10)
      {
        *v10 = 0x8000000;
        v12 = a3[1].i64[0];
        a3[1].i64[0] = v12 + 4;
        *(v12 + 4) = 1717858674;
        v13 = a3[1].i64[0] + 4;
        a3[1].i64[0] = v13;
      }

      else
      {
        v13 = 0;
      }

      if (result < 1)
      {
LABEL_15:
        if (v13)
        {
          v23 = a3->i64[1] - v11;
          if (HIDWORD(v23))
          {
            return RequiredFeaturesEmittingApplierFunction_cold_4();
          }

          else
          {
            *v10 = bswap32(v23);
          }
        }
      }

      else
      {
        v14 = 0;
        v24 = vdupq_n_s64(1uLL).u64[0];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
          v16 = CFGetTypeID(ValueAtIndex);
          if (v16 != CFStringGetTypeID())
          {
            return RequiredFeaturesEmittingApplierFunction_cold_3();
          }

          Length = CFStringGetLength(ValueAtIndex);
          v26.location = 0;
          v26.length = Length;
          result = CFStringGetBytes(ValueAtIndex, v26, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
          if (!maxBufLen)
          {
            return RequiredFeaturesEmittingApplierFunction_cold_5();
          }

          v18 = maxBufLen + 8;
          v19.i64[0] = v24;
          v19.i64[1] = maxBufLen + 8;
          *a3 = vaddq_s64(*a3, v19);
          v20 = a3[1].i64[0];
          if (v20)
          {
            *v20 = bswap32(v18);
            v21 = (a3[1].i64[0] + 4);
            a3[1].i64[0] = v21;
            *v21 = 1952540006;
            v22 = (a3[1].i64[0] + 4);
            a3[1].i64[0] = v22;
            v27.location = 0;
            v27.length = Length;
            result = CFStringGetBytes(ValueAtIndex, v27, 0x8000100u, 0, 0, v22, maxBufLen, &maxBufLen);
            v13 = a3[1].i64[0] + maxBufLen;
            a3[1].i64[0] = v13;
          }

          else
          {
            v13 = 0;
          }

          if (v9 == ++v14)
          {
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      return RequiredFeaturesEmittingApplierFunction_cold_2();
    }
  }

  return result;
}

void InlineResourcesEmittingApplierFunction(const void *a1, const __CFArray *a2, uint64_t a3)
{
  v27 = 0;
  v28 = 0;
  blockBufferOut = 0;
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {
    if (*(a3 + 16))
    {
      v7 = @"Skipping inline resources [atom writing pass]";
    }

    else
    {
      v7 = @"Skipping inline resources [data sizing pass]";
    }

    CFShow(v7);
    if (CFEqual(a1, @"InlineResourcesArray"))
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      if (a2 && (v8 = CFGetTypeID(a2), v8 == CFArrayGetTypeID()))
      {
        if (!CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 8u, 0, &blockBufferOut) && !FigAtomWriterInitWithBlockBuffer(blockBufferOut, v24) && !FigAtomWriterBeginAtom(v24, 1987343442, 0, v9, v10, v11, v12, v13))
        {
          v27 = a3;
          v28 = v24;
          FigCFArrayApplyFunction(a2, InlineResourcesPayloadWritingApplierFunc, &v27);
          if (!FigAtomWriterEndAtom(v24, v14, v15, v16, v17, v18, v19, v20))
          {
            DataLength = CMBlockBufferGetDataLength(blockBufferOut);
            v22 = *(a3 + 16);
            *(a3 + 8) += DataLength;
            if (v22)
            {
              v23 = DataLength;
              if (!CMBlockBufferCopyDataBytes(blockBufferOut, 0, DataLength, v22))
              {
                *(a3 + 16) += v23;
              }
            }
          }
        }
      }

      else
      {
        InlineResourcesEmittingApplierFunction_cold_2();
      }

      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }
    }
  }

  else
  {
    InlineResourcesEmittingApplierFunction_cold_1();
  }
}

uint64_t FetchDictionaryNumberWithNtoBFlip(const __CFDictionary *a1, const void *a2, uint64_t a3, _DWORD *a4)
{
  value = 0;
  v9 = 0;
  valuePtr = 0;
  if (CFDictionaryGetValueIfPresent(a1, a2, &value) != 1)
  {
    FetchDictionaryNumberWithNtoBFlip_cold_1(&v11);
    return v11;
  }

  v6 = CFGetTypeID(value);
  if (v6 != CFNumberGetTypeID())
  {
    FetchDictionaryNumberWithNtoBFlip_cold_2(&v11);
    return v11;
  }

  if (a3 == 3)
  {
    CFNumberGetValue(value, kCFNumberSInt32Type, &v9);
    result = 0;
    *a4 = bswap32(v9);
  }

  else if (a3 == 2)
  {
    CFNumberGetValue(value, kCFNumberSInt16Type, &valuePtr);
    result = 0;
    *a4 = bswap32(valuePtr) >> 16;
  }

  else
  {
    CFNumberGetValue(value, kCFNumberSInt8Type, a4);
    return 0;
  }

  return result;
}

uint64_t createDict(const __CFAllocator *a1, const void **a2, const void **a3, CFIndex a4, CFDictionaryRef *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = CFDictionaryCreate(a1, a2, a3, a4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *a5 = v8;
  if (v6 >= 1)
  {
    do
    {
      if (*v7)
      {
        CFRelease(*v7);
        *v7 = 0;
      }

      ++v7;
      --v6;
    }

    while (v6);
    v8 = *a5;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return 4294954583;
  }
}

size_t ParseExtensionAtomsInDescription(uint64_t a1, unint64_t a2, CFMutableDictionaryRef *a3, __CFDictionary **a4, __CFDictionary **a5, __CFDictionary **a6)
{
  v155 = *MEMORY[0x1E69E9840];
  *bytes = 0;
  v12 = *(a1 + 4);
  v13 = bswap32(v12);
  v15 = v12 == 1953789560 || (v13 & 0xFBFFFFFF) == 1937142900;
  if (v13 > 1952807027)
  {
    if (v13 != 1952807028)
    {
      if (v13 != 2021028980 && v13 != 2004251764)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    if (a2 <= 0x3A)
    {
      ParseExtensionAtomsInDescription_cold_10(&v129);
      goto LABEL_262;
    }

    v19 = *(a1 + 58) + 59;
    v20 = a2 - v19;
    if (a2 < v19)
    {
      ParseExtensionAtomsInDescription_cold_9(&v129);
      goto LABEL_262;
    }

    v17 = a1 + v19;
    v116 = 1;
LABEL_48:
    v18 = v20;
    goto LABEL_49;
  }

  if (v13 == 1937010800)
  {
    LOBYTE(v138) = 0;
    LOBYTE(v136) = 0;
    LOBYTE(v128) = 0;
    LOBYTE(v125) = 0;
    v129 = 0uLL;
    v127[0] = 0uLL;
    v148 = 0;
    v149 = 0;
    lengthAtOffsetOut = 0;
    v142 = 0;
    if (a2 > 0x10)
    {
      if (locateXMLSubtitleSampleFields(a1, a2, &v138, &v129, &v136, v127, &v128, &v148, &v125, &lengthAtOffsetOut))
      {
        ParseExtensionAtomsInDescription_cold_1(&dataPointerOut);
        goto LABEL_269;
      }

      if (!v138)
      {
        ParseExtensionAtomsInDescription_cold_7(&dataPointerOut);
        goto LABEL_269;
      }

      if (v125 && (!v136 || !v128))
      {
        ParseExtensionAtomsInDescription_cold_2(&dataPointerOut);
        goto LABEL_269;
      }

      v21 = *(&v129 + 1) + 16;
      if (*(&v129 + 1) + 16 > a2)
      {
        ParseExtensionAtomsInDescription_cold_6(&dataPointerOut);
        goto LABEL_269;
      }

      if (v136)
      {
        v21 += *(&v127[0] + 1);
        if (v21 > a2)
        {
          ParseExtensionAtomsInDescription_cold_4(&dataPointerOut);
          goto LABEL_269;
        }

        if (v128)
        {
          v21 += v149;
          if (v21 > a2)
          {
            ParseExtensionAtomsInDescription_cold_3(&dataPointerOut);
LABEL_269:
            v25 = dataPointerOut;
            goto LABEL_36;
          }
        }
      }

      else if (v128)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x476, v115, v23, v24);
LABEL_36:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        goto LABEL_37;
      }

      v20 = a2 - v21;
      if (a2 >= v21)
      {
        v116 = 0;
        v17 = a1 + v21;
        goto LABEL_48;
      }

      ParseExtensionAtomsInDescription_cold_5(&dataPointerOut);
      goto LABEL_269;
    }

    ParseExtensionAtomsInDescription_cold_8(&dataPointerOut);
    goto LABEL_269;
  }

  if (v13 != 1937142900)
  {
LABEL_17:
    if (a2 > 0x2D)
    {
      v17 = a1 + 46;
      v18 = a2 - 46;
      v116 = 1;
      goto LABEL_49;
    }

    ParseExtensionAtomsInDescription_cold_19(&v129);
LABEL_262:
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v25 = v129;
    goto LABEL_37;
  }

LABEL_14:
  v116 = 0;
  v17 = a1 + 16;
  v18 = a2 - 16;
LABEL_49:
  if (v18 < 9)
  {
    v30 = 0;
    v29 = 0;
    v25 = 0;
LABEL_230:
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v31 = 0;
    if (!a3)
    {
      goto LABEL_231;
    }

    goto LABEL_235;
  }

  v113 = v15;
  v106 = a3;
  v107 = a4;
  v108 = a5;
  v109 = a6;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  v114 = 0;
  v33 = *MEMORY[0x1E695E480];
  v34 = v18;
  v35 = v17;
  while (1)
  {
    v36 = *(v35 + 4);
    v37 = bswap32(*v35);
    *bytes = bswap32(v36);
    if (v37 <= 7)
    {
      ParseExtensionAtomsInDescription_cold_18(&v129);
      v29 = 0;
LABEL_252:
      v30 = 0;
LABEL_253:
      v25 = v129;
      a5 = v108;
      a6 = v109;
      a3 = v106;
      a4 = v107;
      v27 = v110;
      v28 = v111;
      v31 = v112;
      goto LABEL_254;
    }

    v38 = v37;
    if (v37 - 9 >= v34 - 8)
    {
      goto LABEL_233;
    }

    v39 = v37 - 8;
    v40 = v116;
    if (v36 != 1650553958)
    {
      v40 = 0;
    }

    v123 = v38;
    if (v40 == 1)
    {
      if (v39 <= 1)
      {
        ParseExtensionAtomsInDescription_cold_17();
      }

      else
      {
        v41 = bswap32(*(v35 + 8)) >> 16;
        v42 = v38 - 10;
        if (3 * v41 > (v38 - 10))
        {
          ParseExtensionAtomsInDescription_cold_16();
        }

        else
        {
          v43 = v41;
          if (v41 >= 1)
          {
            v118 = v35;
            v120 = v34;
            Mutable = 0;
            v45 = (v35 + 10);
            v46 = v41;
            while (1)
            {
              if (v42 < 3)
              {
                v100 = 454;
                goto LABEL_219;
              }

              v47 = v45[2];
              if (v45[2])
              {
                v48 = v47 + 3;
                if (v42 < v47 + 3)
                {
                  v100 = 464;
                  goto LABEL_219;
                }

                v49 = CFStringCreateWithFormat(v33, 0, @"%d", bswap32(*v45) >> 16);
                if (!v49)
                {
                  v100 = 467;
LABEL_219:
                  v101 = fig_log_get_emitter("com.apple.coremedia", "");
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v101, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", v100, v115, v102, v103);
                  v35 = v118;
                  v34 = v120;
                  if (Mutable)
                  {
                    CFRelease(Mutable);
                  }

                  goto LABEL_117;
                }

                v50 = v49;
                v51 = CFStringCreateWithBytes(v33, v45 + 3, v47, 0x8000100u, 0);
                if (v51)
                {
                  v52 = v51;
                  if (!Mutable)
                  {
                    Mutable = CFDictionaryCreateMutable(v33, v43, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  }

                  CFDictionaryAddValue(Mutable, v50, v52);
                  CFRelease(v52);
                }

                CFRelease(v50);
              }

              else
              {
                v48 = 3;
              }

              v45 += v48;
              v42 -= v48;
              if (!--v46)
              {
                v114 = Mutable;
                v35 = v118;
                v34 = v120;
                goto LABEL_117;
              }
            }
          }

          v114 = 0;
        }
      }

      goto LABEL_118;
    }

    if (v36 == 1717858674 && v113)
    {
      if (v39 <= 7)
      {
        v54 = fig_log_get_emitter("com.apple.coremedia", "");
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v54, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x226, v115, v55, v56);
        goto LABEL_117;
      }

      v135 = 0u;
      v134 = 0u;
      v133 = 0u;
      v132 = 0u;
      v131 = 0u;
      v130 = 0u;
      v129 = 0u;
      LODWORD(v128) = 0;
      v138 = 0;
      if (FigAtomStreamInitWithMemoryBlock(v35 + 8, v38 - 8, 0, 0, &v129))
      {
LABEL_117:
        v38 = v123;
        goto LABEL_118;
      }

      v61 = 0;
      v62 = 0;
      while (2)
      {
        if (FigAtomStreamGetCurrentAtomTypeAndDataLength(&v129, &v128, &v138))
        {
          goto LABEL_122;
        }

        v63 = v128;
        if (v128 != 1718773093)
        {
          if (v128 == 1717920116)
          {
            if (!v61)
            {
              v61 = CFArrayCreateMutable(v33, 0, MEMORY[0x1E695E9C0]);
            }

            LODWORD(v136) = 0;
            *&v127[0] = 0;
            v148 = 0;
            CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(&v129, &v136, v127);
            if (CurrentAtomTypeAndDataLength || *&v127[0] < 1)
            {
              if (!CurrentAtomTypeAndDataLength)
              {
LABEL_121:
                ParseExtensionAtomsInDescription_cold_15();
              }

LABEL_122:
              if (v62)
              {
LABEL_123:
                CFRelease(v62);
              }

              if (!v61)
              {
                goto LABEL_117;
              }

LABEL_125:
              CFRelease(v61);
              goto LABEL_117;
            }

            lengthAtOffsetOut = 0;
            dataPointerOut = 0;
            if (FigAtomStreamReadCurrentAtomDataAndCreateBBuf(&v129, 0, 0, &v148) || CMBlockBufferGetDataPointer(v148, 0, &lengthAtOffsetOut, 0, &dataPointerOut))
            {
              UInt32 = 0;
              v66 = 0;
            }

            else
            {
              v66 = 1;
              UInt32 = CFStringCreateWithBytes(v33, dataPointerOut, lengthAtOffsetOut, 0, 1u);
            }

            if (v148)
            {
              CFRelease(v148);
            }

            if ((v66 & 1) == 0)
            {
              if (UInt32)
              {
                CFRelease(UInt32);
              }

              goto LABEL_122;
            }

            if (!UInt32)
            {
              goto LABEL_121;
            }

            CFArrayAppendValue(v61, UInt32);
LABEL_107:
            CFRelease(UInt32);
          }

          else
          {
            if (!v62)
            {
              v62 = CFArrayCreateMutable(v33, 0, MEMORY[0x1E695E9C0]);
              v63 = v128;
            }

            UInt32 = FigCFNumberCreateUInt32(v33, v63);
            CFArrayAppendValue(v62, UInt32);
            if (UInt32)
            {
              goto LABEL_107;
            }
          }
        }

        if (FigAtomStreamAdvanceToNextAtom(&v129))
        {
          if (!v61)
          {
            v110 = 0;
            goto LABEL_122;
          }

          v67 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionaryAddValue(v67, @"feat", v61);
          v110 = v67;
          if (v62)
          {
            CFDictionaryAddValue(v67, @"UnrecognizedAtoms", v62);
            goto LABEL_123;
          }

          goto LABEL_125;
        }

        continue;
      }
    }

    if (v36 != 1383363702 || !v113)
    {
      break;
    }

    if (v39 <= 7)
    {
      v58 = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, 0xFFFFCE56uLL, "<<< TextDescBridge >>>", 0x361, v115, v59, v60);
      goto LABEL_118;
    }

    memset(v127, 0, sizeof(v127));
    v126 = 0;
    v125 = 0;
    if (!FigAtomStreamInitWithMemoryBlock(v35 + 8, v38 - 8, 0, 0, v127))
    {
      v69 = 0;
      v121 = v34;
      value = 0;
      v119 = v35;
      while (1)
      {
        if (FigAtomStreamGetCurrentAtomTypeAndDataLength(v127, &v126, &v125))
        {
          goto LABEL_210;
        }

        v70 = v126;
        if (v126 == 1718773093)
        {
          goto LABEL_174;
        }

        if (v126 == 1920168547)
        {
          break;
        }

        v92 = value;
        if (!value)
        {
          v92 = CFArrayCreateMutable(v33, 0, MEMORY[0x1E695E9C0]);
          v70 = v126;
        }

        v77 = FigCFNumberCreateUInt32(v33, v70);
        value = v92;
        CFArrayAppendValue(v92, v77);
        if (v77)
        {
          goto LABEL_173;
        }

LABEL_174:
        if (FigAtomStreamAdvanceToNextAtom(v127))
        {
          if (!v69)
          {
            v111 = 0;
            goto LABEL_210;
          }

          v98 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionaryAddValue(v98, @"InlineResourcesArray", v69);
          v111 = v98;
          if (value)
          {
            CFDictionaryAddValue(v98, @"UnrecognizedAtoms", value);
            v99 = value;
            goto LABEL_211;
          }

LABEL_213:
          CFRelease(v69);
          goto LABEL_118;
        }
      }

      if (!v69)
      {
        v69 = CFArrayCreateMutable(v33, 0, MEMORY[0x1E695E9C0]);
      }

      v137 = 0;
      v136 = 0;
      v135 = 0u;
      v134 = 0u;
      v133 = 0u;
      v132 = 0u;
      v131 = 0u;
      v130 = 0u;
      v129 = 0u;
      v128 = 0;
      v71 = FigAtomStreamGetCurrentAtomTypeAndDataLength(v127, &v137, &v136);
      if (v71 || (v71 = FigAtomStreamInitWithParent(v127, 0, &v129)) != 0)
      {
        v79 = v71;
        v77 = 0;
        goto LABEL_196;
      }

      theArray = v69;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      while (1)
      {
        while (1)
        {
          v78 = FigAtomStreamGetCurrentAtomTypeAndDataLength(&v129, &v137, &v136);
          if (v78)
          {
            goto LABEL_186;
          }

          if (v137 != 1684108385)
          {
            break;
          }

          v148 = 0;
          lengthAtOffsetOut = 0;
          dataPointerOut = 0;
          if (v76)
          {
            v76 = 1;
          }

          else
          {
            v78 = FigAtomStreamReadCurrentAtomDataAndCreateBBuf(&v129, 0, 0, &v128);
            if (v78)
            {
              goto LABEL_186;
            }

            DataLength = CMBlockBufferGetDataLength(v128);
            DataPointer = CMBlockBufferGetDataPointer(v128, 0, &v148, &lengthAtOffsetOut, &dataPointerOut);
            if (DataPointer)
            {
              v79 = DataPointer;
              goto LABEL_203;
            }

            v77 = CFDataCreate(v33, dataPointerOut, DataLength);
            if (!v77)
            {
              ParseExtensionAtomsInDescription_cold_14(&v138);
              v79 = v138;
LABEL_203:
              if (!v72)
              {
LABEL_189:
                if (v73)
                {
                  CFRelease(v73);
                }

                v35 = v119;
                v34 = v121;
                if (v74)
                {
                  CFRelease(v74);
                }

                if (v77)
                {
                  CFRelease(v77);
                  v77 = 0;
                }

                v69 = theArray;
                goto LABEL_196;
              }

LABEL_188:
              CFRelease(v72);
              goto LABEL_189;
            }

            v76 = 1;
LABEL_165:
            Atom = FigAtomStreamAdvanceToNextAtom(&v129);
            if (Atom == -12890)
            {
              v79 = 0;
LABEL_177:
              if (!v75 || !v76)
              {
                goto LABEL_185;
              }

              v153 = 0u;
              v154 = 0u;
              v152 = 0u;
              v146 = 0u;
              v147 = 0u;
              v145 = 0u;
              v148 = @"resource_role";
              v149 = @"resource_mimetype";
              lengthAtOffsetOut = v72;
              v142 = v73;
              v150 = @"resource_mimetype_URI";
              v151 = @"resource_payload";
              v143 = v74;
              v144 = v77;
              v77 = CFDictionaryCreate(v33, &v148, &lengthAtOffsetOut, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v93 = 0;
              v35 = v119;
              v34 = v121;
              v69 = theArray;
              do
              {
                v94 = *(&lengthAtOffsetOut + v93);
                if (v94)
                {
                  CFRelease(v94);
                }

                v93 += 8;
              }

              while (v93 != 32);
              if (!v77)
              {
                v74 = 0;
                v73 = 0;
                v72 = 0;
LABEL_185:
                v95 = fig_log_get_emitter("com.apple.coremedia", "");
                v78 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v95, 0xFFFFCE55uLL, "<<< TextDescBridge >>>", 0x33C, v115, v96, v97);
LABEL_186:
                v79 = v78;
LABEL_187:
                if (!v72)
                {
                  goto LABEL_189;
                }

                goto LABEL_188;
              }

LABEL_196:
              if (v128)
              {
                CFRelease(v128);
              }

              if (!v79)
              {
                CFArrayAppendValue(v69, v77);
                v38 = v123;
                if (!v77)
                {
                  goto LABEL_174;
                }

LABEL_173:
                CFRelease(v77);
                goto LABEL_174;
              }

              if (v77)
              {
                CFRelease(v77);
              }

              v38 = v123;
LABEL_210:
              v99 = value;
              if (value)
              {
LABEL_211:
                CFRelease(v99);
              }

              if (v69)
              {
                goto LABEL_213;
              }

              goto LABEL_118;
            }

            v79 = Atom;
            if (Atom)
            {
              goto LABEL_177;
            }
          }
        }

        if (v137 != 1954115685)
        {
          goto LABEL_165;
        }

        if (!v75)
        {
          break;
        }

        v75 = 1;
      }

      v140 = 0;
      v148 = 0;
      lengthAtOffsetOut = 0;
      v79 = FigAtomStreamGetCurrentAtomTypeAndDataLength(&v129, &v140, &v148);
      v72 = 0;
      if (v79)
      {
        v73 = 0;
        v74 = 0;
      }

      else
      {
        v73 = 0;
        v74 = 0;
        if (v148 >= 0xA)
        {
          v138 = 0;
          dataPointerOut = 0;
          BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf(&v129, 0, 0, &lengthAtOffsetOut);
          if (BBuf)
          {
            v79 = BBuf;
          }

          else
          {
            v79 = CMBlockBufferGetDataPointer(lengthAtOffsetOut, 0, &dataPointerOut, 0, &v138);
            if (!v79)
            {
              v81 = v138;
              v72 = FigCFNumberCreateUInt32(v33, bswap32(*(v138 + 1)));
              v82 = v81 + 8;
              v83 = dataPointerOut - 8;
              v84 = strnlen(v82, (dataPointerOut - 8));
              v73 = 0;
              if (v84 && (v85 = v84, v84 < v83))
              {
                v73 = CFStringCreateWithBytes(v33, v82, v84, 0, 1u);
                v86 = &dataPointerOut[-v85 - 9];
                if (dataPointerOut <= v85 + 9)
                {
                  v74 = 0;
                  v79 = 0;
                }

                else
                {
                  v87 = &v82[v85];
                  v88 = strnlen(v87 + 1, v86);
                  v79 = 0;
                  v74 = 0;
                  if (v88 && v88 < v86)
                  {
                    v74 = CFStringCreateWithBytes(v33, v87 + 1, v88, 0, 1u);
                    v79 = 0;
                  }
                }
              }

              else
              {
                v74 = 0;
              }

              goto LABEL_161;
            }
          }

          v72 = 0;
          v73 = 0;
          v74 = 0;
LABEL_161:
          if (lengthAtOffsetOut)
          {
            CFRelease(lengthAtOffsetOut);
          }
        }
      }

      if (v79)
      {
        goto LABEL_187;
      }

      v75 = 1;
      goto LABEL_165;
    }

LABEL_118:
    v34 -= v38;
    v35 += v38;
    if (v34 <= 8)
    {
LABEL_233:
      v30 = 0;
      v29 = 0;
      v25 = 0;
      a5 = v108;
      a6 = v109;
      a3 = v106;
      a4 = v107;
      v27 = v110;
      v28 = v111;
      v31 = v112;
      v26 = v114;
LABEL_234:
      if (!a3)
      {
        goto LABEL_231;
      }

      goto LABEL_235;
    }
  }

  v29 = CFDataCreate(v33, (v35 + 8), v39);
  if (!v29)
  {
    ParseExtensionAtomsInDescription_cold_13(&v129);
    goto LABEL_252;
  }

  *bytes = bswap32(*bytes);
  v30 = CFStringCreateWithBytes(v33, bytes, 4, 0, 0);
  if (!v30)
  {
    ParseExtensionAtomsInDescription_cold_12(&v129);
    goto LABEL_253;
  }

  v68 = v112;
  if (v112 || (v68 = CFDictionaryCreateMutable(v33, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
  {
    v112 = v68;
    CFDictionaryAddValue(v68, v30, v29);
    CFRelease(v30);
    CFRelease(v29);
    goto LABEL_117;
  }

  ParseExtensionAtomsInDescription_cold_11(&v129);
  v31 = 0;
  v25 = v129;
  a5 = v108;
  a6 = v109;
  a3 = v106;
  a4 = v107;
  v27 = v110;
  v28 = v111;
LABEL_254:
  v26 = v114;
LABEL_37:
  if (!v25)
  {
    goto LABEL_234;
  }

  v32 = v31;
  if (v26)
  {
    CFRelease(v26);
    v31 = v32;
  }

  if (v27)
  {
    CFRelease(v27);
    v31 = v32;
  }

  if (v28)
  {
    CFRelease(v28);
    v31 = v32;
  }

  if (v31)
  {
    CFRelease(v31);
    goto LABEL_230;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (a3)
  {
LABEL_235:
    *a3 = v26;
    goto LABEL_236;
  }

LABEL_231:
  if (v26)
  {
    v104 = v31;
    CFRelease(v26);
    v31 = v104;
  }

LABEL_236:
  if (a4)
  {
    *a4 = v27;
    v27 = 0;
  }

  if (a5)
  {
    *a5 = v28;
    v28 = 0;
  }

  *a6 = v31;
  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v25;
}

uint64_t locateXMLSubtitleSampleFields(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4, char *a5, size_t *a6, char *a7, size_t *a8, char *a9, void *a10)
{
  v13 = a2 - 16;
  if (a2 <= 0x10)
  {
    locateXMLSubtitleSampleFields_cold_4(&v34);
LABEL_33:
    v29 = 0;
    v21 = 0;
    v22 = 0;
    v30 = 0;
    v17 = 0;
    v18 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    result = v34;
    goto LABEL_14;
  }

  v16 = strnlen((a1 + 16), a2 - 16);
  v17 = v16 + 1;
  if (v16 + 1 > v13)
  {
    locateXMLSubtitleSampleFields_cold_3(&v34);
    goto LABEL_33;
  }

  v18 = v16 + 17;
  v19 = a2 - (v16 + 17);
  if (a2 == v16 + 17)
  {
    result = 0;
    v21 = 0;
    v22 = 0;
    v18 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
LABEL_5:
    v29 = 1;
    v30 = 16;
    goto LABEL_14;
  }

  v23 = strnlen((a1 + v18), v19) + 1;
  if (v23 > v19)
  {
    locateXMLSubtitleSampleFields_cold_2(&v34);
    v21 = 0;
    v22 = 0;
    v18 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    result = v34;
    goto LABEL_5;
  }

  v24 = v23 + v18;
  if (a2 == v23 + v18)
  {
    result = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
LABEL_9:
    v29 = 1;
    v30 = 16;
    v21 = 1;
    goto LABEL_14;
  }

  v25 = strnlen((a1 + v24), a2 - (v23 + v18)) + 1;
  if (v25 > a2 - (v23 + v18))
  {
    locateXMLSubtitleSampleFields_cold_1(&v34);
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    result = v34;
    goto LABEL_9;
  }

  v27 = v25 + v24;
  result = 0;
  v28 = a2 - (v25 + v24);
  if (a2 == v25 + v24)
  {
    v26 = 0;
    v27 = 0;
    v29 = 1;
    v30 = 16;
    v21 = 1;
    v22 = 1;
  }

  else
  {
    v29 = 1;
    v30 = 16;
    v21 = 1;
    v22 = 1;
    v26 = 1;
  }

LABEL_14:
  if (a3)
  {
    *a3 = v29;
  }

  if (a5)
  {
    *a5 = v21;
  }

  if (a7)
  {
    *a7 = v22;
  }

  if (a9)
  {
    *a9 = v26;
  }

  if (a4)
  {
    *a4 = v30;
    a4[1] = v17;
  }

  if (a6)
  {
    *a6 = v18;
    a6[1] = v23;
  }

  if (a8)
  {
    *a8 = v24;
    a8[1] = v25;
  }

  if (a10)
  {
    *a10 = v27;
    a10[1] = v28;
  }

  return result;
}

CFNumberRef OUTLINED_FUNCTION_5_16(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt16Type, a3);
}

CFStringRef OUTLINED_FUNCTION_6_14(uint64_t a1, const UInt8 *a2, CFIndex a3)
{

  return CFStringCreateWithBytes(v3, a2, a3, 0x8000100u, 1u);
}

CFNumberRef OUTLINED_FUNCTION_7_13(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt8Type, a3);
}

void OUTLINED_FUNCTION_10_8()
{

  bzero((v0 - 256), 0xA0uLL);
}

size_t OUTLINED_FUNCTION_12_8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + a2) = 0;

  return FigAtomWriterAppendData(va, v2, a2 + 1);
}

size_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v10 = va_arg(va1, __CFDictionary *);

  return ParseExtensionAtomsInDescription(v6, v7, va1, 0, 0, va);
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1, const void **a2, const void **a3, uint64_t a4, CFDictionaryRef *a5)
{

  return createDict(v5, a2, a3, 4, a5);
}

void OUTLINED_FUNCTION_16_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{

  bzero(&a63, 0xA0uLL);
}

void FigHALAudioObjectMapperDispose(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

size_t FigHALAudioObjectMapperAddMapping(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = FigAtomicIncrement32((a1 + 8));
  result = FigCFWeakReferenceTableAddValueAssociatedWithKey(*a1, a2, v6);
  *a3 = v6;
  return result;
}

size_t FigVideoFormatDescriptionCreateFromBigEndianImageDescriptionDataWithOptionsAndReporter(const __CFAllocator *a1, __int128 *a2, unint64_t a3, CFStringEncoding a4, CFTypeRef cf1, char a6, const void *a7, const void *a8, CMVideoFormatDescriptionRef *a9)
{
  v148 = *MEMORY[0x1E69E9840];
  formatDescriptionOut = 0;
  v141 = 0;
  v140 = 0;
  v138 = 0;
  cf = 0;
  v136 = 0;
  count = 0;
  v135 = 0;
  v133 = 0;
  valuePtr = 0;
  v132 = 0;
  if (!a2)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v14 = v9;
    v15 = emitter;
    v16 = 1058;
    goto LABEL_9;
  }

  if (a3 > 0x55)
  {
    if (!a9)
    {
      v25 = fig_log_get_emitter("com.apple.coremedia", "");
      v14 = v9;
      v15 = v25;
      v16 = 1062;
      goto LABEL_9;
    }

    if (cf1)
    {
      v24 = CFEqual(cf1, @"ISOFamily") == 0;
    }

    else
    {
      v24 = 1;
    }

    v27 = bswap32(*a2);
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    memset(v147, 0, sizeof(v147));
    if (v27 < 0x56 || v27 > a3)
    {
      strcpy(context, "Image description size is incorrect");
      v90 = fig_log_get_emitter("com.apple.coremedia", "");
      v91 = a8;
      v42 = 4294954582;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v90, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x432, v9, v92, v93);
      figSoundBridge_ReportParsingFailureMessage(v91, context);
      return v42;
    }

    alloc = a1;
    *&v147[30] = *(a2 + 78);
    v28 = a2[3];
    v146 = a2[2];
    *v147 = v28;
    *&v147[16] = a2[4];
    v29 = a2[1];
    v144 = *a2;
    v145 = v29;
    v30 = bswap32(DWORD1(v144));
    v141 = v30;
    v31 = bswap32(*&v147[34]);
    v140 = HIWORD(v31);
    if (DWORD1(v144) == 544694642)
    {
      v141 = v31 >> 16;
      v140 = 0;
      v30 = v31 >> 16;
    }

    else if (v31 >> 16 < 0)
    {
      strcpy(context, "Image description has negative depth");
      v94 = fig_log_get_emitter("com.apple.coremedia", "");
      v97 = v9;
      v35 = a8;
      v42 = 4294954582;
      v98 = 1093;
      goto LABEL_120;
    }

    if (!v146)
    {
      strcpy(context, "Image description has negative or zero width");
      v94 = fig_log_get_emitter("com.apple.coremedia", "");
      v97 = v9;
      v35 = a8;
      v42 = 4294954582;
      v98 = 1099;
      goto LABEL_120;
    }

    if (!WORD1(v146))
    {
      strcpy(context, "Image description has negative or zero height");
      v94 = fig_log_get_emitter("com.apple.coremedia", "");
      v97 = v9;
      v35 = a8;
      v42 = 4294954582;
      v98 = 1105;
      goto LABEL_120;
    }

    if ((v30 & 0xFFFFFFFE) == 0x64766870 && v146 == 5 && WORD1(v146) == 53250)
    {
      v32 = 960;
LABEL_37:
      width = v32;
      if (*&v147[36])
      {
        v34 = 86;
        goto LABEL_42;
      }

      v35 = a8;
      if (v27 <= 0x65)
      {
        strcpy(context, "Image description is too small to have a color table");
        v94 = fig_log_get_emitter("com.apple.coremedia", "");
        v97 = v9;
        v42 = 4294954582;
        v98 = 1121;
      }

      else
      {
        v36 = bswap32(*(a2 + 46)) >> 16;
        if (v36 < 0)
        {
          strcpy(context, "Image description has negative color table size");
          v94 = fig_log_get_emitter("com.apple.coremedia", "");
          v97 = v9;
          v42 = 4294954582;
          v98 = 1129;
        }

        else
        {
          v34 = 8 * v36 + 102;
          if (v34 <= v27)
          {
LABEL_42:
            encoding = a4;
            v37 = WORD1(v146);
            v128 = v24;
            v38 = v27 - v34;
            v126 = a7;
            v39 = a7;
            v40 = v34;
            v41 = figBridge_WalkAndConvertImageDescriptionExtensions(a1, a2 + v34, v38, &count, 0, 0, &v135, 0, a8, a6, v126);
            if (v41)
            {
              v42 = v41;
LABEL_121:
              v89 = 0;
              v50 = 0;
              v51 = 0;
LABEL_122:
              v47 = 0;
              goto LABEL_123;
            }

            v43 = 0;
            v127 = __rev16(v37);
            while (figBridge_ConvertMPEG2ProfileCodecTypesToProfileExtensions_mpeg2ConformingVideoCodecTypes[v43] != v141)
            {
              if (++v43 == 39)
              {
                v44 = count;
                goto LABEL_49;
              }
            }

            v44 = count + 1;
LABEL_49:
            count = v44 + 1;
            if (v147[2] - 1 > 0x1E)
            {
              v46 = bswap32(DWORD1(v144));
              v45 = CFStringCreateWithFormat(a1, 0, @"'%c%c%c%c'", HIBYTE(v46), BYTE2(v46), BYTE1(v46), v46);
            }

            else
            {
              v45 = CFStringCreateWithPascalString(a1, &v147[2], encoding);
            }

            v47 = v45;
            v48 = count;
            if (v45)
            {
              v48 = count + 1;
            }

            v49 = v48 + 4;
            count = v48 + 4;
            if (DWORD1(v145))
            {
              v49 = v48 + 5;
              count = v48 + 5;
            }

            if (v140)
            {
              count = ++v49;
            }

            if (v49)
            {
              v50 = malloc_type_calloc(v49, 8uLL, 0x6004044C4A2DFuLL);
              if (v50)
              {
                v51 = malloc_type_calloc(count, 8uLL, 0xC0040B8AA526DuLL);
                if (v51)
                {
                  v52 = figBridge_WalkAndConvertImageDescriptionExtensions(alloc, a2 + v40, v38, &v136, v50, v51, 0, v135, a8, a6, v39);
                  if (!v52)
                  {
                    v53 = a8;
                    figBridge_ConvertMPEG2ProfileCodecTypesToProfileExtensions(v141, &v141, &v136, v50, v51);
                    v54 = &kCMFormatDescriptionExtension_VerbatimSampleDescription;
                    if (!v128)
                    {
                      v54 = &kCMFormatDescriptionExtension_VerbatimISOSampleEntry;
                    }

                    v55 = CFRetain(*v54);
                    v50[v136] = v55;
                    v56 = CFDataCreate(alloc, a2, a3);
                    v57 = v136;
                    v51[v136] = v56;
                    v136 = v57 + 1;
                    if (v47)
                    {
                      v58 = CFRetain(@"FormatName");
                      v59 = v136;
                      v50[v136] = v58;
                      v51[v59] = v47;
                      v136 = v59 + 1;
                    }

                    HIWORD(valuePtr) = bswap32(v145) >> 16;
                    v60 = CFRetain(@"Version");
                    v50[v136] = v60;
                    v61 = *MEMORY[0x1E695E480];
                    v62 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr + 2);
                    v63 = v136;
                    v51[v136] = v62;
                    v136 = v63 + 1;
                    LOWORD(valuePtr) = bswap32(WORD1(v145)) >> 16;
                    v64 = CFRetain(@"RevisionLevel");
                    v50[v136] = v64;
                    v65 = CFNumberCreate(v61, kCFNumberSInt16Type, &valuePtr);
                    v66 = v136;
                    v51[v136] = v65;
                    v136 = v66 + 1;
                    v133 = bswap32(DWORD2(v145));
                    v67 = CFRetain(@"TemporalQuality");
                    v50[v136] = v67;
                    v68 = CFNumberCreate(v61, kCFNumberSInt32Type, &v133);
                    v69 = v136;
                    v51[v136] = v68;
                    v136 = v69 + 1;
                    v132 = bswap32(HIDWORD(v145));
                    v70 = CFRetain(@"SpatialQuality");
                    v50[v136] = v70;
                    v71 = CFNumberCreate(v61, kCFNumberSInt32Type, &v132);
                    v72 = v136;
                    v51[v136] = v71;
                    v73 = v72 + 1;
                    v136 = v72 + 1;
                    if (DWORD1(v145))
                    {
                      v74 = CFRetain(@"Vendor");
                      v50[v136] = v74;
                      v75 = CFStringCreateWithBytes(alloc, &v145 + 4, 4, 0, 0);
                      v76 = v136;
                      v51[v136] = v75;
                      v73 = v76 + 1;
                      v136 = v76 + 1;
                    }

                    v77 = a9;
                    if (v140)
                    {
                      v78 = CFRetain(@"Depth");
                      v50[v136] = v78;
                      v79 = CFNumberCreate(v61, kCFNumberSInt16Type, &v140);
                      v80 = v136;
                      v51[v136] = v79;
                      v73 = v80 + 1;
                      v136 = v80 + 1;
                    }

                    if (count == v73)
                    {
                      cf = CFDictionaryCreate(alloc, v50, v51, v73, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      if (cf)
                      {
                        v81 = 0;
                        goto LABEL_74;
                      }

                      v120 = fig_log_get_emitter("com.apple.coremedia", "");
                      v42 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x4EA, v9, v121, v122);
                    }

                    else
                    {
                      strcpy(context, "Image description data could have changed");
                      v123 = fig_log_get_emitter("com.apple.coremedia", "");
                      v42 = 4294954582;
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v123, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", 0x4E4, v9, v124, v125);
                      figSoundBridge_ReportParsingFailureMessage(v53, context);
                    }

                    v89 = 0;
                    goto LABEL_122;
                  }
                }

                else
                {
                  v99 = fig_log_get_emitter("com.apple.coremedia", "");
                  v52 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v99, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x4A3, v9, v100, v101);
                }

                v42 = v52;
                v89 = 0;
              }

              else
              {
                v86 = fig_log_get_emitter("com.apple.coremedia", "");
                v42 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, 0xFFFFCE57uLL, "<<<< ImageDescriptionBridge >>>>", 0x49D, v9, v87, v88);
                v89 = 0;
                v51 = 0;
              }

LABEL_123:
              FigFormatDescriptionRelease(v89);
              if (v138)
              {
                CFRelease(v138);
              }

              if (v47)
              {
                CFRelease(v47);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (v50)
              {
                v114 = count;
                if (count)
                {
                  v115 = 0;
                  do
                  {
                    v116 = v50[v115];
                    if (v116)
                    {
                      CFRelease(v116);
                      v114 = count;
                    }

                    ++v115;
                  }

                  while (v115 < v114);
                }

                free(v50);
              }

              if (v51)
              {
                v117 = count;
                if (count)
                {
                  v118 = 0;
                  do
                  {
                    v119 = v51[v118];
                    if (v119)
                    {
                      CFRelease(v119);
                      v117 = count;
                    }

                    ++v118;
                  }

                  while (v118 < v117);
                }

                free(v51);
              }

              return v42;
            }

            v81 = v47;
            v50 = 0;
            v51 = 0;
            v77 = a9;
LABEL_74:
            v82 = v141;
            v83 = v127;
            if (v141 == 1836070006)
            {
              MPEG4VideoCodecTypeAndCopyDecoderSpecificInfo = figBridge_GetMPEG4VideoCodecTypeAndCopyDecoderSpecificInfo(cf, &v141, &v138);
              if (MPEG4VideoCodecTypeAndCopyDecoderSpecificInfo)
              {
                v42 = MPEG4VideoCodecTypeAndCopyDecoderSpecificInfo;
                goto LABEL_112;
              }

              if (FigCFDictionaryGetCount(v138) >= 1)
              {
                context[0] = cf;
                *&context[1] = __PAIR64__(v127, width);
                CFDictionaryApplyFunction(v138, figbridge_ConsumeMP4BridgeDecoderSpecificInfo, context);
                v83 = DWORD1(context[1]);
                width = context[1];
                v85 = *(&context[0] + 1);
                if (*(&context[0] + 1))
                {
                  if (cf)
                  {
                    CFRelease(cf);
                    v85 = *(&context[0] + 1);
                  }

                  cf = v85;
                }
              }

              v82 = v141;
            }

            if (v82 == 1701733238)
            {
              ConciseProtectedCodecType = figBridge_GetConciseProtectedCodecType(cf);
              if (ConciseProtectedCodecType)
              {
                v82 = ConciseProtectedCodecType;
                v141 = ConciseProtectedCodecType;
              }

              else
              {
                v82 = v141;
              }
            }

            if (FigVideoCodecTypeIsH264Flavor(v82) || FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(v82))
            {
              goto LABEL_95;
            }

            if (v82 > 1902212656)
            {
              if (v82 != 1902403958)
              {
                v113 = 1902212657;
LABEL_148:
                if (v82 != v113)
                {
                  goto LABEL_98;
                }
              }
            }

            else if (v82 != 1635135537)
            {
              v113 = 1684108849;
              goto LABEL_148;
            }

LABEL_95:
            FigBridge_MakeFallbackExtensionsFromVUI(alloc, v82, a8, &cf);
            if (FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(v141))
            {
              Value = CFDictionaryGetValue(cf, @"AlternativeTransferCharacteristics");
              if (Value)
              {
                figBridge_OverrideTransferFunctionFromAlternativeTransferCharacteristics(alloc, Value, &cf);
              }
            }

LABEL_98:
            v104 = v141;
            if (FigVideoCodecTypeIsProRes(v141))
            {
              figBridge_GetBitsPerComponentForProRes(alloc, v104, &cf);
              figBridge_GetAlphaChannelExtensionForProRes(alloc, &cf, v105, v106, v107, v108, v109, v110);
              LODWORD(v104) = v141;
            }

            v111 = v128;
            if (v104 == 1932670515)
            {
              if (figBridge_Is3GP263ExtensionPresent(cf))
              {
                LODWORD(v104) = 1748121139;
                goto LABEL_109;
              }

              LODWORD(v104) = v141;
              v111 = v128;
            }

            if (v104 == 1835692135)
            {
              v112 = v111;
            }

            else
            {
              v112 = 1;
            }

            if (v112)
            {
              goto LABEL_110;
            }

            LODWORD(v104) = 1785750887;
LABEL_109:
            v141 = v104;
LABEL_110:
            v42 = CMVideoFormatDescriptionCreate(alloc, v104, width, v83, cf, &formatDescriptionOut);
            v89 = formatDescriptionOut;
            if (v42)
            {
LABEL_113:
              v47 = v81;
              goto LABEL_123;
            }

            *v77 = formatDescriptionOut;
            formatDescriptionOut = 0;
LABEL_112:
            v89 = 0;
            goto LABEL_113;
          }

          strcpy(context, "Image description color table size is too big");
          v94 = fig_log_get_emitter("com.apple.coremedia", "");
          v97 = v9;
          v42 = 4294954582;
          v98 = 1136;
        }
      }

LABEL_120:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v94, 0xFFFFCE56uLL, "<<<< ImageDescriptionBridge >>>>", v98, v97, v95, v96);
      figSoundBridge_ReportParsingFailureMessage(v35, context);
      goto LABEL_121;
    }

    v32 = __rev16(v146);
    if (v30 > 1685481524)
    {
      if (v30 != 1685481525)
      {
        v33 = 26678;
        goto LABEL_29;
      }
    }

    else if (v30 != 1685481522)
    {
      v33 = 26675;
LABEL_29:
      if (v30 == (v33 | 0x64760000) && v146 == 32775 && WORD1(v146) == 14340)
      {
        v32 = 1280;
      }

      goto LABEL_37;
    }

    if (v146 == 32775 && WORD1(v146) == 14340)
    {
      v32 = 1440;
    }

    goto LABEL_37;
  }

  v11 = fig_log_get_emitter("com.apple.coremedia", "");
  v14 = v9;
  v15 = v11;
  v16 = 1060;
LABEL_9:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE58uLL, "<<<< ImageDescriptionBridge >>>>", v16, v14, v12, v13);
}