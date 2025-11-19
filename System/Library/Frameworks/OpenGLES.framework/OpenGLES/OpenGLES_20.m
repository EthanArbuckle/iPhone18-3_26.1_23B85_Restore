uint64_t PPStreamChunkListAddChunk(uint64_t result, void *a2)
{
  if (!*result)
  {
    *result = a2;
    *a2 = 0;
  }

  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 8) = a2;
    *a2 = v2;
  }

  a2[1] = 0;
  *(result + 8) = a2;
  ++*(result + 16);
  return result;
}

void PPStreamChunkListFree(_DWORD *a1)
{
  v2 = a1[4];
  if (v2 >= 1)
  {
    v3 = *a1;
    do
    {
      v4 = v3[1];
      free(v3);
      v3 = v4;
      --v2;
    }

    while (v2);
  }

  free(a1);
}

uint64_t PPStreamChunkListInsertChunkBeforeChunk(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (!a3)
  {
    if (!*result)
    {
      *result = a2;
      *a2 = 0;
    }

    v4 = (result + 8);
    v5 = *(result + 8);
    if (v5)
    {
      *(v5 + 8) = a2;
      *a2 = v5;
    }

    a2[1] = 0;
    goto LABEL_11;
  }

  v3 = *a3;
  *a2 = *a3;
  a2[1] = a3;
  if (v3)
  {
    *(v3 + 8) = a2;
  }

  *a3 = a2;
  v4 = result;
  if (*result == a3)
  {
LABEL_11:
    *v4 = a2;
  }

  ++*(result + 16);
  return result;
}

uint64_t PPStreamChunkListInsertChunkAfterChunk(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    *a2 = 0;
    v5 = *result;
    if (*result)
    {
      *v5 = a2;
    }

    a2[1] = v5;
    v4 = result;
    goto LABEL_9;
  }

  v3 = *(a3 + 8);
  *a2 = a3;
  a2[1] = v3;
  if (v3)
  {
    *v3 = a2;
  }

  *(a3 + 8) = a2;
  v4 = (result + 8);
  if (*(result + 8) == a3)
  {
LABEL_9:
    *v4 = a2;
  }

  ++*(result + 16);
  return result;
}

void PPStreamChunkListRemoveChunk(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (*a2 + 8);
  if (!*a2)
  {
    v5 = a1;
  }

  *v5 = v4;
  if (!v4)
  {
    v4 = (a1 + 8);
  }

  *v4 = v3;
  free(a2);
  --*(a1 + 16);
}

void *PPStreamChunkListSort(void *result)
{
  v1 = *result;
  if (*result)
  {
    do
    {
      if (!v1)
      {
        break;
      }

      v2 = v1 + 1;
      v3 = v1[1];
      if (!v3)
      {
        break;
      }

      v4 = 0;
      v5 = v1;
      do
      {
        v6 = v3;
        if (*(v1 + 8) > *(v3 + 32))
        {
          v7 = *(v3 + 8);
          if (v7)
          {
            v8 = v6[1];
          }

          else
          {
            v8 = result + 1;
          }

          *v8 = v1;
          v9 = *v1;
          if (*v1)
          {
            *(v9 + 8) = v6;
            v7 = v6[1];
          }

          else
          {
            *result = v6;
            v5 = v6;
          }

          *v2 = v7;
          *v6 = v9;
          v6[1] = v1;
          v4 = 1;
          *v1 = v6;
        }

        v2 = v6 + 1;
        v3 = v6[1];
        v1 = v6;
      }

      while (v3);
      v1 = v5;
    }

    while (v4);
  }

  return result;
}

uint64_t *PPStreamChunkListGetStream(uint64_t *result, uint64_t a2, _DWORD *a3)
{
  v3 = *result;
  *a3 = 0;
  if (v3)
  {
    v6 = 0;
    v14 = 0;
    v7 = v3;
    do
    {
      result = PPStreamChunkGetStream(v7, a2, &v14, 0, &v12);
      v6 += v14;
      *a3 = v6;
      v7 = *(v7 + 8);
    }

    while (v7);
    if (a2)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        result = PPStreamChunkGetStream(v3, a2, &v14, 0, &v12);
        *(a2 + 8 * v8) = result;
        v10 = v14;
        if (v14 < 2)
        {
          ++v8;
        }

        else
        {
          --v14;
          v11 = 1;
          do
          {
            v8 = v9 + 1;
            result = PPStreamChunkGetStream(v3, a2, &v13, v11, &v12);
            *(a2 + 8 * v9) = result;
            ++v11;
            ++v9;
          }

          while (v10 != v11);
        }

        v3 = *(v3 + 8);
      }

      while (v3);
    }
  }

  return result;
}

uint64_t PPStreamChunkListChunkAtIndex(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a2;
    while (2)
    {
      result = 0;
      switch(*(v2 + 16))
      {
        case 0:
        case 1:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xC:
        case 0xD:
          if (v3)
          {
            goto LABEL_10;
          }

          return v2;
        case 2:
        case 4:
        case 5:
        case 6:
          v5 = *(v2 + 32);
          goto LABEL_9;
        case 3:
          v5 = *(v2 + 24);
          goto LABEL_9;
        case 0xB:
          v5 = *(v2 + 88);
LABEL_9:
          if (v5 != a2)
          {
            goto LABEL_10;
          }

          return v2;
        case 0xE:
          return result;
        default:
LABEL_10:
          v2 = *(v2 + 8);
          --v3;
          if (!v2)
          {
            return 0;
          }

          continue;
      }
    }
  }

  return 0;
}

uint64_t PPStreamChunkListCompare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 1;
  }

  v2 = *a2;
  for (i = *a1; ; i = *(i + 8))
  {
    if (i)
    {
      v4 = v2 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }

    if (PPStreamChunkCompare(i, v2))
    {
      break;
    }

    v2 = *(v2 + 8);
  }

  return 1;
}

uint64_t PPStreamChunkListGetNextIndex(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  v3 = *(v1 + 16);
  if (v3 <= 3)
  {
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        LODWORD(result) = 0;
        do
        {
          v7 = *(v1 + 32);
          if (v7 >= result)
          {
            result = v7 + 1;
          }

          else
          {
            result = result;
          }

          v1 = *(v1 + 8);
        }

        while (v1);
      }

      else
      {
        LODWORD(result) = 0;
        do
        {
          v5 = *(v1 + 24);
          if (v5 >= result)
          {
            result = v5 + 1;
          }

          else
          {
            result = result;
          }

          v1 = *(v1 + 8);
        }

        while (v1);
      }

      return result;
    }

    goto LABEL_22;
  }

  if (v3 <= 0xD)
  {
    if (((1 << v3) & 0x3780) == 0)
    {
      if (v3 == 6)
      {
        LODWORD(result) = 0;
        do
        {
          v8 = *(v1 + 32);
          if (v8 >= result)
          {
            result = v8 + 1;
          }

          else
          {
            result = result;
          }

          v1 = *(v1 + 8);
        }

        while (v1);
        return result;
      }

      if (v3 == 11)
      {
        LODWORD(result) = 0;
        do
        {
          v4 = *(v1 + 88);
          if (v4 >= result)
          {
            result = v4 + 1;
          }

          else
          {
            result = result;
          }

          v1 = *(v1 + 8);
        }

        while (v1);
        return result;
      }

      goto LABEL_25;
    }

LABEL_22:
    LODWORD(result) = 0;
    do
    {
      result = (result + 1);
      v1 = *(v1 + 8);
    }

    while (v1);
    return result;
  }

LABEL_25:
  if (v3 == 4)
  {
    LODWORD(result) = 0;
    do
    {
      v9 = *(v1 + 32);
      if (v9 >= result)
      {
        result = v9 + 1;
      }

      else
      {
        result = result;
      }

      v1 = *(v1 + 8);
    }

    while (v1);
  }

  else if (v3 == 5)
  {
    LODWORD(result) = 0;
    do
    {
      v6 = *(v1 + 32);
      if (v6 >= result)
      {
        result = v6 + 1;
      }

      else
      {
        result = result;
      }

      v1 = *(v1 + 8);
    }

    while (v1);
  }

  return result;
}

uint64_t PPStreamCreate()
{
  v0 = malloc_type_calloc(0x90uLL, 1uLL, 0x1A32276BuLL);
  if (!v0)
  {
    abort();
  }

  v1 = v0;
  v0[2] = PPStreamChunkListCreate();
  *(v1 + 24) = PPStreamChunkListCreate();
  *(v1 + 32) = PPStreamChunkListCreate();
  *(v1 + 80) = PPStreamChunkListCreate();
  *(v1 + 40) = PPStreamChunkListCreate();
  *(v1 + 56) = PPStreamChunkListCreate();
  *(v1 + 72) = PPStreamChunkListCreate();
  *(v1 + 48) = PPStreamChunkListCreate();
  *(v1 + 64) = PPStreamChunkListCreate();
  *(v1 + 88) = PPStreamChunkListCreate();
  *(v1 + 104) = PPStreamChunkListCreate();
  *(v1 + 112) = PPStreamChunkListCreate();
  *(v1 + 128) = PPStreamChunkListCreate();
  *(v1 + 120) = PPStreamChunkListCreate();
  *(v1 + 96) = PPStreamChunkListCreate();
  *(v1 + 140) = 0;
  v4 = 0;
  PPStreamAddReqs0(v1, &v4);
  v3 = 0;
  PPStreamAddReqs1(v1, &v3);
  return v1;
}

_BYTE *PPStreamAddReqs0(uint64_t a1, void *a2)
{
  result = PPStreamChunkCreate(8);
  result[16] = 0;
  *(result + 3) = *a2;
  v5 = *(a1 + 16);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddReqs1(uint64_t a1, void *a2)
{
  result = PPStreamChunkCreate(8);
  result[16] = 1;
  *(result + 3) = *a2;
  v5 = *(a1 + 24);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

void PPStreamFree(_DWORD **a1)
{
  PPStreamChunkListFree(a1[2]);
  PPStreamChunkListFree(a1[3]);
  PPStreamChunkListFree(a1[4]);
  PPStreamChunkListFree(a1[10]);
  PPStreamChunkListFree(a1[5]);
  PPStreamChunkListFree(a1[7]);
  PPStreamChunkListFree(a1[9]);
  PPStreamChunkListFree(a1[6]);
  PPStreamChunkListFree(a1[8]);
  PPStreamChunkListFree(a1[11]);
  PPStreamChunkListFree(a1[13]);
  PPStreamChunkListFree(a1[14]);
  PPStreamChunkListFree(a1[16]);
  PPStreamChunkListFree(a1[15]);
  PPStreamChunkListFree(a1[12]);

  free(a1);
}

void *PPStreamChunkCreate(uint64_t a1)
{
  result = malloc_type_calloc(a1 + 24, 1uLL, 0x1A32276BuLL);
  if (!result)
  {
    abort();
  }

  return result;
}

char *PPStreamAddTempUsage(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 2;
  *(result + 24) = *a2;
  v5 = *(a1 + 32);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddTempUsageArray(uint64_t a1, void *a2)
{
  result = PPStreamChunkCreate(8);
  result[16] = 8;
  *(result + 3) = *a2;
  v5 = *(a1 + 80);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddAddressUsage(uint64_t a1, _DWORD *a2)
{
  result = PPStreamChunkCreate(4);
  result[16] = 3;
  *(result + 6) = *a2;
  v5 = *(a1 + 40);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddParamBinding(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 5;
  *(result + 24) = *a2;
  v5 = *(a1 + 56);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddParamBindingArray(uint64_t a1, void *a2)
{
  result = PPStreamChunkCreate(8);
  result[16] = 7;
  *(result + 3) = *a2;
  v5 = *(a1 + 72);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddAttribBinding(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 4;
  *(result + 24) = *a2;
  v5 = *(a1 + 48);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddOutputBinding(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 6;
  *(result + 24) = *a2;
  v5 = *(a1 + 64);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddTexImage(uint64_t a1, _OWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 9;
  *(result + 24) = *a2;
  v5 = *(a1 + 88);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

char *PPStreamAddOperation(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = *(a2 + 72);
  if (v6)
  {
    v7 = (v6 + 81);
  }

  else
  {
    v7 = 80;
  }

  v8 = PPStreamChunkCreate(v7);
  v9 = v8;
  v8[16] = 11;
  *(v8 + 24) = *a2;
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 32);
  *(v8 + 40) = *(a2 + 16);
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = v12;
  if (a3 && v6)
  {
    memmove(v8 + 104, a3, v6);
    v9[v6 + 104] = 0;
  }

  v13 = *(a1 + 140);
  *(a1 + 140) = v13 + 1;
  *(v9 + 22) = v13;
  v14 = *(a1 + 104);
  if (!*v14)
  {
    *v14 = v9;
    *v9 = 0;
  }

  v15 = *(v14 + 8);
  if (v15)
  {
    *(v15 + 8) = v9;
    *v9 = v15;
  }

  *(v9 + 1) = 0;
  *(v14 + 8) = v9;
  ++*(v14 + 16);
  return v9;
}

char *PPStreamInsertOperationBeforeChunk(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = *(a2 + 72);
  if (v8)
  {
    v9 = (v8 + 81);
  }

  else
  {
    v9 = 80;
  }

  v10 = PPStreamChunkCreate(v9);
  v11 = v10;
  v10[16] = 11;
  *(v10 + 24) = *a2;
  v12 = *(a2 + 48);
  v13 = *(a2 + 64);
  v14 = *(a2 + 32);
  *(v10 + 40) = *(a2 + 16);
  *(v10 + 88) = v13;
  *(v10 + 72) = v12;
  *(v10 + 56) = v14;
  if (a3 && v8)
  {
    memmove(v10 + 104, a3, v8);
    v11[v8 + 104] = 0;
  }

  v15 = *(a1 + 140);
  *(a1 + 140) = v15 + 1;
  *(v11 + 22) = v15;
  if (a4)
  {
    v16 = *(v11 + 3);
    *(v11 + 3) = v16 & 0xFFFFFFFFFFFFFFC7 | (8 * ((*(a4 + 24) >> 3) & 7));
    v17 = *(a4 + 24);
    *(a4 + 24) = v17 & 0xFFFFFFFFFFFFFFC7 | (8 * (v16 & 7));
    *(v11 + 3) = *(v11 + 3) & 0xFFFFFFFFFFFFBFFFLL | (((v17 >> 14) & 1) << 14);
    *(a4 + 24) &= ~0x4000uLL;
    LODWORD(v17) = *(v11 + 22);
    *(v11 + 22) = *(a4 + 88);
    *(a4 + 88) = v17;
  }

  PPStreamChunkListInsertChunkBeforeChunk(*(a1 + 104), v11, a4);
  return v11;
}

char *PPStreamInsertOperationAfterChunk(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = (v9 + 81);
  }

  else
  {
    v10 = 80;
  }

  v11 = PPStreamChunkCreate(v10);
  v12 = v11;
  v11[16] = 11;
  *(v11 + 24) = *a2;
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  v15 = *(a2 + 32);
  *(v11 + 40) = *(a2 + 16);
  *(v11 + 88) = v14;
  *(v11 + 72) = v13;
  *(v11 + 56) = v15;
  if (a3 && v9)
  {
    memmove(v11 + 104, a3, v9);
    v12[v9 + 104] = 0;
  }

  v16 = *(a1 + 140);
  *(a1 + 140) = v16 + 1;
  *(v12 + 22) = v16;
  v17 = *(v12 + 3);
  *(v12 + 3) = v17 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a4 + 24) & 7));
  if (v8)
  {
    *(v8 + 24) = *(v8 + 24) & 0xFFFFFFFFFFFFFFC7 | (8 * (v17 & 7));
  }

  PPStreamChunkListInsertChunkAfterChunk(*(a1 + 104), v12, a4);
  return v12;
}

char *PPStreamAddLabel(uint64_t a1, const void *a2, unsigned int a3)
{
  v6 = a3;
  v7 = PPStreamChunkCreate(a3 + 9);
  v7[16] = 14;
  *(v7 + 7) = a3;
  *(v7 + 6) = *(a1 + 140);
  memmove(v7 + 32, a2, v6);
  v7[a3 + 32] = 0;
  v8 = *(a1 + 112);
  if (!*v8)
  {
    *v8 = v7;
    *v7 = 0;
  }

  v9 = *(v8 + 8);
  if (v9)
  {
    *(v9 + 8) = v7;
    *v7 = v9;
  }

  *(v7 + 1) = 0;
  *(v8 + 8) = v7;
  ++*(v8 + 16);
  return v7;
}

_DWORD *PPStreamRemoveLabelsAtOperationIndex(uint64_t a1, int a2)
{
  result = **(a1 + 112);
  if (result)
  {
    do
    {
      v5 = *(result + 1);
      if (result[6] == a2)
      {
        v6 = *(a1 + 112);
        v7 = *result;
        v8 = (*result + 8);
        if (!*result)
        {
          v8 = *(a1 + 112);
        }

        *v8 = v5;
        v9 = (v6 + 8);
        if (v5)
        {
          v9 = v5;
        }

        *v9 = v7;
        free(result);
        --*(v6 + 16);
      }

      result = v5;
    }

    while (v5);
  }

  return result;
}

_BYTE *PPStreamAddConstant(uint64_t a1, _DWORD *a2)
{
  result = PPStreamChunkCreate(16);
  result[16] = 13;
  *(result + 6) = *a2;
  *(result + 7) = a2[1];
  *(result + 8) = a2[2];
  *(result + 9) = a2[3];
  v5 = *(a1 + 128);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddRasterOp(uint64_t a1, void *a2)
{
  result = PPStreamChunkCreate(8);
  result[16] = 12;
  *(result + 3) = *a2;
  v5 = *(a1 + 120);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

_BYTE *PPStreamAddOption(uint64_t a1, char a2)
{
  result = PPStreamChunkCreate(8);
  result[16] = 10;
  result[27] = a2;
  v5 = *(a1 + 96);
  if (!*v5)
  {
    *v5 = result;
    *result = 0;
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    *(v6 + 8) = result;
    *result = v6;
  }

  *(result + 1) = 0;
  *(v5 + 8) = result;
  ++*(v5 + 16);
  return result;
}

unsigned __int16 *PPStreamGetStream(uint64_t a1, _DWORD *a2)
{
  v29 = 0;
  PPStreamChunkListGetStream(*(a1 + 32), 0, &v29);
  v4 = v29;
  PPStreamChunkListGetStream(*(a1 + 48), 0, &v29);
  v5 = v4 + v29;
  PPStreamChunkListGetStream(*(a1 + 56), 0, &v29);
  v6 = v29;
  PPStreamChunkListGetStream(*(a1 + 64), 0, &v29);
  v7 = v5 + v6 + v29;
  PPStreamChunkListGetStream(*(a1 + 72), 0, &v29);
  v8 = v29;
  PPStreamChunkListGetStream(*(a1 + 80), 0, &v29);
  v9 = v8 + v29;
  PPStreamChunkListGetStream(*(a1 + 88), 0, &v29);
  v10 = v7 + v9 + v29;
  PPStreamChunkListGetStream(*(a1 + 96), 0, &v29);
  v11 = v29;
  PPStreamChunkListGetStream(*(a1 + 104), 0, &v29);
  v12 = v11 + v29;
  PPStreamChunkListGetStream(*(a1 + 120), 0, &v29);
  v13 = v10 + v12 + v29 + 18 - ((v10 + v12 + v29 + 18) | 0xFFFFFFFE);
  PPStreamChunkListGetStream(*(a1 + 128), 0, &v29);
  v14 = v13 + v29;
  *a2 = v13 + v29;
  v15 = malloc_type_malloc(8 * v14, 0xCA0EF1E7uLL);
  if (!v15)
  {
    abort();
  }

  v16 = v15;
  bzero(v15, 8 * *a2);
  *v16 = *a1;
  PPStreamChunkListGetStream(*(a1 + 16), (v16 + 4), &v29);
  PPStreamChunkListGetStream(*(a1 + 24), (v16 + 8), &v29);
  *(v16 + 6) = *a2;
  *(v16 + 10) = *(*(a1 + 40) + 16);
  *(v16 + 8) = *(*(a1 + 32) + 16);
  *(v16 + 9) = 18;
  PPStreamChunkListGetStream(*(a1 + 32), (v16 + 72), &v29);
  v17 = v29 + 18;
  *(v16 + 12) = *(*(a1 + 48) + 16);
  *(v16 + 13) = v17;
  PPStreamChunkListGetStream(*(a1 + 48), &v16[4 * v17], &v29);
  v18 = v29 + v17;
  *(v16 + 14) = *(*(a1 + 56) + 16);
  *(v16 + 15) = v18;
  PPStreamChunkListGetStream(*(a1 + 56), &v16[4 * v18], &v29);
  v19 = v29 + v18;
  *(v16 + 16) = *(*(a1 + 64) + 16);
  *(v16 + 17) = v19;
  PPStreamChunkListGetStream(*(a1 + 64), &v16[4 * v19], &v29);
  v20 = v29 + v19;
  *(v16 + 18) = *(*(a1 + 72) + 16);
  *(v16 + 19) = v20;
  PPStreamChunkListGetStream(*(a1 + 72), &v16[4 * v20], &v29);
  v21 = v29 + v20;
  *(v16 + 20) = *(*(a1 + 80) + 16);
  *(v16 + 21) = v21;
  PPStreamChunkListGetStream(*(a1 + 80), &v16[4 * v21], &v29);
  v22 = v29 + v21;
  *(v16 + 22) = *(*(a1 + 88) + 16);
  *(v16 + 23) = v22;
  PPStreamChunkListGetStream(*(a1 + 88), &v16[4 * v22], &v29);
  v23 = v29 + v22;
  *(v16 + 24) = *(*(a1 + 96) + 16);
  *(v16 + 25) = v23;
  PPStreamChunkListGetStream(*(a1 + 96), &v16[4 * v23], &v29);
  v24 = v29 + v23;
  *(v16 + 26) = *(*(a1 + 104) + 16);
  *(v16 + 27) = v24;
  PPStreamChunkListGetStream(*(a1 + 104), &v16[4 * v24], &v29);
  v25 = v29 + v24;
  if (v29)
  {
    *&v16[4 * v25] = *&v16[4 * v25] & 0xFFFFFFFFFFFFFFC7 | (8 * (*(*(*(a1 + 104) + 8) + 24) & 7));
  }

  *(v16 + 30) = *(a1 + 8);
  *(v16 + 31) = v25;
  *(a1 + 12) = v25;
  v26 = v25 + 1;
  *(v16 + 32) = *(*(a1 + 120) + 16);
  *(v16 + 33) = v25 + 1;
  PPStreamChunkListGetStream(*(a1 + 120), &v16[4 * (v25 + 1)], &v29);
  v27 = v29 + v26;
  if ((v29 + v26))
  {
    *&v16[4 * v27++] = 0;
  }

  *(v16 + 34) = *(*(a1 + 128) + 16);
  *(v16 + 35) = v27;
  PPStreamChunkListGetStream(*(a1 + 128), &v16[4 * v27], &v29);
  PPStreamTokenAddRequirements(v16);
  return v16;
}

unsigned __int16 *PPStreamTokenAddRequirements(unsigned __int16 *result)
{
  v63 = *MEMORY[0x277D85DE8];
  memset(v62, 0, sizeof(v62));
  v2 = *(result + 1);
  v1 = *(result + 2);
  v3 = *result;
  v5 = v3 != 34336 && v3 != 34820;
  v6 = *(result + 27);
  v7 = *(result + 31);
  if (v6 == v7)
  {
LABEL_57:
    v11 = 0;
    v8 = *(result + 27);
    goto LABEL_58;
  }

  v8 = 0;
  v9 = 0;
  v10 = vdupq_n_s64(2uLL);
  v11 = -1;
  v12 = &result[4 * v7];
  v13 = &result[4 * v6];
  do
  {
    v14 = *v13;
    v15 = *v13 & 7;
    if (v3 != 34336 && v3 != 34820 && v15)
    {
      v16 = ((v14 & 7) + 1) & 0xE;
      v17 = vdupq_n_s64((*v13 & 7uLL) - 1);
      v18 = v13 + 24;
      v19 = v62 + 1;
      v20 = xmmword_23A29C340;
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v17, v20));
        if (v21.i8[0])
        {
          *(v19 - 1) = v18 - 1;
        }

        if (v21.i8[4])
        {
          *v19 = v18;
        }

        v20 = vaddq_s64(v20, v10);
        v19 += 2;
        v18 += 2;
        v16 -= 2;
      }

      while (v16);
    }

    v22 = (v14 >> 6);
    if (v22 > 0x45)
    {
      v23 = v22 - 70;
      if (v23 <= 0x3D)
      {
        if (((1 << (v22 - 70)) & 0x3000000030000003) != 0)
        {
LABEL_30:
          v24 = -1;
          v25 = v5;
          goto LABEL_31;
        }

        if (v23 == 9)
        {
          v25 = 0;
          v24 = 0;
          v2 |= 2uLL;
          goto LABEL_31;
        }

        if (v23 == 11)
        {
          v24 = 0;
          v25 = 0;
LABEL_53:
          v2 |= 0x1000000uLL;
          goto LABEL_31;
        }
      }

      if (v22 - 165 >= 2)
      {
        if (v22 != 164)
        {
          v25 = 0;
          v24 = 0;
          goto LABEL_31;
        }

        v24 = -1;
        v25 = v5;
        goto LABEL_53;
      }

      goto LABEL_30;
    }

    if (v22 - 66 < 4)
    {
      goto LABEL_30;
    }

    v24 = 0;
    v25 = 0;
    if (v22 == 6)
    {
      goto LABEL_53;
    }

    v25 = 0;
    if (v22 == 65)
    {
      v24 = -1;
    }

    else
    {
      v24 = 0;
    }

LABEL_31:
    if (v3 != 34336 && v3 != 34820)
    {
      v26 = (v24 + v15);
      if (v26)
      {
        v27 = v62;
        while (1)
        {
          v28 = **v27;
          v29 = (v28 >> 19) & 3;
          if (v29 <= 1)
          {
            break;
          }

          if (v29 == 2)
          {
            goto LABEL_40;
          }

LABEL_41:
          ++v27;
          if (!--v26)
          {
            goto LABEL_42;
          }
        }

        if (!v29)
        {
          v28 = v28 & 0xFFFFFFFFFFFFE7FFLL | (((v28 >> 9) & 3) << 11);
        }

        v28 = v28 & 0xFFFFFFFFFFFF9FFFLL | (((v28 >> 11) & 3) << 13);
LABEL_40:
        **v27 = v28 & 0xFFFFFFFFFFFE7FFFLL | (((v28 >> 13) & 3) << 15);
        goto LABEL_41;
      }

LABEL_42:
      if (v25)
      {
        v30 = &v13[8 * (v14 & 7)];
        if ((*v30 & 0x1C0) == 0x80)
        {
          v31 = *(v30 + 1) & 0xFFFFFFFFFFC000FFLL | ((HIDWORD(*(&result[4 * *(result + 15)] + ((*v30 >> 45) & 0x7FFF8))) & 0x3FFFLL) << 8);
        }

        else
        {
          v31 = *(v30 + 1) | 0x3FFF00;
        }

        *(v30 + 1) = v31;
      }
    }

    v2 |= (*v13 >> 33) & 1;
    if ((*v13 & 0x4000) != 0)
    {
      v11 = v9;
      v8 = (v13 - result) >> 3;
    }

    ++v9;
    v13 += 8 * (*v13 & 7) + 16;
  }

  while (v13 != v12);
  if (v11 == -1)
  {
    goto LABEL_57;
  }

LABEL_58:
  *(result + 28) = v11;
  *(result + 29) = v8;
  if (v3 > 35632)
  {
    if ((v3 - 36487) >= 2 && v3 != 35633 && v3 != 36313)
    {
      goto LABEL_124;
    }

    goto LABEL_105;
  }

  if (v3 == 34336)
  {
LABEL_105:
    v46 = *(result + 16);
    if (v46)
    {
      v47 = &result[4 * *(result + 17)];
      v48 = 8 * v46;
      do
      {
        v50 = *v47;
        v47 += 4;
        v49 = v50;
        v51 = (v50 >> 8) & 0x1F;
        v52 = (v50 >> 27) & 0x20 | v2;
        v53 = v2 | 4;
        v54 = v2 & 0xFFFFFFFFFFFFFF3FLL | ((64 << SBYTE4(v50)) | v2) & 0xC0;
        if (v51 != 10)
        {
          v54 = v2;
        }

        if (v51 != 9)
        {
          v53 = v54;
        }

        if (v51 == 5)
        {
          v53 = v52;
        }

        v55 = v2 | 0x10;
        if (v51 == 4)
        {
          v2 = v52;
        }

        if (v51 == 3)
        {
          v2 = v55;
        }

        if (v51 > 4)
        {
          v2 = v53;
        }

        v56 = (v49 >> 13) & 1;
        if (v3 == 34336)
        {
          v56 = 0;
        }

        v2 |= v56;
        v48 -= 8;
      }

      while (v48);
    }

    goto LABEL_124;
  }

  if (v3 == 34820 || v3 == 35632)
  {
    v32 = *(result + 12);
    if (v32)
    {
      v33 = &result[4 * *(result + 13)];
      for (i = 8 * v32; i; i -= 8)
      {
        v35 = *v33;
        v36 = (*v33 >> 10) & 0x1F;
        if (v36 > 0xB)
        {
          if (((*v33 >> 10) & 0x1F) <= 0xF)
          {
            if (v36 == 12)
            {
              v2 |= 0x200uLL;
            }

            else if (v36 == 14)
            {
              v2 = v2 & 0xFFFFFFFFFFFFFF3FLL | ((64 << SBYTE4(v35)) | v2) & 0xC0;
            }

            goto LABEL_91;
          }

          if (v36 == 16)
          {
            v2 |= 0x800uLL;
          }

          else if (v36 == 28)
          {
            v37 = HIDWORD(v35) & 0x3F;
            goto LABEL_83;
          }
        }

        else
        {
          if (((*v33 >> 10) & 0x1F) > 2)
          {
            if (v36 != 3)
            {
              if (v36 == 11)
              {
                v2 |= 0x400uLL;
              }

              goto LABEL_91;
            }

            v2 |= 0x4000000uLL;
            LOBYTE(v37) = 3;
            goto LABEL_83;
          }

          if (v36 == 1)
          {
            v2 = v2 & 0xFFFFFFFFFFFFCFFFLL | (v35 >> 20) & 0x3000 | 0x100;
          }

          else if (v36 == 2)
          {
            v2 |= 0x2000000uLL;
            LOBYTE(v37) = 2;
LABEL_83:
            v38 = v1 & ~(0x100000001 << v37);
            if ((v35 & 0x100) != 0)
            {
              v39 = 0x100000000;
            }

            else
            {
              v39 = 0x100000001;
            }

            if ((v35 & 0x8000) != 0)
            {
              v40 = 1;
            }

            else
            {
              v40 = v39;
            }

            v1 = v38 | (v40 << v37);
          }
        }

LABEL_91:
        v33 += 4;
      }
    }

    v41 = *(result + 16);
    if (v41)
    {
      v42 = &result[4 * *(result + 17)];
      v43 = 8 * v41;
      while ((*v42 & 0x1F00) != 0x700)
      {
        v42 += 4;
        v43 -= 8;
        if (!v43)
        {
          goto LABEL_124;
        }
      }

      v2 |= 8uLL;
    }
  }

LABEL_124:
  v57 = *(result + 8);
  if (v57)
  {
    v58 = &result[4 * *(result + 9)];
    v59 = 8 * v57;
    do
    {
      v60 = *v58;
      v58 += 4;
      v2 |= (v60 >> 8) & 1;
      v59 -= 8;
    }

    while (v59);
  }

  *(result + 1) = v2;
  *(result + 2) = v1;
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PPStreamTokenAddRasterRequirements(uint64_t result)
{
  v1 = *(result + 8) & 0x100;
  v2 = *(result + 128);
  if (!v2)
  {
    goto LABEL_29;
  }

  v3 = 0;
  v4 = (result + 8 * *(result + 132));
  v5 = &v4[v2];
  do
  {
    while (1)
    {
      v6 = *v4;
      v7 = *v4 >> 3;
      if (v7 <= 4)
      {
        v8 = v1 | 0x4000;
        if (v7 == 4)
        {
          v1 |= 0x8000uLL;
        }

        if (v7 == 1)
        {
          v1 = v8;
        }

        goto LABEL_18;
      }

      if (v7 != 5)
      {
        break;
      }

      v1 |= 0x4000uLL;
      ++v4;
      v3 = 1;
      if (v4 == v5)
      {
        goto LABEL_23;
      }
    }

    v9 = (v6 >> 16) & 0xFF0000 | v1;
    v10 = ((v6 >> 8) & 0xF) - 9;
    v11 = v10 >= 2;
    if (v10 >= 2)
    {
      v12 = v9;
    }

    else
    {
      v12 = v9 | 0x100;
    }

    if (v11)
    {
      v13 = v3;
    }

    else
    {
      v13 = 1;
    }

    if (v7 == 19)
    {
      v1 = v12;
      v3 = v13;
    }

LABEL_18:
    ++v4;
  }

  while (v4 != v5);
  if (!v3)
  {
    goto LABEL_29;
  }

LABEL_23:
  v14 = *(result + 64);
  if (v14)
  {
    v15 = (result + 8 * *(result + 68));
    v16 = 8 * v14;
    while ((*v15 & 0x1F00) != 0x700)
    {
      ++v15;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_29;
      }
    }

    v1 |= 8uLL;
  }

LABEL_29:
  *(result + 8) = v1 | *(result + 8) & 0xFFFFFFFFFF003EF7;
  return result;
}

void *PPStreamTokenAlloc(size_t a1)
{
  result = malloc_type_malloc(a1, 0xCA0EF1E7uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

uint64_t PPStreamGetTexOperationCount(uint64_t a1)
{
  v1 = **(a1 + 104);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = ((*(v1 + 24) >> 15) & 1) + result;
    v1 = *(v1 + 8);
  }

  while (v1);
  return result;
}

uint64_t PPStreamAttachStream(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = **v4;
  v7 = (*v4)[1];
  v8 = (v6 + 8);
  if (!v6)
  {
    v8 = v4;
  }

  *v8 = v7;
  if (!v7)
  {
    v7 = (v4 + 1);
  }

  *v7 = v6;
  free(v5);
  --*(v4 + 4);
  v9 = *(a1 + 24);
  v10 = *v9;
  v11 = **v9;
  v12 = (*v9)[1];
  v13 = (v11 + 8);
  if (!v11)
  {
    v13 = *(a1 + 24);
  }

  *v13 = v12;
  if (!v12)
  {
    v12 = v9 + 1;
  }

  *v12 = v11;
  free(v10);
  --*(v9 + 4);
  *a1 = *a2;
  v14 = PPStreamChunkCreate(8);
  v14[16] = 0;
  v15 = *(a1 + 16);
  if (!*v15)
  {
    *v15 = v14;
    *v14 = 0;
  }

  v16 = *(v15 + 8);
  if (v16)
  {
    *(v16 + 8) = v14;
    *v14 = v16;
  }

  *(v14 + 1) = 0;
  *(v15 + 8) = v14;
  ++*(v15 + 16);
  v17 = PPStreamChunkCreate(8);
  v17[16] = 1;
  v18 = *(a1 + 24);
  if (!*v18)
  {
    *v18 = v17;
    *v17 = 0;
  }

  v19 = *(v18 + 8);
  if (v19)
  {
    *(v19 + 8) = v17;
    *v17 = v19;
  }

  *(v17 + 1) = 0;
  *(v18 + 8) = v17;
  ++*(v18 + 16);
  if (*(a2 + 40))
  {
    v20 = 0;
    do
    {
      v21 = PPStreamChunkCreate(4);
      v21[16] = 3;
      *(v21 + 6) = v20;
      v22 = *(a1 + 40);
      if (!*v22)
      {
        *v22 = v21;
        *v21 = 0;
      }

      v23 = *(v22 + 8);
      if (v23)
      {
        *(v23 + 8) = v21;
        *v21 = v23;
      }

      *(v21 + 1) = 0;
      *(v22 + 8) = v21;
      ++*(v22 + 16);
      ++v20;
    }

    while (v20 < *(a2 + 40));
  }

  if (*(a2 + 32))
  {
    v24 = 0;
    v25 = a2 + 8 * *(a2 + 36);
    do
    {
      v26 = PPStreamChunkCreate(16);
      v26[16] = 2;
      *(v26 + 3) = *(v25 + 8 * v24);
      *(v26 + 8) = v24;
      v27 = *(a1 + 32);
      if (!*v27)
      {
        *v27 = v26;
        *v26 = 0;
      }

      v28 = *(v27 + 8);
      if (v28)
      {
        *(v28 + 8) = v26;
        *v26 = v28;
      }

      ++v24;
      *(v26 + 1) = 0;
      *(v27 + 8) = v26;
      ++*(v27 + 16);
    }

    while (v24 < *(a2 + 32));
  }

  if (*(a2 + 48))
  {
    v29 = 0;
    v30 = a2 + 8 * *(a2 + 52);
    do
    {
      v31 = PPStreamChunkCreate(16);
      v31[16] = 4;
      *(v31 + 3) = *(v30 + 8 * v29);
      *(v31 + 8) = v29;
      v32 = *(a1 + 48);
      if (!*v32)
      {
        *v32 = v31;
        *v31 = 0;
      }

      v33 = *(v32 + 8);
      if (v33)
      {
        *(v33 + 8) = v31;
        *v31 = v33;
      }

      ++v29;
      *(v31 + 1) = 0;
      *(v32 + 8) = v31;
      ++*(v32 + 16);
    }

    while (v29 < *(a2 + 48));
  }

  if (*(a2 + 56))
  {
    v34 = 0;
    v35 = a2 + 8 * *(a2 + 60);
    do
    {
      v36 = PPStreamChunkCreate(16);
      v36[16] = 5;
      *(v36 + 3) = *(v35 + 8 * v34);
      *(v36 + 8) = v34;
      v37 = *(a1 + 56);
      if (!*v37)
      {
        *v37 = v36;
        *v36 = 0;
      }

      v38 = *(v37 + 8);
      if (v38)
      {
        *(v38 + 8) = v36;
        *v36 = v38;
      }

      ++v34;
      *(v36 + 1) = 0;
      *(v37 + 8) = v36;
      ++*(v37 + 16);
    }

    while (v34 < *(a2 + 56));
  }

  if (*(a2 + 64))
  {
    v39 = 0;
    v40 = a2 + 8 * *(a2 + 68);
    do
    {
      v41 = PPStreamChunkCreate(16);
      v41[16] = 6;
      *(v41 + 3) = *(v40 + 8 * v39);
      *(v41 + 8) = v39;
      v42 = *(a1 + 64);
      if (!*v42)
      {
        *v42 = v41;
        *v41 = 0;
      }

      v43 = *(v42 + 8);
      if (v43)
      {
        *(v43 + 8) = v41;
        *v41 = v43;
      }

      ++v39;
      *(v41 + 1) = 0;
      *(v42 + 8) = v41;
      ++*(v42 + 16);
    }

    while (v39 < *(a2 + 64));
  }

  if (*(a2 + 72))
  {
    v44 = 0;
    v45 = a2 + 8 * *(a2 + 76);
    do
    {
      v46 = PPStreamChunkCreate(8);
      v46[16] = 7;
      *(v46 + 3) = *(v45 + 8 * v44);
      v47 = *(a1 + 72);
      if (!*v47)
      {
        *v47 = v46;
        *v46 = 0;
      }

      v48 = *(v47 + 8);
      if (v48)
      {
        *(v48 + 8) = v46;
        *v46 = v48;
      }

      ++v44;
      *(v46 + 1) = 0;
      *(v47 + 8) = v46;
      ++*(v47 + 16);
    }

    while (v44 < *(a2 + 72));
  }

  if (*(a2 + 80))
  {
    v49 = 0;
    v50 = a2 + 8 * *(a2 + 84);
    do
    {
      v51 = PPStreamChunkCreate(8);
      v51[16] = 8;
      *(v51 + 3) = *(v50 + 8 * v49);
      v52 = *(a1 + 80);
      if (!*v52)
      {
        *v52 = v51;
        *v51 = 0;
      }

      v53 = *(v52 + 8);
      if (v53)
      {
        *(v53 + 8) = v51;
        *v51 = v53;
      }

      ++v49;
      *(v51 + 1) = 0;
      *(v52 + 8) = v51;
      ++*(v52 + 16);
    }

    while (v49 < *(a2 + 80));
  }

  if (*(a2 + 88))
  {
    v54 = 0;
    v55 = (a2 + 8 * *(a2 + 92));
    do
    {
      v56 = PPStreamChunkCreate(16);
      v56[16] = 9;
      *(v56 + 3) = *v55;
      *(v56 + 4) = v55[1];
      v57 = *(a1 + 88);
      if (!*v57)
      {
        *v57 = v56;
        *v56 = 0;
      }

      v58 = *(v57 + 8);
      if (v58)
      {
        *(v58 + 8) = v56;
        *v56 = v58;
      }

      *(v56 + 1) = 0;
      *(v57 + 8) = v56;
      ++*(v57 + 16);
      ++v54;
      v55 += 2;
    }

    while (v54 < *(a2 + 88));
  }

  if (*(a2 + 96))
  {
    v59 = 0;
    v60 = a2 + 8 * *(a2 + 100);
    do
    {
      v61 = PPStreamChunkCreate(8);
      v61[16] = 10;
      *(v61 + 3) = *(v60 + 8 * v59);
      v62 = *(a1 + 96);
      if (!*v62)
      {
        *v62 = v61;
        *v61 = 0;
      }

      v63 = *(v62 + 8);
      if (v63)
      {
        *(v63 + 8) = v61;
        *v61 = v63;
      }

      ++v59;
      *(v61 + 1) = 0;
      *(v62 + 8) = v61;
      ++*(v62 + 16);
    }

    while (v59 < *(a2 + 96));
  }

  if (*(a2 + 104))
  {
    v64 = 0;
    v65 = (a2 + 8 * *(a2 + 108));
    do
    {
      v66 = PPStreamChunkCreate(80);
      v66[16] = 11;
      *(v66 + 24) = 0;
      v67 = *v65;
      *(v66 + 3) = *v65;
      *(v66 + 22) = v64;
      *(v66 + 4) = v65[1];
      v65 += 2;
      v68 = v67 & 7;
      if (v68)
      {
        v69 = v66 + 40;
        do
        {
          v70 = *v65++;
          *v69++ = v70;
          --v68;
        }

        while (v68);
      }

      v71 = *(a1 + 104);
      if (!*v71)
      {
        *v71 = v66;
        *v66 = 0;
      }

      v72 = *(v71 + 8);
      if (v72)
      {
        *(v72 + 8) = v66;
        *v66 = v72;
      }

      *(v66 + 1) = 0;
      *(v71 + 8) = v66;
      ++*(v71 + 16);
      ++v64;
    }

    while (v64 < *(a2 + 104));
  }

  else
  {
    v64 = 0;
  }

  *(a1 + 140) = v64;
  *(a1 + 8) = *(a2 + 120);
  if (*(a2 + 128))
  {
    v73 = 0;
    v74 = a2 + 8 * *(a2 + 132);
    do
    {
      v75 = PPStreamChunkCreate(8);
      v75[16] = 12;
      *(v75 + 3) = *(v74 + 8 * v73);
      v76 = *(a1 + 120);
      if (!*v76)
      {
        *v76 = v75;
        *v75 = 0;
      }

      v77 = *(v76 + 8);
      if (v77)
      {
        *(v77 + 8) = v75;
        *v75 = v77;
      }

      ++v73;
      *(v75 + 1) = 0;
      *(v76 + 8) = v75;
      ++*(v76 + 16);
    }

    while (v73 < *(a2 + 128));
  }

  if (*(a2 + 136))
  {
    v78 = 0;
    v79 = (a2 + 8 * *(a2 + 140));
    do
    {
      v80 = PPStreamChunkCreate(16);
      v80[16] = 13;
      *(v80 + 6) = *v79;
      *(v80 + 7) = v79[1];
      *(v80 + 8) = v79[2];
      *(v80 + 9) = v79[3];
      v81 = *(a1 + 128);
      if (!*v81)
      {
        *v81 = v80;
        *v80 = 0;
      }

      v82 = *(v81 + 8);
      if (v82)
      {
        *(v82 + 8) = v80;
        *v80 = v82;
      }

      *(v80 + 1) = 0;
      *(v81 + 8) = v80;
      ++*(v81 + 16);
      ++v78;
      v79 += 4;
    }

    while (v78 < *(a2 + 136));
  }

  return 0;
}

BOOL PPStreamCompare(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 1;
  }

  if (PPStreamChunkListCompare(*(a1 + 16), *(a2 + 16)) || PPStreamChunkListCompare(*(a1 + 24), *(a2 + 24)) || PPStreamChunkListCompare(*(a1 + 32), *(a2 + 32)) || PPStreamChunkListCompare(*(a1 + 40), *(a2 + 40)) || PPStreamChunkListCompare(*(a1 + 56), *(a2 + 56)) || PPStreamChunkListCompare(*(a1 + 72), *(a2 + 72)) || PPStreamChunkListCompare(*(a1 + 80), *(a2 + 80)) || PPStreamChunkListCompare(*(a1 + 48), *(a2 + 48)) || PPStreamChunkListCompare(*(a1 + 64), *(a2 + 64)) || PPStreamChunkListCompare(*(a1 + 88), *(a2 + 88)) || PPStreamChunkListCompare(*(a1 + 104), *(a2 + 104)) || PPStreamChunkListCompare(*(a1 + 128), *(a2 + 128)) || PPStreamChunkListCompare(*(a1 + 120), *(a2 + 120)) || PPStreamChunkListCompare(*(a1 + 96), *(a2 + 96)))
  {
    return 1;
  }

  return *(a1 + 136) != *(a2 + 136);
}

uint64_t PPStreamChangeBranchTargets(uint64_t a1, int a2, uint64_t a3)
{
  for (i = **(a1 + 112); i; i = *(i + 8))
  {
    if (*(i + 24) == a2)
    {
      *(i + 24) = a3;
    }
  }

  return renumberTargets(**(a1 + 104), a2, a3);
}

uint64_t renumberTargets(uint64_t result, int a2, uint64_t a3)
{
  while (result)
  {
    v3 = *(result + 24);
    v4 = (v3 >> 6);
    v5 = (v4 - 75);
    if (v5 <= 0x21)
    {
      if (((1 << (v4 - 75)) & 0x38001BE05) != 0)
      {
        goto LABEL_4;
      }

      if (v5 == 1)
      {
        if ((*(result + 24) & 7) == 1 || v3 >> 46 != a2)
        {
          goto LABEL_6;
        }

LABEL_5:
        *(result + 24) = v3 & 0x3FFFFFFFFFFFLL | (a3 << 46);
        goto LABEL_6;
      }
    }

    if (v4 != 140)
    {
      goto LABEL_6;
    }

LABEL_4:
    if (v3 >> 46 == a2)
    {
      goto LABEL_5;
    }

LABEL_6:
    result = *(result + 8);
  }

  return result;
}

void PPStreamPackIndices(void *a1)
{
  v2 = *(a1[4] + 16);
  v3 = malloc_type_malloc(4 * v2, 0xCA0EF1E7uLL);
  if (!v3)
  {
    goto LABEL_92;
  }

  v4 = v3;
  v5 = *a1[4];
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 32);
      v8 = v7 + 1;
      if (v2 < v7 + 1)
      {
        v9 = malloc_type_realloc(v4, 4 * (v7 + 1), 0x352A3853uLL);
        if (!v9)
        {
          goto LABEL_92;
        }

        v4 = v9;
        v7 = *(v5 + 32);
        LODWORD(v2) = v8;
      }

      *&v4[4 * v7] = v6;
      *(v5 + 32) = v6++;
      v5 = *(v5 + 8);
    }

    while (v5);
  }

  v10 = *(a1[5] + 16);
  v11 = malloc_type_malloc(4 * v10, 0xCA0EF1E7uLL);
  if (!v11)
  {
    goto LABEL_92;
  }

  v12 = v11;
  v13 = *a1[5];
  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = *(v13 + 24);
      v16 = v15 + 1;
      if (v10 < v15 + 1)
      {
        v17 = malloc_type_realloc(v12, 4 * (v15 + 1), 0x352A3853uLL);
        if (!v17)
        {
          goto LABEL_92;
        }

        v12 = v17;
        v15 = *(v13 + 24);
        LODWORD(v10) = v16;
      }

      *&v12[4 * v15] = v14;
      *(v13 + 24) = v14++;
      v13 = *(v13 + 8);
    }

    while (v13);
  }

  v18 = *(a1[7] + 16);
  v19 = malloc_type_malloc(4 * v18, 0xCA0EF1E7uLL);
  if (!v19)
  {
    goto LABEL_92;
  }

  v20 = v19;
  v21 = *a1[7];
  if (v21)
  {
    v22 = 0;
    do
    {
      v23 = *(v21 + 32);
      v24 = v23 + 1;
      if (v18 < v23 + 1)
      {
        v25 = malloc_type_realloc(v20, 4 * (v23 + 1), 0x352A3853uLL);
        if (!v25)
        {
          goto LABEL_92;
        }

        v20 = v25;
        v23 = *(v21 + 32);
        LODWORD(v18) = v24;
      }

      *&v20[4 * v23] = v22;
      *(v21 + 32) = v22++;
      v21 = *(v21 + 8);
    }

    while (v21);
  }

  v26 = *(a1[6] + 16);
  v27 = malloc_type_malloc(4 * v26, 0xCA0EF1E7uLL);
  if (!v27)
  {
    goto LABEL_92;
  }

  v28 = v27;
  v29 = *a1[6];
  if (v29)
  {
    v30 = 0;
    do
    {
      v31 = *(v29 + 32);
      v32 = v31 + 1;
      if (v26 < v31 + 1)
      {
        v33 = malloc_type_realloc(v28, 4 * (v31 + 1), 0x352A3853uLL);
        if (!v33)
        {
          goto LABEL_92;
        }

        v28 = v33;
        v31 = *(v29 + 32);
        LODWORD(v26) = v32;
      }

      *&v28[4 * v31] = v30;
      *(v29 + 32) = v30++;
      v29 = *(v29 + 8);
    }

    while (v29);
  }

  v34 = *(a1[8] + 16);
  v35 = malloc_type_malloc(4 * v34, 0xCA0EF1E7uLL);
  if (!v35)
  {
    goto LABEL_92;
  }

  v36 = v35;
  v37 = *a1[8];
  if (v37)
  {
    v38 = 0;
    do
    {
      v39 = *(v37 + 32);
      v40 = v39 + 1;
      if (v34 < v39 + 1)
      {
        v41 = malloc_type_realloc(v36, 4 * (v39 + 1), 0x352A3853uLL);
        if (!v41)
        {
          goto LABEL_92;
        }

        v36 = v41;
        v39 = *(v37 + 32);
        LODWORD(v34) = v40;
      }

      *&v36[4 * v39] = v38;
      *(v37 + 32) = v38++;
      v37 = *(v37 + 8);
    }

    while (v37);
  }

  v42 = a1;
  v43 = *(a1[13] + 16);
  v44 = malloc_type_malloc(4 * v43, 0xCA0EF1E7uLL);
  if (!v44)
  {
LABEL_92:
    abort();
  }

  v45 = v44;
  v74 = v42;
  v46 = *v42[13];
  if (v46)
  {
    v47 = 0;
    do
    {
      v48 = *(v46 + 88);
      v49 = v48 + 1;
      if (v43 < v48 + 1)
      {
        v50 = malloc_type_realloc(v45, 4 * (v48 + 1), 0x352A3853uLL);
        if (!v50)
        {
          goto LABEL_92;
        }

        v45 = v50;
        v48 = *(v46 + 88);
        LODWORD(v43) = v49;
      }

      *&v45[4 * v48] = v47;
      *(v46 + 88) = v47++;
      v46 = *(v46 + 8);
    }

    while (v46);
  }

  for (i = *v74[14]; i; i = *(i + 8))
  {
    *(i + 24) = *&v45[4 * *(i + 24)];
  }

  for (j = *v74[10]; j; j = *(j + 8))
  {
    v53 = *(j + 24);
    v54 = v53 & 0xFFFFFFFF0000FFFFLL | (*&v4[4 * WORD1(v53)] << 16);
    *(j + 24) = v54;
    *(j + 24) = v54 & 0xFFFFFFFFFFFFLL | (*&v4[(v53 >> 46) & 0x3FFFC] << 48);
  }

  for (k = *v74[9]; k; k = *(k + 8))
  {
    v56 = *(k + 24);
    v57 = v56 & 0xFFFFFFFF0000FFFFLL | (*&v20[4 * WORD1(v56)] << 16);
    *(k + 24) = v57;
    *(k + 24) = v57 & 0xFFFFFFFFFFFFLL | (*&v20[(v56 >> 46) & 0x3FFFC] << 48);
  }

  v58 = *v74[13];
  if (v58)
  {
    while (1)
    {
      v59 = v58[3];
      if ((v59 & 7) + (v59 >> 15))
      {
        v60 = 0;
        v61 = v58 + 5;
        do
        {
          v62 = v61[v60];
          v63 = (v62 >> 6) & 7;
          if (v63 != 3 && v63 == 4)
          {
            v65 = v12;
          }

          else
          {
            v65 = v36;
          }

          if (v63 == 1)
          {
            v66 = v4;
          }

          else
          {
            v66 = v20;
          }

          if (!v63)
          {
            v66 = v28;
          }

          if (((v62 >> 6) & 7) <= 2)
          {
            v67 = v66;
          }

          else
          {
            v67 = v65;
          }

          v61[v60++] = v62 & 0xFFFFFFFFFFFFLL | (*&v67[(v62 >> 46) & 0x3FFFC] << 48);
        }

        while (v60 < (v59 >> 15) + (v59 & 7));
      }

      if ((v59 & 0x100000000) != 0)
      {
        v68 = v58[4];
        v69 = (v68 >> 12) & 7;
        if (v69 > 2)
        {
          v71 = v69 != 3 && v69 == 4;
          v70 = v36;
          if (v71)
          {
            v70 = v12;
          }
        }

        else
        {
          v70 = v28;
          if (v69)
          {
            v70 = v4;
            if (v69 != 1)
            {
              v70 = v20;
            }
          }
        }

        v58[4] = v68 & 0xFFFFFFFFFFFFLL | (*&v70[(v68 >> 46) & 0x3FFFC] << 48);
      }

      v72 = (v59 >> 6);
      v73 = (v72 - 75);
      if (v73 > 0x21)
      {
        goto LABEL_87;
      }

      if (((1 << (v72 - 75)) & 0x38001BE05) == 0)
      {
        break;
      }

LABEL_81:
      v58[3] = v59 & 0x3FFFFFFFFFFFLL | (*&v45[(v59 >> 44) & 0xFFFFC] << 46);
LABEL_82:
      v58 = v58[1];
      if (!v58)
      {
        goto LABEL_89;
      }
    }

    if (v73 == 1)
    {
      if ((v59 & 7) == 1)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

LABEL_87:
    if (v72 != 140)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_89:
  free(v4);
  free(v12);
  free(v20);
  free(v28);
  free(v36);

  free(v45);
}

uint64_t PPStreamResolveBranches(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = *(a1 + 112);
  v3 = *v1;
  if (*v1)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 96);
      if (v5)
      {
        v6 = *(v3 + 24);
        *(v3 + 24) = v6 & 0x3FFFFFFFFFFFLL | ((*(v1 + 4) + 1) << 46);
        v7 = *v2;
        if (*v2)
        {
          v8 = v6 & 0x3FFFFFFFFFFFLL;
          while (v5 != *(v7 + 28) || strncmp((v3 + 104), (v7 + 32), v5))
          {
            v7 = *(v7 + 8);
            if (!v7)
            {
              goto LABEL_9;
            }
          }

          *(v3 + 24) = v8 | (*(v7 + 24) << 46);
        }

        else
        {
LABEL_9:
          v4 = 1;
        }
      }

      v3 = *(v3 + 8);
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v9 = *v2;
  if (v9)
  {
    while (strcmp("main(", (v9 + 32)))
    {
      v9 = *(v9 + 8);
      if (!v9)
      {
        return v4;
      }
    }

    v10 = *v1;
    if (*v1)
    {
      while (*(v9 + 24) != *(v10 + 88))
      {
        v10 = *(v10 + 8);
        if (!v10)
        {
          return v4;
        }
      }

      *(v10 + 24) |= 0x4000uLL;
    }
  }

  return v4;
}

uint64_t PPStreamRemoveOperation(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (v4)
  {
    v5 = *(v4 + 24) & 0xFFFFFFFFFFFFFFC7 | (8 * ((a2[3] >> 3) & 7));
    *(v4 + 24) = v5;
    if ((*(a2 + 25) & 0x40) != 0)
    {
      *(v4 + 24) = v5 | 0x4000;
    }

    v6 = *(a2 + 22);
    v7 = *(v4 + 88);
    for (i = **(a1 + 112); i; i = *(i + 8))
    {
      if (*(i + 24) == v6)
      {
        *(i + 24) = v7;
      }
    }

    renumberTargets(**(a1 + 104), v6, v7);
    v9 = a2[1];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 104);
  v11 = *a2;
  v12 = (*a2 + 8);
  if (!*a2)
  {
    v12 = v10;
  }

  *v12 = v9;
  if (!v9)
  {
    v9 = (v10 + 8);
  }

  *v9 = v11;
  free(a2);
  --*(v10 + 16);
  return v4;
}

uint64_t glpDisassemble1Op(int a1, uint64_t a2, FILE *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, int *a10, int a11)
{
  v40 = *a2;
  v17 = (*a2 >> 6);
  if (*a10 >= 1)
  {
    v18 = 0;
    do
    {
      fprintf_l(a3, 0, "  ");
      if (v18 > 0x30)
      {
        break;
      }

      ++v18;
    }

    while (v18 < *a10);
  }

  fprintf_l(a3, 0, "%s", (&ppstreamOpString)[v17]);
  v19 = *a2;
  if ((*a2 & 0x40000) != 0)
  {
    fprintf_l(a3, 0, " OFFSET");
    v19 = *a2;
  }

  if ((v19 & 0x200000000) != 0)
  {
    fprintf_l(a3, 0, " INVARIANT");
  }

  v38 = v40 & 7;
  if (v17 <= 0xAA)
  {
    switch((v40 >> 6))
    {
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x4Eu:
      case 0x52u:
      case 0x6Eu:
      case 0x76u:
      case 0x7Au:
      case 0x7Du:
      case 0x7Eu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x85u:
      case 0x9Cu:
      case 0x9Fu:
      case 0xA8u:
      case 0xA9u:
        v24 = *a2;
        v25 = ((*a2 >> 19) & 7) - 1;
        if (v25 <= 2)
        {
          fprintf_l(a3, 0, (&off_278B4CE50)[v25]);
          v24 = *a2;
        }

        glpWriteClampSat(a3, (v24 >> 41) & 1, (v24 >> 42) & 1, (v24 >> 43) & 1);
        v22 = a4;
        if (a11)
        {
          glpWriteSizeType(a3, (*a2 >> 36) & 3, (*a2 >> 34) & 3, (*a2 >> 38) & 7);
        }

        fprintf_l(a3, 0, " ");
        glpWriteDestinationOperand(a2, a3, a7, a8, a11);
        fprintf_l(a3, 0, ", ");
        glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, 2, a11, 0);
        fprintf_l(a3, 0, ", ");
        goto LABEL_22;
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x53u:
      case 0x68u:
      case 0x69u:
      case 0x98u:
      case 0x99u:
        v30 = *a2;
        v31 = ((*a2 >> 19) & 7) - 1;
        if (v31 <= 2)
        {
          fprintf_l(a3, 0, (&off_278B4CE50)[v31]);
          v30 = *a2;
        }

        glpWriteClampSat(a3, (v30 >> 41) & 1, (v30 >> 42) & 1, (v30 >> 43) & 1);
        v22 = a4;
        if (a11)
        {
          glpWriteSizeType(a3, (*a2 >> 36) & 3, (*a2 >> 34) & 3, (*a2 >> 38) & 7);
        }

        fprintf_l(a3, 0, " ");
        if (v17 != 153)
        {
          glpWriteDestinationOperand(a2, a3, a7, a8, a11);
          fprintf_l(a3, 0, ", ");
        }

        glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, 2, a11, 0);
        fprintf_l(a3, 0, ", ");
        glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, 3, a11, 0);
        fprintf_l(a3, 0, ", ");
        v23 = 4;
        glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, 4, a11, 0);
        goto LABEL_67;
      case 0x41u:
        glpWriteClampSat(a3, (*a2 >> 41) & 1, (*a2 >> 42) & 1, (*a2 >> 43) & 1);
        if (a11)
        {
          glpWriteSizeType(a3, (*a2 >> 36) & 3, (*a2 >> 34) & 3, (*a2 >> 38) & 7);
        }

        fprintf_l(a3, 0, " ");
        glpWriteDestinationOperand(a2, a3, a7, a8, a11);
        fprintf_l(a3, 0, ", ");
        glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, 2, a11, 1);
        v23 = 3;
        goto LABEL_66;
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x62u:
      case 0x63u:
      case 0x82u:
      case 0x83u:
      case 0xA4u:
      case 0xA5u:
      case 0xA6u:
        v26 = (v40 << 14) >> 31;
        glpWriteClampSat(a3, (*a2 >> 41) & 1, (*a2 >> 42) & 1, (*a2 >> 43) & 1);
        if (a11)
        {
          glpWriteSizeType(a3, (*a2 >> 36) & 3, (*a2 >> 34) & 3, (*a2 >> 38) & 7);
        }

        fprintf_l(a3, 0, " ");
        glpWriteDestinationOperand(a2, a3, a7, a8, a11);
        if (v26 + v38 < 2)
        {
          v29 = 1;
        }

        else
        {
          v27 = v26 + v38 - 1;
          v28 = 2;
          do
          {
            fprintf_l(a3, 0, ", ");
            glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, v28++, a11, 0);
            --v27;
          }

          while (v27);
          v29 = v26 + v38;
        }

        fprintf_l(a3, 0, ", ");
        v32 = v29 + 1;
        fprintf_l(a3, 0, "texture[");
        if (a11)
        {
          glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, v29 + 1, 1, 0);
          v33 = v29 + 2;
        }

        else
        {
          fprintf_l(a3, 0, "%d", *(a2 + 8 * v32 + 4) & 0x7F);
          v33 = v29 + 1;
        }

        fprintf_l(a3, 0, "], ");
        v34 = *(a2 + 8 * v33);
        if ((v34 & 0x1Eu) <= 0x11uLL)
        {
          fprintf_l(a3, 0, (&off_278B4CE68)[v34 & 0x1F]);
        }

        if (a11)
        {
          v23 = v32 + 1;
        }

        else
        {
          v23 = v32;
        }

        goto LABEL_66;
      case 0x48u:
      case 0x49u:
      case 0x4Au:
        if (a11)
        {
          glpWriteSizeType(a3, (*a2 >> 36) & 3, (*a2 >> 34) & 3, (*a2 >> 38) & 7);
        }

        fprintf_l(a3, 0, " ");
        glpWriteAddressOperand(a2, a3, a11);
        fprintf_l(a3, 0, ", ");
        goto LABEL_63;
      case 0x4Bu:
        goto LABEL_64;
      case 0x4Cu:
        if (v38 == 1)
        {
          goto LABEL_62;
        }

LABEL_64:
        fprintf_l(a3, 0, " ");
        glpWriteBranchOperand(a2, a3, a9);
        goto LABEL_65;
      case 0x4Du:
      case 0x54u:
        fprintf_l(a3, 0, (&off_278B4CF50)[(*(a2 + 8) >> 1) & 7]);
        if (*(a2 + 8))
        {
          fprintf_l(a3, 0, "1");
        }

        fprintf_l(a3, 0, ".");
        fprintf_l(a3, 0, "%c", (((*(a2 + 8) >> 4) + 1) & 3u) + 119);
        fprintf_l(a3, 0, "%c", (((*(a2 + 8) >> 6) + 1) & 3u) + 119);
        fprintf_l(a3, 0, "%c", ((BYTE1(*(a2 + 8)) + 1) & 3u) + 119);
        fprintf_l(a3, 0, "%c", (((*(a2 + 8) >> 10) + 1) & 3u) + 119);
        fprintf_l(a3, 0, ")");
        goto LABEL_65;
      case 0x4Fu:
        if (a11 && (v40 & 7) == 0)
        {
          v23 = 1;
          goto LABEL_82;
        }

        if ((v40 & 7) == 0)
        {
          fprintf_l(a3, 0, (&off_278B4CE10)[(*(a2 + 8) >> 1) & 7]);
          if (*(a2 + 8))
          {
            fprintf_l(a3, 0, "1");
          }

          fprintf_l(a3, 0, ".");
          fprintf_l(a3, 0, "%c", (((*(a2 + 8) >> 4) + 1) & 3u) + 119);
          fprintf_l(a3, 0, "%c", (((*(a2 + 8) >> 6) + 1) & 3u) + 119);
          fprintf_l(a3, 0, "%c", ((BYTE1(*(a2 + 8)) + 1) & 3u) + 119);
          v37 = (((*(a2 + 8) >> 10) + 1) & 3u) + 119;
          fprintf_l(a3, 0, "%c");
LABEL_65:
          v23 = 1;
          goto LABEL_66;
        }

LABEL_53:
        fprintf_l(a3, 0, " ");
        v23 = 2;
        glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, 2, a11, 0);
        v22 = a4;
        if (v38 == 2)
        {
LABEL_16:
          fprintf_l(a3, 0, ", ");
LABEL_22:
          v23 = 3;
          glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, 3, a11, 0);
        }

        goto LABEL_67;
      case 0x55u:
      case 0x8Cu:
        ++*a10;
        if (!a11)
        {
          fprintf_l(a3, 0, (&off_278B4CE10)[(*(a2 + 8) >> 1) & 7]);
          v22 = a4;
          if (*(a2 + 8))
          {
            fprintf_l(a3, 0, "1");
          }

          fprintf_l(a3, 0, ".");
          fprintf_l(a3, 0, "%c", (((*(a2 + 8) >> 4) + 1) & 3u) + 119);
          fprintf_l(a3, 0, "%c", (((*(a2 + 8) >> 6) + 1) & 3u) + 119);
          fprintf_l(a3, 0, "%c", ((BYTE1(*(a2 + 8)) + 1) & 3u) + 119);
          fprintf_l(a3, 0, "%c", (((*(a2 + 8) >> 10) + 1) & 3u) + 119);
          fprintf_l(a3, 0, ";");
          v23 = 1;
          goto LABEL_77;
        }

        glpWriteSizeType(a3, (*a2 >> 36) & 3, (*a2 >> 34) & 3, (*a2 >> 38) & 7);
        fprintf_l(a3, 0, " ");
        v23 = 2;
        glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, 2, a11, 0);
LABEL_82:
        v22 = a4;
        fprintf_l(a3, 0, ";");
        break;
      case 0x56u:
      case 0x57u:
        ++*a10;
        goto LABEL_62;
      case 0x58u:
      case 0x6Bu:
        ++*a10;
        goto LABEL_65;
      case 0x59u:
      case 0x5Au:
      case 0x5Bu:
      case 0x6Au:
      case 0x6Cu:
      case 0x6Fu:
      case 0x72u:
      case 0x73u:
      case 0x74u:
      case 0x87u:
      case 0x88u:
      case 0x8Eu:
      case 0x8Fu:
      case 0xAAu:
        goto LABEL_65;
      case 0x60u:
      case 0x61u:
LABEL_62:
        fprintf_l(a3, 0, " ");
LABEL_63:
        v23 = 2;
        glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, 2, a11, 0);
        goto LABEL_66;
      case 0x77u:
      case 0x78u:
        if ((v40 & 7) != 0)
        {
          goto LABEL_53;
        }

        goto LABEL_65;
      case 0x79u:
      case 0x8Du:
        goto LABEL_53;
      default:
        v20 = *a2;
        v21 = ((*a2 >> 19) & 7) - 1;
        if (v21 <= 2)
        {
          fprintf_l(a3, 0, (&off_278B4CE50)[v21]);
          v20 = *a2;
        }

        glpWriteClampSat(a3, (v20 >> 41) & 1, (v20 >> 42) & 1, (v20 >> 43) & 1);
        v22 = a4;
        if (a11)
        {
          glpWriteSizeType(a3, (*a2 >> 36) & 3, (*a2 >> 34) & 3, (*a2 >> 38) & 7);
        }

        fprintf_l(a3, 0, " ");
        glpWriteDestinationOperand(a2, a3, a7, a8, a11);
        fprintf_l(a3, 0, ", ");
        v23 = 2;
        glpWriteSourceOperand(a2, a3, a5, a6, a7, a8, 2, a11, 0);
        if (v38 != 2)
        {
          goto LABEL_67;
        }

        goto LABEL_16;
    }

LABEL_68:
    v35 = v17 - 75;
    if (v35 <= 0x3D)
    {
      if (((1 << (v17 - 75)) & 0x38001BE05) != 0)
      {
        goto LABEL_76;
      }

      if (((1 << (v17 - 75)) & 0x3000039000004000) != 0)
      {
        fprintf_l(a3, 0, "    # Index: %d");
        goto LABEL_77;
      }

      if (v35 == 1)
      {
        if (v38 == 1)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }
    }

    if (v17 - 140 >= 4)
    {
      goto LABEL_77;
    }

LABEL_76:
    fprintf_l(a3, 0, "    # Target: %d Index: %d");
    goto LABEL_77;
  }

  v23 = 0;
LABEL_66:
  v22 = a4;
LABEL_67:
  fprintf_l(a3, 0, ";");
  if (a11)
  {
    goto LABEL_68;
  }

LABEL_77:
  result = fprintf_l(a3, 0, "\n");
  *v22 = v23;
  return result;
}

uint64_t glpWriteSizeType(FILE *a1, int a2, int a3, unsigned int a4)
{
  result = fprintf_l(a1, 0, ":%d", a2 + 1);
  if (a3)
  {
    result = fprintf_l(a1, 0, ":%d", a3 + 1);
  }

  if (a4 <= 4)
  {
    v8 = (&off_278B4D1C8)[a4];

    return fprintf_l(a1, 0, v8);
  }

  return result;
}

FILE *glpWriteSourceOperand(FILE *result, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9)
{
  v15 = &result->_p + a7;
  v16 = *v15;
  if ((*v15 & 0x10) != 0)
  {
    result = fprintf_l(a2, 0, "-");
    v16 = *v15;
  }

  if ((v16 & 0x20) != 0)
  {
    result = fprintf_l(a2, 0, "|");
    v16 = *v15;
  }

  v17 = (v16 >> 6) & 7;
  if (v17 > 2)
  {
    switch(v17)
    {
      case 3u:
        result = fprintf_l(a2, 0, "res%d");
        break;
      case 4u:
        result = fprintf_l(a2, 0, "adr%d");
        break;
      case 5u:
        result = fprintf_l(a2, 0, "shr%d");
        break;
    }
  }

  else
  {
    if (!v17)
    {
      result = fprintf_l(a2, 0, "att%d");
      goto LABEL_24;
    }

    if (v17 != 1)
    {
      result = fprintf_l(a2, 0, "prm%d", *(a3 + ((v16 >> 46) & 0x3FFFC)));
      if (*v15)
      {
        goto LABEL_24;
      }

      v18 = *(a4 + ((*v15 >> 46) & 0x3FFFC));
      goto LABEL_22;
    }

    fprintf_l(a2, 0, "tmp");
    v19 = *v15 >> 48;
    if (a5)
    {
      LODWORD(v19) = *(a5 + 4 * v19);
    }

    result = fprintf_l(a2, 0, "%d", v19);
    if (a6 && (*v15 & 1) == 0)
    {
      v18 = *(a6 + ((*v15 >> 46) & 0x3FFFC));
LABEL_22:
      if (v18 != -1)
      {
        result = fprintf_l(a2, 0, "[%d]");
      }
    }
  }

LABEL_24:
  v20 = *v15;
  if (*v15)
  {
    fprintf_l(a2, 0, "[adr%d", (v20 >> 1) & 1);
    fprintf_l(a2, 0, (&off_278B4CF90)[(*v15 >> 2) & 3]);
    v21 = *v15;
    v22 = *v15 & 0x1C0;
    if (a6 && v22 == 64 || (v23 = 0, a4) && (a6 = a4, v22 == 128))
    {
      v23 = *(a6 + ((v21 >> 46) & 0x3FFFC));
      if (v23 == -1)
      {
        v23 = 0;
      }
    }

    v24 = v23 + (v21 >> 24);
    if (v24)
    {
      if (v24 >= 1)
      {
        fprintf_l(a2, 0, "+");
      }

      fprintf_l(a2, 0, "%d", v24);
    }

    result = fprintf_l(a2, 0, "]");
    v20 = *v15;
  }

  if ((v20 & 0x1C0) == 0x100)
  {
LABEL_69:
    v20 = *v15;
    if (!a8)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (a9)
  {
    for (i = 0; i != 4; ++i)
    {
      v26 = *(v15 + 2);
      v27 = (v26 >> 24) & 0xF;
      if (i != 2)
      {
        v27 = v26 >> 28;
      }

      v28 = (v26 >> 16) & 0xF;
      v29 = (v26 >> 20) & 0xF;
      if (i)
      {
        v30 = ",";
      }

      else
      {
        v30 = ", ";
      }

      if (!i)
      {
        v29 = v28;
      }

      if (i <= 1)
      {
        v31 = v30;
      }

      else
      {
        v31 = ",";
      }

      if (i <= 1)
      {
        v32 = v29;
      }

      else
      {
        v32 = v27;
      }

      result = fprintf_l(a2, 0, v31);
      if (v32 <= 0xA)
      {
        result = fprintf_l(a2, 0, (&off_278B4CEF8)[v32]);
      }
    }

    goto LABEL_69;
  }

  if (!a8)
  {
    if ((v20 & 0x1FE00) == 0x1C800)
    {
      goto LABEL_71;
    }

    fprintf_l(a2, 0, ".");
    v34 = *v15;
    v33 = *v15 >> 9;
    v35 = v33 & 3;
    if (v35 != ((*v15 >> 11) & 3) || v35 != ((v34 >> 13) & 3) || v35 != ((v34 >> 15) & 3))
    {
      fprintf_l(a2, 0, "%c", ((v33 + 1) & 3u) + 119);
      fprintf_l(a2, 0, "%c", (((*v15 >> 11) + 1) & 3u) + 119);
      fprintf_l(a2, 0, "%c", (((*v15 >> 13) + 1) & 3u) + 119);
      v33 = *v15 >> 15;
    }

    goto LABEL_68;
  }

  fprintf_l(a2, 0, ".");
  fprintf_l(a2, 0, "%c", (((*v15 >> 9) + 1) & 3u) + 119);
  v20 = *v15;
  if ((*v15 & 0x180000) != 0)
  {
    fprintf_l(a2, 0, "%c", (((v20 >> 11) + 1) & 3u) + 119);
    v20 = *v15;
  }

  if ((v20 & 0x100000) != 0)
  {
    fprintf_l(a2, 0, "%c", (((v20 >> 13) + 1) & 3u) + 119);
    v20 = *v15;
  }

  if ((~v20 & 0x180000) == 0)
  {
    v33 = v20 >> 15;
LABEL_68:
    result = fprintf_l(a2, 0, "%c", ((v33 + 1) & 3u) + 119);
    goto LABEL_69;
  }

LABEL_70:
  result = glpWriteOperandSize(a2, (v20 >> 19) & 3, (v20 >> 17) & 3);
  v20 = *v15;
LABEL_71:
  if ((v20 & 0x20) != 0)
  {

    return fprintf_l(a2, 0, "|");
  }

  return result;
}

uint64_t glpWriteBranchOperand(void *a1, FILE *a2, int *a3)
{
  if (a3)
  {
    v5 = -1;
    do
    {
      v6 = *a3++;
      ++v5;
    }

    while (v6 != *a1 >> 46);
  }

  else
  {
    v5 = -1;
  }

  fprintf_l(a2, 0, "label_%i", v5);
  fprintf_l(a2, 0, (&off_278B4CF50)[(a1[1] >> 1) & 7]);
  if (a1[1])
  {
    fprintf_l(a2, 0, "1");
  }

  fprintf_l(a2, 0, ".");
  fprintf_l(a2, 0, "%c", (((*(a1 + 2) >> 4) + 1) & 3u) + 119);
  fprintf_l(a2, 0, "%c", (((*(a1 + 2) >> 6) + 1) & 3u) + 119);
  fprintf_l(a2, 0, "%c", ((BYTE1(*(a1 + 2)) + 1) & 3u) + 119);
  fprintf_l(a2, 0, "%c", (((*(a1 + 2) >> 10) + 1) & 3u) + 119);

  return fprintf_l(a2, 0, ")");
}

FILE *glpWriteClampSat(FILE *result, int a2, int a3, int a4)
{
  v5 = result;
  if (a2)
  {
    result = fprintf_l(result, 0, "C");
    if (a3 >= 1)
    {
      result = fprintf_l(v5, 0, "1");
    }
  }

  if (a4)
  {

    return fprintf_l(v5, 0, "_SAT");
  }

  return result;
}

FILE *glpWriteDestinationOperand(FILE *result, FILE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = result;
  v9 = *&result->_r;
  v10 = (v9 >> 12) & 7;
  switch(v10)
  {
    case 5u:
      w_high = HIWORD(v9);
      v13 = "shr%d";
      break;
    case 3u:
      result = fprintf_l(a2, 0, "res%d");
      goto LABEL_13;
    case 1u:
      fprintf_l(a2, 0, "tmp");
      w_high = HIWORD(v8->_w);
      v13 = "%d";
      if (a3 && a5)
      {
        fprintf_l(a2, 0, "%d", *(a3 + 4 * w_high));
        v14 = *&v8->_r;
        if (a4 && (v14 & 0x100000000) == 0 && *(a4 + ((v14 >> 46) & 0x3FFFC)) != -1)
        {
          fprintf_l(a2, 0, "[%d]", *(a4 + ((v14 >> 46) & 0x3FFFC)));
          v14 = *&v8->_r;
        }

        goto LABEL_14;
      }

      break;
    default:
      goto LABEL_13;
  }

  result = fprintf_l(a2, 0, v13, w_high);
LABEL_13:
  v14 = *&v8->_r;
  if (!a5)
  {
    if ((~v8->_r & 0x78000) == 0)
    {
      goto LABEL_46;
    }

    result = fprintf_l(a2, 0, ".");
    v19 = *&v8->_r;
    if ((v19 & 0x40000) != 0)
    {
      result = fprintf_l(a2, 0, "x");
      v19 = *&v8->_r;
      if ((v19 & 0x20000) == 0)
      {
LABEL_33:
        if ((v19 & 0x10000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_68;
      }
    }

    else if ((v19 & 0x20000) == 0)
    {
      goto LABEL_33;
    }

    result = fprintf_l(a2, 0, "y");
    v19 = *&v8->_r;
    if ((v19 & 0x10000) == 0)
    {
LABEL_34:
      if ((v19 & 0x8000) == 0)
      {
        goto LABEL_46;
      }

LABEL_69:
      result = fprintf_l(a2, 0, "w");
      goto LABEL_46;
    }

LABEL_68:
    result = fprintf_l(a2, 0, "z");
    if ((*&v8->_r & 0x8000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_69;
  }

LABEL_14:
  if ((v14 & 0x100000000) != 0)
  {
    fprintf_l(a2, 0, "[adr%d", (v14 >> 33) & 1);
    fprintf_l(a2, 0, (&off_278B4CF90)[(*&v8->_r >> 34) & 3]);
    v15 = 0;
    v16 = *&v8->_r;
    if (a4)
    {
      if ((*&v8->_r & 0x7000) == 0x1000)
      {
        v15 = *(a4 + ((v16 >> 46) & 0x3FFFC));
        if (v15 == -1)
        {
          v15 = 0;
        }
      }
    }

    v17 = v15 + ((v16 >> 12) >> 24);
    if (v17)
    {
      if (v17 >= 1)
      {
        fprintf_l(a2, 0, "+");
      }

      fprintf_l(a2, 0, "%d", v17);
    }

    fprintf_l(a2, 0, "]");
  }

  fprintf_l(a2, 0, ".");
  if ((*&v8->_r & 0x40000) != 0)
  {
    fprintf_l(a2, 0, "%c");
  }

  else
  {
    fprintf_l(a2, 0, "_");
  }

  v18 = *&v8->_r;
  if ((v18 & 0x600000) != 0)
  {
    if ((v18 & 0x20000) != 0)
    {
      fprintf_l(a2, 0, "%c");
    }

    else
    {
      fprintf_l(a2, 0, "_");
    }
  }

  v20 = *&v8->_r;
  if ((v20 & 0x400000) != 0)
  {
    if ((v20 & 0x10000) != 0)
    {
      fprintf_l(a2, 0, "%c");
    }

    else
    {
      fprintf_l(a2, 0, "_");
    }
  }

  if ((~v8->_r & 0x600000) == 0)
  {
    if ((*&v8->_r & 0x8000) != 0)
    {
      fprintf_l(a2, 0, "%c");
    }

    else
    {
      fprintf_l(a2, 0, "_");
    }
  }

  result = glpWriteOperandSize(a2, (v8->_r >> 21) & 3, (v8->_r >> 19) & 3);
LABEL_46:
  v21 = (v8->_r >> 1) & 7;
  if (v21 > 3)
  {
    v22 = " (NE";
    if (v21 != 6)
    {
      v22 = " (FL";
    }

    v23 = " (LE";
    if (v21 != 4)
    {
      v23 = " (LT";
    }

    if (((v8->_r >> 1) & 7) <= 5)
    {
      fprintf_l(a2, 0, v23);
    }

    else
    {
      fprintf_l(a2, 0, v22);
    }
  }

  else if (((v8->_r >> 1) & 7) > 1)
  {
    if (v21 == 2)
    {
      fprintf_l(a2, 0, " (GE");
    }

    else
    {
      fprintf_l(a2, 0, " (GT");
    }
  }

  else
  {
    if (!v21)
    {
      return result;
    }

    fprintf_l(a2, 0, " (EQ");
  }

  if (v8->_r)
  {
    fprintf_l(a2, 0, "1");
  }

  fprintf_l(a2, 0, ".");
  fprintf_l(a2, 0, "%c", (((v8->_r >> 4) + 1) & 3u) + 119);
  fprintf_l(a2, 0, "%c", (((v8->_r >> 6) + 1) & 3u) + 119);
  fprintf_l(a2, 0, "%c", ((BYTE1(v8->_r) + 1) & 3u) + 119);
  fprintf_l(a2, 0, "%c", (((v8->_r >> 10) + 1) & 3u) + 119);

  return fprintf_l(a2, 0, ")");
}

uint64_t glpWriteAddressOperand(uint64_t result, FILE *a2, int a3)
{
  v5 = result;
  v6 = *(result + 8);
  if ((v6 & 0x7000) == 0x4000)
  {
    result = fprintf_l(a2, 0, "adr%d", HIWORD(v6));
    v6 = *(v5 + 8);
  }

  if ((~v6 & 0x78000) == 0)
  {
    return result;
  }

  result = fprintf_l(a2, 0, ".");
  v7 = *(v5 + 8);
  if (!a3)
  {
    if ((v7 & 0x40000) != 0)
    {
      result = fprintf_l(a2, 0, "x");
      v7 = *(v5 + 8);
      if ((v7 & 0x20000) == 0)
      {
LABEL_18:
        if ((v7 & 0x10000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_23;
      }
    }

    else if ((v7 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    result = fprintf_l(a2, 0, "y");
    v7 = *(v5 + 8);
    if ((v7 & 0x10000) == 0)
    {
LABEL_19:
      if ((v7 & 0x8000) == 0)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_23:
    result = fprintf_l(a2, 0, "z");
    if ((*(v5 + 8) & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  if ((v7 & 0x40000) != 0)
  {
    result = fprintf_l(a2, 0, "x");
    v7 = *(v5 + 8);
  }

  if ((v7 & 0x600000) != 0 && (v7 & 0x20000) != 0)
  {
    result = fprintf_l(a2, 0, "y");
    v7 = *(v5 + 8);
  }

  if ((~v7 & 0x410000) == 0)
  {
    result = fprintf_l(a2, 0, "z");
    v7 = *(v5 + 8);
  }

  if ((~v7 & 0x608000) == 0)
  {
LABEL_13:

    return fprintf_l(a2, 0, "w");
  }

  return result;
}

uint64_t glpPPDisassemble(_DWORD *a1)
{
  v217 = 1;
  v216[0] = 0;
  v216[1] = 0;
  v2 = funopen(v216, 0, writefn, 0, 0);
  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = *a1;
  do
  {
    v5 = v5 || glpPPDisassemble_shaderTargets[v4++] == v6;
  }

  while (v4 != 5);
  v213 = *a1;
  if (v213 <= 0x8B30)
  {
    switch(v6)
    {
      case 34336:
        fprintf_l(v2, 0, "!!ARBvp1.0\n");
        goto LABEL_23;
      case 34820:
        fprintf_l(v2, 0, "!!ARBfp1.0\n");
        goto LABEL_23;
      case 35632:
        fprintf_l(v2, 0, "!!fragmentshader\n");
        goto LABEL_23;
    }

LABEL_19:
    fprintf_l(v2, 0, "Unknown Target (error)\n");
    goto LABEL_23;
  }

  if (*a1 > 0x8E86u)
  {
    if (v6 == 36487)
    {
      fprintf_l(v2, 0, "!!tessevaluationshader\n");
      goto LABEL_23;
    }

    if (v6 == 36488)
    {
      fprintf_l(v2, 0, "!!tesscontrolshader\n");
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if (v6 == 35633)
  {
    fprintf_l(v2, 0, "!!vertexshader\n");
    goto LABEL_23;
  }

  if (v6 != 36313)
  {
    goto LABEL_19;
  }

  fprintf_l(v2, 0, "!!geometryshader\n");
LABEL_23:
  v214 = v5;
  if (v5)
  {
    fprintf_l(v3, 0, "\n");
  }

  v7 = a1[24];
  if (v7 >= 1)
  {
    v8 = &a1[2 * a1[25]];
    v9 = a1[24];
    do
    {
      fprintf_l(v3, 0, "OPTION ");
      v11 = *v8++;
      v10 = v11;
      if (BYTE3(v11) <= 0xDu)
      {
        v12 = (v10 >> 24) & 0xF;
        if ((0x3F31u >> v12))
        {
          fprintf_l(v3, 0, (&off_278B4CFB0)[v12]);
        }
      }

      fprintf_l(v3, 0, ";\n");
      --v9;
    }

    while (v9);
  }

  if (v214 && v7)
  {
    fprintf_l(v3, 0, "\n");
  }

  v13 = a1[10];
  v199 = a1;
  if (v13)
  {
    fprintf_l(v3, 0, "ADDRESS adr0");
    if (v13 >= 2)
    {
      for (i = 1; i != v13; ++i)
      {
        fprintf_l(v3, 0, ", adr%d", i);
      }
    }

    fprintf_l(v3, 0, ";\n");
    if (v214)
    {
      fprintf_l(v3, 0, "\n");
      v15 = a1[8];
      v16 = &a1[2 * a1[9]];
LABEL_41:
      if (!v15)
      {
        v18 = 0;
        v20 = 0;
LABEL_47:
        v22 = a1[20];
        if (v22)
        {
          v21 = malloc_type_malloc(4 * v22, 0xCA0EF1E7uLL);
          if (!v21)
          {
            goto LABEL_610;
          }
        }

        else
        {
          v21 = 0;
        }

        if (v15 >= 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = -1;
          v26 = 0xFFFFFFFFLL;
          LODWORD(v27) = -1;
          while (v25 != -1)
          {
            if (v23 <= v27)
            {
              v18[v23] = v25;
              v28 = (v26 + 1);
LABEL_62:
              v20[v23] = v26;
              if (v23 == v27)
              {
                v21[v24++] = v28;
                LODWORD(v27) = -1;
                v26 = 0xFFFFFFFFLL;
                v25 = -1;
              }

              else
              {
                v26 = v28;
              }
            }

            if (++v23 == v15)
            {
              goto LABEL_68;
            }
          }

          v18[v23] = v23;
          v29 = a1[20];
          if (v29 < 1)
          {
LABEL_60:
            v25 = -1;
            v28 = v26;
          }

          else
          {
            v30 = &a1[2 * a1[21]];
            while (1)
            {
              v32 = *v30++;
              v31 = v32;
              if (v23 == WORD1(v32))
              {
                break;
              }

              if (!--v29)
              {
                goto LABEL_60;
              }
            }

            LODWORD(v26) = 0;
            v27 = HIWORD(v31);
            v28 = 1;
            v25 = v23;
          }

          goto LABEL_62;
        }

LABEL_107:
        LODWORD(v40) = -1;
        if (v21)
        {
          goto LABEL_108;
        }

        goto LABEL_109;
      }

      v17 = malloc_type_malloc(4 * v15, 0xCA0EF1E7uLL);
      if (v17)
      {
        v18 = v17;
        v19 = malloc_type_malloc(4 * v15, 0xCA0EF1E7uLL);
        if (v19)
        {
          v20 = v19;
          goto LABEL_47;
        }
      }

LABEL_610:
      abort();
    }

    v18 = 0;
    v20 = 0;
    v21 = 0;
    v15 = a1[8];
    v16 = &a1[2 * a1[9]];
  }

  else
  {
    v15 = a1[8];
    v16 = &a1[2 * a1[9]];
    if (v214)
    {
      goto LABEL_41;
    }

    v18 = 0;
    v20 = 0;
    v21 = 0;
  }

LABEL_68:
  if (v15 < 1)
  {
    goto LABEL_107;
  }

  v211 = v20;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  *v207 = v18;
  v209 = v15;
  v37 = v15 - 1;
  v38 = 1;
  v205 = -1;
  v203 = -1;
  v39 = 0xFFFFFFFFLL;
  LODWORD(v40) = -1;
  v200 = v37;
  v201 = v21;
  do
  {
    if (v38)
    {
      v41 = *v16;
      if ((*v16 & 0x100) != 0)
      {
        fprintf_l(v3, 0, "INVARIANT ");
        v41 = *v16;
      }

      v42 = (v41 & 7) - 1;
      if (v42 <= 2)
      {
        fprintf_l(v3, 0, (&off_278B4D020)[v42]);
      }

      fprintf_l(v3, 0, "TEMP ");
      v35 = (*v16 >> 8) & 1;
      v34 = *v16 & 7;
    }

    if (!v214)
    {
      fprintf_l(v3, 0, "tmp%d", v33);
LABEL_85:
      v44 = v39;
      goto LABEL_86;
    }

    v43 = v211[v33];
    if (!v43)
    {
      v45 = v36;
      v46 = v201;
      fprintf_l(v3, 0, "tmp%d[%d]", *(*v207 + 4 * v33), v201[v36]);
      v47 = 0;
      v48 = *v16;
      v39 = *v16 >> 6;
      v203 = (*v16 >> 3) & 7;
      v205 = *v16 & 7;
LABEL_82:
      LODWORD(v40) = v47;
      if (v47 + 1 == v46[v45])
      {
        ++v36;
        glpWriteSizeTypePrecision(v3, v48 >> 6, (v48 >> 3) & 7, v48 & 7);
        LODWORD(v40) = -1;
      }

      v37 = v200;
      goto LABEL_85;
    }

    v44 = v39;
    if (v43 == -1)
    {
      fprintf_l(v3, 0, "tmp%d", *(*v207 + 4 * v33));
      glpWriteSizeTypePrecision(v3, *v16 >> 6, (*v16 >> 3) & 7, *v16 & 7);
      goto LABEL_86;
    }

    v47 = v40 + 1;
    v48 = *v16;
    if (v39 == *v16 >> 6 && v203 == ((*v16 >> 3) & 7) && v205 == (*v16 & 7))
    {
      v45 = v36;
      v46 = v201;
      goto LABEL_82;
    }

    if (v40 + 2 == v201[v36])
    {
      ++v36;
      LODWORD(v40) = -1;
    }

    else
    {
      LODWORD(v40) = v40 + 1;
    }

    v44 = 0xFFFFFFFFLL;
    v203 = -1;
    v205 = -1;
LABEL_86:
    v39 = v44;
    if (v37 == v33)
    {
      v38 = 0;
LABEL_88:
      fprintf_l(v3, 0, ";\n");
      goto LABEL_89;
    }

    v38 = 1;
    if (((v16[2] >> 8) & 1) != v35 || (v16[2] & 7) != v34)
    {
      goto LABEL_88;
    }

    v38 = 0;
    if (v40 == -1)
    {
      fprintf_l(v3, 0, ", ");
    }

LABEL_89:
    v33 = v33 + 1;
    v16 += 2;
  }

  while (v209 != v33);
  v15 = 1;
  a1 = v199;
  v18 = *v207;
  v20 = v211;
  v21 = v201;
  if (!v201)
  {
    goto LABEL_109;
  }

LABEL_108:
  free(v21);
LABEL_109:
  if (v214 && v15)
  {
    fprintf_l(v3, 0, "\n");
  }

  v51 = a1[12];
  if (v51 >= 1)
  {
    v52 = 0;
    v53 = &a1[2 * a1[13]];
    do
    {
      v54 = *&v53[2 * v52];
      if ((v54 & 0x200) != 0)
      {
        fprintf_l(v3, 0, "CENTROID ");
        v54 = *&v53[2 * v52];
        if ((v54 & 0x100) == 0)
        {
LABEL_116:
          if ((v54 & 0x8000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_129;
        }
      }

      else if ((v54 & 0x100) == 0)
      {
        goto LABEL_116;
      }

      fprintf_l(v3, 0, "NONPERSPECTIVE ");
      v54 = *&v53[2 * v52];
      if ((v54 & 0x8000) == 0)
      {
LABEL_117:
        if ((v54 & 0x10000) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_130;
      }

LABEL_129:
      fprintf_l(v3, 0, "FLAT ");
      v54 = *&v53[2 * v52];
      if ((v54 & 0x10000) == 0)
      {
LABEL_118:
        if ((v54 & 0x20000) == 0)
        {
          goto LABEL_120;
        }

LABEL_119:
        fprintf_l(v3, 0, "SAMPLE ");
        goto LABEL_120;
      }

LABEL_130:
      fprintf_l(v3, 0, "PATCH ");
      if ((*&v53[2 * v52] & 0x20000) != 0)
      {
        goto LABEL_119;
      }

LABEL_120:
      fprintf_l(v3, 0, "ATTRIB att%d", v52);
      if (v214)
      {
        glpWriteSizeTypePrecision(v3, v53[2 * v52] >> 6, (v53[2 * v52] >> 3) & 7, v53[2 * v52] & 7);
      }

      if (v213 <= 35632)
      {
        v55 = " = vertex.";
        if (v213 != 34336)
        {
          if (v213 == 34820 || v213 == 35632)
          {
            fprintf_l(v3, 0, " = fragment.");
          }

          goto LABEL_141;
        }
      }

      else if (v213 > 36486)
      {
        if (v213 != 36487)
        {
          if (v213 == 36488)
          {
            fprintf_l(v3, 0, " = control.");
          }

          goto LABEL_141;
        }

        v55 = " = evaluation.";
      }

      else
      {
        v55 = " = vertex.";
        if (v213 != 35633)
        {
          if (v213 == 36313)
          {
            fprintf_l(v3, 0, " = geometry.");
          }

          goto LABEL_141;
        }
      }

      fprintf_l(v3, 0, v55);
LABEL_141:
      v56 = *&v53[2 * v52];
      switch((v56 >> 10) & 0x1F)
      {
        case 0u:
          fprintf_l(v3, 0, "none", v172);
          break;
        case 1u:
          fprintf_l(v3, 0, "position");
          v57 = *&v53[2 * v52];
          if ((v57 & 0x100000000) != 0)
          {
            fprintf_l(v3, 0, ".origin_upper_left");
            v57 = *&v53[2 * v52];
          }

          if ((v57 & 0x200000000) != 0)
          {
            fprintf_l(v3, 0, ".pixel_center_integer", v172);
          }

          break;
        case 2u:
          fprintf_l(v3, 0, "color.primary", v172);
          break;
        case 3u:
          fprintf_l(v3, 0, "color.secondary", v172);
          break;
        case 0xBu:
          fprintf_l(v3, 0, "facing", v172);
          break;
        case 0xCu:
          fprintf_l(v3, 0, "pointCoord", v172);
          break;
        case 0xDu:
          fprintf_l(v3, 0, "clipVertex", v172);
          break;
        case 0xEu:
          fprintf_l(v3, 0, "clipDistance[%d]");
          break;
        case 0xFu:
          fprintf_l(v3, 0, "pointsize", v172);
          break;
        case 0x10u:
          fprintf_l(v3, 0, "primitiveid", v172);
          break;
        case 0x11u:
          fprintf_l(v3, 0, "vertexid", v172);
          break;
        case 0x12u:
          fprintf_l(v3, 0, "instanceid", v172);
          break;
        case 0x13u:
          fprintf_l(v3, 0, "tessLevelOuter", v172);
          break;
        case 0x14u:
          fprintf_l(v3, 0, "tessLevelInner", v172);
          break;
        case 0x15u:
          fprintf_l(v3, 0, "tessCoord", v172);
          break;
        case 0x16u:
          fprintf_l(v3, 0, "sampleMask[%d]");
          break;
        case 0x17u:
          fprintf_l(v3, 0, "sampleID", v172);
          break;
        case 0x18u:
          fprintf_l(v3, 0, "samplePosition", v172);
          break;
        case 0x19u:
          fprintf_l(v3, 0, "invocationID", v172);
          break;
        case 0x1Au:
          fprintf_l(v3, 0, "patchVerticiesIn", v172);
          break;
        case 0x1Bu:
          fprintf_l(v3, 0, "fragdata[%d]");
          break;
        case 0x1Cu:
          if ((v56 & 0x10000000000) != 0)
          {
            fprintf_l(v3, 0, "generic[%d]");
          }

          else
          {
            switch(BYTE4(v56) & 0x3F)
            {
              case 0:
                fprintf_l(v3, 0, "position", v172);
                break;
              case 1:
                fprintf_l(v3, 0, "normal", v172);
                break;
              case 2:
                fprintf_l(v3, 0, "color.primary", v172);
                break;
              case 3:
                fprintf_l(v3, 0, "color.secondary", v172);
                break;
              case 4:
                fprintf_l(v3, 0, "weight[0]", v172);
                break;
              case 5:
                fprintf_l(v3, 0, "fogcoord", v172);
                break;
              case 6:
                fprintf_l(v3, 0, "pointsize", v172);
                break;
              case 7:
                fprintf_l(v3, 0, "matrixindex[0]", v172);
                break;
              case 8:
              case 9:
              case 0xA:
              case 0xB:
              case 0xC:
              case 0xD:
              case 0xE:
              case 0xF:
                fprintf_l(v3, 0, "texcoord[%d]");
                break;
              case 0x10:
              case 0x11:
              case 0x12:
              case 0x13:
              case 0x14:
              case 0x15:
              case 0x16:
              case 0x17:
              case 0x18:
              case 0x19:
              case 0x1A:
              case 0x1B:
              case 0x1C:
              case 0x1D:
              case 0x1E:
              case 0x1F:
                fprintf_l(v3, 0, "attrib[%d]");
                break;
              case 0x20:
                fprintf_l(v3, 0, "material.front.ambient", v172);
                break;
              case 0x21:
                fprintf_l(v3, 0, "material.back.ambient", v172);
                break;
              case 0x22:
                fprintf_l(v3, 0, "material.front.diffuse", v172);
                break;
              case 0x23:
                fprintf_l(v3, 0, "material.back.diffuse", v172);
                break;
              case 0x24:
                fprintf_l(v3, 0, "material.front.specular", v172);
                break;
              case 0x25:
                fprintf_l(v3, 0, "material.back.specular", v172);
                break;
              case 0x26:
                fprintf_l(v3, 0, "material.front.emission");
                break;
              case 0x27:
                fprintf_l(v3, 0, "material.back.emission", v172);
                break;
              case 0x28:
                fprintf_l(v3, 0, "material.front.shininess", v172);
                break;
              case 0x29:
                fprintf_l(v3, 0, "material.back.shininess", v172);
                break;
              default:
                break;
            }
          }

          if ((v53[2 * v52 + 1] & 0x80) != 0)
          {
            fprintf_l(v3, 0, "[%d]");
          }

          break;
        default:
          break;
      }

      fprintf_l(v3, 0, ";\n");
      ++v52;
    }

    while (v51 != v52);
  }

  if (v214 && v51)
  {
    fprintf_l(v3, 0, "\n");
  }

  v58 = a1[14];
  v208 = v18;
  v212 = v20;
  if (v58)
  {
    v59 = a1[15];
    v60 = malloc_type_malloc(4 * v58, 0xCA0EF1E7uLL);
    if (!v60)
    {
      goto LABEL_610;
    }

    v61 = v60;
    v62 = malloc_type_malloc(4 * v58, 0xCA0EF1E7uLL);
    if (!v62)
    {
      goto LABEL_610;
    }

    v63 = a1[18];
    v206 = v62;
    v40 = v40;
    v210 = v61;
    if (v63)
    {
      v64 = malloc_type_malloc(4 * v63, 0xCA0EF1E7uLL);
      if (!v64)
      {
        goto LABEL_610;
      }
    }

    else
    {
      v64 = 0;
    }

    if (v58 >= 1)
    {
      v65 = 0;
      v66 = 0;
      v67 = -1;
      v68 = 0xFFFFFFFFLL;
      LODWORD(v69) = -1;
      v70 = &a1[2 * v59];
      v71 = v206;
      v72 = v61;
      while (1)
      {
        if ((*&v70[2 * v65] & 0x1F00) != 0)
        {
          if (v67 == -1)
          {
            *(v61 + v65) = v65;
            v74 = a1[18];
            if (v74 < 1)
            {
LABEL_216:
              v67 = -1;
              v73 = v68;
            }

            else
            {
              v75 = &a1[2 * a1[19]];
              while (1)
              {
                v77 = *v75++;
                v76 = v77;
                if (v65 == WORD1(v77))
                {
                  break;
                }

                if (!--v74)
                {
                  goto LABEL_216;
                }
              }

              LODWORD(v68) = 0;
              v69 = HIWORD(v76);
              v73 = 1;
              v67 = v65;
            }

            goto LABEL_218;
          }

          if (v65 <= v69)
          {
            *(v61 + v65) = v67;
            v73 = (v68 + 1);
LABEL_218:
            v206[v65] = v68;
            if (v65 == v69)
            {
              v64[v66++] = v73;
              LODWORD(v69) = -1;
              v68 = 0xFFFFFFFFLL;
              v67 = -1;
            }

            else
            {
              v68 = v73;
            }
          }
        }

        if (++v65 == v58)
        {
          v78 = 0;
          while (1)
          {
            if (*v71)
            {
              if (*v71 == -1)
              {
                fprintf_l(v3, 0, "PARAM prm%d", *v72);
                v79 = v40;
                if (v214)
                {
                  glpWriteSizeTypePrecision(v3, *v70 >> 6, (*v70 >> 3) & 7, *v70 & 7);
                }

                fprintf_l(v3, 0, " = ");
              }

              else
              {
                v79 = (v40 + 1);
                fprintf_l(v3, 0, "    ");
              }
            }

            else
            {
              fprintf_l(v3, 0, "PARAM prm%d[%d]", *v72, v64[v78]);
              if (v214)
              {
                glpWriteSizeTypePrecision(v3, *v70 >> 6, (*v70 >> 3) & 7, *v70 & 7);
              }

              v79 = 0;
              fprintf_l(v3, 0, " = {\n    ");
            }

            v80 = *v70;
            v81 = (*v70 >> 8) & 0x1F;
            if (v81 - 1 < 5)
            {
              break;
            }

            if (v81 != 6)
            {
              fprintf_l(v3, 0, "state.");
LABEL_234:
              v40 = v79;
              switch(v79)
              {
                case 1:
                  v179 = v70[1] & 0x3FFF;
                  fprintf_l(v3, 0, "local[%d]");
                  goto LABEL_342;
                case 2:
                  v180 = v70[1] & 0x3FFF;
                  fprintf_l(v3, 0, "uniform[%d]");
                  goto LABEL_342;
                case 3:
                  v176 = v70[1] & 0x3FFFF;
                  fprintf_l(v3, 0, "uniformSubroutine[%d]");
                  goto LABEL_342;
                case 4:
                  v182 = BYTE4(*v70);
                  fprintf_l(v3, 0, "bindable[%d][%d]");
                  goto LABEL_342;
                case 5:
                  v183 = v70[1] & 0x3FFF;
                  fprintf_l(v3, 0, "env[%d]");
                  goto LABEL_342;
                case 6:
                  v80 = *v70;
                  goto LABEL_237;
                case 7:
                  fprintf_l(v3, 0, "verticesIn", v172, v189, *v193, v196);
                  goto LABEL_342;
                case 8:
                  fprintf_l(v3, 0, "verticesOut", v172, v189, *v193, v196);
                  goto LABEL_342;
                case 9:
                  fprintf_l(v3, 0, "numSamples", v172, v189, *v193, v196);
                  goto LABEL_342;
                case 10:
                  v192 = (*v70 >> 36) & 0xFLL;
                  fprintf_l(v3, 0, "tfBuffer[%d][%d][%d]");
                  goto LABEL_342;
                case 11:
                  v177 = HIDWORD(*v70) & 0xFLL;
                  fprintf_l(v3, 0, "tfBase[%d][%d]");
                  goto LABEL_342;
                case 12:
                case 13:
                  v173 = HIDWORD(*v70) & 1;
                  fprintf_l(v3, 0, "inputs[%d][%d]");
                  goto LABEL_342;
                case 14:
                  v181 = *(v70 + 1);
                  fprintf_l(v3, 0, "generic[%d]");
                  goto LABEL_342;
                case 15:
                  fprintf_l(v3, 0, "matrix.");
                  v90 = (*v70 >> 44) & 7;
                  if (((*v70 >> 44) & 7) > 3)
                  {
                    if (((*v70 >> 44) & 7) > 5)
                    {
                      if (v90 == 6)
                      {
                        fprintf_l(v3, 0, "palette[%d].");
                      }
                    }

                    else if (v90 == 4)
                    {
                      fprintf_l(v3, 0, "texture[%d].");
                    }

                    else
                    {
                      fprintf_l(v3, 0, "program[%d].");
                    }
                  }

                  else if (((*v70 >> 44) & 7) > 1)
                  {
                    if (v90 == 2)
                    {
                      fprintf_l(v3, 0, "color[%d].");
                    }

                    else
                    {
                      fprintf_l(v3, 0, "modelview[%d].");
                    }
                  }

                  else if (v90)
                  {
                    fprintf_l(v3, 0, "projection.", v172);
                  }

                  else
                  {
                    fprintf_l(v3, 0, "mvp.", v172);
                  }

                  v94 = (*v70 >> 40) & 3;
                  if (((*v70 >> 40) & 3) > 1)
                  {
                    if (v94 == 3)
                    {
                      fprintf_l(v3, 0, "invtrans.");
                    }

                    else
                    {
                      fprintf_l(v3, 0, "inverse.");
                    }
                  }

                  else if (v94)
                  {
                    fprintf_l(v3, 0, "transpose.");
                  }

                  v185 = (*v70 >> 42) & 3;
                  fprintf_l(v3, 0, "row[%d]");
                  goto LABEL_342;
                case 16:
                  fprintf_l(v3, 0, "light[%d].", *(v70 + 4));
                  v91 = (*v70 >> 40) & 0xFLL;
                  if (((*v70 >> 40) & 0xF) > 4)
                  {
                    if (((*v70 >> 40) & 0xF) <= 6)
                    {
                      if (v91 == 5)
                      {
                        fprintf_l(v3, 0, "attenuation", v172, v189, *v193, v196);
                      }

                      else if (v91 == 6)
                      {
                        fprintf_l(v3, 0, "half", v172, v189, *v193, v196);
                      }
                    }

                    else
                    {
                      switch(v91)
                      {
                        case 7:
                          fprintf_l(v3, 0, "position_norm", v172, v189, *v193, v196);
                          break;
                        case 8:
                          fprintf_l(v3, 0, "direction_norm");
                          break;
                        case 9:
                          fprintf_l(v3, 0, "spotcutoff", v172, v189, *v193, v196);
                          break;
                      }
                    }

                    goto LABEL_342;
                  }

                  if (((*v70 >> 40) & 0xF) > 1)
                  {
                    switch(v91)
                    {
                      case 2:
                        goto LABEL_302;
                      case 3:
                        fprintf_l(v3, 0, "position", v172, v189, *v193, v196);
                        break;
                      case 4:
                        fprintf_l(v3, 0, "spot.direction", v172, v189, *v193, v196);
                        break;
                    }

                    goto LABEL_342;
                  }

                  if (!v91)
                  {
                    goto LABEL_326;
                  }

                  goto LABEL_325;
                case 17:
                  fprintf_l(v3, 0, "lightprod[%d].", *(v70 + 4));
                  if ((*v70 & 0x10000000000) != 0)
                  {
                    fprintf_l(v3, 0, "back.");
                  }

                  else
                  {
                    fprintf_l(v3, 0, "front.");
                  }

                  v93 = (*v70 >> 41) & 3;
                  if (((*v70 >> 41) & 3) > 1)
                  {
                    goto LABEL_301;
                  }

                  if (!v93)
                  {
                    goto LABEL_326;
                  }

                  goto LABEL_325;
                case 18:
                  if ((*v70 & 0xE00000000) == 0xA00000000)
                  {
                    fprintf_l(v3, 0, "lightmodel.");
                  }

                  else
                  {
                    fprintf_l(v3, 0, "material.");
                  }

                  if ((*v70 & 0x100000000) != 0)
                  {
                    fprintf_l(v3, 0, "back.");
                  }

                  else
                  {
                    fprintf_l(v3, 0, "front.");
                  }

                  v93 = (*v70 >> 33) & 7;
                  if (((*v70 >> 33) & 7) > 2)
                  {
                    switch(v93)
                    {
                      case 3:
                        fprintf_l(v3, 0, "emission", v172, v189, *v193, v196);
                        break;
                      case 4:
                        fprintf_l(v3, 0, "shininess", v172, v189, *v193, v196);
                        break;
                      case 5:
                        fprintf_l(v3, 0, "scenecolor", v172, v189, *v193, v196);
                        break;
                    }
                  }

                  else if (v93)
                  {
                    if (v93 == 1)
                    {
LABEL_325:
                      fprintf_l(v3, 0, "diffuse", v172, v189, *v193, v196);
                    }

                    else
                    {
LABEL_301:
                      if (v93 == 2)
                      {
LABEL_302:
                        fprintf_l(v3, 0, "specular", v172, v189, *v193, v196);
                      }
                    }
                  }

                  else
                  {
LABEL_326:
                    fprintf_l(v3, 0, "ambient", v172, v189, *v193, v196);
                  }

                  break;
                case 19:
                  fprintf_l(v3, 0, "lightmodel.ambient", v172, v189, *v193, v196);
                  goto LABEL_342;
                case 20:
                  fprintf_l(v3, 0, "texgen[%d].eye.", v70[1] & 0x7F);
                  v92 = (*v70 >> 39) & 7;
                  if (((*v70 >> 39) & 7) > 1)
                  {
                    goto LABEL_289;
                  }

                  if (v92)
                  {
                    goto LABEL_275;
                  }

                  goto LABEL_288;
                case 21:
                  fprintf_l(v3, 0, "texgen[%d].object.", v70[1] & 0x7F);
                  v92 = (*v70 >> 39) & 7;
                  if (((*v70 >> 39) & 7) > 1)
                  {
LABEL_289:
                    if (v92 == 2)
                    {
                      fprintf_l(v3, 0, "r", v172, v189, *v193, v196);
                    }

                    else if (v92 == 3)
                    {
                      fprintf_l(v3, 0, "q", v172, v189, *v193, v196);
                    }
                  }

                  else if (v92)
                  {
LABEL_275:
                    if (v92 == 1)
                    {
                      fprintf_l(v3, 0, "t", v172, v189, *v193, v196);
                    }
                  }

                  else
                  {
LABEL_288:
                    fprintf_l(v3, 0, "s", v172, v189, *v193, v196);
                  }

                  goto LABEL_342;
                case 22:
                  v184 = v70[1] & 0x7F;
                  fprintf_l(v3, 0, "texenv[%d].color");
                  goto LABEL_342;
                case 23:
                  goto LABEL_342;
                case 24:
                  v178 = *(v70 + 4);
                  fprintf_l(v3, 0, "clip[%d].plane");
                  goto LABEL_342;
                case 25:
                  fprintf_l(v3, 0, "fog.color", v172, v189, *v193, v196);
                  goto LABEL_342;
                case 26:
                  fprintf_l(v3, 0, "fog.params", v172, v189, *v193, v196);
                  goto LABEL_342;
                case 27:
                  fprintf_l(v3, 0, "fog.params_ext", v172, v189, *v193, v196);
                  goto LABEL_342;
                case 28:
                  fprintf_l(v3, 0, "point.size", v172, v189, *v193, v196);
                  goto LABEL_342;
                case 29:
                  fprintf_l(v3, 0, "point.attenuation", v172, v189, *v193, v196);
                  goto LABEL_342;
                case 30:
                  fprintf_l(v3, 0, "depth.range", v172, v189, *v193, v196);
                  goto LABEL_342;
                case 31:
                  fprintf_l(v3, 0, "normalscale", v172, v189, *v193, v196);
                  goto LABEL_342;
                default:
                  fprintf_l(v3, 0, "none", v172, v189, *v193, v196);
                  goto LABEL_342;
              }

              goto LABEL_342;
            }

LABEL_237:
            v82 = (&a1[2 * a1[35]] + ((v80 >> 28) & 0xFFFF0));
            v83 = (v80 >> 3) & 7;
            if (v83 > 2)
            {
              v40 = v79;
              if (v83 == 3)
              {
                *v195 = v82[2];
                v198 = v82[3];
                v175 = *v82;
                v191 = v82[1];
                fprintf_l(v3, 0, "{%u, %u, %u, %u}");
              }

              else if (v83 == 4)
              {
                v84 = *v82;
                v85 = *(v82 + 1);
                fprintf_l(v3, 0, "{%g, %g}");
              }
            }

            else
            {
              v40 = v79;
              if ((v83 - 1) >= 2)
              {
                if (!v83)
                {
                  v86 = *v82;
                  v87 = *(v82 + 1);
                  v88 = *(v82 + 2);
                  v89 = *(v82 + 3);
                  fprintf_l(v3, 0, "{%g, %g, %g, %g}");
                }
              }

              else
              {
                *v194 = v82[2];
                v197 = v82[3];
                v174 = *v82;
                v190 = v82[1];
                fprintf_l(v3, 0, "{%d, %d, %d, %d}");
              }
            }

LABEL_342:
            if (*v71 == -1)
            {
              v95 = ";\n";
            }

            else
            {
              if (v40 + 1 == v64[v78])
              {
                v95 = "\n};\n";
              }

              else
              {
                v95 = ",\n";
              }

              if (v40 + 1 == v64[v78])
              {
                ++v78;
              }
            }

            fprintf_l(v3, 0, v95);
            v70 += 2;
            ++v72;
            ++v71;
            if (!--v58)
            {
              goto LABEL_356;
            }
          }

          fprintf_l(v3, 0, "program.");
          goto LABEL_234;
        }
      }
    }

LABEL_356:
    if (v64)
    {
      free(v64);
    }

    fprintf_l(v3, 0, "\n");
  }

  else
  {
    v210 = 0;
    v206 = 0;
  }

  v96 = a1[16];
  if (v96 >= 1)
  {
    v97 = 0;
    v98 = &a1[2 * a1[17]];
    if (v213 == 36488)
    {
      v99 = "SHARED shr";
    }

    else
    {
      v99 = "OUTPUT res";
    }

    while (1)
    {
      v100 = *&v98[2 * v97];
      if ((v100 & 0x2000) != 0)
      {
        fprintf_l(v3, 0, "INVARIANT ");
        v100 = *&v98[2 * v97];
        if ((v100 & 0x4000) != 0)
        {
LABEL_374:
          fprintf_l(v3, 0, "PATCH ");
          v100 = *&v98[2 * v97];
          if ((v100 & 0x8000) == 0)
          {
            goto LABEL_367;
          }

LABEL_366:
          fprintf_l(v3, 0, "SAMPLE ");
          v100 = *&v98[2 * v97];
          goto LABEL_367;
        }
      }

      else if ((v100 & 0x4000) != 0)
      {
        goto LABEL_374;
      }

      if ((v100 & 0x8000) != 0)
      {
        goto LABEL_366;
      }

LABEL_367:
      v101 = (v100 & 7) - 1;
      if (v101 <= 2)
      {
        fprintf_l(v3, 0, (&off_278B4D020)[v101]);
      }

      fprintf_l(v3, 0, v99);
      fprintf_l(v3, 0, "%d", v97);
      if (v214)
      {
        glpWriteSizeTypePrecision(v3, v98[2 * v97] >> 6, (v98[2 * v97] >> 3) & 7, v98[2 * v97] & 7);
      }

      fprintf_l(v3, 0, " = ");
      v102 = *&v98[2 * v97];
      switch((v102 >> 8) & 0x1F)
      {
        case 0u:
          fprintf_l(v3, 0, "result.none", v172);
          goto LABEL_409;
        case 1u:
          fprintf_l(v3, 0, "result.position", v172);
          goto LABEL_409;
        case 3u:
          fprintf_l(v3, 0, "result.pointsize", v172);
          goto LABEL_409;
        case 4u:
          fprintf_l(v3, 0, "result.color");
          if (v213 <= 35631)
          {
            if (v213 == 34336)
            {
              goto LABEL_405;
            }

            if (v213 == 34820)
            {
LABEL_402:
              v104 = *&v98[2 * v97];
              if ((v104 & 0x1E00000000) != 0)
              {
                fprintf_l(v3, 0, "[%d]", (v104 >> 33) & 7);
                if ((v98[2 * v97 + 1] & 0x10) != 0)
                {
                  fprintf_l(v3, 0, "[%d]");
                }
              }
            }
          }

          else
          {
            if (v213 == 35632)
            {
              goto LABEL_402;
            }

            if (v213 == 36313 || v213 == 35633)
            {
LABEL_405:
              if (v98[2 * v97 + 1])
              {
                fprintf_l(v3, 0, ".back.primary", v172);
              }

              else
              {
                fprintf_l(v3, 0, ".front.primary", v172);
              }
            }
          }

LABEL_409:
          fprintf_l(v3, 0, ";\n");
          if (v96 == ++v97)
          {
            goto LABEL_413;
          }

          break;
        case 5u:
          fprintf_l(v3, 0, "result.color");
          if (v213 == 35633 || v213 == 34336)
          {
            if (v98[2 * v97 + 1])
            {
              fprintf_l(v3, 0, ".back.secondary", v172);
            }

            else
            {
              fprintf_l(v3, 0, ".front.secondary", v172);
            }
          }

          goto LABEL_409;
        case 7u:
          fprintf_l(v3, 0, "result.depth", v172);
          goto LABEL_409;
        case 9u:
          fprintf_l(v3, 0, "result.clipVertex", v172);
          goto LABEL_409;
        case 0xAu:
          fprintf_l(v3, 0, "result.clipDistance[%d]");
          goto LABEL_409;
        case 0xBu:
          fprintf_l(v3, 0, "result.primitiveid", v172);
          goto LABEL_409;
        case 0xCu:
          fprintf_l(v3, 0, "result.layer", v172);
          goto LABEL_409;
        case 0xDu:
          fprintf_l(v3, 0, "result.tessLevelOuter", v172);
          goto LABEL_409;
        case 0xEu:
          fprintf_l(v3, 0, "result.tessLevelInner", v172);
          goto LABEL_409;
        case 0xFu:
          fprintf_l(v3, 0, "result.sampleMask[%d]");
          goto LABEL_409;
        case 0x10u:
          fprintf_l(v3, 0, "result.viewportIndex", v172);
          goto LABEL_409;
        case 0x11u:
          v103 = HIDWORD(v102) & 0x3F;
          if ((v102 & 0x4000000000) != 0)
          {
            fprintf_l(v3, 0, "result.generic[%d]");
          }

          else if ((v103 - 8) >= 8)
          {
            if (v103 == 5)
            {
              fprintf_l(v3, 0, "result.fogcoord", v172);
            }
          }

          else
          {
            fprintf_l(v3, 0, "result.texcoord[%d]");
          }

          goto LABEL_409;
        default:
          goto LABEL_409;
      }
    }
  }

LABEL_413:
  if (!v214 || v96)
  {
    fprintf_l(v3, 0, "\n");
  }

  v105 = a1[26];
  v106 = v212;
  if (v105 >= 1)
  {
    v107 = 0;
    v108 = 0;
    v109 = &a1[2 * a1[27]];
    v110 = a1[26];
    do
    {
      v111 = (*&v109[2 * v107] >> 6);
      if (v111 == 75 || (v111 == 76 ? (v112 = (*&v109[2 * v107] & 7) == 1) : (v112 = 1), !v112))
      {
        ++v108;
      }

      v107 += (*&v109[2 * v107] & 7) + 2;
      --v110;
    }

    while (v110);
    v113 = v208;
    if (v108)
    {
      v114 = malloc_type_malloc(4 * v108, 0xCA0EF1E7uLL);
      if (!v114)
      {
        goto LABEL_610;
      }

      v115 = v114;
      v116 = v108;
      bzero(v114, v108);
      v117 = malloc_type_malloc(4 * v108, 0xCA0EF1E7uLL);
      if (!v117)
      {
        goto LABEL_610;
      }

      v118 = v117;
      bzero(v117, v116);
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = v118 + 1;
      v123 = v115 + 1;
      v113 = v208;
      while (2)
      {
        v124 = *&v109[2 * v120];
        v125 = (v124 >> 6);
        if (v125 == 75 || (v125 == 76 ? (v126 = (*&v109[2 * v120] & 7) == 1) : (v126 = 1), !v126))
        {
          v127 = v124 >> 46;
          if (v121 < 1)
          {
            LODWORD(v128) = 0;
          }

          else
          {
            v128 = 0;
            while (v115[v128] < v127)
            {
              if (v121 == ++v128)
              {
                goto LABEL_441;
              }
            }
          }

          if (v128 == v121)
          {
LABEL_441:
            v129 = v121;
            v130 = v119;
            goto LABEL_447;
          }

          v131 = v115[v128];
          if (v131 != v127)
          {
            v132 = v128;
            v115[v128] = v127;
            v130 = v118[v128];
            v118[v128] = v119;
            v129 = v128 + 1;
            if (v129 < v121)
            {
              do
              {
                v133 = v131;
                v134 = v130;
                v131 = v123[v132];
                v123[v132] = v133;
                v130 = v122[v132];
                v122[v132++] = v134;
              }

              while (v121 > v132 + 1);
              v129 = v121;
            }

            LODWORD(v127) = v131;
LABEL_447:
            ++v121;
            v115[v129] = v127;
            v118[v129] = v130;
            v124 = *&v109[2 * v120];
          }
        }

        v120 += (v124 & 7) + 2;
        if (++v119 == v105)
        {
          goto LABEL_451;
        }

        continue;
      }
    }

    v115 = 0;
    v118 = 0;
    v121 = 0;
LABEL_451:
    v202 = v118;
    v204 = v109;
    v135 = 0;
    v136 = 0;
    v137 = 0;
    do
    {
      __ptr = 0;
      v138 = &v204[2 * v136];
      if ((*v138 & 0x4000) != 0)
      {
        fprintf_l(v3, 0, "main:\n");
      }

      if (v121 && v137 < v121 && v135 == v115[v137])
      {
        v139 = v217;
        v140 = v217 - 2;
        if (v217 >= 2)
        {
          if (v140 >= 0x31)
          {
            v140 = 49;
          }

          v141 = v140 + 1;
          do
          {
            fprintf_l(v3, 0, "  ");
            --v141;
          }

          while (v141);
        }

        fprintf_l(v3, 0, "label_%d:\n", v137);
        v217 = v139;
        ++v137;
        v113 = v208;
        v106 = v212;
      }

      v142 = (*v138 >> 6) - 88;
      v143 = v142 > 0x37;
      v144 = (1 << v142) & 0x8000000010000FLL;
      if (!v143 && v144 != 0)
      {
        --v217;
      }

      glpDisassemble1Op(v135++, v138, v3, &__ptr, v210, v206, v113, v106, v115, &v217, v214);
      v136 += __ptr + 1;
    }

    while (v135 != v105);
    a1 = v199;
    if (v121 && v137 < v121 && v105 + 1 == v115[v137])
    {
      fprintf_l(v3, 0, "  label_%d:\n", v137);
      goto LABEL_474;
    }

    if (v121)
    {
LABEL_474:
      free(v115);
      free(v202);
    }
  }

  fprintf_l(v3, 0, "END\n");
  v146 = a1[32];
  if (v146 >= 1)
  {
    v147 = &v199[2 * v199[33]];
    do
    {
      v148 = *v147 >> 3;
      fprintf_l(v3, 0, "STATE ");
      if (v148 > 15)
      {
        if (v148 <= 18)
        {
          if (v148 == 16)
          {
            fprintf_l(v3, 0, "DITHERING ENABLED", v172, v189);
          }

          else if (v148 == 17)
          {
            fprintf_l(v3, 0, "LOGIC_OP ");
            switch(*v147 >> 28)
            {
              case 1:
                fprintf_l(v3, 0, "PP_LOGIC_SET", v172, v189);
                break;
              case 2:
                fprintf_l(v3, 0, "PP_LOGIC_COPY", v172, v189);
                break;
              case 3:
                fprintf_l(v3, 0, "PP_LOGIC_COPY_INVERTED", v172, v189);
                break;
              case 4:
                fprintf_l(v3, 0, "PP_LOGIC_NOOP", v172, v189);
                break;
              case 5:
                fprintf_l(v3, 0, "PP_LOGIC_INVERT", v172, v189);
                break;
              case 6:
                fprintf_l(v3, 0, "PP_LOGIC_AND", v172, v189);
                break;
              case 7:
                fprintf_l(v3, 0, "PP_LOGIC_NAND", v172, v189);
                break;
              case 8:
                fprintf_l(v3, 0, "PP_LOGIC_OR");
                break;
              case 9:
                fprintf_l(v3, 0, "PP_LOGIC_NOR", v172, v189);
                break;
              case 0xA:
                fprintf_l(v3, 0, "PP_LOGIC_XOR", v172, v189);
                break;
              case 0xB:
                fprintf_l(v3, 0, "PP_LOGIC_EQUIV", v172, v189);
                break;
              case 0xC:
                fprintf_l(v3, 0, "PP_LOGIC_AND_REVERSE", v172, v189);
                break;
              case 0xD:
                fprintf_l(v3, 0, "PP_LOGIC_AND_INVERTED", v172, v189);
                break;
              case 0xE:
                fprintf_l(v3, 0, "PP_LOGIC_OR_REVERSE", v172, v189);
                break;
              case 0xF:
                fprintf_l(v3, 0, "PP_LOGIC_OR_INVERTED", v172, v189);
                break;
              default:
                fprintf_l(v3, 0, "PP_LOGIC_CLEAR", v172, v189);
                break;
            }
          }

          else
          {
            fprintf_l(v3, 0, "BUFFER_MASK ");
            v162 = *v147;
            if (HIBYTE(*v147) != 255)
            {
              fprintf_l(v3, 0, "RED MASK = 0x%0X ", HIBYTE(*v147));
              v162 = *v147;
            }

            if (BYTE6(v162) != 255)
            {
              fprintf_l(v3, 0, "GREEN MASK = 0x%0X ", BYTE6(v162));
              v162 = *v147;
            }

            if (BYTE5(v162) != 255)
            {
              fprintf_l(v3, 0, "BLUE MASK = 0x%0X ", BYTE5(v162));
              v162 = *v147;
            }

            if (BYTE4(v162) != 255)
            {
              fprintf_l(v3, 0, "ALPHA MASK = 0x%0X ", BYTE4(v162));
              v162 = *v147;
            }

            if ((v162 & 0x1000000) == 0)
            {
              fprintf_l(v3, 0, "DEPTH MASK = 0 ");
              v162 = *v147;
            }

            if ((~v162 & 0xFFFF00) != 0)
            {
              fprintf_l(v3, 0, "STENCIL MASK = 0x%0X STENCIL BACK MASK = 0x%0X ");
            }
          }
        }

        else if ((v148 - 19) < 0xB)
        {
          fprintf_l(v3, 0, "BUFFER_CONFIG ");
          v155 = *v147;
          if ((*v147 & 0x4000) != 0)
          {
            fprintf_l(v3, 0, "sRGB ");
            v155 = *v147;
          }

          v156 = ((v155 >> 8) & 0xF) - 1;
          v157 = "unknown type ";
          if (v156 <= 9)
          {
            v157 = (&off_278B4D0F8)[v156];
          }

          fprintf_l(v3, 0, v157);
          v158 = *v147;
          v159 = (*v147 >> 40) & 3;
          if (v159)
          {
            fprintf_l(v3, 0, "samplescale %d ", v159 + 1);
            v158 = *v147;
          }

          if ((v158 & 0x1000) != 0)
          {
            fprintf_l(v3, 0, "Texture layout ");
            v158 = *v147;
          }

          fprintf_l(v3, 0, "Width %d", v158 >> 15);
          v160 = *v147 >> 47;
          fprintf_l(v3, 0, " Height %d");
        }

        goto LABEL_504;
      }

      if (v148 > 4)
      {
        if ((v148 - 8) < 8)
        {
          fprintf_l(v3, 0, "BLENDING \n\talpha equ = ");
          v149 = (*v147 >> 8) & 7;
          if (v149 <= 4)
          {
            fprintf_l(v3, 0, (&off_278B4D038)[v149]);
          }

          fprintf_l(v3, 0, "\n\trgb equ = ");
          v150 = (*v147 >> 11) & 7;
          if (v150 <= 4)
          {
            fprintf_l(v3, 0, (&off_278B4D038)[v150]);
          }

          fprintf_l(v3, 0, "\n\tsrc = ");
          v151 = (*v147 >> 47) & 0x1FLL;
          if (v151 <= 0x12)
          {
            fprintf_l(v3, 0, (&off_278B4D060)[v151]);
          }

          fprintf_l(v3, 0, "\n\tsrcA = ");
          v152 = (*v147 >> 42) & 0x1FLL;
          if (v152 <= 0x12)
          {
            fprintf_l(v3, 0, (&off_278B4D060)[v152]);
          }

          fprintf_l(v3, 0, "\n\tdst = ");
          v153 = (*v147 >> 37) & 0x1FLL;
          if (v153 <= 0x12)
          {
            fprintf_l(v3, 0, (&off_278B4D060)[v153]);
          }

          fprintf_l(v3, 0, "\n\tdstA = ");
          v154 = HIDWORD(*v147) & 0x1FLL;
          if (v154 <= 0x12)
          {
            fprintf_l(v3, 0, (&off_278B4D060)[v154]);
          }

          fprintf_l(v3, 0, "\n\tBuffer = %d ");
          goto LABEL_504;
        }

        if (v148 != 5)
        {
          if (v148 == 6)
          {
            fprintf_l(v3, 0, "FRAGMENT_COUNT ENABLED ", v172, v189);
          }

          goto LABEL_504;
        }

        if ((*(v147 + 3) & 0x10) != 0)
        {
          fprintf_l(v3, 0, "DEPTH_CLAMP ");
        }

        fprintf_l(v3, 0, "DEPTH_TEST func = ");
        v163 = *v147 >> 29;
        if (v163 > 3)
        {
          goto LABEL_550;
        }

        if (*v147 >> 29 > 1u)
        {
          goto LABEL_559;
        }

        if (v163)
        {
          goto LABEL_549;
        }

LABEL_535:
        fprintf_l(v3, 0, "PP_NEVER ", v172, v189);
        goto LABEL_504;
      }

      if (v148 <= 1)
      {
        if (v148)
        {
          fprintf_l(v3, 0, "DEPTH BOUNDS TEST", v172, v189);
        }

        else
        {
          fprintf_l(v3, 0, "APPLY AA", v172, v189);
        }

        goto LABEL_504;
      }

      if (v148 != 2)
      {
        if (v148 != 3)
        {
          fprintf_l(v3, 0, "STENCIL_TEST \n\tfunc = ");
          fprintf_l(v3, 0, (&off_278B4D148)[(*v147 >> 17) & 7]);
          fprintf_l(v3, 0, "\n\topfail = ");
          fprintf_l(v3, 0, (&off_278B4D188)[(*v147 >> 14) & 7]);
          fprintf_l(v3, 0, "\n\topzfail = ");
          fprintf_l(v3, 0, (&off_278B4D188)[(*v147 >> 11) & 7]);
          fprintf_l(v3, 0, "\n\topzpass = ");
          fprintf_l(v3, 0, (&off_278B4D188)[(*v147 >> 8) & 7]);
          fprintf_l(v3, 0, "\n\tbackfunc = ");
          fprintf_l(v3, 0, (&off_278B4D148)[*v147 >> 29]);
          fprintf_l(v3, 0, "\n\tbackopfail = ");
          fprintf_l(v3, 0, (&off_278B4D188)[(*v147 >> 26) & 7]);
          fprintf_l(v3, 0, "\n\tbackopzfail = ");
          fprintf_l(v3, 0, (&off_278B4D188)[(*v147 >> 23) & 7]);
          fprintf_l(v3, 0, "\n\tbackopzpass = ");
          v161 = (*v147 >> 20) & 7;
          if (v161 > 3)
          {
            if (((*v147 >> 20) & 7u) > 5)
            {
              if (v161 == 6)
              {
                fprintf_l(v3, 0, "PP_STENCIL_INCR_WRAP ", v172, v189);
              }

              else
              {
                fprintf_l(v3, 0, "PP_STENCIL_DECR_WRAP ", v172, v189);
              }
            }

            else if (v161 == 4)
            {
              fprintf_l(v3, 0, "PP_STENCIL_DECR ", v172, v189);
            }

            else
            {
              fprintf_l(v3, 0, "PP_STENCIL_INVERT ", v172, v189);
            }
          }

          else if (((*v147 >> 20) & 7u) > 1)
          {
            if (v161 == 2)
            {
              fprintf_l(v3, 0, "PP_STENCIL_REPLACE ", v172, v189);
            }

            else
            {
              fprintf_l(v3, 0, "PP_STENCIL_INCR ", v172, v189);
            }
          }

          else if (v161)
          {
            fprintf_l(v3, 0, "PP_STENCIL_KEEP ", v172, v189);
          }

          else
          {
            fprintf_l(v3, 0, "PP_STENCIL_ZERO ", v172, v189);
          }

          goto LABEL_504;
        }

        fprintf_l(v3, 0, "ALPHA_TEST ");
        v163 = *v147 >> 29;
        if (v163 > 3)
        {
LABEL_550:
          if (v163 > 5)
          {
            if (v163 == 6)
            {
              fprintf_l(v3, 0, "PP_GEQUAL ", v172, v189);
            }

            else
            {
              fprintf_l(v3, 0, "PP_ALWAYS ", v172, v189);
            }
          }

          else if (v163 == 4)
          {
            fprintf_l(v3, 0, "PP_GREATER ", v172, v189);
          }

          else
          {
            fprintf_l(v3, 0, "PP_NOTEQUAL ", v172, v189);
          }

          goto LABEL_504;
        }

        if (*v147 >> 29 > 1u)
        {
LABEL_559:
          if (v163 == 2)
          {
            fprintf_l(v3, 0, "PP_EQUAL ", v172, v189);
          }

          else
          {
            fprintf_l(v3, 0, "PP_LEQUAL ", v172, v189);
          }

          goto LABEL_504;
        }

        if (v163)
        {
LABEL_549:
          fprintf_l(v3, 0, "PP_LESS ", v172, v189);
          goto LABEL_504;
        }

        goto LABEL_535;
      }

      fprintf_l(v3, 0, "MULTISAMPLE ");
      v164 = *v147;
      if ((*v147 & 0x1000) != 0)
      {
        fprintf_l(v3, 0, "SAMPLE_ALPHA_TO_COVERAGE ");
        v164 = *v147;
        if ((*v147 & 0x2000) == 0)
        {
LABEL_538:
          if ((v164 & 0x4000) != 0)
          {
            goto LABEL_555;
          }

          goto LABEL_504;
        }
      }

      else if ((v164 & 0x2000) == 0)
      {
        goto LABEL_538;
      }

      fprintf_l(v3, 0, "SAMPLE_ALPHA_TO_ONE ");
      if ((*v147 & 0x4000) != 0)
      {
LABEL_555:
        fprintf_l(v3, 0, "SAMPLE_COVERAGE ", v172, v189);
      }

LABEL_504:
      fprintf_l(v3, 0, ";\n");
      v147 += 2;
      --v146;
    }

    while (v146);
  }

  if (v210)
  {
    free(v210);
  }

  if (v206)
  {
    free(v206);
  }

  if (v208)
  {
    free(v208);
  }

  if (v212)
  {
    free(v212);
  }

  v165 = v199[22];
  if (v165 >= 1)
  {
    v166 = 0;
    v167 = &v199[2 * v199[23]];
    do
    {
      fprintf_l(v3, 0, "TEXIMAGE[%d] ", *v167 & 0x7F);
      if ((*v167 & 0x400000000000000) != 0)
      {
        fprintf_l(v3, 0, "valid; ");
      }

      else
      {
        fprintf_l(v3, 0, "invalid; ");
      }

      fprintf_l(v3, 0, "mag filter = %s", (&glpPPDisassemble_tex_filters)[(*v167 >> 44) & 1]);
      fprintf_l(v3, 0, "; min filter = %s", (&glpPPDisassemble_tex_filters)[(*v167 >> 45) & 7]);
      v168 = (&glpPPDisassemble_tex_wraps)[(*v167 >> 51) & 7];
      fprintf_l(v3, 0, "; wrap(s,t,r) = (%s%s%s", (&glpPPDisassemble_tex_wraps)[HIWORD(*v167) & 7], v168, (&glpPPDisassemble_tex_wraps)[(*v167 >> 54) & 7]);
      fprintf_l(v3, 0, "); border = %d", (*v167 & 0x200000000000000) != 0);
      fprintf_l(v3, 0, "; compare func = ");
      fprintf_l(v3, 0, (&off_278B4D148)[(*(v167 + 1) >> 18) & 7]);
      fprintf_l(v3, 0, "; depth mode = %s", (&glpPPDisassemble_tex_formats)[(*(v167 + 1) >> 21) & 3]);
      fprintf_l(v3, 0, "; format = ");
      v169 = (v167[2] >> 23) & 0x1F;
      if (v169 < 0x1D)
      {
        v187 = (&glpPPDisassemble_tex_formats)[v169];
        fprintf_l(v3, 0, "%s");
      }

      else
      {
        v186 = (v167[2] >> 23) & 0x1F;
        fprintf_l(v3, 0, "unknown %d");
      }

      fprintf_l(v3, 0, "; type = ");
      v170 = v167[2];
      if (v170 >> 30 == 3)
      {
        fprintf_l(v3, 0, "unknown %d");
      }

      else
      {
        v188 = (&glpPPDisassemble_tex_types)[v170 >> 28];
        fprintf_l(v3, 0, "%s");
      }

      fprintf_l(v3, 0, ";\n");
      v167 += 4;
      v166 += 2;
    }

    while (v165 > v166);
  }

  LOBYTE(__ptr) = 0;
  fwrite(&__ptr, 1uLL, 1uLL, v3);
  fclose(v3);
  return v216[0];
}

uint64_t writefn(char **a1, void *__src, uint64_t a3)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = v6 + a3;
  v9 = *a1;
  if (v6 + a3 > v7)
  {
    v10 = (3 * (v7 + a3)) >> 1;
    *(a1 + 3) = v10;
    v9 = malloc_type_realloc(v9, v10, 0x352A3853uLL);
    if (!v9)
    {
      abort();
    }

    *a1 = v9;
    v6 = *(a1 + 2);
  }

  memcpy(&v9[v6], __src, a3);
  *(a1 + 2) = v8;
  return a3;
}

uint64_t glpWriteSizeTypePrecision(FILE *a1, int a2, unsigned int a3, int a4)
{
  result = fprintf_l(a1, 0, ":%d", a2 + 1);
  if (a3 <= 4)
  {
    result = fprintf_l(a1, 0, (&off_278B4D1C8)[a3]);
  }

  if ((a4 - 1) <= 2)
  {
    v8 = (&off_278B4D1F0)[a4 - 1];

    return fprintf_l(a1, 0, v8);
  }

  return result;
}

FILE *glpWriteOperandSize(FILE *result, int a2, int a3)
{
  v4 = result;
  if (a2 != 3 || a3)
  {
    result = fprintf_l(result, 0, ":%d", a2 + 1);
    if (a3)
    {
      return fprintf_l(v4, 0, ":%d", a3 + 1);
    }
  }

  return result;
}

void *HashSetNew(unsigned int a1, unint64_t (*a2)(unint64_t a1), uint64_t (*a3)(int a1, int a2))
{
  v6 = malloc_type_malloc(0x20uLL, 0xCA0EF1E7uLL);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = a2 ? a2 : defaultHashFunction;
  v9 = a3 ? a3 : defaultEqualsFunction;
  v6[2] = v8;
  v6[3] = v9;
  *(v6 + 1) = a1;
  v10 = malloc_type_malloc(16 * a1, 0xCA0EF1E7uLL);
  if (!v10)
  {
    goto LABEL_14;
  }

  v7[1] = v10;
  if (*(v7 + 1))
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v7[1];
      *(v13 + v11) = 0;
      v14 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL);
      if (!v14)
      {
        break;
      }

      *(v13 + v11 + 8) = v14;
      ++v12;
      v11 += 16;
      if (v12 >= *(v7 + 1))
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    abort();
  }

LABEL_13:
  *v7 = 0;
  return v7;
}

void HashSetFree(void *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      v5 = *(a1[1] + v4);
      if (v5)
      {
        free(v5);
        v2 = *(a1 + 1);
      }

      ++v3;
      v4 += 16;
    }

    while (v3 < v2);
  }

  v6 = a1[1];
  if (v6)
  {
    free(v6);
  }

  free(a1);
}

uint64_t HashSetAdd(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8) + 16 * ((*(a1 + 16))(a2) % *(a1 + 4));
  v5 = *v4;
  if (*v4)
  {
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = *(v4 + 8);
      v9 = *(v8 + 8 * v6);
      if (v9)
      {
        if (!(*(a1 + 24))(v9, a2))
        {
          *(v8 + 8 * v6) = a2;
          return a1;
        }

        v5 = *v4;
      }

      else if (v7 == -1)
      {
        v7 = v6;
      }

      ++v6;
    }

    while (v6 < v5);
    if (v7 != -1)
    {
      v10 = (*(v4 + 8) + 8 * v7);
      goto LABEL_16;
    }

    v11 = v5 + 1;
  }

  else
  {
    v11 = 1;
  }

  *v4 = v11;
  v12 = malloc_type_realloc(*(v4 + 8), 8 * v11, 0x352A3853uLL);
  if (!v12)
  {
    abort();
  }

  *(v4 + 8) = v12;
  v10 = &v12[8 * (*v4 - 1)];
LABEL_16:
  *v10 = a2;
  ++*a1;
  return a1;
}

uint64_t HashSetGet(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 8) + 16 * ((*(a1 + 16))(a2) % *(a1 + 4)));
  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(v4 + 1);
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      break;
    }

LABEL_6:
    if (++v6 >= v5)
    {
      return 0;
    }
  }

  if ((*(a1 + 24))(v8, a2))
  {
    v5 = *v4;
    goto LABEL_6;
  }

  return *(v7 + 8 * v6);
}

uint64_t HashSetRemove(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + 8) + 16 * ((*(a1 + 16))(a2) % *(a1 + 4)));
  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(v4 + 1);
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      break;
    }

LABEL_6:
    if (++v6 >= v5)
    {
      return 0;
    }
  }

  if ((*(a1 + 24))(v8, a2))
  {
    v5 = *v4;
    goto LABEL_6;
  }

  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = 0;
  --*a1;
  return result;
}

uint64_t HashSetIteratorSetup(uint64_t result, void *a2)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t HashSetIteratorNext(unsigned int *a1)
{
  v1 = *(*a1 + 4);
  v2 = a1[2];
  if (v2 >= v1)
  {
    return 0;
  }

  v3 = *(*a1 + 8);
  for (i = a1[3]; ; i = 0)
  {
    v5 = (v3 + 16 * v2);
    v6 = *v5;
    if (i < *v5)
    {
      break;
    }

LABEL_8:
    *(a1 + 1) = ++v2;
    if (v2 == v1)
    {
      return 0;
    }
  }

  v7 = (*(v5 + 1) + 8 * i);
  while (1)
  {
    v8 = *v7;
    ++i;
    if (*v7)
    {
      break;
    }

    ++v7;
    if (v6 == i)
    {
      a1[3] = i;
      goto LABEL_8;
    }
  }

  a1[3] = i;
  return v8;
}

void *HashTableNew(unsigned int a1, unint64_t (*a2)(unint64_t a1), uint64_t (*a3)(int a1, int a2))
{
  v6 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  *v6 = HashSetNew(a1, a2, a3);
  return v7;
}

void HashTableFree(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 4);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = (*(v2 + 8) + 16 * i);
      v6 = *v5;
      if (v6)
      {
        for (j = 0; j < v6; ++j)
        {
          v8 = *(*(v5 + 1) + 8 * j);
          if (v8)
          {
            free(v8);
            v6 = *v5;
          }
        }

        v3 = *(v2 + 4);
      }
    }

    v2 = *a1;
  }

  HashSetFree(v2);

  free(a1);
}

uint64_t *HashTableAdd(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(v6 + 8) + 16 * ((*(*a1 + 16))(a2) % *(v6 + 4));
  v8 = *v7;
  if (*v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = -1;
    do
    {
      v12 = *(v7 + 8);
      v13 = *(v12 + v9);
      if (v13)
      {
        if (!(*(v6 + 24))(*v13, a2))
        {
          v16 = (v12 + v9);
          v15 = *(v12 + v9);
          goto LABEL_19;
        }

        v8 = *v7;
      }

      else if (v11 == -1)
      {
        v11 = v10;
      }

      ++v10;
      v9 += 8;
    }

    while (v10 < v8);
    if (v11 != -1)
    {
      v14 = *(v7 + 8);
      v15 = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
      if (v15)
      {
        v16 = (v14 + 8 * v11);
        goto LABEL_18;
      }

LABEL_20:
      abort();
    }

    v17 = v8 + 1;
  }

  else
  {
    v17 = 1;
  }

  *v7 = v17;
  v18 = malloc_type_realloc(*(v7 + 8), 8 * v17, 0x352A3853uLL);
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = v18;
  *(v7 + 8) = v18;
  v20 = *v7;
  v15 = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = &v19[8 * v20 - 8];
LABEL_18:
  *v16 = v15;
LABEL_19:
  *v15 = a2;
  *(*v16 + 8) = a3;
  return a1;
}

uint64_t HashTableGet(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*(v3 + 8) + 16 * ((*(*a1 + 16))(a2) % *(v3 + 4)));
  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(v4 + 1);
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      break;
    }

LABEL_6:
    if (++v6 >= v5)
    {
      return 0;
    }
  }

  if ((*(v3 + 24))(*v8, a2))
  {
    v5 = *v4;
    goto LABEL_6;
  }

  return *(*(v7 + 8 * v6) + 8);
}

uint64_t BuildGenKill(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = (*(v1 + 8) + 80 * v2);
      *(v3 + 8) = BitSetNew(*(v1 + 36));
      *(v3 + 9) = BitSetNew(*(v1 + 36));
      result = BitSetNew(*(v1 + 36));
      *(v3 + 5) = result;
      if (*v3)
      {
        v4 = 0;
        do
        {
          v5 = (*(v3 + 2) + 40 * v4);
          if (!v5[3])
          {
            v6 = *v5;
            if (v6)
            {
              for (i = 0; i < v6; ++i)
              {
                v8 = *(*(v5 + 2) + 8 * i);
                if (!v8[8])
                {
                  result = BitSetGetEquals(*(v3 + 9), *v8);
                  if (!result)
                  {
                    result = BitSetSetEquals(*(v3 + 8), *v8);
                  }

                  ++v8[11];
                  v6 = *v5;
                }
              }
            }

            v9 = v5[1];
            if (v9)
            {
              for (j = 0; j < v9; ++j)
              {
                v11 = *(*(v5 + 3) + 8 * j);
                if (!v11[8])
                {
                  result = BitSetSetEquals(*(v3 + 9), *v11);
                  ++v11[11];
                  v9 = v5[1];
                }
              }
            }
          }

          ++v4;
        }

        while (v4 < *v3);
      }

      ++v2;
    }

    while (v2 < *(v1 + 32));
  }

  return result;
}

uint64_t BuildLiveOut(uint64_t result)
{
  v1 = result;
  LODWORD(v2) = *(result + 32);
  do
  {
    if (!v2)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(v1 + 8) + 80 * v3;
      v6 = BitSetClone(*(v5 + 40));
      if (*(v5 + 8))
      {
        v7 = 0;
        do
        {
          v8 = *(*(v5 + 32) + 8 * v7);
          v9 = BitSetClone(v8[5]);
          BitSetAndNotEquals(v9, v8[9]);
          BitSetOrEquals(v9, v8[8]);
          BitSetOrEquals(*(v5 + 40), v9);
          BitSetFree(v9);
          ++v7;
        }

        while (v7 < *(v5 + 8));
      }

      v4 |= BitSetEqualsTest(v6, *(v5 + 40)) == 0;
      result = BitSetFree(v6);
      ++v3;
      v2 = *(v1 + 32);
    }

    while (v3 < v2);
  }

  while (v4);
  return result;
}

uint64_t BuildInterferenceSets(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v19 = v2;
      v3 = *(v1 + 8) + 80 * v2;
      v4 = BitSetClone(*(v3 + 40));
      v5 = (*v3 - 1);
      if (*v3 - 1 >= 0)
      {
        do
        {
          v6 = (*(v3 + 16) + 40 * v5);
          if (!v6[3])
          {
            if (v6[1])
            {
              v7 = 0;
              do
              {
                v8 = *(*(v6 + 3) + 8 * v7);
                if (!*(v8 + 32))
                {
                  SetBit = BitSetFirstSetBit(v4);
                  if (SetBit != -1)
                  {
                    for (i = SetBit; i != -1; i = BitSetNextSetBit(v4, i))
                    {
                      v11 = *(v1 + 16) + 56 * i;
                      if (!*(v11 + 32))
                      {
                        BitSetSetEquals(*(v8 + 8), *v11);
                        BitSetSetEquals(*(v11 + 8), *v8);
                      }
                    }
                  }
                }

                ++v7;
                v12 = v6[1];
              }

              while (v7 < v12);
              if (v6[1])
              {
                v13 = 0;
                do
                {
                  v14 = *(*(v6 + 3) + 8 * v13);
                  if (!v14[8])
                  {
                    BitSetClearEquals(v4, *v14);
                    v12 = v6[1];
                  }

                  ++v13;
                }

                while (v13 < v12);
              }
            }

            v15 = *v6;
            if (v15)
            {
              for (j = 0; j < v15; ++j)
              {
                v17 = *(*(v6 + 2) + 8 * j);
                if (!v17[8])
                {
                  BitSetSetEquals(v4, *v17);
                  v15 = *v6;
                }
              }
            }
          }
        }

        while (v5-- > 0);
      }

      result = BitSetFree(v4);
      v2 = v19 + 1;
    }

    while (v19 + 1 < *(v1 + 32));
  }

  return result;
}

void RegistersMerge(uint64_t a1)
{
  v2 = HashTableNew((*(a1 + 36) >> 5) + 1, 0, 0);
  v3 = malloc_type_malloc(0x20uLL, 0xCA0EF1E7uLL);
  if (!v3 || (v4 = malloc_type_realloc(v3, 0x20uLL, 0x352A3853uLL)) == 0)
  {
LABEL_26:
    abort();
  }

  v5 = v4;
  v6 = 0;
  for (i = 0; i != 32; i += 8)
  {
    *&v4[i] = *(a1 + 16) + v6;
    v6 += 56;
  }

  v28 = v2;
  if (*(a1 + 36) >= 5u)
  {
    v8 = 4;
    v9 = 1;
    do
    {
      v10 = vdupq_n_s64(v8);
      v11 = vorrq_s8(v10, xmmword_23A29C340);
      v11.i64[0] = 56 * v8;
      v11.i64[1] *= 56;
      v12 = (a1 + 16);
      v13 = vld1q_dup_f64(v12);
      v14 = vorrq_s8(v10, xmmword_23A29C350);
      v14.i64[0] *= 56;
      v14.i64[1] *= 56;
      v29 = vaddq_s64(v13, v11);
      v30 = vaddq_s64(v13, v14);
      if (RegisterVectorIsFixed(&v29) || !v9)
      {
LABEL_12:
        v18 = malloc_type_realloc(v5, 32 * (v9 + 1), 0x352A3853uLL);
        if (!v18)
        {
          goto LABEL_26;
        }

        v5 = v18;
        v19 = v30;
        v20 = &v18[32 * v9];
        *v20 = v29;
        v20[1] = v19;
        ++v9;
      }

      else
      {
        v15 = 0;
        v16 = v5;
        while (1)
        {
          v17 = &v5[32 * v15];
          if (RegisterVectorCanMerge(v17, &v29))
          {
            break;
          }

          ++v15;
          v16 += 4;
          if (v15 == v9)
          {
            goto LABEL_12;
          }
        }

        for (j = 0; j != 4; ++j)
        {
          v22 = v29.i64[j];
          BitSetOrEquals(*(*v16 + 1), *(v22 + 8));
          v23 = *v16;
          v23[11] = (*v16)[11] + *(v22 + 44);
          *(v22 + 32) = 1;
          RegistersReInterfere(a1, v22, v23);
          v24 = *v16++;
          HashTableAdd(v28, v22, v24);
        }

        if (*(*v17 + 28) == 1 && *(v29.i64[0] + 28) == 1)
        {
          v25 = *(*v17 + 48);
          v26 = *(v25 + 24);
          v27 = *(*(v29.i64[0] + 48) + 24) >> 6;
          if (v26 >> 6 > v27)
          {
            v27 = v26 >> 6;
          }

          *(v25 + 24) = v26 & 0xFFFFFFFFFFFFFF3FLL | (v27 << 6);
        }
      }

      v8 += 4;
    }

    while (v8 < *(a1 + 36));
  }

  free(v5);
  RegistersReplace(a1, v28);

  HashTableFree(v28);
}

BOOL RegisterVectorIsFixed(void *a1)
{
  v1 = *a1;
  if (*(*a1 + 36))
  {
    return 1;
  }

  if (*(v1 + 40))
  {
    return 1;
  }

  if (*(v1 + 20) == 4)
  {
    return 1;
  }

  v2 = a1[1];
  if (v2[9])
  {
    return 1;
  }

  if (v2[10])
  {
    return 1;
  }

  if (v2[5] == 4)
  {
    return 1;
  }

  v3 = a1[2];
  if (v3[9])
  {
    return 1;
  }

  if (v3[10])
  {
    return 1;
  }

  if (v3[5] == 4)
  {
    return 1;
  }

  v4 = a1[3];
  return v4[9] || v4[10] || v4[5] == 4;
}

BOOL RegisterVectorCanMerge(uint64_t *a1, unsigned int **a2)
{
  if (!RegisterCanMerge(*a1, *a2) || !RegisterCanMerge(a1[1], a2[1]) || !RegisterCanMerge(a1[2], a2[2]))
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a2[3];

  return RegisterCanMerge(v4, v5);
}

uint64_t RegistersReInterfere(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = BitSetFirstSetBit(*(a2 + 8));
  if (result != -1)
  {
    v7 = result;
    do
    {
      v8 = *(a1 + 16) + 56 * v7;
      if (!*(v8 + 32))
      {
        BitSetClearEquals(*(v8 + 8), *a2);
        BitSetSetEquals(*(v8 + 8), *a3);
      }

      result = BitSetNextSetBit(*(a2 + 8), v7);
      v7 = result;
    }

    while (result != -1);
  }

  return result;
}

_DWORD *RegistersReplace(_DWORD *result, uint64_t *a2)
{
  v3 = result;
  for (i = **(*result + 104); i; i = i[1])
  {
    v5 = i[3] & 7;
    if (v5)
    {
      v6 = 0;
      v7 = i + 5;
      do
      {
        if (v6 < (i[3] & 7) + (*(i + 6) >> 15))
        {
          Register = GetRegister(v3, (v7[v6] >> 6) & 7, HIWORD(v7[v6]), 0);
          if (Register)
          {
            v9 = HashTableGet(a2, Register);
            if (v9)
            {
              v10 = v7[v6] & 0xFFFFFFFFFFFFFE3FLL | ((*(v9 + 28) & 7) << 6);
              v7[v6] = v10;
              v7[v6] = v10 & 0xFFFFFFFFFFFFLL | (*(v9 + 4) << 48);
            }
          }
        }

        ++v6;
      }

      while (v5 != v6);
    }

    result = GetRegister(v3, (i[4] >> 12) & 7, HIWORD(i[4]), 0);
    if (result)
    {
      result = HashTableGet(a2, result);
      if (result)
      {
        v11 = i[4] & 0xFFFFFFFFFFFF8FFFLL | ((result[7] & 7) << 12);
        i[4] = v11;
        i[4] = v11 & 0xFFFFFFFFFFFFLL | (result[1] << 48);
      }
    }
  }

  v12 = *(v3 + 32);
  if (v12)
  {
    for (j = 0; j < v12; ++j)
    {
      v14 = (*(v3 + 8) + 80 * j);
      if (*v14)
      {
        v15 = 0;
        do
        {
          v16 = (*(v14 + 2) + 40 * v15);
          if (!v16[3])
          {
            v18 = *v16;
            v17 = v16[1];
            v19 = *(v16 + 3);
            if (v18)
            {
              v20 = *(v16 + 2);
              do
              {
                result = HashTableGet(a2, *v20);
                if (result)
                {
                  *v20 = result;
                }

                ++v20;
                --v18;
              }

              while (v18);
            }

            if (v17)
            {
              do
              {
                result = HashTableGet(a2, *v19);
                if (result)
                {
                  *v19 = result;
                }

                ++v19;
                --v17;
              }

              while (v17);
            }
          }

          ++v15;
        }

        while (v15 < *v14);
        v12 = *(v3 + 32);
      }
    }
  }

  return result;
}

uint64_t DeadCodeEliminationSimple(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(v1 + 8) + 80 * v2;
      v4 = BitSetClone(*(v3 + 40));
      v5 = (*v3 - 1);
      if (*v3 - 1 >= 0)
      {
        do
        {
          v6 = (*(v3 + 16) + 40 * v5);
          if (!v6[3])
          {
            v7 = v6[1];
            v8 = v6[2];
            v9 = v8 == 0;
            if (v7)
            {
              v10 = v8 == 0;
            }

            else
            {
              v10 = 0;
            }

            if (v10)
            {
              v11 = 0;
              do
              {
                v12 = *(*(v6 + 3) + 8 * v11);
                if (v12[8])
                {
                  v9 = 1;
                }

                else
                {
                  v9 = BitSetGetEquals(v4, *v12) == 0;
                  v7 = v6[1];
                }

                ++v11;
              }

              while (v11 < v7 && v9);
            }

            if (v9)
            {
              PPStreamRemoveOperation(*v1, *(v6 + 4));
              v6[3] = 1;
            }

            else
            {
              if (v7)
              {
                for (i = 0; i < v7; ++i)
                {
                  v14 = *(*(v6 + 3) + 8 * i);
                  if (!v14[8])
                  {
                    BitSetClearEquals(v4, *v14);
                    v7 = v6[1];
                  }
                }
              }

              v15 = *v6;
              if (v15)
              {
                for (j = 0; j < v15; ++j)
                {
                  v17 = *(*(v6 + 2) + 8 * j);
                  if (!v17[8])
                  {
                    BitSetSetEquals(v4, *v17);
                    v15 = *v6;
                  }
                }
              }
            }
          }
        }

        while (v5-- > 0);
      }

      result = BitSetFree(v4);
      ++v2;
    }

    while (v2 < *(v1 + 32));
  }

  return result;
}

uint64_t BackCopyPropagationSimple(uint64_t result)
{
  v165 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    v2 = 0;
    v148 = result;
    while (1)
    {
      v3 = *(v1 + 8) + 80 * v2;
      v4 = BitSetClone(*(v3 + 40));
      v5 = (*v3 - 1);
      if (*v3 - 1 >= 0)
      {
        break;
      }

LABEL_198:
      result = BitSetFree(v4);
      if (++v2 >= *(v1 + 32))
      {
        goto LABEL_199;
      }
    }

    v139 = v3;
    v140 = v2;
    while (1)
    {
      v6 = (*(v3 + 16) + 40 * v5);
      if (v6[3])
      {
        goto LABEL_187;
      }

      if ((*(*(v6 + 4) + 24) & 0x3FC0) != 0)
      {
        v7 = 1;
      }

      else
      {
        v8 = v6[1];
        if (v8)
        {
          v9 = 0;
          v10 = 0uLL;
          do
          {
            v11 = *(*(v6 + 3) + 8 * v9);
            if (!*(v11 + 32))
            {
              v149 = v10;
              BitSetGetEquals(v4, *v11);
              *(&v12 + 1) = *(&v149 + 1);
              *&v12 = vorr_s8(*(v11 + 36), *&v149);
              v10 = v12;
              v8 = v6[1];
            }

            ++v9;
          }

          while (v9 < v8);
        }

        else
        {
          v10 = 0uLL;
        }

        v13 = *v6;
        if (v13)
        {
          v14 = 0;
          v15 = 0;
          do
          {
            v16 = *(*(v6 + 2) + 8 * v14);
            if (!*(v16 + 32))
            {
              v150 = v10;
              for (i = 0; i != 4; ++i)
              {
                v15 |= BitSetGetEquals(v4, i + (*v16 & 0xFFFFFFFC));
              }

              *(&v18 + 1) = *(&v150 + 1);
              *&v18 = vorr_s8(*(v16 + 36), *&v150);
              v10 = v18;
              v13 = *v6;
            }

            ++v14;
          }

          while (v14 < v13);
          LOBYTE(v13) = v15 != 0;
        }

        if (v10)
        {
          LOBYTE(v13) = 1;
        }

        v7 = DWORD1(v10) ? 1 : v13;
      }

      v19 = v6[1];
      if (v19)
      {
        for (j = 0; j < v19; ++j)
        {
          v21 = *(*(v6 + 3) + 8 * j);
          if (!v21[8])
          {
            BitSetClearEquals(v4, *v21);
            v19 = v6[1];
          }
        }
      }

      v22 = *v6;
      if (v22)
      {
        for (k = 0; k < v22; ++k)
        {
          v24 = *(*(v6 + 2) + 8 * k);
          if (!v24[8])
          {
            BitSetSetEquals(v4, *v24);
            v22 = *v6;
          }
        }
      }

      if (v7)
      {
        goto LABEL_187;
      }

      v25 = *(v1 + 8) + 80 * v2;
      v141 = *(v25 + 16) + 40 * v5;
      v26 = *(v141 + 32);
      v164 = 0uLL;
      v27 = *(v26 + 32);
      v28 = *(v26 + 40);
      if ((v28 ^ v27) >> 48)
      {
        v29 = 0;
      }

      else
      {
        v29 = (((v28 >> 6) ^ (v27 >> 12)) & 7) == 0;
      }

      if (!v29 || (((v28 >> 17) ^ (v27 >> 19)) & 3) != 0)
      {
        v142 = 0;
        goto LABEL_46;
      }

      v131 = (v28 >> 19) & 3;
      if (v131 > 1)
      {
        if (v131 != 2)
        {
          v132 = (&v164 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v28 >> 15) & 3)));
          *v132 |= 1u;
        }

        v133 = (&v164 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v28 >> 13) & 3)));
        *v133 |= 1u;
      }

      else if (!v131)
      {
        goto LABEL_197;
      }

      v134 = (&v164 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v28 >> 11) & 3)));
      *v134 |= 1u;
LABEL_197:
      v135 = (&v164 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v28 >> 9) & 3)));
      *v135 |= 1u;
      v142 = 1;
LABEL_46:
      v30.i64[0] = 0x100000001;
      v30.i64[1] = 0x100000001;
      v31 = vandq_s8(vshlq_u32(vdupq_n_s32(v27), xmmword_23A29BEB0), v30);
      v163 = v31;
      v32 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
      LODWORD(v33) = v32.i32[0] | v32.i32[1];
      if (v5 && *&v32)
      {
        v151 = v31.i32[1];
        v146 = v31.i32[2];
        v147 = v31.i32[0];
        v33 = 1;
        v145 = v31.i32[3];
        v34 = v5;
        v35 = v28 | HIDWORD(v27);
        v143 = v26;
        v144 = v6;
        while (1)
        {
          v36 = v34 - 1;
          v37 = *(v25 + 16) + 40 * (v34 - 1);
          if (*(v37 + 12))
          {
            v38 = 0;
            goto LABEL_101;
          }

          v39 = *(v37 + 32);
          v40 = *(v39 + 24);
          v41 = (v40 >> 6);
          v43 = v41 != 76 && v41 != 170 && (v41 - 119) >= 3;
          if (v43)
          {
            v38 = v35 & (v41 == 72);
          }

          else
          {
            v38 = 1;
          }

          if ((v35 & (v41 == 72)) == 0)
          {
            v44 = (v40 >> 6);
            if (((v44 - 119) > 0x33 || ((1 << (v44 - 119)) & 0x8000000000007) == 0) && v44 != 76)
            {
              v85 = *(v26 + 40);
              if ((v85 & 0x10) == 0)
              {
                v86 = *(v39 + 32);
                v87 = !((v86 ^ v85) >> 48) && (((v86 >> 12) ^ (v85 >> 6)) & 7) == 0;
                if (v87 && (((v86 >> 19) ^ (v85 >> 17)) & 3) == 0)
                {
                  v162 = 0uLL;
                  v89 = vdupq_n_s32(v86);
                  v90.i64[0] = 0x300000003;
                  v90.i64[1] = 0x300000003;
                  v160 = vandq_s8(vshlq_u32(v89, xmmword_23A29BEA0), v90);
                  v161 = xmmword_23A29C2D0;
                  v91 = vshlq_u32(v89, xmmword_23A29BEB0);
                  v92.i64[0] = 0x100000001;
                  v92.i64[1] = 0x100000001;
                  v158 = vandq_s8(vshlq_u32(vdupq_n_s32(v85), xmmword_23A29BE90), v90);
                  v159 = vandq_s8(v91, v92);
                  v93 = *(v26 + 32);
                  v157 = vandq_s8(vshlq_u32(vdupq_n_s32(v93), xmmword_23A29BEA0), v90);
                  v94 = vandq_s8(vbicq_s8(vtstq_s32(v91, v92), vceqzq_s32(v164)), v92);
                  if (!*&vorr_s8(*&vorrq_s8(((v86 >> 19) & 3 | BYTE4(v86) & 1 | ((v86 >> 12) >> 24) | ((v40 & 0x3FC0) == 7040)), v94), *&vextq_s8(v94, v94, 8uLL)))
                  {
                    v95 = 0;
                    v96 = 1;
                    do
                    {
                      while (v163.i32[v95])
                      {
                        v97 = v158.u32[v157.u32[v95]];
                        if (!v159.i32[v97])
                        {
                          break;
                        }

                        v96 = 0;
                        v163.i32[v95] = 0;
                        v151 = v163.i32[1];
                        v147 = v163.i32[0];
                        v98 = v163.i32[1] | v163.i32[0];
                        v145 = v163.i32[3];
                        v146 = v163.i32[2];
                        v99 = v163.i32[2] | v163.i32[3];
                        v162.i32[v95] = 1;
                        v33 = v98 | v99;
                        *(&v161 + v95) = v160.i32[v97];
                        v43 = v95++ >= 3;
                        if (v43)
                        {
                          goto LABEL_151;
                        }
                      }

                      ++v95;
                    }

                    while (v95 != 4);
                    if (v96)
                    {
                      goto LABEL_65;
                    }

LABEL_151:
                    v101 = 0;
                    v102 = 0;
                    v103 = v86 & 0xFFFFFFFEFFFFFFFFLL | ((HIDWORD(v93) & 1) << 32);
                    *(v39 + 32) = v103;
                    v104 = v103 & 0xFFFFFFFDFFFFFFFFLL | (((*(v26 + 32) >> 33) & 1) << 33);
                    *(v39 + 32) = v104;
                    v105 = v104 & 0xFFFFFFF3FFFFFFFFLL | (((*(v26 + 32) >> 34) & 3) << 34);
                    *(v39 + 32) = v105;
                    v106 = v105 & 0xFFFFF00FFFFFFFFFLL | ((*(v26 + 32) >> 36) << 36);
                    *(v39 + 32) = v106;
                    v107 = v106 & 0xFFFFFFFFFFFF8FFFLL | (((*(v26 + 32) >> 12) & 7) << 12);
                    *(v39 + 32) = v107;
                    v108 = v107 & 0xFFFFFFFFFFFFLL | (*(v26 + 38) << 48);
                    *(v39 + 32) = v108;
                    v109 = (v86 >> 21) & 3;
                    if (v109 <= ((*(v26 + 32) >> 21) & 3u))
                    {
                      v109 = (*(v26 + 32) >> 21) & 3;
                    }

                    *(v39 + 32) = v108 & 0xFFFFFFFF80187FFFLL | ((v162.i8[0] & 1) << 18) | ((v162.i8[4] & 1) << 17) | (v109 << 21) | ((v162.i8[8] & 1) << 16) | ((v162.i8[12] & 1) << 15) | ((v161 & 3) << 23) | ((BYTE4(v161) & 3) << 25) | ((BYTE8(v161) & 3) << 27) | ((BYTE12(v161) & 3) << 29);
                    v110 = *(v26 + 32) & 0xFFFFFFFFFFF87FFFLL | ((v147 & 1) << 18) | ((v151 & 1) << 17) | ((v146 & 1) << 16) | ((v145 & 1) << 15);
                    *(v26 + 32) = v110;
                    v156[0] = 0;
                    v156[1] = 0;
                    do
                    {
                      if (v163.i32[v101])
                      {
                        *(v156 + v157.u32[v101]) = 1;
                        ++v102;
                      }

                      ++v101;
                    }

                    while (v101 != 4);
                    v111 = 0;
                    v112 = 0;
                    *(v26 + 24) = *(v26 + 24) & 0xFFFFFFCFFFFFFFFFLL | (((v102 - 1) & 3) << 36);
                    v154 = 0;
                    v155 = 0;
                    do
                    {
                      if (*(v156 + v111 * 4))
                      {
                        *(&v154 + v112++) = v158.i32[v111];
                      }

                      ++v111;
                    }

                    while (v111 != 4);
                    v137 = v33;
                    v113 = v25;
                    v114 = 0;
                    v115 = *(v26 + 40) & 0xFFFFFFFFFFE601FFLL;
                    v152 = 0;
                    v153 = 0;
                    do
                    {
                      if (v163.i32[v114])
                      {
                        if (v112)
                        {
                          v116 = 0;
                          while (v158.i32[v157.u32[v114]] != *(&v154 + v116))
                          {
                            if (v112 == ++v116)
                            {
                              LODWORD(v116) = v112;
                              break;
                            }
                          }
                        }

                        else
                        {
                          LODWORD(v116) = 0;
                        }

                        *(&v152 + v114) = v116;
                      }

                      ++v114;
                    }

                    while (v114 != 4);
                    v117 = v115 | ((v112 << 19) + 1572864) & 0x180000 | ((v154 & 3) << 9) | ((BYTE4(v154) & 3) << 11) | ((v155 & 3) << 13) | ((BYTE4(v155) & 3) << 15);
                    *(v26 + 32) = v110 & 0xFFFFFFFF807FFFFFLL | ((v152 & 3) << 23) & 0x81FFFFFF | ((BYTE4(v152) & 3) << 25) & 0x87FFFFFF | ((v153 & 3) << 27) & 0x9FFFFFFF | ((BYTE4(v153) & 3) << 29);
                    *(v26 + 40) = v117;
                    v138 = v37;
                    InstructionFree(v37);
                    InstructionInitSourcesTargets(v148, v138, *(v113 + 12));
                    InstructionFree(v141);
                    InstructionInitSourcesTargets(v148, v141, *(v113 + 12));
                    v37 = v138;
                    v25 = v113;
                    v40 = *(v39 + 24);
                    v33 = v137;
                  }
                }
              }
            }
          }

LABEL_65:
          v46 = v40 & 7;
          if ((v40 & 7) != 0)
          {
            break;
          }

          v48 = 0;
LABEL_88:
          v61 = v40 & 0x3FC0;
          v62 = *(v39 + 32);
          if (v61 == 7040)
          {
            v63 = *(v26 + 40);
            v64 = !((v63 ^ v62) >> 48) && (((v63 >> 6) ^ (v62 >> 12)) & 7) == 0;
            v65 = ((v63 >> 17) ^ (v62 >> 19)) & 3;
            if (v64 && v65 == 0)
            {
              v100.i64[0] = 0x100000001;
              v100.i64[1] = 0x100000001;
              v164 = vorrq_s8(v164, vandq_s8(vshlq_u32(vdupq_n_s32(v62), xmmword_23A29BEB0), v100));
              v48 = 1;
            }
          }

          if (((*(v26 + 32) ^ v62) & 0xFFFF000000187000) == 0)
          {
            if (v147)
            {
              v69 = v164.i32[0] == 0;
            }

            else
            {
              v69 = 0;
            }

            v70 = v62 & 0x40000;
            if (v69)
            {
              v70 = 0;
            }

            v71 = v70 | v62 & 0xFFFFFFFFFFF87FFFLL;
            if (v151)
            {
              v72 = v164.i32[1] == 0;
            }

            else
            {
              v72 = 0;
            }

            v73 = v62 & 0x20000;
            if (v72)
            {
              v73 = 0;
            }

            if (v146)
            {
              v74 = v164.i32[2] == 0;
            }

            else
            {
              v74 = 0;
            }

            v75 = v62 & 0x10000;
            if (v74)
            {
              v75 = 0;
            }

            v76 = v71 | v73 | v75;
            if (v145)
            {
              v77 = v164.i32[3] == 0;
            }

            else
            {
              v77 = 0;
            }

            v78 = v62 & 0x8000;
            if (v77)
            {
              v78 = 0;
            }

            *(v39 + 32) = v76 | v78;
            v79 = v25;
            v80 = v38;
            v81 = v35;
            v82 = v5;
            v83 = v33;
            v84 = v37;
            InstructionFree(v37);
            InstructionInitSourcesTargets(v148, v84, *(v79 + 12));
            v33 = v83;
            v5 = v82;
            v35 = v81;
            v38 = v80;
            v36 = v34 - 1;
            v26 = v143;
            v6 = v144;
            v25 = v79;
            if (!v48)
            {
              goto LABEL_101;
            }

LABEL_99:
            v67.i64[0] = 0x100000001;
            v67.i64[1] = 0x100000001;
            v68 = vandq_s8(vandq_s8(v163, v67), vceqzq_s32(v164));
            if (!*&vorr_s8(*v68.i8, *&vextq_s8(v68, v68, 8uLL)))
            {
              v38 = 1;
            }

            goto LABEL_101;
          }

          if (v48)
          {
            goto LABEL_99;
          }

LABEL_101:
          if (v34 >= 2)
          {
            if (v33)
            {
              v34 = v36;
              if (!v38)
              {
                continue;
              }
            }
          }

          goto LABEL_172;
        }

        v47 = 0;
        v48 = 0;
        while (2)
        {
          if (v47 < (v46 + (v40 >> 15)))
          {
            v49 = *(v39 + 40 + 8 * v47);
            v50 = *(v26 + 32);
            v51 = ((v50 >> 12) ^ (v49 >> 6)) & 7;
            v52 = (v50 ^ v49) >> 48;
            v53 = (((v50 >> 19) ^ (v49 >> 17)) & 3) == 0;
            if (v52)
            {
              v54 = 0;
            }

            else
            {
              v54 = v51 == 0;
            }

            if (!v54)
            {
              v53 = 0;
            }

            if (((*(v26 + 40) ^ v49) & 0xFFFF0000000601C0) == 0 || v53)
            {
              v56 = (v49 >> 19) & 3;
              if (v56 > 1)
              {
                if (v56 != 2)
                {
                  v57 = (&v164 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v49 >> 15) & 3)));
                  *v57 |= 1u;
                }

                v58 = (&v164 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v49 >> 13) & 3)));
                *v58 |= 1u;
              }

              else if (!v56)
              {
LABEL_84:
                v60 = (&v164 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v49 >> 9) & 3)));
                *v60 |= 1u;
                v48 = 1;
                goto LABEL_85;
              }

              v59 = (&v164 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v49 >> 11) & 3)));
              *v59 |= 1u;
              goto LABEL_84;
            }
          }

LABEL_85:
          if (v46 == ++v47)
          {
            goto LABEL_88;
          }

          continue;
        }
      }

LABEL_172:
      v1 = v148;
      if (v142)
      {
        v118 = (v26 + 40);
        v119 = vld1q_dup_f32(v118);
        v120.i64[0] = 0x300000003;
        v120.i64[1] = 0x300000003;
        v162 = vandq_s8(vshlq_u32(v119, xmmword_23A29BE90), v120);
        v121 = *(v26 + 32);
        v122 = v121 >> 29;
        if (*(&v162 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v121 >> 23) & 3))))
        {
          v123 = v121 & 0x40000;
        }

        else
        {
          v123 = 0;
        }

        v124 = v123 | v121 & 0xFFFFFFFFFFF87FFFLL;
        if (*(&v162 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v121 >> 25) & 3))) == 1)
        {
          v125 = 0;
        }

        else
        {
          v125 = v121 & 0x20000;
        }

        if (*(&v162 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v121 >> 27) & 3))) == 2)
        {
          v126 = 0;
        }

        else
        {
          v126 = v121 & 0x10000;
        }

        v127 = v124 | v125 | v126;
        v128 = *(v26 + 32) & 0x8000;
        if (*(&v162 & 0xFFFFFFFFFFFFFFF3 | (4 * (v122 & 3))) == 3)
        {
          v128 = 0;
        }

        *(v26 + 32) = v127 | v128;
        v129 = v25;
        InstructionFree(v141);
        InstructionInitSourcesTargets(v148, v141, *(v129 + 12));
        LODWORD(v33) = (*(v26 + 32) & 0x78000) != 0;
      }

      v3 = v139;
      v2 = v140;
      if (!v33)
      {
        PPStreamRemoveOperation(*v148, *(v6 + 4));
        v6[3] = 1;
      }

LABEL_187:
      if (v5-- <= 0)
      {
        goto LABEL_198;
      }
    }
  }

LABEL_199:
  v136 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GetRegister(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2 > 5)
  {
    return 0;
  }

  v4 = a4 + 4 * a3 + *(a1 + qword_23A2A5FA0[a2]);
  if (v4 >= *(a1 + qword_23A2A5FD0[a2]))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v4;
  }
}

void RegistersCleanup(uint64_t *a1)
{
  v2 = *(a1 + 9);
  if (v2)
  {
    v3 = (v2 + 3) & 0x1FFFFFFFCLL;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_23A29C350;
    v6 = xmmword_23A29C340;
    v7 = (a1[2] + 144);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 28) = 1;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 14) = 1;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = 1;
        v7[14] = 1;
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 56;
      v3 -= 4;
    }

    while (v3);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = 0;
    v12 = a1[1];
    do
    {
      v13 = (v12 + 80 * v11);
      v14 = *v13;
      if (v14)
      {
        v15 = 0;
        v16 = *(v13 + 2);
        do
        {
          v17 = (v16 + 40 * v15);
          if (!v17[3])
          {
            v18 = *v17;
            if (v18)
            {
              v19 = *(v17 + 2);
              do
              {
                v20 = *v19++;
                *(v20 + 32) = 0;
                --v18;
              }

              while (v18);
            }

            v21 = v17[1];
            if (v21)
            {
              v22 = *(v17 + 3);
              do
              {
                v23 = *v22++;
                *(v23 + 32) = 0;
                --v21;
              }

              while (v21);
            }
          }

          ++v15;
        }

        while (v15 != v14);
      }

      ++v11;
    }

    while (v11 != v10);
  }

  v24 = **(*a1 + 56);
  if (!v24)
  {
    v25 = 0;
    if (!v2)
    {
      return;
    }

    goto LABEL_32;
  }

  v25 = 0;
  do
  {
    if ((*(v24 + 24) & 0x1F00) != 0x600)
    {
      v26 = *(v24 + 32);
      if (v25 <= v26 + 1)
      {
        v25 = v26 + 1;
      }
    }

    v24 = *(v24 + 8);
  }

  while (v24);
  if (v2)
  {
LABEL_32:
    v27 = 0;
    while (1)
    {
      v28 = a1[2];
      v29 = v28 + 56 * v27;
      if (!*(v29 + 32))
      {
        goto LABEL_67;
      }

      v30 = v28 + 56 * (v27 | 1);
      if (!*(v30 + 32))
      {
        goto LABEL_67;
      }

      v31 = v28 + 56 * (v27 | 2);
      if (!*(v31 + 32))
      {
        goto LABEL_67;
      }

      v32 = v28 + 56 * (v27 | 3);
      if (!*(v32 + 32))
      {
        goto LABEL_67;
      }

      v33 = *(v29 + 48);
      if (!v33)
      {
        goto LABEL_67;
      }

      v34 = *(v29 + 28);
      if (v34 <= 2)
      {
        if (v34 == 1)
        {
          v42 = *a1;
          v43 = *(*a1 + 80);
          v44 = *v43;
          if (*v43)
          {
            v45 = *(v29 + 4);
            while (1)
            {
              v46 = v44[3];
              if (v45 >= WORD1(v46) && v45 <= HIWORD(v46))
              {
                break;
              }

              v44 = v44[1];
              if (!v44)
              {
                goto LABEL_63;
              }
            }

            PPStreamChunkListRemoveChunk(v43, v44);
            v42 = *a1;
            v33 = *(v29 + 48);
          }

LABEL_63:
          v35 = *(v42 + 32);
        }

        else
        {
          if (v34 != 2)
          {
            goto LABEL_66;
          }

          v36 = *(v29 + 4);
          if (v36 < v25)
          {
            goto LABEL_66;
          }

          v37 = *a1;
          v38 = *(*a1 + 72);
          v39 = *v38;
          if (*v38)
          {
            while (1)
            {
              v40 = v39[3];
              if (v36 >= WORD1(v40) && v36 <= HIWORD(v40))
              {
                break;
              }

              v39 = v39[1];
              if (!v39)
              {
                goto LABEL_64;
              }
            }

            PPStreamChunkListRemoveChunk(v38, v39);
            v37 = *a1;
            v33 = *(v29 + 48);
          }

LABEL_64:
          v35 = *(v37 + 56);
        }

        goto LABEL_65;
      }

      if (v34 == 5)
      {
        goto LABEL_42;
      }

      if (v34 == 4)
      {
        break;
      }

      if (v34 == 3)
      {
LABEL_42:
        v35 = *(*a1 + 64);
LABEL_65:
        PPStreamChunkListRemoveChunk(v35, v33);
      }

LABEL_66:
      *(v29 + 48) = 0;
      *(v30 + 48) = 0;
      *(v31 + 48) = 0;
      *(v32 + 48) = 0;
      v2 = *(a1 + 9);
LABEL_67:
      v27 += 4;
      if (v27 >= v2)
      {
        return;
      }
    }

    v35 = *(*a1 + 40);
    goto LABEL_65;
  }
}

BOOL RegisterCanMerge(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 20);
  if (v2 != a2[5] || *(a1 + 24) != a2[6] || *(a1 + 16) != a2[4] || *(a1 + 28) != 1 || *(a1 + 32) || a2[7] != 1 || a2[8])
  {
    return 0;
  }

  if (!*(a1 + 36) && v2 != 4 && !*(a1 + 40))
  {
    return BitSetGetEquals(*(a1 + 8), *a2) == 0;
  }

  v3 = a2[9];
  if (v3)
  {
    return 0;
  }

  if (v2 != 4 && !a2[10])
  {
    return BitSetGetEquals(*(a1 + 8), *a2) == 0;
  }

  return v3;
}

uint64_t RegisterAdd(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v14 = a4 + 4 * a5 + 4;
  if (*(a1 + 36) < v14)
  {
    v15 = malloc_type_realloc(*(a1 + 16), 56 * v14, 0x352A3853uLL);
    if (!v15)
    {
      abort();
    }

    *(a1 + 16) = v15;
    bzero(&v15[56 * *(a1 + 36)], 56 * (v14 - *(a1 + 36)));
    *(a1 + 36) = v14;
  }

  v16 = 0;
  v17 = *(a1 + 16);
  v18 = a4 + 4 * a5;
  do
  {
    v19 = v17 + 56 * (v18 + v16);
    *(v19 + 8) = 0;
    *(v19 + 16) = v16;
    *(v19 + 20) = a6;
    *(v19 + 24) = a7;
    *(v19 + 28) = a3;
    *v19 = v18 + v16;
    *(v19 + 4) = a5;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0;
    *(v19 + 48) = a2;
    ++v16;
  }

  while (v16 != 4);
  return 0;
}

char *InstructionAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2 + 1;
  *a2 = v6;
  v7 = malloc_type_realloc(*(a2 + 16), 40 * v6, 0x352A3853uLL);
  if (!v7)
  {
    abort();
  }

  *(a2 + 16) = v7;
  v8 = &v7[40 * (*a2 - 1)];
  *(v8 + 2) = 0;
  *(v8 + 4) = a3;
  v9 = (*(a3 + 24) >> 6);
  v10 = (v9 - 75) > 0x3D || ((1 << (v9 - 75)) & 0x300073838001FE17) == 0;
  if (!v10 || (v11 = v9 - 140, v11 <= 0x1E) && ((1 << v11) & 0x4000200F) != 0)
  {
    *(v8 + 2) = 1;
  }

  *(v8 + 3) = 0;
  InstructionInitSourcesTargets(a1, v8, *(a2 + 12));
  return v8;
}

_DWORD *InstructionInitSourcesTargets(uint64_t a1, unsigned int *a2, int a3)
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 4);
  v6 = (*(v5 + 24) >> 6);
  v7 = 1;
  if (v6 == 77)
  {
    v7 = a3 != 0;
    v8 = 0;
  }

  else
  {
    v8 = v6 == 110;
  }

  v9 = v6 == 76;
  v10 = v6 != 76;
  v11 = v6 != 76 && v7;
  v88 = v11;
  v12 = !v9 && v8;
  v86 = v12;
  v13 = a2[2] | ((*(v5 + 32) & 0x7000) == 12288);
  a2[2] = v13;
  a2[2] = v13 | ((*(v5 + 32) & 0x7000) == 20480);
  *a2 = 0;
  v14 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL);
  if (!v14)
  {
    goto LABEL_93;
  }

  v87 = v10;
  *(a2 + 2) = v14;
  v15 = *(v5 + 24) & 7;
  v96 = v5;
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = v5 + 40;
    v89 = *(v5 + 24) & 7;
    while (v16 >= (*(v96 + 24) & 7) + (*(v96 + 24) >> 15))
    {
LABEL_34:
      if (++v16 == v15)
      {
        goto LABEL_37;
      }
    }

    v99 = 0uLL;
    v19 = *(v18 + 8 * v16);
    v20 = (v19 >> 19) & 3;
    v91 = v17;
    if (v20 > 1)
    {
      if (v20 != 2)
      {
        v99.i32[(v19 >> 15) & 3] = 1;
      }

      v99.i32[(v19 >> 13) & 3] = 1;
    }

    else if (!v20)
    {
      goto LABEL_21;
    }

    v99.i32[(v19 >> 11) & 3] = 1;
LABEL_21:
    v99.i32[(v19 >> 9) & 3] = 1;
    v98 = 0;
    v90 = v19 & 1;
    GetRegisterIndicies(*a1, &v98 + 1, &v98, (v19 >> 6) & 7, HIWORD(v19), v90, (v19 >> 17) & 3);
    v21 = HIDWORD(v98);
    v93 = v98;
    v94 = v16;
    if (SHIDWORD(v98) <= v98)
    {
      do
      {
        v22 = 0;
        v23 = 8 * v16;
        do
        {
          if (v99.i32[v22] && GetRegister(a1, (*(v18 + v23) >> 6) & 7, v21, v22))
          {
            v24 = *a2 + 1;
            *a2 = v24;
            v25 = malloc_type_realloc(*(a2 + 2), 8 * v24, 0x352A3853uLL);
            if (!v25)
            {
              goto LABEL_93;
            }

            v26 = v25;
            *(a2 + 2) = v25;
            v27 = *a2;
            v28 = *a2 - 1;
            Register = GetRegister(a1, (*(v18 + v23) >> 6) & 7, v21, v22);
            v26[v28] = Register;
            v30 = Register[10];
            Register[9] |= *(v18 + v23) & 1;
            Register[10] = (*(v18 + v23) >> 17) & 3 | v30;
            if (v22 >= 2 && Register[5] == 4)
            {
              *a2 = v27 + 1;
              v31 = malloc_type_realloc(*(a2 + 2), 8 * (v27 + 1), 0x352A3853uLL);
              if (!v31)
              {
                goto LABEL_93;
              }

              v32 = v31;
              *(a2 + 2) = v31;
              v33 = *a2 - 1;
              v34 = GetRegister(a1, (*(v18 + v23) >> 6) & 7, v21 + 1, v22 - 2);
              v32[v33] = v34;
              v35 = *(v34 + 40);
              *(v34 + 36) |= *(v18 + v23) & 1;
              *(v34 + 40) = (*(v18 + v23) >> 17) & 3 | v35;
            }
          }

          ++v22;
        }

        while (v22 != 4);
        v9 = v21++ == v93;
        v16 = v94;
      }

      while (!v9);
    }

    v17 = v90 | v91;
    v15 = v89;
    goto LABEL_34;
  }

  v17 = 0;
LABEL_37:
  *v92 = v17;
  v36 = v96;
  v37 = (v96 + 32);
  v38 = vld1q_dup_f32(v37);
  v39.i64[0] = 0x100000001;
  v39.i64[1] = 0x100000001;
  v99 = vandq_s8(vshlq_u32(v38, xmmword_23A29BEB0), v39);
  a2[1] = 0;
  v40 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL);
  if (!v40)
  {
    goto LABEL_93;
  }

  *(a2 + 3) = v40;
  v41 = *(v96 + 32);
  v98 = 0;
  *&v92[4] = HIDWORD(v41) & 1;
  result = GetRegisterIndicies(*a1, &v98 + 1, &v98, (v41 >> 12) & 7, HIWORD(v41), BYTE4(v41) & 1, (v41 >> 19) & 3);
  v43 = HIDWORD(v98);
  v95 = v98;
  if (SHIDWORD(v98) <= v98)
  {
    do
    {
      v44 = 0;
      v97 = v43 + 1;
      do
      {
        if (v99.i32[v44])
        {
          result = GetRegister(a1, (*(v36 + 32) >> 12) & 7, v43, v44);
          if (result)
          {
            v45 = a2[1] + 1;
            a2[1] = v45;
            v46 = malloc_type_realloc(*(a2 + 3), 8 * v45, 0x352A3853uLL);
            if (!v46)
            {
              goto LABEL_93;
            }

            v47 = v46;
            *(a2 + 3) = v46;
            v48 = a2[1];
            result = GetRegister(a1, (*(v96 + 32) >> 12) & 7, v43, v44);
            v47[v48 - 1] = result;
            v36 = v96;
            v49 = result[10];
            result[9] |= *(v96 + 36) & 1;
            result[10] = (*(v96 + 32) >> 19) & 3 | v49;
            if (v44 >= 2 && result[5] == 4)
            {
              a2[1] = v48 + 1;
              v50 = malloc_type_realloc(*(a2 + 3), 8 * (v48 + 1), 0x352A3853uLL);
              if (!v50)
              {
                goto LABEL_93;
              }

              v51 = v50;
              *(a2 + 3) = v50;
              v52 = a2[1] - 1;
              v36 = v96;
              result = GetRegister(a1, (*(v96 + 32) >> 12) & 7, v97, v44 - 2);
              v51[v52] = result;
              v53 = result[10];
              result[9] |= *(v96 + 36) & 1;
              result[10] = (*(v96 + 32) >> 19) & 3 | v53;
            }
          }

          if (*&v92[4] | v86)
          {
            result = GetRegister(a1, (*(v36 + 32) >> 12) & 7, v43, v44);
            if (result)
            {
              v54 = *a2 + 1;
              *a2 = v54;
              v55 = malloc_type_realloc(*(a2 + 2), 8 * v54, 0x352A3853uLL);
              if (!v55)
              {
                goto LABEL_93;
              }

              v56 = v55;
              *(a2 + 2) = v55;
              v57 = *a2;
              v58 = *a2 - 1;
              v36 = v96;
              result = GetRegister(a1, (*(v96 + 32) >> 12) & 7, v43, v44);
              v56[v58] = result;
              if (v44 >= 2 && result[5] == 4)
              {
                *a2 = v57 + 1;
                v59 = malloc_type_realloc(*(a2 + 2), 8 * (v57 + 1), 0x352A3853uLL);
                if (!v59)
                {
                  goto LABEL_93;
                }

                v60 = v59;
                *(a2 + 2) = v59;
                v61 = *a2 - 1;
                v36 = v96;
                result = GetRegister(a1, (*(v96 + 32) >> 12) & 7, v97, v44 - 2);
                v60[v61] = result;
              }
            }
          }
        }

        ++v44;
      }

      while (v44 != 4);
      v9 = v43++ == v95;
    }

    while (!v9);
  }

  if (*v92 && *(a1 + 60) < *(a1 + 80) && *(a1 + 16))
  {
    v62 = *a2 + 1;
    *a2 = v62;
    result = malloc_type_realloc(*(a2 + 2), 8 * v62, 0x352A3853uLL);
    if (!result)
    {
      goto LABEL_93;
    }

    *(a2 + 2) = result;
    v63 = *(a1 + 60);
    if (v63 >= *(a1 + 80))
    {
      v64 = 0;
    }

    else
    {
      v64 = *(a1 + 16) + 56 * v63;
    }

    *&result[2 * *a2 - 2] = v64;
  }

  if (!v88)
  {
    v65 = *(a2 + 2);
    if (v65)
    {
      free(v65);
    }

    *a2 = 0;
    result = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL);
    if (!result)
    {
      goto LABEL_93;
    }

    *(a2 + 2) = result;
    v66 = *(a1 + 36);
    if (v66)
    {
      v67 = 0;
      v68 = 28;
      do
      {
        v69 = (*(a1 + 16) + v68);
        v72 = *v69;
        v71 = v69 - 7;
        v70 = v72;
        if (v72 == 4 || v70 == 1)
        {
          v74 = *a2 + 1;
          *a2 = v74;
          result = malloc_type_realloc(*(a2 + 2), 8 * v74, 0x352A3853uLL);
          if (!result)
          {
            goto LABEL_93;
          }

          *(a2 + 2) = result;
          *&result[2 * *a2 - 2] = v71;
          v66 = *(a1 + 36);
        }

        ++v67;
        v68 += 56;
      }

      while (v67 < v66);
    }
  }

  if (v87)
  {
    goto LABEL_92;
  }

  v75 = *(a2 + 3);
  if (v75)
  {
    free(v75);
  }

  a2[1] = 0;
  result = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL);
  if (!result)
  {
LABEL_93:
    abort();
  }

  *(a2 + 3) = result;
  v76 = *(a1 + 36);
  if (v76)
  {
    v77 = 0;
    v78 = 28;
    do
    {
      v79 = (*(a1 + 16) + v78);
      v81 = *v79;
      v80 = v79 - 7;
      v82 = (1 << v81) & 0x3A;
      if (v81 <= 5 && v82 != 0)
      {
        v84 = a2[1] + 1;
        a2[1] = v84;
        result = malloc_type_realloc(*(a2 + 3), 8 * v84, 0x352A3853uLL);
        if (!result)
        {
          goto LABEL_93;
        }

        *(a2 + 3) = result;
        *&result[2 * a2[1] - 2] = v80;
        v76 = *(a1 + 36);
      }

      ++v77;
      v78 += 56;
    }

    while (v77 < v76);
  }

LABEL_92:
  v85 = *MEMORY[0x277D85DE8];
  return result;
}

void InstructionFree(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    free(v3);
  }
}

char *BlockAdd(uint64_t a1)
{
  v2 = *(a1 + 32) + 1;
  *(a1 + 32) = v2;
  v3 = malloc_type_realloc(*(a1 + 8), 80 * v2, 0x352A3853uLL);
  if (!v3)
  {
    goto LABEL_6;
  }

  *(a1 + 8) = v3;
  v4 = &v3[80 * (*(a1 + 32) - 1)];
  *v4 = 0;
  v5 = malloc_type_malloc(0x28uLL, 0xCA0EF1E7uLL);
  if (!v5 || (*(v4 + 2) = v5, *(v4 + 1) = 0, (v6 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL)) == 0) || (*(v4 + 3) = v6, *(v4 + 2) = 0, (v7 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL)) == 0))
  {
LABEL_6:
    abort();
  }

  *(v4 + 4) = v7;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 9) = 0;
  return v4;
}

uint64_t *BlockFree(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      InstructionFree(*(a1 + 2) + v2);
      ++v3;
      v2 += 40;
    }

    while (v3 < *a1);
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 3);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 4);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 5);
  if (v7)
  {
    BitSetFree(v7);
  }

  v8 = *(a1 + 6);
  if (v8)
  {
    BitSetFree(v8);
  }

  v9 = *(a1 + 7);
  if (v9)
  {
    BitSetFree(v9);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    BitSetFree(v10);
  }

  result = *(a1 + 9);
  if (result)
  {

    return BitSetFree(result);
  }

  return result;
}

unint64_t RegistersInitialize(uint64_t a1)
{
  result = *(a1 + 36);
  if (result)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      v5 = *(a1 + 16);
      v6 = BitSetNew(result);
      *(v5 + v4) = v6;
      BitSetSetEquals(v6, v3++);
      result = *(a1 + 36);
      v4 += 56;
    }

    while (v3 < result);
  }

  return result;
}

unint64_t Registerify(_DWORD *a1)
{
  v2 = a1[9];
  a1[11] = v2;
  v3 = *a1;
  v4 = **(*a1 + 64);
  if (v4)
  {
    do
    {
      RegisterAdd(a1, v4, 3, a1[11], *(v4 + 32), (*(v4 + 24) >> 3) & 7, *(v4 + 24) & 7);
      v4 = *(v4 + 8);
    }

    while (v4);
    v2 = a1[9];
    v3 = *a1;
  }

  a1[16] = v2;
  a1[12] = v2;
  v5 = *v3[4];
  if (v5)
  {
    do
    {
      RegisterAdd(a1, v5, 1, a1[12], *(v5 + 32), (*(v5 + 24) >> 3) & 7, *(v5 + 24) & 7);
      v5 = *(v5 + 8);
    }

    while (v5);
    v2 = a1[9];
    v3 = *a1;
  }

  a1[17] = v2;
  a1[13] = v2;
  v6 = *v3[6];
  if (v6)
  {
    do
    {
      RegisterAdd(a1, v6, 0, a1[13], *(v6 + 32), (*(v6 + 24) >> 3) & 7, *(v6 + 24) & 7);
      v6 = *(v6 + 8);
    }

    while (v6);
    v2 = a1[9];
    v3 = *a1;
  }

  a1[18] = v2;
  a1[14] = v2;
  v7 = *v3[7];
  if (v7)
  {
    do
    {
      RegisterAdd(a1, v7, 2, a1[14], *(v7 + 32), (*(v7 + 24) >> 3) & 7, *(v7 + 24) & 7);
      v7 = *(v7 + 8);
    }

    while (v7);
    v2 = a1[9];
    v3 = *a1;
  }

  a1[19] = v2;
  a1[15] = v2;
  v8 = *v3[5];
  if (v8)
  {
    do
    {
      RegisterAdd(a1, v8, 4, a1[15], *(v8 + 24), 2, 0);
      v8 = *(v8 + 8);
    }

    while (v8);
    v2 = a1[9];
  }

  a1[20] = v2;

  return RegistersInitialize(a1);
}

void RegistersFree(uint64_t a1)
{
  v2 = *(a1 + 36);
  if (v2)
  {
    v3 = 0;
    v4 = 8;
    do
    {
      v5 = *(*(a1 + 16) + v4);
      if (v5)
      {
        BitSetFree(v5);
        v2 = *(a1 + 36);
      }

      ++v3;
      v4 += 56;
    }

    while (v3 < v2);
  }

  v6 = *(a1 + 16);
  if (v6)
  {

    free(v6);
  }
}

void Blockify(uint64_t a1)
{
  bzero(*(a1 + 24), 8 * *(a1 + 40));
  GetOrAddBlock(a1, 0);
  v2 = **(*a1 + 104);
  if (v2)
  {
    while (1)
    {
      v3 = *(v2 + 8);
      if (!v3)
      {
        v3 = v2;
      }

      LODWORD(v4) = *(v3 + 88);
      v5 = (*(v2 + 24) >> 6);
      v6 = v5 - 75;
      if ((v5 - 75) > 0x21)
      {
        goto LABEL_11;
      }

      if (((1 << v6) & 0x38001BE01) == 0)
      {
        break;
      }

LABEL_6:
      GetOrAddBlock(a1, v4);
      v4 = *(v2 + 24) >> 46;
LABEL_7:
      GetOrAddBlock(a1, v4);
LABEL_8:
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_14;
      }
    }

    if (((1 << v6) & 0x4004) != 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    if ((v5 - 141) < 3)
    {
      goto LABEL_7;
    }

    if (v5 != 140)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_14:
  bzero(*(a1 + 24), 8 * *(a1 + 40));
  v7 = *(a1 + 40);
  if (v7 && (v8 = *(a1 + 24), !*v8))
  {
    *v8 = *(a1 + 8);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  for (i = **(*a1 + 104); i; i = *(i + 8))
  {
    v11 = *(i + 8);
    if (!v11)
    {
      v11 = i;
    }

    v12 = *(v11 + 88);
    v13 = *(i + 24);
    v14 = (v13 >> 6);
    v15 = v14 - 75;
    if ((v14 - 75) <= 0x21)
    {
      if (((1 << v15) & 0x38001BE01) != 0)
      {
        goto LABEL_23;
      }

      if (((1 << v15) & 0x4004) != 0)
      {
        goto LABEL_30;
      }
    }

    if ((v14 - 141) < 3)
    {
LABEL_30:
      if (v7 > v12)
      {
        v18 = (*(a1 + 24) + 8 * v12);
LABEL_32:
        if (!*v18)
        {
          *v18 = *(a1 + 8) + 80 * v9++;
        }
      }
    }

    else if (v14 == 140)
    {
LABEL_23:
      if (v7 > v12)
      {
        v16 = *(a1 + 24);
        if (!*(v16 + 8 * v12))
        {
          *(v16 + 8 * v12) = *(a1 + 8) + 80 * v9++;
          v13 = *(i + 24);
        }
      }

      v17 = v13 >> 46;
      if (v7 <= v17)
      {
        continue;
      }

      v18 = (*(a1 + 24) + 8 * v17);
      goto LABEL_32;
    }
  }

  v19 = malloc_type_malloc(4uLL, 0xCA0EF1E7uLL);
  if (!v19)
  {
LABEL_127:
    abort();
  }

  v20 = v19;
  if (*(a1 + 40))
  {
    v21 = **(a1 + 24);
  }

  else
  {
    v21 = 0;
  }

  v22 = **(*a1 + 104);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v26 = *(v22 + 88);
      v27 = *(v22 + 8);
      if (v27)
      {
        v28 = *(v27 + 88);
      }

      else
      {
        v28 = *(v22 + 88);
      }

      if ((*(v22 + 25) & 0x40) != 0)
      {
        v24 = 1;
      }

      if (*(a1 + 40) <= v26)
      {
        v30 = v21;
      }

      else
      {
        v29 = *(*(a1 + 24) + 8 * v26);
        v30 = v29 ? v29 : v21;
      }

      *(v30 + 12) = v24;
      InstructionAdd(a1, v30, v22);
      v31 = *(v22 + 24);
      v32 = (v31 >> 6);
      if (v32 > 0x59)
      {
        break;
      }

      if ((v31 >> 6) > 0x54u)
      {
        if (v32 - 85 >= 3)
        {
          if (v32 == 88)
          {
            goto LABEL_66;
          }

          if (v32 != 89)
          {
            goto LABEL_85;
          }

          goto LABEL_74;
        }

        goto LABEL_77;
      }

      if (v32 == 75)
      {
        goto LABEL_66;
      }

      if (v32 != 77)
      {
        if (v32 == 84)
        {
          goto LABEL_66;
        }

LABEL_85:
        if (*(a1 + 40) <= v28 || (v21 = *(*(a1 + 24) + 8 * v28)) == 0)
        {
          v21 = v30;
          goto LABEL_98;
        }

LABEL_95:
        v37 = v30;
LABEL_96:
        v36 = v21;
LABEL_97:
        BlockAddSuccessor(v37, v36);
        goto LABEL_98;
      }

      if (*(a1 + 40) <= v28)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(*(a1 + 24) + 8 * v28);
      }

LABEL_98:
      v42 = (*(v22 + 24) >> 6);
      if (v42 <= 0x58)
      {
        if (v42 - 85 >= 3)
        {
          if (v23)
          {
            v43 = v24;
          }

          else
          {
            v43 = 0;
          }

          if (v42 == 77)
          {
            v24 = v43;
          }

          goto LABEL_121;
        }

        goto LABEL_120;
      }

      if ((*(v22 + 24) >> 6) <= 0x6Au)
      {
        if (v42 - 89 >= 3)
        {
          goto LABEL_121;
        }

        goto LABEL_117;
      }

      if ((*(v22 + 24) >> 6) <= 0x8Bu)
      {
        if (v42 == 107)
        {
          goto LABEL_120;
        }

        if (v42 != 108)
        {
          goto LABEL_121;
        }

        goto LABEL_117;
      }

      if (v42 == 140)
      {
        v45 = malloc_type_realloc(v20, 4 * (v25 + 1), 0x352A3853uLL);
        if (!v45)
        {
          goto LABEL_127;
        }

        v20 = v45;
        v45[v25++] = v28;
LABEL_120:
        ++v23;
        goto LABEL_121;
      }

      if (v42 == 143)
      {
        v44 = malloc_type_realloc(v20, 4 * --v25, 0x352A3853uLL);
        if (!v44)
        {
          goto LABEL_127;
        }

        v20 = v44;
LABEL_117:
        --v23;
      }

LABEL_121:
      v22 = *(v22 + 8);
      if (!v22)
      {
        goto LABEL_124;
      }
    }

    v33 = v32 - 107;
    if (v33 <= 0x24)
    {
      if (((1 << (v32 - 107)) & 0x200000003) != 0)
      {
        goto LABEL_77;
      }

      if (((1 << (v32 - 107)) & 0xC00000000) != 0)
      {
        if (*(a1 + 40) <= v28)
        {
          v21 = 0;
        }

        else
        {
          v21 = *(*(a1 + 24) + 8 * v28);
        }

        BlockAddSuccessor(v30, v21);
        v41 = v20[v25 - 1];
        if (*(a1 + 40) <= v41)
        {
          v37 = 0;
        }

        else
        {
          v37 = *(*(a1 + 24) + 8 * v41);
        }

        goto LABEL_96;
      }

      if (v33 == 36)
      {
LABEL_74:
        if (*(a1 + 40) <= v28)
        {
          v21 = 0;
        }

        else
        {
          v21 = *(*(a1 + 24) + 8 * v28);
        }

        goto LABEL_95;
      }
    }

    if (v32 - 90 >= 2)
    {
      if (v32 != 106)
      {
        goto LABEL_85;
      }

LABEL_66:
      v34 = *(a1 + 40);
      if (v34 <= v28)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(*(a1 + 24) + 8 * v28);
      }

      v35 = v31 >> 46;
      if (v34 <= v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = *(*(a1 + 24) + 8 * v35);
      }

      v37 = v30;
      goto LABEL_97;
    }

LABEL_77:
    v38 = *(a1 + 40);
    if (v38 <= v28)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(*(a1 + 24) + 8 * v28);
    }

    v39 = v31 >> 46;
    if (v38 <= v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = *(*(a1 + 24) + 8 * v39);
    }

    BlockAddSuccessor(v30, v21);
    v37 = v30;
    v36 = v40;
    goto LABEL_97;
  }

LABEL_124:

  free(v20);
}

void GetOrAddBlock(uint64_t a1, int a2)
{
  v4 = a2 + 1;
  if (*(a1 + 40) < (a2 + 1))
  {
    v5 = malloc_type_realloc(*(a1 + 24), 8 * v4, 0x352A3853uLL);
    if (!v5)
    {
      abort();
    }

    *(a1 + 24) = v5;
    bzero(&v5[8 * *(a1 + 40)], 8 * (v4 - *(a1 + 40)));
    *(a1 + 40) = v4;
  }

  if (!*(*(a1 + 24) + 8 * a2))
  {
    *(*(a1 + 24) + 8 * a2) = BlockAdd(a1);
  }
}

void *BlockAddSuccessor(void *result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = result;
    v4 = *(a2 + 4) + 1;
    *(a2 + 4) = v4;
    v5 = malloc_type_realloc(*(a2 + 24), 8 * v4, 0x352A3853uLL);
    if (!v5 || (*(a2 + 24) = v5, v5[*(a2 + 4) - 1] = v3, v6 = *(v3 + 2) + 1, *(v3 + 2) = v6, (result = malloc_type_realloc(v3[4], 8 * v6, 0x352A3853uLL)) == 0))
    {
      abort();
    }

    v3[4] = result;
    result[*(v3 + 2) - 1] = a2;
  }

  return result;
}

void BlocksFree(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      BlockFree((*(a1 + 8) + v2));
      ++v3;
      v2 += 80;
    }

    while (v3 < *(a1 + 32));
  }

  v4 = *(a1 + 8);
  if (v4)
  {

    free(v4);
  }
}

_DWORD *ProgramNew(uint64_t a1)
{
  v2 = malloc_type_malloc(0x58uLL, 0xCA0EF1E7uLL);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  *v2 = a1;
  v2[8] = 0;
  v4 = malloc_type_malloc(0x50uLL, 0xCA0EF1E7uLL);
  if (!v4 || (*(v3 + 1) = v4, v3[9] = 0, (v5 = malloc_type_malloc(0x38uLL, 0xCA0EF1E7uLL)) == 0) || (*(v3 + 2) = v5, v3[10] = 0, (v6 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL)) == 0))
  {
LABEL_6:
    abort();
  }

  *(v3 + 3) = v6;
  *(v3 + 11) = 0u;
  *(v3 + 15) = 0u;
  *(v3 + 19) = 0;
  return v3;
}

void ProgramFree(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
  }

  RegistersFree(a1);
  BlocksFree(a1);

  free(a1);
}

void FlattenIfs(uint64_t a1)
{
  v1 = **(a1 + 104);
  if (!v1)
  {
    return;
  }

  do
  {
    if ((v1[3] & 0x3FC0) != 0x1540)
    {
LABEL_33:
      v18 = (v1 + 1);
      goto LABEL_34;
    }

    v3 = 0;
    v4 = 0;
    v5 = v1[3] >> 46;
    v6 = 1;
    v7 = v1;
    do
    {
      v8 = v7;
      if (v4 && *(v7 + 22) == v5)
      {
        v9 = v4[3];
        v10 = (v9 >> 6);
        if (v10 == 88)
        {
          v5 = v9 >> 46;
          v3 = v4;
        }

        else if (v10 == 89)
        {
          goto LABEL_30;
        }
      }

      v11 = v8[3];
      v12 = (v11 >> 6);
      v13 = v12 - 75;
      if ((v12 - 75) > 0x3D)
      {
        goto LABEL_16;
      }

      if (((1 << v13) & 0x3000738000000006) != 0)
      {
        goto LABEL_12;
      }

      if (((1 << v13) & 0x80000201) != 0)
      {
        if (v5 <= (v11 >> 46))
        {
          v6 = 0;
        }
      }

      else
      {
LABEL_16:
        if (v12 == 170)
        {
LABEL_12:
          v6 = 0;
        }
      }

      if ((v11 & 7) != 0)
      {
        v14 = 0;
        do
        {
          if (v14 < (v11 & 7) + (v11 >> 15) && (v8[v14 + 5] & 0x60001) != 0)
          {
            v6 = 0;
          }

          ++v14;
        }

        while ((v8[3] & 7) != v14);
      }

      v15 = v8[4];
      if ((v15 & 0x100180000) != 0 && (v15 & 0x78000) != 0)
      {
        v6 = 0;
      }

      v7 = v8[1];
      v4 = v8;
    }

    while (v7);
    v4 = 0;
LABEL_30:
    if (!v6)
    {
      goto LABEL_33;
    }

    v17 = *v1;
    FlattenIf(a1, v1, v3, v4);
    if (v17)
    {
      v18 = (v17 + 8);
    }

    else
    {
      v18 = *(a1 + 104);
    }

LABEL_34:
    v1 = *v18;
  }

  while (*v18);
}

void FlattenIf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v7 = 0;
  v144 = *MEMORY[0x277D85DE8];
  v115 = *(a2 + 40);
  v141 = 0;
  memset(v140, 0, sizeof(v140));
  v139 = 0;
  memset(v138, 0, sizeof(v138));
  v136 = v138;
  v137 = v140;
  v121 = ((v115 >> 9) & 3) << 9;
  v124 = (v115 >> 9) & 3;
  v8 = &v137;
  v9 = 1;
  do
  {
    v10 = v9;
    memset(&v135[1], 0, 64);
    DWORD1(v135[4]) = *(v5 + 92);
    v11 = *(v5 + 24);
    *&v135[0] = v11 & 0x1C000380000 | (dword_23A2A5F00[v7] << 6) | 0x100000001;
    if (((v115 >> 9) & 3) > 1)
    {
      v12 = (((v115 >> 9) & 3) << 21) | 0x10000;
      if (v124 != 2)
      {
        v12 = (((v115 >> 9) & 3) << 21) | 0x8000;
      }
    }

    else
    {
      v12 = (((v115 >> 9) & 3) << 21) | 0x40000;
      if (v124)
      {
        v12 = (((v115 >> 9) & 3) << 21) | 0x20000;
      }
    }

    *(&v135[0] + 1) = v12 & 0xFFFFFFFFFFFF8FFFLL | 0x1000;
    HIWORD(v135[0]) = AddTempRegister(a1, (v11 >> 19) & 7, (v11 & 0x1C000380000uLL) >> 38, v12 >> 21);
    v5 = a2;
    *&v135[1] = *&v135[1] & 0xFFFFFFE7F82FLL | *(a2 + 40) & 0xFFFF0000000001D0 | v121;
    PPStreamInsertOperationBeforeChunk(a1, v135, 0, a2);
    v9 = 0;
    v13 = *v8;
    v13[1] = (DWORD2(v135[0]) >> 12) & 7;
    *v13 = HIWORD(v135[0]);
    v14 = (*&v135[0] >> 38) & 7;
    v13[2] = (LODWORD(v135[0]) >> 19) & 7;
    v13[3] = v14;
    v13[4] = (DWORD2(v135[0]) >> 21) & 3;
    v8 = &v136;
    v7 = 1;
  }

  while ((v10 & 1) != 0);
  v15 = HashTableNew((*(*(a1 + 32) + 16) >> 5) + 1, regHashFunction, regEqualsFunction);
  v16 = HashTableNew((*(*(a1 + 32) + 16) >> 5) + 1, regHashFunction, regEqualsFunction);
  v17 = a3;
  v18 = a1;
  if (a3)
  {
    v19 = HashTableNew((*(*(a1 + 32) + 16) >> 5) + 1, regHashFunction, regEqualsFunction);
    v20 = HashTableNew((*(*(v18 + 32) + 16) >> 5) + 1, regHashFunction, regEqualsFunction);
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v17 = a4;
  }

  v122 = HashSetNew((*(*(v18 + 32) + 16) >> 5) + 1, regHashFunction, regEqualsFunction);
  v133 = v19;
  v134 = v15;
  v131 = v20;
  v132 = v16;
  v120 = &v137;
  v21 = &v134;
  v125 = v18;
  v126 = &v132;
  v22 = &v130;
  v129 = a4;
  v130 = v17;
  v23 = 1;
  v116 = a4;
  v24 = a2;
  v25 = v18;
  do
  {
    v119 = v23;
    if (v24)
    {
      v26 = *(v24 + 8);
      v27 = *v22;
      v123 = v27;
      while (v26 != v27)
      {
        v28 = *(v26 + 24) & 7;
        if (v28)
        {
          v29 = 0;
          v30 = v26 + 40;
          do
          {
            if (v29 < (*(v26 + 24) & 7) + (*(v26 + 24) >> 15))
            {
              memset(v135, 0, 40);
              v31 = v30 + 8 * v29;
              DWORD1(v135[0]) = (*v31 >> 6) & 7;
              LODWORD(v135[0]) = *(v31 + 6);
              v32 = *v21;
              v33 = HashTableGet(*v21, v135);
              if (v33)
              {
                v35 = v33;
                HashTableGet(*v126, v33);
              }

              else
              {
                GetRegisterTypeInfo(v25, v135, v34);
                v36 = malloc_type_malloc(0x28uLL, 0xCA0EF1E7uLL);
                if (!v36)
                {
                  goto LABEL_97;
                }

                v37 = v36;
                v38 = v135[0];
                v39 = v135[1];
                v36[4] = *&v135[2];
                *v36 = v38;
                *(v36 + 1) = v39;
                v40 = malloc_type_malloc(0x28uLL, 0xCA0EF1E7uLL);
                if (!v40)
                {
                  goto LABEL_97;
                }

                v35 = v40;
                v42 = v135[0];
                v41 = v135[1];
                *(v40 + 4) = *&v135[2];
                *v40 = v42;
                *(v40 + 1) = v41;
                v40[1] = 1;
                *v40 = AddTempRegister(v125, SBYTE8(v135[0]), SBYTE12(v135[0]), v135[1]);
                HashTableAdd(v32, v37, v35);
                v43 = v37;
                v25 = v125;
                HashTableAdd(*v126, v35, v43);
              }

              v44 = *(v30 + 8 * v29) & 0xFFFFFFFFFFFFFE3FLL | ((v35[1] & 7) << 6);
              *(v30 + 8 * v29) = v44;
              *(v30 + 8 * v29) = v44 & 0xFFFFFFFFFFFFLL | (*v35 << 48);
            }

            ++v29;
          }

          while (v28 != v29);
        }

        if ((*(v26 + 33) & 0x780) != 0)
        {
          memset(v135, 0, 40);
          v45 = *(v26 + 32);
          LODWORD(v135[0]) = HIWORD(v45);
          DWORD1(v135[0]) = (v45 >> 12) & 7;
          v46 = *v21;
          v47 = HashTableGet(*v21, v135);
          if (v47)
          {
            v49 = v47;
            v50 = HashTableGet(*v126, v47);
          }

          else
          {
            GetRegisterTypeInfo(v125, v135, v48);
            v51 = malloc_type_malloc(0x28uLL, 0xCA0EF1E7uLL);
            if (!v51 || (v50 = v51, v52 = v135[0], v53 = v135[1], v51[4] = *&v135[2], *v51 = v52, *(v51 + 1) = v53, (v54 = malloc_type_malloc(0x28uLL, 0xCA0EF1E7uLL)) == 0))
            {
LABEL_97:
              abort();
            }

            v49 = v54;
            v56 = v135[0];
            v55 = v135[1];
            *(v54 + 4) = *&v135[2];
            *v54 = v56;
            *(v54 + 1) = v55;
            v54[1] = 1;
            *v54 = AddTempRegister(v125, SBYTE8(v135[0]), SBYTE12(v135[0]), v135[1]);
            HashTableAdd(v46, v50, v49);
            HashTableAdd(*v126, v49, v50);
          }

          if (v122)
          {
            HashSetAdd(v122, v50);
          }

          v57 = *(v26 + 32) & 0xFFFFFFFFFFFF8FFFLL | ((v49[1] & 7) << 12);
          *(v26 + 32) = v57;
          *(v26 + 32) = v57 & 0xFFFFFFFFFFFFLL | (*v49 << 48);
          v25 = v125;
        }

        if ((*(v26 + 24) & 0x3FC0) == 0x13C0)
        {
          memset(v135 + 8, 0, 72);
          DWORD1(v135[4]) = *(v26 + 92);
          v58 = *(v26 + 24);
          *&v135[0] = (v58 & 0x1C000380000) + 0x100000902;
          if (((v115 >> 9) & 3) > 1)
          {
            v59 = (((v115 >> 9) & 3) << 21) | 0x10000;
            if (v124 != 2)
            {
              v59 = (((v115 >> 9) & 3) << 21) | 0x8000;
            }
          }

          else
          {
            v59 = (((v115 >> 9) & 3) << 21) | 0x40000;
            if (v124)
            {
              v59 = (((v115 >> 9) & 3) << 21) | 0x20000;
            }
          }

          *(&v135[0] + 1) = v59 & 0xFFFFFFFFFFFF8FFFLL | 0x1000;
          v60 = AddTempRegister(v25, (v58 >> 19) & 7, (v58 & 0x1C000380000uLL) >> 38, v59 >> 21);
          v61 = 0;
          v62 = *(&v135[0] + 1);
          v63 = v60 << 48;
          HIWORD(v135[0]) = v60;
          v64 = *(v26 + 40);
          v65 = ~v64;
          v66 = (v64 >> 9) & 3;
          v67 = (v64 >> 6) & 7;
          v68 = *(*v120 + 1);
          v69 = HIWORD(v64);
          v70 = **v120;
          v71 = v65 & 0x10;
          v72 = 1;
          do
          {
            v73 = v72;
            *(&v135[1] + v61) = *(&v135[1] + v61) & 0xFFFFFFE7F82FLL | (v66 << 9) | ((v67 & 7) << 6) | (v69 << 48) | v71;
            v69 = v70;
            LOBYTE(v67) = v68;
            v66 = (v115 >> 9) & 3;
            v61 = 1;
            v72 = 0;
            v71 = 0;
          }

          while ((v73 & 1) != 0);
          *(v26 + 40) = (v62 >> 6) & 0x1C0 | v121 | v63 | *(v26 + 40) & 0xFFFFFFFFF82FLL | 0x10;
          PPStreamInsertOperationBeforeChunk(v25, v135, 0, v26);
        }

        v26 = *(v26 + 8);
        v27 = v123;
      }
    }

    v23 = 0;
    v120 = &v136;
    v21 = &v133;
    v126 = &v131;
    v22 = &v129;
    v24 = a3;
  }

  while ((v119 & 1) != 0);
  v74 = &v134;
  v75 = 1;
  v76 = a4;
  v77 = a2;
  do
  {
    v78 = v75;
    if (!v77)
    {
      goto LABEL_58;
    }

    v142 = 0;
    v143.i64[0] = 0;
    HashSetIteratorSetup(**v74, &v142);
    while (1)
    {
      v79 = HashSetIteratorNext(&v142);
      if (!v79)
      {
        break;
      }

      v81 = *v79;
      v80 = *(v79 + 8);
      memset(v135 + 8, 0, 72);
      DWORD1(v135[4]) = *(v77 + 92);
      *&v135[0] = 0x100000001;
      v82 = (v80[4] & 3) << 21;
      v83 = v82 | 0x72000000;
      v84 = v80[4] & 3;
      if (v84 > 1)
      {
        if (v84 != 2)
        {
          v83 = v82 | 0x72008000;
        }

        v83 |= 0x10000uLL;
LABEL_55:
        v83 |= 0x20000uLL;
        goto LABEL_56;
      }

      if (v84)
      {
        goto LABEL_55;
      }

LABEL_56:
      *(&v135[0] + 1) = v83 | 0x40000;
      *(&v135[0] + 1) = v83 & 0xFFFFFFFFFFFB8FFFLL | 0x40000 | ((v80[1] & 7) << 12);
      *(&v135[0] + 1) |= *v80 << 48;
      *&v135[1] = (v83 >> 2) & 0x180000 | 0x1C800;
      *&v135[1] |= (v81[1] & 7) << 6;
      *&v135[1] |= *v81 << 48;
      *&v135[0] = ((v80[3] & 7) << 38) | ((v80[2] & 7) << 19) | ((v80[4] & 3) << 36) | 0x100000001;
      PPStreamInsertOperationAfterChunk(v25, v135, 0, v77);
    }

    PPStreamRemoveOperation(v25, v77);
LABEL_58:
    v75 = 0;
    v74 = &v133;
    v77 = a3;
  }

  while ((v78 & 1) != 0);
  v128[0] = 0;
  v128[1] = 0;
  HashSetIteratorSetup(v122, v128);
  v85 = HashSetIteratorNext(v128);
  if (v85)
  {
    v86 = v85;
    while (1)
    {
      v127 = 0uLL;
      v87 = &v134;
      v88 = &v127;
      v89 = 1;
      do
      {
        v90 = v89;
        if (*v87)
        {
          v88->i64[0] = HashTableGet(*v87, v86);
        }

        v89 = 0;
        v87 = &v133;
        v88 = &v127.u64[1];
      }

      while ((v90 & 1) != 0);
      v127 = vbslq_s8(vceqzq_s64(v127), vdupq_n_s64(v86), v127);
      v76 = v116;
      if (v127.i64[0] == v127.i64[1])
      {
        goto LABEL_88;
      }

      memset(v135 + 8, 0, 72);
      DWORD1(v135[4]) = *(v116 + 92);
      *&v135[0] = 0x100000F83;
      v91 = ((v86[4] & 3) << 21) | 0x72000000;
      v92 = v86[4] & 3;
      if (v92 > 1)
      {
        break;
      }

      if (v92)
      {
        goto LABEL_72;
      }

LABEL_73:
      v93 = 0;
      *(&v135[0] + 1) = v91 | 0x40000;
      *(&v135[0] + 1) = v91 & 0xFFFFFFFFFFFB8FFFLL | 0x40000 | ((v86[1] & 7) << 12);
      *(&v135[0] + 1) |= *v86 << 48;
      v142 = v140;
      v143 = v127;
      v94 = (v91 >> 2) & 0x180000;
      v95 = -1;
      do
      {
        v96 = v135 + 8 * v93;
        if (v95 >= 2)
        {
          v97 = v115 & 0x600;
        }

        else
        {
          v97 = 0;
        }

        if (v95 >= 2)
        {
          v98 = ((v115 >> 9) & 3) << 11;
        }

        else
        {
          v98 = 2048;
        }

        if (v95 >= 2)
        {
          v99 = ((v115 >> 9) & 3) << 13;
        }

        else
        {
          v99 = 0x4000;
        }

        if (v95 >= 2)
        {
          v100 = ((v115 >> 9) & 3) << 15;
        }

        else
        {
          v100 = 98304;
        }

        v101 = v97 | v94 | v98 | v99 | v100 | *(v96 + 2) & 0xFFFFFFFFFFE601FFLL;
        *(v96 + 2) = v101;
        v102 = *(&v142 + v93);
        v103 = v101 & 0xFFFFFFFFFFFFFE3FLL | ((v102[1] & 7) << 6);
        *(v96 + 2) = v103;
        *(v96 + 2) = v103 & 0xFFFFFFFFFFEFLL | (*v102 << 48) | (16 * (dword_23A2A5F10[v93++] & 1));
        ++v95;
      }

      while (v93 != 3);
      v104 = vand_s8(*(v86 + 3), 0x300000007);
      v105.i64[0] = v104.u32[0];
      v105.i64[1] = v104.u32[1];
      v106 = vshlq_u64(v105, xmmword_23A2A5E80);
      *&v135[0] = v106.i64[1] | v106.i64[0] | ((v86[2] & 7) << 19) | 0x100000F83;
      PPStreamInsertOperationAfterChunk(v125, v135, 0, v116);
LABEL_88:
      v86 = HashSetIteratorNext(v128);
      if (!v86)
      {
        goto LABEL_89;
      }
    }

    if (v92 != 2)
    {
      v91 = ((v86[4] & 3) << 21) | 0x72008000;
    }

    v91 |= 0x10000uLL;
LABEL_72:
    v91 |= 0x20000uLL;
    goto LABEL_73;
  }

LABEL_89:
  PPStreamRemoveOperation(v125, v76);
  v107 = &v134;
  v108 = &v132;
  v109 = 1;
  do
  {
    v110 = v109;
    v111 = *v107;
    if (*v107)
    {
      v135[0] = 0uLL;
      HashSetIteratorSetup(*v111, v135);
      v112 = HashSetIteratorNext(v135);
      if (v112)
      {
        v113 = v112;
        do
        {
          free(*v113);
          free(v113[1]);
          v113 = HashSetIteratorNext(v135);
        }

        while (v113);
      }

      HashTableFree(v111);
      HashTableFree(*v108);
    }

    v109 = 0;
    v107 = &v133;
    v108 = &v131;
  }

  while ((v110 & 1) != 0);
  HashSetFree(v122);
  v114 = *MEMORY[0x277D85DE8];
}

uint64_t AddTempRegister(uint64_t a1, char a2, char a3, char a4)
{
  *(&v9 + 1) = 0;
  DWORD2(v9) = PPStreamChunkListGetNextIndex(*(a1 + 32));
  *&v9 = a2 & 7 | (8 * (a3 & 7)) & 0x3F | ((a4 & 3) << 6);
  PPStreamAddTempUsage(a1, &v9);
  return DWORD2(v9);
}

uint64_t regEqualsFunction(_DWORD *a1, _DWORD *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  result = (v3 - v4);
  if (v3 == v4)
  {
    return (*a1 - *a2);
  }

  return result;
}

double GetRegisterTypeInfo(uint64_t **a1, uint64_t a2, int32x4_t a3)
{
  v5 = *(a2 + 4);
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        a3.i64[0] = 0x200000000;
        *(a2 + 8) = xmmword_23A2A5E90;
        return *a3.i64;
      }

      if (v5 != 5)
      {
        return *a3.i64;
      }
    }

    v7 = a1[8];
    goto LABEL_16;
  }

  switch(v5)
  {
    case 0:
      v8 = PPStreamChunkListChunkAtIndex(a1[6], *a2);
      if (!v8)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    case 1:
      v7 = a1[4];
LABEL_16:
      v8 = PPStreamChunkListChunkAtIndex(v7, *a2);
LABEL_17:
      *(a2 + 8) = *(v8 + 24) & 7;
      *(a2 + 12) = (*(v8 + 24) >> 3) & 7;
      *(a2 + 16) = *(v8 + 24) >> 6;
LABEL_18:
      *(a2 + 20) = 0;
      return *a3.i64;
    case 2:
      v6 = PPStreamChunkListChunkAtIndex(a1[7], *a2);
      *(a2 + 8) = *(v6 + 24) & 7;
      *(a2 + 12) = (*(v6 + 24) >> 3) & 7;
      *(a2 + 16) = *(v6 + 24) >> 6;
      *(a2 + 20) = 0;
      if ((*(v6 + 24) & 0x1F00) == 0x600)
      {
        *(a2 + 20) = 1;
        a3 = *(PPStreamChunkListChunkAtIndex(a1[16], *(v6 + 28)) + 24);
        if (*(a2 + 12))
        {
          a3 = vcvtq_f32_s32(a3);
        }

        *(a2 + 24) = a3;
      }

      break;
  }

  return *a3.i64;
}

void DetectConstantLoopsSimple(uint64_t **a1)
{
  v151 = *MEMORY[0x277D85DE8];
  v1 = *a1[13];
  if (!v1)
  {
    goto LABEL_158;
  }

  v2 = a1;
  do
  {
LABEL_3:
    while ((*(v1 + 24) & 0x3FC0) != 0x1AC0)
    {
      v1 = *(v1 + 8);
      if (!v1)
      {
        goto LABEL_158;
      }
    }

    memset(v150, 0, sizeof(v150));
    v148 = 0u;
    v149 = 0u;
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    memset(v122, 0, 44);
    memset(v121, 0, 44);
    v3 = *v1;
    if (*v1 && (*(v3 + 24) & 0x3FC0) == 0)
    {
      GetOpRegs(v2, *v1, &v148, &v123, 0);
      v7 = IsBadUsage(v3);
      v105 = v123;
      v4 = DWORD1(v123);
      v121[0] = v148;
      v121[1] = v149;
      *&v121[2] = *&v150[0];
      DWORD2(v121[2]) = DWORD2(v121[2]) & 0xFFFFFFFC | (*(v3 + 40) >> 9) & 3;
      DWORD2(v121[2]) = DWORD2(v121[2]) & 0xFFFFFFF3 | (4 * ((*(v3 + 40) >> 11) & 3));
      DWORD2(v121[2]) = DWORD2(v121[2]) & 0xFFFFFFCF | (16 * ((*(v3 + 40) >> 13) & 3));
      DWORD2(v121[2]) = DWORD2(v121[2]) & 0xFFFFFF3F | (((*(v3 + 40) >> 15) & 3) << 6);
      v5 = HIDWORD(v123) != 2;
      v6 = v124 == 0;
    }

    else
    {
      v105 = 0;
      v4 = 0;
      v5 = 1;
      v6 = 1;
      v7 = 1;
    }

    v104 = v4;
    memset(v120, 0, 44);
    v8 = *(v1 + 8);
    v97 = v6;
    v98 = v5;
    if ((*(v8 + 24) & 0x3FC0) == 0x1BC0)
    {
      v8 = *(v8 + 8);
    }

    v9 = *(v8 + 8);
    v10 = *(v9 + 8);
    GetOpRegs(v2, v8, &v148, &v123, 0);
    v11 = IsBadUsage(v8);
    v13 = v104 == v148.i32[1] && v105 == v148.i32[0];
    v14 = v13;
    if (v13)
    {
      v12 = *(v150 + 8);
      v120[0] = *(v150 + 8);
      v120[1] = *(&v150[1] + 8);
      *&v120[2] = *(&v150[2] + 1);
      v15 = DWORD2(v120[2]) & 0xFFFFFF00 | (*(v8 + 48) >> 9);
LABEL_24:
      v17 = v11 | v7;
      DWORD2(v120[2]) = v15;
      v16 = v14;
      goto LABEL_25;
    }

    v16 = 1;
    if (v104 == HIDWORD(v150[0]))
    {
      v17 = 1;
      if (v105 != DWORD2(v150[0]))
      {
        goto LABEL_25;
      }

      v12 = v148;
      v120[0] = v148;
      v120[1] = v149;
      *&v120[2] = *&v150[0];
      DWORD2(v120[2]) = DWORD2(v120[2]) & 0xFFFFFFFC | (*(v8 + 40) >> 9) & 3;
      DWORD2(v120[2]) = DWORD2(v120[2]) & 0xFFFFFFF3 | (4 * ((*(v8 + 40) >> 11) & 3));
      DWORD2(v120[2]) = DWORD2(v120[2]) & 0xFFFFFFCF | (16 * ((*(v8 + 40) >> 13) & 3));
      v15 = DWORD2(v120[2]) & 0xFFFFFF3F | (((*(v8 + 40) >> 15) & 3) << 6);
      goto LABEL_24;
    }

    v17 = 1;
LABEL_25:
    v18 = (*(v8 + 24) >> 6);
    if (v18 <= 0x33)
    {
      if (v18 != 50)
      {
        if (v18 != 51)
        {
          goto LABEL_33;
        }

        v19 = 0;
        v94 = 0;
        v20 = 1;
        goto LABEL_32;
      }

      v19 = 0;
      v21 = 0;
      v20 = 1;
LABEL_36:
      v94 = 1;
      goto LABEL_37;
    }

    if (v18 == 52)
    {
      v20 = 0;
      v21 = 0;
      v19 = 1;
      goto LABEL_36;
    }

    if (v18 != 53)
    {
LABEL_33:
      v20 = 0;
      v94 = 0;
      v19 = 1;
      v21 = 1;
      v17 = 1;
      goto LABEL_37;
    }

    v20 = 0;
    v94 = 0;
    v19 = 1;
LABEL_32:
    v21 = 1;
LABEL_37:
    if (v16)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    v96 = v22;
    if (v10)
    {
      v23 = (v10[3] & 0x3FC0) != 5440;
    }

    else
    {
      v23 = 1;
    }

    v24 = v17 | ((*(v9 + 24) & 0x3FC0) != 640) | v23;
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 1;
      goto LABEL_99;
    }

    v92 = v21;
    v31 = 0;
    v102 = 0;
    v32 = 0;
    v95 = 0;
    v33 = 0;
    v99 = 0;
    v101 = *(v1 + 24) >> 46;
    v93 = v1;
    while (1)
    {
      v34 = v1;
      if (v32)
      {
        if (*(v1 + 88) == v101 && (v32[3] & 0x3FC0) == 0x1B00)
        {
          break;
        }
      }

      v35 = (*(v1 + 24) >> 6) - 85;
      if (v35 > 0x3A)
      {
        goto LABEL_55;
      }

      if (((1 << v35) & 0x80000000400007) != 0)
      {
        v36 = 1;
      }

      else
      {
        if (((1 << v35) & 0x400000000800070) == 0)
        {
          goto LABEL_55;
        }

        v36 = -1;
      }

      v33 += v36;
LABEL_55:
      v37 = v2;
      GetOpRegs(v2, v34, &v148, &v123, v12);
      v38 = IsBadUsage(v34);
      v39 = DWORD1(v123);
      v40 = v123;
      v41 = v104;
      if (v104 == DWORD1(v123) && v105 == v123)
      {
        if (v102)
        {
          v43 = 1;
          v102 = 1;
        }

        else
        {
          v49 = v38;
          v50 = v34[3];
          if ((v50 & 0x3FC0) != 0)
          {
            v51 = v34;
          }

          else
          {
            v52 = *v34;
            v51 = v34;
            if ((*(*v34 + 24) >> 6) - 31 <= 1)
            {
              v146 = 0u;
              v147 = 0u;
              v144 = 0u;
              v145 = 0u;
              v142 = 0u;
              v143 = 0u;
              v140 = 0u;
              v141 = 0u;
              v138 = 0u;
              v139 = 0u;
              memset(v106, 0, 40);
              v103 = v52;
              GetOpRegs(v37, v34, &v138, v106, 0);
              v128 = 0;
              v126 = 0u;
              v127 = 0u;
              GetOpRegs(a1, v103, &v148, &v126, 0);
              v41 = v104;
              v53 = DWORD1(v138) - DWORD1(v126);
              if (DWORD1(v138) == DWORD1(v126))
              {
                v53 = v138 - v126;
              }

              v13 = v53 == 0;
              v51 = v103;
              if (!v13)
              {
                v51 = v34;
              }

              v50 = v51[3];
            }
          }

          v43 = v49 | (v33 > 1);
          v54 = (v50 >> 6);
          if (v54 != 31)
          {
            if (v54 == 32)
            {
              v95 = 1;
            }

            else
            {
              v43 = 1;
            }
          }

          if (__PAIR64__(v41, v105) == v148.i64[0])
          {
            v12 = *(v150 + 8);
            v122[0] = *(v150 + 8);
            v122[1] = *(&v150[1] + 8);
            *&v122[2] = *(&v150[2] + 1);
            BYTE8(v122[2]) = *(v51 + 12) >> 9;
          }

          else
          {
            v102 = 1;
            if (__PAIR64__(v41, v105) != *(&v150[0] + 1))
            {
              v43 = 1;
              goto LABEL_62;
            }

            v12 = v148;
            v122[0] = v148;
            v122[1] = v149;
            *&v122[2] = *&v150[0];
            DWORD2(v122[2]) = DWORD2(v122[2]) & 0xFFFFFFFC | (*(v51 + 10) >> 9) & 3;
            DWORD2(v122[2]) = DWORD2(v122[2]) & 0xFFFFFFF3 | (4 * ((*(v51 + 10) >> 11) & 3));
            DWORD2(v122[2]) = DWORD2(v122[2]) & 0xFFFFFFCF | (16 * ((*(v51 + 10) >> 13) & 3));
            DWORD2(v122[2]) = DWORD2(v122[2]) & 0xFFFFFF3F | (((*(v51 + 10) >> 15) & 3) << 6);
            v43 |= v95;
          }

          v102 = 1;
        }
      }

      else
      {
        v43 = 0;
      }

LABEL_62:
      v44 = DWORD1(v120[0]) - v39;
      if (DWORD1(v120[0]) == v39)
      {
        v44 = LODWORD(v120[0]) - v40;
      }

      v45 = v44 == 0;
      v46 = v34[3];
      v30 = 1;
      v47 = (v46 >> 6) - 75;
      if (v47 <= 0x1F)
      {
        v30 = ((1 << v47) & 0x80000005) == 0;
      }

      v2 = v37;
      if (v31)
      {
        v31 = 1;
      }

      else
      {
        v48 = (v46 >> 6);
        if (v48 == 89)
        {
          v31 = 1;
          v99 = v34;
        }

        else if (v48 == 85)
        {
          v31 = 0;
          if (v10 != v34)
          {
            v30 = 0;
          }
        }

        else
        {
          v31 = 0;
        }
      }

      v29 = 0;
      v24 = v43 | v45;
      v1 = v34[1];
      if (v1)
      {
        if (!v24)
        {
          v32 = v34;
          if (v30)
          {
            continue;
          }
        }
      }

      goto LABEL_98;
    }

    v24 = 0;
    v30 = 1;
    v29 = v32;
LABEL_98:
    v26 = v95 != 0;
    v27 = v102 != 0;
    v28 = v31 != 0;
    v1 = v93;
    v25 = v99;
    v21 = v92;
LABEL_99:
    v55 = v98;
    if (HIDWORD(v121[0]) != 2)
    {
      v55 = 1;
    }

    if (HIDWORD(v120[0]) != 2)
    {
      v55 = 1;
    }

    if (HIDWORD(v122[0]) != 2)
    {
      v55 = 1;
    }

    if (v55)
    {
      v24 = 1;
    }

    if (!v97 || (v56 = BYTE8(v122[2]) & 3, v56 != ((DWORD2(v122[2]) >> 2) & 3)) || v56 != ((DWORD2(v122[2]) >> 4) & 3) || v56 != BYTE8(v122[2]) >> 6 || (v57 = BYTE8(v121[2]) & 3, v57 != ((DWORD2(v121[2]) >> 2) & 3)) || v57 != ((DWORD2(v121[2]) >> 4) & 3) || v57 != BYTE8(v121[2]) >> 6 || (v58 = BYTE8(v120[2]) & 3, v58 != ((DWORD2(v120[2]) >> 2) & 3)) || v58 != ((DWORD2(v120[2]) >> 4) & 3) || v58 != BYTE8(v120[2]) >> 6)
    {
      v24 = 1;
    }

    v59 = v26 ^ (SDWORD2(v122[1]) < 0);
    v60 = (v96 == 0) ^ v59;
    if (v24 | (DWORD1(v122[1]) == 0))
    {
      v60 = 0;
    }

    v61 = (v28 && v27) & v60;
    if (!v10)
    {
      v61 = 0;
    }

    if (!v25)
    {
      v61 = 0;
    }

    if ((v30 & v61) != 1)
    {
      v1 = *(v1 + 8);
      if (!v1)
      {
        break;
      }

      goto LABEL_3;
    }

    v100 = v25;
    memset(v119, 0, 44);
    DWORD1(v119[0]) = 1;
    HIDWORD(v119[0]) = 0;
    *(&v138 + 1) = 0;
    DWORD2(v138) = PPStreamChunkListGetNextIndex(v2[4]);
    *&v138 = 0;
    PPStreamAddTempUsage(v2, &v138);
    LODWORD(v119[0]) = DWORD2(v138);
    BYTE8(v119[2]) = -28;
    v117 = v119[0];
    v118[0] = v119[1];
    *(v118 + 12) = *(&v119[1] + 12);
    LODWORD(v117) = AddTempRegister(v2, SBYTE8(v119[0]), SBYTE12(v119[0]), v119[1]);
    v115 = v119[0];
    v116[0] = v119[1];
    *(v116 + 12) = *(&v119[1] + 12);
    LODWORD(v115) = AddTempRegister(v2, SBYTE8(v119[0]), SBYTE12(v119[0]), v119[1]);
    v113 = v119[0];
    v114[0] = v119[1];
    *(v114 + 12) = *(&v119[1] + 12);
    LODWORD(v113) = AddTempRegister(v2, SBYTE8(v119[0]), SBYTE12(v119[0]), v119[1]);
    v111 = v119[0];
    v112[0] = v119[1];
    *(v112 + 12) = *(&v119[1] + 12);
    LODWORD(v111) = AddTempRegister(v2, SBYTE8(v119[0]), SBYTE12(v119[0]), v119[1]);
    memset(v110, 0, 44);
    memset(v109, 0, 44);
    if ((v21 & 1) == 0)
    {
      v110[0] = v119[0];
      v110[1] = v119[1];
      *(&v110[1] + 12) = *(&v119[1] + 12);
      LODWORD(v110[0]) = AddTempRegister(v2, SBYTE8(v119[0]), SBYTE12(v119[0]), v119[1]);
      v109[0] = v119[0];
      v109[1] = v119[1];
      *(&v109[1] + 12) = *(&v119[1] + 12);
      LODWORD(v109[0]) = AddTempRegister(v2, SBYTE8(v119[0]), SBYTE12(v119[0]), v119[1]);
    }

    v62 = 0;
    *&v63 = 0x100000001;
    *(&v63 + 1) = 0x100000001;
    v133 = v63;
    v134 = 0x100000001;
    v135 = v94;
    v136 = v94;
    v137 = v94;
    v138 = v120;
    v139 = v121;
    v140 = v122;
    if (v59)
    {
      v64 = &v113;
    }

    else
    {
      v64 = &v115;
    }

    if (v59)
    {
      v65 = &v115;
    }

    else
    {
      v65 = &v113;
    }

    *&v141 = v64;
    *(&v141 + 1) = v65;
    *&v142 = &v117;
    *(&v142 + 1) = &v111;
    v143 = v119;
    *&v144 = v119;
    *(&v144 + 1) = &v111;
    *&v145 = v110;
    *(&v145 + 1) = &v117;
    *&v146 = v119;
    *(&v146 + 1) = v109;
    *&v126 = &v115;
    *(&v126 + 1) = &v113;
    *&v127 = &v111;
    *(&v127 + 1) = &v117;
    v128 = v119;
    v129 = v119;
    v130 = v110;
    v131 = v109;
    v66 = &v138;
    v132 = v119;
    while (2)
    {
      if (*(&v133 + v62))
      {
        v108 = 0;
        v107 = 0u;
        memset(&v106[8], 0, 48);
        HIDWORD(v107) = *(v1 + 92);
        LODWORD(v67) = dword_23A2A5F40[v62] & 7;
        v68 = v67 | (dword_23A2A5F1C[v62] << 6) | 0x100000000;
        v69 = *(&v126 + v62);
        *v106 = v68;
        v70 = ((v69[4] & 3) << 21) | 0x72000000;
        v71 = v69[4] & 3;
        if (v71 > 1)
        {
          if (v71 != 2)
          {
            v70 = ((v69[4] & 3) << 21) | 0x72008000;
          }

          v70 |= 0x10000uLL;
        }

        else if (!v71)
        {
LABEL_142:
          *&v106[8] = v70 | 0x40000;
          *&v106[8] = v70 & 0xFFFFFFFFFFFB8FFFLL | 0x40000 | ((v69[1] & 7) << 12);
          *&v106[8] |= *v69 << 48;
          v72 = (v70 >> 2) & 0x180000;
          if (v67 <= 1)
          {
            v67 = 1;
          }

          else
          {
            v67 = v67;
          }

          v73 = v66;
          v74 = &v106[16];
          do
          {
            v75 = *v74 & 0xFFFFFFFFFFE7FFFFLL | v72;
            *v74 = v75;
            v76 = *v73++;
            v77 = v75 & 0xFFFFFFFFFFFFF9FFLL | ((v76[10] & 3) << 9);
            *v74 = v77;
            v78 = v77 & 0xFFFFFFFFFFFFE7FFLL | (((v76[10] >> 2) & 3) << 11);
            *v74 = v78;
            v79 = v78 & 0xFFFFFFFFFFFF9FFFLL | (((v76[10] >> 4) & 3) << 13);
            *v74 = v79;
            v80 = v79 & 0xFFFFFFFFFFFE7FFFLL | (((v76[10] >> 6) & 3) << 15);
            *v74 = v80;
            v81 = v80 & 0xFFFFFFFFFFFFFE3FLL | ((v76[1] & 7) << 6);
            *v74 = v81;
            *v74++ = v81 & 0xFFFFFFFFFFEFLL | (*v76 << 48);
            --v67;
          }

          while (v67);
          v82 = vand_s8(*(v69 + 3), 0x300000007);
          v83.i64[0] = v82.u32[0];
          v83.i64[1] = v82.u32[1];
          v84 = vshlq_u64(v83, xmmword_23A2A5E80);
          *v106 = vorrq_s8(v84, vdupq_laneq_s64(v84, 1)).u64[0] | ((v69[2] & 7) << 19) | v68;
          PPStreamInsertOperationBeforeChunk(v2, v106, 0, v1);
          goto LABEL_148;
        }

        v70 |= 0x20000uLL;
        goto LABEL_142;
      }

LABEL_148:
      ++v62;
      v66 += 2;
      if (v62 != 9)
      {
        continue;
      }

      break;
    }

    v85 = v100[1];
    if (v10 != v85)
    {
      do
      {
        v86 = v10[1];
        PPStreamRemoveOperation(v2, v10);
        v10 = v86;
      }

      while (v86 != v85);
    }

    v87 = v119[1];
    v88 = *(v1 + 24);
    *(v1 + 40) = *(v1 + 40) & 0xFFFFFFE6002FLL | ((v119[1] & 3) << 19) | ((BYTE4(v119[0]) & 7) << 6) | (LODWORD(v119[0]) << 48) | 0x1C800;
    *(v1 + 24) = v88 & 0xFFFFFE0FFFC7C038 | ((BYTE8(v119[0]) & 7) << 19) | ((BYTE12(v119[0]) & 7) << 38) | ((v87 & 3) << 36) | 0x15C1;
    v89 = *(v1 + 8);
    if (v89)
    {
      *(v89 + 24) = *(v89 + 24) & 0xFFFFFFFFFFFFFFC7 | 8;
    }

    v29[3] = v29[3] & 0xFFFFFFFFFFFFC03FLL | 0x16C0;
    v1 = *(v1 + 8);
  }

  while (v1);
LABEL_158:
  v90 = *MEMORY[0x277D85DE8];
}

void GetOpRegs(uint64_t **a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64x2_t a5)
{
  v9 = *(a2 + 24);
  v10 = v9 & 7;
  if ((*(a2 + 24) & 7) == 0)
  {
    goto LABEL_7;
  }

  v11 = 0;
  v12 = v9 & 7;
  v13 = a3;
  do
  {
    if (v11 < (*(a2 + 24) & 7) + (*(a2 + 24) >> 15))
    {
      v14 = a2 + 40 + 8 * v11;
      v13[1] = (*v14 >> 6) & 7;
      *v13 = *(v14 + 6);
      *a5.i64 = GetRegisterTypeInfo(a1, v13, a5);
    }

    ++v11;
    v13 += 10;
  }

  while (v12 != v11);
  if (v10 <= 3)
  {
LABEL_7:
    v15 = vdupq_n_s64(v10 ^ 3uLL);
    v16 = vmovn_s64(vcgeq_u64(v15, xmmword_23A29C340));
    if (vuzp1_s16(v16, *v15.i8).u8[0])
    {
      a3[10 * v10 + 1] = 500;
    }

    if (vuzp1_s16(v16, *&v15).i8[2])
    {
      a3[10 * v10 + 11] = 500;
    }

    a5 = vcgeq_u64(v15, xmmword_23A29C350);
    *a5.i8 = vmovn_s64(a5);
    if (vuzp1_s16(*&a5, *&a5).i32[1])
    {
      a3[10 * v10 + 21] = 500;
    }

    *a5.i8 = vuzp1_s16(*a5.i8, *a5.i8);
    if (a5.i8[6])
    {
      a3[10 * v10 + 31] = 500;
    }
  }

  v17 = *(a2 + 32);
  if ((v17 & 0x78000) != 0)
  {
    a4[1] = (v17 >> 12) & 7;
    *a4 = *(a2 + 38);

    GetRegisterTypeInfo(a1, a4, a5);
  }

  else
  {
    a4[1] = 500;
  }
}

uint64_t IsBadUsage(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((*(a1 + 24) & 7) != 0)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      if (v2 < (v1 & 7) + (v1 >> 15))
      {
        v3 |= (*(a1 + 40 + 8 * v2) >> 17) & 3 | ((*(a1 + 40 + 8 * v2) & 0x180000) != 0) | ((*(a1 + 40 + 8 * v2) & 0x11) != 0);
      }

      ++v2;
    }

    while ((v1 & 7) != v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = (v4 >> 15) & 1;
  if ((v4 & 0x30000) != 0)
  {
    v5 = 1;
  }

  return (v4 >> 19) & 3 | v3 | ((v4 & 0x600000) != 0) | BYTE4(v4) & 1 | ((v1 & 0x80000000000) != 0) | v5;
}

void UnrollConstantLoopsSimple(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v4 = a2[5] != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*(a1 + 32) + 16) >> 5) + 1;
  v14[0] = 0;
  v14[1] = v5;
  v14[2] = regHashFunction;
  v14[3] = regEqualsFunction;
  v6 = HashSetNew(v5, regHashFunction, regEqualsFunction);
  EmulationContext_PushRegisters(v14, v6);
  v7 = **(a1 + 104);
  v13 = v7;
  while (v7)
  {
    v8 = v7[3] & 0x3FC0;
    if (v8 == 5568 && v4)
    {
      v12 = 0u;
      v11 = 0u;
      v9 = v7[5];
      v10[0] = HIWORD(v9);
      v10[1] = (v9 >> 6) & 7;
      GetRegisterTypeInfo(a1, v10, 0);
      if (!HIDWORD(v11))
      {
        goto LABEL_9;
      }
    }

    else if (v8 == 5568)
    {
LABEL_9:
      UnrollConstantLoopsInner(&v13, v14, a1, a2);
      v7 = v13;
      continue;
    }

    EmulateOp(a1, v7, v14);
    v7 = v7[1];
    v13 = v7;
  }

  while (v14[0])
  {
    EmulationContext_PopRegisters(v14);
  }
}

void UnrollConstantLoopsInner(uint64_t **a1, uint64_t *a2, uint64_t **a3, _DWORD *a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v72 = 0;
  v73 = v7;
  v8 = v7[3] >> 46;
  if (a4)
  {
    v9 = a4[5];
    if (!*a4)
    {
      if (a4[1])
      {
        v28 = v7[1];
        *&v74 = v28;
        if (v28)
        {
          v29 = a2;
          do
          {
            if (*(v28 + 88) == v8)
            {
              break;
            }

            if ((*(v28 + 24) & 0x3FC0) == 0x15C0)
            {
              EmulationContext_PushRegistersCopy(v29);
              v30 = v29;
              if (v7 != v28)
              {
                v31 = v7;
                do
                {
                  EmulateOp(a3, v31, v30);
                  v31 = v31[1];
                }

                while (v31 != v28);
              }

              v29 = v30;
              if (!v9 || (v80 = 0u, v79 = 0u, v32 = v7[5], HIDWORD(v78) = (v32 >> 6) & 7, LODWORD(v78) = HIWORD(v32), GetRegisterTypeInfo(a3, &v78, 0), !HIDWORD(v79)))
              {
                UnrollConstantLoopsInner(&v74, v30, a3, a4);
                v28 = v74;
              }

              EmulationContext_PopRegisters(v30);
            }

            v28 = *(v28 + 8);
            *&v74 = v28;
          }

          while (v28);
          if (!v7)
          {
            v10 = a3;
            v15 = 0;
            v16 = 0;
            v14 = 1;
            goto LABEL_22;
          }
        }
      }
    }

    v10 = a3;
  }

  else
  {
    v10 = a3;
    v9 = 0;
  }

  v11 = 0;
  v12 = 1;
  v13 = v7;
  v14 = 1;
  while (1)
  {
    v15 = v11;
    v11 = v13;
    v16 = v12;
    if (v15)
    {
      if (*(v13 + 22) == v8 && (*(v15 + 24) & 0x3FC0) == 0x16C0)
      {
        break;
      }
    }

    v17 = v13[3];
    v18 = (v17 >> 6) - 75;
    v19 = 1 << ((v17 >> 6) - 75);
    if (v8 <= v17 >> 46)
    {
      v20 = 0;
    }

    else
    {
      v20 = v14;
    }

    if ((v19 & 6) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = v14;
    }

    if ((v19 & 0x80000201) == 0)
    {
      v20 = v21;
    }

    if (v18 <= 0x1F)
    {
      v14 = v20;
    }

    v13 = *(v11 + 8);
    v12 = v16 + 1;
    if (!v13)
    {
      v15 = 0;
      goto LABEL_22;
    }
  }

  v72 = v15;
LABEL_22:
  v71 = 0u;
  v70 = 0u;
  v22 = v7[5];
  v69[0] = HIWORD(v22);
  v69[1] = (v22 >> 6) & 7;
  v23 = HashSetGet(*(*a2 + 8), v69);
  if (!v23)
  {
    goto LABEL_52;
  }

  if (!*(v23 + 20) || *(v23 + 16) || *(v23 + 12))
  {
    v24 = -1;
    v25 = 1;
    if (!a4)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v24 = *(v23 + 24);
    v25 = v14 == 0;
    if (!a4)
    {
      goto LABEL_28;
    }
  }

  if (!*a4)
  {
    if (v24 > a4[2] || v16 > a4[3])
    {
      goto LABEL_52;
    }

    v25 |= v24 * v16 > a4[4];
  }

LABEL_28:
  if ((v25 & 1) == 0)
  {
    v26 = *v7;
    if (!v9 || v24 < 1 || !RepifyConstantLoopSimple(v10, v7, v15, v24))
    {
      UnrollConstantLoopSimple(v10, v7, v15, v24);
    }

    if (v26)
    {
      v27 = (v26 + 8);
    }

    else
    {
      v27 = *(v10 + 104);
    }

    v54 = *v27;
    goto LABEL_74;
  }

LABEL_52:
  v68 = 0u;
  v67 = 0u;
  v33 = v7[5];
  v66[0] = HIWORD(v33);
  v66[1] = (v33 >> 6) & 7;
  GetRegisterTypeInfo(v10, v66, 0);
  v62[1] = 2;
  v63 = 0;
  v64 = 0;
  v65 = xmmword_23A2A5EA0;
  v61 = 0;
  v62[0] = AddConstantParam(v10, v67, DWORD1(v67), 0, 1065353216, 0, xmmword_23A2A5EA0, v34, v35);
  v60 = 0;
  v59 = 0;
  v58 = xmmword_23A2A5EB0;
  *&v79 = 0;
  LODWORD(v79) = PPStreamChunkListGetNextIndex(*(v10 + 32));
  v78 = 8;
  PPStreamAddTempUsage(v10, &v78);
  v36 = 0;
  v57 = v79;
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v87[0] = &v73;
  v87[1] = &v88;
  v87[2] = &v88 + 8;
  v87[3] = &v89;
  v87[4] = 0;
  memset(v85, 0, sizeof(v85));
  v86 = &v72;
  v78 = v66;
  *&v79 = v62;
  v80 = 0u;
  v81 = 0u;
  *(&v79 + 1) = &v57;
  v82 = 0;
  v83 = v66;
  v37 = &v78;
  v84 = v62;
  v77[0] = &v57;
  memset(&v77[1], 0, 24);
  v77[4] = v66;
  do
  {
    v76 = 0u;
    memset(v75, 0, sizeof(v75));
    v74 = 0u;
    v38 = v87[v36];
    v39 = v38;
    if (!v38)
    {
      v39 = *(v85 + v36);
    }

    DWORD1(v76) = *(*v39 + 92);
    LODWORD(v39) = dword_23A2A5F78[v36];
    *&v74 = v39 & 7 | (dword_23A2A5F64[v36] << 6) | ((dword_23A2A5F8C[v36] & 1) << 32) | 0x8000000000;
    v40 = v77[v36];
    if (v40)
    {
      *(&v74 + 1) = 1912864768;
      *(&v74 + 1) = ((v40[1] & 7) << 12) | 0x72040000;
      *(&v74 + 1) |= *v40 << 48;
    }

    if ((v36 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (v39 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v39;
      }

      v41 = v37;
      v42 = v75;
      do
      {
        v43 = *v42 & 0xFFFFFFFFFFE601FFLL | 0x1C800;
        v44 = *v41++;
        *v42 = v43;
        v45 = v43 & 0xFFFFFFFFFFFFF83FLL | ((v44[1] & 7) << 6);
        *v42 = v45;
        *v42++ = v45 & 0xFFFFFFFFFFFFLL | (*v44 << 48);
        --v39;
      }

      while (v39);
    }

    if (v38)
    {
      inserted = PPStreamInsertOperationAfterChunk(v10, &v74, 0, *v38);
    }

    else
    {
      inserted = PPStreamInsertOperationBeforeChunk(v10, &v74, 0, **(v85 + v36));
    }

    *(&v88 + v36++) = inserted;
    v37 += 2;
  }

  while (v36 != 5);
  v47 = 0;
  v48 = *(*(*(&v89 + 1) + 8) + 88);
  LODWORD(v74) = 0;
  DWORD1(v74) = v48;
  v49 = v73;
  v50 = v73[3] >> 46;
  LODWORD(v75[0]) = 0;
  *(&v74 + 1) = v50;
  do
  {
    *(*(&v88 + v47) + 24) = *(*(&v88 + v47) + 24) & 0x3FFFFFFFFFFFLL | (*(&v75[-1] + v47) << 46);
    ++v47;
  }

  while (v47 != 5);
  v49[3] = v49[3] & 0xFFFFFFFFFFFFC038 | 0x1AC0;
  v51 = v49[1];
  if (v51)
  {
    *(v51 + 24) &= 0xFFFFFFFFFFFFFFC7;
  }

  v52 = v72;
  v53 = *(v72 + 24) & 0xFFFFFFFFFFFFC03FLL | 0x1B00;
  *(v72 + 24) = v53;
  *(v52 + 24) = v53 & 0x3FFFFFFFFFFFLL | (*(v49[1] + 88) << 46);
  EmulateOp(v10, v7, a2);
  v54 = v7[1];
LABEL_74:
  *a1 = v54;
  v55 = *MEMORY[0x277D85DE8];
}

void EmulateOp(uint64_t **a1, void *a2, uint64_t *a3)
{
  v210 = *MEMORY[0x277D85DE8];
  v5 = *(*a3 + 8);
  v6 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL);
  if (!v6)
  {
    goto LABEL_514;
  }

  v7 = v6;
  v8 = a2[3] & 7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (v9 < (a2[3] & 7) + (*(a2 + 6) >> 15))
      {
        v11 = malloc_type_realloc(v7, 8 * (v10 + 1), 0x352A3853uLL);
        if (!v11)
        {
          goto LABEL_514;
        }

        v7 = v11;
        memset(&v209[8], 0, 32);
        v12 = a2[v9 + 5];
        *v209 = HIWORD(v12);
        *&v209[4] = (v12 >> 6) & 7;
        v13 = HashSetGet(v5, v209);
        v7[v10] = v13;
        if (!v13)
        {
          GetRegisterTypeInfo(a1, v209, v14);
          v15 = malloc_type_malloc(0x28uLL, 0xCA0EF1E7uLL);
          if (!v15)
          {
            goto LABEL_514;
          }

          v7[v10] = v15;
          v16 = *v209;
          v17 = *&v209[16];
          v15[4] = *&v209[32];
          *v15 = v16;
          *(v15 + 1) = v17;
          HashSetAdd(v5, v7[v10]);
        }

        ++v10;
      }

      ++v9;
    }

    while (v8 != v9);
  }

  else
  {
    v10 = 0;
  }

  v18 = a2[4];
  if ((v18 & 0x78000) == 0)
  {
    v19 = 0;
    goto LABEL_18;
  }

  memset(&v209[8], 0, 32);
  *v209 = HIWORD(v18);
  *&v209[4] = (v18 >> 12) & 7;
  v19 = HashSetGet(v5, v209);
  if (!v19)
  {
    GetRegisterTypeInfo(a1, v209, v20);
    v21 = malloc_type_malloc(0x28uLL, 0xCA0EF1E7uLL);
    if (v21)
    {
      v19 = v21;
      v22 = *v209;
      v23 = *&v209[16];
      v21[4] = *&v209[32];
      *v21 = v22;
      *(v21 + 1) = v23;
      HashSetAdd(v5, v21);
      goto LABEL_18;
    }

LABEL_514:
    abort();
  }

LABEL_18:
  memset(v209, 0, 24);
  if (!v10)
  {
    goto LABEL_22;
  }

  v24 = *v7 + 24;
  if (!*(*v7 + 20))
  {
    v24 = 0;
  }

  *v209 = v24;
  if (v10 != 1)
  {
    v25 = 0;
    v41 = v7[1];
    v42 = *(v41 + 20);
    v43 = v41 + 24;
    if (!v42)
    {
      v43 = 0;
    }

    *&v209[8] = v43;
    if (v10 >= 3)
    {
      v44 = v7[2];
      v45 = *(v44 + 20);
      v25 = v44 + 24;
      if (!v45)
      {
        v25 = 0;
      }
    }
  }

  else
  {
LABEL_22:
    v25 = 0;
    *&v209[8] = 0;
  }

  *&v209[16] = v25;
  v208[0] = 0;
  v208[1] = 0;
  v207[0] = 0;
  v207[1] = 0;
  v206[0] = 0;
  v206[1] = 0;
  v26 = v208;
  v27 = v207;
  v203 = v208;
  v204 = v207;
  v28 = v206;
  v205 = v206;
  if (v10)
  {
    v29 = 0;
    if (v10 >= 3)
    {
      v30 = 3;
    }

    else
    {
      v30 = v10;
    }

    v31 = a2 + 5;
    v32 = 8 * v30;
    do
    {
      v33 = *&v209[v29];
      if (v33)
      {
        v34 = (&v203)[v29 / 8];
        *v34 = *(v33 + 4 * ((v31[v29 / 8] >> 9) & 3));
        v34[1] = *(v33 + 4 * ((v31[v29 / 8] >> 11) & 3));
        v34[2] = *(v33 + 4 * ((v31[v29 / 8] >> 13) & 3));
        v34[3] = *(v33 + 4 * ((v31[v29 / 8] >> 15) & 3));
      }

      else
      {
        (&v203)[v29 / 8] = 0;
      }

      v29 += 8;
    }

    while (v32 != v29);
    v26 = v203;
    v27 = v204;
    v28 = v205;
  }

  if (IsBadUsage(a2))
  {
    LODWORD(v36) = 1;
    goto LABEL_35;
  }

  v37 = (v19 + 24);
  if (v10 == 1 && v19 && v26)
  {
    v38 = a2[3];
    v39 = (v38 >> 6);
    LODWORD(v36) = 1;
    if (v39 <= 0x6C)
    {
      switch((v38 >> 6))
      {
        case 0u:
          goto LABEL_345;
        case 1u:
          *(v19 + 24) = 1065353216;
          v40 = 0.0;
          *(v19 + 28) = fmaxf(*v26, 0.0);
          if (*v26 > 0.0)
          {
            v40 = powf(v26[1], v26[3]);
          }

          goto LABEL_89;
        case 2u:
          *(v19 + 24) = fabsf(*v26);
          *(v19 + 28) = fabsf(v26[1]);
          *(v19 + 32) = fabsf(v26[2]);
          v50 = fabsf(v26[3]);
          goto LABEL_359;
        case 3u:
          *(v19 + 24) = ceilf(*v26);
          *(v19 + 28) = ceilf(v26[1]);
          *(v19 + 32) = ceilf(v26[2]);
          v50 = ceilf(v26[3]);
          goto LABEL_359;
        case 4u:
          *(v19 + 24) = *v26 - floorf(*v26);
          *(v19 + 28) = v26[1] - floorf(v26[1]);
          *(v19 + 32) = v26[2] - floorf(v26[2]);
          v50 = v26[3] - floorf(v26[3]);
          goto LABEL_359;
        case 5u:
          *(v19 + 24) = floorf(*v26);
          *(v19 + 28) = floorf(v26[1]);
          *(v19 + 32) = floorf(v26[2]);
          v50 = floorf(v26[3]);
          goto LABEL_359;
        case 7u:
          v50 = 0.0;
          if (*v26 >= 0.0)
          {
            v67 = 0.0;
          }

          else
          {
            v67 = -1.0;
          }

          if (*v26 > 0.0)
          {
            v67 = 1.0;
          }

          *(v19 + 24) = v67;
          v68 = v26[1];
          v69 = v68 <= 0.0;
          if (v68 >= 0.0)
          {
            v70 = 0.0;
          }

          else
          {
            v70 = -1.0;
          }

          if (!v69)
          {
            v70 = 1.0;
          }

          *(v19 + 28) = v70;
          v71 = v26[2];
          v72 = v71 <= 0.0;
          if (v71 >= 0.0)
          {
            v73 = 0.0;
          }

          else
          {
            v73 = -1.0;
          }

          if (!v72)
          {
            v73 = 1.0;
          }

          *(v19 + 32) = v73;
          v74 = v26[3];
          if (v74 < 0.0)
          {
            v50 = -1.0;
          }

          if (v74 > 0.0)
          {
            v50 = 1.0;
          }

          goto LABEL_359;
        case 8u:
          v50 = 1.0;
          if (*v26 == 0.0 && v26[1] == 0.0 && v26[2] == 0.0)
          {
            goto LABEL_134;
          }

          goto LABEL_357;
        case 9u:
          v50 = 0.0;
          if (*v26 != 0.0 && v26[1] != 0.0 && v26[2] != 0.0)
          {
LABEL_134:
            v50 = 0.0;
            if (v26[3] != 0.0)
            {
              v50 = 1.0;
            }
          }

          goto LABEL_357;
        case 0xAu:
          v50 = 0.0;
          if (*v26 == 0.0)
          {
            v76 = 1.0;
          }

          else
          {
            v76 = 0.0;
          }

          *(v19 + 24) = v76;
          if (v26[1] == 0.0)
          {
            v77 = 1.0;
          }

          else
          {
            v77 = 0.0;
          }

          *(v19 + 28) = v77;
          if (v26[2] == 0.0)
          {
            v78 = 1.0;
          }

          else
          {
            v78 = 0.0;
          }

          *(v19 + 32) = v78;
          if (v26[3] == 0.0)
          {
            v50 = 1.0;
          }

          goto LABEL_359;
        case 0xCu:
          v50 = sqrtf(*v26);
          *v37 = v50;
          if ((v38 & 0x3000000000) == 0)
          {
            break;
          }

          *(v19 + 28) = sqrtf(v26[1]);
          *(v19 + 32) = sqrtf(v26[2]);
          v50 = sqrtf(v26[3]);
          goto LABEL_359;
        case 0xDu:
          v51 = 1.0;
          v50 = 1.0 / sqrtf(fabsf(*v26));
          *v37 = v50;
          if ((v38 & 0x3000000000) == 0)
          {
            break;
          }

          *(v19 + 28) = 1.0 / sqrtf(fabsf(v26[1]));
          *(v19 + 32) = 1.0 / sqrtf(fabsf(v26[2]));
          v52 = fabsf(v26[3]);
          goto LABEL_83;
        case 0xEu:
          v51 = 1.0;
          v50 = 1.0 / *v26;
          *v37 = v50;
          if ((v38 & 0x3000000000) == 0)
          {
            break;
          }

          *(v19 + 28) = 1.0 / v26[1];
          *(v19 + 32) = 1.0 / v26[2];
          v64 = v26[3];
          goto LABEL_140;
        case 0xFu:
          v62 = v26[3];
          *&v63 = 5.421e-20;
          if (v62 > 1.8447e19)
          {
            goto LABEL_80;
          }

          if (v62 >= 5.421e-20)
          {
            goto LABEL_346;
          }

          if (v62 >= 0.0)
          {
            *&v63 = 1.8447e19;
            goto LABEL_80;
          }

          *&v63 = -1.8447e19;
          if (v62 > -5.421e-20)
          {
            goto LABEL_80;
          }

          if (v62 < -1.8447e19)
          {
            *&v63 = -5.421e-20;
LABEL_80:
            v50 = *&v63;
            goto LABEL_357;
          }

LABEL_346:
          v50 = 1.0 / v62;
LABEL_357:
          *(v19 + 24) = v50;
          break;
        case 0x10u:
          v75 = *a1;
          if ((v75 - 35632) < 2 || (v75 - 36487) < 2 || v75 == 36313)
          {
            *(v19 + 24) = exp2f(*v26);
            *(v19 + 28) = exp2f(v26[1]);
            *(v19 + 32) = exp2f(v26[2]);
            v50 = exp2f(v26[3]);
            goto LABEL_359;
          }

          v50 = exp2f(v26[3]);
          goto LABEL_357;
        case 0x11u:
          v66 = floorf(v26[3]);
          *(v19 + 24) = exp2f(v66);
          *(v19 + 28) = v26[3] - v66;
          v40 = exp2f(v26[3]);
LABEL_89:
          *(v19 + 32) = v40;
          goto LABEL_157;
        case 0x12u:
          v86 = ((v38 >> 36) & 3) + 1;
          v87 = 0.0;
          v88 = v26;
          do
          {
            v89 = *v88++;
            v87 = v87 + (v89 * v89);
            --v86;
          }

          while (v86);
          v50 = sqrtf(v87);
          goto LABEL_357;
        case 0x13u:
          v94 = *a1;
          if ((v94 - 35632) < 2 || (v94 - 36487) < 2 || v94 == 36313)
          {
            v95 = *v26;
            if (*v26 < 0.0)
            {
              v95 = 0.0;
            }

            *(v19 + 24) = log2f(v95);
            v96 = v26[1];
            if (v96 < 0.0)
            {
              v96 = 0.0;
            }

            *(v19 + 28) = log2f(v96);
            v97 = v26[2];
            if (v97 < 0.0)
            {
              v97 = 0.0;
            }

            *(v19 + 32) = log2f(v97);
            v98 = v26[3];
            if (v98 < 0.0)
            {
              v98 = 0.0;
            }

            v50 = log2f(v98);
            goto LABEL_359;
          }

          v149 = v26[3];
          if (v149 < 0.0)
          {
            v149 = 0.0;
          }

          v50 = log2f(v149);
          goto LABEL_357;
        case 0x14u:
          v90 = fabsf(v26[3]);
          v91 = log2f(v90);
          v92 = floorf(v91);
          *(v19 + 24) = v92;
          *(v19 + 28) = v90 / exp2f(v92);
          *(v19 + 32) = v91;
LABEL_157:
          v50 = 1.0;
          goto LABEL_359;
        case 0x15u:
          v79 = ((v38 >> 36) & 3) + 1;
          v80 = 0.0;
          v81 = v26;
          do
          {
            v82 = *v81++;
            v80 = v80 + (v82 * v82);
            --v79;
          }

          while (v79);
          v83 = 0;
          v84 = sqrtf(v80);
          do
          {
            LODWORD(v36) = 0;
            v37[v83] = v26[v83] / v84;
          }

          while (v83++ < ((a2[3] >> 36) & 3uLL));
          goto LABEL_360;
        case 0x16u:
          v59 = *v26;
          v60 = 0.017453;
          goto LABEL_172;
        case 0x17u:
          v59 = *v26;
          v60 = 57.296;
LABEL_172:
          *(v19 + 24) = v59 * v60;
          *(v19 + 28) = v26[1] * v60;
          *(v19 + 32) = v26[2] * v60;
          v50 = v26[3] * v60;
          goto LABEL_359;
        case 0x18u:
          *(v19 + 24) = cosf(*v26);
          *(v19 + 28) = sinf(*v26);
          *(v19 + 32) = 0;
          v50 = 0.0;
          goto LABEL_359;
        case 0x19u:
          v65 = *a1;
          if ((v65 - 35632) < 2 || (v65 - 36487) < 2 || v65 == 36313)
          {
            *(v19 + 24) = sinf(*v26);
            *(v19 + 28) = sinf(v26[1]);
            *(v19 + 32) = sinf(v26[2]);
            v50 = sinf(v26[3]);
            goto LABEL_359;
          }

          v50 = sinf(v26[3]);
          goto LABEL_357;
        case 0x1Au:
          v61 = *a1;
          if ((v61 - 35632) < 2 || (v61 - 36487) < 2 || v61 == 36313)
          {
            *(v19 + 24) = cosf(*v26);
            *(v19 + 28) = cosf(v26[1]);
            *(v19 + 32) = cosf(v26[2]);
            v50 = cosf(v26[3]);
            goto LABEL_359;
          }

          v50 = cosf(v26[3]);
          goto LABEL_357;
        case 0x1Bu:
          *(v19 + 24) = tanf(*v26);
          *(v19 + 28) = tanf(v26[1]);
          *(v19 + 32) = tanf(v26[2]);
          v50 = tanf(v26[3]);
          goto LABEL_359;
        case 0x1Cu:
          *(v19 + 24) = asinf(*v26);
          *(v19 + 28) = asinf(v26[1]);
          *(v19 + 32) = asinf(v26[2]);
          v50 = asinf(v26[3]);
          goto LABEL_359;
        case 0x1Du:
          *(v19 + 24) = acosf(*v26);
          *(v19 + 28) = acosf(v26[1]);
          *(v19 + 32) = acosf(v26[2]);
          v50 = acosf(v26[3]);
          goto LABEL_359;
        case 0x1Eu:
          *(v19 + 24) = atanf(*v26);
          *(v19 + 28) = atanf(v26[1]);
          *(v19 + 32) = atanf(v26[2]);
          v50 = atanf(v26[3]);
          goto LABEL_359;
        case 0x48u:
          v93 = *v26;
          *(v19 + 24) = *v26;
          *(v19 + 28) = v93;
          v50 = *v26;
          *(v19 + 32) = *v26;
          goto LABEL_359;
        default:
          goto LABEL_360;
      }

LABEL_358:
      *(v19 + 28) = v50;
      *(v19 + 32) = v50;
      goto LABEL_359;
    }

    if ((v38 >> 6) > 0x70u)
    {
      if (v39 == 113)
      {
        *(v19 + 24) = logf(*v26);
        *(v19 + 28) = logf(v26[1]);
        *(v19 + 32) = logf(v26[2]);
        v50 = logf(v26[3]);
        goto LABEL_359;
      }

      if (v39 == 134)
      {
        v51 = 1.0;
        v50 = 1.0 / sqrtf(*v26);
        *v37 = v50;
        if ((v38 & 0x3000000000) != 0)
        {
          *(v19 + 28) = 1.0 / sqrtf(v26[1]);
          *(v19 + 32) = 1.0 / sqrtf(v26[2]);
          v52 = v26[3];
LABEL_83:
          v64 = sqrtf(v52);
LABEL_140:
          v50 = v51 / v64;
          goto LABEL_359;
        }

        goto LABEL_358;
      }
    }

    else
    {
      if (v39 == 109)
      {
        v99 = *(v19 + 12);
        if (v99 == 1)
        {
          if ((*(*v7 + 12) | 2) == 2)
          {
            v50 = 0.0;
            if (*v26 == 0.0)
            {
              v146 = 0.0;
            }

            else
            {
              v146 = 1.0;
            }

            *(v19 + 24) = v146;
            if (v26[1] == 0.0)
            {
              v147 = 0.0;
            }

            else
            {
              v147 = 1.0;
            }

            *(v19 + 28) = v147;
            if (v26[2] == 0.0)
            {
              v148 = 0.0;
            }

            else
            {
              v148 = 1.0;
            }

            *(v19 + 32) = v148;
            if (v26[3] != 0.0)
            {
              v50 = 1.0;
            }

            goto LABEL_359;
          }
        }

        else if (v99 == 2 && !*(*v7 + 12))
        {
          *(v19 + 24) = truncf(*v26);
          *(v19 + 28) = truncf(v26[1]);
          *(v19 + 32) = truncf(v26[2]);
          v50 = truncf(v26[3]);
          goto LABEL_359;
        }

LABEL_345:
        *(v19 + 24) = *v26;
        *(v19 + 28) = v26[1];
        *(v19 + 32) = v26[2];
        v50 = v26[3];
        goto LABEL_359;
      }

      if (v39 == 112)
      {
        *(v19 + 24) = expf(*v26);
        *(v19 + 28) = expf(v26[1]);
        *(v19 + 32) = expf(v26[2]);
        v50 = expf(v26[3]);
LABEL_359:
        LODWORD(v36) = 0;
        *(v19 + 36) = v50;
      }
    }

LABEL_360:
    v46 = v27 != 0;
    goto LABEL_361;
  }

  v46 = v27 != 0;
  LODWORD(v36) = 1;
  if (v10 == 2 && v19 && v26 && v27)
  {
    v47 = a2[3];
    v48 = (v47 >> 6);
    v46 = 1;
    switch((v47 >> 6))
    {
      case 0x1Eu:
        *(v19 + 24) = atan2f(*v26, *v27);
        *(v19 + 28) = atan2f(v26[1], v27[1]);
        *(v19 + 32) = atan2f(v26[2], v27[2]);
        v100 = atan2f(v26[3], v27[3]);
        goto LABEL_311;
      case 0x1Fu:
        LODWORD(v36) = 0;
        *(v19 + 24) = *v26 + *v27;
        *(v19 + 28) = v26[1] + v27[1];
        *(v19 + 32) = v26[2] + v27[2];
        v49 = v26[3] + v27[3];
        goto LABEL_513;
      case 0x20u:
        LODWORD(v36) = 0;
        *(v19 + 24) = *v26 - *v27;
        *(v19 + 28) = v26[1] - v27[1];
        *(v19 + 32) = v26[2] - v27[2];
        v49 = v26[3] - v27[3];
        goto LABEL_513;
      case 0x21u:
        goto LABEL_361;
      case 0x22u:
      case 0x23u:
        LODWORD(v36) = 0;
        *(v19 + 24) = *v26 * *v27;
        *(v19 + 28) = v26[1] * v27[1];
        *(v19 + 32) = v26[2] * v27[2];
        v49 = v26[3] * v27[3];
        goto LABEL_513;
      case 0x24u:
        v124 = 0.0;
        v125 = 0.0;
        if (*v26 != 0.0)
        {
          v125 = 0.0;
          if (*v27 != 0.0)
          {
            v125 = 1.0;
          }
        }

        *v37 = v125;
        if (v26[1] != 0.0)
        {
          v124 = 0.0;
          if (v27[1] != 0.0)
          {
            v124 = 1.0;
          }
        }

        *(v19 + 28) = v124;
        v49 = 0.0;
        v126 = 0.0;
        if (v26[2] != 0.0)
        {
          v126 = 0.0;
          if (v27[2] != 0.0)
          {
            v126 = 1.0;
          }
        }

        *(v19 + 32) = v126;
        if (v26[3] != 0.0)
        {
          goto LABEL_246;
        }

        goto LABEL_512;
      case 0x25u:
        v121 = 1.0;
        v122 = 1.0;
        if (*v26 == 0.0)
        {
          v122 = 0.0;
          if (*v27 != 0.0)
          {
            v122 = 1.0;
          }
        }

        *v37 = v122;
        if (v26[1] == 0.0)
        {
          v121 = 0.0;
          if (v27[1] != 0.0)
          {
            v121 = 1.0;
          }
        }

        *(v19 + 28) = v121;
        v49 = 1.0;
        v123 = 1.0;
        if (v26[2] == 0.0)
        {
          v123 = 0.0;
          if (v27[2] != 0.0)
          {
            v123 = 1.0;
          }
        }

        *(v19 + 32) = v123;
        if (v26[3] == 0.0)
        {
LABEL_246:
          v49 = 0.0;
          if (v27[3] != 0.0)
          {
            v49 = 1.0;
          }
        }

        goto LABEL_512;
      case 0x26u:
        v110 = *v27;
        if (*v26 == 0.0)
        {
          if (v110 == 0.0)
          {
            v112 = 0.0;
          }

          else
          {
            v112 = 1.0;
          }
        }

        else
        {
          _ZF = v110 == 0.0;
          v112 = 0.0;
          if (_ZF)
          {
            v112 = 1.0;
          }
        }

        *v37 = v112;
        v197 = v27[1];
        if (v26[1] == 0.0)
        {
          if (v197 == 0.0)
          {
            v198 = 0.0;
          }

          else
          {
            v198 = 1.0;
          }
        }

        else
        {
          _ZF = v197 == 0.0;
          v198 = 0.0;
          if (_ZF)
          {
            v198 = 1.0;
          }
        }

        *(v19 + 28) = v198;
        v199 = v27[2];
        if (v26[2] == 0.0)
        {
          if (v199 == 0.0)
          {
            v200 = 0.0;
          }

          else
          {
            v200 = 1.0;
          }
        }

        else
        {
          _ZF = v199 == 0.0;
          v200 = 0.0;
          if (_ZF)
          {
            v200 = 1.0;
          }
        }

        *(v19 + 32) = v200;
        v201 = v27[3];
        if (v26[3] == 0.0)
        {
          if (v201 == 0.0)
          {
            v49 = 0.0;
          }

          else
          {
            v49 = 1.0;
          }
        }

        else
        {
          _ZF = v201 == 0.0;
          v49 = 0.0;
          if (_ZF)
          {
            v49 = 1.0;
          }
        }

LABEL_512:
        LODWORD(v36) = 0;
        goto LABEL_513;
      case 0x27u:
        v36 = ((v47 >> 36) & 3) + 1;
        v53 = 0;
        v116 = v26;
        v117 = v27;
        do
        {
          v118 = *v116++;
          v119 = v118;
          v120 = *v117++;
          *v53.i32 = *v53.i32 + (v119 * v120);
          --v36;
        }

        while (v36);
        goto LABEL_224;
      case 0x28u:
        LODWORD(v36) = 0;
        *v35.i32 = ((v26[1] * v27[1]) + (*v26 * *v27)) + (v26[2] * v27[2]);
        goto LABEL_280;
      case 0x29u:
        LODWORD(v36) = 0;
        *v35.i32 = (((v26[1] * v27[1]) + (*v26 * *v27)) + (v26[2] * v27[2])) + (v26[3] * v27[3]);
        goto LABEL_280;
      case 0x2Au:
        LODWORD(v36) = 0;
        *v35.i32 = (((v26[1] * v27[1]) + (*v26 * *v27)) + (v26[2] * v27[2])) + v27[3];
LABEL_280:
        _Q0 = vdupq_lane_s32(v35, 0);
        goto LABEL_294;
      case 0x2Bu:
        LODWORD(v36) = 0;
        *(v19 + 24) = 1065353216;
        *(v19 + 28) = v26[1] * v27[1];
        *(v19 + 32) = v26[2];
        v100 = v27[3];
        goto LABEL_312;
      case 0x2Cu:
        LODWORD(v36) = 0;
        v101 = *v26;
        if (*v26 >= *v27)
        {
          v101 = *v27;
        }

        *(v19 + 24) = v101;
        v102 = v26[1];
        if (v102 >= v27[1])
        {
          v102 = v27[1];
        }

        *(v19 + 28) = v102;
        v103 = v26[2];
        if (v103 >= v27[2])
        {
          v103 = v27[2];
        }

        *(v19 + 32) = v103;
        v49 = v26[3];
        if (v49 >= v27[3])
        {
          v49 = v27[3];
        }

        goto LABEL_513;
      case 0x2Du:
        LODWORD(v36) = 0;
        v134 = *v26;
        if (*v26 <= *v27)
        {
          v134 = *v27;
        }

        *(v19 + 24) = v134;
        v135 = v26[1];
        if (v135 <= v27[1])
        {
          v135 = v27[1];
        }

        *(v19 + 28) = v135;
        v136 = v26[2];
        if (v136 <= v27[2])
        {
          v136 = v27[2];
        }

        *(v19 + 32) = v136;
        v49 = v26[3];
        if (v49 <= v27[3])
        {
          v49 = v27[3];
        }

        goto LABEL_513;
      case 0x2Eu:
        LODWORD(v36) = 0;
        *(v19 + 24) = (v26[1] * v27[2]) - (v27[1] * v26[2]);
        *(v19 + 28) = (v26[2] * *v27) - (v27[2] * *v26);
        *(v19 + 32) = (*v26 * v27[1]) - (*v27 * v26[1]);
        *(v19 + 36) = 0;
        goto LABEL_362;
      case 0x2Fu:
        v107 = 0;
        v108 = 0.0;
        do
        {
          v108 = v108 + (v26[v107 / 4] * v27[v107 / 4]);
          v107 += 4;
        }

        while (4 * ((v47 >> 36) & 3) + 4 != v107);
        LODWORD(v36) = 0;
        v109 = v108 * -2.0;
        *(v19 + 24) = *v26 + (v109 * *v27);
        *(v19 + 28) = v26[1] + (v109 * v27[1]);
        *(v19 + 32) = v26[2] + (v109 * v27[2]);
        v100 = v26[3] + (v109 * v27[3]);
        goto LABEL_312;
      case 0x30u:
        LODWORD(v36) = 0;
        __asm { FMOV            V0.4S, #1.0 }

LABEL_294:
        *v37 = _Q0;
        goto LABEL_362;
      case 0x31u:
        LODWORD(v36) = 0;
        v49 = 0.0;
        if (*v26 == *v27)
        {
          v104 = 1.0;
        }

        else
        {
          v104 = 0.0;
        }

        *(v19 + 24) = v104;
        if (v26[1] == v27[1])
        {
          v105 = 1.0;
        }

        else
        {
          v105 = 0.0;
        }

        *(v19 + 28) = v105;
        if (v26[2] == v27[2])
        {
          v106 = 1.0;
        }

        else
        {
          v106 = 0.0;
        }

        *(v19 + 32) = v106;
        if (v26[3] == v27[3])
        {
          v49 = 1.0;
        }

        goto LABEL_513;
      case 0x32u:
        LODWORD(v36) = 0;
        v49 = 0.0;
        if (*v26 < *v27)
        {
          v113 = 0.0;
        }

        else
        {
          v113 = 1.0;
        }

        *(v19 + 24) = v113;
        if (v26[1] < v27[1])
        {
          v114 = 0.0;
        }

        else
        {
          v114 = 1.0;
        }

        *(v19 + 28) = v114;
        if (v26[2] < v27[2])
        {
          v115 = 0.0;
        }

        else
        {
          v115 = 1.0;
        }

        *(v19 + 32) = v115;
        if (v26[3] >= v27[3])
        {
          v49 = 1.0;
        }

        goto LABEL_513;
      case 0x33u:
        LODWORD(v36) = 0;
        v49 = 0.0;
        if (*v26 <= *v27)
        {
          v143 = 0.0;
        }

        else
        {
          v143 = 1.0;
        }

        *(v19 + 24) = v143;
        if (v26[1] <= v27[1])
        {
          v144 = 0.0;
        }

        else
        {
          v144 = 1.0;
        }

        *(v19 + 28) = v144;
        if (v26[2] <= v27[2])
        {
          v145 = 0.0;
        }

        else
        {
          v145 = 1.0;
        }

        *(v19 + 32) = v145;
        if (v26[3] > v27[3])
        {
          v49 = 1.0;
        }

        goto LABEL_513;
      case 0x34u:
        LODWORD(v36) = 0;
        v49 = 0.0;
        if (*v26 > *v27)
        {
          v130 = 0.0;
        }

        else
        {
          v130 = 1.0;
        }

        *(v19 + 24) = v130;
        if (v26[1] > v27[1])
        {
          v131 = 0.0;
        }

        else
        {
          v131 = 1.0;
        }

        *(v19 + 28) = v131;
        if (v26[2] > v27[2])
        {
          v132 = 0.0;
        }

        else
        {
          v132 = 1.0;
        }

        *(v19 + 32) = v132;
        if (v26[3] <= v27[3])
        {
          v49 = 1.0;
        }

        goto LABEL_513;
      case 0x35u:
        LODWORD(v36) = 0;
        v49 = 0.0;
        if (*v26 >= *v27)
        {
          v139 = 0.0;
        }

        else
        {
          v139 = 1.0;
        }

        *(v19 + 24) = v139;
        if (v26[1] >= v27[1])
        {
          v140 = 0.0;
        }

        else
        {
          v140 = 1.0;
        }

        *(v19 + 28) = v140;
        if (v26[2] >= v27[2])
        {
          v141 = 0.0;
        }

        else
        {
          v141 = 1.0;
        }

        *(v19 + 32) = v141;
        if (v26[3] < v27[3])
        {
          v49 = 1.0;
        }

        goto LABEL_513;
      case 0x36u:
        LODWORD(v36) = 0;
        v49 = 0.0;
        if (*v26 == *v27)
        {
          v127 = 0.0;
        }

        else
        {
          v127 = 1.0;
        }

        *(v19 + 24) = v127;
        if (v26[1] == v27[1])
        {
          v128 = 0.0;
        }

        else
        {
          v128 = 1.0;
        }

        *(v19 + 28) = v128;
        if (v26[2] == v27[2])
        {
          v129 = 0.0;
        }

        else
        {
          v129 = 1.0;
        }

        *(v19 + 32) = v129;
        if (v26[3] != v27[3])
        {
          v49 = 1.0;
        }

        goto LABEL_513;
      case 0x37u:
        LODWORD(v36) = 0;
        *v37 = 0;
        *(v19 + 32) = 0;
        goto LABEL_362;
      case 0x38u:
        v142 = *a1;
        if ((v142 - 35632) >= 2 && (v142 - 36487) >= 2 && v142 != 36313)
        {
          *v53.i32 = powf(v26[3], v27[3]);
          LODWORD(v36) = 0;
          goto LABEL_224;
        }

        *(v19 + 24) = powf(*v26, *v27);
        *(v19 + 28) = powf(v26[1], v27[1]);
        *(v19 + 32) = powf(v26[2], v27[2]);
        v100 = powf(v26[3], v27[3]);
LABEL_311:
        LODWORD(v36) = 0;
LABEL_312:
        *(v19 + 36) = v100;
        goto LABEL_313;
      case 0x39u:
        LODWORD(v36) = 0;
        *(v19 + 24) = v26[*v27];
        *(v19 + 28) = v26[*v27];
        *(v19 + 32) = v26[*v27];
        v100 = v26[*v27];
        goto LABEL_312;
      case 0x3Au:
        LODWORD(v36) = *(v19 + 12);
        if (v36 == 2)
        {
          LODWORD(v36) = 0;
          *(v19 + 24) = truncf(*v26 / *v27);
          *(v19 + 28) = truncf(v26[1] / v27[1]);
          *(v19 + 32) = truncf(v26[2] / v27[2]);
          v49 = truncf(v26[3] / v27[3]);
        }

        else
        {
          if (v36)
          {
            LODWORD(v36) = 0;
            goto LABEL_362;
          }

          *(v19 + 24) = *v26 / *v27;
          *(v19 + 28) = v26[1] / v27[1];
          *(v19 + 32) = v26[2] / v27[2];
          v49 = v26[3] / v27[3];
        }

LABEL_513:
        *(v19 + 36) = v49;
        goto LABEL_362;
      default:
        if (v48 == 110)
        {
          LODWORD(v36) = 0;
          v37[*v27] = v26[*v27];
        }

        else
        {
          if (v48 != 133)
          {
            goto LABEL_361;
          }

          v36 = ((v47 >> 36) & 3) + 1;
          v53 = 0;
          v54 = v26;
          v55 = v27;
          do
          {
            v56 = *v54++;
            v57 = v56;
            v58 = *v55++;
            *v53.i32 = *v53.i32 + ((v57 - v58) * (v57 - v58));
            --v36;
          }

          while (v36);
          *v53.i32 = sqrtf(*v53.i32);
LABEL_224:
          *v37 = vdupq_lane_s32(v53, 0);
        }

LABEL_313:
        v46 = 1;
        break;
    }

    goto LABEL_362;
  }

LABEL_361:
  if (!v19)
  {
    goto LABEL_35;
  }

LABEL_362:
  if (v36 && v10 == 3 && v26 && v46 && v28)
  {
    v150 = a2[3];
    v151 = (v150 >> 6);
    LODWORD(v36) = 1;
    if (v151 <= 0x3D)
    {
      if (v151 == 59)
      {
        v163 = ((v150 >> 36) & 3) + 1;
        v164 = 0.0;
        do
        {
          v165 = *v28;
          v28 = (v28 + 4);
          v166 = v165;
          v167 = *v27++;
          v164 = v164 + (v166 * v167);
          --v163;
        }

        while (v163);
        v168 = *v26;
        if (v164 >= 0.0)
        {
          *(v19 + 24) = -v168;
          *(v19 + 28) = -v26[1];
          *(v19 + 32) = -v26[2];
          v158 = -v26[3];
        }

        else
        {
          *(v19 + 24) = v168;
          *(v19 + 28) = v26[1];
          *(v19 + 32) = v26[2];
          v158 = v26[3];
        }

        goto LABEL_457;
      }

      if (v151 != 60)
      {
        if (v151 != 61)
        {
          goto LABEL_35;
        }

        v155 = *v26;
        if (*v26 <= *v27)
        {
          v155 = *v27;
        }

        if (v155 >= *v28)
        {
          v155 = *v28;
        }

        *(v19 + 24) = v155;
        v156 = v26[1];
        if (v156 <= v27[1])
        {
          v156 = v27[1];
        }

        if (v156 >= *(v28 + 1))
        {
          v156 = *(v28 + 1);
        }

        *(v19 + 28) = v156;
        v157 = v26[2];
        if (v157 <= v27[2])
        {
          v157 = v27[2];
        }

        if (v157 >= *(v28 + 2))
        {
          v157 = *(v28 + 2);
        }

        *(v19 + 32) = v157;
        v158 = v26[3];
        if (v158 <= v27[3])
        {
          v158 = v27[3];
        }

        if (v158 >= *(v28 + 3))
        {
          v158 = *(v28 + 3);
        }

        goto LABEL_457;
      }

      *(v19 + 24) = ((1.0 - *v26) * *v28) + (*v26 * *v27);
      *(v19 + 28) = ((1.0 - v26[1]) * *(v28 + 1)) + (v26[1] * v27[1]);
      *(v19 + 32) = ((1.0 - v26[2]) * *(v28 + 2)) + (v26[2] * v27[2]);
      v152 = v26[3];
      v153 = v27[3];
      v154 = (1.0 - v152) * *(v28 + 3);
    }

    else
    {
      if ((v150 >> 6) > 0x3Fu)
      {
        if (v151 == 64)
        {
          v173 = (*v28 - *v26) / (*v27 - *v26);
          v174 = v173 <= 0.0;
          v175 = 1.0;
          v176 = v173 < 1.0 || v173 <= 0.0;
          if (v173 >= 1.0)
          {
            v174 = 1;
          }

          if (v176)
          {
            v177 = 0.0;
          }

          else
          {
            v177 = 1.0;
          }

          if (v174)
          {
            v173 = v177;
          }

          *(v19 + 24) = (v173 * v173) * ((v173 * -2.0) + 3.0);
          v178 = (*(v28 + 1) - v26[1]) / (v27[1] - v26[1]);
          v179 = v178 <= 0.0;
          v180 = v178 < 1.0 || v178 <= 0.0;
          if (v178 >= 1.0)
          {
            v179 = 1;
          }

          if (v180)
          {
            v181 = 0.0;
          }

          else
          {
            v181 = 1.0;
          }

          if (v179)
          {
            v178 = v181;
          }

          *(v19 + 28) = (v178 * v178) * ((v178 * -2.0) + 3.0);
          v182 = (*(v28 + 2) - v26[2]) / (v27[2] - v26[2]);
          v183 = v182 <= 0.0;
          v184 = v182 < 1.0 || v182 <= 0.0;
          if (v182 >= 1.0)
          {
            v183 = 1;
          }

          if (v184)
          {
            v185 = 0.0;
          }

          else
          {
            v185 = 1.0;
          }

          if (v183)
          {
            v182 = v185;
          }

          *(v19 + 32) = (v182 * v182) * ((v182 * -2.0) + 3.0);
          v186 = (*(v28 + 3) - v26[3]) / (v27[3] - v26[3]);
          v187 = v186 <= 0.0;
          v188 = v186 < 1.0 || v186 <= 0.0;
          if (v186 >= 1.0)
          {
            v187 = 1;
          }

          if (v188)
          {
            v175 = 0.0;
          }

          if (!v187)
          {
            v175 = (*(v28 + 3) - v26[3]) / (v27[3] - v26[3]);
          }

          v158 = (v175 * v175) * ((v175 * -2.0) + 3.0);
        }

        else
        {
          if (v151 != 105)
          {
            goto LABEL_35;
          }

          v159 = 0;
          v160 = 0.0;
          do
          {
            v160 = v160 + (v26[v159 / 4] * v27[v159 / 4]);
            v159 += 4;
          }

          while (4 * ((v150 >> 36) & 3) + 4 != v159);
          v161 = *v28;
          v162 = (-(v161 * v161) * (1.0 - (v160 * v160))) + 1.0;
          if (v162 < 0.0)
          {
            *v37 = 0;
            *(v19 + 32) = 0;
LABEL_458:
            *(v19 + 20) = 1;
            goto LABEL_459;
          }

          v196 = sqrtf(v162) + (v161 * v160);
          *(v19 + 24) = (v161 * *v26) - (v196 * *v27);
          *(v19 + 28) = (*v28 * v26[1]) - (v196 * v27[1]);
          *(v19 + 32) = (*v28 * v26[2]) - (v196 * v27[2]);
          v158 = (*v28 * v26[3]) - (v196 * v27[3]);
        }

LABEL_457:
        *(v19 + 36) = v158;
        goto LABEL_458;
      }

      if (v151 == 62)
      {
        if (*v26 >= 0.0)
        {
          v169 = v28;
        }

        else
        {
          v169 = v27;
        }

        *(v19 + 24) = *v169;
        if (v26[1] >= 0.0)
        {
          v170 = v28;
        }

        else
        {
          v170 = v27;
        }

        *(v19 + 28) = v170[1];
        if (v26[2] >= 0.0)
        {
          v171 = v28;
        }

        else
        {
          v171 = v27;
        }

        *(v19 + 32) = v171[2];
        if (v26[3] >= 0.0)
        {
          v172 = v28;
        }

        else
        {
          v172 = v27;
        }

        v158 = v172[3];
        goto LABEL_457;
      }

      if (v151 != 63)
      {
        goto LABEL_35;
      }

      *(v19 + 24) = *v28 + (*v26 * *v27);
      *(v19 + 28) = *(v28 + 1) + (v26[1] * v27[1]);
      *(v19 + 32) = *(v28 + 2) + (v26[2] * v27[2]);
      v152 = v26[3];
      v153 = v27[3];
      v154 = *(v28 + 3);
    }

    v158 = v154 + (v152 * v153);
    goto LABEL_457;
  }

LABEL_35:
  if (v19 && v36)
  {
    ClearDestedOpRegisters(a1, v5, a2, 0);
    goto LABEL_459;
  }

  if (v19)
  {
    goto LABEL_458;
  }

LABEL_459:
  v189 = a2[3];
  v190 = (v189 >> 6);
  if (v190 > 0x57)
  {
    v191 = v190 - 90;
    if (v191 > 0x35)
    {
LABEL_483:
      if (v190 == 88 || v190 == 89)
      {
        EmulationContext_PopRegisters(a3);
      }

      goto LABEL_470;
    }

    if (((1 << (v190 - 90)) & 0x3C600007010000) == 0)
    {
      if (((1 << (v190 - 90)) & 0x40003) != 0)
      {
        for (i = *PPStreamChunkListChunkAtIndex(a1[13], v189 >> 46); i != a2; i = *(i + 8))
        {
          ClearDestedOpRegisters(a1, v5, i, 1);
        }

        goto LABEL_470;
      }

      if (v191 == 17)
      {
        goto LABEL_480;
      }

      goto LABEL_483;
    }

LABEL_469:
    ClearRegisterState(v5);
    goto LABEL_470;
  }

  if ((v189 >> 6) <= 0x54u)
  {
    if (v190 - 75 >= 3 && v190 != 84)
    {
      goto LABEL_470;
    }

    goto LABEL_469;
  }

  if (v190 - 86 < 2)
  {
LABEL_480:
    for (j = *PPStreamChunkListChunkAtIndex(a1[13], v189 >> 46); a2 != j; a2 = a2[1])
    {
      ClearDestedOpRegisters(a1, v5, a2, 1);
    }

    goto LABEL_470;
  }

  if (v190 == 85)
  {
    EmulationContext_PushRegistersCopy(a3);
    v194 = *PPStreamChunkListChunkAtIndex(a1[13], a2[3] >> 46);
    if (v194 && (v194[3] & 0x3FC0) == 0x1600)
    {
      v194 = *PPStreamChunkListChunkAtIndex(a1[13], v194[3] >> 46);
      EmulationContext_PushRegistersCopy(a3);
    }

    for (; a2 != v194; a2 = a2[1])
    {
      ClearDestedOpRegisters(a1, v5, a2, 1);
    }
  }

LABEL_470:
  free(v7);
  v193 = *MEMORY[0x277D85DE8];
}

void UnrollConstantLoopSimple(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v7 = a3;
  if (a4 >= 1)
  {
    v8 = a4;
    v9 = HashTableNew((*(*(a1 + 104) + 16) >> 5) + 1, instructionIndexHashFunction, instructionIndexEqualsFunction);
    v7 = a3;
    do
    {
      v10 = a2[1];
      v11 = v10 == 0;
      v12 = 0;
      while (!v11 && v10 != a3)
      {
        inserted = PPStreamInsertOperationAfterChunk(a1, v10 + 24, 0, v7);
        v7 = inserted;
        if (!v12)
        {
          v12 = inserted;
        }

        HashTableAdd(v9, (*(v10 + 88) + 1), (*(inserted + 22) + 1));
        v10 = *(v10 + 8);
        v11 = v10 == 0;
      }

      v30 = 0;
      v29 = 0u;
      v28 = 0u;
      v27 = 0u;
      v26 = 0u;
      v25 = 7104;
      v7 = PPStreamInsertOperationAfterChunk(a1, &v25, 0, v7);
      HashTableAdd(v9, (*(a3 + 88) + 1), (*(v7 + 22) + 1));
      if (v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v7;
      }

      if (v15 && v15 != v7)
      {
        do
        {
          v16 = HashTableGet(v9, (*(v15 + 3) >> 46) + 1);
          if (v16)
          {
            *(v15 + 3) = (*(v15 + 3) & 0x3FFFFFFFFFFFLL | (v16 << 46)) - 0x400000000000;
          }

          v15 = *(v15 + 1);
          if (v15)
          {
            v17 = v15 == v7;
          }

          else
          {
            v17 = 1;
          }
        }

        while (!v17);
      }

      v18 = __OFSUB__(v8--, 1);
    }

    while (!((v8 < 0) ^ v18 | (v8 == 0)));
    HashTableFree(v9);
  }

  v19 = *(a3 + 8);
  v20 = *(v7 + 1);
  if (v19 != v20)
  {
    do
    {
      v21 = v19[1];
      v22 = (*(v19 + 6) >> 6);
      if (v22 == 115 || v22 == 111)
      {
        PPStreamRemoveOperation(a1, v19);
      }

      v19 = v21;
    }

    while (v21 != v20);
  }

  if ((v20[3] & 0x3FC0) == 0x1D00)
  {
    PPStreamRemoveOperation(a1, v20);
  }

  v23 = *(a3 + 8);
  if (v23 != a2)
  {
    do
    {
      v24 = a2[1];
      PPStreamRemoveOperation(a1, a2);
      a2 = v24;
    }

    while (v24 != v23);
  }
}

uint64_t RepifyConstantLoopSimple(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (*(*(a1 + 32) + 16) >> 5) + 1;
  v24[0] = 0;
  v24[1] = v8;
  v24[2] = regHashFunction;
  v24[3] = regEqualsFunction;
  v9 = HashSetNew(v8, regHashFunction, regEqualsFunction);
  EmulationContext_PushRegisters(v24, v9);
  v13 = 0;
  v14 = *(a2 + 8);
  v15 = 1;
  if (v14 && v14 != a3)
  {
    v16 = v24[0][1];
    while (1)
    {
      v17 = (*(v14 + 24) >> 6);
      if (v17 == 87 || v17 == 72)
      {
        v23 = 0u;
        v22 = 0u;
        v18 = *(v14 + 40);
        v21[0] = HIWORD(v18);
        v21[1] = (v18 >> 6) & 7;
        v19 = HashSetGet(v16, v21);
        if (!v19 || !*(v19 + 20))
        {
          break;
        }
      }

      EmulateOp(a1, v14, v24);
      v13 = 0;
      v14 = *(v14 + 8);
      v15 = 1;
      if (!v14 || v14 == a3)
      {
        goto LABEL_13;
      }
    }

    v15 = 0;
    v13 = 1;
  }

LABEL_13:
  while (v24[0])
  {
    EmulationContext_PopRegisters(v24);
  }

  if ((v13 & 1) == 0)
  {
    *v10.i32 = a4;
    *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFFFE3FLL | 0x80;
    *(a2 + 46) = AddConstantParam(a1, 0, 0, 0, COERCE_UNSIGNED_INT(a4), 0, v10, v11, v12);
  }

  return v15;
}

uint64_t AddConstantParam(uint64_t a1, int a2, unsigned __int32 a3, int a4, uint64_t a5, uint64_t a6, int32x4_t a7, double a8, int32x4_t a9)
{
  a7.i32[0] = 0;
  v13.i64[0] = a5;
  v13.i64[1] = a6;
  a9.i32[0] = a3;
  v24 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a9, a7), 0), v13, vcvtq_s32_f32(v13));
  if (a4 <= 2)
  {
    bzero(v24.i64 + 4 * a4 + 4, 4 * (2 - a4) + 4);
  }

  v14 = *(a1 + 56);
  v15 = *v14;
  if (*v14)
  {
    while (1)
    {
      v16 = *(v15 + 24);
      v17 = (v16 & 0x1F00) == 0x600 && ((v16 >> 3) & 7) == a3;
      v18 = v17 && (v16 & 7) == a2;
      if (v18 && v16 >> 6 == a4)
      {
        v20 = PPStreamChunkListChunkAtIndex(*(a1 + 128), WORD2(v16));
        if (v24.i64[0] == *(v20 + 24) && v24.i64[1] == *(v20 + 32))
        {
          return *(v15 + 32);
        }
      }

      v15 = *(v15 + 8);
      if (!v15)
      {
        v14 = *(a1 + 56);
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    *(&v23 + 1) = PPStreamChunkListGetNextIndex(v14);
    *&v23 = a2 & 7 | (8 * (a3 & 7)) & 0x3F | ((a4 & 3) << 6) | 0x600 | (*(*(a1 + 128) + 16) << 32);
    PPStreamAddConstant(a1, &v24);
    PPStreamAddParamBinding(a1, &v23);
    return DWORD2(v23);
  }
}

void ConstantPropagateFold(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16) >> 5) + 1;
  v26[0] = 0;
  v26[1] = v2;
  v26[2] = regHashFunction;
  v26[3] = regEqualsFunction;
  v3 = HashSetNew(v2, regHashFunction, regEqualsFunction);
  EmulationContext_PushRegisters(v26, v3);
  for (i = **(a1 + 104); i; i = *(i + 8))
  {
    v5 = v26[0][1];
    v6 = *(i + 24) & 7;
    if (v6)
    {
      v7 = 0;
      v8 = i + 40;
      do
      {
        if (v7 < (*(i + 24) & 7) + (*(i + 24) >> 15))
        {
          v9 = *(v8 + 8 * v7);
          if (v9)
          {
            memset(v25 + 8, 0, 32);
            *&v25[0] = 0x400000000;
            v10 = HashSetGet(v5, v25);
            if (v10)
            {
              if (*(v10 + 20))
              {
                v11 = *(v8 + 8 * v7);
                v12 = *(v10 + 24);
                v13 = HIWORD(v11) + (v11 >> 24);
                v14 = (v13 + v12);
                if (GetRegChunk(a1, (v11 >> 6) & 7, v13 + v12))
                {
                  *(v8 + 8 * v7) = *(v8 + 8 * v7) & 0xFFFF00FFFFFELL | (v14 << 48);
                }
              }
            }

            v9 = *(v8 + 8 * v7);
          }

          if ((v9 & 0x1E0611) == 0)
          {
            memset(v25, 0, 40);
            v15 = v8 + 8 * v7;
            DWORD1(v25[0]) = (*v15 >> 6) & 7;
            LODWORD(v25[0]) = *(v15 + 6);
            v16 = HashSetGet(v5, v25);
            if (v16)
            {
              if (*(v16 + 20))
              {
                *v15 = *v15 & 0xFFFFFFFFFFFFFE3FLL | 0x80;
                *(v15 + 6) = AddConstantParam(a1, *(v16 + 8), *(v16 + 12), *(v16 + 16), *(v16 + 24), *(v16 + 32), v17, v18, v19);
              }
            }
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }

    if (*(i + 36))
    {
      memset(v25 + 8, 0, 32);
      *&v25[0] = 0x400000000;
      v20 = HashSetGet(v5, v25);
      if (v20)
      {
        if (*(v20 + 20))
        {
          v21 = *(i + 32);
          v22 = *(v20 + 24);
          v23 = HIWORD(v21) + ((v21 >> 12) >> 24);
          v24 = (v23 + v22);
          if (GetRegChunk(a1, (v21 >> 12) & 7, v23 + v22))
          {
            *(i + 32) = *(i + 32) & 0xF00EFFFFFFFFLL | (v24 << 48);
          }
        }
      }
    }

    EmulateOp(a1, i, v26);
  }

  while (v26[0])
  {
    EmulationContext_PopRegisters(v26);
  }
}

uint64_t GetRegChunk(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 <= 5 && ((0x2Fu >> a2) & 1) != 0)
  {
    return PPStreamChunkListChunkAtIndex(*(a1 + qword_23A2A6000[a2]), a3);
  }

  else
  {
    return 0;
  }
}

uint64_t DecomposeMatrixOps(uint64_t result, int a2)
{
  v130 = a2;
  v153 = *MEMORY[0x277D85DE8];
  v2 = **(result + 104);
  if (v2)
  {
    v3 = result;
    v132 = &v149;
    v136 = &v144;
    v135 = xmmword_23A2A5EC0;
    v131 = xmmword_23A2A5ED0;
    v129 = 0xFFFFFFE6003ELL;
    do
    {
      v4 = *(v2 + 5);
      v148 = *(v2 + 3);
      v149 = v4;
      v5 = *(v2 + 9);
      v150 = *(v2 + 7);
      v151 = v5;
      v152 = *(v2 + 11);
      v6 = v148;
      *&v148 = v148 & 0xFFFFFFFFFFFFBFFFLL;
      v7 = (v6 >> 6);
      if (v7 > 0x39)
      {
        if ((v6 >> 6) > 0x74u)
        {
          if (v7 == 117)
          {
            if ((BYTE10(v148) & 0x18) == 0)
            {
              goto LABEL_140;
            }

            v138.i64[0] = &v129;
            v31 = (v149 >> 19) & 3;
            v137 = v149 >> 17;
            v32 = v149;
            MEMORY[0x28223BE20](result);
            inserted = v2;
            v34 = (&v129 - v33);
            bzero(&v129 - v33, v35);
            v36 = 0;
            v37 = ((v32 >> 17) & 3) + 1;
            v134 = inserted;
            do
            {
              v38 = 0;
              v39 = 0;
              v34[v36] = AddTempRegister(v3, (v148 >> 19) & 7, (v148 >> 38) & 7, (DWORD2(v148) >> 21) & 3);
              do
              {
                v143 = v148;
                v144 = v149;
                v40 = *(&v148 + 1) & 0xFFFF80600FFFLL | (v34[v36] << 48);
                v145 = v150;
                v146 = v151;
                v147 = v152;
                *&v143 = v148 & 0xFFFFFFC3FFFFC03FLL;
                *(&v143 + 1) = v40 | 0x1000;
                if (v39 <= 3)
                {
                  *(&v143 + 1) = v40 | 0x1000 | qword_23A2A6050[v39];
                }

                if (v144)
                {
                  v41 = v144 & 0xFFFFFFFF00E1FFFFLL | (v38 + v144) & 0xFF000000;
                }

                else
                {
                  v41 = v144 & 0xFFFFFFE1FFFELL | ((v39 + WORD3(v144)) << 48);
                }

                if (v36 > 1)
                {
                  v42 = (v41 >> 13) & 3;
                  v43 = (v41 >> 15) & 3;
                  if (v36 != 3)
                  {
                    v43 = 0;
                  }

                  if (v36 != 2)
                  {
                    v42 = v43;
                  }
                }

                else if (v36)
                {
                  v42 = (v41 >> 11) & 3;
                  if (v36 != 1)
                  {
                    v42 = 0;
                  }
                }

                else
                {
                  v42 = (v41 >> 9) & 3;
                }

                *&v144 = v41 & 0xFFFFFFFFFFFE01FFLL | (v42 << 15) | (v42 << 13) | (v42 << 11) | (v42 << 9);
                inserted = PPStreamInsertOperationAfterChunk(v3, &v143, 0, inserted);
                ++v39;
                v38 += 0x1000000;
              }

              while (v37 != v39);
              v44 = v36++ == v31;
            }

            while (!v44);
            v45 = 0;
            v46 = ((v137 & 3) << 19) | 0x40;
            v47 = (v31 << 48) + 0x1000000000000;
            do
            {
              v143 = v148;
              v144 = v149;
              v48 = *v34++;
              *&v144 = v149 & 0xFFFFFFE0003ELL | v46 | (v48 << 48) | 0x1C800;
              v145 = v150;
              v146 = v151;
              v147 = v152;
              *&v143 = v148 & 0xFFFFFFF3FFFFC038 | 1;
              *(&v143 + 1) = (v45 + *(&v148 + 1)) & 0xFFFF000000000000 | *(&v148 + 1) & 0xFFFFFFE7FFFFLL;
              inserted = PPStreamInsertOperationAfterChunk(v3, &v143, 0, inserted);
              v45 += 0x1000000000000;
            }

            while (v47 != v45);
            goto LABEL_72;
          }

          if (v7 != 118)
          {
            if (v7 != 122)
            {
              goto LABEL_140;
            }

            v24 = DWORD2(v148);
            if ((*(&v148 + 1) & 0x180000) == 0)
            {
              inserted = v2;
              goto LABEL_141;
            }

            *(&v143 + 1) = 0;
            inserted = v2;
            DWORD2(v143) = PPStreamChunkListGetNextIndex(*(v3 + 32));
            *&v143 = 16;
            PPStreamAddTempUsage(v3, &v143);
            v26 = 0;
            v27 = (v24 >> 19) & 3;
            v28 = DWORD2(v143) << 48;
            v29 = v27 + 1;
            v134 = v2;
            do
            {
              *v25.i32 = v26;
              *&v144 = v149;
              v145 = v150;
              v146 = v151;
              v147 = v152;
              *&v143 = v148 & 0xFFFFFE03FFFFC03FLL | 0x80000007C0;
              *(&v143 + 1) = v28 | *(&v148 + 1) & 0xFFFFFF878FFFLL | 0x1000;
              *(&v144 + 1) = v149 & 0xFFFFFFFFFFFFFE3FLL | 0x80;
              HIWORD(v144) = AddConstantParam(v3, 0, 2u, 0, COERCE_UNSIGNED_INT(v26), 0, v25, *&v152, v151);
              v30 = PPStreamInsertOperationAfterChunk(v3, &v143, 0, inserted);
              *(&v144 + 1) = *(&v149 + 1);
              v145 = v150;
              v146 = v151;
              v147 = v152;
              *&v143 = v148 & 0xFFFFFFF3FFFFFFFFLL;
              *(&v143 + 1) = *(&v148 + 1) & 0xFFFFFFE7FFFFLL | ((v26 + HIWORD(*(&v148 + 1))) << 48);
              *&v144 = v28 | v149 & 0xFFFFFFF9FE3FLL | 0x40;
              inserted = PPStreamInsertOperationAfterChunk(v3, &v143, 0, v30);
              ++v26;
            }

            while (v29 != v26);
            goto LABEL_72;
          }
        }

        else
        {
          if (v7 == 58)
          {
            goto LABEL_25;
          }

          if (v7 != 78)
          {
            if (v7 != 109)
            {
              goto LABEL_140;
            }

LABEL_13:
            v8 = (DWORD2(v148) >> 19) & 3;
            if (!v8)
            {
              goto LABEL_140;
            }

            v9 = 0;
            v10 = 0;
            v11 = v8 + 1;
            v134 = v2;
            inserted = v2;
            do
            {
              v144 = v149;
              v145 = v150;
              v146 = v151;
              v147 = v152;
              *&v143 = v148 & 0xFFFFFFF3FFFFFFFFLL;
              *(&v143 + 1) = *(&v148 + 1) & 0xFFFFFFE7FFFFLL | ((v10 + HIWORD(*(&v148 + 1))) << 48);
              if (v149)
              {
                v13 = v149 & 0xFFFFFFFF00F9FFFFLL | (v9 + v149) & 0xFF000000;
              }

              else
              {
                v13 = v149 & 0xFFFFFFF9FFFELL | ((v10 + WORD3(v149)) << 48);
              }

              *&v144 = v13;
              inserted = PPStreamInsertOperationAfterChunk(v3, &v143, 0, inserted);
              ++v10;
              v9 += 0x1000000;
            }

            while (v11 != v10);
            goto LABEL_72;
          }

          if (v130)
          {
            goto LABEL_140;
          }
        }
      }

      else
      {
        if ((v6 >> 6) > 0x22u)
        {
          if (v7 != 35)
          {
            if (v7 != 49 && v7 != 54)
            {
LABEL_140:
              inserted = v2;
              goto LABEL_141;
            }

            v14 = v149 & 0x60000;
            if ((BYTE10(v149) & 6) != 0)
            {
              v134 = v2;
              v15 = v14 == 0;
            }

            else
            {
              if (!v14)
              {
                goto LABEL_140;
              }

              v134 = v2;
              v15 = 0;
            }

            v80 = (*(v132 + v15) >> 17) & 3;
            v81 = (v6 >> 19) & 7;
            v82 = (v6 >> 38) & 7;
            v83 = (v6 >> 36) & 3;
            v84 = AddTempRegister(v3, (v6 >> 19) & 7, (v6 >> 38) & 7, (v6 >> 36) & 3);
            v85 = AddTempRegister(v3, v81, v82, v83);
            v86 = 0;
            v87 = v84;
            v88.i64[0] = v84;
            v88.i64[1] = v85;
            v89 = vshlq_n_s64(v88, 0x30uLL);
            v138 = vorrq_s8(v89, v131);
            v90 = v89.i64[0];
            inserted = v134;
            do
            {
              v143 = v148;
              v144 = v149;
              v145 = v150;
              v146 = v151;
              v147 = v152;
              if (v86)
              {
                v91 = v85;
              }

              else
              {
                v91 = v87;
              }

              *&v143 = v148 & 0xFFFFFFF3FFFFFFFFLL;
              *(&v143 + 1) = *(&v143 + 1) & 0xFFFE80180FFFLL | (v91 << 48) | 0x72041000;
              v92 = v148 & 7;
              if ((v148 & 7) != 0)
              {
                v93 = v136;
                do
                {
                  v94 = *v93;
                  if ((*v93 & 0x60000) != 0)
                  {
                    if (v94)
                    {
                      v95 = v94 & 0xFFFFFFFF00F9FFFFLL | ((v86 << 24) + v94) & 0xFF000000;
                    }

                    else
                    {
                      v95 = v94 & 0xFFFFFFF9FFFELL | ((v86 + HIWORD(v94)) << 48);
                    }

                    *v93 = v95;
                  }

                  ++v93;
                  --v92;
                }

                while (v92);
              }

              inserted = PPStreamInsertOperationAfterChunk(v3, &v143, 0, inserted);
              if (v86)
              {
                v139[0] = v148;
                v139[1] = v149;
                v140 = v150;
                v141 = v151;
                v142 = v152;
                v96 = 2368;
                if ((v148 & 0x3FC0) == 0xC40)
                {
                  v96 = 2304;
                }

                *&v139[0] = v96 | v148 & 0xFFFFFFFFFFFFC03FLL;
                *(&v139[1] + 1) = v90 | 0x1C840 | *(&v139[1] + 1) & 0xFFFFFFE0002ELL;
                *(v139 + 8) = vorrq_s8(v138, vandq_s8(*(v139 + 8), v135));
                inserted = PPStreamInsertOperationAfterChunk(v3, v139, 0, inserted);
              }

              if (v86 == v80)
              {
                *(&v139[0] + 1) = *(&v148 + 1);
                *(&v139[1] + 1) = *(&v149 + 1);
                v140 = v150;
                v141 = v151;
                v142 = v152;
                *&v139[0] = v148 & 0xFFFFFFFFFFFFC038 | 1;
                *&v139[1] = v149 & 0xFFFFFFE0002ELL | v90 | 0x1C840;
                inserted = PPStreamInsertOperationAfterChunk(v3, v139, 0, inserted);
              }

              v44 = v86++ == v80;
            }

            while (!v44);
            goto LABEL_72;
          }

LABEL_25:
          v16 = (DWORD2(v148) >> 19) & 3;
          if (!v16)
          {
            goto LABEL_140;
          }

          v17 = 0;
          v18 = 0;
          v19 = v16 + 1;
          inserted = v2;
          do
          {
            v143 = v148;
            v144 = v149;
            v145 = v150;
            v146 = v151;
            v147 = v152;
            v20 = v148 & 0x3FC0;
            if (v20 == 2240)
            {
              v20 = 2176;
            }

            *&v143 = v20 | v148 & 0xFFFFFFF3FFFFC03FLL;
            *(&v143 + 1) = *(&v148 + 1) & 0xFFFFFFE7FFFFLL | ((v18 + HIWORD(*(&v148 + 1))) << 48);
            if ((v144 & 0x60000) != 0)
            {
              v21 = v144 & 0xFFFFFFF9FFFELL | ((v18 + WORD3(v144)) << 48);
              if (v144)
              {
                v21 = v144 & 0xFFFFFFFF00F9FFFFLL | (v17 + v144) & 0xFF000000;
              }
            }

            else
            {
              v21 = v144 & 0xFFFFFFFFFFE007FFLL | *(&v144 + 1) & 0x180000 | (((v144 >> 9) & 3) << 15) | (((v144 >> 9) & 3) << 13) | (((v144 >> 9) & 3) << 11);
            }

            v22 = *(&v144 + 1) & 0xFFFFFFF9FFFELL | ((v18 + HIWORD(*(&v144 + 1))) << 48);
            if (BYTE8(v144))
            {
              v22 = *(&v144 + 1) & 0xFFFFFFFF00F9FFFFLL | (v17 + DWORD2(v144)) & 0xFF000000;
            }

            if ((*(&v144 + 1) & 0x60000) != 0)
            {
              v23 = v22;
            }

            else
            {
              v23 = *(&v144 + 1) & 0xFFFFFFFFFFE007FFLL | v21 & 0x180000 | (((*(&v144 + 1) >> 9) & 3) << 15) | (((*(&v144 + 1) >> 9) & 3) << 13) | (((*(&v144 + 1) >> 9) & 3) << 11);
            }

            *&v144 = v21;
            *(&v144 + 1) = v23;
            inserted = PPStreamInsertOperationAfterChunk(v3, &v143, 0, inserted);
            ++v18;
            v17 += 0x1000000;
          }

          while (v19 != v18);
          goto LABEL_40;
        }

        if (v7 - 31 < 2)
        {
          goto LABEL_25;
        }

        if (!(v6 >> 6))
        {
          goto LABEL_13;
        }

        if (v7 != 34)
        {
          goto LABEL_140;
        }
      }

      v138.i64[0] = v6 & 0x3FC0;
      v134 = v2;
      if (v138.i64[0] == 7552)
      {
        LODWORD(v49) = DWORD2(v149);
LABEL_78:
        v133 = &v129;
        v51 = (v149 >> 17) & 3;
        MEMORY[0x28223BE20](result);
        v53 = (&v129 - v52);
        bzero(&v129 - v52, v54);
        v55 = 0;
        LODWORD(v56) = ((v49 >> 19) & 3) + 1;
        if (v138.i64[0] == 7552)
        {
          v56 = v56;
        }

        else
        {
          v56 = ((v49 >> 17) & 3) + 1;
        }

        inserted = v134;
        v137 = v56;
        do
        {
          v57 = v3;
          v58 = AddTempRegister(v3, (v148 >> 19) & 7, (v148 >> 38) & 7, (DWORD2(v148) >> 21) & 3);
          v59 = 0;
          v60 = 0;
          v53[v55] = v58;
          do
          {
            v145 = v150;
            v146 = v151;
            v147 = v152;
            v143 = v148;
            v144 = v149;
            if ((v149 & 0x60000) != 0)
            {
              if (v149)
              {
                v61 = v149 & 0xFFFFFFFF00F9FFFFLL | (v59 + v149) & 0xFF000000;
              }

              else
              {
                v61 = v149 & 0xFFFFFFF9FFFELL | ((v60 + WORD3(v149)) << 48);
              }

              *&v144 = v61;
            }

            v62 = *(&v144 + 1);
            v63 = (v62 + (v55 << 48)) & 0xFFFF000000000000 | v62 & 0xFFFFFFF9FFFELL;
            if (BYTE8(v144))
            {
              v63 = *(&v144 + 1) & 0xFFFFFFFF00F9FFFFLL | ((v55 << 24) + DWORD2(v144)) & 0xFF000000;
            }

            if ((*(&v144 + 1) & 0x60000) != 0)
            {
              v62 = v63;
            }

            if (v138.i64[0] == 7552)
            {
              v64 = v55;
            }

            else
            {
              v64 = v60;
            }

            v65 = (v62 >> 13) & 3;
            v66 = (v62 >> 15) & 3;
            if (v64 != 3)
            {
              v66 = 0;
            }

            if (v64 != 2)
            {
              v65 = v66;
            }

            v67 = (v62 >> 9) & 3;
            v68 = (v62 >> 11) & 3;
            if (v64 != 1)
            {
              v68 = 0;
            }

            if (v64)
            {
              v67 = v68;
            }

            if (v64 <= 1)
            {
              v69 = v67;
            }

            else
            {
              v69 = v65;
            }

            v70 = v62 & 0xFFFFFFFFFFE601FFLL | (v69 << 15) | (v69 << 13) | (v69 << 11);
            v71 = (*(&v143 + 1) >> 2) & 0x180000;
            *(&v144 + 1) = v70 | (v69 << 9) | v71;
            v72 = 0xFFFFFFF3FFFFC03FLL;
            if (v59)
            {
              v72 = 0xFFFFFFF3FFFFC038;
            }

            v73 = 2176;
            if (v59)
            {
              v73 = 4035;
            }

            v74 = v143 & v72;
            v75 = v53[v55];
            *&v143 = v74 | v73;
            *(&v143 + 1) = *(&v143 + 1) & 0xFFFEFFE78FFFLL | (v75 << 48) | 0x1000;
            if (v59)
            {
              *&v145 = v71 | *(&v149 + 1) & 0xFFFFFFE0003ELL | (v75 << 48) | 0x1C840;
            }

            inserted = PPStreamInsertOperationAfterChunk(v57, &v143, 0, inserted);
            ++v60;
            v59 += 0x1000000;
          }

          while (v51 + 1 != v60);
          ++v55;
          v76 = v137;
          v3 = v57;
        }

        while (v55 != v137);
        v77 = 0;
        do
        {
          v143 = v148;
          v144 = v149;
          v78 = v76;
          v79 = *v53++;
          v145 = v150;
          v146 = v151;
          v147 = v152;
          *&v143 = v148 & 0xFFFFFFF3FFFFC038 | 1;
          *(&v143 + 1) = (v77 + *(&v148 + 1)) & 0xFFFF000000000000 | *(&v148 + 1) & 0xFFFFFFE7FFFFLL;
          *&v144 = v149 & 0xFFFFFFF8003ELL | (v79 << 48) | 0x1C840;
          inserted = PPStreamInsertOperationAfterChunk(v3, &v143, 0, inserted);
          v77 += 0x1000000000000;
          v76 = v78 - 1;
        }

        while (v78 != 1);
LABEL_72:
        result = PPStreamRemoveOperation(v3, v134);
        goto LABEL_141;
      }

      v49 = *(&v149 + 1);
      v50 = *(&v149 + 1) & 0x60000;
      if ((v149 & 0x60000) != 0 && v50)
      {
        goto LABEL_78;
      }

      v97 = v149 & 0x180000;
      if (((v149 & 0x180000) != 0 || !v50) && ((v149 & 0x60000) == 0 || (*(&v149 + 1) & 0x180000) != 0))
      {
        v104 = (v149 >> 17) & 3;
        if (!v104)
        {
          if (((DWORD2(v149) >> 17) & 3) != 0)
          {
            v138.i64[0] = DWORD2(v149) >> 17;
            v119 = 0;
            v120 = 0;
            v121 = AddTempRegister(v3, (v6 >> 19) & 7, (v6 >> 38) & 7, (DWORD2(v148) >> 21) & 3) << 48;
            v122 = (v49 << 17) & 0x3000000000;
            v123 = ((v49 >> 17) & 3) + 1;
            v124 = v122 | 0x9C0;
            v125 = v134;
            do
            {
              v143 = v148;
              v144 = v149;
              v126 = *(&v149 + 1) & 0xFFFFFFF9FFFELL | ((v120 + HIWORD(*(&v149 + 1))) << 48);
              v145 = v150;
              v146 = v151;
              v147 = v152;
              if (BYTE8(v149))
              {
                v126 = *(&v149 + 1) & 0xFFFFFFFF00F9FFFFLL | (v119 + DWORD2(v149)) & 0xFF000000;
              }

              v127 = *(&v148 + 1) & 0xFFFE80780FFFLL | v121;
              *(&v144 + 1) = v126;
              *(&v143 + 1) = v127 | 0x72001000;
              if (v120 <= 3)
              {
                *(&v143 + 1) = v127 | qword_23A2A6030[v120];
              }

              *&v143 = v124 | v143 & 0xFFFFFFC3FFFFC03FLL;
              v125 = PPStreamInsertOperationAfterChunk(v3, &v143, 0, v125);
              ++v120;
              v119 += 0x1000000;
            }

            while (v123 != v120);
            *(&v143 + 1) = *(&v148 + 1);
            *(&v144 + 1) = *(&v149 + 1);
            v145 = v150;
            v146 = v151;
            v147 = v152;
            *&v143 = v148 & 0xFFFFFFFFFFFFC038 | 1;
            *&v144 = v149 & v129 | ((v138.i8[0] & 3) << 19) | v121 | 0x1C840;
            inserted = PPStreamInsertOperationAfterChunk(v3, &v143, 0, v125);
            result = PPStreamRemoveOperation(v3, v134);
          }

          else
          {
            inserted = v134;
          }

          goto LABEL_141;
        }

        v105 = AddTempRegister(v3, (v6 >> 19) & 7, (v6 >> 38) & 7, (DWORD2(v148) >> 21) & 3);
        v106 = 0;
        v107 = v105 << 48;
        v108 = v49 & 0xFFFFFFE6002ELL | (v105 << 48) | v97 | 0x1C840;
        inserted = v134;
        while (2)
        {
          v143 = v148;
          v144 = v149;
          if (v149)
          {
            v109 = v149 & 0xFFFFFFFF00F9FFFFLL | (v149 + (v106 << 24)) & 0xFF000000;
          }

          else
          {
            v109 = v149 & 0xFFFFFFF9FFFELL | ((v106 + WORD3(v149)) << 48);
          }

          v110 = (*(&v144 + 1) >> 13) & 3;
          v111 = (*(&v144 + 1) >> 15) & 3;
          if (v106 != 3)
          {
            v111 = 0;
          }

          if (v106 != 2)
          {
            v110 = v111;
          }

          v112 = (*(&v144 + 1) >> 9) & 3;
          v113 = (*(&v144 + 1) >> 11) & 3;
          if (v106 != 1)
          {
            v113 = 0;
          }

          if (v106)
          {
            v112 = v113;
          }

          if (v106 <= 1)
          {
            v110 = v112;
          }

          v145 = v150;
          v146 = v151;
          v147 = v152;
          *&v144 = v109;
          *(&v144 + 1) = *(&v144 + 1) & 0xFFFFFFFFFFE601FFLL | (v110 << 15) | (v110 << 13) | (v110 << 11) | (v110 << 9) | v97;
          v114 = 0xFFFFFFF3FFFFC03FLL;
          if (v106)
          {
            v114 = 0xFFFFFFF3FFFFC038;
          }

          v115 = 2176;
          if (v106)
          {
            v115 = 4035;
          }

          *&v143 = v148 & v114 | v115;
          if (v106 != v104)
          {
            v116 = *(&v143 + 1) & 0xFFFE80780FFFLL | v107;
            v117 = v116 | 0x72001000;
            v118 = (DWORD2(v143) >> 21) & 3;
            if (v118 > 1)
            {
              if (v118 != 2)
              {
                v117 = v116 + 1912639488;
              }

              v117 |= 0x10000uLL;
            }

            else if (!v118)
            {
LABEL_188:
              *(&v143 + 1) = v117 | 0x40000;
              goto LABEL_189;
            }

            v117 |= 0x20000uLL;
            goto LABEL_188;
          }

LABEL_189:
          if (v106)
          {
            *&v145 = v108;
          }

          inserted = PPStreamInsertOperationAfterChunk(v3, &v143, 0, inserted);
          v44 = v106++ == v104;
          if (v44)
          {
            goto LABEL_72;
          }

          continue;
        }
      }

      v98 = 0;
      v99 = 0;
      v100 = ((DWORD2(v148) >> 19) & 3) + 1;
      v2 = v134;
      inserted = v134;
      do
      {
        v144 = v149;
        v145 = v150;
        v146 = v151;
        v147 = v152;
        *&v143 = v148 & 0xFFFFFFF3FFFFFFFFLL;
        *(&v143 + 1) = *(&v148 + 1) & 0xFFFFFFE7FFFFLL | ((v99 + HIWORD(*(&v148 + 1))) << 48);
        if ((v149 & 0x60000) != 0)
        {
          v101 = v149 & 0xFFFFFFF9FFFELL | ((v99 + WORD3(v149)) << 48);
          if (v149)
          {
            v101 = v149 & 0xFFFFFFFF00F9FFFFLL | (v98 + v149) & 0xFF000000;
          }
        }

        else
        {
          v101 = v149 & 0xFFFFFFFFFFE007FFLL | *(&v144 + 1) & 0x180000 | (((v149 >> 9) & 3) << 15) | (((v149 >> 9) & 3) << 13) | (((v149 >> 9) & 3) << 11);
        }

        v102 = *(&v144 + 1) & 0xFFFFFFF9FFFELL | ((v99 + HIWORD(*(&v144 + 1))) << 48);
        if (BYTE8(v144))
        {
          v102 = *(&v144 + 1) & 0xFFFFFFFF00F9FFFFLL | (v98 + DWORD2(v144)) & 0xFF000000;
        }

        if ((*(&v144 + 1) & 0x60000) != 0)
        {
          v103 = v102;
        }

        else
        {
          v103 = *(&v144 + 1) & 0xFFFFFFFFFFE007FFLL | v101 & 0x180000 | (((*(&v144 + 1) >> 9) & 3) << 15) | (((*(&v144 + 1) >> 9) & 3) << 13) | (((*(&v144 + 1) >> 9) & 3) << 11);
        }

        *&v144 = v101;
        *(&v144 + 1) = v103;
        inserted = PPStreamInsertOperationAfterChunk(v3, &v143, 0, inserted);
        ++v99;
        v98 += 0x1000000;
      }

      while (v100 != v99);
LABEL_40:
      result = PPStreamRemoveOperation(v3, v2);
LABEL_141:
      v2 = inserted[1];
    }

    while (v2);
  }

  v128 = *MEMORY[0x277D85DE8];
  return result;
}

void SwitchTexOps(uint64_t **a1)
{
  v2 = HashTableNew(0x10u, 0, 0);
  v3 = *a1[7];
  if (v3)
  {
    v4 = 0;
    do
    {
      if ((*(v3 + 24) & 0x400000001F00) == 0x400000000200)
      {
        HashTableAdd(v2, (*(v3 + 32) + 1), v3 + 24);
        ++v4;
      }

      v3 = *(v3 + 8);
    }

    while (v3);
    if (v4)
    {
      NextIndex = PPStreamChunkListGetNextIndex(a1[4]);
      v63 = xmmword_23A2A5EE0;
      DWORD2(v63) = NextIndex;
      PPStreamAddTempUsage(a1, &v63);
      v6 = *a1[13];
      if (v6)
      {
        v39 = v2;
        v40 = ((WORD4(v63) << 48) | 0x1C880) - 64;
        v41 = (WORD4(v63) << 48) | 0x72041000;
        do
        {
          v7 = *(v6 + 40);
          v63 = *(v6 + 24);
          v64 = v7;
          v8 = *(v6 + 72);
          v65 = *(v6 + 56);
          v66 = v8;
          v67 = *(v6 + 88);
          v9 = v63;
          *&v63 = v63 & 0xFFFFFFFFFFFFBFFFLL;
          v10 = (v9 >> 6);
          v11 = (v10 - 66) > 0x21 || ((1 << (v10 - 66)) & 0x30000003FLL) == 0;
          if (!v11 || ((v12 = v10 - 130, v13 = v12 > 0x24, v14 = (1 << v12) & 0x1C00000003, !v13) ? (v15 = v14 == 0) : (v15 = 1), !v15))
          {
            v16 = v9 & 7;
            v17 = v16 - 2;
            if ((*(&v64 + (v16 - 2)) & 0xFF0001C1) != 0x80 || !HashTableGet(v2, HIWORD(*(&v64 + v17)) + 1))
            {
              v18 = malloc_type_malloc(8uLL, 0xCA0EF1E7uLL);
              if (!v18)
              {
LABEL_46:
                abort();
              }

              v19 = v18;
              v20 = *(&v64 + (v16 - 1));
              v62[0] = 0;
              v62[1] = 0;
              HashSetIteratorSetup(*v2, v62);
              v21 = HashSetIteratorNext(v62);
              if (v21)
              {
                v22 = 0;
                do
                {
                  v23 = *(v21 + 8);
                  if ((((v20 >> 5) ^ (*v23 >> 52)) & 7) != 0)
                  {
                    v24 = 0;
                  }

                  else
                  {
                    v24 = (((*v23 >> 47) ^ v20) & 0x1F) == 0;
                    *v23;
                  }

                  if (v24)
                  {
                    v25 = malloc_type_realloc(v19, 8 * (v22 + 1), 0x352A3853uLL);
                    if (!v25)
                    {
                      goto LABEL_46;
                    }

                    v19 = v25;
                    v25[v22++] = v23;
                  }

                  v21 = HashSetIteratorNext(v62);
                }

                while (v21);
                if (v22 == 1)
                {
                  v27 = *v19;
                  v59 = v65;
                  v60 = v66;
                  v61 = v67;
                  v57 = v63;
                  v58 = v64;
                  v28 = *(&v58 + v17) & 0xFFFFFFFFFFFFFE3FLL | 0x80;
                  *(&v58 + v17) = v28;
                  *(&v58 + v17) = v28 & 0xFFFF00FFFEBELL | (*(v27 + 8) << 48);
                  inserted = PPStreamInsertOperationAfterChunk(a1, &v57, 0, v6);
                }

                else if (v22)
                {
                  v29 = 0;
                  inserted = 0;
                  v30 = 0;
                  v31 = DWORD1(v67);
                  v32 = v6;
                  v42 = v22;
                  v43 = *(&v64 + v17);
                  v33 = 0uLL;
                  do
                  {
                    v34 = v19[v29];
                    v60 = v33;
                    v61 = v33;
                    v59 = v33;
                    DWORD1(v61) = v31;
                    *&v57 = 0x4100000C42;
                    *(&v57 + 1) = v41;
                    *&v58 = v43;
                    *(&v58 + 1) = 116864;
                    *(&v58 + 1) = (*(v34 + 8) << 48) | 0x1C880;
                    v35 = PPStreamInsertOperationAfterChunk(a1, &v57, 0, v32);
                    if (v30 && inserted)
                    {
                      *(v30 + 3) = *(v30 + 3) & 0x3FFFFFFFFFFFLL | (*(v35 + 22) << 46);
                    }

                    v56 = 0;
                    v55 = 0u;
                    v54 = 0u;
                    v53 = 0u;
                    v52[1] = 0;
                    HIDWORD(v55) = v31;
                    v52[0] = 0x4000001541;
                    v52[2] = v40;
                    v30 = PPStreamInsertOperationAfterChunk(a1, v52, 0, v35);
                    v51[1] = v65;
                    v51[2] = v66;
                    v51[3] = v67;
                    v50 = v63;
                    v51[0] = v64;
                    v36 = *(v51 + v17) & 0xFFFFFFFFFFFFFE3FLL | 0x80;
                    *(v51 + v17) = v36;
                    *(v51 + v17) = v36 & 0xFFFF00FFFEBELL | (*(v34 + 8) << 48);
                    v37 = PPStreamInsertOperationAfterChunk(a1, &v50, 0, v30);
                    v49 = 0;
                    v48 = 0u;
                    v47 = 0u;
                    v46 = 0u;
                    v45 = 0u;
                    HIDWORD(v48) = v31;
                    v44 = 5696;
                    v38 = PPStreamInsertOperationAfterChunk(a1, &v44, 0, v37);
                    v33 = 0uLL;
                    inserted = v38;
                    ++v29;
                    v32 = v38;
                  }

                  while (v42 != v29);
                  *(v30 + 3) = *(v30 + 3) & 0x3FFFFFFFFFFFLL | (*(*(v38 + 1) + 88) << 46);
                }

                else
                {
                  inserted = v6;
                }

                v2 = v39;
              }

              else
              {
                inserted = v6;
              }

              PPStreamRemoveOperation(a1, v6);
              free(v19);
              v6 = inserted;
            }
          }

          v6 = *(v6 + 8);
        }

        while (v6);
      }
    }
  }

  HashTableFree(v2);
}

uint64_t GetRegisterIndicies(uint64_t result, unsigned int *a2, unsigned int *a3, int a4, unsigned int a5, int a6, int a7)
{
  *a2 = 0;
  *a3 = -1;
  if (a6)
  {
    if (a4 == 2)
    {
      for (i = **(result + 72); i; i = *(i + 8))
      {
        v12 = *(i + 24);
        v9 = WORD1(v12);
        v13 = HIWORD(v12);
        if (v9 <= a5 && v13 >= a5)
        {
          goto LABEL_20;
        }
      }
    }

    else if (a4 == 1)
    {
      i = **(result + 80);
      if (i)
      {
        while (1)
        {
          v8 = *(i + 24);
          v9 = WORD1(v8);
          v10 = HIWORD(v8);
          if (v9 <= a5 && v10 >= a5)
          {
            break;
          }

          i = *(i + 8);
          if (!i)
          {
            goto LABEL_17;
          }
        }

LABEL_20:
        *a2 = v9;
        a5 = *(i + 30);
        goto LABEL_21;
      }
    }
  }

LABEL_17:
  if (!a7 || (*a2 = a5, *a3 = a7 + a5, a7 + a5 == -1))
  {
    *a2 = a5;
LABEL_21:
    *a3 = a5;
  }

  return result;
}

void *EmulationContext_PushRegisters(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
  if (!result)
  {
    abort();
  }

  *result = v4;
  result[1] = a2;
  *a1 = result;
  return result;
}

void *EmulationContext_PushRegistersCopy(uint64_t *a1)
{
  v2 = *(*a1 + 8);
  v3 = HashSetNew(*(v2 + 4), *(v2 + 16), *(v2 + 24));
  v10[0] = 0;
  v10[1] = 0;
  HashSetIteratorSetup(v2, v10);
  v4 = HashSetIteratorNext(v10);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = malloc_type_malloc(0x28uLL, 0xCA0EF1E7uLL);
      if (!v6)
      {
        abort();
      }

      v7 = *v5;
      v8 = *(v5 + 16);
      v6[4] = *(v5 + 32);
      *v6 = v7;
      *(v6 + 1) = v8;
      HashSetAdd(v3, v6);
      v5 = HashSetIteratorNext(v10);
    }

    while (v5);
  }

  return EmulationContext_PushRegisters(a1, v3);
}

void EmulationContext_PopRegisters(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = v1[1];
    *a1 = *v1;
    if (v2)
    {
      ClearRegisterState(v2);
      HashSetFree(v1[1]);
    }

    free(v1);
  }
}

uint64_t ClearRegisterState(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  HashSetIteratorSetup(a1, v4);
  result = HashSetIteratorNext(v4);
  if (result)
  {
    v3 = result;
    do
    {
      HashSetRemove(a1, v3);
      free(v3);
      result = HashSetIteratorNext(v4);
      v3 = result;
    }

    while (result);
  }

  return result;
}

void ClearDestedOpRegisters(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a3 + 32);
  if ((v6 & 0x78000) != 0)
  {
    v18[9] = v4;
    v18[10] = v5;
    v18[0] = 0;
    GetRegisterIndicies(a1, v18 + 1, v18, (v6 >> 12) & 7, HIWORD(v6), BYTE4(v6) & 1, (v6 >> 19) & 3);
    v10 = HIDWORD(v18[0]);
    if (SHIDWORD(v18[0]) <= SLODWORD(v18[0]))
    {
      v11 = LODWORD(v18[0]) + 1;
      do
      {
        v17 = 0u;
        v16 = 0u;
        v12 = (*(a3 + 32) >> 12) & 7;
        v15[0] = v10;
        v15[1] = v12;
        v13 = HashSetGet(a2, v15);
        if (v13)
        {
          v14 = v13;
          if (a4)
          {
            HashSetRemove(a2, v13);
            free(v14);
          }

          else
          {
            *(v13 + 20) = 0;
          }
        }

        ++v10;
      }

      while (v11 != v10);
    }
  }
}

void glpPPShaderLinearizeStreamMgrEx(uint64_t **a1, __int16 a2, _DWORD *a3)
{
  v4 = a2;
  if ((a2 & 0x600) != 0)
  {
    DecomposeMatrixOps(a1, a2 & 0x400);
  }

  v111 = v4;
  if ((v4 & 1) == 0)
  {
    goto LABEL_133;
  }

  v115 = 0;
  v6 = *a1[13];
  if (!v6)
  {
    goto LABEL_133;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(v6 + 24);
    if ((v9 & 0x4000) != 0)
    {
      v8 = *(v6 + 88);
      v7 = RecordFunctionCall(v8, &v115, v7, 1);
      v9 = *(v6 + 24);
    }

    if ((v9 & 0x3FC7) == 0x1300)
    {
      v7 = RecordFunctionCall(v9 >> 46, &v115, v7, 0);
    }

    v6 = *(v6 + 8);
  }

  while (v6);
  v108 = a3;
  v10 = *a1[13];
  v11 = v115;
  v12 = v7;
  if (v10)
  {
    v13 = 0;
    v14 = -1;
    while (1)
    {
      v15 = *(v10 + 88);
      if (v7)
      {
        break;
      }

LABEL_17:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_19:
      v10 = *(v10 + 8);
      v13 = v15;
      if (!v10)
      {
        goto LABEL_26;
      }
    }

    v16 = 0;
    v17 = v11;
    while (1)
    {
      v18 = *v17;
      v17 += 12;
      if (v18 == v15)
      {
        break;
      }

      if (v7 == ++v16)
      {
        goto LABEL_17;
      }
    }

    if ((v14 & 0x80000000) == 0)
    {
      v11[12 * v14 + 1] = v13;
    }

    v14 = v16;
    if ((v16 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    AddOpToJumpTable((v10 + 24), &v11[12 * v14]);
    goto LABEL_19;
  }

  v15 = 0;
  v14 = -1;
LABEL_26:
  if (!v7)
  {
    if (v11)
    {
      goto LABEL_132;
    }

    goto LABEL_133;
  }

  v19 = 0;
  while (v11[v19] != v8)
  {
    v19 += 12;
    if (12 * v7 == v19)
    {
      goto LABEL_35;
    }
  }

  if ((v14 & 0x80000000) == 0)
  {
    v11[12 * v14 + 1] = v15;
  }

LABEL_35:
  if (v7 == 1)
  {
    v12 = 1;
    goto LABEL_130;
  }

  v20 = *a1[13];
  if (!v20)
  {
    goto LABEL_130;
  }

  do
  {
    v21 = 0;
    v22 = v11;
    v23 = v7;
    while (1)
    {
      v24 = *v22;
      v22 += 12;
      if (v24 == *(v20 + 88))
      {
        break;
      }

      v21 += 0x100000000;
      if (!--v23)
      {
        LODWORD(v25) = -1;
        goto LABEL_43;
      }
    }

    v25 = v21 >> 32;
LABEL_43:
    v26 = &v11[12 * v25];
    v121 = v20;
    if (v26[8])
    {
      v27 = v26[1];
      v28 = 1;
    }

    else
    {
      v29 = RemoveConditionalReturns(a1, &v121, 0, v26 + 1);
      v27 = v26[1];
      v30 = 1;
      do
      {
        if (*(v20 + 88) == v27)
        {
          break;
        }

        v20 = *(v20 + 8);
        ++v30;
      }

      while (v20);
      v31 = v26[10];
      v33 = v30 <= 40;
      v32 = v31 * (v30 - 1);
      v33 = !v33 || v32 > 0xC8;
      if (v33)
      {
        v28 = 0;
      }

      else
      {
        v28 = v29;
      }

      if (v31 < 2)
      {
        v28 = v29;
      }
    }

    v26[11] = v28;
    do
    {
      v34 = *(v20 + 88);
      v20 = *(v20 + 8);
    }

    while (v34 != v27);
  }

  while (v20);
  v35 = *a1[13];
  if (!v35)
  {
    goto LABEL_129;
  }

  v106 = v7;
  do
  {
    v36 = 0;
    v37 = *(v35 + 88);
    v38 = v11;
    while (1)
    {
      v39 = *v38;
      v38 += 12;
      if (v39 == v37)
      {
        break;
      }

      if (v12 == ++v36)
      {
        LODWORD(v36) = v12;
        break;
      }
    }

    if (v36 != v7)
    {
      v14 = v36;
    }

    v113 = v35;
    if ((*(v35 + 24) & 0x3FC7) == 0x1300)
    {
      v40 = 0;
      v41 = v11;
      do
      {
        v42 = *v41;
        v41 += 12;
        if (v42 == *(v35 + 24) >> 46)
        {
          goto LABEL_72;
        }

        ++v40;
      }

      while (v12 != v40);
      LODWORD(v40) = v12;
LABEL_72:
      v43 = &v11[12 * v40];
      if (!v43[11])
      {
        v43[9] = 1;
        goto LABEL_104;
      }

      v109 = v14;
      v110 = v11;
      v126 = 0;
      v125 = 0u;
      v124 = 0u;
      v123 = 0u;
      v122 = 0u;
      v121 = 7296;
      v7 = v35;
      inserted = PPStreamInsertOperationAfterChunk(a1, &v121, 0, v35);
      v44 = a1[13];
      do
      {
        v45 = *v44;
        v46 = *(*v44 + 88);
        v44 = *v44 + 8;
      }

      while (*v43 != v46);
      v47 = 0;
      v48 = 0;
      v114 = 1;
      v49 = 0xFFFFFFFFLL;
      v112 = (*(v113[1] + 88) << 46) | 0x12C0;
      while (1)
      {
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v50 = *(v45 + 40);
        v51 = *(v45 + 56);
        v52 = *(v45 + 88);
        v119 = *(v45 + 72);
        v120 = v52;
        v117 = v50;
        v118 = v51;
        v116 = *(v45 + 24);
        v48 += OperationBlockBoundary(&v116);
        if ((v116 & 0x3FC0) == 0x1340 && v48 >= 1)
        {
          if (v120 != v43[1])
          {
            v114 = 0;
            *&v116 = v116 & 0x3FFFFFFFC03FLL | v112;
LABEL_82:
            v53 = 1;
            goto LABEL_83;
          }
        }

        else if ((v116 & 0x3FC0) != 0x1340)
        {
          goto LABEL_82;
        }

        *&v116 = v116 | 0x1BC0;
        v53 = v48 != 0;
LABEL_83:
        v54 = PPStreamInsertOperationAfterChunk(a1, &v116, (v45 + 104), v7);
        v7 = v54;
        v55 = *(v54 + 3);
        if (v55 >> 46)
        {
          v56 = a1[13];
          do
          {
            v57 = *v56;
            v58 = *(*v56 + 88);
            v56 = *v56 + 8;
          }

          while (*v43 != v58);
          v59 = v47;
          while (1)
          {
            v60 = *(v57 + 88);
            if (v60 == v55 >> 46)
            {
              break;
            }

            v57 = *(v57 + 8);
            ++v59;
            if (v60 == v43[1])
            {
              goto LABEL_91;
            }
          }

          *(v54 + 3) = v55 & 0x3FFFFFFFFFFFLL | ((*(v54 + 22) + v59) << 46);
        }

LABEL_91:
        if (v49 == -1)
        {
          v49 = *(v54 + 22);
        }

        v61 = *(v45 + 88) != v43[1];
        v45 = *(v45 + 8);
        --v47;
        if (!v61 || !v53)
        {
          v113 = *PPStreamRemoveOperation(a1, v113);
          if (v114)
          {
            PPStreamRemoveOperation(a1, inserted);
          }

          v62 = *(v7 + 88);
          PPStreamChangeBranchTargets(a1, v37, v49);
          v63 = v110 + 1;
          v64 = v12;
          LODWORD(v7) = v106;
          do
          {
            if (*(v63 - 1) == v37)
            {
              *(v63 - 1) = v49;
            }

            if (*v63 == v37)
            {
              *v63 = v62;
            }

            v63 += 12;
            --v64;
          }

          while (v64);
          v11 = v115;
          v14 = v109;
          break;
        }
      }
    }

LABEL_104:
    v65 = *a1[13];
    v66 = &v11[12 * v14];
    ClearJumpTable(v66);
    v67 = *v66;
    while (v67 != *(v65 + 88))
    {
      v65 = *(v65 + 8);
    }

    v68 = (v65 + 24);
    if (v66[1] != v67)
    {
      do
      {
        AddOpToJumpTable(v68, &v11[12 * v14]);
        v65 = *(v65 + 8);
        v68 = (v65 + 24);
      }

      while (v66[1] != *(v65 + 88));
    }

    AddOpToJumpTable(v68, &v11[12 * v14]);
    if (v113)
    {
      v69 = v113 + 1;
    }

    else
    {
      v69 = a1[13];
    }

    v35 = *v69;
  }

  while (*v69);
  v70 = *a1[13];
  v11 = v115;
  if (!v70)
  {
LABEL_129:
    v4 = v111;
    a3 = v108;
    if (v11)
    {
      goto LABEL_130;
    }

    goto LABEL_133;
  }

  v71 = 0;
  LODWORD(v72) = 0;
  v73 = v115;
  v74 = v115 + 36;
  do
  {
    v75 = *(v70 + 8);
    if (v71)
    {
      v76 = *(v70 + 88);
    }

    else
    {
      v72 = 0;
      v77 = v74;
      while (1)
      {
        if (!*(v77 - 1) && !*v77)
        {
          v76 = *(v77 - 9);
          if (v76 == *(v70 + 88))
          {
            break;
          }
        }

        ++v72;
        v77 += 12;
        if (v12 == v72)
        {
          if ((*(v70 + 24) & 0x3FC0) == 0x1BC0)
          {
            v71 = 0;
            LODWORD(v72) = v7;
            goto LABEL_118;
          }

          v71 = 0;
          LODWORD(v72) = v12;
          goto LABEL_119;
        }
      }
    }

    v71 = v73[12 * v72 + 1] != v76;
    PPStreamRemoveLabelsAtOperationIndex(a1, v76);
LABEL_118:
    PPStreamRemoveOperation(a1, v70);
LABEL_119:
    v70 = v75;
  }

  while (v75);
  v4 = v111;
  a3 = v108;
  v11 = v73;
LABEL_130:
  v78 = v11;
  do
  {
    ClearJumpTable(v78);
    v78 += 48;
    --v12;
  }

  while (v12);
LABEL_132:
  free(v11);
LABEL_133:
  if ((v4 & 0x2000) != 0)
  {
    if ((v4 & 8) != 0)
    {
      LocalCopyPropagator(a1);
    }

    SwitchTexOps(a1);
  }

  if ((v4 & 0x102) != 0)
  {
    DetectConstantLoopsSimple(a1);
    if (a3)
    {
      v79 = a3;
    }

    else
    {
      v79 = 0;
    }

    UnrollConstantLoopsSimple(a1, v79);
  }

  if ((v4 & 4) != 0)
  {
    PPStreamPackIndices(a1);
    FlattenIfs(a1);
  }

  if ((v4 & 0x106) != 0)
  {
    v80 = *a1[8];
    if (v80)
    {
      while (1)
      {
        v81 = *a1[13];
        if (!v81)
        {
          goto LABEL_199;
        }

        v82 = 0;
        v83 = *(v80 + 32);
        do
        {
          while (1)
          {
            v84 = v81[3];
            v85 = v84 & 7;
            if ((v84 & 7) == 0)
            {
              break;
            }

            v86 = v81 + 5;
            v87 = v84 & 0x3FC0;
            do
            {
              v88 = *v86++;
              v89 = HIWORD(v88);
              if ((v88 & 0x1C0) == 0xC0 && v83 == v89)
              {
LABEL_167:
                v82 = 1;
                goto LABEL_168;
              }

              if (v87 == 7040)
              {
                if (v83 == HIWORD(v81[4]) && (v81[4] & 0x7000) == 12288 || v82 != 0)
                {
                  goto LABEL_167;
                }
              }

              else if (v82)
              {
                goto LABEL_167;
              }

              --v85;
            }

            while (v85);
            v82 = 0;
            v81 = v81[1];
            if (!v81)
            {
              goto LABEL_199;
            }
          }

LABEL_168:
          v81 = v81[1];
        }

        while (v81);
        if (v82)
        {
          v116 = 0uLL;
          DWORD2(v116) = PPStreamChunkListGetNextIndex(a1[4]);
          LOBYTE(v116) = *(v80 + 24);
          PPStreamAddTempUsage(a1, &v116);
          v93 = *a1[13];
          if (v93)
          {
            do
            {
              v94 = v93[4];
              if ((v94 & 0x7000) == 0x3000 && v83 == HIWORD(v94))
              {
                v93[4] = v94 & 0xFFFFFFFF9FFFLL | (DWORD2(v116) << 48);
              }

              v96 = v93[3] & 7;
              if (v96)
              {
                v97 = v93 + 5;
                do
                {
                  v98 = *v97;
                  if ((*v97 & 0x1C0) == 0xC0 && v83 == HIWORD(*v97))
                  {
                    *v97 = v98 & 0xFFFFFFFFFFFFFE7FLL;
                    *v97 = v98 & 0xFFFFFFFFFE7FLL | (DWORD2(v116) << 48);
                  }

                  ++v97;
                  --v96;
                }

                while (v96);
              }

              v93 = v93[1];
            }

            while (v93);
            v100 = *a1[13];
            if (v100)
            {
              break;
            }
          }
        }

LABEL_199:
        v80 = *(v80 + 8);
        if (!v80)
        {
          goto LABEL_200;
        }
      }

      v101 = v83 << 48;
      while (2)
      {
        if ((*(v100 + 24) & 0x3FC0) == 0x1340)
        {
          v126 = 0;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          HIDWORD(v125) = *(v100 + 92);
          v102 = ((v116 >> 6) << 21) | 0x72000000;
          v103 = (v116 << 15 >> 21) & 3;
          if (v103 > 1)
          {
            if (v103 != 2)
            {
              v102 = (v116 << 15) & 0x600000 | 0x72008000;
            }

            v102 |= 0x10000uLL;
          }

          else if (!v103)
          {
LABEL_197:
            *&v122 = v102 + v101 + 274432;
            *(&v122 + 1) = (v116 << 13) & 0x180000 | (DWORD2(v116) << 48) | 0x1C840;
            v121 = (v116 << 30) & 0x3000000000 | (((v116 >> 3) & 7) << 38) | ((v116 & 7) << 19) | 0x100000001;
            v104 = PPStreamInsertOperationAfterChunk(a1, &v121, 0, *v100);
            PPStreamChangeBranchTargets(a1, *(v100 + 88), *(v104 + 22));
            goto LABEL_198;
          }

          v102 |= 0x20000uLL;
          goto LABEL_197;
        }

LABEL_198:
        v100 = *(v100 + 8);
        if (!v100)
        {
          goto LABEL_199;
        }

        continue;
      }
    }
  }

LABEL_200:
  if ((v111 & 0x80) != 0)
  {
    ConstantPropagateFold(a1);
  }

  if ((v111 & 8) != 0)
  {
    LocalCopyPropagator(a1);
  }

  if ((v111 & 0x4060) != 0)
  {
    PPStreamPackIndices(a1);
    v105 = ProgramNew(a1);
    Registerify(v105);
    Blockify(v105);
    BuildGenKill(v105);
    BuildLiveOut(v105);
    if ((v111 & 0x40) != 0)
    {
      goto LABEL_206;
    }
  }

  else
  {
    v105 = 0;
    if ((v111 & 0x40) != 0)
    {
LABEL_206:
      DeadCodeEliminationSimple(v105);
    }
  }

  if ((v111 & 0x4000) == 0)
  {
    if ((v111 & 0x20) == 0)
    {
      goto LABEL_209;
    }

LABEL_213:
    BuildInterferenceSets(v105);
    RegistersMerge(v105);
    if ((v111 & 0x4060) == 0)
    {
      goto LABEL_211;
    }

LABEL_210:
    RegistersCleanup(v105);
    ProgramFree(v105);
    goto LABEL_211;
  }

  BackCopyPropagationSimple(v105);
  if ((v111 & 0x20) != 0)
  {
    goto LABEL_213;
  }

LABEL_209:
  if ((v111 & 0x4060) != 0)
  {
    goto LABEL_210;
  }

LABEL_211:
  PPStreamPackIndices(a1);
}

void LocalCopyPropagator(uint64_t a1)
{
  v2 = **(a1 + 104);
  v3 = malloc_type_malloc(0x10uLL, 0xCA0EF1E7uLL);
  if (!v3)
  {
LABEL_151:
    abort();
  }

  v4 = v3;
  v3[2] = 0;
  *v3 = 0;
  if (v2)
  {
    while (1)
    {
      v5 = v2[3];
      v6 = (v5 >> 6);
      v7 = (v6 - 75) > 0x3D || ((1 << (v6 - 75)) & 0x300043838001FE07) == 0;
      if (!v7 || ((v35 = v6 - 140, v36 = v35 > 0x1E, v37 = (1 << v35) & 0x4000000F, !v36) ? (v38 = v37 == 0) : (v38 = 1), !v38))
      {
        if (*(v4 + 8))
        {
          v8 = 0;
          v9 = 0;
          while (1)
          {
            v10 = *v4;
            v11 = *v4 + v8;
            if (*(v11 + 12) != 2)
            {
              goto LABEL_12;
            }

            if ((*(PPStreamChunkListChunkAtIndex(*(a1 + 56), *(v11 + 16)) + 24) & 0x400000001F00) != 0x400000000200)
            {
              break;
            }

LABEL_13:
            ++v9;
            v8 += 72;
            if (v9 >= *(v4 + 8))
            {
              v5 = v2[3];
              goto LABEL_15;
            }
          }

          v10 = *v4;
LABEL_12:
          *(v10 + v8) = 0;
          goto LABEL_13;
        }
      }

LABEL_15:
      v12 = (v5 & 7) + (v5 >> 15);
      if (v12 < 1)
      {
        goto LABEL_52;
      }

      v13 = 0;
      v14 = v2 + 5;
      do
      {
        v15 = *(v4 + 8);
        if (!v15)
        {
          goto LABEL_51;
        }

        v16 = v14[v13];
        v17 = (v16 >> 19) & 3;
        v18 = (*v4 - 72);
        v19 = 1;
        do
        {
          if (!v18[18] || v18[19] != ((v16 >> 6) & 7) || v18[20] != HIWORD(v16))
          {
            goto LABEL_26;
          }

          if (v18[33] != ((v16 >> 17) & 3) || (v14[v13] & 1) != 0)
          {
            goto LABEL_26;
          }

          if (((v16 >> 19) & 3) > 1)
          {
            if (v17 != 2 && v18[((v16 >> 15) & 3) + 28] != 1 || v18[((v16 >> 13) & 3) + 28] != 1)
            {
              goto LABEL_26;
            }
          }

          else if (!v17)
          {
            goto LABEL_37;
          }

          if (v18[((v16 >> 11) & 3) + 28] == 1)
          {
LABEL_37:
            v21 = v18[((v16 >> 9) & 3) + 28] != 1;
            goto LABEL_27;
          }

LABEL_26:
          v21 = 1;
LABEL_27:
          v18 += 18;
          if (v19 >= v15)
          {
            break;
          }

          ++v19;
        }

        while (v21);
        if (!v21 && v18)
        {
          v22 = v16 & 0xFFFFFFFFFFFFFE3FLL | ((v18[3] & 7) << 6);
          v14[v13] = v22;
          v23 = v22 & 0xFFFFFFFFFFFFLL | (v18[4] << 48);
          v14[v13] = v23;
          v24 = 16 * v18[14];
          v25 = v23 | v24 & 0x10;
          v26 = v23 & 0xFFFFFFFFFFFFFFEFLL | (16 - v24) & 0x10;
          if ((v16 & 0x10) != 0)
          {
            v27 = v26;
          }

          else
          {
            v27 = v25;
          }

          v14[v13] = v27;
          v28 = (v27 >> 19) & 3;
          if (v28 > 1)
          {
            if (v28 != 2)
            {
              v27 = v27 & 0xFFFFFFFFFFFE7FFFLL | ((*(v18 + ((v27 >> 13) & 0xC) + 24) & 3) << 15);
              v14[v13] = v27;
            }

            v27 = v27 & 0xFFFFFFFFFFFF9FFFLL | ((*(v18 + ((v27 >> 11) & 0xC) + 24) & 3) << 13);
            v14[v13] = v27;
          }

          else if (!v28)
          {
LABEL_50:
            v14[v13] = v27 & 0xFFFFFFFFFFFFF9FFLL | ((*(v18 + ((v27 >> 7) & 0xC) + 24) & 3) << 9);
            goto LABEL_51;
          }

          v27 = v27 & 0xFFFFFFFFFFFFE7FFLL | ((*(v18 + ((v27 >> 9) & 0xC) + 24) & 3) << 11);
          v14[v13] = v27;
          goto LABEL_50;
        }

LABEL_51:
        ++v13;
      }

      while (v13 != v12);
LABEL_52:
      v29 = v2[4];
      if ((v29 & 0x180000) == 0x80000)
      {
        CheckRemoveAvailableCopyTable(v29, 0, 1, v4, a1);
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      for (i = 0; i != v30; ++i)
      {
        CheckRemoveAvailableCopyTable(v2[4], i, 0, v4, a1);
      }

      v32 = v2[3];
      if ((v32 & 0x3FC0) == 0)
      {
        v33 = v2[4];
        if ((v33 & 0x100000000) == 0)
        {
          v34 = v2[5];
          if ((v34 & 1) == 0 && ((v34 ^ v33) >> 48 || (((v34 >> 6) ^ (v33 >> 12)) & 7) != 0))
          {
            v39 = 0;
            v101 = (v32 >> 34) & 3;
            do
            {
              v40 = 0;
              v41 = 0;
              *&v104[40] = 0;
              memset(&v104[8], 0, 32);
              v43 = v2[3];
              v42 = v2[4];
              v44 = (v42 >> 12) & 7;
              LODWORD(v103) = 1;
              DWORD1(v103) = v44;
              v45 = v39 + HIWORD(v42);
              v46 = v2[5];
              v47 = (v46 >> 6) & 7;
              *(&v103 + 1) = __PAIR64__(v47, v45);
              v102 = v39;
              v48 = v39 + HIWORD(v46);
              *&v104[40] = (v46 >> 4) & 1;
              v49 = (v43 >> 36) & 3;
              *v104 = v48;
              *&v104[4] = (v43 >> 36) & 3;
              v50 = vdup_n_s32(v42);
              v51 = COERCE_DOUBLE(vshl_u32(v50, 0xFFFFFFE3FFFFFFF1));
              v52 = COERCE_DOUBLE(vshl_u32(v50, 0xFFFFFFE5FFFFFFF0));
              v53 = COERCE_DOUBLE(vshl_u32(v50, 0xFFFFFFE7FFFFFFEFLL));
              v54 = v46 >> 15;
              v55 = v46 >> 13;
              v56 = COERCE_DOUBLE(vshl_u32(v50, 0xFFFFFFE9FFFFFFEELL));
              v57 = v46 >> 11;
              v58 = v46 >> 9;
              do
              {
                v59 = &v104[4 * v40 - 16];
                if (v41 <= v49)
                {
                  if (v40 == 2)
                  {
                    v61 = v52;
                  }

                  else
                  {
                    v61 = v51;
                  }

                  if (v40)
                  {
                    v62 = v53;
                  }

                  else
                  {
                    v62 = v56;
                  }

                  if (v40 <= 1)
                  {
                    v61 = v62;
                  }

                  v63 = LOBYTE(v61) & 1;
                  *(v59 + 10) = v63;
                  v41 += v63;
                  if ((BYTE4(v61) & 3) == 2)
                  {
                    v64 = v55;
                  }

                  else
                  {
                    v64 = v54;
                  }

                  if ((BYTE4(v61) & 3) != 0)
                  {
                    v65 = v57;
                  }

                  else
                  {
                    v65 = v58;
                  }

                  if ((BYTE4(v61) & 3u) <= 1)
                  {
                    v60 = v65;
                  }

                  else
                  {
                    v60 = v64;
                  }
                }

                else
                {
                  *(v59 + 10) = 0;
                  v60 = v58;
                }

                *(v59 + 6) = v60 & 3;
                ++v40;
              }

              while (v40 != 4);
              LODWORD(v105) = GetStreamArray(v44, v45, a1);
              HIDWORD(v105) = GetStreamArray(v47, v48, a1);
              if (!v102 && (v43 & 0xC00000000) != 0)
              {
                *&v104[44] = 1;
                MatchingAvailableCopy = FindMatchingAvailableCopy(&v103, v4);
                if (!MatchingAvailableCopy)
                {
                  v95 = *(v4 + 8);
                  v96 = *v4;
                  if ((v95 & 7) == 0)
                  {
                    v97 = malloc_type_realloc(v96, 72 * (v95 + 8), 0x352A3853uLL);
                    if (!v97)
                    {
                      goto LABEL_151;
                    }

                    *v4 = v97;
                    bzero(&v97[72 * *(v4 + 8)], 0x240uLL);
                    v96 = *v4;
                    v95 = *(v4 + 8);
                  }

                  v98 = &v96[72 * v95];
                  v99 = *&v104[32];
                  *(v98 + 2) = *&v104[16];
                  *(v98 + 3) = v99;
                  *(v98 + 8) = v105;
                  v100 = *v104;
                  *v98 = v103;
                  *(v98 + 1) = v100;
                  v70 = *(v4 + 8) + 1;
                  *(v4 + 8) = v70;
                  goto LABEL_102;
                }

                v67 = MatchingAvailableCopy + 10;
                v68 = &v104[24];
                v69 = 4;
                do
                {
                  if (*v68 == 1)
                  {
                    if (!*v67)
                    {
                      ++MatchingAvailableCopy[5];
                      *v67 = 1;
                    }

                    *(v67 - 4) = *(v68 - 4);
                  }

                  ++v68;
                  ++v67;
                  --v69;
                }

                while (v69);
              }

              v70 = *(v4 + 8);
LABEL_102:
              *&v104[44] = 0;
              if (v70)
              {
                v71 = *v4;
                while (1)
                {
                  v72 = 0;
                  while (1)
                  {
                    v73 = (v71 + 72 * v72);
                    if (*v73 && v73[1] == v47 && v73[2] == v48)
                    {
                      v74 = 0;
                      v75 = &v104[24];
                      v76 = 10;
                      do
                      {
                        if (v74 <= v49 && *v75)
                        {
                          ++v74;
                          v77 = *(v71 + 72 * v72 + 4 * *(v75 - 4) + 40) == 1;
                        }

                        else
                        {
                          v77 = 1;
                        }

                        if ((v76 - 10) > 2)
                        {
                          break;
                        }

                        ++v76;
                        ++v75;
                      }

                      while (v77);
                      if (v77)
                      {
                        break;
                      }
                    }

                    if (++v72 == v70)
                    {
                      goto LABEL_128;
                    }
                  }

                  v78 = 0;
                  v79 = (v71 + 72 * v72);
                  v47 = v79[3];
                  v48 = v79[4];
                  v80 = v79[14];
                  if (*&v104[40])
                  {
                    v80 = 1 - v80;
                  }

                  *&v104[40] = v80;
                  v81 = -4;
                  v82 = &v104[8];
                  do
                  {
                    if (v78 <= v49 && v82[4])
                    {
                      ++v78;
                      v83 = *(v71 + 72 * v72 + 4 * *v82 + 24);
                    }

                    else
                    {
                      v83 = v81 + 4;
                    }

                    *v82++ = v83;
                  }

                  while (!__CFADD__(v81++, 1));
                  HIDWORD(v105) = GetStreamArray(v47, v48, a1);
                }
              }

LABEL_128:
              HIDWORD(v103) = v47;
              *v104 = v48;
              v85 = FindMatchingAvailableCopy(&v103, v4);
              if (v85)
              {
                v86 = v85 + 10;
                v87 = &v104[24];
                v88 = 4;
                v89 = v102;
                do
                {
                  if (*v87 == 1)
                  {
                    if (!*v86)
                    {
                      ++v85[5];
                      *v86 = 1;
                    }

                    *(v86 - 4) = *(v87 - 4);
                  }

                  ++v87;
                  ++v86;
                  --v88;
                }

                while (v88);
              }

              else
              {
                v90 = *v4;
                v89 = v102;
                if ((v70 & 7) == 0)
                {
                  v91 = malloc_type_realloc(v90, 72 * (v70 + 8), 0x352A3853uLL);
                  if (!v91)
                  {
                    goto LABEL_151;
                  }

                  *v4 = v91;
                  bzero(&v91[72 * *(v4 + 8)], 0x240uLL);
                  v90 = *v4;
                  v70 = *(v4 + 8);
                }

                v92 = &v90[72 * v70];
                v93 = *&v104[32];
                *(v92 + 2) = *&v104[16];
                *(v92 + 3) = v93;
                *(v92 + 8) = v105;
                v94 = *v104;
                *v92 = v103;
                *(v92 + 1) = v94;
                ++*(v4 + 8);
              }

              v39 = v89 + 1;
            }

            while (v89 != v101);
          }
        }
      }

      v2 = v2[1];
      if (!v2)
      {
        if (*v4)
        {
          free(*v4);
        }

        break;
      }
    }
  }

  free(v4);
}

unsigned __int16 *glpPPShaderLinearizeEx(unsigned int *a1, __int16 a2, _DWORD *a3)
{
  v5 = a2 & 0x67EF;
  if ((a2 & 0x67EF) != 0)
  {
    v12 = 0;
    v7 = PPStreamCreate();
    PPStreamAttachStream(v7, a1);
    glpPPShaderLinearizeStreamMgrEx(v7, v5, a3);
    Stream = PPStreamGetStream(v7, &v12);
    PPStreamFree(v7);
    if ((a2 & 0x800) == 0)
    {
      return Stream;
    }

    goto LABEL_7;
  }

  if ((a2 & 0x1800) == 0)
  {
    Stream = 0;
    if ((a2 & 0x800) == 0)
    {
      return Stream;
    }

    goto LABEL_7;
  }

  v9 = 8 * a1[6];
  v10 = malloc_type_malloc(v9, 0xCA0EF1E7uLL);
  if (!v10)
  {
    abort();
  }

  Stream = v10;
  memcpy(v10, a1, v9);
  if ((a2 & 0x800) != 0)
  {
LABEL_7:
    PPStreamTokenConvertParamBindings(Stream);
  }

  return Stream;
}

void glpFreePPShaderLinearize(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t RecordFunctionCall(int a1, void *a2, uint64_t a3, int a4)
{
  v5 = a3;
  if (a3)
  {
    v8 = 0;
    v9 = (*a2 + 40);
    while (*(v9 - 10) != a1)
    {
      ++v8;
      v9 += 12;
      if (a3 == v8)
      {
        goto LABEL_9;
      }
    }

    ++*v9;
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 == a3)
  {
LABEL_9:
    v10 = *a2;
    if ((a3 & 0x7F) != 0)
    {
      v11 = a3;
    }

    else
    {
      v12 = malloc_type_realloc(v10, 48 * (a3 + 128), 0x352A3853uLL);
      if (!v12)
      {
        abort();
      }

      *a2 = v12;
      v11 = v5;
      v13 = v12 + 48 * v5 + 8;
      v14 = 128;
      do
      {
        *(v13 - 8) = -1;
        *v13 = 0uLL;
        *(v13 + 16) = 0uLL;
        *(v13 + 32) = 0;
        v13 += 48;
        --v14;
      }

      while (v14);
      v10 = *a2;
    }

    v15 = &v10[48 * v11];
    *v15 = a1;
    *(v15 + 8) = a4;
    *(v15 + 10) = 1;
    return (v5 + 1);
  }

  return v5;
}

void *AddOpToJumpTable(void *result, uint64_t a2)
{
  v3 = result;
  ++*(a2 + 8);
  v4 = (*result >> 6);
  v5 = (v4 - 75);
  if (v5 > 0x21)
  {
    goto LABEL_11;
  }

  if (((1 << (v4 - 75)) & 0x38001BE01) == 0)
  {
    if (v5 == 1)
    {
      if ((*result & 7) == 1)
      {
        return result;
      }

      goto LABEL_3;
    }

LABEL_11:
    if (v4 != 140)
    {
      return result;
    }
  }

LABEL_3:
  v6 = *(a2 + 12);
  if ((v6 & 0x7F) == 0)
  {
    v7 = malloc_type_realloc(*(a2 + 16), 4 * (v6 + 128), 0x352A3853uLL);
    if (!v7)
    {
      goto LABEL_13;
    }

    *(a2 + 16) = v7;
    v8 = &v7[4 * *(a2 + 12)];
    *(v8 + 30) = 0u;
    *(v8 + 31) = 0u;
    *(v8 + 28) = 0u;
    *(v8 + 29) = 0u;
    *(v8 + 26) = 0u;
    *(v8 + 27) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 25) = 0u;
    *(v8 + 22) = 0u;
    *(v8 + 23) = 0u;
    *(v8 + 20) = 0u;
    *(v8 + 21) = 0u;
    *(v8 + 18) = 0u;
    *(v8 + 19) = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 14) = 0u;
    *(v8 + 15) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 13) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 11) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    result = malloc_type_realloc(*(a2 + 24), 4 * (*(a2 + 12) + 128), 0x352A3853uLL);
    if (!result)
    {
LABEL_13:
      abort();
    }

    *(a2 + 24) = result;
    v9 = (result + 4 * *(a2 + 12));
    v9[30] = 0u;
    v9[31] = 0u;
    v9[28] = 0u;
    v9[29] = 0u;
    v9[26] = 0u;
    v9[27] = 0u;
    v9[24] = 0u;
    v9[25] = 0u;
    v9[22] = 0u;
    v9[23] = 0u;
    v9[20] = 0u;
    v9[21] = 0u;
    v9[18] = 0u;
    v9[19] = 0u;
    v9[16] = 0u;
    v9[17] = 0u;
    v9[14] = 0u;
    v9[15] = 0u;
    v9[12] = 0u;
    v9[13] = 0u;
    v9[10] = 0u;
    v9[11] = 0u;
    v9[8] = 0u;
    v9[9] = 0u;
    v9[6] = 0u;
    v9[7] = 0u;
    v9[4] = 0u;
    v9[5] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    *v9 = 0u;
    v9[1] = 0u;
    v6 = *(a2 + 12);
  }

  v10 = *(a2 + 24);
  *(*(a2 + 16) + 4 * v6) = *(v3 + 16);
  *(v10 + 4 * (*(a2 + 12))++) = *v3 >> 46;
  return result;
}

void ClearJumpTable(uint64_t a1)
{
  v2 = a1 + 12;
  if (*(a1 + 12))
  {
    free(*(a1 + 16));
    free(*(a1 + 24));
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  *(a1 + 8) = 0;
}

uint64_t RemoveConditionalReturns(uint64_t a1, uint64_t **a2, uint64_t a3, unsigned int *a4)
{
  v5 = *a2;
  if (*a2)
  {
    LODWORD(v9) = 0;
    while (*(v5 + 22) != *a4)
    {
      if (v9 || (v5[3] & 0x3FC0) != 0x1540)
      {
        v10 = OperationBlockBoundary(v5 + 6);
        if (v10)
        {
          LODWORD(v9) = v10 + v9;
        }

        else if (v9 > a3 && (v5[3] & 0x3FC0) == 0x1340)
        {
          return 0;
        }
      }

      else
      {
        v12 = v5;
        v9 = 0;
        if (!RemoveReturnsFromIfStatement(a1, &v12, a3, 1, a4))
        {
          return v9;
        }

        v5 = v12;
      }

      v5 = v5[1];
      if (!v5)
      {
        break;
      }
    }
  }

  *a2 = v5;
  return 1;
}

uint64_t RemoveReturnsFromIfStatement(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = (*a2)[1];
  if (!v6)
  {
LABEL_27:
    *a2 = v6;
    return 1;
  }

  v35 = a2;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  do
  {
    v14 = *(v6 + 24);
    if ((v14 & 0x3FC0) == 0x1640)
    {
      break;
    }

    v15 = (v14 >> 6);
    switch(v15)
    {
      case 'M':
        if (v13 > 0)
        {
          return 0;
        }

        v13 = 0;
        v17 = !v11;
        v11 = v11;
        if (v17)
        {
          v9 = 1;
        }

        else
        {
          v10 = 1;
        }

        break;
      case 'X':
        v11 = 1;
        v12 = v6;
        break;
      case 'U':
        v38 = v6;
        result = RemoveReturnsFromIfStatement(a1, &v38, v13, 0, a5);
        if (!result)
        {
          return result;
        }

        v6 = v38;
        break;
      default:
        v13 = OperationBlockBoundary((v6 + 24)) + v13;
        break;
    }

    v6 = *(v6 + 8);
    if (v13 < a3)
    {
      break;
    }
  }

  while (v6);
  if (!(v9 | v10))
  {
    a2 = v35;
    goto LABEL_27;
  }

  if (v11)
  {
    if (v9 && v10)
    {
      if (v5)
      {
        v18 = v35;
        do
        {
          if ((v5[3] & 0x3FC0) == 0x1340)
          {
            break;
          }

          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        v18 = v35;
      }

        ;
      }

      if (v12)
      {
        v30 = v12;
        do
        {
          if ((v30[3] & 0x3FC0) == 0x1340)
          {
            break;
          }

          v30 = v30[1];
        }

        while (v30);
      }

      else
      {
        v30 = 0;
      }

        ;
      }

      v43 = 0;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 4928;
      v12[3] = v12[3] & 0x3FFFFFFFFFFFLL | (*(PPStreamInsertOperationAfterChunk(a1, &v38, 0, v6) + 22) << 46);
      *v18 = v6;
      return 1;
    }

    result = 0;
    if (a4 && v9 && !v10)
    {
      if (v5)
      {
        while ((v5[3] & 0x3FC0) != 0x1340)
        {
          v5 = v5[1];
          if (!v5)
          {
            goto LABEL_53;
          }
        }

        while (v5 != v12)
        {
          v25 = PPStreamRemoveOperation(a1, v5);
          if (!v25)
          {
            break;
          }

          v5 = v25;
        }
      }

LABEL_53:
      v26 = PPStreamRemoveOperation(a1, v6);
      for (i = *(v26 + 88); i != *a5; i = *(v26 + 88))
      {
        v26 = *(v26 + 8);
      }

      v43 = 0;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 5696;
      v28 = *(v26 + 24);
      if ((v28 & 0x3FC0) == 0x2200)
      {
        v26 = *v26;
        v28 = *(v26 + 24);
      }

      if ((v28 & 0x3FC0) == 0x1340)
      {
        inserted = PPStreamInsertOperationBeforeChunk(a1, &v38, 0, v26);
        v12[3] = v12[3] & 0x3FFFFFFFFFFFLL | (*(v26 + 88) << 46);
        *v35 = inserted;
      }

      else
      {
        v31 = PPStreamInsertOperationAfterChunk(a1, &v38, 0, v26);
        *v35 = v31;
        HIDWORD(v42) = 0;
        LODWORD(v43) = 0;
        v39 = 0u;
        v40 = 0u;
        *&v41 = 0;
        v38 = 4928;
        v32 = PPStreamInsertOperationAfterChunk(a1, &v38, 0, v31);
        v12[3] = v12[3] & 0x3FFFFFFFFFFFLL | (*(v32 + 22) << 46);
        *a5 = *(v32 + 22);
      }

      return 1;
    }
  }

  else
  {
    if (!a4)
    {
      return 0;
    }

    v37 = *(v6 + 8);
    v19 = RemoveConditionalReturns(a1, &v37, a3, a5);
    if (v19)
    {
      v20 = *v35;
      if (*v35)
      {
        do
        {
          if ((v20[3] & 0x3FC0) == 0x1340)
          {
            break;
          }

          v20 = v20[1];
        }

        while (v20);
      }

      v43 = 0;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 5632;
      for (j = PPStreamInsertOperationBeforeChunk(a1, &v38, 0, v20); v20; v20 = PPStreamRemoveOperation(a1, v20))
      {
        if (v20 == v6)
        {
          break;
        }
      }

      v5[3] = v5[3] & 0x3FFFFFFFFFFFLL | (*(PPStreamRemoveOperation(a1, v20) + 88) << 46);
      HIDWORD(v42) = 0;
      LODWORD(v43) = 0;
      *&v41 = 0;
      v40 = 0u;
      v39 = 0u;
      v38 = 5696;
      v22 = v37;
      v23 = v37[3];
      if ((v23 & 0x3FC0) == 0x2200)
      {
        v22 = *v37;
        v23 = *(*v37 + 24);
      }

      if ((v23 & 0x3FC0) == 0x1340)
      {
        *v35 = PPStreamInsertOperationBeforeChunk(a1, &v38, 0, v22);
        v24 = *(v22 + 88);
      }

      else
      {
        v33 = PPStreamInsertOperationAfterChunk(a1, &v38, 0, v22);
        *v35 = v33;
        HIDWORD(v42) = 0;
        LODWORD(v43) = 0;
        v39 = 0u;
        v40 = 0u;
        *&v41 = 0;
        v38 = 4928;
        v24 = *(PPStreamInsertOperationAfterChunk(a1, &v38, 0, v33) + 22);
        *a5 = v24;
      }

      *(j + 3) = *(j + 3) & 0x3FFFFFFFFFFFLL | (v24 << 46);
    }

    return v19 != 0;
  }

  return result;
}

uint64_t OperationBlockBoundary(_DWORD *a1)
{
  v1 = (*a1 >> 6) - 85;
  if (v1 <= 0x3A)
  {
    if (((1 << v1) & 0x80000000400007) != 0)
    {
      return 1;
    }

    if (((1 << v1) & 0x400000000800070) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t CheckRemoveAvailableCopyTable(unint64_t a1, int a2, int a3, uint64_t *a4, uint64_t a5)
{
  v8 = a1;
  v9 = HIWORD(a1);
  if ((a1 & 0x100000000) != 0)
  {
    result = GetStreamArray((a1 >> 12) & 7, v9 + a2, a5);
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v11 = *(a4 + 2);
  if (v11)
  {
    v12 = 0;
    v13 = (v8 >> 12) & 7;
    v14 = v9 + a2;
    v15 = *a4;
    v16 = *a4 + 40;
    v17 = *a4 + 24;
    do
    {
      v18 = (v15 + 72 * v12);
      if (!*v18)
      {
        goto LABEL_57;
      }

      if ((result & 0x80000000) != 0 || result != v18[16])
      {
        v19 = v18[15];
        v20 = v18[1];
        if (v19)
        {
          v21 = v20 == v13;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          v22 = v18[2];
          if (v22 <= v14 && v14 <= v18[5] + v22)
          {
            goto LABEL_36;
          }
        }

        else if (v20 != v13)
        {
          goto LABEL_34;
        }

        if (v19 != a3 || v18[2] != v14)
        {
LABEL_34:
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_38;
        }

        v24 = 0;
        while (1)
        {
          if (*(v16 + 4 * v24) == 1)
          {
            v25 = v24 == 2 ? BYTE2(v8) : v8 >> 15;
            v26 = v24 ? v8 >> 17 : v8 >> 18;
            if (v24 <= 1)
            {
              v25 = v26;
            }

            if (v25)
            {
              break;
            }
          }

          if (++v24 == 4)
          {
            goto LABEL_34;
          }
        }
      }

LABEL_36:
      *v18 = 0;
      if ((result & 0x80000000) == 0)
      {
LABEL_37:
        if (result == *(v15 + 72 * v12 + 68))
        {
          goto LABEL_42;
        }
      }

LABEL_38:
      v27 = v18[15];
      v28 = v18[3];
      if (v27 && v28 == v13)
      {
        v29 = v18[4];
        if (v29 > v14 || v14 > v18[5] + v29)
        {
LABEL_44:
          if (v27 != a3 || v18[4] != v14)
          {
            goto LABEL_57;
          }

          v30 = 0;
          while (2)
          {
            if (*(v16 + v30))
            {
              v31 = *(v17 + v30);
              if (v31 > 1)
              {
                LOBYTE(v32) = BYTE2(v8);
                if (v31 != 2)
                {
                  if (v31 != 3)
                  {
                    goto LABEL_56;
                  }

                  v32 = v8 >> 15;
                }
              }

              else
              {
                v32 = v8 >> 18;
                if (v31)
                {
                  v32 = v8 >> 17;
                  if (v31 != 1)
                  {
                    goto LABEL_56;
                  }
                }
              }

              if (v32)
              {
                break;
              }
            }

LABEL_56:
            v30 += 4;
            if (v30 == 16)
            {
              goto LABEL_57;
            }

            continue;
          }
        }

LABEL_42:
        *v18 = 0;
        goto LABEL_57;
      }

      if (v28 == v13)
      {
        goto LABEL_44;
      }

LABEL_57:
      ++v12;
      v16 += 72;
      v17 += 72;
    }

    while (v12 != v11);
  }

  return result;
}

uint64_t GetStreamArray(int a1, unsigned int a2, uint64_t a3)
{
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      v3 = **(a3 + 80);
      if (v3)
      {
        result = 0;
        while (1)
        {
          v5 = *(v3 + 24);
          if (a2 >= WORD1(v5) && HIWORD(v5) >= a2)
          {
            break;
          }

          result = (result + 1);
          v3 = *(v3 + 8);
          if (!v3)
          {
            return 0xFFFFFFFFLL;
          }
        }

        return result;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v7 = **(a3 + 72);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  while (1)
  {
    v8 = *(v7 + 24);
    if (a2 >= WORD1(v8) && HIWORD(v8) >= a2)
    {
      break;
    }

    result = (result + 1);
    v7 = *(v7 + 8);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

_DWORD *FindMatchingAvailableCopy(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    return 0;
  }

  for (result = *a2; !*result || result[1] != a1[1] || result[2] != a1[2] || result[3] != a1[3] || result[4] != a1[4] || result[14] != a1[14] || result[15] != a1[15]; result += 18)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

void *gleCopyParamBindings(_DWORD *a1, void *a2)
{
  v4 = (16 * a1[1] + 8 * *a1);
  v5 = malloc_type_malloc(v4 + 16, 0xCA0EF1E7uLL);
  if (!v5)
  {
    abort();
  }

  *a2 = v5;
  *v5 = *a1;
  v5[2] = a1[2];
  v6 = v5 + 4;

  return memcpy(v6, a1 + 4, v4);
}

void *gleCopyAttribBindings(_DWORD *a1, void *a2)
{
  v4 = 8 * *a1 + 8;
  v5 = malloc_type_malloc(v4, 0xCA0EF1E7uLL);
  if (!v5)
  {
    abort();
  }

  *a2 = v5;

  return memcpy(v5, a1, v4);
}

char *glpCallVertexStateToLLVMIR(uint64_t a1, void *a2, void *a3, void *a4, void *a5, _DWORD *a6)
{
  v12 = *a1;
  *a1 &= ~0x2000000000000000uLL;
  bzero(v36, 0x7E8uLL);
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *(v41 + 14) = v13;
  v40 = v13;
  v41[0] = v13;
  v38 = v13;
  v39 = v13;
  v37 = v13;
  memset(&v36[2], 255, 0x754uLL);
  v46 = ((*(a1 + 32) >> 1) & 0x800 | (((*(a1 + 32) >> 8) & 3) << 9) | (*(a1 + 8) >> 21) & 0x1F8) ^ 0x401;
  v35[0] = 0;
  v35[1] = &v47;
  v36[824] = 4096;
  v44 = gleVStateProgram_IgnoreOption;
  gleVStateProgram_AllocateOutputs(a1, v35);
  if ((v12 & 0x100) == 0)
  {
    gleVStateProgram_GetAttrib(v35, 0);
  }

  gleVStateProgram_Core(a1, v35);
  v14 = v46;
  if ((v46 & 1) == 0)
  {
    v15 = **(v35[0] + 104);
    if (v15)
    {
      *(v15 + 24) |= 0x4000uLL;
      v14 = v46;
    }
  }

  v44 = gleVStateProgram_LLVMAddOperation;
  if ((v14 & 1) == 0)
  {
    gleVStateProgram_AllocateOutputs(a1, v35);
  }

  if ((*(a1 + 1) & 1) == 0)
  {
    gleVStateProgram_GetAttrib(v35, 0);
  }

  gleVStateProgram_Core(a1, v35);
  if ((v46 & 1) == 0)
  {
    v16 = **(v35[0] + 104);
    if (v16)
    {
      *(v16 + 24) |= 0x4000uLL;
    }
  }

  v17 = 8 * v43 + 64;
  v18 = v17 + 8 * v42 + 8;
  v19 = malloc_type_malloc(v17 + 8 * v42 + 8, 0xCA0EF1E7uLL);
  if (!v19)
  {
    goto LABEL_18;
  }

  v20 = v19;
  *v19 = 0x3000000030;
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = 0;
  *(v19 + 3) = 0;
  v45 = v19;
  v21 = 0x2000000020;
  if ((v46 & 4) == 0)
  {
    v21 = 0;
  }

  *(v19 + 4) = ((*a1 >> 60) | (8 * v46)) & 0x14;
  *(v45 + 5) = v21;
  v45[4] = (*a1 & 0x100) == 0;
  gleVStateProgram_AddParams(v35);
  gleVStateProgram_AddAttribs(v35);
  v22 = malloc_type_malloc(0xE8uLL, 0xCA0EF1E7uLL);
  if (!v22)
  {
LABEL_18:
    abort();
  }

  v23 = v22;
  *v22 = 0x1000000E4;
  v24 = *a1;
  *(v22 + 24) = *(a1 + 16);
  *(v22 + 8) = v24;
  v25 = *(a1 + 32);
  v26 = *(a1 + 48);
  v27 = *(a1 + 64);
  *(v22 + 88) = *(a1 + 80);
  *(v22 + 72) = v27;
  *(v22 + 56) = v26;
  *(v22 + 40) = v25;
  v28 = *(a1 + 96);
  v29 = *(a1 + 112);
  v30 = *(a1 + 128);
  *(v22 + 152) = *(a1 + 144);
  *(v22 + 136) = v30;
  *(v22 + 120) = v29;
  *(v22 + 104) = v28;
  v31 = *(a1 + 160);
  v32 = *(a1 + 176);
  v33 = *(a1 + 192);
  *(v22 + 216) = *(a1 + 208);
  *(v22 + 200) = v33;
  *(v22 + 184) = v32;
  *(v22 + 168) = v31;
  gleCopyParamBindings((v20 + *(v20 + 1)), a2);
  gleCopyAttribBindings((v20 + *(v20 + 2)), a3);
  *a4 = v20[4];
  *a5 = v20[5];
  *a6 = *(v20 + 4);
  free(v20);
  *a1 = *a1 & 0xDFFFFFFFFFFFFFFFLL | (((v12 >> 61) & 1) << 61);
  return v23;
}

unsigned __int16 *glpVertexStateToPPStream(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  v21 = 0;
  bzero(v23, 0x7E8uLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *(v28 + 14) = v5;
  v27 = v5;
  v28[0] = v5;
  v25 = v5;
  v26 = v5;
  v24 = v5;
  memset(&v23[4], 255, 0x754uLL);
  v22[1] = 0;
  v22[0] = PPStreamCreate();
  *v22[0] = -31200;
  v32 = gleVStateProgram_AddPPStreamOperation;
  if ((*(a1 + 1) & 1) == 0)
  {
    gleVStateProgram_GetAttrib(v22, 0);
  }

  gleVStateProgram_Core(a1, v22);
  if ((v33 & 1) == 0)
  {
    v6 = **(v22[0] + 13);
    if (v6)
    {
      *(v6 + 24) |= 0x4000uLL;
    }
  }

  gleVStateProgram_AddAttribs(v22);
  gleVStateProgram_AddParams(v22);
  if (v29 >= 1)
  {
    v7 = 0;
    v8 = 1694;
    do
    {
      v9 = *(v22 + v8);
      *&v34[0] = 0;
      *(&v34[0] + 1) = v7;
      if ((v9 - 3) > 3u)
      {
        v10 = 192;
      }

      else
      {
        v10 = (*(a1 + 32) << 9) & 0x20000 | (((*(a1 + 32) >> 9) & 1) << 16) | 0xC0;
      }

      if (v9 <= 6u)
      {
        if (v9 <= 2u)
        {
          if (v9)
          {
            if (v9 == 1)
            {
              v12 = v10 & 0xFFFFFFFFFFFFE07FLL;
              v13 = 0x500001140;
              goto LABEL_36;
            }

            v11 = v10 & 0xFFFFFFFFFFFFE03FLL | 0x300;
          }

          else
          {
            v11 = v10 & 0xFFFFFFFFFFFFE0FFLL | 0x100;
          }
        }

        else
        {
          if (v9 <= 4u)
          {
            if (v9 == 3)
            {
              v11 = v10 & 0xFFFFFFFEFFFFE0FFLL | 0x400;
            }

            else
            {
              v11 = (v10 & 0xFFFFFFFEFFFFE0FFLL) + 0x100000400;
            }

            goto LABEL_37;
          }

          if (v9 == 5)
          {
            v12 = v10 & 0xFFFFFFFEFFFFE0FFLL;
            v13 = 1280;
LABEL_36:
            v11 = v12 | v13;
            goto LABEL_37;
          }

          if (v9 != 6)
          {
LABEL_35:
            v12 = v10 & 0xFFFFFF80FFFFE0FFLL | (((v9 + 49) & 0x3F) << 32);
            v13 = 0x4000001100;
            goto LABEL_36;
          }

          v11 = (v10 & 0xFFFFFFFEFFFFE0FFLL) + 0x100000500;
        }
      }

      else if (v9 > 0x2Eu)
      {
        if (v9 - 48 < 2)
        {
          v11 = v10 & 0xFFFFFFFFFFFFE0FFLL | ((v9 & 0x1F ^ 0x10u) << 32) | 0xA00;
        }

        else
        {
          if (v9 == 47)
          {
            v12 = v10 & 0xFFFFFFFFFFFFE1FFLL;
            v13 = 2304;
            goto LABEL_36;
          }

          if (v9 != 50)
          {
            goto LABEL_35;
          }

          v11 = v10 & 0xFFFFFFFEFFFFE0FFLL | 0x100000100;
        }
      }

      else
      {
        if (v9 - 7 >= 8)
        {
          goto LABEL_35;
        }

        v11 = v10 & 0xFFFFFF80FFFFE0FFLL | ((v9 + 1) << 32) | 0x1100;
      }

LABEL_37:
      *&v34[0] = v11;
      PPStreamAddOutputBinding(v22[0], v34);
      ++v7;
      v8 += 4;
    }

    while (v7 < v29);
  }

  if (v30)
  {
    for (i = 0; i < v30; ++i)
    {
      LODWORD(v34[0]) = i;
      PPStreamAddAddressUsage(v22[0], v34);
    }
  }

  if (v31)
  {
    for (j = 0; j < v31; ++j)
    {
      v34[0] = xmmword_23A29B2A0;
      DWORD2(v34[0]) = j;
      PPStreamAddTempUsage(v22[0], v34);
    }
  }

  if ((*(a1 + 1) & 1) == 0)
  {
    PPStreamAddOption(v22[0], 0);
  }

  Stream = PPStreamGetStream(v22[0], &v21);
  PPStreamFree(v22[0]);
  *a4 = PPStreamTokenGetProgramOptions(Stream);
  *a2 = *(Stream + 1);
  *a3 = *(Stream + 2);
  return Stream;
}

uint64_t gleVStateProgram_Core(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  v332 = result;
  if ((*result & 0x200) == 0)
  {
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_3;
    }

LABEL_136:
    memset(v333, 0, 80);
    if ((v4 & 0xFF0000000000) != 0)
    {
      v74 = 0;
      v75 = 48;
      while (1)
      {
        if ((*(v3 + 33) & 4) != 0)
        {
          memset(&v333[1] + 8, 0, 56);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100001201;
          *(a2 + 16) = 1;
          Attrib = gleVStateProgram_GetAttrib(a2, 7u);
          *(a2 + 2002) = 1;
          *(&v333[0] + 1) = 1919172608;
          *&v333[1] = ((v74 & 3) << 9) | (Attrib << 48) | ((v74 & 3) << 11) | ((v74 & 3) << 13) | ((v74 & 3) << 15);
          (*(a2 + 2016))(a2, v333);
          v76 = (*v3 >> 57) & 1;
          v77 = a2;
          v78 = 152;
          v79 = 1;
        }

        else
        {
          v76 = (v4 >> 57) & 1;
          v77 = a2;
          v78 = v75;
          v79 = 0;
        }

        gleVStateProgram_MultMatrix3x3(v77, v78, 23, 23, v79, v76);
        if ((*v3 & 2) != 0)
        {
          if (!v74)
          {
            memset(&v333[2], 0, 48);
            *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v92 = *(a2 + 1946);
            if (v92 == 0xFFFF)
            {
              v92 = *(a2 + 2004);
              *(a2 + 1946) = v92;
              *(a2 + 2004) = v92 + 1;
            }

            *&v333[1] = (v92 << 48) | 0x19C840;
            v93 = *(a2 + 1944);
            if (v93 == 0xFFFF)
            {
              v93 = *(a2 + 2004);
              *(a2 + 1944) = v93;
              *(a2 + 2004) = v93 + 1;
            }

            v91 = (v93 << 48) | 0x40;
            goto LABEL_164;
          }

          memset(v333 + 8, 0, 72);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v83 = *(a2 + 1946);
          if (v83 == 0xFFFF)
          {
            v83 = *(a2 + 2004);
            *(a2 + 1946) = v83;
            *(a2 + 2004) = v83 + 1;
          }

          *&v333[1] = (v83 << 48) | 0x19C840;
          v84 = *(a2 + 1944);
          if (v84 == 0xFFFF)
          {
            v84 = *(a2 + 2004);
            *(a2 + 1944) = v84;
            *(a2 + 2004) = v84 + 1;
          }

          v82 = ((v74 & 3) << 9) | (v84 << 48) | ((v74 & 3) << 11) | ((v74 & 3) << 13) | ((v74 & 3) << 15) | 0x40;
        }

        else
        {
          if (!v74)
          {
            memset(&v333[2], 0, 48);
            *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v90 = *(a2 + 1946);
            if (v90 == 0xFFFF)
            {
              v90 = *(a2 + 2004);
              *(a2 + 1946) = v90;
              *(a2 + 2004) = v90 + 1;
            }

            *&v333[1] = (v90 << 48) | 0x19C840;
            v91 = gleVStateProgram_GetAttrib(a2, 4u) << 48;
LABEL_164:
            *(&v333[1] + 1) = v91;
            v87 = *(a2 + 1902);
            if (v87 == 0xFFFF)
            {
              v87 = *(a2 + 2004);
              *(a2 + 1902) = v87;
              *(a2 + 2004) = v87 + 1;
            }

LABEL_166:
            v86 = v87 << 48;
            goto LABEL_167;
          }

          memset(v333 + 8, 0, 72);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v81 = *(a2 + 1946);
          if (v81 == 0xFFFF)
          {
            v81 = *(a2 + 2004);
            *(a2 + 1946) = v81;
            *(a2 + 2004) = v81 + 1;
          }

          *&v333[1] = (v81 << 48) | 0x19C840;
          v82 = ((v74 & 3) << 9) | (gleVStateProgram_GetAttrib(a2, 4u) << 48) | ((v74 & 3) << 11) | ((v74 & 3) << 13) | ((v74 & 3) << 15);
        }

        *(&v333[1] + 1) = v82;
        v85 = *(a2 + 1902);
        if (v85 == 0xFFFF)
        {
          v87 = *(a2 + 2004);
          v88 = *(a2 + 2004);
          *(a2 + 1902) = v87;
          v89 = v88 + 1;
          *(a2 + 2004) = v89;
          *&v333[2] = (v87 << 48) | 0x19C840;
          if ((v89 & 0x10000) == 0)
          {
            goto LABEL_166;
          }

          v86 = 0;
          *(a2 + 1902) = v89;
          *(a2 + 2004) = 1;
        }

        else
        {
          v86 = v85 << 48;
          *&v333[2] = (v85 << 48) | 0x19C840;
        }

LABEL_167:
        *(&v333[0] + 1) = v86 | 0x72679000;
        result = (*(a2 + 2016))(a2, v333);
        ++v74;
        v4 = *v3;
        v75 += 8;
        if (v74 >= (WORD2(*v3) >> 8))
        {
          goto LABEL_174;
        }
      }
    }

    if ((v4 & 0x10) != 0)
    {
      *(&v333[4] + 1) = 0;
      *(&v333[3] + 8) = 0uLL;
      *(&v333[2] + 8) = 0uLL;
      *(&v333[1] + 8) = 0uLL;
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v333[1] = (gleVStateProgram_GetAttrib(a2, 1u) << 48) | 0x19C800;
      v94 = *(a2 + 1902);
      if (v94 == 0xFFFF)
      {
        v94 = *(a2 + 2004);
        *(a2 + 1902) = v94;
        *(a2 + 2004) = v94 + 1;
      }

      *(&v333[0] + 1) = (v94 << 48) | 0x72679000;
      result = (*(a2 + 2016))(a2, v333);
    }

    else
    {
      result = gleVStateProgram_MultMatrix3x3(a2, 48, 1, 1, 0, (v4 & 0x200000000000000) != 0);
    }

LABEL_174:
    if ((*v3 & 0x20) != 0)
    {
      result = gleVStateProgram_NormalizeVector(a2, 1, 1, 23, 23);
    }

    v95 = *(v3 + 24);
    if (!v95)
    {
LABEL_257:
      v3 = v332;
      v4 = *v332;
      if ((*v332 & 0x100) == 0)
      {
        goto LABEL_262;
      }

LABEL_258:
      if ((v4 & 0xFF0000000000) != 0)
      {
        result = gleVStateProgram_MultMatrix4x4(a2, 0, 0, 0, 23, 0, 0, 1, HIBYTE(v4) & 1);
        goto LABEL_262;
      }

      if ((v4 & 4) == 0)
      {
        result = gleVStateProgram_MultMatrix4x4(a2, 0, 8, 0, 23, 1, 0, 1, HIBYTE(v4) & 1);
        goto LABEL_262;
      }

      memset(&v333[1] + 8, 0, 56);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v333[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
      if ((*(v3 + 1) & 0x80) != 0)
      {
        v177 = *(a2 + 1892);
        if (v177 == 0xFFFF)
        {
          v179 = (a2 + 1892);
          v178 = 50;
          goto LABEL_296;
        }
      }

      else
      {
        v177 = *(a2 + 1692);
        if (v177 == 0xFFFF)
        {
          v178 = 0;
          v179 = (a2 + 1692);
LABEL_296:
          v183 = *(a2 + 2000);
          v177 = *(a2 + 2000);
          *v179 = v183;
          *(a2 + 4 * v183 + 1694) = v178;
          *(a2 + 2000) = v183 + 1;
        }
      }

      *(&v333[0] + 1) = ((v177 << 48) | 0x72679000) + 0x2000;
      result = (*(a2 + 2016))(a2, v333);
      goto LABEL_262;
    }

    v96 = HIDWORD(v95) & v95;
    if (!HIDWORD(v95))
    {
LABEL_237:
      v144 = 0;
      v145 = v96 ^ v95;
      v146 = v96 ^ HIDWORD(v95);
      do
      {
        v147 = a2 + 2 * v144;
        if (((v145 >> v144) & 0x1010101) != 0)
        {
          memset(&v333[1] + 8, 0, 56);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v148 = *(a2 + 1902);
          if (v148 == 0xFFFF)
          {
            v148 = *(a2 + 2004);
            *(a2 + 1902) = v148;
            *(a2 + 2004) = v148 + 1;
          }

          *&v333[1] = (v148 << 48) | 0x19C840;
          v149 = *(v147 + 1978);
          if (v149 == 0xFFFF)
          {
            v149 = *(a2 + 2004);
            *(v147 + 1978) = v149;
            *(a2 + 2004) = v149 + 1;
          }

          *(&v333[0] + 1) = ((((v145 >> v144) & 1) << 18) | (v149 << 48) | (v145 >> v144 << 9) & 0x20000 | ((v145 >> v144) & 0x10000) | (v145 >> v144 >> 9) & 0x8000) + 1918898176;
          result = (*(a2 + 2016))(a2, v333);
        }

        if (((v146 >> v144) & 0x1010101) != 0)
        {
          memset(&v333[1] + 8, 0, 56);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v150 = *(a2 + 1946);
          if (v150 == 0xFFFF)
          {
            v150 = *(a2 + 2004);
            *(a2 + 1946) = v150;
            *(a2 + 2004) = v150 + 1;
          }

          *&v333[1] = (v150 << 48) | 0x19C840;
          v151 = *(v147 + 1978);
          if (v151 == 0xFFFF)
          {
            v151 = *(a2 + 2004);
            *(v147 + 1978) = v151;
            *(a2 + 2004) = v151 + 1;
          }

          *(&v333[0] + 1) = ((((v146 >> v144) & 1) << 18) | (v151 << 48) | (v146 >> v144 << 9) & 0x20000 | ((v146 >> v144) & 0x10000) | (v146 >> v144 >> 9) & 0x8000) + 1918898176;
          result = (*(a2 + 2016))(a2, v333);
        }

        if (((v96 >> v144) & 0x1010101) != 0)
        {
          memset(&v333[1] + 8, 0, 56);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v152 = *(a2 + 1954);
          if (v152 == 0xFFFF)
          {
            v152 = *(a2 + 2004);
            *(a2 + 1954) = v152;
            *(a2 + 2004) = v152 + 1;
          }

          *&v333[1] = (v152 << 48) | 0x19C840;
          v153 = *(v147 + 1978);
          if (v153 == 0xFFFF)
          {
            v153 = *(a2 + 2004);
            *(v147 + 1978) = v153;
            *(a2 + 2004) = v153 + 1;
          }

          *(&v333[0] + 1) = ((((v96 >> v144) & 1) << 18) | (v153 << 48) | (v96 >> v144 << 9) & 0x20000 | ((v96 >> v144) & 0x10000) | (v96 >> v144 >> 9) & 0x8000) + 1918898176;
          result = (*(a2 + 2016))(a2, v333);
        }

        ++v144;
      }

      while (v144 != 8);
      goto LABEL_257;
    }

    gleVStateProgram_NormalizeVector(a2, 0, 23, 27, 27);
    memset(&v333[2], 0, 48);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
    *(a2 + 16) = 2;
    v97 = *(a2 + 1902);
    if (v97 == 0xFFFF)
    {
      v97 = *(a2 + 2004);
      *(a2 + 1902) = v97;
      *(a2 + 2004) = v97 + 1;
    }

    *&v333[1] = (v97 << 48) | 0x19C840;
    v98 = *(a2 + 1946);
    if (v98 == 0xFFFF)
    {
      v98 = *(a2 + 2004);
      *(a2 + 1946) = v98;
      *(a2 + 2004) = v98 + 1;
    }

    *(&v333[1] + 1) = (v98 << 48) | 0x19C840;
    v99 = *(a2 + 1954);
    if (v99 == 0xFFFF)
    {
      v99 = *(a2 + 2004);
      *(a2 + 1954) = v99;
      *(a2 + 2004) = v99 + 1;
    }

    *(&v333[0] + 1) = (v99 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, v333);
    memset(&v333[1], 0, 64);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v100 = *(a2 + 1954);
    if (v100 == 0xFFFF)
    {
      v103 = *(a2 + 2004);
      v104 = *(a2 + 2004);
      *(a2 + 1954) = v103;
      v105 = v104 + 1;
      *(a2 + 2004) = v104 + 1;
      v102 = (v103 << 48) | 0x19C840;
      *&v333[1] = v102;
      if ((v105 & 0x10000) != 0)
      {
        *(a2 + 1954) = v105;
        *(a2 + 2004) = 1;
        v102 = 1689664;
        v106 = 1919389696;
        goto LABEL_190;
      }

      v101 = v103 << 48;
    }

    else
    {
      v101 = v100 << 48;
      v102 = (v100 << 48) | 0x19C840;
      *&v333[1] = v102;
    }

    v106 = v101 | 0x72679000;
LABEL_190:
    *(&v333[1] + 1) = v102;
    *(&v333[0] + 1) = v106;
    (*(a2 + 2016))(a2, v333);
    memset(v333 + 8, 0, 72);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
    *(a2 + 16) = 3;
    v107 = *(a2 + 1954);
    if (v107 == 0xFFFF)
    {
      v107 = *(a2 + 2004);
      *(a2 + 1954) = v107;
      *(a2 + 2004) = v107 + 1;
    }

    *&v333[1] = (v107 << 48) | 0x19C840;
    v108 = *(a2 + 1902);
    if (v108 == 0xFFFF)
    {
      v108 = *(a2 + 2004);
      *(a2 + 1902) = v108;
      *(a2 + 2004) = v108 + 1;
    }

    *(&v333[1] + 1) = ((v108 << 48) | 0x19C840) + 16;
    v109 = *(a2 + 1946);
    if (v109 == 0xFFFF)
    {
      v111 = *(a2 + 2004);
      v112 = *(a2 + 2004);
      *(a2 + 1946) = v111;
      v113 = v112 + 1;
      *(a2 + 2004) = v113;
      *&v333[2] = (v111 << 48) | 0x19C840;
      if ((v113 & 0x10000) != 0)
      {
        v110 = 0;
        *(a2 + 1946) = v113;
        *(a2 + 2004) = 1;
      }

      else
      {
        v110 = v111 << 48;
      }
    }

    else
    {
      v110 = v109 << 48;
      *&v333[2] = (v109 << 48) | 0x19C840;
    }

    *(&v333[0] + 1) = v110 | 0x72679000;
    result = (*(a2 + 2016))(a2, v333);
    if (!v96)
    {
      goto LABEL_237;
    }

    memset(&v333[2], 0, 48);
    v114 = *(a2 + 16);
    *(a2 + 16) = 2;
    *&v333[0] = (8 * (v114 & 7)) | 0x3100011042;
    v115 = *(a2 + 1946);
    if (v115 == 0xFFFF)
    {
      v115 = *(a2 + 2004);
      *(a2 + 1946) = v115;
      *(a2 + 2004) = v115 + 1;
    }

    *&v333[1] = (v115 << 48) | 0x19C840;
    *(&v333[1] + 1) = 2560163840;
    v116 = *(a2 + 1954);
    if (v116 == 0xFFFF)
    {
      v116 = *(a2 + 2004);
      *(a2 + 1954) = v116;
      *(a2 + 2004) = v116 + 1;
    }

    *(&v333[0] + 1) = (v116 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, v333);
    memset(v333 + 8, 0, 72);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v117 = *(a2 + 1946);
    if (v117 == 0xFFFF)
    {
      v117 = *(a2 + 2004);
      *(a2 + 1946) = v117;
      *(a2 + 2004) = v117 + 1;
    }

    *&v333[1] = (v117 << 48) | 0x19C840;
    v118 = *(a2 + 1954);
    if (v118 == 0xFFFF)
    {
      v120 = *(a2 + 2004);
      v121 = *(a2 + 2004);
      *(a2 + 1954) = v120;
      v122 = v121 + 1;
      *(a2 + 2004) = v122;
      *(&v333[1] + 1) = (v120 << 48) | 0x19C840;
      if ((v122 & 0x10000) != 0)
      {
        v119 = 0;
        *(a2 + 1954) = v122;
        *(a2 + 2004) = 1;
      }

      else
      {
        v119 = v120 << 48;
      }
    }

    else
    {
      v119 = v118 << 48;
      *(&v333[1] + 1) = (v118 << 48) | 0x19C840;
    }

    *(&v333[0] + 1) = v119 | 0x72679000;
    (*(a2 + 2016))(a2, v333);
    memset(&v333[1], 0, 64);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
    *(a2 + 16) = 2;
    v123 = *(a2 + 1954);
    if (v123 == 0xFFFF)
    {
      v126 = *(a2 + 2004);
      v127 = *(a2 + 2004);
      *(a2 + 1954) = v126;
      v128 = v127 + 1;
      *(a2 + 2004) = v127 + 1;
      v125 = (v126 << 48) | 0x19C840;
      *&v333[1] = v125;
      if ((v128 & 0x10000) != 0)
      {
        *(a2 + 1954) = v128;
        *(a2 + 2004) = 1;
        v125 = 1689664;
        v129 = 1919389696;
LABEL_217:
        *(&v333[1] + 1) = v125;
        *(&v333[0] + 1) = v129;
        (*(a2 + 2016))(a2, v333);
        memset(&v333[1], 0, 64);
        v130 = *(a2 + 16);
        *(a2 + 16) = 1;
        *&v333[0] = (8 * (v130 & 7)) | 0x100100341;
        v131 = *(a2 + 1954);
        if (v131 == 0xFFFF)
        {
          v133 = *(a2 + 2004);
          v134 = *(a2 + 2004);
          *(a2 + 1954) = v133;
          v135 = v134 + 1;
          *(a2 + 2004) = v135;
          *&v333[1] = (v133 << 48) | 0x19C840;
          if ((v135 & 0x10000) != 0)
          {
            v132 = 0;
            *(a2 + 1954) = v135;
            *(a2 + 2004) = 1;
          }

          else
          {
            v132 = v133 << 48;
          }
        }

        else
        {
          v132 = v131 << 48;
          *&v333[1] = (v131 << 48) | 0x19C840;
        }

        *(&v333[0] + 1) = v132 | 0x72679000;
        (*(a2 + 2016))(a2, v333);
        memset(&v333[2], 0, 48);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v136 = *(a2 + 1954);
        if (v136 == 0xFFFF)
        {
          v136 = *(a2 + 2004);
          *(a2 + 1954) = v136;
          *(a2 + 2004) = v136 + 1;
        }

        *&v333[1] = (v136 << 48) | 0x19C840;
        v137 = a2 + 260;
        v138 = *(a2 + 1664);
        if (v138 == 0xFFFF)
        {
          v139 = *(a2 + 1998);
          v138 = *(a2 + 1998);
          *(a2 + 1664) = v139;
          *(v137 + 4 * v139 + 2) = 351;
          *(a2 + 1998) = v139 + 1;
          v136 = *(a2 + 1954);
        }

        *(&v333[1] + 1) = (v138 << 48) | 0x80;
        if (v136 == 0xFFFF)
        {
          v136 = *(a2 + 2004);
          *(a2 + 1954) = v136;
          *(a2 + 2004) = v136 + 1;
        }

        *(&v333[0] + 1) = (v136 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v333);
        memset(v333 + 8, 0, 72);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v140 = *(a2 + 1946);
        if (v140 == 0xFFFF)
        {
          v140 = *(a2 + 2004);
          *(a2 + 1946) = v140;
          *(a2 + 2004) = v140 + 1;
        }

        *&v333[1] = (v140 << 48) | 0x19C840;
        v141 = *(a2 + 1954);
        if (v141 == 0xFFFF)
        {
          v141 = *(a2 + 2004);
          *(a2 + 1954) = v141;
          *(a2 + 2004) = v141 + 1;
        }

        *(&v333[1] + 1) = (v141 << 48) | 0x19C840;
        v142 = *(a2 + 1664);
        if (v142 == 0xFFFF)
        {
          v143 = *(a2 + 1998);
          v142 = *(a2 + 1998);
          *(a2 + 1664) = v143;
          *(v137 + 4 * v143 + 2) = 351;
          *(a2 + 1998) = v143 + 1;
          v141 = *(a2 + 1954);
        }

        *&v333[2] = (v142 << 48) | 0x80;
        if (v141 == 0xFFFF)
        {
          v141 = *(a2 + 2004);
          *(a2 + 1954) = v141;
          *(a2 + 2004) = v141 + 1;
        }

        *(&v333[0] + 1) = (v141 << 48) | 0x72679000;
        result = (*(a2 + 2016))(a2, v333);
        goto LABEL_237;
      }

      v124 = v126 << 48;
    }

    else
    {
      v124 = v123 << 48;
      v125 = (v123 << 48) | 0x19C840;
      *&v333[1] = v125;
    }

    v129 = v124 | 0x72679000;
    goto LABEL_217;
  }

  memset(v333, 0, 80);
  v5 = *(result + 16);
  if (!v5)
  {
    goto LABEL_35;
  }

  v6 = 0;
  v329 = a2 + 260;
  v7 = a2 + 1978;
  v8 = (a2 + 912);
  for (i = 163; i != 195; i += 4)
  {
    v10 = v5 >> v6;
    if (((v5 >> v6) & 0x1010101) == 0)
    {
      goto LABEL_33;
    }

    if (v10)
    {
      memset(&v333[2], 0, 48);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
      *(a2 + 16) = 2;
      *&v333[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
      v11 = *(v8 - 6);
      if (v11 == 0xFFFF)
      {
        v12 = *(a2 + 1998);
        v11 = *(a2 + 1998);
        *(v8 - 6) = v12;
        *(v329 + 4 * v12 + 2) = i - 3;
        *(a2 + 1998) = v12 + 1;
      }

      *(&v333[1] + 1) = ((v11 << 48) | 0x19C840) + 64;
      v13 = *(v7 + 2 * v6);
      if (v13 == 0xFFFF)
      {
        v13 = *(a2 + 2004);
        *(v7 + 2 * v6) = v13;
        *(a2 + 2004) = v13 + 1;
      }

      *(&v333[0] + 1) = (v13 << 48) | 0x72641000;
      result = (*(a2 + 2016))(a2, v333);
      if ((v10 & 0x100) == 0)
      {
LABEL_10:
        if ((v10 & 0x10000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_23;
      }
    }

    else if ((v10 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    memset(&v333[2], 0, 48);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
    *(a2 + 16) = 2;
    *&v333[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
    v14 = *(v8 - 4);
    if (v14 == 0xFFFF)
    {
      v15 = *(a2 + 1998);
      v14 = *(a2 + 1998);
      *(v8 - 4) = v15;
      *(v329 + 4 * v15 + 2) = i - 2;
      *(a2 + 1998) = v15 + 1;
    }

    *(&v333[1] + 1) = ((v14 << 48) | 0x19C840) + 64;
    v16 = *(v7 + 2 * v6);
    if (v16 == 0xFFFF)
    {
      v16 = *(a2 + 2004);
      *(v7 + 2 * v6) = v16;
      *(a2 + 2004) = v16 + 1;
    }

    *(&v333[0] + 1) = (v16 << 48) | 0x72621000;
    result = (*(a2 + 2016))(a2, v333);
    if ((v10 & 0x10000) == 0)
    {
LABEL_11:
      if ((v10 & 0x1000000) == 0)
      {
        goto LABEL_33;
      }

LABEL_28:
      memset(&v333[2], 0, 48);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
      *(a2 + 16) = 2;
      *&v333[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
      v20 = *v8;
      if (v20 == 0xFFFF)
      {
        v21 = *(a2 + 1998);
        v20 = *(a2 + 1998);
        *v8 = v21;
        *(v329 + 4 * v21 + 2) = i;
        *(a2 + 1998) = v21 + 1;
      }

      *(&v333[1] + 1) = ((v20 << 48) | 0x19C840) + 64;
      v22 = *(v7 + 2 * v6);
      if (v22 == 0xFFFF)
      {
        v22 = *(a2 + 2004);
        *(v7 + 2 * v6) = v22;
        *(a2 + 2004) = v22 + 1;
      }

      *(&v333[0] + 1) = (v22 << 48) | 0x72609000;
      result = (*(a2 + 2016))(a2, v333);
      goto LABEL_33;
    }

LABEL_23:
    memset(&v333[2], 0, 48);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
    *(a2 + 16) = 2;
    *&v333[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
    v17 = *(v8 - 2);
    if (v17 == 0xFFFF)
    {
      v18 = *(a2 + 1998);
      v17 = *(a2 + 1998);
      *(v8 - 2) = v18;
      *(v329 + 4 * v18 + 2) = i - 1;
      *(a2 + 1998) = v18 + 1;
    }

    *(&v333[1] + 1) = ((v17 << 48) | 0x19C840) + 64;
    v19 = *(v7 + 2 * v6);
    if (v19 == 0xFFFF)
    {
      v19 = *(a2 + 2004);
      *(v7 + 2 * v6) = v19;
      *(a2 + 2004) = v19 + 1;
    }

    *(&v333[0] + 1) = (v19 << 48) | 0x72611000;
    result = (*(a2 + 2016))(a2, v333);
    if ((v10 & 0x1000000) != 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    ++v6;
    v8 += 8;
  }

  v3 = v332;
  v4 = *v332;
LABEL_35:
  if ((v4 & 0xFF0000000000) == 0)
  {
    if ((v4 & 0x40) != 0)
    {
      if ((v4 & 8) == 0)
      {
        result = gleVStateProgram_MultMatrix4x4(a2, 0, 16, 0, 0, 1, 0, 0, HIBYTE(v4) & 1);
        goto LABEL_98;
      }
    }

    else
    {
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_98;
      }

      if ((v4 & 8) == 0)
      {
        memset(&v333[2], 0, 48);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        *&v333[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
        v25 = *(a2 + 348);
        if (v25 == 0xFFFF)
        {
          v26 = *(a2 + 1998);
          v25 = *(a2 + 1998);
          *(a2 + 348) = v26;
          *(a2 + 4 * v26 + 262) = 22;
          *(a2 + 1998) = v26 + 1;
        }

        *(&v333[1] + 1) = ((v25 << 48) | 0x19C840) + 64;
        v27 = *(a2 + 1900);
        if (v27 == 0xFFFF)
        {
          v27 = *(a2 + 2004);
          *(a2 + 1900) = v27;
          *(a2 + 2004) = v27 + 1;
        }

        v28 = (v27 << 48) | 0x72679000;
LABEL_97:
        *(&v333[0] + 1) = v28;
        result = (*(a2 + 2016))(a2, v333);
        goto LABEL_98;
      }
    }

    memset(&v333[1] + 8, 0, 56);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    *&v333[1] = (gleVStateProgram_GetAttrib(a2, 0) << 48) | 0x19C800;
    v51 = *(a2 + 1900);
    if (v51 == 0xFFFF)
    {
      v51 = *(a2 + 2004);
      *(a2 + 1900) = v51;
      *(a2 + 2004) = v51 + 1;
    }

    v28 = (v51 << 48) | 0x72679000;
    goto LABEL_97;
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_53;
  }

  memset(&v333[2], 0, 48);
  v23 = *(a2 + 16);
  *(a2 + 16) = 2;
  *&v333[0] = (8 * (v23 & 7)) | 0x3100011042;
  *&v333[1] = (gleVStateProgram_GetAttrib(a2, 4u) << 48) | 0x19C800;
  if (*(v3 + 5) - 1 > 2)
  {
    v24 = 2182086656;
  }

  else
  {
    v24 = qword_23A2A60C0[(*(v3 + 5) - 1)];
  }

  *(&v333[1] + 1) = v24;
  v29 = *(a2 + 1944);
  if (v29 == 0xFFFF)
  {
    v29 = *(a2 + 2004);
    *(a2 + 1944) = v29;
    *(a2 + 2004) = v29 + 1;
  }

  *(&v333[0] + 1) = (v29 << 48) | 0x72679000;
  result = (*(a2 + 2016))(a2, v333);
  v4 = *v3;
  if ((*v3 & 0xFF0000000000) != 0)
  {
LABEL_53:
    v30 = 0;
    v31 = 16;
    do
    {
      if ((*(v3 + 33) & 4) != 0)
      {
        memset(&v333[1] + 8, 0, 56);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100001201;
        *(a2 + 16) = 1;
        v32 = gleVStateProgram_GetAttrib(a2, 7u);
        *(a2 + 2002) = 1;
        *(&v333[0] + 1) = 1919172608;
        *&v333[1] = ((v30 & 3) << 9) | (v32 << 48) | ((v30 & 3) << 11) | ((v30 & 3) << 13) | ((v30 & 3) << 15);
        (*(a2 + 2016))(a2, v333);
        gleVStateProgram_MultMatrix4x4(a2, 0, 144, 23, 23, 1, 1, 0, *(v3 + 7) & 1);
      }

      else
      {
        gleVStateProgram_MultMatrix4x4(a2, 0, v31, 23, 23, 1, 0, 0, HIBYTE(v4) & 1);
      }

      if ((*v3 & 2) != 0)
      {
        if (v30 < (WORD2(*v3) >> 8) - 1)
        {
          memset(&v333[1], 0, 64);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000802;
          *(a2 + 16) = 2;
          v35 = *(a2 + 1944);
          if (v35 == 0xFFFF)
          {
            v39 = *(a2 + 2004);
            v40 = *(a2 + 2004);
            *(a2 + 1944) = v39;
            v41 = v40 + 1;
            *(a2 + 2004) = v41;
            *&v333[1] = (v39 << 48) | 0x19C840;
            if ((v41 & 0x10000) != 0)
            {
              v36 = 0;
              *(a2 + 1944) = v41;
              *(a2 + 2004) = 1;
            }

            else
            {
              v36 = v39 << 48;
            }
          }

          else
          {
            v36 = v35 << 48;
            *&v333[1] = (v35 << 48) | 0x19C840;
          }

          *(&v333[1] + 1) = v36 | (43520 * (v30 & 3)) | 0x40;
          *(&v333[0] + 1) = v36 + 1918898176;
          if (*(v3 + 5) - 2 <= 2)
          {
            *(&v333[0] + 1) = qword_23A2A60D8[(*(v3 + 5) - 2)] | v36;
          }

          (*(a2 + 2016))(a2, v333);
        }

        if (!v30)
        {
          memset(&v333[2], 0, 48);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v49 = *(a2 + 1946);
          if (v49 == 0xFFFF)
          {
            v49 = *(a2 + 2004);
            *(a2 + 1946) = v49;
            *(a2 + 2004) = v49 + 1;
          }

          *&v333[1] = (v49 << 48) | 0x19C840;
          v50 = *(a2 + 1944);
          if (v50 == 0xFFFF)
          {
            v50 = *(a2 + 2004);
            *(a2 + 1944) = v50;
            *(a2 + 2004) = v50 + 1;
          }

          v38 = (v50 << 48) | 0x40;
          goto LABEL_89;
        }

        memset(v333 + 8, 0, 72);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v42 = *(a2 + 1946);
        if (v42 == 0xFFFF)
        {
          v42 = *(a2 + 2004);
          *(a2 + 1946) = v42;
          *(a2 + 2004) = v42 + 1;
        }

        *&v333[1] = (v42 << 48) | 0x19C840;
        v43 = *(a2 + 1944);
        if (v43 == 0xFFFF)
        {
          v43 = *(a2 + 2004);
          *(a2 + 1944) = v43;
          *(a2 + 2004) = v43 + 1;
        }

        v34 = ((v30 & 3) << 9) | (v43 << 48) | ((v30 & 3) << 11) | ((v30 & 3) << 13) | ((v30 & 3) << 15) | 0x40;
      }

      else
      {
        if (!v30)
        {
          memset(&v333[2], 0, 48);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v37 = *(a2 + 1946);
          if (v37 == 0xFFFF)
          {
            v37 = *(a2 + 2004);
            *(a2 + 1946) = v37;
            *(a2 + 2004) = v37 + 1;
          }

          *&v333[1] = (v37 << 48) | 0x19C840;
          v38 = gleVStateProgram_GetAttrib(a2, 4u) << 48;
LABEL_89:
          *(&v333[1] + 1) = v38;
          v46 = *(a2 + 1900);
          if (v46 == 0xFFFF)
          {
            v46 = *(a2 + 2004);
            *(a2 + 1900) = v46;
            *(a2 + 2004) = v46 + 1;
          }

LABEL_91:
          v45 = v46 << 48;
          goto LABEL_92;
        }

        memset(v333 + 8, 0, 72);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v33 = *(a2 + 1946);
        if (v33 == 0xFFFF)
        {
          v33 = *(a2 + 2004);
          *(a2 + 1946) = v33;
          *(a2 + 2004) = v33 + 1;
        }

        *&v333[1] = (v33 << 48) | 0x19C840;
        v34 = ((v30 & 3) << 9) | (gleVStateProgram_GetAttrib(a2, 4u) << 48) | ((v30 & 3) << 11) | ((v30 & 3) << 13) | ((v30 & 3) << 15);
      }

      *(&v333[1] + 1) = v34;
      v44 = *(a2 + 1900);
      if (v44 == 0xFFFF)
      {
        v46 = *(a2 + 2004);
        v47 = *(a2 + 2004);
        *(a2 + 1900) = v46;
        v48 = v47 + 1;
        *(a2 + 2004) = v48;
        *&v333[2] = (v46 << 48) | 0x19C840;
        if ((v48 & 0x10000) == 0)
        {
          goto LABEL_91;
        }

        v45 = 0;
        *(a2 + 1900) = v48;
        *(a2 + 2004) = 1;
      }

      else
      {
        v45 = v44 << 48;
        *&v333[2] = (v44 << 48) | 0x19C840;
      }

LABEL_92:
      *(&v333[0] + 1) = v45 | 0x72679000;
      result = (*(a2 + 2016))(a2, v333);
      ++v30;
      v4 = *v3;
      v31 += 8;
    }

    while (v30 < (WORD2(*v3) >> 8));
  }

LABEL_98:
  v52 = HIDWORD(*(v3 + 16));
  if (v52)
  {
    v53 = 0;
    v330 = a2 + 260;
    v54 = a2 + 1978;
    v55 = (a2 + 1040);
    v56 = 195;
    while (2)
    {
      v57 = v52 >> v53;
      if (((v52 >> v53) & 0x1010101) == 0)
      {
        goto LABEL_134;
      }

      if (v57)
      {
        memset(&v333[2], 0, 48);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        v58 = *(a2 + 1900);
        if (v58 == 0xFFFF)
        {
          v58 = *(a2 + 2004);
          *(a2 + 1900) = v58;
          *(a2 + 2004) = v58 + 1;
        }

        *&v333[1] = (v58 << 48) | 0x19C840;
        v59 = *(v55 - 6);
        if (v59 == 0xFFFF)
        {
          v60 = *(a2 + 1998);
          v59 = *(a2 + 1998);
          *(v55 - 6) = v60;
          *(v330 + 4 * v60 + 2) = v56 - 3;
          *(a2 + 1998) = v60 + 1;
        }

        *(&v333[1] + 1) = ((v59 << 48) | 0x19C840) + 64;
        v61 = *(v54 + 2 * v53);
        if (v61 == 0xFFFF)
        {
          v61 = *(a2 + 2004);
          *(v54 + 2 * v53) = v61;
          *(a2 + 2004) = v61 + 1;
        }

        *(&v333[0] + 1) = (v61 << 48) | 0x72641000;
        result = (*(a2 + 2016))(a2, v333);
        if ((v57 & 0x100) == 0)
        {
          goto LABEL_103;
        }
      }

      else if ((v57 & 0x100) == 0)
      {
LABEL_103:
        if ((v57 & 0x10000) != 0)
        {
          goto LABEL_120;
        }

        goto LABEL_104;
      }

      memset(&v333[2], 0, 48);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
      *(a2 + 16) = 2;
      v62 = *(a2 + 1900);
      if (v62 == 0xFFFF)
      {
        v62 = *(a2 + 2004);
        *(a2 + 1900) = v62;
        *(a2 + 2004) = v62 + 1;
      }

      *&v333[1] = (v62 << 48) | 0x19C840;
      v63 = *(v55 - 4);
      if (v63 == 0xFFFF)
      {
        v64 = *(a2 + 1998);
        v63 = *(a2 + 1998);
        *(v55 - 4) = v64;
        *(v330 + 4 * v64 + 2) = v56 - 2;
        *(a2 + 1998) = v64 + 1;
      }

      *(&v333[1] + 1) = ((v63 << 48) | 0x19C840) + 64;
      v65 = *(v54 + 2 * v53);
      if (v65 == 0xFFFF)
      {
        v65 = *(a2 + 2004);
        *(v54 + 2 * v53) = v65;
        *(a2 + 2004) = v65 + 1;
      }

      *(&v333[0] + 1) = (v65 << 48) | 0x72621000;
      result = (*(a2 + 2016))(a2, v333);
      if ((v57 & 0x10000) != 0)
      {
LABEL_120:
        memset(&v333[2], 0, 48);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        v66 = *(a2 + 1900);
        if (v66 == 0xFFFF)
        {
          v66 = *(a2 + 2004);
          *(a2 + 1900) = v66;
          *(a2 + 2004) = v66 + 1;
        }

        *&v333[1] = (v66 << 48) | 0x19C840;
        v67 = *(v55 - 2);
        if (v67 == 0xFFFF)
        {
          v68 = *(a2 + 1998);
          v67 = *(a2 + 1998);
          *(v55 - 2) = v68;
          *(v330 + 4 * v68 + 2) = v56 - 1;
          *(a2 + 1998) = v68 + 1;
        }

        *(&v333[1] + 1) = ((v67 << 48) | 0x19C840) + 64;
        v69 = *(v54 + 2 * v53);
        if (v69 == 0xFFFF)
        {
          v69 = *(a2 + 2004);
          *(v54 + 2 * v53) = v69;
          *(a2 + 2004) = v69 + 1;
        }

        *(&v333[0] + 1) = (v69 << 48) | 0x72611000;
        result = (*(a2 + 2016))(a2, v333);
        if ((v57 & 0x1000000) == 0)
        {
          goto LABEL_134;
        }

LABEL_127:
        memset(&v333[2], 0, 48);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
        *(a2 + 16) = 2;
        v70 = *(a2 + 1900);
        if (v70 == 0xFFFF)
        {
          v70 = *(a2 + 2004);
          *(a2 + 1900) = v70;
          *(a2 + 2004) = v70 + 1;
        }

        *&v333[1] = (v70 << 48) | 0x19C840;
        v71 = *v55;
        if (v71 == 0xFFFF)
        {
          v72 = *(a2 + 1998);
          v71 = *(a2 + 1998);
          *v55 = v72;
          *(v330 + 4 * v72 + 2) = v56;
          *(a2 + 1998) = v72 + 1;
        }

        *(&v333[1] + 1) = ((v71 << 48) | 0x19C840) + 64;
        v73 = *(v54 + 2 * v53);
        if (v73 == 0xFFFF)
        {
          v73 = *(a2 + 2004);
          *(v54 + 2 * v53) = v73;
          *(a2 + 2004) = v73 + 1;
        }

        *(&v333[0] + 1) = (v73 << 48) | 0x72609000;
        result = (*(a2 + 2016))(a2, v333);
        goto LABEL_134;
      }

LABEL_104:
      if ((v57 & 0x1000000) != 0)
      {
        goto LABEL_127;
      }

LABEL_134:
      ++v53;
      v56 += 4;
      v55 += 8;
      if (v56 == 227)
      {
        break;
      }

      continue;
    }
  }

  v3 = v332;
  v4 = *v332;
  if ((*v332 & 0x400) != 0)
  {
    goto LABEL_136;
  }

LABEL_3:
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_258;
  }

LABEL_262:
  v154 = *v3;
  if ((*v3 & 0x1000) != 0)
  {
    memset(&v333[1] + 8, 0, 56);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    *&v333[1] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
    v155 = a2 + 1692;
    v156 = *(a2 + 1704);
    if (v156 == 0xFFFF)
    {
      v157 = *(a2 + 2000);
      v156 = *(a2 + 2000);
      *(a2 + 1704) = v157;
      *(v155 + 4 * v157 + 2) = 3;
      *(a2 + 2000) = v157 + 1;
    }

    *(&v333[0] + 1) = ((v156 << 48) | 0x72679000) + 0x2000;
    result = (*(a2 + 2016))(a2, v333);
    v154 = *v3;
    if ((*v3 & 0x1000000000000) != 0)
    {
      memset(&v333[1] + 8, 0, 56);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v333[1] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
      v158 = *(a2 + 1708);
      if (v158 == 0xFFFF)
      {
        v159 = *(a2 + 2000);
        v158 = *(a2 + 2000);
        *(a2 + 1708) = v159;
        *(v155 + 4 * v159 + 2) = 4;
        *(a2 + 2000) = v159 + 1;
      }

      *(&v333[0] + 1) = ((v158 << 48) | 0x72679000) + 0x2000;
      result = (*(a2 + 2016))(a2, v333);
      v154 = *v3;
    }
  }

  if ((v154 & 0x2000) != 0)
  {
    memset(&v333[1] + 8, 0, 56);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    *&v333[1] = (gleVStateProgram_GetAttrib(a2, 3u) << 48) | 0x19C800;
    v160 = a2 + 1692;
    v161 = *(a2 + 1712);
    if (v161 == 0xFFFF)
    {
      v162 = *(a2 + 2000);
      v161 = *(a2 + 2000);
      *(a2 + 1712) = v162;
      *(v160 + 4 * v162 + 2) = 5;
      *(a2 + 2000) = v162 + 1;
    }

    *(&v333[0] + 1) = ((v161 << 48) | 0x72679000) + 0x2000;
    result = (*(a2 + 2016))(a2, v333);
    v154 = *v3;
    if ((*v3 & 0x1000000000000) != 0)
    {
      memset(&v333[1] + 8, 0, 56);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      *&v333[1] = (gleVStateProgram_GetAttrib(a2, 3u) << 48) | 0x19C800;
      v163 = *(a2 + 1716);
      if (v163 == 0xFFFF)
      {
        v164 = *(a2 + 2000);
        v163 = *(a2 + 2000);
        *(a2 + 1716) = v164;
        *(v160 + 4 * v164 + 2) = 6;
        *(a2 + 2000) = v164 + 1;
      }

      *(&v333[0] + 1) = ((v163 << 48) | 0x72679000) + 0x2000;
      result = (*(a2 + 2016))(a2, v333);
      v154 = *v3;
    }
  }

  if ((v154 & 0x4000) != 0)
  {
    v165 = *(v3 + 32);
    if ((v165 & 0x40) != 0 || (~*(v3 + 8) & 0xC0000000) == 0)
    {
      memset(&v333[1], 0, 64);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v166 = *(a2 + 1900);
      if (v166 == 0xFFFF)
      {
        v168 = *(a2 + 2004);
        v169 = *(a2 + 2004);
        *(a2 + 1900) = v168;
        v170 = v169 + 1;
        *(a2 + 2004) = v170;
        v167 = (v168 << 48) | 0x19C840;
        *&v333[1] = v167;
        if ((v170 & 0x10000) != 0)
        {
          *(a2 + 1900) = v170;
          *(a2 + 2004) = 1;
          v167 = 1689664;
        }
      }

      else
      {
        v167 = (v166 << 48) | 0x19C840;
        *&v333[1] = v167;
      }

      *(&v333[1] + 1) = v167;
      v171 = *(a2 + 1946);
      if (v171 == 0xFFFF)
      {
        v171 = *(a2 + 2004);
        *(a2 + 1946) = v171;
        *(a2 + 2004) = v171 + 1;
      }

      *(&v333[0] + 1) = (v171 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, v333);
      v172 = *v3;
      memset(&v333[1], 0, 64);
      v173 = 8 * (*(a2 + 16) & 7);
      *(a2 + 16) = 1;
      if ((v172 & 0x1000000000000000) != 0)
      {
        v176 = v173 + 0x100100301;
      }

      else
      {
        *&v333[0] = v173 | 0x100100341;
        v174 = *(a2 + 1946);
        if (v174 == 0xFFFF)
        {
          v180 = *(a2 + 2004);
          v181 = *(a2 + 2004);
          *(a2 + 1946) = v180;
          v182 = v181 + 1;
          *(a2 + 2004) = v182;
          *&v333[1] = (v180 << 48) | 0x19C840;
          if ((v182 & 0x10000) != 0)
          {
            v175 = 0;
            *(a2 + 1946) = v182;
            *(a2 + 2004) = 1;
          }

          else
          {
            v175 = v180 << 48;
          }
        }

        else
        {
          v175 = v174 << 48;
          *&v333[1] = (v174 << 48) | 0x19C840;
        }

        *(&v333[0] + 1) = v175 | 0x72679000;
        (*(a2 + 2016))(a2, v333);
        memset(&v333[1] + 8, 0, 56);
        v184 = 8 * (*(a2 + 16) & 7);
        *(a2 + 16) = 1;
        v176 = v184 | 0x100100381;
      }

      *&v333[0] = v176;
      v185 = *(a2 + 1946);
      if (v185 == 0xFFFF)
      {
        v185 = *(a2 + 2004);
        *(a2 + 1946) = v185;
        *(a2 + 2004) = v185 + 1;
      }

      *&v333[1] = (v185 << 48) | 0x19C840;
      v186 = *(a2 + 1962);
      if (v186 == 0xFFFF)
      {
        v186 = *(a2 + 2004);
        *(a2 + 1962) = v186;
        *(a2 + 2004) = v186 + 1;
      }

      *(&v333[0] + 1) = (v186 << 48) | 0x72679000;
      result = (*(a2 + 2016))(a2, v333);
      v165 = *(v3 + 32);
    }

    if ((v165 & 0x40) != 0)
    {
      memset(v333 + 8, 0, 72);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v190 = *(a2 + 1962);
      if (v190 == 0xFFFF)
      {
        v190 = *(a2 + 2004);
        *(a2 + 1962) = v190;
        *(a2 + 2004) = v190 + 1;
      }

      *&v333[1] = (v190 << 48) | 0x19C840;
      v191 = a2 + 260;
      v192 = *(a2 + 1648);
      if (v192 == 0xFFFF)
      {
        v194 = *(a2 + 1998);
        v195 = *(a2 + 1998);
        *(a2 + 1648) = v194;
        *(v191 + 4 * v194 + 2) = 347;
        v196 = v195 + 1;
        *(a2 + 1998) = v196;
        *(&v333[1] + 1) = (v194 << 48) | 0x15480;
        if ((v196 & 0x10000) != 0)
        {
          v193 = 0;
          *(a2 + 1648) = v196;
          *(v191 + 4 * v196 + 2) = 347;
          *(a2 + 1998) = 1;
        }

        else
        {
          v193 = v194 << 48;
        }
      }

      else
      {
        v193 = v192 << 48;
        *(&v333[1] + 1) = (v192 << 48) | 0x15480;
      }

      *&v333[2] = v193 | 0xAA80;
      v200 = *(a2 + 1954);
      if (v200 == 0xFFFF)
      {
        v200 = *(a2 + 2004);
        *(a2 + 1954) = v200;
        *(a2 + 2004) = v200 + 1;
      }

      *(&v333[0] + 1) = (v200 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, v333);
      memset(v333 + 8, 0, 72);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v201 = *(a2 + 1962);
      if (v201 == 0xFFFF)
      {
        v201 = *(a2 + 2004);
        *(a2 + 1962) = v201;
        *(a2 + 2004) = v201 + 1;
      }

      *&v333[1] = (v201 << 48) | 0x19C840;
      v202 = *(a2 + 1954);
      if (v202 == 0xFFFF)
      {
        v202 = *(a2 + 2004);
        *(a2 + 1954) = v202;
        *(a2 + 2004) = v202 + 1;
      }

      *(&v333[1] + 1) = (v202 << 48) | 0x19C840;
      v203 = *(a2 + 1648);
      if (v203 == 0xFFFF)
      {
        v204 = *(a2 + 1998);
        v203 = *(a2 + 1998);
        *(a2 + 1648) = v204;
        *(v191 + 4 * v204 + 2) = 347;
        *(a2 + 1998) = v204 + 1;
        v202 = *(a2 + 1954);
      }

      *&v333[2] = ((v203 << 48) | 0x19C840) + 64;
      if (v202 == 0xFFFF)
      {
        v202 = *(a2 + 2004);
        *(a2 + 1954) = v202;
        *(a2 + 2004) = v202 + 1;
      }

      *(&v333[0] + 1) = (v202 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, v333);
      memset(&v333[1] + 8, 0, 56);
      v205 = 8 * (*(a2 + 16) & 7);
      *(a2 + 16) = 1;
      *&v333[0] = v205 | 0x100100341;
      v206 = *(a2 + 1954);
      if (v206 == 0xFFFF)
      {
        v206 = *(a2 + 2004);
        *(a2 + 1954) = v206;
        *(a2 + 2004) = v206 + 1;
      }

      *&v333[1] = (v206 << 48) | 0x19C840;
      v207 = *(a2 + 1946);
      if (v207 == 0xFFFF)
      {
        v207 = *(a2 + 2004);
        *(a2 + 1946) = v207;
        *(a2 + 2004) = v207 + 1;
      }

      *(&v333[0] + 1) = (v207 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, v333);
      memset(v333 + 8, 0, 72);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v208 = *(a2 + 1946);
      if (v208 == 0xFFFF)
      {
        v208 = *(a2 + 2004);
        *(a2 + 1946) = v208;
        *(a2 + 2004) = v208 + 1;
      }

      *&v333[1] = (v208 << 48) | 0x19C840;
      v3 = v332;
      if ((*(v332 + 32) & 0x20) != 0)
      {
        v211 = gleVStateProgram_GetAttrib(a2, 6u) << 48;
      }

      else
      {
        v209 = *(a2 + 1652);
        if (v209 == 0xFFFF)
        {
          v210 = *(a2 + 1998);
          v209 = *(a2 + 1998);
          *(a2 + 1652) = v210;
          *(v191 + 4 * v210 + 2) = 348;
          *(a2 + 1998) = v210 + 1;
        }

        v211 = ((v209 << 48) | 0x19C840) + 64;
      }

      *(&v333[1] + 1) = v211;
      v212 = *(a2 + 1946);
      if (v212 == 0xFFFF)
      {
        v212 = *(a2 + 2004);
        *(a2 + 1946) = v212;
        *(a2 + 2004) = v212 + 1;
      }

      *(&v333[0] + 1) = (v212 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, v333);
      memset(&v333[1] + 8, 0, 56);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
      *(a2 + 16) = 2;
      v213 = *(a2 + 1946);
      if (v213 == 0xFFFF)
      {
        v213 = *(a2 + 2004);
        *(a2 + 1946) = v213;
        *(a2 + 2004) = v213 + 1;
      }

      *&v333[1] = (v213 << 48) | 0x19C840;
      v214 = *(a2 + 1652);
      if (v214 == 0xFFFF)
      {
        v215 = *(a2 + 1998);
        v214 = *(a2 + 1998);
        *(a2 + 1652) = v215;
        *(v191 + 4 * v215 + 2) = 348;
        *(a2 + 1998) = v215 + 1;
        v213 = *(a2 + 1946);
      }

      *(&v333[1] + 1) = (v214 << 48) | 0xAA80;
      if (v213 == 0xFFFF)
      {
        v213 = *(a2 + 2004);
        *(a2 + 1946) = v213;
        *(a2 + 2004) = v213 + 1;
      }

      *(&v333[0] + 1) = (v213 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, v333);
      memset(&v333[1] + 8, 0, 56);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B02;
      *(a2 + 16) = 2;
      v216 = *(a2 + 1946);
      if (v216 == 0xFFFF)
      {
        v216 = *(a2 + 2004);
        *(a2 + 1946) = v216;
        *(a2 + 2004) = v216 + 1;
      }

      *&v333[1] = (v216 << 48) | 0x19C840;
      v217 = *(a2 + 1652);
      if (v217 == 0xFFFF)
      {
        v218 = *(a2 + 1998);
        v217 = *(a2 + 1998);
        *(a2 + 1652) = v218;
        *(v191 + 4 * v218 + 2) = 348;
        *(a2 + 1998) = v218 + 1;
      }

      *(&v333[1] + 1) = (v217 << 48) | 0x15480;
    }

    else
    {
      if ((v165 & 0x80) == 0)
      {
        goto LABEL_361;
      }

      if ((v165 & 0x800) != 0)
      {
        memset(v333 + 8, 0, 72);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
        *(a2 + 16) = 2;
        if ((*(v3 + 32) & 0x20) != 0)
        {
          v199 = gleVStateProgram_GetAttrib(a2, 6u) << 48;
        }

        else
        {
          v197 = *(a2 + 1652);
          if (v197 == 0xFFFF)
          {
            v198 = *(a2 + 1998);
            v197 = *(a2 + 1998);
            *(a2 + 1652) = v198;
            *(a2 + 4 * v198 + 262) = 348;
            *(a2 + 1998) = v198 + 1;
          }

          v199 = ((v197 << 48) | 0x19C840) + 64;
        }

        *&v333[1] = v199;
        v260 = *(a2 + 1664);
        if (v260 == 0xFFFF)
        {
          v261 = *(a2 + 1998);
          v260 = *(a2 + 1998);
          *(a2 + 1664) = v261;
          *(a2 + 4 * v261 + 262) = 351;
          *(a2 + 1998) = v261 + 1;
        }

        *(&v333[1] + 1) = (v260 << 48) | 0x15480;
        v262 = *(a2 + 1946);
        if (v262 == 0xFFFF)
        {
          v262 = *(a2 + 2004);
          *(a2 + 1946) = v262;
          *(a2 + 2004) = v262 + 1;
        }

        *(&v333[0] + 1) = (v262 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v333);
        memset(&v333[1] + 8, 0, 56);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        v263 = *(a2 + 1946);
        if (v263 == 0xFFFF)
        {
          v263 = *(a2 + 2004);
          *(a2 + 1946) = v263;
          *(a2 + 2004) = v263 + 1;
        }

        *&v333[1] = (v263 << 48) | 0x19C840;
        v264 = *(a2 + 1700);
        if (v264 == 0xFFFF)
        {
          v265 = *(a2 + 2000);
          v264 = *(a2 + 2000);
          *(a2 + 1700) = v265;
          *(a2 + 4 * v265 + 1694) = 2;
          *(a2 + 2000) = v265 + 1;
        }

        v221 = (v264 << 48) | 0x72643000;
        goto LABEL_360;
      }

      memset(&v333[1] + 8, 0, 56);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      if ((*(v3 + 32) & 0x20) != 0)
      {
        v189 = gleVStateProgram_GetAttrib(a2, 6u) << 48;
      }

      else
      {
        v187 = *(a2 + 1652);
        if (v187 == 0xFFFF)
        {
          v188 = *(a2 + 1998);
          v187 = *(a2 + 1998);
          *(a2 + 1652) = v188;
          *(a2 + 4 * v188 + 262) = 348;
          *(a2 + 1998) = v188 + 1;
        }

        v189 = ((v187 << 48) | 0x19C840) + 64;
      }

      *&v333[1] = v189;
    }

    v219 = *(a2 + 1700);
    if (v219 == 0xFFFF)
    {
      v220 = *(a2 + 2000);
      v219 = *(a2 + 2000);
      *(a2 + 1700) = v220;
      *(a2 + 4 * v220 + 1694) = 2;
      *(a2 + 2000) = v220 + 1;
    }

    v221 = (v219 << 48) | 0x72643000;
LABEL_360:
    *(&v333[0] + 1) = v221;
    result = (*(a2 + 2016))(a2, v333);
    *(a2 + 2032) |= 2u;
    v165 = *(v3 + 32);
LABEL_361:
    if ((v165 & 2) == 0)
    {
      if ((v165 & 1) == 0)
      {
LABEL_482:
        if ((*(v3 + 7) & 0x40) != 0)
        {
          memset(&v333[1] + 8, 0, 56);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v291 = *(a2 + 1900);
          if (v291 == 0xFFFF)
          {
            v291 = *(a2 + 2004);
            *(a2 + 1900) = v291;
            *(a2 + 2004) = v291 + 1;
          }

          *&v333[1] = (v291 << 48) | 0x19C840;
          v292 = *(a2 + 1880);
          if (v292 == 0xFFFF)
          {
            v293 = *(a2 + 2000);
            v292 = *(a2 + 2000);
            *(a2 + 1880) = v293;
            *(a2 + 4 * v293 + 1694) = 47;
            *(a2 + 2000) = v293 + 1;
          }

          *(&v333[0] + 1) = ((v292 << 48) | 0x72679000) + 0x2000;
          result = (*(a2 + 2016))(a2, v333);
        }

        if ((*(v3 + 11) & 0x3F) != 0)
        {
          if ((*v332 & 0x40) != 0)
          {
            v299 = 0;
            v300 = a2 + 1692;
            v301 = (a2 + 1668);
            do
            {
              if (((1 << v299) & *(v332 + 11) & 0x3F) != 0)
              {
                memset(&v333[2], 0, 48);
                *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000A42;
                *(a2 + 16) = 2;
                v302 = *(a2 + 1900);
                if (v302 == 0xFFFF)
                {
                  v302 = *(a2 + 2004);
                  *(a2 + 1900) = v302;
                  *(a2 + 2004) = v302 + 1;
                }

                *&v333[1] = (v302 << 48) | 0x19C840;
                v303 = *v301;
                if (v303 == 0xFFFF)
                {
                  v304 = *(a2 + 1998);
                  v303 = *(a2 + 1998);
                  *v301 = v304;
                  *(a2 + 260 + 4 * v304 + 2) = v299 + 352;
                  *(a2 + 1998) = v304 + 1;
                }

                *(&v333[1] + 1) = ((v303 << 48) | 0x19C840) + 64;
                v305 = (v299 >> 2) | 0x30;
                v306 = (v300 + 4 * v305);
                v307 = *v306;
                if (v307 == 0xFFFF)
                {
                  v308 = *(a2 + 2000);
                  v307 = *(a2 + 2000);
                  *v306 = v308;
                  *(v300 + 4 * v308 + 2) = v305;
                  *(a2 + 2000) = v308 + 1;
                }

                v309 = vceqq_s32(vdupq_n_s32(v299 & 3), xmmword_23A29C2D0);
                v310.i64[0] = v309.u32[0];
                v310.i64[1] = v309.u32[1];
                v311 = v310;
                v310.i64[0] = v309.u32[2];
                v310.i64[1] = v309.u32[3];
                v312 = vorrq_s8(vandq_s8(v311, xmmword_23A29B2D0), vandq_s8(v310, xmmword_23A29B2C0));
                *(&v333[0] + 1) = *&vorr_s8(*v312.i8, *&vextq_s8(v312, v312, 8uLL)) | (v307 << 48) | 0x72603000;
                result = (*(a2 + 2016))(a2, v333);
              }

              ++v299;
              v301 += 2;
            }

            while (v299 != 6);
          }

          else
          {
            v294 = 0;
            v295 = 1;
            do
            {
              v296 = v295;
              if ((*(v332 + 11) >> v294))
              {
                memset(&v333[1] + 8, 0, 56);
                *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
                *(a2 + 16) = 1;
                *&v333[1] = (gleVStateProgram_GetAttrib(a2, 0x3Au) << 48) | 0x19C800;
                v297 = *(a2 + 1884);
                if (v297 == 0xFFFF)
                {
                  v298 = *(a2 + 2000);
                  v297 = *(a2 + 2000);
                  *(a2 + 1884) = v298;
                  *(a2 + 1692 + 4 * v298 + 2) = 48;
                  *(a2 + 2000) = v298 + 1;
                }

                *(&v333[0] + 1) = ((v297 << 48) | 0x72679000) + 0x2000;
                result = (*(a2 + 2016))(a2, v333);
              }

              v295 = 0;
              v294 = 1;
            }

            while ((v296 & 1) != 0);
          }
        }

        v3 = v332;
        v154 = *v332;
        goto LABEL_508;
      }

      v222 = *(v3 + 8) >> 30;
      memset(&v333[1] + 8, 0, 56);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      if (v222 == 3)
      {
        v254 = *(a2 + 1962);
        if (v254 == 0xFFFF)
        {
          v254 = *(a2 + 2004);
          *(a2 + 1962) = v254;
          *(a2 + 2004) = v254 + 1;
        }

        v255 = (v254 << 48) | 0x19C840;
      }

      else
      {
        if (v222 == 1)
        {
          *&v333[1] = gleVStateProgram_GetAttrib(a2, 5u) << 48;
          v223 = *(a2 + 1696);
          if (v223 == 0xFFFF)
          {
            v224 = *(a2 + 2000);
            v223 = *(a2 + 2000);
            *(a2 + 1696) = v224;
            *(a2 + 4 * v224 + 1694) = 1;
            *(a2 + 2000) = v224 + 1;
          }

          v225 = 1919168512;
LABEL_472:
          v287 = v225 | (v223 << 48);
LABEL_481:
          *(&v333[0] + 1) = v287;
          result = (*(a2 + 2016))(a2, v333);
          goto LABEL_482;
        }

        v256 = *(a2 + 1900);
        if (v256 == 0xFFFF)
        {
          v256 = *(a2 + 2004);
          *(a2 + 1900) = v256;
          *(a2 + 2004) = v256 + 1;
        }

        v255 = ((v256 << 48) | 0x15480) - 64;
      }

      *&v333[1] = v255;
      v257 = *(a2 + 1696);
      if (v257 == 0xFFFF)
      {
        v258 = *(a2 + 2000);
        v257 = *(a2 + 2000);
        *(a2 + 1696) = v258;
        *(a2 + 4 * v258 + 1694) = 1;
        *(a2 + 2000) = v258 + 1;
      }

      v259 = 1919168512;
LABEL_480:
      v287 = v259 | (v257 << 48);
      goto LABEL_481;
    }

    v226 = *(v3 + 8) >> 30;
    memset(&v333[1] + 8, 0, 56);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    if (v226 == 2)
    {
      v228 = *(a2 + 1900);
      if (v228 == 0xFFFF)
      {
        v228 = *(a2 + 2004);
        *(a2 + 1900) = v228;
        *(a2 + 2004) = v228 + 1;
      }

      v229 = ((v228 << 48) | 0x15480) - 64;
    }

    else
    {
      if (v226 == 1)
      {
        *&v333[1] = gleVStateProgram_GetAttrib(a2, 5u) << 48;
        v227 = *(a2 + 1970);
        goto LABEL_378;
      }

      v230 = *(a2 + 1962);
      if (v230 == 0xFFFF)
      {
        v230 = *(a2 + 2004);
        *(a2 + 1962) = v230;
        *(a2 + 2004) = v230 + 1;
      }

      v229 = (v230 << 48) | 0x19C840;
    }

    *&v333[1] = v229;
    v227 = *(a2 + 1970);
LABEL_378:
    if (v227 == 0xFFFF)
    {
      v227 = *(a2 + 2004);
      *(a2 + 1970) = v227;
      *(a2 + 2004) = v227 + 1;
    }

    *(&v333[0] + 1) = (v227 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, v333);
    v231 = *(v3 + 32);
    if (v231)
    {
      memset(&v333[1] + 8, 0, 56);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      v232 = *(a2 + 1970);
      if (v232 == 0xFFFF)
      {
        v232 = *(a2 + 2004);
        *(a2 + 1970) = v232;
        *(a2 + 2004) = v232 + 1;
      }

      *&v333[1] = (v232 << 48) | 0x19C840;
      v233 = *(a2 + 1696);
      if (v233 == 0xFFFF)
      {
        v234 = *(a2 + 2000);
        v233 = *(a2 + 2000);
        *(a2 + 1696) = v234;
        *(a2 + 4 * v234 + 1694) = 1;
        *(a2 + 2000) = v234 + 1;
      }

      *(&v333[0] + 1) = (v233 << 48) | 0x72643000;
      (*(a2 + 2016))(a2, v333);
      v231 = *(v3 + 32);
    }

    v235 = (v231 >> 2) & 3;
    if (v235 > 1)
    {
      if (v235 == 2)
      {
        if ((v231 & 0x10) != 0)
        {
          memset(&v333[2], 0, 48);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
          *(a2 + 16) = 2;
          v278 = *(a2 + 1970);
          if (v278 == 0xFFFF)
          {
            v278 = *(a2 + 2004);
            *(a2 + 1970) = v278;
            *(a2 + 2004) = v278 + 1;
          }

          *&v333[1] = (v278 << 48) | 0x40;
          v279 = *(a2 + 1664);
          if (v279 == 0xFFFF)
          {
            v280 = *(a2 + 1998);
            v279 = *(a2 + 1998);
            *(a2 + 1664) = v280;
            *(a2 + 4 * v280 + 262) = 351;
            *(a2 + 1998) = v280 + 1;
          }

          *(&v333[1] + 1) = (v279 << 48) | 0xAA80;
          v242 = *(a2 + 1954);
        }

        else
        {
          memset(&v333[1] + 8, 0, 56);
          *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000081;
          *(a2 + 16) = 1;
          v241 = *(a2 + 1970);
          if (v241 == 0xFFFF)
          {
            v241 = *(a2 + 2004);
            *(a2 + 1970) = v241;
            *(a2 + 2004) = v241 + 1;
          }

          *&v333[1] = (v241 << 48) | 0x40;
          v242 = *(a2 + 1954);
        }

        if (v242 == 0xFFFF)
        {
          v242 = *(a2 + 2004);
          *(a2 + 1954) = v242;
          *(a2 + 2004) = v242 + 1;
        }

        *(&v333[0] + 1) = (v242 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v333);
        memset(&v333[2], 0, 48);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v281 = *(a2 + 1954);
        if (v281 == 0xFFFF)
        {
          v281 = *(a2 + 2004);
          *(a2 + 1954) = v281;
          *(a2 + 2004) = v281 + 1;
        }

        *&v333[1] = (v281 << 48) | 0x19C840;
        v282 = *(a2 + 1660);
        if (v282 == 0xFFFF)
        {
          v283 = *(a2 + 1998);
          v282 = *(a2 + 1998);
          *(a2 + 1660) = v283;
          *(a2 + 4 * v283 + 262) = 350;
          *(a2 + 1998) = v283 + 1;
          v281 = *(a2 + 1954);
        }

        *(&v333[1] + 1) = (v282 << 48) | 0x80;
        if (v281 == 0xFFFF)
        {
          v281 = *(a2 + 2004);
          *(a2 + 1954) = v281;
          *(a2 + 2004) = v281 + 1;
        }

        *(&v333[0] + 1) = (v281 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v333);
        memset(&v333[1] + 8, 0, 56);
        v284 = *(a2 + 16);
        *(a2 + 16) = 1;
        *&v333[0] = (8 * (v284 & 7)) | 0x100000401;
        v285 = *(a2 + 1954);
        if (v285 == 0xFFFF)
        {
          v285 = *(a2 + 2004);
          *(a2 + 1954) = v285;
          *(a2 + 2004) = v285 + 1;
        }

        *&v333[1] = (v285 << 48) | 0x50;
        goto LABEL_469;
      }
    }

    else if (v235)
    {
      if ((v231 & 0x10) == 0)
      {
        memset(&v333[1] + 8, 0, 56);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000081;
        *(a2 + 16) = 1;
        v236 = *(a2 + 1970);
        if (v236 == 0xFFFF)
        {
          v236 = *(a2 + 2004);
          *(a2 + 1970) = v236;
          *(a2 + 2004) = v236 + 1;
        }

        *&v333[1] = (v236 << 48) | 0x40;
        v237 = *(a2 + 1954);
        if (v237 == 0xFFFF)
        {
          v237 = *(a2 + 2004);
          *(a2 + 1954) = v237;
          *(a2 + 2004) = v237 + 1;
        }

        *(&v333[0] + 1) = (v237 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, v333);
      }

      memset(v333 + 8, 0, 72);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      if ((*(v3 + 32) & 0x10) != 0)
      {
        v238 = *(a2 + 1970);
        v239 = 64;
        if (v238 == 0xFFFF)
        {
          v240 = (a2 + 1970);
          goto LABEL_435;
        }
      }

      else
      {
        v238 = *(a2 + 1954);
        v239 = 1689664;
        if (v238 == 0xFFFF)
        {
          v240 = (a2 + 1954);
          v239 = 1689664;
LABEL_435:
          v238 = *(a2 + 2004);
          *v240 = v238;
          *(a2 + 2004) = v238 + 1;
        }
      }

      *&v333[1] = v239 | (v238 << 48) | 0x10;
      v266 = a2 + 260;
      v267 = *(a2 + 1656);
      if (v267 == 0xFFFF)
      {
        v268 = *(a2 + 1998);
        v267 = *(a2 + 1998);
        *(a2 + 1656) = v268;
        *(v266 + 4 * v268 + 2) = 349;
        *(a2 + 1998) = v268 + 1;
      }

      *(&v333[1] + 1) = (v267 << 48) | 0x1FE80;
      v269 = *(a2 + 1660);
      if (v269 == 0xFFFF)
      {
        v270 = *(a2 + 1998);
        v269 = *(a2 + 1998);
        *(a2 + 1660) = v270;
        *(v266 + 4 * v270 + 2) = 350;
        *(a2 + 1998) = v270 + 1;
      }

      *&v333[2] = (v269 << 48) | 0x1FE80;
      v271 = *(a2 + 1954);
      if (v271 == 0xFFFF)
      {
        v271 = *(a2 + 2004);
        *(a2 + 1954) = v271;
        *(a2 + 2004) = v271 + 1;
      }

      *(&v333[0] + 1) = (v271 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, v333);
      memset(&v333[2], 0, 48);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
      *(a2 + 16) = 2;
      v272 = *(a2 + 1954);
      if (v272 == 0xFFFF)
      {
        v272 = *(a2 + 2004);
        *(a2 + 1954) = v272;
        *(a2 + 2004) = v272 + 1;
      }

      *&v333[1] = (v272 << 48) | 0x19C840;
      v273 = *(a2 + 1664);
      if (v273 == 0xFFFF)
      {
        v274 = *(a2 + 1998);
        v273 = *(a2 + 1998);
        *(a2 + 1664) = v274;
        *(v266 + 4 * v274 + 2) = 351;
        *(a2 + 1998) = v274 + 1;
        v272 = *(a2 + 1954);
      }

      *(&v333[1] + 1) = (v273 << 48) | 0xAA80;
      if (v272 == 0xFFFF)
      {
        v272 = *(a2 + 2004);
        *(a2 + 1954) = v272;
        *(a2 + 2004) = v272 + 1;
      }

      *(&v333[0] + 1) = (v272 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, v333);
      memset(&v333[2], 0, 48);
      *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000B02;
      *(a2 + 16) = 2;
      v275 = *(a2 + 1954);
      if (v275 == 0xFFFF)
      {
        v275 = *(a2 + 2004);
        *(a2 + 1954) = v275;
        *(a2 + 2004) = v275 + 1;
      }

      *&v333[1] = (v275 << 48) | 0x19C840;
      v276 = *(a2 + 1664);
      if (v276 == 0xFFFF)
      {
        v277 = *(a2 + 1998);
        v276 = *(a2 + 1998);
        *(a2 + 1664) = v277;
        *(v266 + 4 * v277 + 2) = 351;
        *(a2 + 1998) = v277 + 1;
      }

      *(&v333[1] + 1) = (v276 << 48) | 0x15480;
LABEL_469:
      v223 = *(a2 + 1696);
      if (v223 == 0xFFFF)
      {
        v286 = *(a2 + 2000);
        v223 = *(a2 + 2000);
        *(a2 + 1696) = v286;
        *(a2 + 4 * v286 + 1694) = 1;
        *(a2 + 2000) = v286 + 1;
      }

      v225 = 1919037440;
      goto LABEL_472;
    }

    memset(&v333[2], 0, 48);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
    *(a2 + 16) = 2;
    v243 = *(a2 + 1970);
    if (v243 == 0xFFFF)
    {
      v243 = *(a2 + 2004);
      *(a2 + 1970) = v243;
      *(a2 + 2004) = v243 + 1;
    }

    *&v333[1] = (v243 << 48) | 0x40;
    v244 = *(a2 + 1660);
    if (v244 == 0xFFFF)
    {
      v245 = *(a2 + 1998);
      v244 = *(a2 + 1998);
      *(a2 + 1660) = v245;
      *(a2 + 4 * v245 + 262) = 350;
      *(a2 + 1998) = v245 + 1;
    }

    *(&v333[1] + 1) = (v244 << 48) | 0xAA80;
    v246 = *(a2 + 1954);
    if (v246 == 0xFFFF)
    {
      v246 = *(a2 + 2004);
      *(a2 + 1954) = v246;
      *(a2 + 2004) = v246 + 1;
    }

    *(&v333[0] + 1) = (v246 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, v333);
    memset(&v333[1], 0, 64);
    *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
    *(a2 + 16) = 2;
    v247 = *(a2 + 1954);
    if (v247 == 0xFFFF)
    {
      v250 = *(a2 + 2004);
      v251 = *(a2 + 2004);
      *(a2 + 1954) = v250;
      v252 = v251 + 1;
      *(a2 + 2004) = v251 + 1;
      v249 = (v250 << 48) | 0x19C840;
      *&v333[1] = v249;
      if ((v252 & 0x10000) != 0)
      {
        *(a2 + 1954) = v252;
        *(a2 + 2004) = 1;
        v249 = 1689664;
        v253 = 1919389696;
LABEL_475:
        *(&v333[1] + 1) = v249;
        *(&v333[0] + 1) = v253;
        (*(a2 + 2016))(a2, v333);
        memset(&v333[1] + 8, 0, 56);
        v288 = *(a2 + 16);
        *(a2 + 16) = 1;
        *&v333[0] = (8 * (v288 & 7)) | 0x100000401;
        v289 = *(a2 + 1954);
        if (v289 == 0xFFFF)
        {
          v289 = *(a2 + 2004);
          *(a2 + 1954) = v289;
          *(a2 + 2004) = v289 + 1;
        }

        *&v333[1] = (v289 << 48) | 0x50;
        v257 = *(a2 + 1696);
        if (v257 == 0xFFFF)
        {
          v290 = *(a2 + 2000);
          v257 = *(a2 + 2000);
          *(a2 + 1696) = v290;
          *(a2 + 4 * v290 + 1694) = 1;
          *(a2 + 2000) = v290 + 1;
        }

        v259 = 1919037440;
        goto LABEL_480;
      }

      v248 = v250 << 48;
    }

    else
    {
      v248 = v247 << 48;
      v249 = (v247 << 48) | 0x19C840;
      *&v333[1] = v249;
    }

    v253 = v248 | 0x72679000;
    goto LABEL_475;
  }

LABEL_508:
  if ((v154 & 0x800) != 0)
  {
    result = gleVStateProgram_LightingStage(v3, a2);
    v154 = *v3;
  }

  if ((v154 & 0xFF0000) != 0)
  {
    v313 = BYTE2(v154);
    if (BYTE2(v154))
    {
      v314 = 0;
      v315 = 0;
      v331 = *(v332 + 16) | *(v332 + 24) | ((*(v332 + 24) | *(v332 + 16)) >> 32);
      v316 = a2 + 1978;
      v317 = 80;
      memset(v333, 0, 80);
      do
      {
        if (v313)
        {
          if (((v331 >> v315) & 0x1010101) != 0)
          {
            if (((v331 >> v315) & 0x1010101) != 0x1010101)
            {
              memset(&v333[1] + 8, 0, 56);
              *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              *&v333[1] = (gleVStateProgram_GetAttrib(a2, v315 + 8) << 48) | 0x19C800;
              v318 = *(v316 + 2 * v315);
              if (v318 == 0xFFFF)
              {
                v318 = *(a2 + 2004);
                *(v316 + 2 * v315) = v318;
                *(a2 + 2004) = v318 + 1;
              }

              *(&v333[0] + 1) = ~(v331 >> v315 << 18) & 0x40000 | (v318 << 48) | ~(v331 >> v315 << 9) & 0x20000 | (~(v331 >> v315) & 0x10000) | ~(v331 >> v315 >> 9) & 0x8000 | 0x72601000;
              (*(a2 + 2016))(a2, v333);
            }

            if (((1 << v315) & BYTE3(*v332)) != 0)
            {
              memset(&v333[1] + 8, 0, 56);
              *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              v319 = *(v316 + 2 * v315);
              if (v319 == 0xFFFF)
              {
                v319 = *(a2 + 2004);
                *(v316 + 2 * v315) = v319;
                *(a2 + 2004) = v319 + 1;
              }

              *&v333[1] = (v319 << 48) | 0x19C840;
              v320 = (v316 + v314 - 258);
              v321 = *v320;
              goto LABEL_525;
            }

            result = gleVStateProgram_MultMatrix4x4(a2, v315 + 39, v317, v315 + 7, 23, 0, 0, 1, HIBYTE(*v332) & 1);
          }

          else
          {
            if (((1 << v315) & BYTE3(*v332)) != 0)
            {
              memset(&v333[1] + 8, 0, 56);
              *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              *&v333[1] = (gleVStateProgram_GetAttrib(a2, v315 + 8) << 48) | 0x19C800;
              v320 = (v316 + v314 - 258);
              v321 = *v320;
LABEL_525:
              if (v321 == 0xFFFF)
              {
                v322 = *(a2 + 2000);
                v321 = *(a2 + 2000);
                *v320 = v322;
                *(a2 + 1692 + 4 * v322 + 2) = v315 + 7;
                *(a2 + 2000) = v322 + 1;
              }

              *(&v333[0] + 1) = ((v321 << 48) | 0x72679000) + 0x2000;
              result = (*(a2 + 2016))(a2, v333);
              goto LABEL_530;
            }

            result = gleVStateProgram_MultMatrix4x4(a2, v315 + 8, v317, v315 + 7, 23, 1, 0, 1, HIBYTE(*v332) & 1);
          }
        }

LABEL_530:
        ++v315;
        v314 += 4;
        v317 += 8;
        v323 = v313 > 1;
        v313 >>= 1;
      }

      while (v323);
    }

    v3 = v332;
  }

  v324 = HIDWORD(*(v3 + 8));
  if (v324)
  {
    v325 = 15;
    v326 = 1752;
    do
    {
      if (v324)
      {
        memset(&v333[1] + 8, 0, 56);
        *&v333[0] = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        *&v333[1] = (gleVStateProgram_GetAttrib(a2, v325 + 1) << 48) | 0x19C800;
        v327 = *(a2 + v326);
        if (v327 == 0xFFFF)
        {
          v328 = *(a2 + 2000);
          v327 = *(a2 + 2000);
          *(a2 + v326) = v328;
          *(a2 + 1692 + 4 * v328 + 2) = v325;
          *(a2 + 2000) = v328 + 1;
        }

        *(&v333[0] + 1) = ((v327 << 48) | 0x72679000) + 0x2000;
        result = (*(a2 + 2016))(a2, v333);
      }

      ++v325;
      v326 += 4;
      v323 = v324 > 1;
      LODWORD(v324) = v324 >> 1;
    }

    while (v323);
  }

  return result;
}

void gleVStateProgram_AddAttribs(uint64_t a1)
{
  v2 = *(a1 + 2024);
  if (v2)
  {
    v3 = (v2 + *(v2 + 8));
    bzero(v3, (8 * *(a1 + 1996) + 8));
    v4 = *(a1 + 1996);
    *v3 = v4;
  }

  else
  {
    v3 = 0;
    v4 = *(a1 + 1996);
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v3 + 3;
    v7 = 22;
    do
    {
      v8 = *(a1 + v7);
      v14 = xmmword_23A29B290;
      DWORD2(v14) = v5;
      v9 = v8 - 1;
      v10 = v8;
      switch(v9)
      {
        case 0:
          v11 = 0x1000070C0;
          goto LABEL_14;
        case 1:
          v11 = 0x2000070C0;
          goto LABEL_14;
        case 2:
          v11 = 0x3000070C0;
          goto LABEL_14;
        case 3:
          v11 = 0x44000070C0;
          goto LABEL_14;
        case 4:
          v11 = 0x5000070C0;
          goto LABEL_14;
        case 5:
          v11 = 0x6000070C0;
          goto LABEL_14;
        case 6:
          v11 = 0x7000070C0;
          goto LABEL_14;
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          goto LABEL_13;
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
          v11 = (((v10 + 48) & 0x3F) << 32) | 0x100000070C0;
          goto LABEL_14;
        case 47:
        case 48:
          v12 = v10 + 54;
          goto LABEL_12;
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
          v12 = v10 + 46;
          goto LABEL_12;
        case 55:
        case 56:
          v12 = v10 + 48;
LABEL_12:
          v10 = v12 & 0x3F;
LABEL_13:
          v11 = (v10 << 32) | 0x70C0;
          goto LABEL_14;
        case 57:
        case 58:
          v11 = (((v10 + 6) & 0x1F) << 32) | 0x38C0;
LABEL_14:
          *&v14 = v11;
          break;
        default:
          v11 = 28864;
          break;
      }

      if (*a1)
      {
        PPStreamAddAttribBinding(*a1, &v14);
      }

      else
      {
        *(v6 - 1) = *(v6 - 1) & 0xFFFFC000 | v11 & 0x3F | (v11 >> 2) & 0x3F00 | 0xC0;
        v13 = (v11 >> 10) & 0x1F;
        if (v13 == 14)
        {
          *v6 = BYTE4(v11) & 0x1F | (32 * (*v6 >> 5));
        }

        else if (v13 == 28)
        {
          *v6 = *v6 & 0xFFFFFE00 | HIDWORD(v11);
        }
      }

      ++v5;
      v6 += 2;
      v7 += 4;
    }

    while (v5 < *(a1 + 1996));
  }
}

char *gleVStateProgram_AddParams(char *result)
{
  v1 = result;
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(result + 253);
  if (v2)
  {
    v3 = v2 + *(v2 + 4);
    v4 = *(result + 999);
    v5 = *(result + 999);
    *v3 = v4;
    *(v3 + 8) = v4;
  }

  else
  {
    v3 = 0;
    v5 = *(result + 999);
  }

  if (v5 >= 1)
  {
    LODWORD(v6) = 0;
    do
    {
      v7 = *&v1[4 * v6 + 262];
      v22 = xmmword_23A29B2A0;
      DWORD2(v22) = v6;
      if (v7 - 144 > 0x10)
      {
        switch(v7)
        {
          case 0u:
          case 1u:
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 6u:
          case 7u:
            v14 = ((v7 & 3) << 42) | (((v7 >> 2) ^ 1) << 40);
            v15 = 0x100000000FC0;
            goto LABEL_37;
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
            v19 = ((v7 & 3) << 42) | ((((v7 >> 2) & 1) == 0) << 40) | 0xFC0;
            goto LABEL_51;
          case 0x10u:
          case 0x11u:
          case 0x12u:
          case 0x13u:
          case 0x14u:
          case 0x15u:
          case 0x16u:
          case 0x17u:
          case 0x18u:
          case 0x19u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
          case 0x20u:
          case 0x21u:
          case 0x22u:
          case 0x23u:
          case 0x24u:
          case 0x25u:
          case 0x26u:
          case 0x27u:
          case 0x28u:
          case 0x29u:
          case 0x2Au:
          case 0x2Bu:
          case 0x2Cu:
          case 0x2Du:
          case 0x2Eu:
          case 0x2Fu:
            v14 = ((v7 & 3) << 42) | ((((v7 >> 2) & 1) == 0) << 40) | (((v7 + 2032) >> 3) << 32);
            v15 = 0x300000000FC0;
            goto LABEL_37;
          case 0x30u:
          case 0x31u:
          case 0x32u:
          case 0x33u:
          case 0x34u:
          case 0x35u:
          case 0x36u:
          case 0x37u:
          case 0x38u:
          case 0x39u:
          case 0x3Au:
          case 0x3Bu:
          case 0x3Cu:
          case 0x3Du:
          case 0x3Eu:
          case 0x3Fu:
          case 0x40u:
          case 0x41u:
          case 0x42u:
          case 0x43u:
          case 0x44u:
          case 0x45u:
          case 0x46u:
          case 0x47u:
          case 0x48u:
          case 0x49u:
          case 0x4Au:
          case 0x4Bu:
          case 0x4Cu:
          case 0x4Du:
          case 0x4Eu:
          case 0x4Fu:
            v16 = 0x300000000C0;
            if ((v7 & 4) == 0)
            {
              v16 = 0x200000000C0;
            }

            v14 = v16 | ((v7 & 3) << 42) | (((v7 + 2000) >> 3) << 32);
            v15 = 0x300000000F00;
            goto LABEL_37;
          case 0x50u:
          case 0x51u:
          case 0x52u:
          case 0x53u:
          case 0x54u:
          case 0x55u:
          case 0x56u:
          case 0x57u:
          case 0x58u:
          case 0x59u:
          case 0x5Au:
          case 0x5Bu:
          case 0x5Cu:
          case 0x5Du:
          case 0x5Eu:
          case 0x5Fu:
          case 0x60u:
          case 0x61u:
          case 0x62u:
          case 0x63u:
          case 0x64u:
          case 0x65u:
          case 0x66u:
          case 0x67u:
          case 0x68u:
          case 0x69u:
          case 0x6Au:
          case 0x6Bu:
          case 0x6Cu:
          case 0x6Du:
          case 0x6Eu:
          case 0x6Fu:
          case 0x70u:
          case 0x71u:
          case 0x72u:
          case 0x73u:
          case 0x74u:
          case 0x75u:
          case 0x76u:
          case 0x77u:
          case 0x78u:
          case 0x79u:
          case 0x7Au:
          case 0x7Bu:
          case 0x7Cu:
          case 0x7Du:
          case 0x7Eu:
          case 0x7Fu:
          case 0x80u:
          case 0x81u:
          case 0x82u:
          case 0x83u:
          case 0x84u:
          case 0x85u:
          case 0x86u:
          case 0x87u:
          case 0x88u:
          case 0x89u:
          case 0x8Au:
          case 0x8Bu:
          case 0x8Cu:
          case 0x8Du:
          case 0x8Eu:
          case 0x8Fu:
            v14 = ((v7 & 3) << 42) | ((((v7 >> 2) & 1) == 0) << 40) | (((v7 + 1968) >> 3) << 32);
            v15 = 0x400000000FC0;
            goto LABEL_37;
          case 0xA1u:
          case 0xA2u:
          case 0xA3u:
          case 0xA4u:
          case 0xA5u:
          case 0xA6u:
          case 0xA7u:
          case 0xA8u:
          case 0xA9u:
          case 0xAAu:
          case 0xABu:
          case 0xACu:
          case 0xADu:
          case 0xAEu:
          case 0xAFu:
          case 0xB0u:
          case 0xB1u:
          case 0xB2u:
          case 0xB3u:
          case 0xB4u:
          case 0xB5u:
          case 0xB6u:
          case 0xB7u:
          case 0xB8u:
          case 0xB9u:
          case 0xBAu:
          case 0xBBu:
          case 0xBCu:
          case 0xBDu:
          case 0xBEu:
          case 0xBFu:
            v14 = ((v7 & 3) << 39) | ((((v7 + 352) >> 2) & 0x7F) << 32);
            v15 = 5568;
            goto LABEL_37;
          case 0xC0u:
          case 0xC1u:
          case 0xC2u:
          case 0xC3u:
          case 0xC4u:
          case 0xC5u:
          case 0xC6u:
          case 0xC7u:
          case 0xC8u:
          case 0xC9u:
          case 0xCAu:
          case 0xCBu:
          case 0xCCu:
          case 0xCDu:
          case 0xCEu:
          case 0xCFu:
          case 0xD0u:
          case 0xD1u:
          case 0xD2u:
          case 0xD3u:
          case 0xD4u:
          case 0xD5u:
          case 0xD6u:
          case 0xD7u:
          case 0xD8u:
          case 0xD9u:
          case 0xDAu:
          case 0xDBu:
          case 0xDCu:
          case 0xDDu:
          case 0xDEu:
          case 0xDFu:
            v14 = ((v7 & 3) << 39) | ((((v7 + 320) >> 2) & 0x7F) << 32);
            v15 = 5312;
            goto LABEL_37;
          case 0xE0u:
          case 0xE1u:
          case 0xE2u:
          case 0xE3u:
          case 0xE4u:
          case 0xE5u:
          case 0xE6u:
          case 0xE7u:
          case 0xE8u:
          case 0xE9u:
          case 0xEAu:
          case 0xEBu:
          case 0xECu:
          case 0xEDu:
          case 0xEEu:
          case 0xEFu:
            v14 = ((v7 & 1) << 40) | (((v7 + 288) >> 1) << 32);
            v15 = 4544;
            goto LABEL_37;
          case 0xF0u:
          case 0xF1u:
          case 0xF2u:
          case 0xF3u:
          case 0xF4u:
          case 0xF5u:
          case 0xF6u:
          case 0xF7u:
          case 0xF8u:
          case 0xF9u:
          case 0xFAu:
          case 0xFBu:
          case 0xFCu:
          case 0xFDu:
          case 0xFEu:
          case 0xFFu:
            v14 = ((v7 & 1) << 40) | (((v7 + 272) >> 1) << 32);
            v15 = 0x200000011C0;
            goto LABEL_37;
          case 0x100u:
          case 0x101u:
          case 0x102u:
          case 0x103u:
          case 0x104u:
          case 0x105u:
          case 0x106u:
          case 0x107u:
          case 0x108u:
          case 0x109u:
          case 0x10Au:
          case 0x10Bu:
          case 0x10Cu:
          case 0x10Du:
          case 0x10Eu:
          case 0x10Fu:
            v14 = ((v7 & 1) << 40) | (((v7 >> 1) ^ 0x80) << 32);
            v15 = 0x400000011C0;
LABEL_37:
            v19 = v14 | v15;
            goto LABEL_51;
          case 0x110u:
          case 0x111u:
          case 0x112u:
          case 0x113u:
          case 0x114u:
          case 0x115u:
          case 0x116u:
          case 0x117u:
            v17 = (v7 - 16);
            v18 = 4288;
            goto LABEL_50;
          case 0x118u:
          case 0x119u:
          case 0x11Au:
          case 0x11Bu:
          case 0x11Cu:
          case 0x11Du:
          case 0x11Eu:
          case 0x11Fu:
            v17 = (v7 - 24);
            v18 = 0x100000010C0;
            goto LABEL_50;
          case 0x120u:
          case 0x121u:
          case 0x122u:
          case 0x123u:
          case 0x124u:
          case 0x125u:
          case 0x126u:
          case 0x127u:
            v17 = (v7 - 32);
            v18 = 0x200000010C0;
            goto LABEL_50;
          case 0x128u:
          case 0x129u:
          case 0x12Au:
          case 0x12Bu:
          case 0x12Cu:
          case 0x12Du:
          case 0x12Eu:
          case 0x12Fu:
            v17 = (v7 - 40);
            v18 = 0x400000010C0;
            goto LABEL_50;
          case 0x130u:
          case 0x131u:
          case 0x132u:
          case 0x133u:
          case 0x134u:
          case 0x135u:
          case 0x136u:
          case 0x137u:
            v17 = (v7 - 48);
            v18 = 0x600000010C0;
            goto LABEL_50;
          case 0x138u:
          case 0x139u:
          case 0x13Au:
          case 0x13Bu:
          case 0x13Cu:
          case 0x13Du:
          case 0x13Eu:
          case 0x13Fu:
            v17 = (v7 - 56);
            v18 = 0x500000010C0;
            goto LABEL_50;
          case 0x140u:
          case 0x141u:
          case 0x142u:
          case 0x143u:
          case 0x144u:
          case 0x145u:
          case 0x146u:
          case 0x147u:
            v17 = (v7 - 64);
            v18 = 0x700000010C0;
            goto LABEL_50;
          case 0x148u:
          case 0x149u:
          case 0x14Au:
          case 0x14Bu:
          case 0x14Cu:
          case 0x14Du:
          case 0x14Eu:
          case 0x14Fu:
            v17 = (v7 - 72);
            v18 = 0x800000010C0;
            goto LABEL_50;
          case 0x150u:
          case 0x151u:
            v17 = v7 & 1;
            v18 = 0x6000012C0;
            goto LABEL_50;
          case 0x152u:
          case 0x153u:
            v17 = v7 & 1;
            v18 = 4800;
            goto LABEL_50;
          case 0x154u:
          case 0x155u:
            v17 = v7 & 1;
            v18 = 0x2000012C0;
            goto LABEL_50;
          case 0x156u:
          case 0x157u:
            v17 = v7 & 1;
            v18 = 0x8000012C0;
            goto LABEL_50;
          case 0x158u:
          case 0x159u:
            v17 = v7 & 1;
            v18 = 0xA000012C0;
            goto LABEL_50;
          case 0x15Au:
            v19 = 5056;
            goto LABEL_51;
          case 0x15Bu:
            v19 = 7616;
            goto LABEL_51;
          case 0x15Cu:
            v19 = 7360;
            goto LABEL_51;
          case 0x15Du:
            v19 = 6848;
            goto LABEL_51;
          case 0x15Eu:
            v19 = 7104;
            goto LABEL_51;
          case 0x15Fu:
            result = *v1;
            if (!*v1)
            {
              goto LABEL_54;
            }

            v23 = xmmword_23A2A60B0;
            v20 = *(result + 16);
            PPStreamAddConstant(result, &v23);
            v19 = v22 & 0xFFFF0000FFFFE0FFLL | ((*(v20 + 16) - 1) << 32) | 0x600;
            goto LABEL_51;
          case 0x160u:
          case 0x161u:
          case 0x162u:
          case 0x163u:
          case 0x164u:
          case 0x165u:
            v17 = (v7 - 96);
            v18 = 6336;
LABEL_50:
            v19 = v18 | (v17 << 32);
LABEL_51:
            *&v22 = v19;
            break;
          default:
            break;
        }

        result = *v1;
        if (*v1)
        {
          result = PPStreamAddParamBinding(result, &v22);
        }

LABEL_54:
        if (v3)
        {
          *(v3 + 16 + 8 * v6) = v22;
        }
      }

      else
      {
        v8 = 0;
        *&v23 = 0;
        v9 = 0x30000000000;
        if (v7 < 0x98)
        {
          v9 = 0;
        }

        v10 = 0x20000000000;
        if (v7 < 0x98)
        {
          v10 = 0x10000000000;
        }

        if ((v7 & 4) == 0)
        {
          v9 = v10;
        }

        *&v22 = v9 | ((v7 & 3) << 42) | 0x600000000FC0;
        v11 = v6;
        for (i = 16; i != 104; i += 8)
        {
          DWORD2(v22) = v11;
          *&v22 = v8 + (v22 & 0xFFFFFF00FFFFFFFFLL);
          if (*v1)
          {
            PPStreamAddParamBinding(*v1, &v22);
          }

          if (v3)
          {
            *(v3 + 8 * v6 + i) = v22;
          }

          v8 += 0x100000000;
          ++v11;
        }

        result = *v1;
        if (*v1)
        {
          v13 = (v6 << 16);
          v6 = (v6 + 10);
          *&v23 = v13 | (v6 << 48);
          result = PPStreamAddParamBindingArray(result, &v23);
        }

        else
        {
          LODWORD(v6) = v6 + 10;
        }
      }

      LODWORD(v6) = v6 + 1;
    }

    while (v6 < *(v1 + 999));
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *gleVStateProgram_AllocateOutputs(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x1800) != 0)
  {
    v3 = *(a2 + 2000);
    *(a2 + 1704) = v3;
    *(a2 + 1692 + 4 * v3 + 2) = 3;
    v4 = v3 + 1;
    *(a2 + 2000) = v3 + 1;
    v2 = *result;
    if ((*result & 0x1000000000000) != 0)
    {
      *(a2 + 1708) = v4;
      *(a2 + 1692 + 4 * v4 + 2) = 4;
      *(a2 + 2000) = v3 + 2;
      v2 = *result;
    }
  }

  if ((v2 & 0x2000) != 0 || (v2 & 0x8000000000000800) == 0x8000000000000800)
  {
    v5 = *(a2 + 2000);
    *(a2 + 1712) = v5;
    *(a2 + 1692 + 4 * v5 + 2) = 5;
    v6 = v5 + 1;
    *(a2 + 2000) = v5 + 1;
    if (*(result + 6))
    {
      *(a2 + 1716) = v6;
      *(a2 + 1692 + 4 * v6 + 2) = 6;
      *(a2 + 2000) = v5 + 2;
    }
  }

  if ((result[4] & 3) != 0)
  {
    v7 = *(a2 + 2000);
    *(a2 + 1696) = v7;
    *(a2 + 4 * v7 + 1694) = 1;
    *(a2 + 2000) = v7 + 1;
  }

  v8 = *(result + 2);
  if (*(result + 2))
  {
    v9 = (a2 + 1720);
    v10 = 7;
    do
    {
      if (v8)
      {
        v11 = *(a2 + 2000);
        *v9 = v11;
        *(a2 + 1692 + 4 * v11 + 2) = v10;
        *(a2 + 2000) = v11 + 1;
      }

      ++v10;
      v9 += 2;
      v12 = v8 > 1;
      v8 >>= 1;
    }

    while (v12);
  }

  v13 = HIDWORD(result[1]);
  if (v13)
  {
    v14 = (a2 + 1752);
    v15 = 15;
    do
    {
      if (v13)
      {
        v16 = *(a2 + 2000);
        *v14 = v16;
        *(a2 + 1692 + 4 * v16 + 2) = v15;
        *(a2 + 2000) = v16 + 1;
      }

      ++v15;
      v14 += 2;
      v12 = v13 > 1;
      LODWORD(v13) = v13 >> 1;
    }

    while (v12);
  }

  if ((*(a2 + 2032) & 1) == 0)
  {
    v17 = *(a2 + 2000);
    v18 = a2 + 1692;
    *(a2 + 1692) = v17;
    *(a2 + 1692 + 4 * v17 + 2) = 0;
    *(a2 + 1892) = v17 + 1;
    *(a2 + 1692 + 4 * (v17 + 1) + 2) = 50;
    *(a2 + 1700) = v17 + 2;
    *(a2 + 1692 + 4 * (v17 + 2) + 2) = 2;
    v19 = v17 + 3;
    *(a2 + 2000) = v17 + 3;
    if ((*(result + 7) & 0x40) != 0)
    {
      *(a2 + 1880) = v19;
      *(v18 + 4 * v19 + 2) = 47;
      v19 = v17 + 4;
    }

    *(a2 + 1884) = v19;
    *(v18 + 4 * v19 + 2) = 48;
    *(a2 + 1888) = v19 + 1;
    *(v18 + 4 * (v19 + 1) + 2) = 49;
    *(a2 + 2000) = v19 + 2;
  }

  return result;
}

uint64_t gleVStateProgram_GetAttrib(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 20;
  v3 = (a1 + 20 + 4 * a2);
  v4 = *v3;
  if (*a1)
  {
    if (v4 == 0xFFFF)
    {
      v5 = *(a1 + 1996);
      LOWORD(v4) = *(a1 + 1996);
      *v3 = v5;
      *(v2 + 4 * v5 + 2) = a2;
      *(a1 + 1996) = v5 + 1;
    }

    return v4;
  }

  else
  {
    if (v4 == 0xFFFF)
    {
      v7 = *(a1 + 1996);
      LOWORD(v4) = *(a1 + 1996);
      *v3 = v7;
      *(v2 + 4 * v7 + 2) = a2;
      *(a1 + 1996) = v7 + 1;
    }

    v6 = v4;
    v8 = *(a1 + 2032);
    if (a2 == 5)
    {
      v8 |= 4u;
      *(a1 + 2032) = v8;
    }

    if ((v8 & 1) == 0)
    {
      if (a2 < 0x3C && ((0xFFF00000000FFFFuLL >> a2) & 1) != 0)
      {
        return dword_23A2A60F0[a2];
      }

      else
      {
        return a2 - 16;
      }
    }
  }

  return v6;
}

uint64_t gleVStateProgram_LightingStage(uint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v1094 = *MEMORY[0x277D85DE8];
  memset(v1093, 0, sizeof(v1093));
  v4 = *a1;
  v5 = (*a1 >> 52) & 0xF;
  v1065 = v5 & (*a1 << 13 >> 63);
  if (*(a1 + 8) | *a1 & 0x2000000000000)
  {
    memset(&v1092[8], 0, 64);
    v6 = *(a2 + 16);
    *(a2 + 16) = 1;
    v1091 = ((8 * (v6 & 7)) | 0x100080341) + 64;
    v7 = *(a2 + 1900);
    if (v7 == 0xFFFF)
    {
      v9 = *(a2 + 2004);
      v10 = *(a2 + 2004);
      *(a2 + 1900) = v9;
      *(a2 + 2004) = ++v10;
      *&v1092[8] = (v9 << 48) | 0x1FE40;
      if ((v10 & 0x10000) != 0)
      {
        v9 = *(a2 + 2004);
        *(a2 + 1900) = v9;
        *(a2 + 2004) = v9 + 1;
      }

      v8 = v9 << 48;
    }

    else
    {
      v8 = v7 << 48;
      *&v1092[8] = (v7 << 48) | 0x1FE40;
    }

    *v1092 = v8 + 1918930944;
    (*(a2 + 2016))(a2, &v1091);
  }

  v11 = v4 << 12;
  v1071 = v3;
  if (v1065)
  {
    memset(v1092, 0, sizeof(v1092));
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
    *(a2 + 16) = 3;
    v15 = a2 + 260;
    v16 = *(a2 + 1644);
    if (v16 == 0xFFFF)
    {
      v17 = *(a2 + 1998);
      v16 = *(a2 + 1998);
      *(a2 + 1644) = v17;
      *(v15 + 4 * v17 + 2) = 346;
      *(a2 + 1998) = v17 + 1;
    }

    *&v1092[8] = ((v16 << 48) | 0x19C840) + 64;
    v18 = *(a2 + 1612);
    if (v18 == 0xFFFF)
    {
      v19 = *(a2 + 1998);
      v18 = *(a2 + 1998);
      *(a2 + 1612) = v19;
      *(v15 + 4 * v19 + 2) = 338;
      *(a2 + 1998) = v19 + 1;
    }

    *&v1092[16] = ((v18 << 48) | 0x19C840) + 64;
    *&v1092[24] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
    v14 = *(a2 + 1904);
  }

  else
  {
    if ((v1065 & 2) != 0)
    {
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v27 = a2 + 260;
      v28 = *(a2 + 1644);
      if (v28 == 0xFFFF)
      {
        v29 = *(a2 + 1998);
        v28 = *(a2 + 1998);
        *(a2 + 1644) = v29;
        *(v27 + 4 * v29 + 2) = 346;
        *(a2 + 1998) = v29 + 1;
      }

      *&v1092[8] = ((v28 << 48) | 0x19C840) + 64;
      *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
      v30 = *(a2 + 1604);
      if (v30 == 0xFFFF)
      {
        v31 = *(a2 + 1998);
        v30 = *(a2 + 1998);
        *(a2 + 1604) = v31;
        *(v27 + 4 * v31 + 2) = 336;
        *(a2 + 1998) = v31 + 1;
      }

      *&v1092[24] = ((v30 << 48) | 0x19C840) + 64;
      v14 = *(a2 + 1904);
      v3 = v1071;
      if (v14 == 0xFFFF)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    memset(&v1092[16], 0, 56);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    v12 = *(a2 + 1636);
    if (v12 == 0xFFFF)
    {
      v13 = *(a2 + 1998);
      v12 = *(a2 + 1998);
      *(a2 + 1636) = v13;
      *(a2 + 4 * v13 + 262) = 344;
      *(a2 + 1998) = v13 + 1;
    }

    *&v1092[8] = ((v12 << 48) | 0x19C840) + 64;
    v14 = *(a2 + 1904);
  }

  if (v14 == 0xFFFF)
  {
LABEL_19:
    v14 = *(a2 + 2004);
    *(a2 + 1904) = v14;
    *(a2 + 2004) = v14 + 1;
  }

LABEL_20:
  v1063 = v5 & (v11 >> 63);
  *v1092 = (v14 << 48) | 0x72679000;
  (*(a2 + 2016))(a2, &v1091);
  if (*(v3 + 8) || (v20 = *v3, (*v3 & 0x2000000000000) != 0))
  {
    memset(&v1092[8], 0, 64);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
    *(a2 + 16) = 2;
    v21 = *(a2 + 1900);
    if (v21 == 0xFFFF)
    {
      v23 = *(a2 + 2004);
      v24 = *(a2 + 2004);
      *(a2 + 1900) = v23;
      *(a2 + 2004) = ++v24;
      *&v1092[8] = (v23 << 48) | 0x19C840;
      if ((v24 & 0x10000) != 0)
      {
        v25 = *(a2 + 2004);
        v26 = *(a2 + 2004);
        *(a2 + 1900) = v25;
        *(a2 + 2004) = ++v26;
        *&v1092[16] = ((v25 << 48) | 0x1FE40) + 16;
        if ((v26 & 0x10000) != 0)
        {
          v25 = *(a2 + 2004);
          *(a2 + 1900) = v25;
          *(a2 + 2004) = v25 + 1;
        }

        v22 = v25 << 48;
        goto LABEL_36;
      }

      v22 = v23 << 48;
    }

    else
    {
      v22 = v21 << 48;
      *&v1092[8] = (v21 << 48) | 0x19C840;
    }

    *&v1092[16] = v22 + 130640;
LABEL_36:
    *v1092 = v22 | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    v20 = *v3;
  }

  if ((v20 & 0x1000000000000) == 0)
  {
    goto LABEL_57;
  }

  if (v1063)
  {
    memset(v1092, 0, sizeof(v1092));
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
    *(a2 + 16) = 3;
    v35 = a2 + 260;
    v36 = *(a2 + 1644);
    if (v36 == 0xFFFF)
    {
      v37 = *(a2 + 1998);
      v36 = *(a2 + 1998);
      *(a2 + 1644) = v37;
      *(v35 + 4 * v37 + 2) = 346;
      *(a2 + 1998) = v37 + 1;
    }

    *&v1092[8] = ((v36 << 48) | 0x19C840) + 64;
    v38 = *(a2 + 1616);
    if (v38 == 0xFFFF)
    {
      v39 = *(a2 + 1998);
      v38 = *(a2 + 1998);
      *(a2 + 1616) = v39;
      *(v35 + 4 * v39 + 2) = 339;
      *(a2 + 1998) = v39 + 1;
    }

    *&v1092[16] = ((v38 << 48) | 0x19C840) + 64;
    v40 = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
  }

  else
  {
    if ((v1063 & 2) == 0)
    {
      memset(&v1092[16], 0, 56);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      v32 = *(a2 + 1640);
      if (v32 == 0xFFFF)
      {
        v33 = *(a2 + 1998);
        v32 = *(a2 + 1998);
        *(a2 + 1640) = v33;
        *(a2 + 4 * v33 + 262) = 345;
        *(a2 + 1998) = v33 + 1;
      }

      *&v1092[8] = ((v32 << 48) | 0x19C840) + 64;
      v34 = *(a2 + 1906);
      goto LABEL_54;
    }

    memset(v1092, 0, sizeof(v1092));
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
    *(a2 + 16) = 3;
    v41 = a2 + 260;
    v42 = *(a2 + 1644);
    if (v42 == 0xFFFF)
    {
      v43 = *(a2 + 1998);
      v42 = *(a2 + 1998);
      *(a2 + 1644) = v43;
      *(v41 + 4 * v43 + 2) = 346;
      *(a2 + 1998) = v43 + 1;
    }

    *&v1092[8] = ((v42 << 48) | 0x19C840) + 64;
    *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
    v44 = *(a2 + 1608);
    if (v44 == 0xFFFF)
    {
      v45 = *(a2 + 1998);
      v44 = *(a2 + 1998);
      *(a2 + 1608) = v45;
      *(v41 + 4 * v45 + 2) = 337;
      *(a2 + 1998) = v45 + 1;
    }

    v40 = ((v44 << 48) | 0x19C840) + 64;
  }

  *&v1092[24] = v40;
  v34 = *(a2 + 1906);
LABEL_54:
  if (v34 == 0xFFFF)
  {
    v34 = *(a2 + 2004);
    *(a2 + 1906) = v34;
    *(a2 + 2004) = v34 + 1;
  }

  *v1092 = (v34 << 48) | 0x72679000;
  (*(a2 + 2016))(a2, &v1091);
LABEL_57:
  v46 = *v3;
  if ((*v3 & 0x2000000000000) == 0)
  {
    goto LABEL_67;
  }

  memset(&v1092[8], 0, 64);
  v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
  *(a2 + 16) = 2;
  v47 = *(a2 + 1900);
  if (v47 == 0xFFFF)
  {
    v50 = *(a2 + 2004);
    v51 = *(a2 + 2004);
    *(a2 + 1900) = v50;
    v52 = v51 + 1;
    *(a2 + 2004) = v51 + 1;
    v49 = (v50 << 48) | 0x19C840;
    *&v1092[8] = v49;
    if ((v52 & 0x10000) != 0)
    {
      v53 = *(a2 + 2004);
      v54 = *(a2 + 2004);
      *(a2 + 1900) = v53;
      *(a2 + 2004) = ++v54;
      *&v1092[16] = (v53 << 48) | 0x19C840;
      if ((v54 & 0x10000) != 0)
      {
        v53 = *(a2 + 2004);
        *(a2 + 1900) = v53;
        *(a2 + 2004) = v53 + 1;
      }

      v48 = v53 << 48;
      goto LABEL_66;
    }

    v48 = v50 << 48;
  }

  else
  {
    v48 = v47 << 48;
    v49 = (v47 << 48) | 0x19C840;
    *&v1092[8] = v49;
  }

  *&v1092[16] = v49;
LABEL_66:
  *v1092 = v48 + 1918930944;
  (*(a2 + 2016))(a2, &v1091);
  v46 = *v3;
LABEL_67:
  v55 = BYTE4(v46);
  if ((v46 & 0x800000000000000) != 0)
  {
    if (!BYTE4(v46))
    {
      goto LABEL_1618;
    }

    v59 = 0;
    v60 = 0;
    do
    {
      if (v55)
      {
        *(v1093 + v59++) = v60;
      }

      ++v60;
      v61 = v55 >= 2;
      v55 >>= 1;
    }

    while (v61);
    if (!v59)
    {
      goto LABEL_1618;
    }

    v62 = 0;
    v63 = 0;
    v1089 = a2 + 260;
    v1078 = (a2 + 1900);
    v1084 = a2 + 1924;
    v1076 = a2 + 1932;
    v1062 = a2 + 1970;
LABEL_78:
    v64 = 0;
    v65 = 0;
    v1069 = v62;
    v66 = v1093 + 4 * v63;
    v1064 = v59;
    v1067 = v63;
    if (v59 - v63 >= 4)
    {
      v67 = 4;
    }

    else
    {
      v67 = v59 - v63;
    }

    v68 = vand_s8(vshl_u32(vdup_n_s32(*(v3 + 2)), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v69 = 0;
    do
    {
      v70 = *&v66[4 * v64];
      v65 |= ((*(v3 + 2) >> v70) & 1) << v64;
      v69 = vorr_s8(vshl_u32(vand_s8(vshl_u32(v68, vneg_s32(vdup_n_s32(v70))), 0x100000001), vdup_n_s32(v64++)), v69);
    }

    while (v64 < v67);
    v1086 = v66;
    v1074 = v65 & 0xF ^ 0xF;
    v71 = v69;
    v1082 = v69;
    if ((v65 & 0xF) == 0xF)
    {
      goto LABEL_95;
    }

    v72 = 0;
    do
    {
      if ((v1074 >> v72))
      {
        v73 = *&v1086[4 * v72];
        memset(&v1092[16], 0, 56);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        v74 = v73 + 320;
        v75 = (v1089 + 4 * (v73 + 320));
        v76 = *v75;
        if (v76 == 0xFFFF)
        {
          v77 = *(a2 + 1998);
          v76 = *(a2 + 1998);
          *v75 = v77;
          *(v1089 + 4 * v77 + 2) = v74;
          v78 = (v74 & 0xFFFFFFF0) == 144;
          v79 = v77 + 11;
          if (!v78)
          {
            v79 = v77 + 1;
          }

          *(a2 + 1998) = v79;
        }

        *&v1092[8] = ((v76 << 48) | 0x19C840) + 64;
        v80 = a2 + 2 * v72;
        v81 = *(v80 + 1924);
        if (v81 == 0xFFFF)
        {
          v81 = *(a2 + 2004);
          *(v80 + 1924) = v81;
          *(a2 + 2004) = v81 + 1;
        }

        *v1092 = (v81 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        v71 = v1082;
      }

      ++v72;
    }

    while (v72 < v67);
    if (v65)
    {
LABEL_95:
      v82 = 0;
      do
      {
        if ((v65 >> v82))
        {
          v83 = *&v1086[4 * v82];
          memset(&v1092[24], 0, 48);
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
          *(a2 + 16) = 2;
          v84 = v83 + 320;
          v85 = (v1089 + 4 * (v83 + 320));
          v86 = *v85;
          if (v86 == 0xFFFF)
          {
            v87 = *(a2 + 1998);
            v86 = *(a2 + 1998);
            *v85 = v87;
            *(v1089 + 4 * v87 + 2) = v84;
            v78 = (v84 & 0xFFFFFFF0) == 144;
            v88 = v87 + 11;
            if (!v78)
            {
              v88 = v87 + 1;
            }

            *(a2 + 1998) = v88;
          }

          *&v1092[8] = ((v86 << 48) | 0x19C840) + 64;
          v89 = *v1078;
          if (v89 == 0xFFFF)
          {
            v89 = *(a2 + 2004);
            *v1078 = v89;
            *(a2 + 2004) = v89 + 1;
          }

          *&v1092[16] = (v89 << 48) | 0x19C840;
          v90 = a2 + 2 * v82;
          v91 = *(v90 + 1924);
          if (v91 == 0xFFFF)
          {
            v91 = *(a2 + 2004);
            *(v90 + 1924) = v91;
            *(a2 + 2004) = v91 + 1;
          }

          *v1092 = (v91 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          v71 = v1082;
        }

        ++v82;
      }

      while (v82 < v67);
      v92 = 0;
      v93 = 0;
      do
      {
        if ((v65 >> v92))
        {
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
          *(a2 + 16) = 2;
          v94 = *(v1084 + 2 * v92);
          if (v94 == 0xFFFF)
          {
            v95 = *(a2 + 2004);
            *(v1084 + 2 * v92) = v95;
            *(a2 + 2004) = v95 + 1;
            v94 = *(v1084 + 2 * v92);
            *&v1092[8] = (v95 << 48) | 0x19C840;
            if (v94 == 0xFFFF)
            {
              v94 = *(a2 + 2004);
              *(v1084 + 2 * v92) = v94;
              *(a2 + 2004) = v94 + 1;
            }
          }

          else
          {
            *&v1092[8] = (v94 << 48) | 0x19C840;
          }

          *&v1092[16] = (v94 << 48) | 0x19C840;
          v96 = *(a2 + 1946);
          if (v93)
          {
            if (v96 == 0xFFFF)
            {
              v96 = *(a2 + 2004);
              *(a2 + 1946) = v96;
              *(a2 + 2004) = v96 + 1;
            }

            v97 = ((v92 == 1) << 17) | (v96 << 48) | ((v92 == 2) << 16) | ((v92 == 3) << 15) | 0x72601000;
          }

          else
          {
            if (v96 == 0xFFFF)
            {
              v96 = *(a2 + 2004);
              *(a2 + 1946) = v96;
              *(a2 + 2004) = v96 + 1;
            }

            v97 = (v96 << 48) | 0x72679000;
          }

          *v1092 = v97;
          (*(a2 + 2016))(a2, &v1091);
          v93 = 1;
          v71 = v1082;
        }

        ++v92;
      }

      while (v92 < v67);
      v1066 = 0;
    }

    else
    {
      v1066 = 1;
    }

    if (!v1067 && (*(v1071 + 6) & 2) != 0)
    {
      memset(&v1092[8], 0, 64);
      v98 = 8 * (*(a2 + 16) & 7);
      *(a2 + 16) = 1;
      v1091 = v98 | 0x100080341;
      v99 = *v1078;
      if (v99 == 0xFFFF)
      {
        v101 = *(a2 + 2004);
        v102 = *(a2 + 2004);
        *v1078 = v101;
        *(a2 + 2004) = ++v102;
        *&v1092[8] = (v101 << 48) | 0x1FE40;
        if ((v102 & 0x10000) != 0)
        {
          v101 = *(a2 + 2004);
          *v1078 = v101;
          *(a2 + 2004) = v101 + 1;
        }

        v100 = v101 << 48;
      }

      else
      {
        v100 = v99 << 48;
        *&v1092[8] = (v99 << 48) | 0x1FE40;
      }

      *v1092 = v100 + 1918930944;
      (*(a2 + 2016))(a2, &v1091);
      v71 = v1082;
    }

    if ((v1066 & 1) == 0)
    {
      memset(&v1092[16], 0, 56);
      v103 = 8 * (*(a2 + 16) & 7);
      *(a2 + 16) = 1;
      v1091 = v103 | 0x3100080341;
      v104 = *(a2 + 1946);
      if (v104 == 0xFFFF)
      {
        v104 = *(a2 + 2004);
        *(a2 + 1946) = v104;
        *(a2 + 2004) = v104 + 1;
      }

      *&v1092[8] = (v104 << 48) | 0x19C840;
      v105 = *(a2 + 1954);
      if (v105 == 0xFFFF)
      {
        v105 = *(a2 + 2004);
        *(a2 + 1954) = v105;
        *(a2 + 2004) = v105 + 1;
      }

      *v1092 = (v105 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      v71 = v1082;
    }

    if (!v1067 && (*(v1071 + 6) & 2) != 0)
    {
      memset(&v1092[8], 0, 64);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v106 = *v1078;
      if (v106 == 0xFFFF)
      {
        v108 = *(a2 + 2004);
        v109 = *(a2 + 2004);
        *v1078 = v108;
        *(a2 + 2004) = ++v109;
        *&v1092[8] = (v108 << 48) | 0x19C840;
        if ((v109 & 0x10000) != 0)
        {
          v108 = *(a2 + 2004);
          *v1078 = v108;
          *(a2 + 2004) = v108 + 1;
        }

        v107 = v108 << 48;
      }

      else
      {
        v107 = v106 << 48;
        *&v1092[8] = (v106 << 48) | 0x19C840;
      }

      *&v1092[16] = v107 | 0x1FE40;
      v110 = *(a2 + 1942);
      if (v110 == 0xFFFF)
      {
        v110 = *(a2 + 2004);
        *(a2 + 1942) = v110;
        *(a2 + 2004) = v110 + 1;
      }

      *v1092 = (v110 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      v71 = v1082;
    }

    v111 = v71.i32[0] & v65;
    v1072 = v71.i32[0] & v65;
    if ((v1066 & 1) == 0)
    {
      v112 = 0;
      v113 = 64;
      do
      {
        if ((v65 >> v112))
        {
          memset(&v1092[24], 0, 48);
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v114 = a2 + 2 * v112;
          v115 = *(v114 + 1924);
          if (v115 == 0xFFFF)
          {
            v115 = *(a2 + 2004);
            *(v114 + 1924) = v115;
            *(a2 + 2004) = v115 + 1;
          }

          *&v1092[8] = (v115 << 48) | 0x19C840;
          v116 = *(a2 + 1954);
          if (v116 == 0xFFFF)
          {
            v116 = *(a2 + 2004);
            *(a2 + 1954) = v116;
            *(a2 + 2004) = v116 + 1;
          }

          *&v1092[16] = v113 + (v116 << 48);
          v117 = *(v114 + 1924);
          if (v117 == 0xFFFF)
          {
            v117 = *(a2 + 2004);
            *(v114 + 1924) = v117;
            *(a2 + 2004) = v117 + 1;
          }

          *v1092 = (v117 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          v71.i32[1] = v1082.i32[1];
        }

        ++v112;
        v113 += 43520;
      }

      while (v112 < v67);
      v111 = v1072;
      if (v1072)
      {
        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v118 = *(a2 + 1946);
        if (v118 == 0xFFFF)
        {
          v118 = *(a2 + 2004);
          *(a2 + 1946) = v118;
          *(a2 + 2004) = v118 + 1;
        }

        *&v1092[8] = (v118 << 48) | 0x19C840;
        v119 = *(a2 + 1954);
        if (v119 == 0xFFFF)
        {
          v119 = *(a2 + 2004);
          *(a2 + 1954) = v119;
          *(a2 + 2004) = v119 + 1;
        }

        *&v1092[16] = (v119 << 48) | 0x19C840;
        if (v118 == 0xFFFF)
        {
          v118 = *(a2 + 2004);
          *(a2 + 1946) = v118;
          *(a2 + 2004) = v118 + 1;
        }

        *v1092 = (v118 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        v120 = 0;
        v121 = 0;
        do
        {
          if ((v1072 >> v120))
          {
            v122 = *&v1086[4 * v120];
            memset(&v1092[16], 0, 56);
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            v123 = v122 + 312;
            v124 = (v1089 + 4 * (v122 + 312));
            v125 = *v124;
            if (v125 == 0xFFFF)
            {
              v126 = *(a2 + 1998);
              v125 = *(a2 + 1998);
              *v124 = v126;
              *(v1089 + 4 * v126 + 2) = v123;
              if ((v123 & 0xFFFFFFF0) == 0x90)
              {
                v127 = v126 + 11;
              }

              else
              {
                v127 = v126 + 1;
              }

              *(a2 + 1998) = v127;
            }

            *&v1092[8] = ((v125 << 48) | 0x15440) + 64;
            v128 = *(a2 + 1954);
            if (v121)
            {
              if (v128 == 0xFFFF)
              {
                v128 = *(a2 + 2004);
                *(a2 + 1954) = v128;
                *(a2 + 2004) = v128 + 1;
              }

              v129 = ((v120 == 1) << 17) | (v128 << 48) | ((v120 == 2) << 16) | ((v120 == 3) << 15) | 0x72601000;
            }

            else
            {
              if (v128 == 0xFFFF)
              {
                v128 = *(a2 + 2004);
                *(a2 + 1954) = v128;
                *(a2 + 2004) = v128 + 1;
              }

              v129 = (v128 << 48) | 0x72679000;
            }

            *v1092 = v129;
            (*(a2 + 2016))(a2, &v1091);
            memset(&v1092[16], 0, 56);
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            v130 = *v124;
            if (v130 == 0xFFFF)
            {
              v131 = *(a2 + 1998);
              v130 = *(a2 + 1998);
              *v124 = v131;
              *(v1089 + 4 * v131 + 2) = v123;
              if ((v123 & 0xFFFFFFF0) == 0x90)
              {
                v132 = v131 + 11;
              }

              else
              {
                v132 = v131 + 1;
              }

              *(a2 + 1998) = v132;
            }

            *&v1092[8] = (v130 << 48) | 0xAA80;
            v133 = *(a2 + 1962);
            if (v121)
            {
              if (v133 == 0xFFFF)
              {
                v133 = *(a2 + 2004);
                *(a2 + 1962) = v133;
                *(a2 + 2004) = v133 + 1;
              }

              v134 = ((v120 == 1) << 17) | (v133 << 48) | ((v120 == 2) << 16) | ((v120 == 3) << 15) | 0x72601000;
            }

            else
            {
              if (v133 == 0xFFFF)
              {
                v133 = *(a2 + 2004);
                *(a2 + 1962) = v133;
                *(a2 + 2004) = v133 + 1;
              }

              v134 = (v133 << 48) | 0x72679000;
            }

            *v1092 = v134;
            (*(a2 + 2016))(a2, &v1091);
            memset(&v1092[16], 0, 56);
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            v135 = *v124;
            if (v135 == 0xFFFF)
            {
              v136 = *(a2 + 1998);
              v135 = *(a2 + 1998);
              *v124 = v136;
              *(v1089 + 4 * v136 + 2) = v123;
              if ((v123 & 0xFFFFFFF0) == 0x90)
              {
                v137 = v136 + 11;
              }

              else
              {
                v137 = v136 + 1;
              }

              *(a2 + 1998) = v137;
            }

            *&v1092[8] = (v135 << 48) | 0x80;
            v138 = *(a2 + 1970);
            if (v121)
            {
              if (v138 == 0xFFFF)
              {
                v138 = *(a2 + 2004);
                *(a2 + 1970) = v138;
                *(a2 + 2004) = v138 + 1;
              }

              v139 = ((v120 == 1) << 17) | (v138 << 48) | ((v120 == 2) << 16) | ((v120 == 3) << 15) | 0x72601000;
            }

            else
            {
              if (v138 == 0xFFFF)
              {
                v138 = *(a2 + 2004);
                *(a2 + 1970) = v138;
                *(a2 + 2004) = v138 + 1;
              }

              v139 = (v138 << 48) | 0x72679000;
            }

            *v1092 = v139;
            (*(a2 + 2016))(a2, &v1091);
            v121 = 1;
          }

          ++v120;
        }

        while (v120 < v67);
        memset(v1092, 0, sizeof(v1092));
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v140 = *(a2 + 1946);
        if (v140 == 0xFFFF)
        {
          v140 = *(a2 + 2004);
          *(a2 + 1946) = v140;
          *(a2 + 2004) = v140 + 1;
        }

        *&v1092[8] = (v140 << 48) | 0x19C840;
        v141 = *(a2 + 1954);
        if (v141 == 0xFFFF)
        {
          v141 = *(a2 + 2004);
          *(a2 + 1954) = v141;
          *(a2 + 2004) = v141 + 1;
        }

        *&v1092[16] = (v141 << 48) | 0x19C840;
        v142 = *(a2 + 1962);
        if (v142 == 0xFFFF)
        {
          v142 = *(a2 + 2004);
          *(a2 + 1962) = v142;
          *(a2 + 2004) = v142 + 1;
        }

        *&v1092[24] = (v142 << 48) | 0x19C840;
        if (v141 == 0xFFFF)
        {
          v141 = *(a2 + 2004);
          *(a2 + 1954) = v141;
          *(a2 + 2004) = v141 + 1;
        }

        *v1092 = (v141 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        memset(v1092, 0, sizeof(v1092));
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v143 = *(a2 + 1946);
        if (v143 == 0xFFFF)
        {
          v143 = *(a2 + 2004);
          *(a2 + 1946) = v143;
          *(a2 + 2004) = v143 + 1;
        }

        *&v1092[8] = (v143 << 48) | 0x19C840;
        v144 = *(a2 + 1954);
        v111 = v1072;
        if (v144 == 0xFFFF)
        {
          v144 = *(a2 + 2004);
          *(a2 + 1954) = v144;
          *(a2 + 2004) = v144 + 1;
        }

        *&v1092[16] = (v144 << 48) | 0x19C840;
        v145 = *(a2 + 1970);
        if (v145 == 0xFFFF)
        {
          v145 = *(a2 + 2004);
          *(a2 + 1970) = v145;
          *(a2 + 2004) = v145 + 1;
        }

        *&v1092[24] = (v145 << 48) | 0x19C840;
        v146 = *(a2 + 1940);
        if (v146 == 0xFFFF)
        {
          v146 = *(a2 + 2004);
          *(a2 + 1940) = v146;
          *(a2 + 2004) = v146 + 1;
        }

        *v1092 = (v146 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        memset(&v1092[8], 0, 64);
        v147 = *(a2 + 16);
        *(a2 + 16) = 1;
        v1091 = (8 * (v147 & 7)) | 0x3100100381;
        v148 = *(a2 + 1940);
        if (v148 == 0xFFFF)
        {
          v150 = *(a2 + 2004);
          v151 = *(a2 + 2004);
          *(a2 + 1940) = v150;
          *(a2 + 2004) = ++v151;
          *&v1092[8] = (v150 << 48) | 0x19C840;
          if ((v151 & 0x10000) != 0)
          {
            v150 = *(a2 + 2004);
            *(a2 + 1940) = v150;
            *(a2 + 2004) = v150 + 1;
          }

          v149 = v150 << 48;
        }

        else
        {
          v149 = v148 << 48;
          *&v1092[8] = (v148 << 48) | 0x19C840;
        }

        *v1092 = v149 | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        v71.i32[1] = v1082.i32[1];
      }
    }

    v152 = v111;
    v153 = 0;
    v154 = v71.u32[1];
    v1080 = v152 | v71.i32[1];
    v155 = 1;
    do
    {
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v156 = *(a2 + 1902);
      if (v156 == 0xFFFF)
      {
        v156 = *(a2 + 2004);
        *(a2 + 1902) = v156;
        *(a2 + 2004) = v156 + 1;
      }

      *&v1092[8] = (v156 << 48) | 0x19C840;
      v157 = *(v1084 + 2 * v153);
      if (v157 == 0xFFFF)
      {
        v157 = *(a2 + 2004);
        *(v1084 + 2 * v153) = v157;
        *(a2 + 2004) = v157 + 1;
      }

      *&v1092[16] = (v157 << 48) | 0x19C840;
      v158 = *(a2 + 1920);
      if (v155)
      {
        if (v158 == 0xFFFF)
        {
          v158 = *(a2 + 2004);
          *(a2 + 1920) = v158;
          *(a2 + 2004) = v158 + 1;
        }

        v159 = (v158 << 48) | 0x72679000;
      }

      else
      {
        if (v158 == 0xFFFF)
        {
          v158 = *(a2 + 2004);
          *(a2 + 1920) = v158;
          *(a2 + 2004) = v158 + 1;
        }

        v159 = ((v153 == 1) << 17) | (v158 << 48) | ((v153 == 2) << 16) | ((v153 == 3) << 15) | 0x72601000;
      }

      *v1092 = v159;
      (*(a2 + 2016))(a2, &v1091);
      v155 = 0;
      ++v153;
    }

    while (v153 < v67);
    if (v154)
    {
      v160 = 0;
      v161 = 0;
      do
      {
        if ((v154 >> v160))
        {
          v162 = *&v1086[4 * v160];
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
          *(a2 + 16) = 2;
          v163 = v162 + 328;
          v164 = (v1089 + 4 * (v162 + 328));
          v165 = *v164;
          if (v165 == 0xFFFF)
          {
            v166 = *(a2 + 1998);
            v165 = *(a2 + 1998);
            *v164 = v166;
            *(v1089 + 4 * v166 + 2) = v163;
            v78 = (v163 & 0xFFFFFFF0) == 144;
            v167 = v166 + 11;
            if (!v78)
            {
              v167 = v166 + 1;
            }

            *(a2 + 1998) = v167;
          }

          *&v1092[8] = ((v165 << 48) | 0x19C840) + 64;
          v168 = *(v1084 + 2 * v160);
          if (v168 == 0xFFFF)
          {
            v168 = *(a2 + 2004);
            *(v1084 + 2 * v160) = v168;
            *(a2 + 2004) = v168 + 1;
          }

          *&v1092[16] = ((v168 << 48) | 0x19C840) + 16;
          v169 = *(a2 + 1954);
          if (v161)
          {
            if (v169 == 0xFFFF)
            {
              v169 = *(a2 + 2004);
              *(a2 + 1954) = v169;
              *(a2 + 2004) = v169 + 1;
            }

            v170 = ((v160 == 1) << 17) | (v169 << 48) | ((v160 == 2) << 16) | ((v160 == 3) << 15) | 0x72601000;
          }

          else
          {
            if (v169 == 0xFFFF)
            {
              v169 = *(a2 + 2004);
              *(a2 + 1954) = v169;
              *(a2 + 2004) = v169 + 1;
            }

            v170 = (v169 << 48) | 0x72679000;
          }

          *v1092 = v170;
          (*(a2 + 2016))(a2, &v1091);
          v161 = 1;
        }

        ++v160;
      }

      while (v160 < v67);
      v171 = 0;
      v172 = 0;
      do
      {
        if ((v154 >> v171))
        {
          v173 = *&v1086[4 * v171];
          memset(&v1092[16], 0, 56);
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v174 = v173 + 296;
          v175 = (v1089 + 4 * (v173 + 296));
          v176 = *v175;
          if (v176 == 0xFFFF)
          {
            v177 = *(a2 + 1998);
            v176 = *(a2 + 1998);
            *v175 = v177;
            *(v1089 + 4 * v177 + 2) = v174;
            v78 = (v174 & 0xFFFFFFF0) == 144;
            v178 = v177 + 11;
            if (!v78)
            {
              v178 = v177 + 1;
            }

            *(a2 + 1998) = v178;
          }

          *&v1092[8] = ((v176 << 48) | 0x1FE40) + 64;
          v179 = *(a2 + 1946);
          if (v172)
          {
            if (v179 == 0xFFFF)
            {
              v179 = *(a2 + 2004);
              *(a2 + 1946) = v179;
              *(a2 + 2004) = v179 + 1;
            }

            v180 = ((v171 == 1) << 17) | (v179 << 48) | ((v171 == 2) << 16) | ((v171 == 3) << 15) | 0x72601000;
          }

          else
          {
            if (v179 == 0xFFFF)
            {
              v179 = *(a2 + 2004);
              *(a2 + 1946) = v179;
              *(a2 + 2004) = v179 + 1;
            }

            v180 = (v179 << 48) | 0x72679000;
          }

          *v1092 = v180;
          (*(a2 + 2016))(a2, &v1091);
          memset(&v1092[16], 0, 56);
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v181 = v173 + 312;
          v182 = (v1089 + 4 * (v173 + 312));
          v183 = *v182;
          if (v183 == 0xFFFF)
          {
            v184 = *(a2 + 1998);
            v183 = *(a2 + 1998);
            *v182 = v184;
            *(v1089 + 4 * v184 + 2) = v181;
            v78 = (v181 & 0xFFFFFFF0) == 144;
            v185 = v184 + 11;
            if (!v78)
            {
              v185 = v184 + 1;
            }

            *(a2 + 1998) = v185;
          }

          *&v1092[8] = ((v183 << 48) | 0x1FE40) + 64;
          v186 = *(a2 + 1962);
          if (v172)
          {
            if (v186 == 0xFFFF)
            {
              v186 = *(a2 + 2004);
              *(a2 + 1962) = v186;
              *(a2 + 2004) = v186 + 1;
            }

            v187 = ((v171 == 1) << 17) | (v186 << 48) | ((v171 == 2) << 16) | ((v171 == 3) << 15) | 0x72601000;
          }

          else
          {
            if (v186 == 0xFFFF)
            {
              v186 = *(a2 + 2004);
              *(a2 + 1962) = v186;
              *(a2 + 2004) = v186 + 1;
            }

            v187 = (v186 << 48) | 0x72679000;
          }

          *v1092 = v187;
          (*(a2 + 2016))(a2, &v1091);
          v172 = 1;
        }

        ++v171;
      }

      while (v171 < v67);
      if ((v154 & ~v1072) != 0)
      {
        memset(v1092, 0, sizeof(v1092));
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000C82;
        *(a2 + 16) = 2;
        v188 = *(a2 + 1954);
        if (v188 == 0xFFFF)
        {
          v188 = *(a2 + 2004);
          *(a2 + 1954) = v188;
          *(a2 + 2004) = v188 + 1;
        }

        *&v1092[8] = (v188 << 48) | 0x19C840;
        v189 = *(a2 + 1946);
        if (v189 == 0xFFFF)
        {
          v189 = *(a2 + 2004);
          *(a2 + 1946) = v189;
          *(a2 + 2004) = v189 + 1;
        }

        *&v1092[16] = (v189 << 48) | 0x19C840;
        v190 = *(a2 + 1940);
        if (v1066)
        {
          if (v190 == 0xFFFF)
          {
            v190 = *(a2 + 2004);
            *(a2 + 1940) = v190;
            *(a2 + 2004) = v190 + 1;
          }

          v191 = (v190 << 48) | 0x72679000;
        }

        else
        {
          if (v190 == 0xFFFF)
          {
            v190 = *(a2 + 2004);
            *(a2 + 1940) = v190;
            *(a2 + 2004) = v190 + 1;
          }

          v192 = vandq_s8(vshlq_u32(vdupq_n_s32(v154 & ~v1072), xmmword_23A2A60A0), xmmword_23A29C8D0);
          *v192.i8 = vorr_s8(*v192.i8, *&vextq_s8(v192, v192, 8uLL));
          v193.i64[0] = v192.u32[0];
          v193.i64[1] = v192.u32[1];
          v191 = *&vorr_s8(v192.u32[0], *&vextq_s8(v193, v193, 8uLL)) | (v190 << 48) | 0x72601000;
        }

        *v1092 = v191;
        (*(a2 + 2016))(a2, &v1091);
      }

      if ((v1072 & v154) != 0)
      {
        memset(v1092, 0, sizeof(v1092));
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000C82;
        *(a2 + 16) = 2;
        v194 = *(a2 + 1954);
        if (v194 == 0xFFFF)
        {
          v194 = *(a2 + 2004);
          *(a2 + 1954) = v194;
          *(a2 + 2004) = v194 + 1;
        }

        *&v1092[8] = (v194 << 48) | 0x19C840;
        v195 = *(a2 + 1946);
        if (v195 == 0xFFFF)
        {
          v197 = *(a2 + 2004);
          v198 = *(a2 + 2004);
          *(a2 + 1946) = v197;
          *(a2 + 2004) = ++v198;
          *&v1092[16] = (v197 << 48) | 0x19C840;
          if ((v198 & 0x10000) != 0)
          {
            v197 = *(a2 + 2004);
            *(a2 + 1946) = v197;
            *(a2 + 2004) = v197 + 1;
          }

          v196 = v197 << 48;
        }

        else
        {
          v196 = v195 << 48;
          *&v1092[16] = (v195 << 48) | 0x19C840;
        }

        *v1092 = v196 | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v199 = *(a2 + 1940);
        if (v199 == 0xFFFF)
        {
          v199 = *(a2 + 2004);
          *(a2 + 1940) = v199;
          *(a2 + 2004) = v199 + 1;
        }

        *&v1092[8] = (v199 << 48) | 0x19C840;
        v200 = *(a2 + 1946);
        if (v200 == 0xFFFF)
        {
          v200 = *(a2 + 2004);
          *(a2 + 1946) = v200;
          *(a2 + 2004) = v200 + 1;
        }

        *&v1092[16] = (v200 << 48) | 0x19C840;
        if (v199 == 0xFFFF)
        {
          v199 = *(a2 + 2004);
          *(a2 + 1940) = v199;
          *(a2 + 2004) = v199 + 1;
        }

        v201 = vandq_s8(vshlq_u32(vdupq_n_s32(v1072 & v154), xmmword_23A2A60A0), xmmword_23A29C8D0);
        *v201.i8 = vorr_s8(*v201.i8, *&vextq_s8(v201, v201, 8uLL));
        v202.i64[0] = v201.u32[0];
        v202.i64[1] = v201.u32[1];
        *v1092 = (*&vorr_s8(v201.u32[0], *&vextq_s8(v202, v202, 8uLL)) | (v199 << 48)) + 1918898176;
        (*(a2 + 2016))(a2, &v1091);
      }

      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000E02;
      *(a2 + 16) = 2;
      v203 = *(a2 + 1954);
      if (v203 == 0xFFFF)
      {
        v203 = *(a2 + 2004);
        *(a2 + 1954) = v203;
        *(a2 + 2004) = v203 + 1;
      }

      *&v1092[8] = (v203 << 48) | 0x19C840;
      v204 = *(a2 + 1962);
      if (v204 == 0xFFFF)
      {
        v204 = *(a2 + 2004);
        *(a2 + 1962) = v204;
        *(a2 + 2004) = v204 + 1;
      }

      *&v1092[16] = (v204 << 48) | 0x19C840;
      v205 = *(a2 + 1946);
      if (v205 == 0xFFFF)
      {
        v205 = *(a2 + 2004);
        *(a2 + 1946) = v205;
        *(a2 + 2004) = v205 + 1;
      }

      *v1092 = (v205 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v206 = *(a2 + 1940);
      if (v206 == 0xFFFF)
      {
        v206 = *(a2 + 2004);
        *(a2 + 1940) = v206;
        *(a2 + 2004) = v206 + 1;
      }

      *&v1092[8] = (v206 << 48) | 0x19C840;
      v207 = *(a2 + 1946);
      if (v207 == 0xFFFF)
      {
        v207 = *(a2 + 2004);
        *(a2 + 1946) = v207;
        *(a2 + 2004) = v207 + 1;
      }

      *&v1092[16] = (v207 << 48) | 0x19C840;
      if (v206 == 0xFFFF)
      {
        v206 = *(a2 + 2004);
        *(a2 + 1940) = v206;
        *(a2 + 2004) = v206 + 1;
      }

      v208 = vandq_s8(vshlq_u32(vdupq_lane_s32(v1082, 1), xmmword_23A2A60A0), xmmword_23A29C8D0);
      *v208.i8 = vorr_s8(*v208.i8, *&vextq_s8(v208, v208, 8uLL));
      v209.i64[0] = v208.u32[0];
      v209.i64[1] = v208.u32[1];
      *v1092 = (*&vorr_s8(v208.u32[0], *&vextq_s8(v209, v209, 8uLL)) | (v206 << 48)) + 1918898176;
      (*(a2 + 2016))(a2, &v1091);
    }

    if ((*v1071 & 0x400000000000000) == 0)
    {
      if ((*v1071 & 0x2000000000000) != 0)
      {
        v258 = 0;
        do
        {
          memset(&v1092[24], 0, 48);
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
          *(a2 + 16) = 2;
          v259 = *(a2 + 1942);
          if (v259 == 0xFFFF)
          {
            v259 = *(a2 + 2004);
            *(a2 + 1942) = v259;
            *(a2 + 2004) = v259 + 1;
          }

          *&v1092[8] = (v259 << 48) | 0x19C840;
          v260 = a2 + 2 * v258;
          v261 = *(v260 + 1924);
          if (v261 == 0xFFFF)
          {
            v261 = *(a2 + 2004);
            *(v260 + 1924) = v261;
            *(a2 + 2004) = v261 + 1;
          }

          *&v1092[16] = (v261 << 48) | 0x19C840;
          v262 = *(v260 + 1932);
          if (v262 == 0xFFFF)
          {
            v262 = *(a2 + 2004);
            *(v260 + 1932) = v262;
            *(a2 + 2004) = v262 + 1;
          }

          *v1092 = (v262 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          ++v258;
        }

        while (v258 < v67);
        v263 = 0;
        v264 = 1;
        do
        {
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
          *(a2 + 16) = 2;
          v265 = *(v1076 + 2 * v263);
          if (v265 == 0xFFFF)
          {
            v266 = *(a2 + 2004);
            *(v1076 + 2 * v263) = v266;
            *(a2 + 2004) = v266 + 1;
            v265 = *(v1076 + 2 * v263);
            *&v1092[8] = (v266 << 48) | 0x19C840;
            if (v265 == 0xFFFF)
            {
              v265 = *(a2 + 2004);
              *(v1076 + 2 * v263) = v265;
              *(a2 + 2004) = v265 + 1;
            }
          }

          else
          {
            *&v1092[8] = (v265 << 48) | 0x19C840;
          }

          *&v1092[16] = (v265 << 48) | 0x19C840;
          v267 = *(a2 + 1946);
          if (v264)
          {
            if (v267 == 0xFFFF)
            {
              v267 = *(a2 + 2004);
              *(a2 + 1946) = v267;
              *(a2 + 2004) = v267 + 1;
            }

            v268 = (v267 << 48) | 0x72679000;
          }

          else
          {
            if (v267 == 0xFFFF)
            {
              v267 = *(a2 + 2004);
              *(a2 + 1946) = v267;
              *(a2 + 2004) = v267 + 1;
            }

            v268 = ((v263 == 1) << 17) | (v267 << 48) | ((v263 == 2) << 16) | ((v263 == 3) << 15) | 0x72601000;
          }

          *v1092 = v268;
          (*(a2 + 2016))(a2, &v1091);
          v264 = 0;
          ++v263;
        }

        while (v263 < v67);
        memset(&v1092[8], 0, 64);
        v269 = 8 * (*(a2 + 16) & 7);
        *(a2 + 16) = 1;
        v1091 = v269 | 0x3100080341;
        v270 = *(a2 + 1946);
        if (v270 == 0xFFFF)
        {
          v283 = *(a2 + 2004);
          v284 = *(a2 + 2004);
          *(a2 + 1946) = v283;
          *(a2 + 2004) = ++v284;
          *&v1092[8] = (v283 << 48) | 0x19C840;
          if ((v284 & 0x10000) != 0)
          {
            v283 = *(a2 + 2004);
            *(a2 + 1946) = v283;
            *(a2 + 2004) = v283 + 1;
          }

          v271 = v283 << 48;
        }

        else
        {
          v271 = v270 << 48;
          *&v1092[8] = (v270 << 48) | 0x19C840;
        }

        *v1092 = v271 | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        v285 = 966;
        v286 = 64;
        do
        {
          memset(&v1092[24], 0, 48);
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v287 = *(a2 + 2 * v285);
          if (v287 == 0xFFFF)
          {
            v287 = *(a2 + 2004);
            *(a2 + 2 * v285) = v287;
            *(a2 + 2004) = v287 + 1;
          }

          *&v1092[8] = (v287 << 48) | 0x19C840;
          v288 = *(a2 + 1946);
          if (v288 == 0xFFFF)
          {
            v288 = *(a2 + 2004);
            *(a2 + 1946) = v288;
            *(a2 + 2004) = v288 + 1;
          }

          *&v1092[16] = v286 + (v288 << 48);
          v289 = *(a2 + 2 * v285);
          if (v289 == 0xFFFF)
          {
            v289 = *(a2 + 2004);
            *(a2 + 2 * v285) = v289;
            *(a2 + 2004) = v289 + 1;
          }

          *v1092 = (v289 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          v286 += 43520;
          v290 = v285 - 965;
          ++v285;
        }

        while (v290 < v67);
      }

      else
      {
        if ((v65 & 0xF) == 0xF)
        {
          goto LABEL_340;
        }

        v210 = 0;
        do
        {
          if ((v1074 >> v210))
          {
            v211 = *&v1086[4 * v210];
            memset(&v1092[16], 0, 56);
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
            *(a2 + 16) = 1;
            v212 = v211 + 304;
            v213 = (v1089 + 4 * (v211 + 304));
            v214 = *v213;
            if (v214 == 0xFFFF)
            {
              v215 = *(a2 + 1998);
              v214 = *(a2 + 1998);
              *v213 = v215;
              *(v1089 + 4 * v215 + 2) = v212;
              v78 = (v212 & 0xFFFFFFF0) == 144;
              v216 = v215 + 11;
              if (!v78)
              {
                v216 = v215 + 1;
              }

              *(a2 + 1998) = v216;
            }

            *&v1092[8] = ((v214 << 48) | 0x19C840) + 64;
            v217 = a2 + 2 * v210;
            v218 = *(v217 + 1932);
            if (v218 == 0xFFFF)
            {
              v218 = *(a2 + 2004);
              *(v217 + 1932) = v218;
              *(a2 + 2004) = v218 + 1;
            }

            *v1092 = (v218 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
          }

          ++v210;
        }

        while (v210 < v67);
        if ((v1066 & 1) == 0)
        {
LABEL_340:
          memset(&v1092[24], 0, 48);
          v219 = 8 * (*(a2 + 16) & 7);
          *(a2 + 16) = 2;
          v1091 = v219 | 0x3100011042;
          v220 = *(a2 + 1904);
          if (v220 == 0xFFFF)
          {
            v220 = *(a2 + 2004);
            *(a2 + 1904) = v220;
            *(a2 + 2004) = v220 + 1;
          }

          *&v1092[8] = (v220 << 48) | 0x19C840;
          *&v1092[16] = 2560163840;
          v221 = *(a2 + 1946);
          if (v221 == 0xFFFF)
          {
            v221 = *(a2 + 2004);
            *(a2 + 1946) = v221;
            *(a2 + 2004) = v221 + 1;
          }

          *v1092 = (v221 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          v222 = 0;
          do
          {
            if ((v65 >> v222))
            {
              memset(&v1092[24], 0, 48);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
              *(a2 + 16) = 2;
              v223 = *(a2 + 1946);
              if (v223 == 0xFFFF)
              {
                v223 = *(a2 + 2004);
                *(a2 + 1946) = v223;
                *(a2 + 2004) = v223 + 1;
              }

              *&v1092[8] = (v223 << 48) | 0x19C840;
              v224 = a2 + 2 * v222;
              v225 = *(v224 + 1924);
              if (v225 == 0xFFFF)
              {
                v225 = *(a2 + 2004);
                *(v224 + 1924) = v225;
                *(a2 + 2004) = v225 + 1;
              }

              *&v1092[16] = (v225 << 48) | 0x19C840;
              v226 = *(v224 + 1932);
              if (v226 == 0xFFFF)
              {
                v226 = *(a2 + 2004);
                *(v224 + 1932) = v226;
                *(a2 + 2004) = v226 + 1;
              }

              *v1092 = (v226 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
            }

            ++v222;
          }

          while (v222 < v67);
          v227 = 0;
          v228 = 0;
          do
          {
            if ((v65 >> v227))
            {
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
              *(a2 + 16) = 2;
              v229 = *(v1076 + 2 * v227);
              if (v229 == 0xFFFF)
              {
                v230 = *(a2 + 2004);
                *(v1076 + 2 * v227) = v230;
                *(a2 + 2004) = v230 + 1;
                v229 = *(v1076 + 2 * v227);
                *&v1092[8] = (v230 << 48) | 0x19C840;
                if (v229 == 0xFFFF)
                {
                  v229 = *(a2 + 2004);
                  *(v1076 + 2 * v227) = v229;
                  *(a2 + 2004) = v229 + 1;
                }
              }

              else
              {
                *&v1092[8] = (v229 << 48) | 0x19C840;
              }

              *&v1092[16] = (v229 << 48) | 0x19C840;
              v231 = *(a2 + 1946);
              if (v228)
              {
                if (v231 == 0xFFFF)
                {
                  v231 = *(a2 + 2004);
                  *(a2 + 1946) = v231;
                  *(a2 + 2004) = v231 + 1;
                }

                v232 = ((v227 == 1) << 17) | (v231 << 48) | ((v227 == 2) << 16) | ((v227 == 3) << 15) | 0x72601000;
              }

              else
              {
                if (v231 == 0xFFFF)
                {
                  v231 = *(a2 + 2004);
                  *(a2 + 1946) = v231;
                  *(a2 + 2004) = v231 + 1;
                }

                v232 = (v231 << 48) | 0x72679000;
              }

              *v1092 = v232;
              (*(a2 + 2016))(a2, &v1091);
              v228 = 1;
            }

            ++v227;
          }

          while (v227 < v67);
          memset(&v1092[8], 0, 64);
          v233 = 8 * (*(a2 + 16) & 7);
          *(a2 + 16) = 1;
          v1091 = v233 | 0x3100080341;
          v234 = *(a2 + 1946);
          if (v234 == 0xFFFF)
          {
            v291 = *(a2 + 2004);
            v292 = *(a2 + 2004);
            *(a2 + 1946) = v291;
            *(a2 + 2004) = ++v292;
            *&v1092[8] = (v291 << 48) | 0x19C840;
            if ((v292 & 0x10000) != 0)
            {
              v291 = *(a2 + 2004);
              *(a2 + 1946) = v291;
              *(a2 + 2004) = v291 + 1;
            }

            v235 = v291 << 48;
          }

          else
          {
            v235 = v234 << 48;
            *&v1092[8] = (v234 << 48) | 0x19C840;
          }

          *v1092 = v235 | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          v293 = 0;
          v294 = 64;
          do
          {
            if ((v65 >> v293))
            {
              memset(&v1092[24], 0, 48);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v295 = a2 + 2 * v293;
              v296 = *(v295 + 1932);
              if (v296 == 0xFFFF)
              {
                v296 = *(a2 + 2004);
                *(v295 + 1932) = v296;
                *(a2 + 2004) = v296 + 1;
              }

              *&v1092[8] = (v296 << 48) | 0x19C840;
              v297 = *(a2 + 1946);
              if (v297 == 0xFFFF)
              {
                v297 = *(a2 + 2004);
                *(a2 + 1946) = v297;
                *(a2 + 2004) = v297 + 1;
              }

              *&v1092[16] = v294 + (v297 << 48);
              v298 = *(v295 + 1932);
              if (v298 == 0xFFFF)
              {
                v298 = *(a2 + 2004);
                *(v295 + 1932) = v298;
                *(a2 + 2004) = v298 + 1;
              }

              *v1092 = (v298 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
            }

            ++v293;
            v294 += 43520;
          }

          while (v293 < v67);
        }
      }

      v299 = 0;
      v300 = 1;
      do
      {
        memset(v1092, 0, sizeof(v1092));
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
        *(a2 + 16) = 2;
        v301 = *(a2 + 1902);
        if (v301 == 0xFFFF)
        {
          v301 = *(a2 + 2004);
          *(a2 + 1902) = v301;
          *(a2 + 2004) = v301 + 1;
        }

        *&v1092[8] = (v301 << 48) | 0x19C840;
        v302 = *(v1076 + 2 * v299);
        if (v302 == 0xFFFF)
        {
          v302 = *(a2 + 2004);
          *(v1076 + 2 * v299) = v302;
          *(a2 + 2004) = v302 + 1;
        }

        *&v1092[16] = (v302 << 48) | 0x19C840;
        v303 = *(a2 + 1922);
        if (v300)
        {
          if (v303 == 0xFFFF)
          {
            v303 = *(a2 + 2004);
            *(a2 + 1922) = v303;
            *(a2 + 2004) = v303 + 1;
          }

          v304 = (v303 << 48) | 0x72679000;
        }

        else
        {
          if (v303 == 0xFFFF)
          {
            v303 = *(a2 + 2004);
            *(a2 + 1922) = v303;
            *(a2 + 2004) = v303 + 1;
          }

          v304 = ((v299 == 1) << 17) | (v303 << 48) | ((v299 == 2) << 16) | ((v299 == 3) << 15) | 0x72601000;
        }

        *v1092 = v304;
        (*(a2 + 2016))(a2, &v1091);
        v300 = 0;
        ++v299;
      }

      while (v299 < v67);
      goto LABEL_494;
    }

    v236 = 0;
    v237 = (a2 + 1932);
    do
    {
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000B82;
      *(a2 + 16) = 2;
      v238 = *(a2 + 1902);
      if (v238 == 0xFFFF)
      {
        v238 = *(a2 + 2004);
        *(a2 + 1902) = v238;
        *(a2 + 2004) = v238 + 1;
      }

      *&v1092[8] = (v238 << 48) | 0x19C840;
      v239 = a2 + 2 * v236;
      v240 = *(v239 + 1924);
      if (v240 == 0xFFFF)
      {
        v240 = *(a2 + 2004);
        *(v239 + 1924) = v240;
        *(a2 + 2004) = v240 + 1;
      }

      *&v1092[16] = (v240 << 48) | 0x19C840;
      v241 = *(v239 + 1932);
      if (v241 == 0xFFFF)
      {
        v241 = *(a2 + 2004);
        *(v239 + 1932) = v241;
        *(a2 + 2004) = v241 + 1;
      }

      *v1092 = (v241 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      ++v236;
    }

    while (v236 < v67);
    v242 = 966;
    do
    {
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000B82;
      *(a2 + 16) = 2;
      v243 = *(a2 + 1902);
      if (v243 == 0xFFFF)
      {
        v243 = *(a2 + 2004);
        *(a2 + 1902) = v243;
        *(a2 + 2004) = v243 + 1;
      }

      *&v1092[8] = (v243 << 48) | 0x19C840;
      v244 = *(a2 + 2 * v242);
      if (v244 == 0xFFFF)
      {
        v245 = *(a2 + 2004);
        *(a2 + 2 * v242) = v245;
        *(a2 + 2004) = v245 + 1;
        v244 = *(a2 + 2 * v242);
        *&v1092[16] = (v245 << 48) | 0x19C840;
        if (v244 == 0xFFFF)
        {
          v244 = *(a2 + 2004);
          *(a2 + 2 * v242) = v244;
          *(a2 + 2004) = v244 + 1;
        }
      }

      else
      {
        *&v1092[16] = (v244 << 48) | 0x19C840;
      }

      *v1092 = (v244 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      v246 = v242 - 965;
      ++v242;
    }

    while (v246 < v67);
    v247 = 966;
    while (1)
    {
      memset(&v1092[8], 0, 64);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
      *(a2 + 16) = 2;
      v248 = *(a2 + 2 * v247);
      if (v248 == 0xFFFF)
      {
        v249 = *(a2 + 2004);
        *(a2 + 2 * v247) = v249;
        *(a2 + 2004) = v249 + 1;
        v248 = *(a2 + 2 * v247);
        *&v1092[8] = (v249 << 48) | 0x19C840;
        if (v248 == 0xFFFF)
        {
          v251 = *(a2 + 2004);
          *(a2 + 2 * v247) = v251;
          *(a2 + 2004) = v251 + 1;
          v248 = *(a2 + 2 * v247);
          *&v1092[16] = (v251 << 48) | 0x19C840;
          if (v248 == 0xFFFF)
          {
            v248 = *(a2 + 2004);
            *(a2 + 2 * v247) = v248;
            *(a2 + 2004) = v248 + 1;
          }

          goto LABEL_392;
        }
      }

      else
      {
        *&v1092[8] = (v248 << 48) | 0x19C840;
      }

      *&v1092[16] = (v248 << 48) | 0x19C840;
LABEL_392:
      *v1092 = (v248 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      v250 = v247 - 965;
      ++v247;
      if (v250 >= v67)
      {
        if ((*(v1071 + 6) & 2) != 0)
        {
          v272 = 0;
          do
          {
            memset(&v1092[24], 0, 48);
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
            *(a2 + 16) = 2;
            v273 = a2 + 2 * v272;
            v274 = *(v273 + 1932);
            if (v274 == 0xFFFF)
            {
              v274 = *(a2 + 2004);
              *(v273 + 1932) = v274;
              *(a2 + 2004) = v274 + 1;
            }

            *&v1092[8] = (v274 << 48) | 0x19C840;
            v275 = *(v273 + 1924);
            if (v275 == 0xFFFF)
            {
              v275 = *(a2 + 2004);
              *(v273 + 1924) = v275;
              *(a2 + 2004) = v275 + 1;
            }

            *&v1092[16] = (v275 << 48) | 0x19C840;
            v276 = *(v273 + 1932);
            if (v276 == 0xFFFF)
            {
              v276 = *(a2 + 2004);
              *(v273 + 1932) = v276;
              *(a2 + 2004) = v276 + 1;
            }

            *v1092 = (v276 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            ++v272;
          }

          while (v272 < v67);
          v277 = 0;
          v278 = 1;
          do
          {
            memset(v1092, 0, sizeof(v1092));
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
            *(a2 + 16) = 2;
            v279 = *(v1076 + 2 * v277);
            if (v279 == 0xFFFF)
            {
              v279 = *(a2 + 2004);
              *(v1076 + 2 * v277) = v279;
              *(a2 + 2004) = v279 + 1;
            }

            *&v1092[8] = (v279 << 48) | 0x19C840;
            v280 = *(a2 + 1942);
            if (v280 == 0xFFFF)
            {
              v280 = *(a2 + 2004);
              *(a2 + 1942) = v280;
              *(a2 + 2004) = v280 + 1;
            }

            *&v1092[16] = (v280 << 48) | 0x19C840;
            v281 = *(a2 + 1922);
            if (v278)
            {
              if (v281 == 0xFFFF)
              {
                v281 = *(a2 + 2004);
                *(a2 + 1922) = v281;
                *(a2 + 2004) = v281 + 1;
              }

              v282 = (v281 << 48) | 0x72679000;
            }

            else
            {
              if (v281 == 0xFFFF)
              {
                v281 = *(a2 + 2004);
                *(a2 + 1922) = v281;
                *(a2 + 2004) = v281 + 1;
              }

              v282 = ((v277 == 1) << 17) | (v281 << 48) | ((v277 == 2) << 16) | ((v277 == 3) << 15) | 0x72601000;
            }

            *v1092 = v282;
            (*(a2 + 2016))(a2, &v1091);
            v278 = 0;
            ++v277;
          }

          while (v277 < v67);
        }

        else
        {
          v252 = 0;
          v253 = 1;
          do
          {
            memset(v1092, 0, sizeof(v1092));
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
            *(a2 + 16) = 2;
            v254 = *v237;
            if (v254 == 0xFFFF)
            {
              v254 = *(a2 + 2004);
              *v237 = v254;
              *(a2 + 2004) = v254 + 1;
            }

            *&v1092[8] = (v254 << 48) | 0x15440;
            v255 = *(v237 - 4);
            if (v255 == 0xFFFF)
            {
              v255 = *(a2 + 2004);
              *(v237 - 4) = v255;
              *(a2 + 2004) = v255 + 1;
            }

            *&v1092[16] = (v255 << 48) | 0x15440;
            v256 = *(a2 + 1922);
            if (v253)
            {
              if (v256 == 0xFFFF)
              {
                v256 = *(a2 + 2004);
                *(a2 + 1922) = v256;
                *(a2 + 2004) = v256 + 1;
              }

              v257 = (v256 << 48) | 0x72679000;
            }

            else
            {
              if (v256 == 0xFFFF)
              {
                v256 = *(a2 + 2004);
                *(a2 + 1922) = v256;
                *(a2 + 2004) = v256 + 1;
              }

              v257 = ((v252 == 1) << 17) | (v256 << 48) | ((v252 == 2) << 16) | ((v252 == 3) << 15) | 0x72601000;
            }

            *v1092 = v257;
            (*(a2 + 2016))(a2, &v1091);
            v253 = 0;
            ++v252;
            ++v237;
          }

          while (v252 < v67);
        }

LABEL_494:
        if (*(v1071 + 6))
        {
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
          *(a2 + 16) = 3;
          v305 = *(a2 + 1920);
          if (v305 == 0xFFFF)
          {
            v305 = *(a2 + 2004);
            *(a2 + 1920) = v305;
            *(a2 + 2004) = v305 + 1;
          }

          *&v1092[8] = (v305 << 48) | 0x19C840;
          v306 = *(a2 + 1922);
          if (v306 != 0xFFFF)
          {
            v307 = v306 << 48;
            *&v1092[16] = ((v306 << 48) | 0x19C840) + 16;
            goto LABEL_504;
          }

          v308 = *(a2 + 2004);
          v309 = *(a2 + 2004);
          *(a2 + 1922) = v308;
          *(a2 + 2004) = ++v309;
          *&v1092[16] = ((v308 << 48) | 0x19C840) + 16;
          if ((v309 & 0x10000) != 0)
          {
            v310 = *(a2 + 2004);
            v311 = *(a2 + 2004);
            *(a2 + 1922) = v310;
            *(a2 + 2004) = ++v311;
            *&v1092[24] = (v310 << 48) | 0x19C840;
            if ((v311 & 0x10000) != 0)
            {
              v310 = *(a2 + 2004);
              *(a2 + 1922) = v310;
              *(a2 + 2004) = v310 + 1;
            }

            v307 = v310 << 48;
          }

          else
          {
            v307 = v308 << 48;
LABEL_504:
            *&v1092[24] = v307 | 0x19C840;
          }

          *v1092 = v307 | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
        }

        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
        *(a2 + 16) = 2;
        v312 = *(a2 + 1922);
        if (v312 == 0xFFFF)
        {
          v312 = *(a2 + 2004);
          *(a2 + 1922) = v312;
          *(a2 + 2004) = v312 + 1;
        }

        *&v1092[8] = (v312 << 48) | 0x19C840;
        v313 = *(a2 + 1664);
        if (v313 == 0xFFFF)
        {
          v314 = *(a2 + 1998);
          v313 = *(a2 + 1998);
          *(a2 + 1664) = v314;
          *(v1089 + 4 * v314 + 2) = 351;
          *(a2 + 1998) = v314 + 1;
          v312 = *(a2 + 1922);
        }

        *&v1092[16] = (v313 << 48) | 0xAA80;
        if (v312 == 0xFFFF)
        {
          v312 = *(a2 + 2004);
          *(a2 + 1922) = v312;
          *(a2 + 2004) = v312 + 1;
        }

        *v1092 = (v312 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        if (*(v1071 + 6))
        {
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
          *(a2 + 16) = 3;
          v319 = *(a2 + 1920);
          if (v319 == 0xFFFF)
          {
            v319 = *(a2 + 2004);
            *(a2 + 1920) = v319;
            *(a2 + 2004) = v319 + 1;
          }

          *&v1092[8] = (v319 << 48) | 0x19C840;
          v320 = *(a2 + 1632);
          if (v320 == 0xFFFF)
          {
            v321 = *(a2 + 1998);
            v320 = *(a2 + 1998);
            *(a2 + 1632) = v321;
            *(v1089 + 4 * v321 + 2) = 343;
            *(a2 + 1998) = v321 + 1;
          }

          *&v1092[16] = (v320 << 48) | 0x80;
          v322 = *(a2 + 1628);
          if (v322 == 0xFFFF)
          {
            v323 = *(a2 + 1998);
            v322 = *(a2 + 1998);
            *(a2 + 1628) = v323;
            *(v1089 + 4 * v323 + 2) = 342;
            *(a2 + 1998) = v323 + 1;
          }

          *&v1092[24] = (v322 << 48) | 0x80;
          v324 = *(a2 + 1946);
          if (v324 == 0xFFFF)
          {
            v324 = *(a2 + 2004);
            *(a2 + 1946) = v324;
            *(a2 + 2004) = v324 + 1;
          }

          *v1092 = (v324 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          memset(&v1092[24], 0, 48);
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000E02;
          *(a2 + 16) = 2;
          v316 = *(a2 + 1922);
          if (v316 == 0xFFFF)
          {
            v316 = *(a2 + 2004);
            *(a2 + 1922) = v316;
            *(a2 + 2004) = v316 + 1;
          }

          *&v1092[8] = (v316 << 48) | 0x19C840;
          v325 = *(a2 + 1946);
          if (v325 == 0xFFFF)
          {
            v325 = *(a2 + 2004);
            *(a2 + 1946) = v325;
            *(a2 + 2004) = v325 + 1;
          }

          *&v1092[16] = (v325 << 48) | 0x19C840;
          if (v316 == 0xFFFF)
          {
            v316 = *(a2 + 2004);
            *(a2 + 1922) = v316;
            *(a2 + 2004) = v316 + 1;
          }
        }

        else
        {
          memset(&v1092[24], 0, 48);
          v315 = *(a2 + 16);
          *(a2 + 16) = 2;
          v1091 = (8 * (v315 & 7)) | 0x100000E02;
          v316 = *(a2 + 1922);
          if (v316 == 0xFFFF)
          {
            v316 = *(a2 + 2004);
            *(a2 + 1922) = v316;
            *(a2 + 2004) = v316 + 1;
          }

          *&v1092[8] = (v316 << 48) | 0x19C840;
          v317 = *(a2 + 1628);
          if (v317 == 0xFFFF)
          {
            v318 = *(a2 + 1998);
            v317 = *(a2 + 1998);
            *(a2 + 1628) = v318;
            *(v1089 + 4 * v318 + 2) = 342;
            *(a2 + 1998) = v318 + 1;
            v316 = *(a2 + 1922);
          }

          *&v1092[16] = (v317 << 48) | 0x80;
          if (v316 == 0xFFFF)
          {
            v316 = *(a2 + 2004);
            *(a2 + 1922) = v316;
            *(a2 + 2004) = v316 + 1;
          }
        }

        *v1092 = (v316 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        memset(v1092, 0, sizeof(v1092));
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
        *(a2 + 16) = 3;
        v326 = *(a2 + 1920);
        if (v326 == 0xFFFF)
        {
          v328 = *(a2 + 2004);
          v329 = *(a2 + 2004);
          *(a2 + 1920) = v328;
          *(a2 + 2004) = ++v329;
          *&v1092[8] = ((v328 << 48) | 0x19C840) + 16;
          if ((v329 & 0x10000) != 0)
          {
            v328 = *(a2 + 2004);
            *(a2 + 1920) = v328;
            *(a2 + 2004) = v328 + 1;
          }

          v327 = v328 << 48;
        }

        else
        {
          v327 = v326 << 48;
          *&v1092[8] = ((v326 << 48) | 0x19C840) + 16;
        }

        *&v1092[16] = v327 | 0x19C840;
        v330 = *(a2 + 1664);
        if (v330 == 0xFFFF)
        {
          v331 = *(a2 + 1998);
          v330 = *(a2 + 1998);
          *(a2 + 1664) = v331;
          *(v1089 + 4 * v331 + 2) = 351;
          *(a2 + 1998) = v331 + 1;
        }

        *&v1092[24] = (v330 << 48) | 0xAA80;
        v332 = *(a2 + 1916);
        if (v332 == 0xFFFF)
        {
          v332 = *(a2 + 2004);
          *(a2 + 1916) = v332;
          *(a2 + 2004) = v332 + 1;
        }

        *v1092 = (v332 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        if (*(v1071 + 6))
        {
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
          *(a2 + 16) = 3;
          v333 = *(a2 + 1920);
          if (v333 == 0xFFFF)
          {
            v336 = *(a2 + 2004);
            v337 = *(a2 + 2004);
            *(a2 + 1920) = v336;
            *(a2 + 2004) = ++v337;
            *&v1092[8] = (v336 << 48) | 0x19C840;
            if ((v337 & 0x10000) != 0)
            {
              v336 = *(a2 + 2004);
              v338 = *(a2 + 2004);
              *(a2 + 1920) = v336;
              v339 = v338 + 1;
              v334 = (v338 + 1) >> 16;
              *(a2 + 2004) = v339;
            }

            else
            {
              v334 = 0;
            }

            v335 = v336 << 48;
          }

          else
          {
            v334 = 0;
            v335 = v333 << 48;
            *&v1092[8] = (v333 << 48) | 0x19C840;
          }

          *&v1092[16] = v335 + 1689680;
          v340 = *(a2 + 1664);
          if (v340 == 0xFFFF)
          {
            v341 = *(a2 + 1998);
            v340 = *(a2 + 1998);
            *(a2 + 1664) = v341;
            *(v1089 + 4 * v341 + 2) = 351;
            *(a2 + 1998) = v341 + 1;
          }

          *&v1092[24] = (v340 << 48) | 0xAA80;
          if (v334)
          {
            v342 = *(a2 + 2004);
            *(a2 + 1920) = v342;
            *(a2 + 2004) = v342 + 1;
            v335 = v342 << 48;
          }

          *v1092 = v335 | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
        }

        if ((v1065 & 6) == 6)
        {
          v343 = 0;
          do
          {
            v344 = *&v1086[4 * v343];
            memset(&v1092[24], 0, 48);
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v345 = v344 + 272;
            v346 = (v1089 + 4 * (v344 + 272));
            v347 = *v346;
            if (v347 == 0xFFFF)
            {
              v348 = *(a2 + 1998);
              v347 = *(a2 + 1998);
              *v346 = v348;
              *(v1089 + 4 * v348 + 2) = v345;
              v78 = (v345 & 0xFFFFFFF0) == 144;
              v349 = v348 + 11;
              if (!v78)
              {
                v349 = v348 + 1;
              }

              *(a2 + 1998) = v349;
            }

            *&v1092[8] = ((v347 << 48) | 0x19C840) + 64;
            *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
            v350 = a2 + 2 * v343;
            v351 = *(v350 + 1946);
            if (v351 == 0xFFFF)
            {
              v351 = *(a2 + 2004);
              *(v350 + 1946) = v351;
              *(a2 + 2004) = v351 + 1;
            }

            *v1092 = (v351 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            ++v343;
          }

          while (v343 < v67);
          v352 = 0;
          do
          {
            v353 = *&v1086[4 * v352];
            memset(&v1092[24], 0, 48);
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v354 = v353 + 280;
            v355 = (v1089 + 4 * (v353 + 280));
            v356 = *v355;
            if (v356 == 0xFFFF)
            {
              v357 = *(a2 + 1998);
              v356 = *(a2 + 1998);
              *v355 = v357;
              *(v1089 + 4 * v357 + 2) = v354;
              v78 = (v354 & 0xFFFFFFF0) == 144;
              v358 = v357 + 11;
              if (!v78)
              {
                v358 = v357 + 1;
              }

              *(a2 + 1998) = v358;
            }

            *&v1092[8] = ((v356 << 48) | 0x19C840) + 64;
            *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
            v359 = a2 + 2 * v352;
            v360 = *(v359 + 1962);
            if (v360 == 0xFFFF)
            {
              v360 = *(a2 + 2004);
              *(v359 + 1962) = v360;
              *(a2 + 2004) = v360 + 1;
            }

            *v1092 = (v360 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            ++v352;
          }

          while (v352 < v67);
          v361 = 0;
          v362 = 64;
          do
          {
            memset(v1092, 0, sizeof(v1092));
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            v363 = *(a2 + 1916);
            if (v363 == 0xFFFF)
            {
              v363 = *(a2 + 2004);
              *(a2 + 1916) = v363;
              *(a2 + 2004) = v363 + 1;
            }

            *&v1092[8] = v362 + (v363 << 48);
            v364 = a2 + 2 * v361;
            v365 = *(v364 + 1962);
            if (v365 == 0xFFFF)
            {
              v365 = *(a2 + 2004);
              *(v364 + 1962) = v365;
              *(a2 + 2004) = v365 + 1;
            }

            *&v1092[16] = (v365 << 48) | 0x19C840;
            v366 = *(v364 + 1946);
            if (v366 == 0xFFFF)
            {
              v367 = *(a2 + 2004);
              *(v364 + 1946) = v367;
              *(a2 + 2004) = v367 + 1;
              v366 = *(v364 + 1946);
              *&v1092[24] = (v367 << 48) | 0x19C840;
              if (v366 == 0xFFFF)
              {
                v366 = *(a2 + 2004);
                *(v364 + 1946) = v366;
                *(a2 + 2004) = v366 + 1;
              }
            }

            else
            {
              *&v1092[24] = (v366 << 48) | 0x19C840;
            }

            *v1092 = (v366 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            ++v361;
            v362 += 43520;
          }

          while (v361 < v67);
        }

        else if ((v1065 & 2) != 0)
        {
          v405 = 0;
          do
          {
            v406 = *&v1086[4 * v405];
            memset(&v1092[24], 0, 48);
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v407 = v406 + 272;
            v408 = (v1089 + 4 * (v406 + 272));
            v409 = *v408;
            if (v409 == 0xFFFF)
            {
              v410 = *(a2 + 1998);
              v409 = *(a2 + 1998);
              *v408 = v410;
              *(v1089 + 4 * v410 + 2) = v407;
              v78 = (v407 & 0xFFFFFFF0) == 144;
              v411 = v410 + 11;
              if (!v78)
              {
                v411 = v410 + 1;
              }

              *(a2 + 1998) = v411;
            }

            *&v1092[8] = ((v409 << 48) | 0x19C840) + 64;
            *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
            v412 = a2 + 2 * v405;
            v413 = *(v412 + 1946);
            if (v413 == 0xFFFF)
            {
              v413 = *(a2 + 2004);
              *(v412 + 1946) = v413;
              *(a2 + 2004) = v413 + 1;
            }

            *v1092 = (v413 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            ++v405;
          }

          while (v405 < v67);
          v414 = 0;
          v415 = 64;
          do
          {
            v416 = *&v1086[4 * v414];
            memset(v1092, 0, sizeof(v1092));
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            v417 = *(a2 + 1916);
            if (v417 == 0xFFFF)
            {
              v417 = *(a2 + 2004);
              *(a2 + 1916) = v417;
              *(a2 + 2004) = v417 + 1;
            }

            *&v1092[8] = v415 + (v417 << 48);
            v418 = 2 * v416 + 240;
            v419 = (v1089 + 4 * v418);
            v420 = *v419;
            if (v420 == 0xFFFF)
            {
              v421 = *(a2 + 1998);
              v420 = *(a2 + 1998);
              *v419 = v421;
              *(v1089 + 4 * v421 + 2) = v418;
              v78 = (v418 & 0xFFFFFFF0) == 144;
              v422 = v421 + 11;
              if (!v78)
              {
                v422 = v421 + 1;
              }

              *(a2 + 1998) = v422;
            }

            *&v1092[16] = ((v420 << 48) | 0x19C840) + 64;
            v423 = a2 + 2 * v414;
            v424 = *(v423 + 1946);
            if (v424 == 0xFFFF)
            {
              v425 = *(a2 + 2004);
              *(v423 + 1946) = v425;
              *(a2 + 2004) = v425 + 1;
              v424 = *(v423 + 1946);
              *&v1092[24] = (v425 << 48) | 0x19C840;
              if (v424 == 0xFFFF)
              {
                v424 = *(a2 + 2004);
                *(v423 + 1946) = v424;
                *(a2 + 2004) = v424 + 1;
              }
            }

            else
            {
              *&v1092[24] = (v424 << 48) | 0x19C840;
            }

            *v1092 = (v424 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            ++v414;
            v415 += 43520;
          }

          while (v414 < v67);
        }

        else
        {
          v368 = 0;
          if ((v1065 & 4) != 0)
          {
            do
            {
              v385 = *&v1086[4 * v368];
              memset(&v1092[24], 0, 48);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v386 = v385 + 280;
              v387 = (v1089 + 4 * (v385 + 280));
              v388 = *v387;
              if (v388 == 0xFFFF)
              {
                v389 = *(a2 + 1998);
                v388 = *(a2 + 1998);
                *v387 = v389;
                *(v1089 + 4 * v389 + 2) = v386;
                v78 = (v386 & 0xFFFFFFF0) == 144;
                v390 = v389 + 11;
                if (!v78)
                {
                  v390 = v389 + 1;
                }

                *(a2 + 1998) = v390;
              }

              *&v1092[8] = ((v388 << 48) | 0x19C840) + 64;
              *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
              v391 = a2 + 2 * v368;
              v392 = *(v391 + 1962);
              if (v392 == 0xFFFF)
              {
                v392 = *(a2 + 2004);
                *(v391 + 1962) = v392;
                *(a2 + 2004) = v392 + 1;
              }

              *v1092 = (v392 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v368;
            }

            while (v368 < v67);
            v393 = 0;
            v394 = 64;
            do
            {
              v395 = *&v1086[4 * v393];
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v396 = *(a2 + 1916);
              if (v396 == 0xFFFF)
              {
                v396 = *(a2 + 2004);
                *(a2 + 1916) = v396;
                *(a2 + 2004) = v396 + 1;
              }

              *&v1092[8] = v394 + (v396 << 48);
              v397 = a2 + 2 * v393;
              v398 = *(v397 + 1962);
              if (v398 == 0xFFFF)
              {
                v398 = *(a2 + 2004);
                *(v397 + 1962) = v398;
                *(a2 + 2004) = v398 + 1;
              }

              *&v1092[16] = (v398 << 48) | 0x19C840;
              v399 = 2 * v395 + 224;
              v400 = (v1089 + 4 * v399);
              v401 = *v400;
              if (v401 == 0xFFFF)
              {
                v402 = *(a2 + 1998);
                v401 = *(a2 + 1998);
                *v400 = v402;
                *(v1089 + 4 * v402 + 2) = v399;
                v78 = (v399 & 0xFFFFFFF0) == 144;
                v403 = v402 + 11;
                if (!v78)
                {
                  v403 = v402 + 1;
                }

                *(a2 + 1998) = v403;
              }

              *&v1092[24] = ((v401 << 48) | 0x19C840) + 64;
              v404 = *(v397 + 1946);
              if (v404 == 0xFFFF)
              {
                v404 = *(a2 + 2004);
                *(v397 + 1946) = v404;
                *(a2 + 2004) = v404 + 1;
              }

              *v1092 = (v404 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v393;
              v394 += 43520;
            }

            while (v393 < v67);
          }

          else
          {
            v369 = 64;
            do
            {
              v370 = *&v1086[4 * v368];
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v371 = *(a2 + 1916);
              if (v371 == 0xFFFF)
              {
                v371 = *(a2 + 2004);
                *(a2 + 1916) = v371;
                *(a2 + 2004) = v371 + 1;
              }

              *&v1092[8] = v369 + (v371 << 48);
              v372 = 2 * v370;
              v373 = v372 + 240;
              v374 = (v1089 + 4 * (v372 + 240));
              v375 = *v374;
              if (v375 == 0xFFFF)
              {
                v376 = *(a2 + 1998);
                v375 = *(a2 + 1998);
                *v374 = v376;
                *(v1089 + 4 * v376 + 2) = v373;
                v78 = (v373 & 0xFFFFFFF0) == 144;
                v377 = v376 + 11;
                if (!v78)
                {
                  v377 = v376 + 1;
                }

                *(a2 + 1998) = v377;
              }

              *&v1092[16] = ((v375 << 48) | 0x19C840) + 64;
              v378 = v372 + 224;
              v379 = (v1089 + 4 * (v372 + 224));
              v380 = *v379;
              if (v380 == 0xFFFF)
              {
                v381 = *(a2 + 1998);
                v380 = *(a2 + 1998);
                *v379 = v381;
                *(v1089 + 4 * v381 + 2) = v378;
                v78 = (v378 & 0xFFFFFFF0) == 144;
                v382 = v381 + 11;
                if (!v78)
                {
                  v382 = v381 + 1;
                }

                *(a2 + 1998) = v382;
              }

              *&v1092[24] = ((v380 << 48) | 0x19C840) + 64;
              v383 = a2 + 2 * v368;
              v384 = *(v383 + 1946);
              if (v384 == 0xFFFF)
              {
                v384 = *(a2 + 2004);
                *(v383 + 1946) = v384;
                *(a2 + 2004) = v384 + 1;
              }

              *v1092 = (v384 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v368;
              v369 += 43520;
            }

            while (v368 < v67);
          }
        }

        if (*(v1071 + 6))
        {
          if ((v1063 & 6) == 6)
          {
            v426 = 0;
            do
            {
              v427 = *&v1086[4 * v426];
              memset(&v1092[24], 0, 48);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v428 = v427 + 272;
              v429 = (v1089 + 4 * (v427 + 272));
              v430 = *v429;
              if (v430 == 0xFFFF)
              {
                v431 = *(a2 + 1998);
                v430 = *(a2 + 1998);
                *v429 = v431;
                *(v1089 + 4 * v431 + 2) = v428;
                v78 = (v428 & 0xFFFFFFF0) == 144;
                v432 = v431 + 11;
                if (!v78)
                {
                  v432 = v431 + 1;
                }

                *(a2 + 1998) = v432;
              }

              *&v1092[8] = ((v430 << 48) | 0x19C840) + 64;
              *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
              v433 = a2 + 2 * v426;
              v434 = *(v433 + 1954);
              if (v434 == 0xFFFF)
              {
                v434 = *(a2 + 2004);
                *(v433 + 1954) = v434;
                *(a2 + 2004) = v434 + 1;
              }

              *v1092 = (v434 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v426;
            }

            while (v426 < v67);
            v435 = 0;
            do
            {
              v436 = *&v1086[4 * v435];
              memset(&v1092[24], 0, 48);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v437 = v436 + 280;
              v438 = (v1089 + 4 * (v436 + 280));
              v439 = *v438;
              if (v439 == 0xFFFF)
              {
                v440 = *(a2 + 1998);
                v439 = *(a2 + 1998);
                *v438 = v440;
                *(v1089 + 4 * v440 + 2) = v437;
                v78 = (v437 & 0xFFFFFFF0) == 144;
                v441 = v440 + 11;
                if (!v78)
                {
                  v441 = v440 + 1;
                }

                *(a2 + 1998) = v441;
              }

              *&v1092[8] = ((v439 << 48) | 0x19C840) + 64;
              *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
              v442 = a2 + 2 * v435;
              v443 = *(v442 + 1970);
              if (v443 == 0xFFFF)
              {
                v443 = *(a2 + 2004);
                *(v442 + 1970) = v443;
                *(a2 + 2004) = v443 + 1;
              }

              *v1092 = (v443 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v435;
            }

            while (v435 < v67);
            v444 = 0;
            v445 = 64;
            do
            {
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v446 = *(a2 + 1920);
              if (v446 == 0xFFFF)
              {
                v446 = *(a2 + 2004);
                *(a2 + 1920) = v446;
                *(a2 + 2004) = v446 + 1;
              }

              *&v1092[8] = v445 + (v446 << 48);
              v447 = a2 + 2 * v444;
              v448 = *(v447 + 1970);
              if (v448 == 0xFFFF)
              {
                v448 = *(a2 + 2004);
                *(v447 + 1970) = v448;
                *(a2 + 2004) = v448 + 1;
              }

              *&v1092[16] = (v448 << 48) | 0x19C840;
              v449 = *(v447 + 1954);
              if (v449 == 0xFFFF)
              {
                v450 = *(a2 + 2004);
                *(v447 + 1954) = v450;
                *(a2 + 2004) = v450 + 1;
                v449 = *(v447 + 1954);
                *&v1092[24] = (v450 << 48) | 0x19C840;
                if (v449 == 0xFFFF)
                {
                  v449 = *(a2 + 2004);
                  *(v447 + 1954) = v449;
                  *(a2 + 2004) = v449 + 1;
                }
              }

              else
              {
                *&v1092[24] = (v449 << 48) | 0x19C840;
              }

              *v1092 = (v449 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v444;
              v445 += 43520;
            }

            while (v444 < v67);
          }

          else if ((v1063 & 2) != 0)
          {
            v468 = 0;
            do
            {
              v469 = *&v1086[4 * v468];
              memset(&v1092[24], 0, 48);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v470 = v469 + 272;
              v471 = (v1089 + 4 * (v469 + 272));
              v472 = *v471;
              if (v472 == 0xFFFF)
              {
                v473 = *(a2 + 1998);
                v472 = *(a2 + 1998);
                *v471 = v473;
                *(v1089 + 4 * v473 + 2) = v470;
                v78 = (v470 & 0xFFFFFFF0) == 144;
                v474 = v473 + 11;
                if (!v78)
                {
                  v474 = v473 + 1;
                }

                *(a2 + 1998) = v474;
              }

              *&v1092[8] = ((v472 << 48) | 0x19C840) + 64;
              *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
              v475 = a2 + 2 * v468;
              v476 = *(v475 + 1954);
              if (v476 == 0xFFFF)
              {
                v476 = *(a2 + 2004);
                *(v475 + 1954) = v476;
                *(a2 + 2004) = v476 + 1;
              }

              *v1092 = (v476 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v468;
            }

            while (v468 < v67);
            v477 = 0;
            v478 = 64;
            do
            {
              v479 = *&v1086[4 * v477];
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v480 = *(a2 + 1920);
              if (v480 == 0xFFFF)
              {
                v480 = *(a2 + 2004);
                *(a2 + 1920) = v480;
                *(a2 + 2004) = v480 + 1;
              }

              *&v1092[8] = v478 + (v480 << 48);
              v481 = 2 * v479 + 241;
              v482 = (v1089 + 4 * v481);
              v483 = *v482;
              if (v483 == 0xFFFF)
              {
                v484 = *(a2 + 1998);
                v483 = *(a2 + 1998);
                *v482 = v484;
                *(v1089 + 4 * v484 + 2) = v481;
                v78 = (v481 & 0xFFFFFFF0) == 144;
                v485 = v484 + 11;
                if (!v78)
                {
                  v485 = v484 + 1;
                }

                *(a2 + 1998) = v485;
              }

              *&v1092[16] = ((v483 << 48) | 0x19C840) + 64;
              v486 = a2 + 2 * v477;
              v487 = *(v486 + 1954);
              if (v487 == 0xFFFF)
              {
                v488 = *(a2 + 2004);
                *(v486 + 1954) = v488;
                *(a2 + 2004) = v488 + 1;
                v487 = *(v486 + 1954);
                *&v1092[24] = (v488 << 48) | 0x19C840;
                if (v487 == 0xFFFF)
                {
                  v487 = *(a2 + 2004);
                  *(v486 + 1954) = v487;
                  *(a2 + 2004) = v487 + 1;
                }
              }

              else
              {
                *&v1092[24] = (v487 << 48) | 0x19C840;
              }

              *v1092 = (v487 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v477;
              v478 += 43520;
            }

            while (v477 < v67);
          }

          else
          {
            v451 = 0;
            if ((v1063 & 4) != 0)
            {
              do
              {
                v489 = *&v1086[4 * v451];
                memset(&v1092[24], 0, 48);
                v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
                *(a2 + 16) = 2;
                v490 = v489 + 280;
                v491 = (v1089 + 4 * (v489 + 280));
                v492 = *v491;
                if (v492 == 0xFFFF)
                {
                  v493 = *(a2 + 1998);
                  v492 = *(a2 + 1998);
                  *v491 = v493;
                  *(v1089 + 4 * v493 + 2) = v490;
                  v78 = (v490 & 0xFFFFFFF0) == 144;
                  v494 = v493 + 11;
                  if (!v78)
                  {
                    v494 = v493 + 1;
                  }

                  *(a2 + 1998) = v494;
                }

                *&v1092[8] = ((v492 << 48) | 0x19C840) + 64;
                *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
                v495 = a2 + 2 * v451;
                v496 = *(v495 + 1970);
                if (v496 == 0xFFFF)
                {
                  v496 = *(a2 + 2004);
                  *(v495 + 1970) = v496;
                  *(a2 + 2004) = v496 + 1;
                }

                *v1092 = (v496 << 48) | 0x72679000;
                (*(a2 + 2016))(a2, &v1091);
                ++v451;
              }

              while (v451 < v67);
              v497 = 0;
              v498 = 64;
              do
              {
                v499 = *&v1086[4 * v497];
                memset(v1092, 0, sizeof(v1092));
                v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
                *(a2 + 16) = 3;
                v500 = *(a2 + 1920);
                if (v500 == 0xFFFF)
                {
                  v500 = *(a2 + 2004);
                  *(a2 + 1920) = v500;
                  *(a2 + 2004) = v500 + 1;
                }

                *&v1092[8] = v498 + (v500 << 48);
                v501 = a2 + 2 * v497;
                v502 = *(v501 + 1970);
                if (v502 == 0xFFFF)
                {
                  v502 = *(a2 + 2004);
                  *(v501 + 1970) = v502;
                  *(a2 + 2004) = v502 + 1;
                }

                *&v1092[16] = (v502 << 48) | 0x19C840;
                v503 = 2 * v499 + 225;
                v504 = (v1089 + 4 * v503);
                v505 = *v504;
                if (v505 == 0xFFFF)
                {
                  v506 = *(a2 + 1998);
                  v505 = *(a2 + 1998);
                  *v504 = v506;
                  *(v1089 + 4 * v506 + 2) = v503;
                  v78 = (v503 & 0xFFFFFFF0) == 144;
                  v507 = v506 + 11;
                  if (!v78)
                  {
                    v507 = v506 + 1;
                  }

                  *(a2 + 1998) = v507;
                }

                *&v1092[24] = ((v505 << 48) | 0x19C840) + 64;
                v508 = *(v501 + 1954);
                if (v508 == 0xFFFF)
                {
                  v508 = *(a2 + 2004);
                  *(v501 + 1954) = v508;
                  *(a2 + 2004) = v508 + 1;
                }

                *v1092 = (v508 << 48) | 0x72679000;
                (*(a2 + 2016))(a2, &v1091);
                ++v497;
                v498 += 43520;
              }

              while (v497 < v67);
            }

            else
            {
              v452 = 64;
              do
              {
                v453 = *&v1086[4 * v451];
                memset(v1092, 0, sizeof(v1092));
                v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
                *(a2 + 16) = 3;
                v454 = *(a2 + 1920);
                if (v454 == 0xFFFF)
                {
                  v454 = *(a2 + 2004);
                  *(a2 + 1920) = v454;
                  *(a2 + 2004) = v454 + 1;
                }

                *&v1092[8] = v452 + (v454 << 48);
                v455 = 2 * v453;
                v456 = v455 + 241;
                v457 = (v1089 + 4 * (v455 + 241));
                v458 = *v457;
                if (v458 == 0xFFFF)
                {
                  v459 = *(a2 + 1998);
                  v458 = *(a2 + 1998);
                  *v457 = v459;
                  *(v1089 + 4 * v459 + 2) = v456;
                  v78 = (v456 & 0xFFFFFFF0) == 144;
                  v460 = v459 + 11;
                  if (!v78)
                  {
                    v460 = v459 + 1;
                  }

                  *(a2 + 1998) = v460;
                }

                *&v1092[16] = ((v458 << 48) | 0x19C840) + 64;
                v461 = v455 + 225;
                v462 = (v1089 + 4 * (v455 + 225));
                v463 = *v462;
                if (v463 == 0xFFFF)
                {
                  v464 = *(a2 + 1998);
                  v463 = *(a2 + 1998);
                  *v462 = v464;
                  *(v1089 + 4 * v464 + 2) = v461;
                  v78 = (v461 & 0xFFFFFFF0) == 144;
                  v465 = v464 + 11;
                  if (!v78)
                  {
                    v465 = v464 + 1;
                  }

                  *(a2 + 1998) = v465;
                }

                *&v1092[24] = ((v463 << 48) | 0x19C840) + 64;
                v466 = a2 + 2 * v451;
                v467 = *(v466 + 1954);
                if (v467 == 0xFFFF)
                {
                  v467 = *(a2 + 2004);
                  *(v466 + 1954) = v467;
                  *(a2 + 2004) = v467 + 1;
                }

                *v1092 = (v467 << 48) | 0x72679000;
                (*(a2 + 2016))(a2, &v1091);
                ++v451;
                v452 += 43520;
              }

              while (v451 < v67);
            }
          }
        }

        memset(v1092, 0, sizeof(v1092));
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
        *(a2 + 16) = 3;
        v509 = *(a2 + 1916);
        if (v509 == 0xFFFF)
        {
          v509 = *(a2 + 2004);
          *(a2 + 1916) = v509;
          *(a2 + 2004) = v509 + 1;
        }

        *&v1092[8] = ((v509 << 48) | 0x19C840) + 16;
        v510 = *(a2 + 1922);
        if (v510 == 0xFFFF)
        {
          v510 = *(a2 + 2004);
          *(a2 + 1922) = v510;
          *(a2 + 2004) = v510 + 1;
        }

        *&v1092[16] = (v510 << 48) | 0x19C840;
        v511 = *(a2 + 1664);
        if (v511 == 0xFFFF)
        {
          v512 = *(a2 + 1998);
          v511 = *(a2 + 1998);
          *(a2 + 1664) = v512;
          *(v1089 + 4 * v512 + 2) = 351;
          *(a2 + 1998) = v512 + 1;
        }

        *&v1092[24] = (v511 << 48) | 0xAA80;
        v513 = *(a2 + 1918);
        if (v513 == 0xFFFF)
        {
          v513 = *(a2 + 2004);
          *(a2 + 1918) = v513;
          *(a2 + 2004) = v513 + 1;
        }

        *v1092 = (v513 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        v514 = *v1071;
        if ((*v1071 & 0x1000000000000) != 0)
        {
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
          *(a2 + 16) = 3;
          v515 = *(a2 + 1920);
          if (v515 == 0xFFFF)
          {
            v515 = *(a2 + 2004);
            *(a2 + 1920) = v515;
            *(a2 + 2004) = v515 + 1;
          }

          *&v1092[8] = ((v515 << 48) | 0x19C840) + 16;
          v516 = *(a2 + 1922);
          if (v516 == 0xFFFF)
          {
            v516 = *(a2 + 2004);
            *(a2 + 1922) = v516;
            *(a2 + 2004) = v516 + 1;
          }

          *&v1092[16] = (v516 << 48) | 0x19C840;
          v517 = *(a2 + 1664);
          if (v517 == 0xFFFF)
          {
            v518 = *(a2 + 1998);
            v517 = *(a2 + 1998);
            *(a2 + 1664) = v518;
            *(v1089 + 4 * v518 + 2) = 351;
            *(a2 + 1998) = v518 + 1;
            v516 = *(a2 + 1922);
          }

          *&v1092[24] = (v517 << 48) | 0xAA80;
          if (v516 == 0xFFFF)
          {
            v516 = *(a2 + 2004);
            *(a2 + 1922) = v516;
            *(a2 + 2004) = v516 + 1;
          }

          *v1092 = (v516 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          v514 = *v1071;
        }

        if (v514 < 0)
        {
          if (v1065 >= 8)
          {
            v558 = 0;
            do
            {
              v559 = *&v1086[4 * v558];
              memset(&v1092[24], 0, 48);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v560 = v559 + 288;
              v561 = (v1089 + 4 * (v559 + 288));
              v562 = *v561;
              if (v562 == 0xFFFF)
              {
                v563 = *(a2 + 1998);
                v562 = *(a2 + 1998);
                *v561 = v563;
                *(v1089 + 4 * v563 + 2) = v560;
                v78 = (v560 & 0xFFFFFFF0) == 144;
                v564 = v563 + 11;
                if (!v78)
                {
                  v564 = v563 + 1;
                }

                *(a2 + 1998) = v564;
              }

              *&v1092[8] = ((v562 << 48) | 0x19C840) + 64;
              *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
              v565 = a2 + 2 * v558;
              v566 = *(v565 + 1962);
              if (v566 == 0xFFFF)
              {
                v566 = *(a2 + 2004);
                *(v565 + 1962) = v566;
                *(a2 + 2004) = v566 + 1;
              }

              *v1092 = (v566 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v558;
            }

            while (v558 < v67);
            v567 = 981;
            v568 = 64;
            do
            {
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v569 = *(a2 + 1918);
              if (v569 == 0xFFFF)
              {
                v569 = *(a2 + 2004);
                *(a2 + 1918) = v569;
                *(a2 + 2004) = v569 + 1;
              }

              *&v1092[8] = v568 + (v569 << 48);
              v570 = *(a2 + 2 * v567);
              if (v570 == 0xFFFF)
              {
                v571 = *(a2 + 2004);
                *(a2 + 2 * v567) = v571;
                *(a2 + 2004) = v571 + 1;
                v570 = *(a2 + 2 * v567);
                *&v1092[16] = (v571 << 48) | 0x19C840;
                if (v570 == 0xFFFF)
                {
                  v570 = *(a2 + 2004);
                  *(a2 + 2 * v567) = v570;
                  *(a2 + 2004) = v570 + 1;
                }
              }

              else
              {
                *&v1092[16] = (v570 << 48) | 0x19C840;
              }

              *v1092 = (v570 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              v568 += 43520;
              v572 = v567 - 980;
              ++v567;
            }

            while (v572 < v67);
          }

          else
          {
            v531 = 0;
            v532 = 64;
            do
            {
              v533 = *&v1086[4 * v531];
              memset(&v1092[24], 0, 48);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v534 = *(a2 + 1918);
              if (v534 == 0xFFFF)
              {
                v534 = *(a2 + 2004);
                *(a2 + 1918) = v534;
                *(a2 + 2004) = v534 + 1;
              }

              *&v1092[8] = v532 + (v534 << 48);
              v535 = 2 * v533 + 256;
              v536 = (v1089 + 4 * v535);
              v537 = *v536;
              if (v537 == 0xFFFF)
              {
                v538 = *(a2 + 1998);
                v537 = *(a2 + 1998);
                *v536 = v538;
                *(v1089 + 4 * v538 + 2) = v535;
                v78 = (v535 & 0xFFFFFFF0) == 144;
                v539 = v538 + 11;
                if (!v78)
                {
                  v539 = v538 + 1;
                }

                *(a2 + 1998) = v539;
              }

              *&v1092[16] = ((v537 << 48) | 0x19C840) + 64;
              v540 = a2 + 2 * v531;
              v541 = *(v540 + 1962);
              if (v541 == 0xFFFF)
              {
                v541 = *(a2 + 2004);
                *(v540 + 1962) = v541;
                *(a2 + 2004) = v541 + 1;
              }

              *v1092 = (v541 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v531;
              v532 += 43520;
            }

            while (v531 < v67);
          }
        }

        else if (v1065 >= 8)
        {
          v542 = 0;
          do
          {
            v543 = *&v1086[4 * v542];
            memset(&v1092[24], 0, 48);
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v544 = v543 + 288;
            v545 = (v1089 + 4 * (v543 + 288));
            v546 = *v545;
            if (v546 == 0xFFFF)
            {
              v547 = *(a2 + 1998);
              v546 = *(a2 + 1998);
              *v545 = v547;
              *(v1089 + 4 * v547 + 2) = v544;
              v78 = (v544 & 0xFFFFFFF0) == 144;
              v548 = v547 + 11;
              if (!v78)
              {
                v548 = v547 + 1;
              }

              *(a2 + 1998) = v548;
            }

            *&v1092[8] = ((v546 << 48) | 0x19C840) + 64;
            *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
            v549 = a2 + 2 * v542;
            v550 = *(v549 + 1962);
            if (v550 == 0xFFFF)
            {
              v550 = *(a2 + 2004);
              *(v549 + 1962) = v550;
              *(a2 + 2004) = v550 + 1;
            }

            *v1092 = (v550 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            ++v542;
          }

          while (v542 < v67);
          v551 = 0;
          v552 = 64;
          do
          {
            memset(v1092, 0, sizeof(v1092));
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            v553 = *(a2 + 1918);
            if (v553 == 0xFFFF)
            {
              v553 = *(a2 + 2004);
              *(a2 + 1918) = v553;
              *(a2 + 2004) = v553 + 1;
            }

            *&v1092[8] = v552 + (v553 << 48);
            v554 = a2 + 2 * v551;
            v555 = *(v554 + 1962);
            if (v555 == 0xFFFF)
            {
              v555 = *(a2 + 2004);
              *(v554 + 1962) = v555;
              *(a2 + 2004) = v555 + 1;
            }

            *&v1092[16] = (v555 << 48) | 0x19C840;
            v556 = *(v554 + 1946);
            if (v556 == 0xFFFF)
            {
              v557 = *(a2 + 2004);
              *(v554 + 1946) = v557;
              *(a2 + 2004) = v557 + 1;
              v556 = *(v554 + 1946);
              *&v1092[24] = (v557 << 48) | 0x19C840;
              if (v556 == 0xFFFF)
              {
                v556 = *(a2 + 2004);
                *(v554 + 1946) = v556;
                *(a2 + 2004) = v556 + 1;
              }
            }

            else
            {
              *&v1092[24] = (v556 << 48) | 0x19C840;
            }

            *v1092 = (v556 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            ++v551;
            v552 += 43520;
          }

          while (v551 < v67);
        }

        else
        {
          v519 = 0;
          v520 = 64;
          do
          {
            v521 = *&v1086[4 * v519];
            memset(v1092, 0, sizeof(v1092));
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            v522 = *(a2 + 1918);
            if (v522 == 0xFFFF)
            {
              v522 = *(a2 + 2004);
              *(a2 + 1918) = v522;
              *(a2 + 2004) = v522 + 1;
            }

            *&v1092[8] = v520 + (v522 << 48);
            v523 = 2 * v521 + 256;
            v524 = (v1089 + 4 * v523);
            v525 = *v524;
            if (v525 == 0xFFFF)
            {
              v526 = *(a2 + 1998);
              v525 = *(a2 + 1998);
              *v524 = v526;
              *(v1089 + 4 * v526 + 2) = v523;
              v78 = (v523 & 0xFFFFFFF0) == 144;
              v527 = v526 + 11;
              if (!v78)
              {
                v527 = v526 + 1;
              }

              *(a2 + 1998) = v527;
            }

            *&v1092[16] = ((v525 << 48) | 0x19C840) + 64;
            v528 = a2 + 2 * v519;
            v529 = *(v528 + 1946);
            if (v529 == 0xFFFF)
            {
              v530 = *(a2 + 2004);
              *(v528 + 1946) = v530;
              *(a2 + 2004) = v530 + 1;
              v529 = *(v528 + 1946);
              *&v1092[24] = (v530 << 48) | 0x19C840;
              if (v529 == 0xFFFF)
              {
                v529 = *(a2 + 2004);
                *(v528 + 1946) = v529;
                *(a2 + 2004) = v529 + 1;
              }
            }

            else
            {
              *&v1092[24] = (v529 << 48) | 0x19C840;
            }

            *v1092 = (v529 << 48) | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            ++v519;
            v520 += 43520;
          }

          while (v519 < v67);
        }

        if ((*v1071 & 0x1000000000000) != 0)
        {
          if (*v1071 < 0)
          {
            if (v1063 >= 8)
            {
              v612 = 0;
              do
              {
                v613 = *&v1086[4 * v612];
                memset(&v1092[24], 0, 48);
                v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
                *(a2 + 16) = 2;
                v614 = v613 + 288;
                v615 = (v1089 + 4 * (v613 + 288));
                v616 = *v615;
                if (v616 == 0xFFFF)
                {
                  v617 = *(a2 + 1998);
                  v616 = *(a2 + 1998);
                  *v615 = v617;
                  *(v1089 + 4 * v617 + 2) = v614;
                  v78 = (v614 & 0xFFFFFFF0) == 144;
                  v618 = v617 + 11;
                  if (!v78)
                  {
                    v618 = v617 + 1;
                  }

                  *(a2 + 1998) = v618;
                }

                *&v1092[8] = ((v616 << 48) | 0x19C840) + 64;
                *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
                v619 = a2 + 2 * v612;
                v620 = *(v619 + 1970);
                if (v620 == 0xFFFF)
                {
                  v620 = *(a2 + 2004);
                  *(v619 + 1970) = v620;
                  *(a2 + 2004) = v620 + 1;
                }

                *v1092 = (v620 << 48) | 0x72679000;
                (*(a2 + 2016))(a2, &v1091);
                ++v612;
              }

              while (v612 < v67);
              v621 = 985;
              v622 = 64;
              do
              {
                memset(v1092, 0, sizeof(v1092));
                v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
                *(a2 + 16) = 2;
                v623 = *(a2 + 1922);
                if (v623 == 0xFFFF)
                {
                  v623 = *(a2 + 2004);
                  *(a2 + 1922) = v623;
                  *(a2 + 2004) = v623 + 1;
                }

                *&v1092[8] = v622 + (v623 << 48);
                v624 = *(a2 + 2 * v621);
                if (v624 == 0xFFFF)
                {
                  v625 = *(a2 + 2004);
                  *(a2 + 2 * v621) = v625;
                  *(a2 + 2004) = v625 + 1;
                  v624 = *(a2 + 2 * v621);
                  *&v1092[16] = (v625 << 48) | 0x19C840;
                  if (v624 == 0xFFFF)
                  {
                    v624 = *(a2 + 2004);
                    *(a2 + 2 * v621) = v624;
                    *(a2 + 2004) = v624 + 1;
                  }
                }

                else
                {
                  *&v1092[16] = (v624 << 48) | 0x19C840;
                }

                *v1092 = (v624 << 48) | 0x72679000;
                (*(a2 + 2016))(a2, &v1091);
                v622 += 43520;
                v626 = v621 - 984;
                ++v621;
              }

              while (v626 < v67);
            }

            else
            {
              v585 = 0;
              v586 = 64;
              do
              {
                v587 = *&v1086[4 * v585];
                memset(&v1092[24], 0, 48);
                v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
                *(a2 + 16) = 2;
                v588 = *(a2 + 1922);
                if (v588 == 0xFFFF)
                {
                  v588 = *(a2 + 2004);
                  *(a2 + 1922) = v588;
                  *(a2 + 2004) = v588 + 1;
                }

                *&v1092[8] = v586 + (v588 << 48);
                v589 = 2 * v587 + 257;
                v590 = (v1089 + 4 * v589);
                v591 = *v590;
                if (v591 == 0xFFFF)
                {
                  v592 = *(a2 + 1998);
                  v591 = *(a2 + 1998);
                  *v590 = v592;
                  *(v1089 + 4 * v592 + 2) = v589;
                  v78 = (v589 & 0xFFFFFFF0) == 144;
                  v593 = v592 + 11;
                  if (!v78)
                  {
                    v593 = v592 + 1;
                  }

                  *(a2 + 1998) = v593;
                }

                *&v1092[16] = ((v591 << 48) | 0x19C840) + 64;
                v594 = a2 + 2 * v585;
                v595 = *(v594 + 1970);
                if (v595 == 0xFFFF)
                {
                  v595 = *(a2 + 2004);
                  *(v594 + 1970) = v595;
                  *(a2 + 2004) = v595 + 1;
                }

                *v1092 = (v595 << 48) | 0x72679000;
                (*(a2 + 2016))(a2, &v1091);
                ++v585;
                v586 += 43520;
              }

              while (v585 < v67);
            }
          }

          else if (v1063 >= 8)
          {
            v596 = 0;
            do
            {
              v597 = *&v1086[4 * v596];
              memset(&v1092[24], 0, 48);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v598 = v597 + 288;
              v599 = (v1089 + 4 * (v597 + 288));
              v600 = *v599;
              if (v600 == 0xFFFF)
              {
                v601 = *(a2 + 1998);
                v600 = *(a2 + 1998);
                *v599 = v601;
                *(v1089 + 4 * v601 + 2) = v598;
                v78 = (v598 & 0xFFFFFFF0) == 144;
                v602 = v601 + 11;
                if (!v78)
                {
                  v602 = v601 + 1;
                }

                *(a2 + 1998) = v602;
              }

              *&v1092[8] = ((v600 << 48) | 0x19C840) + 64;
              *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
              v603 = a2 + 2 * v596;
              v604 = *(v603 + 1970);
              if (v604 == 0xFFFF)
              {
                v604 = *(a2 + 2004);
                *(v603 + 1970) = v604;
                *(a2 + 2004) = v604 + 1;
              }

              *v1092 = (v604 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v596;
            }

            while (v596 < v67);
            v605 = 0;
            v606 = 64;
            do
            {
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v607 = *(a2 + 1922);
              if (v607 == 0xFFFF)
              {
                v607 = *(a2 + 2004);
                *(a2 + 1922) = v607;
                *(a2 + 2004) = v607 + 1;
              }

              *&v1092[8] = v606 + (v607 << 48);
              v608 = a2 + 2 * v605;
              v609 = *(v608 + 1970);
              if (v609 == 0xFFFF)
              {
                v609 = *(a2 + 2004);
                *(v608 + 1970) = v609;
                *(a2 + 2004) = v609 + 1;
              }

              *&v1092[16] = (v609 << 48) | 0x19C840;
              v610 = *(v608 + 1954);
              if (v610 == 0xFFFF)
              {
                v611 = *(a2 + 2004);
                *(v608 + 1954) = v611;
                *(a2 + 2004) = v611 + 1;
                v610 = *(v608 + 1954);
                *&v1092[24] = (v611 << 48) | 0x19C840;
                if (v610 == 0xFFFF)
                {
                  v610 = *(a2 + 2004);
                  *(v608 + 1954) = v610;
                  *(a2 + 2004) = v610 + 1;
                }
              }

              else
              {
                *&v1092[24] = (v610 << 48) | 0x19C840;
              }

              *v1092 = (v610 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v605;
              v606 += 43520;
            }

            while (v605 < v67);
          }

          else
          {
            v573 = 0;
            v574 = 64;
            do
            {
              v575 = *&v1086[4 * v573];
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v576 = *(a2 + 1922);
              if (v576 == 0xFFFF)
              {
                v576 = *(a2 + 2004);
                *(a2 + 1922) = v576;
                *(a2 + 2004) = v576 + 1;
              }

              *&v1092[8] = v574 + (v576 << 48);
              v577 = 2 * v575 + 257;
              v578 = (v1089 + 4 * v577);
              v579 = *v578;
              if (v579 == 0xFFFF)
              {
                v580 = *(a2 + 1998);
                v579 = *(a2 + 1998);
                *v578 = v580;
                *(v1089 + 4 * v580 + 2) = v577;
                v78 = (v577 & 0xFFFFFFF0) == 144;
                v581 = v580 + 11;
                if (!v78)
                {
                  v581 = v580 + 1;
                }

                *(a2 + 1998) = v581;
              }

              *&v1092[16] = ((v579 << 48) | 0x19C840) + 64;
              v582 = a2 + 2 * v573;
              v583 = *(v582 + 1954);
              if (v583 == 0xFFFF)
              {
                v584 = *(a2 + 2004);
                *(v582 + 1954) = v584;
                *(a2 + 2004) = v584 + 1;
                v583 = *(v582 + 1954);
                *&v1092[24] = (v584 << 48) | 0x19C840;
                if (v583 == 0xFFFF)
                {
                  v583 = *(a2 + 2004);
                  *(v582 + 1954) = v583;
                  *(a2 + 2004) = v583 + 1;
                }
              }

              else
              {
                *&v1092[24] = (v583 << 48) | 0x19C840;
              }

              *v1092 = (v583 << 48) | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
              ++v573;
              v574 += 43520;
            }

            while (v573 < v67);
          }
        }

        if (v1080)
        {
          v627 = 0;
          v628 = 64;
          do
          {
            if ((v1080 >> v627))
            {
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v629 = *(a2 + 1940);
              if (v629 == 0xFFFF)
              {
                v629 = *(a2 + 2004);
                *(a2 + 1940) = v629;
                *(a2 + 2004) = v629 + 1;
              }

              *&v1092[8] = v628 + (v629 << 48);
              v630 = a2 + 2 * v627;
              v631 = *(v630 + 1946);
              if (v631 == 0xFFFF)
              {
                v631 = *(a2 + 2004);
                *(v630 + 1946) = v631;
                *(a2 + 2004) = v631 + 1;
              }

              *&v1092[16] = (v631 << 48) | 0x19C840;
              v632 = *(a2 + 1904);
              if (v632 == 0xFFFF)
              {
                v634 = *(a2 + 2004);
                v635 = *(a2 + 2004);
                *(a2 + 1904) = v634;
                *(a2 + 2004) = ++v635;
                *&v1092[24] = (v634 << 48) | 0x19C840;
                if ((v635 & 0x10000) != 0)
                {
                  v634 = *(a2 + 2004);
                  *(a2 + 1904) = v634;
                  *(a2 + 2004) = v634 + 1;
                }

                v633 = v634 << 48;
              }

              else
              {
                v633 = v632 << 48;
                *&v1092[24] = (v632 << 48) | 0x19C840;
              }

              *v1092 = v633 | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
            }

            ++v627;
            v628 += 43520;
          }

          while (v627 < v67);
          v636 = v1080 & 0xF;
          if (v636 == 15)
          {
            v637 = 0;
            v1087 = 1;
            goto LABEL_899;
          }

          v637 = v636 ^ 0xF;
        }

        else
        {
          v637 = 15;
        }

        v638 = 0;
        do
        {
          if ((v637 >> v638))
          {
            memset(v1092, 0, sizeof(v1092));
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
            *(a2 + 16) = 2;
            v639 = a2 + 2 * v638;
            v640 = *(v639 + 1946);
            if (v640 == 0xFFFF)
            {
              v640 = *(a2 + 2004);
              *(v639 + 1946) = v640;
              *(a2 + 2004) = v640 + 1;
            }

            *&v1092[8] = (v640 << 48) | 0x19C840;
            v641 = *(a2 + 1904);
            if (v641 == 0xFFFF)
            {
              v643 = *(a2 + 2004);
              v644 = *(a2 + 2004);
              *(a2 + 1904) = v643;
              *(a2 + 2004) = ++v644;
              *&v1092[16] = (v643 << 48) | 0x19C840;
              if ((v644 & 0x10000) != 0)
              {
                v643 = *(a2 + 2004);
                *(a2 + 1904) = v643;
                *(a2 + 2004) = v643 + 1;
              }

              v642 = v643 << 48;
            }

            else
            {
              v642 = v641 << 48;
              *&v1092[16] = (v641 << 48) | 0x19C840;
            }

            *v1092 = v642 | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
          }

          ++v638;
        }

        while (v638 < v67);
        v1087 = 0;
LABEL_899:
        if ((*v1071 & 0x8000000000000000) == 0)
        {
          goto LABEL_923;
        }

        if (v1080)
        {
          v645 = 0;
          v646 = -v1067;
          v647 = v646 + 31;
          while (((v1080 >> v645) & 1) == 0)
          {
LABEL_918:
            if (++v645 >= v67)
            {
              goto LABEL_922;
            }
          }

          if (v645 == v646)
          {
            memset(&v1092[24], 0, 48);
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
            *(a2 + 16) = 2;
            v648 = *(a2 + 1940);
            if (v648 == 0xFFFF)
            {
              v648 = *(a2 + 2004);
              *(a2 + 1940) = v648;
              *(a2 + 2004) = v648 + 1;
            }

            *&v1092[8] = (-v1067 << 9) | (v648 << 48) | (-v1067 << 11) | (-v1067 << 13) | (-v1067 << 15) | 0x40;
            v649 = v1078[v647];
            if (v649 == 0xFFFF)
            {
              v649 = *(a2 + 2004);
              v1078[v647] = v649;
              *(a2 + 2004) = v649 + 1;
            }

            *&v1092[16] = (v649 << 48) | 0x19C840;
            v650 = *(a2 + 1908);
            if (v650 == 0xFFFF)
            {
LABEL_909:
              v650 = *(a2 + 2004);
              *(a2 + 1908) = v650;
              *(a2 + 2004) = v650 + 1;
            }

LABEL_910:
            v651 = v650 << 48;
          }

          else
          {
            memset(v1092, 0, sizeof(v1092));
            v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
            *(a2 + 16) = 3;
            v652 = *(a2 + 1940);
            if (v652 == 0xFFFF)
            {
              v652 = *(a2 + 2004);
              *(a2 + 1940) = v652;
              *(a2 + 2004) = v652 + 1;
            }

            *&v1092[8] = (v652 << 48) | (v645 << 9) | (v645 << 11) | (v645 << 13) | (v645 << 15) | 0x40;
            v653 = v1078[v645 + 31];
            if (v653 == 0xFFFF)
            {
              v653 = *(a2 + 2004);
              v1078[v645 + 31] = v653;
              *(a2 + 2004) = v653 + 1;
            }

            *&v1092[16] = (v653 << 48) | 0x19C840;
            v654 = *(a2 + 1908);
            if (v654 == 0xFFFF)
            {
              v650 = *(a2 + 2004);
              v655 = *(a2 + 2004);
              *(a2 + 1908) = v650;
              *(a2 + 2004) = ++v655;
              *&v1092[24] = (v650 << 48) | 0x19C840;
              if ((v655 & 0x10000) != 0)
              {
                goto LABEL_909;
              }

              goto LABEL_910;
            }

            v651 = v654 << 48;
            *&v1092[24] = (v654 << 48) | 0x19C840;
          }

          *v1092 = v651 | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          goto LABEL_918;
        }

LABEL_922:
        if (v1087)
        {
LABEL_923:
          if ((*(v1071 + 6) & 1) == 0)
          {
            goto LABEL_991;
          }

          if (v1080)
          {
            v656 = 0;
            v657 = 64;
            do
            {
              if ((v1080 >> v656))
              {
                memset(v1092, 0, sizeof(v1092));
                v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
                *(a2 + 16) = 3;
                v658 = *(a2 + 1940);
                if (v658 == 0xFFFF)
                {
                  v658 = *(a2 + 2004);
                  *(a2 + 1940) = v658;
                  *(a2 + 2004) = v658 + 1;
                }

                *&v1092[8] = v657 + (v658 << 48);
                v659 = a2 + 2 * v656;
                v660 = *(v659 + 1954);
                if (v660 == 0xFFFF)
                {
                  v660 = *(a2 + 2004);
                  *(v659 + 1954) = v660;
                  *(a2 + 2004) = v660 + 1;
                }

                *&v1092[16] = (v660 << 48) | 0x19C840;
                v661 = *(a2 + 1906);
                if (v661 == 0xFFFF)
                {
                  v663 = *(a2 + 2004);
                  v664 = *(a2 + 2004);
                  *(a2 + 1906) = v663;
                  *(a2 + 2004) = ++v664;
                  *&v1092[24] = (v663 << 48) | 0x19C840;
                  if ((v664 & 0x10000) != 0)
                  {
                    v663 = *(a2 + 2004);
                    *(a2 + 1906) = v663;
                    *(a2 + 2004) = v663 + 1;
                  }

                  v662 = v663 << 48;
                }

                else
                {
                  v662 = v661 << 48;
                  *&v1092[24] = (v661 << 48) | 0x19C840;
                }

                *v1092 = v662 | 0x72679000;
                (*(a2 + 2016))(a2, &v1091);
              }

              ++v656;
              v657 += 43520;
            }

            while (v656 < v67);
          }

          if ((v1087 & 1) == 0)
          {
            v665 = 0;
            do
            {
              if ((v637 >> v665))
              {
                memset(v1092, 0, sizeof(v1092));
                v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
                *(a2 + 16) = 2;
                v666 = a2 + 2 * v665;
                v667 = *(v666 + 1954);
                if (v667 == 0xFFFF)
                {
                  v667 = *(a2 + 2004);
                  *(v666 + 1954) = v667;
                  *(a2 + 2004) = v667 + 1;
                }

                *&v1092[8] = (v667 << 48) | 0x19C840;
                v668 = *(a2 + 1906);
                if (v668 == 0xFFFF)
                {
                  v670 = *(a2 + 2004);
                  v671 = *(a2 + 2004);
                  *(a2 + 1906) = v670;
                  *(a2 + 2004) = ++v671;
                  *&v1092[16] = (v670 << 48) | 0x19C840;
                  if ((v671 & 0x10000) != 0)
                  {
                    v670 = *(a2 + 2004);
                    *(a2 + 1906) = v670;
                    *(a2 + 2004) = v670 + 1;
                  }

                  v669 = v670 << 48;
                }

                else
                {
                  v669 = v668 << 48;
                  *&v1092[16] = (v668 << 48) | 0x19C840;
                }

                *v1092 = v669 | 0x72679000;
                (*(a2 + 2016))(a2, &v1091);
              }

              ++v665;
            }

            while (v665 < v67);
          }

          if ((*v1071 & 0x8000000000000000) == 0)
          {
            goto LABEL_991;
          }

          if (v1080)
          {
            v672 = 0;
            v673 = -v1067;
            v674 = v673 + 35;
            while (((v1080 >> v672) & 1) == 0)
            {
LABEL_969:
              if (++v672 >= v67)
              {
                goto LABEL_990;
              }
            }

            if (v672 == v673)
            {
              memset(&v1092[24], 0, 48);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
              *(a2 + 16) = 2;
              v675 = *(a2 + 1940);
              if (v675 == 0xFFFF)
              {
                v675 = *(a2 + 2004);
                *(a2 + 1940) = v675;
                *(a2 + 2004) = v675 + 1;
              }

              *&v1092[8] = (-v1067 << 9) | (v675 << 48) | (-v1067 << 11) | (-v1067 << 13) | (-v1067 << 15) | 0x40;
              v676 = v1078[v674];
              if (v676 == 0xFFFF)
              {
                v676 = *(a2 + 2004);
                v1078[v674] = v676;
                *(a2 + 2004) = v676 + 1;
              }

              *&v1092[16] = (v676 << 48) | 0x19C840;
              v677 = *(a2 + 1910);
              if (v677 == 0xFFFF)
              {
LABEL_960:
                v677 = *(a2 + 2004);
                *(a2 + 1910) = v677;
                *(a2 + 2004) = v677 + 1;
              }

LABEL_961:
              v678 = v677 << 48;
            }

            else
            {
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
              *(a2 + 16) = 3;
              v679 = *(a2 + 1940);
              if (v679 == 0xFFFF)
              {
                v679 = *(a2 + 2004);
                *(a2 + 1940) = v679;
                *(a2 + 2004) = v679 + 1;
              }

              *&v1092[8] = (v679 << 48) | (v672 << 9) | (v672 << 11) | (v672 << 13) | (v672 << 15) | 0x40;
              v680 = v1078[v672 + 35];
              if (v680 == 0xFFFF)
              {
                v680 = *(a2 + 2004);
                v1078[v672 + 35] = v680;
                *(a2 + 2004) = v680 + 1;
              }

              *&v1092[16] = (v680 << 48) | 0x19C840;
              v681 = *(a2 + 1910);
              if (v681 == 0xFFFF)
              {
                v677 = *(a2 + 2004);
                v682 = *(a2 + 2004);
                *(a2 + 1910) = v677;
                *(a2 + 2004) = ++v682;
                *&v1092[24] = (v677 << 48) | 0x19C840;
                if ((v682 & 0x10000) != 0)
                {
                  goto LABEL_960;
                }

                goto LABEL_961;
              }

              v678 = v681 << 48;
              *&v1092[24] = (v681 << 48) | 0x19C840;
            }

            *v1092 = v678 | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            goto LABEL_969;
          }

LABEL_990:
          if (v1087)
          {
LABEL_991:
            v63 = v1067 + 4;
            v3 = v1071;
            v62 = v1069 - 4;
            v59 = v1064;
            if (v1067 + 4 >= v1064)
            {
              goto LABEL_1623;
            }

            goto LABEL_78;
          }

          v692 = 0;
          v693 = -v1067 + 35;
          while (2)
          {
            if ((v637 >> v692))
            {
              if (v1069 == v692)
              {
                memset(&v1092[16], 0, 56);
                v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
                *(a2 + 16) = 1;
                v694 = v1078[v693];
                if (v694 == 0xFFFF)
                {
                  v694 = *(a2 + 2004);
                  v1078[v693] = v694;
                  *(a2 + 2004) = v694 + 1;
                }

                *&v1092[8] = (v694 << 48) | 0x19C840;
                v695 = *(a2 + 1910);
                if (v695 == 0xFFFF)
                {
LABEL_999:
                  v695 = *(a2 + 2004);
                  *(a2 + 1910) = v695;
                  *(a2 + 2004) = v695 + 1;
                }

LABEL_1000:
                v696 = v695 << 48;
              }

              else
              {
                memset(v1092, 0, sizeof(v1092));
                v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
                *(a2 + 16) = 2;
                v697 = *(v1062 + 2 * v692);
                if (v697 == 0xFFFF)
                {
                  v697 = *(a2 + 2004);
                  *(v1062 + 2 * v692) = v697;
                  *(a2 + 2004) = v697 + 1;
                }

                *&v1092[8] = (v697 << 48) | 0x19C840;
                v698 = *(a2 + 1910);
                if (v698 == 0xFFFF)
                {
                  v695 = *(a2 + 2004);
                  v699 = *(a2 + 2004);
                  *(a2 + 1910) = v695;
                  *(a2 + 2004) = ++v699;
                  *&v1092[16] = (v695 << 48) | 0x19C840;
                  if ((v699 & 0x10000) != 0)
                  {
                    goto LABEL_999;
                  }

                  goto LABEL_1000;
                }

                v696 = v698 << 48;
                *&v1092[16] = (v698 << 48) | 0x19C840;
              }

              *v1092 = v696 | 0x72679000;
              (*(a2 + 2016))(a2, &v1091);
            }

            if (++v692 >= v67)
            {
              goto LABEL_991;
            }

            continue;
          }
        }

        v683 = 0;
        v684 = -v1067 + 31;
        while (2)
        {
          if ((v637 >> v683))
          {
            if (v1069 == v683)
            {
              memset(&v1092[16], 0, 56);
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
              *(a2 + 16) = 1;
              v685 = v1078[v684];
              if (v685 == 0xFFFF)
              {
                v685 = *(a2 + 2004);
                v1078[v684] = v685;
                *(a2 + 2004) = v685 + 1;
              }

              *&v1092[8] = (v685 << 48) | 0x19C840;
              v686 = *(a2 + 1908);
              if (v686 == 0xFFFF)
              {
LABEL_979:
                v686 = *(a2 + 2004);
                *(a2 + 1908) = v686;
                *(a2 + 2004) = v686 + 1;
              }

LABEL_980:
              v687 = v686 << 48;
            }

            else
            {
              memset(v1092, 0, sizeof(v1092));
              v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
              *(a2 + 16) = 2;
              v688 = a2 + 2 * v683;
              v689 = *(v688 + 1962);
              if (v689 == 0xFFFF)
              {
                v689 = *(a2 + 2004);
                *(v688 + 1962) = v689;
                *(a2 + 2004) = v689 + 1;
              }

              *&v1092[8] = (v689 << 48) | 0x19C840;
              v690 = *(a2 + 1908);
              if (v690 == 0xFFFF)
              {
                v686 = *(a2 + 2004);
                v691 = *(a2 + 2004);
                *(a2 + 1908) = v686;
                *(a2 + 2004) = ++v691;
                *&v1092[16] = (v686 << 48) | 0x19C840;
                if ((v691 & 0x10000) != 0)
                {
                  goto LABEL_979;
                }

                goto LABEL_980;
              }

              v687 = v690 << 48;
              *&v1092[16] = (v690 << 48) | 0x19C840;
            }

            *v1092 = v687 | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
          }

          if (++v683 >= v67)
          {
            goto LABEL_923;
          }

          continue;
        }
      }
    }
  }

  if ((v46 & 0x2000000000000) != 0)
  {
    memset(&v1092[8], 0, 64);
    v56 = *(a2 + 16);
    *(a2 + 16) = 1;
    v1091 = (8 * (v56 & 7)) | 0x100080341;
    v57 = *(a2 + 1900);
    if (v57 == 0xFFFF)
    {
      v700 = *(a2 + 2004);
      v701 = *(a2 + 2004);
      *(a2 + 1900) = v700;
      *(a2 + 2004) = ++v701;
      *&v1092[8] = (v700 << 48) | 0x1FE40;
      if ((v701 & 0x10000) != 0)
      {
        v700 = *(a2 + 2004);
        *(a2 + 1900) = v700;
        *(a2 + 2004) = v700 + 1;
      }

      v58 = v700 << 48;
    }

    else
    {
      v58 = v57 << 48;
      *&v1092[8] = (v57 << 48) | 0x1FE40;
    }

    *v1092 = v58 + 1918930944;
    (*(a2 + 2016))(a2, &v1091);
    memset(&v1092[8], 0, 64);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
    *(a2 + 16) = 2;
    v702 = *(a2 + 1900);
    if (v702 == 0xFFFF)
    {
      v704 = *(a2 + 2004);
      v705 = *(a2 + 2004);
      *(a2 + 1900) = v704;
      *(a2 + 2004) = ++v705;
      *&v1092[8] = (v704 << 48) | 0x19C840;
      if ((v705 & 0x10000) != 0)
      {
        v704 = *(a2 + 2004);
        *(a2 + 1900) = v704;
        *(a2 + 2004) = v704 + 1;
      }

      v703 = v704 << 48;
    }

    else
    {
      v703 = v702 << 48;
      *&v1092[8] = (v702 << 48) | 0x19C840;
    }

    *&v1092[16] = v703 | 0x1FE40;
    v706 = *(a2 + 1942);
    if (v706 == 0xFFFF)
    {
      v706 = *(a2 + 2004);
      *(a2 + 1942) = v706;
      *(a2 + 2004) = v706 + 1;
    }

    *v1092 = (v706 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
  }

  if (!v55)
  {
LABEL_1618:
    memset(&v1092[16], 0, 56);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    v1038 = *(a2 + 1664);
    if (v1038 == 0xFFFF)
    {
      v1039 = *(a2 + 1998);
      v1038 = *(a2 + 1998);
      *(a2 + 1664) = v1039;
      *(a2 + 4 * v1039 + 262) = 351;
      *(a2 + 1998) = v1039 + 1;
    }

    *&v1092[8] = (v1038 << 48) | 0xAA80;
    v1040 = *(a2 + 1908);
    if (v1040 == 0xFFFF)
    {
      v1040 = *(a2 + 2004);
      *(a2 + 1908) = v1040;
      *(a2 + 2004) = v1040 + 1;
    }

    *v1092 = (v1040 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    goto LABEL_1623;
  }

  v707 = 0;
  v1070 = 0;
  v1081 = (a2 + 1924);
  v1083 = a2 + 260;
  v1073 = (a2 + 1940);
  v708 = (a2 + 1348);
  v709 = (a2 + 1288);
  v710 = 328;
  do
  {
    if ((v55 & 1) == 0)
    {
      goto LABEL_1611;
    }

    v1085 = v709;
    v1088 = v710;
    v711 = *(v3 + 2);
    v712 = v710 - 72;
    v713 = (1 << (v710 - 72));
    v714 = v713 & v711;
    v715 = v713 & HIWORD(v711);
    if (v715)
    {
      v716 = (v713 & v711) != 0;
    }

    else
    {
      v716 = 0;
    }

    v1079 = v716;
    v717 = v710 - 8;
    v1090 = v708;
    v1068 = v714;
    v1077 = v55;
    if (!v714)
    {
      memset(&v1092[16], 0, 56);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      v730 = v708[96];
      if (v730 == 0xFFFF)
      {
        v731 = *(a2 + 1998);
        v730 = *(a2 + 1998);
        v708[96] = v731;
        *(v1083 + 4 * v731 + 2) = v717;
        v78 = (v717 & 0xFFFFFFF0) == 144;
        v732 = v731 + 11;
        if (!v78)
        {
          v732 = v731 + 1;
        }

        *(a2 + 1998) = v732;
      }

      v718 = v707;
      *&v1092[8] = ((v730 << 48) | 0x19C840) + 64;
      v733 = (a2 + 1924);
      goto LABEL_1074;
    }

    v718 = v707;
    memset(&v1092[24], 0, 48);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v719 = v708[96];
    if (v719 == 0xFFFF)
    {
      v720 = *(a2 + 1998);
      v719 = *(a2 + 1998);
      v708[96] = v720;
      *(v1083 + 4 * v720 + 2) = v717;
      v78 = (v717 & 0xFFFFFFF0) == 144;
      v721 = v720 + 11;
      if (!v78)
      {
        v721 = v720 + 1;
      }

      *(a2 + 1998) = v721;
    }

    *&v1092[8] = ((v719 << 48) | 0x19C840) + 64;
    v722 = *(a2 + 1900);
    if (v722 == 0xFFFF)
    {
      v722 = *(a2 + 2004);
      *(a2 + 1900) = v722;
      *(a2 + 2004) = v722 + 1;
    }

    *&v1092[16] = (v722 << 48) | 0x19C840;
    v723 = *v1081;
    if (v723 == 0xFFFF)
    {
      v723 = *(a2 + 2004);
      *(a2 + 1924) = v723;
      *(a2 + 2004) = v723 + 1;
    }

    *v1092 = (v723 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    gleVStateProgram_NormalizeVector(a2, 12, 12, 23, 27);
    if (v715)
    {
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v724 = *(a2 + 1946);
      if (v724 == 0xFFFF)
      {
        v724 = *(a2 + 2004);
        *(a2 + 1946) = v724;
        *(a2 + 2004) = v724 + 1;
      }

      *&v1092[8] = (v724 << 48) | 0x19C840;
      v725 = *(a2 + 1954);
      if (v725 == 0xFFFF)
      {
        v725 = *(a2 + 2004);
        *(a2 + 1954) = v725;
        *(a2 + 2004) = v725 + 1;
      }

      *&v1092[16] = (v725 << 48) | 0x19C840;
      if (v724 == 0xFFFF)
      {
        v724 = *(a2 + 2004);
        *(a2 + 1946) = v724;
        *(a2 + 2004) = v724 + 1;
      }

      *v1092 = (v724 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v726 = *(a2 + 1946);
      if (v726 == 0xFFFF)
      {
        v726 = *(a2 + 2004);
        *(a2 + 1946) = v726;
        *(a2 + 2004) = v726 + 1;
      }

      *&v1092[8] = (v726 << 48) | 0x19C840;
      v727 = v1088 - 16;
      v728 = v1090[80];
      if (v728 == 0xFFFF)
      {
        v734 = *(a2 + 1998);
        v1090[80] = v734;
        *(v1083 + 4 * v734 + 2) = v727;
        if ((v727 & 0xFFFFFFF0) == 0x90)
        {
          v735 = 11;
        }

        else
        {
          v735 = 1;
        }

        *(a2 + 1998) = v734 + v735;
        *&v1092[16] = ((v734 << 48) | 0x15440) + 64;
        if (v734 == -1)
        {
          v734 = *(a2 + 1998);
          v1090[80] = v734;
          *(v1083 + 4 * v734 + 2) = v727;
          *(a2 + 1998) = v734 + v735;
        }

        v729 = v734 << 48;
      }

      else
      {
        v729 = v728 << 48;
        *&v1092[16] = ((v728 << 48) | 0x15440) + 64;
      }

      *&v1092[24] = v729 | 0xAA80;
      v736 = *(a2 + 1954);
      if (v736 == 0xFFFF)
      {
        v736 = *(a2 + 2004);
        *(a2 + 1954) = v736;
        *(a2 + 2004) = v736 + 1;
      }

      *v1092 = (v736 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v737 = *(a2 + 1946);
      if (v737 == 0xFFFF)
      {
        v737 = *(a2 + 2004);
        *(a2 + 1946) = v737;
        *(a2 + 2004) = v737 + 1;
      }

      *&v1092[8] = (v737 << 48) | 0x19C840;
      v738 = *(a2 + 1954);
      if (v738 == 0xFFFF)
      {
        v738 = *(a2 + 2004);
        *(a2 + 1954) = v738;
        *(a2 + 2004) = v738 + 1;
      }

      *&v1092[16] = (v738 << 48) | 0x19C840;
      v739 = v1090[80];
      if (v739 == 0xFFFF)
      {
        v740 = *(a2 + 1998);
        v739 = *(a2 + 1998);
        v1090[80] = v740;
        *(v1083 + 4 * v740 + 2) = v727;
        if ((v727 & 0xFFFFFFF0) == 0x90)
        {
          v741 = v740 + 11;
        }

        else
        {
          v741 = v740 + 1;
        }

        *(a2 + 1998) = v741;
        v738 = *(a2 + 1954);
      }

      *&v1092[24] = (v739 << 48) | 0x80;
      if (v738 == 0xFFFF)
      {
        v738 = *(a2 + 2004);
        *(a2 + 1954) = v738;
        *(a2 + 2004) = v738 + 1;
      }

      *v1092 = (v738 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(&v1092[16], 0, 56);
      v742 = *(a2 + 16);
      *(a2 + 16) = 1;
      v1091 = (8 * (v742 & 7)) | 0x100100381;
      v743 = *(a2 + 1954);
      if (v743 == 0xFFFF)
      {
        v743 = *(a2 + 2004);
        *(a2 + 1954) = v743;
        *(a2 + 2004) = v743 + 1;
      }

      *&v1092[8] = (v743 << 48) | 0x19C840;
      v733 = (a2 + 1940);
LABEL_1074:
      v744 = *v733;
      if (v744 == 0xFFFF)
      {
        v744 = *(a2 + 2004);
        *v733 = v744;
        *(a2 + 2004) = v744 + 1;
      }

      *v1092 = (v744 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
    }

    memset(&v1092[24], 0, 48);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
    *(a2 + 16) = 2;
    v745 = *(a2 + 1902);
    if (v745 == 0xFFFF)
    {
      v745 = *(a2 + 2004);
      *(a2 + 1902) = v745;
      *(a2 + 2004) = v745 + 1;
    }

    *&v1092[8] = (v745 << 48) | 0x19C840;
    v746 = *v1081;
    v3 = v1071;
    if (v746 == 0xFFFF)
    {
      v746 = *(a2 + 2004);
      *(a2 + 1924) = v746;
      *(a2 + 2004) = v746 + 1;
    }

    *&v1092[16] = (v746 << 48) | 0x19C840;
    v747 = *(a2 + 1912);
    if (v747 == 0xFFFF)
    {
      v747 = *(a2 + 2004);
      *(a2 + 1912) = v747;
      *(a2 + 2004) = v747 + 1;
    }

    *v1092 = (v747 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    v707 = v718;
    v55 = v1077;
    v1075 = BYTE1(v711) >> v712;
    if (v1075)
    {
      memset(&v1092[16], 0, 56);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      v748 = v1090[112];
      if (v748 == 0xFFFF)
      {
        v749 = *(a2 + 1998);
        v748 = *(a2 + 1998);
        v1090[112] = v749;
        *(v1083 + 4 * v749 + 2) = v1088;
        if ((v1088 & 0xFFFFFFF0) == 0x90)
        {
          v750 = v749 + 11;
        }

        else
        {
          v750 = v749 + 1;
        }

        *(a2 + 1998) = v750;
      }

      *&v1092[8] = ((v748 << 48) | 0x19C840) + 64;
      v751 = *(a2 + 1946);
      if (v751 == 0xFFFF)
      {
        v751 = *(a2 + 2004);
        *(a2 + 1946) = v751;
        *(a2 + 2004) = v751 + 1;
      }

      *v1092 = (v751 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v752 = *(a2 + 1946);
      if (v752 == 0xFFFF)
      {
        v752 = *(a2 + 2004);
        *(a2 + 1946) = v752;
        *(a2 + 2004) = v752 + 1;
      }

      *&v1092[8] = (v752 << 48) | 0x19C840;
      v753 = *v1081;
      if (v753 == 0xFFFF)
      {
        v753 = *(a2 + 2004);
        *(a2 + 1924) = v753;
        *(a2 + 2004) = v753 + 1;
      }

      *&v1092[16] = ((v753 << 48) | 0x19C840) + 16;
      v754 = *(a2 + 1954);
      if (v754 == 0xFFFF)
      {
        v754 = *(a2 + 2004);
        *(a2 + 1954) = v754;
        *(a2 + 2004) = v754 + 1;
      }

      *v1092 = (v754 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000C82;
      *(a2 + 16) = 2;
      v755 = *(a2 + 1954);
      if (v1079)
      {
        if (v755 == 0xFFFF)
        {
          v755 = *(a2 + 2004);
          *(a2 + 1954) = v755;
          *(a2 + 2004) = v755 + 1;
        }

        *&v1092[8] = (v755 << 48) | 0x19C840;
        v756 = v1090[48];
        if (v756 == 0xFFFF)
        {
          v757 = *(a2 + 1998);
          v756 = *(a2 + 1998);
          v1090[48] = v757;
          *(v1083 + 4 * v757 + 2) = v1088 - 32;
          v758 = v757 + 11;
          if (((v1088 - 32) & 0xFFFFFFF0) != 0x90)
          {
            v758 = v757 + 1;
          }

          *(a2 + 1998) = v758;
        }

        *&v1092[16] = ((v756 << 48) | 0x1FE40) + 64;
        v759 = *(a2 + 1946);
        if (v759 == 0xFFFF)
        {
          v759 = *(a2 + 2004);
          *(a2 + 1946) = v759;
          *(a2 + 2004) = v759 + 1;
        }

        *v1092 = (v759 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v760 = *(a2 + 1940);
        if (v760 == 0xFFFF)
        {
          v760 = *(a2 + 2004);
          *(a2 + 1940) = v760;
          *(a2 + 2004) = v760 + 1;
        }

        *&v1092[8] = (v760 << 48) | 0x19C840;
        v761 = *(a2 + 1946);
        if (v761 == 0xFFFF)
        {
          v761 = *(a2 + 2004);
          *(a2 + 1946) = v761;
          *(a2 + 2004) = v761 + 1;
        }

        *&v1092[16] = (v761 << 48) | 0x19C840;
      }

      else
      {
        if (v755 == 0xFFFF)
        {
          v755 = *(a2 + 2004);
          *(a2 + 1954) = v755;
          *(a2 + 2004) = v755 + 1;
        }

        *&v1092[8] = (v755 << 48) | 0x19C840;
        v762 = v1090[48];
        if (v762 == 0xFFFF)
        {
          v763 = *(a2 + 1998);
          v762 = *(a2 + 1998);
          v1090[48] = v763;
          *(v1083 + 4 * v763 + 2) = v1088 - 32;
          v764 = v763 + 11;
          if (((v1088 - 32) & 0xFFFFFFF0) != 0x90)
          {
            v764 = v763 + 1;
          }

          *(a2 + 1998) = v764;
        }

        *&v1092[16] = ((v762 << 48) | 0x1FE40) + 64;
        v760 = *v1073;
      }

      if (v760 == 0xFFFF)
      {
        v760 = *(a2 + 2004);
        *(a2 + 1940) = v760;
        *(a2 + 2004) = v760 + 1;
      }

      *v1092 = (v760 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      if ((*(v1071 + 7) & 0x20) != 0)
      {
        memset(&v1092[16], 0, 56);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        v774 = v1090[80];
        if (v774 == 0xFFFF)
        {
          v775 = *(a2 + 1998);
          v774 = *(a2 + 1998);
          v1090[80] = v775;
          *(v1083 + 4 * v775 + 2) = v1088 - 16;
          v776 = v775 + 11;
          if (((v1088 - 16) & 0xFFFFFFF0) != 0x90)
          {
            v776 = v775 + 1;
          }

          *(a2 + 1998) = v776;
        }

        *&v1092[8] = ((v774 << 48) | 0x19C840) + 64;
        v777 = *(a2 + 1954);
        if (v777 == 0xFFFF)
        {
          v777 = *(a2 + 2004);
          *(a2 + 1954) = v777;
          *(a2 + 2004) = v777 + 1;
        }

        *v1092 = (v777 << 48) | 0x72609000;
        (*(a2 + 2016))(a2, &v1091);
        memset(&v1092[8], 0, 64);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000041;
        *(a2 + 16) = 1;
        v778 = *(a2 + 1954);
        if (v778 == 0xFFFF)
        {
          v780 = *(a2 + 2004);
          v781 = *(a2 + 2004);
          *(a2 + 1954) = v780;
          *(a2 + 2004) = ++v781;
          *&v1092[8] = (v780 << 48) | 0x19C840;
          if ((v781 & 0x10000) != 0)
          {
            v780 = *(a2 + 2004);
            *(a2 + 1954) = v780;
            *(a2 + 2004) = v780 + 1;
          }

          v779 = v780 << 48;
        }

        else
        {
          v779 = v778 << 48;
          *&v1092[8] = (v778 << 48) | 0x19C840;
        }

        *v1092 = v779 + 1918963712;
        (*(a2 + 2016))(a2, &v1091);
        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v771 = *(a2 + 1940);
        if (v771 == 0xFFFF)
        {
          v771 = *(a2 + 2004);
          *(a2 + 1940) = v771;
          *(a2 + 2004) = v771 + 1;
        }

        *&v1092[8] = (v771 << 48) | 0x19C840;
        v782 = *(a2 + 1954);
        if (v782 == 0xFFFF)
        {
          v782 = *(a2 + 2004);
          *(a2 + 1954) = v782;
          *(a2 + 2004) = v782 + 1;
        }

        v773 = (v782 << 48) | 0x15440;
      }

      else
      {
        memset(&v1092[24], 0, 48);
        v765 = *(a2 + 16);
        *(a2 + 16) = 2;
        v1091 = (8 * (v765 & 7)) | 0x100000E02;
        v766 = *(a2 + 1954);
        if (v766 == 0xFFFF)
        {
          v766 = *(a2 + 2004);
          *(a2 + 1954) = v766;
          *(a2 + 2004) = v766 + 1;
        }

        *&v1092[8] = (v766 << 48) | 0x19C840;
        v767 = v1090[80];
        if (v767 == 0xFFFF)
        {
          v768 = *(a2 + 1998);
          v767 = *(a2 + 1998);
          v1090[80] = v768;
          *(v1083 + 4 * v768 + 2) = v1088 - 16;
          v769 = v768 + 11;
          if (((v1088 - 16) & 0xFFFFFFF0) != 0x90)
          {
            v769 = v768 + 1;
          }

          *(a2 + 1998) = v769;
        }

        *&v1092[16] = ((v767 << 48) | 0x1FE40) + 64;
        v770 = *(a2 + 1946);
        if (v770 == 0xFFFF)
        {
          v770 = *(a2 + 2004);
          *(a2 + 1946) = v770;
          *(a2 + 2004) = v770 + 1;
        }

        *v1092 = (v770 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v771 = *(a2 + 1940);
        if (v771 == 0xFFFF)
        {
          v771 = *(a2 + 2004);
          *(a2 + 1940) = v771;
          *(a2 + 2004) = v771 + 1;
        }

        *&v1092[8] = (v771 << 48) | 0x19C840;
        v772 = *(a2 + 1946);
        if (v772 == 0xFFFF)
        {
          v772 = *(a2 + 2004);
          *(a2 + 1946) = v772;
          *(a2 + 2004) = v772 + 1;
        }

        v773 = (v772 << 48) | 0x19C840;
      }

      *&v1092[16] = v773;
      if (v771 == 0xFFFF)
      {
        v771 = *(a2 + 2004);
        *(a2 + 1940) = v771;
        *(a2 + 2004) = v771 + 1;
      }

      *v1092 = (v771 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
    }

    if ((*v1071 & 0x400000000000000) == 0)
    {
      if ((*v1071 & 0x2000000000000) != 0)
      {
        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
        *(a2 + 16) = 2;
        v786 = *(a2 + 1942);
        if (v786 == 0xFFFF)
        {
          v786 = *(a2 + 2004);
          *(a2 + 1942) = v786;
          goto LABEL_1174;
        }
      }

      else
      {
        if (!v1068)
        {
          memset(&v1092[16], 0, 56);
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
          *(a2 + 16) = 1;
          v807 = v1090[64];
          if (v807 == 0xFFFF)
          {
            v808 = *(a2 + 1998);
            v807 = *(a2 + 1998);
            v1090[64] = v808;
            *(v1083 + 4 * v808 + 2) = v1088 - 24;
            v809 = v808 + 11;
            if (((v1088 - 24) & 0xFFFFFFF0) != 0x90)
            {
              v809 = v808 + 1;
            }

            *(a2 + 1998) = v809;
          }

          *&v1092[8] = ((v807 << 48) | 0x19C840) + 64;
          v810 = *(a2 + 1932);
          if (v810 == 0xFFFF)
          {
            v810 = *(a2 + 2004);
            *(a2 + 1932) = v810;
            *(a2 + 2004) = v810 + 1;
          }

          *v1092 = (v810 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          goto LABEL_1180;
        }

        memset(&v1092[24], 0, 48);
        v783 = 8 * (*(a2 + 16) & 7);
        *(a2 + 16) = 2;
        v1091 = v783 | 0x3100011042;
        v784 = *(a2 + 1904);
        if (v784 == 0xFFFF)
        {
          v784 = *(a2 + 2004);
          *(a2 + 1904) = v784;
          *(a2 + 2004) = v784 + 1;
        }

        *&v1092[8] = (v784 << 48) | 0x19C840;
        *&v1092[16] = 2560163840;
        v785 = *(a2 + 1946);
        if (v785 == 0xFFFF)
        {
          v785 = *(a2 + 2004);
          *(a2 + 1946) = v785;
          *(a2 + 2004) = v785 + 1;
        }

        *v1092 = (v785 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
        *(a2 + 16) = 2;
        v786 = *(a2 + 1946);
        if (v786 == 0xFFFF)
        {
          v786 = *(a2 + 2004);
          *(a2 + 1946) = v786;
LABEL_1174:
          *(a2 + 2004) = v786 + 1;
        }
      }

      *&v1092[8] = (v786 << 48) | 0x19C840;
      v793 = *v1081;
      if (v793 == 0xFFFF)
      {
        v793 = *(a2 + 2004);
        *(a2 + 1924) = v793;
        *(a2 + 2004) = v793 + 1;
      }

      *&v1092[16] = (v793 << 48) | 0x19C840;
      v794 = *(a2 + 1932);
      if (v794 == 0xFFFF)
      {
        v794 = *(a2 + 2004);
        *(a2 + 1932) = v794;
        *(a2 + 2004) = v794 + 1;
      }

      *v1092 = (v794 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      gleVStateProgram_NormalizeVector(a2, 16, 16, 23, 23);
LABEL_1180:
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v795 = *(a2 + 1902);
      if (v795 == 0xFFFF)
      {
        v795 = *(a2 + 2004);
        *(a2 + 1902) = v795;
        *(a2 + 2004) = v795 + 1;
      }

      *&v1092[8] = (v795 << 48) | 0x19C840;
      v796 = *(a2 + 1932);
      if (v796 != 0xFFFF)
      {
        goto LABEL_1219;
      }

      v796 = *(a2 + 2004);
      *(a2 + 1932) = v796;
LABEL_1218:
      *(a2 + 2004) = v796 + 1;
LABEL_1219:
      v814 = (v796 << 48) | 0x19C840;
      goto LABEL_1220;
    }

    memset(&v1092[24], 0, 48);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000B82;
    *(a2 + 16) = 2;
    v787 = *(a2 + 1902);
    if (v787 == 0xFFFF)
    {
      v787 = *(a2 + 2004);
      *(a2 + 1902) = v787;
      *(a2 + 2004) = v787 + 1;
    }

    *&v1092[8] = (v787 << 48) | 0x19C840;
    v788 = *v1081;
    if (v788 == 0xFFFF)
    {
      v788 = *(a2 + 2004);
      *(a2 + 1924) = v788;
      *(a2 + 2004) = v788 + 1;
    }

    *&v1092[16] = (v788 << 48) | 0x19C840;
    v789 = *(a2 + 1932);
    if (v789 == 0xFFFF)
    {
      v789 = *(a2 + 2004);
      *(a2 + 1932) = v789;
      *(a2 + 2004) = v789 + 1;
    }

    *v1092 = (v789 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    memset(v1092, 0, sizeof(v1092));
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000B82;
    *(a2 + 16) = 2;
    v790 = *(a2 + 1902);
    if (v790 == 0xFFFF)
    {
      v790 = *(a2 + 2004);
      *(a2 + 1902) = v790;
      *(a2 + 2004) = v790 + 1;
    }

    *&v1092[8] = (v790 << 48) | 0x19C840;
    v791 = *(a2 + 1932);
    if (v791 == 0xFFFF)
    {
      v797 = *(a2 + 2004);
      v798 = *(a2 + 2004);
      *(a2 + 1932) = v797;
      *(a2 + 2004) = ++v798;
      *&v1092[16] = (v797 << 48) | 0x19C840;
      if ((v798 & 0x10000) != 0)
      {
        v797 = *(a2 + 2004);
        *(a2 + 1932) = v797;
        *(a2 + 2004) = v797 + 1;
      }

      v792 = v797 << 48;
    }

    else
    {
      v792 = v791 << 48;
      *&v1092[16] = (v791 << 48) | 0x19C840;
    }

    *v1092 = v792 | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    memset(&v1092[8], 0, 64);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v799 = *(a2 + 1932);
    if (v799 != 0xFFFF)
    {
      v800 = v799 << 48;
      v801 = (v799 << 48) | 0x19C840;
      *&v1092[8] = v801;
LABEL_1201:
      *&v1092[16] = v801;
      goto LABEL_1202;
    }

    v802 = *(a2 + 2004);
    v803 = *(a2 + 2004);
    *(a2 + 1932) = v802;
    v804 = v803 + 1;
    *(a2 + 2004) = v803 + 1;
    v801 = (v802 << 48) | 0x19C840;
    *&v1092[8] = v801;
    if ((v804 & 0x10000) == 0)
    {
      v800 = v802 << 48;
      goto LABEL_1201;
    }

    v805 = *(a2 + 2004);
    v806 = *(a2 + 2004);
    *(a2 + 1932) = v805;
    *(a2 + 2004) = ++v806;
    *&v1092[16] = (v805 << 48) | 0x19C840;
    if ((v806 & 0x10000) != 0)
    {
      v805 = *(a2 + 2004);
      *(a2 + 1932) = v805;
      *(a2 + 2004) = v805 + 1;
    }

    v800 = v805 << 48;
LABEL_1202:
    *v1092 = v800 | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    v811 = *v1071;
    memset(&v1092[24], 0, 48);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
    *(a2 + 16) = 2;
    v812 = *(a2 + 1932);
    if ((v811 & 0x2000000000000) != 0)
    {
      if (v812 == 0xFFFF)
      {
        v812 = *(a2 + 2004);
        *(a2 + 1932) = v812;
        *(a2 + 2004) = v812 + 1;
      }

      *&v1092[8] = (v812 << 48) | 0x19C840;
      v815 = *v1081;
      if (v815 == 0xFFFF)
      {
        v815 = *(a2 + 2004);
        *(a2 + 1924) = v815;
        *(a2 + 2004) = v815 + 1;
      }

      *&v1092[16] = (v815 << 48) | 0x19C840;
      if (v812 == 0xFFFF)
      {
        v812 = *(a2 + 2004);
        *(a2 + 1932) = v812;
        *(a2 + 2004) = v812 + 1;
      }

      *v1092 = (v812 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000A02;
      *(a2 + 16) = 2;
      v816 = *(a2 + 1932);
      if (v816 == 0xFFFF)
      {
        v816 = *(a2 + 2004);
        *(a2 + 1932) = v816;
        *(a2 + 2004) = v816 + 1;
      }

      *&v1092[8] = (v816 << 48) | 0x19C840;
      v796 = *(a2 + 1942);
      if (v796 != 0xFFFF)
      {
        goto LABEL_1219;
      }

      v796 = *(a2 + 2004);
      *(a2 + 1942) = v796;
      goto LABEL_1218;
    }

    if (v812 == 0xFFFF)
    {
      v812 = *(a2 + 2004);
      *(a2 + 1932) = v812;
      *(a2 + 2004) = v812 + 1;
    }

    *&v1092[8] = (v812 << 48) | 0x15440;
    v813 = *v1081;
    if (v813 == 0xFFFF)
    {
      v813 = *(a2 + 2004);
      *(a2 + 1924) = v813;
      *(a2 + 2004) = v813 + 1;
    }

    v814 = (v813 << 48) | 0x15440;
LABEL_1220:
    *&v1092[16] = v814;
    v817 = *(a2 + 1912);
    if (v817 == 0xFFFF)
    {
      v817 = *(a2 + 2004);
      *(a2 + 1912) = v817;
      *(a2 + 2004) = v817 + 1;
    }

    *v1092 = (v817 << 48) | 0x72621000;
    (*(a2 + 2016))(a2, &v1091);
    v818 = *v1071;
    if ((*v1071 & 0x2000000000000000) != 0)
    {
      memset(&v1092[16], 0, 56);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      v819 = *(a2 + 1628);
      if (v819 == 0xFFFF)
      {
        v820 = *(a2 + 1998);
        v819 = *(a2 + 1998);
        *(a2 + 1628) = v820;
        *(v1083 + 4 * v820 + 2) = 342;
        *(a2 + 1998) = v820 + 1;
      }

      *&v1092[8] = (v819 << 48) | 0x80;
      v821 = *(a2 + 1912);
      if (v821 == 0xFFFF)
      {
        v821 = *(a2 + 2004);
        *(a2 + 1912) = v821;
        *(a2 + 2004) = v821 + 1;
      }

      *v1092 = (v821 << 48) | 0x72609000;
      (*(a2 + 2016))(a2, &v1091);
      v818 = *v1071;
    }

    if ((v818 & 0x1000000000000) != 0)
    {
      memset(&v1092[16], 0, 56);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      v822 = *(a2 + 1912);
      if (v822 == 0xFFFF)
      {
        v822 = *(a2 + 2004);
        *(a2 + 1912) = v822;
        *(a2 + 2004) = v822 + 1;
      }

      *&v1092[8] = ((v822 << 48) | 0x19C840) + 16;
      v823 = *(a2 + 1914);
      if (v823 == 0xFFFF)
      {
        v823 = *(a2 + 2004);
        *(a2 + 1914) = v823;
        *(a2 + 2004) = v823 + 1;
      }

      *v1092 = (v823 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      v818 = *v1071;
      if ((*v1071 & 0x2000000000000000) != 0)
      {
        memset(&v1092[16], 0, 56);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        v824 = *(a2 + 1632);
        if (v824 == 0xFFFF)
        {
          v825 = *(a2 + 1998);
          v824 = *(a2 + 1998);
          *(a2 + 1632) = v825;
          *(v1083 + 4 * v825 + 2) = 343;
          *(a2 + 1998) = v825 + 1;
        }

        *&v1092[8] = (v824 << 48) | 0x80;
        v826 = *(a2 + 1914);
        if (v826 == 0xFFFF)
        {
          v826 = *(a2 + 2004);
          *(a2 + 1914) = v826;
          *(a2 + 2004) = v826 + 1;
        }

        *v1092 = (v826 << 48) | 0x72609000;
        (*(a2 + 2016))(a2, &v1091);
        v818 = *v1071;
      }
    }

    if ((v818 & 0x2000000000000000) != 0)
    {
      memset(&v1092[8], 0, 64);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000041;
      *(a2 + 16) = 1;
      v838 = *(a2 + 1912);
      v828 = v1085;
      if (v838 != 0xFFFF)
      {
        v837 = v838 << 48;
        *&v1092[8] = (v838 << 48) | 0x19C840;
        goto LABEL_1267;
      }

      v843 = *(a2 + 2004);
      v844 = *(a2 + 2004);
      *(a2 + 1912) = v843;
      *(a2 + 2004) = ++v844;
      *&v1092[8] = (v843 << 48) | 0x19C840;
      if ((v844 & 0x10000) != 0)
      {
LABEL_1265:
        v843 = *(a2 + 2004);
        *(a2 + 1912) = v843;
        *(a2 + 2004) = v843 + 1;
      }

      v837 = v843 << 48;
      goto LABEL_1267;
    }

    memset(&v1092[24], 0, 48);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
    *(a2 + 16) = 2;
    v827 = *(a2 + 1912);
    v828 = v1085;
    if (v827 == 0xFFFF)
    {
      v827 = *(a2 + 2004);
      *(a2 + 1912) = v827;
      *(a2 + 2004) = v827 + 1;
    }

    *&v1092[8] = (v827 << 48) | 0x19C240;
    v829 = *(a2 + 1664);
    if (v829 == 0xFFFF)
    {
      v830 = *(a2 + 1998);
      v829 = *(a2 + 1998);
      *(a2 + 1664) = v830;
      *(v1083 + 4 * v830 + 2) = 351;
      *(a2 + 1998) = v830 + 1;
    }

    *&v1092[16] = (v829 << 48) | 0xAA80;
    if (v827 == 0xFFFF)
    {
      v827 = *(a2 + 2004);
      *(a2 + 1912) = v827;
      *(a2 + 2004) = v827 + 1;
    }

    *v1092 = (v827 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    memset(&v1092[24], 0, 48);
    v831 = *(a2 + 16);
    *(a2 + 16) = 2;
    v1091 = (8 * (v831 & 7)) | 0x100000E02;
    v832 = *(a2 + 1912);
    if (v832 == 0xFFFF)
    {
      v832 = *(a2 + 2004);
      *(a2 + 1912) = v832;
      *(a2 + 2004) = v832 + 1;
    }

    *&v1092[8] = (v832 << 48) | 0x40;
    v833 = *(a2 + 1628);
    if (v833 == 0xFFFF)
    {
      v834 = *(a2 + 1998);
      v833 = *(a2 + 1998);
      *(a2 + 1628) = v834;
      *(v1083 + 4 * v834 + 2) = 342;
      *(a2 + 1998) = v834 + 1;
    }

    *&v1092[16] = (v833 << 48) | 0x80;
    if (v832 == 0xFFFF)
    {
      v832 = *(a2 + 2004);
      *(a2 + 1912) = v832;
      *(a2 + 2004) = v832 + 1;
    }

    *v1092 = (v832 << 48) + 1918963712;
    (*(a2 + 2016))(a2, &v1091);
    memset(v1092, 0, sizeof(v1092));
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
    *(a2 + 16) = 3;
    v835 = *(a2 + 1912);
    if (v835 == 0xFFFF)
    {
      v839 = *(a2 + 2004);
      v840 = *(a2 + 2004);
      *(a2 + 1912) = v839;
      *(a2 + 2004) = ++v840;
      *&v1092[8] = (v839 << 48) | 0xAA50;
      if ((v840 & 0x10000) != 0)
      {
        v839 = *(a2 + 2004);
        v841 = *(a2 + 2004);
        *(a2 + 1912) = v839;
        v842 = v841 + 1;
        v836 = (v841 + 1) >> 16;
        *(a2 + 2004) = v842;
      }

      else
      {
        v836 = 0;
      }

      v837 = v839 << 48;
    }

    else
    {
      v836 = 0;
      v837 = v835 << 48;
      *&v1092[8] = (v835 << 48) | 0xAA50;
    }

    *&v1092[16] = v837 | 0x19C840;
    v845 = *(a2 + 1664);
    if (v845 == 0xFFFF)
    {
      v846 = *(a2 + 1998);
      v845 = *(a2 + 1998);
      *(a2 + 1664) = v846;
      *(v1083 + 4 * v846 + 2) = 351;
      *(a2 + 1998) = v846 + 1;
    }

    *&v1092[24] = (v845 << 48) | 0xAA80;
    if (v836)
    {
      goto LABEL_1265;
    }

LABEL_1267:
    *v1092 = v837 | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    if ((*v1071 & 0x1000000000000) == 0)
    {
      goto LABEL_1294;
    }

    if ((*v1071 & 0x2000000000000000) == 0)
    {
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000B42;
      *(a2 + 16) = 2;
      v847 = *(a2 + 1914);
      if (v847 == 0xFFFF)
      {
        v847 = *(a2 + 2004);
        *(a2 + 1914) = v847;
        *(a2 + 2004) = v847 + 1;
      }

      *&v1092[8] = (v847 << 48) | 0x19C240;
      v848 = *(a2 + 1664);
      if (v848 == 0xFFFF)
      {
        v849 = *(a2 + 1998);
        v848 = *(a2 + 1998);
        *(a2 + 1664) = v849;
        *(v1083 + 4 * v849 + 2) = 351;
        *(a2 + 1998) = v849 + 1;
        v847 = *(a2 + 1914);
      }

      *&v1092[16] = (v848 << 48) | 0xAA80;
      if (v847 == 0xFFFF)
      {
        v847 = *(a2 + 2004);
        *(a2 + 1914) = v847;
        *(a2 + 2004) = v847 + 1;
      }

      *v1092 = (v847 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(&v1092[24], 0, 48);
      v850 = *(a2 + 16);
      *(a2 + 16) = 2;
      v1091 = (8 * (v850 & 7)) | 0x100000E02;
      v851 = *(a2 + 1914);
      if (v851 == 0xFFFF)
      {
        v851 = *(a2 + 2004);
        *(a2 + 1914) = v851;
        *(a2 + 2004) = v851 + 1;
      }

      *&v1092[8] = (v851 << 48) | 0x40;
      v852 = *(a2 + 1632);
      if (v852 == 0xFFFF)
      {
        v853 = *(a2 + 1998);
        v852 = *(a2 + 1998);
        *(a2 + 1632) = v853;
        *(v1083 + 4 * v853 + 2) = 343;
        *(a2 + 1998) = v853 + 1;
        v851 = *(a2 + 1914);
      }

      *&v1092[16] = (v852 << 48) | 0x80;
      if (v851 == 0xFFFF)
      {
        v851 = *(a2 + 2004);
        *(a2 + 1914) = v851;
        *(a2 + 2004) = v851 + 1;
      }

      *v1092 = (v851 << 48) | 0x72611000;
      (*(a2 + 2016))(a2, &v1091);
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000F83;
      *(a2 + 16) = 3;
      v854 = *(a2 + 1914);
      if (v854 == 0xFFFF)
      {
        v858 = *(a2 + 2004);
        v854 = v858;
        *(a2 + 1914) = v858;
        *(a2 + 2004) = v858 + 1;
        *&v1092[8] = (v858 << 48) | 0xAA50;
        if (((v858 + 1) & 0x10000) != 0)
        {
          v858 = *(a2 + 2004);
          v854 = v858;
          *(a2 + 1914) = v858;
          *(a2 + 2004) = v858 + 1;
        }

        v855 = v858 << 48;
      }

      else
      {
        v855 = v854 << 48;
        *&v1092[8] = (v854 << 48) | 0xAA50;
      }

      *&v1092[16] = v855 | 0x19C840;
      v859 = *(a2 + 1664);
      if (v859 == 0xFFFF)
      {
        v860 = *(a2 + 1998);
        v859 = *(a2 + 1998);
        *(a2 + 1664) = v860;
        *(v1083 + 4 * v860 + 2) = 351;
        *(a2 + 1998) = v860 + 1;
        v854 = *(a2 + 1914);
      }

      *&v1092[24] = (v859 << 48) | 0xAA80;
      if (v854 != 0xFFFF)
      {
        goto LABEL_1292;
      }

LABEL_1291:
      v854 = *(a2 + 2004);
      *(a2 + 1914) = v854;
      *(a2 + 2004) = v854 + 1;
LABEL_1292:
      v857 = v854 << 48;
      goto LABEL_1293;
    }

    memset(&v1092[8], 0, 64);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000041;
    *(a2 + 16) = 1;
    v856 = *(a2 + 1914);
    if (v856 == 0xFFFF)
    {
      v854 = *(a2 + 2004);
      v952 = *(a2 + 2004);
      *(a2 + 1914) = v854;
      *(a2 + 2004) = ++v952;
      *&v1092[8] = (v854 << 48) | 0x19C840;
      if ((v952 & 0x10000) == 0)
      {
        goto LABEL_1292;
      }

      goto LABEL_1291;
    }

    v857 = v856 << 48;
    *&v1092[8] = (v856 << 48) | 0x19C840;
LABEL_1293:
    *v1092 = v857 | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
LABEL_1294:
    if ((v1065 & 6) == 6)
    {
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v861 = *v1090;
      if (v861 == 0xFFFF)
      {
        v862 = *(a2 + 1998);
        v861 = *(a2 + 1998);
        *v1090 = v862;
        *(v1083 + 4 * v862 + 2) = v1088 - 56;
        v863 = v862 + 11;
        if (((v1088 - 56) & 0xFFFFFFF0) != 0x90)
        {
          v863 = v862 + 1;
        }

        *(a2 + 1998) = v863;
      }

      *&v1092[8] = ((v861 << 48) | 0x19C840) + 64;
      *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
      v864 = *(a2 + 1946);
      if (v864 == 0xFFFF)
      {
        v864 = *(a2 + 2004);
        *(a2 + 1946) = v864;
        *(a2 + 2004) = v864 + 1;
      }

      *v1092 = (v864 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v865 = v1090[16];
      if (v865 == 0xFFFF)
      {
        v866 = *(a2 + 1998);
        v865 = *(a2 + 1998);
        v1090[16] = v866;
        *(v1083 + 4 * v866 + 2) = v1088 - 48;
        v867 = v866 + 11;
        if (((v1088 - 48) & 0xFFFFFFF0) != 0x90)
        {
          v867 = v866 + 1;
        }

        *(a2 + 1998) = v867;
      }

      *&v1092[8] = ((v865 << 48) | 0x19C840) + 64;
      *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
      v868 = *(a2 + 1962);
      if (v868 == 0xFFFF)
      {
        v868 = *(a2 + 2004);
        *(a2 + 1962) = v868;
        *(a2 + 2004) = v868 + 1;
      }

      *v1092 = (v868 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v869 = *(a2 + 1912);
      v828 = v1085;
      if (v869 == 0xFFFF)
      {
        v869 = *(a2 + 2004);
        *(a2 + 1912) = v869;
        *(a2 + 2004) = v869 + 1;
      }

      *&v1092[8] = (v869 << 48) | 0xAA40;
      v870 = *(a2 + 1962);
      if (v870 == 0xFFFF)
      {
        v870 = *(a2 + 2004);
        *(a2 + 1962) = v870;
        *(a2 + 2004) = v870 + 1;
      }

      v871 = (v870 << 48) | 0x19C840;
    }

    else
    {
      if ((v1065 & 2) == 0)
      {
        if ((v1065 & 4) != 0)
        {
          memset(&v1092[24], 0, 48);
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v906 = v1090[16];
          if (v906 == 0xFFFF)
          {
            v907 = *(a2 + 1998);
            v906 = *(a2 + 1998);
            v1090[16] = v907;
            *(v1083 + 4 * v907 + 2) = v1088 - 48;
            v908 = v907 + 11;
            if (((v1088 - 48) & 0xFFFFFFF0) != 0x90)
            {
              v908 = v907 + 1;
            }

            *(a2 + 1998) = v908;
          }

          *&v1092[8] = ((v906 << 48) | 0x19C840) + 64;
          *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
          v909 = *(a2 + 1962);
          if (v909 == 0xFFFF)
          {
            v909 = *(a2 + 2004);
            *(a2 + 1962) = v909;
            *(a2 + 2004) = v909 + 1;
          }

          *v1092 = (v909 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v910 = *(a2 + 1912);
          if (v910 == 0xFFFF)
          {
            v910 = *(a2 + 2004);
            *(a2 + 1912) = v910;
            *(a2 + 2004) = v910 + 1;
          }

          *&v1092[8] = (v910 << 48) | 0xAA40;
          v911 = *(a2 + 1962);
          if (v911 == 0xFFFF)
          {
            v911 = *(a2 + 2004);
            *(a2 + 1962) = v911;
            *(a2 + 2004) = v911 + 1;
          }

          v876 = (v911 << 48) | 0x19C840;
        }

        else
        {
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v872 = *(a2 + 1912);
          if (v872 == 0xFFFF)
          {
            v872 = *(a2 + 2004);
            *(a2 + 1912) = v872;
            *(a2 + 2004) = v872 + 1;
          }

          *&v1092[8] = (v872 << 48) | 0xAA40;
          v873 = *(v828 - 34);
          if (v873 == 0xFFFF)
          {
            v874 = *(a2 + 1998);
            v873 = *(a2 + 1998);
            *(v828 - 34) = v874;
            *(v1083 + 4 * v874 + 2) = v707 + 240;
            v875 = v874 + 11;
            if (((v707 + 240) & 0xFFFFFFF0) != 0x90)
            {
              v875 = v874 + 1;
            }

            *(a2 + 1998) = v875;
          }

          v876 = ((v873 << 48) | 0x19C840) + 64;
        }

        *&v1092[16] = v876;
        v912 = *(v828 - 66);
        if (v912 == 0xFFFF)
        {
          v913 = *(a2 + 1998);
          v912 = *(a2 + 1998);
          *(v828 - 66) = v913;
          *(v1083 + 4 * v913 + 2) = v707 + 224;
          v914 = v913 + 11;
          if (((v707 + 224) & 0xFFFFFFF0) != 0x90)
          {
            v914 = v913 + 1;
          }

          *(a2 + 1998) = v914;
        }

        *&v1092[24] = ((v912 << 48) | 0x19C840) + 64;
        v887 = *(a2 + 1946);
        if (v887 != 0xFFFF)
        {
          goto LABEL_1338;
        }

LABEL_1337:
        v887 = *(a2 + 2004);
        *(a2 + 1946) = v887;
        *(a2 + 2004) = v887 + 1;
        goto LABEL_1338;
      }

      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v877 = *v1090;
      if (v877 == 0xFFFF)
      {
        v878 = *(a2 + 1998);
        v877 = *(a2 + 1998);
        *v1090 = v878;
        *(v1083 + 4 * v878 + 2) = v1088 - 56;
        v879 = v878 + 11;
        if (((v1088 - 56) & 0xFFFFFFF0) != 0x90)
        {
          v879 = v878 + 1;
        }

        *(a2 + 1998) = v879;
      }

      *&v1092[8] = ((v877 << 48) | 0x19C840) + 64;
      *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
      v880 = *(a2 + 1946);
      if (v880 == 0xFFFF)
      {
        v880 = *(a2 + 2004);
        *(a2 + 1946) = v880;
        *(a2 + 2004) = v880 + 1;
      }

      *v1092 = (v880 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v881 = *(a2 + 1912);
      if (v881 == 0xFFFF)
      {
        v881 = *(a2 + 2004);
        *(a2 + 1912) = v881;
        *(a2 + 2004) = v881 + 1;
      }

      *&v1092[8] = (v881 << 48) | 0xAA40;
      v882 = *(v828 - 34);
      if (v882 == 0xFFFF)
      {
        v883 = *(a2 + 1998);
        v882 = *(a2 + 1998);
        *(v828 - 34) = v883;
        *(v1083 + 4 * v883 + 2) = v707 + 240;
        v884 = v883 + 11;
        if (((v707 + 240) & 0xFFFFFFF0) != 0x90)
        {
          v884 = v883 + 1;
        }

        *(a2 + 1998) = v884;
      }

      v871 = ((v882 << 48) | 0x19C840) + 64;
    }

    *&v1092[16] = v871;
    v885 = *(a2 + 1946);
    if (v885 != 0xFFFF)
    {
      v886 = v885 << 48;
      *&v1092[24] = (v885 << 48) | 0x19C840;
      goto LABEL_1339;
    }

    v887 = *(a2 + 2004);
    v888 = *(a2 + 2004);
    *(a2 + 1946) = v887;
    *(a2 + 2004) = ++v888;
    *&v1092[24] = (v887 << 48) | 0x19C840;
    if ((v888 & 0x10000) != 0)
    {
      goto LABEL_1337;
    }

LABEL_1338:
    v886 = v887 << 48;
LABEL_1339:
    *v1092 = v886 | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    v889 = *v1071;
    if ((*v1071 & 0x1000000000000) == 0)
    {
      goto LABEL_1403;
    }

    if ((v1063 & 6) == 6)
    {
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v890 = *v1090;
      if (v890 == 0xFFFF)
      {
        v891 = *(a2 + 1998);
        v890 = *(a2 + 1998);
        *v1090 = v891;
        *(v1083 + 4 * v891 + 2) = v1088 - 56;
        v892 = v891 + 11;
        if (((v1088 - 56) & 0xFFFFFFF0) != 0x90)
        {
          v892 = v891 + 1;
        }

        *(a2 + 1998) = v892;
      }

      *&v1092[8] = ((v890 << 48) | 0x19C840) + 64;
      *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
      v893 = *(a2 + 1954);
      if (v893 == 0xFFFF)
      {
        v893 = *(a2 + 2004);
        *(a2 + 1954) = v893;
        *(a2 + 2004) = v893 + 1;
      }

      *v1092 = (v893 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v894 = v1090[16];
      if (v894 == 0xFFFF)
      {
        v895 = *(a2 + 1998);
        v894 = *(a2 + 1998);
        v1090[16] = v895;
        *(v1083 + 4 * v895 + 2) = v1088 - 48;
        v896 = v895 + 11;
        if (((v1088 - 48) & 0xFFFFFFF0) != 0x90)
        {
          v896 = v895 + 1;
        }

        *(a2 + 1998) = v896;
      }

      *&v1092[8] = ((v894 << 48) | 0x19C840) + 64;
      *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
      v897 = *(a2 + 1970);
      if (v897 == 0xFFFF)
      {
        v897 = *(a2 + 2004);
        *(a2 + 1970) = v897;
        *(a2 + 2004) = v897 + 1;
      }

      *v1092 = (v897 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v898 = *(a2 + 1914);
      if (v898 == 0xFFFF)
      {
        v898 = *(a2 + 2004);
        *(a2 + 1914) = v898;
        *(a2 + 2004) = v898 + 1;
      }

      *&v1092[8] = (v898 << 48) | 0xAA40;
      v899 = *(a2 + 1970);
      if (v899 == 0xFFFF)
      {
        v899 = *(a2 + 2004);
        *(a2 + 1970) = v899;
        *(a2 + 2004) = v899 + 1;
      }

      v900 = (v899 << 48) | 0x19C840;
    }

    else
    {
      if ((v1063 & 2) == 0)
      {
        if ((v1063 & 4) != 0)
        {
          memset(&v1092[24], 0, 48);
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
          *(a2 + 16) = 2;
          v979 = v1090[16];
          if (v979 == 0xFFFF)
          {
            v980 = *(a2 + 1998);
            v979 = *(a2 + 1998);
            v1090[16] = v980;
            *(v1083 + 4 * v980 + 2) = v1088 - 48;
            v981 = v980 + 11;
            if (((v1088 - 48) & 0xFFFFFFF0) != 0x90)
            {
              v981 = v980 + 1;
            }

            *(a2 + 1998) = v981;
          }

          *&v1092[8] = ((v979 << 48) | 0x19C840) + 64;
          *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
          v982 = *(a2 + 1970);
          if (v982 == 0xFFFF)
          {
            v982 = *(a2 + 2004);
            *(a2 + 1970) = v982;
            *(a2 + 2004) = v982 + 1;
          }

          *v1092 = (v982 << 48) | 0x72679000;
          (*(a2 + 2016))(a2, &v1091);
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v983 = *(a2 + 1914);
          if (v983 == 0xFFFF)
          {
            v983 = *(a2 + 2004);
            *(a2 + 1914) = v983;
            *(a2 + 2004) = v983 + 1;
          }

          *&v1092[8] = (v983 << 48) | 0xAA40;
          v984 = *(a2 + 1970);
          if (v984 == 0xFFFF)
          {
            v984 = *(a2 + 2004);
            *(a2 + 1970) = v984;
            *(a2 + 2004) = v984 + 1;
          }

          v905 = (v984 << 48) | 0x19C840;
        }

        else
        {
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v901 = *(a2 + 1914);
          if (v901 == 0xFFFF)
          {
            v901 = *(a2 + 2004);
            *(a2 + 1914) = v901;
            *(a2 + 2004) = v901 + 1;
          }

          *&v1092[8] = (v901 << 48) | 0xAA40;
          v902 = *(v828 - 32);
          if (v902 == 0xFFFF)
          {
            v903 = *(a2 + 1998);
            v902 = *(a2 + 1998);
            *(v828 - 32) = v903;
            *(v1083 + 4 * v903 + 2) = v707 + 241;
            v904 = v903 + 11;
            if (((v707 + 241) & 0xFFFFFFF0) != 0x90)
            {
              v904 = v903 + 1;
            }

            *(a2 + 1998) = v904;
          }

          v905 = ((v902 << 48) | 0x19C840) + 64;
        }

        *&v1092[16] = v905;
        v985 = *(v828 - 64);
        if (v985 == 0xFFFF)
        {
          v986 = *(a2 + 1998);
          v985 = *(a2 + 1998);
          *(v828 - 64) = v986;
          *(v1083 + 4 * v986 + 2) = v707 + 225;
          v987 = v986 + 11;
          if (((v707 + 225) & 0xFFFFFFF0) != 0x90)
          {
            v987 = v986 + 1;
          }

          *(a2 + 1998) = v987;
        }

        *&v1092[24] = ((v985 << 48) | 0x19C840) + 64;
        v925 = *(a2 + 1954);
        if (v925 != 0xFFFF)
        {
          goto LABEL_1401;
        }

        goto LABEL_1400;
      }

      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v915 = *v1090;
      if (v915 == 0xFFFF)
      {
        v916 = *(a2 + 1998);
        v915 = *(a2 + 1998);
        *v1090 = v916;
        *(v1083 + 4 * v916 + 2) = v1088 - 56;
        v917 = v916 + 11;
        if (((v1088 - 56) & 0xFFFFFFF0) != 0x90)
        {
          v917 = v916 + 1;
        }

        *(a2 + 1998) = v917;
      }

      *&v1092[8] = ((v915 << 48) | 0x19C840) + 64;
      *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
      v918 = *(a2 + 1954);
      if (v918 == 0xFFFF)
      {
        v918 = *(a2 + 2004);
        *(a2 + 1954) = v918;
        *(a2 + 2004) = v918 + 1;
      }

      *v1092 = (v918 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v919 = *(a2 + 1914);
      if (v919 == 0xFFFF)
      {
        v919 = *(a2 + 2004);
        *(a2 + 1914) = v919;
        *(a2 + 2004) = v919 + 1;
      }

      *&v1092[8] = (v919 << 48) | 0xAA40;
      v920 = *(v828 - 32);
      if (v920 == 0xFFFF)
      {
        v921 = *(a2 + 1998);
        v920 = *(a2 + 1998);
        *(v828 - 32) = v921;
        *(v1083 + 4 * v921 + 2) = v707 + 241;
        v922 = v921 + 11;
        if (((v707 + 241) & 0xFFFFFFF0) != 0x90)
        {
          v922 = v921 + 1;
        }

        *(a2 + 1998) = v922;
      }

      v900 = ((v920 << 48) | 0x19C840) + 64;
    }

    *&v1092[16] = v900;
    v923 = *(a2 + 1954);
    if (v923 == 0xFFFF)
    {
      v925 = *(a2 + 2004);
      v926 = *(a2 + 2004);
      *(a2 + 1954) = v925;
      *(a2 + 2004) = ++v926;
      *&v1092[24] = (v925 << 48) | 0x19C840;
      if ((v926 & 0x10000) == 0)
      {
LABEL_1401:
        v924 = v925 << 48;
        goto LABEL_1402;
      }

LABEL_1400:
      v925 = *(a2 + 2004);
      *(a2 + 1954) = v925;
      *(a2 + 2004) = v925 + 1;
      goto LABEL_1401;
    }

    v924 = v923 << 48;
    *&v1092[24] = (v923 << 48) | 0x19C840;
LABEL_1402:
    *v1092 = v924 | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    v889 = *v1071;
LABEL_1403:
    if ((v889 & 0x8000000000000000) == 0)
    {
      if (v1065 >= 8)
      {
        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v937 = v1090[32];
        if (v937 == 0xFFFF)
        {
          v938 = *(a2 + 1998);
          v937 = *(a2 + 1998);
          v1090[32] = v938;
          *(v1083 + 4 * v938 + 2) = v1088 - 40;
          v939 = v938 + 11;
          if (((v1088 - 40) & 0xFFFFFFF0) != 0x90)
          {
            v939 = v938 + 1;
          }

          *(a2 + 1998) = v939;
        }

        *&v1092[8] = ((v937 << 48) | 0x19C840) + 64;
        *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
        v940 = *(a2 + 1962);
        if (v940 == 0xFFFF)
        {
          v940 = *(a2 + 2004);
          *(a2 + 1962) = v940;
          *(a2 + 2004) = v940 + 1;
        }

        *v1092 = (v940 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        memset(v1092, 0, sizeof(v1092));
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v941 = *(a2 + 1912);
        if (v941 == 0xFFFF)
        {
          v941 = *(a2 + 2004);
          *(a2 + 1912) = v941;
          *(a2 + 2004) = v941 + 1;
        }

        *&v1092[8] = (v941 << 48) | 0x15440;
        v942 = *(a2 + 1962);
        if (v942 == 0xFFFF)
        {
          v942 = *(a2 + 2004);
          *(a2 + 1962) = v942;
          *(a2 + 2004) = v942 + 1;
        }

        v931 = (v942 << 48) | 0x19C840;
      }

      else
      {
        memset(v1092, 0, sizeof(v1092));
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
        *(a2 + 16) = 3;
        v927 = *(a2 + 1912);
        if (v927 == 0xFFFF)
        {
          v927 = *(a2 + 2004);
          *(a2 + 1912) = v927;
          *(a2 + 2004) = v927 + 1;
        }

        *&v1092[8] = (v927 << 48) | 0x15440;
        v928 = *(v1085 - 2);
        if (v928 == 0xFFFF)
        {
          v929 = *(a2 + 1998);
          v928 = *(a2 + 1998);
          *(v1085 - 2) = v929;
          *(v1083 + 4 * v929 + 2) = v707 + 256;
          v930 = v929 + 11;
          if (((v707 + 256) & 0xFFFFFFF0) != 0x90)
          {
            v930 = v929 + 1;
          }

          *(a2 + 1998) = v930;
        }

        v931 = ((v928 << 48) | 0x19C840) + 64;
      }

      *&v1092[16] = v931;
      v943 = *(a2 + 1946);
      if (v943 != 0xFFFF)
      {
        v944 = v943 << 48;
        *&v1092[24] = (v943 << 48) | 0x19C840;
        goto LABEL_1452;
      }

      v936 = *(a2 + 2004);
      v945 = *(a2 + 2004);
      *(a2 + 1946) = v936;
      *(a2 + 2004) = ++v945;
      *&v1092[24] = (v936 << 48) | 0x19C840;
      if ((v945 & 0x10000) == 0)
      {
        goto LABEL_1451;
      }

      v936 = *(a2 + 2004);
      *(a2 + 1946) = v936;
      goto LABEL_1450;
    }

    memset(&v1092[24], 0, 48);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
    *(a2 + 16) = 2;
    if (v1065 < 8)
    {
      v932 = *(a2 + 1912);
      if (v932 == 0xFFFF)
      {
        v932 = *(a2 + 2004);
        *(a2 + 1912) = v932;
        *(a2 + 2004) = v932 + 1;
      }

      *&v1092[8] = (v932 << 48) | 0x15440;
      v933 = *(v1085 - 2);
      if (v933 == 0xFFFF)
      {
        v934 = *(a2 + 1998);
        v933 = *(a2 + 1998);
        *(v1085 - 2) = v934;
        *(v1083 + 4 * v934 + 2) = v707 + 256;
        v935 = v934 + 11;
        if (((v707 + 256) & 0xFFFFFFF0) != 0x90)
        {
          v935 = v934 + 1;
        }

        *(a2 + 1998) = v935;
      }

      *&v1092[16] = ((v933 << 48) | 0x19C840) + 64;
      v936 = *(a2 + 1962);
      if (v936 != 0xFFFF)
      {
        goto LABEL_1451;
      }

LABEL_1449:
      v936 = *(a2 + 2004);
      *(a2 + 1962) = v936;
LABEL_1450:
      *(a2 + 2004) = v936 + 1;
      goto LABEL_1451;
    }

    v946 = v1090[32];
    if (v946 == 0xFFFF)
    {
      v947 = *(a2 + 1998);
      v946 = *(a2 + 1998);
      v1090[32] = v947;
      *(v1083 + 4 * v947 + 2) = v1088 - 40;
      v948 = v947 + 11;
      if (((v1088 - 40) & 0xFFFFFFF0) != 0x90)
      {
        v948 = v947 + 1;
      }

      *(a2 + 1998) = v948;
    }

    *&v1092[8] = ((v946 << 48) | 0x19C840) + 64;
    *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
    v949 = *(a2 + 1962);
    if (v949 == 0xFFFF)
    {
      v949 = *(a2 + 2004);
      *(a2 + 1962) = v949;
      *(a2 + 2004) = v949 + 1;
    }

    *v1092 = (v949 << 48) | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    memset(v1092, 0, sizeof(v1092));
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
    *(a2 + 16) = 2;
    v950 = *(a2 + 1912);
    if (v950 == 0xFFFF)
    {
      v950 = *(a2 + 2004);
      *(a2 + 1912) = v950;
      *(a2 + 2004) = v950 + 1;
    }

    *&v1092[8] = (v950 << 48) | 0x15440;
    v951 = *(a2 + 1962);
    if (v951 != 0xFFFF)
    {
      v944 = v951 << 48;
      *&v1092[16] = (v951 << 48) | 0x19C840;
      goto LABEL_1452;
    }

    v936 = *(a2 + 2004);
    v953 = *(a2 + 2004);
    *(a2 + 1962) = v936;
    *(a2 + 2004) = ++v953;
    *&v1092[16] = (v936 << 48) | 0x19C840;
    if ((v953 & 0x10000) != 0)
    {
      goto LABEL_1449;
    }

LABEL_1451:
    v944 = v936 << 48;
LABEL_1452:
    *v1092 = v944 | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
    if ((*v1071 & 0x1000000000000) == 0)
    {
      goto LABEL_1518;
    }

    if (*v1071 < 0)
    {
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      if (v1063 >= 8)
      {
        v973 = v1090[32];
        if (v973 == 0xFFFF)
        {
          v974 = *(a2 + 1998);
          v973 = *(a2 + 1998);
          v1090[32] = v974;
          *(v1083 + 4 * v974 + 2) = v1088 - 40;
          v975 = v974 + 11;
          if (((v1088 - 40) & 0xFFFFFFF0) != 0x90)
          {
            v975 = v974 + 1;
          }

          *(a2 + 1998) = v975;
        }

        *&v1092[8] = ((v973 << 48) | 0x19C840) + 64;
        *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
        v976 = *(a2 + 1970);
        if (v976 == 0xFFFF)
        {
          v976 = *(a2 + 2004);
          *(a2 + 1970) = v976;
          *(a2 + 2004) = v976 + 1;
        }

        *v1092 = (v976 << 48) | 0x72679000;
        (*(a2 + 2016))(a2, &v1091);
        memset(v1092, 0, sizeof(v1092));
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v977 = *(a2 + 1914);
        if (v977 == 0xFFFF)
        {
          v977 = *(a2 + 2004);
          *(a2 + 1914) = v977;
          *(a2 + 2004) = v977 + 1;
        }

        *&v1092[8] = (v977 << 48) | 0x15440;
        v978 = *(a2 + 1970);
        if (v978 != 0xFFFF)
        {
          v971 = v978 << 48;
          *&v1092[16] = (v978 << 48) | 0x19C840;
          goto LABEL_1517;
        }

        v963 = *(a2 + 2004);
        v988 = *(a2 + 2004);
        *(a2 + 1970) = v963;
        *(a2 + 2004) = ++v988;
        *&v1092[16] = (v963 << 48) | 0x19C840;
        if ((v988 & 0x10000) == 0)
        {
          goto LABEL_1516;
        }
      }

      else
      {
        v959 = *(a2 + 1914);
        if (v959 == 0xFFFF)
        {
          v959 = *(a2 + 2004);
          *(a2 + 1914) = v959;
          *(a2 + 2004) = v959 + 1;
        }

        *&v1092[8] = (v959 << 48) | 0x15440;
        v960 = *v1085;
        if (v960 == 0xFFFF)
        {
          v961 = *(a2 + 1998);
          v960 = *(a2 + 1998);
          *v1085 = v961;
          *(v1083 + 4 * v961 + 2) = v707 + 257;
          v962 = v961 + 11;
          if (((v707 + 257) & 0xFFFFFFF0) != 0x90)
          {
            v962 = v961 + 1;
          }

          *(a2 + 1998) = v962;
        }

        *&v1092[16] = ((v960 << 48) | 0x19C840) + 64;
        v963 = *(a2 + 1970);
        if (v963 != 0xFFFF)
        {
          goto LABEL_1516;
        }
      }

      v963 = *(a2 + 2004);
      *(a2 + 1970) = v963;
      goto LABEL_1515;
    }

    if (v1063 >= 8)
    {
      memset(&v1092[24], 0, 48);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
      *(a2 + 16) = 2;
      v964 = v1090[32];
      if (v964 == 0xFFFF)
      {
        v965 = *(a2 + 1998);
        v964 = *(a2 + 1998);
        v1090[32] = v965;
        *(v1083 + 4 * v965 + 2) = v1088 - 40;
        v966 = v965 + 11;
        if (((v1088 - 40) & 0xFFFFFFF0) != 0x90)
        {
          v966 = v965 + 1;
        }

        *(a2 + 1998) = v966;
      }

      *&v1092[8] = ((v964 << 48) | 0x19C840) + 64;
      *&v1092[16] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
      v967 = *(a2 + 1970);
      if (v967 == 0xFFFF)
      {
        v967 = *(a2 + 2004);
        *(a2 + 1970) = v967;
        *(a2 + 2004) = v967 + 1;
      }

      *v1092 = (v967 << 48) | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v968 = *(a2 + 1914);
      if (v968 == 0xFFFF)
      {
        v968 = *(a2 + 2004);
        *(a2 + 1914) = v968;
        *(a2 + 2004) = v968 + 1;
      }

      *&v1092[8] = (v968 << 48) | 0x15440;
      v969 = *(a2 + 1970);
      if (v969 == 0xFFFF)
      {
        v969 = *(a2 + 2004);
        *(a2 + 1970) = v969;
        *(a2 + 2004) = v969 + 1;
      }

      v958 = (v969 << 48) | 0x19C840;
    }

    else
    {
      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v954 = *(a2 + 1914);
      if (v954 == 0xFFFF)
      {
        v954 = *(a2 + 2004);
        *(a2 + 1914) = v954;
        *(a2 + 2004) = v954 + 1;
      }

      *&v1092[8] = (v954 << 48) | 0x15440;
      v955 = *v1085;
      if (v955 == 0xFFFF)
      {
        v956 = *(a2 + 1998);
        v955 = *(a2 + 1998);
        *v1085 = v956;
        *(v1083 + 4 * v956 + 2) = v707 + 257;
        v957 = v956 + 11;
        if (((v707 + 257) & 0xFFFFFFF0) != 0x90)
        {
          v957 = v956 + 1;
        }

        *(a2 + 1998) = v957;
      }

      v958 = ((v955 << 48) | 0x19C840) + 64;
    }

    *&v1092[16] = v958;
    v970 = *(a2 + 1954);
    if (v970 == 0xFFFF)
    {
      v963 = *(a2 + 2004);
      v972 = *(a2 + 2004);
      *(a2 + 1954) = v963;
      *(a2 + 2004) = ++v972;
      *&v1092[24] = (v963 << 48) | 0x19C840;
      if ((v972 & 0x10000) != 0)
      {
        v963 = *(a2 + 2004);
        *(a2 + 1954) = v963;
LABEL_1515:
        *(a2 + 2004) = v963 + 1;
      }

LABEL_1516:
      v971 = v963 << 48;
      goto LABEL_1517;
    }

    v971 = v970 << 48;
    *&v1092[24] = (v970 << 48) | 0x19C840;
LABEL_1517:
    *v1092 = v971 | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
LABEL_1518:
    memset(v1092, 0, sizeof(v1092));
    v989 = 8 * (*(a2 + 16) & 7) + 0x3100000882;
    if ((v1079 | v1075))
    {
      v1091 = 8 * (*(a2 + 16) & 7) + 0x3100000FC3;
      *(a2 + 16) = 3;
      v990 = *v1073;
      if (v990 == 0xFFFF)
      {
        v990 = *(a2 + 2004);
        *(a2 + 1940) = v990;
        *(a2 + 2004) = v990 + 1;
      }

      *&v1092[8] = (v990 << 48) | 0x19C840;
      v991 = *(a2 + 1946);
      if (v991 == 0xFFFF)
      {
        v991 = *(a2 + 2004);
        *(a2 + 1946) = v991;
        *(a2 + 2004) = v991 + 1;
      }

      *&v1092[16] = (v991 << 48) | 0x19C840;
      v992 = *(a2 + 1904);
      if (v992 == 0xFFFF)
      {
        v997 = *(a2 + 2004);
        v998 = *(a2 + 2004);
        *(a2 + 1904) = v997;
        *(a2 + 2004) = ++v998;
        *&v1092[24] = (v997 << 48) | 0x19C840;
        if ((v998 & 0x10000) != 0)
        {
          v997 = *(a2 + 2004);
          *(a2 + 1904) = v997;
          *(a2 + 2004) = v997 + 1;
        }

        v993 = v997 << 48;
      }

      else
      {
        v993 = v992 << 48;
        *&v1092[24] = (v992 << 48) | 0x19C840;
      }

      *v1092 = v993 | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      if (*v1071 < 0)
      {
        if (v1070)
        {
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
          *(a2 + 16) = 3;
          v999 = *v1073;
          if (v999 == 0xFFFF)
          {
            v999 = *(a2 + 2004);
            *(a2 + 1940) = v999;
            *(a2 + 2004) = v999 + 1;
          }

          *&v1092[8] = (v999 << 48) | 0x19C840;
          v1000 = *(a2 + 1962);
          if (v1000 == 0xFFFF)
          {
            v1000 = *(a2 + 2004);
            *(a2 + 1962) = v1000;
            *(a2 + 2004) = v1000 + 1;
          }

          *&v1092[16] = (v1000 << 48) | 0x19C840;
          v1001 = *(a2 + 1908);
          if (v1001 != 0xFFFF)
          {
            v1002 = v1001 << 48;
            *&v1092[24] = (v1001 << 48) | 0x19C840;
LABEL_1560:
            *v1092 = v1002 | 0x72679000;
            (*(a2 + 2016))(a2, &v1091);
            goto LABEL_1561;
          }

          v1010 = *(a2 + 2004);
          v1029 = *(a2 + 2004);
          *(a2 + 1908) = v1010;
          *(a2 + 2004) = ++v1029;
          *&v1092[24] = (v1010 << 48) | 0x19C840;
          if ((v1029 & 0x10000) == 0)
          {
            goto LABEL_1559;
          }

          goto LABEL_1558;
        }

        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v1007 = *v1073;
        if (v1007 == 0xFFFF)
        {
          v1007 = *(a2 + 2004);
          *(a2 + 1940) = v1007;
          *(a2 + 2004) = v1007 + 1;
        }

        *&v1092[8] = (v1007 << 48) | 0x19C840;
        v1008 = *(a2 + 1962);
        if (v1008 == 0xFFFF)
        {
          v1008 = *(a2 + 2004);
          *(a2 + 1962) = v1008;
          *(a2 + 2004) = v1008 + 1;
        }

        *&v1092[16] = (v1008 << 48) | 0x19C840;
        goto LABEL_1557;
      }
    }

    else
    {
      v1091 = 8 * (*(a2 + 16) & 7) + 0x31000007C2;
      *(a2 + 16) = 2;
      v994 = *(a2 + 1946);
      if (v994 == 0xFFFF)
      {
        v994 = *(a2 + 2004);
        *(a2 + 1946) = v994;
        *(a2 + 2004) = v994 + 1;
      }

      *&v1092[8] = (v994 << 48) | 0x19C840;
      v995 = *(a2 + 1904);
      if (v995 == 0xFFFF)
      {
        v1003 = *(a2 + 2004);
        v1004 = *(a2 + 2004);
        *(a2 + 1904) = v1003;
        *(a2 + 2004) = ++v1004;
        *&v1092[16] = (v1003 << 48) | 0x19C840;
        if ((v1004 & 0x10000) != 0)
        {
          v1003 = *(a2 + 2004);
          *(a2 + 1904) = v1003;
          *(a2 + 2004) = v1003 + 1;
        }

        v996 = v1003 << 48;
      }

      else
      {
        v996 = v995 << 48;
        *&v1092[16] = (v995 << 48) | 0x19C840;
      }

      *v1092 = v996 | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      if (*v1071 < 0)
      {
        if (v1070)
        {
          memset(v1092, 0, sizeof(v1092));
          v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
          *(a2 + 16) = 2;
          v1005 = *(a2 + 1962);
          if (v1005 == 0xFFFF)
          {
            v1005 = *(a2 + 2004);
            *(a2 + 1962) = v1005;
            *(a2 + 2004) = v1005 + 1;
          }

          *&v1092[8] = (v1005 << 48) | 0x19C840;
          v1006 = *(a2 + 1908);
          if (v1006 != 0xFFFF)
          {
            v1002 = v1006 << 48;
            *&v1092[16] = (v1006 << 48) | 0x19C840;
            goto LABEL_1560;
          }

          v1010 = *(a2 + 2004);
          v1030 = *(a2 + 2004);
          *(a2 + 1908) = v1010;
          *(a2 + 2004) = ++v1030;
          *&v1092[16] = (v1010 << 48) | 0x19C840;
          if ((v1030 & 0x10000) == 0)
          {
LABEL_1559:
            v1002 = v1010 << 48;
            goto LABEL_1560;
          }

LABEL_1558:
          v1010 = *(a2 + 2004);
          *(a2 + 1908) = v1010;
          *(a2 + 2004) = v1010 + 1;
          goto LABEL_1559;
        }

        memset(&v1092[16], 0, 56);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        v1009 = *(a2 + 1962);
        if (v1009 == 0xFFFF)
        {
          v1009 = *(a2 + 2004);
          *(a2 + 1962) = v1009;
          *(a2 + 2004) = v1009 + 1;
        }

        *&v1092[8] = (v1009 << 48) | 0x19C840;
LABEL_1557:
        v1010 = *(a2 + 1908);
        if (v1010 != 0xFFFF)
        {
          goto LABEL_1559;
        }

        goto LABEL_1558;
      }
    }

LABEL_1561:
    v710 = v1088;
    v708 = v1090;
    if ((*(v1071 + 6) & 1) == 0)
    {
      v1070 = 1;
      v709 = v1085;
      goto LABEL_1611;
    }

    memset(v1092, 0, sizeof(v1092));
    v1011 = 8 * (*(a2 + 16) & 7) + 0x3100000882;
    if ((v1079 | v1075))
    {
      v1091 = 8 * (*(a2 + 16) & 7) + 0x3100000FC3;
      *(a2 + 16) = 3;
      v1012 = *v1073;
      if (v1012 == 0xFFFF)
      {
        v1012 = *(a2 + 2004);
        *(a2 + 1940) = v1012;
        *(a2 + 2004) = v1012 + 1;
      }

      *&v1092[8] = (v1012 << 48) | 0x19C840;
      v1013 = *(a2 + 1954);
      v709 = v1085;
      if (v1013 == 0xFFFF)
      {
        v1013 = *(a2 + 2004);
        *(a2 + 1954) = v1013;
        *(a2 + 2004) = v1013 + 1;
      }

      *&v1092[16] = (v1013 << 48) | 0x19C840;
      v1014 = *(a2 + 1906);
      if (v1014 == 0xFFFF)
      {
        v1019 = *(a2 + 2004);
        v1020 = *(a2 + 2004);
        *(a2 + 1906) = v1019;
        *(a2 + 2004) = ++v1020;
        *&v1092[24] = (v1019 << 48) | 0x19C840;
        if ((v1020 & 0x10000) != 0)
        {
          v1019 = *(a2 + 2004);
          *(a2 + 1906) = v1019;
          *(a2 + 2004) = v1019 + 1;
        }

        v1015 = v1019 << 48;
      }

      else
      {
        v1015 = v1014 << 48;
        *&v1092[24] = (v1014 << 48) | 0x19C840;
      }

      *v1092 = v1015 | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      if ((*v1071 & 0x8000000000000000) == 0)
      {
        goto LABEL_1610;
      }

      if (!v1070)
      {
        memset(&v1092[24], 0, 48);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000882;
        *(a2 + 16) = 2;
        v1031 = *v1073;
        if (v1031 == 0xFFFF)
        {
          v1031 = *(a2 + 2004);
          *(a2 + 1940) = v1031;
          *(a2 + 2004) = v1031 + 1;
        }

        *&v1092[8] = (v1031 << 48) | 0x19C840;
        v1032 = *(a2 + 1970);
        if (v1032 == 0xFFFF)
        {
          v1032 = *(a2 + 2004);
          *(a2 + 1970) = v1032;
          *(a2 + 2004) = v1032 + 1;
        }

        *&v1092[16] = (v1032 << 48) | 0x19C840;
        goto LABEL_1606;
      }

      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000FC3;
      *(a2 + 16) = 3;
      v1021 = *v1073;
      if (v1021 == 0xFFFF)
      {
        v1021 = *(a2 + 2004);
        *(a2 + 1940) = v1021;
        *(a2 + 2004) = v1021 + 1;
      }

      *&v1092[8] = (v1021 << 48) | 0x19C840;
      v1022 = *(a2 + 1970);
      if (v1022 == 0xFFFF)
      {
        v1022 = *(a2 + 2004);
        *(a2 + 1970) = v1022;
        *(a2 + 2004) = v1022 + 1;
      }

      *&v1092[16] = (v1022 << 48) | 0x19C840;
      v1023 = *(a2 + 1910);
      if (v1023 == 0xFFFF)
      {
        v1034 = *(a2 + 2004);
        v1036 = *(a2 + 2004);
        *(a2 + 1910) = v1034;
        *(a2 + 2004) = ++v1036;
        *&v1092[24] = (v1034 << 48) | 0x19C840;
        if ((v1036 & 0x10000) == 0)
        {
          goto LABEL_1608;
        }

LABEL_1607:
        v1034 = *(a2 + 2004);
        *(a2 + 1910) = v1034;
        *(a2 + 2004) = v1034 + 1;
LABEL_1608:
        v1024 = v1034 << 48;
        goto LABEL_1609;
      }

      v1024 = v1023 << 48;
      *&v1092[24] = (v1023 << 48) | 0x19C840;
    }

    else
    {
      v1091 = 8 * (*(a2 + 16) & 7) + 0x31000007C2;
      *(a2 + 16) = 2;
      v1016 = *(a2 + 1954);
      if (v1016 == 0xFFFF)
      {
        v1016 = *(a2 + 2004);
        *(a2 + 1954) = v1016;
        *(a2 + 2004) = v1016 + 1;
      }

      *&v1092[8] = (v1016 << 48) | 0x19C840;
      v1017 = *(a2 + 1906);
      v709 = v1085;
      if (v1017 == 0xFFFF)
      {
        v1025 = *(a2 + 2004);
        v1026 = *(a2 + 2004);
        *(a2 + 1906) = v1025;
        *(a2 + 2004) = ++v1026;
        *&v1092[16] = (v1025 << 48) | 0x19C840;
        if ((v1026 & 0x10000) != 0)
        {
          v1025 = *(a2 + 2004);
          *(a2 + 1906) = v1025;
          *(a2 + 2004) = v1025 + 1;
        }

        v1018 = v1025 << 48;
      }

      else
      {
        v1018 = v1017 << 48;
        *&v1092[16] = (v1017 << 48) | 0x19C840;
      }

      *v1092 = v1018 | 0x72679000;
      (*(a2 + 2016))(a2, &v1091);
      if ((*v1071 & 0x8000000000000000) == 0)
      {
        goto LABEL_1610;
      }

      if (!v1070)
      {
        memset(&v1092[16], 0, 56);
        v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
        *(a2 + 16) = 1;
        v1033 = *(a2 + 1970);
        if (v1033 == 0xFFFF)
        {
          v1033 = *(a2 + 2004);
          *(a2 + 1970) = v1033;
          *(a2 + 2004) = v1033 + 1;
        }

        *&v1092[8] = (v1033 << 48) | 0x19C840;
LABEL_1606:
        v1034 = *(a2 + 1910);
        if (v1034 == 0xFFFF)
        {
          goto LABEL_1607;
        }

        goto LABEL_1608;
      }

      memset(v1092, 0, sizeof(v1092));
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x31000007C2;
      *(a2 + 16) = 2;
      v1027 = *(a2 + 1970);
      if (v1027 == 0xFFFF)
      {
        v1027 = *(a2 + 2004);
        *(a2 + 1970) = v1027;
        *(a2 + 2004) = v1027 + 1;
      }

      *&v1092[8] = (v1027 << 48) | 0x19C840;
      v1028 = *(a2 + 1910);
      if (v1028 == 0xFFFF)
      {
        v1034 = *(a2 + 2004);
        v1037 = *(a2 + 2004);
        *(a2 + 1910) = v1034;
        *(a2 + 2004) = ++v1037;
        *&v1092[16] = (v1034 << 48) | 0x19C840;
        if ((v1037 & 0x10000) == 0)
        {
          goto LABEL_1608;
        }

        goto LABEL_1607;
      }

      v1024 = v1028 << 48;
      *&v1092[16] = (v1028 << 48) | 0x19C840;
    }

LABEL_1609:
    *v1092 = v1024 | 0x72679000;
    (*(a2 + 2016))(a2, &v1091);
LABEL_1610:
    v1070 = 1;
    v710 = v1088;
    v708 = v1090;
LABEL_1611:
    ++v710;
    v707 += 2;
    v708 += 2;
    v709 += 4;
    v1035 = v55 > 1;
    v55 >>= 1;
  }

  while (v1035);
  if (!v1070)
  {
    goto LABEL_1618;
  }

LABEL_1623:
  memset(&v1092[16], 0, 56);
  v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
  *(a2 + 16) = 1;
  if ((v1065 & 4) != 0)
  {
    *&v1092[8] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
    v1043 = *(a2 + 1904);
  }

  else
  {
    v1041 = *(a2 + 1636);
    if (v1041 == 0xFFFF)
    {
      v1042 = *(a2 + 1998);
      v1041 = *(a2 + 1998);
      *(a2 + 1636) = v1042;
      *(a2 + 4 * v1042 + 262) = 344;
      *(a2 + 1998) = v1042 + 1;
    }

    *&v1092[8] = ((v1041 << 48) | 0x19C840) + 64;
    v1043 = *(a2 + 1904);
  }

  if (v1043 == 0xFFFF)
  {
    v1043 = *(a2 + 2004);
    *(a2 + 1904) = v1043;
    *(a2 + 2004) = v1043 + 1;
  }

  *v1092 = (v1043 << 48) | 0x72609000;
  (*(a2 + 2016))(a2, &v1091);
  memset(&v1092[16], 0, 56);
  v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
  *(a2 + 16) = 1;
  v1044 = *(a2 + 1904);
  if (v1044 == 0xFFFF)
  {
    v1044 = *(a2 + 2004);
    *(a2 + 1904) = v1044;
    *(a2 + 2004) = v1044 + 1;
  }

  *&v1092[8] = (v1044 << 48) | 0x19C840;
  v1045 = a2 + 1692;
  v1046 = *(a2 + 1704);
  if (v1046 == 0xFFFF)
  {
    v1047 = *(a2 + 2000);
    v1046 = *(a2 + 2000);
    *(a2 + 1704) = v1047;
    *(v1045 + 4 * v1047 + 2) = 3;
    *(a2 + 2000) = v1047 + 1;
  }

  *v1092 = ((v1046 << 48) | 0x72679000) + 0x2000;
  result = (*(a2 + 2016))(a2, &v1091);
  if (*v1071 < 0)
  {
    memset(&v1092[16], 0, 56);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    v1049 = *(a2 + 1908);
    if (v1049 == 0xFFFF)
    {
      v1049 = *(a2 + 2004);
      *(a2 + 1908) = v1049;
      *(a2 + 2004) = v1049 + 1;
    }

    *&v1092[8] = (v1049 << 48) | 0x19C840;
    v1050 = *(a2 + 1712);
    if (v1050 == 0xFFFF)
    {
      v1051 = *(a2 + 2000);
      v1050 = *(a2 + 2000);
      *(a2 + 1712) = v1051;
      *(v1045 + 4 * v1051 + 2) = 5;
      *(a2 + 2000) = v1051 + 1;
    }

    *v1092 = ((v1050 << 48) | 0x72679000) + 0x2000;
    result = (*(a2 + 2016))(a2, &v1091);
    if ((*v1071 & 0x1000000000000) != 0)
    {
      goto LABEL_1642;
    }
  }

  else
  {
    if ((*v1071 & 0x1000000000000) == 0)
    {
      goto LABEL_1659;
    }

LABEL_1642:
    memset(&v1092[16], 0, 56);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    if ((v1063 & 4) != 0)
    {
      *&v1092[8] = (gleVStateProgram_GetAttrib(a2, 2u) << 48) | 0x19C800;
      v1054 = *(a2 + 1906);
    }

    else
    {
      v1052 = *(a2 + 1640);
      if (v1052 == 0xFFFF)
      {
        v1053 = *(a2 + 1998);
        v1052 = *(a2 + 1998);
        *(a2 + 1640) = v1053;
        *(a2 + 4 * v1053 + 262) = 345;
        *(a2 + 1998) = v1053 + 1;
      }

      *&v1092[8] = ((v1052 << 48) | 0x19C840) + 64;
      v1054 = *(a2 + 1906);
    }

    if (v1054 == 0xFFFF)
    {
      v1054 = *(a2 + 2004);
      *(a2 + 1906) = v1054;
      *(a2 + 2004) = v1054 + 1;
    }

    *v1092 = (v1054 << 48) | 0x72609000;
    (*(a2 + 2016))(a2, &v1091);
    memset(&v1092[16], 0, 56);
    v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
    *(a2 + 16) = 1;
    v1055 = *(a2 + 1906);
    if (v1055 == 0xFFFF)
    {
      v1055 = *(a2 + 2004);
      *(a2 + 1906) = v1055;
      *(a2 + 2004) = v1055 + 1;
    }

    *&v1092[8] = (v1055 << 48) | 0x19C840;
    v1056 = *(a2 + 1708);
    if (v1056 == 0xFFFF)
    {
      v1057 = *(a2 + 2000);
      v1056 = *(a2 + 2000);
      *(a2 + 1708) = v1057;
      *(v1045 + 4 * v1057 + 2) = 4;
      *(a2 + 2000) = v1057 + 1;
    }

    *v1092 = ((v1056 << 48) | 0x72679000) + 0x2000;
    result = (*(a2 + 2016))(a2, &v1091);
    if (*v1071 < 0)
    {
      memset(&v1092[16], 0, 56);
      v1091 = (8 * (*(a2 + 16) & 7)) | 0x3100000001;
      *(a2 + 16) = 1;
      v1058 = *(a2 + 1910);
      if (v1058 == 0xFFFF)
      {
        v1058 = *(a2 + 2004);
        *(a2 + 1910) = v1058;
        *(a2 + 2004) = v1058 + 1;
      }

      *&v1092[8] = (v1058 << 48) | 0x19C840;
      v1059 = *(a2 + 1716);
      if (v1059 == 0xFFFF)
      {
        v1060 = *(a2 + 2000);
        v1059 = *(a2 + 2000);
        *(a2 + 1716) = v1060;
        *(v1045 + 4 * v1060 + 2) = 6;
        *(a2 + 2000) = v1060 + 1;
      }

      *v1092 = ((v1059 << 48) | 0x72679000) + 0x2000;
      result = (*(a2 + 2016))(a2, &v1091);
    }
  }

LABEL_1659:
  v1061 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gleVStateProgram_MultMatrix4x4(uint64_t a1, signed int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v15 = 1919389696;
  v132 = 0;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v16 = 8 * (*(a1 + 16) & 7);
  if (a9)
  {
    v127 = v16 | 0x3100000A42;
    *(a1 + 16) = 2;
    if (a6)
    {
      Attrib = gleVStateProgram_GetAttrib(a1, a2);
      v18 = 1689600;
    }

    else
    {
      LODWORD(Attrib) = *(a1 + 1900 + 2 * a2);
      if (Attrib == 0xFFFF)
      {
        LODWORD(Attrib) = *(a1 + 2004);
        *(a1 + 1900 + 2 * a2) = Attrib;
        *(a1 + 2004) = Attrib + 1;
      }

      Attrib = Attrib;
      v18 = 1689664;
    }

    *(&v128 + 1) = v18 | (Attrib << 48);
    v21 = a3 + 7;
    v22 = a1 + 260;
    v23 = (a1 + 260 + 4 * (a3 + 7));
    v24 = *v23;
    if (a7)
    {
      if (v24 == 0xFFFF)
      {
        v25 = *(a1 + 1998);
        v24 = *(a1 + 1998);
        *v23 = v25;
        *(v22 + 4 * v25 + 2) = v21;
        v26 = (v21 & 0xFFFFFFF0) == 144;
        v27 = v25 + 11;
        if (!v26)
        {
          v27 = v25 + 1;
        }

        *(a1 + 1998) = v27;
      }

      v28 = ((v24 << 48) | 0x19C840) + 65;
      *(a1 + 2002) = 1;
    }

    else
    {
      if (v24 == 0xFFFF)
      {
        v29 = *(a1 + 1998);
        v24 = *(a1 + 1998);
        *v23 = v29;
        *(v22 + 4 * v29 + 2) = v21;
        v26 = (v21 & 0xFFFFFFF0) == 144;
        v30 = v29 + 11;
        if (!v26)
        {
          v30 = v29 + 1;
        }

        *(a1 + 1998) = v30;
      }

      v28 = ((v24 << 48) | 0x19C840) + 64;
    }

    *&v129 = v28;
    if (a8)
    {
      v31 = (a1 + 1692 + 4 * a4);
      v32 = *v31;
      v33 = 1918939136;
      if (v32 == 0xFFFF)
      {
        v34 = *(a1 + 2000);
        v32 = *(a1 + 2000);
        *v31 = v34;
        *(a1 + 1692 + 4 * v34 + 2) = a4;
        *(a1 + 2000) = v34 + 1;
      }
    }

    else
    {
      v32 = *(a1 + 1900 + 2 * a4);
      v33 = 1918930944;
      if (v32 == 0xFFFF)
      {
        v32 = *(a1 + 2004);
        *(a1 + 1900 + 2 * a4) = v32;
        *(a1 + 2004) = v32 + 1;
      }
    }

    *&v128 = v33 | (v32 << 48);
    (*(a1 + 2016))(a1, &v127);
    v132 = 0;
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = (8 * (*(a1 + 16) & 7)) | 0x3100000A42;
    *(a1 + 16) = 2;
    if (a6)
    {
      v35 = gleVStateProgram_GetAttrib(a1, a2);
      v36 = 1689600;
    }

    else
    {
      LODWORD(v35) = *(a1 + 1900 + 2 * a2);
      if (v35 == 0xFFFF)
      {
        LODWORD(v35) = *(a1 + 2004);
        *(a1 + 1900 + 2 * a2) = v35;
        *(a1 + 2004) = v35 + 1;
      }

      v35 = v35;
      v36 = 1689664;
    }

    *(&v128 + 1) = v36 | (v35 << 48);
    v37 = a3 + 6;
    v38 = (v22 + 4 * (a3 + 6));
    v39 = *v38;
    if (a7)
    {
      if (v39 == 0xFFFF)
      {
        v40 = *(a1 + 1998);
        v39 = *(a1 + 1998);
        *v38 = v40;
        *(v22 + 4 * v40 + 2) = v37;
        v26 = (v37 & 0xFFFFFFF0) == 144;
        v41 = v40 + 11;
        if (!v26)
        {
          v41 = v40 + 1;
        }

        *(a1 + 1998) = v41;
      }

      v42 = ((v39 << 48) | 0x19C840) + 65;
      *(a1 + 2002) = 1;
    }

    else
    {
      if (v39 == 0xFFFF)
      {
        v43 = *(a1 + 1998);
        v39 = *(a1 + 1998);
        *v38 = v43;
        *(v22 + 4 * v43 + 2) = v37;
        v26 = (v37 & 0xFFFFFFF0) == 144;
        v44 = v43 + 11;
        if (!v26)
        {
          v44 = v43 + 1;
        }

        *(a1 + 1998) = v44;
      }

      v42 = ((v39 << 48) | 0x19C840) + 64;
    }

    *&v129 = v42;
    if (a8)
    {
      v45 = (a1 + 1692 + 4 * a4);
      v46 = *v45;
      v47 = 1918971904;
      if (v46 == 0xFFFF)
      {
        v48 = *(a1 + 2000);
        v46 = *(a1 + 2000);
        *v45 = v48;
        *(a1 + 1692 + 4 * v48 + 2) = a4;
        *(a1 + 2000) = v48 + 1;
      }
    }

    else
    {
      v46 = *(a1 + 1900 + 2 * a4);
      v47 = 1918963712;
      if (v46 == 0xFFFF)
      {
        v46 = *(a1 + 2004);
        *(a1 + 1900 + 2 * a4) = v46;
        *(a1 + 2004) = v46 + 1;
      }
    }

    *&v128 = v47 | (v46 << 48);
    (*(a1 + 2016))(a1, &v127);
    v132 = 0;
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = (8 * (*(a1 + 16) & 7)) | 0x3100000A42;
    *(a1 + 16) = 2;
    if (a6)
    {
      v49 = gleVStateProgram_GetAttrib(a1, a2);
      v50 = 1689600;
    }

    else
    {
      LODWORD(v49) = *(a1 + 1900 + 2 * a2);
      if (v49 == 0xFFFF)
      {
        LODWORD(v49) = *(a1 + 2004);
        *(a1 + 1900 + 2 * a2) = v49;
        *(a1 + 2004) = v49 + 1;
      }

      v49 = v49;
      v50 = 1689664;
    }

    *(&v128 + 1) = v50 | (v49 << 48);
    v51 = a3 + 5;
    v52 = (v22 + 4 * (a3 + 5));
    v53 = *v52;
    if (a7)
    {
      if (v53 == 0xFFFF)
      {
        v54 = *(a1 + 1998);
        v53 = *(a1 + 1998);
        *v52 = v54;
        *(v22 + 4 * v54 + 2) = v51;
        v26 = (v51 & 0xFFFFFFF0) == 144;
        v55 = v54 + 11;
        if (!v26)
        {
          v55 = v54 + 1;
        }

        *(a1 + 1998) = v55;
      }

      v56 = ((v53 << 48) | 0x19C840) + 65;
      *(a1 + 2002) = 1;
    }

    else
    {
      if (v53 == 0xFFFF)
      {
        v57 = *(a1 + 1998);
        v53 = *(a1 + 1998);
        *v52 = v57;
        *(v22 + 4 * v57 + 2) = v51;
        v26 = (v51 & 0xFFFFFFF0) == 144;
        v58 = v57 + 11;
        if (!v26)
        {
          v58 = v57 + 1;
        }

        *(a1 + 1998) = v58;
      }

      v56 = ((v53 << 48) | 0x19C840) + 64;
    }

    *&v129 = v56;
    if (a8)
    {
      v59 = (a1 + 1692 + 4 * a4);
      v60 = *v59;
      v61 = 1919037440;
      if (v60 == 0xFFFF)
      {
        v62 = *(a1 + 2000);
        v60 = *(a1 + 2000);
        *v59 = v62;
        *(a1 + 1692 + 4 * v62 + 2) = a4;
        *(a1 + 2000) = v62 + 1;
      }
    }

    else
    {
      v60 = *(a1 + 1900 + 2 * a4);
      v61 = 1919029248;
      if (v60 == 0xFFFF)
      {
        v60 = *(a1 + 2004);
        *(a1 + 1900 + 2 * a4) = v60;
        *(a1 + 2004) = v60 + 1;
      }
    }

    *&v128 = v61 | (v60 << 48);
    (*(a1 + 2016))(a1, &v127);
    v132 = 0;
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = (8 * (*(a1 + 16) & 7)) | 0x3100000A42;
    *(a1 + 16) = 2;
    if (a6)
    {
      v63 = gleVStateProgram_GetAttrib(a1, a2);
      v64 = 1689600;
    }

    else
    {
      LODWORD(v63) = *(a1 + 1900 + 2 * a2);
      if (v63 == 0xFFFF)
      {
        LODWORD(v63) = *(a1 + 2004);
        *(a1 + 1900 + 2 * a2) = v63;
        *(a1 + 2004) = v63 + 1;
      }

      v63 = v63;
      v64 = 1689664;
    }

    *(&v128 + 1) = v64 | (v63 << 48);
    v65 = a3 + 4;
    v66 = (v22 + 4 * (a3 + 4));
    v67 = *v66;
    if (a7)
    {
      if (v67 == 0xFFFF)
      {
        v68 = *(a1 + 1998);
        v67 = *(a1 + 1998);
        *v66 = v68;
        *(v22 + 4 * v68 + 2) = v65;
        v26 = (v65 & 0xFFFFFFF0) == 144;
        v69 = v68 + 11;
        if (!v26)
        {
          v69 = v68 + 1;
        }

        *(a1 + 1998) = v69;
      }

      v70 = ((v67 << 48) | 0x19C840) + 65;
      *(a1 + 2002) = 1;
    }

    else
    {
      if (v67 == 0xFFFF)
      {
        v71 = *(a1 + 1998);
        v67 = *(a1 + 1998);
        *v66 = v71;
        *(v22 + 4 * v71 + 2) = v65;
        v26 = (v65 & 0xFFFFFFF0) == 144;
        v72 = v71 + 11;
        if (!v26)
        {
          v72 = v71 + 1;
        }

        *(a1 + 1998) = v72;
      }

      v70 = ((v67 << 48) | 0x19C840) + 64;
    }

    *&v129 = v70;
    if (a8)
    {
      v73 = a1 + 1692;
      v74 = (a1 + 1692 + 4 * a4);
      v75 = *v74;
      v15 = 1919168512;
      goto LABEL_163;
    }

    v75 = *(a1 + 1900 + 2 * a4);
    v15 = 1919160320;
    if (v75 != 0xFFFF)
    {
      goto LABEL_168;
    }

    v75 = *(a1 + 2004);
    *(a1 + 1900 + 2 * a4) = v75;
LABEL_167:
    *(a1 + 2004) = v75 + 1;
    goto LABEL_168;
  }

  v127 = v16 + 0x3100000882;
  *(a1 + 16) = 2;
  if (a6)
  {
    v20 = gleVStateProgram_GetAttrib(a1, a2) << 48;
  }

  else
  {
    v76 = *(a1 + 1900 + 2 * a2);
    if (v76 == 0xFFFF)
    {
      v76 = *(a1 + 2004);
      *(a1 + 1900 + 2 * a2) = v76;
      *(a1 + 2004) = v76 + 1;
    }

    v20 = (v76 << 48) | 0x40;
  }

  *(&v128 + 1) = v20;
  v125 = a1 + 260;
  v77 = (a1 + 260 + 4 * a3);
  v78 = *v77;
  if (a7)
  {
    if (v78 == 0xFFFF)
    {
      v79 = *(a1 + 1998);
      v78 = *(a1 + 1998);
      *v77 = v79;
      *(v125 + 4 * v79 + 2) = a3;
      v80 = v79 + 11;
      if ((a3 & 0xFFFFFFF0) != 0x90)
      {
        v80 = v79 + 1;
      }

      *(a1 + 1998) = v80;
    }

    v81 = ((v78 << 48) | 0x19C840) + 65;
    *(a1 + 2002) = 1;
  }

  else
  {
    if (v78 == 0xFFFF)
    {
      v82 = *(a1 + 1998);
      v78 = *(a1 + 1998);
      *v77 = v82;
      *(v125 + 4 * v82 + 2) = a3;
      v83 = v82 + 11;
      if ((a3 & 0xFFFFFFF0) != 0x90)
      {
        v83 = v82 + 1;
      }

      *(a1 + 1998) = v83;
    }

    v81 = ((v78 << 48) | 0x19C840) + 64;
  }

  *&v129 = v81;
  v84 = a1 + 1900;
  v85 = *(a1 + 1900 + 2 * a5);
  if (v85 == 0xFFFF)
  {
    v85 = *(a1 + 2004);
    *(v84 + 2 * a5) = v85;
    *(a1 + 2004) = v85 + 1;
  }

  *&v128 = (v85 << 48) | 0x72679000;
  (*(a1 + 2016))(a1, &v127);
  v132 = 0;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = (8 * (*(a1 + 16) & 7)) | 0x3100000FC3;
  *(a1 + 16) = 3;
  if (a6)
  {
    v86 = gleVStateProgram_GetAttrib(a1, a2);
    v87 = 43520;
  }

  else
  {
    LODWORD(v86) = *(v84 + 2 * a2);
    if (v86 == 0xFFFF)
    {
      LODWORD(v86) = *(a1 + 2004);
      *(v84 + 2 * a2) = v86;
      *(a1 + 2004) = v86 + 1;
    }

    v86 = v86;
    v87 = 43584;
  }

  *(&v128 + 1) = v87 | (v86 << 48);
  v88 = a3 + 1;
  v89 = (v125 + 4 * (a3 + 1));
  v90 = *v89;
  if (a7)
  {
    if (v90 == 0xFFFF)
    {
      v91 = *(a1 + 1998);
      v90 = *(a1 + 1998);
      *v89 = v91;
      *(v125 + 4 * v91 + 2) = v88;
      v26 = (v88 & 0xFFFFFFF0) == 144;
      v92 = v91 + 11;
      if (!v26)
      {
        v92 = v91 + 1;
      }

      *(a1 + 1998) = v92;
    }

    v93 = ((v90 << 48) | 0x19C840) + 65;
    *(a1 + 2002) = 1;
  }

  else
  {
    if (v90 == 0xFFFF)
    {
      v94 = *(a1 + 1998);
      v90 = *(a1 + 1998);
      *v89 = v94;
      *(v125 + 4 * v94 + 2) = v88;
      v26 = (v88 & 0xFFFFFFF0) == 144;
      v95 = v94 + 11;
      if (!v26)
      {
        v95 = v94 + 1;
      }

      *(a1 + 1998) = v95;
    }

    v93 = ((v90 << 48) | 0x19C840) + 64;
  }

  v124 = a8;
  *&v129 = v93;
  v96 = *(v84 + 2 * a5);
  v97 = a4;
  if (v96 == 0xFFFF)
  {
    v98 = *(a1 + 2004);
    *(v84 + 2 * a5) = v98;
    *(a1 + 2004) = v98 + 1;
    v96 = *(v84 + 2 * a5);
    *(&v129 + 1) = (v98 << 48) | 0x19C840;
    if (v96 == 0xFFFF)
    {
      v96 = *(a1 + 2004);
      *(v84 + 2 * a5) = v96;
      *(a1 + 2004) = v96 + 1;
    }
  }

  else
  {
    *(&v129 + 1) = (v96 << 48) | 0x19C840;
  }

  v99 = 87040;
  *&v128 = (v96 << 48) | 0x72679000;
  (*(a1 + 2016))(a1, &v127);
  v132 = 0;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = (8 * (*(a1 + 16) & 7)) | 0x3100000FC3;
  *(a1 + 16) = 3;
  if (a6)
  {
    v100 = gleVStateProgram_GetAttrib(a1, a2);
  }

  else
  {
    LODWORD(v100) = *(v84 + 2 * a2);
    if (v100 == 0xFFFF)
    {
      LODWORD(v100) = *(a1 + 2004);
      *(v84 + 2 * a2) = v100;
      *(a1 + 2004) = v100 + 1;
    }

    v100 = v100;
    v99 = 87104;
  }

  *(&v128 + 1) = v99 | (v100 << 48);
  v101 = a3 + 2;
  v102 = (v125 + 4 * (a3 + 2));
  v103 = *v102;
  if (a7)
  {
    a4 = v97;
    if (v103 == 0xFFFF)
    {
      v104 = *(a1 + 1998);
      v103 = *(a1 + 1998);
      *v102 = v104;
      *(v125 + 4 * v104 + 2) = v101;
      v26 = (v101 & 0xFFFFFFF0) == 144;
      v105 = v104 + 11;
      if (!v26)
      {
        v105 = v104 + 1;
      }

      *(a1 + 1998) = v105;
    }

    v106 = ((v103 << 48) | 0x19C840) + 65;
    *(a1 + 2002) = 1;
  }

  else
  {
    a4 = v97;
    if (v103 == 0xFFFF)
    {
      v107 = *(a1 + 1998);
      v103 = *(a1 + 1998);
      *v102 = v107;
      *(v125 + 4 * v107 + 2) = v101;
      v26 = (v101 & 0xFFFFFFF0) == 144;
      v108 = v107 + 11;
      if (!v26)
      {
        v108 = v107 + 1;
      }

      *(a1 + 1998) = v108;
    }

    v106 = ((v103 << 48) | 0x19C840) + 64;
  }

  *&v129 = v106;
  v109 = *(v84 + 2 * a5);
  if (v109 == 0xFFFF)
  {
    v110 = *(a1 + 2004);
    *(v84 + 2 * a5) = v110;
    *(a1 + 2004) = v110 + 1;
    v109 = *(v84 + 2 * a5);
    *(&v129 + 1) = (v110 << 48) | 0x19C840;
    if (v109 == 0xFFFF)
    {
      v109 = *(a1 + 2004);
      *(v84 + 2 * a5) = v109;
      *(a1 + 2004) = v109 + 1;
    }
  }

  else
  {
    *(&v129 + 1) = (v109 << 48) | 0x19C840;
  }

  *&v128 = (v109 << 48) | 0x72679000;
  (*(a1 + 2016))(a1, &v127);
  v132 = 0;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = (8 * (*(a1 + 16) & 7)) | 0x3100000FC3;
  *(a1 + 16) = 3;
  if (a6)
  {
    v111 = gleVStateProgram_GetAttrib(a1, a2);
    v112 = 130560;
  }

  else
  {
    LODWORD(v111) = *(v84 + 2 * a2);
    if (v111 == 0xFFFF)
    {
      LODWORD(v111) = *(a1 + 2004);
      *(v84 + 2 * a2) = v111;
      *(a1 + 2004) = v111 + 1;
    }

    v111 = v111;
    v112 = 130624;
  }

  *(&v128 + 1) = v112 | (v111 << 48);
  v113 = a3 + 3;
  v114 = (v125 + 4 * (a3 + 3));
  v115 = *v114;
  if (a7)
  {
    if (v115 == 0xFFFF)
    {
      v116 = *(a1 + 1998);
      v115 = *(a1 + 1998);
      *v114 = v116;
      *(v125 + 4 * v116 + 2) = v113;
      v26 = (v113 & 0xFFFFFFF0) == 144;
      v117 = v116 + 11;
      if (!v26)
      {
        v117 = v116 + 1;
      }

      *(a1 + 1998) = v117;
    }

    v118 = ((v115 << 48) | 0x19C840) + 65;
    *(a1 + 2002) = 1;
  }

  else
  {
    if (v115 == 0xFFFF)
    {
      v119 = *(a1 + 1998);
      v115 = *(a1 + 1998);
      *v114 = v119;
      *(v125 + 4 * v119 + 2) = v113;
      v26 = (v113 & 0xFFFFFFF0) == 144;
      v120 = v119 + 11;
      if (!v26)
      {
        v120 = v119 + 1;
      }

      *(a1 + 1998) = v120;
    }

    v118 = ((v115 << 48) | 0x19C840) + 64;
  }

  *&v129 = v118;
  v121 = *(v84 + 2 * a5);
  if (v121 == 0xFFFF)
  {
    v121 = *(a1 + 2004);
    *(v84 + 2 * a5) = v121;
    *(a1 + 2004) = v121 + 1;
  }

  *(&v129 + 1) = (v121 << 48) | 0x19C840;
  if (!v124)
  {
    v75 = *(v84 + 2 * a4);
    if (v75 != 0xFFFF)
    {
      goto LABEL_168;
    }

    v75 = *(a1 + 2004);
    *(v84 + 2 * a4) = v75;
    goto LABEL_167;
  }

  v73 = a1 + 1692;
  v74 = (a1 + 1692 + 4 * a4);
  v75 = *v74;
  v15 = 1919397888;
LABEL_163:
  if (v75 == 0xFFFF)
  {
    v122 = *(a1 + 2000);
    v75 = *(a1 + 2000);
    *v74 = v122;
    *(v73 + 4 * v122 + 2) = a4;
    *(a1 + 2000) = v122 + 1;
  }

LABEL_168:
  *&v128 = v15 | (v75 << 48);
  return (*(a1 + 2016))(a1, &v127);
}

uint64_t gleVStateProgram_MultMatrix3x3(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v10 = 1919389696;
  v80 = 0;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v11 = 8 * (*(a1 + 16) & 7);
  if (a6)
  {
    v75 = v11 | 0x3100000A02;
    *(a1 + 16) = 2;
    *(&v76 + 1) = (gleVStateProgram_GetAttrib(a1, 1u) << 48) | 0x19C800;
    v12 = a2 + 4;
    v13 = a1 + 260;
    v14 = (a1 + 260 + 4 * v12);
    v15 = *v14;
    if (a5)
    {
      if (v15 == 0xFFFF)
      {
        v16 = *(a1 + 1998);
        v15 = *(a1 + 1998);
        *v14 = v16;
        *(v13 + 4 * v16 + 2) = v12;
        v17 = (v12 & 0xFFFFFFF0) == 144;
        v18 = v16 + 11;
        if (!v17)
        {
          v18 = v16 + 1;
        }

        *(a1 + 1998) = v18;
      }

      v19 = ((v15 << 48) | 0x19C880) + 1;
      *(a1 + 2002) = 1;
    }

    else
    {
      if (v15 == 0xFFFF)
      {
        v27 = *(a1 + 1998);
        v15 = *(a1 + 1998);
        *v14 = v27;
        *(v13 + 4 * v27 + 2) = v12;
        v17 = (v12 & 0xFFFFFFF0) == 144;
        v28 = v27 + 11;
        if (!v17)
        {
          v28 = v27 + 1;
        }

        *(a1 + 1998) = v28;
      }

      v19 = (v15 << 48) | 0x19C880;
    }

    *&v77 = v19;
    v29 = (a1 + 2 * a3 + 1900);
    v30 = *v29;
    if (v30 == 0xFFFF)
    {
      v30 = *(a1 + 2004);
      *v29 = v30;
      *(a1 + 2004) = v30 + 1;
    }

    *&v76 = (v30 << 48) | 0x72641000;
    (*(a1 + 2016))(a1, &v75);
    v80 = 0;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v75 = (8 * (*(a1 + 16) & 7)) | 0x3100000A02;
    *(a1 + 16) = 2;
    *(&v76 + 1) = (gleVStateProgram_GetAttrib(a1, 1u) << 48) | 0x19C800;
    v31 = a2 + 5;
    v32 = (v13 + 4 * (a2 + 5));
    v33 = *v32;
    if (a5)
    {
      if (v33 == 0xFFFF)
      {
        v34 = *(a1 + 1998);
        v33 = *(a1 + 1998);
        *v32 = v34;
        *(v13 + 4 * v34 + 2) = v31;
        v17 = (v31 & 0xFFFFFFF0) == 144;
        v35 = v34 + 11;
        if (!v17)
        {
          v35 = v34 + 1;
        }

        *(a1 + 1998) = v35;
      }

      v36 = ((v33 << 48) | 0x19C880) + 1;
      *(a1 + 2002) = 1;
    }

    else
    {
      if (v33 == 0xFFFF)
      {
        v37 = *(a1 + 1998);
        v33 = *(a1 + 1998);
        *v32 = v37;
        *(v13 + 4 * v37 + 2) = v31;
        v17 = (v31 & 0xFFFFFFF0) == 144;
        v38 = v37 + 11;
        if (!v17)
        {
          v38 = v37 + 1;
        }

        *(a1 + 1998) = v38;
      }

      v36 = (v33 << 48) | 0x19C880;
    }

    *&v77 = v36;
    v39 = *v29;
    if (v39 == 0xFFFF)
    {
      v39 = *(a1 + 2004);
      *v29 = v39;
      *(a1 + 2004) = v39 + 1;
    }

    *&v76 = (v39 << 48) | 0x72621000;
    (*(a1 + 2016))(a1, &v75);
    v80 = 0;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v75 = (8 * (*(a1 + 16) & 7)) | 0x3100000A02;
    *(a1 + 16) = 2;
    *(&v76 + 1) = (gleVStateProgram_GetAttrib(a1, 1u) << 48) | 0x19C800;
    v40 = a2 + 6;
    v41 = (v13 + 4 * (a2 + 6));
    v42 = *v41;
    if (a5)
    {
      if (v42 == 0xFFFF)
      {
        v43 = *(a1 + 1998);
        v42 = *(a1 + 1998);
        *v41 = v43;
        *(v13 + 4 * v43 + 2) = v40;
        v17 = (v40 & 0xFFFFFFF0) == 144;
        v44 = v43 + 11;
        if (!v17)
        {
          v44 = v43 + 1;
        }

        *(a1 + 1998) = v44;
      }

      v45 = ((v42 << 48) | 0x19C880) + 1;
      *(a1 + 2002) = 1;
    }

    else
    {
      if (v42 == 0xFFFF)
      {
        v46 = *(a1 + 1998);
        v42 = *(a1 + 1998);
        *v41 = v46;
        *(v13 + 4 * v46 + 2) = v40;
        v17 = (v40 & 0xFFFFFFF0) == 144;
        v47 = v46 + 11;
        if (!v17)
        {
          v47 = v46 + 1;
        }

        *(a1 + 1998) = v47;
      }

      v45 = (v42 << 48) | 0x19C880;
    }

    *&v77 = v45;
    v48 = *v29;
    v10 = 1918996480;
  }

  else
  {
    v75 = v11 + 0x3100000882;
    *(a1 + 16) = 2;
    *(&v76 + 1) = gleVStateProgram_GetAttrib(a1, 1u) << 48;
    v21 = a1 + 260;
    v22 = (a1 + 260 + 4 * a2);
    v23 = *v22;
    if (a5)
    {
      if (v23 == 0xFFFF)
      {
        v24 = *(a1 + 1998);
        v23 = *(a1 + 1998);
        *v22 = v24;
        *(v21 + 4 * v24 + 2) = a2;
        v25 = v24 + 11;
        if ((a2 & 0xFFFFFFF0) != 0x90)
        {
          v25 = v24 + 1;
        }

        *(a1 + 1998) = v25;
      }

      v26 = ((v23 << 48) | 0x19C880) + 1;
      *(a1 + 2002) = 1;
    }

    else
    {
      if (v23 == 0xFFFF)
      {
        v49 = *(a1 + 1998);
        v23 = *(a1 + 1998);
        *v22 = v49;
        *(v21 + 4 * v49 + 2) = a2;
        v50 = v49 + 11;
        if ((a2 & 0xFFFFFFF0) != 0x90)
        {
          v50 = v49 + 1;
        }

        *(a1 + 1998) = v50;
      }

      v26 = (v23 << 48) | 0x19C880;
    }

    v51 = a2;
    *&v77 = v26;
    v52 = a1 + 1900;
    v53 = *(a1 + 1900 + 2 * a4);
    if (v53 == 0xFFFF)
    {
      v53 = *(a1 + 2004);
      *(v52 + 2 * a4) = v53;
      *(a1 + 2004) = v53 + 1;
    }

    *&v76 = (v53 << 48) | 0x72679000;
    (*(a1 + 2016))(a1, &v75);
    v80 = 0;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = (8 * (*(a1 + 16) & 7)) | 0x3100000FC3;
    *(a1 + 16) = 3;
    *(&v76 + 1) = (gleVStateProgram_GetAttrib(a1, 1u) << 48) | 0xAA00;
    v54 = v51 + 1;
    v55 = (v21 + 4 * (v51 + 1));
    v56 = *v55;
    if (a5)
    {
      if (v56 == 0xFFFF)
      {
        v57 = *(a1 + 1998);
        v56 = *(a1 + 1998);
        *v55 = v57;
        *(v21 + 4 * v57 + 2) = v54;
        v17 = (v54 & 0xFFFFFFF0) == 144;
        v58 = v57 + 11;
        if (!v17)
        {
          v58 = v57 + 1;
        }

        *(a1 + 1998) = v58;
      }

      v59 = ((v56 << 48) | 0x19C880) + 1;
      *(a1 + 2002) = 1;
    }

    else
    {
      if (v56 == 0xFFFF)
      {
        v60 = *(a1 + 1998);
        v56 = *(a1 + 1998);
        *v55 = v60;
        *(v21 + 4 * v60 + 2) = v54;
        v17 = (v54 & 0xFFFFFFF0) == 144;
        v61 = v60 + 11;
        if (!v17)
        {
          v61 = v60 + 1;
        }

        *(a1 + 1998) = v61;
      }

      v59 = (v56 << 48) | 0x19C880;
    }

    *&v77 = v59;
    v62 = *(v52 + 2 * a4);
    if (v62 == 0xFFFF)
    {
      v63 = *(a1 + 2004);
      *(v52 + 2 * a4) = v63;
      *(a1 + 2004) = v63 + 1;
      v62 = *(v52 + 2 * a4);
      *(&v77 + 1) = (v63 << 48) | 0x19C840;
      if (v62 == 0xFFFF)
      {
        v62 = *(a1 + 2004);
        *(v52 + 2 * a4) = v62;
        *(a1 + 2004) = v62 + 1;
      }
    }

    else
    {
      *(&v77 + 1) = ((v62 << 48) | 0x19C880) - 64;
    }

    *&v76 = (v62 << 48) | 0x72679000;
    (*(a1 + 2016))(a1, &v75);
    v80 = 0;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = (8 * (*(a1 + 16) & 7)) | 0x3100000FC3;
    *(a1 + 16) = 3;
    *(&v76 + 1) = (gleVStateProgram_GetAttrib(a1, 1u) << 48) | 0x15400;
    v64 = v51 + 2;
    v65 = (v21 + 4 * (v51 + 2));
    v66 = *v65;
    if (a5)
    {
      if (v66 == 0xFFFF)
      {
        v67 = *(a1 + 1998);
        v66 = *(a1 + 1998);
        *v65 = v67;
        *(v21 + 4 * v67 + 2) = v64;
        v17 = (v64 & 0xFFFFFFF0) == 144;
        v68 = v67 + 11;
        if (!v17)
        {
          v68 = v67 + 1;
        }

        *(a1 + 1998) = v68;
      }

      v69 = ((v66 << 48) | 0x19C880) + 1;
      *(a1 + 2002) = 1;
    }

    else
    {
      if (v66 == 0xFFFF)
      {
        v70 = *(a1 + 1998);
        v66 = *(a1 + 1998);
        *v65 = v70;
        *(v21 + 4 * v70 + 2) = v64;
        v17 = (v64 & 0xFFFFFFF0) == 144;
        v71 = v70 + 11;
        if (!v17)
        {
          v71 = v70 + 1;
        }

        *(a1 + 1998) = v71;
      }

      v69 = (v66 << 48) | 0x19C880;
    }

    *&v77 = v69;
    v72 = *(v52 + 2 * a4);
    if (v72 == 0xFFFF)
    {
      v72 = *(a1 + 2004);
      *(v52 + 2 * a4) = v72;
      *(a1 + 2004) = v72 + 1;
    }

    *(&v77 + 1) = (v72 << 48) | 0x19C840;
    v29 = (v52 + 2 * a3);
    v48 = *v29;
  }

  if (v48 == 0xFFFF)
  {
    v48 = *(a1 + 2004);
    *v29 = v48;
    *(a1 + 2004) = v48 + 1;
  }

  *&v76 = v10 | (v48 << 48);
  return (*(a1 + 2016))(a1, &v75);
}

uint64_t gleVStateProgram_NormalizeVector(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = ((8 * (*(a1 + 16) & 7)) | 0x3100000882) + 384;
  *(a1 + 16) = 2;
  v10 = a1 + 1900;
  v11 = *(a1 + 1900 + 2 * a2);
  if (v11 == 0xFFFF)
  {
    v12 = *(a1 + 2004);
    *(v10 + 2 * a2) = v12;
    *(a1 + 2004) = v12 + 1;
    v11 = *(v10 + 2 * a2);
    *&v23 = (v12 << 48) | 0x19C840;
    if (v11 == 0xFFFF)
    {
      v11 = *(a1 + 2004);
      *(v10 + 2 * a2) = v11;
      *(a1 + 2004) = v11 + 1;
    }
  }

  else
  {
    *&v23 = (v11 << 48) | 0x19C840;
  }

  *(&v23 + 1) = (v11 << 48) | 0x19C840;
  v13 = *(v10 + 2 * a4);
  if (v13 == 0xFFFF)
  {
    v13 = *(a1 + 2004);
    *(v10 + 2 * a4) = v13;
    *(a1 + 2004) = v13 + 1;
  }

  v22 = (v13 << 48) | 0x72679000;
  (*(a1 + 2016))(a1, &v21);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = *(a1 + 16);
  *(a1 + 16) = 1;
  v21 = (8 * (v14 & 7)) | 0x100080341;
  v15 = *(v10 + 2 * a4);
  if (v15 == 0xFFFF)
  {
    v15 = *(a1 + 2004);
    *(v10 + 2 * a4) = v15;
    *(a1 + 2004) = v15 + 1;
  }

  *&v23 = (v15 << 48) | 0x19C840;
  v16 = *(v10 + 2 * a5);
  if (v16 == 0xFFFF)
  {
    v16 = *(a1 + 2004);
    *(v10 + 2 * a5) = v16;
    *(a1 + 2004) = v16 + 1;
  }

  v22 = (v16 << 48) | 0x72679000;
  (*(a1 + 2016))(a1, &v21);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = (8 * (*(a1 + 16) & 7)) | 0x3100000882;
  *(a1 + 16) = 2;
  v17 = *(v10 + 2 * a2);
  if (v17 == 0xFFFF)
  {
    v17 = *(a1 + 2004);
    *(v10 + 2 * a2) = v17;
    *(a1 + 2004) = v17 + 1;
  }

  *&v23 = (v17 << 48) | 0x19C840;
  v18 = *(v10 + 2 * a5);
  if (v18 == 0xFFFF)
  {
    v18 = *(a1 + 2004);
    *(v10 + 2 * a5) = v18;
    *(a1 + 2004) = v18 + 1;
  }

  *(&v23 + 1) = (v18 << 48) | 0x19C840;
  v19 = *(v10 + 2 * a3);
  if (v19 == 0xFFFF)
  {
    v19 = *(a1 + 2004);
    *(v10 + 2 * a3) = v19;
    *(a1 + 2004) = v19 + 1;
  }

  v22 = (v19 << 48) | 0x72679000;
  return (*(a1 + 2016))(a1, &v21);
}

char *glpCallFragmentStateToLLVMIR(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  v55 = 0u;
  v56 = 0u;
  *&v53[12] = 0u;
  v54 = 0u;
  v40 = 0u;
  v41 = 0;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  v50 = v11;
  v51[0] = v11;
  *&v53[14] = -1;
  *v53 = v11;
  v52 = v11;
  v51[1] = v11;
  v49 = v11;
  v48 = v11;
  v47 = v11;
  v46 = v11;
  v45 = v11;
  v44 = v11;
  v43 = v11;
  v42 = v11;
  v12 = *a1;
  DWORD2(v56) = (*a1 >> 38) & 8 | 1;
  *(&v40 + 1) = &v57;
  BYTE12(v54) = BYTE3(v12) & 1;
  WORD6(v50) = 4096;
  LOWORD(v51[0]) = 4097;
  WORD2(v51[0]) = 4098;
  *&v55 = gleFStateProgram_LLVMAddOperation;
  *(&v55 + 1) = a1;
  gleFStateProgram_Start(a1, &v40);
  if (BYTE8(v56))
  {
    gleFStateProgram_AllocateAttribs(a1, &v40);
    v13 = *a1;
    if ((*a1 & 0x40000) != 0)
    {
      v16 = WORD2(v54);
      WORD4(v51[0]) = WORD2(v54);
      *(v51 + 2 * SWORD2(v54) + 5) = 0;
      WORD2(v54) = v16 + 1;
      if ((v13 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      WORD4(v52) = v16 + 1;
      *(v51 + 2 * (v16 + 1) + 5) = 8;
      v15 = v16 + 2;
      goto LABEL_7;
    }

    if ((v13 & 0x20000) == 0)
    {
      v14 = WORD2(v54);
      WORD4(v51[0]) = WORD2(v54);
      *(v51 + 2 * SWORD2(v54) + 5) = 0;
      v15 = v14 + 1;
LABEL_7:
      WORD2(v54) = v15;
      goto LABEL_12;
    }

    v17 = 0;
    v18 = v13 >> 8;
    v19 = WORD2(v54);
    v20 = v51 + 4;
    do
    {
      if ((v18 >> v17))
      {
        *v20 = v19;
        *(v51 + 2 * v19++ + 5) = v17;
        WORD2(v54) = v19;
      }

      ++v17;
      v20 += 2;
    }

    while (v17 != 8);
  }

LABEL_12:
  if ((BYTE8(v56) & 1) == 0)
  {
    gleFStateProgram_AllocateAttribs(a1, &v40);
  }

  gleFStateProgram_Core(a1, &v40);
  gleFStateProgram_End(a1, &v40);
  v21 = 8 * SWORD1(v54) + 64;
  v22 = v21 + gleAttribBindingSize(v54);
  v23 = malloc_type_malloc(v22, 0xCA0EF1E7uLL);
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = v23;
  *v23 = 0x3000000030;
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = 0;
  *(v23 + 3) = 0;
  *&v56 = v23;
  v25 = *a1;
  v26 = *a1 & 1 ^ 0x100000001;
  if ((*a1 & 0x2000000) != 0)
  {
    v26 = 1;
  }

  v27 = 4 * v26;
  if ((BYTE8(v56) & 2) == 0)
  {
    v27 = 0;
  }

  v28 = 8 * v26;
  if ((BYTE8(v56) & 4) == 0)
  {
    v28 = 0;
  }

  v29 = v27 | v28;
  if ((v25 & 0x40) != 0)
  {
    v29 |= 0x2000000020uLL;
  }

  if ((v25 & 0xE0000) == 0)
  {
    v30 = BYTE1(v25);
    if (BYTE1(v25))
    {
      v31 = 0;
      v32 = 32 - __clz(BYTE1(v25));
      do
      {
        v33 = 0x10000000100 << v31;
        if ((v30 & 1) == 0)
        {
          v33 = 0;
        }

        v29 |= v33;
        v30 >>= 1;
        ++v31;
      }

      while (v32 != v31);
    }
  }

  *(v23 + 4) = ((v25 & 0xFF00000000) != 0) << 9;
  *(v56 + 40) = v29;
  gleFStateProgram_AddParams(&v40);
  gleFStateProgram_AddAttribs(a1, &v40);
  v34 = malloc_type_malloc(0x50uLL, 0xCA0EF1E7uLL);
  if (!v34)
  {
LABEL_31:
    abort();
  }

  v35 = v34;
  *v34 = 0x20000004CLL;
  *(v34 + 8) = *a1;
  v36 = *(a1 + 16);
  v37 = *(a1 + 32);
  v38 = *(a1 + 48);
  *(v34 + 9) = *(a1 + 64);
  *(v34 + 56) = v38;
  *(v34 + 40) = v37;
  *(v34 + 24) = v36;
  gleCopyParamBindings((v24 + *(v24 + 1)), a2);
  *a4 = v24[4];
  *a5 = v24[5];
  *a6 = *(v24 + 4);
  free(v24);
  return v35;
}

unsigned __int16 *glpFragmentStateToPPStream(uint64_t a1, void *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v24 = 0;
  v36 = 0u;
  *v26 = 0u;
  *&v33[20] = 0u;
  v34 = 0;
  v37 = 0;
  *&v33[14] = -1;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *v33 = v9;
  v32[5] = v9;
  v32[4] = v9;
  v32[3] = v9;
  v32[2] = v9;
  v32[1] = v9;
  v32[0] = v9;
  v31 = v9;
  v30 = v9;
  v29 = v9;
  v28 = v9;
  v27 = v9;
  *&v26[12] = v9;
  v10 = PPStreamCreate();
  v25 = v10;
  *v10 = -30716;
  v35 = gleFStateProgram_AddPPStreamOperation;
  if (*(a1 + 2))
  {
    PPStreamAddOption(v10, 12);
  }

  gleFStateProgram_Start(a1, &v25);
  gleFStateProgram_Core(a1, &v25);
  gleFStateProgram_End(a1, &v25);
  gleFStateProgram_AddAttribs(a1, &v25);
  gleFStateProgram_AddParams(&v25);
  if (*&v33[32] >= 1)
  {
    v11 = 0;
    if (BYTE3(v34))
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    v13 = 174;
    do
    {
      v14 = *&v26[v13 - 8];
      *&v38 = v12;
      *(&v38 + 1) = v11;
      if (v14 == 8)
      {
        *&v38 = 1793;
      }

      else if (v14 <= 7)
      {
        *&v38 = v12 | (v14 << 33) | 0x4C0;
      }

      PPStreamAddOutputBinding(v25, &v38);
      ++v11;
      v13 += 4;
    }

    while (v11 < *&v33[32]);
  }

  if (*&v33[34])
  {
    v15 = 0;
    v16 = BYTE3(v34);
    do
    {
      if (v16)
      {
        v17 = v15 == *&v33[20];
      }

      else
      {
        v17 = 1;
      }

      if (v17 || v15 == *&v33[18] || v15 == *&v33[16])
      {
        v20 = 193;
      }

      else
      {
        v20 = 195;
      }

      *&v38 = v20;
      *(&v38 + 1) = v15;
      PPStreamAddTempUsage(v25, &v38);
      ++v15;
    }

    while (v15 < *&v33[34]);
  }

  Stream = PPStreamGetStream(v25, &v24);
  PPStreamFree(v25);
  *a2 = *(Stream + 1);
  *a3 = *(Stream + 2);
  *a4 = PPStreamTokenGetProgramOptions(Stream);
  *a5 = PPStreamTokenIsTrivialPassThrough(Stream);
  return Stream;
}

uint64_t *gleFStateProgram_Start(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v4 = (*result & 0x20000000000) == 0 && gEnablePrecision != 0;
  *(a2 + 251) = v4;
  if ((v2 & 0xFF00) != 0)
  {
    v5 = *(result + 1);
    v6 = 0.0;
    v7 = 1;
    while (1)
    {
      if ((v5 >> (v7 - 1)))
      {
        v8 = result[v7];
        if ((v8 & 0x70000000) == 0x50000000)
        {
          v9 = (v8 >> 21) & 0xF;
          if (v9 > 4)
          {
            v10 = v6 + 2.0;
            if (v9 == 10)
            {
              v11 = v6 + 2.0;
            }

            else
            {
              v11 = v6;
            }

            if (v9 == 9)
            {
              v11 = v6 + 2.0;
            }

            if (v9 != 8)
            {
              v10 = v6;
            }

            if (v9 - 5 < 2)
            {
              v10 = (v6 + 1.0) * 12.0;
            }

            if (((v8 >> 21) & 0xF) > 8)
            {
              v10 = v11;
            }
          }

          else if (((v8 >> 21) & 0xF) > 2)
          {
            if (v9 == 3)
            {
              v10 = v6 + 2.0;
            }

            else
            {
              v10 = v6;
              if (v9 == 4)
              {
                v10 = (v6 + 1.0) + (v6 + 1.0);
              }
            }
          }

          else
          {
            v10 = v6 + 1.0;
            if (v9 - 1 >= 2 && v9)
            {
              v10 = v6;
            }
          }

          v12 = (v8 >> 50) & 0xF;
          if (((v8 >> 50) & 0xF) > 4)
          {
            if (((v8 >> 50) & 0xF) > 8)
            {
              if (v12 == 9 || v12 == 10)
              {
                goto LABEL_45;
              }
            }

            else if ((v12 - 5) >= 2)
            {
              if (v12 == 8)
              {
                goto LABEL_45;
              }
            }

            else
            {
              v6 = (v6 + 1.0) * 12.0;
            }
          }

          else
          {
            if (((v8 >> 50) & 0xF) <= 2)
            {
              if ((v12 - 1) < 2 || !v12)
              {
                v6 = v6 + 1.0;
              }

              goto LABEL_46;
            }

            if (v12 != 3)
            {
              if (v12 == 4)
              {
                v6 = (v6 + 1.0) + (v6 + 1.0);
              }

              goto LABEL_46;
            }

LABEL_45:
            v6 = v6 + 2.0;
          }

LABEL_46:
          v13 = v10;
          v14 = v6;
          if (v13 >= v14)
          {
            v14 = v13;
          }

          v15 = (v8 >> 25) & 3;
          v16 = v14 + v14;
          if (v15 == 2)
          {
            v17 = v14 * 4.0;
          }

          else
          {
            v17 = v14 + v14;
          }

          if (v15 == 1)
          {
            v17 = v14;
          }

          v18 = v17;
          v19 = (v8 >> 54) & 3;
          if (v19 == 2)
          {
            v16 = v14 * 4.0;
          }

          if (v19 != 1)
          {
            v14 = v16;
          }

          v6 = v14;
          if (v18 >= v6)
          {
            v6 = v18;
          }

          goto LABEL_59;
        }

        v6 = v6 + 1.0;
      }

LABEL_59:
      if (!(v5 >> v7++))
      {
        if (v6 > 48.0)
        {
          *(a2 + 251) = 0;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t gleFStateProgram_Core(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v473 = result;
  if ((*result & 0x20000) != 0)
  {
    v33 = 0;
    v34 = (a2 + 172);
    do
    {
      if ((*result >> 8 >> v33))
      {
        memset(&v481[1] + 8, 0, 56);
        if (*(a2 + 251))
        {
          v35 = 0x3100180000;
        }

        else
        {
          v35 = 0x3100080000;
        }

        *&v481[0] = (8 * (*(a2 + 16) & 7)) | v35 | 1;
        *(a2 + 16) = 1;
        v36 = *(v34 - 68);
        if (v36 == 0xFFFF)
        {
          v37 = *(a2 + 240);
          v36 = *(a2 + 240);
          *(v34 - 68) = v37;
          *(a2 + 20 + 4 * v37 + 2) = v33 + 4;
          *(a2 + 240) = v37 + 1;
        }

        *&v481[1] = (v36 << 48) | 0x19C800;
        v38 = *v34;
        if (v38 == 0xFFFF)
        {
          v39 = *(a2 + 244);
          v38 = *(a2 + 244);
          *v34 = v39;
          *(a2 + 172 + 4 * v39 + 2) = v33;
          *(a2 + 244) = v39 + 1;
        }

        *(&v481[0] + 1) = ((v38 << 48) | 0x72679000) + 0x2000;
        (*(a2 + 256))(a2, v481);
        result = v473;
      }

      ++v33;
      v34 += 2;
    }

    while (v33 != 8);
    goto LABEL_135;
  }

  if ((v3 & 0x40000) == 0)
  {
    if ((v3 & 0x80000) == 0)
    {
      v4 = BYTE1(v3);
      if (!BYTE1(v3))
      {
        goto LABEL_135;
      }

      v5 = (v3 >> 8) & 0x7F;
      if (!v5)
      {
        v8 = 7;
        goto LABEL_210;
      }

      v6 = (result + 64);
      v7 = 128;
      v8 = 7;
      v9 = v4;
      while (1)
      {
        v10 = v9;
        v9 = v5;
        if ((v10 & v7) != 0)
        {
          v11 = *v6;
          v12 = (*v6 >> 28) & 7;
          if (v12 == 5)
          {
            v16 = v11 & 0x1F;
            v17 = (v11 >> 5) & 0x1F;
            v18 = v16 == 3 || v17 == 3;
            v19 = (v11 >> 10) & 0x1F;
            v20 = v18 || v19 == 3;
            v21 = HIDWORD(v11) & 0x1F;
            v22 = v20 || v21 == 3;
            v23 = (v11 >> 37) & 0x1F;
            v24 = v22 || v23 == 3;
            v25 = (v11 >> 42) & 0x1F;
            if (!v24 && v25 <= 5 && v23 <= 5 && v21 <= 5 && v19 <= 5 && v17 <= 5 && v16 <= 5 && v25 != 3)
            {
LABEL_52:
              if ((v8 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }

LABEL_210:
              v462 = a2 + 84;
              v460 = a2 + 20;
              v468 = (a2 + 172);
              v142 = v8;
              v143 = 4 * v8 + 84;
              v461 = v4;
              while (2)
              {
                v144 = v4 >> (v142 + 1);
                if (((v4 >> v142) & 1) == 0)
                {
                  goto LABEL_834;
                }

                v145 = result + 8 * v142;
                v146 = *(v145 + 8);
                v147 = (v146 >> 59) & 7;
                v148 = (v146 >> 28) & 7;
                if (v148 == 1)
                {
                  v150 = v147 < 4;
                  if (!v144)
                  {
                    goto LABEL_225;
                  }
                }

                else if (v148 == 3)
                {
                  v150 = (v146 & 0x3000000000000000) == 0x1000000000000000 || v147 == 5;
                  if (!v144)
                  {
LABEL_225:
                    if ((*result & 0x48) != 0)
                    {
                      break;
                    }

                    *(a2 + 248) = 1;
                    *(a2 + 250) = 0;
                    if (!v150)
                    {
LABEL_234:
                      v154 = *(a2 + 210);
                      if (v154 == 0xFFFF)
                      {
                        v154 = *(a2 + 246);
                        *(a2 + 210) = v154;
                        *(a2 + 246) = v154 + 1;
                      }

                      gleStateProgram_TextureSampleOp(result, a2, (v154 << 48) | 0x72679000, v142);
                      if (v148 != 5)
                      {
                        if (v147 <= 1)
                        {
                          v158 = v473;
                          if (v147)
                          {
                            v159 = &gleStateProgram_ApplyFuncsL;
                          }

                          else
                          {
                            v159 = &gleStateProgram_ApplyFuncsA;
                          }
                        }

                        else
                        {
                          v158 = v473;
                          switch(v147)
                          {
                            case 2:
                              v159 = &gleStateProgram_ApplyFuncsLA;
                              break;
                            case 3:
                              v159 = &gleStateProgram_ApplyFuncsI;
                              break;
                            case 4:
                              v159 = &gleStateProgram_ApplyFuncsRGB;
                              break;
                            default:
                              v159 = &gleStateProgram_ApplyFuncsRGBA;
                              break;
                          }
                        }

                        (v159[v148])(v158, a2, v142);
                        goto LABEL_833;
                      }

                      v155 = 0uLL;
                      memset(v481, 0, 80);
                      v156 = *(v145 + 8);
                      v157 = (((v156 >> 50) ^ (v156 >> 21)) & 0xF) != 0 || (((v156 >> 54) ^ (v156 >> 25)) & 3) != 0;
                      v160 = v156 & 0x1F;
                      v465 = v157;
                      if (v160 <= 2)
                      {
                        if (v160)
                        {
                          if (v160 != 1)
                          {
                            goto LABEL_266;
                          }

                          v161 = *(a2 + v143);
                          v162 = 1689728;
                          if (v161 == 0xFFFF)
                          {
                            v163 = *(a2 + 242);
                            v161 = *(a2 + 242);
                            *(a2 + v143) = v163;
                            *(v462 + 4 * v163 + 2) = v142;
LABEL_275:
                            *(a2 + 242) = v163 + 1;
                          }

                          goto LABEL_279;
                        }

                        v161 = *(a2 + 210);
                        v162 = 1689664;
                        if (v161 != 0xFFFF)
                        {
                          goto LABEL_279;
                        }

                        v161 = *(a2 + 246);
                        *(a2 + 210) = v161;
LABEL_272:
                        *(a2 + 246) = v161 + 1;
                        v162 = 1689664;
                        goto LABEL_279;
                      }

                      if (v160 == 3)
                      {
                        if (!*(a2 + 249))
                        {
LABEL_266:
                          v161 = *(a2 + 24);
                          v162 = 1689600;
                          if (v161 == 0xFFFF)
                          {
                            v164 = *(a2 + 240);
                            v161 = *(a2 + 240);
                            *(a2 + 24) = v164;
                            *(v460 + 4 * v164 + 2) = 1;
                            *(a2 + 240) = v164 + 1;
                          }

                          goto LABEL_279;
                        }

                        v161 = *(a2 + 208);
                        v162 = 1689664;
                        if (v161 != 0xFFFF)
                        {
                          goto LABEL_279;
                        }

                        v161 = *(a2 + 246);
                        *(a2 + 208) = v161;
                        goto LABEL_272;
                      }

                      if (v160 == 4)
                      {
                        v161 = *(a2 + 160);
                        if (v161 == 0xFFFF)
                        {
                          v166 = *(a2 + 242);
                          v161 = *(a2 + 242);
                          *(a2 + 160) = v166;
                          *(v462 + 4 * v166 + 2) = 19;
                          *(a2 + 242) = v166 + 1;
                        }

                        v162 = 128;
                        goto LABEL_279;
                      }

                      if (v160 != 5)
                      {
                        v165 = *(a2 + 222);
                        if (v165 == 0xFFFF)
                        {
                          v165 = *(a2 + 246);
                          *(a2 + 222) = v165;
                          *(a2 + 246) = v165 + 1;
                        }

                        gleStateProgram_TextureSampleOp(v473, a2, (v165 << 48) | 0x72679000, v160 - 6);
                        v161 = *(a2 + 222);
                        v162 = 1689664;
                        v155 = 0uLL;
                        if (v161 != 0xFFFF)
                        {
                          goto LABEL_279;
                        }

                        v161 = *(a2 + 246);
                        *(a2 + 222) = v161;
                        goto LABEL_272;
                      }

                      v161 = *(a2 + 164);
                      v162 = 1689728;
                      if (v161 == 0xFFFF)
                      {
                        v163 = *(a2 + 242);
                        v161 = *(a2 + 242);
                        *(a2 + 164) = v163;
                        *(v462 + 4 * v163 + 2) = 20;
                        goto LABEL_275;
                      }

LABEL_279:
                      v167 = v162 | (v161 << 48);
                      v168 = (*(v145 + 8) >> 15) & 3;
                      if (v168 > 1)
                      {
                        if (v168 != 2)
                        {
                          v479 = v155;
                          v480 = v155;
                          v478 = v155;
                          if (*(a2 + 251))
                          {
                            v170 = 0x3100180000;
                          }

                          else
                          {
                            v170 = 0x3100080000;
                          }

                          v474 = (8 * (*(a2 + 16) & 7)) | 0x802 | v170;
                          *(a2 + 16) = 2;
                          v171 = *(a2 + 160);
                          if (v171 == 0xFFFF)
                          {
                            v172 = *(a2 + 242);
                            v171 = *(a2 + 242);
                            *(a2 + 160) = v172;
                            *(v462 + 4 * v172 + 2) = 19;
                            *(a2 + 242) = v172 + 1;
                          }

                          v476 = (v171 << 48) | 0x80;
                          v477 = v167;
                          goto LABEL_295;
                        }
                      }

                      else
                      {
                        v169 = (v162 >> 15) & 3;
                        if (!v168)
                        {
                          v167 = v167 & 0xFFFF0000000180C0 | (v169 << 13) | (v169 << 11) | (v169 << 9);
                          goto LABEL_300;
                        }

                        v479 = v155;
                        v480 = v155;
                        v478 = v155;
                        if (*(a2 + 251))
                        {
                          v173 = 0x3100180000;
                        }

                        else
                        {
                          v173 = 0x3100080000;
                        }

                        v474 = (8 * (*(a2 + 16) & 7)) | 0x802 | v173;
                        *(a2 + 16) = 2;
                        v174 = *(a2 + 160);
                        if (v174 == 0xFFFF)
                        {
                          v175 = *(a2 + 242);
                          v174 = *(a2 + 242);
                          *(a2 + 160) = v175;
                          *(v462 + 4 * v175 + 2) = 19;
                          *(a2 + 242) = v175 + 1;
                        }

                        v476 = (v174 << 48) | 0x80;
                        v477 = v167 & 0xFFFF0000000180C0 | (v169 << 13) | (v169 << 11) | (v169 << 9);
LABEL_295:
                        v176 = *(a2 + 212);
                        if (v176 == 0xFFFF)
                        {
                          v176 = *(a2 + 246);
                          *(a2 + 212) = v176;
                          *(a2 + 246) = v176 + 1;
                        }

                        v475 = (v176 << 48) | 0x72679000;
                        (*(a2 + 256))(a2, &v474);
                        v177 = *(a2 + 212);
                        if (v177 == 0xFFFF)
                        {
                          v177 = *(a2 + 246);
                          *(a2 + 212) = v177;
                          *(a2 + 246) = v177 + 1;
                        }

                        v167 = (v177 << 48) | 0x19C840;
                        v155 = 0uLL;
                      }

LABEL_300:
                      v178 = *(v145 + 8);
                      if ((v178 & 0x1E00000) == 0xE00000)
                      {
                        v179 = 0;
                        goto LABEL_350;
                      }

                      v180 = (v178 >> 5) & 0x1F;
                      if (v180 <= 2)
                      {
                        if (v180)
                        {
                          if (v180 != 1)
                          {
                            goto LABEL_316;
                          }

                          v181 = *(a2 + v143);
                          v182 = 1689728;
                          if (v181 == 0xFFFF)
                          {
                            v183 = *(a2 + 242);
                            v181 = *(a2 + 242);
                            *(a2 + v143) = v183;
                            *(v462 + 4 * v183 + 2) = v142;
LABEL_325:
                            *(a2 + 242) = v183 + 1;
                          }

                          goto LABEL_329;
                        }

                        v181 = *(a2 + 210);
                        v182 = 1689664;
                        if (v181 != 0xFFFF)
                        {
                          goto LABEL_329;
                        }

                        v181 = *(a2 + 246);
                        *(a2 + 210) = v181;
LABEL_322:
                        *(a2 + 246) = v181 + 1;
                        v182 = 1689664;
                        goto LABEL_329;
                      }

                      if (v180 == 3)
                      {
                        if (!*(a2 + 249))
                        {
LABEL_316:
                          v181 = *(a2 + 24);
                          v182 = 1689600;
                          if (v181 == 0xFFFF)
                          {
                            v184 = *(a2 + 240);
                            v181 = *(a2 + 240);
                            *(a2 + 24) = v184;
                            *(v460 + 4 * v184 + 2) = 1;
                            *(a2 + 240) = v184 + 1;
                          }

                          goto LABEL_329;
                        }

                        v181 = *(a2 + 208);
                        v182 = 1689664;
                        if (v181 != 0xFFFF)
                        {
                          goto LABEL_329;
                        }

                        v181 = *(a2 + 246);
                        *(a2 + 208) = v181;
                        goto LABEL_322;
                      }

                      if (v180 == 4)
                      {
                        v181 = *(a2 + 160);
                        if (v181 == 0xFFFF)
                        {
                          v187 = *(a2 + 242);
                          v181 = *(a2 + 242);
                          *(a2 + 160) = v187;
                          *(v462 + 4 * v187 + 2) = 19;
                          *(a2 + 242) = v187 + 1;
                        }

                        v182 = 128;
                        goto LABEL_329;
                      }

                      if (v180 != 5)
                      {
                        v185 = v167;
                        v186 = *(a2 + 224);
                        if (v186 == 0xFFFF)
                        {
                          v186 = *(a2 + 246);
                          *(a2 + 224) = v186;
                          *(a2 + 246) = v186 + 1;
                        }

                        gleStateProgram_TextureSampleOp(v473, a2, (v186 << 48) | 0x72679000, v180 - 6);
                        v181 = *(a2 + 224);
                        v182 = 1689664;
                        v155 = 0uLL;
                        v167 = v185;
                        if (v181 != 0xFFFF)
                        {
                          goto LABEL_329;
                        }

                        v181 = *(a2 + 246);
                        *(a2 + 224) = v181;
                        goto LABEL_322;
                      }

                      v181 = *(a2 + 164);
                      v182 = 1689728;
                      if (v181 == 0xFFFF)
                      {
                        v183 = *(a2 + 242);
                        v181 = *(a2 + 242);
                        *(a2 + 164) = v183;
                        *(v462 + 4 * v183 + 2) = 20;
                        goto LABEL_325;
                      }

LABEL_329:
                      v179 = v182 | (v181 << 48);
                      v188 = (*(v145 + 8) >> 17) & 3;
                      if (v188 > 1)
                      {
                        if (v188 != 2)
                        {
                          v479 = v155;
                          v480 = v155;
                          v478 = v155;
                          if (*(a2 + 251))
                          {
                            v190 = 0x3100180000;
                          }

                          else
                          {
                            v190 = 0x3100080000;
                          }

                          v474 = (8 * (*(a2 + 16) & 7)) | 0x802 | v190;
                          *(a2 + 16) = 2;
                          v191 = *(a2 + 160);
                          if (v191 == 0xFFFF)
                          {
                            v192 = *(a2 + 242);
                            v191 = *(a2 + 242);
                            *(a2 + 160) = v192;
                            *(v462 + 4 * v192 + 2) = 19;
                            *(a2 + 242) = v192 + 1;
                          }

                          v193 = v167;
                          v476 = (v191 << 48) | 0x80;
                          v477 = v179;
                          goto LABEL_345;
                        }
                      }

                      else
                      {
                        v189 = (v182 >> 15) & 3;
                        if (!v188)
                        {
                          v179 = v179 & 0xFFFF0000000180C0 | (v189 << 13) | (v189 << 11) | (v189 << 9);
                          goto LABEL_350;
                        }

                        v479 = v155;
                        v480 = v155;
                        v478 = v155;
                        if (*(a2 + 251))
                        {
                          v194 = 0x3100180000;
                        }

                        else
                        {
                          v194 = 0x3100080000;
                        }

                        v474 = (8 * (*(a2 + 16) & 7)) | 0x802 | v194;
                        *(a2 + 16) = 2;
                        v195 = *(a2 + 160);
                        if (v195 == 0xFFFF)
                        {
                          v196 = *(a2 + 242);
                          v195 = *(a2 + 242);
                          *(a2 + 160) = v196;
                          *(v462 + 4 * v196 + 2) = 19;
                          *(a2 + 242) = v196 + 1;
                        }

                        v193 = v167;
                        v476 = (v195 << 48) | 0x80;
                        v477 = v179 & 0xFFFF0000000180C0 | (v189 << 13) | (v189 << 11) | (v189 << 9);
LABEL_345:
                        v197 = *(a2 + 214);
                        if (v197 == 0xFFFF)
                        {
                          v197 = *(a2 + 246);
                          *(a2 + 214) = v197;
                          *(a2 + 246) = v197 + 1;
                        }

                        v475 = (v197 << 48) | 0x72679000;
                        (*(a2 + 256))(a2, &v474);
                        v198 = *(a2 + 214);
                        if (v198 == 0xFFFF)
                        {
                          v198 = *(a2 + 246);
                          *(a2 + 214) = v198;
                          *(a2 + 246) = v198 + 1;
                        }

                        v179 = (v198 << 48) | 0x19C840;
                        v155 = 0uLL;
                        v167 = v193;
                      }

LABEL_350:
                      v199 = *(v145 + 8);
                      v200 = (v199 >> 21) & 0xF;
                      v467 = v179;
                      if (v200 > 4)
                      {
                        if (v200 - 8 < 3)
                        {
                          v201 = 1;
                          goto LABEL_357;
                        }

                        if (v200 != 5)
                        {
                          if (v200 == 6)
                          {
                            v203 = 0;
                            v466 = 0;
                            v200 = 1;
                          }

                          else
                          {
LABEL_374:
                            if (v465 || ((BYTE4(v199) ^ v199) & 0x1F) != 0)
                            {
                              v203 = 0;
                              v200 = 0;
                              goto LABEL_424;
                            }

                            v341 = (v199 >> 15) & 3;
                            v342 = (v199 >> 47) & 1;
                            if (v341 == v342)
                            {
                              v203 = 0;
                              v466 = 0;
                              v200 = 0;
                            }

                            else
                            {
                              v203 = 0;
                              v15 = v341 == (v342 | 2);
                              v200 = 0;
                              v224 = !v15;
LABEL_425:
                              v466 = v224;
                            }
                          }

                          goto LABEL_426;
                        }
                      }

                      else if (v200 - 1 >= 3)
                      {
                        if (v200)
                        {
                          v201 = 0;
                          if (v200 != 4)
                          {
                            goto LABEL_374;
                          }

LABEL_357:
                          v202 = (v199 >> 10) & 0x1F;
                          v469 = v201;
                          if (v202 <= 2)
                          {
                            if (v202)
                            {
                              if (v202 != 1)
                              {
                                goto LABEL_382;
                              }

                              v204 = *(a2 + v143);
                              v205 = 1689728;
                              if (v204 == 0xFFFF)
                              {
                                v206 = *(a2 + 242);
                                v204 = *(a2 + 242);
                                *(a2 + v143) = v206;
                                *(v462 + 4 * v206 + 2) = v142;
LABEL_391:
                                *(a2 + 242) = v206 + 1;
                              }

                              goto LABEL_395;
                            }

                            v204 = *(a2 + 210);
                            v205 = 1689664;
                            if (v204 != 0xFFFF)
                            {
                              goto LABEL_395;
                            }

                            v204 = *(a2 + 246);
                            *(a2 + 210) = v204;
LABEL_388:
                            *(a2 + 246) = v204 + 1;
                            v205 = 1689664;
                            goto LABEL_395;
                          }

                          if (v202 == 3)
                          {
                            if (!*(a2 + 249))
                            {
LABEL_382:
                              v204 = *(a2 + 24);
                              v205 = 1689600;
                              if (v204 == 0xFFFF)
                              {
                                v207 = *(a2 + 240);
                                v204 = *(a2 + 240);
                                *(a2 + 24) = v207;
                                *(v460 + 4 * v207 + 2) = 1;
                                *(a2 + 240) = v207 + 1;
                              }

                              goto LABEL_395;
                            }

                            v204 = *(a2 + 208);
                            v205 = 1689664;
                            if (v204 != 0xFFFF)
                            {
                              goto LABEL_395;
                            }

                            v204 = *(a2 + 246);
                            *(a2 + 208) = v204;
                            goto LABEL_388;
                          }

                          if (v202 == 4)
                          {
                            v204 = *(a2 + 160);
                            if (v204 == 0xFFFF)
                            {
                              v210 = *(a2 + 242);
                              v204 = *(a2 + 242);
                              *(a2 + 160) = v210;
                              *(v462 + 4 * v210 + 2) = 19;
                              *(a2 + 242) = v210 + 1;
                            }

                            v205 = 128;
                            goto LABEL_395;
                          }

                          if (v202 != 5)
                          {
                            v208 = v167;
                            v209 = *(a2 + 226);
                            if (v209 == 0xFFFF)
                            {
                              v209 = *(a2 + 246);
                              *(a2 + 226) = v209;
                              *(a2 + 246) = v209 + 1;
                            }

                            gleStateProgram_TextureSampleOp(v473, a2, (v209 << 48) | 0x72679000, v202 - 6);
                            v204 = *(a2 + 226);
                            v205 = 1689664;
                            v155 = 0uLL;
                            v179 = v467;
                            v167 = v208;
                            if (v204 != 0xFFFF)
                            {
                              goto LABEL_395;
                            }

                            v204 = *(a2 + 246);
                            *(a2 + 226) = v204;
                            goto LABEL_388;
                          }

                          v204 = *(a2 + 164);
                          v205 = 1689728;
                          if (v204 == 0xFFFF)
                          {
                            v206 = *(a2 + 242);
                            v204 = *(a2 + 242);
                            *(a2 + 164) = v206;
                            *(v462 + 4 * v206 + 2) = 20;
                            goto LABEL_391;
                          }

LABEL_395:
                          v203 = v205 | (v204 << 48);
                          v211 = (*(v145 + 8) >> 19) & 3;
                          if (v211 > 1)
                          {
                            if (v211 == 2)
                            {
LABEL_399:
                              v200 = v469;
                            }

                            else
                            {
                              v479 = v155;
                              v480 = v155;
                              v478 = v155;
                              if (*(a2 + 251))
                              {
                                v218 = 0x3100180000;
                              }

                              else
                              {
                                v218 = 0x3100080000;
                              }

                              v474 = (8 * (*(a2 + 16) & 7)) | 0x802 | v218;
                              *(a2 + 16) = 2;
                              v219 = *(a2 + 160);
                              if (v219 == 0xFFFF)
                              {
                                v220 = *(a2 + 242);
                                v219 = *(a2 + 242);
                                *(a2 + 160) = v220;
                                *(v462 + 4 * v220 + 2) = 19;
                                *(a2 + 242) = v220 + 1;
                              }

                              v221 = v167;
                              v476 = (v219 << 48) | 0x80;
                              v477 = v203;
                              v222 = *(a2 + 216);
                              if (v222 == 0xFFFF)
                              {
                                v222 = *(a2 + 246);
                                *(a2 + 216) = v222;
                                *(a2 + 246) = v222 + 1;
                              }

                              v475 = (v222 << 48) | 0x72679000;
                              (*(a2 + 256))(a2, &v474);
                              v223 = *(a2 + 216);
                              if (v223 == 0xFFFF)
                              {
                                v223 = *(a2 + 246);
                                *(a2 + 216) = v223;
                                *(a2 + 246) = v223 + 1;
                              }

                              v203 = (v223 << 48) | 0x19C840;
                              v155 = 0uLL;
                              v200 = v469;
                              v179 = v467;
                              v167 = v221;
                            }
                          }

                          else
                          {
                            v212 = (v205 >> 15) & 3;
                            if (!v211)
                            {
                              v203 = v203 & 0xFFFF0000000180C0 | (v212 << 13) | (v212 << 11) | (v212 << 9);
                              goto LABEL_399;
                            }

                            v479 = v155;
                            v480 = v155;
                            v478 = v155;
                            if (*(a2 + 251))
                            {
                              v213 = 0x3100180000;
                            }

                            else
                            {
                              v213 = 0x3100080000;
                            }

                            v474 = (8 * (*(a2 + 16) & 7)) | 0x802 | v213;
                            *(a2 + 16) = 2;
                            v214 = *(a2 + 160);
                            if (v214 == 0xFFFF)
                            {
                              v215 = *(a2 + 242);
                              v214 = *(a2 + 242);
                              *(a2 + 160) = v215;
                              *(v462 + 4 * v215 + 2) = 19;
                              *(a2 + 242) = v215 + 1;
                            }

                            v463 = v167;
                            v476 = (v214 << 48) | 0x80;
                            v477 = v203 & 0xFFFF0000000180C0 | (v212 << 13) | (v212 << 11) | (v212 << 9);
                            v216 = *(a2 + 216);
                            if (v216 == 0xFFFF)
                            {
                              v216 = *(a2 + 246);
                              *(a2 + 216) = v216;
                              *(a2 + 246) = v216 + 1;
                            }

                            v475 = (v216 << 48) | 0x72679000;
                            (*(a2 + 256))(a2, &v474);
                            v217 = *(a2 + 216);
                            if (v217 == 0xFFFF)
                            {
                              v217 = *(a2 + 246);
                              *(a2 + 216) = v217;
                              *(a2 + 246) = v217 + 1;
                            }

                            v203 = (v217 << 48) | 0x19C840;
                            v155 = 0uLL;
                            v200 = v469;
                            v179 = v467;
                            v167 = v463;
                          }

                          v199 = *(v145 + 8);
                          if (v465 || ((BYTE4(v199) ^ v199) & 0x1F) != 0 || (((v199 >> 37) ^ (v199 >> 5)) & 0x1F) != 0 || (((v199 >> 42) ^ (v199 >> 10)) & 0x1F) != 0)
                          {
LABEL_424:
                            v224 = 1;
                            goto LABEL_425;
                          }

                          v315 = v200;
                          v437 = (v199 >> 15) & 3;
                          v438 = (v199 >> 47) & 1;
                          if (v437 != v438 && v437 != (v438 | 2) || (v439 = (v199 >> 17) & 3, v440 = HIWORD(v199) & 1, v439 != v440) && v439 != (v440 | 2))
                          {
LABEL_840:
                            v441 = 1;
                            goto LABEL_846;
                          }

                          v343 = (v199 >> 19) & 3;
                          v344 = (v199 >> 49) & 1;
                          if (v343 != v344)
                          {
LABEL_845:
                            v441 = v343 != (v344 | 2);
LABEL_846:
                            v466 = v441;
LABEL_847:
                            v200 = v315;
LABEL_426:
                            v225 = (v199 >> 21) & 0xF;
                            v464 = v203;
                            v470 = v200;
                            if (v225 <= 4)
                            {
                              if (v225 <= 1)
                              {
                                if (v225)
                                {
                                  v481[3] = v155;
                                  v481[4] = v155;
                                  v481[2] = v155;
                                  v240 = 8 * (*(a2 + 16) & 7);
                                  if (*(a2 + 251))
                                  {
                                    v241 = 0x3100180000;
                                  }

                                  else
                                  {
                                    v241 = 0x3100080000;
                                  }

                                  v242 = 1986;
                                }

                                else
                                {
                                  v481[3] = v155;
                                  v481[4] = v155;
                                  v481[2] = v155;
                                  v240 = 8 * (*(a2 + 16) & 7);
                                  if (*(a2 + 251))
                                  {
                                    v241 = 0x3100180000;
                                  }

                                  else
                                  {
                                    v241 = 0x3100080000;
                                  }

                                  v242 = 2178;
                                }
                              }

                              else
                              {
                                if (v225 != 2)
                                {
                                  if (v225 != 3)
                                  {
                                    *(&v481[4] + 1) = 0;
                                    *(&v481[3] + 8) = v155;
                                    *(&v481[2] + 8) = v155;
                                    if (*(a2 + 251))
                                    {
                                      v226 = 0x3100180000;
                                    }

                                    else
                                    {
                                      v226 = 0x3100080000;
                                    }

                                    v227 = (8 * (*(a2 + 16) & 7)) | 0xF03 | v226;
                                    *(a2 + 16) = 3;
                                    *&v481[0] = v227;
                                    *&v481[1] = v203;
                                    *(&v481[1] + 1) = v167;
                                    goto LABEL_464;
                                  }

                                  v481[3] = v155;
                                  v481[4] = v155;
                                  v481[2] = v155;
                                  v256 = 8 * (*(a2 + 16) & 7);
                                  if (*(a2 + 251))
                                  {
                                    v257 = 0x3100180000;
                                  }

                                  else
                                  {
                                    v257 = 0x3100080000;
                                  }

                                  *(a2 + 16) = 2;
                                  *&v481[0] = v256 | 0x7C2 | v257;
                                  *&v481[1] = v167;
                                  *(&v481[1] + 1) = v179;
                                  v258 = *(a2 + 220);
                                  if (v258 == 0xFFFF)
                                  {
                                    v258 = *(a2 + 246);
                                    *(a2 + 220) = v258;
                                    *(a2 + 246) = v258 + 1;
                                  }

                                  *(&v481[0] + 1) = (v258 << 48) | 0x72679000;
                                  (*(a2 + 256))(a2, v481);
                                  memset(&v481[2], 0, 48);
                                  if (*(a2 + 251))
                                  {
                                    v259 = 0x3100180000;
                                  }

                                  else
                                  {
                                    v259 = 0x3100080000;
                                  }

                                  *&v481[0] = (8 * (*(a2 + 16) & 7)) | 0x802 | v259;
                                  *(a2 + 16) = 2;
                                  v260 = *(a2 + 220);
                                  if (v260 == 0xFFFF)
                                  {
                                    v260 = *(a2 + 246);
                                    *(a2 + 220) = v260;
                                    *(a2 + 246) = v260 + 1;
                                  }

                                  *&v481[1] = (v260 << 48) | 0x19C840;
                                  v261 = *(a2 + 160);
                                  if (v261 == 0xFFFF)
                                  {
                                    v262 = *(a2 + 242);
                                    v261 = *(a2 + 242);
                                    *(a2 + 160) = v262;
                                    *(v462 + 4 * v262 + 2) = 19;
                                    *(a2 + 242) = v262 + 1;
                                  }

                                  *(&v481[1] + 1) = (v261 << 48) | 0xAA80;
                                  if (v260 == 0xFFFF)
                                  {
LABEL_506:
                                    v260 = *(a2 + 246);
                                    *(a2 + 220) = v260;
                                    *(a2 + 246) = v260 + 1;
                                  }

LABEL_507:
                                  *(&v481[0] + 1) = (v260 << 48) | 0x72679000;
                                  (*(a2 + 256))(a2, v481);
                                  v265 = (*(v145 + 8) >> 25) & 3;
                                  if (v265 != 1)
                                  {
                                    v266 = v265 == 2;
                                    if (v265 == 2)
                                    {
                                      v267 = 2;
                                    }

                                    else
                                    {
                                      v267 = 3;
                                    }

                                    if (v266 && gEnablePrecision)
                                    {
                                      v268 = *a2;
                                      *(v481 + 8) = 0uLL;
                                      *(&v481[1] + 8) = 0uLL;
                                      *(&v481[2] + 8) = 0uLL;
                                      *(&v481[3] + 8) = 0uLL;
                                      *(&v481[4] + 1) = 0;
                                      if (*(a2 + 251))
                                      {
                                        v269 = 0x3100180000;
                                      }

                                      else
                                      {
                                        v269 = 0x3100080000;
                                      }

                                      v270 = (8 * (*(a2 + 16) & 7)) | 0x882 | v269;
                                      if (v268)
                                      {
                                        *(a2 + 16) = 2;
                                        *&v481[0] = v270 & 0x31000808BALL;
                                        v271 = *(a2 + 168);
                                        if (v271 == 0xFFFF)
                                        {
                                          v272 = *(a2 + 242);
                                          v271 = *(a2 + 242);
                                          *(a2 + 168) = v272;
                                          v273 = v462 + 4 * v272;
                                          v274 = 21;
                                          goto LABEL_530;
                                        }
                                      }

                                      else
                                      {
                                        *&v481[0] = (8 * (*(a2 + 16) & 7)) | 0x882 | v269;
                                        *(a2 + 16) = 2;
                                        v271 = *(a2 + 160);
                                        if (v271 == 0xFFFF)
                                        {
                                          v272 = *(a2 + 242);
                                          v271 = *(a2 + 242);
                                          *(a2 + 160) = v272;
                                          v273 = v462 + 4 * v272;
                                          v274 = 19;
LABEL_530:
                                          *(v273 + 2) = v274;
                                          *(a2 + 242) = v272 + 1;
                                        }
                                      }

                                      *(&v481[1] + 1) = (v271 << 48) | 0x15480;
                                      v278 = *(a2 + 220);
                                      if (v278 != 0xFFFF)
                                      {
LABEL_532:
                                        v282 = v278 << 48;
                                        *&v481[1] = (v278 << 48) | 0x19C840;
                                        goto LABEL_534;
                                      }
                                    }

                                    else
                                    {
                                      *(&v481[4] + 1) = 0;
                                      *(&v481[3] + 8) = 0uLL;
                                      *(&v481[2] + 8) = 0uLL;
                                      *(&v481[1] + 8) = 0uLL;
                                      *(v481 + 8) = 0uLL;
                                      if (*(a2 + 251))
                                      {
                                        v275 = 0x3100180000;
                                      }

                                      else
                                      {
                                        v275 = 0x3100080000;
                                      }

                                      *&v481[0] = (8 * (*(a2 + 16) & 7)) | 0x882 | v275;
                                      *(a2 + 16) = 2;
                                      v276 = *(a2 + 160);
                                      if (v276 == 0xFFFF)
                                      {
                                        v277 = *(a2 + 242);
                                        v276 = *(a2 + 242);
                                        *(a2 + 160) = v277;
                                        *(v462 + 4 * v277 + 2) = 19;
                                        *(a2 + 242) = v277 + 1;
                                      }

                                      *(&v481[1] + 1) = (v276 << 48) | (v267 << 9) | (v267 << 11) | (v267 << 13) | (v267 << 15) | 0x80;
                                      v278 = *(a2 + 220);
                                      if (v278 != 0xFFFF)
                                      {
                                        goto LABEL_532;
                                      }
                                    }

                                    v279 = *(a2 + 246);
                                    v280 = *(a2 + 246);
                                    *(a2 + 220) = v279;
                                    v281 = v280 + 1;
                                    *(a2 + 246) = v281;
                                    *&v481[1] = (v279 << 48) | 0x19C840;
                                    if ((v281 & 0x10000) != 0)
                                    {
                                      v282 = 0;
                                      *(a2 + 220) = v281;
                                      *(a2 + 246) = 1;
                                    }

                                    else
                                    {
                                      v282 = v279 << 48;
                                    }

LABEL_534:
                                    *(&v481[0] + 1) = v282 | 0x72679000;
                                    (*(a2 + 256))(a2, v481);
                                    v470 = 1;
                                  }

                                  v283 = v473;
                                  v284 = (a2 + 172);
                                  v285 = 0uLL;
                                  if (v466)
                                  {
                                    v286 = *(v145 + 12) & 0x1F;
                                    if (v286 <= 2)
                                    {
                                      v287 = v467;
                                      if (v286)
                                      {
                                        if (v286 != 1)
                                        {
                                          v288 = *(a2 + 24);
                                          if (v288 == 0xFFFF)
                                          {
                                            v289 = *(a2 + 240);
                                            v288 = *(a2 + 240);
                                            *(a2 + 24) = v289;
                                            *(v460 + 4 * v289 + 2) = 1;
                                            *(a2 + 240) = v289 + 1;
                                          }

                                          v290 = 130560;
                                          goto LABEL_568;
                                        }

                                        v299 = *(a2 + v143);
                                        if (v299 == 0xFFFF)
                                        {
                                          v300 = *(a2 + 242);
                                          v299 = *(a2 + 242);
                                          *(a2 + v143) = v300;
                                          *(v462 + 4 * v300 + 2) = v142;
                                          *(a2 + 242) = v300 + 1;
                                        }

                                        v293 = (v299 << 48) | 0x1FE40;
LABEL_564:
                                        v298 = v293 + 64;
                                        goto LABEL_600;
                                      }

                                      v288 = *(a2 + 210);
                                      if (v288 == 0xFFFF)
                                      {
                                        v288 = *(a2 + 246);
                                        *(a2 + 210) = v288;
                                        *(a2 + 246) = v288 + 1;
                                      }

                                      v290 = 130624;
LABEL_568:
                                      v298 = v290 | (v288 << 48);
                                      goto LABEL_600;
                                    }

                                    v287 = v467;
                                    switch(v286)
                                    {
                                      case 3u:
                                        if (*(a2 + 249))
                                        {
                                          v294 = *(a2 + 208);
                                          if (v294 == 0xFFFF)
                                          {
                                            v294 = *(a2 + 246);
                                            *(a2 + 208) = v294;
                                            *(a2 + 246) = v294 + 1;
                                          }

                                          v295 = (v294 << 48) | 0x40;
                                        }

                                        else
                                        {
                                          v318 = *(a2 + 24);
                                          if (v318 == 0xFFFF)
                                          {
                                            v319 = *(a2 + 240);
                                            v318 = *(a2 + 240);
                                            *(a2 + 24) = v319;
                                            *(v460 + 4 * v319 + 2) = 1;
                                            *(a2 + 240) = v319 + 1;
                                          }

                                          v295 = v318 << 48;
                                        }

                                        v298 = v295 | 0x1FE00;
                                        goto LABEL_600;
                                      case 4u:
                                        v288 = *(a2 + 160);
                                        if (v288 == 0xFFFF)
                                        {
                                          v301 = *(a2 + 242);
                                          v288 = *(a2 + 242);
                                          *(a2 + 160) = v301;
                                          *(v462 + 4 * v301 + 2) = 19;
                                          *(a2 + 242) = v301 + 1;
                                        }

                                        v290 = 128;
                                        goto LABEL_568;
                                      case 5u:
                                        v291 = *(a2 + 164);
                                        if (v291 == 0xFFFF)
                                        {
                                          v292 = *(a2 + 242);
                                          v291 = *(a2 + 242);
                                          *(a2 + 164) = v292;
                                          *(v462 + 4 * v292 + 2) = 20;
                                          *(a2 + 242) = v292 + 1;
                                        }

                                        v293 = (v291 << 48) | 0x19C840;
                                        goto LABEL_564;
                                    }

                                    v296 = *(a2 + 222);
                                    if (v296 == 0xFFFF)
                                    {
                                      v296 = *(a2 + 246);
                                      *(a2 + 222) = v296;
                                      *(a2 + 246) = v296 + 1;
                                    }

                                    gleStateProgram_TextureSampleOp(v473, a2, (v296 << 48) | 0x72679000, v286 - 6);
                                    v297 = *(a2 + 222);
                                    if (v297 == 0xFFFF)
                                    {
                                      v297 = *(a2 + 246);
                                      *(a2 + 222) = v297;
                                      *(a2 + 246) = v297 + 1;
                                    }

                                    v298 = (v297 << 48) | 0x1FE40;
                                    v285 = 0uLL;
                                    v287 = v467;
LABEL_600:
                                    v320 = *(v145 + 8);
                                    if ((v320 & 0x800000000000) != 0)
                                    {
                                      v479 = v285;
                                      v480 = v285;
                                      v478 = v285;
                                      if (*(a2 + 251))
                                      {
                                        v321 = 0x3100180000;
                                      }

                                      else
                                      {
                                        v321 = 0x3100080000;
                                      }

                                      v474 = (8 * (*(a2 + 16) & 7)) | 0x802 | v321;
                                      *(a2 + 16) = 2;
                                      v322 = *(a2 + 160);
                                      if (v322 == 0xFFFF)
                                      {
                                        v323 = *(a2 + 242);
                                        v322 = *(a2 + 242);
                                        *(a2 + 160) = v323;
                                        *(v462 + 4 * v323 + 2) = 19;
                                        *(a2 + 242) = v323 + 1;
                                      }

                                      v476 = (v322 << 48) | 0x80;
                                      v477 = v298;
                                      v324 = *(a2 + 212);
                                      if (v324 == 0xFFFF)
                                      {
                                        v324 = *(a2 + 246);
                                        *(a2 + 212) = v324;
                                        *(a2 + 246) = v324 + 1;
                                      }

                                      v475 = (v324 << 48) | 0x72679000;
                                      (*(a2 + 256))(a2, &v474);
                                      v325 = *(a2 + 212);
                                      if (v325 == 0xFFFF)
                                      {
                                        v325 = *(a2 + 246);
                                        *(a2 + 212) = v325;
                                        *(a2 + 246) = v325 + 1;
                                      }

                                      v298 = (v325 << 48) | 0x19C840;
                                      v320 = *(v145 + 8);
                                      v285 = 0uLL;
                                      v287 = v467;
                                    }

                                    if ((v320 & 0x3C000000000000) != 0x1C000000000000)
                                    {
                                      v326 = (v320 >> 37) & 0x1F;
                                      if (v326 <= 2)
                                      {
                                        if (v326)
                                        {
                                          if (v326 != 1)
                                          {
                                            v327 = *(a2 + 24);
                                            if (v327 == 0xFFFF)
                                            {
                                              v328 = *(a2 + 240);
                                              v327 = *(a2 + 240);
                                              *(a2 + 24) = v328;
                                              *(v460 + 4 * v328 + 2) = 1;
                                              *(a2 + 240) = v328 + 1;
                                            }

                                            v329 = 130560;
                                            goto LABEL_643;
                                          }

                                          v338 = *(a2 + v143);
                                          if (v338 == 0xFFFF)
                                          {
                                            v339 = *(a2 + 242);
                                            v338 = *(a2 + 242);
                                            *(a2 + v143) = v339;
                                            *(v462 + 4 * v339 + 2) = v142;
                                            *(a2 + 242) = v339 + 1;
                                          }

                                          v332 = (v338 << 48) | 0x1FE40;
LABEL_639:
                                          v287 = v332 + 64;
                                          goto LABEL_653;
                                        }

                                        v327 = *(a2 + 210);
                                        if (v327 == 0xFFFF)
                                        {
                                          v327 = *(a2 + 246);
                                          *(a2 + 210) = v327;
                                          *(a2 + 246) = v327 + 1;
                                        }

                                        v329 = 130624;
LABEL_643:
                                        v287 = v329 | (v327 << 48);
                                        goto LABEL_653;
                                      }

                                      switch(v326)
                                      {
                                        case 3:
                                          if (*(a2 + 249))
                                          {
                                            v333 = *(a2 + 208);
                                            if (v333 == 0xFFFF)
                                            {
                                              v333 = *(a2 + 246);
                                              *(a2 + 208) = v333;
                                              *(a2 + 246) = v333 + 1;
                                            }

                                            v334 = (v333 << 48) | 0x40;
                                          }

                                          else
                                          {
                                            v345 = *(a2 + 24);
                                            if (v345 == 0xFFFF)
                                            {
                                              v346 = *(a2 + 240);
                                              v345 = *(a2 + 240);
                                              *(a2 + 24) = v346;
                                              *(v460 + 4 * v346 + 2) = 1;
                                              *(a2 + 240) = v346 + 1;
                                            }

                                            v334 = v345 << 48;
                                          }

                                          v287 = v334 | 0x1FE00;
                                          goto LABEL_653;
                                        case 4:
                                          v327 = *(a2 + 160);
                                          if (v327 == 0xFFFF)
                                          {
                                            v340 = *(a2 + 242);
                                            v327 = *(a2 + 242);
                                            *(a2 + 160) = v340;
                                            *(v462 + 4 * v340 + 2) = 19;
                                            *(a2 + 242) = v340 + 1;
                                          }

                                          v329 = 128;
                                          goto LABEL_643;
                                        case 5:
                                          v330 = *(a2 + 164);
                                          if (v330 == 0xFFFF)
                                          {
                                            v331 = *(a2 + 242);
                                            v330 = *(a2 + 242);
                                            *(a2 + 164) = v331;
                                            *(v462 + 4 * v331 + 2) = 20;
                                            *(a2 + 242) = v331 + 1;
                                          }

                                          v332 = (v330 << 48) | 0x19C840;
                                          goto LABEL_639;
                                      }

                                      v335 = v298;
                                      v336 = *(a2 + 224);
                                      if (v336 == 0xFFFF)
                                      {
                                        v336 = *(a2 + 246);
                                        *(a2 + 224) = v336;
                                        *(a2 + 246) = v336 + 1;
                                      }

                                      gleStateProgram_TextureSampleOp(v473, a2, (v336 << 48) | 0x72679000, v326 - 6);
                                      v337 = *(a2 + 224);
                                      if (v337 == 0xFFFF)
                                      {
                                        v337 = *(a2 + 246);
                                        *(a2 + 224) = v337;
                                        *(a2 + 246) = v337 + 1;
                                      }

                                      v287 = (v337 << 48) | 0x1FE40;
                                      v285 = 0uLL;
                                      v298 = v335;
                                      v4 = v461;
LABEL_653:
                                      v320 = *(v145 + 8);
                                      if ((v320 & 0x1000000000000) != 0)
                                      {
                                        v479 = v285;
                                        v480 = v285;
                                        v478 = v285;
                                        if (*(a2 + 251))
                                        {
                                          v347 = 0x3100180000;
                                        }

                                        else
                                        {
                                          v347 = 0x3100080000;
                                        }

                                        v474 = (8 * (*(a2 + 16) & 7)) | 0x802 | v347;
                                        *(a2 + 16) = 2;
                                        v348 = *(a2 + 160);
                                        if (v348 == 0xFFFF)
                                        {
                                          v349 = *(a2 + 242);
                                          v348 = *(a2 + 242);
                                          *(a2 + 160) = v349;
                                          *(v462 + 4 * v349 + 2) = 19;
                                          *(a2 + 242) = v349 + 1;
                                        }

                                        v350 = v298;
                                        v476 = (v348 << 48) | 0x80;
                                        v477 = v287;
                                        v351 = *(a2 + 214);
                                        if (v351 == 0xFFFF)
                                        {
                                          v351 = *(a2 + 246);
                                          *(a2 + 214) = v351;
                                          *(a2 + 246) = v351 + 1;
                                        }

                                        v475 = (v351 << 48) | 0x72679000;
                                        (*(a2 + 256))(a2, &v474);
                                        v352 = *(a2 + 214);
                                        if (v352 == 0xFFFF)
                                        {
                                          v352 = *(a2 + 246);
                                          *(a2 + 214) = v352;
                                          *(a2 + 246) = v352 + 1;
                                        }

                                        v287 = (v352 << 48) | 0x19C840;
                                        v320 = *(v145 + 8);
                                        v285 = 0uLL;
                                        v298 = v350;
                                        v4 = v461;
                                      }
                                    }

                                    v353 = (v320 >> 50) & 0xF;
                                    if ((v353 - 1) < 3)
                                    {
                                      v354 = 1;
                                      goto LABEL_717;
                                    }

                                    if ((v353 - 8) < 3)
                                    {
                                      v354 = 1;
                                      goto LABEL_669;
                                    }

                                    v354 = v470;
                                    if (v353 == 4)
                                    {
LABEL_669:
                                      v355 = (v320 >> 42) & 0x1F;
                                      if (v355 > 2)
                                      {
                                        if (v355 == 3)
                                        {
                                          if (*(a2 + 249))
                                          {
                                            v362 = *(a2 + 208);
                                            if (v362 == 0xFFFF)
                                            {
                                              v362 = *(a2 + 246);
                                              *(a2 + 208) = v362;
                                              *(a2 + 246) = v362 + 1;
                                            }

                                            v363 = (v362 << 48) | 0x40;
                                          }

                                          else
                                          {
                                            v372 = *(a2 + 24);
                                            if (v372 == 0xFFFF)
                                            {
                                              v373 = *(a2 + 240);
                                              v372 = *(a2 + 240);
                                              *(a2 + 24) = v373;
                                              *(v460 + 4 * v373 + 2) = 1;
                                              *(a2 + 240) = v373 + 1;
                                            }

                                            v363 = v372 << 48;
                                          }

                                          v370 = v363 | 0x1FE00;
                                          goto LABEL_705;
                                        }

                                        if (v355 != 4)
                                        {
                                          if (v355 == 5)
                                          {
                                            v359 = *(a2 + 164);
                                            if (v359 == 0xFFFF)
                                            {
                                              v360 = *(a2 + 242);
                                              v359 = *(a2 + 242);
                                              *(a2 + 164) = v360;
                                              *(v462 + 4 * v360 + 2) = 20;
                                              *(a2 + 242) = v360 + 1;
                                            }

                                            v361 = (v359 << 48) | 0x19C840;
                                            goto LABEL_696;
                                          }

                                          v364 = v298;
                                          v365 = v287;
                                          v471 = v354;
                                          v366 = *(a2 + 226);
                                          if (v366 == 0xFFFF)
                                          {
                                            v366 = *(a2 + 246);
                                            *(a2 + 226) = v366;
                                            *(a2 + 246) = v366 + 1;
                                          }

                                          gleStateProgram_TextureSampleOp(v473, a2, (v366 << 48) | 0x72679000, v355 - 6);
                                          v367 = *(a2 + 226);
                                          if (v367 == 0xFFFF)
                                          {
                                            v367 = *(a2 + 246);
                                            *(a2 + 226) = v367;
                                            *(a2 + 246) = v367 + 1;
                                          }

                                          v464 = (v367 << 48) | 0x1FE40;
                                          v285 = 0uLL;
                                          v354 = v471;
                                          v287 = v365;
                                          v298 = v364;
                                          v4 = v461;
                                          goto LABEL_706;
                                        }

                                        v356 = *(a2 + 160);
                                        if (v356 == 0xFFFF)
                                        {
                                          v371 = *(a2 + 242);
                                          v356 = *(a2 + 242);
                                          *(a2 + 160) = v371;
                                          *(v462 + 4 * v371 + 2) = 19;
                                          *(a2 + 242) = v371 + 1;
                                        }

                                        v358 = 128;
                                      }

                                      else
                                      {
                                        if (v355)
                                        {
                                          if (v355 != 1)
                                          {
                                            v356 = *(a2 + 24);
                                            if (v356 == 0xFFFF)
                                            {
                                              v357 = *(a2 + 240);
                                              v356 = *(a2 + 240);
                                              *(a2 + 24) = v357;
                                              *(v460 + 4 * v357 + 2) = 1;
                                              *(a2 + 240) = v357 + 1;
                                            }

                                            v358 = 130560;
                                            goto LABEL_700;
                                          }

                                          v368 = *(a2 + v143);
                                          if (v368 == 0xFFFF)
                                          {
                                            v369 = *(a2 + 242);
                                            v368 = *(a2 + 242);
                                            *(a2 + v143) = v369;
                                            *(v462 + 4 * v369 + 2) = v142;
                                            *(a2 + 242) = v369 + 1;
                                          }

                                          v361 = (v368 << 48) | 0x1FE40;
LABEL_696:
                                          v370 = v361 + 64;
LABEL_705:
                                          v464 = v370;
LABEL_706:
                                          v320 = *(v145 + 8);
                                          if ((v320 & 0x2000000000000) != 0)
                                          {
                                            v472 = v354;
                                            v479 = v285;
                                            v480 = v285;
                                            v478 = v285;
                                            if (*(a2 + 251))
                                            {
                                              v374 = 0x3100180000;
                                            }

                                            else
                                            {
                                              v374 = 0x3100080000;
                                            }

                                            v474 = (8 * (*(a2 + 16) & 7)) | 0x802 | v374;
                                            *(a2 + 16) = 2;
                                            v375 = *(a2 + 160);
                                            if (v375 == 0xFFFF)
                                            {
                                              v376 = *(a2 + 242);
                                              v375 = *(a2 + 242);
                                              *(a2 + 160) = v376;
                                              *(v462 + 4 * v376 + 2) = 19;
                                              *(a2 + 242) = v376 + 1;
                                            }

                                            v377 = v298;
                                            v378 = v287;
                                            v476 = (v375 << 48) | 0x80;
                                            v477 = v464;
                                            v379 = *(a2 + 216);
                                            if (v379 == 0xFFFF)
                                            {
                                              v379 = *(a2 + 246);
                                              *(a2 + 216) = v379;
                                              *(a2 + 246) = v379 + 1;
                                            }

                                            v475 = (v379 << 48) | 0x72679000;
                                            (*(a2 + 256))(a2, &v474);
                                            v380 = *(a2 + 216);
                                            if (v380 == 0xFFFF)
                                            {
                                              v380 = *(a2 + 246);
                                              *(a2 + 216) = v380;
                                              *(a2 + 246) = v380 + 1;
                                            }

                                            v464 = (v380 << 48) | 0x19C840;
                                            v320 = *(v145 + 8);
                                            v285 = 0uLL;
                                            v354 = v472;
                                            v287 = v378;
                                            v298 = v377;
                                            v4 = v461;
                                          }

                                          goto LABEL_717;
                                        }

                                        v356 = *(a2 + 210);
                                        if (v356 == 0xFFFF)
                                        {
                                          v356 = *(a2 + 246);
                                          *(a2 + 210) = v356;
                                          *(a2 + 246) = v356 + 1;
                                        }

                                        v358 = 130624;
                                      }

LABEL_700:
                                      v370 = v358 | (v356 << 48);
                                      goto LABEL_705;
                                    }

LABEL_717:
                                    v381 = (v320 >> 50) & 0xF;
                                    v470 = v354;
                                    if (v381 <= 3)
                                    {
                                      if (v381 <= 1)
                                      {
                                        if (v381)
                                        {
                                          v481[3] = v285;
                                          v481[4] = v285;
                                          v481[2] = v285;
                                          v382 = 8 * (*(a2 + 16) & 7);
                                          if (*(a2 + 251))
                                          {
                                            v383 = 0x3100180000;
                                          }

                                          else
                                          {
                                            v383 = 0x3100080000;
                                          }

                                          v384 = 1986;
                                        }

                                        else
                                        {
                                          v481[3] = v285;
                                          v481[4] = v285;
                                          v481[2] = v285;
                                          v382 = 8 * (*(a2 + 16) & 7);
                                          if (*(a2 + 251))
                                          {
                                            v383 = 0x3100180000;
                                          }

                                          else
                                          {
                                            v383 = 0x3100080000;
                                          }

                                          v384 = 2178;
                                        }

                                        goto LABEL_765;
                                      }

                                      if (v381 != 2)
                                      {
                                        v481[3] = v285;
                                        v481[4] = v285;
                                        v481[2] = v285;
                                        if (*(a2 + 251))
                                        {
                                          v387 = 0x3100180000;
                                        }

                                        else
                                        {
                                          v387 = 0x3100080000;
                                        }

                                        v388 = (8 * (*(a2 + 16) & 7)) | 0x7C2 | v387;
                                        *(a2 + 16) = 2;
                                        *&v481[0] = v388;
                                        *&v481[1] = v298;
                                        *(&v481[1] + 1) = v287;
                                        v389 = *(a2 + 218);
                                        if (v389 == 0xFFFF)
                                        {
                                          v389 = *(a2 + 246);
                                          *(a2 + 218) = v389;
                                          *(a2 + 246) = v389 + 1;
                                        }

                                        *(&v481[0] + 1) = (v389 << 48) | 0x72679000;
                                        (*(a2 + 256))(a2, v481);
                                        memset(&v481[2], 0, 48);
                                        if (*(a2 + 251))
                                        {
                                          v390 = 0x3100180000;
                                        }

                                        else
                                        {
                                          v390 = 0x3100080000;
                                        }

                                        *&v481[0] = (8 * (*(a2 + 16) & 7)) | 0x802 | v390;
                                        *(a2 + 16) = 2;
                                        v391 = *(a2 + 218);
                                        if (v391 == 0xFFFF)
                                        {
                                          v391 = *(a2 + 246);
                                          *(a2 + 218) = v391;
                                          *(a2 + 246) = v391 + 1;
                                        }

                                        *&v481[1] = (v391 << 48) | 0x19C840;
                                        v392 = *(a2 + 160);
                                        if (v392 == 0xFFFF)
                                        {
                                          v393 = *(a2 + 242);
                                          v392 = *(a2 + 242);
                                          *(a2 + 160) = v393;
                                          *(v462 + 4 * v393 + 2) = 19;
                                          *(a2 + 242) = v393 + 1;
                                          v391 = *(a2 + 218);
                                        }

                                        *(&v481[1] + 1) = (v392 << 48) | 0xAA80;
                                        v394 = v391;
                                        if (v391 == 0xFFFF)
                                        {
                                          goto LABEL_785;
                                        }

                                        goto LABEL_786;
                                      }

                                      v481[3] = v285;
                                      v481[4] = v285;
                                      v481[2] = v285;
                                      v382 = 8 * (*(a2 + 16) & 7);
                                      if (*(a2 + 251))
                                      {
                                        v383 = 0x3100180000;
                                      }

                                      else
                                      {
                                        v383 = 0x3100080000;
                                      }

                                      v384 = 2050;
LABEL_765:
                                      *(a2 + 16) = 2;
                                      *&v481[0] = v382 | v384 | v383;
                                      *&v481[1] = v298;
                                      *(&v481[1] + 1) = v287;
LABEL_784:
                                      v394 = *(a2 + 218);
                                      if (v394 == 0xFFFF)
                                      {
                                        goto LABEL_785;
                                      }

                                      goto LABEL_786;
                                    }

                                    if (v381 <= 8)
                                    {
                                      if (v381 == 4)
                                      {
                                        *(&v481[4] + 1) = 0;
                                        *(&v481[3] + 8) = v285;
                                        *(&v481[2] + 8) = v285;
                                        if (*(a2 + 251))
                                        {
                                          v397 = 0x3100180000;
                                        }

                                        else
                                        {
                                          v397 = 0x3100080000;
                                        }

                                        v398 = (8 * (*(a2 + 16) & 7)) | 0xF03 | v397;
                                        *(a2 + 16) = 3;
                                        *&v481[0] = v398;
                                        *&v481[1] = v464;
                                        *(&v481[1] + 1) = v298;
                                        goto LABEL_760;
                                      }

                                      if (v381 == 8)
                                      {
                                        *(&v481[4] + 1) = 0;
                                        *(&v481[3] + 8) = v285;
                                        *(&v481[2] + 8) = v285;
                                        if (*(a2 + 251))
                                        {
                                          v385 = 0x3100180000;
                                        }

                                        else
                                        {
                                          v385 = 0x3100080000;
                                        }

                                        v386 = (8 * (*(a2 + 16) & 7)) | 0xFC3 | v385;
                                        *(a2 + 16) = 3;
                                        *&v481[0] = v386;
                                        *&v481[1] = v298;
                                        *(&v481[1] + 1) = v464;
LABEL_760:
                                        *&v481[2] = v287;
                                        goto LABEL_784;
                                      }

LABEL_780:
                                      *(&v481[4] + 1) = 0;
                                      *(&v481[3] + 8) = v285;
                                      *(&v481[2] + 8) = v285;
                                      *(&v481[1] + 8) = v285;
                                      if (*(a2 + 251))
                                      {
                                        v408 = 0x3100180000;
                                      }

                                      else
                                      {
                                        v408 = 0x3100080000;
                                      }

                                      v409 = (8 * (*(a2 + 16) & 7)) | v408 | 1;
                                      *(a2 + 16) = 1;
                                      *&v481[0] = v409;
                                      *&v481[1] = v298;
                                      goto LABEL_784;
                                    }

                                    if (v381 != 9)
                                    {
                                      if (v381 == 10)
                                      {
                                        *(&v481[4] + 1) = 0;
                                        *(&v481[3] + 8) = v285;
                                        *(&v481[2] + 8) = v285;
                                        v395 = 8 * (*(a2 + 16) & 7);
                                        if (*(a2 + 251))
                                        {
                                          v396 = 0x3100180000;
                                        }

                                        else
                                        {
                                          v396 = 0x3100080000;
                                        }

                                        *(a2 + 16) = 3;
                                        *&v481[0] = v395 | 0xFC3 | v396;
                                        *&v481[1] = v298;
                                        *(&v481[1] + 1) = v464;
                                        *&v481[2] = v287 | 0x10;
                                        goto LABEL_784;
                                      }

                                      goto LABEL_780;
                                    }

                                    v481[3] = v285;
                                    v481[4] = v285;
                                    v481[2] = v285;
                                    if (*(a2 + 251))
                                    {
                                      v399 = 0x3100180000;
                                    }

                                    else
                                    {
                                      v399 = 0x3100080000;
                                    }

                                    v400 = (8 * (*(a2 + 16) & 7)) | 0x802 | v399;
                                    *(a2 + 16) = 2;
                                    *&v481[0] = v400;
                                    *&v481[1] = v287;
                                    v401 = *(a2 + 160);
                                    if (v401 == 0xFFFF)
                                    {
                                      v402 = *(a2 + 242);
                                      v401 = *(a2 + 242);
                                      *(a2 + 160) = v402;
                                      *(v462 + 4 * v402 + 2) = 19;
                                      *(a2 + 242) = v402 + 1;
                                    }

                                    v403 = v298;
                                    *(&v481[1] + 1) = (v401 << 48) | 0xAA80;
                                    v404 = *(a2 + 214);
                                    if (v404 == 0xFFFF)
                                    {
                                      v404 = *(a2 + 246);
                                      *(a2 + 214) = v404;
                                      *(a2 + 246) = v404 + 1;
                                    }

                                    *(&v481[0] + 1) = (v404 << 48) | 0x72679000;
                                    (*(a2 + 256))(a2, v481);
                                    memset(&v481[2] + 8, 0, 40);
                                    v405 = 8 * (*(a2 + 16) & 7);
                                    if (*(a2 + 251))
                                    {
                                      v406 = 0x3100180000;
                                    }

                                    else
                                    {
                                      v406 = 0x3100080000;
                                    }

                                    *(a2 + 16) = 3;
                                    *&v481[0] = v405 | 0xFC3 | v406;
                                    *&v481[1] = v403;
                                    *(&v481[1] + 1) = v464;
                                    v407 = *(a2 + 214);
                                    if (v407 == 0xFFFF)
                                    {
                                      v407 = *(a2 + 246);
                                      *(a2 + 214) = v407;
                                      *(a2 + 246) = v407 + 1;
                                    }

                                    *&v481[2] = (v407 << 48) | 0x19C840;
                                    v394 = *(a2 + 218);
                                    v4 = v461;
                                    if (v394 == 0xFFFF)
                                    {
LABEL_785:
                                      v394 = *(a2 + 246);
                                      *(a2 + 218) = v394;
                                      *(a2 + 246) = v394 + 1;
                                    }

LABEL_786:
                                    *(&v481[0] + 1) = (v394 << 48) | 0x72679000;
                                    (*(a2 + 256))(a2, v481);
                                    v410 = (*(v145 + 8) >> 54) & 3;
                                    if (v410 != 1)
                                    {
                                      v15 = v410 == 2;
                                      v411 = 2;
                                      if (!v15)
                                      {
                                        v411 = 3;
                                        goto LABEL_796;
                                      }

                                      if (gEnablePrecision)
                                      {
                                        v412 = *a2;
                                        *(v481 + 8) = 0uLL;
                                        *(&v481[1] + 8) = 0uLL;
                                        *(&v481[2] + 8) = 0uLL;
                                        *(&v481[3] + 8) = 0uLL;
                                        *(&v481[4] + 1) = 0;
                                        if (*(a2 + 251))
                                        {
                                          v413 = 0x3100180000;
                                        }

                                        else
                                        {
                                          v413 = 0x3100080000;
                                        }

                                        v414 = (8 * (*(a2 + 16) & 7)) | 0x882 | v413;
                                        if (v412)
                                        {
                                          *(a2 + 16) = 2;
                                          *&v481[0] = v414 & 0x31000808BALL;
                                          v415 = *(a2 + 168);
                                          if (v415 == 0xFFFF)
                                          {
                                            v416 = *(a2 + 242);
                                            v415 = *(a2 + 242);
                                            *(a2 + 168) = v416;
                                            v417 = v462 + 4 * v416;
                                            v418 = 21;
                                            goto LABEL_804;
                                          }
                                        }

                                        else
                                        {
                                          *&v481[0] = (8 * (*(a2 + 16) & 7)) | 0x882 | v413;
                                          *(a2 + 16) = 2;
                                          v415 = *(a2 + 160);
                                          if (v415 == 0xFFFF)
                                          {
                                            v416 = *(a2 + 242);
                                            v415 = *(a2 + 242);
                                            *(a2 + 160) = v416;
                                            v417 = v462 + 4 * v416;
                                            v418 = 19;
LABEL_804:
                                            *(v417 + 2) = v418;
                                            *(a2 + 242) = v416 + 1;
                                          }
                                        }

                                        v422 = (v415 << 48) | 0x15480;
                                      }

                                      else
                                      {
LABEL_796:
                                        *(&v481[4] + 1) = 0;
                                        *(&v481[3] + 8) = 0uLL;
                                        *(&v481[2] + 8) = 0uLL;
                                        *(&v481[1] + 8) = 0uLL;
                                        *(v481 + 8) = 0uLL;
                                        if (*(a2 + 251))
                                        {
                                          v419 = 0x3100180000;
                                        }

                                        else
                                        {
                                          v419 = 0x3100080000;
                                        }

                                        *&v481[0] = (8 * (*(a2 + 16) & 7)) | 0x882 | v419;
                                        *(a2 + 16) = 2;
                                        v420 = *(a2 + 160);
                                        if (v420 == 0xFFFF)
                                        {
                                          v421 = *(a2 + 242);
                                          v420 = *(a2 + 242);
                                          *(a2 + 160) = v421;
                                          *(v462 + 4 * v421 + 2) = 19;
                                          *(a2 + 242) = v421 + 1;
                                        }

                                        v422 = (v420 << 48) | (v411 << 9) | (v411 << 11) | (v411 << 13) | (v411 << 15) | 0x80;
                                      }

                                      *(&v481[1] + 1) = v422;
                                      v423 = *(a2 + 218);
                                      if (v423 == 0xFFFF)
                                      {
                                        v425 = *(a2 + 246);
                                        v426 = *(a2 + 246);
                                        *(a2 + 218) = v425;
                                        v427 = v426 + 1;
                                        *(a2 + 246) = v427;
                                        *&v481[1] = (v425 << 48) | 0x19C840;
                                        if ((v427 & 0x10000) != 0)
                                        {
                                          v424 = 0;
                                          *(a2 + 218) = v427;
                                          *(a2 + 246) = 1;
                                        }

                                        else
                                        {
                                          v424 = v425 << 48;
                                        }
                                      }

                                      else
                                      {
                                        v424 = v423 << 48;
                                        *&v481[1] = (v423 << 48) | 0x19C840;
                                      }

                                      *(&v481[0] + 1) = v424 | 0x72679000;
                                      (*(a2 + 256))(a2, v481);
                                      v470 = 1;
                                    }

                                    memset(&v481[1] + 8, 0, 56);
                                    if (*(a2 + 251))
                                    {
                                      v428 = 0x3100180000;
                                    }

                                    else
                                    {
                                      v428 = 0x3100080000;
                                    }

                                    *&v481[0] = (8 * (*(a2 + 16) & 7)) | v428 | 1;
                                    *(a2 + 16) = 1;
                                    v429 = *(a2 + 218);
                                    if (v429 == 0xFFFF)
                                    {
                                      v429 = *(a2 + 246);
                                      *(a2 + 218) = v429;
                                      *(a2 + 246) = v429 + 1;
                                    }

                                    *&v481[1] = (v429 << 48) | 0x19C840;
                                    v430 = *(a2 + 220);
                                    if (v430 == 0xFFFF)
                                    {
                                      v430 = *(a2 + 246);
                                      *(a2 + 220) = v430;
                                      *(a2 + 246) = v430 + 1;
                                    }

                                    *(&v481[0] + 1) = (v430 << 48) | 0x72609000;
                                    (*(a2 + 256))(a2, v481);
                                    v283 = v473;
                                    v284 = (a2 + 172);
                                    v285 = 0uLL;
                                  }

                                  *(&v481[4] + 1) = 0;
                                  *(&v481[3] + 8) = v285;
                                  *(&v481[2] + 8) = v285;
                                  *(&v481[1] + 8) = v285;
                                  *(v481 + 8) = v285;
                                  v431 = 1572864;
                                  if (!*(a2 + 251))
                                  {
                                    v431 = 0x80000;
                                  }

                                  v432 = v431 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
                                  *&v481[0] = v432 | 0x3100000001;
                                  *(a2 + 16) = 1;
                                  if ((*v283 & 0x10) != 0 && v470)
                                  {
                                    *&v481[0] = v432 | 0x83100000001;
                                  }

                                  v433 = *(a2 + 220);
                                  if (v433 == 0xFFFF)
                                  {
                                    v433 = *(a2 + 246);
                                    *(a2 + 220) = v433;
                                    *(a2 + 246) = v433 + 1;
                                  }

                                  *&v481[1] = (v433 << 48) | 0x19C840;
                                  if (*(a2 + 248))
                                  {
                                    v434 = *v284;
                                    v435 = 1919397888;
                                    if (v434 == 0xFFFF)
                                    {
                                      v436 = *(a2 + 244);
                                      v434 = *(a2 + 244);
                                      *(a2 + 172) = v436;
                                      v284[2 * v436 + 1] = 0;
                                      *(a2 + 244) = v436 + 1;
                                    }
                                  }

                                  else
                                  {
                                    v434 = *(a2 + 208);
                                    v435 = 1919389696;
                                    if (v434 == 0xFFFF)
                                    {
                                      v434 = *(a2 + 246);
                                      *(a2 + 208) = v434;
                                      *(a2 + 246) = v434 + 1;
                                      v435 = 1919389696;
                                    }
                                  }

                                  *(&v481[0] + 1) = v435 | (v434 << 48);
                                  (*(a2 + 256))(a2, v481);
LABEL_833:
                                  *(a2 + 249) = 257;
                                  result = v473;
LABEL_834:
                                  v143 += 4;
                                  ++v142;
                                  if (!v144)
                                  {
                                    goto LABEL_135;
                                  }

                                  continue;
                                }

                                v481[3] = v155;
                                v481[4] = v155;
                                v481[2] = v155;
                                v240 = 8 * (*(a2 + 16) & 7);
                                if (*(a2 + 251))
                                {
                                  v241 = 0x3100180000;
                                }

                                else
                                {
                                  v241 = 0x3100080000;
                                }

                                v242 = 2050;
                              }

                              *(a2 + 16) = 2;
                              *&v481[0] = v240 | v242 | v241;
                              *&v481[1] = v167;
                              *(&v481[1] + 1) = v179;
LABEL_505:
                              v260 = *(a2 + 220);
                              if (v260 == 0xFFFF)
                              {
                                goto LABEL_506;
                              }

                              goto LABEL_507;
                            }

                            if (v225 > 8)
                            {
                              if (v225 == 9)
                              {
                                v481[3] = v155;
                                v481[4] = v155;
                                v481[2] = v155;
                                v247 = 8 * (*(a2 + 16) & 7);
                                if (*(a2 + 251))
                                {
                                  v248 = 0x3100180000;
                                }

                                else
                                {
                                  v248 = 0x3100080000;
                                }

                                *(a2 + 16) = 2;
                                *&v481[0] = v247 | 0x802 | v248;
                                *&v481[1] = v179;
                                v249 = *(a2 + 160);
                                if (v249 == 0xFFFF)
                                {
                                  v250 = *(a2 + 242);
                                  v249 = *(a2 + 242);
                                  *(a2 + 160) = v250;
                                  *(v462 + 4 * v250 + 2) = 19;
                                  *(a2 + 242) = v250 + 1;
                                }

                                v251 = v167;
                                *(&v481[1] + 1) = (v249 << 48) | 0xAA80;
                                v252 = *(a2 + 214);
                                if (v252 == 0xFFFF)
                                {
                                  v252 = *(a2 + 246);
                                  *(a2 + 214) = v252;
                                  *(a2 + 246) = v252 + 1;
                                }

                                *(&v481[0] + 1) = (v252 << 48) | 0x72679000;
                                (*(a2 + 256))(a2, v481);
                                memset(&v481[2] + 8, 0, 40);
                                v253 = 8 * (*(a2 + 16) & 7);
                                if (*(a2 + 251))
                                {
                                  v254 = 0x3100180000;
                                }

                                else
                                {
                                  v254 = 0x3100080000;
                                }

                                *(a2 + 16) = 3;
                                *&v481[0] = v253 | 0xFC3 | v254;
                                *&v481[1] = v251;
                                *(&v481[1] + 1) = v464;
                                v255 = *(a2 + 214);
                                if (v255 == 0xFFFF)
                                {
                                  v255 = *(a2 + 246);
                                  *(a2 + 214) = v255;
                                  *(a2 + 246) = v255 + 1;
                                }

                                *&v481[2] = (v255 << 48) | 0x19C840;
                                goto LABEL_591;
                              }

                              if (v225 == 10)
                              {
                                *(&v481[4] + 1) = 0;
                                *(&v481[3] + 8) = v155;
                                *(&v481[2] + 8) = v155;
                                if (*(a2 + 251))
                                {
                                  v243 = 0x3100180000;
                                }

                                else
                                {
                                  v243 = 0x3100080000;
                                }

                                v244 = (8 * (*(a2 + 16) & 7)) | 0xFC3 | v243;
                                *(a2 + 16) = 3;
                                *&v481[0] = v244;
                                *&v481[1] = v167;
                                *(&v481[1] + 1) = v203;
                                *&v481[2] = v179 | 0x10;
                                goto LABEL_505;
                              }
                            }

                            else
                            {
                              if ((v225 - 5) < 2)
                              {
                                v481[3] = v155;
                                v481[4] = v155;
                                v481[2] = v155;
                                v228 = *(a2 + 16);
                                *(a2 + 16) = 2;
                                *&v481[0] = (8 * (v228 & 7)) | 0x3100080802;
                                *&v481[1] = v167;
                                v229 = *(a2 + 168);
                                if (v229 == 0xFFFF)
                                {
                                  v230 = *(a2 + 242);
                                  v229 = *(a2 + 242);
                                  *(a2 + 168) = v230;
                                  *(v462 + 4 * v230 + 2) = 21;
                                  *(a2 + 242) = v230 + 1;
                                }

                                *(&v481[1] + 1) = (v229 << 48) | 0xAA80;
                                v231 = *(a2 + 228);
                                if (v231 == 0xFFFF)
                                {
                                  v231 = *(a2 + 246);
                                  *(a2 + 228) = v231;
                                  *(a2 + 246) = v231 + 1;
                                }

                                *(&v481[0] + 1) = (v231 << 48) | 0x72679000;
                                (*(a2 + 256))(a2, v481);
                                memset(&v481[2], 0, 48);
                                v232 = *(a2 + 16);
                                *(a2 + 16) = 2;
                                *&v481[0] = (8 * (v232 & 7)) | 0x3100080802;
                                *&v481[1] = v467;
                                v233 = *(a2 + 168);
                                if (v233 == 0xFFFF)
                                {
                                  v234 = *(a2 + 242);
                                  v233 = *(a2 + 242);
                                  *(a2 + 168) = v234;
                                  *(v462 + 4 * v234 + 2) = 21;
                                  *(a2 + 242) = v234 + 1;
                                }

                                *(&v481[1] + 1) = (v233 << 48) | 0xAA80;
                                v235 = *(a2 + 230);
                                if (v235 == 0xFFFF)
                                {
                                  v235 = *(a2 + 246);
                                  *(a2 + 230) = v235;
                                  *(a2 + 246) = v235 + 1;
                                }

                                *(&v481[0] + 1) = (v235 << 48) | 0x72679000;
                                (*(a2 + 256))(a2, v481);
                                memset(v481 + 8, 0, 72);
                                v236 = *(a2 + 16);
                                *(a2 + 16) = 2;
                                *&v481[0] = (8 * (v236 & 7)) | 0x3100080A02;
                                v237 = *(a2 + 230);
                                if (v237 == 0xFFFF)
                                {
                                  v237 = *(a2 + 246);
                                  *(a2 + 230) = v237;
                                  *(a2 + 246) = v237 + 1;
                                }

                                *&v481[1] = (v237 << 48) | 0x19C840;
                                v238 = *(a2 + 228);
                                if (v238 == 0xFFFF)
                                {
                                  v302 = *(a2 + 246);
                                  v303 = *(a2 + 246);
                                  *(a2 + 228) = v302;
                                  v304 = v303 + 1;
                                  *(a2 + 246) = v304;
                                  *(&v481[1] + 1) = (v302 << 48) | 0x19C840;
                                  if ((v304 & 0x10000) != 0)
                                  {
                                    v239 = 0;
                                    *(a2 + 228) = v304;
                                    *(a2 + 246) = 1;
                                  }

                                  else
                                  {
                                    v239 = v302 << 48;
                                  }
                                }

                                else
                                {
                                  v239 = v238 << 48;
                                  *(&v481[1] + 1) = (v238 << 48) | 0x19C840;
                                }

                                *(&v481[0] + 1) = v239 | 0x72679000;
                                (*(a2 + 256))(a2, v481);
                                v305 = *a2;
                                memset(&v481[2], 0, 48);
                                v306 = *(a2 + 16);
                                *(a2 + 16) = 2;
                                *&v481[0] = (8 * (v306 & 7)) | 0x3100080882;
                                v307 = *(a2 + 228);
                                if (v305)
                                {
                                  if (v307 == 0xFFFF)
                                  {
                                    v307 = *(a2 + 246);
                                    *(a2 + 228) = v307;
                                    *(a2 + 246) = v307 + 1;
                                  }

                                  *&v481[1] = (v307 << 48) | 0x19C840;
                                  v308 = *(a2 + 168);
                                  if (v308 == 0xFFFF)
                                  {
                                    v309 = *(a2 + 242);
                                    v308 = *(a2 + 242);
                                    *(a2 + 168) = v309;
                                    *(v462 + 4 * v309 + 2) = 21;
                                    *(a2 + 242) = v309 + 1;
                                  }

                                  *(&v481[1] + 1) = (v308 << 48) | 0x15480;
                                  v260 = *(a2 + 220);
                                  if (v260 == 0xFFFF)
                                  {
                                    goto LABEL_506;
                                  }

                                  goto LABEL_507;
                                }

                                if (v307 == 0xFFFF)
                                {
                                  v307 = *(a2 + 246);
                                  *(a2 + 228) = v307;
                                  *(a2 + 246) = v307 + 1;
                                }

                                *&v481[1] = (v307 << 48) | 0x19C840;
                                v310 = *(a2 + 168);
                                if (v310 == 0xFFFF)
                                {
                                  v311 = *(a2 + 242);
                                  v310 = *(a2 + 242);
                                  *(a2 + 168) = v311;
                                  *(v462 + 4 * v311 + 2) = 21;
                                  *(a2 + 242) = v311 + 1;
                                }

                                *(&v481[1] + 1) = (v310 << 48) | 0x15480;
                                v312 = *(a2 + 232);
                                if (v312 == 0xFFFF)
                                {
                                  v312 = *(a2 + 246);
                                  *(a2 + 232) = v312;
                                  *(a2 + 246) = v312 + 1;
                                }

                                *(&v481[0] + 1) = (v312 << 48) | 0x72679000;
                                (*(a2 + 256))(a2, v481);
                                memset(&v481[1] + 8, 0, 56);
                                if (*(a2 + 251))
                                {
                                  v313 = 0x3100180000;
                                }

                                else
                                {
                                  v313 = 0x3100080000;
                                }

                                *&v481[0] = (8 * (*(a2 + 16) & 7)) | 0x1B41 | v313;
                                *(a2 + 16) = 1;
                                v314 = *(a2 + 232);
                                if (v314 == 0xFFFF)
                                {
                                  v314 = *(a2 + 246);
                                  *(a2 + 232) = v314;
                                  *(a2 + 246) = v314 + 1;
                                }

                                *&v481[1] = (v314 << 48) | 0x19C840;
LABEL_591:
                                v260 = *(a2 + 220);
                                if (v260 == 0xFFFF)
                                {
                                  goto LABEL_506;
                                }

                                goto LABEL_507;
                              }

                              if (v225 == 8)
                              {
                                *(&v481[4] + 1) = 0;
                                *(&v481[3] + 8) = v155;
                                *(&v481[2] + 8) = v155;
                                if (*(a2 + 251))
                                {
                                  v245 = 0x3100180000;
                                }

                                else
                                {
                                  v245 = 0x3100080000;
                                }

                                v246 = (8 * (*(a2 + 16) & 7)) | 0xFC3 | v245;
                                *(a2 + 16) = 3;
                                *&v481[0] = v246;
                                *&v481[1] = v167;
                                *(&v481[1] + 1) = v203;
LABEL_464:
                                *&v481[2] = v179;
                                goto LABEL_505;
                              }
                            }

                            *(&v481[4] + 1) = 0;
                            *(&v481[3] + 8) = v155;
                            *(&v481[2] + 8) = v155;
                            *(&v481[1] + 8) = v155;
                            if (*(a2 + 251))
                            {
                              v263 = 0x3100180000;
                            }

                            else
                            {
                              v263 = 0x3100080000;
                            }

                            v264 = (8 * (*(a2 + 16) & 7)) | v263 | 1;
                            *(a2 + 16) = 1;
                            *&v481[0] = v264;
                            *&v481[1] = v167;
                            goto LABEL_505;
                          }

LABEL_648:
                          v466 = 0;
                          goto LABEL_847;
                        }

LABEL_365:
                        if (v465 || ((BYTE4(v199) ^ v199) & 0x1F) != 0 || (((v199 >> 37) ^ (v199 >> 5)) & 0x1F) != 0)
                        {
                          v203 = 0;
                          goto LABEL_424;
                        }

                        v315 = v200;
                        v316 = (v199 >> 15) & 3;
                        v317 = (v199 >> 47) & 1;
                        if (v316 != v317 && v316 != (v317 | 2))
                        {
                          v203 = 0;
                          goto LABEL_840;
                        }

                        v343 = (v199 >> 17) & 3;
                        v344 = HIWORD(v199) & 1;
                        if (v343 != v344)
                        {
                          v203 = 0;
                          goto LABEL_845;
                        }

                        v203 = 0;
                        goto LABEL_648;
                      }

                      v200 = 1;
                      goto LABEL_365;
                    }

LABEL_227:
                    if (*(a2 + 248))
                    {
                      v151 = *v468;
                      v152 = 1919397888;
                      if (v151 == 0xFFFF)
                      {
                        v153 = *(a2 + 244);
                        v151 = *(a2 + 244);
                        *(a2 + 172) = v153;
                        v468[2 * v153 + 1] = 0;
                        *(a2 + 244) = v153 + 1;
                      }
                    }

                    else
                    {
                      v151 = *(a2 + 208);
                      v152 = 1919389696;
                      if (v151 == 0xFFFF)
                      {
                        v151 = *(a2 + 246);
                        *(a2 + 208) = v151;
                        *(a2 + 246) = v151 + 1;
                        v152 = 1919389696;
                      }
                    }

                    gleStateProgram_TextureSampleOp(result, a2, v152 | (v151 << 48), v142);
                    goto LABEL_833;
                  }
                }

                else
                {
                  v150 = 0;
                  if (!v144)
                  {
                    goto LABEL_225;
                  }
                }

                break;
              }

              if (!v150)
              {
                goto LABEL_234;
              }

              goto LABEL_227;
            }
          }

          else if (v12 == 3)
          {
            v13 = v11 & 0x3000000000000000;
            v14 = v11 & 0x3800000000000000;
            v15 = v13 == 0x1000000000000000 || v14 == 0x2800000000000000;
            if (v15)
            {
              goto LABEL_52;
            }
          }
        }

        v7 = 1 << --v8;
        v5 = v9 & ~(1 << v8);
        --v6;
        if (!v5)
        {
          goto LABEL_52;
        }
      }
    }

    *(a2 + 248) = 1;
    memset(&v481[2], 0, 48);
    v41 = 8 * (*(a2 + 16) & 7);
    if (*(a2 + 251))
    {
      v42 = 0x3100188000;
    }

    else
    {
      v42 = 0x3100088000;
    }

    *(a2 + 16) = 2;
    *&v481[0] = v41 | 0x1082 | v42;
    v43 = a2 + 20;
    v44 = *(a2 + 36);
    if (v44 == 0xFFFF)
    {
      v45 = *(a2 + 240);
      v44 = *(a2 + 240);
      *(a2 + 36) = v45;
      *(v43 + 4 * v45 + 2) = 4;
      *(a2 + 240) = v45 + 1;
    }

    *&v481[1] = (v44 << 48) | 0x19C800;
    *(&v481[1] + 1) = 2;
    v46 = *(a2 + 210);
    if (v46 == 0xFFFF)
    {
      v46 = *(a2 + 246);
      *(a2 + 210) = v46;
      *(a2 + 246) = v46 + 1;
    }

    *(&v481[0] + 1) = (v46 << 48) | 0x72679000;
    (*(a2 + 256))(a2, v481);
    memset(v481 + 8, 0, 72);
    if (*(a2 + 251))
    {
      v47 = 0x3000180000;
    }

    else
    {
      v47 = 0x3000080000;
    }

    v48 = v47 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x13C1;
    *(a2 + 16) = 1;
    v49 = *(a2 + 210);
    if (v49 == 0xFFFF)
    {
      v49 = *(a2 + 246);
      *(a2 + 210) = v49;
      *(a2 + 246) = v49 + 1;
    }

    *&v481[1] = (v49 << 48) | 0x1FE50;
    *&v481[0] = v48;
    (*(a2 + 256))(a2, v481);
    memset(&v481[1] + 8, 0, 56);
    if (*(a2 + 251))
    {
      v50 = 0x3100180000;
    }

    else
    {
      v50 = 0x3100080000;
    }

    *&v481[0] = (8 * (*(a2 + 16) & 7)) | v50 | 1;
    *(a2 + 16) = 1;
    v51 = *(a2 + 24);
    if (v51 == 0xFFFF)
    {
      v52 = *(a2 + 240);
      v51 = *(a2 + 240);
      *(a2 + 24) = v52;
      *(v43 + 4 * v52 + 2) = 1;
      *(a2 + 240) = v52 + 1;
    }

    *&v481[1] = (v51 << 48) | 0x19C800;
    v54 = a2 + 172;
    v53 = *(a2 + 172);
    if (v53 != 0xFFFF)
    {
LABEL_134:
      *(&v481[0] + 1) = ((v53 << 48) | 0x72679000) + 0x2000;
      (*(a2 + 256))(a2, v481);
      result = v473;
      goto LABEL_135;
    }

LABEL_133:
    v84 = *(a2 + 244);
    v53 = *(a2 + 244);
    *(a2 + 172) = v84;
    *(v54 + 4 * v84 + 2) = 0;
    *(a2 + 244) = v84 + 1;
    goto LABEL_134;
  }

  *(a2 + 248) = 1;
  v40 = *result;
  if ((*result & 0x100) != 0)
  {
    memset(&v481[2], 0, 48);
    v55 = 8 * (*(a2 + 16) & 7);
    if (*(a2 + 251))
    {
      v56 = 0x3100188000;
    }

    else
    {
      v56 = 0x3100088000;
    }

    *(a2 + 16) = 2;
    *&v481[0] = v55 | 0x1082 | v56;
    v57 = *(a2 + 36);
    if (v57 == 0xFFFF)
    {
      v58 = *(a2 + 240);
      v57 = *(a2 + 240);
      *(a2 + 36) = v58;
      *(a2 + 4 * v58 + 22) = 4;
      *(a2 + 240) = v58 + 1;
    }

    *&v481[1] = (v57 << 48) | 0x19C800;
    *(&v481[1] + 1) = 2;
    if ((*(result + 1) & 0x10) != 0)
    {
      v59 = *(a2 + 210);
      v60 = 1919389696;
      if (v59 == 0xFFFF)
      {
        v59 = *(a2 + 246);
        *(a2 + 210) = v59;
        *(a2 + 246) = v59 + 1;
        v60 = 1919389696;
      }
    }

    else
    {
      v59 = *(a2 + 172);
      v60 = 1919397888;
      if (v59 == 0xFFFF)
      {
        v61 = *(a2 + 244);
        v59 = *(a2 + 244);
        *(a2 + 172) = v61;
        *(a2 + 172 + 4 * v61 + 2) = 0;
        *(a2 + 244) = v61 + 1;
      }
    }

    *(&v481[0] + 1) = v60 | (v59 << 48);
    (*(a2 + 256))(a2, v481);
    result = v473;
    v40 = *v473;
    if ((*v473 & 0x200) == 0)
    {
LABEL_68:
      if ((v40 & 0x400) == 0)
      {
        goto LABEL_69;
      }

LABEL_109:
      memset(&v481[1] + 8, 0, 56);
      if (*(a2 + 251))
      {
        v70 = 0x3100180000;
      }

      else
      {
        v70 = 0x3100080000;
      }

      *&v481[0] = (8 * (*(a2 + 16) & 7)) | v70 | 1;
      *(a2 + 16) = 1;
      v71 = *(a2 + 24);
      if (v71 == 0xFFFF)
      {
        v72 = *(a2 + 240);
        v71 = *(a2 + 240);
        *(a2 + 24) = v72;
        *(a2 + 4 * v72 + 22) = 1;
        *(a2 + 240) = v72 + 1;
      }

      *&v481[1] = (v71 << 48) | 0x19C800;
      v73 = *(a2 + 172);
      if (v73 == 0xFFFF)
      {
        v74 = *(a2 + 244);
        v73 = *(a2 + 244);
        *(a2 + 172) = v74;
        *(a2 + 172 + 4 * v74 + 2) = 0;
        *(a2 + 244) = v74 + 1;
      }

      *(&v481[0] + 1) = ((v73 << 48) | 0x72679000) + 0x2000;
      (*(a2 + 256))(a2, v481);
      result = v473;
      v40 = *v473;
      if ((*v473 & 0x800) == 0)
      {
LABEL_70:
        if ((v40 & 0x1000) == 0)
        {
          goto LABEL_135;
        }

LABEL_125:
        memset(&v481[2], 0, 48);
        if (*(a2 + 251))
        {
          v80 = 0x3100180000;
        }

        else
        {
          v80 = 0x3100080000;
        }

        *&v481[0] = (8 * (*(a2 + 16) & 7)) | 0x882 | v80;
        *(a2 + 16) = 2;
        v81 = *(a2 + 40);
        if (v81 == 0xFFFF)
        {
          v82 = *(a2 + 240);
          v81 = *(a2 + 240);
          *(a2 + 40) = v82;
          *(a2 + 4 * v82 + 22) = 5;
          *(a2 + 240) = v82 + 1;
        }

        *&v481[1] = (v81 << 48) | 0x19C800;
        v83 = *(a2 + 210);
        if (v83 == 0xFFFF)
        {
          v83 = *(a2 + 246);
          *(a2 + 210) = v83;
          *(a2 + 246) = v83 + 1;
        }

        *(&v481[1] + 1) = (v83 << 48) | 0x19C840;
        v54 = a2 + 172;
        v53 = *(a2 + 172);
        if (v53 != 0xFFFF)
        {
          goto LABEL_134;
        }

        goto LABEL_133;
      }

      goto LABEL_117;
    }
  }

  else if ((v40 & 0x200) == 0)
  {
    goto LABEL_68;
  }

  memset(&v481[2], 0, 48);
  v62 = *(a2 + 16);
  *(a2 + 16) = 2;
  *&v481[0] = (8 * (v62 & 7)) | 0x3100089082;
  v63 = *(a2 + 36);
  if (v63 == 0xFFFF)
  {
    v64 = *(a2 + 240);
    v63 = *(a2 + 240);
    *(a2 + 36) = v64;
    *(a2 + 4 * v64 + 22) = 4;
    *(a2 + 240) = v64 + 1;
  }

  v65 = (v63 << 48) | 0x19C800;
  v66 = 2;
  if ((*result & 0x400) == 0)
  {
    v66 = 0x100000002;
  }

  *&v481[1] = v65;
  *(&v481[1] + 1) = v66;
  v67 = *(a2 + 204);
  v68 = result;
  if (v67 == 0xFFFF)
  {
    v69 = *(a2 + 244);
    v67 = *(a2 + 244);
    *(a2 + 204) = v69;
    *(a2 + 4 * v69 + 174) = 8;
    *(a2 + 244) = v69 + 1;
  }

  *(&v481[0] + 1) = ((v67 << 48) | 0x72679000) + 0x2000;
  (*(a2 + 256))(a2, v481);
  v40 = *v68;
  result = v68;
  if ((*v68 & 0x400) != 0)
  {
    goto LABEL_109;
  }

LABEL_69:
  if ((v40 & 0x800) == 0)
  {
    goto LABEL_70;
  }

LABEL_117:
  memset(&v481[1] + 8, 0, 56);
  if (*(a2 + 251))
  {
    v75 = 0x3100180000;
  }

  else
  {
    v75 = 0x3100080000;
  }

  *&v481[0] = (8 * (*(a2 + 16) & 7)) | v75 | 1;
  *(a2 + 16) = 1;
  v76 = *(a2 + 40);
  if (v76 == 0xFFFF)
  {
    v77 = *(a2 + 240);
    v76 = *(a2 + 240);
    *(a2 + 40) = v77;
    *(a2 + 4 * v77 + 22) = 5;
    *(a2 + 240) = v77 + 1;
  }

  *&v481[1] = (v76 << 48) | 0x19C800;
  v78 = *(a2 + 172);
  if (v78 == 0xFFFF)
  {
    v79 = *(a2 + 244);
    v78 = *(a2 + 244);
    *(a2 + 172) = v79;
    *(a2 + 172 + 4 * v79 + 2) = 0;
    *(a2 + 244) = v79 + 1;
  }

  *(&v481[0] + 1) = ((v78 << 48) | 0x72679000) + 0x2000;
  (*(a2 + 256))(a2, v481);
  result = v473;
  if ((*v473 & 0x1000) != 0)
  {
    goto LABEL_125;
  }

LABEL_135:
  v85 = *result;
  if ((*result & 8) != 0)
  {
    *(a2 + 248) = (*result & 0x40) == 0;
    if ((v85 & 0x40) == 0)
    {
      *(a2 + 250) = 0;
    }

    gleStateProgram_CheckDestInit(a2);
    memset(v481 + 8, 0, 72);
    v86 = 1572864;
    if (!*(a2 + 251))
    {
      v86 = 0x80000;
    }

    v87 = v86 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
    *&v481[0] = v87 | 0x31000007C2;
    *(a2 + 16) = 2;
    if ((*v473 & 0x10) != 0)
    {
      *&v481[0] = v87 | 0x831000007C2;
    }

    if (*(a2 + 249))
    {
      v88 = *(a2 + 208);
      v89 = 1689664;
      if (v88 == 0xFFFF)
      {
        v88 = *(a2 + 246);
        *(a2 + 208) = v88;
        *(a2 + 246) = v88 + 1;
        v89 = 1689664;
      }
    }

    else
    {
      v88 = *(a2 + 24);
      v89 = 1689600;
      if (v88 == 0xFFFF)
      {
        v90 = *(a2 + 240);
        v88 = *(a2 + 240);
        *(a2 + 24) = v90;
        *(a2 + 4 * v90 + 22) = 1;
        *(a2 + 240) = v90 + 1;
      }
    }

    *&v481[1] = v89 | (v88 << 48);
    v91 = *(a2 + 28);
    if (v91 == 0xFFFF)
    {
      v92 = *(a2 + 240);
      v91 = *(a2 + 240);
      *(a2 + 28) = v92;
      *(a2 + 4 * v92 + 22) = 2;
      *(a2 + 240) = v92 + 1;
    }

    *(&v481[1] + 1) = (v91 << 48) | 0x19C800;
    if (*(a2 + 248))
    {
      v93 = *(a2 + 172);
      v94 = 1919365120;
      if (v93 == 0xFFFF)
      {
        v95 = *(a2 + 244);
        v93 = *(a2 + 244);
        *(a2 + 172) = v95;
        *(a2 + 172 + 4 * v95 + 2) = 0;
        *(a2 + 244) = v95 + 1;
      }
    }

    else
    {
      v93 = *(a2 + 208);
      v94 = 1919356928;
      if (v93 == 0xFFFF)
      {
        v93 = *(a2 + 246);
        *(a2 + 208) = v93;
        *(a2 + 246) = v93 + 1;
      }
    }

    *(&v481[0] + 1) = v94 | (v93 << 48);
    result = (*(a2 + 256))(a2, v481);
    *(a2 + 249) = 257;
    v85 = *v473;
  }

  if ((v85 & 0x40) != 0)
  {
    *(a2 + 248) = 1;
    *(a2 + 250) = 0;
    gleStateProgram_CheckDestInit(a2);
    v96 = v473;
    v97 = *v473;
    if ((*v473 & 0x80) != 0)
    {
LABEL_860:
      memset(v481 + 8, 0, 72);
      if (*(a2 + 251))
      {
        v448 = 0x3100180000;
      }

      else
      {
        v448 = 0x3100080000;
      }

      *&v481[0] = (8 * (*(a2 + 16) & 7)) | 0xF03 | v448;
      *(a2 + 16) = 3;
      if ((*v96 & 0x80) != 0)
      {
        v449 = *(a2 + 32);
        if (v449 == 0xFFFF)
        {
          v451 = *(a2 + 240);
          v449 = *(a2 + 240);
          *(a2 + 32) = v451;
          *(a2 + 4 * v451 + 22) = 3;
          *(a2 + 240) = v451 + 1;
        }

        v450 = 43520;
      }

      else
      {
        v449 = *(a2 + 228);
        v450 = 1689664;
        if (v449 == 0xFFFF)
        {
          v449 = *(a2 + 246);
          *(a2 + 228) = v449;
          *(a2 + 246) = v449 + 1;
          v450 = 1689664;
        }
      }

      *&v481[1] = v450 | (v449 << 48);
      if (*(a2 + 249))
      {
        v452 = *(a2 + 208);
        v453 = 1689664;
        if (v452 == 0xFFFF)
        {
          v452 = *(a2 + 246);
          *(a2 + 208) = v452;
          *(a2 + 246) = v452 + 1;
          v453 = 1689664;
        }
      }

      else
      {
        v452 = *(a2 + 24);
        v453 = 1689600;
        if (v452 == 0xFFFF)
        {
          v454 = *(a2 + 240);
          v452 = *(a2 + 240);
          *(a2 + 24) = v454;
          *(a2 + 4 * v454 + 22) = 1;
          *(a2 + 240) = v454 + 1;
        }
      }

      *(&v481[1] + 1) = v453 | (v452 << 48);
      v455 = *(a2 + 156);
      if (v455 == 0xFFFF)
      {
        v456 = *(a2 + 242);
        v455 = *(a2 + 242);
        *(a2 + 156) = v456;
        *(a2 + 4 * v456 + 86) = 18;
        *(a2 + 242) = v456 + 1;
      }

      *&v481[2] = ((v455 << 48) | 0x19C840) + 64;
      if (*(a2 + 248))
      {
        v457 = *(a2 + 172);
        v458 = 1919365120;
        if (v457 == 0xFFFF)
        {
          v459 = *(a2 + 244);
          v457 = *(a2 + 244);
          *(a2 + 172) = v459;
          *(a2 + 172 + 4 * v459 + 2) = 0;
          *(a2 + 244) = v459 + 1;
        }
      }

      else
      {
        v457 = *(a2 + 208);
        v458 = 1919356928;
        if (v457 == 0xFFFF)
        {
          v457 = *(a2 + 246);
          *(a2 + 208) = v457;
          *(a2 + 246) = v457 + 1;
        }
      }

      *(&v481[0] + 1) = v458 | (v457 << 48);
      result = (*(a2 + 256))(a2, v481);
      *(a2 + 249) = 257;
      return result;
    }

    v98 = (v97 >> 1) & 3;
    if (v98 > 1)
    {
      if (v98 == 2)
      {
        if ((v97 & 0x20) == 0)
        {
          memset(&v481[1] + 8, 0, 56);
          v106 = *(a2 + 16);
          *(a2 + 16) = 1;
          *&v481[0] = (8 * (v106 & 7)) | 0x3100080081;
          v107 = *(a2 + 32);
          if (v107 == 0xFFFF)
          {
            v108 = *(a2 + 240);
            v107 = *(a2 + 240);
            *(a2 + 32) = v108;
            *(a2 + 4 * v108 + 22) = 3;
            *(a2 + 240) = v108 + 1;
          }

          *&v481[1] = v107 << 48;
          v109 = *(a2 + 228);
          if (v109 == 0xFFFF)
          {
            v109 = *(a2 + 246);
            *(a2 + 228) = v109;
            *(a2 + 246) = v109 + 1;
          }

          *(&v481[0] + 1) = (v109 << 48) | 0x72679000;
          (*(a2 + 256))(a2, v481);
          v96 = v473;
        }

        memset(v481 + 8, 0, 72);
        v110 = *(a2 + 16);
        *(a2 + 16) = 2;
        *&v481[0] = (8 * (v110 & 7)) | 0x3100080882;
        if ((*v96 & 0x20) != 0)
        {
          v136 = *(a2 + 32);
          if (v136 == 0xFFFF)
          {
            v137 = *(a2 + 240);
            v136 = *(a2 + 240);
            *(a2 + 32) = v137;
            *(a2 + 4 * v137 + 22) = 3;
            *(a2 + 240) = v137 + 1;
          }

          v112 = v136 << 48;
        }

        else
        {
          v111 = *(a2 + 228);
          if (v111 == 0xFFFF)
          {
            v111 = *(a2 + 246);
            *(a2 + 228) = v111;
            *(a2 + 246) = v111 + 1;
          }

          v112 = (v111 << 48) | 0x19C840;
        }

        *&v481[1] = v112;
        v138 = *(a2 + 152);
        if (v138 == 0xFFFF)
        {
          v139 = *(a2 + 242);
          v138 = *(a2 + 242);
          *(a2 + 152) = v139;
          *(a2 + 4 * v139 + 86) = 17;
          *(a2 + 242) = v139 + 1;
        }

        *(&v481[1] + 1) = (v138 << 48) | 0x80;
        v140 = *(a2 + 228);
        if (v140 == 0xFFFF)
        {
          v140 = *(a2 + 246);
          *(a2 + 228) = v140;
          *(a2 + 246) = v140 + 1;
        }

        *(&v481[0] + 1) = (v140 << 48) | 0x72679000;
        (*(a2 + 256))(a2, v481);
        memset(&v481[1], 0, 64);
        v141 = *(a2 + 16);
        *(a2 + 16) = 1;
        *&v481[0] = (8 * (v141 & 7)) | 0x100080401;
        if ((*v473 & 0x20) != 0)
        {
          *&v481[0] = (8 * (v141 & 7)) | 0x80100080401;
        }

        goto LABEL_853;
      }
    }

    else if (v98)
    {
      if ((v97 & 0x20) == 0)
      {
        memset(&v481[1] + 8, 0, 56);
        v99 = *(a2 + 16);
        *(a2 + 16) = 1;
        *&v481[0] = (8 * (v99 & 7)) | 0x3100080081;
        v100 = *(a2 + 32);
        if (v100 == 0xFFFF)
        {
          v101 = *(a2 + 240);
          v100 = *(a2 + 240);
          *(a2 + 32) = v101;
          *(a2 + 4 * v101 + 22) = 3;
          *(a2 + 240) = v101 + 1;
        }

        *&v481[1] = v100 << 48;
        v102 = *(a2 + 228);
        if (v102 == 0xFFFF)
        {
          v102 = *(a2 + 246);
          *(a2 + 228) = v102;
          *(a2 + 246) = v102 + 1;
        }

        *(&v481[0] + 1) = (v102 << 48) | 0x72679000;
        (*(a2 + 256))(a2, v481);
        v96 = v473;
      }

      memset(v481 + 8, 0, 72);
      v103 = *(a2 + 16);
      *(a2 + 16) = 3;
      *&v481[0] = (8 * (v103 & 7)) | 0x83100080FC3;
      if ((*v96 & 0x20) != 0)
      {
        v127 = *(a2 + 32);
        if (v127 == 0xFFFF)
        {
          v128 = *(a2 + 240);
          v127 = *(a2 + 240);
          *(a2 + 32) = v128;
          *(a2 + 4 * v128 + 22) = 3;
          *(a2 + 240) = v128 + 1;
        }

        v105 = v127 << 48;
      }

      else
      {
        v104 = *(a2 + 228);
        if (v104 == 0xFFFF)
        {
          v104 = *(a2 + 246);
          *(a2 + 228) = v104;
          *(a2 + 246) = v104 + 1;
        }

        v105 = (v104 << 48) | 0x19C840;
      }

      *&v481[1] = v105 | 0x10;
      v129 = a2 + 84;
      v130 = *(a2 + 148);
      if (v130 == 0xFFFF)
      {
        v131 = *(a2 + 242);
        v130 = *(a2 + 242);
        *(a2 + 148) = v131;
        *(v129 + 4 * v131 + 2) = 16;
        *(a2 + 242) = v131 + 1;
      }

      *(&v481[1] + 1) = ((v130 << 48) | 0x1FE40) + 64;
      v132 = *(a2 + 152);
      if (v132 == 0xFFFF)
      {
        v133 = *(a2 + 242);
        v132 = *(a2 + 242);
        *(a2 + 152) = v133;
        *(v129 + 4 * v133 + 2) = 17;
        *(a2 + 242) = v133 + 1;
      }

      *&v481[2] = ((v132 << 48) | 0x1FE40) + 64;
      v134 = *(a2 + 228);
      if (v134 == 0xFFFF)
      {
        v134 = *(a2 + 246);
        *(a2 + 228) = v134;
        *(a2 + 246) = v134 + 1;
      }

      v135 = (v134 << 48) | 0x72679000;
      goto LABEL_859;
    }

    memset(&v481[2], 0, 48);
    v113 = *(a2 + 16);
    *(a2 + 16) = 2;
    *&v481[0] = (8 * (v113 & 7)) | 0x3100080882;
    v114 = *(a2 + 32);
    if (v114 == 0xFFFF)
    {
      v115 = *(a2 + 240);
      v114 = *(a2 + 240);
      *(a2 + 32) = v115;
      *(a2 + 4 * v115 + 22) = 3;
      *(a2 + 240) = v115 + 1;
    }

    *&v481[1] = v114 << 48;
    v116 = *(a2 + 152);
    if (v116 == 0xFFFF)
    {
      v117 = *(a2 + 242);
      v116 = *(a2 + 242);
      *(a2 + 152) = v117;
      *(a2 + 4 * v117 + 86) = 17;
      *(a2 + 242) = v117 + 1;
    }

    *(&v481[1] + 1) = (v116 << 48) | 0xAA80;
    v118 = *(a2 + 228);
    if (v118 == 0xFFFF)
    {
      v118 = *(a2 + 246);
      *(a2 + 228) = v118;
      *(a2 + 246) = v118 + 1;
    }

    *(&v481[0] + 1) = (v118 << 48) | 0x72679000;
    (*(a2 + 256))(a2, v481);
    memset(&v481[1], 0, 64);
    v119 = *(a2 + 16);
    *(a2 + 16) = 2;
    *&v481[0] = (8 * (v119 & 7)) | 0x3100080882;
    v120 = *(a2 + 228);
    if (v120 == 0xFFFF)
    {
      v123 = *(a2 + 246);
      v124 = *(a2 + 246);
      *(a2 + 228) = v123;
      v125 = v124 + 1;
      *(a2 + 246) = v124 + 1;
      v122 = (v123 << 48) | 0x19C840;
      *&v481[1] = v122;
      if ((v125 & 0x10000) != 0)
      {
        *(a2 + 228) = v125;
        *(a2 + 246) = 1;
        v122 = 1689664;
        v126 = 1919389696;
LABEL_852:
        *(&v481[1] + 1) = v122;
        *(&v481[0] + 1) = v126;
        (*(a2 + 256))(a2, v481);
        memset(&v481[1], 0, 64);
        v442 = *(a2 + 16);
        *(a2 + 16) = 1;
        *&v481[0] = (8 * (v442 & 7)) | 0x100080401;
LABEL_853:
        v443 = *(a2 + 228);
        if (v443 == 0xFFFF)
        {
          v445 = *(a2 + 246);
          v446 = *(a2 + 246);
          *(a2 + 228) = v445;
          v447 = v446 + 1;
          *(a2 + 246) = v447;
          *&v481[1] = (v445 << 48) | 0x50;
          if ((v447 & 0x10000) != 0)
          {
            v444 = 0;
            *(a2 + 228) = v447;
            *(a2 + 246) = 1;
          }

          else
          {
            v444 = v445 << 48;
          }
        }

        else
        {
          v444 = v443 << 48;
          *&v481[1] = (v443 << 48) | 0x50;
        }

        v135 = v444 | 0x72679000;
LABEL_859:
        *(&v481[0] + 1) = v135;
        (*(a2 + 256))(a2, v481);
        v96 = v473;
        goto LABEL_860;
      }

      v121 = v123 << 48;
    }

    else
    {
      v121 = v120 << 48;
      v122 = (v120 << 48) | 0x19C840;
      *&v481[1] = v122;
    }

    v126 = v121 | 0x72679000;
    goto LABEL_852;
  }

  return result;
}

uint64_t gleFStateProgram_End(uint64_t result, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (!*(a2 + 248))
  {
    *(a2 + 248) = 1;
    if ((*(result + 2) & 2) == 0)
    {
      v3 = 1689600;
      v13 = 0uLL;
      v14 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      if (*(a2 + 251))
      {
        v4 = 0x3100180000;
      }

      else
      {
        v4 = 0x3100080000;
      }

      *&v10 = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 1;
      *(a2 + 16) = 1;
      if (*(a2 + 249))
      {
        v5 = *(a2 + 208);
        v3 = 1689664;
        if (v5 == 0xFFFF)
        {
          v5 = *(a2 + 246);
          *(a2 + 208) = v5;
          *(a2 + 246) = v5 + 1;
        }
      }

      else
      {
        v5 = *(a2 + 24);
        if (v5 == 0xFFFF)
        {
          v6 = *(a2 + 240);
          v5 = *(a2 + 240);
          *(a2 + 24) = v6;
          *(a2 + 4 * v6 + 22) = 1;
          *(a2 + 240) = v6 + 1;
        }
      }

      *&v11 = v3 | (v5 << 48);
      v7 = *(a2 + 172);
      if (v7 == 0xFFFF)
      {
        v8 = *(a2 + 244);
        v7 = *(a2 + 244);
        *(a2 + 172) = v8;
        *(a2 + 172 + 4 * v8 + 2) = 0;
        *(a2 + 244) = v8 + 1;
      }

      *(&v10 + 1) = (v7 << 48) | 0x7267B000;
      result = (*(a2 + 256))(a2, &v10);
    }

    *(a2 + 250) = 1;
  }

  if ((*(a2 + 280) & 1) == 0)
  {
    v9 = **(*a2 + 104);
    if (v9)
    {
      *(v9 + 24) |= 0x4000uLL;
    }
  }

  return result;
}

void gleFStateProgram_AddAttribs(unint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 251);
  v5 = *a1;
  v6 = *(a2 + 272);
  if (v6)
  {
    v7 = (v6 + *(v6 + 8));
    v8 = gleAttribBindingSize(*(a2 + 240));
    bzero(v7, v8);
    v9 = *(a2 + 240);
    *v7 = v9;
  }

  else
  {
    v7 = 0;
    v9 = *(a2 + 240);
  }

  if (v9 >= 1)
  {
    v10 = 0;
    v11 = (v5 & 1) << 8;
    v12 = 195;
    if (!v4)
    {
      v12 = 193;
    }

    v13 = v12 | 0xC00;
    v14 = v12 | 0x800;
    v15 = v12 & 3 | 0x2C08;
    v16 = v12 & 3 | 0x3040;
    v17 = v7 + 3;
    for (i = 22; ; i += 4)
    {
      v19 = *(a2 + i);
      *&v28 = 0;
      *(&v28 + 1) = v10;
      if (v19 <= 11)
      {
        break;
      }

      if (v19 > 13)
      {
        if (v19 == 14)
        {
          v23 = (*a1 >> 10) & 0x8000;
          v24 = v14 | v11;
LABEL_26:
          v22 = v24 | v23 | 0x100000000;
        }

        else
        {
          if (v19 == 15)
          {
            v23 = (*a1 >> 10) & 0x8000;
            v24 = v13 | v11;
            goto LABEL_26;
          }

LABEL_27:
          v25 = (1 << (v19 - 4)) & *(a1 + 1);
          v22 = (((v19 + 4) & 0x3F) << 32) | 0x70C1;
          if (v25)
          {
            v22 = 12481;
          }
        }

LABEL_29:
        *&v28 = v22;
        goto LABEL_30;
      }

      if (v19 == 12)
      {
        *&v28 = v16;
        v22 = v16;
      }

      else
      {
        *&v28 = v15;
        v22 = v15;
      }

LABEL_30:
      if (*a2)
      {
        PPStreamAddAttribBinding(*a2, &v28);
      }

      else
      {
        *(v17 - 1) = (v22 >> 2) & 0x3F00 | *(v17 - 1) & 0xFFFFC000 | v22;
        v26 = (v22 >> 10) & 0x1F;
        if (v26 > 0xD)
        {
          if (v26 != 14)
          {
            if (v26 == 28)
            {
              *v17 = *v17 & 0xFFFFFE00 | HIDWORD(v22);
            }

            goto LABEL_41;
          }

          v27 = BYTE4(v22) & 0x1F | (32 * (*v17 >> 5));
        }

        else
        {
          if (v26 != 2 && v26 != 3)
          {
            goto LABEL_41;
          }

          v27 = BYTE4(v22) & 1 | (2 * (*v17 >> 1));
        }

        *v17 = v27;
      }

LABEL_41:
      ++v10;
      v17 += 2;
      if (v10 >= *(a2 + 240))
      {
        return;
      }
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        if (v19 != 3)
        {
          goto LABEL_27;
        }

        v22 = 0x500007041;
        goto LABEL_29;
      }

      v20 = (*a1 >> 10) & 0x8000;
      v21 = v11 | v13;
    }

    else
    {
      if (!v19)
      {
        *&v28 = 1217;
        v22 = 1217;
        goto LABEL_30;
      }

      v20 = (*a1 >> 10) & 0x8000;
      v21 = v14 | v11;
    }

    v22 = v21 | v20;
    goto LABEL_29;
  }
}

char *gleFStateProgram_AddParams(char *result)
{
  v1 = result;
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(result + 34);
  if (v2)
  {
    v3 = v2 + *(v2 + 4);
    v4 = *(result + 121);
    v5 = *(result + 121);
    *v3 = v4;
    *(v3 + 8) = v4;
  }

  else
  {
    v3 = 0;
    v5 = *(result + 121);
  }

  if (v5 >= 1)
  {
    v6 = 0;
    if (result[251])
    {
      v7 = 195;
    }

    else
    {
      v7 = 193;
    }

    v8 = 86;
    while (1)
    {
      v9 = *&v1[v8];
      *&v14 = v7;
      *(&v14 + 1) = v6;
      if (v9 <= 7)
      {
        v10 = v7 | (v9 << 32) | 0x1600;
        goto LABEL_13;
      }

      if ((v9 & 0xFFFFFFF8) == 8)
      {
        v10 = v7 | ((v9 & 7) << 32) | 0x1700;
        goto LABEL_13;
      }

      if (v9 <= 0x12u)
      {
        break;
      }

      switch(v9)
      {
        case 0x13u:
          result = *v1;
          if (*v1)
          {
            v15 = xmmword_23A2A61F0;
            goto LABEL_36;
          }

          break;
        case 0x14u:
          result = *v1;
          if (*v1)
          {
            v15 = 0uLL;
LABEL_36:
            v12 = *(result + 16);
            PPStreamAddConstant(result, &v15);
            v10 = v14 & 0xFFFF0000FFFFE0FFLL | ((*(v12 + 16) - 1) << 32) | 0x600;
LABEL_13:
            *&v14 = v10;
            goto LABEL_14;
          }

          break;
        case 0x15u:
          result = *v1;
          if (*v1)
          {
            v15 = xmmword_23A2A61F0;
            v11 = *(result + 16);
            PPStreamAddConstant(result, &v15);
            v10 = v14 & 0xFFFF0000FFFFE0F8 | ((*(v11 + 16) - 1) << 32) | 0x601;
            goto LABEL_13;
          }

          break;
        default:
          goto LABEL_14;
      }

LABEL_16:
      if (v3)
      {
        *(v3 + 16 + 8 * v6) = v14;
      }

      ++v6;
      v8 += 4;
      if (v6 >= *(v1 + 121))
      {
        goto LABEL_37;
      }
    }

    switch(v9)
    {
      case 0x10u:
        v10 = 6849;
        goto LABEL_13;
      case 0x11u:
        v10 = 7105;
        goto LABEL_13;
      case 0x12u:
        *&v14 = v7 | 0x1900;
        break;
    }

LABEL_14:
    result = *v1;
    if (*v1)
    {
      result = PPStreamAddParamBinding(result, &v14);
    }

    goto LABEL_16;
  }

LABEL_37:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *gleFStateProgram_AllocateAttribs(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x20000) != 0)
  {
    if ((v2 & 0x40) != 0)
    {
      v8 = *(a2 + 240);
      *(a2 + 32) = v8;
      *(a2 + 4 * v8 + 22) = 3;
      *(a2 + 240) = v8 + 1;
    }

    v9 = 0;
    v10 = (a2 + 36);
    do
    {
      if ((*result >> 8 >> v9))
      {
        v11 = *(a2 + 240);
        *v10 = v11;
        *(a2 + 20 + 4 * v11 + 2) = v9 + 4;
        *(a2 + 240) = v11 + 1;
      }

      ++v9;
      v10 += 2;
    }

    while (v9 != 8);
    goto LABEL_39;
  }

  if ((v2 & 0x40000) == 0)
  {
    if ((v2 & 0x80000) != 0)
    {
      v17 = *(a2 + 240);
      *(a2 + 24) = v17;
      *(a2 + 20 + 4 * v17 + 2) = 1;
      v5 = v17 + 1;
      *(a2 + 240) = v17 + 1;
      if (*(result + 3))
      {
        *(a2 + 76) = v5;
        *(a2 + 20 + 4 * v5 + 2) = 14;
        v5 = v17 + 2;
      }

      v15 = 4;
      v16 = 36;
      goto LABEL_38;
    }

    v3 = *(a2 + 240);
    v4 = a2 + 20;
    *(a2 + 24) = v3;
    *(a2 + 20 + 4 * v3 + 2) = 1;
    v5 = v3 + 1;
    *(a2 + 240) = v3 + 1;
    v6 = *result;
    if ((*result & 0x1000000) != 0)
    {
      *(a2 + 76) = v5;
      *(v4 + 4 * v5 + 2) = 14;
      v5 = v3 + 2;
      *(a2 + 240) = v3 + 2;
      v6 = *result;
    }

    if ((v6 & 8) != 0)
    {
      *(a2 + 28) = v5;
      *(v4 + 4 * v5 + 2) = 2;
      v7 = v5 + 1;
      *(a2 + 240) = v5 + 1;
      v6 = *result;
      if ((*result & 0x1000000) != 0)
      {
        *(a2 + 80) = v7;
        *(v4 + 4 * v7 + 2) = 15;
        v5 += 2;
        *(a2 + 240) = v5;
        v6 = *result;
      }

      else
      {
        ++v5;
      }
    }

    v18 = BYTE1(v2);
    if ((v6 & 0x40) != 0)
    {
      *(a2 + 32) = v5;
      *(v4 + 4 * v5++ + 2) = 3;
      *(a2 + 240) = v5;
      if (!v18)
      {
        goto LABEL_35;
      }
    }

    else if (!v18)
    {
      goto LABEL_35;
    }

    v19 = (a2 + 36);
    v20 = 4;
    do
    {
      if (v18)
      {
        *v19 = v5;
        *(v4 + 4 * v5++ + 2) = v20;
        *(a2 + 240) = v5;
      }

      ++v20;
      v19 += 2;
      v21 = v18 > 1;
      v18 >>= 1;
    }

    while (v21);
LABEL_35:
    if ((*(a2 + 280) & 1) != 0 && *(a2 + 252))
    {
      v15 = 13;
      v16 = 72;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if ((v2 & 0x400) != 0)
  {
    v12 = *(a2 + 240);
    *(a2 + 24) = v12;
    *(a2 + 20 + 4 * v12 + 2) = 1;
    v13 = v12 + 1;
    *(a2 + 240) = v12 + 1;
    v2 = *result;
    if ((*result & 0x1000000) != 0)
    {
      *(a2 + 76) = v13;
      *(a2 + 20 + 4 * v13 + 2) = 14;
      *(a2 + 240) = v12 + 2;
      v2 = *result;
    }
  }

  if ((v2 & 0x300) != 0)
  {
    v14 = *(a2 + 240);
    *(a2 + 36) = v14;
    *(a2 + 4 * v14 + 22) = 4;
    *(a2 + 240) = v14 + 1;
    v2 = *result;
  }

  if ((v2 & 0x1800) != 0)
  {
    v5 = *(a2 + 240);
    v15 = 5;
    v16 = 40;
LABEL_38:
    *(a2 + v16) = v5;
    *(a2 + 4 * v5 + 22) = v15;
    *(a2 + 240) = v5 + 1;
  }

LABEL_39:
  if (*(a2 + 280))
  {
    v22 = *(result + 1);
    if (*(result + 1))
    {
      v23 = 0;
      do
      {
        if ((v22 & 1) != 0 && ((1 << v23) & *(*(a2 + 264) + 4)) != 0)
        {
          v24 = *(a2 + 240);
          *(a2 + 68) = v24;
          *(a2 + 20 + 4 * v24 + 2) = 12;
          *(a2 + 240) = v24 + 1;
        }

        ++v23;
        v21 = v22 > 1;
        v22 >>= 1;
      }

      while (v21);
    }
  }

  return result;
}

uint64_t gleStateProgram_TextureSampleOp(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a1[a4 + 1];
  v5 = HIBYTE(v4) & 7;
  if ((HIBYTE(v4) & 7u) <= 2)
  {
    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_41;
      }

      v7 = 1;
    }

LABEL_15:
    v9 = 0x3100000002;
    v10 = *a1;
    v11 = 4288;
    if ((v4 & 0x80000000) != 0)
    {
      v11 = 4224;
    }

    v12 = (v4 & 0x80000000) != 0;
    v13 = 4352;
    v14 = 4416;
    if (v12)
    {
      v14 = 4352;
    }

    if ((v10 & 0x10000000000) != 0)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    if ((v10 & 0x10000000000) != 0)
    {
      v9 = 0x3100000003;
    }

    else
    {
      v13 = 4224;
    }

    if ((v10 & 0x10000000000) != 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = v11;
    }

    if (((1 << a4) & BYTE4(v10)) == 0)
    {
      v13 = v16;
    }

    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v17 = v9 | (8 * (*(a2 + 16) & 7)) | v13;
    *(a2 + 16) = v15;
    v18 = v17;
    v31 = v17 | 0x88000;
    v19 = *a1;
    if ((*a1 & 0x10) != 0)
    {
      v18 = v17;
      v31 = v17 | 0x80000088000;
    }

    v20 = (a2 + 20 + 4 * (a4 + 4));
    v21 = *v20;
    if (v21 == 0xFFFF)
    {
      v22 = *(a2 + 240);
      v21 = *(a2 + 240);
      *v20 = v22;
      *(a2 + 20 + 4 * v22 + 2) = a4 + 4;
      *(a2 + 240) = v22 + 1;
      v19 = *a1;
    }

    *(&v32 + 1) = ((v21 << 48) | 0x19C880) - 128;
    if ((v19 & 0x10000000000) != 0)
    {
      v23 = a4 + 8;
      v24 = (a2 + 84 + 4 * v23);
      v25 = *v24;
      if (v25 == 0xFFFF)
      {
        v26 = *(a2 + 242);
        v25 = *(a2 + 242);
        *v24 = v26;
        *(a2 + 84 + 4 * v26 + 2) = v23;
        *(a2 + 242) = v26 + 1;
      }

      *&v33 = (v25 << 48) | 0x19C880;
    }

    *(&v32 + (v18 & 7)) = *(&v32 + (v18 & 7)) & 0xFFFFFF80FFFFFFE0 | ((a4 & 0x7F) << 32) | v7;
    goto LABEL_40;
  }

  switch(v5)
  {
    case 3:
      v6 = (v4 & 0x4000000000000000) == 0;
      v7 = 5;
      v8 = 2;
      goto LABEL_11;
    case 4:
      v6 = (v4 & 0x4000000000000000) == 0;
      v7 = 6;
      v8 = 3;
LABEL_11:
      if (v6)
      {
        v7 = v8;
      }

      goto LABEL_15;
    case 5:
      v6 = (v4 & 0x4000000000000000) == 0;
      v7 = 7;
      v8 = 4;
      goto LABEL_11;
  }

LABEL_41:
  v36 = 0;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  if (*(a2 + 251))
  {
    v28 = 0x3100180000;
  }

  else
  {
    v28 = 0x3100080000;
  }

  v31 = v28 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 1;
  *(a2 + 16) = 1;
  v29 = *(a2 + 164);
  if (v29 == 0xFFFF)
  {
    v30 = *(a2 + 242);
    v29 = *(a2 + 242);
    *(a2 + 164) = v30;
    *(a2 + 4 * v30 + 86) = 20;
    *(a2 + 242) = v30 + 1;
  }

  *(&v32 + 1) = (v29 << 48) | 0x19C880;
LABEL_40:
  *&v32 = a3;
  return (*(a2 + 256))(a2, &v31);
}

uint64_t gleStateProgram_A_MODULATE(uint64_t a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v17 = 0;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v12 = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    v4 = *(a2 + 208);
    v5 = 1689664;
    if (v4 == 0xFFFF)
    {
      v4 = *(a2 + 246);
      *(a2 + 208) = v4;
      *(a2 + 246) = v4 + 1;
      v5 = 1689664;
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = 1689600;
    if (v4 == 0xFFFF)
    {
      v6 = *(a2 + 240);
      v4 = *(a2 + 240);
      *(a2 + 24) = v6;
      *(a2 + 4 * v6 + 22) = 1;
      *(a2 + 240) = v6 + 1;
    }
  }

  *(&v13 + 1) = v5 | (v4 << 48);
  v7 = *(a2 + 210);
  if (v7 == 0xFFFF)
  {
    v7 = *(a2 + 246);
    *(a2 + 210) = v7;
    *(a2 + 246) = v7 + 1;
  }

  v8 = 1918930944;
  *&v14 = (v7 << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    v9 = *(a2 + 172);
    v8 = 1918939136;
    if (v9 == 0xFFFF)
    {
      v10 = *(a2 + 244);
      v9 = *(a2 + 244);
      *(a2 + 172) = v10;
      *(a2 + 172 + 4 * v10 + 2) = 0;
      *(a2 + 244) = v10 + 1;
    }
  }

  else
  {
    v9 = *(a2 + 208);
    if (v9 == 0xFFFF)
    {
      v9 = *(a2 + 246);
      *(a2 + 208) = v9;
      *(a2 + 246) = v9 + 1;
    }
  }

  *&v13 = v8 | (v9 << 48);
  return (*(a2 + 256))(a2, &v12);
}

uint64_t gleStateProgram_A_REPLACE(uint64_t a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v14 = 0;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v9 = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 1;
  *(a2 + 16) = 1;
  v4 = *(a2 + 210);
  if (v4 == 0xFFFF)
  {
    v4 = *(a2 + 246);
    *(a2 + 210) = v4;
    *(a2 + 246) = v4 + 1;
  }

  v5 = 1918930944;
  *(&v10 + 1) = (v4 << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    v6 = *(a2 + 172);
    v5 = 1918939136;
    if (v6 == 0xFFFF)
    {
      v7 = *(a2 + 244);
      v6 = *(a2 + 244);
      *(a2 + 172) = v7;
      *(a2 + 172 + 4 * v7 + 2) = 0;
      *(a2 + 244) = v7 + 1;
    }
  }

  else
  {
    v6 = *(a2 + 208);
    if (v6 == 0xFFFF)
    {
      v6 = *(a2 + 246);
      *(a2 + 208) = v6;
      *(a2 + 246) = v6 + 1;
    }
  }

  *&v10 = v5 | (v6 << 48);
  return (*(a2 + 256))(a2, &v9);
}

uint64_t gleStateProgram_CheckDestInit(uint64_t result)
{
  if (!*(result + 250))
  {
    v16 = v1;
    v17 = v2;
    v3 = 1689600;
    v15 = 0;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    if (*(result + 251))
    {
      v4 = 0x3100180000;
    }

    else
    {
      v4 = 0x3100080000;
    }

    v10 = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(result + 16) & 7)) | 1;
    *(result + 16) = 1;
    if (*(result + 249))
    {
      v5 = *(result + 208);
      v3 = 1689664;
      if (v5 == 0xFFFF)
      {
        v5 = *(result + 246);
        *(result + 208) = v5;
        *(result + 246) = v5 + 1;
      }
    }

    else
    {
      v5 = *(result + 24);
      if (v5 == 0xFFFF)
      {
        v6 = *(result + 240);
        v5 = *(result + 240);
        *(result + 24) = v6;
        *(result + 4 * v6 + 22) = 1;
        *(result + 240) = v6 + 1;
      }
    }

    v7 = 1919389696;
    *(&v11 + 1) = v3 | (v5 << 48);
    if (*(result + 248))
    {
      v8 = *(result + 172);
      v7 = 1919397888;
      if (v8 == 0xFFFF)
      {
        v9 = *(result + 244);
        v8 = *(result + 244);
        *(result + 172) = v9;
        *(result + 172 + 4 * v9 + 2) = 0;
        *(result + 244) = v9 + 1;
      }
    }

    else
    {
      v8 = *(result + 208);
      if (v8 == 0xFFFF)
      {
        v8 = *(result + 246);
        *(result + 208) = v8;
        *(result + 246) = v8 + 1;
      }
    }

    *&v11 = v7 | (v8 << 48);
    return (*(result + 256))(result, &v10);
  }

  return result;
}

uint64_t gleStateProgram_RGB_MODULATE(uint64_t a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v17 = 0;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v12 = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    v4 = *(a2 + 208);
    v5 = 1689664;
    if (v4 == 0xFFFF)
    {
      v4 = *(a2 + 246);
      *(a2 + 208) = v4;
      *(a2 + 246) = v4 + 1;
      v5 = 1689664;
    }
  }

  else
  {
    v4 = *(a2 + 24);
    v5 = 1689600;
    if (v4 == 0xFFFF)
    {
      v6 = *(a2 + 240);
      v4 = *(a2 + 240);
      *(a2 + 24) = v6;
      *(a2 + 4 * v6 + 22) = 1;
      *(a2 + 240) = v6 + 1;
    }
  }

  *(&v13 + 1) = v5 | (v4 << 48);
  v7 = *(a2 + 210);
  if (v7 == 0xFFFF)
  {
    v7 = *(a2 + 246);
    *(a2 + 210) = v7;
    *(a2 + 246) = v7 + 1;
  }

  v8 = 1919356928;
  *&v14 = (v7 << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    v9 = *(a2 + 172);
    v8 = 1919365120;
    if (v9 == 0xFFFF)
    {
      v10 = *(a2 + 244);
      v9 = *(a2 + 244);
      *(a2 + 172) = v10;
      *(a2 + 172 + 4 * v10 + 2) = 0;
      *(a2 + 244) = v10 + 1;
    }
  }

  else
  {
    v9 = *(a2 + 208);
    if (v9 == 0xFFFF)
    {
      v9 = *(a2 + 246);
      *(a2 + 208) = v9;
      *(a2 + 246) = v9 + 1;
    }
  }

  *&v13 = v8 | (v9 << 48);
  return (*(a2 + 256))(a2, &v12);
}

uint64_t gleStateProgram_RGB_BLEND(uint64_t a1, uint64_t a2, int a3)
{
  gleStateProgram_CheckDestInit(a2);
  v22 = 0;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  if (*(a2 + 251))
  {
    v5 = 0x3100180000;
  }

  else
  {
    v5 = 0x3100080000;
  }

  v17 = v5 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0xF03;
  *(a2 + 16) = 3;
  v6 = *(a2 + 210);
  if (v6 == 0xFFFF)
  {
    v6 = *(a2 + 246);
    *(a2 + 210) = v6;
    *(a2 + 246) = v6 + 1;
  }

  v7 = 1689664;
  *(&v18 + 1) = (v6 << 48) | 0x19C840;
  v8 = (a2 + 84 + 4 * a3);
  v9 = *v8;
  if (v9 == 0xFFFF)
  {
    v10 = *(a2 + 242);
    v9 = *(a2 + 242);
    *v8 = v10;
    *(a2 + 84 + 4 * v10 + 2) = a3;
    *(a2 + 242) = v10 + 1;
  }

  *&v19 = ((v9 << 48) | 0x19C840) + 64;
  if (*(a2 + 249))
  {
    v11 = *(a2 + 208);
    if (v11 == 0xFFFF)
    {
      v11 = *(a2 + 246);
      *(a2 + 208) = v11;
      *(a2 + 246) = v11 + 1;
    }
  }

  else
  {
    v11 = *(a2 + 24);
    v7 = 1689600;
    if (v11 == 0xFFFF)
    {
      v12 = *(a2 + 240);
      v11 = *(a2 + 240);
      *(a2 + 24) = v12;
      *(a2 + 4 * v12 + 22) = 1;
      *(a2 + 240) = v12 + 1;
    }
  }

  v13 = 1919356928;
  *(&v19 + 1) = v7 | (v11 << 48);
  if (*(a2 + 248))
  {
    v14 = *(a2 + 172);
    v13 = 1919365120;
    if (v14 == 0xFFFF)
    {
      v15 = *(a2 + 244);
      v14 = *(a2 + 244);
      *(a2 + 172) = v15;
      *(a2 + 172 + 4 * v15 + 2) = 0;
      *(a2 + 244) = v15 + 1;
    }
  }

  else
  {
    v14 = *(a2 + 208);
    if (v14 == 0xFFFF)
    {
      v14 = *(a2 + 246);
      *(a2 + 208) = v14;
      *(a2 + 246) = v14 + 1;
    }
  }

  *&v18 = v13 | (v14 << 48);
  return (*(a2 + 256))(a2, &v17);
}

uint64_t gleStateProgram_RGB_REPLACE(uint64_t a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v14 = 0;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v9 = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 1;
  *(a2 + 16) = 1;
  v4 = *(a2 + 210);
  if (v4 == 0xFFFF)
  {
    v4 = *(a2 + 246);
    *(a2 + 210) = v4;
    *(a2 + 246) = v4 + 1;
  }

  v5 = 1919356928;
  *(&v10 + 1) = (v4 << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    v6 = *(a2 + 172);
    v5 = 1919365120;
    if (v6 == 0xFFFF)
    {
      v7 = *(a2 + 244);
      v6 = *(a2 + 244);
      *(a2 + 172) = v7;
      *(a2 + 172 + 4 * v7 + 2) = 0;
      *(a2 + 244) = v7 + 1;
    }
  }

  else
  {
    v6 = *(a2 + 208);
    if (v6 == 0xFFFF)
    {
      v6 = *(a2 + 246);
      *(a2 + 208) = v6;
      *(a2 + 246) = v6 + 1;
    }
  }

  *&v10 = v5 | (v6 << 48);
  return (*(a2 + 256))(a2, &v9);
}

uint64_t gleStateProgram_RGB_ADD(_BYTE *a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v4 = 1572864;
  if (!*(a2 + 251))
  {
    v4 = 0x80000;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
  v14 = v5 | 0x31000007C2;
  *(a2 + 16) = 2;
  if ((*a1 & 0x10) != 0)
  {
    v14 = v5 | 0x831000007C2;
  }

  v6 = *(a2 + 210);
  if (v6 == 0xFFFF)
  {
    v6 = *(a2 + 246);
    *(a2 + 210) = v6;
    *(a2 + 246) = v6 + 1;
  }

  v7 = 1689664;
  *(&v15 + 1) = (v6 << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    v8 = *(a2 + 208);
    if (v8 == 0xFFFF)
    {
      v8 = *(a2 + 246);
      *(a2 + 208) = v8;
      *(a2 + 246) = v8 + 1;
    }
  }

  else
  {
    v8 = *(a2 + 24);
    v7 = 1689600;
    if (v8 == 0xFFFF)
    {
      v9 = *(a2 + 240);
      v8 = *(a2 + 240);
      *(a2 + 24) = v9;
      *(a2 + 4 * v9 + 22) = 1;
      *(a2 + 240) = v9 + 1;
    }
  }

  v10 = 1919356928;
  *&v16 = v7 | (v8 << 48);
  if (*(a2 + 248))
  {
    v11 = *(a2 + 172);
    v10 = 1919365120;
    if (v11 == 0xFFFF)
    {
      v12 = *(a2 + 244);
      v11 = *(a2 + 244);
      *(a2 + 172) = v12;
      *(a2 + 172 + 4 * v12 + 2) = 0;
      *(a2 + 244) = v12 + 1;
    }
  }

  else
  {
    v11 = *(a2 + 208);
    if (v11 == 0xFFFF)
    {
      v11 = *(a2 + 246);
      *(a2 + 208) = v11;
      *(a2 + 246) = v11 + 1;
    }
  }

  *&v15 = v10 | (v11 << 48);
  return (*(a2 + 256))(a2, &v14);
}

uint64_t gleStateProgram_RGBA_MODULATE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  if (*(a2 + 251))
  {
    v8 = 0x3100180000;
  }

  else
  {
    v8 = 0x3100080000;
  }

  v17 = v8 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    v9 = *(a2 + 208);
    v10 = 1689664;
    if (v9 == 0xFFFF)
    {
      v9 = *(a2 + 246);
      *(a2 + 208) = v9;
      *(a2 + 246) = v9 + 1;
      v10 = 1689664;
    }
  }

  else
  {
    v9 = *(a2 + 24);
    v10 = 1689600;
    if (v9 == 0xFFFF)
    {
      v11 = *(a2 + 240);
      v9 = *(a2 + 240);
      *(a2 + 24) = v11;
      *(a2 + 4 * v11 + 22) = 1;
      *(a2 + 240) = v11 + 1;
    }
  }

  *(&v18 + 1) = v10 | (v9 << 48);
  v12 = *(a2 + 210);
  if (v12 == 0xFFFF)
  {
    v12 = *(a2 + 246);
    *(a2 + 210) = v12;
    *(a2 + 246) = v12 + 1;
  }

  v13 = 1919389696;
  *&v19 = (v12 << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    v14 = *(a2 + 172);
    v13 = 1919397888;
    if (v14 == 0xFFFF)
    {
      v15 = *(a2 + 244);
      v14 = *(a2 + 244);
      *(a2 + 172) = v15;
      *(a2 + 172 + 4 * v15 + 2) = 0;
      *(a2 + 244) = v15 + 1;
    }
  }

  else
  {
    v14 = *(a2 + 208);
    if (v14 == 0xFFFF)
    {
      v14 = *(a2 + 246);
      *(a2 + 208) = v14;
      *(a2 + 246) = v14 + 1;
    }
  }

  *&v18 = v13 | (v14 << 48);
  return (*(a2 + 256))(a2, &v17, a3, a4, a5, a6, a7, a8);
}

uint64_t gleStateProgram_RGBA_BLEND(uint64_t a1, uint64_t a2, int a3)
{
  v31 = 0;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  if (*(a2 + 251))
  {
    v5 = 0x3100180000;
  }

  else
  {
    v5 = 0x3100080000;
  }

  v26 = v5 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    v6 = *(a2 + 208);
    if (v6 == 0xFFFF)
    {
      v6 = *(a2 + 246);
      *(a2 + 208) = v6;
      *(a2 + 246) = v6 + 1;
    }

    v7 = (v6 << 48) | 0x40;
  }

  else
  {
    v8 = *(a2 + 24);
    if (v8 == 0xFFFF)
    {
      v9 = *(a2 + 240);
      v8 = *(a2 + 240);
      *(a2 + 24) = v9;
      *(a2 + 4 * v9 + 22) = 1;
      *(a2 + 240) = v9 + 1;
    }

    v7 = v8 << 48;
  }

  *(&v27 + 1) = v7 | 0x1FE00;
  v10 = *(a2 + 210);
  if (v10 == 0xFFFF)
  {
    v10 = *(a2 + 246);
    *(a2 + 210) = v10;
    *(a2 + 246) = v10 + 1;
  }

  *&v28 = (v10 << 48) | 0x1FE40;
  if (*(a2 + 248))
  {
    v11 = *(a2 + 172);
    v12 = 1918939136;
    if (v11 == 0xFFFF)
    {
      v13 = *(a2 + 244);
      v11 = *(a2 + 244);
      *(a2 + 172) = v13;
      *(a2 + 172 + 4 * v13 + 2) = 0;
      *(a2 + 244) = v13 + 1;
    }
  }

  else
  {
    v11 = *(a2 + 208);
    v12 = 1918930944;
    if (v11 == 0xFFFF)
    {
      v11 = *(a2 + 246);
      *(a2 + 208) = v11;
      *(a2 + 246) = v11 + 1;
      v12 = 1918930944;
    }
  }

  *&v27 = v12 | (v11 << 48);
  (*(a2 + 256))(a2, &v26);
  v31 = 0;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  if (*(a2 + 251))
  {
    v14 = 0x3100180000;
  }

  else
  {
    v14 = 0x3100080000;
  }

  v26 = (8 * (*(a2 + 16) & 7)) | 0xF03 | v14;
  *(a2 + 16) = 3;
  v15 = *(a2 + 210);
  if (v15 == 0xFFFF)
  {
    v15 = *(a2 + 246);
    *(a2 + 210) = v15;
    *(a2 + 246) = v15 + 1;
  }

  v16 = 1689664;
  *(&v27 + 1) = (v15 << 48) | 0x19C840;
  v17 = (a2 + 84 + 4 * a3);
  v18 = *v17;
  if (v18 == 0xFFFF)
  {
    v19 = *(a2 + 242);
    v18 = *(a2 + 242);
    *v17 = v19;
    *(a2 + 84 + 4 * v19 + 2) = a3;
    *(a2 + 242) = v19 + 1;
  }

  *&v28 = ((v18 << 48) | 0x19C840) + 64;
  if (*(a2 + 249))
  {
    v20 = *(a2 + 208);
    if (v20 == 0xFFFF)
    {
      v20 = *(a2 + 246);
      *(a2 + 208) = v20;
      *(a2 + 246) = v20 + 1;
    }
  }

  else
  {
    v20 = *(a2 + 24);
    v16 = 1689600;
    if (v20 == 0xFFFF)
    {
      v21 = *(a2 + 240);
      v20 = *(a2 + 240);
      *(a2 + 24) = v21;
      *(a2 + 4 * v21 + 22) = 1;
      *(a2 + 240) = v21 + 1;
    }
  }

  *(&v28 + 1) = v16 | (v20 << 48);
  if (*(a2 + 248))
  {
    v22 = *(a2 + 172);
    v23 = 1919365120;
    if (v22 == 0xFFFF)
    {
      v24 = *(a2 + 244);
      v22 = *(a2 + 244);
      *(a2 + 172) = v24;
      *(a2 + 172 + 4 * v24 + 2) = 0;
      *(a2 + 244) = v24 + 1;
    }
  }

  else
  {
    v22 = *(a2 + 208);
    v23 = 1919356928;
    if (v22 == 0xFFFF)
    {
      v22 = *(a2 + 246);
      *(a2 + 208) = v22;
      *(a2 + 246) = v22 + 1;
    }
  }

  *&v27 = v23 | (v22 << 48);
  return (*(a2 + 256))(a2, &v26);
}

uint64_t gleStateProgram_RGBA_ADD(_BYTE *a1, uint64_t a2)
{
  v26 = 0;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v3 = 1572864;
  if (!*(a2 + 251))
  {
    v3 = 0x80000;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
  v21 = v4 | 0x31000007C2;
  *(a2 + 16) = 2;
  if ((*a1 & 0x10) != 0)
  {
    v21 = v4 | 0x831000007C2;
  }

  v5 = *(a2 + 210);
  if (v5 == 0xFFFF)
  {
    v5 = *(a2 + 246);
    *(a2 + 210) = v5;
    *(a2 + 246) = v5 + 1;
  }

  *(&v22 + 1) = (v5 << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    v6 = *(a2 + 208);
    v7 = 1689664;
    if (v6 == 0xFFFF)
    {
      v6 = *(a2 + 246);
      *(a2 + 208) = v6;
      *(a2 + 246) = v6 + 1;
      v7 = 1689664;
    }
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = 1689600;
    if (v6 == 0xFFFF)
    {
      v8 = *(a2 + 240);
      v6 = *(a2 + 240);
      *(a2 + 24) = v8;
      *(a2 + 4 * v8 + 22) = 1;
      *(a2 + 240) = v8 + 1;
    }
  }

  v9 = 1918930944;
  *&v23 = v7 | (v6 << 48);
  if (*(a2 + 248))
  {
    v10 = *(a2 + 172);
    v11 = 1919365120;
    if (v10 == 0xFFFF)
    {
      v12 = *(a2 + 244);
      v10 = *(a2 + 244);
      *(a2 + 172) = v12;
      *(a2 + 172 + 4 * v12 + 2) = 0;
      *(a2 + 244) = v12 + 1;
    }
  }

  else
  {
    v10 = *(a2 + 208);
    v11 = 1919356928;
    if (v10 == 0xFFFF)
    {
      v10 = *(a2 + 246);
      *(a2 + 208) = v10;
      *(a2 + 246) = v10 + 1;
    }
  }

  *&v22 = v11 | (v10 << 48);
  (*(a2 + 256))(a2, &v21);
  v26 = 0;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  if (*(a2 + 251))
  {
    v13 = 0x3100180000;
  }

  else
  {
    v13 = 0x3100080000;
  }

  v21 = v13 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0x882;
  *(a2 + 16) = 2;
  if (*(a2 + 249))
  {
    v14 = *(a2 + 208);
    v15 = 1689664;
    if (v14 == 0xFFFF)
    {
      v14 = *(a2 + 246);
      *(a2 + 208) = v14;
      *(a2 + 246) = v14 + 1;
      v15 = 1689664;
    }
  }

  else
  {
    v14 = *(a2 + 24);
    v15 = 1689600;
    if (v14 == 0xFFFF)
    {
      v16 = *(a2 + 240);
      v14 = *(a2 + 240);
      *(a2 + 24) = v16;
      *(a2 + 4 * v16 + 22) = 1;
      *(a2 + 240) = v16 + 1;
    }
  }

  *(&v22 + 1) = v15 | (v14 << 48);
  v17 = *(a2 + 210);
  if (v17 == 0xFFFF)
  {
    v17 = *(a2 + 246);
    *(a2 + 210) = v17;
    *(a2 + 246) = v17 + 1;
  }

  *&v23 = (v17 << 48) | 0x19C840;
  if (*(a2 + 248))
  {
    v18 = *(a2 + 172);
    v9 = 1918939136;
    if (v18 == 0xFFFF)
    {
      v19 = *(a2 + 244);
      v18 = *(a2 + 244);
      *(a2 + 172) = v19;
      *(a2 + 172 + 4 * v19 + 2) = 0;
      *(a2 + 244) = v19 + 1;
    }
  }

  else
  {
    v18 = *(a2 + 208);
    if (v18 == 0xFFFF)
    {
      v18 = *(a2 + 246);
      *(a2 + 208) = v18;
      *(a2 + 246) = v18 + 1;
    }
  }

  *&v22 = v9 | (v18 << 48);
  return (*(a2 + 256))(a2, &v21);
}

uint64_t gleStateProgram_I_BLEND(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  if (*(a2 + 251))
  {
    v8 = 0x3100180000;
  }

  else
  {
    v8 = 0x3100080000;
  }

  v20 = v8 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0xF03;
  *(a2 + 16) = 3;
  v9 = *(a2 + 210);
  if (v9 == 0xFFFF)
  {
    v9 = *(a2 + 246);
    *(a2 + 210) = v9;
    *(a2 + 246) = v9 + 1;
  }

  v10 = 1689664;
  *(&v21 + 1) = (v9 << 48) | 0x19C840;
  v11 = (a2 + 84 + 4 * a3);
  v12 = *v11;
  if (v12 == 0xFFFF)
  {
    v13 = *(a2 + 242);
    v12 = *(a2 + 242);
    *v11 = v13;
    *(a2 + 84 + 4 * v13 + 2) = a3;
    *(a2 + 242) = v13 + 1;
  }

  *&v22 = ((v12 << 48) | 0x19C840) + 64;
  if (*(a2 + 249))
  {
    v14 = *(a2 + 208);
    if (v14 == 0xFFFF)
    {
      v14 = *(a2 + 246);
      *(a2 + 208) = v14;
      *(a2 + 246) = v14 + 1;
    }
  }

  else
  {
    v14 = *(a2 + 24);
    v10 = 1689600;
    if (v14 == 0xFFFF)
    {
      v15 = *(a2 + 240);
      v14 = *(a2 + 240);
      *(a2 + 24) = v15;
      *(a2 + 4 * v15 + 22) = 1;
      *(a2 + 240) = v15 + 1;
    }
  }

  v16 = 1919389696;
  *(&v22 + 1) = v10 | (v14 << 48);
  if (*(a2 + 248))
  {
    v17 = *(a2 + 172);
    v16 = 1919397888;
    if (v17 == 0xFFFF)
    {
      v18 = *(a2 + 244);
      v17 = *(a2 + 244);
      *(a2 + 172) = v18;
      *(a2 + 172 + 4 * v18 + 2) = 0;
      *(a2 + 244) = v18 + 1;
    }
  }

  else
  {
    v17 = *(a2 + 208);
    if (v17 == 0xFFFF)
    {
      v17 = *(a2 + 246);
      *(a2 + 208) = v17;
      *(a2 + 246) = v17 + 1;
    }
  }

  *&v21 = v16 | (v17 << 48);
  return (*(a2 + 256))(a2, &v20, a3, a4, a5, a6, a7, a8);
}

uint64_t gleStateProgram_I_ADD(_BYTE *a1, uint64_t a2)
{
  v17 = 0;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v2 = 1572864;
  if (!*(a2 + 251))
  {
    v2 = 0x80000;
  }

  v3 = v2 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7));
  v12 = v3 | 0x31000007C2;
  *(a2 + 16) = 2;
  if ((*a1 & 0x10) != 0)
  {
    v12 = v3 | 0x831000007C2;
  }

  v4 = *(a2 + 210);
  if (v4 == 0xFFFF)
  {
    v4 = *(a2 + 246);
    *(a2 + 210) = v4;
    *(a2 + 246) = v4 + 1;
  }

  v5 = 1689664;
  *(&v13 + 1) = (v4 << 48) | 0x19C840;
  if (*(a2 + 249))
  {
    v6 = *(a2 + 208);
    if (v6 == 0xFFFF)
    {
      v6 = *(a2 + 246);
      *(a2 + 208) = v6;
      *(a2 + 246) = v6 + 1;
    }
  }

  else
  {
    v6 = *(a2 + 24);
    v5 = 1689600;
    if (v6 == 0xFFFF)
    {
      v7 = *(a2 + 240);
      v6 = *(a2 + 240);
      *(a2 + 24) = v7;
      *(a2 + 4 * v7 + 22) = 1;
      *(a2 + 240) = v7 + 1;
    }
  }

  v8 = 1919389696;
  *&v14 = v5 | (v6 << 48);
  if (*(a2 + 248))
  {
    v9 = *(a2 + 172);
    v8 = 1919397888;
    if (v9 == 0xFFFF)
    {
      v10 = *(a2 + 244);
      v9 = *(a2 + 244);
      *(a2 + 172) = v10;
      *(a2 + 172 + 4 * v10 + 2) = 0;
      *(a2 + 244) = v10 + 1;
    }
  }

  else
  {
    v9 = *(a2 + 208);
    if (v9 == 0xFFFF)
    {
      v9 = *(a2 + 246);
      *(a2 + 208) = v9;
      *(a2 + 246) = v9 + 1;
    }
  }

  *&v13 = v8 | (v9 << 48);
  return (*(a2 + 256))(a2, &v12);
}

uint64_t gleStateProgram_RGBA_DECAL(uint64_t a1, uint64_t a2)
{
  gleStateProgram_CheckDestInit(a2);
  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  if (*(a2 + 251))
  {
    v3 = 0x3100180000;
  }

  else
  {
    v3 = 0x3100080000;
  }

  v15 = v3 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a2 + 16) & 7)) | 0xF03;
  *(a2 + 16) = 3;
  v4 = *(a2 + 210);
  if (v4 == 0xFFFF)
  {
    v6 = *(a2 + 246);
    v7 = *(a2 + 246);
    *(a2 + 210) = v6;
    *(a2 + 246) = ++v7;
    *(&v16 + 1) = (v6 << 48) | 0x1FE40;
    if ((v7 & 0x10000) != 0)
    {
      v6 = *(a2 + 246);
      *(a2 + 210) = v6;
      *(a2 + 246) = v6 + 1;
    }

    v5 = v6 << 48;
  }

  else
  {
    v5 = v4 << 48;
    *(&v16 + 1) = (v4 << 48) | 0x1FE40;
  }

  v8 = 1689664;
  *&v17 = v5 | 0x19C840;
  if (*(a2 + 249))
  {
    v9 = *(a2 + 208);
    if (v9 == 0xFFFF)
    {
      v9 = *(a2 + 246);
      *(a2 + 208) = v9;
      *(a2 + 246) = v9 + 1;
    }
  }

  else
  {
    v9 = *(a2 + 24);
    v8 = 1689600;
    if (v9 == 0xFFFF)
    {
      v10 = *(a2 + 240);
      v9 = *(a2 + 240);
      *(a2 + 24) = v10;
      *(a2 + 4 * v10 + 22) = 1;
      *(a2 + 240) = v10 + 1;
    }
  }

  v11 = 1919356928;
  *(&v17 + 1) = v8 | (v9 << 48);
  if (*(a2 + 248))
  {
    v12 = *(a2 + 172);
    v11 = 1919365120;
    if (v12 == 0xFFFF)
    {
      v13 = *(a2 + 244);
      v12 = *(a2 + 244);
      *(a2 + 172) = v13;
      *(a2 + 172 + 4 * v13 + 2) = 0;
      *(a2 + 244) = v13 + 1;
    }
  }

  else
  {
    v12 = *(a2 + 208);
    if (v12 == 0xFFFF)
    {
      v12 = *(a2 + 246);
      *(a2 + 208) = v12;
      *(a2 + 246) = v12 + 1;
    }
  }

  *&v16 = v11 | (v12 << 48);
  return (*(a2 + 256))(a2, &v15);
}

void glpPrimitiveTypeToLLVMType_cold_1(unsigned int a1)
{
  v1 = glpPrimitiveTypeToString(a1);
  printf("unhandled primitive type: %s\n", v1);
  abort();
}

void _glpSetCrashLogMessage_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_fault_impl(&dword_23A163000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}