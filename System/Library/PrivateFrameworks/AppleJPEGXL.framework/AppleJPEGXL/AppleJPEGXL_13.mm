void sub_240B51630()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_240B51688(uint64_t a1, uint64_t a2)
{
  if (sub_240B516C4(*(a2 + 8), "ZN3jxl12_GLOBAL__N_112GetBitReaderENS_4SpanIKhEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_240B516C4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_240B51710(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 56) = 8 * (*(*a2 + 16) - *(*a2 + 32) + *(*a2 + 40)) - *(*a2 + 8);
  sub_240B3C8C8(v2);

  JUMPOUT(0x245CCE590);
}

uint64_t JxlDecoderGetBasicInfo(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 39) != 1)
  {
    return 2;
  }

  if (!a2)
  {
    return 0;
  }

  *(a2 + 188) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = *(a1 + 1024);
  v4 = sub_240B57820(a1 + 1616);
  v5 = v4;
  *(a2 + 4) = v4;
  if (*(a1 + 1624) == 1)
  {
    v6 = 8 * *(a1 + 1628) + 8;
  }

  else
  {
    v6 = *(a1 + 1632);
  }

  *(a2 + 8) = v6;
  *(a2 + 36) = *(a1 + 1233) ^ 1;
  *(a2 + 12) = *(a1 + 1220);
  v8 = *(a1 + 1444);
  v9 = *(a1 + 1445);
  *(a2 + 40) = v8;
  *(a2 + 44) = v9;
  v10 = *(a1 + 1440);
  *(a2 + 48) = v10;
  if ((*(a1 + 1000) & 1) == 0)
  {
    if (v10 < 5)
    {
      v4 = v6;
      v6 = v5;
    }

    else
    {
      *(a2 + 4) = v6;
      *(a2 + 8) = v4;
    }

    v5 = v6;
    *(a2 + 48) = 1;
    v6 = v4;
  }

  *(a2 + 20) = *(a1 + 1492);
  v11 = *(a1 + 1004);
  if (v11 > 0.0)
  {
    *(a2 + 20) = v11;
  }

  *(a2 + 24) = *(a1 + 1496);
  *(a2 + 28) = *(a1 + 1500);
  *(a2 + 32) = *(a1 + 1504);
  for (i = *(a1 + 1520); ; i += 96)
  {
    if (i == *(a1 + 1528))
    {
      v13 = 0;
      *(a2 + 60) = 0;
      *(a2 + 64) = 0;
      goto LABEL_21;
    }

    if (!*(i + 12))
    {
      break;
    }
  }

  *(a2 + 60) = *(i + 28);
  v13 = *(i + 72);
LABEL_21:
  *(a2 + 68) = v13;
  if (*(a1 + 1296) == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  v15 = *(a1 + 1512);
  *(a2 + 52) = v14;
  *(a2 + 56) = v15;
  if (v8)
  {
    *(a2 + 72) = sub_240B5796C(a1 + 1544);
    if (*(a1 + 1552) == 1)
    {
      v16 = 8 * *(a1 + 1556);
    }

    else
    {
      v16 = *(a1 + 1560);
    }

    *(a2 + 76) = v16;
  }

  if (v9)
  {
    *(a2 + 80) = *(a1 + 1584);
    v17 = *(a1 + 1596);
    *(a2 + 88) = *(a1 + 1592);
    *(a2 + 92) = v17;
  }

  if (*(a1 + 1446) == 1)
  {
    *(a2 + 96) = sub_240B57820(a1 + 1448);
    if (*(a1 + 1456) == 1)
    {
      v6 = 8 * *(a1 + 1460) + 8;
    }

    else
    {
      v6 = *(a1 + 1464);
    }
  }

  else
  {
    *(a2 + 96) = v5;
  }

  result = 0;
  *(a2 + 100) = v6;
  return result;
}

uint64_t JxlDecoderGetExtraChannelInfo(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (*(a1 + 39) != 1)
  {
    return 2;
  }

  v3 = *(a1 + 1520);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1528) - v3) >> 5) <= a2)
  {
    return 1;
  }

  v4 = v3 + 96 * a2;
  v5 = *(v4 + 28);
  *a3 = *(v4 + 12);
  a3[1] = v5;
  if (*(v4 + 24))
  {
    v6 = *(v4 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v4 + 40);
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(v4 + 71);
  if (v8 < 0)
  {
    v8 = *(v4 + 56);
  }

  result = 0;
  v10 = *(v4 + 72);
  a3[4] = v8;
  a3[5] = v10;
  a3[6] = *(v4 + 76);
  a3[7] = *(v4 + 80);
  a3[8] = *(v4 + 84);
  a3[9] = *(v4 + 88);
  a3[10] = *(v4 + 92);
  return result;
}

uint64_t JxlDecoderGetExtraChannelName(uint64_t a1, unint64_t a2, void *__dst, size_t a4)
{
  if (*(a1 + 39) != 1)
  {
    return 2;
  }

  v4 = *(a1 + 1520);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1528) - v4) >> 5) <= a2)
  {
    return 1;
  }

  v5 = v4 + 96 * a2;
  v6 = (v5 + 48);
  v7 = *(v5 + 71);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7 + 1;
    if (v8 <= a4)
    {
      goto LABEL_10;
    }

    return 1;
  }

  v8 = v6[1] + 1;
  if (v8 > a4)
  {
    return 1;
  }

  v6 = *v6;
LABEL_10:
  memcpy(__dst, v6, v8);
  return 0;
}

uint64_t JxlDecoderGetColorAsEncodedProfile(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 41) != 1)
  {
    return 2;
  }

  v13 = v3;
  v14 = v4;
  if (a2 == 1 && *(a1 + 1233) == 1)
  {
    v6 = *(a1 + 3304) + 5192;
  }

  else
  {
    v6 = a1 + 1240;
  }

  if (*(v6 + 9))
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  sub_240B250A4(v11, v6 + 16);
  result = 0;
  *(a3 + 96) = v12;
  v8 = v11[5];
  *(a3 + 64) = v11[4];
  *(a3 + 80) = v8;
  v9 = v11[1];
  *a3 = v11[0];
  *(a3 + 16) = v9;
  v10 = v11[3];
  *(a3 + 32) = v11[2];
  *(a3 + 48) = v10;
  return result;
}

uint64_t JxlDecoderGetICCProfileSize(uint64_t a1, int a2, void *a3)
{
  if (*(a1 + 41) != 1)
  {
    return 2;
  }

  if (a2 == 1 && *(a1 + 1233) == 1)
  {
    v3 = *(a1 + 3304) + 5192;
  }

  else
  {
    v3 = a1 + 1240;
  }

  if (*(v3 + 9) == 1 && (*(a1 + 1296) & 0xFFFFFFFE) == 2)
  {
    return 1;
  }

  result = 0;
  if (a3)
  {
    *a3 = *(v3 + 40) - *(v3 + 32);
  }

  return result;
}

uint64_t JxlDecoderGetColorAsICCProfile(uint64_t a1, int a2, void *__dst, unint64_t a4)
{
  if (*(a1 + 41) != 1)
  {
    return 2;
  }

  if (a2 == 1 && *(a1 + 1233) == 1)
  {
    v4 = *(a1 + 3304) + 5192;
  }

  else
  {
    v4 = a1 + 1240;
  }

  if (*(v4 + 9) == 1 && (*(a1 + 1296) & 0xFFFFFFFE) == 2 || *(v4 + 40) - *(v4 + 32) > a4)
  {
    return 1;
  }

  if (a2 == 1 && *(a1 + 1233) == 1)
  {
    v6 = *(a1 + 3304) + 5192;
  }

  else
  {
    v6 = a1 + 1240;
  }

  memcpy(__dst, *(v6 + 32), *(v6 + 40) - *(v6 + 32));
  return 0;
}

BOOL JxlDecoderFlushImage(uint64_t a1)
{
  if (*(a1 + 1056) != 1 || *(a1 + 3368) != 2)
  {
    return 1;
  }

  v22[4] = v1;
  v22[5] = v2;
  v3 = *(a1 + 3312);
  if (*(v3 + 1410) != 1)
  {
    return 1;
  }

  v4 = *(v3 + 360) ? 1 : *(v3 + 304);
  for (i = *(v3 + 392); i != *(v3 + 400); i += 40)
  {
    v4 |= *(i + 8) != 0;
  }

  if ((v4 & 1) != 0 && *(v3 + 1424) != 1)
  {
    return 1;
  }

  if (*(v3 + 64) == 3 && *(v3 + 1424) != 1)
  {
    return 0;
  }

  sub_240B38F94(*(a1 + 3312));
  v7 = *(v3 + 1360);
  v8 = *(v3 + 1368);
  v9 = v7;
  if (v7 != v8)
  {
    v10 = v7 + 1;
    v9 = *(v3 + 1360);
    if (v7 + 1 != v8)
    {
      v11 = *v7;
      v9 = *(v3 + 1360);
      v12 = v7 + 1;
      do
      {
        v14 = *v12++;
        v13 = v14;
        if (v14 < v11)
        {
          v11 = v13;
          v9 = v10;
        }

        v10 = v12;
      }

      while (v12 != v8);
    }
  }

  if (*(v3 + 160) <= *v9)
  {
    return sub_240B454AC(v3 + 776, v3 + 48, *v3, *(v3 + 8), *(v3 + 1424)) != 0;
  }

  if (v7 == v8)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      if (*(v3 + 160) > v7[v15])
      {
        (*(**(*v3 + 4488) + 16))(*(*v3 + 4488), v15);
        v8 = *(v3 + 1368);
        v7 = *(v3 + 1360);
      }

      ++v15;
      v16 = v8 - v7;
    }

    while (v15 < v8 - v7);
  }

  v21 = 0;
  v17 = *(v3 + 8);
  v19[0] = v3;
  v19[1] = &v21;
  v20 = v3;
  if (!v17)
  {
    v22[0] = 0;
    v22[1] = v22;
    v17 = v22;
  }

  if (sub_240B3CF64(v17, v16, &v20, v19))
  {
    return 1;
  }

  v18 = atomic_load(&v21);
  return (v18 & 1) != 0 || sub_240B454AC(v3 + 776, v3 + 48, *v3, *(v3 + 8), *(v3 + 1424)) != 0;
}

uint64_t JxlDecoderSetCms(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 3304);
  if (!v2)
  {
    operator new();
  }

  v3 = (v2 + 5816);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  v3[2] = a2[2];
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  *(*(a1 + 3304) + 5812) = 1;
  return 0;
}

uint64_t JxlDecoderPreviewOutBufferSize(uint64_t a1, unsigned int *a2, void *a3)
{
  if (*a2 > 2 || *(a1 + 2976) == 1)
  {
    return sub_240B52064(a1, a2, 0, a3, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_240B52064(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4, int a5)
{
  v24 = 0;
  v10 = sub_240B521C4(a1, a2, &v24);
  if (v10)
  {
    return v10;
  }

  v22 = 0;
  v23 = 0;
  if (a5)
  {
    v11 = *(a1 + 1000);
    v12 = *(a1 + 1440);
    if (v12 < 5 || (*(a1 + 1000) & 1) != 0)
    {
      v15 = sub_240B5796C(a1 + 1544);
    }

    else
    {
      if (*(a1 + 1552) == 1)
      {
        v13 = 8 * *(a1 + 1556);
      }

      else
      {
        v13 = *(a1 + 1560);
      }

      v11 = 0;
      v15 = v13;
    }

    v23 = v15;
    if (v12 < 5 || (v11 & 1) != 0)
    {
      if (*(a1 + 1552) == 1)
      {
        v17 = 8 * *(a1 + 1556);
      }

      else
      {
        v17 = *(a1 + 1560);
      }

      v16 = v17;
    }

    else
    {
      v16 = sub_240B5796C(a1 + 1544);
    }

    v22 = v16;
    if (!a3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_240B50C64(a1, &v23, &v22);
    if (!a3)
    {
LABEL_20:
      v14 = *a2;
      goto LABEL_21;
    }
  }

  v14 = 1;
LABEL_21:
  v18 = (v23 * v14 * v24 + 7) >> 3;
  v19 = *(a2 + 2);
  if (v19 < 2)
  {
    v20 = v18;
  }

  else
  {
    v20 = (v19 + v18 - 1) / v19 * v19;
  }

  *a4 = v18 + (v22 - 1) * v20;
  return v10;
}

uint64_t sub_240B521C4(uint64_t a1, _DWORD *a2, void *a3)
{
  if (*(a1 + 39) != 1)
  {
    return 2;
  }

  if ((*(a1 + 1003) & 1) == 0 && (!*(a1 + 3352) || !*(a1 + 3368)) || *a2 > 4u)
  {
    return 1;
  }

  v4 = a2[1];
  if (v4 > 5)
  {
    v5 = 0;
    result = 1;
  }

  else
  {
    v5 = qword_240C83EC0[v4];
    result = dword_240C817DC[v4];
  }

  *a3 = v5;
  return result;
}

uint64_t JxlDecoderSetPreviewOutBuffer(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 39) != 1)
  {
    return 1;
  }

  v12[5] = v4;
  v12[6] = v5;
  if (*(a1 + 1444) != 1 || (*(a1 + 1013) & 2) == 0 || *a2 <= 2 && *(a1 + 2976) != 1)
  {
    return 1;
  }

  v12[0] = 0;
  result = sub_240B52064(a1, a2, 0, v12, 1);
  if (!result)
  {
    result = 1;
    if (v12[0] <= a4)
    {
      *(a1 + 1056) = 1;
      *(a1 + 1064) = a3;
      *(a1 + 1120) = a4;
      v11 = *a2;
      *(a1 + 1144) = *(a2 + 2);
      *(a1 + 1128) = v11;
      return 0;
    }
  }

  return result;
}

uint64_t JxlDecoderImageOutBufferSize(uint64_t a1, unsigned int *a2, void *a3)
{
  if (*a2 > 2 || *(a1 + 2976) == 1)
  {
    return sub_240B52064(a1, a2, 0, a3, 0);
  }

  else
  {
    return 1;
  }
}

uint64_t JxlDecoderSetImageOutBuffer(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 39) != 1)
  {
    return 1;
  }

  v12[5] = v4;
  v12[6] = v5;
  if ((*(a1 + 1013) & 0x10) == 0 || *(a1 + 1056) == 1 && *(a1 + 1080) || *a2 <= 2 && *(a1 + 2976) != 1)
  {
    return 1;
  }

  v12[0] = 0;
  result = sub_240B52064(a1, a2, 0, v12, 0);
  if (!result)
  {
    result = 1;
    if (v12[0] <= a4)
    {
      *(a1 + 1056) = 1;
      *(a1 + 1064) = a3;
      *(a1 + 1120) = a4;
      v11 = *a2;
      *(a1 + 1144) = *(a2 + 2);
      *(a1 + 1128) = v11;
      return 0;
    }
  }

  return result;
}

uint64_t JxlDecoderExtraChannelBufferSize(uint64_t a1, unsigned int *a2, void *a3, unsigned int a4)
{
  if (*(a1 + 39) == 1 && (*(a1 + 1013) & 0x10) != 0 && *(a1 + 1512) > a4)
  {
    return sub_240B52064(a1, a2, 1, a3, 0);
  }

  else
  {
    return 1;
  }
}

__n128 JxlDecoderSetExtraChannelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v24 = 0;
  if (!JxlDecoderExtraChannelBufferSize(a1, a2, &v24, a5) && v24 <= a4)
  {
    v11 = *(a1 + 1176);
    v12 = *(a1 + 1168);
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v12) >> 3);
    if (v13 <= a5)
    {
      v14 = *(a1 + 1512);
      v15 = v14 - v13;
      if (v14 <= v13)
      {
        if (v14 < v13)
        {
          *(a1 + 1176) = v12 + 40 * v14;
        }
      }

      else
      {
        v16 = *(a1 + 1184);
        if (0xCCCCCCCCCCCCCCCDLL * ((v16 - v11) >> 3) < v15)
        {
          v17 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v12) >> 3);
          v18 = 2 * v17;
          if (2 * v17 <= v14)
          {
            v18 = *(a1 + 1512);
          }

          if (v17 >= 0x333333333333333)
          {
            v19 = 0x666666666666666;
          }

          else
          {
            v19 = v18;
          }

          if (v19 <= 0x666666666666666)
          {
            operator new();
          }

          sub_240B2291C();
        }

        v20 = v11 + 40 * v15;
        v21 = 40 * v14 - 40 * v13;
        do
        {
          *(v11 + 32) = 0;
          *v11 = 0uLL;
          *(v11 + 16) = 0uLL;
          v11 += 40;
          v21 -= 40;
        }

        while (v21);
        *(a1 + 1176) = v20;
      }

      v12 = *(a1 + 1168);
    }

    v22 = (v12 + 40 * a5);
    result = *a2;
    v22[1].n128_u64[0] = *(a2 + 16);
    *v22 = result;
    v23 = *(a1 + 1168) + 40 * a5;
    *v23 = 1;
    *(v23 + 24) = a3;
    *(v23 + 32) = a4;
  }

  return result;
}

double JxlDecoderSetImageOutCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 1104) = a3;
  *(a1 + 1112) = a4;
  *&result = JxlDecoderSetMultithreadedImageOutCallback(a1, a2, nullsub_11, sub_240B52774, nullsub_10, a1 + 1104).n128_u64[0];
  return result;
}

__n128 JxlDecoderSetMultithreadedImageOutCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(a1 + 1056) != 1 || !*(a1 + 1064)) && a3 && a4 && a5 && !sub_240B521C4(a1, a2, &v13))
  {
    *(a1 + 1056) = 1;
    *(a1 + 1072) = a3;
    *(a1 + 1080) = a4;
    *(a1 + 1088) = a5;
    *(a1 + 1096) = a6;
    result = *a2;
    *(a1 + 1144) = *(a2 + 16);
    *(a1 + 1128) = result;
  }

  return result;
}

uint64_t JxlDecoderGetFrameHeader(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 3352))
  {
    return 1;
  }

  if (!*(a1 + 3368))
  {
    return 1;
  }

  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v4 = *(a1 + 3352);
  if (*(a1 + 1445) == 1)
  {
    *a2 = *(v4 + 376);
    if (*(a1 + 1596) == 1)
    {
      *(a2 + 4) = *(v4 + 380);
    }
  }

  v5 = *(v4 + 103);
  if (v5 < 0)
  {
    v5 = *(v4 + 88);
  }

  v6 = *(v4 + 392);
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  v26 = 0;
  v27 = 0;
  sub_240B50C64(a1, &v27, &v26);
  v7 = v26;
  v8 = v27;
  *(a2 + 28) = v27;
  *(a2 + 32) = v7;
  if (*(a1 + 1003))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    v15 = *(a1 + 3352);
    if (v15[32].i8[0])
    {
      v16 = v15[37];
      *(a2 + 20) = v16;
      *(a2 + 16) = 1;
    }

    else
    {
      *(a2 + 24) = 0;
      v16 = 0;
      *(a2 + 16) = 0;
    }

    if ((*(a1 + 1000) & 1) == 0)
    {
      v17 = *(a1 + 1440);
      if (v17 >= 5)
      {
        if (*(a1 + 1624) == 1)
        {
          v20 = 8 * *(a1 + 1628) + 8;
        }

        else
        {
          v20 = *(a1 + 1632);
        }

        v18 = v20;
        v22 = sub_240B57820(a1 + 1616);
        v21 = *(a2 + 20);
        *(a2 + 20) = vrev64_s32(v21);
        v17 = *(a1 + 1440);
      }

      else
      {
        v25 = v16;
        v18 = sub_240B57820(a1 + 1616);
        if (*(a1 + 1624) == 1)
        {
          v19 = 8 * *(a1 + 1628) + 8;
        }

        else
        {
          v19 = *(a1 + 1632);
        }

        v21 = vrev64_s32(v25);
        v22 = v19;
      }

      v23 = (v17 - 1) & 3;
      if (((v17 - 1) & 3) != 0 && v23 != 3)
      {
        *(a2 + 20) = v18 - v8 - v21.i32[1];
      }

      if (v23 >= 2)
      {
        *(a2 + 24) = v22 - (v7 + v21.i32[0]);
      }
    }

    v24 = *(a1 + 3352);
    v9 = *(v24 + 312);
    v10 = *(v24 + 324);
    v11 = *(v24 + 316);
    v12 = *(v24 + 320);
    v13 = *(v24 + 396);
  }

  result = 0;
  *(a2 + 36) = v9;
  *(a2 + 40) = v10;
  *(a2 + 44) = v11;
  *(a2 + 48) = v12;
  *(a2 + 52) = v13;
  return result;
}

uint64_t JxlDecoderGetExtraChannelBlendInfo(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 3352);
  if (!v3 || !*(a1 + 3368) || *(a1 + 1512) <= a2)
  {
    return 1;
  }

  result = 0;
  v5 = *(v3 + 344) + 40 * a2;
  v6 = *(v5 + 20);
  v7 = *(v5 + 12);
  *a3 = *(v5 + 8);
  a3[1] = v6;
  LODWORD(v5) = *(v5 + 16);
  a3[2] = v7;
  a3[3] = v5;
  return result;
}

uint64_t JxlDecoderGetFrameName(uint64_t a1, void *__dst, size_t a3)
{
  v3 = *(a1 + 3352);
  if (!v3 || !*(a1 + 3368))
  {
    return 1;
  }

  v4 = (v3 + 80);
  if ((*(v3 + 103) & 0x80000000) == 0)
  {
    v5 = *(v3 + 103) + 1;
    if (v5 <= a3)
    {
      goto LABEL_9;
    }

    return 1;
  }

  v5 = *(v3 + 88) + 1;
  if (v5 > a3)
  {
    return 1;
  }

  v4 = *v4;
LABEL_9:
  memcpy(__dst, v4, v5);
  return 0;
}

uint64_t JxlDecoderSetOutputColorProfile(uint64_t a1, int *a2, char *a3, unint64_t a4)
{
  if (a2 && a3)
  {
    return 1;
  }

  if (!(a2 | a3))
  {
    return 1;
  }

  if (*(a1 + 41) != 1)
  {
    return 1;
  }

  if (*(a1 + 42))
  {
    return 1;
  }

  v8 = *(a1 + 3304);
  if (a3)
  {
    if ((*(v8 + 5812) & 1) == 0)
    {
      return 1;
    }
  }

  if (!a2)
  {
    sub_240B29BD0(&v14);
    memset(__p, 0, sizeof(__p));
    sub_240B51508(__p, a3, &a3[a4], a4);
    v12 = sub_240B52D9C(v16, __p, *(v8 + 5816), *(v8 + 5824));
    v15 = !v12;
    if (v12)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_240B4A744(v8 + 4944, &v14);
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    goto LABEL_30;
  }

  v11 = *a2;
  if (*(a1 + 2976) != 1)
  {
    goto LABEL_17;
  }

  if (v11 == 1)
  {
    goto LABEL_18;
  }

  if (*(a1 + 1056) == 1)
  {
    v9 = 1;
    if (*(a1 + 1128) < 3u || v11 == 3)
    {
      return v9;
    }
  }

  else
  {
LABEL_17:
    if (v11 == 3)
    {
      return 1;
    }
  }

LABEL_18:
  sub_240B29BD0(&v14);
  if (sub_240B52CC0(&v14, a2) || v17 == v18)
  {
    goto LABEL_19;
  }

  if (!sub_240B4A210(v16, v8 + 5208))
  {
    if (!sub_240B4A744(v8 + 4944, &v14))
    {
      sub_240B52CFC(a1 + 2920, v8 + 5192);
      goto LABEL_26;
    }

LABEL_19:
    v9 = 1;
    goto LABEL_30;
  }

LABEL_26:
  v9 = 0;
LABEL_30:
  v14 = &unk_2852A1CB8;
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v9;
}

void sub_240B52C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_240B52CC0(uint64_t a1, int *a2)
{
  v3 = sub_240B52E74(a1 + 16, a2);
  if (!v3)
  {
    sub_240B25034(a1);
  }

  return v3;
}

uint64_t sub_240B52CFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 16) = v4;
  if (a1 != a2)
  {
    sub_240B28A14((a1 + 32), *(a2 + 32), *(a2 + 40), *(a2 + 40) - *(a2 + 32));
  }

  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  return a1;
}

BOOL sub_240B52D9C(uint64_t a1, void *a2, uint64_t a3, unsigned int (*a4)(uint64_t, void, void, int *, int *))
{
  v7 = a1 + 16;
  v6 = *(a1 + 16);
  *(a1 + 40) = 3;
  *(a1 + 56) = 2;
  *(a1 + 24) = v6;
  v10 = 0;
  if (!a4(a3, *a2, a2[1] - *a2, v11, &v10))
  {
    return 1;
  }

  *(a1 + 44) = v10 != 0;
  result = sub_240B52E74(a1, v11);
  if (!result)
  {
    v9 = *v7;
    if (*v7)
    {
      *(a1 + 24) = v9;
      operator delete(v9);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    result = 0;
    *(a1 + 16) = *a2;
    *(a1 + 32) = a2[2];
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

BOOL sub_240B52E74(uint64_t a1, int *a2)
{
  v3 = *a2;
  *(a1 + 40) = *a2;
  v4 = a2[1];
  result = 1;
  if (v4 <= 0xB && ((1 << v4) & 0xC06) != 0)
  {
    *a1 = v4;
    if (v4 == 2)
    {
      v18[0] = *(a2 + 2);
      result = sub_240B53038(a1, v18);
      if (result)
      {
        return result;
      }

      v3 = *a2;
    }

    if (v3 != 3 && v3 != 0)
    {
      goto LABEL_17;
    }

    v9 = a2[6];
    result = 1;
    if (v9 <= 0xB && ((1 << v9) & 0xA06) != 0)
    {
      *(a1 + 4) = v9;
      if (v9 != 2 || (v10 = *(a2 + 3), v18[0] = *(a2 + 2), v18[1] = v10, v18[2] = *(a2 + 4), !(result = sub_240B53124(a1, v18))))
      {
LABEL_17:
        v11 = a2[20];
        result = 1;
        if (v11 <= 0x12 && ((1 << v11) & 0x72106) != 0)
        {
          v12 = 0;
          v13 = 0;
LABEL_20:
          *(a1 + 48) = v13;
          *(a1 + 52) = v12;
          *(a1 + 56) = v11;
          v14 = a2[24];
          if (v14 <= 3)
          {
            result = 0;
            *(a1 + 8) = v14;
            *(a1 + 24) = *(a1 + 16);
          }

          return result;
        }

        if (v11 == 0xFFFF)
        {
          v15 = *(a2 + 11);
          if (v15 >= 0.000122070312 && v15 <= 1.0)
          {
            if (fabs(v15 + -1.0) <= 0.001)
            {
              v12 = 0;
              v13 = 0;
              v11 = 8;
            }

            else if (fabs(v15 + -0.384615385) <= 0.001)
            {
              v12 = 0;
              v13 = 0;
              v11 = 17;
            }

            else
            {
              v17 = v15 * 10000000.0;
              v12 = vcvtas_u32_f32(v17);
              v13 = 1;
              v11 = 2;
            }

            goto LABEL_20;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_240B53038(int *a1, double *a2)
{
  v2 = *a2;
  if (*a2 == 0.0)
  {
    return 1;
  }

  v3 = a2[1];
  if (v3 == 0.0)
  {
    return 1;
  }

  if (fabs(v2 + -0.3127) <= 0.001 && fabs(v3 + -0.329) <= 0.001)
  {
    v4 = 0;
    v6 = 1;
LABEL_15:
    *a1 = v6;
    return v4;
  }

  if (fabs(v2 + -0.333333333) <= 0.001 && fabs(v3 + -0.333333333) <= 0.001)
  {
    v4 = 0;
    v6 = 10;
    goto LABEL_15;
  }

  if (fabs(v2 + -0.314) <= 0.001 && fabs(v3 + -0.351) <= 0.001)
  {
    v4 = 0;
    v6 = 11;
    goto LABEL_15;
  }

  *a1 = 2;
  return sub_240B533C0(a1 + 15, v2, a2[1]);
}

BOOL sub_240B53124(unsigned int *a1, double *a2)
{
  v2 = *a2;
  if (*a2 == 0.0)
  {
    return 1;
  }

  v4 = a2[1];
  if (v4 == 0.0)
  {
    return 1;
  }

  v5 = a2[2];
  if (v5 == 0.0)
  {
    return 1;
  }

  v6 = a2[3];
  if (v6 == 0.0)
  {
    return 1;
  }

  v7 = a2[4];
  if (v7 == 0.0)
  {
    return 1;
  }

  v8 = a2[5];
  if (v8 == 0.0)
  {
    return 1;
  }

  if (fabs(v2 + -0.64) <= 0.001 && fabs(v4 + -0.33) <= 0.001 && fabs(v5 + -0.3) <= 0.001 && fabs(v6 + -0.6) <= 0.001 && fabs(v7 + -0.15) <= 0.001 && fabs(v8 + -0.06) <= 0.001)
  {
    result = 0;
    v13 = 1;
LABEL_35:
    a1[1] = v13;
    return result;
  }

  if (fabs(v2 + -0.708) <= 0.001 && fabs(v4 + -0.292) <= 0.001 && fabs(v5 + -0.17) <= 0.001 && fabs(v6 + -0.797) <= 0.001 && fabs(v7 + -0.131) <= 0.001 && fabs(v8 + -0.046) <= 0.001)
  {
    result = 0;
    v13 = 9;
    goto LABEL_35;
  }

  if (fabs(v2 + -0.68) <= 0.001 && fabs(v4 + -0.32) <= 0.001 && fabs(v5 + -0.265) <= 0.001 && fabs(v6 + -0.69) <= 0.001 && fabs(v7 + -0.15) <= 0.001 && fabs(v8 + -0.06) <= 0.001)
  {
    result = 0;
    v13 = 11;
    goto LABEL_35;
  }

  a1[1] = 2;
  result = sub_240B533C0(a1 + 17, v2, a2[1]);
  if (!result)
  {
    if (sub_240B533C0(a1 + 19, a2[2], a2[3]))
    {
      return 1;
    }

    v11 = a2[4];
    v12 = a2[5];

    return sub_240B533C0(a1 + 21, v11, v12);
  }

  return result;
}

BOOL sub_240B533C0(unsigned int *a1, double a2, double a3)
{
  v3 = fabs(a3);
  if (fabs(a2) >= 4.0 || v3 >= 4.0)
  {
    return 1;
  }

  v5 = a2 * 1000000.0;
  v6 = llroundf(v5);
  *a1 = v6;
  if (v6 - 0x200000 < 0xFFC00000)
  {
    return 1;
  }

  v8 = a3 * 1000000.0;
  v9 = llroundf(v8);
  a1[1] = v9;
  return v9 - 0x200000 < 0xFFC00000;
}

uint64_t JxlDecoderSetDesiredIntensityTarget(uint64_t a1, float a2)
{
  if (a2 < 0.0)
  {
    return 1;
  }

  result = 0;
  *(a1 + 1004) = a2;
  return result;
}

uint64_t JxlDecoderSetBoxBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 963) & 1) != 0 || *(a1 + 961) != 1)
  {
    return 1;
  }

  result = 0;
  *(a1 + 963) = 257;
  *(a1 + 968) = a2;
  *(a1 + 976) = a3;
  *(a1 + 992) = 0;
  return result;
}

uint64_t JxlDecoderReleaseBoxBuffer(uint64_t a1)
{
  if (*(a1 + 963) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 992);
  v2 = *(a1 + 976) - v1;
  *(a1 + 963) = 0;
  *(a1 + 968) = 0u;
  if (*(a1 + 964) == 1)
  {
    v3 = *(a1 + 984) + v1;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 984) = v3;
  *(a1 + 964) = 0;
  return v2;
}

uint64_t JxlDecoderGetBoxType(uint64_t a1, _DWORD *a2, int a3)
{
  if (*(a1 + 961) != 1)
  {
    return 1;
  }

  result = 0;
  v5 = 957;
  if (!a3)
  {
    v5 = 953;
  }

  *a2 = *(a1 + v5);
  return result;
}

uint64_t JxlDecoderGetBoxSizeRaw(uint64_t a1, void *a2)
{
  if (*(a1 + 961) != 1)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  result = 0;
  *a2 = *(a1 + 936);
  return result;
}

uint64_t JxlDecoderGetBoxSizeContents(uint64_t a1, void *a2)
{
  if (*(a1 + 961) != 1)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  result = 0;
  *a2 = *(a1 + 928);
  return result;
}

uint64_t JxlDecoderSetProgressiveDetail(uint64_t a1, int a2)
{
  if ((a2 - 4) < 0xFFFFFFFD)
  {
    return 1;
  }

  result = 0;
  *(a1 + 1040) = a2;
  return result;
}

uint64_t JxlDecoderSetImageOutBitDepth(uint64_t a1, int *a2)
{
  if (*(a1 + 1056) != 1)
  {
    return 1;
  }

  v2 = *a2;
  v3 = *(a1 + 1132);
  if (*a2 == 2)
  {
    v6 = a2[1];
    if (!v6)
    {
      return 1;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    v6 = *(a1 + 1220);
    if (!v6)
    {
      return 1;
    }

LABEL_11:
    v7 = v3 == 2 && v6 > 8;
    if (!v7 && (v3 != 3 || v6 <= 0x10))
    {
      goto LABEL_7;
    }

    return 1;
  }

  if (v2)
  {
    return 1;
  }

  v4 = 1;
  if (v3 <= 5 && ((1 << v3) & 0x2D) != 0)
  {
LABEL_7:
    v4 = 0;
    v5 = *a2;
    *(a1 + 1160) = a2[2];
    *(a1 + 1152) = v5;
  }

  return v4;
}

uint64_t sub_240B53650(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    *a1 = *a2;
    v5 = a2 + 1;
    v6 = a2[1] + ((a3 + 7) >> 3);
    sub_240B4ADF0(a2 + 1, v6);
    v7 = a2[4];
    if (a2[3])
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    *v5 = v8;
    *(a1 + 32) = v7;
    a2[4] = a1;
  }

  return a1;
}

void sub_240B536C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  sub_240B53734(a1, a2, &v10, &v9);
  if (a4)
  {
    v7 = a4 + 40 * a3;
    v8 = *(v7 + 24) + v10;
    *(v7 + 16) += *(a1 + 16);
    *(v7 + 24) = v8;
  }
}

void sub_240B53734(uint64_t a1, void *a2, void *a3, void *a4)
{
  *(a1 + 24) = 1;
  if (a2)
  {
    v6 = *(a1 + 8);
    v7 = *a2 - *a1;
    *a3 = v7;
    *a4 = v6 - v7;
    v8 = a2 + 1;
    v9 = a2[1] - ((v6 - v7) >> 3);
    sub_240B4ADF0(a2 + 1, v9);
    if (a2[3])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    *v8 = v10;
    v11 = *(a1 + 32);
    for (a2[4] = v11; v11; v11 = v11[4])
    {
      *v11 += v7;
    }
  }
}

void sub_240B537D8(unint64_t *a1, uint64_t *a2)
{
  sub_240B53650(v8, a1, *a2);
  v4 = *a2 >> 3;
  v5 = *a2 & 7;
  if (*a2 >= 8)
  {
    v6 = 0;
    v7 = *a1;
    do
    {
      *(a1[3] + (v7 >> 3)) = (*(a2[3] + v6) << (v7 & 7)) | *(a1[3] + (v7 >> 3));
      v7 = *a1 + 8;
      *a1 = v7;
      ++v6;
    }

    while (v4 != v6);
  }

  if (v5)
  {
    *(a1[3] + (*a1 >> 3)) = ((*(a2[3] + v4) & ~(-1 << v5)) << (*a1 & 7)) | *(a1[3] + (*a1 >> 3));
    *a1 += v5;
  }

  sub_240B53734(v8, a1, &v10, &v9);
}

void sub_240B538C8(void *a1, unint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v6 = 0;
    do
    {
      v7 = *v2;
      v2 += 5;
      v6 += v7 >> 3;
    }

    while (v2 != v3);
    if (v6)
    {
      v8 = v6 + a1[1];
      sub_240B4ADF0(a1 + 1, v8 + 1);
      v9 = a1[3];
      if (v9)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = 0;
      }

      a1[1] = v10;
      v11 = *a1 >> 3;
      v13 = *a2;
      v12 = a2[1];
      if (v13 != v12)
      {
        do
        {
          v14 = *v13;
          if (*v13 >= 8)
          {
            memcpy((a1[3] + v11), v13[3], v14 >> 3);
            v11 += v14 >> 3;
          }

          v13 += 5;
        }

        while (v13 != v12);
        v9 = a1[3];
      }

      *(v9 + v11) = 0;
      *a1 += 8 * v6;
    }
  }
}

unint64_t sub_240B539A4(unint64_t result, void *a2, void *a3)
{
  v53 = result;
  v3 = a2[3];
  if (v3)
  {
    result = 0;
    v4 = a3[526];
    v5 = *(v4 + 996);
    v6 = a3[537] >> 2;
    v49 = v4;
    v7 = *(v4 + 1080);
    v8 = a2[2];
    v50 = 8 * v6;
    v51 = v6;
    v48 = 8 * v6 + 8;
    v9 = 4 * v6;
    v47 = (8 * v6) | 4;
    v52 = a2;
    do
    {
      if (v8)
      {
        v10 = 0;
        v11 = a2[1] + result;
        v12 = a3[538];
        v13 = a3[537];
        v57 = v12 + v13 * v11 + 4 * *a2;
        v14 = a3[526];
        v15 = *(v49 + 176) + *(v49 + 168) * v11 + *a2;
        v16 = v13 * v11 + 4 * *a2;
        v17 = v12 + v48 + v16;
        v18 = (v14[136] + *a2 + v14[135] * v11);
        v19 = v12 + v47 + v16;
        v54 = v17;
        v55 = v14[131] + v14[130] * v11 + 4 * *a2;
        v58 = result;
        v56 = v15;
        do
        {
          v20 = *(v15 + v10);
          if (v20)
          {
            v21 = 0;
            v22 = v20 >> 1;
            v23 = byte_240C87EA0[v20 >> 1];
            v24 = *(v53 + 104) / ((v5 * *(v55 + 4 * v10)) * -1.1716);
            v25 = byte_240C87EBB[v22];
            if (v23 <= 1)
            {
              v26 = 1;
            }

            else
            {
              v26 = v23;
            }

            if (v25 <= 1)
            {
              v27 = 1;
            }

            else
            {
              v27 = byte_240C87EBB[v22];
            }

            v28 = v18;
            v29 = v17;
            do
            {
              v30 = v28;
              v31 = v29;
              v32 = v26;
              do
              {
                v33 = *v30++;
                *v31++ = 1.0 / fminf(v24 * *(v53 + 44 + 4 * v33), -0.0001);
                --v32;
              }

              while (v32);
              ++v21;
              v29 = (v29 + v9);
              v28 += v7;
            }

            while (v21 != v27);
            v34 = *a2;
            v35 = v54;
            v36 = v27;
            if (!(v10 + *a2))
            {
              do
              {
                *(v35 - 1) = *v35;
                v35 = (v35 + v9);
                --v36;
              }

              while (v36);
            }

            v37 = -v34;
            v38 = v10 + v23 + v34;
            v39 = a3[526];
            if (v38 == *(v39 + 72))
            {
              v40 = 4 * v23;
              do
              {
                *(v17 + v40) = *(v19 + v40);
                v40 += v9;
                --v27;
              }

              while (v27);
              v41 = v10 + 2;
              if (v10 == v37)
              {
                v41 = 1;
              }

              v42 = v10 + 3;
            }

            else
            {
              v42 = v10 + 2;
              if (v10 == v37)
              {
                v41 = 1;
              }

              else
              {
                v41 = v10 + 2;
              }
            }

            v43 = v42 + v23 - v41;
            v44 = a2[1];
            v45 = v57 + 4 * v41;
            v46 = 4 * v43;
            if (!(result + v44))
            {
              memcpy((v45 + 4 * v51), (v45 + v50), 4 * v43);
              v15 = v56;
              result = v58;
              a2 = v52;
              v44 = v52[1];
              v39 = a3[526];
            }

            if (result + v25 + v44 == *(v39 + 80))
            {
              memcpy((v45 + 4 * (v25 + 2) * v51), (v45 + 4 * (v51 + v51 * v25)), v46);
              v15 = v56;
              result = v58;
              a2 = v52;
            }
          }

          ++v10;
          v8 = a2[2];
          v17 += 4;
          ++v18;
          v19 += 4;
        }

        while (v10 < v8);
        v3 = a2[3];
      }

      ++result;
    }

    while (result < v3);
  }

  return result;
}

uint64_t sub_240B53CC8(uint64_t a1)
{
  v2 = &unk_2852A2120;
  v3 = xmmword_240C112C0;
  v4 = 0;
  return (*(*a1 + 16))(a1, &v2);
}

uint64x2_t sub_240B53D3C(uint64_t a1, uint64_t a2, double a3, int64x2_t a4)
{
  v5 = *(a1 + 8);
  a4.i64[0] = 1;
  *&v6 = vaddq_s64(v5, a4).u64[0];
  *(&v6 + 1) = vaddq_s64(v5, v5).i64[1];
  *(a1 + 8) = v6;
  *(a1 + 24) *= 2;
  (*(*a2 + 16))(a2, a1);
  *(a1 + 24) >>= 1;
  v7 = *(a1 + 8);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v8.i64[0] = vaddq_s64(v7, v8).u64[0];
  result = vshrq_n_u64(v7, 1uLL);
  v8.i64[1] = result.i64[1];
  *(a1 + 8) = v8;
  return result;
}

uint64_t sub_240B53DE8(void *a1, uint64_t a2)
{
  result = (*(*a1 + 48))(a1, 0, a2);
  if (!result)
  {
    ++a1[2];
  }

  return result;
}

uint64_t sub_240B53E58(uint64_t a1)
{
  LODWORD(result) = (*(*a1 + 24))(a1, 1);
  if (result <= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_240B53F34(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  result = (*(*a1 + 24))(a1, 1);
  if (!result)
  {
    return *a3 ^ 1u;
  }

  return result;
}

uint64_t sub_240B53F90(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v5 = *a3;
  result = (*(*a1 + 40))(a1, 1, a2, &v5);
  if (!result)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t sub_240B5402C(uint64_t a1)
{
  LODWORD(result) = (*(*a1 + 24))(a1, 1);
  if (result <= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_240B5410C(uint64_t a1, float *a2, float a3)
{
  v3 = *(a1 + 32);
  if (vabds_f32(*a2, a3) >= 0.000001)
  {
    v3 = 0;
  }

  *(a1 + 32) = v3;
  return 0;
}

uint64_t sub_240B54134(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (*a3 != a2)
  {
    v3 = 0;
  }

  *(a1 + 32) = v3;
  return 0;
}

uint64_t sub_240B54150(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v4 = *(a1 + 32);
  if (*a4 != a3)
  {
    v4 = 0;
  }

  *(a1 + 32) = v4;
  return 0;
}

uint64_t sub_240B5416C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  v5 = *(a1 + 32);
  if (*a5 != a4)
  {
    v5 = 0;
  }

  *(a1 + 32) = v5;
  return 0;
}

uint64_t sub_240B541D8(uint64_t a1, void *a2, void *a3)
{
  v10 = &unk_2852A1F88;
  v13 = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v11 = xmmword_240C112C0;
  v12 = 0;
  result = (*(*a1 + 16))(a1, &v10);
  if (!result)
  {
    if (v13 == 1)
    {
      *a2 = 0;
      v6 = v14;
      v7 = v16;
      *a3 = v14;
      if (v7)
      {
        *a2 = v6 - v7;
        v17 = 0;
        sub_240B542E8(v6 - v7, &v17);
        v8 = v17 + v6;
        *a3 = v17 + v6;
        v9 = vcnt_s8(v15);
        v9.i16[0] = vaddlv_u8(v9);
        if (v9.u32[0] >= 2uLL)
        {
          *a3 = v8 + 2 * v9.u32[0] - 2;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_240B542E8(unint64_t result, uint64_t *a2)
{
  if (!result)
  {
    v2 = 2;
    goto LABEL_16;
  }

  if (result < 0x11)
  {
    v2 = 6;
    goto LABEL_16;
  }

  if (result < 0x111)
  {
    v2 = 10;
    goto LABEL_16;
  }

  if (result < 0x1000)
  {
    v7 = 14;
    goto LABEL_15;
  }

  v3 = result >> 12;
  v4 = 12;
  v2 = 19;
  do
  {
    v5 = v3;
    v2 += 9;
    if (v3 < 0x100)
    {
      break;
    }

    v3 >>= 8;
    v6 = v4 >= 0x34;
    v4 += 8;
  }

  while (!v6);
  if (v5 <= 0xFF)
  {
    v7 = v2 - 5;
LABEL_15:
    v2 = v7 + 1;
  }

LABEL_16:
  *a2 = v2;
  return result;
}

uint64_t sub_240B5436C(void *a1, uint64_t *a2)
{
  result = (*(*a1 + 48))(a1, 0, a2);
  if (!result)
  {
    ++a1[2];
    v5 = *a2;
    a1[6] = *a2;
    if (v5)
    {
      a1[7] = a1[5];
    }
  }

  return result;
}

uint64_t sub_240B543E0(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = &unk_2852A1F00;
  v9 = 1;
  v7 = xmmword_240C112C0;
  v8 = 0;
  (*(*a2 + 16))(a2, &v6);
  *a3 = v9;
  result = (*(*a1 + 24))(a1, 1, a3);
  if (!result)
  {
    return *a3 ^ 1u;
  }

  return result;
}

uint64_t sub_240B544B8(uint64_t a1, float *a2)
{
  v2 = fabsf(*a2);
  v3 = v2 != INFINITY && v2 <= 65504.0;
  *(a1 + 32) &= v3;
  *(a1 + 40) += 16;
  return 0;
}

uint64_t sub_240B54510(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = 0;
  sub_240B542E8(*a3, &v5);
  *(a1 + 40) += v5;
  return 0;
}

uint64_t sub_240B5455C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = *(a1 + 32);
  if (*a4 >> a2)
  {
    v4 = 0;
  }

  *(a1 + 32) = v4;
  *(a1 + 40) += a2;
  return 0;
}

uint64_t sub_240B54588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v7 = *a5;
  v12 = 0;
  v8 = sub_240B545F8(a2, a3, v7, &v13, &v12);
  v9 = v12;
  if (v8)
  {
    v9 = 0;
  }

  v10 = *(a1 + 32);
  if (v8)
  {
    v10 = 0;
  }

  *(a1 + 32) = v10;
  *(a1 + 40) += v9;
  return 0;
}

BOOL sub_240B545F8(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, unint64_t *a5)
{
  v5 = 0;
  v15[0] = a1;
  v15[1] = a2;
  *a4 = 0;
  v6 = 64;
  *a5 = 64;
  while (1)
  {
    v7 = *(v15 + v5);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = (v7 & 0x1F) + 1;
      v9 = v7 >> 5;
      v11 = v9 > a3;
      v10 = (1 << v8) + v9;
      v11 = !v11 && v10 > a3;
      v12 = v8 + 2;
      if (v11 && v12 < v6)
      {
        *a4 = v5;
        *a5 = v12;
        v6 = v8 + 2;
      }

      goto LABEL_12;
    }

    if ((v7 & 0x7FFFFFFF) == a3)
    {
      break;
    }

LABEL_12:
    if (++v5 == 4)
    {
      return v6 == 64;
    }
  }

  result = 0;
  *a4 = v5;
  *a5 = 2;
  return result;
}

uint64_t sub_240B546E4(uint64_t a1, uint64_t a2)
{
  v4 = &unk_2852A2098;
  v7 = 257;
  v8 = a1;
  bzero(&v9, 0x210uLL);
  v5 = xmmword_240C112C0;
  v6 = 0;
  LODWORD(result) = (*(*a2 + 16))(a2, &v4);
  if (result)
  {
    return result;
  }

  else
  {
    return v7 ^ 1u;
  }
}

uint64_t sub_240B54790(uint64_t a1)
{
  ++*(a1 + 24);
  v1 = *(a1 + 568);
  if (!v1)
  {
    return 0;
  }

  if (*(a1 + 33) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 560);
  result = 1;
  v5 = __CFADD__(v3, v1);
  v6 = v3 + v1;
  if (!v5)
  {
    v7 = 8 * (*(*(a1 + 40) + 16) - *(*(a1 + 40) + 32) + *(*(a1 + 40) + 40)) - *(*(a1 + 40) + 8);
    if (v6 >= v7)
    {
      if (v6 != v7)
      {
        sub_240B50690(*(a1 + 40), v6 - v7);
        v8 = *(a1 + 40);
        v10 = v8[3];
        v9 = v8[4];
        v11 = 8 * (v8[2] - v9 + v8[5]) - v8[1];
        v8[7] = v11;
        if (v11 > 8 * (v10 - v9) + 64)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_240B54860(void *a1, unint64_t *a2)
{
  result = (*(*a1 + 48))(a1, 0, a2);
  if (!result)
  {
    ++a1[2];
    v5 = *a2;
    if (*a2)
    {
      while (1)
      {
        v6 = &a1[__clz(__rbit64(v5)) + 6];
        result = (*(*a1 + 48))(a1, 0, v6);
        if (result)
        {
          break;
        }

        v7 = a1[70];
        v8 = __CFADD__(*v6, v7);
        a1[70] = *v6 + v7;
        if (v8)
        {
          return 1;
        }

        v5 &= v5 - 1;
        if (!v5)
        {
          result = 0;
          a1[71] = 8 * (*(a1[5] + 16) - *(a1[5] + 32) + *(a1[5] + 40)) - *(a1[5] + 8);
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

uint64_t sub_240B54974(uint64_t a1, uint64_t a2)
{
  v3 = &unk_2852A1E78;
  v4 = xmmword_240C112C0;
  v5 = 0;
  return (*(*a2 + 16))(a2, &v3);
}

uint64_t sub_240B549EC(uint64_t a1, float *a2)
{
  v3 = sub_240B54A5C(*(a1 + 40), a2);
  v4 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *(a1 + 32) = v4;
  v5 = *(a1 + 40);
  v7 = v5[3];
  v6 = v5[4];
  v8 = 8 * (v5[2] - v6 + v5[5]) - v5[1];
  v5[7] = v8;
  if (v8 <= 8 * (v7 - v6) + 64)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_240B54A5C(unint64_t *a1, float *a2)
{
  v4 = a1[2];
  if (v4 > a1[3])
  {
    sub_240B244C4(a1);
    v6 = *a1;
    v7 = a1[1];
  }

  else
  {
    v5 = a1[1];
    v6 = *a1 | (*v4 << v5);
    a1[2] = v4 + ((63 - v5) >> 3);
    v7 = v5 | 0x38;
  }

  *a1 = v6 >> 16;
  a1[1] = v7 - 16;
  v8 = (v6 >> 10) & 0x1F;
  if (v8 == 31)
  {
    return 1;
  }

  v9 = v6;
  v10 = v6 & 0x3FF;
  result = 0;
  if (v8)
  {
    *a2 = ((v9 << 16) & 0x80000000 | (v8 << 23) | (v10 << 13)) + 939524096;
  }

  else
  {
    v12 = vcvts_n_f32_u32(v10, 0xAuLL) * 0.000061035;
    v13 = -v12;
    if (v9 < 0x8000)
    {
      v13 = v12;
    }

    *a2 = v13;
  }

  return result;
}

uint64_t sub_240B54B30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a3 = sub_240B54B98(*(a1 + 40));
  v4 = *(a1 + 40);
  v6 = v4[3];
  v5 = v4[4];
  v7 = 8 * (v4[2] - v5 + v4[5]) - v4[1];
  v4[7] = v7;
  if (v7 <= 8 * (v6 - v5) + 64)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_240B54B98(unint64_t *a1)
{
  v2 = a1[2];
  if (v2 > a1[3])
  {
    sub_240B244C4(a1);
    v4 = *a1;
    v5 = a1[1];
  }

  else
  {
    v3 = a1[1];
    v4 = *a1 | (*v2 << v3);
    a1[2] = v2 + ((63 - v3) >> 3);
    v5 = v3 | 0x38;
  }

  v6 = v4 & 3;
  v7 = v5 - 2;
  v8 = v4 >> 2;
  *a1 = v8;
  a1[1] = v5 - 2;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v12 = a1[2];
      if (v12 > a1[3])
      {
        sub_240B244C4(a1);
        v13 = *a1;
        v14 = a1[1];
      }

      else
      {
        v13 = (*v12 << v7) | v8;
        a1[2] = v12 + ((65 - v5) >> 3);
        v14 = v7 | 0x38;
      }

      *a1 = v13 >> 8;
      a1[1] = v14 - 8;
      return v13 + 17;
    }

    else
    {
      v15 = a1[2];
      if (v15 > a1[3])
      {
        sub_240B244C4(a1);
        v16 = *a1;
        v17 = a1[1];
      }

      else
      {
        v16 = (*v15 << v7) | v8;
        a1[2] = v15 + ((65 - v5) >> 3);
        v17 = v7 | 0x38;
      }

      v6 = v16 & 0xFFF;
      v18 = v17 - 12;
      v19 = v16 >> 12;
      *a1 = v16 >> 12;
      a1[1] = v18;
      for (i = 12; ; i += 8)
      {
        v21 = a1[2];
        if (v21 > a1[3])
        {
          sub_240B244C4(a1);
          v22 = *a1;
          v23 = a1[1];
        }

        else
        {
          v22 = v19 | (*v21 << v18);
          a1[2] = v21 + ((63 - v18) >> 3);
          v23 = v18 | 0x38;
        }

        v24 = v23 - 1;
        v25 = v22 >> 1;
        *a1 = v22 >> 1;
        a1[1] = v23 - 1;
        if ((v22 & 1) == 0)
        {
          break;
        }

        v26 = a1[2];
        v27 = a1[3];
        if (i == 60)
        {
          if (v26 > v27)
          {
            sub_240B244C4(a1);
            v30 = *a1;
            v31 = a1[1];
          }

          else
          {
            v30 = (*v26 << v24) | v25;
            a1[2] = v26 + ((64 - v23) >> 3);
            v31 = v24 | 0x38;
          }

          *a1 = v30 >> 4;
          a1[1] = v31 - 4;
          return v6 | (v30 << 60);
        }

        if (v26 > v27)
        {
          sub_240B244C4(a1);
          v28 = *a1;
          v29 = a1[1];
        }

        else
        {
          v28 = (*v26 << v24) | v25;
          a1[2] = v26 + ((64 - v23) >> 3);
          v29 = v24 | 0x38;
        }

        v18 = v29 - 8;
        v19 = v28 >> 8;
        *a1 = v28 >> 8;
        a1[1] = v18;
        v6 |= v28 << i;
      }
    }
  }

  else if (v6)
  {
    v9 = a1[2];
    if (v9 > a1[3])
    {
      sub_240B244C4(a1);
      v10 = *a1;
      v11 = a1[1];
    }

    else
    {
      v10 = (*v9 << v7) | v8;
      a1[2] = v9 + ((65 - v5) >> 3);
      v11 = v7 | 0x38;
    }

    *a1 = v10 >> 4;
    a1[1] = v11 - 4;
    return (v10 & 0xF) + 1;
  }

  return v6;
}

uint64_t sub_240B54E20(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = *(a1 + 40);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 > v7)
  {
    sub_240B244C4(*(a1 + 40));
    v10 = *v6;
    v12 = v6[1];
    v13 = *(a1 + 40);
    v11 = v13[2];
    v7 = v13[3];
  }

  else
  {
    v9 = v6[1];
    v10 = *v6 | (*v8 << v9);
    v11 = v8 + ((63 - v9) >> 3);
    v6[2] = v11;
    v12 = v9 | 0x38;
    v13 = v6;
  }

  *v6 = v10 >> a2;
  v6[1] = v12 - a2;
  *a4 = v10 & ~(-1 << a2);
  v14 = v13[4];
  v15 = 8 * &v11[v13[5] - v14] - v13[1];
  v13[7] = v15;
  if (v15 <= 8 * (v7 - v14) + 64)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_240B54EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *a5 = sub_240B54F60(a2, a3, *(a1 + 40));
  v6 = *(a1 + 40);
  v8 = v6[3];
  v7 = v6[4];
  v9 = 8 * (v6[2] - v7 + v6[5]) - v6[1];
  v6[7] = v9;
  if (v9 <= 8 * (v8 - v7) + 64)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_240B54F60(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v15[0] = a1;
  v15[1] = a2;
  v4 = a3[2];
  if (v4 > a3[3])
  {
    sub_240B244C4(a3);
    v6 = *a3;
    v7 = a3[1];
  }

  else
  {
    v5 = a3[1];
    v6 = *a3 | (*v4 << v5);
    a3[2] = v4 + ((63 - v5) >> 3);
    v7 = v5 | 0x38;
  }

  v8 = v7 - 2;
  *a3 = v6 >> 2;
  a3[1] = v7 - 2;
  v9 = *(v15 + (v6 & 3));
  if ((v9 & 0x80000000) != 0)
  {
    return v9 & 0x7FFFFFFF;
  }

  v10 = (v9 & 0x1F) + 1;
  v11 = a3[2];
  if (v11 > a3[3])
  {
    sub_240B244C4(a3);
    v12 = *a3;
    v13 = a3[1];
  }

  else
  {
    v12 = (*v11 << v8) | (v6 >> 2);
    a3[2] = v11 + ((65 - v7) >> 3);
    v13 = v8 | 0x38;
  }

  *a3 = v12 >> v10;
  a3[1] = v13 - v10;
  return (v12 & ~(-1 << v10)) + (v9 >> 5);
}

BOOL sub_240B550A8(uint64_t a1, uint64_t a2)
{
  v4 = &unk_2852A2098;
  v7 = 257;
  v8 = a1;
  bzero(&v9, 0x210uLL);
  v5 = xmmword_240C112C0;
  v6 = 0;
  return (*(*a2 + 16))(a2, &v4) != -1;
}

uint64_t sub_240B5514C(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + 8);
  result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x6180000002, 0, &v12);
  if (result)
  {
    return result;
  }

  v5 = v12;
  if (v12 >= 5)
  {
    return 1;
  }

  *(a1 + 8) = v12;
  v6 = v5 & 6;
  if (*(a1 + 24))
  {
    v7 = v6 == 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ((*(*a2 + 64))(a2, v8))
  {
    goto LABEL_11;
  }

  result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x6280000002, 0, a1 + 12);
  if (result)
  {
    return result;
  }

  if (!(*(*a2 + 96))(a2))
  {
LABEL_11:
    if (!*(a1 + 24))
    {
      v9 = *(a1 + 8);
      goto LABEL_19;
    }
  }

  else if (*(a1 + 24) <= *(a1 + 12))
  {
    return 1;
  }

  v9 = *(a1 + 8);
  if ((v9 & 0xFFFFFFFE) != 2)
  {
LABEL_19:
    v10 = v9 == 4;
    goto LABEL_20;
  }

  v10 = 1;
LABEL_20:
  if ((*(*a2 + 64))(a2, v10) || (result = (*(*a2 + 24))(a2, 0, a1 + 16), !result))
  {
    if (*(a1 + 8))
    {
      v11 = 1;
    }

    else
    {
      v11 = *(a1 + 32);
    }

    if ((*(*a2 + 64))(a2, v11 & 1))
    {
      return 0;
    }

    result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x8000000380000002, 0, a1 + 20);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_240B553E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    LOBYTE(v4) = *(v4 + 253);
  }

  if ((*(*a2 + 64))(a2, v4 & 1) || (result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x1F00000007, 0, a1 + 8), !result))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      LOBYTE(v5) = *(v5 + 404);
    }

    if ((*(*a2 + 64))(a2, v5 & 1))
    {
      return 0;
    }

    result = (*(*a2 + 40))(a2, 32, 0, a1 + 12);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_240B5551C(_DWORD *a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 0x8000000280000001, 0x8280000003, 1, a1 + 2);
  if (!result)
  {
    if ((*(*a2 + 64))(a2, a1[2] != 1))
    {
      return 0;
    }

    result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x6080000002, 0, a1 + 3);
    if (!result)
    {
      v6 = a1[2];
      v5 = a1[3];
      if (v5 <= v6)
      {
        if (v6 == 1)
        {
          v7 = 0;
LABEL_14:
          a1[v7 + 26] = 0;
          if (!v5)
          {
            return 0;
          }

          v10 = 0;
          v11 = a1 + 4;
          while (1)
          {
            result = (*(*a2 + 32))(a2, 0x8000000280000001, 0x8000000880000004, 1, v11);
            if (result)
            {
              break;
            }

            if (v10 && *v11 >= *(v11 - 1))
            {
              return 1;
            }

            ++v10;
            v12 = a1[3];
            ++v11;
            if (v10 >= v12)
            {
              if (!v12)
              {
                return 0;
              }

              v13 = 0;
              for (i = a1 + 15; ; ++i)
              {
                result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x280000002, 0, i);
                if (result)
                {
                  break;
                }

                v15 = *i;
                if (v13 && v15 <= *(i - 1) || v15 >= a1[2])
                {
                  return 1;
                }

                result = 0;
                if (++v13 >= a1[3])
                {
                  return result;
                }
              }

              return result;
            }
          }
        }

        else
        {
          v8 = 0;
          v9 = a1 + 26;
          while (1)
          {
            result = (*(*a2 + 40))(a2, 2, 0, v9);
            if (result)
            {
              break;
            }

            ++v8;
            v7 = (a1[2] - 1);
            ++v9;
            if (v8 >= v7)
            {
              v5 = a1[3];
              goto LABEL_14;
            }
          }
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_240B557C4(uint64_t a1, uint64_t a2)
{
  if (!(*(*a2 + 72))(a2, a1, a1 + 8))
  {
    (*(*a2 + 80))(a2, a1);
    return 0;
  }

  v54 = *(a1 + 16);
  result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x8000000380000002, 0, &v54);
  if (!result)
  {
    *(a1 + 16) = v54;
    if ((*(*a2 + 96))(a2) && *(a1 + 560) == 1 && *(a1 + 16))
    {
      return 1;
    }

    v53 = *(a1 + 12) == 1;
    result = (*(*a2 + 24))(a2, 0, &v53);
    if (!result)
    {
      *(a1 + 12) = v53;
      result = (*(*a2 + 48))(a2, 0, a1 + 24);
      if (!result)
      {
        v5 = *(a1 + 408);
        if (v5 && *(v5 + 41) != 1)
        {
          LOBYTE(v54) = *(a1 + 32) == 2;
          result = (*(*a2 + 24))(a2, 0, &v54);
          if (result)
          {
            return result;
          }

          v9 = v54;
          v10 = v54 ? 2 : 1;
          *(a1 + 32) = v10;
          v6 = v9 && ((*(a1 + 24) & 0x20) == 0);
        }

        else
        {
          v6 = 0;
          *(a1 + 32) = 0;
        }

        if ((*(*a2 + 64))(a2, v6) || (result = (*(*a2 + 88))(a2, a1 + 40), !result))
        {
          v7 = *(a1 + 408);
          if (v7)
          {
            v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 336) - *(v7 + 328)) >> 5);
          }

          else
          {
            v8 = 0;
          }

          if (!(*(*a2 + 64))(a2, (*(a1 + 24) & 0x20) == 0))
          {
            result = (*(*a2 + 32))(a2, 0x8000000280000001, 0x8000000880000004, 1, a1 + 268);
            if (result)
            {
              return result;
            }

            if (*(a1 + 408) && !(*(*a2 + 64))(a2, v8 != 0))
            {
              v26 = *(a1 + 408);
              v27 = 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 336) - *(v26 + 328)) >> 5);
              v54 = 1;
              sub_240B2B4A8((a1 + 272), v27, &v54);
              if (*(v26 + 336) != *(v26 + 328))
              {
                v28 = 0;
                v29 = 0;
                v30 = 40;
                do
                {
                  v31 = *(*(*(a1 + 408) + 328) + v30);
                  v32 = *(a1 + 272);
                  *(v32 + v28) >>= v31;
                  result = (*(*a2 + 32))(a2, 0x8000000280000001, 0x8000000880000004, 1, v32 + v28);
                  if (result)
                  {
                    return result;
                  }

                  v33 = *(v32 + v28) << v31;
                  *(v32 + v28) = v33;
                  if (v33 > 8 || v33 < *(a1 + 268))
                  {
                    return 1;
                  }

                  ++v29;
                  v28 += 4;
                  v30 += 96;
                }

                while (v29 < 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 336) - *(v26 + 328)) >> 5));
              }
            }

            else
            {
              *(a1 + 280) = *(a1 + 272);
            }
          }

          if ((*(*a2 + 64))(a2, *(a1 + 12) == 1) || (result = (*(*a2 + 40))(a2, 2, 1, a1 + 64), !result))
          {
            v11 = !*(a1 + 12) && (*(a1 + 32) == 0);
            if ((*(*a2 + 64))(a2, v11))
            {
              *(a1 + 68) = 0x200000002;
            }

            else
            {
              result = (*(*a2 + 40))(a2, 3, 3, a1 + 68);
              if (result)
              {
                return result;
              }

              result = (*(*a2 + 40))(a2, 3, 2, a1 + 72);
              if (result)
              {
                return result;
              }
            }

            if ((*(*a2 + 64))(a2, *(a1 + 16) != 2) || (result = (*(*a2 + 88))(a2, a1 + 104), !result))
            {
              if ((*(*a2 + 64))(a2, *(a1 + 16) == 1) || (result = (*(*a2 + 32))(a2, 0x8000000280000001, 0x8000000480000003, 1, a1 + 404), !result))
              {
                v12 = *(a1 + 16);
                if (v12 != 1)
                {
                  *(a1 + 404) = 0;
                }

                if ((*(*a2 + 64))(a2, v12 != 1))
                {
                  v13 = 0;
                  v14 = *(a1 + 16);
                }

                else
                {
                  result = (*(*a2 + 24))(a2, 0, a1 + 256);
                  if (result)
                  {
                    return result;
                  }

                  v18 = (*(*a2 + 64))(a2, *(a1 + 256));
                  v14 = *(a1 + 16);
                  if (v18)
                  {
                    goto LABEL_65;
                  }

                  if (v14)
                  {
                    v39 = v14 == 3;
                  }

                  else
                  {
                    v39 = 1;
                  }

                  v40 = v39;
                  if (!(*(*a2 + 64))(a2, v40))
                  {
                    v54 = (2 * *(a1 + 296)) ^ (*(a1 + 296) >> 31);
                    v52 = (2 * *(a1 + 300)) ^ (*(a1 + 300) >> 31);
                    result = (*(*a2 + 32))(a2, 0x200A00000007, 0x9201D0001200DLL, 0, &v54);
                    if (result)
                    {
                      return result;
                    }

                    result = (*(*a2 + 32))(a2, 0x200A00000007, 0x9201D0001200DLL, 0, &v52);
                    if (result)
                    {
                      return result;
                    }

                    *(a1 + 296) = -(v54 & 1) ^ (v54 >> 1);
                    *(a1 + 300) = -(v52 & 1) ^ (v52 >> 1);
                  }

                  result = (*(*a2 + 32))(a2, 0x200A00000007, 0x9201D0001200DLL, 0, a1 + 260);
                  if (result)
                  {
                    return result;
                  }

                  result = (*(*a2 + 32))(a2, 0x200A00000007, 0x9201D0001200DLL, 0, a1 + 264);
                  if (result)
                  {
                    return result;
                  }

                  if (*(a1 + 256) == 1 && (!*(a1 + 260) || !*(a1 + 264)))
                  {
                    return 1;
                  }

                  v14 = *(a1 + 16);
                  if (v14 != 3 && v14)
                  {
LABEL_65:
                    v13 = 0;
                  }

                  else
                  {
                    v41 = sub_240B56664(a1);
                    v42 = sub_240B3CD44(a1);
                    v43 = *(a1 + 296);
                    v44 = *(a1 + 300);
                    v45 = v43 <= 0 && v44 <= 0;
                    v46 = *(a1 + 260) + v43;
                    v13 = !v45 || v46 < v42 || *(a1 + 264) + v44 < v41;
                  }
                }

                if (v14)
                {
                  v15 = v14 == 3;
                }

                else
                {
                  v15 = 1;
                }

                v16 = v15;
                if ((*(*a2 + 64))(a2, v16))
                {
                  *(a1 + 392) = 0;
LABEL_53:
                  if (*(a1 + 16) == 1)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    v17 = *(a1 + 392) ^ 1;
                  }

                  if ((*(*a2 + 64))(a2, v17 & 1) || (result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x8000000380000002, 0, a1 + 396), !result))
                  {
                    v24 = *(a1 + 16);
                    if (v24 == 1)
                    {
                      *(a1 + 400) = 1;
                    }

                    else
                    {
                      if ((*(a1 + 392) & 1) != 0 || *(a1 + 376) && !*(a1 + 396))
                      {
                        v25 = 0;
                      }

                      else
                      {
                        if (v24)
                        {
                          v35 = v24 == 3;
                        }

                        else
                        {
                          v35 = 1;
                        }

                        v36 = v35;
                        if ((*(a1 + 312) != 0) | v13 & 1)
                        {
                          v25 = 0;
                        }

                        else
                        {
                          v25 = v36;
                        }
                      }

                      if ((*(*a2 + 64))(a2, v25))
                      {
                        if (!(*(*a2 + 64))(a2, *(a1 + 16) == 2))
                        {
                          result = (*(*a2 + 24))(a2, 1, a1 + 400);
                          if (result)
                          {
                            return result;
                          }

                          if (*(a1 + 256) == 1)
                          {
                            v37 = *(a1 + 260);
                            v38 = *(a1 + 264);
                          }

                          else
                          {
                            v49 = *(a1 + 408);
                            v37 = sub_240B57820(v49 + 424);
                            if (*(v49 + 432) == 1)
                            {
                              v38 = 8 * *(v49 + 436) + 8;
                            }

                            else
                            {
                              v38 = *(v49 + 440);
                            }
                          }

                          if ((*(a1 + 400) & 1) == 0)
                          {
                            v50 = *(a1 + 408);
                            if (v37 < sub_240B57820(v50 + 424))
                            {
                              return 1;
                            }

                            v51 = *(v50 + 432) == 1 ? 8 * *(v50 + 436) + 8 : *(v50 + 440);
                            if (v38 < v51 || *(a1 + 296) || *(a1 + 300))
                            {
                              return 1;
                            }
                          }
                        }
                      }

                      else
                      {
                        result = (*(*a2 + 24))(a2, 0, a1 + 400);
                        if (result)
                        {
                          return result;
                        }
                      }
                    }

                    result = sub_240B56A58(a2, (a1 + 80));
                    if (!result)
                    {
                      *(a1 + 552) = v53;
                      result = (*(*a2 + 88))(a2, a1 + 416);
                      if (!result)
                      {
                        result = (*(*a2 + 104))(a2, a1 + 568);
                        if (!result)
                        {
                          return (*(*a2 + 112))(a2);
                        }
                      }
                    }
                  }

                  return result;
                }

                *(a1 + 328) = v8;
                *(a1 + 336) = v13;
                result = (*(*a2 + 88))(a2, a1 + 304);
                if (result)
                {
                  return result;
                }

                v19 = *(a1 + 312) == 0;
                sub_240B566C0((a1 + 344), v8);
                if (v8)
                {
                  v20 = 0;
                  v21 = v8;
                  do
                  {
                    v22 = *(a1 + 344) + v20;
                    *(v22 + 32) = v13;
                    *(v22 + 24) = v8;
                    result = (*(*a2 + 88))(a2, v22);
                    if (result)
                    {
                      return result;
                    }

                    v19 = v19 & (*(v22 + 8) == 0);
                    v20 += 40;
                  }

                  while (--v21);
                }

                if (!(*(*a2 + 96))(a2) || *(a1 + 560) != 1 || v19 && (*(a1 + 256) & 1) == 0)
                {
                  v23 = *(a1 + 408);
                  if (v23)
                  {
                    LOBYTE(v23) = *(v23 + 253);
                  }

                  if (!(*(*a2 + 64))(a2, v23 & 1))
                  {
                    *(a1 + 384) = *(a1 + 408);
                    result = (*(*a2 + 88))(a2, a1 + 368);
                    if (result)
                    {
                      return result;
                    }
                  }

                  result = (*(*a2 + 24))(a2, 1, a1 + 392);
                  if (result)
                  {
                    return result;
                  }

                  goto LABEL_53;
                }

                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_240B56664(uint64_t a1)
{
  v1 = *(a1 + 408);
  if (v1)
  {
    if (*(a1 + 560) == 1)
    {
      if (*(v1 + 360) == 1)
      {
        LODWORD(v1) = 8 * *(v1 + 364);
      }

      else
      {
        LODWORD(v1) = *(v1 + 368);
      }
    }

    else if (*(v1 + 432) == 1)
    {
      LODWORD(v1) = 8 * *(v1 + 436) + 8;
    }

    else
    {
      LODWORD(v1) = *(v1 + 440);
    }
  }

  return v1;
}

void *sub_240B566C0(void *result, unint64_t a2)
{
  v2 = result;
  v3 = *result;
  v4 = result[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 40 * a2);
      if (v4 != v11)
      {
        v12 = v4 - 5;
        v13 = v12;
        v14 = v12;
        do
        {
          v15 = *v14;
          v14 -= 5;
          result = (*v15)(v13);
          v12 -= 5;
          v16 = v13 == v11;
          v13 = v14;
        }

        while (!v16);
      }

      v2[1] = v11;
    }
  }

  else
  {
    v7 = result[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x666666666666666)
      {
        v23 = result;
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 3);
        v9 = 0x999999999999999ALL * ((v7 - v3) >> 3);
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x333333333333333)
        {
          v10 = 0x666666666666666;
        }

        else
        {
          v10 = v9;
        }

        sub_240B3C974(v10);
      }

      sub_240B228BC();
    }

    v17 = &v4[5 * v6];
    v18 = 40 * a2 - 8 * ((v4 - *result) >> 3);
    v19 = result[1];
    do
    {
      *v19 = &unk_2852A21A8;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      v20 = &unk_2852A2120;
      v21 = xmmword_240C112C0;
      v22 = 0;
      result = sub_240B5514C(v19, &v20);
      v19 += 40;
      v4 += 5;
      v18 -= 40;
    }

    while (v18);
    v2[1] = v17;
  }

  return result;
}

void sub_240B56A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_240B56BA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240B56A58(uint64_t a1, std::string *a2)
{
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  LODWORD(__n) = size;
  result = (*(*a1 + 32))(a1, 0x380000000, 0x60900000204, 0, &__n);
  if (!result)
  {
    if ((*(*a1 + 96))(a1))
    {
      std::string::resize(a2, __n, 0);
    }

    if (__n)
    {
      v6 = 0;
      while (1)
      {
        v7 = a2;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          v7 = a2->__r_.__value_.__r.__words[0];
        }

        v9 = v7->__r_.__value_.__s.__data_[v6];
        result = (*(*a1 + 40))(a1, 8, 0, &v9);
        if (result)
        {
          break;
        }

        v8 = a2;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          v8 = a2->__r_.__value_.__r.__words[0];
        }

        v8->__r_.__value_.__s.__data_[v6++] = v9;
        if (v6 >= __n)
        {
          return 0;
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

uint64_t sub_240B56BA0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 40);
    *(a1 + 16) = i - 40;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240B56C0C(uint64_t a1)
{
  *a1 = &unk_2852A2220;
  v3 = (a1 + 344);
  sub_240B37840(&v3);
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  JUMPOUT(0x245CCE590);
}

uint64_t sub_240B56CA4(uint64_t a1)
{
  *a1 = &unk_2852A2220;
  v4 = (a1 + 344);
  sub_240B37840(&v4);
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return a1;
}

uint64_t sub_240B56D1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 8;
  v5 = 12;
  while (1)
  {
    result = (*(*a2 + 40))(a2, 2, 0, v4);
    if (result)
    {
      break;
    }

    v4 += 4;
    v5 -= 4;
    if (!v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = *(a1 + 8 + v7);
        v11 = byte_240C85334[v10];
        v12 = byte_240C85338[v10];
        if (v8 <= v11)
        {
          v8 = v11;
        }

        if (v9 <= v12)
        {
          v9 = v12;
        }

        v7 += 4;
      }

      while (v7 != 12);
      result = 0;
      *(a1 + 20) = v8;
      *(a1 + 21) = v9;
      return result;
    }
  }

  return result;
}

void *sub_240B56E08(void *a1)
{
  *a1 = &unk_2852A19E8;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B56D1C(a1, &v3);
  return a1;
}

uint64_t sub_240B56E88(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852A2220;
  *(a1 + 16) = 0;
  *(a1 + 40) = &unk_2852A19E8;
  v5 = &unk_2852A2120;
  v6 = xmmword_240C112C0;
  v7 = 0;
  sub_240B56D1C(a1 + 40, &v5);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = &unk_2852A1360;
  v5 = &unk_2852A2120;
  v6 = xmmword_240C112C0;
  v7 = 0;
  sub_240B5551C((a1 + 104), &v5);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = &unk_2852A21A8;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  v5 = &unk_2852A2120;
  v6 = xmmword_240C112C0;
  v7 = 0;
  sub_240B5514C(a1 + 304, &v5);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = &unk_2852A1C18;
  *(a1 + 384) = a2;
  v5 = &unk_2852A2120;
  v6 = xmmword_240C112C0;
  v7 = 0;
  sub_240B553E0(a1 + 368, &v5);
  *(a1 + 408) = a2;
  *(a1 + 416) = &unk_2852A2270;
  *(a1 + 552) = 0;
  v5 = &unk_2852A2120;
  v6 = xmmword_240C112C0;
  v7 = 0;
  sub_240B5B700(a1 + 416, &v5);
  *(a1 + 560) = 0;
  v5 = &unk_2852A2120;
  v6 = xmmword_240C112C0;
  v7 = 0;
  (*(*a1 + 16))(a1, &v5);
  return a1;
}

void sub_240B57100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 + 344);
  sub_240B37840(&a12);
  v15 = *(v12 + 272);
  if (v15)
  {
    *(v12 + 280) = v15;
    operator delete(v15);
  }

  if (*(v12 + 103) < 0)
  {
    operator delete(*v13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B57154(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 24))(a2, 0, a1 + 8);
  if (!result)
  {
    if ((*(*a2 + 64))(a2, *(a1 + 8)) || (result = (*(*a2 + 40))(a2, 5, 0, a1 + 12), !result))
    {
      if ((*(*a2 + 64))(a2, (*(a1 + 8) & 1) == 0) || (result = (*(*a2 + 32))(a2, 0x2C00000028, 0x3D00000031, 1, a1 + 16), !result))
      {
        result = (*(*a2 + 40))(a2, 3, 0, a1 + 20);
        if (!result)
        {
          v5 = *(a1 + 20) ? 0 : *(a1 + 8);
          if ((*(*a2 + 64))(a2, v5 & 1) || (result = (*(*a2 + 40))(a2, 5, 0, a1 + 24), !result))
          {
            if (*(a1 + 20))
            {
              v6 = 0;
            }

            else
            {
              v6 = *(a1 + 8) ^ 1;
            }

            if ((*(*a2 + 64))(a2, v6 & 1))
            {
              return 0;
            }

            result = (*(*a2 + 32))(a2, 0x2C00000028, 0x3D00000031, 1, a1 + 28);
            if (!result)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_240B57400(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 24))(a2, 0, a1 + 8);
  if (!result)
  {
    if ((*(*a2 + 64))(a2, *(a1 + 8)) || (result = (*(*a2 + 32))(a2, 0x8000002080000010, 0x42800000024, 1, a1 + 12), !result))
    {
      if ((*(*a2 + 64))(a2, (*(a1 + 8) & 1) == 0) || (result = (*(*a2 + 32))(a2, 0x82700000025, 0xA82B00002829, 1, a1 + 16), !result))
      {
        result = (*(*a2 + 40))(a2, 3, 0, a1 + 20);
        if (!result)
        {
          v5 = *(a1 + 20) ? 0 : *(a1 + 8);
          if ((*(*a2 + 64))(a2, v5 & 1) || (result = (*(*a2 + 32))(a2, 0x8000002080000010, 0x42800000024, 1, a1 + 24), !result))
          {
            if (*(a1 + 20))
            {
              v6 = 0;
            }

            else
            {
              v6 = *(a1 + 8) ^ 1;
            }

            if ((*(*a2 + 64))(a2, v6 & 1))
            {
              return 0;
            }

            result = (*(*a2 + 32))(a2, 0x82700000025, 0xA82B00002829, 1, a1 + 28);
            if (!result)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_240B576CC(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 0x800003E880000064, 0x3D00000029, 1, a1 + 8);
  if (!result)
  {
    result = (*(*a2 + 32))(a2, 0x800003E980000001, 0x2900000027, 1, a1 + 12);
    if (!result)
    {
      result = (*(*a2 + 32))(a2, 0x280000000, 0x1F0000000FLL, 0, a1 + 16);
      if (!result)
      {
        v5 = *(*a2 + 24);

        return v5(a2, 0, a1 + 20);
      }
    }
  }

  return result;
}

uint64_t sub_240B57820(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = qword_240C81940[v1 - 1];
    if (*(a1 + 8) == 1)
    {
      v3 = 8 * *(a1 + 12) + 8;
    }

    else
    {
      v3 = *(a1 + 16);
    }

    return (v2 * v3 / HIDWORD(v2));
  }

  else if (*(a1 + 8) == 1)
  {
    LODWORD(v4) = 8 * *(a1 + 24) + 8;
  }

  else
  {
    LODWORD(v4) = *(a1 + 28);
  }

  return v4;
}

uint64_t sub_240B57890(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = 1;
  if (a2 && a3)
  {
    v4 = qword_240C81940;
    for (i = 1; i != 8; ++i)
    {
      v6 = *v4++;
      if ((v6 * a3 / HIDWORD(v6)) == a2)
      {
        *(a1 + 20) = i;
        if (a3 > 0x100 || (v3 = a3 & 7, (a3 & 7) != 0))
        {
          v3 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = a3;
        }

        else
        {
          *(a1 + 8) = 1;
          *(a1 + 12) = (a3 >> 3) - 1;
        }

        return v3;
      }
    }

    *(a1 + 20) = 0;
    if (a2 > 0x100 || a3 > 0x100 || (a3 & 7) != 0)
    {
      *(a1 + 8) = 0;
    }

    else
    {
      v3 = a2 & 7;
      *(a1 + 8) = v3 == 0;
      if ((a2 & 7) == 0)
      {
        *(a1 + 12) = (a3 >> 3) - 1;
        *(a1 + 24) = (a2 >> 3) - 1;
        return v3;
      }
    }

    v3 = 0;
    *(a1 + 16) = a3;
    *(a1 + 28) = a2;
  }

  return v3;
}

uint64_t sub_240B5796C(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = qword_240C81940[v1 - 1];
    if (*(a1 + 8) == 1)
    {
      v3 = 8 * *(a1 + 12);
    }

    else
    {
      v3 = *(a1 + 16);
    }

    return (v2 * v3 / HIDWORD(v2));
  }

  else if (*(a1 + 8) == 1)
  {
    LODWORD(v4) = 8 * *(a1 + 24);
  }

  else
  {
    LODWORD(v4) = *(a1 + 28);
  }

  return v4;
}

void *sub_240B579D4(void *a1)
{
  *a1 = &unk_2852A2248;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B57154(a1, &v3);
  return a1;
}

uint64_t sub_240B57A54(char *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x277D85DE8];
  sub_240B29264(__p, a4);
  v10 = 0;
  v11 = __p[0];
  v12 = 1;
  for (i = 1; i != 16; ++i)
  {
    *(&__p[3] + i) = v10;
    v10 += *(a5 + 2 * i);
    if (*(a5 + 2 * i))
    {
      v12 = i;
    }
  }

  v14 = 0;
  do
  {
    v15 = *(a3 + v14);
    if (*(a3 + v14))
    {
      v16 = *(&__p[3] + v15);
      *(&__p[3] + v15) = v16 + 1;
      v11[v16] = v14;
    }

    ++v14;
  }

  while (a4 != v14);
  v17 = (1 << a2);
  if (v54 == 1)
  {
    v18 = *v11;
    v19 = a1 + 2;
    v20 = (1 << a2);
    do
    {
      *(v19 - 2) = 0;
      *v19 = v18;
      v19 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = a2;
    if (v12 >= a2)
    {
      v24 = 1 << a2;
    }

    else
    {
      v23 = v12;
      v24 = 1 << v12;
    }

    v25 = 2;
    v26 = 1;
    do
    {
      if (*(a5 + 2 * v26))
      {
        do
        {
          v27 = v26 | (v11[v21] << 16);
          v28 = v24;
          do
          {
            *&a1[4 * v22 + 4 * (v28 - v25)] = v27;
            v28 -= v25;
          }

          while (v28 > 0);
          v29 = 1 << (v26 - 1);
          do
          {
            v30 = v29;
            v29 >>= 1;
          }

          while ((v30 & v22) != 0);
          ++v21;
          v22 = ((v30 - 1) & v22) + v30;
          v31 = *(a5 + 2 * v26) - 1;
          *(a5 + 2 * v26) = v31;
        }

        while (v31);
      }

      v25 *= 2;
      ++v26;
    }

    while (v23 >= v26);
    if (v17 != v24)
    {
      do
      {
        memcpy(&a1[4 * v24], a1, 4 * v24);
        v32 = v17 == 2 * v24;
        v24 *= 2;
      }

      while (!v32);
    }

    v33 = a2 + 1;
    if (v12 >= v33)
    {
      v34 = v17 - 1;
      v35 = 2;
      v36 = -1;
      v37 = 1 << a2;
      v38 = a1;
      do
      {
        if (*(a5 + 2 * v33))
        {
          do
          {
            if ((v22 & v34) != v36)
            {
              v39 = 1 << (v33 - a2);
              LOBYTE(j) = v33;
              if (v33 <= 0xE)
              {
                v41 = (1 << (v33 - a2));
                for (j = v33; j != 15; ++j)
                {
                  v42 = *(a5 + 2 * j);
                  v43 = v41 > v42;
                  v44 = v41 - v42;
                  if (!v43)
                  {
                    break;
                  }

                  v41 = 2 * v44;
                }

                v39 = 1 << (j - a2);
              }

              v38 += 4 * v37;
              v17 = (v39 + v17);
              v45 = &a1[4 * (v22 & v34)];
              *v45 = j;
              *(v45 + 1) = ((v38 - a1) >> 2) - (v22 & v34);
              v36 = v22 & v34;
              v37 = v39;
            }

            v46 = (v33 - a2) | (v11[v21] << 16);
            v47 = v37;
            do
            {
              *&v38[4 * (v22 >> a2) + 4 * (v47 - v35)] = v46;
              v47 -= v35;
            }

            while (v47 > 0);
            v48 = 1 << (v33 - 1);
            do
            {
              v49 = v48;
              v48 >>= 1;
            }

            while ((v49 & v22) != 0);
            ++v21;
            v22 = ((v49 - 1) & v22) + v49;
            v50 = *(a5 + 2 * v33) - 1;
            *(a5 + 2 * v33) = v50;
          }

          while (v50);
        }

        ++v33;
        v35 *= 2;
      }

      while (v33 <= v12);
      v11 = __p[0];
    }
  }

  if (v11)
  {
    __p[1] = v11;
    operator delete(v11);
  }

  v51 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_240B57D90(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a1 - 1;
  if (a1 - 1 >= 9)
  {
    v7 = 9;
  }

  v8 = v7 + 1;
  while (1)
  {
    v5 |= (*(a2 + v6) & 0x7F) << v4;
    if ((*(a2 + v6) & 0x80) == 0)
    {
      break;
    }

    ++v6;
    v4 += 7;
    if (v8 == v6)
    {
      v6 = v8;
      break;
    }
  }

  v9 = v6 + 1;
  if (HIDWORD(v5) || v9 >= a1)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a2 + v9;
  while (1)
  {
    v12 |= (*(v14 + v13) & 0x7F) << v11;
    if ((*(v14 + v13) & 0x80) == 0)
    {
      break;
    }

    v15 = v13 + 1;
    if (v13 <= 8)
    {
      v16 = v6 + 2 + v13;
      v11 += 7;
      ++v13;
      if (v16 < a1)
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  v15 = v13;
LABEL_18:
  if (HIDWORD(v12))
  {
    return 1;
  }

  v17 = v6 + v15 + 2;
  v18 = v12 + v17;
  v19 = __CFADD__(v12, v17);
  v20 = 1;
  if (v18 <= a1 && !v19)
  {
    v21 = v5 + 0x10000;
    if (a4)
    {
      v22 = v5 > a4;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    if (v21 >= a3)
    {
      return v23;
    }

    else
    {
      return 1;
    }
  }

  return v20;
}

void sub_240B57E90(size_t *a1, char a2)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    sub_240B4ADF0(a1, v4 + 1);
    v5 = a1[2];
    if (!v5)
    {
      return;
    }

    v4 = *a1;
  }

  else
  {
    v5 = a1[2];
  }

  *a1 = v4 + 1;
  *(v5 + v4) = a2;
}

size_t *sub_240B57EEC(size_t *a1, unint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  sub_240B4ADF0(a1, a2);
  return a1;
}

void sub_240B57F30(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_240B57EEC(v11, a2);
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      *(v12 + v6) = *(a1 + v7);
      v7 += (a2 + a3 - 1) / a3;
      if (v7 >= a2)
      {
        v7 = ++v8;
      }

      ++v6;
    }

    while (a2 != v6);
    v9 = 0;
    v10 = v12;
    do
    {
      *(a1 + v9) = *(v10 + v9);
      ++v9;
    }

    while (a2 != v9);
    v12 = 0;
  }

  else
  {
    v10 = v12;
    v12 = 0;
    if (!v10)
    {
      return;
    }
  }

  atomic_fetch_add(&qword_27E519020, -*(v10 - 24));
  free(*(v10 - 32));
}

uint64_t sub_240B58000(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v6 = a2[3];
  v5 = a2[4];
  v7 = 8 * (a2[2] - v5 + a2[5]) - a2[1];
  a2[7] = v7;
  if (v7 > 8 * (v6 - v5) + 64)
  {
    return 0xFFFFFFFFLL;
  }

  v33 = v3;
  v34 = v4;
  *(a1 + 16) = v7;
  v11 = *(a1 + 8);
  if (v11)
  {
    sub_240B50690(a2, v11);
    return 0;
  }

  v13 = sub_240B54B98(a2);
  *(a1 + 24) = v13;
  if (v13 > 0x10000000)
  {
    return 1;
  }

  result = sub_240B2BD40(a2, 0x29uLL, a1 + 56, a1 + 32, 0);
  if (result)
  {
    return result;
  }

  sub_240B23A18(&v29, a1 + 56, a2, 0);
  v14 = v30[0];
  *(a1 + 200) = v29;
  *(a1 + 216) = v14;
  *(a1 + 228) = *(v30 + 12);
  v15 = v31;
  v31 = 0;
  v16 = *(a1 + 248);
  *(a1 + 248) = v15;
  if (v16)
  {
    atomic_fetch_add(&qword_27E519020, -*(v16 - 24));
    free(*(v16 - 32));
    v17 = v31;
    memcpy((a1 + 256), v32, 0x214uLL);
    v31 = 0;
    if (v17)
    {
      atomic_fetch_add(&qword_27E519020, -*(v17 - 24));
      free(*(v17 - 32));
    }
  }

  else
  {
    memcpy((a1 + 256), v32, 0x214uLL);
  }

  *a1 = 0;
  if (*(a1 + 24) >= 0x400uLL)
  {
    v18 = 1024;
  }

  else
  {
    v18 = *(a1 + 24);
  }

  sub_240B4ADF0((a1 + 792), v18);
  if (*(a1 + 808))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  *(a1 + 792) = v19;
  v20 = *a1;
  v21 = *(a1 + 24);
  v22 = 2;
  if (v21 < 2)
  {
    v22 = *(a1 + 24);
  }

  if (v20 < v22)
  {
    do
    {
      *(*(a1 + 808) + *a1) = sub_240B24020(a1 + 200, **(a1 + 32), a2);
      v20 = *a1 + 1;
      *a1 = v20;
      v21 = *(a1 + 24);
      if (v21 >= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = *(a1 + 24);
      }
    }

    while (v20 < v23);
  }

  if (v21 <= 0x16)
  {
    v25 = a2[1];
    v28 = 8 * (a2[2] - a2[4] + a2[5]);
LABEL_31:
    result = 0;
    *(a1 + 8) = v28 - (*(a1 + 16) + v25);
    return result;
  }

  if (v20 <= 0x15)
  {
    do
    {
      v24 = sub_240B59704(v20, *(*(a1 + 808) + v20 - 1), *(*(a1 + 808) + v20 - 2));
      *(*(a1 + 808) + *a1) = sub_240B24020(a1 + 200, *(*(a1 + 32) + v24), a2);
      v20 = *a1 + 1;
      *a1 = v20;
    }

    while (v20 < 0x16);
  }

  v25 = a2[1];
  v27 = a2[3];
  v26 = a2[4];
  v28 = 8 * (a2[2] - v26 + a2[5]);
  a2[7] = v28 - v25;
  if (v28 - v25 > 8 * (v27 - v26) + 64)
  {
    return 0xFFFFFFFFLL;
  }

  result = sub_240B57D90(*(a1 + 792), *(a1 + 808), *(a1 + 24), a3);
  if (!result)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_240B582E8(uint64_t a1, unint64_t *a2, size_t *a3)
{
  sub_240B59358((a1 + 200), v208);
  v6 = a2[4];
  v7 = a2[1];
  v8 = 8 * (a2[2] - v6 + a2[5]);
  v9 = *(a1 + 24);
  *(a1 + 8) = v8 - (*(a1 + 16) + v7);
  v10 = *a1;
  if (*a1 < v9)
  {
    v11 = *a1;
    while (1)
    {
      if (!v10 || (v10 & 0x1FF) != 0)
      {
        v18 = *(a1 + 808);
      }

      else
      {
        v13 = a2[3];
        v12 = a2[4];
        v14 = 8 * (a2[2] - v12 + a2[5]) - a2[1];
        a2[7] = v14;
        v15 = (a1 + 200);
        if (v14 > 8 * (v13 - v12) + 64)
        {
          sub_240B59408(v15, v208);
          *a1 = v11;
          return 0xFFFFFFFFLL;
        }

        sub_240B59358(v15, v208);
        v16 = 8 * (a2[2] - a2[4] + a2[5]) - (*(a1 + 16) + a2[1]);
        *(a1 + 8) = v16;
        v11 = *a1;
        if (*a1 && !*a1 && (vcvts_n_f32_u64(v16, 3uLL) * 256.0) < v11)
        {
          return 1;
        }

        if (*(a1 + 24) >= v11 + 1024)
        {
          v17 = v11 + 1024;
        }

        else
        {
          v17 = *(a1 + 24);
        }

        sub_240B4ADF0((a1 + 792), v17);
        v18 = *(a1 + 808);
        if (v18)
        {
          v19 = v17;
        }

        else
        {
          v19 = 0;
        }

        *(a1 + 792) = v19;
        v10 = *a1;
      }

      v20 = sub_240B59704(v10, *(v18 + v10 - 1), *(v18 + v10 - 2));
      *(*(a1 + 808) + *a1) = sub_240B24020(a1 + 200, *(*(a1 + 32) + v20), a2);
      v10 = *a1 + 1;
      *a1 = v10;
      if (v10 >= *(a1 + 24))
      {
        v6 = a2[4];
        v7 = a2[1];
        v8 = 8 * (a2[2] - v6 + a2[5]);
        v10 = v11;
        break;
      }
    }
  }

  a2[7] = v8 - v7;
  if (v8 - v7 > 8 * (a2[3] - v6) + 64)
  {
    sub_240B59408((a1 + 200), v208);
    *a1 = v10;
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v8 - (*(a1 + 16) + v7);
  if (*(a1 + 220) != 1245184)
  {
    return 1;
  }

  sub_240B4ADF0(a3, 0);
  *a3 = 0;
  v21 = *(a1 + 792);
  if (!v21)
  {
    return 1;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = *(a1 + 808);
  v26 = v21 - 1;
  if (v21 - 1 >= 9)
  {
    v26 = 9;
  }

  v27 = v26 + 1;
  while (1)
  {
    v23 |= (*(v25 + v24) & 0x7F) << v22;
    if ((*(v25 + v24) & 0x80) == 0)
    {
      break;
    }

    ++v24;
    v22 += 7;
    if (v27 == v24)
    {
      v24 = v27;
      break;
    }
  }

  v28 = v24 + 1;
  if (HIDWORD(v23) || v28 >= v21)
  {
    return 1;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = v25 + v28;
  while (1)
  {
    v31 |= (*(v33 + v32) & 0x7F) << v30;
    if ((*(v33 + v32) & 0x80) == 0)
    {
      break;
    }

    v34 = v32 + 1;
    if (v32 <= 8)
    {
      v35 = v24 + 2 + v32;
      v30 += 7;
      ++v32;
      if (v35 < v21)
      {
        continue;
      }
    }

    goto LABEL_41;
  }

  v34 = v32;
LABEL_41:
  if (HIDWORD(v31))
  {
    return 1;
  }

  v37 = v24 + v34 + 2;
  v38 = v31 + v37;
  v39 = __CFADD__(v31, v37);
  v36 = 1;
  if (v38 <= v21 && !v39)
  {
    v200 = v24 + v34 + 2;
    v211[0] = 0;
    v211[1] = 0;
    v212 = 0;
    sub_240B4ADF0(v211, 0x80uLL);
    v40 = v212;
    v211[0] = 128;
    *v212 = xmmword_240C819D8;
    *(v40 + 16) = *"RGB XYZ ";
    *(v40 + 32) = xmmword_240C819F8;
    *(v40 + 48) = unk_240C81A08;
    *(v40 + 96) = xmmword_240C81A38;
    *(v40 + 112) = unk_240C81A48;
    *(v40 + 64) = xmmword_240C81A18;
    *(v40 + 80) = unk_240C81A28;
    *v40 = bswap32(v23);
    v41 = *a3;
    if (*a3 == v23)
    {
LABEL_53:
      if (v31)
      {
        v43 = 0;
      }

      else
      {
        v43 = v38 == v21;
      }
    }

    else
    {
      v206 = v21;
      v207 = a3;
      v42 = 0;
      while (v42 != 128)
      {
        sub_240B594B8(a3[2], v41, v40, v42);
        if (v38 + v42 >= v206)
        {
          goto LABEL_316;
        }

        sub_240B57E90(a3, *(v40 + v42) + *(v25 + v200 + v31 + v42));
        ++v42;
        v41 = *a3;
        if (*a3 == v23)
        {
          v38 += v42;
          v21 = v206;
          goto LABEL_53;
        }
      }

      if (v200 >= v38)
      {
        goto LABEL_316;
      }

      v45 = v206;
      if (v200 >= v206)
      {
        i = v24 + v34 + 3;
        v52 = v38 + 128;
        goto LABEL_188;
      }

      v46 = 0;
      v47 = 0;
      v48 = 0;
      while (1)
      {
        v47 |= (*(v25 + v200 + v48) & 0x7F) << v46;
        if ((*(v25 + v200 + v48) & 0x80) == 0)
        {
          break;
        }

        v49 = v48 + 1;
        if (v48 <= 8)
        {
          v50 = v34 + v24 + 3 + v48;
          v46 += 7;
          ++v48;
          if (v50 < v206)
          {
            continue;
          }
        }

        goto LABEL_70;
      }

      v49 = v48;
LABEL_70:
      i = v200 + v49 + 1;
      v52 = v38 + 128;
      if (!v47)
      {
        goto LABEL_188;
      }

      if (v47 >= 0x100000001)
      {
LABEL_316:
        v36 = 1;
        goto LABEL_317;
      }

      v198 = v38;
      v53 = v41 + 4;
      sub_240B4ADF0(a3, v41 + 4);
      v54 = v47 - 1;
      v55 = a3[2];
      if (v55)
      {
        v56 = v53;
      }

      else
      {
        v56 = 0;
      }

      *a3 = v56;
      *(v55 + v56 - 4) = bswap32(v54);
      v41 = *a3;
      v36 = 1;
      if (*a3 > v23)
      {
        goto LABEL_317;
      }

      v38 = v198;
      if (i > v198)
      {
        goto LABEL_317;
      }

      v57 = 0;
      v58 = 12 * v54 + 128;
      while (1)
      {
        if (i == v38)
        {
          i = v38;
          goto LABEL_188;
        }

        v59 = *(v25 + i);
        v201 = i + 1;
        v203 = v59;
        v60 = v59 & 0x3F;
        v194 = v59 & 0x3F;
        v196 = v57;
        if (v194 <= 1)
        {
          break;
        }

        if (v60 == 2)
        {
          v193 = v52;
          v61 = 1129469026;
        }

        else
        {
          if (v60 != 3)
          {
            goto LABEL_90;
          }

          v193 = v52;
          v61 = 1515804770;
        }

        v63 = v61 + 16;
LABEL_92:
        v64 = v41 + 4;
        v65 = v41;
        sub_240B4ADF0(a3, v41 + 4);
        v66 = a3[2];
        if (v66)
        {
          v67 = v64;
        }

        else
        {
          v67 = 0;
        }

        *a3 = v67;
        *(v66 + v65) = v63;
        v70 = (v63 & 0xFFFFFFEF) == 0x5A595862 || v63 == 1515804775 || v63 == 1515804779;
        v72 = v63 == 1953526903 || v63 == 1953524578;
        if (v70 || v72 || v63 == 1768781164)
        {
          v73 = 20;
        }

        else
        {
          v73 = v196;
        }

        if ((v203 & 0x40) != 0)
        {
          if (v201 >= v38)
          {
            goto LABEL_316;
          }

          if (v201 >= v206)
          {
            v58 = 0;
            v79 = 1;
          }

          else
          {
            v75 = 0;
            v58 = 0;
            v76 = 0;
            while (1)
            {
              v58 |= (*(v25 + v201 + v76) & 0x7F) << v75;
              if ((*(v25 + v201 + v76) & 0x80) == 0)
              {
                break;
              }

              v77 = v76 + 1;
              if (v76 <= 8)
              {
                v78 = i + 2 + v76;
                v75 += 7;
                ++v76;
                if (v78 < v206)
                {
                  continue;
                }
              }

              goto LABEL_125;
            }

            v77 = v76;
LABEL_125:
            v79 = v77 + 1;
          }

          v74 = v79 + v201;
        }

        else
        {
          v74 = i + 1;
          if (HIDWORD(v58))
          {
            goto LABEL_316;
          }

          v58 += v196;
        }

        if (HIDWORD(v58))
        {
          goto LABEL_316;
        }

        v80 = *a3 + 4;
        sub_240B4ADF0(a3, v80);
        v81 = a3[2];
        v82 = v81 ? v80 : 0;
        *a3 = v82;
        v83 = bswap32(v58);
        *(v81 + v82 - 4) = v83;
        if (v203 < 0)
        {
          if (v74 >= v198)
          {
            goto LABEL_316;
          }

          v85 = v74;
          if (v74 >= v206)
          {
            v57 = 0;
            v90 = 1;
          }

          else
          {
            v86 = 0;
            v57 = 0;
            v87 = 0;
            while (1)
            {
              v57 |= (*(v25 + v85 + v87) & 0x7F) << v86;
              if ((*(v25 + v85 + v87) & 0x80) == 0)
              {
                break;
              }

              v88 = v87 + 1;
              if (v87 <= 8)
              {
                v89 = v85 + 1 + v87;
                v86 += 7;
                ++v87;
                if (v89 < v206)
                {
                  continue;
                }
              }

              goto LABEL_142;
            }

            v88 = v87;
LABEL_142:
            v90 = v88 + 1;
          }

          v84 = v90 + v85;
        }

        else
        {
          v84 = v74;
          v57 = v73;
        }

        v204 = v84;
        if (HIDWORD(v57))
        {
          goto LABEL_316;
        }

        v91 = *a3 + 4;
        sub_240B4ADF0(a3, v91);
        v92 = a3[2];
        if (v92)
        {
          v93 = v91;
        }

        else
        {
          v93 = 0;
        }

        *a3 = v93;
        v94 = bswap32(v57);
        *(v92 + v93 - 4) = v94;
        if (v194 == 3)
        {
          v109 = v58 + 2 * v57;
          if (HIDWORD(v109))
          {
            goto LABEL_316;
          }

          v95 = a3;
          v110 = *a3;
          sub_240B4ADF0(v95, v110 + 4);
          v111 = v95[2];
          if (v111)
          {
            v112 = v110 + 4;
          }

          else
          {
            v112 = 0;
          }

          *v95 = v112;
          *(v111 + v110) = 1515804775;
          v113 = *v95 + 4;
          sub_240B4ADF0(v95, v113);
          v114 = v95[2];
          if (v114)
          {
            v115 = v113;
          }

          else
          {
            v115 = 0;
          }

          *v95 = v115;
          *(v114 + v115 - 4) = bswap32(v57 + v58);
          v116 = *v95 + 4;
          sub_240B4ADF0(v95, v116);
          v117 = v95[2];
          if (v117)
          {
            v118 = v116;
          }

          else
          {
            v118 = 0;
          }

          *v95 = v118;
          *(v117 + v118 - 4) = v94;
          v119 = *v95;
          v120 = *v95 + 4;
          sub_240B4ADF0(v95, v120);
          v121 = v95[2];
          if (v121)
          {
            v122 = v120;
          }

          else
          {
            v122 = 0;
          }

          *v95 = v122;
          *(v121 + v119) = 1515804770;
          goto LABEL_177;
        }

        if (v194 == 2)
        {
          v95 = a3;
          v96 = *a3;
          sub_240B4ADF0(v95, v96 + 4);
          v97 = v95[2];
          if (v97)
          {
            v98 = v96 + 4;
          }

          else
          {
            v98 = 0;
          }

          *v95 = v98;
          *(v97 + v96) = 1129469031;
          v99 = *v95 + 4;
          sub_240B4ADF0(v95, v99);
          v100 = v95[2];
          if (v100)
          {
            v101 = v99;
          }

          else
          {
            v101 = 0;
          }

          *v95 = v101;
          *(v100 + v101 - 4) = v83;
          v102 = *v95 + 4;
          sub_240B4ADF0(v95, v102);
          v103 = v95[2];
          if (v103)
          {
            v104 = v102;
          }

          else
          {
            v104 = 0;
          }

          *v95 = v104;
          *(v103 + v104 - 4) = v94;
          v105 = *v95;
          v106 = *v95 + 4;
          sub_240B4ADF0(v95, v106);
          v107 = v95[2];
          if (v107)
          {
            v108 = v106;
          }

          else
          {
            v108 = 0;
          }

          *v95 = v108;
          *(v107 + v105) = 1129469026;
          LODWORD(v109) = v58;
LABEL_177:
          v123 = *v95 + 4;
          sub_240B4ADF0(v95, v123);
          v124 = v95[2];
          if (v124)
          {
            v125 = v123;
          }

          else
          {
            v125 = 0;
          }

          *v95 = v125;
          *(v124 + v125 - 4) = bswap32(v109);
          v126 = *v95 + 4;
          sub_240B4ADF0(v95, v126);
          v127 = v95[2];
          if (v127)
          {
            v128 = v126;
          }

          else
          {
            v128 = 0;
          }

          *v95 = v128;
          *(v127 + v128 - 4) = v94;
          a3 = v95;
        }

        v41 = *a3;
        v36 = 1;
        v38 = v198;
        i = v204;
        if (*a3 <= v23)
        {
          v52 = v193;
          if (v204 <= v198)
          {
            continue;
          }
        }

        goto LABEL_317;
      }

      if ((v59 & 0x3F) == 1)
      {
        v62 = v52 + 4;
        v36 = 1;
        if (v52 + 4 > v206 || v52 >= 0xFFFFFFFFFFFFFFFCLL)
        {
          goto LABEL_317;
        }

        v63 = *(v25 + v52);
        v193 = v62;
        goto LABEL_92;
      }

      if ((v59 & 0x3F) != 0)
      {
LABEL_90:
        v193 = v52;
        if ((v60 - 4) > 0x10)
        {
          goto LABEL_316;
        }

        v63 = **(&off_278CB30B0 + v60 - 4);
        goto LABEL_92;
      }

      ++i;
LABEL_188:
      v129 = v38 >= v206 ? v206 : v38;
      v36 = 1;
      if (v41 > v23 || (v205 = v129, i > v38))
      {
LABEL_317:
        v192 = v212;
        v212 = 0;
        if (v192)
        {
          atomic_fetch_add(&qword_27E519020, -*(v192 - 3));
          free(*(v192 - 4));
        }

        return v36;
      }

      if (i != v38)
      {
        v199 = v38;
        do
        {
          v130 = i + 1;
          v131 = *(v25 + i);
          if (v131 == 1)
          {
            if (v130 >= v38)
            {
              goto LABEL_316;
            }

            if (v130 >= v45)
            {
              if (v52 > v45)
              {
                goto LABEL_316;
              }

              i += 2;
            }

            else
            {
              v132 = v38;
              v133 = 0;
              v134 = 0;
              v135 = 0;
              while (1)
              {
                v134 |= (*(v25 + v130 + v135) & 0x7F) << v133;
                if ((*(v25 + v130 + v135) & 0x80) == 0)
                {
                  break;
                }

                v136 = v135 + 1;
                if (v135 <= 8)
                {
                  v137 = i + 2 + v135;
                  v133 += 7;
                  ++v135;
                  if (v137 < v45)
                  {
                    continue;
                  }
                }

                goto LABEL_230;
              }

              v136 = v135;
LABEL_230:
              if (v134 + v52 > v45 || v134 + v52 < v52)
              {
                goto LABEL_316;
              }

              for (i = v136 + v130 + 1; v134; --v134)
              {
                sub_240B57E90(a3, *(v25 + v52++));
              }

              v38 = v132;
            }
          }

          else
          {
            if ((v131 & 0xFE) == 2)
            {
              if (v130 >= v38)
              {
                goto LABEL_316;
              }

              if (v130 >= v45)
              {
                v139 = 0;
                v155 = 1;
              }

              else
              {
                v138 = 0;
                v139 = 0;
                v140 = 0;
                while (1)
                {
                  v139 |= (*(v25 + v130 + v140) & 0x7F) << v138;
                  if ((*(v25 + v130 + v140) & 0x80) == 0)
                  {
                    break;
                  }

                  v141 = v140 + 1;
                  if (v140 <= 8)
                  {
                    v142 = i + 2 + v140;
                    v138 += 7;
                    ++v140;
                    if (v142 < v45)
                    {
                      continue;
                    }
                  }

                  goto LABEL_257;
                }

                v141 = v140;
LABEL_257:
                v155 = v141 + 1;
              }

              v168 = v52;
              v169 = v139 + v52;
              if (v169 > v45 || v169 < v168)
              {
                goto LABEL_316;
              }

              v171 = v168;
              sub_240B57EEC(v209, v139);
              if (v139)
              {
                for (j = 0; j != v139; ++j)
                {
                  *(v210 + j) = *(v25 + v171 + j);
                }
              }

              if (v131 == 2)
              {
LABEL_269:
                sub_240B57F30(v210, v139, v131);
              }

              else if (v131 == 3)
              {
                v131 = 4;
                goto LABEL_269;
              }

              if (v139)
              {
                for (k = 0; k != v139; ++k)
                {
                  sub_240B57E90(v207, *(v210 + k));
                }

                v171 = v169;
                a3 = v207;
              }

              v174 = v210;
              v210 = 0;
              if (v174)
              {
                atomic_fetch_add(&qword_27E519020, -*(v174 - 24));
                free(*(v174 - 32));
              }

              v38 = v199;
              v52 = v171;
              i = v155 + v130;
              goto LABEL_310;
            }

            if (v131 == 10)
            {
              v156 = v41 + 4;
              v157 = v41;
              sub_240B4ADF0(a3, v41 + 4);
              v158 = a3[2];
              if (v158)
              {
                v159 = v156;
              }

              else
              {
                v159 = 0;
              }

              *a3 = v159;
              *(v158 + v157) = 542792024;
              v160 = 4;
              do
              {
                sub_240B57E90(v207, 0);
                --v160;
              }

              while (v160);
              v36 = 1;
              if (v52 + 12 > v45 || v52 > 0xFFFFFFFFFFFFFFF3)
              {
                goto LABEL_317;
              }

              v161 = 12;
              do
              {
                sub_240B57E90(v207, *(v25 + v52++));
                --v161;
              }

              while (v161);
              goto LABEL_255;
            }

            if (v131 != 4)
            {
              if ((v131 & 0xF8) != 0x10)
              {
                goto LABEL_316;
              }

              v162 = *(&off_278CB3138 + v131 - 16);
              v163 = v41 + 4;
              v164 = v41;
              sub_240B4ADF0(v207, v41 + 4);
              v165 = v207[2];
              if (v165)
              {
                v166 = v163;
              }

              else
              {
                v166 = 0;
              }

              *v207 = v166;
              *(v165 + v164) = *v162;
              v167 = 4;
              do
              {
                sub_240B57E90(v207, 0);
                --v167;
              }

              while (v167);
LABEL_255:
              i = v130;
              a3 = v207;
              goto LABEL_310;
            }

            v143 = i + 3;
            v36 = 1;
            if (i + 3 > v38 || v143 < v130)
            {
              goto LABEL_317;
            }

            v144 = *(v25 + v130);
            v145 = (v144 & 3) + 1;
            if ((v144 & 3) == 2)
            {
              goto LABEL_316;
            }

            v202 = v144 & 3;
            if (((v144 >> 2) & 3) == 3)
            {
              goto LABEL_316;
            }

            v146 = (v144 >> 2) & 3;
            v147 = i + 2;
            v148 = (v144 & 3) + 1;
            if ((v144 & 0x10) != 0)
            {
              if (v147 >= v205)
              {
                goto LABEL_316;
              }

              v149 = 0;
              v148 = 0;
              v150 = 0;
              v151 = v25 + v147;
              while (1)
              {
                v148 |= (*(v151 + v150) & 0x7F) << v149;
                if ((*(v151 + v150) & 0x80) == 0)
                {
                  break;
                }

                v152 = v150 + 1;
                if (v150 <= 8)
                {
                  v153 = v143 + v150;
                  v149 += 7;
                  ++v150;
                  if (v153 < v45)
                  {
                    continue;
                  }
                }

                goto LABEL_278;
              }

              v152 = v150;
LABEL_278:
              if (v148 < v145)
              {
                goto LABEL_316;
              }

              v147 = v143 + v152;
              a3 = v207;
            }

            if (!v41)
            {
              goto LABEL_316;
            }

            if (v148 > (v41 - 1) >> 2 || v147 >= v38)
            {
              goto LABEL_316;
            }

            v197 = v147;
            if (v147 >= v45)
            {
              v177 = 0;
              v183 = 1;
            }

            else
            {
              v176 = 0;
              v177 = 0;
              v178 = 0;
              v179 = v25 + v147;
              v180 = v147 + 1;
              while (1)
              {
                v177 |= (*(v179 + v178) & 0x7F) << v176;
                if ((*(v179 + v178) & 0x80) == 0)
                {
                  break;
                }

                v181 = v178 + 1;
                if (v178 <= 8)
                {
                  v182 = v180 + v178;
                  v176 += 7;
                  ++v178;
                  if (v182 < v45)
                  {
                    continue;
                  }
                }

                goto LABEL_293;
              }

              v181 = v178;
LABEL_293:
              v183 = v181 + 1;
            }

            v195 = v183;
            v184 = v177 + v52;
            if (v177 + v52 > v45 || v184 < v52)
            {
              goto LABEL_316;
            }

            sub_240B57EEC(v209, v177);
            if (v177)
            {
              for (m = 0; m != v177; ++m)
              {
                *(v210 + m) = *(v25 + v52 + m);
              }
            }

            if (v202)
            {
              sub_240B57F30(v210, v177, v145);
            }

            if (v177)
            {
              v187 = 0;
              v188 = *a3;
              do
              {
                v189 = sub_240B59594(a3[2], v188, v187, v148, v145, v146);
                sub_240B57E90(a3, *(v210 + v187++) + v189);
              }

              while (v177 != v187);
            }

            v190 = v210;
            v210 = 0;
            if (v190)
            {
              atomic_fetch_add(&qword_27E519020, -*(v190 - 24));
              free(*(v190 - 32));
            }

            v52 = v184;
            i = v195 + v197;
            v45 = v206;
            v38 = v199;
          }

LABEL_310:
          v41 = *a3;
          if (*a3 > v23 || i > v38)
          {
            goto LABEL_316;
          }
        }

        while (i != v38);
      }

      v43 = v52 == v45 && v41 == v23;
    }

    v36 = !v43;
    goto LABEL_317;
  }

  return v36;
}

void sub_240B592BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  *(v1 - 120) = 0;
  if (v3)
  {
    atomic_fetch_add(&qword_27E519020, -*(v3 - 24));
    free(*(v3 - 32));
  }

  v4 = *(v1 - 96);
  *(v1 - 96) = 0;
  if (v4)
  {
    atomic_fetch_add(&qword_27E519020, -*(v4 - 24));
    free(*(v4 - 32));
  }

  _Unwind_Resume(exception_object);
}

char *sub_240B59358(char *result, uint64_t a2)
{
  *a2 = *(result + 5);
  v2 = *(result + 16);
  *(a2 + 12) = v2;
  *(a2 + 4) = *(result + 68);
  v3 = *(result + 7);
  if (v3)
  {
    v4 = *&v2 & 0xFFFFFLL;
    v5 = (v2 + 512) & 0xFFFFF;
    v6 = (a2 + 16);
    v7 = (v3 + 4 * (*&v2 & 0xFFFFFLL));
    v8 = v5 >= (*&v2 & 0xFFFFFuLL);
    v9 = v5 - (*&v2 & 0xFFFFFLL);
    if (v9 != 0 && v8)
    {
      v13 = 4 * v9;
      v12 = v6;
    }

    else
    {
      v10 = result;
      v11 = 0x100000 - v4;
      memcpy(v6, v7, 4 * (0x100000 - v4));
      v12 = &v6[4 * v11];
      v7 = *(v10 + 7);
      v13 = 4 * v5;
    }

    return memcpy(v12, v7, v13);
  }

  return result;
}

char *sub_240B59408(char *result, uint64_t a2)
{
  *(result + 5) = *a2;
  v2 = *(a2 + 12);
  *(result + 16) = v2;
  *(result + 68) = *(a2 + 4);
  v3 = *(result + 7);
  if (v3)
  {
    v4 = result;
    v5 = *&v2 & 0xFFFFFLL;
    v6 = (v2 + 512) & 0xFFFFF;
    v7 = (v3 + 4 * (*&v2 & 0xFFFFFLL));
    v8 = a2 + 16;
    v9 = v6 >= (*&v2 & 0xFFFFFuLL);
    v10 = v6 - (*&v2 & 0xFFFFFLL);
    if (v10 != 0 && v9)
    {
      v13 = 4 * v10;
      v12 = (a2 + 16);
    }

    else
    {
      v11 = 0x100000 - v5;
      memcpy(v7, (a2 + 16), 4 * (0x100000 - v5));
      v7 = *(v4 + 7);
      v12 = (v8 + 4 * v11);
      v13 = 4 * v6;
    }

    return memcpy(v7, v12, v13);
  }

  return result;
}

_BYTE *sub_240B594B8(_BYTE *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 8 && a4 == 8)
  {
    *(a3 + 80) = result[4];
    *(a3 + 81) = result[5];
    *(a3 + 82) = result[6];
    v4 = result[7];
    v5 = 83;
LABEL_11:
    *(a3 + v5) = v4;
    return result;
  }

  if (a2 >= 0x29 && a4 == 41)
  {
    v6 = result[40];
    if (v6 == 65)
    {
      *(a3 + 41) = 20560;
      *(a3 + 43) = 76;
      v6 = result[40];
    }

    if (v6 == 77)
    {
      *(a3 + 41) = 18003;
      v4 = 84;
LABEL_10:
      v5 = 43;
      goto LABEL_11;
    }
  }

  else if (a2 >= 0x2A && a4 == 42 && result[40] == 83)
  {
    v7 = result[41];
    if (v7 == 71)
    {
      *(a3 + 42) = 8265;
      if (result[40] != 83)
      {
        return result;
      }

      v7 = result[41];
    }

    if (v7 == 85)
    {
      *(a3 + 42) = 78;
      v4 = 87;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_240B59594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a5 != 2)
  {
    v6 = a3 + a2;
    if (a5 == 1)
    {
      LOBYTE(v7) = *(a1 + v6 - a4);
      if (a6)
      {
        v8 = *(a1 + v6 - 2 * a4);
        if (a6 == 2)
        {
          LOBYTE(v7) = *(a1 - 3 * a4 + v6) + 3 * (v7 - v8);
        }

        else
        {
          LOBYTE(v7) = 2 * v7 - v8;
        }
      }

      return v7;
    }

    v13 = (a3 & 0xFFFFFFFFFFFFFFFCLL) + a2;
    if (v13 - a4 + 4 <= v6)
    {
      v14 = bswap32(*(a1 + v13 - a4));
    }

    else
    {
      v14 = 0;
    }

    v15 = v13 - 2 * a4;
    if (v15 + 4 <= v6)
    {
      v16 = bswap32(*(a1 + v15));
    }

    else
    {
      v16 = 0;
    }

    v17 = -3 * a4 + v13;
    if (v17 + 4 <= v6)
    {
      v18 = bswap32(*(a1 + v17));
      if (!a6)
      {
        return (v14 >> (~(8 * a3) & 0x18));
      }
    }

    else
    {
      v18 = 0;
      if (!a6)
      {
        return (v14 >> (~(8 * a3) & 0x18));
      }
    }

    if (a6 == 2)
    {
      v14 = v18 + 3 * (v14 - v16);
    }

    else
    {
      v14 = 2 * v14 - v16;
    }

    return (v14 >> (~(8 * a3) & 0x18));
  }

  v9 = (a3 & 0xFFFFFFFFFFFFFFFELL) + a2;
  v10 = (a1 + v9 - a4);
  v11 = *v10;
  v7 = v10[1];
  if (a6)
  {
    v7 |= v11 << 8;
    v12 = bswap32(*(a1 + v9 - 2 * a4)) >> 16;
    if (a6 == 2)
    {
      v7 = 3 * (v7 - v12) + (bswap32(*(a1 - 3 * a4 + v9)) >> 16);
    }

    else
    {
      LOWORD(v7) = 2 * v7 - v12;
    }

    LOBYTE(v11) = BYTE1(v7);
  }

  if ((a3 & 1) == 0)
  {
    LOBYTE(v7) = v11;
  }

  return v7;
}

uint64_t sub_240B59704(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 < 0x81)
  {
    return 0;
  }

  if ((a2 & 0xDF) - 65 >= 0x1A)
  {
    v4 = 2;
    if (a2 - 48 >= 0xA && (a2 & 0xFD) != 0x2C)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v4 = 4;
        }

        else if (a2 >= 0x10)
        {
          if (a2 == 255)
          {
            v4 = 7;
          }

          else
          {
            v4 = 8;
            if (a2 > 0xF0)
            {
              v4 = 6;
            }
          }
        }

        else
        {
          v4 = 5;
        }
      }

      else
      {
        v4 = 3;
      }
    }
  }

  else
  {
    v4 = 1;
  }

  v5 = 16;
  v6 = 32;
  if (a3 > 0xF0)
  {
    v6 = 24;
  }

  if (a3 >= 0x10)
  {
    v5 = v6;
  }

  if ((a3 & 0xFD) == 0x2C)
  {
    v7 = 8;
  }

  else
  {
    v7 = v5;
  }

  if (a3 - 48 < 0xA)
  {
    v7 = 8;
  }

  if ((a3 & 0xDF) - 65 >= 0x1A)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 + v4;
}

BOOL sub_240B597F0(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_240C0C5EC(*(a1 + 16) * v2, (atomic_fetch_add_explicit(dword_27E519008, 1u, memory_order_relaxed) & 0xF) << 7);
  v4 = *(a1 + 24);
  *(a1 + 24) = v3;
  if (v4)
  {
    atomic_fetch_add(&qword_27E519020, -*(v4 - 24));
    free(*(v4 - 32));
    v3 = *(a1 + 24);
  }

  return v3 == 0;
}

int *sub_240B59888(int *result, int *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  result[3] = a2[3];
  v6 = *(result + 2);
  v7 = *(result + 3);
  v8 = *(a2 + 3);
  *(result + 2) = *(a2 + 2);
  *(result + 3) = v8;
  a2[3] = v5;
  *(a2 + 2) = v6;
  *(a2 + 3) = v7;
  return result;
}

__n128 sub_240B598DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_240B30D80(a1 + 96, a2);
  *(a1 + 224) = *(a3 + 8);
  v5 = *(a3 + 16);
  *(a1 + 237) = *(a3 + 21);
  *(a1 + 232) = v5;
  if (a1 + 216 != a3)
  {
    sub_240B28A14((a1 + 248), *(a3 + 32), *(a3 + 40), *(a3 + 40) - *(a3 + 32));
  }

  v6 = *(a3 + 56);
  v7 = *(a3 + 72);
  v8 = *(a3 + 88);
  *(a1 + 320) = *(a3 + 104);
  *(a1 + 288) = v7;
  *(a1 + 304) = v8;
  *(a1 + 272) = v6;
  *(a1 + 336) = *(a3 + 120);
  result = *(a3 + 136);
  *(a1 + 352) = result;
  *(a1 + 376) = *(a3 + 160);
  *(a1 + 392) = *(a3 + 176);
  *(a1 + 408) = *(a3 + 192);
  return result;
}

void sub_240B59980(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B599D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_240B22320((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240B59A2C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      v7 = *(v5 + 3);
      v8 = *(v5 + 4);
      *(v5 + 3) = 0;
      *(a3 + 24) = v7;
      *(a3 + 32) = v8;
      v5 = (v5 + 40);
      a3 += 40;
    }

    while (v5 != a2);
    do
    {
      sub_240B22320(v4 + 3);
      v4 = (v4 + 40);
    }

    while (v4 != a2);
  }
}

uint64_t sub_240B59AA0(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 24))(a2, 0, a1 + 8);
  if (!result)
  {
    v5 = *(*a2 + 32);
    if (*(a1 + 8))
    {
      result = v5(a2, 0x8000001080000020, 0x2580000018, 32, a1 + 12);
      if (result)
      {
        return result;
      }

      v6 = (a1 + 16);
      --*(a1 + 16);
      result = (*(*a2 + 40))(a2, 4, 7, a1 + 16);
      if (result)
      {
        return result;
      }

      v7 = *v6 + 1;
      *v6 = v7;
    }

    else
    {
      result = v5(a2, 0x8000000A80000008, 0x258000000CLL, 8, a1 + 12);
      if (result)
      {
        return result;
      }

      v7 = 0;
      *(a1 + 16) = 0;
    }

    if (*(a1 + 8) == 1)
    {
      if ((v7 - 9) >= 0xFFFFFFF9 && (*(a1 + 12) - v7 - 25) >= 0xFFFFFFEA)
      {
        return 0;
      }
    }

    else if (*(a1 + 12) <= 0x1Fu)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_240B59C48(uint64_t a1, uint64_t a2)
{
  if (!(*(*a2 + 72))(a2, a1, a1 + 9))
  {
    (*(*a2 + 80))(a2, a1);
    return 0;
  }

  if (!(*(*a2 + 64))(a2, *(a1 + 8)))
  {
    result = (*(*a2 + 88))(a2, a1 + 16);
    if (result)
    {
      return result;
    }
  }

  result = (*(*a2 + 40))(a2, 3, 0, a1 + 96);
  if (result)
  {
    return result;
  }

  if ((*(*a2 + 64))(a2, *(a1 + 96) & 1))
  {
LABEL_8:
    if (!(*(*a2 + 64))(a2, (*(a1 + 96) >> 1) & 1))
    {
      v7 = 0;
      v8 = a1 + 160;
      do
      {
        result = (*(*a2 + 56))(a2, v8, *&dword_240C81A94[v7]);
        if (result)
        {
          return result;
        }

        v8 += 4;
        ++v7;
      }

      while (v7 != 55);
    }

    if (!(*(*a2 + 64))(a2, (*(a1 + 96) >> 2) & 1))
    {
      v9 = 0;
      v10 = a1 + 380;
      do
      {
        result = (*(*a2 + 56))(a2, v10, *&dword_240C81B70[v9]);
        if (result)
        {
          break;
        }

        v10 += 4;
        ++v9;
      }

      while (v9 != 210);
      return result;
    }

    return 0;
  }

  v5 = 0;
  v6 = a1 + 100;
  while (1)
  {
    result = (*(*a2 + 56))(a2, v6, *&dword_240C81A58[v5]);
    if (result)
    {
      return result;
    }

    v6 += 4;
    if (++v5 == 15)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_240B59F30(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 72))(a2, a1, a1 + 8))
  {
    __n_4 = *(a1 + 12);
    result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x24500000043, 0, &__n_4);
    if (!result)
    {
      v5 = __n_4;
      *(a1 + 12) = __n_4;
      v6 = ((1 << v5) & 0x1807F) == 0 || v5 > 0x3F;
      result = v6;
      if (!v6)
      {
        result = (*(*a2 + 88))(a2, a1 + 16);
        if (!result)
        {
          result = (*(*a2 + 32))(a2, 0x8000000380000000, 0x2280000004, 0, a1 + 40);
          if (!result)
          {
            if (*(a1 + 40) <= 3u)
            {
              v7 = *(a1 + 71);
              if (v7 < 0)
              {
                v7 = *(a1 + 56);
              }

              __n = v7;
              result = (*(*a2 + 32))(a2, 0x380000000, 0x60900000204, 0, &__n);
              if (!result)
              {
                v8 = (a1 + 48);
                if ((*(*a2 + 96))(a2))
                {
                  std::string::resize((a1 + 48), __n, 0);
                }

                if (__n)
                {
                  v9 = 0;
                  while (1)
                  {
                    v10 = a1 + 48;
                    if (*(a1 + 71) < 0)
                    {
                      v10 = *v8;
                    }

                    v14 = *(v10 + v9);
                    result = (*(*a2 + 40))(a2, 8, 0, &v14);
                    if (result)
                    {
                      break;
                    }

                    v11 = a1 + 48;
                    if (*(a1 + 71) < 0)
                    {
                      v11 = *v8;
                    }

                    *(v11 + v9++) = v14;
                    if (v9 >= __n)
                    {
                      goto LABEL_29;
                    }
                  }
                }

                else
                {
LABEL_29:
                  if ((*(*a2 + 64))(a2, *(a1 + 12) == 0) || (result = (*(*a2 + 24))(a2, 0, a1 + 72), !result))
                  {
                    if ((*(*a2 + 64))(a2, *(a1 + 12) == 2))
                    {
LABEL_34:
                      if ((*(*a2 + 64))(a2, *(a1 + 12) == 5))
                      {
                        return (*(a1 + 12) - 7) < 9;
                      }

                      result = (*(*a2 + 32))(a2, 0x180000001, 0x26700000063, 1, a1 + 92);
                      if (!result)
                      {
                        return (*(a1 + 12) - 7) < 9;
                      }
                    }

                    else
                    {
                      v12 = a1 + 76;
                      v13 = 16;
                      while (1)
                      {
                        result = (*(*a2 + 56))(a2, v12, 0.0);
                        if (result)
                        {
                          break;
                        }

                        v12 += 4;
                        v13 -= 4;
                        if (!v13)
                        {
                          goto LABEL_34;
                        }
                      }
                    }
                  }
                }
              }
            }

            else
            {
              return 1;
            }
          }
        }
      }
    }
  }

  else
  {
    (*(*a2 + 80))(a2, a1);
    return 0;
  }

  return result;
}

void sub_240B5A364(uint64_t a1)
{
  *a1 = &unk_2852A1AF0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  JUMPOUT(0x245CCE590);
}

uint64_t sub_240B5A3D4(uint64_t a1)
{
  *a1 = &unk_2852A1AF0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return a1;
}

uint64_t sub_240B5A424(uint64_t a1, uint64_t *a2)
{
  v4 = (*(*a2 + 72))(a2, a1, a1 + 8);
  v5 = *a2;
  if (!v4)
  {
    (*(v5 + 80))(a2, a1);
    return 0;
  }

  v6 = (*(v5 + 96))(a2);
  v7 = 1;
  if ((v6 & 1) == 0)
  {
    v13 = &unk_2852A1F00;
    v16 = 1;
    v14 = xmmword_240C112C0;
    v15 = 0;
    (*(*(a1 + 288) + 16))(a1 + 288, &v13);
    v7 = v16 ^ 1;
  }

  if (*(a1 + 248) != 1 || (*(a1 + 252) & 1) != 0 || (*(a1 + 253) & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 254) | v7;
  }

  LOBYTE(v13) = v8 & 1;
  result = (*(*a2 + 24))(a2, 0, &v13);
  if (!result)
  {
    if ((*(*a2 + 64))(a2, v13))
    {
      *(a1 + 248) = 1;
      *(a1 + 254) = 0;
      *(a1 + 252) = 0;
    }

    else
    {
      --*(a1 + 248);
      result = (*(*a2 + 40))(a2, 3, 0, a1 + 248);
      if (result)
      {
        return result;
      }

      ++*(a1 + 248);
      result = (*(*a2 + 24))(a2, 0, a1 + 254);
      if (result)
      {
        return result;
      }

      if (!(*(*a2 + 64))(a2, *(a1 + 254)))
      {
        result = (*(*a2 + 88))(a2, a1 + 256);
        if (result)
        {
          return result;
        }
      }

      result = (*(*a2 + 24))(a2, 0, a1 + 252);
      if (result)
      {
        return result;
      }

      if (!(*(*a2 + 64))(a2, *(a1 + 252)))
      {
        result = (*(*a2 + 88))(a2, a1 + 352);
        if (result)
        {
          return result;
        }
      }

      result = (*(*a2 + 24))(a2, 0, a1 + 253);
      if (result)
      {
        return result;
      }

      if (!(*(*a2 + 64))(a2, *(a1 + 253)))
      {
        result = (*(*a2 + 88))(a2, a1 + 384);
        if (result)
        {
          return result;
        }
      }
    }

    result = (*(*a2 + 88))(a2, a1 + 16);
    if (!result)
    {
      result = (*(*a2 + 24))(a2, 1, a1 + 40);
      if (!result)
      {
        v10 = (a1 + 320);
        *(a1 + 320) = -1431655765 * ((*(a1 + 336) - *(a1 + 328)) >> 5);
        result = (*(*a2 + 32))(a2, 0x8000000180000000, 0x2B00000043, 0, a1 + 320);
        if (!result)
        {
          if (!(*(*a2 + 64))(a2, *v10 != 0))
          {
            if ((*(*a2 + 96))(a2))
            {
              sub_240B5AAEC((a1 + 328), *v10);
            }

            v11 = *(a1 + 328);
            v12 = *(a1 + 336);
            while (v11 != v12)
            {
              result = (*(*a2 + 88))(a2, v11);
              if (result)
              {
                return result;
              }

              v11 += 96;
            }
          }

          result = (*(*a2 + 24))(a2, 1, a1 + 41);
          if (!result)
          {
            result = (*(*a2 + 88))(a2, a1 + 48);
            if (!result)
            {
              if ((*(*a2 + 64))(a2, v13) || (result = (*(*a2 + 88))(a2, a1 + 288), !result))
              {
                if (!(*(*a2 + 96))(a2) || (*(a1 + 416) & 1) == 0)
                {
                  result = (*(*a2 + 104))(a2, a1 + 408);
                  if (!result)
                  {
                    return (*(*a2 + 112))(a2);
                  }

                  return result;
                }

                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_240B5AAEC(void *result, unint64_t a2)
{
  v2 = result;
  v4 = *result;
  v3 = result[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 5);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v4 + 96 * a2);
      if (v3 != v11)
      {
        v12 = (v3 - 12);
        v13 = v12;
        v14 = v12;
        do
        {
          v15 = *v14;
          v14 -= 12;
          result = (*v15)(v13);
          v12 -= 12;
          v16 = v13 == v11;
          v13 = v14;
        }

        while (!v16);
      }

      v2[1] = v11;
    }
  }

  else
  {
    v7 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 5) < v6)
    {
      if (a2 <= 0x2AAAAAAAAAAAAAALL)
      {
        v19 = result;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 5);
        v9 = 0x5555555555555556 * ((v7 - v4) >> 5);
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x155555555555555)
        {
          v10 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B4B624(v10);
      }

      sub_240B228BC();
    }

    v17 = &v3[12 * v6];
    v18 = 96 * a2 - 32 * ((v3 - *result) >> 5);
    do
    {
      result = sub_240B5ADC4(v3);
      v3 += 12;
      v18 -= 96;
    }

    while (v18);
    v2[1] = v17;
  }

  return result;
}

void sub_240B5ADA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_240B5AEE8(va);
  _Unwind_Resume(a1);
}

void *sub_240B5ADC4(void *a1)
{
  *a1 = &unk_2852A1AF0;
  a1[2] = &unk_2852A1288;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B59AA0((a1 + 2), &v3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  (*(*a1 + 16))(a1, &v3);
  return a1;
}

void sub_240B5AECC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B5AEE8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 96);
    *(a1 + 16) = i - 96;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240B5AF54(uint64_t a1)
{
  *a1 = &unk_2852A1C90;
  v3 = (a1 + 328);
  sub_240B4B18C(&v3);
  *(a1 + 48) = &unk_2852A1CB8;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x245CCE590);
}

uint64_t sub_240B5AFFC(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 72))(a2, a1, a1 + 8))
  {
    v4 = 0;
    v5 = a1 + 12;
    while (1)
    {
      result = (*(*a2 + 56))(a2, v5, *&dword_240C81F54[v4]);
      if (result)
      {
        break;
      }

      v5 += 4;
      if (++v4 == 9)
      {
        v7 = 0;
        v8 = a1 + 48;
        while (1)
        {
          result = (*(*a2 + 56))(a2, v8, *(&xmmword_240C87740 + v7));
          if (result)
          {
            break;
          }

          v8 += 4;
          v7 += 4;
          if (v7 == 12)
          {
            v9 = 0;
            for (i = a1 + 60; ; i += 4)
            {
              result = (*(*a2 + 56))(a2, i, *(&xmmword_240C81EB8 + v9));
              if (result)
              {
                break;
              }

              v9 += 4;
              if (v9 == 16)
              {
                return 0;
              }
            }

            return result;
          }
        }

        return result;
      }
    }
  }

  else
  {
    (*(*a2 + 80))(a2, a1);
    return 0;
  }

  return result;
}

uint64_t sub_240B5B1AC(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 72))(a2, a1, a1 + 8))
  {
    v4 = (a1 + 12);
    result = (*(*a2 + 56))(a2, a1 + 12, 255.0);
    if (!result)
    {
      if (*v4 <= 0.0)
      {
        return 1;
      }

      v6 = (a1 + 16);
      result = (*(*a2 + 56))(a2, a1 + 16, 0.0);
      if (!result)
      {
        if (*v6 < 0.0)
        {
          return 1;
        }

        if (*v6 > *v4)
        {
          return 1;
        }

        result = (*(*a2 + 24))(a2, 0, a1 + 20);
        if (!result)
        {
          v7 = (a1 + 24);
          result = (*(*a2 + 56))(a2, a1 + 24, 0.0);
          if (!result)
          {
            if (*v7 < 0.0)
            {
              return 1;
            }

            result = 0;
            if (*v7 > 1.0 && (*(a1 + 20) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  else
  {
    (*(*a2 + 80))(a2, a1);
    return 0;
  }

  return result;
}

uint64_t sub_240B5B388(uint64_t a1)
{
  *a1 = &unk_2852A1AA0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_2852A1AC8;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B5AFFC(a1 + 16, &v3);
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  (*(*a1 + 16))(a1, &v3);
  return a1;
}

uint64_t sub_240B5B484(uint64_t a1)
{
  *a1 = &unk_2852A1C90;
  *(a1 + 16) = &unk_2852A1288;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B59AA0(a1 + 16, &v3);
  sub_240B29BD0(a1 + 48);
  *(a1 + 248) = 1;
  *(a1 + 252) = 0;
  *(a1 + 254) = 0;
  sub_240B579D4((a1 + 256));
  *(a1 + 288) = &unk_2852A21D0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B5B1AC(a1 + 288, &v3);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = &unk_2852A1C68;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B57400(a1 + 352, &v3);
  *(a1 + 384) = &unk_2852A1B40;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  sub_240B576CC(a1 + 384, &v3);
  *(a1 + 416) = 0;
  v3 = &unk_2852A2120;
  v4 = xmmword_240C112C0;
  v5 = 0;
  (*(*a1 + 16))(a1, &v3);
  return a1;
}

void sub_240B5B6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 + 328);
  sub_240B4B18C(&a12);
  *(v12 + 48) = &unk_2852A1CB8;
  v14 = *(v12 + 80);
  if (v14)
  {
    *(v12 + 88) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B5B700(uint64_t a1, uint64_t a2)
{
  if (!(*(*a2 + 72))(a2, a1, a1 + 8))
  {
    (*(*a2 + 80))(a2, a1);
    return 0;
  }

  result = (*(*a2 + 24))(a2, 1, a1 + 9);
  if (result)
  {
    return result;
  }

  if (!(*(*a2 + 64))(a2, *(a1 + 9)))
  {
    result = (*(*a2 + 24))(a2, 0, a1 + 10);
    if (result)
    {
      return result;
    }

    if (!(*(*a2 + 64))(a2, *(a1 + 10)))
    {
      result = (*(*a2 + 56))(a2, a1 + 12, 0.11517);
      if (result)
      {
        return result;
      }

      result = (*(*a2 + 56))(a2, a1 + 16, 0.061249);
      if (result)
      {
        return result;
      }

      if (fabsf(((*(a1 + 12) + *(a1 + 16)) * 4.0) + 1.0) < 0.00000001)
      {
        return 1;
      }

      result = (*(*a2 + 56))(a2, a1 + 20, 0.11517);
      if (result)
      {
        return result;
      }

      result = (*(*a2 + 56))(a2, a1 + 24, 0.061249);
      if (result)
      {
        return result;
      }

      if (fabsf(((*(a1 + 20) + *(a1 + 24)) * 4.0) + 1.0) < 0.00000001)
      {
        return 1;
      }

      result = (*(*a2 + 56))(a2, a1 + 28, 0.11517);
      if (result)
      {
        return result;
      }

      result = (*(*a2 + 56))(a2, a1 + 32, 0.061249);
      if (result)
      {
        return result;
      }

      if (fabsf(((*(a1 + 28) + *(a1 + 32)) * 4.0) + 1.0) < 0.00000001)
      {
        return 1;
      }
    }
  }

  result = (*(*a2 + 40))(a2, 2, 2, a1 + 36);
  if (result)
  {
    return result;
  }

  if ((*(*a2 + 64))(a2, *(a1 + 36) != 0))
  {
LABEL_6:
    result = (*(*a2 + 104))(a2, a1 + 128);
    if (!result)
    {
      v5 = *(*a2 + 112);

      return v5(a2);
    }

    return result;
  }

  if ((*(*a2 + 64))(a2, (*(a1 + 136) & 1) == 0))
  {
    goto LABEL_19;
  }

  result = (*(*a2 + 24))(a2, 0, a1 + 40);
  if (result)
  {
    return result;
  }

  if ((*(*a2 + 64))(a2, *(a1 + 40)))
  {
LABEL_19:
    result = (*(*a2 + 24))(a2, 0, a1 + 76);
    if (result)
    {
      return result;
    }

    if (!(*(*a2 + 64))(a2, *(a1 + 76)))
    {
      result = (*(*a2 + 56))(a2, a1 + 80, 40.0);
      if (result)
      {
        return result;
      }

      result = (*(*a2 + 56))(a2, a1 + 84, 5.0);
      if (result)
      {
        return result;
      }

      result = (*(*a2 + 56))(a2, a1 + 88, 3.5);
      if (result)
      {
        return result;
      }

      result = (*(*a2 + 56))(a2, a1 + 92, 0.45);
      if (result)
      {
        return result;
      }

      result = (*(*a2 + 56))(a2, a1 + 96, 0.6);
      if (result)
      {
        return result;
      }
    }

    result = (*(*a2 + 24))(a2, 0, a1 + 100);
    if (result)
    {
      return result;
    }

    if (!(*(*a2 + 64))(a2, *(a1 + 100)))
    {
      if (!(*(*a2 + 64))(a2, (*(a1 + 136) & 1) == 0))
      {
        result = (*(*a2 + 56))(a2, a1 + 104, 0.46);
        if (result)
        {
          return result;
        }
      }

      result = (*(*a2 + 56))(a2, a1 + 108, 0.9);
      if (result)
      {
        return result;
      }

      result = (*(*a2 + 56))(a2, a1 + 112, 6.5);
      if (result)
      {
        return result;
      }

      result = (*(*a2 + 56))(a2, a1 + 116, 0.66667);
      if (result)
      {
        return result;
      }
    }

    if (!(*(*a2 + 64))(a2, *(a1 + 136)))
    {
      result = (*(*a2 + 56))(a2, a1 + 120, 1.0);
      if (result)
      {
        return result;
      }

      if (*(a1 + 120) < 0.00000001)
      {
        return 1;
      }
    }

    goto LABEL_6;
  }

  v6 = 0;
  v7 = a1 + 44;
  while (1)
  {
    result = (*(*a2 + 56))(a2, v7, v6 / 7.0);
    if (result)
    {
      return result;
    }

    ++v6;
    v7 += 4;
    if (v6 == 8)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_240B5BFDC(unint64_t *a1, uint64_t *a2, unint64_t a3)
{
  memset(v62, 0, 24);
  *__p = 0u;
  v60 = 0u;
  *v58 = 0u;
  memset(v57, 0, sizeof(v57));
  sub_240B2BCB4(v61);
  v61[6] = 0;
  v6 = sub_240B2BD40(a1, 6uLL, v57, v62, 0);
  if (!v6)
  {
    if (*(__p[1] + *(v62[0] + 1)) <= 0)
    {
      sub_240B23A18(v55, v57, a1, 0);
      v7 = 0;
      v8 = 0x400000;
      if (a3 < 0x400000)
      {
        v8 = a3;
      }

      v54 = v8;
      v9 = *a2;
      a2[1] = *a2;
      v10 = 1;
      while (1)
      {
        v12 = a1[3];
        v11 = a1[4];
        v13 = 8 * (a1[2] - v11 + a1[5]) - a1[1];
        a1[7] = v13;
        if (v13 > 8 * (v12 - v11) + 64)
        {
          break;
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v9 - *a2) >> 3) > v54)
        {
          break;
        }

        v14 = v62[0];
        v15 = sub_240B24020(v55, *(v62[0] + 1), a1);
        if (v15 > 0x100)
        {
          break;
        }

        if (v15)
        {
          v16 = v15 - 1;
          v17 = sub_240B24020(v55, *v14, a1);
          v18 = (v17 >> 1) ^ -(v17 & 1);
          v19 = *a2;
          v20 = a2[1];
          v21 = v20 - *a2;
          v22 = 0xCCCCCCCCCCCCCCCDLL * (v21 >> 3);
          v23 = v22 + v10++;
          v24 = v22 + v10;
          v25 = a2[2];
          if (v20 >= v25)
          {
            v37 = v22 + 1;
            if (v22 + 1 > 0x666666666666666)
            {
              goto LABEL_52;
            }

            v38 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - v19) >> 3);
            if (2 * v38 > v37)
            {
              v37 = 2 * v38;
            }

            if (v38 >= 0x333333333333333)
            {
              v39 = 0x666666666666666;
            }

            else
            {
              v39 = v37;
            }

            if (v39)
            {
              sub_240B5C5D8(v39);
            }

            v45 = 8 * (v21 >> 3);
            *v45 = v18;
            *(v45 + 4) = v16;
            *(v45 + 8) = v23;
            *(v45 + 12) = v24;
            *(v45 + 16) = 0;
            *(v45 + 24) = 0;
            *(v45 + 32) = 1;
            v9 = v45 + 40;
            v46 = v45 - v21;
            memcpy((v45 - v21), v19, v21);
            v47 = *a2;
            *a2 = v46;
            a2[1] = v9;
            a2[2] = 0;
            if (v47)
            {
              operator delete(v47);
            }

            v26 = v7;
          }

          else
          {
            *v20 = v18;
            *(v20 + 4) = v16;
            *(v20 + 8) = v23;
            *(v20 + 12) = v24;
            *(v20 + 16) = 0;
            *(v20 + 24) = 0;
            v9 = v20 + 40;
            v26 = v7;
            *(v20 + 32) = 1;
          }
        }

        else
        {
          v27 = sub_240B24020(v55, v14[2], a1);
          if (v27 > 0xD)
          {
            break;
          }

          v28 = v27;
          v29 = sub_240B24020(v55, v14[3], a1);
          v30 = sub_240B24020(v55, v14[4], a1);
          if (v30 > 0x1E)
          {
            break;
          }

          v31 = v30;
          v32 = sub_240B24020(v55, v14[5], a1);
          if ((0x80000000 >> v31) - 1 <= v32)
          {
            break;
          }

          --v10;
          v33 = -(v29 & 1) ^ (v29 >> 1);
          v34 = (v32 + 1) << v31;
          v26 = v7 + 1;
          v35 = a2[1];
          v36 = a2[2];
          if (v35 >= v36)
          {
            v40 = *a2;
            v41 = v35 - *a2;
            v42 = 0xCCCCCCCCCCCCCCCDLL * (v41 >> 3) + 1;
            if (v42 > 0x666666666666666)
            {
LABEL_52:
              sub_240B228BC();
            }

            v43 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - v40) >> 3);
            if (2 * v43 > v42)
            {
              v42 = 2 * v43;
            }

            if (v43 >= 0x333333333333333)
            {
              v44 = 0x666666666666666;
            }

            else
            {
              v44 = v42;
            }

            if (v44)
            {
              sub_240B5C5D8(v44);
            }

            v48 = 8 * (v41 >> 3);
            *v48 = 0;
            *(v48 + 4) = -1;
            *(v48 + 8) = v7;
            *(v48 + 12) = 0;
            *(v48 + 16) = v28;
            *(v48 + 24) = v33;
            *(v48 + 32) = v34;
            v9 = v48 + 40;
            v49 = v48 - v41;
            memcpy((v48 - v41), v40, v41);
            v50 = *a2;
            *a2 = v49;
            a2[1] = v9;
            a2[2] = 0;
            if (v50)
            {
              operator delete(v50);
            }
          }

          else
          {
            *v35 = 0;
            *(v35 + 4) = -1;
            *(v35 + 8) = v7;
            *(v35 + 12) = 0;
            *(v35 + 16) = v28;
            *(v35 + 24) = v33;
            v9 = v35 + 40;
            *(v35 + 32) = v34;
          }
        }

        a2[1] = v9;
        v7 = v26;
        if (!v10)
        {
          memset(&v62[3], 0, 24);
          sub_240B299F4(0x100uLL);
        }
      }

      v6 = 1;
      v51 = v56;
      v56 = 0;
      if (v51)
      {
        atomic_fetch_add(&qword_27E519020, -*(v51 - 24));
        free(*(v51 - 32));
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (__p[1])
  {
    *&v60 = __p[1];
    operator delete(__p[1]);
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }

  v55[0] = v57 + 1;
  sub_240B23988(v55);
  v52 = *&v57[0];
  *&v57[0] = 0;
  if (v52)
  {
    atomic_fetch_add(&qword_27E519020, -*(v52 - 24));
    free(*(v52 - 32));
  }

  if (v62[0])
  {
    operator delete(v62[0]);
  }

  return v6;
}

void sub_240B5C504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v18 - 104) = v17;
  operator delete(v17);
  if (a17)
  {
    atomic_fetch_add(&qword_27E519020, -*(a17 - 24));
    free(*(a17 - 32));
  }

  sub_240B23FBC(&STACK[0x260]);
  v20 = *(v18 - 136);
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_240B5C5D8(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B5C630(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a1 + 40 * a3;
  v5 = *(v4 + 4);
  if (v5 == -1)
  {
    return 0;
  }

  v7 = *v4;
  v8 = *a2;
  v9 = (*a2 + 8 * v5);
  if (*v9 > v7 || v9[1] <= v7)
  {
    return 1;
  }

  memset(v16, 0, sizeof(v16));
  v12 = a2[1];
  v13 = v12 - v8;
  if (v12 != v8)
  {
    if (!((v13 >> 3) >> 61))
    {
      sub_240B299F4(v13 >> 3);
    }

    sub_240B228BC();
  }

  *(8 * v5) = v7 + 1;
  v14 = sub_240B5C630(a1, v16, *(v3 + 40 * a3 + 8));
  if (!v14)
  {
    *(8 * v5) = *(*a2 + 8 * v5);
    *(8 * v5 + 4) = v7;
    v14 = sub_240B5C630(a1, v16, *(*a1 + 40 * a3 + 12));
  }

  operator delete(0);
  return v14;
}

uint64_t sub_240B5C79C(void *a1, uint64_t *a2, uint64_t a3, unint64_t *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  v7 = a7;
  *a4 = 0;
  *a7 = 1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v59 = 0u;
  memset(v58, 0, sizeof(v58));
  *&v55 = 0;
  sub_240B5CBD8(v58, &v55);
  v11 = *(&v59 + 1);
  if (*(&v59 + 1))
  {
    v45 = a5;
    v12 = 0;
    v13 = 0;
    v46 = v7;
LABEL_3:
    v48 = v12;
    v14 = *(*(*(&v58[0] + 1) + ((v59 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v59 & 0x1FF));
    *&v59 = v59 + 1;
    *(&v59 + 1) = v11 - 1;
    if (v59 >= 0x400)
    {
      operator delete(**(&v58[0] + 1));
      *(&v58[0] + 1) += 8;
      *&v59 = v59 - 512;
    }

    v15 = *a2 + 40 * v14;
    v16 = *(v15 + 4);
    v17 = v16 > 1 || v16 == -1;
    v49 = v13;
    if (!v17)
    {
      do
      {
        if (*(a3 + 4 * v16) <= *v15)
        {
          v18 = 12;
        }

        else
        {
          v18 = 8;
        }

        v14 = *(v15 + v18);
        v15 = *a2 + 40 * v14;
        v16 = *(v15 + 4);
      }

      while (v16 <= 1 && v16 != -1);
    }

    if (v16 == -1)
    {
      v37 = *(v15 + 24);
      v56 = *(v15 + 8);
      v57 = v37;
      v38 = *(v15 + 16);
      LODWORD(v55) = -1;
      DWORD1(v55) = v38;
      DWORD2(v55) = *(v15 + 32);
      v39 = *v7;
      if (v38 != 5)
      {
        v39 = 0;
      }

      *v7 = v39;
      v40 = v38 == 6;
      v41 = v38 != 6;
      sub_240B5CC64(a1, &v55);
      v12 = v48 | v40;
      v50 = v49 | v41;
      goto LABEL_53;
    }

    v20 = 0;
    v56 = DWORD2(v59) - 1431655765 * ((a1[1] - *a1) >> 3) + 1;
    v21 = (v16 + 1);
    if (*a4 > v21)
    {
      v21 = *a4;
    }

    *a4 = v21;
    *&v55 = __PAIR64__(*v15, v16);
    v22 = 1;
    do
    {
      v23 = v22;
      v24 = *a2;
      if (v22)
      {
        v25 = 8;
      }

      else
      {
        v25 = 12;
      }

      v26 = *(*a2 + 40 * v14 + v25);
      v27 = v24 + 40 * v26;
      v28 = *(v27 + 4);
      if (v28 > 1)
      {
LABEL_30:
        *(&v57 + v20) = v28;
        *(&v55 + v20 + 2) = *v27;
        v53 = *(v27 + 8);
        sub_240B5CBD8(v58, &v53);
        v53 = *(*a2 + 40 * v26 + 12);
        sub_240B5CBD8(v58, &v53);
        v30 = (v28 + 1);
        if (v30 <= *a4)
        {
          v30 = *a4;
        }

        *a4 = v30;
      }

      else
      {
        while (v28 != -1)
        {
          if (*(a3 + 4 * v28) <= *v27)
          {
            v29 = 12;
          }

          else
          {
            v29 = 8;
          }

          v26 = *(v27 + v29);
          v27 = v24 + 40 * v26;
          v28 = *(v27 + 4);
          if (v28 >= 2)
          {
            goto LABEL_30;
          }
        }

        v54 = v26;
        *(&v57 + v20) = 0;
        *(&v55 + v20 + 2) = 0;
        sub_240B5CBD8(v58, &v54);
        sub_240B5CBD8(v58, &v54);
      }

      v22 = 0;
      v20 = 1;
    }

    while ((v23 & 1) != 0);
    v31 = 0;
    v32 = 1;
    v7 = v46;
    v12 = v48;
    v33 = v49;
    while (1)
    {
      v34 = v32;
      v35 = *(&v57 + v31);
      if (v35 == 15)
      {
        v12 = 1;
      }

      else
      {
        if (v35 < 2)
        {
          goto LABEL_41;
        }

        v33 = 1;
        if (v35 == 9)
        {
          goto LABEL_41;
        }
      }

      *v46 = 0;
LABEL_41:
      v32 = 0;
      v31 = 1;
      if ((v34 & 1) == 0)
      {
        if (v16 == 15)
        {
          v50 = v33;
          v12 = 1;
          v36 = a1;
          goto LABEL_44;
        }

        v36 = a1;
        if (v16 < 2)
        {
          v50 = v33;
        }

        else
        {
          v50 = 1;
          if (v16 != 9)
          {
LABEL_44:
            *v46 = 0;
          }
        }

        sub_240B5CC64(v36, &v55);
LABEL_53:
        v11 = *(&v59 + 1);
        v13 = v50;
        if (!*(&v59 + 1))
        {
          v42 = v50 ^ 1;
          a5 = v45;
          goto LABEL_56;
        }

        goto LABEL_3;
      }
    }
  }

  LOBYTE(v12) = 0;
  v42 = 1;
LABEL_56:
  v43 = 16;
  if (*a4 > 0x10)
  {
    v43 = ((*a4 - 13) & 0xFFFFFFFFFFFFFFFCLL) + 16;
  }

  *a4 = v43;
  *a5 = v12;
  *a6 = v12 & v42 & 1;
  return sub_240B5CD98(v58);
}

void sub_240B5CBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_240B5CD98(va);
  v16 = *a6;
  if (*a6)
  {
    *(a6 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void *sub_240B5CBD8(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_240B5CE64(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void sub_240B5CC64(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_240B228BC();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_240B2291C();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_240B5CD98(uint64_t a1)
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
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
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

void *sub_240B5CE64(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    sub_240B5D41C(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_240B5D318(a1, &v10);
}

void sub_240B5D2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void *sub_240B5D318(void *result, void *a2)
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

      sub_240B5D41C(v11);
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

void sub_240B5D41C(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B5D464(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t *a9)
{
  v14 = a2;
  if (*(a2 + 56))
  {
    v16 = (*a9 + (a6 << 6));
    v552[0] = a6;
    v552[1] = a7;
    if (!v16[5] || !v16[6])
    {
      return 0;
    }

    v551 = 0;
    v550 = 0;
    v549 = 0;
    sub_240B5C79C(&v547, a4, v552, &v549, &v551 + 1, &v551, &v550);
    v17 = v547;
    v18 = v548 - v547;
    if (v548 != v547)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
      v20 = *a3;
      if (v19 <= 1)
      {
        v19 = 1;
      }

      v21 = v547 + 4;
      do
      {
        if (*(v21 - 4) == -1)
        {
          *v21 = *(v20 + *v21);
        }

        v21 += 6;
        --v19;
      }

      while (v19);
    }

    v522 = v14;
    v523 = a1;
    v521 = v16;
    if (v18 != 24)
    {
      goto LABEL_76;
    }

    v22 = v17[1];
    v23 = v17[2];
    v24 = v17[4];
    v25 = v17[5];
    v517 = v24;
    if (v22)
    {
      if (v22 == 5 && !v25 && v23 == 1)
      {
        if (!*(v14 + 56) || *(v14 + 16) != 1)
        {
          goto LABEL_128;
        }

        v26 = *(v14 + 76);
        v27 = (*(*(v14 + 8) + 24 * v26) + 2);
        v28 = 8;
        do
        {
          if (*(v27 - 2) || *v27 != 1)
          {
            goto LABEL_128;
          }

          v27 += 2;
          --v28;
        }

        while (v28);
        if (*(*(v14 + 24) + 16 * v26 + 4) > 1u)
        {
LABEL_128:
          v139 = v16[6];
          if (v139)
          {
            v140 = 0;
            v141 = v16[2] >> 2;
            v142 = -v141;
            v143 = v16[5];
            v144 = -1 * v141;
            do
            {
              if (v143)
              {
                v145 = 0;
                v146 = (v16[3] + v16[2] * v140);
                v147 = v146;
                do
                {
                  if (v145)
                  {
                    v148 = *(v147 - 1);
                    v149 = v517;
                    if (v140)
                    {
                      v150 = v147[v144 - 1];
                      v151 = v147[v144];
                    }

                    else
                    {
                      v151 = *(v147 - 1);
                      v150 = v151;
                    }
                  }

                  else
                  {
                    v149 = v517;
                    if (v140)
                    {
                      v151 = v146[v142];
                      v148 = v151;
                      v150 = v151;
                    }

                    else
                    {
                      v151 = 0;
                      v148 = 0;
                      v150 = 0;
                    }
                  }

                  v152 = sub_240B24020(v522, v149, v523);
                  if (v151 <= v148)
                  {
                    v153 = v148;
                  }

                  else
                  {
                    v153 = v151;
                  }

                  if (v148 >= v151)
                  {
                    v154 = v151;
                  }

                  else
                  {
                    v154 = v148;
                  }

                  v155 = v148 + v151 - v150;
                  if (v154 > v150)
                  {
                    v155 = v153;
                  }

                  if (v153 >= v150)
                  {
                    v156 = v155;
                  }

                  else
                  {
                    v156 = v154;
                  }

                  *v147++ = v156 + ((v152 >> 1) ^ -(v152 & 1));
                  ++v145;
                  v143 = v16[5];
                }

                while (v145 < v143);
                v139 = v16[6];
              }

              ++v140;
            }

            while (v140 < v139);
          }

          goto LABEL_505;
        }

        if (!v16[6])
        {
          goto LABEL_505;
        }

        LODWORD(v29) = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v33 = v16[2];
          v34 = v16[3];
          v35 = (v34 + v33 * v30);
          v509 = v30;
          if (v30)
          {
            v36 = v33 * (v30 - 1);
            v37 = (v34 + v36);
            v38 = *(v34 + v36);
            if (!v32)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v36 = 0;
            v38 = 0;
            v37 = v35 - 1;
            if (!v32)
            {
LABEL_29:
              v39 = v523[2];
              if (v39 > v523[3])
              {
                sub_240B244C4(v523);
                v24 = v517;
              }

              else
              {
                v40 = v523[1];
                v41 = *v523 | (*v39 << v40);
                v523[2] = v39 + ((63 - v40) >> 3);
                *v523 = v41;
                v523[1] = v40 | 0x38;
              }

              v42 = v24;
              v43 = sub_240B435F8(*(*(v14 + 8) + 24 * v24), v523);
              v44 = *(v14 + 84);
              v45 = v43 >= v44;
              v46 = v43 - v44;
              if (v45)
              {
                v95 = *(v14 + 92);
                v45 = v46 >= v95;
                v96 = v46 - v95;
                if (v45)
                {
                  v98 = *(v522 + 96);
                  v97 = *(v522 + 100);
                  v99 = *(v522 + 88) - (v98 + v97) + (v96 >> (v98 + v97));
                  v100 = *v523 & ~(-1 << v99);
                  v101 = v523[1] - (v99 & 0x1F);
                  *v523 >>= v99 & 0x1F;
                  v523[1] = v101;
                  LODWORD(v46) = v46 & ~(-1 << v97) | ((v100 | (((v46 >> v97) & ((1 << v98) - 1) | (1 << v98)) << v99)) << v97);
                }

                v16 = v521;
                v14 = v522;
                v32 = v46 + *(v522 + 80) - 1;
                v24 = v517;
              }

              else
              {
                v47 = (*(v14 + 24) + 16 * v42);
                v48 = v47[1];
                v45 = v43 >= v48;
                v49 = v43 - v48;
                v24 = v42;
                v32 = 0;
                if (v45)
                {
                  v50 = *v47;
                  v53 = v47 + 2;
                  v51 = v47[2];
                  v52 = v53[1];
                  v54 = v50 - (v51 + v52) + (v49 >> (v51 + v52));
                  v55 = *v523 & ~(-1 << v54);
                  v56 = v523[1] - (v54 & 0x1F);
                  *v523 >>= v54 & 0x1F;
                  v523[1] = v56;
                  v31 = v43 & ~(-1 << v52) | ((v55 | (((v43 >> v52) & ((1 << v51) - 1) | (1 << v51)) << v54)) << v52);
                }

                else
                {
                  v31 = v43;
                }
              }

              v29 = -(v31 & 1) ^ (v31 >> 1);
              goto LABEL_36;
            }
          }

          --v32;
LABEL_36:
          *v35 = v29 + v38;
          v57 = v16[5];
          if (v57 >= 2)
          {
            v58 = 0;
            v59 = v34 + v36;
            v60 = v37 + 1;
            do
            {
              v61 = &v35[v58];
              v62 = *v61;
              v63 = v60[v58];
              v64 = *(v59 + 4 * v58);
              if (*v61 >= v63)
              {
                v65 = v60[v58];
              }

              else
              {
                v65 = *v61;
              }

              if (v63 <= v62)
              {
                v66 = *v61;
              }

              else
              {
                v66 = v60[v58];
              }

              v67 = v63 + v62 - v64;
              if (v65 > v64)
              {
                v67 = v66;
              }

              if (v66 >= v64)
              {
                v68 = v67;
              }

              else
              {
                v68 = v65;
              }

              if (v32)
              {
                --v32;
              }

              else
              {
                v69 = v523[2];
                v513 = v31;
                if (v69 > v523[3])
                {
                  sub_240B244C4(v523);
                  v24 = v517;
                }

                else
                {
                  v70 = v523[1];
                  v71 = *v523 | (*v69 << v70);
                  v523[2] = v69 + ((63 - v70) >> 3);
                  *v523 = v71;
                  v523[1] = v70 | 0x38;
                }

                v72 = v24;
                v73 = sub_240B435F8(*(*(v14 + 8) + 24 * v24), v523);
                v74 = *(v14 + 84);
                v45 = v73 >= v74;
                v75 = v73 - v74;
                if (v45)
                {
                  v87 = *(v14 + 92);
                  v45 = v75 >= v87;
                  v88 = v75 - v87;
                  if (v45)
                  {
                    v90 = *(v14 + 96);
                    v89 = *(v14 + 100);
                    v91 = *(v14 + 88) - (v90 + v89) + (v88 >> (v90 + v89));
                    v92 = *v523 & ~(-1 << v91);
                    v93 = v523[1] - (v91 & 0x1F);
                    *v523 >>= v91 & 0x1F;
                    v523[1] = v93;
                    LODWORD(v75) = v75 & ~(-1 << v89) | ((v92 | (((v75 >> v89) & ((1 << v90) - 1) | (1 << v90)) << v91)) << v89);
                  }

                  v32 = v75 + *(v14 + 80) - 1;
                  v24 = v517;
                  v16 = v521;
                  v31 = v513;
                }

                else
                {
                  v76 = (*(v14 + 24) + 16 * v72);
                  v77 = v76[1];
                  v45 = v73 >= v77;
                  v78 = v73 - v77;
                  v24 = v72;
                  v32 = 0;
                  if (v45)
                  {
                    v79 = *v76;
                    v82 = v76 + 2;
                    v80 = v76[2];
                    v81 = v82[1];
                    v83 = v79 - (v80 + v81) + (v78 >> (v80 + v81));
                    v84 = *v523 & ~(-1 << v83);
                    v85 = v523[1] - (v83 & 0x1F);
                    *v523 >>= v83 & 0x1F;
                    v523[1] = v85;
                    v31 = v73 & ~(-1 << v81) | ((v84 | (((v73 >> v81) & ((1 << v80) - 1) | (1 << v80)) << v83)) << v81);
                  }

                  else
                  {
                    v31 = v73;
                  }
                }

                v29 = -(v31 & 1) ^ (v31 >> 1);
                v57 = v16[5];
              }

              v61[1] = v68 + v29;
              v86 = v58 + 2;
              ++v58;
            }

            while (v86 < v57);
          }

          v94 = 0;
          v30 = v509 + 1;
          if ((v509 + 1) >= v16[6])
          {
            goto LABEL_506;
          }
        }
      }

LABEL_76:
      if (v551 == 1)
      {
        LOBYTE(v551) = sub_240B62A38(&v547, a8);
      }

      if (v550 == 1)
      {
        v103 = sub_240B62A38(&v547, a8);
        v550 = v103;
        if (v103)
        {
          v104 = v16[6];
          if (v104)
          {
            v105 = 0;
            v106 = v16[2] >> 2;
            v510 = -v106;
            v107 = v16[5];
            v518 = -1 * v106;
            do
            {
              if (v107)
              {
                v108 = 0;
                v109 = (v16[3] + v16[2] * v105);
                v514 = v109;
                do
                {
                  if (v108)
                  {
                    v110 = *(v109 - 1);
                    v111 = v110;
                    if (v105)
                    {
                      v113 = v109[v518 - 1];
                      v112 = v109[v518];
                    }

                    else
                    {
                      v112 = v110;
                      v113 = v110;
                    }
                  }

                  else if (v105)
                  {
                    v110 = *(v514 + 4 * v510);
                    v112 = v110;
                    v111 = v110;
                    v113 = v110;
                  }

                  else
                  {
                    v112 = 0;
                    v110 = 0;
                    v111 = 0;
                    v113 = 0;
                  }

                  v114 = v111 + v112 - v113;
                  if (v114 <= -512)
                  {
                    v114 = -512;
                  }

                  if (v114 >= 511)
                  {
                    v114 = 511;
                  }

                  v115 = v114 + 512;
                  v116 = sub_240B24020(v522, *(a8 + v114 + 512), v523);
                  if (v110 <= v112)
                  {
                    v117 = v112;
                  }

                  else
                  {
                    v117 = v110;
                  }

                  if (v110 >= v112)
                  {
                    v118 = v112;
                  }

                  else
                  {
                    v118 = v110;
                  }

                  v119 = v110 + v112 - v113;
                  if (v118 > v113)
                  {
                    v119 = v117;
                  }

                  if (v117 >= v113)
                  {
                    v118 = v119;
                  }

                  *v109++ = *(a8 + 1024 + v115) + v118 + ((v116 >> 1) ^ -(v116 & 1)) * *(a8 + 2048 + v115);
                  ++v108;
                  v16 = v521;
                  v107 = v521[5];
                }

                while (v108 < v107);
                v104 = v521[6];
              }

              ++v105;
            }

            while (v105 < v104);
          }

          goto LABEL_505;
        }
      }

      if ((v551 & 0x100) != 0)
      {
        sub_240B2B9C0(&v545, v549);
        v120 = v16[2];
        v121 = v546 - v545;
        v122 = v16[5];
        v503 = v121 - 16;
        sub_240B3AC2C(&v531, v121 - 16, v122);
        v123 = v535[0];
        if (LODWORD(v535[0]))
        {
          v94 = LODWORD(v535[0]);
        }

        else
        {
          v507 = a7;
          v511 = a6;
          v538 = v531;
          v539 = v532;
          v540 = v533;
          v496 = v533;
          v541 = v534;
          v542 = v503;
          v543 = v122;
          v544 = 0;
          v527 = &unk_2852A1238;
          v233 = *(a5 + 8);
          v234 = *(a5 + 24);
          v530 = *(a5 + 40);
          v529 = v234;
          v528 = v233;
          sub_240B62C98(&v531, &v527, v16[5]);
          if (v16[6])
          {
            v235 = 0;
            v236 = v120 >> 2;
            v494 = DWORD1(v538);
            if (v538)
            {
              v237 = DWORD1(v538) == 0;
            }

            else
            {
              v237 = 1;
            }

            v238 = v237;
            v515 = 4 * v538;
            v519 = v539;
            v240 = a6 > 0 && v503 != 0;
            v499 = v240;
            v501 = v238;
            v241 = v539 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              if (v235)
              {
                v242 = v235 - 1;
              }

              else
              {
                v242 = 0;
              }

              v243 = v16[2];
              v505 = v16[3];
              v244 = v545;
              *v545 = v511;
              v244[1] = v507;
              v244[2] = v235;
              v244[9] = 0;
              if ((v501 & 1) == 0)
              {
                v245 = v494;
                v246 = v496;
                do
                {
                  bzero(v246, v515);
                  v246 += v519;
                  --v245;
                }

                while (v245);
              }

              v247 = v16[5];
              if (v499)
              {
                v248 = 0;
                v249 = 0;
                v250 = *a9;
                v251 = v511;
                v252 = *a9 + (v511 << 6);
                v253 = *(v252 + 40);
                v254 = v235 - 1;
                if (!v235)
                {
                  v254 = 0;
                }

                do
                {
                  v255 = v250 + ((v251 - 1) << 6);
                  if (*(v255 + 40) == v253 && *(v255 + 48) == *(v252 + 48) && *(v255 + 56) == *(v252 + 56) && *(v255 + 60) == *(v252 + 60))
                  {
                    if (v247)
                    {
                      v256 = 0;
                      v257 = *(v255 + 16);
                      v258 = *(v255 + 24);
                      v259 = v257 * v254;
                      v260 = (v258 + v235 * v257);
                      v261 = (v258 + v242 * v257);
                      v262 = &v496[4 * v248 + 8];
                      do
                      {
                        v263 = *v260;
                        if (v263 >= 0)
                        {
                          LODWORD(v264) = *v260;
                        }

                        else
                        {
                          v264 = -v263;
                        }

                        *(v262 - 2) = v264;
                        *(v262 - 1) = v263;
                        if (v256)
                        {
                          v265 = *(v260 - 1);
                          if (v235)
                          {
                            v266 = *(v261 - 1);
                            v267 = *v261;
                          }

                          else
                          {
                            v267 = *(v260 - 1);
                            v266 = v267;
                          }
                        }

                        else
                        {
                          v265 = 0;
                          if (v235)
                          {
                            v266 = 0;
                            v267 = *(v258 + v259);
                          }

                          else
                          {
                            v267 = 0;
                            v266 = 0;
                          }
                        }

                        if (v267 >= v265)
                        {
                          v268 = v265;
                        }

                        else
                        {
                          v268 = v267;
                        }

                        if (v265 <= v267)
                        {
                          v269 = v267;
                        }

                        else
                        {
                          v269 = v265;
                        }

                        v270 = v267 + v265 - v266;
                        if (v268 > v266)
                        {
                          v270 = v269;
                        }

                        if (v269 < v266)
                        {
                          v270 = v268;
                        }

                        v271 = v263 - v270;
                        if (v271 >= 0)
                        {
                          LODWORD(v272) = v271;
                        }

                        else
                        {
                          v272 = -v271;
                        }

                        *v262 = v272;
                        *(v262 + 1) = v271;
                        ++v256;
                        ++v260;
                        ++v261;
                        v262 += v241;
                        v16 = v521;
                      }

                      while (v247 != v256);
                    }

                    v249 += 4;
                  }

                  if (v251 < 2)
                  {
                    break;
                  }

                  v248 = v249;
                  --v251;
                }

                while (v503 > v249);
              }

              if (v247)
              {
                v273 = 0;
                v274 = v505 + v243 * v235;
                do
                {
                  sub_240B63188(&v524, v545, v247, v274 + 4 * v273, v236, v273, v235, &v547, &v538, &v531);
                  v275 = sub_240B24020(v522, v524, v523);
                  v276 = 0;
                  v277 = v525 + (-(v275 & 1) ^ (v275 >> 1)) * v526;
                  *(v274 + 4 * v273) = v277;
                  v247 = v16[5];
                  if (v235)
                  {
                    v278 = 0;
                  }

                  else
                  {
                    v278 = v247 + 2;
                  }

                  v279 = 8 * v277;
                  v280 = v278 + v273;
                  *(__p + v280) = v534 - v279;
                  v281 = v535;
                  do
                  {
                    v282 = *(&v531 + v276) - v279;
                    if (v282 < 0)
                    {
                      v282 = v279 - *(&v531 + v276);
                    }

                    v283 = (v282 + 3) >> 3;
                    v284 = *v281;
                    v281 += 3;
                    *(v284 + 4 * v280) = v283;
                    *(v284 + 4 * (((v235 << 63) >> 63) & (v247 + 2)) + 4 * v273 + 4) += v283;
                    v276 += 8;
                  }

                  while (v276 != 32);
                  ++v273;
                }

                while (v273 < v247);
              }

              ++v235;
            }

            while (v235 < v16[6]);
          }

          if (__p)
          {
            v537 = __p;
            operator delete(__p);
          }

          for (i = 0; i != -12; i -= 3)
          {
            v286 = v535[i + 9];
            if (v286)
            {
              v535[i + 10] = v286;
              operator delete(v286);
            }
          }

          v540 = 0;
          if (v496)
          {
            atomic_fetch_add(&qword_27E519020, -*(v496 - 3));
            free(*(v496 - 4));
          }

          v94 = 0;
          v123 = 0;
        }

        if (v545)
        {
          v546 = v545;
          operator delete(v545);
        }

        if (!v123)
        {
          goto LABEL_505;
        }

LABEL_506:
        if (v547)
        {
          operator delete(v547);
        }

        return v94;
      }

      sub_240B2B9C0(&v527, v549);
      v124 = v16[2];
      v125 = (v528 - v527) >> 2;
      v126 = v16[5];
      v504 = v125 - 16;
      sub_240B3AC2C(&v538, v125 - 16, v126);
      v127 = v542;
      if (v542)
      {
        v94 = v542;
        goto LABEL_494;
      }

      v508 = a7;
      v512 = a6;
      v531 = v538;
      v532 = v539;
      v533 = v540;
      v493 = v540;
      v534 = v541;
      v535[0] = v504;
      v535[1] = v126;
      v535[2] = 0;
      if (!v16[6])
      {
LABEL_491:
        v533 = 0;
        if (v493)
        {
          atomic_fetch_add(&qword_27E519020, -*(v493 - 3));
          free(*(v493 - 4));
        }

        v94 = 0;
        v127 = 0;
LABEL_494:
        if (v527)
        {
          *&v528 = v527;
          operator delete(v527);
        }

        if (!v127)
        {
          goto LABEL_505;
        }

        goto LABEL_506;
      }

      v287 = 0;
      v490 = 1 - (v124 >> 2);
      v489 = 2 - (v124 >> 2);
      v488 = -8 * (v124 >> 2);
      v492 = DWORD1(v531);
      if (v531)
      {
        v288 = DWORD1(v531) == 0;
      }

      else
      {
        v288 = 1;
      }

      v289 = v288;
      v290 = v532;
      v291 = 4 * v531;
      v293 = a6 > 0 && v504 != 0;
      v500 = v293;
      v495 = v540 + 8;
      v498 = v532 & 0xFFFFFFFFFFFFFFFCLL;
      v487 = 4 * ~(v124 >> 2);
      v520 = 4 * v531;
      v506 = v124 >> 2;
      v491 = v289;
      v502 = v532;
      while (1)
      {
        if (v287)
        {
          v294 = v287 - 1;
        }

        else
        {
          v294 = 0;
        }

        v295 = v16[3];
        v516 = v16[2];
        if ((v289 & 1) == 0)
        {
          v296 = v492;
          v297 = v493;
          do
          {
            bzero(v297, v291);
            v291 = v520;
            v297 += v290;
            --v296;
          }

          while (v296);
        }

        v298 = v16[5];
        if (v500)
        {
          v299 = 0;
          v300 = 0;
          v301 = *a9;
          v302 = v512;
          v303 = *a9 + (v512 << 6);
          v304 = *(v303 + 40);
          v305 = v287 - 1;
          if (!v287)
          {
            v305 = 0;
          }

          do
          {
            v306 = v301 + ((v302 - 1) << 6);
            if (*(v306 + 40) == v304 && *(v306 + 48) == *(v303 + 48) && *(v306 + 56) == *(v303 + 56) && *(v306 + 60) == *(v303 + 60))
            {
              if (v298)
              {
                v307 = 0;
                v308 = *(v306 + 16);
                v309 = *(v306 + 24);
                v310 = v308 * v305;
                v311 = (v309 + v287 * v308);
                v312 = (v309 + v294 * v308);
                v313 = (v495 + 4 * v299);
                do
                {
                  v314 = *v311;
                  if (v314 >= 0)
                  {
                    LODWORD(v315) = *v311;
                  }

                  else
                  {
                    v315 = -v314;
                  }

                  *(v313 - 2) = v315;
                  *(v313 - 1) = v314;
                  if (v307)
                  {
                    v316 = *(v311 - 1);
                    if (v287)
                    {
                      v317 = *(v312 - 1);
                      v318 = *v312;
                    }

                    else
                    {
                      v318 = *(v311 - 1);
                      v317 = v318;
                    }
                  }

                  else
                  {
                    v316 = 0;
                    if (v287)
                    {
                      v317 = 0;
                      v318 = *(v309 + v310);
                    }

                    else
                    {
                      v318 = 0;
                      v317 = 0;
                    }
                  }

                  if (v318 >= v316)
                  {
                    v319 = v316;
                  }

                  else
                  {
                    v319 = v318;
                  }

                  if (v316 <= v318)
                  {
                    v320 = v318;
                  }

                  else
                  {
                    v320 = v316;
                  }

                  v321 = v318 + v316 - v317;
                  if (v319 > v317)
                  {
                    v321 = v320;
                  }

                  if (v320 < v317)
                  {
                    v321 = v319;
                  }

                  v322 = v314 - v321;
                  if (v322 >= 0)
                  {
                    LODWORD(v323) = v322;
                  }

                  else
                  {
                    v323 = -v322;
                  }

                  *v313 = v323;
                  v313[1] = v322;
                  ++v307;
                  ++v311;
                  ++v312;
                  v313 = (v313 + v498);
                  v16 = v521;
                }

                while (v298 != v307);
              }

              v300 += 4;
            }

            if (v302 < 2)
            {
              break;
            }

            v299 = v300;
            --v302;
          }

          while (v504 > v300);
        }

        v324 = v527;
        v325 = (v295 + v516 * v287);
        *v527 = v512;
        v324[1] = v508;
        v324[2] = v287;
        v324[9] = 0;
        if (v287 < 2 || v298 < 9 || v504)
        {
          if (v298)
          {
            for (j = 0; j < v298; ++j)
            {
              sub_240B62E30(&v538, v527, v298, v325, v506, j, v287, &v547, &v531);
              v468 = sub_240B24020(v522, v538, v523);
              *v325++ = DWORD2(v538) + ((v468 >> 1) ^ -(v468 & 1)) * HIDWORD(v539);
              v298 = v16[5];
            }
          }
        }

        else
        {
          v497 = v295;
          v326 = 0;
          v327 = 1;
          do
          {
            v328 = v327;
            v329 = &v325[v326];
            sub_240B62E30(&v538, v527, v16[5], v329, v506, v326, v287, &v547, &v531);
            v330 = sub_240B24020(v522, v538, v523);
            v327 = 0;
            *v329 = DWORD2(v538) + ((v330 >> 1) ^ -(v330 & 1)) * HIDWORD(v539);
            v326 = 1;
          }

          while ((v328 & 1) != 0);
          v331 = v16[5];
          v332 = v331 - 2;
          if (v331 - 2 >= 3)
          {
            v333 = 2;
            v334 = v522;
            v336 = v489;
            v335 = v490;
            v338 = v487;
            v337 = v488;
            v289 = v491;
            while (1)
            {
              v339 = &v325[v333];
              v340 = *(v339 + v338);
              v341 = v339[v335];
              v342 = *(v339 - 1);
              v343 = *(v339 - 2);
              v344 = *(v339 + v337);
              v345 = v339[v336];
              v346 = v527;
              *(v527 + 3) = v333;
              v347.i64[0] = vdup_lane_s32(v340, 1).i32[0];
              v347.i64[1] = v342;
              v348 = v347;
              v346[2] = vmovn_s64(vabsq_s64(v347));
              v346[3].i32[0] = v340.i32[1];
              v349 = v342 - v346[4].i32[1];
              v350.i32[0] = v340.i32[1] + v342;
              v350.i32[1] = v342;
              v351.i32[0] = v340.i32[0];
              v351.i64[1] = __PAIR64__(v341, v340.u32[1]);
              v350.u64[1] = v340;
              v346[3].i32[1] = v342;
              v346[4].i32[0] = v349;
              v351.i32[1] = v340.i32[0];
              v352 = vsubq_s32(v350, v351);
              *&v346[4].u8[4] = v352;
              v346[6].i32[1] = v340.i32[1] - v344;
              v346[7].i32[0] = v342 - v343;
              v353 = *v17;
              if ((v353 & 0x80000000) != 0)
              {
                v363 = 0;
              }

              else
              {
                v354 = v17;
                do
                {
                  v355 = v346->i32[v353];
                  v356 = v354[1];
                  v357 = v346->i32[*(v354 + 10)] <= v354[2];
                  v358 = v346->i32[*(v354 + 11)];
                  v359 = v354[3];
                  v360 = v354[4];
                  if (v358 > v359)
                  {
                    v361 = 2;
                  }

                  else
                  {
                    v361 = 3;
                  }

                  if (v355 <= v356)
                  {
                    v362 = v361;
                  }

                  else
                  {
                    v362 = v357;
                  }

                  v363 = v362 + v360;
                  v364 = &v17[6 * v363];
                  v365 = *v364;
                  if ((v365 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v366 = v346->i32[v365];
                  v367 = v364[1];
                  v368 = v346->i32[*(v364 + 10)] <= v364[2];
                  v369 = v346->i32[*(v364 + 11)];
                  v370 = v364[3];
                  v371 = v364[4];
                  v372 = v369 > v370 ? 2 : 3;
                  v373 = v366 <= v367 ? v372 : v368;
                  v363 = v373 + v371;
                  v354 = &v17[6 * v363];
                  v353 = *v354;
                }

                while ((v353 & 0x80000000) == 0);
              }

              v374 = &v17[6 * v363];
              v375 = v374[1];
              v376 = v374[2];
              v377 = v374[5];
              v378 = v374[4];
              if (v375 > 7)
              {
                if (v375 > 10)
                {
                  if (v375 == 11)
                  {
                    v381 = v348.i64[0];
LABEL_409:
                    v380 = v381 + v340.i32[0];
LABEL_423:
                    v379 = v380 / 2;
                    goto LABEL_424;
                  }

                  if (v375 == 12)
                  {
                    v380 = v348.i64[0] + v341;
                    goto LABEL_423;
                  }

                  LODWORD(v379) = 0;
                  if (v375 == 13)
                  {
                    v382 = 6 * v348.i32[0] - v348.i64[1] + 8 * v348.i64[1] + v343 + 3 * v341 - 2 * v344 + v345;
                    v383 = v382 + 8;
                    v384 = v382 + 23;
                    if (v383 >= 0)
                    {
                      v384 = v383;
                    }

                    v379 = v384 >> 4;
                  }
                }

                else
                {
                  LODWORD(v379) = v340.i32[0];
                  if (v375 != 8)
                  {
                    LODWORD(v379) = v343;
                    if (v375 != 9)
                    {
                      v381 = v348.i64[1];
                      goto LABEL_409;
                    }
                  }
                }
              }

              else
              {
                if (v375 <= 3)
                {
                  if (v375 == 1)
                  {
                    LODWORD(v379) = v348.i32[2];
                    goto LABEL_424;
                  }

                  if (v375 == 2)
                  {
                    LODWORD(v379) = v348.i32[0];
                    goto LABEL_424;
                  }

                  LODWORD(v379) = 0;
                  if (v375 != 3)
                  {
                    goto LABEL_424;
                  }

                  v380 = vaddvq_s64(v348);
                  goto LABEL_423;
                }

                if (v375 == 4)
                {
                  v385 = v348.i64[0];
                  v348.i64[0] = vaddvq_s64(v348);
                  v386 = v348.i64[0] - v340.i32[0] - v348.i64[1];
                  if (v386 < 0)
                  {
                    v386 = v348.i64[1] - (v348.i64[0] - v340.i32[0]);
                  }

                  v387 = v348.i64[0] - v340.i32[0] - v385;
                  if (v387 < 0)
                  {
                    v387 = v385 - (v348.i64[0] - v340.i32[0]);
                  }

                  if (v386 >= v387)
                  {
                    LODWORD(v379) = v385;
                  }

                  else
                  {
                    LODWORD(v379) = v348.i32[2];
                  }
                }

                else if (v375 == 5)
                {
                  if (v340.i32[1] >= v342)
                  {
                    v388 = v342;
                  }

                  else
                  {
                    v388 = v340.i32[1];
                  }

                  if (v342 <= v340.i32[1])
                  {
                    v389 = v340.i32[1];
                  }

                  else
                  {
                    v389 = v342;
                  }

                  v390 = v352.i32[0];
                  if (v388 > v340.i32[0])
                  {
                    v390 = v389;
                  }

                  if (v389 >= v340.i32[0])
                  {
                    LODWORD(v379) = v390;
                  }

                  else
                  {
                    LODWORD(v379) = v388;
                  }
                }

                else
                {
                  LODWORD(v379) = 0;
                  if (v375 == 7)
                  {
                    LODWORD(v379) = v341;
                  }
                }
              }

LABEL_424:
              v391 = *(v522 + 68);
              if (v391)
              {
                v412 = v523;
              }

              else
              {
                v392 = v523[2];
                if (v392 > v523[3])
                {
                  v422 = v374[2];
                  v477 = v379;
                  v482 = v374[5];
                  sub_240B244C4(v523);
                  LODWORD(v379) = v477;
                  v377 = v482;
                  v376 = v422;
                  v338 = v487;
                  v337 = v488;
                  v336 = v489;
                  v335 = v490;
                }

                else
                {
                  v393 = v523[1];
                  v394 = *v523 | (*v392 << v393);
                  v523[2] = v392 + ((63 - v393) >> 3);
                  *v523 = v394;
                  v523[1] = v393 | 0x38;
                }

                if (*(v522 + 16) == 1)
                {
                  v478 = v379;
                  v483 = v377;
                  v423 = v376;
                  v424 = sub_240B435F8(*(*(v522 + 8) + 24 * v378), v523);
                  LODWORD(v379) = v478;
                  v377 = v483;
                  v376 = v423;
                  v338 = v487;
                  v337 = v488;
                  v336 = v489;
                  v335 = v490;
                  v402 = v424;
                }

                else
                {
                  v395 = *(v522 + 20);
                  v396 = (v395 & 0xFFF) >> *(v522 + 36);
                  v397 = *(v522 + 40) & v395 & 0xFFFu;
                  v398 = *(*v522 + 8 * (v378 << *(v522 + 32)) + 8 * v396);
                  if (v398 <= v397)
                  {
                    v399 = *(*v522 + 8 * (v378 << *(v522 + 32)) + 8 * v396);
                  }

                  else
                  {
                    v399 = 0;
                  }

                  v400 = HIDWORD(v399);
                  v401 = HIWORD(v399);
                  if (v398 <= v397)
                  {
                    v402 = BYTE1(v398);
                  }

                  else
                  {
                    v402 = (v395 & 0xFFF) >> *(v522 + 36);
                  }

                  v403 = v397 + v400 + (v401 ^ WORD1(v398)) * (*(v522 + 20) >> 12);
                  v404 = v403 < 0x10000;
                  v405 = *v523 >> (16 * v404);
                  if (v403 < 0x10000)
                  {
                    v403 = *v523 | (v403 << 16);
                  }

                  *(v522 + 20) = v403;
                  v406 = v523[1] - 16 * v404;
                  *v523 = v405;
                  v523[1] = v406;
                }

                v407 = *(v522 + 84);
                v45 = v402 >= v407;
                v408 = v402 - v407;
                if (!v45)
                {
                  v409 = (*(v522 + 24) + 16 * v378);
                  v410 = v409[1];
                  v45 = v402 >= v410;
                  v411 = v402 - v410;
                  if (v45)
                  {
                    v413 = *v409;
                    v416 = v409 + 2;
                    v414 = v409[2];
                    v415 = v416[1];
                    v417 = v413 - (v414 + v415) + (v411 >> (v414 + v415));
                    v412 = v523;
                    v418 = *v523 & ~(-1 << v417);
                    v419 = v523[1] - (v417 & 0x1F);
                    *v523 >>= v417 & 0x1F;
                    v523[1] = v419;
                    LODWORD(v402) = v402 & ~(-1 << v415) | ((v418 | (((v402 >> v415) & ((1 << v414) - 1) | (1 << v414)) << v417)) << v415);
                  }

                  else
                  {
                    v412 = v523;
                  }

                  v420 = *(v522 + 56);
                  if (!v420)
                  {
                    goto LABEL_443;
                  }

                  goto LABEL_442;
                }

                v425 = *(v522 + 92);
                v45 = v408 >= v425;
                v426 = v408 - v425;
                if (v45)
                {
                  v428 = *(v522 + 96);
                  v427 = *(v522 + 100);
                  v429 = *(v522 + 88) - (v428 + v427) + (v426 >> (v428 + v427));
                  v412 = v523;
                  v430 = *v523 & ~(-1 << v429);
                  v431 = v523[1] - (v429 & 0x1F);
                  *v523 >>= v429 & 0x1F;
                  v523[1] = v431;
                  LODWORD(v408) = v408 & ~(-1 << v427) | ((v430 | (((v408 >> v427) & ((1 << v428) - 1) | (1 << v428)) << v429)) << v427);
                }

                else
                {
                  v412 = v523;
                }

                *(v522 + 68) = *(v522 + 80) + v408;
                v432 = v412[2];
                if (v432 > v412[3])
                {
                  v462 = v376;
                  v479 = v379;
                  v484 = v377;
                  sub_240B244C4(v412);
                  LODWORD(v379) = v479;
                  v377 = v484;
                  v376 = v462;
                  v338 = v487;
                  v337 = v488;
                  v336 = v489;
                  v335 = v490;
                }

                else
                {
                  v433 = v412[1];
                  v434 = *v412 | (*v432 << v433);
                  v412[2] = v432 + ((63 - v433) >> 3);
                  *v412 = v434;
                  v412[1] = v433 | 0x38;
                }

                v435 = *(v522 + 76);
                if (*(v522 + 16) == 1)
                {
                  v480 = v379;
                  v485 = v377;
                  v463 = v376;
                  v464 = sub_240B435F8(*(*(v522 + 8) + 24 * v435), v412);
                  LODWORD(v379) = v480;
                  v377 = v485;
                  v376 = v463;
                  v338 = v487;
                  v337 = v488;
                  v336 = v489;
                  v335 = v490;
                  v443 = v464;
                  v435 = *(v522 + 76);
                }

                else
                {
                  v436 = *(v522 + 20);
                  v437 = (v436 & 0xFFF) >> *(v522 + 36);
                  v438 = *(v522 + 40) & v436 & 0xFFFu;
                  v439 = *(*v522 + 8 * (v435 << *(v522 + 32)) + 8 * v437);
                  if (v439 <= v438)
                  {
                    v440 = *(*v522 + 8 * (v435 << *(v522 + 32)) + 8 * v437);
                  }

                  else
                  {
                    v440 = 0;
                  }

                  v441 = HIDWORD(v440);
                  v442 = HIWORD(v440);
                  if (v439 <= v438)
                  {
                    v443 = BYTE1(v439);
                  }

                  else
                  {
                    v443 = (v436 & 0xFFF) >> *(v522 + 36);
                  }

                  v444 = v438 + v441 + (v442 ^ WORD1(v439)) * (*(v522 + 20) >> 12);
                  v445 = v444 < 0x10000;
                  v446 = *v412 >> (16 * v445);
                  if (v444 < 0x10000)
                  {
                    v444 = *v412 | (v444 << 16);
                  }

                  *(v522 + 20) = v444;
                  v447 = v412[1] - 16 * v445;
                  *v412 = v446;
                  v412[1] = v447;
                }

                v448 = (*(v522 + 24) + 16 * v435);
                v449 = v448[1];
                v45 = v443 >= v449;
                v450 = v443 - v449;
                if (v45)
                {
                  v451 = *v448;
                  v454 = v448 + 2;
                  v452 = v448[2];
                  v453 = v454[1];
                  v455 = v451 - (v452 + v453) + (v450 >> (v452 + v453));
                  v456 = *v412 & ~(-1 << v455);
                  v457 = v412[1] - (v455 & 0x1F);
                  *v412 >>= v455 & 0x1F;
                  v412[1] = v457;
                  LODWORD(v443) = v443 & ~(-1 << v453) | ((v456 | (((v443 >> v453) & ((1 << v452) - 1) | (1 << v452)) << v455)) << v453);
                }

                v458 = *(v522 + 584);
                if (v443 >= v458)
                {
                  v459 = v443 - v458 + 1;
                }

                else
                {
                  v459 = *(v522 + 104 + 4 * v443);
                }

                v460 = *(v522 + 64);
                if (v459 > v460)
                {
                  v459 = *(v522 + 64);
                }

                if (v459 > 0x100000)
                {
                  *(v522 + 72) = v460 - 0x100000;
                }

                else
                {
                  *(v522 + 72) = v460 - v459;
                  if (!v459)
                  {
                    v465 = *(v522 + 68);
                    if (v465 >= 0x100000)
                    {
                      v465 = 0x100000;
                    }

                    v481 = v379;
                    v486 = v377;
                    v466 = v376;
                    bzero(*(v522 + 56), 4 * v465);
                    LODWORD(v379) = v481;
                    v377 = v486;
                    v376 = v466;
                    v338 = v487;
                    v337 = v488;
                    v336 = v489;
                    v335 = v490;
                  }
                }

                v391 = *(v522 + 68);
                if (v391 < *(v522 + 80))
                {
                  LODWORD(v402) = 0;
                  goto LABEL_443;
                }
              }

              v420 = *(v522 + 56);
              v461 = *(v522 + 72);
              *(v522 + 72) = v461 + 1;
              LODWORD(v402) = *(v420 + 4 * (*&v461 & 0xFFFFFLL));
              *(v522 + 68) = v391 - 1;
LABEL_442:
              v421 = *(v522 + 64);
              *(v522 + 64) = v421 + 1;
              *(v420 + 4 * (*&v421 & 0xFFFFFLL)) = v402;
LABEL_443:
              *v339 = v379 + v377 + ((v402 >> 1) ^ -(v402 & 1)) * v376;
              ++v333;
              v331 = v16[5];
              v332 = v331 - 2;
              if (v333 >= v331 - 2)
              {
                goto LABEL_487;
              }
            }
          }

          v334 = v522;
          v412 = v523;
          v289 = v491;
LABEL_487:
          if (v332 < v331)
          {
            v469 = (v497 + v516 * v287 + 4 * v332);
            do
            {
              sub_240B62E30(&v538, v527, v331, v469, v506, v332, v287, &v547, &v531);
              v470 = sub_240B24020(v334, v538, v412);
              *v469++ = DWORD2(v538) + ((v470 >> 1) ^ -(v470 & 1)) * HIDWORD(v539);
              ++v332;
              v331 = v16[5];
            }

            while (v332 < v331);
          }
        }

        ++v287;
        v290 = v502;
        v291 = v520;
        if (v287 >= v16[6])
        {
          goto LABEL_491;
        }
      }
    }

    LODWORD(v531) = 0;
    if (sub_240B6297C(v14, v24, &v531, v16[6] * v16[5]))
    {
      v128 = v16[6];
      if (v128)
      {
        v129 = 0;
        v130 = v25 + (-(v531 & 1) ^ (v531 >> 1)) * v23;
        v131 = v16[2];
        v132 = v16[5];
        v133 = vdupq_n_s64(v132 - 1);
        v134 = v16[3] + 8;
        do
        {
          if (v132 >= 1)
          {
            v135 = 0;
            v136 = v134;
            do
            {
              v137 = vdupq_n_s64(v135);
              v138 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(v137, xmmword_240C111D0)));
              if (vuzp1_s16(v138, *v133.i8).u8[0])
              {
                *(v136 - 2) = v130;
              }

              if (vuzp1_s16(v138, *&v133).i8[2])
              {
                *(v136 - 1) = v130;
              }

              if (vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v133, vorrq_s8(v137, xmmword_240C111C0)))).i32[1])
              {
                *v136 = v130;
                v136[1] = v130;
              }

              v135 += 4;
              v136 += 4;
            }

            while (((v132 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v135);
          }

          ++v129;
          v134 += v131;
        }

        while (v129 != v128);
      }

      goto LABEL_505;
    }

    v157 = v16[6];
    if (v23 != 1 || v25)
    {
      if (v157)
      {
        v471 = 0;
        v472 = v16[5];
        do
        {
          if (v472)
          {
            v473 = v14;
            v474 = 0;
            v475 = v16[3] + v16[2] * v471;
            do
            {
              v476 = sub_240B24020(v473, v517, v523);
              *(v475 + 4 * v474++) = v25 + v23 * ((v476 >> 1) ^ -(v476 & 1));
              v472 = v16[5];
            }

            while (v474 < v472);
            v157 = v16[6];
            v14 = v473;
          }

          ++v471;
        }

        while (v471 < v157);
      }

      goto LABEL_505;
    }

    v158 = v517;
    if (!v157)
    {
      goto LABEL_505;
    }

    v159 = 0;
    v160 = v16[5];
LABEL_158:
    if (!v160)
    {
      goto LABEL_217;
    }

    v161 = 0;
    v162 = v16[3] + v16[2] * v159;
    while (1)
    {
      v163 = *(v14 + 68);
      if (!v163)
      {
        v164 = v523[2];
        if (v164 > v523[3])
        {
          sub_240B244C4(v523);
          v158 = v517;
        }

        else
        {
          v165 = v523[1];
          v166 = *v523 | (*v164 << v165);
          v523[2] = v164 + ((63 - v165) >> 3);
          *v523 = v166;
          v523[1] = v165 | 0x38;
        }

        if (*(v14 + 16) == 1)
        {
          v193 = sub_240B435F8(*(*(v14 + 8) + 24 * v158), v523);
          v158 = v517;
          v174 = v193;
        }

        else
        {
          v167 = *(v14 + 20);
          v168 = (v167 & 0xFFF) >> *(v14 + 36);
          v169 = *(v14 + 40) & v167 & 0xFFFu;
          v170 = *(*v14 + 8 * (v158 << *(v14 + 32)) + 8 * v168);
          if (v170 <= v169)
          {
            v171 = *(*v14 + 8 * (v158 << *(v14 + 32)) + 8 * v168);
          }

          else
          {
            v171 = 0;
          }

          v172 = HIDWORD(v171);
          v173 = HIWORD(v171);
          if (v170 <= v169)
          {
            v174 = BYTE1(v170);
          }

          else
          {
            v174 = (v167 & 0xFFF) >> *(v14 + 36);
          }

          v175 = v169 + v172 + (v173 ^ WORD1(v170)) * (*(v14 + 20) >> 12);
          v176 = v175 < 0x10000;
          v177 = *v523 >> (16 * v176);
          if (v175 < 0x10000)
          {
            v175 = *v523 | (v175 << 16);
          }

          *(v14 + 20) = v175;
          v178 = v523[1] - 16 * v176;
          *v523 = v177;
          v523[1] = v178;
        }

        v179 = *(v14 + 84);
        v45 = v174 >= v179;
        v180 = v174 - v179;
        if (!v45)
        {
          v181 = (*(v14 + 24) + 16 * v158);
          v182 = v181[1];
          v45 = v174 >= v182;
          v183 = v174 - v182;
          if (v45)
          {
            v184 = *v181;
            v187 = v181 + 2;
            v185 = v181[2];
            v186 = v187[1];
            v188 = v184 - (v185 + v186) + (v183 >> (v185 + v186));
            v189 = *v523 & ~(-1 << v188);
            v190 = v523[1] - (v188 & 0x1F);
            *v523 >>= v188 & 0x1F;
            v523[1] = v190;
            LODWORD(v174) = v174 & ~(-1 << v186) | ((v189 | (((v174 >> v186) & ((1 << v185) - 1) | (1 << v185)) << v188)) << v186);
          }

          v191 = *(v14 + 56);
          if (!v191)
          {
            goto LABEL_179;
          }

          goto LABEL_178;
        }

        v194 = *(v14 + 92);
        v45 = v180 >= v194;
        v195 = v180 - v194;
        if (v45)
        {
          v197 = *(v14 + 96);
          v196 = *(v14 + 100);
          v198 = *(v14 + 88) - (v197 + v196) + (v195 >> (v197 + v196));
          v199 = *v523 & ~(-1 << v198);
          v200 = v523[1] - (v198 & 0x1F);
          *v523 >>= v198 & 0x1F;
          v523[1] = v200;
          LODWORD(v180) = v180 & ~(-1 << v196) | ((v199 | (((v180 >> v196) & ((1 << v197) - 1) | (1 << v197)) << v198)) << v196);
        }

        *(v14 + 68) = *(v14 + 80) + v180;
        v201 = v523[2];
        if (v201 > v523[3])
        {
          sub_240B244C4(v523);
          v158 = v517;
        }

        else
        {
          v202 = v523[1];
          v203 = *v523 | (*v201 << v202);
          v523[2] = v201 + ((63 - v202) >> 3);
          *v523 = v203;
          v523[1] = v202 | 0x38;
        }

        v204 = *(v14 + 76);
        if (*(v14 + 16) == 1)
        {
          v232 = sub_240B435F8(*(*(v14 + 8) + 24 * v204), v523);
          v158 = v517;
          v212 = v232;
          v204 = *(v14 + 76);
        }

        else
        {
          v205 = *(v14 + 20);
          v206 = (v205 & 0xFFF) >> *(v14 + 36);
          v207 = *(v14 + 40) & v205 & 0xFFFu;
          v208 = *(*v14 + 8 * (v204 << *(v14 + 32)) + 8 * v206);
          if (v208 <= v207)
          {
            v209 = *(*v14 + 8 * (v204 << *(v14 + 32)) + 8 * v206);
          }

          else
          {
            v209 = 0;
          }

          v210 = HIDWORD(v209);
          v211 = HIWORD(v209);
          if (v208 <= v207)
          {
            v212 = BYTE1(v208);
          }

          else
          {
            v212 = (v205 & 0xFFF) >> *(v14 + 36);
          }

          v213 = v207 + v210 + (v211 ^ WORD1(v208)) * (*(v14 + 20) >> 12);
          v214 = v213 < 0x10000;
          v215 = *v523 >> (16 * v214);
          if (v213 < 0x10000)
          {
            v213 = *v523 | (v213 << 16);
          }

          *(v14 + 20) = v213;
          v216 = v523[1] - 16 * v214;
          *v523 = v215;
          v523[1] = v216;
        }

        v217 = (*(v14 + 24) + 16 * v204);
        v218 = v217[1];
        v45 = v212 >= v218;
        v219 = v212 - v218;
        if (v45)
        {
          v220 = *v217;
          v223 = v217 + 2;
          v221 = v217[2];
          v222 = v223[1];
          v224 = v220 - (v221 + v222) + (v219 >> (v221 + v222));
          v225 = *v523 & ~(-1 << v224);
          v226 = v523[1] - (v224 & 0x1F);
          *v523 >>= v224 & 0x1F;
          v523[1] = v226;
          LODWORD(v212) = v212 & ~(-1 << v222) | ((v225 | (((v212 >> v222) & ((1 << v221) - 1) | (1 << v221)) << v224)) << v222);
        }

        v227 = *(v14 + 584);
        if (v212 >= v227)
        {
          v228 = v212 - v227 + 1;
        }

        else
        {
          v228 = *(v14 + 104 + 4 * v212);
        }

        v229 = *(v14 + 64);
        if (v228 > v229)
        {
          v228 = *(v14 + 64);
        }

        if (v228 > 0x100000)
        {
          *(v14 + 72) = v229 - 0x100000;
        }

        else
        {
          *(v14 + 72) = v229 - v228;
          if (!v228)
          {
            v231 = *(v14 + 68);
            if (v231 >= 0x100000)
            {
              v231 = 0x100000;
            }

            bzero(*(v14 + 56), 4 * v231);
            v158 = v517;
          }
        }

        v163 = *(v14 + 68);
        if (v163 < *(v14 + 80))
        {
          LODWORD(v174) = 0;
          goto LABEL_179;
        }
      }

      v191 = *(v14 + 56);
      v230 = *(v14 + 72);
      *(v14 + 72) = v230 + 1;
      LODWORD(v174) = *(v191 + 4 * (*&v230 & 0xFFFFFLL));
      *(v14 + 68) = v163 - 1;
LABEL_178:
      v192 = *(v14 + 64);
      *(v14 + 64) = v192 + 1;
      *(v191 + 4 * (*&v192 & 0xFFFFFLL)) = v174;
LABEL_179:
      *(v162 + 4 * v161++) = -(v174 & 1) ^ (v174 >> 1);
      v160 = v16[5];
      if (v161 >= v160)
      {
        v157 = v16[6];
LABEL_217:
        if (++v159 >= v157)
        {
LABEL_505:
          v94 = 0;
          goto LABEL_506;
        }

        goto LABEL_158;
      }
    }
  }

  return sub_240B5F4F0(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}