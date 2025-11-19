uint64_t get_enum_tag_for_layout_string_8MusicKit18CloudAudioAnalysisV0C18CompositeAttributeVy_AC0cfG8TonalityVGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_8MusicKit18CloudAudioAnalysisV0C13LoudnessCurveVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21766DF10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 811))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21766DF50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 810) = 0;
    *(result + 808) = 0;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 811) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 811) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21766E080(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 792))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 776);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21766E0D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 792) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 792) = 0;
    }

    if (a2)
    {
      *(result + 776) = a2;
    }
  }

  return result;
}

uint64_t sub_21766E204(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_2177528F8();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21766E278(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v7 = 0;
    v8 = *(v5 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 > v7)
  {
    v10 = *(v5 + 80);
    v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10) + v8;
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_7;
    }

    v14 = ((v9 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= 0xFF)
      {
        if (v14 < 2)
        {
          goto LABEL_22;
        }

LABEL_7:
        v13 = *(a1 + v11);
        if (!*(a1 + v11))
        {
          goto LABEL_22;
        }

LABEL_14:
        v15 = (v13 - 1) << v12;
        if (v11 > 3)
        {
          v15 = 0;
        }

        if (v11)
        {
          if (v11 > 3)
          {
            LODWORD(v11) = 4;
          }

          switch(v11)
          {
            case 2:
              LODWORD(v11) = *a1;
              break;
            case 3:
              LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v11) = *a1;
              break;
            default:
              LODWORD(v11) = *a1;
              break;
          }
        }

        return v7 + (v11 | v15) + 1;
      }

      v13 = *(a1 + v11);
      if (*(a1 + v11))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_22:
  if (v6 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v6, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_21766E410(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v11;
  }

  v12 = *(v8 + 80);
  v13 = ((v11 + v12 + ((v11 + v12 + ((v11 + v12) & ~v12)) & ~v12)) & ~v12) + v11;
  v14 = 8 * v13;
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 != 0 && v15)
  {
    if (v13 <= 3)
    {
      v17 = ((v16 + ~(-1 << v14)) >> v14) + 1;
      if (HIWORD(v17))
      {
        v6 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v6 = v18;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 >= 2)
          {
            v22 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v22, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    if (v13 < 4)
    {
      v20 = (v19 >> v14) + 1;
      if (v13)
      {
        v21 = v19 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v13 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v19;
      v20 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v13] = v20;
        break;
      case 2:
        *&a1[v13] = v20;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v13] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21766E65C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21766E6B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21766E710(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21766E764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21766E7DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 58))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21766E7FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 58) = v3;
  return result;
}

uint64_t sub_21766E874(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21766E8C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_21766E950(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_40_5(a1);
}

_BYTE *sub_21766E99C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAudioAnalysis.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_21766EBA0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_79_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAudioAnalysis.CloudStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_21766ED54(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_79_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAudioAnalysis.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21766EEFC()
{
  result = qword_27CB2B9A0;
  if (!qword_27CB2B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9A0);
  }

  return result;
}

unint64_t sub_21766EF70()
{
  result = qword_27CB2B9A8;
  if (!qword_27CB2B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9A8);
  }

  return result;
}

unint64_t sub_21766EFC8()
{
  result = qword_27CB2B9B0;
  if (!qword_27CB2B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9B0);
  }

  return result;
}

unint64_t sub_21766F020()
{
  result = qword_27CB2B9B8;
  if (!qword_27CB2B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9B8);
  }

  return result;
}

unint64_t sub_21766F078()
{
  result = qword_27CB2B9C0;
  if (!qword_27CB2B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9C0);
  }

  return result;
}

unint64_t sub_21766F0D0()
{
  result = qword_27CB2B9C8;
  if (!qword_27CB2B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9C8);
  }

  return result;
}

unint64_t sub_21766F128()
{
  result = qword_27CB2B9D0;
  if (!qword_27CB2B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9D0);
  }

  return result;
}

unint64_t sub_21766F180()
{
  result = qword_27CB2B9D8;
  if (!qword_27CB2B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9D8);
  }

  return result;
}

unint64_t sub_21766F1D8()
{
  result = qword_27CB2B9E0;
  if (!qword_27CB2B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9E0);
  }

  return result;
}

unint64_t sub_21766F230()
{
  result = qword_27CB2B9E8;
  if (!qword_27CB2B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9E8);
  }

  return result;
}

unint64_t sub_21766F288()
{
  result = qword_27CB2B9F0;
  if (!qword_27CB2B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9F0);
  }

  return result;
}

unint64_t sub_21766F2E0()
{
  result = qword_27CB2B9F8;
  if (!qword_27CB2B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B9F8);
  }

  return result;
}

unint64_t sub_21766F338()
{
  result = qword_27CB2BA00;
  if (!qword_27CB2BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA00);
  }

  return result;
}

unint64_t sub_21766F390()
{
  result = qword_27CB2BA08;
  if (!qword_27CB2BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA08);
  }

  return result;
}

unint64_t sub_21766F3E8()
{
  result = qword_27CB2BA10;
  if (!qword_27CB2BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA10);
  }

  return result;
}

unint64_t sub_21766F440()
{
  result = qword_27CB2BA18;
  if (!qword_27CB2BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA18);
  }

  return result;
}

unint64_t sub_21766F498()
{
  result = qword_27CB2BA20;
  if (!qword_27CB2BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA20);
  }

  return result;
}

unint64_t sub_21766F4F0()
{
  result = qword_27CB2BA28;
  if (!qword_27CB2BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA28);
  }

  return result;
}

unint64_t sub_21766F548()
{
  result = qword_27CB2BA30;
  if (!qword_27CB2BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA30);
  }

  return result;
}

unint64_t sub_21766F5A0()
{
  result = qword_27CB2BA38;
  if (!qword_27CB2BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA38);
  }

  return result;
}

unint64_t sub_21766F5F8()
{
  result = qword_27CB2BA40;
  if (!qword_27CB2BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA40);
  }

  return result;
}

unint64_t sub_21766F650()
{
  result = qword_27CB2BA48;
  if (!qword_27CB2BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA48);
  }

  return result;
}

unint64_t sub_21766F6A8()
{
  result = qword_27CB2BA50;
  if (!qword_27CB2BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA50);
  }

  return result;
}

unint64_t sub_21766F700()
{
  result = qword_27CB2BA58;
  if (!qword_27CB2BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA58);
  }

  return result;
}

unint64_t sub_21766F758()
{
  result = qword_27CB2BA60;
  if (!qword_27CB2BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA60);
  }

  return result;
}

unint64_t sub_21766F7B0()
{
  result = qword_27CB2BA68;
  if (!qword_27CB2BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA68);
  }

  return result;
}

unint64_t sub_21766F808()
{
  result = qword_27CB2BA70;
  if (!qword_27CB2BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA70);
  }

  return result;
}

unint64_t sub_21766F860()
{
  result = qword_27CB2BA78;
  if (!qword_27CB2BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA78);
  }

  return result;
}

unint64_t sub_21766F8B8()
{
  result = qword_27CB2BA80;
  if (!qword_27CB2BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA80);
  }

  return result;
}

unint64_t sub_21766F910()
{
  result = qword_27CB2BA88;
  if (!qword_27CB2BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA88);
  }

  return result;
}

unint64_t sub_21766F968()
{
  result = qword_27CB2BA90;
  if (!qword_27CB2BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA90);
  }

  return result;
}

unint64_t sub_21766F9F8()
{
  result = qword_27CB2BA98;
  if (!qword_27CB2BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BA98);
  }

  return result;
}

unint64_t sub_21766FA50()
{
  result = qword_27CB2BAA0;
  if (!qword_27CB2BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BAA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_57@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_47_26()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void OUTLINED_FUNCTION_49_28(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
}

uint64_t OUTLINED_FUNCTION_54_21()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_57_22()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_59_21()
{

  return sub_217752908();
}

uint64_t OUTLINED_FUNCTION_63_22()
{

  return sub_217752E58();
}

void OUTLINED_FUNCTION_74_16()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[2];
  *(v1 - 72) = *(v0 + 24);
}

__n128 OUTLINED_FUNCTION_76_16@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_16@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_91_15()
{

  return sub_217752E48();
}

uint64_t OUTLINED_FUNCTION_92_16()
{

  return swift_getWitnessTable();
}

void *OUTLINED_FUNCTION_93_14(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_94_14(uint64_t a1)
{
  v2 = *(a1 + 16);

  return sub_2177528F8();
}

Swift::Int __swiftcall LegacyModelKeepLocalManagedStatus.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = objc_opt_self();

  return [v2 rawValueForKeepLocalManagedStatus_];
}

uint64_t sub_21766FE74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64616F6C6E776F64 && a2 == 0xEB00000000676E69;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E6974696177 && a2 == 0xE700000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x46676E6974696177 && a2 == 0xEF7972746552726FLL;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x52676E69646E6570 && a2 == 0xEC0000006E697065)
            {

              return 6;
            }

            else
            {
              v12 = sub_217753058();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2176700C4(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x64616F6C6E776F64;
      break;
    case 3:
      result = 0x676E6974696177;
      break;
    case 4:
      result = 0x46676E6974696177;
      break;
    case 5:
      result = 0x656C6C65636E6163;
      break;
    case 6:
      result = 0x52676E69646E6570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21767019C(uint64_t a1)
{
  v2 = sub_217670BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176701D8(uint64_t a1)
{
  v2 = sub_217670BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21767021C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21766FE74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217670244(uint64_t a1)
{
  v2 = sub_217670B40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217670280(uint64_t a1)
{
  v2 = sub_217670B40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176702BC(uint64_t a1)
{
  v2 = sub_217670CE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176702F8(uint64_t a1)
{
  v2 = sub_217670CE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217670334(uint64_t a1)
{
  v2 = sub_217670D38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217670370(uint64_t a1)
{
  v2 = sub_217670D38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2176703AC(uint64_t a1)
{
  v2 = sub_217670D8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176703E8(uint64_t a1)
{
  v2 = sub_217670D8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217670424(uint64_t a1)
{
  v2 = sub_217670B94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217670460(uint64_t a1)
{
  v2 = sub_217670B94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21767049C(uint64_t a1)
{
  v2 = sub_217670C90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176704D8(uint64_t a1)
{
  v2 = sub_217670C90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217670514(uint64_t a1)
{
  v2 = sub_217670C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217670550(uint64_t a1)
{
  v2 = sub_217670C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LegacyModelKeepLocalManagedStatus.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAB0, &qword_21778D690);
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v93 = v6;
  v94 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_150();
  v92 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAB8, &qword_21778D698);
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v90 = v14;
  v91 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_150();
  v89 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAC0, &qword_21778D6A0);
  v21 = OUTLINED_FUNCTION_0_0(v20);
  v87 = v22;
  v88 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_150();
  v86 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAC8, &qword_21778D6A8);
  v29 = OUTLINED_FUNCTION_0_0(v28);
  v84 = v30;
  v85 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33, v34);
  OUTLINED_FUNCTION_150();
  v83 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAD0, &qword_21778D6B0);
  v37 = OUTLINED_FUNCTION_0_0(v36);
  v81 = v38;
  v82 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_150();
  v80 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAD8, &qword_21778D6B8);
  v45 = OUTLINED_FUNCTION_0_0(v44);
  v78 = v46;
  v79 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v76 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAE0, &qword_21778D6C0);
  OUTLINED_FUNCTION_0_0(v53);
  v77 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v76 - v59;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BAE8, &qword_21778D6C8);
  OUTLINED_FUNCTION_0_0(v95);
  v62 = v61;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v65, v66);
  v68 = &v76 - v67;
  v69 = *v2;
  v70 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217670B40();
  sub_2177532F8();
  v71 = (v62 + 8);
  switch(v69)
  {
    case 1:
      v97 = 1;
      sub_217670D38();
      OUTLINED_FUNCTION_2_117();
      v75 = v78;
      v74 = v79;
      goto LABEL_9;
    case 2:
      v98 = 2;
      sub_217670CE4();
      v52 = v80;
      OUTLINED_FUNCTION_2_117();
      v75 = v81;
      v74 = v82;
      goto LABEL_9;
    case 3:
      v99 = 3;
      sub_217670C90();
      v52 = v83;
      OUTLINED_FUNCTION_2_117();
      v75 = v84;
      v74 = v85;
      goto LABEL_9;
    case 4:
      v100 = 4;
      sub_217670C3C();
      v52 = v86;
      OUTLINED_FUNCTION_2_117();
      v75 = v87;
      v74 = v88;
      goto LABEL_9;
    case 5:
      v101 = 5;
      sub_217670BE8();
      v52 = v89;
      OUTLINED_FUNCTION_2_117();
      v75 = v90;
      v74 = v91;
      goto LABEL_9;
    case 6:
      v102 = 6;
      sub_217670B94();
      v52 = v92;
      OUTLINED_FUNCTION_2_117();
      v75 = v93;
      v74 = v94;
LABEL_9:
      (*(v75 + 8))(v52, v74);
      result = (*v71)(v68, v53);
      break;
    default:
      v96 = 0;
      sub_217670D8C();
      v72 = v95;
      sub_217752EE8();
      (*(v77 + 8))(v60, v53);
      result = (*v71)(v68, v72);
      break;
  }

  return result;
}

unint64_t sub_217670B40()
{
  result = qword_27CB2BAF0;
  if (!qword_27CB2BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BAF0);
  }

  return result;
}

unint64_t sub_217670B94()
{
  result = qword_27CB2BAF8;
  if (!qword_27CB2BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BAF8);
  }

  return result;
}

unint64_t sub_217670BE8()
{
  result = qword_27CB2BB00;
  if (!qword_27CB2BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB00);
  }

  return result;
}

unint64_t sub_217670C3C()
{
  result = qword_27CB2BB08;
  if (!qword_27CB2BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB08);
  }

  return result;
}

unint64_t sub_217670C90()
{
  result = qword_27CB2BB10;
  if (!qword_27CB2BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB10);
  }

  return result;
}

unint64_t sub_217670CE4()
{
  result = qword_27CB2BB18;
  if (!qword_27CB2BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB18);
  }

  return result;
}

unint64_t sub_217670D38()
{
  result = qword_27CB2BB20;
  if (!qword_27CB2BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB20);
  }

  return result;
}

unint64_t sub_217670D8C()
{
  result = qword_27CB2BB28;
  if (!qword_27CB2BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB28);
  }

  return result;
}

uint64_t LegacyModelKeepLocalManagedStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t LegacyModelKeepLocalManagedStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v114 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB30, &qword_21778D6D0);
  v110 = OUTLINED_FUNCTION_0_0(v3);
  v111 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_150();
  v117 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB38, &qword_21778D6D8);
  v108 = OUTLINED_FUNCTION_0_0(v10);
  v109 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_150();
  v116 = v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB40, &qword_21778D6E0);
  OUTLINED_FUNCTION_0_0(v102);
  v107 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_150();
  v113 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB48, &qword_21778D6E8);
  v24 = OUTLINED_FUNCTION_0_0(v23);
  v105 = v25;
  v106 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_150();
  v112 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB50, &qword_21778D6F0);
  v32 = OUTLINED_FUNCTION_0_0(v31);
  v103 = v33;
  v104 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_150();
  v115 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB58, &qword_21778D6F8);
  v40 = OUTLINED_FUNCTION_0_0(v39);
  v100 = v41;
  v101 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44, v45);
  v47 = v94 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB60, &qword_21778D700);
  OUTLINED_FUNCTION_0_0(v48);
  v99 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v52, v53);
  v55 = v94 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BB68, &unk_21778D708);
  OUTLINED_FUNCTION_0_0(v56);
  v58 = v57;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v61, v62);
  v64 = v94 - v63;
  v65 = a1[3];
  v66 = a1[4];
  v118 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v65);
  sub_217670B40();
  v67 = v119;
  sub_2177532C8();
  if (v67)
  {
    return __swift_destroy_boxed_opaque_existential_1(v118);
  }

  v97 = v55;
  v96 = v48;
  v98 = v47;
  v69 = v115;
  v68 = v116;
  v70 = v117;
  v119 = v56;
  v71 = sub_217752EB8();
  result = sub_21733CF68(v71, 0);
  if (v74 == v75 >> 1)
  {
    goto LABEL_7;
  }

  v94[1] = 0;
  if (v74 >= (v75 >> 1))
  {
    __break(1u);
    return result;
  }

  v95 = *(v73 + v74);
  sub_21733CF64(v74 + 1);
  v77 = v76;
  v79 = v78;
  swift_unknownObjectRelease();
  if (v77 != v79 >> 1)
  {
LABEL_7:
    v84 = v64;
    v85 = sub_217752B48();
    swift_allocError();
    v87 = v86;
    v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
    *v87 = &type metadata for LegacyModelKeepLocalManagedStatus;
    v89 = v119;
    sub_217752DF8();
    sub_217752B08();
    (*(*(v85 - 8) + 104))(v87, *MEMORY[0x277D84160], v85);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v58 + 8))(v84, v89);
    return __swift_destroy_boxed_opaque_existential_1(v118);
  }

  v80 = v58;
  v81 = v114;
  v82 = v119;
  switch(v95)
  {
    case 1:
      v121 = 1;
      sub_217670D38();
      v70 = v98;
      OUTLINED_FUNCTION_1_124();
      swift_unknownObjectRelease();
      v92 = v100;
      v91 = v101;
      goto LABEL_15;
    case 2:
      v122 = 2;
      sub_217670CE4();
      OUTLINED_FUNCTION_1_124();
      swift_unknownObjectRelease();
      (*(v103 + 8))(v69, v104);
      break;
    case 3:
      v123 = 3;
      sub_217670C90();
      v70 = v112;
      OUTLINED_FUNCTION_1_124();
      swift_unknownObjectRelease();
      v92 = v105;
      v91 = v106;
      goto LABEL_15;
    case 4:
      v124 = 4;
      sub_217670C3C();
      v90 = v113;
      OUTLINED_FUNCTION_1_124();
      swift_unknownObjectRelease();
      (*(v107 + 8))(v90, v102);
      break;
    case 5:
      v125 = 5;
      sub_217670BE8();
      OUTLINED_FUNCTION_1_124();
      swift_unknownObjectRelease();
      (*(v109 + 8))(v68, v108);
      break;
    case 6:
      v126 = 6;
      sub_217670B94();
      OUTLINED_FUNCTION_1_124();
      swift_unknownObjectRelease();
      v91 = v110;
      v92 = v111;
LABEL_15:
      (*(v92 + 8))(v70, v91);
      break;
    default:
      v120 = 0;
      sub_217670D8C();
      v83 = v97;
      OUTLINED_FUNCTION_1_124();
      swift_unknownObjectRelease();
      (*(v99 + 8))(v83, v96);
      break;
  }

  (*(v80 + 8))(v64, v82);
  v93 = v118;
  *v81 = v95;
  return __swift_destroy_boxed_opaque_existential_1(v93);
}

MusicKit::LegacyModelKeepLocalManagedStatus_optional __swiftcall LegacyModelKeepLocalManagedStatus.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() keepLocalManagedStatusForRawValue_];
  v4 = 7;
  if (v3 < 7)
  {
    v4 = v3;
  }

  *v2 = v4;
  return v3;
}

Swift::Int sub_21767171C@<X0>(Swift::Int *a1@<X8>)
{
  result = LegacyModelKeepLocalManagedStatus.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t LegacyModelKeepLocalManagedStatus.description.getter()
{
  result = 0x656E6F6E2ELL;
  switch(*v0)
  {
    case 1:
    case 2:
      result = OUTLINED_FUNCTION_8_76();
      break;
    case 3:
      result = OUTLINED_FUNCTION_6_92();
      break;
    case 4:
      result = OUTLINED_FUNCTION_7_72();
      break;
    case 5:
      result = OUTLINED_FUNCTION_4_108();
      break;
    case 6:
      result = OUTLINED_FUNCTION_9_75();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_217671858()
{
  result = qword_27CB2BB70;
  if (!qword_27CB2BB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BB78, &qword_21778D718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB70);
  }

  return result;
}

unint64_t sub_2176718C0()
{
  result = qword_27CB2BB80;
  if (!qword_27CB2BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB80);
  }

  return result;
}

_BYTE *sub_217671924(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217671A74()
{
  result = qword_27CB2BB88;
  if (!qword_27CB2BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB88);
  }

  return result;
}

unint64_t sub_217671ACC()
{
  result = qword_27CB2BB90;
  if (!qword_27CB2BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB90);
  }

  return result;
}

unint64_t sub_217671B24()
{
  result = qword_27CB2BB98;
  if (!qword_27CB2BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB98);
  }

  return result;
}

unint64_t sub_217671B7C()
{
  result = qword_27CB2BBA0;
  if (!qword_27CB2BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBA0);
  }

  return result;
}

unint64_t sub_217671BD4()
{
  result = qword_27CB2BBA8;
  if (!qword_27CB2BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBA8);
  }

  return result;
}

unint64_t sub_217671C2C()
{
  result = qword_27CB2BBB0;
  if (!qword_27CB2BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBB0);
  }

  return result;
}

unint64_t sub_217671C84()
{
  result = qword_27CB2BBB8;
  if (!qword_27CB2BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBB8);
  }

  return result;
}

unint64_t sub_217671CDC()
{
  result = qword_27CB2BBC0;
  if (!qword_27CB2BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBC0);
  }

  return result;
}

unint64_t sub_217671D34()
{
  result = qword_27CB2BBC8;
  if (!qword_27CB2BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBC8);
  }

  return result;
}

unint64_t sub_217671D8C()
{
  result = qword_27CB2BBD0;
  if (!qword_27CB2BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBD0);
  }

  return result;
}

unint64_t sub_217671DE4()
{
  result = qword_27CB2BBD8;
  if (!qword_27CB2BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBD8);
  }

  return result;
}

unint64_t sub_217671E3C()
{
  result = qword_27CB2BBE0;
  if (!qword_27CB2BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBE0);
  }

  return result;
}

unint64_t sub_217671E94()
{
  result = qword_27CB2BBE8;
  if (!qword_27CB2BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBE8);
  }

  return result;
}

unint64_t sub_217671EEC()
{
  result = qword_27CB2BBF0;
  if (!qword_27CB2BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBF0);
  }

  return result;
}

unint64_t sub_217671F44()
{
  result = qword_27CB2BBF8;
  if (!qword_27CB2BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBF8);
  }

  return result;
}

unint64_t sub_217671F9C()
{
  result = qword_27CB2BC00;
  if (!qword_27CB2BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC00);
  }

  return result;
}

unint64_t sub_217671FF4()
{
  result = qword_27CB2BC08;
  if (!qword_27CB2BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC08);
  }

  return result;
}

uint64_t CloudSnippet.Kind.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CloudSnippet.Kind.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t sub_2176720FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CloudSnippet.Kind.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_21767213C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudSnippet.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217672218()
{
  result = qword_27CB2BC10;
  if (!qword_27CB2BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC10);
  }

  return result;
}

unint64_t sub_217672280()
{
  result = qword_27CB2BC18;
  if (!qword_27CB2BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC18);
  }

  return result;
}

MusicKit::Playlist::Kind_optional __swiftcall CloudPlaylist.Kind.convertToPlaylistKind()()
{
  v2 = v0;
  result.value = 101;
  v5 = *v1;
  v4 = v1[1];
  v6 = *v1 == 0x6169726F74696465 && v4 == 0xE90000000000006CLL;
  if (v6 || (result.value = OUTLINED_FUNCTION_196(), (result.value & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    result.value = 101;
    v8 = v5 == 0x6C616E7265747865 && v4 == 0xE800000000000000;
    if (v8 || (result.value = OUTLINED_FUNCTION_196(), (result.value & 1) != 0))
    {
      v7 = 1;
    }

    else
    {
      result.value = 112;
      v9 = v5 == 0x6C616E6F73726570 && v4 == 0xEC00000078696D2DLL;
      if (v9 || (result.value = OUTLINED_FUNCTION_196(), (result.value & 1) != 0))
      {
        v7 = 2;
      }

      else
      {
        result.value = 114;
        v10 = v5 == 0x79616C706572 && v4 == 0xE600000000000000;
        if (v10 || (result.value = OUTLINED_FUNCTION_196(), (result.value & 1) != 0))
        {
          v7 = 3;
        }

        else
        {
          result.value = 117;
          v7 = 4;
          if (v5 != 0x6168732D72657375 || v4 != 0xEB00000000646572)
          {
            result.value = OUTLINED_FUNCTION_196();
            if (result.value)
            {
              v7 = 4;
            }

            else
            {
              v7 = 5;
            }
          }
        }
      }
    }
  }

  *v2 = v7;
  return result;
}

uint64_t CloudPlaylist.Kind.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CloudPlaylist.Kind.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t sub_217672518@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CloudPlaylist.Kind.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_217672558@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPlaylist.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217672634()
{
  result = qword_27CB2BC20;
  if (!qword_27CB2BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC20);
  }

  return result;
}

unint64_t sub_21767269C()
{
  result = qword_280BE44A0;
  if (!qword_280BE44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE44A0);
  }

  return result;
}

void *CloudFlexAnalysis.init(id:attributes:relationships:views:meta:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  *a7 = a2;
  *(a7 + 8) = a3;
  result = memcpy((a7 + 16), __src, 0x88uLL);
  *(a7 + 152) = v8;
  *(a7 + 153) = v9;
  *(a7 + 154) = v10;
  return result;
}

__n128 CloudFlexAnalysis.Attributes.init(arousal:entryPoints:exitPoints:valence:videoEvents:visualTempo:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v7;
  v8 = a4[1];
  *(a7 + 48) = *a4;
  *(a7 + 64) = v8;
  *(a7 + 80) = *a5;
  result = *a6;
  v10 = *(a6 + 16);
  *(a7 + 104) = *a6;
  v11 = *(a5 + 16);
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 96) = v11;
  *(a7 + 120) = v10;
  return result;
}

uint64_t sub_217672788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

uint64_t CloudFlexAnalysis.Attributes.videoEvents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2176727F8(v2);
}

uint64_t sub_2176727F8(uint64_t result)
{
  if (result)
  {
    sub_217751DE8();
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

BOOL static CloudFlexAnalysis.Attributes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v123 = a1[5];
  v124 = a1[4];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v10 = a1[10];
  v11 = a1[11];
  v13 = a1[12];
  v12 = a1[13];
  v15 = a1[14];
  v14 = a1[15];
  v16 = a1[16];
  v18 = *a2;
  v17 = a2[1];
  v19 = a2[2];
  v20 = a2[3];
  v21 = a2[4];
  v121 = a2[7];
  v122 = a2[5];
  v22 = a2[8];
  v119 = a2[9];
  v120 = a2[6];
  v24 = a2[10];
  v23 = a2[11];
  v25 = a2[12];
  v26 = a2[13];
  v28 = a2[14];
  v27 = a2[15];
  v29 = a2[16];
  if (!v5)
  {
    if (!v20)
    {
      v114 = a2[8];
      v115 = v9;
      v116 = v7;
      v117 = v6;
      v118 = v8;
      v109 = a2[12];
      v110 = a2[10];
      v107 = v14;
      v108 = a2[11];
      v111 = v10;
      v112 = v11;
      v113 = v13;
      v101 = a2[16];
      v102 = a2[13];
      v103 = a2[14];
      v104 = a2[15];
      v100 = v16;
      v105 = v12;
      v106 = v15;
      v52 = OUTLINED_FUNCTION_8_77();
      sub_217672788(v52, v53, v54, 0);
      v55 = OUTLINED_FUNCTION_4_109();
      sub_217672788(v55, v56, v57, 0);
      v58 = OUTLINED_FUNCTION_8_77();
      sub_2176742C8(v58, v59, v60, 0);
      goto LABEL_11;
    }

LABEL_6:
    v125 = v3;
    v126 = v2;
    v127 = v4;
    v128 = v5;
    v129 = v18;
    v130 = v17;
    v131 = v19;
    v132 = v20;
    v44 = OUTLINED_FUNCTION_8_77();
    sub_217672788(v44, v45, v46, v5);
    v47 = OUTLINED_FUNCTION_4_109();
    v50 = v20;
LABEL_7:
    sub_217672788(v47, v48, v49, v50);
    sub_217674260(&v125);
    return 0;
  }

  if (!v20)
  {
    goto LABEL_6;
  }

  v114 = a2[8];
  v115 = v9;
  v116 = v7;
  v117 = v6;
  v118 = v8;
  v109 = a2[12];
  v110 = a2[10];
  v107 = v14;
  v108 = a2[11];
  v111 = v10;
  v112 = v11;
  v113 = v13;
  v101 = a2[16];
  v102 = a2[13];
  v103 = a2[14];
  v104 = a2[15];
  v100 = v16;
  v105 = v12;
  v106 = v15;
  v30 = OUTLINED_FUNCTION_8_77();
  sub_217672788(v30, v31, v32, v5);
  v33 = OUTLINED_FUNCTION_4_109();
  sub_217672788(v33, v34, v35, v20);
  LOBYTE(v125) = v17 & 1;
  sub_2172A9414(v3, v2 & 1, v4, v5, v18, v17 & 1, v19, v20);
  v37 = v36;
  v38 = OUTLINED_FUNCTION_4_109();
  sub_2176742C8(v38, v39, v40, v20);
  v41 = OUTLINED_FUNCTION_8_77();
  sub_2176742C8(v41, v42, v43, v5);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (v124)
  {
    if (!v21)
    {
      return 0;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_131_1();
    sub_217271D10();
    v62 = v61;

    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v63 = v123;
  if (v123)
  {
    if (!v122)
    {
      return 0;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_93();
    sub_217271D10();
    v63 = v64;

    if ((v63 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v122)
  {
    return 0;
  }

  v65 = v115;
  if (!v115)
  {
    v66 = v117;
    v67 = v118;
    v68 = v116;
    v69 = v119;
    if (!v119)
    {
      sub_217672788(v116, v117, v118, 0);
      sub_217672788(v120, v121, v114, 0);
      v79 = OUTLINED_FUNCTION_4_109();
      sub_2176742C8(v79, v80, v81, 0);
      goto LABEL_29;
    }

LABEL_26:
    v125 = v68;
    v126 = v66;
    v127 = v67;
    v128 = v115;
    v129 = v120;
    v130 = v121;
    v78 = v114;
LABEL_27:
    v131 = v78;
    v132 = v69;
    sub_217672788(v68, v66, v67, v65);
    v47 = OUTLINED_FUNCTION_4_109();
    v50 = v69;
    goto LABEL_7;
  }

  v66 = v117;
  v67 = v118;
  v68 = v116;
  v69 = v119;
  if (!v119)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_87();
  v71 = v70;
  sub_217672788(v72, v73, v74, v70);
  sub_217672788(v120, v121, v114, v119);
  OUTLINED_FUNCTION_14_58();
  OUTLINED_FUNCTION_42_35();
  v75 = OUTLINED_FUNCTION_6_8();
  sub_2176742C8(v75, v76, v77, v71);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  if (!v111)
  {
    v87 = v113;
    v82 = v110;
    if (!v110)
    {
      sub_2176727F8(0);
      sub_2176727F8(0);
      sub_21767430C(0);
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v82 = v110;
  if (!v110)
  {
LABEL_36:
    sub_2176727F8(v111);
    sub_2176727F8(v82);
    v90 = OUTLINED_FUNCTION_4_109();
    sub_21767430C(v90);
    v91 = v82;
LABEL_39:
    sub_21767430C(v91);
    return 0;
  }

  if ((sub_217271798(v111, v110) & 1) == 0)
  {
    v92 = OUTLINED_FUNCTION_6_8();
    sub_2176727F8(v92);
    sub_2176727F8(v110);
    goto LABEL_38;
  }

  v83 = sub_2172717F0(v112, v108);
  v84 = OUTLINED_FUNCTION_6_8();
  sub_2176727F8(v84);
  v85 = OUTLINED_FUNCTION_5_3();
  sub_2176727F8(v85);
  if ((v83 & 1) == 0)
  {
LABEL_38:
    v93 = OUTLINED_FUNCTION_5_3();
    sub_21767430C(v93);
    v91 = OUTLINED_FUNCTION_6_8();
    goto LABEL_39;
  }

  sub_217261FB0(v113, v109);
  v87 = v86;
  v88 = OUTLINED_FUNCTION_5_3();
  sub_21767430C(v88);
  v89 = OUTLINED_FUNCTION_6_8();
  sub_21767430C(v89);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v65 = v100;
  if (!v100)
  {
    v67 = v107;
    v69 = v101;
    if (!v101)
    {
      sub_217672788(v105, v106, v107, 0);
      sub_217672788(v102, v103, v104, 0);
      v97 = OUTLINED_FUNCTION_4_109();
      sub_2176742C8(v97, v98, v99, 0);
      return 1;
    }

    goto LABEL_46;
  }

  v67 = v107;
  v69 = v101;
  if (!v101)
  {
LABEL_46:
    v68 = v105;
    v66 = v106;
    v125 = v105;
    v126 = v106;
    v127 = v67;
    v128 = v100;
    v129 = v102;
    v130 = v103;
    v78 = v104;
    goto LABEL_27;
  }

  sub_217672788(v105, v106, v107, v100);
  sub_217672788(v102, v103, v104, v101);
  OUTLINED_FUNCTION_14_58();
  OUTLINED_FUNCTION_42_35();
  v94 = OUTLINED_FUNCTION_6_8();
  sub_2176742C8(v94, v95, v96, v100);
  return (v87 & 1) != 0;
}

uint64_t sub_217672D44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6173756F7261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696F507972746E65 && a2 == 0xEB0000000073746ELL;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E696F5074697865 && a2 == 0xEA00000000007374;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6576456F65646976 && a2 == 0xEB0000000073746ELL;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65546C6175736976 && a2 == 0xEB000000006F706DLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_217753058();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_217672F44(char a1)
{
  result = 0x6C6173756F7261;
  switch(a1)
  {
    case 1:
      result = 0x696F507972746E65;
      break;
    case 2:
      result = 0x6E696F5074697865;
      break;
    case 3:
      result = 0x65636E656C6176;
      break;
    case 4:
      result = 0x6576456F65646976;
      break;
    case 5:
      result = 0x65546C6175736976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217673024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217672D44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21767304C(uint64_t a1)
{
  v2 = sub_217674358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217673088(uint64_t a1)
{
  v2 = sub_217674358();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudFlexAnalysis.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC48, &qword_21778E148);
  OUTLINED_FUNCTION_0_0(v28);
  v29 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_87_2();
  v10 = *v0;
  v11 = v0[1];
  v13 = v0[2];
  v12 = v0[3];
  v26 = v0[5];
  v27 = v0[4];
  v24 = v0[7];
  v25 = v0[6];
  v22 = v0[9];
  v23 = v0[8];
  v20 = v0[11];
  v21 = v0[10];
  v18 = v0[13];
  v19 = v0[12];
  v16 = v0[15];
  v17 = v0[14];
  v15 = v0[16];
  v14 = v4[4];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_217672788(v10, v11, v13, v12);
  sub_217674358();
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC58, &qword_21778E150);
  sub_2176743AC();
  OUTLINED_FUNCTION_7_73();
  sub_217752F38();
  sub_2176742C8(v10, v11, v13, v12);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC78, &qword_21778E158);
    sub_217676CB4(&unk_27CB2BC80);
    OUTLINED_FUNCTION_7_73();
    OUTLINED_FUNCTION_49_29();
    OUTLINED_FUNCTION_7_73();
    OUTLINED_FUNCTION_49_29();
    sub_217672788(v25, v24, v23, v22);
    OUTLINED_FUNCTION_7_73();
    sub_217752F38();
    sub_2176742C8(v25, v24, v23, v22);
    sub_2176727F8(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BCA8, &qword_21778E168);
    sub_217674614();
    OUTLINED_FUNCTION_7_73();
    sub_217752F38();
    sub_21767430C(v21);
    sub_217672788(v18, v17, v16, v15);
    OUTLINED_FUNCTION_7_73();
    sub_217752F38();
    sub_2176742C8(v18, v17, v16, v15);
  }

  (*(v29 + 8))(v2, v28);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t CloudFlexAnalysis.Attributes.hash(into:)(const void *a1)
{
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v17 = v1[6];
  v18 = v1[7];
  v6 = v1[9];
  v19 = v1[8];
  v20 = v1[11];
  v21 = v1[12];
  v22 = v1[13];
  v23 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  v24 = v1[10];
  if (v4)
  {
    v9 = v1[2];
    v10 = *(v1 + 2);
    v11 = *v1;
    OUTLINED_FUNCTION_24();
    CloudFlexAnalysis.CloudSampledValues.hash(into:)(a1);
    sub_217751DE8();
    sub_217265A08(a1, v4);

    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_24();
      sub_2172822E0(a1, v3);
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_6:
  if (v5)
  {
    OUTLINED_FUNCTION_24();
    v12 = OUTLINED_FUNCTION_131_1();
    sub_2172822E0(v12, v13);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    if (v6)
    {
LABEL_8:
      OUTLINED_FUNCTION_24();
      CloudFlexAnalysis.CloudSampledValues.hash(into:)(a1);
      sub_217751DE8();
      sub_217265A08(a1, v6);

      if (v24)
      {
        goto LABEL_9;
      }

LABEL_15:
      OUTLINED_FUNCTION_25();
      if (v8)
      {
        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_25();
    }
  }

  OUTLINED_FUNCTION_25();
  if (!v24)
  {
    goto LABEL_15;
  }

LABEL_9:
  OUTLINED_FUNCTION_24();
  sub_217282254(a1, v24);
  sub_2172822A0(a1, v20);
  sub_217751DE8();
  v14 = OUTLINED_FUNCTION_93();
  sub_217265A08(v14, v15);

  if (!v8)
  {
    return OUTLINED_FUNCTION_25();
  }

LABEL_10:
  OUTLINED_FUNCTION_24();
  CloudFlexAnalysis.CloudSampledValues.hash(into:)(a1);
  sub_217751DE8();
  sub_217265A08(a1, v8);
}

uint64_t CloudFlexAnalysis.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudFlexAnalysis.Attributes.hash(into:)(v1);
  return sub_217753238();
}

void CloudFlexAnalysis.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BCC8, &qword_21778E170);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_128();
  v10 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_217674358();
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC58, &qword_21778E150);
    sub_217676C28();
    OUTLINED_FUNCTION_34_36();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_4_7();
    sub_217752E58();
    v17 = v4;
    v29 = v33;
    v30 = v34;
    v23 = v36;
    v24 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC78, &qword_21778E158);
    sub_217676CB4(&unk_27CB2BCD8);
    OUTLINED_FUNCTION_34_36();
    OUTLINED_FUNCTION_4_7();
    sub_217752E58();
    v26 = v33;
    OUTLINED_FUNCTION_34_36();
    OUTLINED_FUNCTION_4_7();
    sub_217752E58();
    v25 = v33;
    OUTLINED_FUNCTION_34_36();
    OUTLINED_FUNCTION_4_7();
    sub_217752E58();
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v19 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BCA8, &qword_21778E168);
    LOBYTE(v32[0]) = 4;
    sub_217676DAC();
    OUTLINED_FUNCTION_34_36();
    OUTLINED_FUNCTION_10_62();
    sub_217752E58();
    v12 = v33;
    v11 = v34;
    v28 = v35;
    OUTLINED_FUNCTION_4_7();
    sub_217752E58();
    v27 = v34;
    v13 = OUTLINED_FUNCTION_3_108();
    v14(v13);
    v31 = v50;
    v18 = v51;
    v15 = v53;
    v16 = v52;
    v32[0] = v29;
    v32[1] = v30;
    v32[2] = v24;
    v32[3] = v23;
    v32[4] = v26;
    v32[5] = v25;
    v32[6] = v20;
    v32[7] = v21;
    v32[8] = v22;
    v32[9] = v19;
    v32[10] = v12;
    v32[11] = v11;
    v32[12] = v28;
    v32[13] = v50;
    v32[14] = v51;
    v32[15] = v52;
    v32[16] = v53;
    memcpy(v17, v32, 0x88uLL);
    sub_217676E38(v32, &v33);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v33 = v29;
    v34 = v30;
    v35 = v24;
    v36 = v23;
    v37 = v26;
    v38 = v25;
    v39 = v20;
    v40 = v21;
    v41 = v22;
    v42 = v19;
    v43 = v12;
    v44 = v27;
    v45 = v28;
    v46 = v31;
    v47 = v18;
    v48 = v16;
    v49 = v15;
    sub_217676E70(&v33);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217673B7C()
{
  sub_2177531E8();
  CloudFlexAnalysis.Attributes.hash(into:)(v1);
  return sub_217753238();
}

MusicKit::CloudFlexAnalysis::CloudEvents __swiftcall CloudFlexAnalysis.CloudEvents.init(timeInSeconds:score:)(Swift::OpaquePointer timeInSeconds, Swift::OpaquePointer score)
{
  v2->_rawValue = timeInSeconds._rawValue;
  v2[1]._rawValue = score._rawValue;
  result.score = score;
  result.timeInSeconds = timeInSeconds;
  return result;
}

uint64_t static CloudFlexAnalysis.CloudEvents.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_217271798(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_93();

  return sub_2172717F0(v4, v5);
}

uint64_t sub_217673C24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_217673CF0(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x65536E49656D6974;
  }
}

uint64_t sub_217673D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217673C24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217673D78(uint64_t a1)
{
  v2 = sub_217676EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217673DB4(uint64_t a1)
{
  v2 = sub_217676EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudFlexAnalysis.CloudEvents.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BCF0, &qword_21778E178);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_87_2();
  v11 = *v0;
  v16 = v0[1];
  v12 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  v13 = sub_217676EA0();
  sub_217751DE8();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
  OUTLINED_FUNCTION_33_41();
  sub_217676F54(v14);
  OUTLINED_FUNCTION_18_52();
  sub_217752F88();

  if (!v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6F0, &qword_21778B860);
    OUTLINED_FUNCTION_33_41();
    sub_217676EF4(v15);
    OUTLINED_FUNCTION_18_52();
    sub_217752F88();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudFlexAnalysis.CloudEvents.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_217282254(a1, v2);
  v4 = OUTLINED_FUNCTION_93();

  sub_2172822A0(v4, v5);
}

uint64_t CloudFlexAnalysis.CloudEvents.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_238();
  sub_217282254(v4, v1);
  sub_2172822A0(v4, v2);
  return sub_217753238();
}

void CloudFlexAnalysis.CloudEvents.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD00, &qword_21778E190);
  OUTLINED_FUNCTION_0_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_128();
  v22 = v12[3];
  v23 = v12[4];
  v24 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_160(v24, v25);
  sub_217676EA0();
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_32();
    sub_217676F54(v26);
    OUTLINED_FUNCTION_10_62();
    sub_217752EA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6F0, &qword_21778B860);
    OUTLINED_FUNCTION_32();
    sub_217676EF4(v27);
    OUTLINED_FUNCTION_10_62();
    sub_217752EA8();
    v28 = *(v17 + 8);
    v29 = OUTLINED_FUNCTION_5_3();
    v30(v29);
    *v14 = a10;
    v14[1] = a10;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217674260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC40, &qword_21778E140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2176742C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_21767430C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_217674358()
{
  result = qword_27CB2BC50;
  if (!qword_27CB2BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC50);
  }

  return result;
}

unint64_t sub_2176743AC()
{
  result = qword_27CB2BC60;
  if (!qword_27CB2BC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BC58, &qword_21778E150);
    sub_217674438();
    sub_21767448C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC60);
  }

  return result;
}

unint64_t sub_217674438()
{
  result = qword_27CB2BC68;
  if (!qword_27CB2BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC68);
  }

  return result;
}

unint64_t sub_21767448C()
{
  result = qword_27CB2BC70;
  if (!qword_27CB2BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC70);
  }

  return result;
}

unint64_t sub_2176744E0()
{
  result = qword_27CB2BC88;
  if (!qword_27CB2BC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BC90, &qword_21778E160);
    sub_21767456C();
    sub_2176745C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC88);
  }

  return result;
}

unint64_t sub_21767456C()
{
  result = qword_27CB2BC98;
  if (!qword_27CB2BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC98);
  }

  return result;
}

unint64_t sub_2176745C0()
{
  result = qword_27CB2BCA0;
  if (!qword_27CB2BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCA0);
  }

  return result;
}

unint64_t sub_217674614()
{
  result = qword_27CB2BCB0;
  if (!qword_27CB2BCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BCA8, &qword_21778E168);
    sub_2176746A0();
    sub_2176746F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCB0);
  }

  return result;
}

unint64_t sub_2176746A0()
{
  result = qword_27CB2BCB8;
  if (!qword_27CB2BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCB8);
  }

  return result;
}

unint64_t sub_2176746F4()
{
  result = qword_27CB2BCC0;
  if (!qword_27CB2BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCC0);
  }

  return result;
}

uint64_t sub_217674750()
{
  v3 = *v0;
  sub_2177531E8();
  CloudFlexAnalysis.CloudEvents.hash(into:)(v2);
  return sub_217753238();
}

uint64_t CloudFlexAnalysis.CloudTag.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudFlexAnalysis.CloudTag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532A8();
  if (!v2)
  {
    OUTLINED_FUNCTION_160(v10, v10[3]);
    v6 = sub_217753078();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudFlexAnalysis.CloudTag.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_2176749C8@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = CloudFlexAnalysis.CloudTag.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217674A08@<X0>(uint64_t *a1@<X8>)
{
  result = CloudFlexAnalysis.CloudTag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CloudFlexAnalysis.CloudPivotPoints.fadeToBlack.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

BOOL static CloudFlexAnalysis.CloudPivotPoints.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 16);
  v9 = *(a1 + 16);
  if ((sub_217271798(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_217271798(v9, v8) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v12 = OUTLINED_FUNCTION_93();
    return (sub_2172849CC(v12, v13) & 1) != 0;
  }

  return !v7;
}

uint64_t sub_217674B34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002177B4740 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756C61566E696167 && a2 == 0xE900000000000065;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C426F5465646166 && a2 == 0xEB000000006B6361;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1936154996 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_217753058();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_217674CF0(char a1)
{
  result = 0x65536E49656D6974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x756C61566E696167;
      break;
    case 3:
      result = 0x6C426F5465646166;
      break;
    case 4:
      result = 1936154996;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217674DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217674B34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217674DD0(uint64_t a1)
{
  v2 = sub_217676FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217674E0C(uint64_t a1)
{
  v2 = sub_217676FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudFlexAnalysis.CloudPivotPoints.encode(to:)(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD08, &qword_21778E198);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_87_2();
  v12 = *v1;
  v18 = v1[2];
  v19 = v1[1];
  v17 = v1[3];
  v16 = *(v1 + 32);
  v13 = v1[5];
  v14 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_217676FB4();
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  OUTLINED_FUNCTION_44_2();
  sub_217752F68();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_33_41();
    sub_217676F54(v15);
    OUTLINED_FUNCTION_32_40();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_44_2();
    sub_217752F88();
    OUTLINED_FUNCTION_32_40();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_44_2();
    sub_217752F88();
    OUTLINED_FUNCTION_44_2();
    sub_217752F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD18, &qword_21778E1A0);
    sub_217677008(&unk_27CB2BD20);
    OUTLINED_FUNCTION_32_40();
    OUTLINED_FUNCTION_18_52();
    sub_217752F38();
  }

  (*(v7 + 8))(v3, v5);
  OUTLINED_FUNCTION_46_1();
}

uint64_t CloudFlexAnalysis.CloudPivotPoints.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA3580](*&v3);
  sub_217282254(a1, v4);
  sub_217282254(a1, v5);
  if (v7 != 1)
  {
    sub_217753208();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x21CEA3580](v10);
    if (v8)
    {
      goto LABEL_5;
    }

    return sub_217753208();
  }

  sub_217753208();
  if (!v8)
  {
    return sub_217753208();
  }

LABEL_5:
  sub_217753208();

  return sub_2172849D8(a1, v8);
}

uint64_t CloudFlexAnalysis.CloudPivotPoints.hashValue.getter()
{
  v1 = v0[3];
  v2 = *(v0 + 32);
  v3 = v0[5];
  v6 = *v0;
  v7 = *(v0 + 1);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  OUTLINED_FUNCTION_238();
  CloudFlexAnalysis.CloudPivotPoints.hash(into:)(v5);
  return sub_217753238();
}

uint64_t CloudFlexAnalysis.CloudPivotPoints.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD30, &qword_21778E1A8);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v10 = a1[4];
  OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_217676FB4();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_45_34();
  sub_217752E88();
  v12 = v11;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
  OUTLINED_FUNCTION_32();
  sub_217676F54(v13);
  OUTLINED_FUNCTION_28_47();
  v15 = v23;
  OUTLINED_FUNCTION_28_47();
  v16 = v23;
  LOBYTE(v23) = 3;
  OUTLINED_FUNCTION_45_34();
  v17 = sub_217752E38();
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD18, &qword_21778E1A0);
  sub_217677008(&unk_27CB2BD38);
  sub_217752E58();
  v19 = OUTLINED_FUNCTION_9_76();
  v20(v19);
  *v22 = v12;
  *(v22 + 8) = v15;
  *(v22 + 16) = v16;
  *(v22 + 24) = v17;
  *(v22 + 32) = v21 & 1;
  *(v22 + 40) = v23;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217675578()
{
  v1 = v0[3];
  v2 = *(v0 + 32);
  v3 = v0[5];
  v6 = *v0;
  v7 = *(v0 + 1);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  sub_2177531E8();
  CloudFlexAnalysis.CloudPivotPoints.hash(into:)(v5);
  return sub_217753238();
}

uint64_t CloudFlexAnalysis.CloudSampledValues.samplingFrequency.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

BOOL static CloudFlexAnalysis.CloudSampledValues.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v5)
  {
    return v7 && (sub_217271798(v5, v7) & 1) != 0;
  }

  return !v7;
}

uint64_t sub_217675674(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176756C0(uint64_t a1)
{
  v2 = sub_21767711C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2176756FC(uint64_t a1)
{
  v2 = sub_21767711C();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudFlexAnalysis.CloudSampledValues.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD48, &qword_21778E1B0);
  OUTLINED_FUNCTION_0_0(v5);
  v16 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_87_2();
  v11 = *v0;
  v12 = *(v0 + 8);
  v15 = v0[2];
  v13 = v4[4];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_21767711C();
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  OUTLINED_FUNCTION_44_2();
  sub_217752F18();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_33_41();
    sub_217676F54(v14);
    OUTLINED_FUNCTION_18_52();
    sub_217752F38();
  }

  (*(v16 + 8))(v2, v5);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudFlexAnalysis.CloudSampledValues.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  if (*(v2 + 8) != 1)
  {
    v5 = *v2;
    sub_217753208();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x21CEA3580](v6);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_217753208();
    return;
  }

  sub_217753208();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_217753208();

  sub_217282254(a1, v4);
}

uint64_t CloudFlexAnalysis.CloudSampledValues.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[9] = *v0;
  v5 = v1;
  v6 = v2;
  sub_2177531E8();
  CloudFlexAnalysis.CloudSampledValues.hash(into:)(v4);
  return sub_217753238();
}

void CloudFlexAnalysis.CloudSampledValues.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD58, &qword_21778E1B8);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_128();
  v13 = v3[3];
  v14 = v3[4];
  v15 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_160(v15, v16);
  sub_21767711C();
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (!v0)
  {
    v17 = sub_217752E38();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_32();
    sub_217676F54(v20);
    sub_217752E58();
    (*(v8 + 8))(v1, v6);
    *v5 = v17;
    *(v5 + 8) = v19 & 1;
    *(v5 + 16) = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217675BAC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[9] = *v0;
  v5 = v1;
  v6 = v2;
  sub_2177531E8();
  CloudFlexAnalysis.CloudSampledValues.hash(into:)(v4);
  return sub_217753238();
}

uint64_t sub_217675C0C(uint64_t a1)
{
  v2 = sub_217677170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217675C48(uint64_t a1)
{
  v2 = sub_217677170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217675CEC(uint64_t a1)
{
  v2 = sub_2176771C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217675D28(uint64_t a1)
{
  v2 = sub_2176771C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217675E24(uint64_t a1)
{
  v2 = sub_217677218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217675E60(uint64_t a1)
{
  v2 = sub_217677218();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_217675EE0()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_128();
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_5_3();
  v16(v15);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudFlexAnalysis.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudFlexAnalysis.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CloudFlexAnalysis.attributes.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_47_27();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 16), 0x88uLL);
  return sub_217676E38(v8, v7);
}

uint64_t sub_217676148()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_27CB23B90 != -1)
  {
    swift_once();
  }

  v1 = unk_27CB26FE0;
  v2 = byte_27CB26FE8;
  *(v0 + 32) = qword_27CB26FD8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB2BC38 = v0;

  return sub_217751DE8();
}

uint64_t static CloudFlexAnalysis.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  memcpy(__dst, a1 + 2, sizeof(__dst));
  v6 = *(a1 + 152);
  v22 = *(a1 + 154);
  v23 = *(a1 + 153);
  v7 = *a2;
  v8 = a2[1];
  OUTLINED_FUNCTION_47_27();
  memcpy(v9, v10, v11);
  v12 = *(a2 + 152);
  v13 = *(a2 + 153);
  v14 = *(a2 + 154);
  v15 = v4 == v7 && v5 == v8;
  if (v15 || (v16 = sub_217753058(), result = 0, (v16 & 1) != 0))
  {
    sub_217676E38(__dst, v24);
    sub_217676E38(v28, v24);
    v18 = static CloudFlexAnalysis.Attributes.== infix(_:_:)(a1 + 2, a2 + 2);
    OUTLINED_FUNCTION_47_27();
    memcpy(v19, v20, v21);
    sub_217676E70(v25);
    memcpy(v26, a1 + 2, sizeof(v26));
    sub_217676E70(v26);
    if (v18 && v6 == v12 && v23 == v13)
    {
      return v22 ^ v14 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_217676354(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176763E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21767643C(uint64_t a1)
{
  v2 = sub_21767726C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217676478(uint64_t a1)
{
  v2 = sub_21767726C();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudFlexAnalysis.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD90, &qword_21778E1D8);
  OUTLINED_FUNCTION_0_0(v4);
  v27 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - v10;
  v12 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_47_27();
  memcpy(v14, v15, v16);
  v17 = *(v0 + 152);
  v25 = *(v0 + 153);
  v26 = v17;
  v24 = *(v0 + 154);
  v18 = v3[4];
  OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21767726C();
  sub_217751DE8();
  v19 = v11;
  sub_2177532F8();
  v31[0] = v12;
  v31[1] = v13;
  v30[0] = 0;
  sub_2172E1B18();
  sub_217752F88();
  if (v1)
  {

    (*(v27 + 8))(v11, v4);
  }

  else
  {
    v21 = v25;
    v20 = v26;
    v22 = v27;

    OUTLINED_FUNCTION_50_28(v31);
    v30[143] = 1;
    sub_217676E38(&v32, v30);
    sub_2176772C0();
    sub_217752F88();
    memcpy(v30, v31, 0x88uLL);
    sub_217676E70(v30);
    v29 = v20;
    v28 = 2;
    sub_217677314();
    OUTLINED_FUNCTION_15_60();
    v29 = v21;
    v28 = 3;
    sub_217677368();
    OUTLINED_FUNCTION_15_60();
    v29 = v24;
    v28 = 4;
    sub_2176773BC();
    OUTLINED_FUNCTION_15_60();
    (*(v22 + 8))(v19, v4);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudFlexAnalysis.hash(into:)(const void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 152);
  v6 = *(v1 + 153);
  v7 = *(v1 + 154);
  sub_217751FF8();
  CloudFlexAnalysis.Attributes.hash(into:)(a1);
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t CloudFlexAnalysis.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 152);
  v4 = *(v0 + 153);
  v5 = *(v0 + 154);
  OUTLINED_FUNCTION_238();
  sub_217751FF8();
  CloudFlexAnalysis.Attributes.hash(into:)(v7);
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

void CloudFlexAnalysis.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_171();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BDC0, &qword_21778E1E0);
  OUTLINED_FUNCTION_0_0(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21, v22);
  v23 = v13[4];
  OUTLINED_FUNCTION_160(v13, v13[3]);
  sub_21767726C();
  sub_2177532C8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_2172E1C68();
    sub_217752EA8();
    v24 = v30;
    v28 = v31;
    sub_217677410();
    OUTLINED_FUNCTION_20_47();
    sub_217752EA8();
    memcpy(v34, v33, sizeof(v34));
    sub_217677464();
    OUTLINED_FUNCTION_20_47();
    sub_217752E58();
    v35 = v30;
    LOBYTE(v29[0]) = 3;
    sub_2176774B8();
    OUTLINED_FUNCTION_20_47();
    sub_217752E58();
    v36 = v30;
    sub_21767750C();
    OUTLINED_FUNCTION_20_47();
    sub_217752E58();
    v25 = *(v18 + 8);
    v26 = OUTLINED_FUNCTION_172_2();
    v27(v26);
    v29[0] = v24;
    v29[1] = v28;
    OUTLINED_FUNCTION_50_28(&v29[2]);
    LOBYTE(v29[19]) = v35;
    BYTE1(v29[19]) = v36;
    BYTE2(v29[19]) = a11;
    memcpy(v15, v29, 0x9BuLL);
    sub_217677560(v29, &v30);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v30 = v24;
    v31 = v28;
    OUTLINED_FUNCTION_50_28(v32);
    v32[136] = v35;
    v32[137] = v36;
    v32[138] = a11;
    sub_217677598(&v30);
  }

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217676BEC()
{
  sub_2177531E8();
  CloudFlexAnalysis.hash(into:)(v1);
  return sub_217753238();
}

unint64_t sub_217676C28()
{
  result = qword_27CB2BCD0;
  if (!qword_27CB2BCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BC58, &qword_21778E150);
    sub_217674438();
    sub_21767448C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCD0);
  }

  return result;
}

unint64_t sub_217676CB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BC78, &qword_21778E158);
    v2();
    OUTLINED_FUNCTION_43_27();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217676D20()
{
  result = qword_27CB2BCE0;
  if (!qword_27CB2BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BC90, &qword_21778E160);
    sub_21767456C();
    sub_2176745C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCE0);
  }

  return result;
}

unint64_t sub_217676DAC()
{
  result = qword_27CB2BCE8;
  if (!qword_27CB2BCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BCA8, &qword_21778E168);
    sub_2176746A0();
    sub_2176746F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCE8);
  }

  return result;
}

unint64_t sub_217676EA0()
{
  result = qword_27CB2BCF8;
  if (!qword_27CB2BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCF8);
  }

  return result;
}

unint64_t sub_217676EF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B6F0, &qword_21778B860);
    OUTLINED_FUNCTION_43_27();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217676F54(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_43_27();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217676FB4()
{
  result = qword_27CB2BD10;
  if (!qword_27CB2BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD10);
  }

  return result;
}

unint64_t sub_217677008(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BD18, &qword_21778E1A0);
    v2();
    OUTLINED_FUNCTION_43_27();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217677074()
{
  result = qword_27CB2BD28;
  if (!qword_27CB2BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD28);
  }

  return result;
}

unint64_t sub_2176770C8()
{
  result = qword_27CB2BD40;
  if (!qword_27CB2BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD40);
  }

  return result;
}

unint64_t sub_21767711C()
{
  result = qword_27CB2BD50;
  if (!qword_27CB2BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD50);
  }

  return result;
}

unint64_t sub_217677170()
{
  result = qword_27CB2BD68;
  if (!qword_27CB2BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD68);
  }

  return result;
}

unint64_t sub_2176771C4()
{
  result = qword_27CB2BD78;
  if (!qword_27CB2BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD78);
  }

  return result;
}

unint64_t sub_217677218()
{
  result = qword_27CB2BD88;
  if (!qword_27CB2BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD88);
  }

  return result;
}

unint64_t sub_21767726C()
{
  result = qword_27CB2BD98;
  if (!qword_27CB2BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD98);
  }

  return result;
}

unint64_t sub_2176772C0()
{
  result = qword_27CB2BDA0;
  if (!qword_27CB2BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDA0);
  }

  return result;
}

unint64_t sub_217677314()
{
  result = qword_27CB2BDA8;
  if (!qword_27CB2BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDA8);
  }

  return result;
}

unint64_t sub_217677368()
{
  result = qword_27CB2BDB0;
  if (!qword_27CB2BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDB0);
  }

  return result;
}

unint64_t sub_2176773BC()
{
  result = qword_27CB2BDB8;
  if (!qword_27CB2BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDB8);
  }

  return result;
}

unint64_t sub_217677410()
{
  result = qword_27CB2BDC8;
  if (!qword_27CB2BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDC8);
  }

  return result;
}

unint64_t sub_217677464()
{
  result = qword_27CB2BDD0;
  if (!qword_27CB2BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDD0);
  }

  return result;
}

unint64_t sub_2176774B8()
{
  result = qword_27CB2BDD8;
  if (!qword_27CB2BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDD8);
  }

  return result;
}

unint64_t sub_21767750C()
{
  result = qword_27CB2BDE0;
  if (!qword_27CB2BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDE0);
  }

  return result;
}

unint64_t sub_2176775CC()
{
  result = qword_27CB2BDE8;
  if (!qword_27CB2BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDE8);
  }

  return result;
}

unint64_t sub_217677624()
{
  result = qword_27CB2BDF0;
  if (!qword_27CB2BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDF0);
  }

  return result;
}

unint64_t sub_21767767C()
{
  result = qword_27CB2BDF8;
  if (!qword_27CB2BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDF8);
  }

  return result;
}

unint64_t sub_2176776D4()
{
  result = qword_27CB2BE00;
  if (!qword_27CB2BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE00);
  }

  return result;
}

unint64_t sub_21767772C()
{
  result = qword_27CB2BE08;
  if (!qword_27CB2BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE08);
  }

  return result;
}

unint64_t sub_217677784()
{
  result = qword_27CB2BE10;
  if (!qword_27CB2BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE10);
  }

  return result;
}

unint64_t sub_2176777DC()
{
  result = qword_27CB2BE18;
  if (!qword_27CB2BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE18);
  }

  return result;
}

unint64_t sub_217677834()
{
  result = qword_27CB2BE20;
  if (!qword_27CB2BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE20);
  }

  return result;
}

unint64_t sub_2176778AC()
{
  result = qword_27CB2BE28;
  if (!qword_27CB2BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE28);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit14CloudAttributeVyAA0C12FlexAnalysisV0C13SampledValuesVGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit14CloudAttributeVyAA0C12FlexAnalysisV0C6EventsVGSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217677938(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 155))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217677978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 154) = 0;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 155) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 155) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2176779F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 136))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217677A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *sub_217677B0C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_217677C04(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_79_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_217677CDC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_79_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudFlexAnalysis.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217677E94()
{
  result = qword_27CB2BE30;
  if (!qword_27CB2BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE30);
  }

  return result;
}

unint64_t sub_217677EEC()
{
  result = qword_27CB2BE38;
  if (!qword_27CB2BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE38);
  }

  return result;
}

unint64_t sub_217677F44()
{
  result = qword_27CB2BE40;
  if (!qword_27CB2BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE40);
  }

  return result;
}

unint64_t sub_217677F9C()
{
  result = qword_27CB2BE48;
  if (!qword_27CB2BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE48);
  }

  return result;
}

unint64_t sub_217677FF4()
{
  result = qword_27CB2BE50;
  if (!qword_27CB2BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE50);
  }

  return result;
}

unint64_t sub_21767804C()
{
  result = qword_27CB2BE58;
  if (!qword_27CB2BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE58);
  }

  return result;
}

unint64_t sub_2176780A4()
{
  result = qword_27CB2BE60;
  if (!qword_27CB2BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE60);
  }

  return result;
}

unint64_t sub_2176780FC()
{
  result = qword_27CB2BE68;
  if (!qword_27CB2BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE68);
  }

  return result;
}

unint64_t sub_217678154()
{
  result = qword_27CB2BE70;
  if (!qword_27CB2BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE70);
  }

  return result;
}

unint64_t sub_2176781AC()
{
  result = qword_27CB2BE78;
  if (!qword_27CB2BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE78);
  }

  return result;
}

unint64_t sub_217678204()
{
  result = qword_27CB2BE80;
  if (!qword_27CB2BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE80);
  }

  return result;
}

unint64_t sub_21767825C()
{
  result = qword_27CB2BE88;
  if (!qword_27CB2BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE88);
  }

  return result;
}

unint64_t sub_2176782B4()
{
  result = qword_27CB2BE90;
  if (!qword_27CB2BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE90);
  }

  return result;
}

unint64_t sub_21767830C()
{
  result = qword_27CB2BE98;
  if (!qword_27CB2BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE98);
  }

  return result;
}

unint64_t sub_217678364()
{
  result = qword_27CB2BEA0;
  if (!qword_27CB2BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEA0);
  }

  return result;
}

unint64_t sub_2176783BC()
{
  result = qword_27CB2BEA8;
  if (!qword_27CB2BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEA8);
  }

  return result;
}

unint64_t sub_217678414()
{
  result = qword_27CB2BEB0;
  if (!qword_27CB2BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEB0);
  }

  return result;
}

unint64_t sub_21767846C()
{
  result = qword_27CB2BEB8;
  if (!qword_27CB2BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEB8);
  }

  return result;
}

unint64_t sub_2176784C4()
{
  result = qword_27CB2BEC0;
  if (!qword_27CB2BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEC0);
  }

  return result;
}

unint64_t sub_21767851C()
{
  result = qword_27CB2BEC8;
  if (!qword_27CB2BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEC8);
  }

  return result;
}

unint64_t sub_217678574()
{
  result = qword_27CB2BED0;
  if (!qword_27CB2BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BED0);
  }

  return result;
}

void OUTLINED_FUNCTION_14_58()
{
  *(v8 - 152) = v1 & 1;
  *(v8 - 152) = v5 & 1;

  sub_2172A9414(v2, v1 & 1, v0, v3, v6, v5 & 1, v4, v7);
}

uint64_t OUTLINED_FUNCTION_15_60()
{

  return sub_217752F38();
}

uint64_t OUTLINED_FUNCTION_42_35()
{

  return sub_2176742C8(v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_49_29()
{

  return sub_217752F38();
}

void *OUTLINED_FUNCTION_50_28(void *a1)
{

  return memcpy(a1, (v1 - 224), 0x88uLL);
}

uint64_t MusicVideo.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void MusicVideo.editorialNotes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6CD8 != -1)
  {
    OUTLINED_FUNCTION_73_1();
  }

  v26 = qword_280C02318;

  sub_2176CA67C(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t MusicVideo.genreNames.getter()
{
  if (qword_280BE6D98 != -1)
  {
    OUTLINED_FUNCTION_72_8();
  }

  result = sub_2172A4238(qword_280C02380);
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_217678BA4(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *a2;
  v5 = sub_2172A4204();
  return OUTLINED_FUNCTION_41_35(v5, v6);
}

void MusicVideo.playParameters.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6CA8 != -1)
  {
    swift_once();
  }

  v26 = qword_280C022F8;

  sub_2176CAB9C(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217678D60(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *a2;
  return sub_2172A4204();
}

uint64_t sub_217678F28(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v1)
  {
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_50_29();

  return v3(v2);
}

uint64_t sub_217678FC0(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v5)
  {
    swift_once();
  }

  return a3(*a2);
}

void MusicVideo.catalogAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6D38 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02348;

  sub_2176CA848(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2176792F0(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v1)
  {
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_50_29();

  return v3(v2);
}

void MusicVideo.keepLocalManagedStatusReasons.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE6C18 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02298;

  sub_2176CB3C0(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

void MusicVideo.localFileAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE6CB0 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02300;

  sub_2176CB3D4(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

void MusicVideo.lyrics.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6B78 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  v26 = qword_280C02268;

  sub_2176CB3E8(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t static MusicVideo.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t MusicVideo.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  OUTLINED_FUNCTION_31();
  v307 = v5;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v6, v7);
  *&v317 = &v305 - v8;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v9, v10);
  v310 = &v305 - v11;
  v311 = sub_2177517D8();
  v12 = OUTLINED_FUNCTION_0_0(v311);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12, v17);
  OUTLINED_FUNCTION_31();
  v306 = v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19, v20);
  *&v315 = &v305 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  OUTLINED_FUNCTION_31();
  v312 = v25;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v305 - v28;
  v30 = sub_2177516D8();
  v31 = OUTLINED_FUNCTION_0_0(v30);
  *&v316 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31, v35);
  OUTLINED_FUNCTION_31();
  v309 = v36;
  OUTLINED_FUNCTION_79_2();
  v39 = MEMORY[0x28223BE20](v37, v38);
  v41 = &v305 - v40;
  v353 = 0x646956636973754DLL;
  v354 = 0xEB00000000286F65;
  *&v338 = 0x22203A646920200ALL;
  *(&v338 + 1) = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1], v39);
  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  OUTLINED_FUNCTION_24_0();
  *&v338 = v42 | 0x6C74697400000000;
  *(&v338 + 1) = 0xEC00000022203A65;
  if (qword_280BE6BC8 == -1)
  {
    goto LABEL_2;
  }

LABEL_208:
  OUTLINED_FUNCTION_105_1();
LABEL_2:
  v43 = sub_2172A4204();
  v45 = OUTLINED_FUNCTION_41_35(v43, v44);
  if (v120)
  {
    v47 = 0xE000000000000000;
  }

  else
  {
    v47 = v46;
  }

  MEMORY[0x21CEA23B0](v45, v47);

  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  *&v338 = 0xD000000000000011;
  *(&v338 + 1) = 0x80000002177B4760;
  if (qword_280BE6DA0 != -1)
  {
    OUTLINED_FUNCTION_77();
  }

  v48 = sub_2172A4204();
  v50 = OUTLINED_FUNCTION_41_35(v48, v49);
  if (v120)
  {
    v52 = 0xE000000000000000;
  }

  else
  {
    v52 = v51;
  }

  MEMORY[0x21CEA23B0](v50, v52);

  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  OUTLINED_FUNCTION_31_11();
  v53 = OUTLINED_FUNCTION_30_3();
  v54 = sub_2172E3DC0(v53 & 0xFFFFFFFFFFFFLL | 0x7255000000000000, 0xE90000000000006CLL);
  sub_2176CA63C(v54, v55, v56, v57, v58, v59, v60, v61, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319, v320, v321, v322, v323);

  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_2171F06D8(v29, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v69 = v316;
    (*(v316 + 32))(v41, v29, v30);
    OUTLINED_FUNCTION_0_107();
    *&v338 = v71 - 1;
    *(&v338 + 1) = v70;
    sub_21736C310();
    v72 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v72);

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_5();

    (*(v69 + 8))(v41, v30);
  }

  v41 = v317;
  if (qword_280BE6D00 != -1)
  {
    swift_once();
  }

  sub_2176CA688(qword_280C02330, v62, v63, v64, v65, v66, v67, v68, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319, v320, v321);
  v73 = v338;
  if (v338 != 2)
  {
    *&v338 = 0;
    *(&v338 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177AC060);
    LOBYTE(v345) = v73 & 1;
    sub_217752C78();
    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6B38 != -1)
  {
    swift_once();
  }

  sub_2172A4330();
  if ((v74 & 1) == 0)
  {
    *&v338 = 0;
    *(&v338 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6172756420200A2CLL, 0xEE00203A6E6F6974);
    sub_2177525E8();
    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6CD8 != -1)
  {
    OUTLINED_FUNCTION_73_1();
  }

  sub_2176CA67C(qword_280C02318, v74, v75, v76, v77, v78, v79, v80, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319);
  v349[0] = v338;
  v349[1] = v339;
  v349[2] = v340;
  v349[3] = v341;
  v350 = v339;
  v351 = v340;
  v352 = v341;
  if (*(&v338 + 1) != 1)
  {
    v345 = 0xD000000000000014;
    v346 = 0x80000002177AB940;
    v339 = v350;
    v340 = v351;
    v341 = v352;
    v81 = EditorialNotes.debugDescription.getter();
    v83 = v82;
    sub_2171F06D8(v349, &qword_27CB24B70, &unk_217759460);
    *&v337[0] = v81;
    *(&v337[0] + 1) = v83;
    *&v324 = 10;
    *(&v324 + 1) = 0xE100000000000000;
    *&v329 = 2105354;
    *(&v329 + 1) = 0xE300000000000000;
    sub_21733A5C8();
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v305 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v84 = OUTLINED_FUNCTION_49_30();
    v86 = v85;

    v87 = v84;
    v41 = v317;
    MEMORY[0x21CEA23B0](v87, v86);

    MEMORY[0x21CEA23B0](v345, v346);
  }

  v347 = 0;
  v348 = 0xE000000000000000;
  if (qword_280BE6D98 != -1)
  {
    OUTLINED_FUNCTION_72_8();
  }

  v308 = v14;
  v314 = v1;
  v88 = sub_2172A4238(qword_280C02380);
  if (v88)
  {
    v89 = v88;
  }

  else
  {
    v89 = MEMORY[0x277D84F90];
  }

  v90 = *(v89 + 16);
  v313 = v30;
  if (v90)
  {
    v91 = v316;
    v92 = (v89 + 40);
    v14 = 0xE600000000000000;
    do
    {
      v94 = *(v92 - 1);
      v93 = *v92;
      if ((v348 & 0x2000000000000000) != 0)
      {
        v95 = HIBYTE(v348) & 0xF;
      }

      else
      {
        v95 = v347 & 0xFFFFFFFFFFFFLL;
      }

      v96 = *v92;
      sub_217751DE8();
      if (v95)
      {
        OUTLINED_FUNCTION_48_1();
      }

      *&v338 = 0x22202020200ALL;
      *(&v338 + 1) = 0xE600000000000000;
      MEMORY[0x21CEA23B0](v94, v93);

      OUTLINED_FUNCTION_18_53();
      MEMORY[0x21CEA23B0](v338, *(&v338 + 1));

      v92 += 2;
      --v90;
    }

    while (v90);

    v97 = v347;
    v98 = v348;
    v99 = v91;
    v41 = v317;
  }

  else
  {

    v97 = 0;
    v98 = 0xE000000000000000;
    v99 = v316;
  }

  v100 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v100 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (v100)
  {
    OUTLINED_FUNCTION_0_107();
    *&v338 = v102;
    *(&v338 + 1) = v101;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6BF0 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02280, v103, v104, v105, v106, v107, v108, v109, v309, v310, v311, v312, v313, v314, SWORD2(v314), SBYTE6(v314), SHIBYTE(v314), v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319);
  if (v117 != 2)
  {
    OUTLINED_FUNCTION_24_0();
    *&v338 = v118 | 0x3473616800000000;
    *(&v338 + 1) = 0xEB00000000203A4BLL;
    v120 = (v119 & 1) == 0;
    if (v119)
    {
      v121 = 1702195828;
    }

    else
    {
      v121 = 0x65736C6166;
    }

    if (v120)
    {
      v122 = 0xE500000000000000;
    }

    else
    {
      v122 = 0xE400000000000000;
    }

    MEMORY[0x21CEA23B0](v121, v122);

    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6B88 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02270, v110, v111, v112, v113, v114, v115, v116, v309, v310, v311, v312, v313, v314, SWORD2(v314), SBYTE6(v314), SHIBYTE(v314), v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319);
  if (v130 != 2)
  {
    OUTLINED_FUNCTION_24_0();
    *&v338 = v131 | 0x4873616800000000;
    *(&v338 + 1) = 0xEC000000203A5244;
    v133 = (v132 & 1) == 0;
    if (v132)
    {
      v134 = 1702195828;
    }

    else
    {
      v134 = 0x65736C6166;
    }

    if (v133)
    {
      v135 = 0xE500000000000000;
    }

    else
    {
      v135 = 0xE400000000000000;
    }

    MEMORY[0x21CEA23B0](v134, v135);

    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6B20 != -1)
  {
    OUTLINED_FUNCTION_32_41();
  }

  sub_2172A422C(qword_280C02240, v123, v124, v125, v126, v127, v128, v129, v309, v310, v311, v312, v313, v314, SWORD2(v314), SBYTE6(v314), SHIBYTE(v314), v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319);
  if (v136 != 2 && (v136 & 1) != 0)
  {
    MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177B47E0);
  }

  if (qword_280BE6BF8 != -1)
  {
    swift_once();
  }

  sub_2172A4204();
  if (v137)
  {
    OUTLINED_FUNCTION_24_0();
    *&v338 = v144 | 0x6372736900000000;
    *(&v338 + 1) = 0xEB0000000022203ALL;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6D58 != -1)
  {
    swift_once();
  }

  v145 = v310;
  sub_2176CA65C(qword_280C02360, v137, v138, v139, v140, v141, v142, v143, v309, v310, v311, v312, v313, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319, v320, v321, v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1));
  v146 = v311;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v145, 1, v311);
  v148 = v315;
  if (EnumTagSinglePayload == 1)
  {
    sub_2171F06D8(v145, &qword_27CB241C0, &qword_217759480);
  }

  else
  {
    v149 = v308;
    v150 = v308[4];
    v150(v315, v145, v146);
    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v151 = type metadata accessor for CloudFormatter();
    v152 = __swift_project_value_buffer(v151, qword_280BE8918);
    (*(v149 + 16))(v41, v148, v146);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v146);
    v153 = v41;
    v41 = v307;
    sub_217202078(v153, v307, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v41, 1, v146) == 1)
    {
      sub_2171F06D8(v317, &qword_27CB241C0, &qword_217759480);
      sub_2171F06D8(v41, &qword_27CB241C0, &qword_217759480);
      v154 = *(v149 + 8);
      v14 = (v149 + 8);
      v154(v148, v146);
    }

    else
    {
      v155 = v306;
      v150(v306, v41, v146);
      v156 = *(v152 + *(v151 + 20));
      v157 = sub_2177517A8();
      v158 = [v156 stringFromDate_];

      v159 = sub_217751F48();
      v41 = v160;

      v161 = *(v149 + 8);
      v14 = (v149 + 8);
      v161(v155, v146);
      sub_2171F06D8(v317, &qword_27CB241C0, &qword_217759480);
      OUTLINED_FUNCTION_0_107();
      *&v338 = v163 + 1;
      *(&v338 + 1) = v162;
      MEMORY[0x21CEA23B0](v159, v41);

      OUTLINED_FUNCTION_18_53();
      OUTLINED_FUNCTION_15_5();

      v161(v315, v146);
    }

    v99 = v316;
  }

  v30 = v313;
  if (qword_280BE6D50 != -1)
  {
    swift_once();
  }

  sub_2172A4218();
  if ((v164 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_107();
    *&v338 = v166;
    *(&v338 + 1) = v165;
    v345 = v167;
    v168 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v168);

    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6B30 != -1)
  {
    swift_once();
  }

  sub_2172A4204();
  if (v169)
  {
    OUTLINED_FUNCTION_24_0();
    *&v338 = v176 | 0x6B726F7700000000;
    *(&v338 + 1) = 0xEE00203A656D614ELL;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6C08 != -1)
  {
    swift_once();
  }

  v177 = v312;
  sub_2176CA63C(qword_280C02290, v169, v170, v171, v172, v173, v174, v175, v309, v310, v311, v312, v313, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319, v320, v321, v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1));
  if (__swift_getEnumTagSinglePayload(v177, 1, v30) == 1)
  {
    sub_2171F06D8(v177, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v178 = v309;
    (*(v99 + 32))(v309, v177, v30);
    OUTLINED_FUNCTION_24_0();
    *&v338 = v179 | 0x3A6C727500000000;
    *(&v338 + 1) = 0xEA00000000002220;
    sub_21736C310();
    v180 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v180);

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_5();

    (*(v99 + 8))(v178, v30);
  }

  if (qword_280BE6BB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA620(v181, v182, v183, v184, v185, v186, v187, v188, v309, v310, v311, v312, v313, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319, v320, v321, v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1));
  if (v342)
  {
    OUTLINED_FUNCTION_36_0();
    *&v329 = 0;
    *(&v329 + 1) = 0xE000000000000000;
    v29 = &unk_21775D410;
    v189 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v189, v190, v191, &unk_21775D410);
    v192 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v192, v193, v194, &unk_21775D410);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v195 = BYTE8(v338);
    v1 = (v30 + 32);
    v14 = &qword_217758A00;
    if (BYTE8(v338))
    {
LABEL_100:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v120)
      {

        sub_217294574();
        goto LABEL_106;
      }
    }

    else
    {
      while (1)
      {
        v196 = *(v30 + 16);
        if (v29 == v196)
        {
          break;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
          goto LABEL_208;
        }

        if (v29 >= v196)
        {
          goto LABEL_195;
        }

        OUTLINED_FUNCTION_56();
        v197 = OUTLINED_FUNCTION_60_28(v30);
        sub_2172940A0(v197, v198, v199, v200, v201, v202, v203, v204);
        sub_2171F06D8(v337, &unk_27CB276C0, &qword_217758A00);
LABEL_106:
        OUTLINED_FUNCTION_16_64();
        v41 = __OFADD__(v29, 1);
        if (v195)
        {
          sub_21725CF00(v30, 1);
          if (v41)
          {
            goto LABEL_194;
          }
        }

        else
        {
          sub_21725CF00(v30, 0);
          if (v41)
          {
            goto LABEL_193;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v205)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v206 = Album.debugDescription.getter();
        MEMORY[0x21CEA23B0](v206);

        v41 = *(&v324 + 1);
        MEMORY[0x21CEA23B0](v324, *(&v324 + 1));

        sub_21725CE44(v337);
        ++v29;
        v1 += 8;
        if (v195)
        {
          goto LABEL_100;
        }
      }
    }

    v343 = v29;
    sub_2171F06D8(&v338, &qword_27CB276B0, &unk_21777D6C0);
    OUTLINED_FUNCTION_24_0();
    *&v338 = v207 | 0x75626C6100000000;
    *(&v338 + 1) = 0xED00005B203A736DLL;
    v337[0] = v329;
    OUTLINED_FUNCTION_2_118();
    v333 = v209;
    v334 = v208;
    sub_21733A5C8();
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v309 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_57_23();
    MEMORY[0x21CEA23B0](v30, v1);

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_5();

    sub_2171F06D8(&v345, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    sub_2171F06D8(&v338, &qword_27CB25318, &qword_2177657C0);
  }

  if (qword_280BE6B58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA604(v210, v211, v212, v213, v214, v215, v216, v217, v309, v310, v311, v312, v313, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319, v320, v321, v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1));
  if (v342)
  {
    OUTLINED_FUNCTION_36_0();
    *&v329 = 0;
    *(&v329 + 1) = 0xE000000000000000;
    v29 = &unk_21776C4F0;
    v218 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v218, v219, v220, &unk_21776C4F0);
    v221 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v221, v222, v223, &unk_21776C4F0);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v224 = BYTE8(v338);
    v1 = (v30 + 32);
    v14 = &qword_21776B8C0;
    if (BYTE8(v338))
    {
LABEL_123:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v120)
      {

        sub_2172945D4();
        goto LABEL_129;
      }
    }

    else
    {
      while (1)
      {
        v225 = *(v30 + 16);
        if (v29 == v225)
        {
          break;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_196;
        }

        if (v29 >= v225)
        {
          goto LABEL_199;
        }

        OUTLINED_FUNCTION_56();
        v226 = OUTLINED_FUNCTION_60_28(v30);
        sub_217294118(v226, v227, v228, v229, v230, v231, v232, v233);
        sub_2171F06D8(v337, &qword_27CB27BD0, &qword_21776B8C0);
LABEL_129:
        OUTLINED_FUNCTION_16_64();
        v41 = __OFADD__(v29, 1);
        if (v224)
        {
          sub_21725CF00(v30, 1);
          if (v41)
          {
            goto LABEL_198;
          }
        }

        else
        {
          sub_21725CF00(v30, 0);
          if (v41)
          {
            goto LABEL_197;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v234)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v235 = Artist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v235);

        v41 = *(&v324 + 1);
        MEMORY[0x21CEA23B0](v324, *(&v324 + 1));

        sub_217284498(v337);
        ++v29;
        v1 += 8;
        if (v224)
        {
          goto LABEL_123;
        }
      }
    }

    v343 = v29;
    sub_2171F06D8(&v338, &qword_27CB27BC0, &qword_21776B8B0);
    OUTLINED_FUNCTION_24_0();
    *&v338 = v236 | 0x6974726100000000;
    *(&v338 + 1) = 0xEE005B203A737473;
    v337[0] = v329;
    OUTLINED_FUNCTION_2_118();
    v333 = v238;
    v334 = v237;
    sub_21733A5C8();
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v309 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_57_23();
    MEMORY[0x21CEA23B0](v30, v1);

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_5();

    sub_2171F06D8(&v345, &qword_27CB25398, &unk_21776C4F0);
  }

  else
  {
    sub_2171F06D8(&v338, &qword_27CB25310, &unk_21775D3D0);
  }

  if (qword_280BE6B98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA5E8(v239, v240, v241, v242, v243, v244, v245, v246, v309, v310, v311, v312, v313, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319, v320, v321, v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1));
  if (v342)
  {
    OUTLINED_FUNCTION_36_0();
    *&v344 = 0;
    *(&v344 + 1) = 0xE000000000000000;
    v29 = &unk_21775D420;
    v247 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v247, v248, v249, &unk_21775D420);
    v250 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v250, v251, v252, &unk_21775D420);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v253 = BYTE8(v338);
    v1 = (v30 + 32);
    v41 = 10;
    v14 = &qword_217778790;
    if (BYTE8(v338))
    {
LABEL_146:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v120)
      {

        sub_21729464C();
        goto LABEL_155;
      }
    }

    else
    {
      while (1)
      {
        v254 = *(v30 + 16);
        if (v29 == v254)
        {
          break;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_200;
        }

        if (v29 >= v254)
        {
          goto LABEL_203;
        }

        sub_217202078(v1, v337, &qword_27CB24618, &qword_217778790);
        sub_217202078(v337, &v324, &qword_27CB24618, &qword_217778790);
        if (v328)
        {
          v255 = *(v324 + 16);
          v256 = *(v324 + 24);
          v257 = *(v324 + 32);
          sub_217283C5C(v30, 0);
          sub_217751DE8();

          sub_2172937E4(v255, v256, v258, v259, v260, v261, v262, v263, v309, v310, v311, v312, v313, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319, v320, v321, v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1), v326, *(&v326 + 1), v327, v328, v329, *(&v329 + 1), v330, *(&v330 + 1));
          v41 = 10;
        }

        else
        {
          v329 = v324;
          v330 = v325;
          v331 = v326;
          v332 = v327;
          sub_217283C5C(v30, 0);
        }

        sub_2171F06D8(v337, &qword_27CB24618, &qword_217778790);
LABEL_155:
        v316 = v330;
        v317 = v329;
        v315 = v331;
        v264 = __OFADD__(v29, 1);
        if (v253)
        {
          sub_21725CF00(v30, 1);
          if (v264)
          {
            goto LABEL_202;
          }
        }

        else
        {
          sub_21725CF00(v30, 0);
          if (v264)
          {
            goto LABEL_201;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v265)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v324 = 10;
        *(&v324 + 1) = 0xE100000000000000;
        v266 = Genre.debugDescription.getter();
        MEMORY[0x21CEA23B0](v266);

        MEMORY[0x21CEA23B0](v324, *(&v324 + 1));

        sub_21728418C(v337);
        ++v29;
        v1 += 8;
        if (v253)
        {
          goto LABEL_146;
        }
      }
    }

    v343 = v29;
    sub_2171F06D8(&v338, &qword_27CB27C88, &qword_21779F250);
    OUTLINED_FUNCTION_24_0();
    *&v338 = v267 | 0x726E656700000000;
    *(&v338 + 1) = 0xED00005B203A7365;
    v337[0] = v344;
    OUTLINED_FUNCTION_2_118();
    *&v329 = v269;
    *(&v329 + 1) = v268;
    sub_21733A5C8();
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v309 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_58_0();
    MEMORY[0x21CEA23B0](v29, v30);

    OUTLINED_FUNCTION_17_55();
    MEMORY[0x21CEA23B0](v338, *(&v338 + 1));

    sub_2171F06D8(&v345, &qword_27CB27C80, &unk_21775D420);
  }

  else
  {
    sub_2171F06D8(&v338, &qword_27CB25320, &unk_21776E020);
  }

  if (qword_280BE6BD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA5CC(v270, v271, v272, v273, v274, v275, v276, v277, v309, v310, v311, v312, v313, v314, v315, *(&v315 + 1), v316, *(&v316 + 1), v317, *(&v317 + 1), v318, v319, v320, v321, v322, v323, v324, *(&v324 + 1), v325, *(&v325 + 1));
  if (v342)
  {
    OUTLINED_FUNCTION_36_0();
    *&v344 = 0;
    *(&v344 + 1) = 0xE000000000000000;
    v278 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v278, v279, v280, &qword_21775DAB0);
    v281 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v281, v282, v283, &qword_21775DAB0);
    v284 = *&v337[0];
    v285 = BYTE8(v337[0]);
    sub_217283C5C(*&v337[0], SBYTE8(v337[0]));
    sub_2171F06D8(v337, &qword_27CB27820, &qword_21775DAB0);
    sub_21725CF00(v284, v285);
    v286 = 0;
    v343 = 0;
    v29 = v338;
    v41 = BYTE8(v338);
    v30 = v338 + 32;
    v1 = &qword_27CB24540;
    if (BYTE8(v338))
    {
LABEL_172:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      if (v286 != *(*(v29 + 56) + 16))
      {

        sub_2172945A4();
        goto LABEL_178;
      }
    }

    else
    {
      while (1)
      {
        v287 = *(v29 + 16);
        if (v286 == v287)
        {
          break;
        }

        if ((v286 & 0x8000000000000000) != 0)
        {
          goto LABEL_204;
        }

        if (v286 >= v287)
        {
          goto LABEL_207;
        }

        sub_217202078(v30, v337, &qword_27CB24540, &qword_21776B300);
        v288 = OUTLINED_FUNCTION_60_28(v29);
        sub_2172940C8(v288, v289, v290, v291, v292, v293, v294, v295);
        sub_2171F06D8(v337, &qword_27CB24540, &qword_21776B300);
LABEL_178:
        OUTLINED_FUNCTION_16_64();
        v14 = __OFADD__(v286, 1);
        if (v41)
        {
          sub_21725CF00(v29, 1);
          if (v14)
          {
            goto LABEL_206;
          }
        }

        else
        {
          sub_21725CF00(v29, 0);
          if (v14)
          {
            goto LABEL_205;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v296)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v297 = Song.debugDescription.getter();
        MEMORY[0x21CEA23B0](v297);

        v14 = *(&v324 + 1);
        MEMORY[0x21CEA23B0](v324, *(&v324 + 1));

        sub_217283B58(v337);
        ++v286;
        v30 += 64;
        if (v41)
        {
          goto LABEL_172;
        }
      }
    }

    v343 = v286;
    sub_2171F06D8(&v338, &qword_27CB27828, &qword_21776B2F0);
    OUTLINED_FUNCTION_24_0();
    *&v338 = v298 | 0x676E6F7300000000;
    *(&v338 + 1) = 0xEC0000005B203A73;
    v337[0] = v344;
    OUTLINED_FUNCTION_2_118();
    v335 = v300;
    v336 = v299;
    sub_21733A5C8();
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v309 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30();
    OUTLINED_FUNCTION_58_0();
    MEMORY[0x21CEA23B0](v29, v30);

    OUTLINED_FUNCTION_17_55();
    MEMORY[0x21CEA23B0](v338, *(&v338 + 1));

    v301 = &qword_27CB27820;
    v302 = &qword_21775DAB0;
    v303 = &v345;
  }

  else
  {
    v301 = &qword_27CB255A8;
    v302 = &unk_21775D450;
    v303 = &v338;
  }

  sub_2171F06D8(v303, v301, v302);
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v353;
}

void MusicVideo.albumIdentifierSet.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_27CB23DE8 != -1)
  {
    swift_once();
  }

  v26 = qword_27CB8A300;

  sub_2176CB5A4(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21767B198(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v1)
  {
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_50_29();

  return v3(v2);
}

uint64_t sub_21767B230(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v5)
  {
    swift_once();
  }

  return a3(*a2);
}

uint64_t MusicVideo.subscript.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 224);
  sub_2172E1FE4();
  v4 = *(v1 + 232);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  sub_2172E1FE4();
  v4 = *(v1 + 272);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  v4 = *(v1 + 272);
  type metadata accessor for MusicItemCollection();
  sub_2172E1FE4();
  v9 = *(v1 + 280);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

uint64_t MusicVideo.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t MusicVideo.albumTrackCount.getter()
{
  if (qword_27CB23DE0 != -1)
  {
    swift_once();
  }

  result = sub_2172A4218();
  if (v1)
  {
    return 0;
  }

  return result;
}

void sub_21767B5D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v26)
  {
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_50_29();

  sub_2176CA83C(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t MusicVideo.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 112))(a1, v5, v6);
}

uint64_t MusicVideo.hashValue.getter()
{
  sub_2177531E8();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 112))(v6, v3, v4);
  return sub_217753238();
}

uint64_t sub_21767B7D4@<X0>(uint64_t *a1@<X8>)
{
  result = MusicVideo.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21767B7FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEE8, &qword_21778F728);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02258 = result;
  return result;
}

uint64_t sub_21767B870()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF98, &qword_21778F7D8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E6D75626C61, 0xE900000000000065, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02390 = result;
  return result;
}

uint64_t sub_21767B8E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF98, &qword_21778F7D8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_30_3();
  result = OUTLINED_FUNCTION_26(v0 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, 0xEA0000000000656DLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02388 = result;
  return result;
}

uint64_t sub_21767B958()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF58, &qword_21778F798);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x676F6C617461635FLL, 0xED00007465737341, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02348 = result;
  return result;
}

uint64_t sub_21767B9D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFE0, &unk_21778F820);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x52746E65746E6F63, 0xED0000676E697461, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02330 = result;
  return result;
}

uint64_t sub_21767BA58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF08, &qword_21778F748);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  v0 = OUTLINED_FUNCTION_44_29();
  result = OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02250 = result;
  return result;
}

uint64_t sub_21767BAC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFD8, &qword_21778F818);
  OUTLINED_FUNCTION_31_11();
  v0 = OUTLINED_FUNCTION_44_29();
  result = sub_217729830(v0, v1, v2, 0xE700000000000000, v3);
  qword_280C022C8 = result;
  return result;
}

uint64_t sub_21767BB3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFD0, &qword_21778F810);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v0, 0xEE007365746F4E6CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02318 = result;
  return result;
}

uint64_t sub_21767BBB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFC8, &qword_21778F808);
  OUTLINED_FUNCTION_31_11();
  v0 = OUTLINED_FUNCTION_212();
  result = sub_217729830(v0, 0xEE006F656469566CLL, 0xD000000000000035, 0x80000002177ABB30, v1);
  qword_280C023A0 = result;
  return result;
}

uint64_t sub_21767BC28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFC0, &qword_21778F800);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E65726E6567, 0xEA00000000007365, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02380 = result;
  return result;
}

uint64_t sub_21767BCA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x4B34736168, 0xE500000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02280 = result;
  return result;
}

uint64_t sub_21767BD10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x524448736168, 0xE600000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02270 = result;
  return result;
}

uint64_t sub_21767BD80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF48, &qword_21778F788);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C022D8 = result;
  return result;
}

uint64_t sub_21767BDF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697F4C(0x76697372656D6D69, 0xEC0000006C725565, 0, 5001813, 0xE300000000000000, &unk_282959AF8);
  qword_280C02338 = result;
  return result;
}

uint64_t sub_21767BE6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6275536F65646976, 0xEC00000065707954, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02240 = result;
  return result;
}

uint64_t sub_21767BEE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF98, &qword_21778F7D8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1668445033, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02288 = result;
  return result;
}

uint64_t sub_21767BF54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF18, &qword_21778F758);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x69466C61636F6C5FLL, 0xEF7465737341656CLL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02300 = result;
  return result;
}

uint64_t sub_21767BFD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEE8, &qword_21778F728);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C022E0 = result;
  return result;
}

uint64_t sub_21767C054()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFB8, &qword_21778F7F8);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697CBC(0x73726566666FLL, 0xE600000000000000, 0, 0xD000000000000021, 0x80000002177B49A0, &unk_282959AF8);
  qword_280C02260 = result;
  return result;
}

uint64_t sub_21767C0CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFB0, &qword_21778F7F0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172615079616C70, 0xEA0000000000736DLL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C022F8 = result;
  return result;
}

uint64_t sub_21767C144()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFA8, &qword_21778F7E8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7377656976657270, 0xE800000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02328 = result;
  return result;
}

uint64_t sub_21767C1B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF20, &qword_21778F760);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x44657361656C6572, 0xEB00000000657461, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02360 = result;
  return result;
}

uint64_t sub_21767C234()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF8, &qword_21778F738);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x657361656C65725FLL, 0xEC00000072616559, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02350 = result;
  return result;
}

uint64_t sub_21767C2B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF98, &qword_21778F7D8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02278 = result;
  return result;
}

uint64_t sub_21767C31C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF8, &qword_21778F738);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D754E6B63617274, 0xEB00000000726562, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02358 = result;
  return result;
}

uint64_t sub_21767C398()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFA0, &qword_21778F7E0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02290 = result;
  return result;
}

uint64_t sub_21767C404()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF98, &qword_21778F7D8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656D614E6B726F77, 0xE800000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02248 = result;
  return result;
}

uint64_t sub_21767C478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF20, &qword_21778F760);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v0, 0xEE00657461446465, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02320 = result;
  return result;
}

uint64_t sub_21767C4EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF40, &qword_21778F780);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v0, 0xEF73757461745365, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C022F0 = result;
  return result;
}

uint64_t sub_21767C560()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x617262694C73695FLL, 0xEF64656464417972, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02310 = result;
  return result;
}

uint64_t sub_21767C5E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C022B8 = result;
  return result;
}

uint64_t sub_21767C654()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF38, &qword_21778F778);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000016, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C022B0 = result;
  return result;
}

uint64_t sub_21767C6C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF30, &qword_21778F770);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000017, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C022A8 = result;
  return result;
}

uint64_t sub_21767C73C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF28, &qword_21778F768);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ELL, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02298 = result;
  return result;
}

uint64_t sub_21767C7B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000013, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C022C0 = result;
  return result;
}

uint64_t sub_21767C824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF50, &qword_21778F790);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x745364756F6C635FLL, 0xEC00000073757461, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02368 = result;
  return result;
}

uint64_t sub_21767C8A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF08, &qword_21778F748);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x746152726573755FLL, 0xEB00000000676E69, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02370 = result;
  return result;
}

uint64_t sub_21767C91C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF20, &qword_21778F760);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616C507473616C5FLL, 0xEF65746144646579, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02308 = result;
  return result;
}

uint64_t sub_21767C99C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF20, &qword_21778F760);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C022D0 = result;
  return result;
}

uint64_t sub_21767CA10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF8, &qword_21778F738);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x756F4379616C705FLL, 0xEA0000000000746ELL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02238 = result;
  return result;
}

uint64_t sub_21767CA88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF90, &qword_21778F7D0);
  OUTLINED_FUNCTION_60();
  result = sub_21769A070(0x736D75626C61, 0xE600000000000000, 0, &unk_282959AD0);
  qword_280BE6BB8 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.albums.getter()
{
  return sub_21767CE84(&qword_280BE6BB0, &qword_280BE6BB8);
}

{
  return sub_21767CE84(&qword_280BE6880, &qword_280BE6888);
}

{
  return sub_2177286EC(&qword_280BE9738);
}

uint64_t sub_21767CB0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF88, &qword_21778F7C8);
  OUTLINED_FUNCTION_60();
  v0 = OUTLINED_FUNCTION_30_3();
  result = sub_21769A074(v0 & 0xFFFFFFFFFFFFLL | 0x73000000000000, 0xE700000000000000, 0);
  qword_280BE6B60 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.artists.getter()
{
  return sub_21767CE84(&qword_280BE6B58, &qword_280BE6B60);
}

{
  return sub_2177286EC(&qword_280BE9710);
}

{
  return sub_2177286EC(&qword_280BE9430);
}

uint64_t sub_21767CB8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF70, &qword_21778F7B0);
  OUTLINED_FUNCTION_60();
  result = sub_21769A07C(0x676F6C61746163, 0xE700000000000000, 0, &unk_282959AF8);
  qword_280C02398 = result;
  return result;
}

uint64_t sub_21767CBF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF80, &qword_21778F7C0);
  OUTLINED_FUNCTION_60();
  result = sub_21769A06C(0x7365726E6567, 0xE600000000000000, 0, &unk_282959AD0);
  qword_280BE6BA0 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.genres.getter()
{
  return sub_21767CE84(&qword_280BE6B98, &qword_280BE6BA0);
}

{
  return sub_21767CE84(&qword_280BE6870, &qword_280BE6878);
}

{
  return sub_2177286EC(&qword_280BE9720);
}

{
  return sub_2177286EC(&qword_280BE9460);
}

uint64_t sub_21767CC74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF70, &qword_21778F7B0);
  OUTLINED_FUNCTION_60();
  result = sub_21769A07C(0x7972617262696CLL, 0xE700000000000000, 0, &unk_282959AF8);
  qword_280BE6B48 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.library.getter()
{
  return sub_21767CE84(&qword_280BE6B40, &qword_280BE6B48);
}

{
  return sub_21767CE84(&qword_280BE91A8, &qword_280BE91B0);
}

{
  return sub_2177286EC(&qword_280BE96F8);
}

{
  return sub_2177286EC(&qword_280BE9410);
}

uint64_t sub_21767CCFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF78, &qword_21778F7B8);
  OUTLINED_FUNCTION_60();
  result = sub_21769A078(0x73676E6F73, 0xE500000000000000, 0, &unk_282959AF8);
  qword_280BE6BE0 = result;
  return result;
}

uint64_t sub_21767CDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF70, &qword_21778F7B0);
  OUTLINED_FUNCTION_60();
  result = sub_21736C3E4(a2, a3, 1);
  *a4 = result;
  return result;
}

uint64_t sub_21767CE84(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *a2;
}

uint64_t sub_21767CECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF60, &qword_21778F7A0);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0x6972616C75706F70, 0xEA00000000007974);
  qword_280C02378 = result;
  return result;
}

uint64_t sub_21767CF28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEE0, &qword_21778F720);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697C78(0x4C6D6F747375635FLL, 0xED00007363697279, 0, 0x676E69727453, 0xE600000000000000, &unk_28295A918);
  qword_280C02340 = result;
  return result;
}

uint64_t sub_21767CFA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  v0 = OUTLINED_FUNCTION_44_29();
  result = OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C022E8 = result;
  return result;
}

uint64_t sub_21767D018()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF10, &qword_21778F750);
  OUTLINED_FUNCTION_31_11();
  result = sub_217697D00(0x73636972796C5FLL, 0xE700000000000000, 0, 0x72794C636973754DLL, 0xEB00000000736369, &unk_28295A918);
  qword_280C02268 = result;
  return result;
}

uint64_t sub_21767D098()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF68, &qword_21778F7A8);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0x702D6C6169636F73, 0xEF73656C69666F72);
  qword_280C022A0 = result;
  return result;
}

uint64_t sub_21767D0FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656E6E695073695FLL, 0xE900000000000064, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_27CB8A2F0 = result;
  return result;
}

uint64_t sub_21767D174()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF8, &qword_21778F738);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x756F436B63617274, 0xEA0000000000746ELL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_27CB8A2F8 = result;
  return result;
}

uint64_t sub_21767D1EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF00, &qword_21778F740);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000012, v0, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_27CB8A300 = result;
  return result;
}

uint64_t static MusicVideo.catalogFilterID(for:)@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_2177529D8();
  v2 = OUTLINED_FUNCTION_59_22();

  if (v2)
  {
    v3 = 0xE200000000000000;
    v4 = 25705;
LABEL_5:
    *a1 = v4;
    a1[1] = v3;
    return sub_217751DE8();
  }

  swift_getKeyPath();
  v5 = OUTLINED_FUNCTION_59_22();

  if (v5)
  {
    v3 = 0xE400000000000000;
    v4 = 1668445033;
    goto LABEL_5;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21767D3D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21767D430@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t MusicVideo.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EEA6C();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicVideo.description.getter()
{
  v1 = 0xE000000000000000;
  sub_217752AA8();
  v2 = OUTLINED_FUNCTION_44_29();
  MEMORY[0x21CEA23B0](v2);
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x656C746974202C22, 0xEB0000000022203ALL);
  if (qword_280BE6BC8 != -1)
  {
    OUTLINED_FUNCTION_105_1();
  }

  v3 = sub_2172A4204();
  v5 = OUTLINED_FUNCTION_41_35(v3, v4);
  if (!v7)
  {
    v1 = v6;
  }

  MEMORY[0x21CEA23B0](v5, v1);

  v8 = OUTLINED_FUNCTION_44_29();
  MEMORY[0x21CEA23B0](v8);
  if (qword_280BE6DA0 != -1)
  {
    OUTLINED_FUNCTION_77();
  }

  v9 = sub_2172A4204();
  v11 = OUTLINED_FUNCTION_41_35(v9, v10);
  if (v7)
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = v12;
  }

  MEMORY[0x21CEA23B0](v11, v13);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return 0;
}

uint64_t static MusicVideo.typeValue.getter()
{
  if (qword_280BE7F40 != -1)
  {
    OUTLINED_FUNCTION_45_2();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE7F48);

  return sub_217751DE8();
}

uint64_t sub_21767D768()
{
  if (qword_280BE7F40 != -1)
  {
    OUTLINED_FUNCTION_45_2();
  }

  xmmword_280BE6380 = xmmword_280BE7F48;
  qword_280BE6390 = qword_280BE7F58;
  unk_280BE6398 = unk_280BE7F60;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.musicVideo.getter()
{
  if (qword_280BE6378 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6380);

  return sub_217751DE8();
}

unint64_t sub_21767D83C()
{
  result = qword_27CB2BED8;
  if (!qword_27CB2BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BED8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_16_64()
{
  v1 = *(v0 + 176);
  *(v0 + 96) = *(v0 + 192);
  *(v0 + 112) = v1;
  result = *(v0 + 208);
  *(v0 + 80) = result;
  v3 = *(v0 + 224);
  return result;
}

void OUTLINED_FUNCTION_18_53()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_41_35(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_30()
{

  return sub_217752998();
}

uint64_t OUTLINED_FUNCTION_57_23()
{
}

uint64_t OUTLINED_FUNCTION_59_22()
{

  return sub_217751F08();
}

uint64_t sub_21767DBE4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_169();
  if ((v7() & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  OUTLINED_FUNCTION_47_28(v8);
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_71_19();
  if (v14)
  {
    if (!v12)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_59_0(v13);
    v17 = v11 && v15 == v16;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v12)
  {
LABEL_30:
    v48 = 0;
    return OUTLINED_FUNCTION_15_61(v48);
  }

  v18 = *(v4 + 44);
  OUTLINED_FUNCTION_73_19(v56);
  OUTLINED_FUNCTION_103_16(v57);
  OUTLINED_FUNCTION_86_16();
  OUTLINED_FUNCTION_73_19(v19);
  OUTLINED_FUNCTION_103_16(v6 + 48);
  v20 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_73_19(v20);
  v21 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v21);
  if (v11)
  {
    OUTLINED_FUNCTION_52_27();
    OUTLINED_FUNCTION_172_0(v54);
    if (v11)
    {
      OUTLINED_FUNCTION_51_24();
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_170_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_170_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v22, v23, v24);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_51_24();
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_52_27();
  OUTLINED_FUNCTION_172_0(v54);
  if (v25)
  {
    OUTLINED_FUNCTION_50_30();
    OUTLINED_FUNCTION_13_62();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78();
    sub_21733BED8(v52);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v54, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  memcpy(v52, v6 + 48, sizeof(v52));
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  v26 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_94_15(v26, v27, v28, v29, v30, v31, v32, v33, v50[0]);
  v34 = sub_21733BED8(v50);
  OUTLINED_FUNCTION_29_39(v34, v35, v36, v37, v38, v39, v40, v41, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v50[23], v50[24], v50[25], v50[26], v50[27], v50[28], v50[29], v50[30], v50[31], v50[32], v50[33], v50[34], v50[35], v50[36], v50[37], v50[38], v50[39], v50[40], v50[41], v50[42], v50[43], v50[44], v50[45], v50[46], v50[47], v51[0]);
  sub_21733BED8(v51);
  OUTLINED_FUNCTION_50_30();
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v42, v43, v44);
  if ((v2 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  OUTLINED_FUNCTION_63_23(*(v4 + 48));
  if ((v45 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v4 + 52));
  if ((v46 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v4 + 56));
  if ((v47 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v4 + 60));
  return OUTLINED_FUNCTION_15_61(v48);
}

uint64_t sub_21767DE54(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  OUTLINED_FUNCTION_169();
  memcpy(v50, v3, sizeof(v50));
  memcpy(v49, v2, sizeof(v49));
  if ((static CloudFlexAnalysis.== infix(_:_:)(v50, v49) & 1) == 0)
  {
    goto LABEL_30;
  }

  v6 = v3[20] == v2[20] && v3[21] == v2[21];
  if (!v6 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = v3[24];
  v8 = v2[24];
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_30;
    }

    v9 = v3[23] == v2[23] && v7 == v8;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v8)
  {
LABEL_30:
    v39 = 0;
    return v39 & 1;
  }

  OUTLINED_FUNCTION_68_23(v47);
  OUTLINED_FUNCTION_78_16(v48);
  OUTLINED_FUNCTION_86_16();
  OUTLINED_FUNCTION_68_23(v10);
  OUTLINED_FUNCTION_78_16((v4 + 384));
  v11 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_68_23(v11);
  v12 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v12);
  if (v6)
  {
    OUTLINED_FUNCTION_78_16(v45);
    OUTLINED_FUNCTION_172_0(v45);
    if (v6)
    {
      OUTLINED_FUNCTION_68_23(v46);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v13, v14, v15);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_68_23(v46);
  OUTLINED_FUNCTION_68_23(v44);
  OUTLINED_FUNCTION_78_16(v45);
  OUTLINED_FUNCTION_172_0(v45);
  if (v16)
  {
    OUTLINED_FUNCTION_68_23(v43);
    OUTLINED_FUNCTION_13_62();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78();
    sub_21733BED8(v43);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v45, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_78_16(v43);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v17 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v17, v18, v19, v20, v21, v22, v23, v24, v41[0]);
  v25 = sub_21733BED8(v41);
  OUTLINED_FUNCTION_29_39(v25, v26, v27, v28, v29, v30, v31, v32, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v41[11], v41[12], v41[13], v41[14], v41[15], v41[16], v41[17], v41[18], v41[19], v41[20], v41[21], v41[22], v41[23], v41[24], v41[25], v41[26], v41[27], v41[28], v41[29], v41[30], v41[31], v41[32], v41[33], v41[34], v41[35], v41[36], v41[37], v41[38], v41[39], v41[40], v41[41], v41[42], v41[43], v41[44], v41[45], v41[46], v41[47], v42[0]);
  sub_21733BED8(v42);
  OUTLINED_FUNCTION_68_23(v43);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v33, v34, v35);
  if ((v5 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v3[73], v2[73]);
  if ((v36 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v3[74], v2[74]);
  if ((v37 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v3[75], v2[75]);
  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v3[76], v2[76]);
  return v39 & 1;
}

uint64_t sub_21767E124()
{
  OUTLINED_FUNCTION_90_17();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_88_16();
  if ((static CloudMusicCreditsSection.== infix(_:_:)(v6, v7, v8, v9, v10, v11, v12, v13) & 1) == 0)
  {
    goto LABEL_30;
  }

  v14 = v0[23] == v1[23] && v0[24] == v1[24];
  if (!v14 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v15 = v0[27];
  v16 = v1[27];
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = v0[26] == v1[26] && v15 == v16;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v16)
  {
LABEL_30:
    v47 = 0;
    return OUTLINED_FUNCTION_15_61(v47);
  }

  OUTLINED_FUNCTION_66_18(v55);
  OUTLINED_FUNCTION_76_17(v56);
  OUTLINED_FUNCTION_87_19();
  OUTLINED_FUNCTION_66_18(v18);
  OUTLINED_FUNCTION_76_17((v2 + 384));
  v19 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_66_18(v19);
  v20 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v20);
  if (v14)
  {
    OUTLINED_FUNCTION_76_17(v53);
    OUTLINED_FUNCTION_172_0(v53);
    if (v14)
    {
      OUTLINED_FUNCTION_66_18(v54);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v21, v22, v23);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_66_18(v54);
  OUTLINED_FUNCTION_66_18(v52);
  OUTLINED_FUNCTION_76_17(v53);
  OUTLINED_FUNCTION_172_0(v53);
  if (v24)
  {
    OUTLINED_FUNCTION_66_18(v51);
    OUTLINED_FUNCTION_13_62();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78();
    sub_21733BED8(v51);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v53, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_76_17(v51);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v25 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v25, v26, v27, v28, v29, v30, v31, v32, v49[0]);
  v33 = sub_21733BED8(v49);
  OUTLINED_FUNCTION_29_39(v33, v34, v35, v36, v37, v38, v39, v40, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9], v49[10], v49[11], v49[12], v49[13], v49[14], v49[15], v49[16], v49[17], v49[18], v49[19], v49[20], v49[21], v49[22], v49[23], v49[24], v49[25], v49[26], v49[27], v49[28], v49[29], v49[30], v49[31], v49[32], v49[33], v49[34], v49[35], v49[36], v49[37], v49[38], v49[39], v49[40], v49[41], v49[42], v49[43], v49[44], v49[45], v49[46], v49[47], v50[0]);
  sub_21733BED8(v50);
  OUTLINED_FUNCTION_66_18(v51);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v41, v42, v43);
  if ((v3 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v0[76], v1[76]);
  if ((v44 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[77], v1[77]);
  if ((v45 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[78], v1[78]);
  if ((v46 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[79], v1[79]);
  return OUTLINED_FUNCTION_15_61(v47);
}

uint64_t sub_21767E3C0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  OUTLINED_FUNCTION_169();
  memcpy(v51, v3, sizeof(v51));
  memcpy(v50, v2, sizeof(v50));
  static CloudAudioAnalysis.== infix(_:_:)();
  if ((v6 & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = v3[102] == v2[102] && v3[103] == v2[103];
  if (!v7 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = v3[106];
  v9 = v2[106];
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    v10 = v3[105] == v2[105] && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v9)
  {
LABEL_30:
    v40 = 0;
    return v40 & 1;
  }

  OUTLINED_FUNCTION_65_24(v48);
  OUTLINED_FUNCTION_75_16(v49);
  OUTLINED_FUNCTION_86_16();
  OUTLINED_FUNCTION_65_24(v11);
  OUTLINED_FUNCTION_75_16((v4 + 384));
  v12 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_65_24(v12);
  v13 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v13);
  if (v7)
  {
    OUTLINED_FUNCTION_75_16(v46);
    OUTLINED_FUNCTION_172_0(v46);
    if (v7)
    {
      OUTLINED_FUNCTION_65_24(v47);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v14, v15, v16);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_65_24(v47);
  OUTLINED_FUNCTION_65_24(v45);
  OUTLINED_FUNCTION_75_16(v46);
  OUTLINED_FUNCTION_172_0(v46);
  if (v17)
  {
    OUTLINED_FUNCTION_65_24(v44);
    OUTLINED_FUNCTION_13_62();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78();
    sub_21733BED8(v44);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v46, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_75_16(v44);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v18 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v18, v19, v20, v21, v22, v23, v24, v25, v42[0]);
  v26 = sub_21733BED8(v42);
  OUTLINED_FUNCTION_29_39(v26, v27, v28, v29, v30, v31, v32, v33, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11], v42[12], v42[13], v42[14], v42[15], v42[16], v42[17], v42[18], v42[19], v42[20], v42[21], v42[22], v42[23], v42[24], v42[25], v42[26], v42[27], v42[28], v42[29], v42[30], v42[31], v42[32], v42[33], v42[34], v42[35], v42[36], v42[37], v42[38], v42[39], v42[40], v42[41], v42[42], v42[43], v42[44], v42[45], v42[46], v42[47], v43[0]);
  sub_21733BED8(v43);
  OUTLINED_FUNCTION_65_24(v44);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v34, v35, v36);
  if ((v5 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v3[155], v2[155]);
  if ((v37 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v3[156], v2[156]);
  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v3[157], v2[157]);
  if ((v39 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v3[158], v2[158]);
  return v40 & 1;
}

uint64_t sub_21767E738()
{
  OUTLINED_FUNCTION_90_17();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_88_16();
  if (!static CloudPersonalRecommendation.== infix(_:_:)())
  {
    goto LABEL_30;
  }

  v6 = v0[39] == v1[39] && v0[40] == v1[40];
  if (!v6 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = v0[43];
  v8 = v1[43];
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_30;
    }

    v9 = v0[42] == v1[42] && v7 == v8;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v8)
  {
LABEL_30:
    v39 = 0;
    return OUTLINED_FUNCTION_15_61(v39);
  }

  OUTLINED_FUNCTION_48_20(v47);
  OUTLINED_FUNCTION_57_24(v48);
  OUTLINED_FUNCTION_87_19();
  OUTLINED_FUNCTION_48_20(v10);
  OUTLINED_FUNCTION_57_24((v2 + 384));
  v11 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_48_20(v11);
  v12 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v12);
  if (v6)
  {
    OUTLINED_FUNCTION_53_26();
    OUTLINED_FUNCTION_172_0(v45);
    if (v6)
    {
      OUTLINED_FUNCTION_48_20(v46);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v13, v14, v15);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_48_20(v46);
  OUTLINED_FUNCTION_48_20(v44);
  OUTLINED_FUNCTION_53_26();
  OUTLINED_FUNCTION_172_0(v45);
  if (v16)
  {
    OUTLINED_FUNCTION_48_20(v43);
    OUTLINED_FUNCTION_13_62();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78();
    sub_21733BED8(v43);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v45, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_57_24(v43);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v17 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v17, v18, v19, v20, v21, v22, v23, v24, v41[0]);
  v25 = sub_21733BED8(v41);
  OUTLINED_FUNCTION_29_39(v25, v26, v27, v28, v29, v30, v31, v32, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5], v41[6], v41[7], v41[8], v41[9], v41[10], v41[11], v41[12], v41[13], v41[14], v41[15], v41[16], v41[17], v41[18], v41[19], v41[20], v41[21], v41[22], v41[23], v41[24], v41[25], v41[26], v41[27], v41[28], v41[29], v41[30], v41[31], v41[32], v41[33], v41[34], v41[35], v41[36], v41[37], v41[38], v41[39], v41[40], v41[41], v41[42], v41[43], v41[44], v41[45], v41[46], v41[47], v42[0]);
  sub_21733BED8(v42);
  OUTLINED_FUNCTION_48_20(v43);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v33, v34, v35);
  if ((v3 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v0[92], v1[92]);
  if ((v36 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[93], v1[93]);
  if ((v37 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[94], v1[94]);
  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[95], v1[95]);
  return OUTLINED_FUNCTION_15_61(v39);
}

uint64_t sub_21767EABC()
{
  OUTLINED_FUNCTION_90_17();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_88_16();
  if ((static CloudPlaylistFolder.== infix(_:_:)(v6, v7) & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = v0[39] == v1[39] && v0[40] == v1[40];
  if (!v8 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v9 = v0[43];
  v10 = v1[43];
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_30;
    }

    v11 = v0[42] == v1[42] && v9 == v10;
    if (!v11 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v10)
  {
LABEL_30:
    v41 = 0;
    return OUTLINED_FUNCTION_15_61(v41);
  }

  OUTLINED_FUNCTION_48_20(v49);
  OUTLINED_FUNCTION_57_24(v50);
  OUTLINED_FUNCTION_87_19();
  OUTLINED_FUNCTION_48_20(v12);
  OUTLINED_FUNCTION_57_24((v2 + 384));
  v13 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_48_20(v13);
  v14 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v14);
  if (v8)
  {
    OUTLINED_FUNCTION_53_26();
    OUTLINED_FUNCTION_172_0(v47);
    if (v8)
    {
      OUTLINED_FUNCTION_48_20(v48);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v15, v16, v17);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_48_20(v48);
  OUTLINED_FUNCTION_48_20(v46);
  OUTLINED_FUNCTION_53_26();
  OUTLINED_FUNCTION_172_0(v47);
  if (v18)
  {
    OUTLINED_FUNCTION_48_20(v45);
    OUTLINED_FUNCTION_13_62();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78();
    sub_21733BED8(v45);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v47, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_57_24(v45);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v19 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v19, v20, v21, v22, v23, v24, v25, v26, v43[0]);
  v27 = sub_21733BED8(v43);
  OUTLINED_FUNCTION_29_39(v27, v28, v29, v30, v31, v32, v33, v34, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10], v43[11], v43[12], v43[13], v43[14], v43[15], v43[16], v43[17], v43[18], v43[19], v43[20], v43[21], v43[22], v43[23], v43[24], v43[25], v43[26], v43[27], v43[28], v43[29], v43[30], v43[31], v43[32], v43[33], v43[34], v43[35], v43[36], v43[37], v43[38], v43[39], v43[40], v43[41], v43[42], v43[43], v43[44], v43[45], v43[46], v43[47], v44[0]);
  sub_21733BED8(v44);
  OUTLINED_FUNCTION_48_20(v45);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v35, v36, v37);
  if ((v3 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v0[92], v1[92]);
  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[93], v1[93]);
  if ((v39 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[94], v1[94]);
  if ((v40 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[95], v1[95]);
  return OUTLINED_FUNCTION_15_61(v41);
}

uint64_t sub_21767EDA0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_169();
  if ((v7() & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  OUTLINED_FUNCTION_47_28(v8);
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_71_19();
  if (v14)
  {
    if (!v12)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_59_0(v13);
    v17 = v11 && v15 == v16;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v12)
  {
LABEL_30:
    v48 = 0;
    return OUTLINED_FUNCTION_15_61(v48);
  }

  v18 = *(v4 + 44);
  OUTLINED_FUNCTION_73_19(v56);
  OUTLINED_FUNCTION_103_16(v57);
  OUTLINED_FUNCTION_86_16();
  OUTLINED_FUNCTION_73_19(v19);
  OUTLINED_FUNCTION_103_16(v6 + 48);
  v20 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_73_19(v20);
  v21 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v21);
  if (v11)
  {
    OUTLINED_FUNCTION_52_27();
    OUTLINED_FUNCTION_172_0(v54);
    if (v11)
    {
      OUTLINED_FUNCTION_51_24();
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_170_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_170_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v22, v23, v24);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_51_24();
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_52_27();
  OUTLINED_FUNCTION_172_0(v54);
  if (v25)
  {
    OUTLINED_FUNCTION_50_30();
    OUTLINED_FUNCTION_13_62();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78();
    sub_21733BED8(v52);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v54, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  memcpy(v52, v6 + 48, sizeof(v52));
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  v26 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_94_15(v26, v27, v28, v29, v30, v31, v32, v33, v50[0]);
  v34 = sub_21733BED8(v50);
  OUTLINED_FUNCTION_29_39(v34, v35, v36, v37, v38, v39, v40, v41, v50[0], v50[1], v50[2], v50[3], v50[4], v50[5], v50[6], v50[7], v50[8], v50[9], v50[10], v50[11], v50[12], v50[13], v50[14], v50[15], v50[16], v50[17], v50[18], v50[19], v50[20], v50[21], v50[22], v50[23], v50[24], v50[25], v50[26], v50[27], v50[28], v50[29], v50[30], v50[31], v50[32], v50[33], v50[34], v50[35], v50[36], v50[37], v50[38], v50[39], v50[40], v50[41], v50[42], v50[43], v50[44], v50[45], v50[46], v50[47], v51[0]);
  sub_21733BED8(v51);
  OUTLINED_FUNCTION_50_30();
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v42, v43, v44);
  if ((v2 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  OUTLINED_FUNCTION_63_23(*(v4 + 48));
  if ((v45 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v4 + 52));
  if ((v46 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v4 + 56));
  if ((v47 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v4 + 60));
  return OUTLINED_FUNCTION_15_61(v48);
}

uint64_t sub_21767F088()
{
  OUTLINED_FUNCTION_90_17();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_88_16();
  if ((static CloudCreditArtist.== infix(_:_:)(v6, v7) & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = v0[77] == v1[77] && v0[78] == v1[78];
  if (!v8 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v9 = v0[81];
  v10 = v1[81];
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_30;
    }

    v11 = v0[80] == v1[80] && v9 == v10;
    if (!v11 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v10)
  {
LABEL_30:
    v41 = 0;
    return OUTLINED_FUNCTION_15_61(v41);
  }

  OUTLINED_FUNCTION_67_19(v49);
  OUTLINED_FUNCTION_77_16(v50);
  OUTLINED_FUNCTION_87_19();
  OUTLINED_FUNCTION_67_19(v12);
  OUTLINED_FUNCTION_77_16((v2 + 384));
  v13 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_67_19(v13);
  v14 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v14);
  if (v8)
  {
    OUTLINED_FUNCTION_77_16(v47);
    OUTLINED_FUNCTION_172_0(v47);
    if (v8)
    {
      OUTLINED_FUNCTION_67_19(v48);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v15, v16, v17);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_67_19(v48);
  OUTLINED_FUNCTION_67_19(v46);
  OUTLINED_FUNCTION_77_16(v47);
  OUTLINED_FUNCTION_172_0(v47);
  if (v18)
  {
    OUTLINED_FUNCTION_67_19(v45);
    OUTLINED_FUNCTION_13_62();
    OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78();
    sub_21733BED8(v45);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v47, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_77_16(v45);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v19 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v19, v20, v21, v22, v23, v24, v25, v26, v43[0]);
  v27 = sub_21733BED8(v43);
  OUTLINED_FUNCTION_29_39(v27, v28, v29, v30, v31, v32, v33, v34, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10], v43[11], v43[12], v43[13], v43[14], v43[15], v43[16], v43[17], v43[18], v43[19], v43[20], v43[21], v43[22], v43[23], v43[24], v43[25], v43[26], v43[27], v43[28], v43[29], v43[30], v43[31], v43[32], v43[33], v43[34], v43[35], v43[36], v43[37], v43[38], v43[39], v43[40], v43[41], v43[42], v43[43], v43[44], v43[45], v43[46], v43[47], v44[0]);
  sub_21733BED8(v44);
  OUTLINED_FUNCTION_67_19(v45);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v35, v36, v37);
  if ((v3 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v0[130], v1[130]);
  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[131], v1[131]);
  if ((v39 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[132], v1[132]);
  if ((v40 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[133], v1[133]);
  return OUTLINED_FUNCTION_15_61(v41);
}