uint64_t APAC::MetadataBitStreamPacker::packDynamicGroup(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.groupID";
    goto LABEL_17;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.isGlobal";
    goto LABEL_17;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1])
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.memberCount";
    goto LABEL_17;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.hasConjunctMembers";
    goto LABEL_17;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 1u);
  if ((a2[3] & 1) == 0)
  {
    if (!a2[2])
    {
      return result;
    }

    v7 = 0;
    while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 6)
    {
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[v7++ + 5], 7u);
      if (v7 >= a2[2])
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.ASCIDList[n]";
LABEL_17:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack dG.startASCID";
    goto LABEL_17;
  }

  v6 = a2[4];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 7u);
}

uint64_t APAC::MetadataBitStreamPacker::packReferenceScreen(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack refScreen.hasData";
    goto LABEL_10;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack refScreen.APCount";
LABEL_10:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 4u);
  if (a2[1])
  {
    v6 = 0;
    v7 = a2 + 4;
    do
    {
      result = APAC::MetadataBitStreamPacker::packScreenData(result, v7, a3);
      ++v6;
      v7 += 28;
    }

    while (v6 < a2[1]);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packCodeBookData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot pack cbD.hasData";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v4 = *a2;

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v4, 1u);
}

uint64_t APAC::MetadataBitStreamPacker::packGroupStaticData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack grpSD.hasData";
    goto LABEL_10;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack grpSD.groupCount";
LABEL_10:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 7u);
  if (a2[1])
  {
    v6 = 0;
    v7 = a2 + 4;
    do
    {
      result = APAC::MetadataBitStreamPacker::packStaticGroup(result, v7, a3);
      ++v6;
      v7 += 216;
    }

    while (v6 < a2[1]);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packSceneComponenentStaticData(uint64_t a1, _BYTE *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot pack scSD.ASCCount";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (*a2)
  {
    v6 = 0;
    v7 = a2 + 4;
    do
    {
      result = APAC::MetadataBitStreamPacker::packASCStaticData(result, v7, a3);
      ++v6;
      v7 += 1144;
    }

    while (v6 < *a2);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packASCStaticData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.sceneComponentID";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.sceneComponentType";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.startChannelIndex";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.rendererSubType";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 3u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.rendererVersion";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.channelLayoutTag";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.HOAOrder";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[12], 3u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.HOAOrdering";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[13], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.HOANormalization";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[14], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.NFCRefDist.hasData";
    goto LABEL_30;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[16], 1u);
  if (a2[16] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack sD.NFCRefDist.nfcRefDist";
LABEL_30:
      *exception = v10;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.screenRef";
    goto LABEL_30;
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[24], 1u);
  v6 = APAC::MetadataBitStreamPacker::packProprietaryStaticData(v5, a2 + 28, a3);
  v7 = APAC::MetadataBitStreamPacker::packDolbyStaticData(v6, a2 + 112, a3);

  return APAC::MetadataBitStreamPacker::packExtendedData(v7, a2 + 114, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packProprietaryStaticData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack pSD.hasData";
    goto LABEL_41;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack pSD.numParameters";
LABEL_41:
    *exception = v13;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 5u);
  if (a2[1])
  {
    v6 = 0;
    v7 = a2 + 52;
    while (1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack pSD.paramIndexList[n]";
        goto LABEL_41;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[v6], 5u);
      v8 = v7[v6];
      if (v8 < 4)
      {
        break;
      }

      if (v7[v6] <= 5u)
      {
        if (v8 != 4)
        {
          if (v8 == 5)
          {
            result = APAC::MetadataBitStreamPacker::packRadiationPattern(result, a2 + 16, a3);
          }

          goto LABEL_38;
        }

        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
        {
          exception = __cxa_allocate_exception(8uLL);
          v13 = "Cannot pack pSD.postProcReverbIndex";
          goto LABEL_41;
        }

        v9 = a2[14];
LABEL_34:
        v10 = a3;
        v11 = 2;
LABEL_37:
        result = AT::TBitstreamWriter<unsigned int>::PutBits(v10, v9, v11);
        goto LABEL_38;
      }

      switch(v8)
      {
        case 6u:
          result = APAC::MetadataBitStreamPacker::packBinauralization(result, a2 + 24, a3);
          break;
        case 7u:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pSD.HCFilterCodeBookID";
            goto LABEL_41;
          }

          v9 = a2[36];
          v10 = a3;
          v11 = 4;
          goto LABEL_37;
        case 8u:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pSD.hoaRotation.pitch";
            goto LABEL_41;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 10), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pSD.hoaRotation.yaw";
            goto LABEL_41;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 11), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pSD.hoaRotation.roll";
            goto LABEL_41;
          }

          v9 = *(a2 + 12);
          v10 = a3;
          v11 = 32;
          goto LABEL_37;
      }

LABEL_38:
      if (++v6 >= a2[1])
      {
        return result;
      }
    }

    if (v7[v6] <= 1u)
    {
      if (v7[v6])
      {
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
        {
          exception = __cxa_allocate_exception(8uLL);
          v13 = "Cannot pack pSD.isCSPhase";
          goto LABEL_41;
        }

        v9 = a2[3];
      }

      else
      {
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
        {
          exception = __cxa_allocate_exception(8uLL);
          v13 = "Cannot pack pSD.isComplexSH";
          goto LABEL_41;
        }

        v9 = a2[2];
      }

      v10 = a3;
      v11 = 1;
      goto LABEL_37;
    }

    if (v8 != 2)
    {
      if (v8 == 3)
      {
        result = APAC::MetadataBitStreamPacker::packSceneReverb(result, a2 + 6, a3);
      }

      goto LABEL_38;
    }

    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      v13 = "Cannot pack pSD.productionCoordinate";
      goto LABEL_41;
    }

    v9 = a2[4];
    goto LABEL_34;
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packDolbyStaticData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pDolby.hasData";
    goto LABEL_10;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pDolby.headphoneRenderingData";
LABEL_10:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = a2[1];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 2u);
}

uint64_t APAC::MetadataBitStreamPacker::packSceneReverb(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sR.reverbProcIndex";
    goto LABEL_19;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  v6 = *a2;
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      return result;
    }

    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
    {
      v7 = *(a2 + 1);
      goto LABEL_9;
    }

    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sR.reverbProcPreset";
LABEL_19:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sR.codeBookID";
    goto LABEL_19;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[5], 4u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sR.IRFilterID";
    goto LABEL_19;
  }

  v7 = *(a2 + 3);
LABEL_9:
  AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 0xAu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sR.mixLevel";
    goto LABEL_19;
  }

  v8 = a2[4];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v8, 7u);
}

uint64_t APAC::MetadataBitStreamPacker::packStaticGroup(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.groupID";
    goto LABEL_17;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.isGlobal";
    goto LABEL_17;
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1])
  {
    goto LABEL_13;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.memberCount";
    goto LABEL_17;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.hasConjunctMembers";
    goto LABEL_17;
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 1u);
  if (a2[3])
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 6)
    {
      v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 7u);
      goto LABEL_13;
    }

    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.startASCID";
LABEL_17:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (a2[2])
  {
    v6 = 0;
    while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 6)
    {
      v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[v6++ + 5], 7u);
      if (v6 >= a2[2])
      {
        goto LABEL_13;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack sG.ASCIDList[m]";
    goto LABEL_17;
  }

LABEL_13:

  return APAC::MetadataBitStreamPacker::packProprietaryStaticData(v5, a2 + 132, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packScreenData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.hasData";
    goto LABEL_31;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.aspectRatio";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.cartesian";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  v6 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (a2[1] != 1)
  {
    if (v6 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack sD.screenCentrePosition.co_ut.spherical.azimuth";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v10 = "Cannot pack sD.screenCentrePosition.co_ut.spherical.elevation";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v10 = "Cannot pack sD.screenCentrePosition.co_ut.spherical.distance";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
          {
            v7 = 24;
            goto LABEL_17;
          }

          exception = __cxa_allocate_exception(8uLL);
          v10 = "Cannot pack sD.screenWidth.azimuth";
        }
      }
    }

LABEL_31:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.screenCentrePosition.co_ut.cartesian.X";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.screenCentrePosition.co_ut.cartesian.Y";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.screenCentrePosition.co_ut.cartesian.Z";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack sD.screenWidth.X";
    goto LABEL_31;
  }

  v7 = 20;
LABEL_17:
  v8 = *&a2[v7];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v8, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packConfig(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = a2;
  v9 = a2;
  v10 = a2 + a3;
  v11 = 0x2000000000;
  v12 = a2 & 3;
  APAC::MetadataBitStreamPacker::packMetadataConfig(a1, a4, &v8);
  v4 = 8 * (v9 - v8) - HIDWORD(v11);
  v5 = (v4 + 32) >> 3;
  if ((v4 & 7) != 0)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5;
  }

  AT::TBitstreamWriter<unsigned int>::Flush(&v8);
  return v6;
}

void APAC::MetadataBitStreamPacker::packMetadataConfig(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot pack mdCfg.mRendererMetadataConfigPresent";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 1u);
  if (*(a2 + 1) == 1)
  {

    APAC::MetadataBitStreamPacker::packRendererMetadataConfig(v5, (a2 + 8), a3);
  }
}

void APAC::MetadataBitStreamPacker::packRendererMetadataConfig(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v32 = "Cannot pack rMdCfg.mGlobalConfig.mHasData";
    goto LABEL_36;
  }

  v5 = a2 + 4;
  v6 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 8), 1u);
  if (*v5 == 1)
  {
    APAC::MetadataBitStreamPacker::packGlobalConfig(v6, v5, a3);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v32 = "Cannot pack rMdCfg.mGroupCount";
    goto LABEL_36;
  }

  v7 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0xBu);
  if (*a2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 1248 * *a2;
    v33 = v10;
    while (1)
    {
      APAC::MetadataBitStreamPacker::packGroupConfig(v7, (*(a2 + 597) + v8), a3);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
      {
        break;
      }

      v7 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 600) + v9), 1u);
      v11 = *(a2 + 600);
      v12 = v11 + v9;
      if (*(v11 + v9) == 1)
      {
        memcpy(__dst, (v11 + v9), 0x314uLL);
        v13 = *(v12 + 792);
        v36 = *(v12 + 800);
        v35 = v13;
        v37 = *(v12 + 808);
        v39 = 0;
        v40 = 0;
        v38 = 0;
        v14 = *(v12 + 816);
        v15 = *(v12 + 824);
        v16 = v15 - v14;
        if (v15 != v14)
        {
          if (!((v16 >> 2) >> 62))
          {
            std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v16 >> 2);
          }

          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        memset(v41, 0, sizeof(v41));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v41, *(v11 + v9 + 840), *(v11 + v9 + 848), (*(v11 + v9 + 848) - *(v11 + v9 + 840)) >> 2);
        memset(v42, 0, sizeof(v42));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v42, *(v11 + v9 + 864), *(v11 + v9 + 872), (*(v11 + v9 + 872) - *(v11 + v9 + 864)) >> 2);
        memset(v43, 0, sizeof(v43));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v43, *(v11 + v9 + 888), *(v11 + v9 + 896), (*(v11 + v9 + 896) - *(v11 + v9 + 888)) >> 2);
        memset(v44, 0, sizeof(v44));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v44, *(v11 + v9 + 912), *(v11 + v9 + 920), (*(v11 + v9 + 920) - *(v11 + v9 + 912)) >> 2);
        v45 = 0;
        v46 = 0;
        v47 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v45, *(v11 + v9 + 936), *(v11 + v9 + 944), (*(v11 + v9 + 944) - *(v11 + v9 + 936)) >> 2);
        v48 = *(v11 + v9 + 960);
        v49 = *(v11 + v9 + 968);
        v51 = 0;
        v52 = 0;
        v50 = 0;
        v17 = *(v11 + v9 + 976);
        v18 = *(v11 + v9 + 984);
        v19 = v18 - v17;
        if (v18 != v17)
        {
          if (((v19 >> 1) & 0x8000000000000000) == 0)
          {
            std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v19 >> 1);
          }

          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v53 = 0;
        v54 = 0;
        v55 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v53, *(v11 + v9 + 1000), *(v11 + v9 + 1008), (*(v11 + v9 + 1008) - *(v11 + v9 + 1000)) >> 2);
        v20 = *(v11 + v9 + 1024);
        v21 = *(v11 + v9 + 1056);
        v57 = *(v11 + v9 + 1040);
        v58 = v21;
        v56 = v20;
        v22 = *(v11 + v9 + 1072);
        v23 = *(v11 + v9 + 1088);
        v24 = *(v11 + v9 + 1120);
        v61 = *(v11 + v9 + 1104);
        v62 = v24;
        v59 = v22;
        v60 = v23;
        v25 = *(v11 + v9 + 1136);
        v26 = *(v11 + v9 + 1152);
        v27 = *(v11 + v9 + 1168);
        *(v65 + 13) = *(v11 + v9 + 1181);
        v64 = v26;
        v65[0] = v27;
        v63 = v25;
        v28 = *(v11 + v9 + 1200);
        v67 = *(v11 + v9 + 1208);
        v66 = v28;
        v69 = 0;
        v70 = 0;
        __p = 0;
        v29 = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(v11 + v9 + 1216), *(v11 + v9 + 1224), (*(v11 + v9 + 1224) - *(v11 + v9 + 1216)) >> 2);
        v10 = v33;
        v71 = *(v11 + v9 + 1240);
        APAC::MetadataBitStreamPacker::packRendererData(v29, __dst, a3);
        if (__p)
        {
          v69 = __p;
          operator delete(__p);
        }

        if (v53)
        {
          v54 = v53;
          operator delete(v53);
        }

        if (v50)
        {
          v51 = v50;
          operator delete(v50);
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (v44[0])
        {
          operator delete(v44[0]);
        }

        if (v43[0])
        {
          operator delete(v43[0]);
        }

        if (v42[0])
        {
          operator delete(v42[0]);
        }

        if (v41[0])
        {
          operator delete(v41[0]);
        }

        v7 = v38;
        if (v38)
        {
          operator delete(v38);
        }
      }

      v9 += 1248;
      v8 += 48;
      if (v10 == v9)
      {
        goto LABEL_34;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v32 = "Cannot pack rMdCfg.mRendererData[gp].mHasData";
LABEL_36:
    *exception = v32;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

LABEL_34:
  v30 = *MEMORY[0x1E69E9840];
}

void sub_18F67B0CC(_Unwind_Exception *a1)
{
  if (STACK[0x390])
  {
    operator delete(STACK[0x390]);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F67B1E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void APAC::Metadata::RendererData::RadiationPattern::ParametricRadiationPattern::~ParametricRadiationPattern(APAC::Metadata::RendererData::RadiationPattern::ParametricRadiationPattern *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }
}

void APAC::Metadata::RendererData::RadiationPattern::~RadiationPattern(APAC::Metadata::RendererData::RadiationPattern *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }
}

void APAC::Metadata::RendererData::~RendererData(APAC::Metadata::RendererData *this)
{
  v2 = *(this + 152);
  if (v2)
  {
    *(this + 153) = v2;
    operator delete(v2);
  }

  v3 = *(this + 125);
  if (v3)
  {
    *(this + 126) = v3;
    operator delete(v3);
  }

  v4 = *(this + 122);
  if (v4)
  {
    *(this + 123) = v4;
    operator delete(v4);
  }

  v5 = *(this + 117);
  if (v5)
  {
    *(this + 118) = v5;
    operator delete(v5);
  }

  v6 = *(this + 114);
  if (v6)
  {
    *(this + 115) = v6;
    operator delete(v6);
  }

  v7 = *(this + 111);
  if (v7)
  {
    *(this + 112) = v7;
    operator delete(v7);
  }

  v8 = *(this + 108);
  if (v8)
  {
    *(this + 109) = v8;
    operator delete(v8);
  }

  v9 = *(this + 105);
  if (v9)
  {
    *(this + 106) = v9;
    operator delete(v9);
  }

  v10 = *(this + 102);
  if (v10)
  {
    *(this + 103) = v10;
    operator delete(v10);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AALoudnessInfoAnalyzer::CompleteFinal(AALoudnessInfoAnalyzer *this, float a2, float a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = 257;
  (*(**(this + 12) + 16))(*(this + 12), &Mutable);
  v14 = 0;
  v11 = 0;
  v12 = 1;
  v4 = *(this + 26);
  if (v4)
  {
    if (CACFDictionary::HasKey(&Mutable, @"sound check info"))
    {
      CACFDictionary::GetDictionary(&Mutable, @"sound check info", &v14);
      v5 = v14;
    }

    else
    {
      v5 = 0;
      v14 = 0;
    }

    v9 = 8;
    v10 = v5;
    v13 = &v9;
    v11 = 1;
    (*(*this + 48))(this, @"sound check info", &v12, &v11);
    v4 = *(this + 26);
  }

  if ((v4 & 2) != 0)
  {
    if (CACFDictionary::HasKey(&Mutable, @"main loudness parameters"))
    {
      CACFDictionary::GetDictionary(&Mutable, @"main loudness parameters", &v14);
      v6 = v14;
    }

    else
    {
      v6 = 0;
      v14 = 0;
    }

    v9 = 8;
    v10 = v6;
    v13 = &v9;
    v11 = 1;
    (*(*this + 48))(this, @"main loudness parameters", &v12, &v11);
    v4 = *(this + 26);
  }

  if ((v4 & 4) != 0)
  {
    if (CACFDictionary::HasKey(&Mutable, @"additional loudness parameters"))
    {
      CACFDictionary::GetDictionary(&Mutable, @"additional loudness parameters", &v14);
      v7 = v14;
    }

    else
    {
      v7 = 0;
      v14 = 0;
    }

    v9 = 8;
    v10 = v7;
    v13 = &v9;
    v11 = 1;
    (*(*this + 48))(this, @"additional loudness parameters", &v12, &v11);
  }

  CACFDictionary::~CACFDictionary(&Mutable);
  return 0;
}

uint64_t AALoudnessInfoAnalyzer::PushAudio(BufferedSoundCheckAnalyzer **this, unsigned int a2, const AudioBufferList *a3)
{
  BufferedSoundCheckAnalyzer::ProcessBuffer(this[12], a2, a3, 0);
  v5 = this[9] + a2;
  v6 = this[7];
  if (v5 >= v6)
  {
    v5 = this[7];
  }

  this[9] = v5;
  *(this + 20) = (v5 * 100.0) / v6;
  return 0;
}

void AALoudnessInfoAnalyzer::~AALoudnessInfoAnalyzer(AALoudnessInfoAnalyzer *this)
{
  AALoudnessInfoAnalyzer::~AALoudnessInfoAnalyzer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0325688;
  v2 = *(this + 12);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 12) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    MEMORY[0x193ADF220](v3, 0x1000C4077774924);
    *(this + 11) = 0;
  }

  *this = &unk_1F0325EC0;
  MEMORY[0x193ADE5D0](this + 48);
}

uint64_t CA::AudioMetadataSerializer::serialize(int a1, unsigned int *a2, unsigned int a3, uint64_t a4, double a5, double a6, double a7, unint64_t **a8)
{
  v9 = a4;
  v13 = a2;
  v254 = &v255;
  v255 = 0;
  v258 = 0;
  v259 = 0;
  v256 = 0;
  v257 = &v258;
  v260 = &v261;
  v261 = 0;
  v264 = 0;
  v265 = 0;
  v262 = 0;
  v263 = &v264;
  v14 = &v267;
  v266 = &v267;
  v267 = 0;
  v270 = 0;
  v271 = 0;
  v268 = 0;
  v269 = &v270;
  v272 = &v273;
  v273 = 0;
  v276 = 0;
  v277 = 0;
  v274 = 0;
  v275 = &v276;
  v279 = 0;
  v280 = 0;
  v278 = &v279;
  if (*a2)
  {
    v15 = 0;
    do
    {
      v248 = v15;
      v251 = *(*(v13 + 1) + 8 * v15);
      if (*v251)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "APR_");
        std::string::basic_string[abi:ne200100]<0>(&v291, *v251);
        if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v291.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v16 >= 0x10000)
        {
          v17 = v245 & 0xFFFFFFFFFFFFFF00;
          if (*(v251 + 24) == 1)
          {
            v18 = *(v251 + 28);
            v17 |= 1uLL;
          }

          else
          {
            v18 = v244 & 0xFFFFFFFFFFFFFF00;
          }

          v244 = v18;
          v245 = v17;
          v19 = v241 & 0xFFFFFFFFFFFFFF00;
          if (*(v251 + 36) == 1)
          {
            v20 = *(v251 + 40);
            v19 |= 1uLL;
          }

          else
          {
            v20 = v239 & 0xFFFFFFFFFFFFFF00;
          }

          v239 = v20;
          v241 = v19;
          v242 &= 0xFFFFFFFFFFFFFF00;
          v243 &= 0xFFFFFFFFFFFFFF00;
          if (v246 != 3)
          {
            v21 = v255;
LABEL_17:
            if (!v21)
            {
LABEL_24:
              operator new();
            }

            while (1)
            {
              v22 = v21;
              v23 = *(v21 + 16);
              if (v23 > v16)
              {
                v21 = *v22;
                goto LABEL_17;
              }

              if (v23 >= v16)
              {
                break;
              }

              v21 = v22[1];
              if (!v21)
              {
                goto LABEL_24;
              }
            }

            *(v22 + 40) = v246;
            v22[6] = v251;
            v22[7] = 0;
            if (v246 != 2)
            {
              v24 = *(v251 + 52);
              if (v24)
              {
                for (i = 0; i < v24; ++i)
                {
                  v26 = *(v251 + 56);
                  if (**(v26 + 8 * i))
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__p, "ACO_");
                    std::string::basic_string[abi:ne200100]<0>(&v291, **(v26 + 8 * i));
                    LOWORD(v289.__r_.__value_.__l.__data_) = v27;
                    v289.__r_.__value_.__s.__data_[2] = BYTE2(v27);
                    if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v291.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (v27 >= 0x10000)
                    {
                      v28 = *(v26 + 8 * i);
                      *v29 = v246;
                      v29[1] = v28;
                      v29[2] = 0;
                      v30 = 0.0;
                      if (*(v251 + 24) == 1)
                      {
                        v30 = *(v251 + 28);
                      }

                      v31 = *(v26 + 8 * i);
                      v32 = *(v31 + 24);
                      if (v32)
                      {
                        v33 = 0;
                        v247 = 0;
                        do
                        {
                          v34 = *(v31 + 28);
                          if (**(v34 + 8 * v33))
                          {
                            std::string::basic_string[abi:ne200100]<0>(&__p, "AO_");
                            std::string::basic_string[abi:ne200100]<0>(&v291, **(v34 + 8 * v33));
                            LOWORD(v290.__r_.__value_.__l.__data_) = v35;
                            v290.__r_.__value_.__s.__data_[2] = BYTE2(v35);
                            if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v291.__r_.__value_.__l.__data_);
                            }

                            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__p.__r_.__value_.__l.__data_);
                            }

                            if (v35 >= 0x10000)
                            {
                              v36 = v261;
                              if (!v261)
                              {
                                goto LABEL_53;
                              }

                              v37 = &v261;
                              do
                              {
                                v38 = v36;
                                v39 = v37;
                                v40 = *(v36 + 16);
                                if (v40 >= v35)
                                {
                                  v37 = v36;
                                }

                                v36 = v36[v40 < v35];
                              }

                              while (v36);
                              if (v37 == &v261)
                              {
                                goto LABEL_53;
                              }

                              if (v40 < v35)
                              {
                                v38 = v39;
                              }

                              if (*(v38 + 16) > v35)
                              {
LABEL_53:
                                v41 = *(v34 + 8 * v33);
                                v42 = 0.0;
                                if (*(v41 + 16) == 1)
                                {
                                  v42 = *(v41 + 20);
                                }

                                v43 = *(v41 + 28);
                                if (v43 == 1)
                                {
                                  v8 = *(v41 + 32);
                                }

                                else
                                {
                                  *&v8 &= 0xFFFFFFFFFFFFFF00;
                                }

                                v44 = v30 + v42;
                                v45 = v30 + v42;
                                v46 = v30 + v42 + v8;
                                if (*(v41 + 28))
                                {
                                  v47 = *&v46;
                                }

                                else
                                {
                                  v47 = 0;
                                }

                                v14 = v14 & 0xFFFFFFFFFFFFFF00 | v43;
                                v27 &= 0xFFFFFFFFFFFFFF00;
                                v9 &= 0xFFFFFFFFFFFFFF00;
                                if (v48 != 3)
                                {
                                  v49 = v48;
                                  if (v48 != 4)
                                  {
                                    v247 = 1;
                                  }

                                  *v50 = v49;
                                  v50[1] = v41;
                                  *(v50 + 2) = v44;
                                  {
                                  }
                                }
                              }
                            }

                            v32 = *(v31 + 24);
                          }

                          ++v33;
                        }

                        while (v33 < v32);
                        v9 = a4;
                        v14 = &v267;
                        if (v247)
                        {
                        }
                      }
                    }

                    v24 = *(v251 + 52);
                    v13 = a2;
                  }
                }
              }
            }
          }
        }
      }

      v15 = v248 + 1;
    }

    while (v248 + 1 < *v13);
  }

  if (!a3)
  {
    v51 = v13[3];
    if (v51)
    {
      for (j = 0; j < v51; ++j)
      {
        v53 = *(v13 + 2);
        if (**(v53 + 8 * j))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "ACO_");
          std::string::basic_string[abi:ne200100]<0>(&v291, **(v53 + 8 * j));
          LOWORD(v290.__r_.__value_.__l.__data_) = v54;
          v290.__r_.__value_.__s.__data_[2] = BYTE2(v54);
          if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v291.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v54 >= 0x10000)
          {
            v55 = *(v53 + 8 * j);
            *v56 = 0;
            v56[1] = v55;
            v56[2] = 0;
          }

          v51 = a2[3];
        }

        v13 = a2;
      }
    }

    v57 = v13[6];
    if (v57)
    {
      for (k = 0; k < v57; ++k)
      {
        v59 = *(v13 + 7);
        if (**(v59 + 8 * k))
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, "AO_");
          std::string::basic_string[abi:ne200100]<0>(&v291, **(v59 + 8 * k));
          LOWORD(v290.__r_.__value_.__l.__data_) = v60;
          v290.__r_.__value_.__s.__data_[2] = BYTE2(v60);
          if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v291.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v60 >= 0x10000)
          {
            v61 = *(v59 + 8 * k);
            *v62 = 0;
            v62[1] = v61;
            v62[2] = 0;
          }

          v57 = a2[6];
        }

        v13 = a2;
      }
    }

    v63 = v13[15];
    if (v63)
    {
      v64 = 0;
      while (1)
      {
        v65 = *(v13 + 8);
        if (**(v65 + 8 * v64))
        {
          break;
        }

LABEL_115:
        if (++v64 >= v63)
        {
          goto LABEL_116;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "AS_");
      std::string::basic_string[abi:ne200100]<0>(&v291, **(v65 + 8 * v64));
      LODWORD(v290.__r_.__value_.__l.__data_) = v66;
      v67 = HIDWORD(v66);
      v290.__r_.__value_.__s.__data_[4] = BYTE4(v66);
      if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v291.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v67)
        {
          goto LABEL_114;
        }
      }

      else if (!v67)
      {
        goto LABEL_114;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, **(v65 + 8 * v64));
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) > 7u && __p.__r_.__value_.__s.__data_[7] == 48)
        {
          goto LABEL_114;
        }

        goto LABEL_113;
      }

      if (__p.__r_.__value_.__l.__size_ <= 7)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_113:
        v69 = *(v65 + 8 * v64);
        *v70 = 0;
        v70[1] = v69;
        v70[2] = 0;
        goto LABEL_114;
      }

      v68 = *(__p.__r_.__value_.__r.__words[0] + 7);
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v68 != 48)
      {
        goto LABEL_113;
      }

LABEL_114:
      v13 = a2;
      v63 = a2[15];
      goto LABEL_115;
    }

LABEL_116:
    v71 = v13[18];
    if (v71)
    {
      v72 = 0;
      while (1)
      {
        v73 = *(v13 + 19);
        if (**(v73 + 8 * v72))
        {
          break;
        }

LABEL_134:
        ++v72;
        v13 = a2;
        if (v72 >= v71)
        {
          goto LABEL_135;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "AT_");
      std::string::basic_string[abi:ne200100]<0>(&v291, **(v73 + 8 * v72));
      v76 = v75;
      v290.__r_.__value_.__r.__words[0] = v74;
      v290.__r_.__value_.__s.__data_[8] = v75;
      if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v291.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v76 & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      else if ((v76 & 1) == 0)
      {
        goto LABEL_133;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, **(v73 + 8 * v72));
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) > 7u && __p.__r_.__value_.__s.__data_[7] == 48)
        {
          goto LABEL_133;
        }

        goto LABEL_132;
      }

      if (__p.__r_.__value_.__l.__size_ <= 7)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_132:
        v78 = *(v73 + 8 * v72);
        *v79 = 0;
        v79[1] = v78;
        v79[2] = 0;
        goto LABEL_133;
      }

      v77 = *(__p.__r_.__value_.__r.__words[0] + 7);
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v77 != 48)
      {
        goto LABEL_132;
      }

LABEL_133:
      v71 = a2[18];
      goto LABEL_134;
    }

LABEL_135:
    v80 = v13[21];
    if (v80)
    {
      v81 = 0;
      while (1)
      {
        v82 = *(v13 + 11);
        if (**(v82 + 8 * v81))
        {
          break;
        }

LABEL_146:
        if (++v81 >= v80)
        {
          goto LABEL_147;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "ATU_");
      std::string::basic_string[abi:ne200100]<0>(&v291, **(v82 + 8 * v81));
      LODWORD(v290.__r_.__value_.__l.__data_) = v83;
      v84 = HIDWORD(v83);
      v290.__r_.__value_.__s.__data_[4] = BYTE4(v83);
      if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v291.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v84)
        {
LABEL_145:
          v13 = a2;
          v80 = a2[21];
          goto LABEL_146;
        }
      }

      else if (!v84)
      {
        goto LABEL_145;
      }

      v85 = *(v82 + 8 * v81);
      *v86 = 0;
      v86[1] = v85;
      v86[2] = 0;
      goto LABEL_145;
    }

LABEL_147:
    v87 = v13[9];
    if (v87)
    {
      v88 = 0;
      while (1)
      {
        v89 = *(v13 + 5);
        if (**(v89 + 8 * v88))
        {
          break;
        }

LABEL_165:
        if (++v88 >= v87)
        {
          goto LABEL_166;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
      std::string::basic_string[abi:ne200100]<0>(&v291, **(v89 + 8 * v88));
      LODWORD(v290.__r_.__value_.__l.__data_) = v90;
      v91 = HIDWORD(v90);
      v290.__r_.__value_.__s.__data_[4] = BYTE4(v90);
      if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v291.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v91)
        {
          goto LABEL_164;
        }
      }

      else if (!v91)
      {
        goto LABEL_164;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, **(v89 + 8 * v88));
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) > 7u && __p.__r_.__value_.__s.__data_[7] == 48)
        {
          goto LABEL_164;
        }

        goto LABEL_163;
      }

      if (__p.__r_.__value_.__l.__size_ <= 7)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_163:
        v93 = *(v89 + 8 * v88);
        *v94 = 0;
        v94[1] = v93;
        v94[2] = 0;
        goto LABEL_164;
      }

      v92 = *(__p.__r_.__value_.__r.__words[0] + 7);
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v92 != 48)
      {
        goto LABEL_163;
      }

LABEL_164:
      v13 = a2;
      v87 = a2[9];
      goto LABEL_165;
    }

LABEL_166:
    v95 = v13[12];
    if (v95)
    {
      v96 = 0;
      while (1)
      {
        v97 = *(v13 + 13);
        if (**(v97 + 8 * v96))
        {
          break;
        }

LABEL_184:
        if (++v96 >= v95)
        {
          goto LABEL_185;
        }
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "AC_");
      std::string::basic_string[abi:ne200100]<0>(&v291, **(v97 + 8 * v96));
      LODWORD(v290.__r_.__value_.__l.__data_) = v98;
      v99 = HIDWORD(v98);
      v290.__r_.__value_.__s.__data_[4] = BYTE4(v98);
      if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v291.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v99)
        {
          goto LABEL_183;
        }
      }

      else if (!v99)
      {
        goto LABEL_183;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, **(v97 + 8 * v96));
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (HIBYTE(__p.__r_.__value_.__r.__words[2]) > 7u && __p.__r_.__value_.__s.__data_[7] == 48)
        {
          goto LABEL_183;
        }

        goto LABEL_182;
      }

      if (__p.__r_.__value_.__l.__size_ <= 7)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_182:
        v101 = *(v97 + 8 * v96);
        *v102 = 0;
        v102[1] = v101;
        v102[2] = 0;
        goto LABEL_183;
      }

      v100 = *(__p.__r_.__value_.__r.__words[0] + 7);
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v100 != 48)
      {
        goto LABEL_182;
      }

LABEL_183:
      v13 = a2;
      v95 = a2[12];
      goto LABEL_184;
    }
  }

LABEL_185:
  v103 = 4294900720;
  if (!*a8)
  {
    goto LABEL_615;
  }

  *v253 = 1;
  *v9 = a3;
  v104 = v254;
  if (v254 != &v255)
  {
    do
    {
      v105 = v104[1];
      if (*(v104 + 40) - 3 > 1)
      {
        if (v105)
        {
          do
          {
            v107 = v105;
            v105 = *v105;
          }

          while (v105);
        }

        else
        {
          do
          {
            v107 = v104[2];
            v219 = *v107 == v104;
            v104 = v107;
          }

          while (!v219);
        }
      }

      else
      {
        v106 = v104;
        if (v105)
        {
          do
          {
            v107 = v105;
            v105 = *v105;
          }

          while (v105);
        }

        else
        {
          do
          {
            v107 = v106[2];
            v219 = *v107 == v106;
            v106 = v107;
          }

          while (!v219);
        }

        if (v254 == v104)
        {
          v254 = v107;
        }

        --v256;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v255, v104);
        operator delete(v104);
      }

      v104 = v107;
    }

    while (v107 != &v255);
  }

  v108 = v257;
  if (v257 != &v258)
  {
    do
    {
      v109 = v108[1];
      if (*(v108 + 40) - 3 > 1)
      {
        if (v109)
        {
          do
          {
            v111 = v109;
            v109 = *v109;
          }

          while (v109);
        }

        else
        {
          do
          {
            v111 = v108[2];
            v219 = *v111 == v108;
            v108 = v111;
          }

          while (!v219);
        }
      }

      else
      {
        v110 = v108;
        if (v109)
        {
          do
          {
            v111 = v109;
            v109 = *v109;
          }

          while (v109);
        }

        else
        {
          do
          {
            v111 = v110[2];
            v219 = *v111 == v110;
            v110 = v111;
          }

          while (!v219);
        }

        if (v257 == v108)
        {
          v257 = v111;
        }

        --v259;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v258, v108);
        operator delete(v108);
      }

      v108 = v111;
    }

    while (v111 != &v258);
  }

  v112 = v260;
  if (v260 != &v261)
  {
    do
    {
      v113 = v112[1];
      if (*(v112 + 40) - 3 > 1)
      {
        if (v113)
        {
          do
          {
            v115 = v113;
            v113 = *v113;
          }

          while (v113);
        }

        else
        {
          do
          {
            v115 = v112[2];
            v219 = *v115 == v112;
            v112 = v115;
          }

          while (!v219);
        }
      }

      else
      {
        v114 = v112;
        if (v113)
        {
          do
          {
            v115 = v113;
            v113 = *v113;
          }

          while (v113);
        }

        else
        {
          do
          {
            v115 = v114[2];
            v219 = *v115 == v114;
            v114 = v115;
          }

          while (!v219);
        }

        if (v260 == v112)
        {
          v260 = v115;
        }

        --v262;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v261, v112);
        operator delete(v112);
      }

      v112 = v115;
    }

    while (v115 != &v261);
  }

  v116 = v269;
  if (v269 != &v270)
  {
    do
    {
      v117 = v116[1];
      if (*(v116 + 40) - 3 > 1)
      {
        if (v117)
        {
          do
          {
            v119 = v117;
            v117 = *v117;
          }

          while (v117);
        }

        else
        {
          do
          {
            v119 = v116[2];
            v219 = *v119 == v116;
            v116 = v119;
          }

          while (!v219);
        }
      }

      else
      {
        v118 = v116;
        if (v117)
        {
          do
          {
            v119 = v117;
            v117 = *v117;
          }

          while (v117);
        }

        else
        {
          do
          {
            v119 = v118[2];
            v219 = *v119 == v118;
            v118 = v119;
          }

          while (!v219);
        }

        if (v269 == v116)
        {
          v269 = v119;
        }

        --v271;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v270, v116);
        operator delete(v116);
      }

      v116 = v119;
    }

    while (v119 != &v270);
  }

  v120 = v272;
  if (v272 != &v273)
  {
    do
    {
      v121 = v120[1];
      if (*(v120 + 40) - 3 > 1)
      {
        if (v121)
        {
          do
          {
            v123 = v121;
            v121 = *v121;
          }

          while (v121);
        }

        else
        {
          do
          {
            v123 = v120[2];
            v219 = *v123 == v120;
            v120 = v123;
          }

          while (!v219);
        }
      }

      else
      {
        v122 = v120;
        if (v121)
        {
          do
          {
            v123 = v121;
            v121 = *v121;
          }

          while (v121);
        }

        else
        {
          do
          {
            v123 = v122[2];
            v219 = *v123 == v122;
            v122 = v123;
          }

          while (!v219);
        }

        if (v272 == v120)
        {
          v272 = v123;
        }

        --v274;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v273, v120);
        operator delete(v120);
      }

      v120 = v123;
    }

    while (v123 != &v273);
  }

  v124 = v263;
  if (v263 != &v264)
  {
    do
    {
      v125 = v124[1];
      if (*(v124 + 40) - 3 > 1)
      {
        if (v125)
        {
          do
          {
            v127 = v125;
            v125 = *v125;
          }

          while (v125);
        }

        else
        {
          do
          {
            v127 = v124[2];
            v219 = *v127 == v124;
            v124 = v127;
          }

          while (!v219);
        }
      }

      else
      {
        v126 = v124;
        if (v125)
        {
          do
          {
            v127 = v125;
            v125 = *v125;
          }

          while (v125);
        }

        else
        {
          do
          {
            v127 = v126[2];
            v219 = *v127 == v126;
            v126 = v127;
          }

          while (!v219);
        }

        if (v263 == v124)
        {
          v263 = v127;
        }

        --v265;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v264, v124);
        operator delete(v124);
      }

      v124 = v127;
    }

    while (v127 != &v264);
  }

  v128 = v266;
  if (v266 != &v267)
  {
    do
    {
      v129 = v128[1];
      if (*(v128 + 40) - 3 > 1)
      {
        if (v129)
        {
          do
          {
            v131 = v129;
            v129 = *v129;
          }

          while (v129);
        }

        else
        {
          do
          {
            v131 = v128[2];
            v219 = *v131 == v128;
            v128 = v131;
          }

          while (!v219);
        }
      }

      else
      {
        v130 = v128;
        if (v129)
        {
          do
          {
            v131 = v129;
            v129 = *v129;
          }

          while (v129);
        }

        else
        {
          do
          {
            v131 = v130[2];
            v219 = *v131 == v130;
            v130 = v131;
          }

          while (!v219);
        }

        if (v266 == v128)
        {
          v266 = v131;
        }

        --v268;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v267, v128);
        operator delete(v128);
      }

      v128 = v131;
    }

    while (v131 != &v267);
  }

  v132 = v275;
  if (v275 != &v276)
  {
    do
    {
      v133 = v132[1];
      if (*(v132 + 40) - 3 > 1)
      {
        if (v133)
        {
          do
          {
            v135 = v133;
            v133 = *v133;
          }

          while (v133);
        }

        else
        {
          do
          {
            v135 = v132[2];
            v219 = *v135 == v132;
            v132 = v135;
          }

          while (!v219);
        }
      }

      else
      {
        v134 = v132;
        if (v133)
        {
          do
          {
            v135 = v133;
            v133 = *v133;
          }

          while (v133);
        }

        else
        {
          do
          {
            v135 = v134[2];
            v219 = *v135 == v134;
            v134 = v135;
          }

          while (!v219);
        }

        if (v275 == v132)
        {
          v275 = v135;
        }

        --v277;
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v276, v132);
        operator delete(v132);
      }

      v132 = v135;
    }

    while (v135 != &v276);
  }

  {
    goto LABEL_615;
  }

  v136 = *a8;
  v137 = v254;
  if (v254 == &v255)
  {
LABEL_360:
    v151 = v257;
    if (v257 != &v258)
    {
      do
      {
        v152 = *v253;
        if (a3 == 2)
        {
          if (*v253 + 1 > v136)
          {
            goto LABEL_615;
          }

          *(v9 + *v253) = *(v151 + 40) << 6;
          v152 = (v152 + 1);
        }

        v153 = v152 + 1;
        if ((v152 + 1) > v136)
        {
          goto LABEL_615;
        }

        v154 = *(v151 + 16);
        v155 = v152 + v9;
        *(v152 + v9) = 16;
        v156 = v152 + 3;
        if (v156 >= v136)
        {
          goto LABEL_615;
        }

        v153[v9] = HIBYTE(v154);
        *v253 = v156;
        v155[2] = v154;
        if (*(v151 + 40) == 2)
        {
          {
            goto LABEL_615;
          }
        }

        else
        {
          v157 = v151[6];
          memset(&v289, 0, sizeof(v289));
          memset(&__p, 0, sizeof(__p));
          if (*(v157 + 6))
          {
            v158 = 0;
            do
            {
              v159 = *(*(v157 + 28) + 8 * v158);
              std::string::basic_string[abi:ne200100]<0>(&v291, "AO_");
              std::string::basic_string[abi:ne200100]<0>(&v290, *v159);
              LOWORD(v288.__r_.__value_.__l.__data_) = v160;
              v288.__r_.__value_.__s.__data_[2] = BYTE2(v160);
              if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v290.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v291.__r_.__value_.__l.__data_);
              }

              if (v160 >= 0x10000)
              {
                v161 = v261;
                if (v261)
                {
                  v162 = &v261;
                  do
                  {
                    v163 = v161;
                    v164 = v162;
                    v165 = *(v161 + 16);
                    if (v165 >= v160)
                    {
                      v162 = v161;
                    }

                    v161 = v161[v165 < v160];
                  }

                  while (v161);
                  if (v162 != &v261)
                  {
                    if (v165 < v160)
                    {
                      v163 = v164;
                    }

                    if (*(v163 + 16) <= v160)
                    {
                      std::vector<unsigned short>::push_back[abi:ne200100](&__p, &v288);
                    }
                  }
                }
              }

              ++v158;
            }

            while (v158 < *(v157 + 6));
          }

          v291.__r_.__value_.__s.__data_[0] = (*(v157 + 96) << 6) + 4 * *(v157 + 97);
          std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
          v9 = a4;
          if (*(v157 + 77) == 1)
          {
            v290.__r_.__value_.__s.__data_[0] = 0;
            std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v290);
          }

          if (__p.__r_.__value_.__r.__words[0])
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v289.__r_.__value_.__r.__words[0])
          {
            operator delete(v289.__r_.__value_.__l.__data_);
          }

          if (!v166)
          {
            goto LABEL_615;
          }
        }

        v167 = v151[1];
        if (v167)
        {
          do
          {
            v168 = v167;
            v167 = *v167;
          }

          while (v167);
        }

        else
        {
          do
          {
            v168 = v151[2];
            v219 = *v168 == v151;
            v151 = v168;
          }

          while (!v219);
        }

        v151 = v168;
      }

      while (v168 != &v258);
      v136 = *a8;
    }

    v169 = v260;
    if (v260 == &v261)
    {
      goto LABEL_504;
    }

    while (1)
    {
      v170 = *v253;
      if (a3 == 2)
      {
        if (*v253 + 1 > v136)
        {
          goto LABEL_615;
        }

        *(v9 + *v253) = *(v169 + 40) << 6;
        v170 = (v170 + 1);
      }

      v171 = v170 + 1;
      if ((v170 + 1) > v136)
      {
        goto LABEL_615;
      }

      v172 = *(v169 + 16);
      v173 = v170 + v9;
      *(v170 + v9) = 32;
      v174 = v170 + 3;
      if (v174 >= v136)
      {
        goto LABEL_615;
      }

      *(v9 + v171) = HIBYTE(v172);
      *v253 = v174;
      *(v173 + 2) = v172;
      if (*(v169 + 40) != 2)
      {
        break;
      }

      {
        goto LABEL_615;
      }

LABEL_497:
      v197 = v169[1];
      if (v197)
      {
        do
        {
          v198 = v197;
          v197 = *v197;
        }

        while (v197);
      }

      else
      {
        do
        {
          v198 = v169[2];
          v219 = *v198 == v169;
          v169 = v198;
        }

        while (!v219);
      }

      v169 = v198;
      if (v198 == &v261)
      {
        v136 = *a8;
LABEL_504:
        v199 = v263;
        if (v263 == &v264)
        {
          goto LABEL_563;
        }

        while (1)
        {
          v200 = *v253;
          if (a3 == 2)
          {
            if (*v253 + 1 > v136)
            {
              goto LABEL_615;
            }

            *(a4 + *v253) = *(v199 + 40) << 6;
            v200 = (v200 + 1);
          }

          v201 = v200 + 1;
          if ((v200 + 1) > v136)
          {
            goto LABEL_615;
          }

          v202 = *(v199 + 8);
          v203 = v200 + a4;
          *(v200 + a4) = 48;
          v204 = v200 + 5;
          if (v204 >= v136)
          {
            goto LABEL_615;
          }

          *(a4 + v201) = HIBYTE(v202);
          v203[2] = BYTE2(v202);
          v203[3] = BYTE1(v202);
          *v253 = v204;
          v203[4] = v202;
          if (*(v199 + 40) != 2)
          {
            break;
          }

          {
            goto LABEL_615;
          }

LABEL_543:
          v214 = v199[1];
          if (v214)
          {
            do
            {
              v215 = v214;
              v214 = *v214;
            }

            while (v214);
          }

          else
          {
            do
            {
              v215 = v199[2];
              v219 = *v215 == v199;
              v199 = v215;
            }

            while (!v219);
          }

          v199 = v215;
          if (v215 == &v264)
          {
            v136 = *a8;
LABEL_563:
            v220 = v266;
            if (v266 != &v267)
            {
              while (2)
              {
                v221 = *v253;
                if (a3 == 2)
                {
                  if (*v253 + 1 > v136)
                  {
                    goto LABEL_615;
                  }

                  *(a4 + *v253) = *(v220 + 40) << 6;
                  v221 = (v221 + 1);
                }

                v222 = v221 + 1;
                if ((v221 + 1) > v136)
                {
                  goto LABEL_615;
                }

                v223 = v221 + a4;
                *(v221 + a4) = 64;
                v224 = v221 + 6;
                if (v224 >= v136)
                {
                  goto LABEL_615;
                }

                *(a4 + v222) = *(v220 + 35);
                v223[2] = *(v220 + 17);
                v223[3] = BYTE1(*(v220 + 8));
                v223[4] = *(v220 + 8);
                v225 = *(v220 + 36);
                *v253 = v224;
                v223[5] = v225;
                if (*(v220 + 40) == 2)
                {
                  {
                    goto LABEL_615;
                  }

                  goto LABEL_592;
                }

                v226 = v220[6];
                memset(&v290, 0, sizeof(v290));
                if (v226[2])
                {
                  v227 = v226[2];
                }

                else
                {
                  v227 = "";
                }

                std::string::basic_string[abi:ne200100]<0>(&__p, v227);
                if (v226[3])
                {
                  v228 = v226[3];
                }

                else
                {
                  v228 = "";
                }

                std::string::basic_string[abi:ne200100]<0>(&v291, v228);
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 4)
                  {
                    p_p = &__p;
                    goto LABEL_583;
                  }

                  goto LABEL_584;
                }

                if (__p.__r_.__value_.__l.__size_ != 4)
                {
                  goto LABEL_584;
                }

                p_p = __p.__r_.__value_.__r.__words[0];
LABEL_583:
                if (LODWORD(p_p->__r_.__value_.__l.__data_) != 825241648)
                {
                  goto LABEL_584;
                }

                if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
                {
                  if (v291.__r_.__value_.__l.__size_ != 3)
                  {
                    goto LABEL_584;
                  }

                  v233 = v291.__r_.__value_.__r.__words[0];
                }

                else
                {
                  if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) != 3)
                  {
                    goto LABEL_584;
                  }

                  v233 = &v291;
                }

                data_low = LOWORD(v233->__r_.__value_.__l.__data_);
                v235 = v233->__r_.__value_.__s.__data_[2];
                if (data_low == 17232 && v235 == 77)
                {
                  v289.__r_.__value_.__s.__data_[0] = 1;
                  std::vector<unsigned char>::push_back[abi:ne200100](&v290, &v289);
                }

                else
                {
LABEL_584:
                  v289.__r_.__value_.__s.__data_[0] = 0;
                  std::vector<unsigned char>::push_back[abi:ne200100](&v290, &v289);
                }

                if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v291.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v290.__r_.__value_.__r.__words[0])
                {
                  operator delete(v290.__r_.__value_.__l.__data_);
                }

                if (!v230)
                {
                  goto LABEL_615;
                }

LABEL_592:
                v231 = v220[1];
                if (v231)
                {
                  do
                  {
                    v232 = v231;
                    v231 = *v231;
                  }

                  while (v231);
                }

                else
                {
                  do
                  {
                    v232 = v220[2];
                    v219 = *v232 == v220;
                    v220 = v232;
                  }

                  while (!v219);
                }

                v220 = v232;
                if (v232 == &v267)
                {
                  v136 = *a8;
                  break;
                }

                continue;
              }
            }

            {
              v103 = 0;
              *a8 = *v253;
            }

            goto LABEL_615;
          }
        }

        v205 = v199[6];
        memset(&v288, 0, sizeof(v288));
        if (v205[2])
        {
          v206 = v205[2];
        }

        else
        {
          v206 = "";
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, v206);
        if (v205[3])
        {
          v207 = v205[3];
        }

        else
        {
          v207 = "";
        }

        std::string::basic_string[abi:ne200100]<0>(&v291, v207);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_ != 4)
          {
            goto LABEL_525;
          }

          v208 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
          {
            goto LABEL_525;
          }

          v208 = &__p;
        }

        if (LODWORD(v208->__r_.__value_.__l.__data_) == 825241648)
        {
          if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v291.__r_.__value_.__l.__size_ != 3)
            {
              goto LABEL_525;
            }

            v216 = v291.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) != 3)
            {
              goto LABEL_525;
            }

            v216 = &v291;
          }

          v217 = LOWORD(v216->__r_.__value_.__l.__data_);
          v218 = v216->__r_.__value_.__s.__data_[2];
          v219 = v217 == 17232 && v218 == 77;
          if (v219)
          {
            v290.__r_.__value_.__s.__data_[0] = 1;
            std::vector<unsigned char>::push_back[abi:ne200100](&v288, &v290);
            goto LABEL_526;
          }
        }

LABEL_525:
        v290.__r_.__value_.__s.__data_[0] = 0;
        std::vector<unsigned char>::push_back[abi:ne200100](&v288, &v290);
LABEL_526:
        v209 = v205[4];
        if (v209 && *v209)
        {
          std::string::basic_string[abi:ne200100]<0>(&v290, "AC_");
          std::string::basic_string[abi:ne200100]<0>(&v289, *v205[4]);
          if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v289.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v290.__r_.__value_.__l.__data_);
          }

          v211 = HIDWORD(v210) & 1;
          v212 = (v210 & 0x100000000) >> 25;
        }

        else
        {
          LOBYTE(v212) = 0;
          LODWORD(v211) = 0;
          LODWORD(v210) = 0;
        }

        v290.__r_.__value_.__s.__data_[0] = v212;
        std::vector<unsigned char>::push_back[abi:ne200100](&v288, &v290);
        if (v211)
        {
        }

        if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v291.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v288.__r_.__value_.__r.__words[0])
        {
          operator delete(v288.__r_.__value_.__l.__data_);
        }

        if (!v213)
        {
          goto LABEL_615;
        }

        goto LABEL_543;
      }
    }

    v175 = v169[6];
    memset(&v291, 0, sizeof(v291));
    memset(&v290, 0, sizeof(v290));
    v176 = v175[13];
    if (!v176)
    {
      goto LABEL_418;
    }

    std::string::basic_string[abi:ne200100]<0>(&v289, "AP_");
    std::string::basic_string[abi:ne200100]<0>(&v288, *v176);
    LODWORD(v287.__r_.__value_.__l.__data_) = v177;
    v178 = HIDWORD(v177);
    v287.__r_.__value_.__s.__data_[4] = BYTE4(v177);
    if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v288.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v289.__r_.__value_.__l.__data_);
      if (!v178)
      {
LABEL_418:
        memset(&v289, 0, sizeof(v289));
        if (*(v175 + 28))
        {
          v179 = 0;
          do
          {
            v180 = *(*(v175 + 116) + 8 * v179);
            std::string::basic_string[abi:ne200100]<0>(&v288, "AO_");
            std::string::basic_string[abi:ne200100]<0>(&v287, *v180);
            LOWORD(v286.__r_.__value_.__l.__data_) = v181;
            v286.__r_.__value_.__s.__data_[2] = BYTE2(v181);
            if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v287.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v288.__r_.__value_.__l.__data_);
            }

            if (v181 >= 0x10000)
            {
              std::vector<unsigned short>::push_back[abi:ne200100](&v289, &v286);
            }

            ++v179;
          }

          while (v179 < *(v175 + 28));
        }

        memset(&v288, 0, sizeof(v288));
        if (*(v175 + 31))
        {
          v182 = 0;
          do
          {
            v183 = *(v175[16] + 8 * v182);
            std::string::basic_string[abi:ne200100]<0>(&v287, "AO_");
            std::string::basic_string[abi:ne200100]<0>(&v286, *v183);
            LOWORD(v283.__r_.__value_.__l.__data_) = v184;
            v283.__r_.__value_.__s.__data_[2] = BYTE2(v184);
            if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v286.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v287.__r_.__value_.__l.__data_);
            }

            if (v184 >= 0x10000)
            {
              std::vector<unsigned short>::push_back[abi:ne200100](&v288, &v283);
            }

            ++v182;
          }

          while (v182 < *(v175 + 31));
        }

        memset(&v287, 0, sizeof(v287));
        if (!*(v175 + 34))
        {
LABEL_446:
          if (*(v175 + 160))
          {
            v189 = 0x80;
          }

          else
          {
            v189 = 0;
          }

          if (*(v175 + 174))
          {
            v189 |= 0x40u;
          }

          v190 = v189 + 16 * *(v175 + 168) - 16;
          v191 = v189 | 0x20;
          if (*(v175 + 168))
          {
            v191 = v190;
          }

          v192 = *(v175 + 169);
          if (v192 >= 0xA)
          {
            LOBYTE(v192) = 10;
          }

          v286.__r_.__value_.__s.__data_[0] = v191 | v192;
          std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v286);
          v9 = a4;
          v193 = *(v175 + 170);
          v194 = v193 == 1;
          if (v193 == 1)
          {
            v195 = 0x80;
          }

          else
          {
            v195 = 0;
          }

          v286.__r_.__value_.__s.__data_[0] = v194 << 7;
          if (*(v175 + 171))
          {
            v195 |= 0x40u;
            v286.__r_.__value_.__s.__data_[0] = v195;
          }

          if (*(v175 + 172) == 1)
          {
            v195 += 32;
            v286.__r_.__value_.__s.__data_[0] = v195;
          }

          if (*(v175 + 173) == 1)
          {
            v286.__r_.__value_.__s.__data_[0] = v195 + 16;
          }

          std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v286);
          if (*(v175 + 16) == 1)
          {
            v283.__r_.__value_.__s.__data_[0] = 0;
            std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v283);
          }

          if (*(v175 + 28) == 1)
          {
            v283.__r_.__value_.__s.__data_[0] = 1;
            std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v283);
          }

          if (*(v175 + 172) == 1)
          {
            v283.__r_.__value_.__s.__data_[0] = 2;
            std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v283);
            if (*(v175 + 84))
            {
              v196 = 0x80;
            }

            else
            {
              v196 = 0;
            }

            v286.__r_.__value_.__s.__data_[0] = v196;
            if (*(v175 + 85))
            {
              v196 += 32 * *(v175 + 48) + 64;
              v286.__r_.__value_.__s.__data_[0] = v196;
            }

            if (*(v175 + 86) == 1)
            {
              v286.__r_.__value_.__s.__data_[0] = v196 + 8;
              if (*(v175 + 64) != *(v175 + 80))
              {
                __assert_rtn("encode_object", "AudioMetadataSerializer.cpp", 951, "object.audioObjectInteraction.positionInteractionRange.min.isCartesian == object.audioObjectInteraction.positionInteractionRange.max.isCartesian");
              }

              if (*(v175 + 64))
              {
                v286.__r_.__value_.__s.__data_[0] = v196 + 12;
              }
            }

            std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v286);
            if (*(v175 + 85) == 1)
            {
            }

            if (*(v175 + 86) == 1)
            {
            }
          }

          if (*(v175 + 37) != 0.0 || *(v175 + 38) != 0.0 || *(v175 + 39) != 0.0)
          {
            v283.__r_.__value_.__s.__data_[0] = 3;
            std::vector<unsigned char>::push_back[abi:ne200100](&v291, &v283);
          }

          v252 = v291.__r_.__value_.__r.__words[0];
          __p = v291;
          memset(&v291, 0, sizeof(v291));
          v282 = 1;
          if (v287.__r_.__value_.__r.__words[0])
          {
            operator delete(v287.__r_.__value_.__l.__data_);
          }

          if (v288.__r_.__value_.__r.__words[0])
          {
            operator delete(v288.__r_.__value_.__l.__data_);
          }

          if (v289.__r_.__value_.__r.__words[0])
          {
            operator delete(v289.__r_.__value_.__l.__data_);
          }

          if (v290.__r_.__value_.__r.__words[0])
          {
            operator delete(v290.__r_.__value_.__l.__data_);
          }

          {
            if (v252)
            {
              operator delete(v252);
            }

            goto LABEL_615;
          }

          if (v252)
          {
            operator delete(v252);
          }

          goto LABEL_497;
        }

        v185 = 0;
        while (1)
        {
          v186 = *(*(v175 + 140) + 8 * v185);
          std::string::basic_string[abi:ne200100]<0>(&v286, "ATU_");
          std::string::basic_string[abi:ne200100]<0>(&v283, *v186);
          v284 = v187;
          v188 = HIDWORD(v187);
          v285 = BYTE4(v187);
          if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v283.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(v286.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            break;
          }

          operator delete(v286.__r_.__value_.__l.__data_);
          if (v188)
          {
            goto LABEL_444;
          }

LABEL_445:
          if (++v185 >= *(v175 + 34))
          {
            goto LABEL_446;
          }
        }

        if (!v188)
        {
          goto LABEL_445;
        }

LABEL_444:
        std::vector<unsigned int>::push_back[abi:ne200100](&v287, &v284);
        goto LABEL_445;
      }
    }

    else if (!v178)
    {
      goto LABEL_418;
    }

    std::vector<unsigned int>::push_back[abi:ne200100](&v290, &v287);
    goto LABEL_418;
  }

  while (1)
  {
    v138 = *v253;
    if (a3 == 2)
    {
      if (*v253 + 1 > v136)
      {
        break;
      }

      *(a4 + *v253) = *(v137 + 40) << 6;
      v138 = (v138 + 1);
    }

    v139 = v138 + 1;
    if ((v138 + 1) > v136)
    {
      break;
    }

    v140 = *(v137 + 16);
    v141 = v138 + a4;
    *(v138 + a4) = 0;
    v142 = v138 + 3;
    if (v142 >= v136)
    {
      break;
    }

    v139[a4] = HIBYTE(v140);
    *v253 = v142;
    v141[2] = v140;
    if (*(v137 + 40) == 2)
    {
      {
        break;
      }
    }

    else
    {
      v143 = v137[6];
      memset(&v289, 0, sizeof(v289));
      memset(&__p, 0, sizeof(__p));
      if (*(v143 + 13))
      {
        v144 = 0;
        do
        {
          v145 = *(v143[7] + 8 * v144);
          std::string::basic_string[abi:ne200100]<0>(&v291, "ACO_");
          std::string::basic_string[abi:ne200100]<0>(&v290, *v145);
          LOWORD(v288.__r_.__value_.__l.__data_) = v146;
          v288.__r_.__value_.__s.__data_[2] = BYTE2(v146);
          if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v290.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v291.__r_.__value_.__l.__data_);
          }

          if (v146 >= 0x10000)
          {
            std::vector<unsigned short>::push_back[abi:ne200100](&__p, &v288);
          }

          ++v144;
        }

        while (v144 < *(v143 + 13));
      }

      if (*(v143 + 105) == 1)
      {
        v291.__r_.__value_.__s.__data_[0] = 0;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (*(v143 + 148) == 1)
      {
        v291.__r_.__value_.__s.__data_[0] = 1;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
        if (*(v143 + 140))
        {
          v147 = 0x80;
        }

        else
        {
          v147 = 0;
        }

        v291.__r_.__value_.__s.__data_[0] = v147;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*(v143 + 19)), vceqzq_s64(*(v143 + 21)))))))
      {
        v291.__r_.__value_.__s.__data_[0] = 2;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (*(v143 + 24) == 1)
      {
        v291.__r_.__value_.__s.__data_[0] = 3;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (*(v143 + 36) == 1)
      {
        v291.__r_.__value_.__s.__data_[0] = 4;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (*(v143 + 12) != 0.0)
      {
        v291.__r_.__value_.__s.__data_[0] = 5;
        std::vector<unsigned char>::push_back[abi:ne200100](&v289, &v291);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v289.__r_.__value_.__r.__words[0])
      {
        operator delete(v289.__r_.__value_.__l.__data_);
      }

      if (!v148)
      {
        break;
      }
    }

    v149 = v137[1];
    if (v149)
    {
      do
      {
        v150 = v149;
        v149 = *v149;
      }

      while (v149);
    }

    else
    {
      do
      {
        v150 = v137[2];
        v219 = *v150 == v137;
        v137 = v150;
      }

      while (!v219);
    }

    v137 = v150;
    if (v150 == &v255)
    {
      v136 = *a8;
      v9 = a4;
      goto LABEL_360;
    }
  }

LABEL_615:
  return v103;
}

void sub_18F67DEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (a64 < 0)
  {
    operator delete(__p);
  }

  v66 = *(v64 - 184);
  if (v66)
  {
    operator delete(v66);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::parse_content_id(const void **a1, const std::string *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1 + 23;
  v5 = (a1 + 1);
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v25 = 0;
  v7 = std::string::basic_string(v27, a2, 0, v6, &v24);
  v8 = v27[23];
  if (v27[23] >= 0)
  {
    v9 = v27[23];
  }

  else
  {
    v9 = *&v27[8];
  }

  v10 = *v4;
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *v5;
  }

  if (v9 != v10 || (v27[23] >= 0 ? (v12 = v27) : (v12 = *v27), v11 >= 0 ? (v13 = a1) : (v13 = *a1), v7 = memcmp(v12, v13, v9), v7))
  {
    v14 = 1;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_34:
    operator delete(*v27);
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_35:
    v19 = v25 & 0xFF00;
    v18 = v25;
    v20 = 0x10000;
    goto LABEL_36;
  }

  std::string::basic_string(&v24, a2, v6, 0xFFFFFFFFFFFFFFFFLL, &v26);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v24;
  }

  else
  {
    v21 = v24.__r_.__value_.__r.__words[0];
  }

  v7 = sscanf(v21, "%04hx", &v25);
  v14 = v7 != 1;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if ((v27[23] & 0x80) != 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_19:
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 23) >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    *v27 = 136315906;
    *&v27[4] = "AudioMetadataSerializer.cpp";
    *&v27[12] = 1024;
    *&v27[14] = 2119;
    *&v27[18] = 2080;
    *&v27[20] = v16;
    v28 = 2080;
    v29 = v17;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Content ID '%s' does not match expected pattern '%snnnn'", v27, 0x26u);
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_36:
  v22 = *MEMORY[0x1E69E9840];
  return v19 | v18 | v20;
}

void sub_18F67E480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::determine_element_status(int a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, unsigned __int8 a7, double a8, double a9, double a10)
{
  if (!a1)
  {
    return 0;
  }

  if ((a3 & 1) != 0 && a8 + a9 <= *&a2)
  {
    return 3;
  }

  if ((a5 & 1) != 0 && *&a4 < a8)
  {
    v11 = a8 - a10;
    if (v11 > *&a4 && (a7 & (v11 < *&a6)) == 0)
    {
      return 3;
    }

    if (a1 == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    if ((a7 & (*&a6 >= a8)) == 1)
    {
      return (4 * (a1 == 2));
    }

    else
    {
      return v13;
    }
  }

  else
  {
    v14 = 0.0;
    if (a3)
    {
      v14 = *&a2;
    }

    if (v14 < a8 && a1 == 2)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t *std::map<unsigned short,anonymous namespace::ElementRef<AudioMetadataContent>>::operator[](uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::map<unsigned short,anonymous namespace::ElementRef<AudioMetadataObject>>::operator[](uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t anonymous namespace::gather_elements_from_object(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, double a6, double a7, double a8)
{
  v17 = a3;
  v18 = a1;
  v19 = 0.0;
  v20 = 0.0;
  if (*(a2 + 24) == 1)
  {
    v20 = *(a2 + 28);
  }

  if (*(a3 + 16) == 1)
  {
    v19 = *(a3 + 20);
  }

  v195 = v20 + v19;
  v196 = 1;
  v21 = *(a3 + 136);
  if (v21)
  {
    v9 = 0;
    v22 = a1 + 16;
    v188 = a1 + 22;
    v190 = (a1 + 13);
    v12 = a6 + a7;
    v23 = a6 - a8;
    v183 = a1 + 25;
    v184 = a1 + 10;
    v186 = a1 + 19;
    v8 = "ATU_";
    v10 = 255;
    while (1)
    {
      v24 = *(v17 + 140);
      if (**(v24 + 8 * v9))
      {
        break;
      }

LABEL_240:
      if (++v9 >= v21)
      {
        goto LABEL_241;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, "ATU_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v24 + 8 * v9));
    v193 = LODWORD(v11);
    v25 = HIDWORD(*&v11);
    v194 = BYTE4(v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
      if (!v25)
      {
        goto LABEL_239;
      }
    }

    else if (!v25)
    {
      goto LABEL_239;
    }

    v26 = *v22;
    if (*v22)
    {
      v27 = v22;
      do
      {
        v28 = *(v26 + 32);
        v29 = v28 >= LODWORD(v11);
        v30 = v28 < LODWORD(v11);
        if (v29)
        {
          v27 = v26;
        }

        v26 = *(v26 + 8 * v30);
      }

      while (v26);
      if (v27 != v22 && *(v27 + 8) <= LODWORD(v11))
      {
        goto LABEL_239;
      }
    }

    v31 = *(v24 + 8 * v9);
    v32 = v195;
    *v33 = a4;
    v33[1] = v31;
    *(v33 + 2) = v32;
    v34 = *(v24 + 8 * v9);
    v35 = *(v34 + 12);
    if (!v35 || !*v35)
    {
      goto LABEL_181;
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, "AT_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v34 + 12));
    v37 = v36;
    v197 = v11;
    v198 = v36;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
      if ((v37 & 1) == 0)
      {
        goto LABEL_181;
      }
    }

    else if ((v37 & 1) == 0)
    {
      goto LABEL_181;
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, **(v34 + 12));
    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v204.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_38;
      }

      v38 = v204.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_38;
      }

      v38 = &v204;
    }

    if (v38->__r_.__value_.__s.__data_[7] == 48)
    {
      v39 = 0;
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }

LABEL_38:
    v40 = v190;
    v41 = *v190;
    if (!*v190)
    {
      goto LABEL_66;
    }

    v42 = v190;
    do
    {
      v43 = *(v41 + 32);
      v44 = v43 == LODWORD(v11);
      if (v43 >= LODWORD(v11))
      {
        v45 = 1;
      }

      else
      {
        v45 = -1;
      }

      if (v44)
      {
        v46 = *(v41 + 36);
        v47 = v46 == BYTE4(v11);
        v45 = v46 >= BYTE4(v11) ? 1 : -1;
        if (v47)
        {
          v45 = 0;
        }
      }

      v48 = v45 & 0x80;
      v44 = v48 == 0;
      v49 = v48 >> 4;
      if (v44)
      {
        v42 = v41;
      }

      v41 = *(v41 + v49);
    }

    while (v41);
    v40 = v190;
    if (v42 == v190)
    {
      goto LABEL_66;
    }

    v50 = *(v42 + 32);
    v51 = v50 == LODWORD(v11);
    if (v50 <= LODWORD(v11))
    {
      v52 = 1;
    }

    else
    {
      v52 = -1;
    }

    if (v51)
    {
      v53 = *(v42 + 36);
      if (v53 <= BYTE4(v11))
      {
        v54 = 1;
      }

      else
      {
        v54 = -1;
      }

      if (v53 == BYTE4(v11))
      {
        v52 = 0;
      }

      else
      {
        v52 = v54;
      }
    }

    v40 = v190;
    if (v52 < 0)
    {
LABEL_66:
      v42 = v40;
    }

    v39 = v42 == v40;
    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_70:
      operator delete(v204.__r_.__value_.__l.__data_);
      if (!v39)
      {
        goto LABEL_181;
      }

      goto LABEL_71;
    }

LABEL_68:
    if (!v39)
    {
      goto LABEL_181;
    }

LABEL_71:
    v55 = *(v34 + 12);
    v56 = v195;
    *v57 = a4;
    v57[1] = v55;
    *(v57 + 2) = v56;
    v58 = *(*(v34 + 12) + 32);
    if (v58 && *v58)
    {
      std::string::basic_string[abi:ne200100]<0>(&v204, "AS_");
      std::string::basic_string[abi:ne200100]<0>(&__p, *v58);
      v199 = LODWORD(v11);
      v59 = HIDWORD(*&v11);
      v200 = BYTE4(v11);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v204.__r_.__value_.__l.__data_);
        if (!v59)
        {
          goto LABEL_180;
        }
      }

      else if (!v59)
      {
        goto LABEL_180;
      }

      std::string::basic_string[abi:ne200100]<0>(&v204, *v58);
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
      {
        v60 = v184;
        if (v204.__r_.__value_.__l.__size_ < 8)
        {
          goto LABEL_86;
        }

        v61 = v204.__r_.__value_.__r.__words[0];
      }

      else
      {
        v60 = v184;
        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
        {
          goto LABEL_86;
        }

        v61 = &v204;
      }

      if (v61->__r_.__value_.__s.__data_[7] == 48)
      {
        v62 = 0;
LABEL_96:
        if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (!v62)
          {
            goto LABEL_180;
          }

LABEL_100:
          v67 = v195;
          *v68 = a4;
          v68[1] = v58;
          *(v68 + 2) = v67;
          v69 = *(v58 + 32);
          if (!v69 || !*v69)
          {
            goto LABEL_180;
          }

          std::string::basic_string[abi:ne200100]<0>(&v204, "AC_");
          std::string::basic_string[abi:ne200100]<0>(&__p, **(v58 + 32));
          v201 = v70;
          v182 = v70;
          v71 = HIDWORD(v70);
          v202 = BYTE4(v70);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v204.__r_.__value_.__l.__data_);
          }

          if (!v71)
          {
            goto LABEL_180;
          }

          std::string::basic_string[abi:ne200100]<0>(&v204, **(v58 + 32));
          if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
          {
            v72 = v188;
            v73 = v182;
            if (v204.__r_.__value_.__l.__size_ < 8)
            {
              goto LABEL_114;
            }

            v74 = v204.__r_.__value_.__r.__words[0];
          }

          else
          {
            v72 = v188;
            v73 = v182;
            if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
            {
              goto LABEL_114;
            }

            v74 = &v204;
          }

          if (v74->__r_.__value_.__s.__data_[7] == 48)
          {
            v75 = 0;
LABEL_124:
            if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v204.__r_.__value_.__l.__data_);
            }

            if (!v75)
            {
              goto LABEL_180;
            }

            v80 = *(v58 + 32);
            v81 = v195;
            *v82 = a4;
            v82[1] = v80;
            *(v82 + 2) = v81;
            if (a4 != 4)
            {
              goto LABEL_180;
            }

            v83 = *(v58 + 32);
            if (!*(v83 + 24))
            {
LABEL_178:
              if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v204.__r_.__value_.__l.__data_);
              }

              goto LABEL_180;
            }

            v84 = 0;
            v176 = v83;
            while (1)
            {
              v180 = *(*(v83 + 28) + 8 * v84);
              if (*v180)
              {
                std::string::basic_string[abi:ne200100]<0>(&__p, *v180);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (HIDWORD(v181))
                {
                  v85 = 0.0;
                  v86 = 0.0;
                  if (*(v180 + 8) == 1)
                  {
                    v86 = *(v180 + 12);
                  }

                  if (*(v180 + 20) == 1)
                  {
                    v85 = *(v180 + 24);
                  }

                  v87 = v84 + 1;
                  v88 = *(v83 + 24);
                  if (v84 + 1 >= v88)
                  {
                    *&v11 &= 0xFFFFFFFFFFFFFF00;
                  }

                  else
                  {
                    v89 = *(*(v83 + 28) + 8 * v87);
                    v90 = 0.0;
                    v91 = 0.0;
                    if (*(v89 + 8) == 1)
                    {
                      v91 = *(v89 + 12);
                    }

                    if (*(v89 + 20) == 1)
                    {
                      v90 = *(v89 + 24);
                    }

                    v11 = v195 + v91 + v90;
                  }

                  v92 = v86 + v195;
                  if (v12 > v92)
                  {
                    v93 = v85 + v92;
                    if (v93 >= a6)
                    {
                      if (v92 >= a6)
                      {
                        v179 = v11;
                        v178 = 0;
LABEL_159:
                        v177 = v205;
                        v96 = v183;
LABEL_160:
                        v97 = *v96;
                        if (!*v96)
                        {
LABEL_175:
                          operator new();
                        }

                        while (1)
                        {
                          v96 = v97;
                          v98 = *(v97 + 8);
                          if (v98 == v182)
                          {
                            v99 = *(v96 + 9);
                            v100 = v99 == v181;
                            if (v99 > v181)
                            {
                              goto LABEL_160;
                            }

                            if (v99 >= v181)
                            {
                              v101 = 1;
                            }

                            else
                            {
                              v101 = -1;
                            }

                            if (v100)
                            {
                              v101 = 0;
                            }
                          }

                          else
                          {
                            if (v98 > v182)
                            {
                              goto LABEL_160;
                            }

                            v101 = v98 >= v182 ? 1 : -1;
                          }

                          if ((v101 & 0x80) == 0)
                          {
                            break;
                          }

                          v97 = v96[1];
                          if (!v97)
                          {
                            goto LABEL_175;
                          }
                        }

                        *(v96 + 40) = v178;
                        v11 = v179;
                        v96[6] = v180;
                        *(v96 + 56) = v177;
                        v83 = v176;
                      }
                    }

                    else
                    {
                      v94 = v87 < v88;
                      v95 = v23 < v11 && v94;
                      if (v23 <= v93)
                      {
                        v95 = 1;
                      }

                      if (v11 < a6)
                      {
                        LOBYTE(v94) = 0;
                      }

                      if (v95 == 1 && !v94)
                      {
                        v179 = v11;
                        v178 = 2;
                        goto LABEL_159;
                      }
                    }
                  }
                }
              }

              if (++v84 >= *(v83 + 24))
              {
                goto LABEL_178;
              }
            }
          }

LABEL_114:
          v76 = *v72;
          if (!*v72)
          {
            goto LABEL_122;
          }

          v77 = v72;
          do
          {
            v78 = *(v76 + 32);
            v29 = v78 >= v73;
            v79 = v78 < v73;
            if (v29)
            {
              v77 = v76;
            }

            v76 = *(v76 + 8 * v79);
          }

          while (v76);
          if (v77 == v72 || *(v77 + 8) > v73)
          {
LABEL_122:
            v77 = v72;
          }

          v75 = v77 == v72;
          goto LABEL_124;
        }

        operator delete(v204.__r_.__value_.__l.__data_);
        if (v62)
        {
          goto LABEL_100;
        }

LABEL_180:
        v18 = a1;
        goto LABEL_181;
      }

LABEL_86:
      v63 = *v60;
      if (!*v60)
      {
        goto LABEL_94;
      }

      v64 = v60;
      do
      {
        v65 = *(v63 + 32);
        v29 = v65 >= LODWORD(v11);
        v66 = v65 < LODWORD(v11);
        if (v29)
        {
          v64 = v63;
        }

        v63 = *(v63 + 8 * v66);
      }

      while (v63);
      if (v64 == v60 || *(v64 + 8) > LODWORD(v11))
      {
LABEL_94:
        v64 = v60;
      }

      v62 = v64 == v60;
      goto LABEL_96;
    }

LABEL_181:
    v102 = *(v34 + 20);
    if (!v102 || !*v102)
    {
      goto LABEL_210;
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, "AC_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v34 + 20));
    LODWORD(v197) = LODWORD(v11);
    v103 = HIDWORD(*&v11);
    BYTE4(v197) = BYTE4(v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
      if (!v103)
      {
        goto LABEL_210;
      }
    }

    else if (!v103)
    {
LABEL_210:
      v114 = *(v34 + 28);
      if (!v114 || !*v114)
      {
        goto LABEL_239;
      }

      std::string::basic_string[abi:ne200100]<0>(&v204, "AP_");
      std::string::basic_string[abi:ne200100]<0>(&__p, **(v34 + 28));
      LODWORD(v197) = LODWORD(v11);
      v115 = HIDWORD(*&v11);
      BYTE4(v197) = BYTE4(v11);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v115)
        {
          goto LABEL_239;
        }

LABEL_218:
        std::string::basic_string[abi:ne200100]<0>(&v204, **(v34 + 28));
        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v204.__r_.__value_.__l.__size_ < 8)
          {
            goto LABEL_226;
          }

          v116 = v204.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
          {
            goto LABEL_226;
          }

          v116 = &v204;
        }

        if (v116->__r_.__value_.__s.__data_[7] == 48)
        {
          v117 = 0;
          if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_237;
          }

          goto LABEL_236;
        }

LABEL_226:
        v118 = v186;
        v119 = *v186;
        if (!*v186)
        {
          goto LABEL_234;
        }

        v120 = v186;
        do
        {
          v121 = *(v119 + 32);
          v29 = v121 >= LODWORD(v11);
          v122 = v121 < LODWORD(v11);
          if (v29)
          {
            v120 = v119;
          }

          v119 = *(v119 + 8 * v122);
        }

        while (v119);
        v118 = v186;
        if (v120 == v186 || *(v120 + 8) > LODWORD(v11))
        {
LABEL_234:
          v120 = v118;
        }

        v117 = v120 == v118;
        if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_237;
        }

LABEL_236:
        operator delete(v204.__r_.__value_.__l.__data_);
LABEL_237:
        if (v117)
        {
          v123 = *(v34 + 28);
          v124 = v195;
          *v125 = a4;
          v125[1] = v123;
          *(v125 + 2) = v124;
        }

        goto LABEL_239;
      }

      operator delete(v204.__r_.__value_.__l.__data_);
      if (v115)
      {
        goto LABEL_218;
      }

LABEL_239:
      v21 = *(v17 + 136);
      goto LABEL_240;
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, **(v34 + 20));
    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v204.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_197;
      }

      v104 = v204.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_197;
      }

      v104 = &v204;
    }

    if (v104->__r_.__value_.__s.__data_[7] == 48)
    {
      v105 = 0;
      if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_208;
      }

      goto LABEL_207;
    }

LABEL_197:
    v106 = v188;
    v107 = *v188;
    if (!*v188)
    {
      goto LABEL_205;
    }

    v108 = v188;
    do
    {
      v109 = *(v107 + 32);
      v29 = v109 >= LODWORD(v11);
      v110 = v109 < LODWORD(v11);
      if (v29)
      {
        v108 = v107;
      }

      v107 = *(v107 + 8 * v110);
    }

    while (v107);
    v106 = v188;
    if (v108 == v188 || *(v108 + 8) > LODWORD(v11))
    {
LABEL_205:
      v108 = v106;
    }

    v105 = v108 == v106;
    if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_208;
    }

LABEL_207:
    operator delete(v204.__r_.__value_.__l.__data_);
LABEL_208:
    if (v105)
    {
      v111 = *(v34 + 20);
      v112 = v195;
      *v113 = a4;
      v113[1] = v111;
      *(v113 + 2) = v112;
    }

    goto LABEL_210;
  }

LABEL_241:
  v126 = *(v17 + 104);
  if (v126 && *v126)
  {
    std::string::basic_string[abi:ne200100]<0>(&v204, "AP_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v17 + 104));
    LODWORD(v197) = v8;
    v127 = HIDWORD(v8);
    BYTE4(v197) = BYTE4(v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
      if (!v127)
      {
        goto LABEL_270;
      }
    }

    else if (!v127)
    {
      goto LABEL_270;
    }

    std::string::basic_string[abi:ne200100]<0>(&v204, **(v17 + 104));
    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v204.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_257;
      }

      v128 = v204.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_257;
      }

      v128 = &v204;
    }

    if (v128->__r_.__value_.__s.__data_[7] == 48)
    {
      v129 = 0;
      if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_268;
      }

      goto LABEL_267;
    }

LABEL_257:
    v130 = v18 + 152;
    v131 = *(v18 + 152);
    if (!v131)
    {
      goto LABEL_265;
    }

    v132 = v18 + 152;
    do
    {
      v133 = *(v131 + 32);
      v29 = v133 >= v8;
      v134 = v133 < v8;
      if (v29)
      {
        v132 = v131;
      }

      v131 = *(v131 + 8 * v134);
    }

    while (v131);
    if (v132 == v130 || *(v132 + 32) > v8)
    {
LABEL_265:
      v132 = v18 + 152;
    }

    v129 = v132 == v130;
    if ((SHIBYTE(v204.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_268;
    }

LABEL_267:
    operator delete(v204.__r_.__value_.__l.__data_);
LABEL_268:
    if (v129)
    {
      v135 = *(v17 + 104);
      v12 = v195;
      *v136 = a4;
      v136[1] = v135;
      *(v136 + 2) = v12;
    }
  }

LABEL_270:
  if (*(v17 + 112))
  {
    v137 = 0;
    v189 = 0;
    v138 = (v18 + 56);
    v187 = v17;
    do
    {
      v139 = *(v17 + 116);
      v140 = *(v139 + 8 * v137);
      if (v140 && *v140)
      {
        std::string::basic_string[abi:ne200100]<0>(&v204, "AO_");
        std::string::basic_string[abi:ne200100]<0>(&__p, **(v139 + 8 * v137));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v204.__r_.__value_.__l.__data_);
        }

        if (HIDWORD(v141))
        {
          v142 = *v138;
          if (!*v138)
          {
            goto LABEL_287;
          }

          v143 = v138;
          do
          {
            v144 = *(v142 + 32);
            v29 = v144 >= v141;
            v145 = v144 < v141;
            if (v29)
            {
              v143 = v142;
            }

            v142 = *(v142 + 8 * v145);
          }

          while (v142);
          if (v143 == v138 || *(v143 + 16) > v141)
          {
LABEL_287:
            v146 = *(v139 + 8 * v137);
            v147 = 0.0;
            if (*(v146 + 16) == 1)
            {
              v147 = *(v146 + 20);
            }

            v148 = *(v146 + 28);
            if (v148 == 1)
            {
              v12 = *(v146 + 32);
            }

            else
            {
              *&v12 &= 0xFFFFFFFFFFFFFF00;
            }

            v149 = v20 + v147;
            v150 = v20 + v147;
            v9 = v9 & 0xFFFFFFFFFFFFFF00 | 1;
            v151 = v20 + v147 + v12;
            if (*(v146 + 28))
            {
              v152 = *&v151;
            }

            else
            {
              v152 = 0;
            }

            v8 = v8 & 0xFFFFFFFFFFFFFF00 | v148;
            v10 &= 0xFFFFFFFFFFFFFF00;
            v153 = *&v11 & 0xFFFFFFFFFFFFFF00;
            if (v154 == 3)
            {
              v18 = a1;
            }

            else
            {
              v155 = v154;
              v190 = v10;
              if (v154 != 4)
              {
                v189 = 1;
              }

              LOWORD(v204.__r_.__value_.__l.__data_) = v141;
              *v156 = v155;
              v156[1] = v146;
              *(v156 + 2) = v149;
              if (v155 == 2)
              {
                v18 = a1;
              }

              else
              {
                v18 = a1;
                {
                  LOWORD(v204.__r_.__value_.__l.__data_) = v141;
                }
              }
            }

            v11 = *&v153;
            v17 = v187;
          }
        }
      }

      ++v137;
    }

    while (v137 < *(v17 + 112));
  }

  else
  {
    v189 = 0;
  }

  if (*(v17 + 124))
  {
    v157 = 0;
    v158 = (v18 + 56);
    do
    {
      v159 = *(*(v17 + 128) + 8 * v157);
      if (v159 && *v159)
      {
        std::string::basic_string[abi:ne200100]<0>(&v204, "AO_");
        std::string::basic_string[abi:ne200100]<0>(&__p, *v159);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v204.__r_.__value_.__l.__data_);
        }

        if (HIDWORD(v160))
        {
          v161 = v160;
          v162 = *v158;
          if (!*v158)
          {
            goto LABEL_324;
          }

          v163 = v158;
          do
          {
            v164 = *(v162 + 32);
            v29 = v164 >= v160;
            v165 = v164 < v160;
            if (v29)
            {
              v163 = v162;
            }

            v162 = *(v162 + 8 * v165);
          }

          while (v162);
          if (v163 == v158 || *(v163 + 16) > v160)
          {
LABEL_324:
            v166 = 0.0;
            if (*(v159 + 16) == 1)
            {
              v166 = *(v159 + 20);
            }

            v167 = *(v159 + 28);
            if (v167 == 1)
            {
              v12 = *(v159 + 32);
            }

            else
            {
              *&v12 &= 0xFFFFFFFFFFFFFF00;
            }

            v168 = v20 + v166;
            v169 = v20 + v166;
            v170 = v20 + v166 + v12;
            if (*(v159 + 28))
            {
              v171 = *&v170;
            }

            else
            {
              v171 = 0;
            }

            v9 &= 0xFFFFFFFFFFFFFF00;
            v10 &= 0xFFFFFFFFFFFFFF00;
            v190 = v190 & 0xFFFFFFFFFFFFFF00 | v167;
            if (v172 != 3)
            {
              v173 = v172;
              if (v172 != 4)
              {
                v189 = 1;
              }

              LOWORD(v204.__r_.__value_.__l.__data_) = v161;
              *v174 = v173;
              v174[1] = v159;
              *(v174 + 2) = v168;
              {
                LOWORD(v204.__r_.__value_.__l.__data_) = v161;
              }
            }
          }
        }
      }

      ++v157;
    }

    while (v157 < *(v17 + 124));
  }

  return v189 & 1;
}

void sub_18F67F780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 161) < 0)
  {
    operator delete(*(v36 - 184));
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::parse_format_id(const void **a1, const std::string *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1 + 23;
  v5 = (a1 + 1);
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v25 = 0;
  v7 = std::string::basic_string(v27, a2, 0, v6, &v24);
  v8 = v27[23];
  if (v27[23] >= 0)
  {
    v9 = v27[23];
  }

  else
  {
    v9 = *&v27[8];
  }

  v10 = *v4;
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *v5;
  }

  if (v9 != v10 || (v27[23] >= 0 ? (v12 = v27) : (v12 = *v27), v11 >= 0 ? (v13 = a1) : (v13 = *a1), v7 = memcmp(v12, v13, v9), v7))
  {
    v14 = 1;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_34:
    operator delete(*v27);
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_35:
    v19 = v25 & 0xFFFFFF00;
    v18 = v25;
    v20 = 0x100000000;
    goto LABEL_36;
  }

  std::string::basic_string(&v24, a2, v6, 0xFFFFFFFFFFFFFFFFLL, &v26);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v24;
  }

  else
  {
    v21 = v24.__r_.__value_.__r.__words[0];
  }

  v7 = sscanf(v21, "%08x", &v25);
  v14 = v7 != 1;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if ((v27[23] & 0x80) != 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_19:
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 23) >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    *v27 = 136315906;
    *&v27[4] = "AudioMetadataSerializer.cpp";
    *&v27[12] = 1024;
    *&v27[14] = 2133;
    *&v27[18] = 2080;
    *&v27[20] = v16;
    v28 = 2080;
    v29 = v17;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Format ID '%s' does not match expected pattern '%sxxxxyyyy'", v27, 0x26u);
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_36:
  v22 = *MEMORY[0x1E69E9840];
  return v20 | v19 | v18;
}

void sub_18F67FA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t anonymous namespace::parse_track_format_id(const void **a1, const std::string *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1 + 23;
  v5 = (a1 + 1);
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v25 = 0;
  v24 = 0;
  v7 = std::string::basic_string(v27, a2, 0, v6, &v23);
  v8 = v27[23];
  if (v27[23] >= 0)
  {
    v9 = v27[23];
  }

  else
  {
    v9 = *&v27[8];
  }

  v10 = *v4;
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *v5;
  }

  if (v9 != v10 || (v27[23] >= 0 ? (v12 = v27) : (v12 = *v27), v11 >= 0 ? (v13 = a1) : (v13 = *a1), v7 = memcmp(v12, v13, v9), v7))
  {
    v14 = 1;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_18;
    }

LABEL_34:
    operator delete(*v27);
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_35:
    v19 = v25 & 0xFFFFFF00 | (v24 << 32);
    v18 = v25;
    goto LABEL_36;
  }

  std::string::basic_string(&v23, a2, v6, 0xFFFFFFFFFFFFFFFFLL, &v26);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v23;
  }

  else
  {
    v20 = v23.__r_.__value_.__r.__words[0];
  }

  v7 = sscanf(v20, "%08x_%02hhx", &v25, &v24);
  v14 = v7 != 2;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if ((v27[23] & 0x80) != 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_19:
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = a2->__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 23) >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    *v27 = 136315906;
    *&v27[4] = "AudioMetadataSerializer.cpp";
    *&v27[12] = 1024;
    *&v27[14] = 2148;
    *&v27[18] = 2080;
    *&v27[20] = v16;
    v28 = 2080;
    v29 = v17;
    _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Format ID '%s' does not match expected pattern '%sxxxxyyyy_zz'", v27, 0x26u);
  }

  v18 = 0;
  v19 = 0;
LABEL_36:
  v21 = *MEMORY[0x1E69E9840];
  return v19 | v18;
}

void sub_18F67FC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::map<std::tuple<unsigned int,unsigned char>,anonymous namespace::ElementRef<AudioMetadataTrackFormat>>::operator[](uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_20:
    operator new();
  }

  v3 = *a2;
  v4 = *(a2 + 4);
  while (1)
  {
    v5 = v2;
    v6 = *(v2 + 8);
    if (v3 != v6)
    {
      break;
    }

    v7 = *(v5 + 36);
    if (v4 < v7)
    {
LABEL_13:
      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = v7 == v4;
      if (v7 >= v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (v8)
      {
        v9 = 0;
      }

      if ((v9 & 0x80) == 0)
      {
        return (v5 + 5);
      }

LABEL_19:
      v2 = v5[1];
      if (!v2)
      {
        goto LABEL_20;
      }
    }
  }

  if (v3 < v6)
  {
    goto LABEL_13;
  }

  if (v6 >= v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  if (v10 < 0)
  {
    goto LABEL_19;
  }

  return (v5 + 5);
}

uint64_t *std::map<unsigned int,anonymous namespace::ElementRef<AudioMetadataTrackUID>>::operator[](uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

BOOL anonymous namespace::encode_var_uint(unint64_t this, uint64_t a2, unsigned __int8 *a3, unint64_t *a4)
{
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  do
  {
    v17 = this & 0x7F;
    std::deque<unsigned char>::push_back(v18, &v17);
    v8 = this > 0x7F;
    this >>= 7;
  }

  while (v8);
  v9 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    while (1)
    {
      v10 = v9 - 1;
      v11 = *(*(*(&v18[0] + 1) + (((v19 + v10) >> 9) & 0x7FFFFFFFFFFFF8)) + ((v19 + v10) & 0xFFF));
      *(&v19 + 1) = v10;
      std::deque<unsigned char>::__maybe_remove_back_spare[abi:ne200100](v18);
      v12 = *a3;
      v13 = *a3 + 1;
      v14 = v13 <= a4;
      if (v13 > a4)
      {
        break;
      }

      v9 = *(&v19 + 1);
      v15 = v11 | 0x80;
      if (!*(&v19 + 1))
      {
        v15 = v11;
      }

      *a3 = v13;
      *(a2 + v12) = v15;
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v14 = 1;
  }

  std::deque<unsigned char>::~deque[abi:ne200100](v18);
  return v14;
}

void sub_18F67FF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::deque<unsigned char>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void anonymous namespace::encode_string(const char *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = strlen(a1);
    for (; v4; --v4)
    {
      v5 = *v3++;
      v6 = v5;
      std::vector<unsigned char>::push_back[abi:ne200100](a2, &v6);
    }
  }

  else
  {
  }
}

void anonymous namespace::encode_content_ids(__int16 **a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  while (v5 != v4)
  {
    v6 = *v5++;
    v8 = HIBYTE(v6);
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v8);
    v7 = v6;
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v7);
  }
}

void std::vector<unsigned short>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v12);
    }

    v13 = (2 * v9);
    v14 = *a2;
    v15 = &v13[-(v8 >> 1)];
    *v13 = v14;
    v6 = v13 + 1;
    memcpy(v15, v7, v8);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void anonymous namespace::encode_loudness_metadata(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40) << 6;
  v11 = v4;
  if (*(a1 + 16) != 0.0)
  {
    v4 |= 0x20u;
    v11 = v4;
  }

  if (*(a1 + 20) != 0.0)
  {
    v4 += 16;
    v11 = v4;
  }

  if (*(a1 + 24) != 0.0)
  {
    v4 += 8;
    v11 = v4;
  }

  if (*(a1 + 28) != 0.0)
  {
    v4 += 4;
    v11 = v4;
  }

  if (*(a1 + 32) != 0.0)
  {
    v4 += 2;
    v11 = v4;
  }

  if (*(a1 + 36) != 0.0)
  {
    v11 = v4 + 1;
  }

  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v11);
  v5 = *(a1 + 16);
  if (v5 != 0.0)
  {
  }

  v6 = *(a1 + 20);
  if (v6 != 0.0)
  {
  }

  v7 = *(a1 + 24);
  if (v7 != 0.0)
  {
  }

  v8 = *(a1 + 28);
  if (v8 != 0.0)
  {
  }

  v9 = *(a1 + 32);
  if (v9 != 0.0)
  {
  }

  v10 = *(a1 + 36);
  if (v10 != 0.0)
  {
  }
}

void anonymous namespace::encode_float_32(uint64_t a1, float a2)
{
  v7 = HIBYTE(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v7);
  v6 = BYTE2(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v6);
  v5 = BYTE1(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v5);
  v4 = LOBYTE(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v4);
}

void anonymous namespace::encode_float_64(uint64_t a1, double a2)
{
  v11 = HIBYTE(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v11);
  v10 = BYTE6(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v10);
  v9 = BYTE5(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v9);
  v8 = BYTE4(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v8);
  v7 = BYTE3(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v7);
  v6 = BYTE2(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v6);
  v5 = BYTE1(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v5);
  v4 = LOBYTE(a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1, &v4);
}

BOOL anonymous namespace::encode_bytes(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t *a4)
{
  v8 = *(a1 + 8) - *a1;
  if (result)
  {
    v10 = *a3 + v8;
    if (v10 <= a4)
    {
      v11 = *(a1 + 8);
      if (v11 != *a1)
      {
        memmove((a2 + *a3), *a1, v11 - *a1);
        v10 = *a3 + v8;
      }

      *a3 = v10;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void anonymous namespace::encode_format_ids(int **a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  while (v5 != v4)
  {
    v6 = *v5++;
    v10 = HIBYTE(v6);
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v10);
    v9 = BYTE2(v6);
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v9);
    v8 = BYTE1(v6);
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v8);
    v7 = v6;
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v7);
  }
}

void anonymous namespace::encode_string(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = *(v3 + 1);
  if (v3[23] >= 0)
  {
    v6 = v3[23];
  }

  else
  {
    v3 = *v3;
    v6 = v5;
  }

  for (; v6; --v6)
  {
    v7 = *v3++;
    v8 = v7;
    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v8);
  }
}

void anonymous namespace::encode_format_id(int a1, uint64_t a2)
{
  v7 = HIBYTE(a1);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v7);
  v6 = BYTE2(a1);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v6);
  v5 = BYTE1(a1);
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v5);
  v4 = a1;
  std::vector<unsigned char>::push_back[abi:ne200100](a2, &v4);
}

uint64_t anonymous namespace::encode_track_uids(uint64_t a1, int a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(a1 + 120);
  v6 = (a1 + 128);
  result = 1;
  v35 = v6;
  if (v5 != v6)
  {
    while (1)
    {
      if (a2 == 2)
      {
        v11 = *a4;
        v12 = *a4 + 1;
        if (v12 > a5)
        {
          return 0;
        }

        v13 = *(v5 + 40) << 6;
        *a4 = v12;
        *(a3 + v11) = v13;
      }

      if (!result)
      {
        return result;
      }

      if (*(v5 + 40) == 2)
      {
        {
          return 0;
        }
      }

      else
      {
        v14 = v5[6];
        memset(v37, 0, sizeof(v37));
        LOBYTE(v41) = 0;
        v42 = 0;
        v15 = *(v14 + 12);
        if (v15 && *v15)
        {
          std::string::basic_string[abi:ne200100]<0>(v39, "AT_");
          std::string::basic_string[abi:ne200100]<0>(&__p, **(v14 + 12));
          v18 = v17 != 0;
          if (v17)
          {
            v41 = v16;
            v42 = 1;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v40 < 0)
          {
            operator delete(v39[0]);
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = *(v14 + 20);
        if (v19 && *v19)
        {
          std::string::basic_string[abi:ne200100]<0>(v39, "AC_");
          std::string::basic_string[abi:ne200100]<0>(&__p, **(v14 + 20));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v40 < 0)
          {
            operator delete(v39[0]);
          }

          v21 = HIDWORD(v20) != 0;
        }

        else
        {
          LODWORD(v20) = 0;
          v21 = 0;
        }

        v22 = *(v14 + 28);
        if (v22 && *v22)
        {
          std::string::basic_string[abi:ne200100]<0>(v39, "AP_");
          std::string::basic_string[abi:ne200100]<0>(&__p, **(v14 + 28));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v40 < 0)
          {
            operator delete(v39[0]);
          }

          v24 = HIDWORD(v23) != 0;
        }

        else
        {
          LODWORD(v23) = 0;
          v24 = 0;
        }

        __p.__r_.__value_.__s.__data_[0] = 0;
        if (*(v14 + 8) == 0.0)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0x80;
          __p.__r_.__value_.__s.__data_[0] = 0x80;
        }

        v26 = *(v14 + 36);
        if (v26)
        {
          v27 = 1;
        }

        else
        {
          v27 = v18;
        }

        if (((v24 || v21) | v27) == 1)
        {
          if (v26)
          {
            v25 |= 0x40u;
          }

          if (v18)
          {
            v25 |= 0x20u;
          }

          if (v21)
          {
            v25 |= 0x10u;
          }

          if (v24)
          {
            v25 += 8;
          }

          __p.__r_.__value_.__s.__data_[0] = v25;
        }

        std::vector<unsigned char>::push_back[abi:ne200100](v37, &__p);
        v28 = *(v14 + 8);
        if (v28 != 0.0)
        {
        }

        v29 = *(v14 + 36);
        if (v29)
        {
        }

        if (v18)
        {
          v30 = v41;
          LOBYTE(v39[0]) = BYTE3(v41);
          std::vector<unsigned char>::push_back[abi:ne200100](v37, v39);
          LOBYTE(v39[0]) = BYTE2(v30);
          std::vector<unsigned char>::push_back[abi:ne200100](v37, v39);
          LOBYTE(v39[0]) = BYTE1(v30);
          std::vector<unsigned char>::push_back[abi:ne200100](v37, v39);
          LOBYTE(v39[0]) = v30;
          std::vector<unsigned char>::push_back[abi:ne200100](v37, v39);
          std::vector<unsigned char>::push_back[abi:ne200100](v37, &v41 + 4);
        }

        if (v21)
        {
        }

        if (v24)
        {
        }

        if (v37[0])
        {
          operator delete(v37[0]);
        }

        if (!v31)
        {
          return 0;
        }
      }

      v32 = v5[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v5[2];
          v34 = *v33 == v5;
          v5 = v33;
        }

        while (!v34);
      }

      v5 = v33;
      if (v33 == v35)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_18F680B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::encode_pack_formats(uint64_t a1, int a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(a1 + 144);
  v6 = (a1 + 152);
  if (v5 == (a1 + 152))
  {
    return 1;
  }

  v10 = a2;
  v48 = (a1 + 152);
  while (1)
  {
    if (v10 == 2)
    {
      v11 = *a4;
      v12 = *a4 + 1;
      if (v12 > a5)
      {
        return 0;
      }

      v13 = *(v5 + 40) << 6;
      *a4 = v12;
      *(a3 + v11) = v13;
    }

    if (!result)
    {
      return result;
    }

    if (*(v5 + 40) == 2)
    {
      {
        return 0;
      }

      goto LABEL_107;
    }

    v15 = v5[6];
    memset(v50, 0, sizeof(v50));
    LOBYTE(v59[0]) = 32 * v61;
    std::vector<unsigned char>::push_back[abi:ne200100](v50, v59);
    if (!v61)
    {
    }

    memset(v59, 0, sizeof(v59));
    if (*(v15 + 28))
    {
      v16 = 0;
      while (1)
      {
        v17 = *(*(v15 + 32) + 8 * v16);
        std::string::basic_string[abi:ne200100]<0>(v57, "AC_");
        std::string::basic_string[abi:ne200100]<0>(&__p, *v17);
        LODWORD(v55.__r_.__value_.__l.__data_) = v18;
        v19 = HIDWORD(v18);
        v55.__r_.__value_.__s.__data_[4] = BYTE4(v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v58) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v57[0]);
        if (v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        if (++v16 >= *(v15 + 28))
        {
          goto LABEL_22;
        }
      }

      if (!v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      std::vector<unsigned int>::push_back[abi:ne200100](v59, &v55);
      goto LABEL_21;
    }

LABEL_22:
    v57[0] = 0;
    v57[1] = 0;
    v58 = 0;
    if (*(v15 + 40))
    {
      v20 = 0;
      while (1)
      {
        v21 = *(*(v15 + 44) + 8 * v20);
        std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
        std::string::basic_string[abi:ne200100]<0>(&v55, *v21);
        LODWORD(v51.__r_.__value_.__l.__data_) = v22;
        v23 = HIDWORD(v22);
        v51.__r_.__value_.__s.__data_[4] = BYTE4(v22);
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
        if (v23)
        {
          goto LABEL_30;
        }

LABEL_31:
        if (++v20 >= *(v15 + 40))
        {
          goto LABEL_32;
        }
      }

      if (!v23)
      {
        goto LABEL_31;
      }

LABEL_30:
      std::vector<unsigned int>::push_back[abi:ne200100](v57, &v51);
      goto LABEL_31;
    }

LABEL_32:
    v24 = *(v15 + 96);
    if (v24 >= 0xA)
    {
      LOBYTE(v24) = 10;
    }

    v25 = (8 * v24) | ((*(v15 + 52) != 0.0) << 7);
    v54 = v25;
    if (v61 != 2)
    {
      if (v61 != 4)
      {
LABEL_60:
        std::vector<unsigned char>::push_back[abi:ne200100](v50, &v54);
        v10 = a2;
        v6 = v48;
        goto LABEL_96;
      }

      v26 = *(v15 + 60);
      switch(v26)
      {
        case 3:
          v25 |= 6u;
          break;
        case 2:
          v25 |= 4u;
          break;
        case 1:
          v25 |= 2u;
          break;
        default:
          goto LABEL_58;
      }

      v54 = v25;
LABEL_58:
      if (*(v15 + 61) == 1)
      {
        v54 = v25 + 1;
      }

      goto LABEL_60;
    }

    v27 = *(v15 + 80);
    if (v27 && *v27)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
      std::string::basic_string[abi:ne200100]<0>(&v55, *v27);
      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v47 = HIDWORD(v28) != 0;
    }

    else
    {
      LODWORD(v28) = 0;
      v47 = 0;
    }

    v29 = *(v15 + 88);
    v46 = v28;
    if (!v29)
    {
      goto LABEL_62;
    }

    if (!*v29)
    {
      LODWORD(v29) = 0;
LABEL_62:
      v30 = 0;
      goto LABEL_63;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
    std::string::basic_string[abi:ne200100]<0>(&v55, *v29);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v30 = HIDWORD(v29) != 0;
LABEL_63:
    if (v47 || v30)
    {
      v31 = v25 | 4;
      if (!v47)
      {
        v31 = v25;
      }

      if (v30)
      {
        v31 |= 2u;
      }

      v54 = v31;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](v50, &v54);
    v45 = v29;
    memset(&__p, 0, sizeof(__p));
    if (*(v15 + 56))
    {
      v32 = 0;
      while (1)
      {
        v33 = *(*(v15 + 60) + 8 * v32);
        std::string::basic_string[abi:ne200100]<0>(&v55, "AP_");
        std::string::basic_string[abi:ne200100]<0>(&v51, *v33);
        v52 = v34;
        v35 = HIDWORD(v34);
        v53 = BYTE4(v34);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v55.__r_.__value_.__l.__data_);
        if (v35)
        {
          goto LABEL_77;
        }

LABEL_78:
        if (++v32 >= *(v15 + 56))
        {
          goto LABEL_79;
        }
      }

      if (!v35)
      {
        goto LABEL_78;
      }

LABEL_77:
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v52);
      goto LABEL_78;
    }

LABEL_79:
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    if (*(v15 + 68))
    {
      v36 = 0;
      while (1)
      {
        v37 = *(*(v15 + 72) + 8 * v36);
        std::string::basic_string[abi:ne200100]<0>(&v55, "AP_");
        std::string::basic_string[abi:ne200100]<0>(&v51, *v37);
        v52 = v38;
        v39 = HIDWORD(v38);
        v53 = BYTE4(v38);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(v55.__r_.__value_.__l.__data_);
        if (v39)
        {
          goto LABEL_87;
        }

LABEL_88:
        if (++v36 >= *(v15 + 68))
        {
          goto LABEL_89;
        }
      }

      if (!v39)
      {
        goto LABEL_88;
      }

LABEL_87:
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v52);
      goto LABEL_88;
    }

LABEL_89:
    if (v47)
    {
    }

    if (v30)
    {
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v10 = a2;
    v6 = v48;
LABEL_96:
    v40 = *(v15 + 52);
    if (v40 != 0.0)
    {
    }

    if (v57[0])
    {
      operator delete(v57[0]);
    }

    if (v59[0])
    {
      operator delete(v59[0]);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (v50[0])
    {
      operator delete(v50[0]);
    }

    if (!v41)
    {
      return 0;
    }

LABEL_107:
    v42 = v5[1];
    if (v42)
    {
      do
      {
        v43 = v42;
        v42 = *v42;
      }

      while (v42);
    }

    else
    {
      do
      {
        v43 = v5[2];
        v44 = *v43 == v5;
        v5 = v43;
      }

      while (!v44);
    }

    v5 = v43;
    if (v43 == v6)
    {
      return 1;
    }
  }
}

void sub_18F6811F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a37)
  {
    operator delete(a37);
  }

  v44 = *(v42 - 144);
  if (v44)
  {
    operator delete(v44);
  }

  if (*(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::encode_channel_formats(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, unint64_t *a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 168);
  v9 = (a1 + 176);
  if (v8 == (a1 + 176))
  {
    return 1;
  }

  v13 = a5;
  v14 = *&a4;
  v15 = a3;
  v76 = (a1 + 176);
  while (1)
  {
    if (a2 == 2)
    {
      v17 = **&v14;
      v18 = **&v14 + 1;
      if (v18 > v13)
      {
        return 0;
      }

      v19 = *(v8 + 40) << 6;
      **&v14 = v18;
      *(v15 + v17) = v19;
    }

    if (!result)
    {
      return result;
    }

    if (*(v8 + 40) == 2)
    {
      break;
    }

    v21 = v8[6];
    v22 = *(v8 + 8);
    v23 = *(v8 + 7);
    v81 = 0;
    v82 = 0;
    __src = 0;
    __p.__r_.__value_.__s.__data_[0] = 32 * v91;
    std::vector<unsigned char>::push_back[abi:ne200100](&__src, &__p);
    if (!v91)
    {
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    do
    {
      while (1)
      {
        v29 = v24;
        v30 = v21 + 36 + 8 * v24;
        v31 = *(v30 + 4);
        if (v31 != 2)
        {
          break;
        }

        v28 = *v30;
        v24 = 1;
        v26 = 1;
        if (v29)
        {
          if (v25)
          {
            v33 = 0x80;
          }

          else
          {
            v33 = 0;
          }

LABEL_27:
          v33 |= 0x40u;
          v32 = 1;
          goto LABEL_28;
        }
      }

      if (v31 == 1)
      {
        LODWORD(v27) = *v30;
        v25 = 1;
      }

      v24 = 1;
    }

    while (!v29);
    v32 = 0;
    if (v25)
    {
      v33 = 0x80;
    }

    else
    {
      v33 = 0;
    }

    if (v26)
    {
      goto LABEL_27;
    }

LABEL_28:
    v89 = v33;
    std::vector<unsigned char>::push_back[abi:ne200100](&__src, &v89);
    if (v25)
    {
    }

    if (v32)
    {
    }

    v86 = 0;
    v87 = 0;
    v88 = 0;
    if (!*(v21 + 24))
    {
      v55 = 0;
      goto LABEL_71;
    }

    v34 = 0;
    do
    {
      v35 = *(*(v21 + 28) + 8 * v34);
      std::string::basic_string[abi:ne200100]<0>(&__p, *v35);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v37 = 0.0;
      if (*(v35 + 8) == 1)
      {
        v37 = *(v35 + 12);
      }

      v38 = *(v35 + 20);
      if (v38 == 1)
      {
        v27 = *(v35 + 24);
      }

      else
      {
        *&v27 &= 0xFFFFFFFFFFFFFF00;
      }

      v39 = v23 + v37;
      if (*(v35 + 20))
      {
        v40 = v39 + v27;
      }

      else
      {
        v40 = 0.0;
      }

      v41 = v34 + 1;
      v42 = *(v21 + 24);
      if (v34 + 1 >= v42)
      {
        v45 = 0;
        *&v14 &= 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        v43 = *(*(v21 + 28) + 8 * v34 + 8);
        v44 = 0.0;
        if (*(v43 + 8) == 1)
        {
          v44 = *(v43 + 12);
        }

        if (*(v43 + 20) == 1)
        {
          v14 = v23 + v44 + *(v43 + 24);
          v45 = 1;
        }

        else
        {
          v14 = 0.0;
          v45 = 0;
        }
      }

      {
        if (v85 == 1)
        {
          v46 = v87;
          if (v87 < v88)
          {
            *v87 = 0;
            *(v46 + 8) = 0;
            *(v46 + 16) = 0;
            std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v46, v83, v84, v84 - v83);
            v87 = (v46 + 24);
            goto LABEL_65;
          }

          v47 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3);
          v48 = v47 + 1;
          if (v47 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v88 - v86) >> 3) > v48)
          {
            v48 = 0x5555555555555556 * ((v88 - v86) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v88 - v86) >> 3) >= 0x555555555555555)
          {
            v49 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v49 = v48;
          }

          v94 = &v86;
          if (v49)
          {
            std::allocator<std::vector<unsigned char>>::allocate_at_least[abi:ne200100](v49);
          }

          v50 = (8 * ((v87 - v86) >> 3));
          __p.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__l.__size_ = v50;
          __p.__r_.__value_.__r.__words[2] = v50;
          v93 = 0;
          *v50 = 0;
          v50[1] = 0;
          v50[2] = 0;
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(24 * v47, v83, v84, v84 - v83);
          v51 = __p.__r_.__value_.__r.__words[2] + 24;
          v52 = (__p.__r_.__value_.__l.__size_ - (v87 - v86));
          memcpy(v52, v86, v87 - v86);
          v53 = v86;
          v54 = v88;
          v86 = v52;
          v87 = v51;
          v88 = v93;
          __p.__r_.__value_.__r.__words[2] = v53;
          v93 = v54;
          __p.__r_.__value_.__r.__words[0] = v53;
          __p.__r_.__value_.__l.__size_ = v53;
          std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(&__p);
          v87 = v51;
          if (v85)
          {
LABEL_65:
            if (v83)
            {
              operator delete(v83);
            }
          }
        }

        v42 = *(v21 + 24);
      }

      ++v34;
    }

    while (v41 < v42);
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3);
LABEL_71:
    v56 = v86;
    v57 = v87;
    while (v56 != v57)
    {
      v59 = *v56;
      v58 = *(v56 + 1);
      v60 = &v58[-*v56];
      if (v60 >= 1)
      {
        v61 = v81;
        if (v82 - v81 >= v60)
        {
          while (v59 != v58)
          {
            v65 = *v59++;
            *v61++ = v65;
          }

          v81 = v61;
        }

        else
        {
          v62 = v81 - __src + v60;
          if (v62 < 0)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v63 = v82 - __src;
          if (2 * (v82 - __src) > v62)
          {
            v62 = 2 * v63;
          }

          if (v63 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v64 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v62;
          }

          if (v64)
          {
            operator new();
          }

          v66 = v81 - __src;
          v67 = v81 - __src + v60;
          v68 = (v81 - __src);
          do
          {
            v69 = *v59++;
            *v68++ = v69;
            --v60;
          }

          while (v60);
          v70 = __src;
          v71 = (v66 + __src - v61);
          memcpy(v71, __src, v61 - __src);
          __src = v71;
          v81 = v67;
          v82 = 0;
          if (v70)
          {
            operator delete(v70);
          }
        }
      }

      v56 += 24;
    }

    __p.__r_.__value_.__r.__words[0] = &v86;
    std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    v15 = a3;
    v14 = *&a4;
    v13 = a5;
    v9 = v76;
    if (__src)
    {
      operator delete(__src);
    }

    if (!v72)
    {
      return 0;
    }

LABEL_96:
    v73 = v8[1];
    if (v73)
    {
      do
      {
        v74 = v73;
        v73 = *v73;
      }

      while (v73);
    }

    else
    {
      do
      {
        v74 = v8[2];
        v75 = *v74 == v8;
        v8 = v74;
      }

      while (!v75);
    }

    v8 = v74;
    if (v74 == v9)
    {
      return 1;
    }
  }

  {
    goto LABEL_96;
  }

  return 0;
}

void sub_18F681994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::encode_block_formats_stand_alone(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t *a4)
{
  v4 = *(a1 + 192);
  v5 = (a1 + 200);
  if (v4 == (a1 + 200))
  {
    return 1;
  }

  while (1)
  {
    v9 = *a3;
    v10 = *a3 + 1;
    if (v10 > a4)
    {
      break;
    }

    v11 = *(v4 + 40) << 6;
    *a3 = v10;
    *(a2 + v9) = v11;
    v12 = *a3;
    v13 = *a3 + 1;
    if (v13 > a4)
    {
      break;
    }

    *a3 = v13;
    *(a2 + v12) = 0x80;
    v14 = *a3;
    if (*a3 + 8 >= a4)
    {
      break;
    }

    v15 = *(v4 + 35);
    *a3 = v14 + 1;
    *(a2 + v14) = v15;
    v16 = *(v4 + 17);
    v17 = (*a3)++;
    *(a2 + v17) = v16;
    v18 = *(v4 + 8) >> 8;
    v19 = (*a3)++;
    *(a2 + v19) = v18;
    LOBYTE(v18) = *(v4 + 8);
    v20 = (*a3)++;
    *(a2 + v20) = v18;
    LOBYTE(v18) = *(v4 + 39);
    v21 = (*a3)++;
    *(a2 + v21) = v18;
    LOBYTE(v18) = *(v4 + 19);
    v22 = (*a3)++;
    *(a2 + v22) = v18;
    v23 = *(v4 + 9) >> 8;
    v24 = (*a3)++;
    *(a2 + v24) = v23;
    LOBYTE(v23) = *(v4 + 9);
    v25 = (*a3)++;
    *(a2 + v25) = v23;
    if (*(v4 + 40) == 2)
    {
      {
        return 0;
      }
    }

    else
    {
      if (v31 == 1)
      {
        {
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          return 0;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    v26 = v4[1];
    if (v26)
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26);
    }

    else
    {
      do
      {
        v27 = v4[2];
        v28 = *v27 == v4;
        v4 = v27;
      }

      while (!v28);
    }

    v4 = v27;
    if (v27 == v5)
    {
      return 1;
    }
  }

  return 0;
}

void sub_18F681C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::tuple<unsigned int,unsigned int>,anonymous namespace::BlockFormatRef>,std::__map_value_compare<std::tuple<unsigned int,unsigned int>,std::__value_type<std::tuple<unsigned int,unsigned int>,anonymous namespace::BlockFormatRef>,std::less<std::tuple<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::tuple<unsigned int,unsigned int>,anonymous namespace::BlockFormatRef>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

void anonymous namespace::PacketBuilder::~PacketBuilder(_anonymous_namespace_::PacketBuilder *this)
{
}

void anonymous namespace::encode_block_format(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  if ((a3 & 0x100000000) != 0)
  {
  }

  if (a5)
  {
    buf[0] = 32 * a4;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  v8 = 16 * *(a2 + 157);
  v41 = v8;
  v9 = *(a2 + 32);
  if (*(a2 + 156))
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 1.0;
  }

  if (!v10 || (LODWORD(v11) = 0, *(a2 + 156) == 1) && v9 != 0.0)
  {
    v8 |= 8u;
    v41 = v8;
    LODWORD(v11) = 1;
  }

  if (*(a2 + 158) == 1)
  {
    v8 += 4;
    v41 = v8;
  }

  if (*(a2 + 41) == 1)
  {
    v41 = v8 + 1;
    if (*(a2 + 40) == 1)
    {
      v41 = v8 + 3;
    }
  }

  std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
  if (v11)
  {
    buf[0] = *(a2 + 156) << 7;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  if (*(a2 + 41) == 1)
  {
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v19 = 16 * *(a2 + 121);
      v41 = v19;
      if (*(a2 + 120) == 1)
      {
        v19 |= 8u;
        v41 = v19;
      }

      if (*(a2 + 56) == 1)
      {
        v19 += 4;
        v41 = v19;
      }

      if (*(a2 + 72) == 1)
      {
        v19 += 2;
        v41 = v19;
      }

      if (*(a2 + 76) != 0.0)
      {
        v41 = v19 + 1;
      }

      std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
      if (*(a2 + 84))
      {
        v20 = 0x80;
      }

      else
      {
        v20 = 0;
      }

      v41 = v20;
      if (*(a2 + 96) == 1)
      {
        v41 = v20 | 0x40;
      }

      std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
      if (*(a2 + 72) == 1)
      {
      }

      v21 = *(a2 + 76);
      if (v21 != 0.0)
      {
      }

      if (*(a2 + 84) == 1)
      {
      }

      if (*(a2 + 96) == 1)
      {
      }

      if (*(a2 + 104) == 1)
      {
        buf[0] = -64;
        std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
      }

      else
      {
        buf[0] = 0;
        std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
      }

      if (*(a2 + 116))
      {
        v33 = 0;
        do
        {
          v34 = *(*(a2 + 108) + 8 * v33);
          v35 = *(v34 + 12);
          if (*(v34 + 32) == 1)
          {
            v36 = 24;
          }

          else
          {
            v36 = 16;
          }

          ++v33;
        }

        while (v33 < *(a2 + 116));
      }

      goto LABEL_143;
    }

    if (a4 != 4)
    {
LABEL_143:
      if (*(a2 + 8) == 1)
      {
        buf[0] = 0;
        std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
      }

      if (*(a2 + 20) == 1)
      {
        buf[0] = 1;
        std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
      }

      *a1 = *v42;
      *(a1 + 16) = v43;
      *(a1 + 24) = 1;
      goto LABEL_148;
    }

    if (*(a2 + 96))
    {
      v14 = 0x80;
    }

    else
    {
      v14 = 0;
    }

    v41 = v14;
    v15 = *(a2 + 98);
    switch(v15)
    {
      case 3:
        v14 |= 0x60u;
        break;
      case 2:
        v14 |= 0x40u;
        break;
      case 1:
        v14 |= 0x20u;
        break;
      default:
        goto LABEL_133;
    }

    v41 = v14;
LABEL_133:
    if (*(a2 + 52) == 1)
    {
      v14 += 16;
      v41 = v14;
    }

    if (*(a2 + 53) == 1)
    {
      v14 += 8;
      v41 = v14;
    }

    if (*(a2 + 54) == 1)
    {
      v14 += 4;
      v41 = v14;
    }

    if (*(a2 + 92) != 0.0)
    {
      v41 = v14 + 2;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
    v18 = *(a2 + 92);
    if (v18 == 0.0)
    {
      goto LABEL_143;
    }

LABEL_142:
    goto LABEL_143;
  }

  if (a4 == 1)
  {
    v16 = 16 * *(a2 + 108);
    v41 = v16;
    if (*(a2 + 52) == 1)
    {
      v16 |= 0xAu;
      v41 = v16;
    }

    if (*(a2 + 53) == 1)
    {
      v41 = v16 + 5;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
    if (*(a2 + 52))
    {
      v17 = 0x80;
    }

    else
    {
      v17 = 0;
    }

    v41 = v17;
    if (*(a2 + 53) == 1)
    {
      v41 = v17 | 0x40;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
    if (*(a2 + 52) == 1)
    {
    }

    if (*(a2 + 53) == 1)
    {
    }

    if (*(a2 + 52) == 1)
    {
    }

    if (*(a2 + 53) == 1)
    {
    }

    if (*(a2 + 52) == 1)
    {
    }

    if (*(a2 + 53) != 1)
    {
      goto LABEL_143;
    }

    v18 = *(a2 + 80);
    goto LABEL_142;
  }

  if (a4 != 2)
  {
    goto LABEL_143;
  }

  v12 = *(a2 + 44);
  if (!v12 || !*v12)
  {
    goto LABEL_32;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "AC_");
  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(*buf);
  }

  if (HIDWORD(v13))
  {
    buf[0] = 0x80;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  else
  {
LABEL_32:
    buf[0] = 0;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  if (*(a2 + 56) == 1)
  {
    buf[0] = -64;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  else
  {
    buf[0] = 0;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, buf);
  }

  if (!*(a2 + 60))
  {
    goto LABEL_143;
  }

  v22 = 0;
  while (1)
  {
    v23 = *(*(a2 + 64) + 8 * v22);
    v24 = *(v23 + 12);
    if (v24)
    {
      v25 = 64;
    }

    else
    {
      v25 = (*(v23 + 44) << 7) | 0x20;
    }

    v26 = *(v23 + 28);
    if (v26)
    {
      v27 = 16;
    }

    else
    {
      v27 = 8;
    }

    v28 = v27 + v25;
    v29 = *(v23 + 20);
    if (v29)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    v41 = v30 + v28;
    std::vector<unsigned char>::push_back[abi:ne200100](v42, &v41);
    if (v24)
    {
    }

    else
    {
    }

    if (v26)
    {
    }

    else
    {
    }

    if (v29)
    {
    }

    else
    {
    }

    v11 = v11 & 0xFFFFFF00;
    v32 = *(v23 + 36);
    if (v32 && *v32)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "AC_");
      std::string::basic_string[abi:ne200100]<0>(&__p, **(v23 + 36));
      v11 = v31;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v47 < 0)
      {
        operator delete(*buf);
      }
    }

    if ((v11 & 0x100000000) == 0)
    {
      break;
    }

    ++v22;
    if (!*(a2 + 60))
    {
      goto LABEL_143;
    }
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AudioMetadataSerializer.cpp";
    v45 = 1024;
    v46 = 387;
    _os_log_impl(&dword_18F5DF000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d Encountered Matrix block format with missing coefficient input channel", buf, 0x12u);
  }

  *a1 = 0;
  *(a1 + 24) = 0;
  if (v42[0])
  {
    operator delete(v42[0]);
  }

LABEL_148:
  v38 = *MEMORY[0x1E69E9840];
}

void sub_18F682638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::encode_var_uint(unint64_t a1, uint64_t a2)
{
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  do
  {
    v7 = a1 & 0x7F;
    std::deque<unsigned char>::push_back(v8, &v7);
    v4 = a1 > 0x7F;
    a1 >>= 7;
  }

  while (v4);
  while (*(&v9 + 1))
  {
    v5 = *(*(*(&v8[0] + 1) + (((v9 + *(&v9 + 1) - 1) >> 9) & 0x7FFFFFFFFFFFF8)) + ((v9 + *(&v9 + 1) - 1) & 0xFFF));
    v7 = v5;
    --*(&v9 + 1);
    std::deque<unsigned char>::__maybe_remove_back_spare[abi:ne200100](v8);
    if (*(&v9 + 1))
    {
      v7 = v5 | 0x80;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](a2, &v7);
  }

  return std::deque<unsigned char>::~deque[abi:ne200100](v8);
}

void sub_18F68278C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::deque<unsigned char>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::log(_anonymous_namespace_ *this)
{
  v1 = &unk_1EAD30000;
  {
    v1 = &unk_1EAD30000;
    if (v3)
    {
      v1 = &unk_1EAD30000;
    }
  }

  return v1[407];
}

void *std::deque<unsigned char>::push_back(void *result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 9) - 1;
  }

  v8 = result[4];
  v9 = result[5] + v8;
  if (v7 == v9)
  {
    if (v8 < 0x1000)
    {
      v10 = result[3];
      v11 = v10 - *result;
      if (v5 - v6 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::allocator<unsigned char *>::allocate_at_least[abi:ne200100](v13);
    }

    result[4] = v8 - 4096;
    v14 = *v6;
    result[1] = v6 + 8;
    result = std::__split_buffer<unsigned char *>::emplace_back<unsigned char *&>(result, &v14);
    v6 = v3[1];
    v9 = v3[5] + v3[4];
  }

  *(*&v6[(v9 >> 9) & 0x7FFFFFFFFFFFF8] + (v9 & 0xFFF)) = *a2;
  ++v3[5];
  return result;
}

void sub_18F682CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::deque<unsigned char>::__maybe_remove_back_spare[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((v1 - v2) << 9) - 1;
  }

  if ((v3 - (a1[5] + a1[4])) >= 0x2000)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<unsigned char>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<unsigned char *>::emplace_back<unsigned char *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::allocator<unsigned char *>::allocate_at_least[abi:ne200100](v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::allocator<unsigned char *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t anonymous namespace::encode_format_element_id(char a1, int a2, uint64_t a3, unint64_t *a4, unint64_t a5)
{
  v5 = *a4;
  v6 = *a4 + 1;
  if (v6 > a5)
  {
    return 0;
  }

  *a4 = v6;
  *(a3 + v5) = 16 * a1;
  v7 = *a4;
  if (*a4 + 4 >= a5)
  {
    return 0;
  }

  *a4 = v7 + 1;
  *(a3 + v7) = HIBYTE(a2);
  v8 = (*a4)++;
  *(a3 + v8) = BYTE2(a2);
  v9 = (*a4)++;
  *(a3 + v9) = BYTE1(a2);
  v10 = (*a4)++;
  *(a3 + v10) = a2;
  return 1;
}

std::string *anonymous namespace::determine_channel_type(std::string *this, const std::string::value_type *a2, std::string::value_type *a3)
{
  v4 = this;
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2)
  {
    this = std::string::__assign_external(this, a2);
  }

  if (*a3)
  {
    v4[1].__r_.__value_.__s.__data_[0] = *a3;
  }

  v5 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
  {
    if (v4->__r_.__value_.__l.__size_ != 4)
    {
LABEL_13:
      v8 = v4[1].__r_.__value_.__s.__data_[0];
      goto LABEL_14;
    }

    v6 = v4->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = v4;
    if (v5 != 4)
    {
      goto LABEL_13;
    }
  }

  data = v6->__r_.__value_.__l.__data_;
  v8 = v4[1].__r_.__value_.__s.__data_[0];
  if (data == 825241648 && v8 == 1)
  {
    v9 = 1;
    goto LABEL_47;
  }

LABEL_14:
  if ((v5 & 0x80) != 0)
  {
    if (v4->__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_46;
    }

    v10 = v4->__r_.__value_.__r.__words[0];
  }

  else
  {
    v10 = v4;
    if (v5 != 4)
    {
      goto LABEL_46;
    }
  }

  if (LODWORD(v10->__r_.__value_.__l.__data_) == 842018864 && v8 == 2)
  {
    v9 = 2;
    goto LABEL_47;
  }

  if ((v5 & 0x80) != 0)
  {
    if (v4->__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_46;
    }

    v11 = v4->__r_.__value_.__r.__words[0];
  }

  else
  {
    v11 = v4;
    if (v5 != 4)
    {
      goto LABEL_46;
    }
  }

  if (LODWORD(v11->__r_.__value_.__l.__data_) == 858796080 && v8 == 3)
  {
    v9 = 3;
    goto LABEL_47;
  }

  if ((v5 & 0x80) != 0)
  {
    if (v4->__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_46;
    }

    v12 = v4->__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = v4;
    if (v5 != 4)
    {
      goto LABEL_46;
    }
  }

  if (LODWORD(v12->__r_.__value_.__l.__data_) == 875573296 && v8 == 4)
  {
    v9 = 4;
    goto LABEL_47;
  }

  if ((v5 & 0x80) == 0)
  {
    v13 = v4;
    if (v5 != 4)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (v4->__r_.__value_.__l.__size_ != 4)
  {
LABEL_46:
    v9 = 0;
    goto LABEL_47;
  }

  v13 = v4->__r_.__value_.__r.__words[0];
LABEL_43:
  if (LODWORD(v13->__r_.__value_.__l.__data_) != 892350512 || v8 != 5)
  {
    goto LABEL_46;
  }

  v9 = 5;
LABEL_47:
  v4[1].__r_.__value_.__s.__data_[1] = v9;
  return this;
}

void sub_18F6831D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::parse_block_format_id(int a1, const std::string *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  v4 = std::string::basic_string(v25, a2, 0, 3uLL, &v21);
  if ((v25[23] & 0x80000000) != 0)
  {
    if (*&v25[8] != 3 || (**v25 == 16961 ? (v6 = *(*v25 + 2) == 95) : (v6 = 0), !v6))
    {
      operator delete(*v25);
LABEL_25:
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        v10 = 0;
        v9 = 0;
        v11 = 0;
        goto LABEL_32;
      }

      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = a2->__r_.__value_.__r.__words[0];
      }

      *v25 = 136315650;
      *&v25[4] = "AudioMetadataSerializer.cpp";
      *&v25[12] = 1024;
      *&v25[14] = 2100;
      *&v25[18] = 2080;
      *&v25[20] = v13;
      v14 = "%25s:%-5d Block format ID '%s' does not match expected pattern 'AB_xxxxyyyy_zz'";
      v15 = v12;
      v16 = 28;
LABEL_30:
      _os_log_impl(&dword_18F5DF000, v15, OS_LOG_TYPE_ERROR, v14, v25, v16);
      goto LABEL_31;
    }
  }

  else
  {
    if (v25[23] != 3)
    {
      goto LABEL_25;
    }

    if (*v25 != 16961 || v25[2] != 95)
    {
      goto LABEL_25;
    }
  }

  std::string::basic_string(&v21, a2, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v24);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v21;
  }

  else
  {
    v7 = v21.__r_.__value_.__r.__words[0];
  }

  v4 = sscanf(v7, "%08x_%08x", &v23, &v22);
  v8 = v4;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if ((v25[23] & 0x80000000) != 0)
  {
    operator delete(*v25);
  }

  if (v8 != 2)
  {
    goto LABEL_25;
  }

  if (v23 != a1)
  {
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }

    *v25 = 136315906;
    *&v25[4] = "AudioMetadataSerializer.cpp";
    *&v25[12] = 1024;
    *&v25[14] = 2105;
    *&v25[18] = 2080;
    *&v25[20] = v20;
    v26 = 1024;
    v27 = a1;
    v14 = "%25s:%-5d Block format ID '%s' does not match containing channel format ID 'AC_%08x'";
    v15 = v19;
    v16 = 34;
    goto LABEL_30;
  }

  v9 = v22 & 0xFFFFFF00;
  v10 = v22;
  v11 = 0x100000000;
LABEL_32:
  v17 = *MEMORY[0x1E69E9840];
  return v11 | v9 | v10;
}

void sub_18F68346C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<unsigned char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::vector<unsigned char>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_18F6835D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void anonymous namespace::gather_elements_from_pack_format(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a2 + 28);
  if (v8)
  {
    v9 = 0;
    v10 = (a1 + 176);
    while (1)
    {
      v11 = *(a2 + 32);
      if (**(v11 + 8 * v9))
      {
        break;
      }

LABEL_32:
      if (++v9 >= v8)
      {
        goto LABEL_33;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v100, "AC_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v11 + 8 * v9));
    v13 = v12;
    LODWORD(v97.__r_.__value_.__l.__data_) = v12;
    v14 = HIDWORD(v12);
    v97.__r_.__value_.__s.__data_[4] = BYTE4(v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
      if (!v14)
      {
LABEL_31:
        v8 = *(a2 + 28);
        goto LABEL_32;
      }
    }

    else if (!v14)
    {
      goto LABEL_31;
    }

    std::string::basic_string[abi:ne200100]<0>(&v100, **(v11 + 8 * v9));
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v100.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_18;
      }

      v15 = v100.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_18;
      }

      v15 = &v100;
    }

    if (v15->__r_.__value_.__s.__data_[7] == 48)
    {
      v16 = 0;
      if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_18:
    v17 = *v10;
    if (!*v10)
    {
      goto LABEL_26;
    }

    v18 = (a1 + 176);
    do
    {
      v19 = *(v17 + 32);
      v20 = v19 >= v13;
      v21 = v19 < v13;
      if (v20)
      {
        v18 = v17;
      }

      v17 = *(v17 + 8 * v21);
    }

    while (v17);
    if (v18 == v10 || *(v18 + 8) > v13)
    {
LABEL_26:
      v18 = (a1 + 176);
    }

    v16 = v18 == v10;
    if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_28:
    operator delete(v100.__r_.__value_.__l.__data_);
LABEL_29:
    if (v16)
    {
      v22 = *(v11 + 8 * v9);
      v23 = *a4;
      *v24 = a3;
      v24[1] = v22;
      v24[2] = v23;
    }

    goto LABEL_31;
  }

LABEL_33:
  v25 = *(a2 + 40);
  if (v25)
  {
    v26 = 0;
    v27 = (a1 + 152);
    while (1)
    {
      v28 = *(a2 + 44);
      if (**(v28 + 8 * v26))
      {
        break;
      }

LABEL_64:
      if (++v26 >= v25)
      {
        goto LABEL_65;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v100, "AP_");
    std::string::basic_string[abi:ne200100]<0>(&__p, **(v28 + 8 * v26));
    v30 = v29;
    LODWORD(v97.__r_.__value_.__l.__data_) = v29;
    v31 = HIDWORD(v29);
    v97.__r_.__value_.__s.__data_[4] = BYTE4(v29);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v100.__r_.__value_.__l.__data_);
      if (!v31)
      {
LABEL_63:
        v25 = *(a2 + 40);
        goto LABEL_64;
      }
    }

    else if (!v31)
    {
      goto LABEL_63;
    }

    std::string::basic_string[abi:ne200100]<0>(&v100, **(v28 + 8 * v26));
    if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v100.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_50;
      }

      v32 = v100.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_50;
      }

      v32 = &v100;
    }

    if (v32->__r_.__value_.__s.__data_[7] == 48)
    {
      v33 = 0;
      if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

LABEL_50:
    v34 = *v27;
    if (!*v27)
    {
      goto LABEL_58;
    }

    v35 = (a1 + 152);
    do
    {
      v36 = *(v34 + 32);
      v20 = v36 >= v30;
      v37 = v36 < v30;
      if (v20)
      {
        v35 = v34;
      }

      v34 = *(v34 + 8 * v37);
    }

    while (v34);
    if (v35 == v27 || *(v35 + 8) > v30)
    {
LABEL_58:
      v35 = (a1 + 152);
    }

    v33 = v35 == v27;
    if ((SHIBYTE(v100.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

LABEL_60:
    operator delete(v100.__r_.__value_.__l.__data_);
LABEL_61:
    if (v33)
    {
      v38 = *(v28 + 8 * v26);
      v39 = *a4;
      *v40 = a3;
      v40[1] = v38;
      v40[2] = v39;
    }

    goto LABEL_63;
  }

LABEL_65:
  if (v101 == 2)
  {
    v41 = *(a2 + 56);
    if (v41)
    {
      v42 = 0;
      v43 = (a1 + 152);
      do
      {
        v44 = *(*(a2 + 60) + 8 * v42);
        if (!v44 || !*v44)
        {
          goto LABEL_99;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
        std::string::basic_string[abi:ne200100]<0>(&v97, *v44);
        v46 = v45;
        v98 = v45;
        v47 = HIDWORD(v45);
        v99 = BYTE4(v45);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v47)
          {
            goto LABEL_98;
          }
        }

        else if (!v47)
        {
          goto LABEL_98;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, *v44);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_ < 8)
          {
            goto LABEL_84;
          }

          p_p = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 8)
          {
            goto LABEL_84;
          }

          p_p = &__p;
        }

        if (p_p->__r_.__value_.__s.__data_[7] != 48)
        {
LABEL_84:
          v50 = *v43;
          if (!*v43)
          {
            goto LABEL_92;
          }

          v51 = (a1 + 152);
          do
          {
            v52 = *(v50 + 32);
            v20 = v52 >= v46;
            v53 = v52 < v46;
            if (v20)
            {
              v51 = v50;
            }

            v50 = *(v50 + 8 * v53);
          }

          while (v50);
          if (v51 == v43 || *(v51 + 8) > v46)
          {
LABEL_92:
            v51 = (a1 + 152);
          }

          v49 = v51 == v43;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_94:
            if (!v49)
            {
              goto LABEL_98;
            }

LABEL_97:
            v54 = *a4;
            *v55 = a3;
            v55[1] = v44;
            v55[2] = v54;
            goto LABEL_98;
          }

          goto LABEL_96;
        }

        v49 = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

LABEL_96:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v49)
        {
          goto LABEL_97;
        }

LABEL_98:
        v41 = *(a2 + 56);
LABEL_99:
        ++v42;
      }

      while (v42 < v41);
    }

    v56 = *(a2 + 68);
    if (v56)
    {
      v57 = 0;
      v58 = (a1 + 152);
      do
      {
        v59 = *(*(a2 + 72) + 8 * v57);
        if (!v59 || !*v59)
        {
          goto LABEL_133;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
        std::string::basic_string[abi:ne200100]<0>(&v97, *v59);
        v61 = v60;
        v98 = v60;
        v62 = HIDWORD(v60);
        v99 = BYTE4(v60);
        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!v62)
          {
            goto LABEL_132;
          }
        }

        else if (!v62)
        {
          goto LABEL_132;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, *v59);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_ < 8)
          {
            goto LABEL_118;
          }

          v63 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 8)
          {
            goto LABEL_118;
          }

          v63 = &__p;
        }

        if (v63->__r_.__value_.__s.__data_[7] != 48)
        {
LABEL_118:
          v65 = *v58;
          if (!*v58)
          {
            goto LABEL_126;
          }

          v66 = (a1 + 152);
          do
          {
            v67 = *(v65 + 32);
            v20 = v67 >= v61;
            v68 = v67 < v61;
            if (v20)
            {
              v66 = v65;
            }

            v65 = *(v65 + 8 * v68);
          }

          while (v65);
          if (v66 == v58 || *(v66 + 8) > v61)
          {
LABEL_126:
            v66 = (a1 + 152);
          }

          v64 = v66 == v58;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_128:
            if (!v64)
            {
              goto LABEL_132;
            }

LABEL_131:
            v69 = *a4;
            *v70 = a3;
            v70[1] = v59;
            v70[2] = v69;
            goto LABEL_132;
          }

          goto LABEL_130;
        }

        v64 = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_128;
        }

LABEL_130:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v64)
        {
          goto LABEL_131;
        }

LABEL_132:
        v56 = *(a2 + 68);
LABEL_133:
        ++v57;
      }

      while (v57 < v56);
    }

    v71 = *(a2 + 80);
    if (!v71 || !*v71)
    {
      goto LABEL_164;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
    std::string::basic_string[abi:ne200100]<0>(&v97, *v71);
    v73 = v72;
    v98 = v72;
    v74 = HIDWORD(v72);
    v99 = BYTE4(v72);
    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v97.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v74)
      {
        goto LABEL_164;
      }
    }

    else if (!v74)
    {
      goto LABEL_164;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, *v71);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ < 8)
      {
        goto LABEL_149;
      }

      v75 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 8)
      {
        goto LABEL_149;
      }

      v75 = &__p;
    }

    if (v75->__r_.__value_.__s.__data_[7] == 48)
    {
      v76 = 0;
LABEL_159:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!v76)
        {
          goto LABEL_164;
        }

        goto LABEL_163;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if (v76)
      {
LABEL_163:
        v82 = *a4;
        *v83 = a3;
        v83[1] = v71;
        v83[2] = v82;
      }

LABEL_164:
      v84 = *(a2 + 88);
      if (!v84 || !*v84)
      {
        goto LABEL_194;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "AP_");
      std::string::basic_string[abi:ne200100]<0>(&v97, *v84);
      v86 = v85;
      v98 = v85;
      v87 = HIDWORD(v85);
      v99 = BYTE4(v85);
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v87)
        {
          goto LABEL_194;
        }
      }

      else if (!v87)
      {
        goto LABEL_194;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, *v84);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__p.__r_.__value_.__l.__size_ < 8)
        {
          goto LABEL_179;
        }

        v88 = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 8)
        {
          goto LABEL_179;
        }

        v88 = &__p;
      }

      if (v88->__r_.__value_.__s.__data_[7] == 48)
      {
        v89 = 0;
        goto LABEL_189;
      }

LABEL_179:
      v90 = a1 + 152;
      v91 = *(a1 + 152);
      if (!v91)
      {
        goto LABEL_187;
      }

      v92 = a1 + 152;
      do
      {
        v93 = *(v91 + 32);
        v20 = v93 >= v86;
        v94 = v93 < v86;
        if (v20)
        {
          v92 = v91;
        }

        v91 = *(v91 + 8 * v94);
      }

      while (v91);
      if (v92 == v90 || *(v92 + 32) > v86)
      {
LABEL_187:
        v92 = a1 + 152;
      }

      v89 = v92 == v90;
LABEL_189:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (!v89)
        {
          goto LABEL_194;
        }
      }

      else if (!v89)
      {
        goto LABEL_194;
      }

      v95 = *a4;
      *v96 = a3;
      v96[1] = v84;
      v96[2] = v95;
      goto LABEL_194;
    }

LABEL_149:
    v77 = a1 + 152;
    v78 = *(a1 + 152);
    if (!v78)
    {
      goto LABEL_157;
    }

    v79 = a1 + 152;
    do
    {
      v80 = *(v78 + 32);
      v20 = v80 >= v73;
      v81 = v80 < v73;
      if (v20)
      {
        v79 = v78;
      }

      v78 = *(v78 + 8 * v81);
    }

    while (v78);
    if (v79 == v77 || *(v79 + 32) > v73)
    {
LABEL_157:
      v79 = a1 + 152;
    }

    v76 = v79 == v77;
    goto LABEL_159;
  }

LABEL_194:
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }
}

void sub_18F683FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned short,anonymous namespace::ElementRef<AudioMetadataObject>>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,anonymous namespace::ElementRef<AudioMetadataObject>>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,anonymous namespace::ElementRef<AudioMetadataObject>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void sub_18F6850F0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void DecoderConfigDescr::DecoderConfigDescr(DecoderConfigDescr *this)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 24) = 0;
  MP4AudioProgramConfig::Clear((this + 88));
  *(this + 1192) = 0u;
  *(this + 1208) = 0u;
  DecoderConfigDescr::cleanup(this);
}

void MP4AudioESDS::SetDecoderConfigDescriptor(uint64_t a1, __int128 *a2)
{
  if ((a1 + 296) != a2)
  {
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 324) = *(a2 + 28);
    *(a1 + 296) = v5;
    *(a1 + 312) = v6;
    *(a1 + 340) = *(a2 + 11);
    v7 = *(a2 + 6);
    *(a1 + 352) = *(a2 + 14);
    *(a1 + 344) = v7;
    *(a1 + 356) = *(a2 + 15);
    v8 = a2[4];
    *(a1 + 376) = *(a2 + 10);
    *(a1 + 360) = v8;
    *(a1 + 384) = *(a2 + 11);
    *(a1 + 392) = *(a2 + 24);
    memcpy((a1 + 396), a2 + 100, 0x440uLL);
    v9 = *(a2 + 149);
    v10 = *(a2 + 150);
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1488) = v9;
    v11 = *(a1 + 1496);
    *(a1 + 1496) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v12 = *(a2 + 151);
    v13 = *(a2 + 152);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1504) = v12;
    v14 = *(a1 + 1512);
    *(a1 + 1512) = v13;
    if (v14)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }
}

void MP4AudioESDS::~MP4AudioESDS(MP4AudioESDS *this)
{
  v2 = *(this + 189);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 187);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void DecoderConfigDescr::~DecoderConfigDescr(DecoderConfigDescr *this)
{
  v2 = *(this + 152);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 150);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void MP4AudioProgramConfig::Clear(MP4AudioProgramConfig *this)
{
  *this = 0;
  bzero(this + 8, 4uLL);
  bzero(this + 12, 0x84uLL);
  bzero(this + 144, 0x84uLL);
  bzero(this + 276, 0x84uLL);
  bzero(this + 408, 0x84uLL);
  bzero(this + 540, 0x84uLL);
  bzero(this + 672, 0x84uLL);
  bzero(this + 804, 0xCuLL);
  bzero(this + 816, 0xCuLL);
  bzero(this + 828, 0xCuLL);
  *(this + 210) = 0;

  bzero(this + 844, 0x100uLL);
}

void DecoderConfigDescr::cleanup(DecoderConfigDescr *this)
{
  v2 = this + 1192;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0;
  bzero(this + 88, 0x44CuLL);
  v3 = *(this + 150);
  *v2 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 152);
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

unint64_t caulk::numeric::exceptional_cast<unsigned int,unsigned long>(unint64_t result)
{
  if (HIDWORD(result))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
  }

  return result;
}

void *std::__list_imp<ID3FrameInfo>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t AudioFormatEncryptedFormatTranslator::EncryptFormatInFlavor(signed int a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 == 1667392371)
  {
    result = 1902207331;
    if (a1 > 1634754914)
    {
      if (a1 <= 1700998450)
      {
        if (a1 == 1634754915)
        {
          goto LABEL_51;
        }

        if (a1 == 1700997939)
        {
          result = 1902324531;
          goto LABEL_64;
        }
      }

      else
      {
        switch(a1)
        {
          case 1700998451:
            result = 1902469939;
            goto LABEL_64;
          case 1718378851:
            result = 1902537827;
            goto LABEL_64;
          case 1970495843:
            result = 1903522657;
            goto LABEL_64;
        }
      }
    }

    else if (a1 <= 1633772399)
    {
      if (a1 == 1633772320)
      {
        goto LABEL_64;
      }

      if (a1 == 1633772392)
      {
        goto LABEL_47;
      }
    }

    else
    {
      switch(a1)
      {
        case 1633772400:
          goto LABEL_41;
        case 1633889587:
          goto LABEL_40;
        case 1634492771:
          result = 1902928227;
          goto LABEL_64;
      }
    }

    v8 = CADefaultLog();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      CAX4CCString::CAX4CCString(v10, a1);
      *buf = 136315650;
      v12 = "AudioFormatEncryptedFormatTranslator.h";
      v13 = 1024;
      v14 = 222;
      v15 = 2080;
      v16 = v10;
      v5 = "%25s:%-5d Unknown format ID: %s";
      goto LABEL_62;
    }

    goto LABEL_64;
  }

  if (a2 != 2053467747)
  {
    if (a2 != 1885695587)
    {
      v4 = CADefaultLog();
      result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315394;
        v12 = "AudioFormatEncryptedFormatTranslator.h";
        v13 = 1024;
        v14 = 229;
        v5 = "%25s:%-5d Invalid encryption flavor";
        v6 = v4;
        v7 = 18;
LABEL_63:
        _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_ERROR, v5, buf, v7);
        result = 0;
        goto LABEL_64;
      }

      goto LABEL_64;
    }

    result = 1885430115;
    if (a1 <= 1634754914)
    {
      if (a1 <= 1633772399)
      {
        if (a1 == 1633772320)
        {
          goto LABEL_64;
        }

        if (a1 != 1633772392)
        {
          goto LABEL_56;
        }

LABEL_47:
        result = (result + 517);
        goto LABEL_64;
      }

      if (a1 != 1633772400)
      {
        if (a1 == 1633889587)
        {
          goto LABEL_40;
        }

LABEL_56:
        v8 = CADefaultLog();
        result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        if (result)
        {
          CAX4CCString::CAX4CCString(v10, a1);
          *buf = 136315650;
          v12 = "AudioFormatEncryptedFormatTranslator.h";
          v13 = 1024;
          v14 = 191;
          v15 = 2080;
          v16 = v10;
          v5 = "%25s:%-5d Unknown format ID: %s";
          goto LABEL_62;
        }

        goto LABEL_64;
      }

LABEL_41:
      result = (result + 525);
      goto LABEL_64;
    }

    if (a1 > 1700998450)
    {
      if (a1 == 1700998451)
      {
        result = 1885692723;
        goto LABEL_64;
      }

      if (a1 == 1970495843)
      {
        result = 1886745441;
        goto LABEL_64;
      }

      goto LABEL_56;
    }

    if (a1 != 1634754915)
    {
      if (a1 == 1700997939)
      {
        result = 1885547315;
        goto LABEL_64;
      }

      goto LABEL_56;
    }

LABEL_51:
    result = (result + 3840);
    goto LABEL_64;
  }

  result = 2053202275;
  if (a1 <= 1633889586)
  {
    switch(a1)
    {
      case 1633772320:
        goto LABEL_64;
      case 1633772392:
        goto LABEL_47;
      case 1633772400:
        goto LABEL_41;
    }
  }

  else
  {
    if (a1 <= 1700997938)
    {
      if (a1 != 1633889587)
      {
        if (a1 == 1634492771)
        {
          result = 2053923171;
          goto LABEL_64;
        }

        goto LABEL_52;
      }

LABEL_40:
      result = (result + 464);
      goto LABEL_64;
    }

    if (a1 == 1700997939)
    {
      result = 2053319475;
      goto LABEL_64;
    }

    if (a1 == 1700998451)
    {
      result = 2053464883;
      goto LABEL_64;
    }
  }

LABEL_52:
  v8 = CADefaultLog();
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    CAX4CCString::CAX4CCString(v10, a1);
    *buf = 136315650;
    v12 = "AudioFormatEncryptedFormatTranslator.h";
    v13 = 1024;
    v14 = 204;
    v15 = 2080;
    v16 = v10;
    v5 = "%25s:%-5d Unknown format ID: %s";
LABEL_62:
    v6 = v8;
    v7 = 28;
    goto LABEL_63;
  }

LABEL_64:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}