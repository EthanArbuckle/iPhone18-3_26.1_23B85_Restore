uint64_t AddPes(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, __int16 a8, char a9, void *a10)
{
  v18 = malloc_type_calloc(1uLL, 0x368uLL, 0x10B00407B0020A8uLL);
  if (!v18)
  {
    AddPes_cold_1(&v25);
    return v25;
  }

  v19 = v18;
  v18[120] = 0;
  *v18 = a2;
  *(v18 + 1) = a1;
  *(v18 + 16) = a7;
  if (!a5)
  {
    a6 = *(a1 + 184);
    *(a1 + 184) = a6 + 1;
  }

  *(v18 + 15) = a6;
  *(v18 + 224) = a8;
  *(v18 + 102) = -1;
  AddPesToList(v18, a2, a1);
  *(v19 + 91) = 0;
  *(v19 + 92) = v19 + 728;
  *(v19 + 98) = 0;
  *(v19 + 99) = v19 + 784;
  *(v19 + 65) = 0;
  *(v19 + 66) = v19 + 520;
  *(v19 + 163) = 2;
  if (a3)
  {
    goto LABEL_5;
  }

  *(v19 + 14) = a4;
  if (a4 <= 1748121139)
  {
    if (a4 <= 1700880738)
    {
      if (a4 > 1635017570)
      {
        if (a4 == 1635017571)
        {
          goto LABEL_42;
        }

        v21 = 1685353248;
        goto LABEL_27;
      }

      if (a4 == 1633891104)
      {
        goto LABEL_32;
      }

      if (a4 != 1633973363)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (a4 > 1700886114)
      {
        if (a4 == 1700886115)
        {
          goto LABEL_40;
        }

        if (a4 == 1700998451)
        {
LABEL_32:
          v23 = 2048;
LABEL_41:
          *(v19 + 80) = v23;
          goto LABEL_42;
        }

        v22 = 1701143347;
LABEL_31:
        if (a4 != v22)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      if (a4 != 1700880739)
      {
        v22 = 1700881203;
        goto LABEL_31;
      }
    }

LABEL_33:
    v23 = 1024;
    goto LABEL_41;
  }

  if (a4 <= 1836476771)
  {
    if (a4 <= 1819304812)
    {
      if (a4 != 1748121140)
      {
        if (a4 != 1768174368)
        {
          goto LABEL_5;
        }

        goto LABEL_42;
      }

      goto LABEL_40;
    }

    if (a4 != 1819304813)
    {
      if (a4 != 1835103588)
      {
        v21 = 1836070006;
LABEL_27:
        if (a4 != v21)
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }

      goto LABEL_33;
    }

LABEL_39:
    v23 = 4096;
    goto LABEL_41;
  }

  if (a4 <= 1886614577)
  {
    if (a4 != 1836476772)
    {
      if (a4 == 1886612592)
      {
        goto LABEL_39;
      }

LABEL_5:
      result = 0;
      *a10 = v19;
      v19[657] = 1;
      return result;
    }

LABEL_40:
    v23 = 0x4000;
    goto LABEL_41;
  }

  if (a4 != 1886614578)
  {
    if (a4 == 1970170734)
    {
      goto LABEL_42;
    }

    v21 = 2053207651;
    goto LABEL_27;
  }

  *(v19 + 80) = 1024;
  v19[121] = 1;
LABEL_42:
  *a10 = v19;
  v19[657] = 1;
  if (a9)
  {
    v24 = *(a1 + 56);
    if (v24)
    {
      v24(*a1, *(a1 + 72), *(a2 + 40), *(v19 + 15), a4);
    }

    return 0;
  }

  else
  {
    result = 0;
    v19[657] = 0;
  }

  return result;
}

uint64_t FrameQueueEntryInit(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = a1 + 64;
  *(result + 8) = result;
  return result;
}

uint64_t ReadTimestampFromPesHeader(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  if ((a2[6] & 0xC0) != 0x80)
  {
    v11 = 6;
    if (a4 >= 7)
    {
      while (1)
      {
        v12 = a2[v11];
        if (v12 != 255)
        {
          break;
        }

        if (a4 == ++v11)
        {
          v11 = a4;
          goto LABEL_16;
        }
      }

      if ((v12 & 0xC0) == 0x40)
      {
        v11 += 2;
      }
    }

LABEL_16:
    if (v11 + 10 > a4 || (v13 = &a2[v11], (a2[v11] & 0xF0) != 0x30))
    {
      if (v11 + 5 > a4 || a2[v11] < 0x20u)
      {
        goto LABEL_20;
      }

      if (!ReadPTSorDTSWithVerify(&a2[v11], a3, 33))
      {
        ReadTimestampFromPesHeader_cold_3(&v15);
        return v15;
      }

      result = 0;
      v14 = 1;
LABEL_29:
      *(a3 + 25) = v14;
      return result;
    }

    if (!ReadPTSorDTSWithVerify(&a2[v11], a3, 49))
    {
      ReadTimestampFromPesHeader_cold_2(&v15);
      return v15;
    }

    if (!ReadPTSorDTSWithVerify(v13 + 5, (a3 + 8), 17))
    {
      ReadTimestampFromPesHeader_cold_1(&v15);
      return v15;
    }

LABEL_26:
    result = 0;
    v14 = 257;
    goto LABEL_29;
  }

  *(a3 + 27) = 0;
  v9 = a2[7];
  if (a4 >= 0x13 && v9 >= 0xC0)
  {
    if (!ReadPTSorDTSWithVerify(a2 + 9, a3, 49))
    {
      ReadTimestampFromPesHeader_cold_6(&v15);
      return v15;
    }

    if (!ReadPTSorDTSWithVerify(a2 + 14, (a3 + 8), 17))
    {
      ReadTimestampFromPesHeader_cold_5(&v15);
      return v15;
    }

    goto LABEL_26;
  }

  if (a4 < 0xE || (v9 & 0x80) == 0)
  {
LABEL_20:
    result = 0;
    *(a3 + 25) = 0;
    return result;
  }

  if (!ReadPTSorDTSWithVerify(a2 + 9, a3, 33))
  {
    ReadTimestampFromPesHeader_cold_4(&v15);
    return v15;
  }

  *(a3 + 25) = 1;
  if (a6 == 192 || a6 == 1)
  {
    result = 0;
    *(a3 + 26) = 257;
    *(a3 + 8) = *a3;
  }

  else
  {
    result = 0;
    *(a3 + 26) = 0;
  }

  return result;
}

uint64_t ProcessPesData(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, char *a4, unint64_t a5, int a6, uint64_t a7, size_t *a8, _BYTE *a9)
{
  *a9 = 0;
  *a8 = 0;
  if (!a5)
  {
    return 0;
  }

  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  length = 0;
  returnedPointerOut = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  if (a6)
  {
    *(a1 + 122) = 1;
    *(a1 + 128) = a7;
    TimestampFromPesHeader = CheckPesHeaderLength(a2, a3, a4, a5, &length, &v41, a7, a8);
    if (TimestampFromPesHeader)
    {
      goto LABEL_72;
    }

    if (!v41)
    {
      v19 = CopyBytesAtOffset(v13, v12, v11, (a1 + 152), v10);
      if (!v19)
      {
        v38 = length;
        *(a1 + 424) = v10;
        *(a1 + 432) = v38;
        goto LABEL_54;
      }

      goto LABEL_60;
    }

    if (v13)
    {
      v30 = length;
      TimestampFromPesHeader = CMBlockBufferAccessDataBytes(v13, v12, length, (a1 + 152), &returnedPointerOut);
      if (TimestampFromPesHeader)
      {
        goto LABEL_72;
      }

      v12 += v30;
      v29 = returnedPointerOut;
    }

    else
    {
      returnedPointerOut = v11;
      v30 = length;
      v29 = v11;
      v11 += length;
    }

    v10 -= v30;
    *a8 = v30;
LABEL_32:
    BYTE8(v43) = 1;
    *&v43 = *(a1 + 128);
    if (*v29 || v29[1] || v29[2] != 1)
    {
      ProcessPesData_cold_3(&v46);
      goto LABEL_59;
    }

    v31 = __rev16(*(v29 + 2));
    *(a1 + 136) = v31;
    *(a1 + 144) = 0;
    *(a1 + 123) = v31 == 0;
    if (v31)
    {
      v32 = v31 >= v30 - 6;
      v33 = v31 - (v30 - 6);
      if (!v32)
      {
        ProcessPesData_cold_1(&v46);
LABEL_59:
        v19 = v46;
LABEL_60:
        PesErrorHandling(a1, v19);
        goto LABEL_54;
      }

      *(a1 + 136) = v33;
    }

    else if (!*(a1 + 120))
    {
      ProcessPesData_cold_2(&v46);
      goto LABEL_59;
    }

    TimestampFromPesHeader = ReadTimestampFromPesHeader(0, v29, &v42, v30, 0, *(*(a1 + 8) + 48));
    if (!TimestampFromPesHeader)
    {
LABEL_41:
      if (*(a1 + 123))
      {
        if (!v10)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v10 >= *(a1 + 136) - *(a1 + 144))
        {
          v10 = *(a1 + 136) - *(a1 + 144);
        }

        if (!v10)
        {
          goto LABEL_49;
        }
      }

      v34 = *(a1 + 840);
      if (v34)
      {
        v19 = v34(a1, v13, v12, v11, v10, &v42);
        goto LABEL_50;
      }

LABEL_49:
      v19 = 0;
LABEL_50:
      v35 = *(a1 + 136);
      v36 = *(a1 + 144) + v10;
      *(a1 + 144) = v36;
      if (v36 >= v35 && !*(a1 + 123))
      {
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *a9 = 1;
      }

      v10 += *a8;
      goto LABEL_54;
    }

LABEL_72:
    v19 = TimestampFromPesHeader;
    goto LABEL_60;
  }

  v15 = *(a1 + 424);
  if (!v15)
  {
    if (*(a1 + 122))
    {
      BYTE8(v43) = 0;
      goto LABEL_41;
    }

    goto LABEL_66;
  }

  v16 = *(a1 + 432);
  if (!v16)
  {
    v20 = 25;
    if (v15 < 9)
    {
      v20 = 9;
    }

    v21 = v20 - v15;
    if (v20 - v15 >= a5)
    {
      v22 = a5;
    }

    else
    {
      v22 = v20 - v15;
    }

    TimestampFromPesHeader = CopyBytesAtOffset(a2, a3, a4, (a1 + 152 + v15), v22);
    if (TimestampFromPesHeader)
    {
      goto LABEL_72;
    }

    TimestampFromPesHeader = CheckPesHeaderLength(0, 0, a1 + 152, *(a1 + 424) + v22, (a1 + 432), &v41, v24, v25);
    if (TimestampFromPesHeader)
    {
      goto LABEL_72;
    }

    if (v41)
    {
      v26 = *(a1 + 432) - *(a1 + 424);
      v13 = a2;
      if (a2)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(a1 + 432) - *(a1 + 424);
      }

      v11 = &a4[v27];
      if (a2)
      {
        v28 = *(a1 + 432) - *(a1 + 424);
      }

      else
      {
        v28 = 0;
      }

      v12 += v28;
      v10 -= v26;
      *a8 += v26;
      goto LABEL_31;
    }

    *(a1 + 424) += v22;
    if (v21 < v10)
    {
      v19 = ProcessPesData(a1);
      v10 = *a8 + v22;
LABEL_54:
      *a8 = v10;
      return v19;
    }

LABEL_66:
    v19 = 0;
    goto LABEL_54;
  }

  v17 = v16 - v15;
  if (!v17)
  {
LABEL_31:
    v29 = (a1 + 152);
    v30 = *(a1 + 432);
    length = v30;
    returnedPointerOut = (a1 + 152);
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
    goto LABEL_32;
  }

  if (v17 >= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  CopyBytesAtOffset(a2, a3, a4, (a1 + v15 + 152), v18);
  *(a1 + 424) += v18;
  *a8 = v18;
  v10 -= v18;
  if (v10)
  {
    if (v13)
    {
      v12 += v18;
    }

    else
    {
      v11 += v18;
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t CopyBytesAtOffset(OpaqueCMBlockBuffer *a1, size_t a2, void *__src, void *__dst, size_t __n)
{
  if (a1)
  {

    return CMBlockBufferCopyDataBytes(a1, a2, __n, __dst);
  }

  else
  {
    memcpy(__dst, __src, __n);
    return 0;
  }
}

void *PesErrorHandling(uint64_t a1, uint64_t a2)
{
  FigMPEG2VideoFrameFlush(a1);
  result = PesCleanOutData(a1);
  if (a2)
  {
    v5 = *(a1 + 8);
    v6 = v5[8];
    if (v6)
    {
      v7 = *v5;
      v8 = v5[9];
      v9 = *(*a1 + 40);
      v10 = *(a1 + 60);

      return v6(v7, v8, v9, v10, a2);
    }
  }

  return result;
}

void PesPacketListClean(uint64_t a1)
{
  *(a1 + 8) = 0;
  for (i = *a1; *a1; i = *a1)
  {
    v3 = i[1];
    *a1 = *i;
    if (v3)
    {
      CFRelease(v3);
    }

    free(i);
  }
}

__n128 FrameQueueMove(uint64_t a1, uint64_t a2)
{
  PesFrameHeaderDestroy((a1 + 88));
  ClosedCaptionQueueClean((a1 + 64));
  for (i = *(a2 + 64); i; i = *(a2 + 64))
  {
    v5 = *i;
    v6 = i[1];
    v7 = (*i + 8);
    if (!*i)
    {
      v7 = (a2 + 72);
    }

    *v7 = v6;
    *v6 = v5;
    v8 = *(a1 + 72);
    *i = 0;
    i[1] = v8;
    *v8 = i;
    *(a1 + 72) = i;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v9 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v9;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 88);
  v11 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v11;
  *(a1 + 88) = result;
  *(a1 + 128) = *(a2 + 128);
  v12 = *(a2 + 132);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 132) = v12;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 148) = *(a2 + 148);
  *(a2 + 56) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  return result;
}

void PesFrameHeaderDestroy(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    free(v4);
    a1[4] = 0;
  }
}

void ClosedCaptionQueueClean(void **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      v5 = *i;
    }

    else
    {
      v5 = a1;
    }

    v5[1] = v4;
    *v4 = v3;
    v6 = i[2];
    if (v6)
    {
      CFRelease(v6);
    }

    free(i);
  }
}

void FrameQueueEntryClean(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 56) = 0;
  ClosedCaptionQueueClean((a1 + 64));
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 128) = 0;
  *(a1 + 146) = 0;
  *(a1 + 148) = 0;
}

void FrameQueueEntryDestroy(uint64_t a1)
{
  FrameQueueEntryClean(a1);
  PesFrameHeaderDestroy((a1 + 88));
  if (*(a1 + 145))
  {

    free(a1);
  }
}

void *FrameQueueClean(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = *result;
      v4 = result[1];
      if (*result)
      {
        v5 = *result;
      }

      else
      {
        v5 = a1;
      }

      v5[1] = v4;
      *v4 = v3;
      FrameQueueEntryDestroy(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

uint64_t CloseCaptionQueueAdd(uint64_t a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040A8488062uLL);
  if (!v4)
  {
    return 4294954510;
  }

  v5 = v4;
  if (a2)
  {
    v6 = CFRetain(a2);
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  v5[2] = v6;
  v8 = *(a1 + 8);
  *v5 = 0;
  v5[1] = v8;
  *v8 = v5;
  *(a1 + 8) = v5;
  return result;
}

void PesCleanAfterFrameEmit(uint64_t a1)
{
  FrameQueueEntryClean(a1 + 456);
  v2 = *(a1 + 608);
  if (v2)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E488], v2);
    *(a1 + 608) = 0;
  }

  *(a1 + 656) = 0;
  *(a1 + 616) = 0;
  *(a1 + 632) = 0;
  *(a1 + 624) = 0;
  v3 = *(a1 + 648);
  if (v3 > *(a1 + 652))
  {
    if (v3 >= 0x18)
    {
      v3 = 24;
    }

    *(a1 + 652) = v3;
  }

  *(a1 + 648) = 0;
}

void *PesCleanOutData(uint64_t a1)
{
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  FigMPEG2VideoFrameDiscard(a1);
  PesCleanAfterFrameEmit(a1);
  result = FrameQueueClean((a1 + 728));
  *(a1 + 744) = 0;
  *(a1 + 451) = 0;
  *(a1 + 122) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  v3 = *(a1 + 848);
  if (v3)
  {
    result = v3(a1);
  }

  *(a1 + 816) = -1;
  return result;
}

void *PesReinitialize(uint64_t a1)
{
  result = PesCleanOutData(a1);
  *(a1 + 658) = 0;
  *(a1 + 704) = 0;
  return result;
}

uint64_t FindPesFromStreamID(uint64_t a1, int a2)
{
  for (result = *(a1 + 24); result; result = *(result + 32))
  {
    if (*(result + 64) == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t PesCreateBlockBufferFromFrameMemory(uint64_t a1)
{
  if (*(a1 + 512))
  {
    return 0;
  }

  v3 = a1 + 608;
  v4 = *(a1 + 608);
  if (v4)
  {
    v5 = *MEMORY[0x1E695E488];
    v1 = CMBlockBufferCreateWithMemoryBlock(*(*(a1 + 8) + 40), v4, *(a1 + 632), *MEMORY[0x1E695E488], 0, 0, *(a1 + 616), 0, (a1 + 512));
    if (v1)
    {
      CFAllocatorDeallocate(v5, *v3);
    }
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 656) = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 0;
  return v1;
}

uint64_t PesAddMemoryToFrameMemory(uint64_t a1, const void *a2, size_t a3, size_t a4, size_t *a5, char *a6)
{
  v9 = a3;
  if (*(a1 + 512))
  {

    return PesAddMemoryToFrameBlockBuffer(a1, a2, a3, a4, a5, a6);
  }

  if (*(a1 + 656))
  {
    v13 = *(a1 + 624);
  }

  else
  {
    *(a1 + 656) = 1;
    *(a1 + 624) = a4;
    v13 = a4;
  }

  if (!*(a1 + 608))
  {
    if (v13)
    {
      if (*(a1 + 119))
      {
        v18 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v18 = v13;
      }
    }

    else
    {
      v18 = *(a1 + 640);
      if (v18 < a3)
      {
        v18 = (a3 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
        *(a1 + 640) = v18;
        if (v18 > *(*(a1 + 8) + 104))
        {
          goto LABEL_17;
        }
      }
    }

    v20 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E488], v18, 0x100004077774924, 0);
    *(a1 + 608) = v20;
    if (!v20)
    {
LABEL_41:
      PesAddMemoryToFrameMemory_cold_1(a1, &v24);
      return v24;
    }

    *(a1 + 632) = v18;
    *(a1 + 616) = 0;
    v21 = *(a1 + 624);
    if (v21 >= v9)
    {
      v22 = v9;
    }

    else
    {
      v22 = *(a1 + 624);
    }

    if (v21)
    {
      v9 = v22;
    }

    goto LABEL_31;
  }

  v14 = *(a1 + 616);
  v15 = v13 - v14;
  if (v13 - v14 >= a3)
  {
    v15 = a3;
  }

  if (v13)
  {
    v9 = v15;
  }

  v16 = v9 + v14;
  if (*(a1 + 119))
  {
    v16 = (v9 + v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v16 <= *(a1 + 632))
  {
    goto LABEL_31;
  }

  v17 = (v16 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
  *(a1 + 640) = v17;
  if (v17 <= *(*(a1 + 8) + 104))
  {
    v19 = MEMORY[0x19A8CC770](*MEMORY[0x1E695E488]);
    *(a1 + 608) = v19;
    *(a1 + 632) = *(a1 + 640);
    goto LABEL_32;
  }

LABEL_17:
  PesErrorHandling(a1, 4294954325);
  v9 = 0;
LABEL_31:
  v19 = *(a1 + 608);
LABEL_32:
  if (!v19)
  {
    goto LABEL_41;
  }

  if (a2)
  {
    memcpy((v19 + *(a1 + 616)), a2, v9);
  }

  *(a1 + 616) += v9;
  *a5 = v9;
  if (a4 && *(a1 + 616) >= a4)
  {
    result = PesCreateBlockBufferFromFrameMemory(a1);
    v23 = 1;
  }

  else
  {
    v23 = 0;
    result = 0;
  }

  *a6 = v23;
  return result;
}

uint64_t PesAddMemoryToFrameBlockBuffer(uint64_t a1, const void *a2, size_t a3, size_t a4, size_t *a5, _BYTE *a6)
{
  if (!a3)
  {
    PesAddMemoryToFrameBlockBuffer_cold_3(&v21);
    return v21;
  }

  if (!*(a1 + 116) || a3 <= a4 && !*(a1 + 119) && ((a2 & 3) == 0 || !*(a1 + 117)) && (*(a1 + 118) ? (v10 = (a2 & 0xF) == 0) : (v10 = 1), v10))
  {
    if (!*(a1 + 608))
    {
      if (*(a1 + 656))
      {
        a4 = *(a1 + 624);
        if (!a4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        *(a1 + 616) = 0;
        *(a1 + 624) = a4;
        *(a1 + 656) = 1;
        if (!a4)
        {
          goto LABEL_20;
        }
      }

      if (a4 - *(a1 + 616) < a3)
      {
        a3 = a4 - *(a1 + 616);
      }

LABEL_20:
      *a5 = a3;
      v12 = *MEMORY[0x1E695E488];
      v13 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E488], a3, 0x100004077774924, 0);
      v14 = v13;
      if (a2)
      {
        if (!v13)
        {
          PesAddMemoryToFrameBlockBuffer_cold_1(&v19);
          return v19;
        }

        memcpy(v13, a2, *a5);
      }

      else
      {
        bzero(v13, *a5);
        if (!v14)
        {
          PesAddMemoryToFrameBlockBuffer_cold_2(&v20);
          return v20;
        }
      }

      v15 = *(a1 + 512);
      if (!v15)
      {
        Empty = CMBlockBufferCreateEmpty(*(*(a1 + 8) + 40), *(a1 + 652), 0, (a1 + 512));
        if (Empty)
        {
LABEL_34:
          v18 = Empty;
          CFAllocatorDeallocate(v12, v14);
          return v18;
        }

        v15 = *(a1 + 512);
      }

      Empty = CMBlockBufferAppendMemoryBlock(v15, v14, *a5, v12, 0, 0, *a5, 0);
      if (!Empty)
      {
        ++*(a1 + 648);
        v17 = *(a1 + 616) + *a5;
        *(a1 + 616) = v17;
        v18 = 0;
        if (*(a1 + 624) - 1 < v17)
        {
          *a6 = 1;
        }

        return v18;
      }

      goto LABEL_34;
    }
  }

  return PesAddMemoryToFrameMemory();
}

void *PesFrameHeadersInit(uint64_t a1, size_t a2)
{
  v4 = 8 * a2;
  *(a1 + 16) = malloc_type_realloc(*(a1 + 16), 8 * a2, 0x100004000313F17uLL);
  *(a1 + 24) = malloc_type_realloc(*(a1 + 24), v4, 0x100004000313F17uLL);
  result = malloc_type_realloc(*(a1 + 32), a2, 0x100004077774924uLL);
  *(a1 + 32) = result;
  v6 = *a1;
  if (*a1 >= a2)
  {
    v6 = a2;
  }

  *a1 = v6;
  *(a1 + 8) = a2;
  return result;
}

BOOL PesFrameHeaderAddOffset(_BOOL8 result, uint64_t a2, char a3)
{
  if (result)
  {
    v5 = result;
    result = PesFrameHeaderCheckSize(result, 1uLL);
    if (result)
    {
      *(v5[2] + 8 * *v5) = a2;
      *(v5[4] + *v5) = a3;
      v6 = v5[3];
      *(v6 + 8 * *v5) = 0;
      if (*v5)
      {
        *(v6 + 8 * *v5 - 8) = a2 - *(v5[2] + 8 * *v5 - 8);
        v7 = *v5 + 1;
      }

      else
      {
        v7 = 1;
      }

      *v5 = v7;
    }
  }

  return result;
}

BOOL PesFrameHeaderCheckSize(void *a1, unint64_t a2)
{
  if (a1[2] && a1[3] && a1[4] && a1[1] > *a1 + a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = 8;
  if (a2 < 8)
  {
    v4 = a2;
  }

  if (__CFADD__(v3, a2))
  {
    v4 = 0;
  }

  PesFrameHeadersInit(a1, v4 + v3);
  return a1[2] && a1[3] && a1[4];
}

BOOL PesFrameHeaderAppendList(void *a1, unint64_t *a2, uint64_t a3)
{
  result = PesFrameHeaderCheckSize(a1, *a2);
  if (result && *a2)
  {
    v7 = 0;
    do
    {
      result = PesFrameHeaderAddOffset(a1, *(a2[2] + 8 * v7) + a3, *(a2[4] + v7));
      ++v7;
    }

    while (v7 < *a2);
  }

  return result;
}

uint64_t FigMPEG2ParserSetAudioCharacteristics(uint64_t result, int a2)
{
  if (*(result + 658))
  {
    v2 = *(result + 776);
    if (v2)
    {
      *(result + 680) += 90000 * v2 / *(result + 768);
      *(result + 776) = 0;
    }
  }

  *(result + 768) = a2;
  return result;
}

uint64_t GetMinimumPTSFromAdjustmentQueue(uint64_t a1)
{
  v1 = *(a1 + 728);
  if (*(a1 + 768))
  {
    return v1[4];
  }

  v4 = v1[3];
  result = v1[4];
  v5 = v1 + 3;
  if (result != v4)
  {
    v6 = *v1;
    if (v6)
    {
      v9 = *(v6 + 24);
      v8 = (v6 + 24);
      v7 = v9;
      v10 = v9 ^ v4;
      v11 = v4 + 0x200000000;
      if ((v4 & 0x100000000) != 0)
      {
        v11 = v4 - 0x200000000;
      }

      if ((v10 & 0x100000000) != 0)
      {
        v4 = v11;
      }

      if (v4 - v7 <= 0)
      {
        v12 = v5;
      }

      else
      {
        v12 = v8;
      }

      return *v12;
    }

    else
    {
      v13 = 90000 * *(a1 + 808) / *(a1 + 804) + result;
      v14 = v13 & 0x1FFFFFFFFLL;
      v15 = v13 ^ v4;
      v16 = v4 + 0x200000000;
      if ((v4 & 0x100000000) != 0)
      {
        v16 = v4 - 0x200000000;
      }

      if ((v15 & 0x100000000) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = v4;
      }

      if (v17 - v14 <= 0)
      {
        return v4;
      }

      else
      {
        return v14;
      }
    }
  }

  return result;
}

uint64_t FigMPEG2MoveAdjustmentQueue(uint64_t result, uint64_t a2)
{
  v2 = *(result + 728);
  if (v2)
  {
    *(v2 + 80) |= 1u;
    **(a2 + 8) = v2;
    *(*(result + 728) + 8) = *(a2 + 8);
    *(a2 + 8) = *(result + 736);
    *(result + 728) = 0;
    *(result + 736) = result + 728;
  }

  *(result + 744) = 0;
  *(result + 658) = 0;
  *(result + 776) = 0;
  *(result + 800) = 0;
  return result;
}

uint64_t FigMPEG2ParseFromQueue(uint64_t **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (1)
  {
    v3 = *v1;
    v4 = v1[1];
    v5 = *v1 ? *v1 : a1;
    v5[1] = v4;
    *v4 = v3;
    v6 = v1[2];
    if (*(v6 + 768))
    {
      break;
    }

    FigMPEG2VideoFrameQueueEntryAdjustTimestampsAndEmit(v6, v1);
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_7:
    v1 = *a1;
    if (!*a1)
    {
      return 0;
    }
  }

  v7 = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(v6, v1);
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_10:
  v8 = v7;
  while (1)
  {
    v9 = *a1;
    if (!*a1)
    {
      break;
    }

    v10 = *v9;
    v11 = v9[1];
    if (*v9)
    {
      v12 = *v9;
    }

    else
    {
      v12 = a1;
    }

    v12[1] = v11;
    *v11 = v10;
    FrameQueueEntryDestroy(v9);
  }

  return v8;
}

uint64_t OUTLINED_FUNCTION_2_82(int a1, size_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char destination)
{

  return CMBlockBufferCopyDataBytes(v13, a2, 1uLL, &destination);
}

uint64_t OUTLINED_FUNCTION_3_65@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  *(v2 + 736) = result;
  ++*(v2 + 744);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_67@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[83] = a2;
  v2[84] = a2;
  v2[85] = result;
  return result;
}

uint64_t CreatePesPrivateForDolby(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(a1 + 48))
  {
    v3 = *(a1 + 856);
    if (v3)
    {
      v3(a1);
    }

    *(a1 + 48) = 0;
  }

  v4 = malloc_type_calloc(1uLL, 0x1E8uLL, 0x10B0040826E28B2uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  FrameQueueEntryInit((v4 + 328));
  v5[473] = 0;
  if (v2 == 1701143347 || v2 == 1700998451)
  {
    *(v5 + 3) = 10;
    *(v5 + 9) = DolbyDoneWithFrame;
    *(a1 + 864) = DolbyFlushFrames;
  }

  else
  {
    *(v5 + 3) = 8;
  }

  result = 0;
  *v5 = v5 + 304;
  *(v5 + 2) = v5 + 314;
  *(v5 + 4) = DolbyCheckHeader;
  *(v5 + 5) = DolbyCompareHeaders;
  *(v5 + 6) = DolbyGetSamplesPerFrame;
  *(v5 + 7) = DolbyGetSampleFrequency;
  *(v5 + 8) = DolbyGetFrameSize;
  *(a1 + 840) = PesDolbyProcessData;
  *(a1 + 848) = PesDolbyCleanPrivateData;
  *(a1 + 856) = PesDolbyDeletePrivateData;
  *(a1 + 48) = v5;
  return result;
}

void DolbyFlushFrames(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 384) && *(v1 + 480) >= 6 && !FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, v1 + 328))
  {
    FrameQueueEntryClean(v1 + 328);
  }

  *(v1 + 480) = 0;
}

uint64_t DolbyCheckHeader(_BYTE *a1)
{
  if (*a1 != 30475)
  {
    return 0;
  }

  result = DolbyGetFrameSize(a1);
  if (result)
  {
    return DolbyGetSampleFrequency(a1) != 0;
  }

  return result;
}

uint64_t DolbyCompareHeaders(OpaqueCMBlockBuffer *a1, unsigned __int8 *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  returnedPointerOut = 0;
  if (CMBlockBufferAccessDataBytes(a1, 0, 8uLL, temporaryBlock, &returnedPointerOut))
  {
    return 0;
  }

  if (DolbyGetFormatID(returnedPointerOut) == 1633889587)
  {
    if ((a2[4] ^ returnedPointerOut[4]) <= 0x3F && returnedPointerOut[5] == a2[5] && (a2[6] ^ returnedPointerOut[6]) < 0x20)
    {
      return 1;
    }
  }

  else if ((a2[5] ^ returnedPointerOut[5]) <= 7)
  {
    return 1;
  }

  return 0;
}

void PesDolbyCleanPrivateData(uint64_t a1)
{
  v1 = *(a1 + 48);
  MPEGAudioCleanPrivateData(v1);
  FrameQueueEntryClean(v1 + 328);
  *(v1 + 480) = 0;
}

void PesDolbyDeletePrivateData(uint64_t a1)
{
  v2 = *(a1 + 48);
  MPEGAudioCleanPrivateData(v2);
  FrameQueueEntryClean(v2 + 328);
  *(v2 + 480) = 0;
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_0_89(OpaqueCMBlockBuffer *a1)
{
  v3 = *(v1 + 56);

  return CMBlockBufferAppendBufferReference(a1, v3, 0, 0, 0);
}

uint64_t sbcsbc_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sbcsbc_detachFromDownstreamConsumer();
  v1 = DerivedStorage[4];
  if (v1)
  {
    dispatch_release(v1);
  }

  v2 = DerivedStorage[6];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[6] = 0;
  }

  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[2] = 0;
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[3] = 0;
  }

  v6 = DerivedStorage[14];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[14] = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *sbcsbc_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerForSampleBufferConsumer %p>", a1);
  return Mutable;
}

uint64_t sbcsbc_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"DownstreamConsumer"))
  {
    v7 = *(DerivedStorage + 40);
    if (v7)
    {
      v7 = CFRetain(v7);
    }

    *a4 = v7;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t sbcsbc_applyPendingPropertiesDictionaryApplier(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = a2;
  if (CFEqual(@"sbcsbc_ItWasNull", a2))
  {
    v4 = 0;
  }

  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(a3, a1, v4);
  }

  return result;
}

uint64_t sbcsbc_applyPendingDeliveryArrayApplier(const __CFDictionary *a1, uint64_t a2)
{
  CFDictionaryGetValue(a1, @"type");
  if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(a1, @"buffer");
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 8);
    if (v8)
    {

      return v8(a2, Value);
    }
  }

  else
  {
    result = FigCFEqual();
    if (result)
    {
      FigCFDictionaryGetInt32IfPresent();
      v9 = CFDictionaryGetValue(a1, @"notificationName");
      v10 = CFDictionaryGetValue(a1, @"notificationPayload");
      v11 = CMBaseObjectGetVTable();
      v12 = *(v11 + 16);
      result = v11 + 16;
      v13 = *(v12 + 64);
      if (v13)
      {
        return v13(a2, v9, v10, 0);
      }
    }
  }

  return result;
}

void sbcsbc_downstreamTriggerCallbackAsync(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 120);
  if (v3)
  {
    v3(*(DerivedStorage + 128));
  }

  FigSimpleMutexUnlock();
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t sbcsbc_SendSampleBuffer(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigEndpointStreamAudioEngineSbufTracerDebugPrint(a2);
  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  else
  {
    v7 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"type", @"typeBuffer");
    CFDictionarySetValue(Mutable, @"buffer", a2);
    CFArrayAppendValue(*(v7 + 8), Mutable);
    CMBufferQueueEnqueue(*(v7 + 16), a2);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t sbcsbc_IsQueueAtOrAboveHighWater()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v2)
    {
      v3 = v2(v1);
    }

    else
    {
      v3 = 0;
    }
  }

  else if (*(DerivedStorage + 76))
  {
    CMBufferQueueGetDuration(&time1, *(DerivedStorage + 16));
    v5 = *(DerivedStorage + 64);
    v3 = CMTimeCompare(&time1, &v5) >= 0;
  }

  else
  {
    v3 = 1;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t sbcsbc_IsQueueBelowLowWater()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 40);
  if (!v1)
  {
    if (*(DerivedStorage + 100))
    {
      CMBufferQueueGetDuration(&time1, *(DerivedStorage + 16));
      v5 = *(DerivedStorage + 88);
      v3 = CMTimeCompare(&time1, &v5) < 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v2)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = v2(v1);
LABEL_7:
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t sbcsbc_InstallLowWaterTrigger(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (DerivedStorage[15])
  {
    sbcsbc_InstallLowWaterTrigger_cold_1(&v12);
    v8 = v12;
  }

  else if (a2)
  {
    DerivedStorage[15] = a2;
    DerivedStorage[16] = a3;
    *a4 = DerivedStorage + 15;
    v8 = DerivedStorage[5];
    if (v8)
    {
      v9 = DerivedStorage[6];
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v10)
      {
        v10(v8, sbcsbc_downstreamTriggerCallback, v9, DerivedStorage + 7);
      }

      v8 = 0;
    }
  }

  else
  {
    sbcsbc_InstallLowWaterTrigger_cold_2(&v13);
    v8 = v13;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t sbcsbc_RemoveLowWaterTrigger(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (DerivedStorage + 15 == a2)
  {
    DerivedStorage[15] = 0;
    DerivedStorage[16] = 0;
    v4 = DerivedStorage[5];
    if (v4)
    {
      v5 = DerivedStorage[7];
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v6)
        {
          v6(v4, v5);
        }

        v4 = 0;
        DerivedStorage[7] = 0;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    sbcsbc_RemoveLowWaterTrigger_cold_1(&v8);
    v4 = v8;
  }

  FigSimpleMutexUnlock();
  return v4;
}

CMItemCount sbcsbc_GetPendingSampleBufferCount()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 40);
  if (!v1)
  {
    BufferCount = CMBufferQueueGetBufferCount(*(DerivedStorage + 16));
    goto LABEL_6;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v2)
  {
    BufferCount = v2(v1);
LABEL_6:
    v4 = BufferCount;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t sbcsbc_PostNotification(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = *(DerivedStorage + 40);
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v9)
    {
      v10 = v9(v8, a2, a3, a4);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  else
  {
    v11 = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"type", @"typeNotification");
    CFDictionarySetValue(Mutable, @"notificationName", a2);
    if (a3)
    {
      CFDictionarySetValue(Mutable, @"notificationPayload", a3);
    }

    FigCFDictionarySetInt32();
    CFArrayAppendValue(*(v11 + 8), Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v10 = 0;
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t sbcsbc_Flush()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    v2 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v2)
    {
      v2(v1);
    }
  }

  else
  {
    CFArrayRemoveAllValues(*(DerivedStorage + 8));
    CMBufferQueueReset(*(DerivedStorage + 16));
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigStreamingAssetProgressMarkDownloadComplete(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMarkDownloadComplete_cold_1();
  }

  else
  {
    v3 = DerivedStorage;
    v4 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
    if (v4)
    {
      v5 = v4;
      if (a1)
      {
        v6 = CFRetain(a1);
      }

      else
      {
        v6 = 0;
      }

      *v5 = v6;
      dispatch_async_f(*v3, v5, dwpm_markDownloadCompleteDispatch);
    }

    else
    {
      FigStreamingAssetProgressMarkDownloadComplete_cold_2();
    }
  }

  return 0;
}

void dwpm_markDownloadCompleteDispatch(const void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 108) = 1;
  *(DerivedStorage + 56) = *(DerivedStorage + 64);
  dwpm_sendProgressNotification(*a1);
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigStreamingAssetProgressMarkAlternateAndMediaSelectionComplete(const void *a1, const void *a2, const void *a3, uint64_t a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMarkAlternateAndMediaSelectionComplete_cold_1();
  }

  else
  {
    v11 = DerivedStorage;
    v12 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
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

      *v13 = v14;
      if (a2)
      {
        v15 = CFRetain(a2);
      }

      else
      {
        v15 = 0;
      }

      v13[2] = v15;
      if (a3)
      {
        v16 = CFRetain(a3);
      }

      else
      {
        v16 = 0;
      }

      v13[3] = v16;
      v13[7] = a4;
      v17 = *a5;
      v13[10] = *(a5 + 2);
      *(v13 + 4) = v17;
      dispatch_async_f(*v11, v13, dwpm_markAlternateAndMediaSelectionCompleteDispatch);
    }

    else
    {
      FigStreamingAssetProgressMarkAlternateAndMediaSelectionComplete_cold_2();
    }
  }

  return 0;
}

uint64_t FigStreamingAssetProgressMonitorUpdateMediaDownloadedTimeAndBytes(const void *a1, const void *a2, const void *a3, uint64_t a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMonitorUpdateMediaDownloadedTimeAndBytes_cold_1();
  }

  else
  {
    v11 = DerivedStorage;
    v12 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
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

      *v13 = v14;
      if (a2)
      {
        v15 = CFRetain(a2);
      }

      else
      {
        v15 = 0;
      }

      v13[2] = v15;
      if (a3)
      {
        v16 = CFRetain(a3);
      }

      else
      {
        v16 = 0;
      }

      v13[3] = v16;
      v13[7] = a4;
      v17 = *a5;
      v13[10] = *(a5 + 2);
      *(v13 + 4) = v17;
      dispatch_async_f(*v11, v13, dwpm_upadateMediaDownloadedTimeAndBytesDispatch);
    }

    else
    {
      FigStreamingAssetProgressMonitorUpdateMediaDownloadedTimeAndBytes_cold_2();
    }
  }

  return 0;
}

uint64_t FigStreamingAssetProgressMonitorMarkInitialEstimationOfExpectedBytesAsComplete(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMonitorMarkInitialEstimationOfExpectedBytesAsComplete_cold_1();
  }

  else
  {
    v3 = DerivedStorage;
    v4 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
    if (v4)
    {
      v5 = v4;
      if (a1)
      {
        v6 = CFRetain(a1);
      }

      else
      {
        v6 = 0;
      }

      *v5 = v6;
      dispatch_async_f(*v3, v5, dwpm_markInitialEstimationOfExpectedBytesAsCompleteDispatch);
    }

    else
    {
      FigStreamingAssetProgressMonitorMarkInitialEstimationOfExpectedBytesAsComplete_cold_2();
    }
  }

  return 0;
}

void dwpm_markInitialEstimationOfExpectedBytesAsCompleteDispatch(const void **a1)
{
  dwpm_sendProgressNotification(*a1);
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigStreamingAssetProgressMonitorUpdateExpectedMediaBytesToDownload(const void *a1, const void *a2, const void *a3, __int128 *a4, uint64_t a5, char a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMonitorUpdateExpectedMediaBytesToDownload_cold_1();
  }

  else
  {
    v13 = DerivedStorage;
    v14 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00407336ED58uLL);
    if (v14)
    {
      v15 = v14;
      if (a1)
      {
        v16 = CFRetain(a1);
      }

      else
      {
        v16 = 0;
      }

      *v15 = v16;
      if (a2)
      {
        v17 = CFRetain(a2);
      }

      else
      {
        v17 = 0;
      }

      *(v15 + 2) = v17;
      if (a3)
      {
        v18 = CFRetain(a3);
      }

      else
      {
        v18 = 0;
      }

      *(v15 + 3) = v18;
      *(v15 + 12) = a5;
      v19 = *a4;
      *(v15 + 15) = *(a4 + 2);
      *(v15 + 104) = v19;
      v15[128] = a6;
      dispatch_async_f(*v13, v15, dwpm_updateExpectedMediaBytesToDownloadDispatch);
    }

    else
    {
      FigStreamingAssetProgressMonitorUpdateExpectedMediaBytesToDownload_cold_2();
    }
  }

  return 0;
}

uint64_t FigStreamingAssetProgressMonitorRegisterAlternateAndMediaSelections(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (*(DerivedStorage + 111))
  {
    FigStreamingAssetProgressMonitorRegisterAlternateAndMediaSelections_cold_1();
    return 0;
  }

  else
  {
    context = a1;
    *(&v9 + 1) = a2;
    *&v10 = a3;
    dispatch_sync_f(*DerivedStorage, &context, dwpm_registerAlternateAndMediaSelectionsDispatch);
    return v9;
  }
}

void dwpm_registerAlternateAndMediaSelectionsDispatch(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    dwpm_registerAlternateAndMediaSelectionsDispatch_cold_1(&v10);
    goto LABEL_14;
  }

  if (!v3)
  {
    dwpm_registerAlternateAndMediaSelectionsDispatch_cold_4(&v10);
    goto LABEL_14;
  }

  if (!v2)
  {
    dwpm_registerAlternateAndMediaSelectionsDispatch_cold_3(&v10);
    goto LABEL_14;
  }

  v5 = DerivedStorage;
  v6 = malloc_type_calloc(1uLL, 0x60uLL, 0x10E0040A2CCCE02uLL);
  if (!v6)
  {
    if (dwpm_registerAlternateAndMediaSelectionsDispatch_cold_2(&v10))
    {
      goto LABEL_6;
    }

LABEL_14:
    v9 = v10;
    goto LABEL_9;
  }

  v6[2] = CFRetain(v3);
  v6[3] = CFRetain(v2);
  *(v6 + 56) = 1;
LABEL_6:
  v7 = FigMediaSelectionArrayCopyDescription(*(v5 + 8), v2);
  *v6 = 0;
  v8 = *(v5 + 80);
  v6[1] = v8;
  *v8 = v6;
  *(v5 + 80) = v6;
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = 0;
LABEL_9:
  *(a1 + 8) = v9;
}

uint64_t FigStreamingAssetDownloadProgressMonitorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigStreamingAssetDownloadProgressMonitorGetClassID_sRegisterFigStreamingAssetProgressMonitorBaseTypeOnce, RegisterFigStreamingAssetProgressMonitorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigStreamingAssetDownloadProgressMonitorCreate(const void *a1, const void *a2, const __CFDictionary *a3, uint64_t a4, NSObject *a5, void *a6, void *a7)
{
  v25 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || (v12 = CFGetTypeID(a2), v12 != FigAssetGetTypeID()))
  {
    FigStreamingAssetDownloadProgressMonitorCreate_cold_4(v24);
    return v24[0];
  }

  if (!a7)
  {
    FigStreamingAssetDownloadProgressMonitorCreate_cold_3(v24);
    return v24[0];
  }

  MEMORY[0x19A8D3660](&FigStreamingAssetDownloadProgressMonitorGetClassID_sRegisterFigStreamingAssetProgressMonitorBaseTypeOnce, RegisterFigStreamingAssetProgressMonitorBaseType);
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    return v13;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v15 = CFRetain(a1);
  }

  else
  {
    v15 = 0;
  }

  *(DerivedStorage + 8) = v15;
  *(DerivedStorage + 16) = CFRetain(a2);
  if (FigIsItOKToLogURLs())
  {
    v16 = FPSupport_GetAssetDoNotLogURLs(a2) == 0;
  }

  else
  {
    v16 = 0;
  }

  *(DerivedStorage + 110) = v16;
  if (a4)
  {
    if (a5)
    {
      if (a6)
      {
        dispatch_retain(a5);
        *(DerivedStorage + 48) = a5;
        *(DerivedStorage + 40) = *a6;
        v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        *(DerivedStorage + 32) = v17;
        if (!v17)
        {
          FigStreamingAssetDownloadProgressMonitorCreate_cold_2(v24);
          return v24[0];
        }
      }
    }
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"AssetDownloaderCreateOption_DebugIdentifier");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 24) = Value;
  }

  *(DerivedStorage + 72) = 0;
  *(DerivedStorage + 80) = DerivedStorage + 72;
  v19 = dispatch_queue_create("com.apple.coremedia.figstreamingassetdownloadprogressmonitor.state", 0);
  *DerivedStorage = v19;
  if (!v19)
  {
    FigStreamingAssetDownloadProgressMonitorCreate_cold_1(v24);
    return v24[0];
  }

  if (dword_1EAF171E8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = 0;
  *a7 = 0;
  return v13;
}

void dworch_sendProgressNotificationOnCallbackQueue(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    dworch_sendProgressNotificationOnCallbackQueue_cold_1();
  }

  else
  {
    v3 = *(DerivedStorage + 40);
    if (v3)
    {
      v3(a1[11], *a1, a1[12], a1[7]);
    }
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v4 = a1[11];
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void *dwpm_findDownloadProgressItemForAlternateAndSelectedMediaArray()
{
  for (i = *(CMBaseObjectGetDerivedStorage() + 72); i; i = *i)
  {
    if (FigCFEqual() && FigCFEqual())
    {
      break;
    }
  }

  return i;
}

uint64_t RegisterFigStreamingAssetProgressMonitorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t dwpm_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  context = a1;
  dispatch_sync_f(*DerivedStorage, &context, dwpm_invalidateDispatch);
  return v5;
}

void dwpm_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dwpm_invalidateGutsOnQueue();
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 24) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t dwpm_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = 0;
  context[0] = a1;
  context[1] = a2;
  v13 = a3;
  dispatch_sync_f(*DerivedStorage, context, dwpm_copyPropertyDispatch);
  result = v12;
  if (!v12)
  {
    *a4 = v11;
  }

  return result;
}

CFNumberRef dwpm_copyPropertyDispatch(uint64_t a1)
{
  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 111))
  {
    dwpm_copyPropertyDispatch_cold_1(&v7);
    result = 0;
    v6 = v7;
  }

  else
  {
    v4 = DerivedStorage;
    if (CFEqual(@"AssetDownloaderProperty_DownloadedBytes", v2))
    {
      result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v4 + 64));
      if (result)
      {
        v6 = 0;
      }

      else
      {
        dwpm_copyPropertyDispatch_cold_2(&v8);
        result = 0;
        v6 = v8;
      }
    }

    else
    {
      result = 0;
      v6 = -12784;
    }
  }

  *(a1 + 24) = v6;
  *(a1 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_90()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t FigVTTSpanCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTSpanCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTSpan_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTSpan_CopyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFCopyCompactDescription();
  cf = 0;
  FigVTTNodeCopyValue(a1, &cf);
  v4 = *MEMORY[0x1E695E480];
  v5 = *(DerivedStorage + 24);
  if (!v5)
  {
    v5 = &stru_1F0B1AFB8;
  }

  if (cf)
  {
    v6 = CFStringCreateWithFormat(v4, 0, @"span: %@ %@ text=%@", v5, v3, cf);
  }

  else
  {
    v6 = CFStringCreateWithFormat(v4, 0, @"span: %@ %@", v5, v3);
  }

  v7 = v6;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v7;
}

uint64_t figVTTSpan_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figVTTSpan_CopyProperty_cold_2(&v12);
    return v12;
  }

  if (!a4)
  {
    figVTTSpan_CopyProperty_cold_1(&v11);
    return v11;
  }

  v7 = DerivedStorage;
  if (!CFEqual(@"WebVTTSpanNode_StyleReferences", a2))
  {
    if (!CFEqual(@"WebVTTSpanNode_MarkupElement", a2))
    {
      return 4294954512;
    }

    v8 = *(v7 + 24);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = CFRetain(v8);
LABEL_9:
  result = 0;
  *a4 = v9;
  return result;
}

uint64_t figVTTSpan_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_3(&v11);
    return v11;
  }

  v6 = DerivedStorage;
  if (CFEqual(@"WebVTTSpanNode_StyleReferences", a2))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFArrayGetTypeID())
      {
        v8 = *(v6 + 16);
        *(v6 + 16) = a3;
        goto LABEL_7;
      }
    }

    figTTMLDocumentWriterFrameRateParameterInserter_SetProperty_cold_1(&v11);
    return v11;
  }

  if (CFEqual(@"WebVTTSpanNode_MarkupElement", a2))
  {
    if (!a3)
    {
      v8 = *(v6 + 24);
      *(v6 + 24) = 0;
      if (!v8)
      {
        return 0;
      }

      goto LABEL_8;
    }

    v10 = CFGetTypeID(a3);
    if (v10 == CFStringGetTypeID())
    {
      v8 = *(v6 + 24);
      *(v6 + 24) = a3;
LABEL_7:
      CFRetain(a3);
      if (!v8)
      {
        return 0;
      }

LABEL_8:
      CFRelease(v8);
      return 0;
    }

    figVTTSpan_SetProperty_cold_2(&v11);
    return v11;
  }

  return FigSignalErrorAtGM();
}

uint64_t figVTTSpan_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 5;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTSpan_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTSpan_copyNodeDocumentSerialization(uint64_t a1, CFStringRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
    v4 = *(DerivedStorage + 8);
    if (v4 && (v5 = CFRetain(v4)) != 0)
    {
      v6 = v5;
      *a2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@\n", v5);
      CFRelease(v6);
      return 0;
    }

    else
    {
      figVTTSpan_copyNodeDocumentSerialization_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    figVTTSpan_copyNodeDocumentSerialization_cold_2(&v9);
    return v9;
  }
}

uint64_t RegisterFigAggregateVideoDestinationType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAggregateVideoDestinationCreate(const __CFAllocator *a1, const __CFArray *a2, const void *a3, const opaqueCMFormatDescription *a4, uint64_t a5, const __CFDictionary *a6, void *a7)
{
  tagCollection[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (!a7)
  {
    v23 = 1942;
LABEL_36:
    FigAggregateVideoDestinationCreate_cold_1(v23, tagCollection);
    return LODWORD(tagCollection[0]);
  }

  if (!a3)
  {
    v23 = 1943;
    goto LABEL_36;
  }

  if (!a4)
  {
    v23 = 1944;
    goto LABEL_36;
  }

  if (CMFormatDescriptionGetMediaType(a4) != 1986618469)
  {
    v23 = 1947;
    goto LABEL_36;
  }

  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigAggregateVideoDestinationGetClassID_sRegisterFigAggregateVideoDestinationTypeOnce, RegisterFigAggregateVideoDestinationType);
  updated = CMDerivedObjectCreate();
  if (updated)
  {
    return updated;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  if (a6)
  {
    Value = CFDictionaryGetValue(a6, @"LoggingIdentifier");
    if (Value)
    {
      CFStringGetCString(Value, (DerivedStorage + 8), 32, 0x600u);
    }
  }

  *DerivedStorage = FigSimpleMutexCreate();
  *(DerivedStorage + 80) = CFRetain(a3);
  *(DerivedStorage + 40) = 1;
  *(DerivedStorage + 48) = FigFormatDescriptionRetain();
  if (VTIsStereoMVHEVCDecodeSupported())
  {
    CMVideoFormatDescriptionCopyTagCollectionArray(a4, (DerivedStorage + 64));
  }

  tagCollection[0] = 0;
  cf = 0;
  v16 = FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a4, &cf);
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v17 = cf;
    FigGetAllocatorForMedia();
    if (v17)
    {
      FigTagCollectionCreateMutableCopy();
    }

    else
    {
      FigTagCollectionCreateMutable();
    }

    if (tagCollection[0])
    {
      v18 = CMTagCollectionAddTag(tagCollection[0], *MEMORY[0x1E6963150]);
      v19 = tagCollection[0];
      if (v18)
      {
        if (!tagCollection[0])
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      *(DerivedStorage + 88) = tagCollection[0];
      tagCollection[0] = 0;
    }

    else
    {
      v18 = FigSignalErrorAtGM();
      v19 = tagCollection[0];
      if (tagCollection[0])
      {
LABEL_18:
        CFRelease(v19);
      }
    }
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v18)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 72) = Mutable;
    if (!Mutable)
    {
      return 4294948255;
    }

    if (a2)
    {
      if (CFArrayGetCount(a2))
      {
        updated = favd_UpdateImageQueuesToMatchOutputsArray(0, a5, a2);
        if (updated)
        {
          return updated;
        }
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    if (dword_1EAF17228)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v18 = 0;
    *a7 = 0;
  }

  return v18;
}

uint64_t FigAggregateVideoDestinationForDataQueueCreate(const __CFAllocator *a1, const __CFArray *a2, const void *a3, const opaqueCMFormatDescription *a4, uint64_t a5, const __CFDictionary *a6, void *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    FigAggregateVideoDestinationForDataQueueCreate_cold_4(v26);
    return v26[0];
  }

  if (!a7)
  {
    FigAggregateVideoDestinationForDataQueueCreate_cold_3(v26);
    return v26[0];
  }

  if (!a4)
  {
    FigAggregateVideoDestinationForDataQueueCreate_cold_2(v26);
    return v26[0];
  }

  if (CMFormatDescriptionGetMediaType(a4) != 1835365473)
  {
    FigAggregateVideoDestinationForDataQueueCreate_cold_1(v26);
    return v26[0];
  }

  v25 = a7;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigAggregateVideoDestinationGetClassID_sRegisterFigAggregateVideoDestinationTypeOnce, RegisterFigAggregateVideoDestinationType);
  v14 = CMDerivedObjectCreate();
  if (!v14)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 40) = 0;
    if (a6)
    {
      Value = CFDictionaryGetValue(a6, @"LoggingIdentifier");
      if (Value)
      {
        CFStringGetCString(Value, (DerivedStorage + 40), 32, 0x600u);
      }
    }

    *DerivedStorage = FigSimpleMutexCreate();
    *(DerivedStorage + 8) = CFRetain(a3);
    *(DerivedStorage + 16) = 1;
    *(DerivedStorage + 24) = FigFormatDescriptionRetain();
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(DerivedStorage + 32) = Mutable;
    if (Mutable)
    {
      v18 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      v19 = 0;
      if (a2)
      {
        goto LABEL_16;
      }

LABEL_17:
      for (i = 0; v19 < i; i = CFArrayGetCount(a2))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v19);
        v21 = CFGetTypeID(ValueAtIndex);
        if (v21 == FigVideoTargetGetTypeID())
        {
          CMFormatDescriptionGetMediaSubType(a4);
          if (FPSupport_fvtSupportsMetadataTrack(ValueAtIndex))
          {
            CFArrayAppendValue(v18, ValueAtIndex);
          }
        }

        ++v19;
        if (!a2)
        {
          goto LABEL_17;
        }

LABEL_16:
        ;
      }

      if (v18 && CFArrayGetCount(v18))
      {
        favddq_UpdateDataQueuesToMatchOutputsArray(0, a5, v18);
      }

      if (dword_1EAF17228)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *v25 = 0;
      if (v18)
      {
        CFRelease(v18);
      }

      return 0;
    }

    else
    {
      return 4294948255;
    }
  }

  return v14;
}

__CFString *favd_createDebugDescription(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigAggregateVideoDestination %p retainCount: %ld ", a1, v4);
  v5 = FigCFDictionaryCopyArrayOfKeys();
  if (v5)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        theArray = 0;
        favd_copyImageQueuesForOutput(a1, ValueAtIndex, &theArray);
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 == FigVideoTargetGetTypeID())
        {
          CFStringAppendFormat(Mutable, 0, @"FVT:%p FIQ:", ValueAtIndex);
          for (i = 0; ; ++i)
          {
            Count = theArray;
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
            }

            if (i >= Count)
            {
              break;
            }

            v12 = CFArrayGetValueAtIndex(theArray, i);
            CFStringAppendFormat(Mutable, 0, @"%p ", v12);
          }
        }

        else
        {
          v13 = CFGetTypeID(ValueAtIndex);
          if (v13 == FigVisualContextGetTypeID())
          {
            v14 = theArray;
            if (theArray)
            {
              v14 = CFArrayGetCount(theArray);
              if (v14)
              {
                v14 = CFArrayGetValueAtIndex(theArray, 0);
              }
            }

            CFStringAppendFormat(Mutable, 0, @"FVC:%p FIQ:%p ", ValueAtIndex, v14);
          }

          else
          {
            v15 = CFGetTypeID(ValueAtIndex);
            if (v15 == CAImageQueueGetTypeID())
            {
              v16 = theArray;
              if (theArray)
              {
                v16 = CFArrayGetCount(theArray);
                if (v16)
                {
                  v16 = CFArrayGetValueAtIndex(theArray, 0);
                }
              }

              CFStringAppendFormat(Mutable, 0, @"CA:%p FIQ:%p ", ValueAtIndex, v16);
            }
          }
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    CFStringAppendFormat(Mutable, 0, @">");
    CFRelease(v6);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @">");
  }

  return Mutable;
}

uint64_t favd_copyImageQueuesForOutput(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a3)
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 72), a2);
    v7 = favd_copyImageQueuesFromDestination(Value, &cf, 0);
    if (v7)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      *a3 = cf;
    }
  }

  else
  {
    favd_copyImageQueuesForOutput_cold_1(&v10);
    return v10;
  }

  return v7;
}

void favd_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17228)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  favd_cleanupOldOutputs(a1);
  FigSimpleMutexDestroy();
  FigFormatDescriptionRelease();
  DerivedStorage[6] = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v4 = DerivedStorage[10];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[10] = 0;
  }

  v5 = DerivedStorage[9];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[9] = 0;
  }

  v6 = DerivedStorage[8];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[8] = 0;
  }

  v7 = DerivedStorage[11];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[11] = 0;
  }

  v8 = DerivedStorage[12];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[12] = 0;
  }
}

uint64_t favd_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    favd_CopyProperty_cold_2(&theArray);
    return theArray;
  }

  if (!a4)
  {
    favd_CopyProperty_cold_1(&theArray);
    return theArray;
  }

  FigSimpleMutexLock();
  if (CFEqual(a2, @"PerformanceDictionary"))
  {
    theArray = 0;
    v17 = favd_copyAllImageQueuesAndOptions(a1, &theArray, 0);
    if (v17)
    {
      goto LABEL_59;
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v20)
        {
          v20(ValueAtIndex, a4);
        }

        v14 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      Count = 0;
    }

    v21 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v23 = Mutable;
      if (Count < 1)
      {
LABEL_39:
        v14 = 0;
        *a4 = v23;
        goto LABEL_50;
      }

      v24 = 0;
      while (1)
      {
        value = 0;
        v25 = CFStringCreateWithFormat(v21, 0, @"imagequeue-%d", v24);
        if (!v25)
        {
          break;
        }

        v26 = v25;
        v27 = CFArrayGetValueAtIndex(theArray, v24);
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v28)
        {
          v28(v27, &value);
        }

        if (value)
        {
          CFDictionarySetValue(v23, v26, value);
        }

        CFRelease(v26);
        if (value)
        {
          CFRelease(value);
        }

        if (Count == ++v24)
        {
          goto LABEL_39;
        }
      }

      CFRelease(v23);
    }

    v14 = 4294948255;
LABEL_50:
    v15 = theArray;
    if (!theArray)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!CFEqual(a2, @"VideoTargets"))
  {
    if (!CFEqual(a2, @"ImageQueueGauge"))
    {
      v14 = 4294954509;
      goto LABEL_19;
    }

    value = 0;
    theArray = 0;
    v17 = favd_copyAllImageQueuesAndOptions(a1, &theArray, 0);
    if (!v17)
    {
      v29 = theArray;
      if (theArray)
      {
        if (CFArrayGetCount(theArray) < 1)
        {
          v29 = 0;
        }

        else
        {
          v30 = CFArrayGetValueAtIndex(theArray, 0);
          AllocatorForMedia = FigGetAllocatorForMedia();
          FigBaseObject = FigImageQueueGetFigBaseObject(v30);
          v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v33)
          {
            v14 = 4294954514;
            goto LABEL_50;
          }

          v14 = v33(FigBaseObject, @"ImageQueueGauge", AllocatorForMedia, &value);
          v29 = value;
          if (v14)
          {
            if (value)
            {
              CFRelease(value);
            }

            goto LABEL_50;
          }
        }
      }

      v14 = 0;
      *a4 = v29;
      value = 0;
      goto LABEL_50;
    }

LABEL_59:
    v14 = v17;
    goto LABEL_50;
  }

  CMBaseObjectGetDerivedStorage();
  v7 = FigCFDictionaryCopyArrayOfKeys();
  v8 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_12:
    for (i = 0; v10 < i; i = CFArrayGetCount(v7))
    {
      v11 = CFArrayGetValueAtIndex(v7, v10);
      v12 = CFGetTypeID(v11);
      if (v12 == FigVideoTargetGetTypeID())
      {
        CFArrayAppendValue(v9, v11);
      }

      ++v10;
      if (!v7)
      {
        goto LABEL_12;
      }

LABEL_11:
      ;
    }

    v14 = 0;
    *a4 = v9;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = 4294948255;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  v15 = v7;
LABEL_16:
  CFRelease(v15);
LABEL_19:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t favd_SetProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 && (v8 = DerivedStorage, v9 = CFGetTypeID(a1), MEMORY[0x19A8D3660](&FigAggregateVideoDestinationGetClassID_sRegisterFigAggregateVideoDestinationTypeOnce, RegisterFigAggregateVideoDestinationType), v9 == CMBaseClassGetCFTypeID()))
  {
    if (a2)
    {
      FigSimpleMutexLock();
      if (CFEqual(a2, @"ImageQueueGauge"))
      {
        theArray = 0;
        favd_copyAllImageQueuesAndOptions(a1, &theArray, 0);
        if (!theArray)
        {
          goto LABEL_13;
        }

        if (CFArrayGetCount(theArray) >= 1)
        {
          ValueAtIndex = FigCFArrayGetValueAtIndex();
          FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v15)
          {
            v15(FigBaseObject, @"ImageQueueGauge", a3);
          }
        }

        v11 = theArray;
        if (!theArray)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!CFEqual(a2, @"VideoChannelSettings"))
        {
          v7 = 4294954509;
          goto LABEL_15;
        }

        v10 = *(v8 + 96);
        *(v8 + 96) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (!v10)
        {
LABEL_13:
          v7 = 0;
LABEL_15:
          FigSimpleMutexUnlock();
          return v7;
        }

        v11 = v10;
      }

      CFRelease(v11);
      goto LABEL_13;
    }

    favd_SetProperty_cold_1(&theArray);
  }

  else
  {
    favd_SetProperty_cold_2(&theArray);
  }

  return theArray;
}

void favd_cleanupOldOutputs(uint64_t a1)
{
  theArray[21] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigCFDictionaryCopyArrayOfKeys();
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        if (!FigCFArrayContainsValue())
        {
          theArray[0] = 0;
          if (dword_1EAF17228)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          favd_copyImageQueuesForOutput(a1, ValueAtIndex, theArray);
          for (i = 0; ; ++i)
          {
            Count = theArray[0];
            if (theArray[0])
            {
              Count = CFArrayGetCount(theArray[0]);
            }

            if (i >= Count)
            {
              break;
            }

            CFArrayGetValueAtIndex(theArray[0], i);
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListener();
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterRemoveWeakListener();
          }

          CFDictionaryRemoveValue(*(DerivedStorage + 72), ValueAtIndex);
          if (theArray[0])
          {
            CFRelease(theArray[0]);
          }
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(v3));
    }

    CFRelease(v3);
  }
}

uint64_t favd_ImageQueueArraySetPropertyForOutputs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  FigSimpleMutexLock();
  if (a3)
  {
    MappedArray = FigCFDictionaryCreateMappedArray();
    v6 = 0;
    if (!MappedArray)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(MappedArray); ; i = 0)
    {
      if (v6 >= i)
      {
        v10 = 0;
        goto LABEL_15;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(MappedArray, v6);
      v9 = favd_copyImageQueuesFromDestination(ValueAtIndex, &theArray, 0);
      if (v9)
      {
        break;
      }

      if (theArray)
      {
        if (CFArrayGetCount(theArray))
        {
          FigImageQueueArraySetProperty();
        }

        if (theArray)
        {
          CFRelease(theArray);
          theArray = 0;
        }
      }

      ++v6;
      if (MappedArray)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

    v10 = v9;
LABEL_15:
    FigSimpleMutexUnlock();
    if (MappedArray)
    {
      CFRelease(MappedArray);
    }
  }

  else
  {
    favd_ImageQueueArraySetPropertyForOutputs_cold_1(DerivedStorage, &v13);
    v10 = v13;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v10;
}

uint64_t favd_CopyFigImageQueueArrayAndOptions(uint64_t a1, __CFArray **a2, __CFArray **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a2)
  {
    v6 = favd_copyAllImageQueuesAndOptions(a1, a2, a3);
    if (!v6 && dword_1EAF17228)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = 0;
    }
  }

  else
  {
    favd_CopyFigImageQueueArrayAndOptions_cold_1(v9);
    v6 = v9[0];
  }

  FigSimpleMutexUnlock();
  return v6;
}

uint64_t favd_IsAnyOutputReadyToRender()
{
  context = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CFDictionaryApplyFunction(*(DerivedStorage + 72), favd_isAnyOutputReadyToRenderApplierFn, &context);
  FigSimpleMutexUnlock();
  return context;
}

void favd_setCAImageQueueFlags(uint64_t a1)
{
  cf = 0;
  FigBaseObject = FigImageQueueGetFigBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(FigBaseObject, @"CAImageQueue", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      CAImageQueueSetFlags();
      CFRelease(cf);
    }
  }
}

uint64_t favd_populateVideoDestination(uint64_t a1, const void *a2, CFIndex a3, CFTypeRef *a4)
{
  v47[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 64);
  if (v9)
  {
    if (CFArrayGetCount(v9) <= a3)
    {
      favd_populateVideoDestination_cold_1(v47);
LABEL_69:
      v21 = LODWORD(v47[0]);
      goto LABEL_54;
    }
  }

  else if (a3)
  {
    favd_populateVideoDestination_cold_2(v47);
    goto LABEL_69;
  }

  if (!a4)
  {
    favd_populateVideoDestination_cold_5(v47);
    goto LABEL_69;
  }

  timebase = *(DerivedStorage + 80);
  cf = 0;
  v10 = (CMBaseObjectGetDerivedStorage() + 8);
  if (*v10)
  {
    v11 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      favd_populateVideoDestination_cold_3(v47);
      v13 = 0;
      goto LABEL_65;
    }

    v13 = CFStringCreateWithCString(v11, v10, 0x600u);
  }

  else
  {
    v13 = 0;
    Mutable = 0;
  }

  v14 = CFGetTypeID(a2);
  if (v14 != FigVisualContextGetTypeID())
  {
    v18 = CFGetTypeID(a2);
    if (v18 == CAImageQueueGetTypeID())
    {
      FigCFDictionarySetValue();
      v15 = FigImageQueueCreateForCoreAnimationWithOptions(0, a2, Mutable, &cf);
      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    v19 = CFGetTypeID(a2);
    if (v19 == FigVideoTargetGetTypeID())
    {
      FigCFDictionarySetValue();
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v20)
      {
        goto LABEL_22;
      }

      v15 = v20(a2, Mutable, &cf);
      if (!v15)
      {
        goto LABEL_26;
      }

LABEL_21:
      v21 = v15;
      goto LABEL_23;
    }

    favd_populateVideoDestination_cold_4(v47);
LABEL_65:
    v21 = LODWORD(v47[0]);
LABEL_23:
    if (cf)
    {
      CFRelease(cf);
      if (!v13)
      {
        goto LABEL_37;
      }

LABEL_36:
      CFRelease(v13);
      goto LABEL_37;
    }

LABEL_35:
    if (!v13)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  FigCFDictionarySetValue();
  v15 = FigImageQueueCreateForCoreVideoWithOptions(0, Mutable, &cf);
  if (v15)
  {
    goto LABEL_21;
  }

  v16 = cf;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v17)
  {
LABEL_22:
    v21 = 4294954514;
    goto LABEL_23;
  }

  v15 = v17(v16, a2, timebase);
  if (v15)
  {
    goto LABEL_21;
  }

LABEL_26:
  v22 = cf;
  if (cf)
  {
    if (dword_1EAF17228)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v22 = cf;
    }

    v15 = favd_setupImageQueue(v22, timebase);
    if (!v15)
    {
      favd_setCAImageQueueFlags(cf);
      FigBaseObject = FigImageQueueGetFigBaseObject(cf);
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v25)
      {
        v25(FigBaseObject, @"FigImageQueueProperty_Timebase", timebase);
      }

      v26 = FigImageQueueGetFigBaseObject(cf);
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v27)
      {
        v27(v26, @"EnableImageQueueTiming", *MEMORY[0x1E695E4D0]);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      v21 = 0;
      *a4 = cf;
      cf = 0;
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  v21 = 4294948253;
  if (v13)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v21)
  {
    if (*(DerivedStorage + 64))
    {
      v28 = FigTagMakeWithSInt64Value();
      v30 = v29;
      v31 = 0;
      do
      {
        Count = *(DerivedStorage + 64);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (v31 >= Count)
        {
          v21 = FigSignalErrorAtGM();
          goto LABEL_54;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 64), v31);
        *&v48.category = v28;
        v48.value = v30;
        ++v31;
      }

      while (!CMTagCollectionContainsTag(ValueAtIndex, v48));
      if (ValueAtIndex)
      {
        a4[2] = CFRetain(ValueAtIndex);
        *v42 = 0;
        v47[0] = 0;
        v47[1] = 0;
        FigTagCollectionGetTagsWithCategory();
        if (*v42 == 1)
        {
          FigTagGetSInt64Value();
          v34 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v34)
          {
            v35 = v34;
            FigCFDictionarySetInt32();
            goto LABEL_53;
          }

          v21 = 4294948255;
        }

        else
        {
          v21 = 4294948254;
        }

LABEL_54:
        if (!v21)
        {
          return v21;
        }

        goto LABEL_55;
      }

      v35 = 0;
      a4[2] = 0;
    }

    else
    {
      v35 = 0;
    }

LABEL_53:
    v21 = 0;
    a4[1] = v35;
    goto LABEL_54;
  }

LABEL_55:
  if (dword_1EAF17228)
  {
    LODWORD(cf) = 0;
    v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v37 = cf;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
    }

    else
    {
      v38 = v37 & 0xFFFFFFFE;
    }

    if (v38)
    {
      *v42 = 136315650;
      *&v42[4] = "favd_populateVideoDestination";
      v43 = 2048;
      v44 = a1;
      v45 = 1024;
      LODWORD(v46) = v21;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  favd_cleanupVideoDestination(a4);
  return v21;
}

void favd_cleanupVideoDestination(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }
}

void *favd_imageQueueInfoRetainCallBack(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 24, 0x6004082687C62, 0);
  v4 = *a2;
  if (*a2)
  {
    v4 = CFRetain(v4);
  }

  *v3 = v4;
  v5 = *(a2 + 16);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  v3[2] = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  v3[1] = v6;
  return v3;
}

void favd_imageQueueInfoReleaseCallBack(const __CFAllocator *a1, void *a2)
{
  favd_cleanupVideoDestination(a2);

  CFAllocatorDeallocate(a1, a2);
}

__CFString *favd_imageQueueInfoCopyDescriptionCallBack(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = FigCFCopyCompactDescription();
  v4 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<VideoDestination: %p FIQ: %@ collection: %@>", a1, v3, v4);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

uint64_t favd_imageQueueInfoEqualCallBack()
{
  result = FigCFEqual();
  if (result)
  {
    result = FigCFEqual();
    if (result)
    {
      return FigCFEqual() != 0;
    }
  }

  return result;
}

uint64_t favd_reconnectVisualContextToTimebaseApplierFn(const void *a1, const __CFArray *a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  result = FigVisualContextGetTypeID();
  if (v6 == result)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (result = CFArrayGetCount(a2); v8 < result; result = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
      v10 = *ValueAtIndex;
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v11)
      {
        v11(v10, 0, 0);
      }

      v12 = *ValueAtIndex;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v13)
      {
        v13(v12, a1, a3);
      }

      ++v8;
      if (a2)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }
  }

  return result;
}

void favddq_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexDestroy();
  FigFormatDescriptionRelease();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 32) = 0;
  }
}

__CFString *favddq_createDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"<FigAggregateVideoDestination [%p|%s] %@>", a1, DerivedStorage + 40, v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

uint64_t favddq_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFArray **a4)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    favddq_CopyProperty_cold_3(&value);
    return value;
  }

  if (!a4)
  {
    favddq_CopyProperty_cold_2(&value);
    return value;
  }

  FigSimpleMutexLock();
  if (!CFEqual(a2, @"SampleBufferConsumersForDataQueues"))
  {
    v10 = 4294954509;
    goto LABEL_23;
  }

  value = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFDictionaryCopyArrayOfKeys();
  v8 = v7;
  if (v7)
  {
    Count = CFArrayGetCount(v7);
  }

  else
  {
    Count = 0;
  }

  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    favddq_CopyProperty_cold_1(&v21);
    v10 = v21;
    goto LABEL_19;
  }

  if (Count < 1)
  {
LABEL_17:
    v10 = 0;
    *a4 = Mutable;
    Mutable = 0;
    goto LABEL_19;
  }

  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v13);
    v15 = CFDictionaryGetValue(*(DerivedStorage + 32), ValueAtIndex);
    if (v15)
    {
      break;
    }

LABEL_16:
    if (Count == ++v13)
    {
      goto LABEL_17;
    }
  }

  CMBaseObject = FigDataQueueGetCMBaseObject(v15);
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    v10 = 4294954514;
    goto LABEL_19;
  }

  v18 = v17(CMBaseObject, @"SampleBufferConsumer", v11, &value);
  if (!v18)
  {
    CFArrayAppendValue(Mutable, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    goto LABEL_16;
  }

  v10 = v18;
LABEL_19:
  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_23:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t favddq_SetProperty(const void *a1, uint64_t a2)
{
  if (!a1 || (v5 = CFGetTypeID(a1), MEMORY[0x19A8D3660](&FigAggregateVideoDestinationGetClassID_sRegisterFigAggregateVideoDestinationTypeOnce, RegisterFigAggregateVideoDestinationType), v5 != CMBaseClassGetCFTypeID()))
  {
    v2 = 2217;
LABEL_3:
    FigAggregateVideoDestinationCreate_cold_1(v2, &cf);
    return cf;
  }

  if (!a2)
  {
    v2 = 2218;
    goto LABEL_3;
  }

  return 4294954509;
}

uint64_t OUTLINED_FUNCTION_6_55()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_11_35()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_13_24(CMTag tagToAdd)
{
  value = tagToAdd.value;
  *&v4.category = *&tagToAdd.category;
  v4.value = value;

  return CMTagCollectionAddTag(v1, v4);
}

uint64_t OUTLINED_FUNCTION_14_29()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_17_24(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, os_log_type_t type, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_18_23()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_19_25()
{

  return FigSimpleMutexLock();
}

uint64_t FigCaptionGroupConverterFromSampleBufferStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigCaptionGroupConverterFromSampleBufferStartServer_block_invoke;
  block[3] = &unk_1E748B0B8;
  block[4] = &v3;
  if (FigCaptionGroupConverterFromSampleBufferStartServer_sFigCaptionGroupConverterServerSetupOnce != -1)
  {
    dispatch_once(&FigCaptionGroupConverterFromSampleBufferStartServer_sFigCaptionGroupConverterServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __FigCaptionGroupConverterFromSampleBufferStartServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

double FigCaptionGroupConverterFromSampleBufferServerInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigCaptionGroupConverterFromSampleBufferServerFinalize(void *a1)
{
  FigXPCRelease();
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }
}

__CFString *FigCaptionGroupConverterFromSampleBufferServerCopyDebugDesc(void *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionGroupConverterFromSampleBufferServerRef %p %@> OID: %lld, Serializer: %@, Converter: %@", a1, a1[4], a1[3], a1[5], a1[6]);
  return Mutable;
}

uint64_t __FigCaptionGroupConverterFromSampleBufferServerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CABE8 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_86()
{

  return FigXPCServerLookupAndRetainAssociatedObject();
}

const __CFNumber *FigSteeringManifestGetVersion()
{
  valuePtr = 0;
  result = FigCFDictionaryGetValue();
  if (result)
  {
    CFNumberGetValue(result, kCFNumberCFIndexType, &valuePtr);
    return valuePtr;
  }

  return result;
}

const __CFArray *FigSteeringManifestGetPathwayCount()
{
  result = FigCFDictionaryGetValue();
  if (result)
  {

    return CFArrayGetCount(result);
  }

  return result;
}

double FigSteeringManifestGetTTL()
{
  valuePtr = 0.0;
  Value = FigCFDictionaryGetValue();
  if (!Value)
  {
    return 0.0;
  }

  CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
  return valuePtr;
}

const __CFBoolean *FigSteeringManifestIsUniversal()
{
  result = FigCFDictionaryGetValue();
  if (result)
  {

    return CFBooleanGetValue(result);
  }

  return result;
}

uint64_t FigPathwayCloneGetURIReplacementHost()
{
  FigCFDictionaryGetValue();

  return FigCFDictionaryGetValue();
}

uint64_t FigPathwayCloneGetURIReplacementParams()
{
  FigCFDictionaryGetValue();

  return FigCFDictionaryGetValue();
}

uint64_t FigPathwayCloneGetURIReplacementPerVariantURIs()
{
  FigCFDictionaryGetValue();

  return FigCFDictionaryGetValue();
}

uint64_t FigPathwayCloneGetURIReplacementPerRenditionURIs()
{
  FigCFDictionaryGetValue();

  return FigCFDictionaryGetValue();
}

uint64_t FigPathwayCloneEquals()
{
  FigCFDictionaryGetValue();
  FigCFDictionaryGetValue();
  result = FigCFEqual();
  if (result)
  {
    FigCFDictionaryGetValue();
    FigCFDictionaryGetValue();
    result = FigCFEqual();
    if (result)
    {
      FigCFDictionaryGetValue();
      FigCFDictionaryGetValue();
      FigCFDictionaryGetValue();
      FigCFDictionaryGetValue();
      result = FigCFEqual();
      if (result)
      {
        FigCFDictionaryGetValue();
        FigCFDictionaryGetValue();
        FigCFDictionaryGetValue();
        FigCFDictionaryGetValue();
        result = FigCFEqual();
        if (result)
        {
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          result = FigCFEqual();
          if (result)
          {
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            FigCFDictionaryGetValue();
            return FigCFEqual() != 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigSteeringManifestCreate(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, const __CFURL *a3, int a4, char a5, __CFArray *a6, const __CFDictionary **a7)
{
  if (_os_feature_enabled_impl())
  {

    return FigSteeringManifestCreateRemote();
  }

  else
  {

    return FigSteeringManifestCreateInProcess(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t validateStringToStringDictionary(const void *a1, uint64_t a2, CFMutableArrayRef *a3)
{
  v10 = 0;
  context[0] = &v10;
  context[1] = a2;
  context[2] = a3;
  v6 = CFGetTypeID(a1);
  TypeID = CFDictionaryGetTypeID();
  if (v6 == TypeID)
  {
    CFDictionaryApplyFunction(a1, validateStringToStringDictionary_callback, context);
    return v10;
  }

  else
  {
    _SteeringLogError(TypeID, 4294951542, a3, @"%s: invalid data type", a2);
    return 4294951544;
  }
}

uint64_t FigWebVTTCaptionGroupConverterFromSampleBufferCreate(void *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_4(&v8);
    return v8;
  }

  if (!a1)
  {
    FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_3(&v8);
    return v8;
  }

  if (!*a1)
  {
    FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_2(&v8);
    return v8;
  }

  if (!a1[1])
  {
    FigWebVTTCaptionGroupConverterFromSampleBufferCreate_cold_1(&v8);
    return v8;
  }

  FigCaptionGroupConverterFromSampleBufferGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = *a1;
    v5 = WebVTTSampleBufferParserCreate((DerivedStorage + 16));
    if (!v5)
    {
      *a3 = 0;
    }
  }

  return v5;
}

void fcgcfs_webvtt_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  WebVTTSampleBufferParserDestroy(*(DerivedStorage + 16));
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 24) = 0;
  }
}

__CFString *fcgcfs_webvtt_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigWebVTTCaptionGroupConverterFromSampleBufferf %p>", a1);
  return Mutable;
}

uint64_t fcgcfs_webvtt_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (a1)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v6 = DerivedStorage;
        if (FigCFEqual())
        {
          v7 = *(v6 + 24);
          if (v7)
          {
            v8 = CFRetain(v7);
            result = 0;
            *a4 = v8;
          }

          else
          {
            return 4294954513;
          }
        }

        else
        {
          return 4294954512;
        }
      }

      else
      {
        fcgcfs_webvtt_copyProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      fcgcfs_webvtt_copyProperty_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    fcgcfs_webvtt_copyProperty_cold_3(&v12);
    return v12;
  }

  return result;
}

uint64_t fcgcfs_webvtt_setProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v5 = DerivedStorage;
      if (FigCFEqual())
      {
        if (!a3)
        {
          v7 = *(v5 + 24);
          *(v5 + 24) = 0;
          if (!v7)
          {
            return 0;
          }

          goto LABEL_7;
        }

        v6 = CFGetTypeID(a3);
        if (v6 == CFArrayGetTypeID())
        {
          v7 = *(v5 + 24);
          *(v5 + 24) = a3;
          CFRetain(a3);
          if (!v7)
          {
            return 0;
          }

LABEL_7:
          CFRelease(v7);
          return 0;
        }

        fcgcfs_webvtt_setProperty_cold_1(&v9);
        return v9;
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      fcgcfs_webvtt_setProperty_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    fcgcfs_webvtt_setProperty_cold_3(&v11);
    return v11;
  }
}

uint64_t fcgcfs_webvtt_getGenericFontFamilyNameFromGenericWebVTTFontName(const __CFString *a1)
{
  if (CFStringCompare(a1, *MEMORY[0x1E6960A78], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611D0];
    return *v4;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A70], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611C8];
    return *v4;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A68], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611C0];
    return *v4;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A60], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611B8];
    return *v4;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A58], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E69611B0];
    return *v4;
  }

  v2 = *MEMORY[0x1E6960A50];
  if (CFStringCompare(a1, *MEMORY[0x1E6960A50], 1uLL) == kCFCompareEqualTo)
  {
    return v2;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A28], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6961180];
    return *v4;
  }

  if (CFStringCompare(a1, *MEMORY[0x1E6960A30], 1uLL) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E6961188];
    return *v4;
  }

  v2 = *MEMORY[0x1E6960A40];
  if (CFStringCompare(a1, *MEMORY[0x1E6960A40], 1uLL))
  {
    v3 = *MEMORY[0x1E6961190];
    v2 = *MEMORY[0x1E6960A80];
    if (CFStringCompare(a1, *MEMORY[0x1E6960A80], 1uLL))
    {
      return v3;
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_4_69()
{

  return FigCaptionDynamicStyleCreate();
}

uint64_t OUTLINED_FUNCTION_6_56()
{

  return FigCreateCGColorSRGB();
}

CFDictionaryRef OUTLINED_FUNCTION_8_33()
{

  return CFAttributedStringGetAttributes(v0, 0, &STACK[0x260]);
}

uint64_t OUTLINED_FUNCTION_9_35()
{

  return FigCaptionDynamicStyleCreate();
}

uint64_t OUTLINED_FUNCTION_11_36()
{
  STACK[0x260] = 0;

  return FigGeometryDimensionCopyAsDictionary();
}

uint64_t FigVirtualDisplaySourceConduitCreate(uint64_t a1, void *a2, __CFString *a3, CFTypeRef *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a2)
  {
    FigVirtualDisplaySourceConduitCreate_cold_4();
    goto LABEL_20;
  }

  if (*a2 != 1)
  {
    FigVirtualDisplaySourceConduitCreate_cold_1();
    goto LABEL_20;
  }

  v5 = (a2 + 1);
  if (!a2[1])
  {
    FigVirtualDisplaySourceConduitCreate_cold_3();
LABEL_20:
    v19 = 4294955226;
    goto LABEL_21;
  }

  FigVirtualDisplaySourceGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v19 = v8;
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    *DerivedStorage = v10;
    *(DerivedStorage + 136) = 0;
    *(DerivedStorage + 72) = a2[2];
    *(DerivedStorage + 80) = a2[3];
    v11 = (*v5)();
    *(DerivedStorage + 64) = v11;
    if (!v11)
    {
      FigVirtualDisplaySourceConduitCreate_cold_2();
      v19 = 4294955225;
      goto LABEL_21;
    }

    v12 = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 16) = v12;
    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v12);
    *(DerivedStorage + 88) = v13;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __FigVirtualDisplaySourceConduitCreate_block_invoke;
    handler[3] = &__block_descriptor_tmp_53;
    handler[4] = DerivedStorage;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_source_set_timer(*(DerivedStorage + 88), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(*(DerivedStorage + 88));
    v14 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (DerivedStorage + 56));
    if (!v14)
    {
      v27 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = v27;
      if (os_log_type_enabled(v15, type))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = @"no name";
        if (a3)
        {
          v18 = a3;
        }

        v29 = 136315906;
        v30 = "FigVirtualDisplaySourceConduitCreate";
        v31 = 2048;
        *v32 = DerivedStorage;
        *&v32[8] = 2048;
        v33 = cf;
        v34 = 2112;
        v35 = v18;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19 = 0;
      *a4 = cf;
      return v19;
    }

    v19 = v14;
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v23 = v27;
    if (os_log_type_enabled(v22, type))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (v24)
    {
      v29 = 136315650;
      v30 = "FigVirtualDisplaySourceConduitCreate";
      v31 = 1024;
      *v32 = 653;
      *&v32[4] = 1024;
      *&v32[6] = v19;
      _os_log_send_and_compose_impl();
    }
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

void __FigVirtualDisplaySourceConduitCreate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 96))
  {
    v4 = *(v2 + 112);
    v3 = *(v2 + 120);
    v5 = *(v2 + 128);
    v6 = *(v2 + 104);

    srcconduit_submitPixelBuffer(v2, v6, v3, v5, v4);
  }

  else
  {
    __FigVirtualDisplaySourceConduitCreate_block_invoke_cold_1();
  }
}

void fvdsrcconduit_finalize(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdsrcconduit_finalize_block_invoke;
    block[3] = &__block_descriptor_tmp_6_1;
    block[4] = DerivedStorage;
    block[5] = a1;
    dispatch_sync(v4, block);
  }

  v5 = *(DerivedStorage + 88);
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(*(DerivedStorage + 88));
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 64) = 0;
  }

  v8 = *(DerivedStorage + 16);
  if (v8)
  {
    dispatch_release(v8);
    *(DerivedStorage + 16) = 0;
  }
}

uint64_t fvdsrcconduit_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"sourceType"))
  {
    v7 = @"Conduit";
LABEL_3:
    v8 = CFRetain(v7);
    result = 0;
    *a4 = v8;
    return result;
  }

  if (CFEqual(a2, @"sourceName"))
  {
    v7 = *DerivedStorage;
    if (*DerivedStorage)
    {
      goto LABEL_3;
    }
  }

  return 4294954512;
}

uint64_t __fvdsrcconduit_finalize_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 136) || *(v1 + 8))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    __break(1u);
  }

  return result;
}

uint64_t fvdsrcconduit_plugProcessor(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdsrcconduit_plugProcessor_block_invoke;
    block[3] = &unk_1E748B158;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v15;
    dispatch_sync(v4, block);
    v5 = *(v16 + 6);
    if (v5)
    {
      v14 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v14;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v19 = 136315650;
        v20 = "fvdsrcconduit_plugProcessor";
        v21 = 1024;
        v22 = 474;
        v23 = 1024;
        v24 = v5;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = *(v16 + 6);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = 4294955226;
    *(v16 + 6) = -12070;
  }

  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t fvdsrcconduit_unplugProcessor(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdsrcconduit_unplugProcessor_block_invoke;
    block[3] = &unk_1E748B180;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v15;
    dispatch_sync(v4, block);
    v5 = *(v16 + 6);
    if (v5)
    {
      v14 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v14;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v19 = 136315650;
        v20 = "fvdsrcconduit_unplugProcessor";
        v21 = 1024;
        v22 = 494;
        v23 = 1024;
        v24 = v5;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = *(v16 + 6);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = 4294955226;
    *(v16 + 6) = -12070;
  }

  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t fvdsrcconduit_start(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdsrcconduit_start_block_invoke;
  block[3] = &unk_1E748B1A8;
  block[4] = &v10;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[7] = a1;
  dispatch_sync(v5, block);
  v6 = 0;
  if (*(v11 + 6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t fvdsrcconduit_stop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdsrcconduit_stop_block_invoke;
  block[3] = &__block_descriptor_tmp_50;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t fvdsrcconduit_suspend()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __fvdsrcconduit_suspend_block_invoke;
  v4[3] = &unk_1E748B210;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t fvdsrcconduit_resume()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __fvdsrcconduit_resume_block_invoke;
  v4[3] = &unk_1E748B238;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFTypeRef *__fvdsrcconduit_plugProcessor_block_invoke(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (v2[34] || *(v2 + 1))
  {
    *(*(result[4] + 1) + 24) = -12073;
  }

  else
  {
    result = CFRetain(result[6]);
    *(v1[5] + 1) = v1[6];
  }

  return result;
}

void __fvdsrcconduit_unplugProcessor_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 136) && (v3 = *(v2 + 8), v3 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1[5] + 8) = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void __fvdsrcconduit_start_block_invoke(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (*(v2 + 136) || (v3 = *(v2 + 8)) == 0)
  {
    *(*(a1[4] + 8) + 24) = -12070;
    return;
  }

  v33 = 0;
  cf = 0;
  v32 = 0;
  v31 = xmmword_196E73240;
  v30 = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    v16 = -12782;
LABEL_15:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_20;
  }

  v5 = v4(v3, &cf, &v33);
  if (v5)
  {
    v16 = v5;
    goto LABEL_15;
  }

  v6 = FigDisplayModes_LookupTimingModeIDByIndex(v33, 0, &v32);
  if (v6)
  {
    v16 = v6;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    goto LABEL_20;
  }

  v7 = v32;
  v8 = *(v2 + 8);
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v9)
  {
    v16 = -12782;
LABEL_17:
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    goto LABEL_20;
  }

  v10 = v9(v8, v7, v7);
  if (v10)
  {
    v16 = v10;
    goto LABEL_17;
  }

  DimensionsFromTimingMode = FigDisplayModes_ExtractDimensionsFromTimingMode(v33, v32, &v31);
  if (!DimensionsFromTimingMode)
  {
    FigDisplayModes_ExtractOverscanInfoFromTimingMode(v33, v32, &v30);
    *(v2 + 48) = 60;
    FigDisplayModes_ExtractVSyncRateFromTimingMode(v33, v32, (v2 + 48));
    *(v2 + 24) = v31;
    v12 = 0.06;
    if (!v30)
    {
      v12 = 0.0;
    }

    *(v2 + 40) = v12;
    *(v2 + 140) = 1;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = 0;
    goto LABEL_21;
  }

  v16 = DimensionsFromTimingMode;
  v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
LABEL_20:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  *(*(a1[4] + 8) + 24) = v16;
  if (!*(*(a1[4] + 8) + 24))
  {
    v24 = a1[5];
    if (*(v24 + 72))
    {
      FigCFDictionaryGetValue();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      LODWORD(v31) = 0;
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionaryGetValue();
      FigCFDictionarySetValue();
      FigCFDictionaryGetValue();
      FigCFDictionarySetValue();
      FigCFDictionaryGetValue();
      FigCFDictionarySetValue();
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        CFDictionarySetValue(Mutable, @"SceneID", Value);
        *(v24 + 141) = 1;
      }

      FigCFDictionarySetValue();
      LODWORD(cf) = 0;
      LOBYTE(v33) = 0;
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v28 = cf;
      if (os_log_type_enabled(v27, v33))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        v35 = 136315650;
        v36 = "srcconduit_createFrameSourceStartOptions";
        v37 = 2048;
        v38 = v24;
        v39 = 2112;
        v40 = Mutable;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *(*(a1[4] + 8) + 24) = (*(a1[5] + 72))(*(a1[5] + 64), Mutable, fvdsrcconduit_submitFrame, fvdsrcconduit_postError, a1[7]);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  if (!*(*(a1[4] + 8) + 24))
  {
    LOBYTE(cf) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    if (cf)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    *(a1[5] + 136) = v19;
    LODWORD(v31) = 0;
    LOBYTE(v33) = 0;
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v31;
    if (os_log_type_enabled(v20, v33))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v23 = a1[5];
      v35 = 136315394;
      v36 = "fvdsrcconduit_start_block_invoke";
      v37 = 2048;
      v38 = v23;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void fvdsrcconduit_submitFrame(uint64_t a1, const void *a2, uint64_t a3, int a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v10 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdsrcconduit_submitFrame_block_invoke;
  block[3] = &__block_descriptor_tmp_37_0;
  block[4] = DerivedStorage;
  block[5] = a2;
  v12 = a4;
  block[6] = a3;
  block[7] = a5;
  dispatch_async(v10, block);
}

uint64_t fvdsrcconduit_postError()
{
  CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

void __fvdsrcconduit_submitFrame_block_invoke(uint64_t a1)
{
  srcconduit_submitPixelBuffer(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 64), *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    CFRelease(v3);
  }
}

void srcconduit_submitPixelBuffer(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, uint64_t a4, const void *a5)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  destinationBuffer = 0;
  v10 = *(a1 + 136);
  if (v10 == 2)
  {
    if (pixelBuffer)
    {
      if (*(a1 + 140))
      {
        v11 = *(a1 + 8);
        Width = CVPixelBufferGetWidth(pixelBuffer);
        Height = CVPixelBufferGetHeight(pixelBuffer);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (!v14 || v14(v11, 0, 1, &destinationBuffer, Width, Height) || VTPixelTransferSessionTransferImage(*(a1 + 56), pixelBuffer, destinationBuffer))
        {
LABEL_28:
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_29;
        }

        v15 = destinationBuffer;
        v16 = CVBufferCopyAttachment(pixelBuffer, @"FVDFrameUserData", 0);
        if (v16)
        {
          v17 = v16;
          CVBufferSetAttachment(v15, @"FVDFrameUserData", v16, kCVAttachmentMode_ShouldPropagate);
          CFRelease(v17);
        }

        if (*(a1 + 141))
        {
          v18 = CVPixelBufferGetWidth(v15);
          valuePtr[0] = v18 / CVPixelBufferGetWidth(pixelBuffer);
          v19 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, valuePtr);
          if (v19)
          {
            v20 = v19;
            CVBufferSetAttachment(v15, @"FVDPixelScaleFactor", v19, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v20);
          }

          v21 = CVBufferCopyAttachment(pixelBuffer, @"FVDWindowRectangles", 0);
          if (v21)
          {
            v22 = v21;
            CVBufferSetAttachment(v15, @"FVDWindowRectangles", v21, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v22);
          }

          v23 = CVBufferCopyAttachment(pixelBuffer, @"FVDWindowScaleFactor", 0);
          if (v23)
          {
            v24 = v23;
            CVBufferSetAttachment(v15, @"FVDWindowScaleFactor", v23, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v24);
          }
        }
      }

      else
      {
        destinationBuffer = CFRetain(pixelBuffer);
      }

      v31 = CVPixelBufferGetWidth(destinationBuffer);
      v34 = CVPixelBufferGetHeight(destinationBuffer);
      v30 = v34;
      v35 = *(a1 + 24);
      v36 = *(a1 + 32);
      v37 = v35 / v31;
      if (v35 / v31 >= v36 / v34)
      {
        v37 = v36 / v34;
      }

      v38 = (1.0 - *(a1 + 40)) * v37;
      v27 = v38 * v31;
      v26 = v38 * v30;
      v29 = (v35 - v38 * v31) * 0.5;
      v28 = (v36 - v38 * v30) * 0.5;
      v32 = 0.0;
      v25 = destinationBuffer;
      v33 = 0.0;
    }

    else
    {
      v25 = 0;
      v27 = *(MEMORY[0x1E695F058] + 16);
      v26 = *(MEMORY[0x1E695F058] + 24);
      v29 = *MEMORY[0x1E695F058];
      v28 = *(MEMORY[0x1E695F058] + 8);
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = *MEMORY[0x1E695F058];
    }

    v39 = *(a1 + 8);
    v40 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v40 && !v40(v39, v25, a3, a4, 0, v33, v32, v31, v30, v29, v28, v27, v26))
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  if (!v10)
  {
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_24:
    srcconduit_stopRetrying(a1);
    goto LABEL_38;
  }

LABEL_29:
  v43 = *(a1 + 88);
  v44 = dispatch_time(0, 50000000);
  dispatch_source_set_timer(v43, v44, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  v45 = *(a1 + 104);
  *(a1 + 104) = pixelBuffer;
  if (pixelBuffer)
  {
    CFRetain(pixelBuffer);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(a1 + 112);
  *(a1 + 112) = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  *(a1 + 120) = a3;
  *(a1 + 128) = a4;
  *(a1 + 96) = 1;
LABEL_38:
  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }
}

void srcconduit_stopRetrying(uint64_t a1)
{
  if (*(a1 + 96))
  {
    dispatch_source_set_timer(*(a1 + 88), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v2 = *(a1 + 104);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 104) = 0;
    }

    v3 = *(a1 + 112);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 112) = 0;
    }

    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 96) = 0;
  }
}

uint64_t __fvdsrcconduit_stop_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 136))
  {
    srcconduit_stopRetrying(result);
    v3 = *(a1 + 32);
    *(v3 + 136) = 0;
    v4 = *(v3 + 80);
    if (v4)
    {
      v4(*(v3 + 64));
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t __fvdsrcconduit_suspend_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 136))
  {
    *(v1 + 136) = 1;
  }

  else
  {
    v2 = result;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(v2 + 32) + 8) + 24) = -12070;
  }

  return result;
}

uint64_t __fvdsrcconduit_resume_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 136) == 1)
  {
    *(v1 + 136) = 2;
  }

  else
  {
    v2 = result;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(v2 + 32) + 8) + 24) = -12070;
  }

  return result;
}

uint64_t FigTTMLDocumentWriterCreateRegionStyleOptimizer(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateRegionStyleOptimizer_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateRegionStyleOptimizer_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterRegionStyleOptimizer_Finalize(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

uint64_t figTTMLDocumentWriterRegionStyleOptimizer_StartElement(uint64_t a1, int a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v4 = FigTTMLDocumentWriterElementCreate(*MEMORY[0x1E695E480], a2, *(DerivedStorage + 16), &cf);
  if (v4)
  {
    v7 = cf;
    if (!cf)
    {
      return v4;
    }

    goto LABEL_9;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    FigTTMLDocumentWriterElementAddChildElement(v5, cf);
  }

  else
  {
    if (cf)
    {
      v6 = CFRetain(cf);
    }

    else
    {
      v6 = 0;
    }

    *(DerivedStorage + 8) = v6;
  }

  v7 = cf;
  *(DerivedStorage + 16) = cf;
  if (v7)
  {
LABEL_9:
    CFRelease(v7);
  }

  return v4;
}

uint64_t figTTMLDocumentWriterRegionStyleOptimizer_EndElement(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  v3 = *(DerivedStorage + 8);
  if (v2 != v3)
  {
    goto LABEL_10;
  }

  v11 = 0;
  context = 0u;
  *cf = 0u;
  theArray = 0;
  v12 = xmmword_196E77640;
  if (!FigTTMLDocumentWriterElementCopyElementsAtPath(v3, &v12, 4, &theArray))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    cf[0] = v3;
    cf[1] = Mutable;
    *(&context + 1) = @"http://www.w3.org/ns/ttml#styling textAlign";
    v5 = theArray;
    v14.length = CFArrayGetCount(theArray);
    v14.location = 0;
    CFArrayApplyFunction(v5, v14, optimizeRegionStyleAttributesAux, &context);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  result = FigTTMLDocumentWriterElementWriteTree(*(DerivedStorage + 8), *DerivedStorage);
  if (!result)
  {
    v2 = *(DerivedStorage + 16);
LABEL_10:
    ParentElement = FigTTMLDocumentWriterElementGetParentElement(v2);
    result = 0;
    *(DerivedStorage + 16) = ParentElement;
  }

  return result;
}

uint64_t figTTMLDocumentWriterRegionStyleOptimizer_AddCaptionData(uint64_t a1, const void *a2)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementAddChildElement(*(DerivedStorage + 16), a2);
  return 0;
}

uint64_t figTTMLDocumentWriterRegionStyleOptimizer_SetAttribute(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigTTMLDocumentWriterElementSetAttribute(*(DerivedStorage + 16), a2, a3);
  return 0;
}

uint64_t figTTMLDocumentWriterRegionStyleOptimizer_Flush(uint64_t a1)
{
  FigTTMLDocumentWriterGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage[2])
  {
    return 4294950721;
  }

  v3 = *DerivedStorage;

  return FigTTMLDocumentWriterFlush(v3);
}

uint64_t findMostCommonStyleValue_0(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 8) < a2)
  {
    *a3 = result;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_93(CFArrayRef *a1)
{

  return FigTTMLDocumentWriterElementWalkTree(a1, v1, 0, 0, v2);
}

uint64_t fapg_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigAttributePartitionGeneratorID = result;
  return result;
}

uint64_t FigAttributePartitionGeneratorAddElement(CFMutableArrayRef *a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    FigAttributePartitionGeneratorAddElement_cold_5(&v11);
    return v11;
  }

  if (!a3)
  {
    FigAttributePartitionGeneratorAddElement_cold_4(&v11);
    return v11;
  }

  if (CFDictionaryGetValue(a1[3], a2))
  {
    FigAttributePartitionGeneratorAddElement_cold_1(&v11);
    return v11;
  }

  CFGetAllocator(a1);
  MEMORY[0x19A8D3660](&FigAttributePartitionElementGetTypeID_sRegisterFigAttributePartitionElementOnce, partitionElement_Register);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v8 = MutableCopy;
      if (a2)
      {
        v9 = CFRetain(a2);
      }

      else
      {
        v9 = 0;
      }

      v6[2] = v9;
      v6[3] = v8;
      goto LABEL_10;
    }

    FigAttributePartitionGeneratorAddElement_cold_2(v6, &v11);
  }

  else
  {
    FigAttributePartitionGeneratorAddElement_cold_3(&v11);
  }

  result = v11;
  if (v11)
  {
    return result;
  }

  v6 = 0;
LABEL_10:
  CFArrayAppendValue(a1[2], v6);
  CFDictionarySetValue(a1[3], a2, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t FigAttributePartitionGeneratorCopyPartitionReferences(uint64_t a1, const void *a2, void *a3)
{
  if (!a1)
  {
    FigAttributePartitionGeneratorCopyPartitionReferences_cold_5(&v8);
    return v8;
  }

  if (!a2)
  {
    FigAttributePartitionGeneratorCopyPartitionReferences_cold_4(&v8);
    return v8;
  }

  if (!a3)
  {
    FigAttributePartitionGeneratorCopyPartitionReferences_cold_3(&v8);
    return v8;
  }

  if (!*(a1 + 32))
  {
    FigAttributePartitionGeneratorCopyPartitionReferences_cold_2(&v8);
    return v8;
  }

  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (!Value)
  {
    FigAttributePartitionGeneratorCopyPartitionReferences_cold_1(&v8);
    return v8;
  }

  v5 = Value[6];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  result = 0;
  *a3 = v6;
  return result;
}

uint64_t FigAttributePartitionGeneratorCreate(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    FigAttributePartitionGeneratorCreate_cold_4(&v17);
    return v17;
  }

  v3 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigAttributePartitionGeneratorGetTypeID_sRegisterFigAttributePartitionGeneratorOnce, fapg_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigAttributePartitionGeneratorCreate_cold_3(&v17);
    return v17;
  }

  v5 = Instance;
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigAttributePartitionGeneratorCreate_cold_2(&v17);
LABEL_16:
    v14 = v17;
    v16 = v5;
LABEL_25:
    CFRelease(v16);
    return v14;
  }

  v7 = Mutable;
  v8 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    FigAttributePartitionGeneratorCreate_cold_1(v7, &v17);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v10)
  {
    v11 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v11)
    {
      v12 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v12)
      {
        v13 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v13)
        {
          v14 = 0;
          *(v5 + 32) = 0;
          *(v5 + 40) = v9;
          *(v5 + 16) = v7;
          *(v5 + 24) = v10;
          *(v5 + 56) = v11;
          *(v5 + 64) = v12;
          *(v5 + 72) = v13;
          *a2 = v5;
          return v14;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v14 = FigSignalErrorAtGM();
  CFRelease(v7);
  CFRelease(v9);
  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(v5);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    v16 = v12;
    goto LABEL_25;
  }

  return v14;
}

double fapg_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void fapg_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[9];
  if (v7)
  {

    CFRelease(v7);
  }
}

__CFString *fapg_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"[FigAttributePartitionGenerator(%p) elements=%p partitions=%p]", a1, *(a1 + 16), *(a1 + 40));
  return Mutable;
}

uint64_t partitionElement_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigAttributePartitionElementID = result;
  return result;
}

double partitionElement_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void partitionElement_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
    a1[2] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }
}

CFStringRef partitionElement_CopyFormattingDesc(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    v4 = *MEMORY[0x1E695E480];
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      v5 = Count;
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), i);
        CFStringAppend(Mutable, ValueAtIndex);
        CFStringAppend(Mutable, @" ");
      }
    }
  }

  else
  {
    Mutable = 0;
    v4 = *MEMORY[0x1E695E480];
  }

  v9 = @"<no-refs>";
  if (Mutable)
  {
    v9 = Mutable;
  }

  v10 = CFStringCreateWithFormat(v4, 0, @"[FigAttributePartitionElement %p]  owner = <%p>\nattributes = %p\nreferences = %@", a1, *(a1 + 16), *(a1 + 24), v9);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t partition_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigAttributePartitionID = result;
  return result;
}

uint64_t partition_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void partition_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

CFStringRef partition_CopyFormattingDesc(uint64_t a1)
{
  v1 = @"<NULL>";
  if (*(a1 + 16))
  {
    v1 = *(a1 + 16);
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAttributePartition %p] name = %@\nattributes = %p", a1, v1, *(a1 + 24));
}

CFStringRef partition_CopyDebugDesc(uint64_t a1)
{
  v1 = @"<NULL>";
  if (*(a1 + 16))
  {
    v1 = *(a1 + 16);
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAttributePartition %p] name = %@\nattributes = %p", a1, v1, *(a1 + 24));
}

void OUTLINED_FUNCTION_1_88()
{

  JUMPOUT(0x19A8D3660);
}

CFTypeRef xmlCopyMediaPlaylistPath(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    xmlCopyMediaPlaylistPath_cold_1();
    return 0;
  }

  Child = FigXMLNodeGetChild(v3, @"MediaPlaylist");
  if (!Child)
  {
    return 0;
  }

  v7 = FigXMLNodeGetChild(Child, a2);
  ContentAsCFString = FigXMLNodeGetContentAsCFString(v7);
  if (!ContentAsCFString)
  {
    return 0;
  }

  return CFRetain(ContentAsCFString);
}

uint64_t RegisterFigHLSPersistentStreamInfoBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigHLSPersistentStreamInfoGetTypeID()
{
  MEMORY[0x19A8D3660](&FigHLSPersistentStreamInfoGetClassID_sRegisterFigHLSPersistentStreamInfoBaseTypeOnce, RegisterFigHLSPersistentStreamInfoBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigHLSPersistentStreamInfoCreate(uint64_t a1, const __CFURL *a2, uint64_t a3, const void *a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  cf = 0;
  v87 = 1;
  v86 = 0;
  v84 = 0;
  v85 = 0;
  if (!a6)
  {
    FigHLSPersistentStreamInfoCreate_cold_37(buffer);
LABEL_166:
    v7 = 0;
    goto LABEL_167;
  }

  if (!a4)
  {
    FigHLSPersistentStreamInfoCreate_cold_36(buffer);
    goto LABEL_166;
  }

  v7 = a2;
  if (!a2)
  {
    FigHLSPersistentStreamInfoCreate_cold_35(buffer);
    goto LABEL_167;
  }

  MEMORY[0x19A8D3660](&FigHLSPersistentStreamInfoGetClassID_sRegisterFigHLSPersistentStreamInfoBaseTypeOnce, RegisterFigHLSPersistentStreamInfoBaseType);
  BlockBufferWithCFString = CMDerivedObjectCreate();
  if (BlockBufferWithCFString)
  {
    goto LABEL_153;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 32) = FigReadWriteLockCreate();
  *DerivedStorage = a1;
  *(DerivedStorage + 40) = CFRetain(v7);
  *(DerivedStorage + 128) = vdupq_n_s64(1uLL);
  *(DerivedStorage + 120) = 0;
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"StreamInfoClientAuditToken");
    if (Value)
    {
      v14 = CFRetain(Value);
      *(DerivedStorage + 144) = v14;
      if (v14)
      {
        *buffer = 0u;
        v83 = 0u;
        if (CFDataGetLength(v14) != 32)
        {
          FigHLSPersistentStreamInfoCreate_cold_1(buffer, &v94);
          v7 = 0;
          v81 = 0;
          v39 = v94;
          goto LABEL_124;
        }

        v15 = *(DerivedStorage + 144);
        v96.length = CFDataGetLength(v15);
        v96.location = 0;
        CFDataGetBytes(v15, v96, buffer);
        v16 = v83;
        *(DerivedStorage + 152) = *buffer;
        *(DerivedStorage + 168) = v16;
      }
    }

    else
    {
      *(DerivedStorage + 144) = 0;
    }

    v17 = CFDictionaryGetValue(a5, @"StreamInfoClientBundleIdentifier");
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(DerivedStorage + 184) = v17;
    v18 = CFDictionaryGetValue(a5, @"StreamInfoMemoryPool");
    *(DerivedStorage + 200) = v18;
    if (v18)
    {
      CFRetain(v18);
    }
  }

  *(DerivedStorage + 16) = CFRetain(a4);
  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 112) = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  *(DerivedStorage + 24) = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(DerivedStorage + 16), *(DerivedStorage + 40), 1u);
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if (!FigCFURLDoesDirectoryExist())
  {
    FigHLSPersistentStreamInfoCreate_cold_34(buffer);
    goto LABEL_166;
  }

  v20 = FigGetAllocatorForMedia();
  v21 = CFURLCreateCopyAppendingPathComponent(v20, *(DerivedStorage + 24), @"StreamInfoRoot.xml", 0);
  *(DerivedStorage + 104) = v21;
  if (!v21)
  {
    FigHLSPersistentStreamInfoCreate_cold_33(buffer);
    goto LABEL_166;
  }

  if (!FigFileDoesFileExist())
  {
    FigGetAllocatorForMedia();
    BlockBufferWithCFString = FigCreateBlockBufferWithCFString();
    if (!BlockBufferWithCFString)
    {
      v22 = FigGetAllocatorForMedia();
      v7 = CFURLCreateCopyAppendingPathComponent(v22, *(DerivedStorage + 24), @"StreamInfoRoot.xml", 0);
      if (!v7)
      {
        FigHLSPersistentStreamInfoCreate_cold_32(buffer);
        goto LABEL_167;
      }

      v23 = FigXMLNodeWriteXMLFileFromBlockBufferAtURL(v84, 0x1F0B33258, v7);
      if (v23)
      {
        if (v23 == -17913)
        {
          FigHLSPersistentStreamInfoCreate_cold_40(buffer);
        }

        else
        {
          FigHLSPersistentStreamInfoCreate_cold_39(buffer);
        }

        goto LABEL_167;
      }

      v24 = lockLockFile(DerivedStorage);
      if (!v24)
      {
        *(DerivedStorage + 112) = 1;
        FigGetAllocatorForMedia();
        v24 = FigCreateBlockBufferWithCFString();
        if (!v24)
        {
          v25 = FigGetAllocatorForMedia();
          v26 = CFURLCreateCopyAppendingPathComponent(v25, *(DerivedStorage + 24), @"StreamInfoBoot.xml", 0);
          if (v26)
          {
            v81 = v26;
            v27 = FigXMLNodeWriteXMLFileFromBlockBufferAtURL(v85, 0x1F0B33258, v26);
            if (!v27)
            {
              *(DerivedStorage + 72) = 1;
              goto LABEL_26;
            }

            v39 = v27;
            if (v27 != -17913)
            {
              goto LABEL_124;
            }

            FigHLSPersistentStreamInfoCreate_cold_38(buffer);
LABEL_123:
            v39 = *buffer;
            goto LABEL_124;
          }

          FigHLSPersistentStreamInfoCreate_cold_31(buffer);
LABEL_167:
          v81 = 0;
          goto LABEL_123;
        }
      }

      v39 = v24;
LABEL_158:
      v81 = 0;
      goto LABEL_124;
    }

LABEL_153:
    v39 = BlockBufferWithCFString;
    v7 = 0;
    goto LABEL_158;
  }

  BlockBufferWithCFString = lockLockFile(DerivedStorage);
  if (BlockBufferWithCFString)
  {
    goto LABEL_153;
  }

  v7 = 0;
  v81 = 0;
  *(DerivedStorage + 112) = v86;
LABEL_26:
  v28 = FigGetAllocatorForMedia();
  v29 = CFURLCreateCopyAppendingPathComponent(v28, *(DerivedStorage + 24), @"StreamInfoRoot.xml", 0);
  if (v29)
  {
    v30 = v29;
    v31 = FigGetAllocatorForMedia();
    IsWithinParentDirectory = FigXMLNodeCreateFromURL(v31, v30, (DerivedStorage + 88));
    if (!IsWithinParentDirectory)
    {
      v33 = *(DerivedStorage + 88);
      FigXMLNodeGetTag(v33);
      v34 = FigCFEqual();
      if (!v33 || !v34)
      {
        FigHLSPersistentStreamInfoCreate_cold_3(buffer);
LABEL_175:
        v39 = *buffer;
LABEL_33:
        CFRelease(v30);
        if (v39)
        {
          goto LABEL_124;
        }

        goto LABEL_34;
      }

      Child = FigXMLNodeGetChild(v33, @"BootImage");
      ContentAsCFString = FigXMLNodeGetContentAsCFString(Child);
      IsWithinParentDirectory = FigFileValidateFileNameIsWithinParentDirectory();
      if (!IsWithinParentDirectory)
      {
        v37 = FigGetAllocatorForMedia();
        v38 = CFURLCreateCopyAppendingPathComponent(v37, *(DerivedStorage + 24), ContentAsCFString, 0);
        if (v38)
        {
          v39 = 0;
          *(DerivedStorage + 96) = v38;
          goto LABEL_33;
        }

        FigHLSPersistentStreamInfoCreate_cold_2(buffer);
        goto LABEL_175;
      }
    }

    v39 = IsWithinParentDirectory;
    goto LABEL_33;
  }

  FigHLSPersistentStreamInfoCreate_cold_4(buffer);
  v39 = *buffer;
  if (*buffer)
  {
    goto LABEL_124;
  }

LABEL_34:
  v40 = FigGetAllocatorForMedia();
  v41 = FigXMLNodeCreateFromURL(v40, *(DerivedStorage + 96), (DerivedStorage + 80));
  if (v41)
  {
    v39 = v41;
    goto LABEL_124;
  }

  v42 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v42, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 48) = Mutable;
  if (!Mutable)
  {
    FigHLSPersistentStreamInfoCreate_cold_30(buffer);
    goto LABEL_123;
  }

  v44 = FigGetAllocatorForMedia();
  v45 = CFArrayCreateMutable(v44, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 56) = v45;
  if (!v45)
  {
    FigHLSPersistentStreamInfoCreate_cold_29(buffer);
    goto LABEL_123;
  }

  *buffer = 0;
  valuePtr = -1;
  v94 = 0;
  v46 = *(DerivedStorage + 80);
  if (!v46)
  {
    FigHLSPersistentStreamInfoCreate_cold_16(&v92);
    v54 = 0;
    DictionaryForSegmentEntry = 0;
    v56 = 0;
    v39 = v92;
    goto LABEL_68;
  }

  MediaSegments = xmlGetMediaSegments(v46);
  if (!MediaSegments || (v48 = MediaSegments, !FigXMLNodeGetCountOfChildren(MediaSegments)) || FigXMLNodeGetCountOfChildren(v48) < 1)
  {
    v39 = 0;
    v54 = 0;
    DictionaryForSegmentEntry = 0;
    v56 = 0;
    goto LABEL_68;
  }

  v49 = 0;
  v50 = *MEMORY[0x1E695E480];
  while (1)
  {
    ChildAtIndex = FigXMLNodeGetChildAtIndex(v48, v49);
    FigXMLNodeGetTag(ChildAtIndex);
    if (!FigCFEqual())
    {
      goto LABEL_65;
    }

    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    if (FigXMLNodeCopyAttributeAsCFString(ChildAtIndex, @"URL", buffer))
    {
      FigHLSPersistentStreamInfoCreate_cold_5(v95);
      v54 = 0;
LABEL_150:
      DictionaryForSegmentEntry = 0;
      v56 = 0;
      goto LABEL_152;
    }

    v52 = FigGetAllocatorForMedia();
    v53 = *(DerivedStorage + 128);
    *(DerivedStorage + 128) = v53 + 1;
    v54 = CFStringCreateWithFormat(v52, 0, @"%ld", v53);
    if (!v54)
    {
      FigHLSPersistentStreamInfoCreate_cold_15(v95);
      goto LABEL_150;
    }

    if (FigXMLNodeGetAttributeAsDouble(ChildAtIndex, @"Tim", &v92))
    {
      FigHLSPersistentStreamInfoCreate_cold_6(v95);
      goto LABEL_150;
    }

    if (FigXMLNodeGetAttributeAsDouble(ChildAtIndex, @"Dur", &v91))
    {
      FigHLSPersistentStreamInfoCreate_cold_7(v95);
      goto LABEL_150;
    }

    if (FigXMLNodeGetAttributeAsInt64(ChildAtIndex, @"Off", &v89))
    {
      FigHLSPersistentStreamInfoCreate_cold_8(v95);
      goto LABEL_150;
    }

    AttributeAsInt64 = FigXMLNodeGetAttributeAsInt64(ChildAtIndex, @"SeqNum", &valuePtr);
    if (valuePtr == -1)
    {
      v56 = 0;
      goto LABEL_53;
    }

    if (AttributeAsInt64)
    {
      FigHLSPersistentStreamInfoCreate_cold_9(v95);
      goto LABEL_150;
    }

    v56 = CFNumberCreate(v50, kCFNumberSInt64Type, &valuePtr);
    if (!v56)
    {
      break;
    }

LABEL_53:
    if (FigXMLNodeGetAttributeAsInt64(ChildAtIndex, @"Len", &v90))
    {
      FigHLSPersistentStreamInfoCreate_cold_11(v95);
      goto LABEL_151;
    }

    if (FigXMLNodeCopyAttributeAsCFString(ChildAtIndex, @"PATH", &v94))
    {
      FigHLSPersistentStreamInfoCreate_cold_12(v95);
      goto LABEL_151;
    }

    v57 = FigFileValidateFileNameIsWithinParentDirectory();
    if (v57)
    {
      v39 = v57;
      DictionaryForSegmentEntry = 0;
      goto LABEL_68;
    }

    DictionaryForSegmentEntry = createDictionaryForSegmentEntry(*buffer, v89, v56, v90, v94);
    if (!DictionaryForSegmentEntry)
    {
      FigHLSPersistentStreamInfoCreate_cold_14(v95);
      goto LABEL_152;
    }

    if (CFDictionaryGetValue(*(DerivedStorage + 48), v54))
    {
      FigHLSPersistentStreamInfoCreate_cold_13(v95);
      goto LABEL_152;
    }

    CFDictionarySetValue(*(DerivedStorage + 48), v54, DictionaryForSegmentEntry);
    CFArrayAppendValue(*(DerivedStorage + 56), v54);
    if (*buffer)
    {
      CFRelease(*buffer);
      *buffer = 0;
    }

    CFRelease(DictionaryForSegmentEntry);
    CFRelease(v54);
    if (v94)
    {
      CFRelease(v94);
      v94 = 0;
    }

    if (v56)
    {
      CFRelease(v56);
    }

    valuePtr = -1;
LABEL_65:
    if (++v49 >= FigXMLNodeGetCountOfChildren(v48))
    {
      v39 = 0;
      v54 = 0;
      DictionaryForSegmentEntry = 0;
      v56 = 0;
      goto LABEL_68;
    }
  }

  FigHLSPersistentStreamInfoCreate_cold_10(v95);
LABEL_151:
  DictionaryForSegmentEntry = 0;
LABEL_152:
  v39 = v95[0];
LABEL_68:
  if (*buffer)
  {
    CFRelease(*buffer);
  }

  if (DictionaryForSegmentEntry)
  {
    CFRelease(DictionaryForSegmentEntry);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v39)
  {
    goto LABEL_124;
  }

  v59 = FigGetAllocatorForMedia();
  v60 = CFDictionaryCreateMutable(v59, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 64) = v60;
  if (!v60)
  {
    FigHLSPersistentStreamInfoCreate_cold_28(buffer);
    goto LABEL_123;
  }

  v61 = *(DerivedStorage + 80);
  *buffer = 0;
  valuePtr = -1;
  v94 = 0;
  MediaInitializationSegments = xmlGetMediaInitializationSegments(v61);
  if (!MediaInitializationSegments)
  {
    v39 = 0;
    v74 = 0;
    goto LABEL_115;
  }

  v63 = MediaInitializationSegments;
  if (!FigXMLNodeGetCountOfChildren(MediaInitializationSegments) || FigXMLNodeGetCountOfChildren(v63) < 1)
  {
    v39 = 0;
    v69 = 0;
    v74 = 0;
    goto LABEL_110;
  }

  v64 = 0;
  v65 = *MEMORY[0x1E695E480];
  while (2)
  {
    v66 = FigXMLNodeGetChildAtIndex(v63, v64);
    FigXMLNodeGetTag(v66);
    if (!FigCFEqual())
    {
      goto LABEL_106;
    }

    v91 = 0;
    v92 = 0;
    if (FigXMLNodeCopyAttributeAsCFString(v66, @"URL", &v94))
    {
      FigHLSPersistentStreamInfoCreate_cold_17(&v90);
      v69 = 0;
      goto LABEL_147;
    }

    v67 = v94;
    v68 = FigGetAllocatorForMedia();
    v69 = CFURLCreateWithString(v68, v67, 0);
    if (!v69)
    {
      FigHLSPersistentStreamInfoCreate_cold_25();
      v39 = 0;
      goto LABEL_108;
    }

    v70 = FigCFURLIsLocalResource();
    CFRelease(v69);
    if (v70)
    {
      goto LABEL_107;
    }

    v71 = FigGetAllocatorForMedia();
    v72 = *(DerivedStorage + 136);
    *(DerivedStorage + 136) = v72 + 1;
    v69 = CFStringCreateWithFormat(v71, 0, @"%ld", v72);
    if (!v69)
    {
      FigHLSPersistentStreamInfoCreate_cold_24(&v90);
      goto LABEL_147;
    }

    if (FigXMLNodeGetAttributeAsInt64(v66, @"Off", &v91))
    {
      FigHLSPersistentStreamInfoCreate_cold_18(&v90);
      goto LABEL_147;
    }

    v73 = FigXMLNodeGetAttributeAsInt64(v66, @"SeqNum", &valuePtr);
    if (valuePtr == -1)
    {
      v74 = 0;
      goto LABEL_95;
    }

    if (!v73)
    {
      v74 = CFNumberCreate(v65, kCFNumberSInt64Type, &valuePtr);
      if (!v74)
      {
        FigHLSPersistentStreamInfoCreate_cold_20(&v90);
        goto LABEL_148;
      }

LABEL_95:
      if (FigXMLNodeGetAttributeAsInt64(v66, @"Len", &v92))
      {
        FigHLSPersistentStreamInfoCreate_cold_21(&v90);
        goto LABEL_148;
      }

      if (FigXMLNodeCopyAttributeAsCFString(v66, @"PATH", buffer))
      {
        FigHLSPersistentStreamInfoCreate_cold_22(&v90);
        goto LABEL_148;
      }

      v75 = FigFileValidateFileNameIsWithinParentDirectory();
      if (v75)
      {
        v39 = v75;
        goto LABEL_110;
      }

      DictionaryForInitializationSegmentEntry = createDictionaryForInitializationSegmentEntry(v94, v91, v74, v92, *buffer);
      if (!DictionaryForInitializationSegmentEntry)
      {
        FigHLSPersistentStreamInfoCreate_cold_23(&v90);
        goto LABEL_148;
      }

      v77 = DictionaryForInitializationSegmentEntry;
      CFDictionarySetValue(*(DerivedStorage + 64), v69, DictionaryForInitializationSegmentEntry);
      if (v94)
      {
        CFRelease(v94);
        v94 = 0;
      }

      CFRelease(v69);
      CFRelease(v77);
      if (*buffer)
      {
        CFRelease(*buffer);
        *buffer = 0;
      }

      if (v74)
      {
        CFRelease(v74);
      }

      valuePtr = -1;
LABEL_106:
      if (++v64 >= FigXMLNodeGetCountOfChildren(v63))
      {
LABEL_107:
        v39 = 0;
        v69 = 0;
LABEL_108:
        v74 = 0;
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  FigHLSPersistentStreamInfoCreate_cold_19(&v90);
LABEL_147:
  v74 = 0;
LABEL_148:
  v39 = v90;
LABEL_110:
  if (v94)
  {
    CFRelease(v94);
  }

  if (v69)
  {
    CFRelease(v69);
  }

LABEL_115:
  if (*buffer)
  {
    CFRelease(*buffer);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v39)
  {
LABEL_124:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_182;
  }

  v78 = *(DerivedStorage + 80);
  if (!v78)
  {
    v79 = 1353;
    goto LABEL_180;
  }

  FigXMLNodeGetTag(*(DerivedStorage + 80));
  if (!FigCFEqual())
  {
    v79 = 1356;
LABEL_180:
    if (FigHLSPersistentStreamInfoCreate_cold_27(v79, buffer))
    {
      goto LABEL_181;
    }

    goto LABEL_123;
  }

  if (FigHLSPersistentStreamInfoCreate_cold_26(v78, DerivedStorage, buffer))
  {
    goto LABEL_123;
  }

LABEL_181:
  v39 = 0;
  *a6 = cf;
  cf = 0;
LABEL_182:
  if (v85)
  {
    CFRelease(v85);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  return v39;
}

uint64_t xmlGetStreamInfo(uint64_t a1)
{
  FigXMLNodeGetTag(a1);
  if (FigCFEqual())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t HLSPersistentStreamInfo_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {

    return streamInfo_Invalidate(DerivedStorage);
  }

  else
  {
    HLSPersistentStreamInfo_Invalidate_cold_1(&v2);
    return v2;
  }
}

uint64_t HLSPersistentStreamInfo_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return HLSPersistentStreamInfo_Finalize_cold_1();
  }

  v1 = DerivedStorage;
  streamInfo_Invalidate(DerivedStorage);
  result = FigReadWriteLockDestroy();
  *(v1 + 32) = 0;
  return result;
}

CFStringRef HLSPersistentStreamInfo_CopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, @"[FigHLSPersistentStreamInfo]{%@}", *(DerivedStorage + 40));
}

uint64_t HLSPersistentStreamInfo_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    HLSPersistentStreamInfo_CopyProperty_cold_6(&v19);
    return v19;
  }

  v7 = DerivedStorage;
  v8 = FigReadWriteLockLockForRead();
  if (v8)
  {
    v9 = v8;
    goto LABEL_19;
  }

  if (!a2)
  {
    HLSPersistentStreamInfo_CopyProperty_cold_5(&v19);
    goto LABEL_37;
  }

  if (!a4)
  {
    HLSPersistentStreamInfo_CopyProperty_cold_4(&v19);
    goto LABEL_37;
  }

  if (!*(v7 + 8))
  {
    if (CFEqual(a2, @"StreamInfoMediaSegmentList"))
    {
      if (*(v7 + 48))
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        v11 = *(v7 + 48);
LABEL_10:
        Copy = CFDictionaryCreateCopy(AllocatorForMedia, v11);
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (CFEqual(a2, @"StreamInfoMediaSegmentIDList"))
    {
      if (*(v7 + 56))
      {
        v13 = FigGetAllocatorForMedia();
        Copy = CFArrayCreateCopy(v13, *(v7 + 56));
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (CFEqual(a2, @"StreamInfoMediaInitializationSegmentList"))
    {
      if (*(v7 + 64))
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        v11 = *(v7 + 64);
        goto LABEL_10;
      }

LABEL_17:
      Copy = 0;
      goto LABEL_18;
    }

    if (CFEqual(@"StreamInfoMediaPlaylistNetworkURL", a2))
    {
      Copy = xmlCopyMediaPlaylistURL(v7);
      if (Copy)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (CFEqual(@"StreamInfoMediaTypeList", a2))
    {
      v19 = 0;
      ps_xmlCopyMediaTypeList(v7, &v19);
      v9 = 0;
      *a4 = v19;
      goto LABEL_19;
    }

    if (CFEqual(@"StreamInfoStreamType", a2))
    {
      Copy = xmlCopyStreamType(v7);
      goto LABEL_18;
    }

    if (CFEqual(@"StreamInfoPeakBandwidth", a2))
    {
      Copy = xmlCopyStreamBandwidth(v7, @"PeakBandwidth");
      if (Copy)
      {
        goto LABEL_18;
      }

      HLSPersistentStreamInfo_CopyProperty_cold_1(&v19);
    }

    else
    {
      if (!CFEqual(@"StreamInfoAverageBandwidth", a2))
      {
        if (CFEqual(@"StreamInfoVersion", a2))
        {
          Copy = xmlCopyStreamInfoVersion(v7);
          if (Copy)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (!CFEqual(@"StreamInfoEvictionPolicy", a2))
          {
            if (CFEqual(@"StreamInfoCompressable", a2))
            {
              StreamInfo = xmlGetStreamInfo(*(v7 + 80));
              IsCompressible = xmlIsCompressible(StreamInfo);
            }

            else
            {
              if (!CFEqual(@"StreamInfoCompleteState", a2))
              {
                if (CFEqual(@"StreamInfoMediaBytesStored", a2))
                {
                  v19 = *(v7 + 192);
                  Copy = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v19);
                  if (!Copy)
                  {
                    HLSPersistentStreamInfo_CopyProperty_cold_3(&v20);
                    v9 = v20;
                    goto LABEL_19;
                  }
                }

                else
                {
                  if (!CFEqual(@"StreamInfoUniqueIdentifier", a2))
                  {
                    v9 = 0;
                    goto LABEL_19;
                  }

                  Copy = xmlCopyUniqueIdentifier(v7);
                }

                goto LABEL_18;
              }

              v17 = xmlGetStreamInfo(*(v7 + 80));
              IsCompressible = ps_xmlIsComplete(v17);
            }

            v18 = MEMORY[0x1E695E4C0];
            if (IsCompressible)
            {
              v18 = MEMORY[0x1E695E4D0];
            }

            Copy = CFRetain(*v18);
LABEL_18:
            v9 = 0;
            *a4 = Copy;
            goto LABEL_19;
          }

          Copy = xmlCopyEvictionPolicy(v7);
          if (Copy)
          {
            goto LABEL_18;
          }
        }

LABEL_23:
        v9 = 4294950360;
        goto LABEL_19;
      }

      Copy = xmlCopyStreamBandwidth(v7, @"AverageBandwidth");
      if (Copy)
      {
        goto LABEL_18;
      }

      HLSPersistentStreamInfo_CopyProperty_cold_2(&v19);
    }

LABEL_37:
    v9 = v19;
    goto LABEL_19;
  }

  v9 = 4294954511;
LABEL_19:
  FigReadWriteLockUnlockForRead();
  return v9;
}

CFTypeRef xmlCopyMediaPlaylistURL(uint64_t a1)
{
  v1 = *(a1 + 80);
  FigXMLNodeGetTag(v1);
  v2 = FigCFEqual();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    xmlCopyMediaPlaylistURL_cold_1();
    return 0;
  }

  Child = FigXMLNodeGetChild(v1, @"MediaPlaylist");
  if (!Child)
  {
    return 0;
  }

  v5 = FigXMLNodeGetChild(Child, @"NetworkURL");
  ContentAsCFString = FigXMLNodeGetContentAsCFString(v5);
  if (!ContentAsCFString)
  {
    return 0;
  }

  return CFRetain(ContentAsCFString);
}

void ps_xmlCopyMediaTypeList(uint64_t a1, CFMutableArrayRef *a2)
{
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    ps_xmlCopyMediaTypeList_cold_1();
    return;
  }

  Child = FigXMLNodeGetChild(v3, @"MediaTypeList");
  if (!Child)
  {
    if (!a2)
    {
      return;
    }

    Mutable = 0;
    goto LABEL_16;
  }

  v7 = Child;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (FigXMLNodeGetCountOfChildren(v7) >= 1)
  {
    v10 = 0;
    do
    {
      ChildAtIndex = FigXMLNodeGetChildAtIndex(v7, v10);
      FigXMLNodeGetTag(ChildAtIndex);
      if (FigCFEqual())
      {
        FigXMLNodeGetAttribute();
        FigCFStringGetOSTypeValue();
        FigCFArrayAppendInt32();
      }

      ++v10;
    }

    while (v10 < FigXMLNodeGetCountOfChildren(v7));
  }

  if (a2)
  {
LABEL_16:
    *a2 = Mutable;
    return;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

CFTypeRef xmlCopyStreamType(uint64_t a1)
{
  v1 = *(a1 + 80);
  FigXMLNodeGetTag(v1);
  v2 = FigCFEqual();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    xmlCopyStreamType_cold_1();
    return 0;
  }

  Child = FigXMLNodeGetChild(v1, @"Type");
  if (!FigXMLNodeGetContentAsCFString(Child))
  {
    return 0;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v5 = @"StreamInfoSupplementalStream";
      goto LABEL_10;
    }

    return 0;
  }

  v5 = @"StreamInfoMainStream";
LABEL_10:

  return CFRetain(v5);
}

uint64_t xmlCopyStreamInfoVersion(uint64_t a1)
{
  v1 = *(a1 + 80);
  FigXMLNodeGetTag(v1);
  v2 = FigCFEqual();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    xmlCopyStreamInfoVersion_cold_1();
    return 0;
  }

  else
  {
    Child = FigXMLNodeGetChild(v1, @"Version");

    return FigXMLNodeGetContentAsCFString(Child);
  }
}

CFTypeRef xmlCopyEvictionPolicy(uint64_t a1)
{
  v1 = *(a1 + 80);
  FigXMLNodeGetTag(v1);
  v2 = FigCFEqual();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    xmlCopyEvictionPolicy_cold_1();
    return 0;
  }

  Child = FigXMLNodeGetChild(v1, @"EvictionPolicy");
  ContentAsCFString = FigXMLNodeGetContentAsCFString(Child);
  if (!ContentAsCFString)
  {
    return 0;
  }

  return CFRetain(ContentAsCFString);
}

BOOL xmlIsCompressible(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    xmlIsCompressible_cold_1();
    return 0;
  }

  Child = FigXMLNodeGetChild(a1, @"Compressable");
  if (!Child)
  {
    return 0;
  }

  v2 = FigXMLNodeCopyContentAsCFString(Child, &cf);
  v3 = 0;
  v4 = cf;
  if (!v2 && cf)
  {
    v3 = FigCFEqual() != 0;
    v4 = cf;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

BOOL ps_xmlIsComplete(uint64_t a1)
{
  if (a1)
  {
    Child = FigXMLNodeGetChild(a1, @"Complete");
    FigXMLNodeGetContentAsCFString(Child);
    return FigCFEqual() != 0;
  }

  else
  {
    ps_xmlIsComplete_cold_1();
    return 0;
  }
}

CFStringRef *xmlCopyUniqueIdentifier(uint64_t a1)
{
  v5 = 0;
  v1 = *(a1 + 80);
  FigXMLNodeGetTag(v1);
  v2 = FigCFEqual();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    xmlCopyUniqueIdentifier_cold_1();
    return 0;
  }

  else
  {
    result = FigXMLNodeGetChild(v1, @"UniqueIdentifier");
    if (result)
    {
      FigXMLNodeCopyContentAsCFString(result, &v5);
      return v5;
    }
  }

  return result;
}

uint64_t xmlSetStreamType(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    xmlSetStreamType_cold_1(&v11);
    return v11;
  }

  else
  {
    cf = FigXMLNodeGetChild(v3, @"Type");
    if (cf)
    {
      FigXMLNodeRemoveAndClearChild(v3, &cf);
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v7 = FigXMLNodeCreateChildNode(AllocatorForMedia, v3, @"Type", &cf);
    v8 = cf;
    if (!v7)
    {
      FigXMLNodeContentSetCFString(cf, a2);
      v8 = cf;
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v7;
}

uint64_t xmlSetEvictionPolicy(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 80);
  FigXMLNodeGetTag(v3);
  v4 = FigCFEqual();
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    xmlSetEvictionPolicy_cold_1(&v11);
    return v11;
  }

  else
  {
    cf = FigXMLNodeGetChild(v3, @"EvictionPolicy");
    if (cf)
    {
      FigXMLNodeRemoveAndClearChild(v3, &cf);
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v7 = FigXMLNodeCreateChildNode(AllocatorForMedia, v3, @"EvictionPolicy", &cf);
    v8 = cf;
    if (!v7)
    {
      v7 = FigXMLNodeContentSetCFString(cf, a2);
      v8 = cf;
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  return v7;
}

uint64_t xmlSetStreamBandwidth(uint64_t a1, const __CFNumber *a2, const __CFString *a3)
{
  v13 = 0;
  v5 = *(a1 + 80);
  FigXMLNodeGetTag(v5);
  v6 = FigCFEqual();
  CFNumberGetValue(a2, kCFNumberSInt64Type, &v13);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    xmlSetStreamBandwidth_cold_1(&cf);
    return cf;
  }

  Child = FigXMLNodeGetChild(v5, a3);
  if (!Child)
  {
    cf = 0;
    goto LABEL_9;
  }

  v9 = CFRetain(Child);
  cf = v9;
  if (!v9)
  {
LABEL_9:
    AllocatorForMedia = FigGetAllocatorForMedia();
    v11 = FigXMLNodeCreateChildNode(AllocatorForMedia, v5, a3, &cf);
    v9 = cf;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v11 = FigXMLNodeContentSetInt64(v9, v13);
  v9 = cf;
LABEL_11:
  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

uint64_t HLSPersistentStreamInfo_CopyMediaPlaylist(uint64_t a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFEqual();
  v9 = FigCFEqual();
  if (!DerivedStorage)
  {
    HLSPersistentStreamInfo_CopyMediaPlaylist_cold_5(&v25);
    return v25;
  }

  v10 = v9;
  v11 = FigReadWriteLockLockForRead();
  if (v11)
  {
    v21 = v11;
    goto LABEL_28;
  }

  if (*(DerivedStorage + 8))
  {
    HLSPersistentStreamInfo_CopyMediaPlaylist_cold_1(&v25);
    goto LABEL_27;
  }

  if (!a2)
  {
    HLSPersistentStreamInfo_CopyMediaPlaylist_cold_3(&v25);
    goto LABEL_27;
  }

  if (!(v8 | v10))
  {
    HLSPersistentStreamInfo_CopyMediaPlaylist_cold_2(&v25);
    goto LABEL_27;
  }

  if (v10)
  {
    v12 = @"PathToLocalCopy";
  }

  else
  {
    v12 = @"PathToOffline";
  }

  v13 = xmlCopyMediaPlaylistPath(DerivedStorage, v12);
  if (!v13)
  {
    HLSPersistentStreamInfo_CopyMediaPlaylist_cold_4(&v25);
LABEL_27:
    v21 = v25;
    goto LABEL_28;
  }

  v14 = v13;
  if (!a4 || (v15 = *(DerivedStorage + 24), cf = 0, v25 = 0, v23 = 0, AllocatorForMedia = FigGetAllocatorForMedia(), (v17 = MEMORY[0x19A8CD910](AllocatorForMedia, v14, 0, 0, v15)) == 0))
  {
    v21 = 0;
    if (!a3)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v18 = v17;
  FigGetAllocatorForMedia();
  v19 = CMByteStreamCreateForFileURL();
  if (v19)
  {
    goto LABEL_35;
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v20)
  {
    v21 = 4294954514;
    goto LABEL_18;
  }

  v19 = v20(cf, 0, &v23);
  if (v19)
  {
LABEL_35:
    v21 = v19;
  }

  else
  {
    FigGetAllocatorForMedia();
    v21 = CMCreateContiguousBlockBufferFromStream();
    if (v21)
    {
      if (v25)
      {
        CFRelease(v25);
      }
    }

    else
    {
      *a4 = v25;
      v25 = 0;
    }
  }

LABEL_18:
  CFRelease(v18);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!a3)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (!v21)
  {
    *a3 = v14;
LABEL_28:
    FigReadWriteLockUnlockForRead();
    return v21;
  }

LABEL_25:
  FigReadWriteLockUnlockForRead();
  CFRelease(v14);
  return v21;
}

uint64_t HLSPersistentStreamInfo_CopyMediaSegment(uint64_t a1, void *a2, CMBlockBufferRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    v7 = FigReadWriteLockLockForRead();
    if (!v7)
    {
      v7 = copyMediaSegment(v6, *(v6 + 48), a2, a3);
    }

    v8 = v7;
    FigReadWriteLockUnlockForRead();
  }

  else
  {
    HLSPersistentStreamInfo_CopyMediaSegment_cold_1(&v10);
    return v10;
  }

  return v8;
}

uint64_t HLSPersistentStreamInfo_CopyMediaInitializationSegment(uint64_t a1, void *a2, CMBlockBufferRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    v7 = FigReadWriteLockLockForRead();
    if (!v7)
    {
      v7 = copyMediaSegment(v6, *(v6 + 64), a2, a3);
    }

    v8 = v7;
    FigReadWriteLockUnlockForRead();
  }

  else
  {
    HLSPersistentStreamInfo_CopyMediaInitializationSegment_cold_1(&v10);
    return v10;
  }

  return v8;
}

uint64_t writeMediaSegment(uint64_t a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t a4, uint64_t a5, int a6, CFTypeRef *a7, double a8, double a9)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v19 = CFStringCreateWithFormat(AllocatorForMedia, 0, @"(%g)_(%lld)_(%g).frag", *&a9, a4, *&a8);
    if (v19)
    {
      v20 = FigGetAllocatorForMedia();
      v21 = CFURLCreateCopyAppendingPathComponent(v20, *(a1 + 24), v19, 0);
      if (v21)
      {
        v22 = v21;
        FigGetAllocatorForMedia();
        v23 = CMByteStreamCreateForFileURL();
        if (v23)
        {
          v43 = v23;
          v28 = 0;
          goto LABEL_30;
        }

        v50 = v22;
        DataLength = CMBlockBufferGetDataLength(a2);
        v25 = CMByteStreamWriteBlockBuffer();
        if (v25)
        {
          v43 = v25;
          v28 = 0;
          goto LABEL_29;
        }

        v49 = a7;
        v26 = FigGetAllocatorForMedia();
        if (a6)
        {
          v27 = (a1 + 128);
          v28 = CFStringCreateWithFormat(v26, 0, @"%ld", *(a1 + 128));
          if (v28)
          {
            v29 = CMBlockBufferGetDataLength(a2);
            DictionaryForSegmentEntry = createDictionaryForSegmentEntry(a3, a4, a5, v29, v19);
            if (DictionaryForSegmentEntry)
            {
              v31 = DictionaryForSegmentEntry;
              CFDictionarySetValue(*(a1 + 48), v28, DictionaryForSegmentEntry);
              CFArrayAppendValue(*(a1 + 56), v28);
              v32 = *(a1 + 80);
              MediaSegments = xmlGetMediaSegments(v32);
              if (MediaSegments)
              {
                v34 = CFRetain(MediaSegments);
                cf[0] = v34;
                if (v34)
                {
                  v35 = v34;
                  goto LABEL_21;
                }
              }

              else
              {
                cf[0] = 0;
              }

              v40 = FigGetAllocatorForMedia();
              FigXMLNodeGetTag(v32);
              if (FigCFEqual())
              {
                v41 = v32;
              }

              else
              {
                v41 = 0;
              }

              ChildNode = FigXMLNodeCreateChildNode(v40, v41, @"MediaSegments", cf);
              v35 = cf[0];
              if (ChildNode)
              {
                v43 = ChildNode;
                if (!cf[0])
                {
LABEL_23:
                  if (v43)
                  {
LABEL_28:
                    CFRelease(v31);
LABEL_29:
                    v22 = v50;
LABEL_30:
                    CFRelease(v22);
                    goto LABEL_31;
                  }

                  goto LABEL_24;
                }

LABEL_22:
                CFRelease(v35);
                goto LABEL_23;
              }

LABEL_21:
              v43 = addNodeToMediaSegmentList(v31, v35);
              v35 = cf[0];
              if (!cf[0])
              {
                goto LABEL_23;
              }

              goto LABEL_22;
            }

            writeMediaSegment_cold_1(cf);
          }

          else
          {
            writeMediaSegment_cold_2(cf);
          }
        }

        else
        {
          v27 = (a1 + 136);
          v28 = CFStringCreateWithFormat(v26, 0, @"%ld", *(a1 + 136));
          if (v28)
          {
            v47 = CMBlockBufferGetDataLength(a2);
            DictionaryForInitializationSegmentEntry = createDictionaryForInitializationSegmentEntry(a3, a4, a5, v47, v19);
            if (DictionaryForInitializationSegmentEntry)
            {
              v31 = DictionaryForInitializationSegmentEntry;
              CFDictionarySetValue(*(a1 + 64), v28, DictionaryForInitializationSegmentEntry);
              v45 = xmlSetMediaInitializationSegmentArray(*(a1 + 80), *(a1 + 64));
              if (v45)
              {
LABEL_27:
                v43 = v45;
                goto LABEL_28;
              }

LABEL_24:
              ++*v27;
              if (v49)
              {
                *v49 = CFRetain(v28);
              }

              *(a1 + 72) = 1;
              v44 = *(a1 + 192) + DataLength;
              *(a1 + 192) = v44;
              v45 = xmlSetMediaBytesStored(*(a1 + 80), v44);
              goto LABEL_27;
            }

            writeMediaSegment_cold_3(cf);
          }

          else
          {
            writeMediaSegment_cold_4(cf);
          }
        }

        v43 = LODWORD(cf[0]);
        goto LABEL_29;
      }

      writeMediaSegment_cold_5(cf);
    }

    else
    {
      writeMediaSegment_cold_6(cf);
    }
  }

  else
  {
    cf[0] = 0;
    cf[1] = 0;
    v52 = 0;
    v36 = FigDigestSHA1Create();
    FigGetAllocatorForMedia();
    BytesFromCFString = FigCreateBytesFromCFString();
    if (BytesFromCFString)
    {
      v38 = BytesFromCFString;
      MEMORY[0x19A8D1890](v36, BytesFromCFString, 0);
      FigDigestSHA1GetDigest();
      FigGetAllocatorForMedia();
      FigCreateBase32EncodedStringFromBytes();
      v39 = FigGetAllocatorForMedia();
      CFAllocatorDeallocate(v39, v38);
    }

    MEMORY[0x19A8D18B0](v36);
    writeMediaSegment_cold_7(cf);
    v19 = 0;
  }

  v28 = 0;
  v43 = LODWORD(cf[0]);
LABEL_31:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v43;
}

__CFDictionary *createDictionaryForSegmentEntry(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"URL", a1);
    CFDictionaryAddValue(v9, @"PATH", a5);
    FigCFDictionarySetDouble();
    FigCFDictionarySetDouble();
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetValue();
  }

  return v9;
}

__CFDictionary *createDictionaryForInitializationSegmentEntry(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"URL", a1);
    CFDictionaryAddValue(v9, @"PATH", a5);
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    FigCFDictionarySetValue();
  }

  return v9;
}

uint64_t xmlSetMediaBytesStored(uint64_t a1, uint64_t a2)
{
  FigXMLNodeGetTag(a1);
  v4 = FigCFEqual();
  if (a1 && v4)
  {
    cf = FigXMLNodeGetChild(a1, @"MediaBytesStored");
    if (cf)
    {
      FigXMLNodeRemoveAndClearChild(a1, &cf);
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = FigXMLNodeCreateChildNode(AllocatorForMedia, a1, @"MediaBytesStored", &cf);
    v7 = cf;
    if (!v6)
    {
      v6 = FigXMLNodeContentSetInt64(cf, a2 & ~(a2 >> 63));
      v7 = cf;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    xmlSetMediaBytesStored_cold_1();
    return 0;
  }

  return v6;
}

CFStringRef *xmlGetMediaSegments(uint64_t a1)
{
  FigXMLNodeGetTag(a1);
  v2 = FigCFEqual();
  if (a1 && v2)
  {

    return FigXMLNodeGetChild(a1, @"MediaSegments");
  }

  else
  {
    xmlGetMediaSegments_cold_1();
    return 0;
  }
}

CFStringRef *xmlGetMediaInitializationSegments(uint64_t a1)
{
  FigXMLNodeGetTag(a1);
  v2 = FigCFEqual();
  if (a1 && v2)
  {

    return FigXMLNodeGetChild(a1, @"MediaInitializationSegments");
  }

  else
  {
    xmlGetMediaInitializationSegments_cold_1();
    return 0;
  }
}

uint64_t commitStreamInfo(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = CFURLCreateCopyAppendingPathComponent(AllocatorForMedia, *(a1 + 24), @"StreamInfoBoot.xml", 0);
  if (!v3)
  {
    commitStreamInfo_cold_1(&v8);
    return v8;
  }

  v4 = v3;
  if (*(a1 + 72) != 1)
  {
    goto LABEL_5;
  }

  v5 = FigXMLNodeWriteToFilePath(*(a1 + 80), v3);
  if (v5 == -17913)
  {
    fig_log_get_emitter();
    v6 = FigSignalErrorAtGM();
    goto LABEL_6;
  }

  v6 = v5;
  if (!v5)
  {
LABEL_5:
    v6 = 0;
    *(a1 + 72) = 0;
  }

LABEL_6:
  CFRelease(v4);
  return v6;
}

uint64_t OUTLINED_FUNCTION_5_61()
{

  return FigReadWriteLockLockForWrite();
}

uint64_t FigMediaProcessorCreateForTemporalMetadataFilter(const __CFAllocator *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, const void *a7, int a8, uint64_t *a9)
{
  cf = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  if (a2 && a3)
  {
    v16 = FigSampleBufferProcessorCreateForTemporalMetadataFilter(a1, a6, &v26);
    if (v16)
    {
      goto LABEL_9;
    }

    v16 = FigSampleBufferProviderCreateForBufferQueue(a1, a2, &cf);
    if (v16)
    {
      goto LABEL_9;
    }

    v21 = *a4;
    v22 = *(a4 + 16);
    v19 = *a5;
    v20 = *(a5 + 16);
    v16 = FigSampleBufferConsumerCreateForBufferQueue(a3, &v21, &v19, &v24);
    if (v16)
    {
      goto LABEL_9;
    }

    if (a7)
    {
      v16 = FigActivitySchedulerCreateForCFRunLoop(a1, a7, &v23);
      if (v16)
      {
LABEL_9:
        v17 = v16;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (v24)
        {
          CFRelease(v24);
        }

        return v17;
      }
    }

    else
    {
      v16 = FigActivitySchedulerCreateForNewThread(a1, a8, @"com.apple.coremedia.mediaprocessor.temporalmetadatafilter", &v23);
      if (v16)
      {
        goto LABEL_9;
      }
    }

    v16 = FigMediaProcessorCreate(a1, v26, cf, v24, v23, a9);
    goto LABEL_9;
  }

  return FigSignalErrorAtGM();
}

uint64_t CreatePesPrivateForDTS(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040CE3128F8uLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  a1[105] = PesDTSProcessData;
  a1[106] = PesDTSCleanPrivateData;
  a1[107] = PesDTSDeletePrivateData;
  a1[6] = v4;
  return result;
}

uint64_t PesDTSProcessData(uint64_t a1, CMBlockBufferRef theSourceBuffer, size_t offsetToData, char *__src, size_t length, uint64_t a6)
{
  returnedPointerOut[2] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v11 = *(a1 + 48);
  v12 = *(v11 + 48);
  if (v12)
  {
    v27 = a6;
    v13 = (v11 + 33);
    do
    {
      if (length >= 12 - v12)
      {
        v14 = 12 - v12;
      }

      else
      {
        v14 = length;
      }

      if (__src)
      {
        memcpy(v13 + v12, __src, v14);
        __src += v14;
      }

      else
      {
        v15 = CMBlockBufferCopyDataBytes(theSourceBuffer, offsetToData, v14, v13 + v12);
        if (v15)
        {
          goto LABEL_64;
        }

        __src = 0;
        offsetToData += v14;
      }

      v16 = *(v11 + 48) + v14;
      *(v11 + 48) = v16;
      if (v16 < 0xC)
      {
        return 0;
      }

      length -= v14;
      if (*v13 == 25230975)
      {
        break;
      }

      v12 = v16 - 1;
      *(v11 + 48) = v16 - 1;
      v17 = *(v11 + 34);
      v18 = *(v11 + 42);
      *(v11 + 43) = *(v11 + 44);
      *(v11 + 41) = v18;
      *v13 = v17;
    }

    while (v16 == 12);
    *(v11 + 48) = 0;
    SetUpFrame(a1, v11, v11 + 33);
    v15 = PesAddMemoryToFrameMemory(a1, (v11 + 33), 0xCuLL, *(a1 + 624), &v30, &v29);
    a6 = v27;
    if (v15)
    {
      goto LABEL_64;
    }
  }

  if (*(a6 + 24))
  {
    v19 = *(a6 + 16);
    *v11 = *a6;
    *(v11 + 16) = v19;
  }

  v20 = *(v11 + 32);
  if (length > 0xB || *(v11 + 32))
  {
    while (1)
    {
      if (!v20)
      {
        if (__src && *__src == 25230975)
        {
          goto LABEL_26;
        }

        if (!theSourceBuffer || (returnedPointerOut[0] = 0, CMBlockBufferAccessDataBytes(theSourceBuffer, offsetToData, 4uLL, temporaryBlock, returnedPointerOut)) || *returnedPointerOut[0] != 25230975)
        {
          if (*(v11 + 56))
          {
            *(v11 + 56) = 0;
          }

          v22 = __src == 0;
          if (__src)
          {
            ++__src;
          }

          else
          {
            __src = 0;
          }

          if (v22)
          {
            ++offsetToData;
          }

          --length;
          goto LABEL_49;
        }

        if (!*(v11 + 32))
        {
          break;
        }
      }

      if (!__src)
      {
        goto LABEL_22;
      }

LABEL_27:
      v15 = PesAddMemoryToFrameMemory(a1, __src, length, *(a1 + 624), &v30, &v29);
      if (v15)
      {
        goto LABEL_64;
      }

      v21 = v30;
      __src += v30;
LABEL_29:
      length -= v21;
      if (v29)
      {
        ++*(v11 + 60);
        *(v11 + 32) = 0;
        if (*(a1 + 658) || *(a1 + 505))
        {
          v15 = FigMPEG2AudioFrameQueueEntryAdjustTimestampsAndEmit(a1, a1 + 456);
          if (v15)
          {
            goto LABEL_64;
          }
        }

        PesCleanAfterFrameEmit(a1);
      }

LABEL_49:
      if (length <= 0xB)
      {
        goto LABEL_50;
      }

      v20 = *(v11 + 32);
    }

    if (!__src)
    {
      v15 = CMBlockBufferAccessDataBytes(theSourceBuffer, offsetToData, 0xCuLL, (v11 + 33), &v28);
      if (v15)
      {
        goto LABEL_64;
      }

      SetUpFrame(a1, v11, v28);
LABEL_22:
      v15 = PesAddBlockBufferToFrameBlockBuffer(a1, theSourceBuffer, offsetToData, length, *(a1 + 624), &v30, &v29);
      if (v15)
      {
        goto LABEL_64;
      }

      __src = 0;
      v21 = v30;
      offsetToData += v30;
      goto LABEL_29;
    }

LABEL_26:
    SetUpFrame(a1, v11, __src);
    goto LABEL_27;
  }

LABEL_50:
  if (!length)
  {
    return 0;
  }

  if (__src)
  {
    v28 = __src;
    goto LABEL_55;
  }

  v15 = CMBlockBufferAccessDataBytes(theSourceBuffer, offsetToData, length, returnedPointerOut, &v28);
  if (v15)
  {
LABEL_64:
    v25 = v15;
    PesErrorHandling(a1, v15);
    return v25;
  }

  __src = v28;
LABEL_55:
  v23 = 0;
  while (__src[v23] != 127)
  {
    v28 = &__src[++v23];
    if (length == v23)
    {
      return 0;
    }
  }

  *(v11 + 33) = 127;
  v24 = length - v23;
  if (length - 1 != v23)
  {
    memcpy((v11 + 34), &__src[v23 + 1], ~v23 + length);
  }

  *(v11 + 48) = v24;
  return 0;
}

uint64_t PesDTSCleanPrivateData(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = 0;
  *(v1 + 56) = 0;
  *(v1 + 60) = 0;
  return result;
}

__n128 SetUpFrame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 624) = (bswap32(*(a3 + 4)) >> 4) & 0x3FFF;
  *(a1 + 584) = ((bswap32(*(a3 + 4)) >> 13) & 0xFE0) + 32;
  v5 = DTSAudioSampleFrequencies[(*(a3 + 8) >> 2) & 0xF];
  if (*(a1 + 768) != v5)
  {
    FigMPEG2ParserSetAudioCharacteristics(a1, v5);
  }

  *(a2 + 32) = 1;
  *(a2 + 56) = 1;
  result = *a2;
  v7 = *(a2 + 16);
  *(a1 + 480) = *a2;
  *(a1 + 496) = v7;
  *(a2 + 24) = 0;
  return result;
}

uint64_t FigPlayerAirPlayCreateWithOptions(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  if (_os_feature_enabled_impl())
  {

    return FigPlayerAirPlayCreateCoordinatedWithOptions(a1, a2, a3, a4);
  }

  else
  {

    return FigPlayerAirPlayCreateNonCoordinatedWithOptions(a1, a2, a3, a4);
  }
}

uint64_t FigPlayerAirPlayCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  if (_os_feature_enabled_impl())
  {

    return FigPlayerAirPlayCreateCoordinatedWithOptions(a1, a2, 0, a4);
  }

  else
  {

    return FigPlayerAirPlayCreateNonCoordinatedWithOptions(a1, a2, 0, a4);
  }
}

uint64_t __FigPlayerAirPlayCreateCoordinatedWithOptions_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t __FigPlayerAirPlayCreateCoordinatedWithOptions_block_invoke_2()
{
  gIsiOSDeviceWithMedusaSupport = MGGetBoolAnswer();
  result = notify_register_check("com.apple.springboard.lockstate", &gFigPlayerAirPlayDeviceLockedStateNotifyToken);
  if (!result)
  {
    gFigPlayerAirPlayDeviceLockedStateNotifyTokenIsValid = 1;
  }

  return result;
}

void papc_handleRouteNotification(const void *a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_handleRouteNotification_cold_1();
  }

  else
  {
    if (FigCFEqual())
    {
      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v10 = *(DerivedStorage + 56);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __papc_handleRouteNotification_block_invoke;
      v16[3] = &__block_descriptor_72_e5_v8__0l;
      v16[4] = DerivedStorage;
      v16[5] = a2;
      v16[6] = a5;
      v16[7] = a1;
      v16[8] = a3;
      v11 = v16;
      goto LABEL_22;
    }

    if (FigCFEqual())
    {
      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      if (a5)
      {
        CFRetain(a5);
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v10 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_handleRouteNotification_block_invoke_43;
      block[3] = &__block_descriptor_72_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a2;
      block[6] = a1;
      block[7] = a3;
      block[8] = a5;
      v11 = block;
      goto LABEL_22;
    }

    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v14 = 0;
        if (!FigCFDictionaryGetBooleanIfPresent())
        {
          goto LABEL_23;
        }

        if (a2)
        {
          CFRetain(a2);
        }

        if (a3)
        {
          CFRetain(a3);
        }

        if (a5)
        {
          CFRetain(a5);
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v10 = *(DerivedStorage + 56);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __papc_handleRouteNotification_block_invoke_2;
        v12[3] = &__block_descriptor_73_e5_v8__0l;
        v13 = v14;
        v12[4] = DerivedStorage;
        v12[5] = a5;
        v12[6] = a2;
        v12[7] = a1;
        v12[8] = a3;
        v11 = v12;
LABEL_22:
        dispatch_async(v10, v11);
LABEL_23:
        FigReadWriteLockUnlockForRead();
        return;
      }

      FigCFEqual();
    }
  }

  FigReadWriteLockUnlockForRead();

  papc_postNotificationAsync(a2, a1, a3, a2, a5);
}

uint64_t papc_reflectSubPlayerNotification(const void *a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_reflectSubPlayerNotification_cold_1();
  }

  else
  {
    papc_postNotificationAsync(a2, a1, a3, a2, a5);
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t papc_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    v21 = FigSignalErrorAtGM();
    goto LABEL_22;
  }

  if (!CFEqual(a2, @"IsValid"))
  {
    if (CFEqual(a2, @"PickerContextUUID"))
    {
      FigBytePumpGetFigBaseObject(*(DerivedStorage + 40));
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {
        v13 = v12(v11, 0x1F0B25938, a3, a4);
      }

      else
      {
        v13 = -12782;
      }

      *(v29 + 6) = v13;
      goto LABEL_12;
    }

    if (CFEqual(a2, @"ExternalPlaybackCapabilities"))
    {
      v14 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_CopyProperty_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = a4;
      block[5] = DerivedStorage;
      dispatch_sync(v14, block);
      goto LABEL_12;
    }

    if (CFEqual(a2, @"ParticipatingInCoordinatedPlayback"))
    {
      v17 = MEMORY[0x1E695E4D0];
      if (!*(DerivedStorage + 83))
      {
        v17 = MEMORY[0x1E695E4C0];
      }

      v9 = CFRetain(*v17);
      goto LABEL_4;
    }

    v18 = *(DerivedStorage + 56);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __papc_CopyProperty_block_invoke_2;
    v22[3] = &unk_1E748B3B0;
    v22[6] = DerivedStorage;
    v22[7] = a2;
    v22[8] = a4;
    v22[9] = a1;
    v22[4] = &v24;
    v22[5] = &v28;
    dispatch_sync(v18, v22);
    if (!*(v25 + 24))
    {
      goto LABEL_13;
    }

    FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 32));
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v20)
    {
      v21 = v20(FigBaseObject, a2, a3, a4);
    }

    else
    {
      v21 = -12782;
    }

LABEL_22:
    *(v29 + 6) = v21;
    goto LABEL_13;
  }

  v9 = CFRetain(*MEMORY[0x1E695E4D0]);
LABEL_4:
  *a4 = v9;
LABEL_12:
  *(v25 + 24) = 0;
LABEL_13:
  FigReadWriteLockUnlockForRead();
  v15 = *(v29 + 6);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  return v15;
}

uint64_t papc_SetProperty(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetProperty_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    v5 = FPSupport_HandlePlayerSetPropertyAndForwardToSubPlayer(a1, *(DerivedStorage + 32), a2);
  }

  FigReadWriteLockUnlockForRead();
  return v5;
}

uint64_t iapc_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    iapc_Invalidate_cold_1();
    return 0;
  }

  else
  {
    v1 = *(DerivedStorage + 24);
    if (v1)
    {
      v2 = CFRetain(v1);
    }

    else
    {
      v2 = 0;
    }

    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    *(DerivedStorage + 16) = 1;
    FigSimpleMutexUnlock();
    FigReadWriteLockLockForWrite();
    FigReadWriteLockUnlockForWrite();
    if (v3)
    {
      v4 = *(DerivedStorage + 48);
      v5 = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(*(v5 + 8), v4);
      FigSimpleMutexUnlock();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    if (v2)
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject(v2);
      if (FigBaseObject)
      {
        v7 = FigBaseObject;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v8)
        {
          v9 = v8(v7);
        }

        else
        {
          v9 = 4294954514;
        }
      }

      else
      {
        v9 = 4294954516;
      }
    }

    else
    {
      v9 = 0;
    }

    if (*(DerivedStorage + 40))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      FigBytePumpGetFigBaseObject(*(DerivedStorage + 40));
      if (v10)
      {
        v11 = v10;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v12)
        {
          v12(v11);
        }
      }
    }

    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  return v9;
}

uint64_t FigAirPlayRouteSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBytePumpGetFigBaseObject(a1);
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2, a3);
}

uint64_t iapc_reflectSubItemNotification()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    return iapc_reflectSubItemNotification_cold_1();
  }

  FigSimpleMutexUnlock();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void __iapc_sendUnhandledURLResponse_block_invoke(uint64_t a1)
{
  cf[19] = *MEMORY[0x1E69E9840];
  cf[16] = @"RemoteRequestID";
  cf[17] = @"IsContentKeyRequest";
  cf[18] = @"IsCustomURLRequest";
  FigCFDictionaryGetValue();
  FigCFEqual();
  CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys();
  FigCFDictionaryGetValue();
  FigCFNumberGetUInt64();
  FigReadWriteLockLockForRead();
  if (!*(*(a1 + 40) + 16))
  {
    cf[0] = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 24) || !*(DerivedStorage + 104))
    {
      goto LABEL_26;
    }

    CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x1E6961E20], *MEMORY[0x1E695E480], cf);
    }

    v9 = FigCFEqual();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (!v9)
    {
LABEL_26:
      if (CFDictionaryContainsKey(CopyRemovingKeys, *MEMORY[0x1E6960D00]))
      {
        ErrorPayload = iapc_createErrorPayload(-17224, 1);
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v12 = *(a1 + 48);
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        papc_postNotificationAsync(v12, DefaultLocalCenter, @"FailedToPlayToEnd", *(a1 + 56), ErrorPayload);
        if (ErrorPayload)
        {
          CFRelease(ErrorPayload);
        }
      }
    }

    if (dword_1EAF17268)
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    papc_playbackSessionPerformRemoteAction(*(a1 + 48));
  }

  FigReadWriteLockUnlockForRead();
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  if (CopyRemovingKeys)
  {
    CFRelease(CopyRemovingKeys);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }
}

CFNumberRef iapc_createErrorPayload(int a1, char a2)
{
  valuePtr = a1;
  v3 = *MEMORY[0x1E695E480];
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (result)
  {
    iapc_createErrorPayload_cold_1(v3, result, a2, &v6);
    return v6;
  }

  return result;
}

void papc_postNotificationAsync(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v11 = *(DerivedStorage + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __papc_postNotificationAsync_block_invoke;
  block[3] = &__block_descriptor_84_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a3;
  block[7] = a4;
  v13 = 0;
  block[8] = a5;
  block[9] = a1;
  dispatch_async(v11, block);
}

void __papc_postNotificationAsync_block_invoke(void *a1)
{
  FigReadWriteLockLockForRead();
  if (*(a1[4] + 24))
  {
    __papc_postNotificationAsync_block_invoke_cold_1();
  }

  else
  {
    CMNotificationCenterPostNotification();
  }

  FigReadWriteLockUnlockForRead();
  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {

    CFRelease(v6);
  }
}