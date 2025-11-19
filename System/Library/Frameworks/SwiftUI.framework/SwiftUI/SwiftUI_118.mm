uint64_t initializeWithTake for PopoverPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 17) = *(v8 + 17);
  *(v7 + 19) = *(v8 + 19);
  *(v7 + 20) = *(v8 + 20);
  *(v7 + 21) = *(v8 + 21);
  return a1;
}

uint64_t assignWithTake for PopoverPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v6) = *(v8 + 16);
  v9 = *v7;
  v10 = *(v7 + 8);
  v11 = *(v7 + 16);
  *v7 = *v8;
  *(v7 + 16) = v6;
  outlined consume of Environment<CGFloat?>.Content(v9, v10, v11);
  *(v7 + 17) = *(v8 + 17);
  *(v7 + 19) = *(v8 + 19);
  *(v7 + 20) = *(v8 + 20);
  *(v7 + 21) = *(v8 + 21);
  return a1;
}

uint64_t getEnumTagSinglePayload for PopoverPresentationModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 22))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v9 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v9 > 1)
  {
    return (v9 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for PopoverPresentationModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 22;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0xFE)
      {
        v13 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v13 + 16) = 0;
          *v13 = a2 - 255;
          *(v13 + 8) = 0;
        }

        else
        {
          *(v13 + 16) = -a2;
        }
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for PopoverItemStateProvider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v7 + 16;
  v10 = (v8 + 16) & ~v8;
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = *(v5 + 64) + 1;
  }

  v12 = v10 + v11;
  v13 = v7 & 0x100000;
  v14 = *a2;
  *a1 = *a2;
  if (v8 > 7 || v13 != 0 || ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    a1 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & v9));
  }

  else
  {
    v17 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = *v17;
    v18 = v17 + 1;
    v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = v19;
    v21 = v20 + 1;
    v22 = *(v5 + 48);

    if (v22(v18, 1, v4))
    {
      memcpy(v21, v18, v11);
    }

    else
    {
      (*(v6 + 16))(v21, v18, v4);
      (*(v6 + 56))(v21, 0, 1, v4);
    }

    v23 = ((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[1];
    v25 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v23;
    v25[1] = v24;
  }

  return a1;
}

void *initializeWithTake for PopoverItemStateProvider(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  if ((*(v8 + 48))(v11 & ~v9, 1, v7))
  {
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v14);
  }

  else
  {
    (*(v8 + 32))(v10 & ~v9, v11 & ~v9, v7);
    v16 = *(v8 + 56);
    v15 = v8 + 56;
    v16(v10 & ~v9, 0, 1, v7);
    v12 = *(v15 + 28);
    v13 = *(v15 + 8);
  }

  v17 = v13 + ((v9 + 16) & ~v9);
  if (!v12)
  {
    ++v17;
  }

  *((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for PopoverItemStateProvider(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 & 0xFFFFFFFFFFFFFFF8;
  *v7 = *(v6 & 0xFFFFFFFFFFFFFFF8);

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v7 + v11 + 8;
  v13 = v11 + 8 + v8;
  v14 = *(v10 + 48);
  LODWORD(v7) = v14(v12 & ~v11, 1, v9);
  v15 = v14(v13 & ~v11, 1, v9);
  if (v7)
  {
    if (v15)
    {
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
LABEL_6:
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 + 1;
      }

      memcpy((v12 & ~v11), (v13 & ~v11), v18);
      goto LABEL_12;
    }

    (*(v10 + 32))(v12 & ~v11, v13 & ~v11, v9);
    (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
  }

  else
  {
    if (v15)
    {
      (*(v10 + 8))(v12 & ~v11, v9);
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
      goto LABEL_6;
    }

    (*(v10 + 40))(v12 & ~v11, v13 & ~v11, v9);
  }

LABEL_12:
  v19 = *(v10 + 64) + ((v11 + 16) & ~v11);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  *((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for PopoverItemStateProvider(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for PopoverItemStateProvider(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v19 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v25 = *(v6 + 56);
      v26 = a2 + 1;

      v25((v19 + v10 + 8) & ~v10, v26);
    }

    else
    {
      if (v11 <= 3)
      {
        v22 = ~(-1 << (8 * v11));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v22 & (~v8 + a2);
        if (v11 <= 3)
        {
          v24 = v11;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v11);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t partial apply for closure #1 in closure #1 in PopoverItemStateProvider.popoverContent.getter()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for PopoverItemStateProvider() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v5 = type metadata accessor for PopoverItemStateProvider();
  return (*(v0 + *(v5 + 52) + v3))(v0 + v4);
}

uint64_t *initializeBufferWithCopyOfBuffer for PopoverPresentationModifier.PopoverModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((v6 + ((v5 + 4) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 4) & ~v5;
    v11 = (a2 + v5 + 4) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = (v6 + v10) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v6 + v11) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    outlined copy of Environment<CGFloat?>.Content(*v13, v15, v16);
    *v12 = v14;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 17) = *(v13 + 17);
    *(v12 + 19) = *(v13 + 19);
    *(v12 + 20) = *(v13 + 20);
    v17 = (v12 + 28) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v13 + 28) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *(v17 + 16) = *(v18 + 16);
  }

  return v3;
}

_DWORD *initializeWithTake for PopoverPresentationModifier.PopoverModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  *(v10 + 17) = *(v11 + 17);
  *(v10 + 19) = *(v11 + 19);
  *(v10 + 20) = *(v11 + 20);
  v13 = (v10 + 28) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 28) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 16) = *(v14 + 16);
  return a1;
}

_DWORD *assignWithTake for PopoverPresentationModifier.PopoverModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v9) = *(v11 + 16);
  v12 = *v10;
  v13 = *(v10 + 8);
  v14 = *(v10 + 16);
  *v10 = *v11;
  *(v10 + 16) = v9;
  outlined consume of Environment<CGFloat?>.Content(v12, v13, v14);
  *(v10 + 17) = *(v11 + 17);
  *(v10 + 19) = *(v11 + 19);
  *(v10 + 20) = *(v11 + 20);
  v15 = (v10 + 28) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v11 + 28) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  *(v15 + 8) = *(v16 + 8);

  *(v15 + 16) = *(v16 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for PopoverPresentationModifier.PopoverModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 4) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8) + 17;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v9);
    if (v9 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v7 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v9];
    if (a1[v9])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  v18 = &a1[v6 + 4] & ~v6;
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))(v18);
  }

  v19 = *((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  v20 = v19 - 1;
  if (v20 < 0)
  {
    v20 = -1;
  }

  return (v20 + 1);
}

void storeEnumTagSinglePayload for PopoverPresentationModifier.PopoverModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((v10 + ((v9 + 4) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = &a1[v9 + 4] & ~v9;
      if (v7 < 0x7FFFFFFE)
      {
        v20 = ((((v10 + v18) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v20 = a2 - 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((v10 + ((v9 + 4) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 28) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

unint64_t lazy protocol witness table accessor for type PopoverPresentationKeyType and conformance PopoverPresentationKeyType()
{
  result = lazy protocol witness table cache variable for type PopoverPresentationKeyType and conformance PopoverPresentationKeyType;
  if (!lazy protocol witness table cache variable for type PopoverPresentationKeyType and conformance PopoverPresentationKeyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PopoverPresentationKeyType and conformance PopoverPresentationKeyType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PopoverAttachmentBehavior and conformance PopoverAttachmentBehavior()
{
  result = lazy protocol witness table cache variable for type PopoverAttachmentBehavior and conformance PopoverAttachmentBehavior;
  if (!lazy protocol witness table cache variable for type PopoverAttachmentBehavior and conformance PopoverAttachmentBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PopoverAttachmentBehavior and conformance PopoverAttachmentBehavior);
  }

  return result;
}

void type metadata accessor for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGRect?(255);
    v11 = a5(a1, v10, a3, a4);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

double partial apply for closure #3 in PopoverPresentationModifier.PopoverModifier.body(content:)(char **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for PopoverPresentationModifier.PopoverModifier() - 8);
  *&result = closure #1 in PopoverPresentationModifier.PopoverModifier.body(content:)(a1, a2, a3, v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9, v10, a4).n128_u64[0];
  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _ss11AnyHashableVSgMaTm_3(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for PopoverContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PopoverContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 16) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 16) & ~v5;
    v11 = (a2 + v5 + 16) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = (v6 + v10) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v6 + v11) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 8);
    *(v12 + 16) = *(v13 + 16);
  }

  return v3;
}

uint64_t destroy for PopoverContent(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(*(*(a2 + 16) - 8) + 80) + 16) & ~*(*(*(a2 + 16) - 8) + 80));
}

_OWORD *initializeWithCopy for PopoverContent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);

  return a1;
}

void *assignWithCopy for PopoverContent(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);

  *(v10 + 16) = *(v11 + 16);
  return a1;
}

_OWORD *initializeWithTake for PopoverContent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  return a1;
}

_OWORD *assignWithTake for PopoverContent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);

  *(v10 + 16) = *(v11 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for PopoverContent(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 17;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = a1[v9]) == 0)
  {
LABEL_28:
    v18 = &a1[v6 + 16] & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void storeEnumTagSinglePayload for PopoverContent(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = &a1[v9 + 16] & ~v9;
      if (v7 < 0x7FFFFFFF)
      {
        v20 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v20 + 16) = 0;
          *v20 = a2 & 0x7FFFFFFF;
          *(v20 + 8) = 0;
        }

        else
        {
          *(v20 + 8) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    _ss11AnyHashableVSgMaTm_3(255, a3, a4, a5);
    v6 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<PopoverStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<PopoverStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<PopoverStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(255, &lazy cache variable for type metadata for StyleContextWriter<PopoverStyleContext>, MEMORY[0x1E697F788], MEMORY[0x1E697F780], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<PopoverStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.commitUpdates()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  *(v0 + *((v2 & v1) + 0xC8)) = 1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *((v2 & v1) + 0x60);
  *(v5 + 24) = *(v3 + 104);
  *(v5 + 40) = *((v2 & v1) + 0x78);
  *(v5 + 48) = v4;

  static Update.enqueueAction(reason:_:)();
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v43 = a1;
  v8 = type metadata accessor for ShadowListDataSource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v40 - v10;
  if (a2 == 0xD000000000000011 && 0x800000018CD4D770 == a3)
  {

    goto LABEL_5;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    v21 = MEMORY[0x18D00C850](a2, a3);
    v22 = MEMORY[0x18D00C850](0x646165487473694CLL, 0xEA00000000007265);

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v43 = [v43 dequeueReusableSupplementaryViewOfKind:v21 withReuseIdentifier:v22 forIndexPath:isa];

    swift_getAssociatedTypeWitness();
    v18 = swift_dynamicCastUnknownClassUnconditional();
    swift_getAssociatedConformanceWitness();
    PlatformListViewBase.updateViewGraphForDisplay(_:)(0);
    v24 = IndexPath.section.getter();
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v25 == a3)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        v35 = MEMORY[0x1E69E7D40];
        v27 = v9;
        v36 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x88);
        swift_beginAccess();
        v29 = v44;
        (*(v27 + 16))(v44, &v5[v36], v8);
        v37 = *((*v35 & *v5) + 0xA0);
        swift_beginAccess();
        v33 = *&v5[v37];
        outlined copy of Transaction?(v33);
        WitnessTable = swift_getWitnessTable();
        ListCoreDataSource.configureFooter(_:transaction:forSectionAtOffset:)(v18, v33, v24, v8, WitnessTable);
LABEL_15:
        outlined consume of ListItemTint?(v33);
        (*(v27 + 8))(v29, v8);
        return v18;
      }
    }

    v27 = v9;
    type metadata accessor for ListCollectionViewCell(0);
    v28 = swift_dynamicCastClass();
    v29 = v44;
    v30 = MEMORY[0x1E69E7D40];
    if (v28)
    {
      *(v28 + direct field offset for ListCollectionViewCellBase.shouldHugContent) = v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x140)];
    }

    v31 = *((*v30 & *v5) + 0x88);
    swift_beginAccess();
    (*(v27 + 16))(v29, &v5[v31], v8);
    v32 = *((*v30 & *v5) + 0xA0);
    swift_beginAccess();
    v33 = *&v5[v32];
    outlined copy of Transaction?(v33);
    v34 = swift_getWitnessTable();
    ListCoreDataSource.configureHeader(_:transaction:forSectionAtOffset:)(v18, v33, v24, v8, v34);
    goto LABEL_15;
  }

LABEL_5:
  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x88);
  swift_beginAccess();
  v40 = *(v9 + 16);
  v41 = v12;
  v13 = v44;
  v40(v44, &v5[v12], v8);
  LOBYTE(v12) = ShadowListDataSource.hasGlobalHeader.getter(v8);
  v42 = *(v9 + 8);
  v42(v13, v8);
  if (v12)
  {
    v14 = MEMORY[0x18D00C850](a2, a3);
    v15 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD4D770);

    v16 = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [v43 dequeueReusableSupplementaryViewOfKind:v14 withReuseIdentifier:v15 forIndexPath:v16];

    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();
    v40(v13, &v5[v41], v8);
    v19 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xA0);
    swift_beginAccess();
    v20 = *&v5[v19];
    outlined copy of Transaction?(v20);
    ShadowListDataSource.configureGlobalHeader(_:transaction:)(v18, v20, v8);
    outlined consume of ListItemTint?(v20);
    v42(v13, v8);
    return v18;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v27 = a1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v25 = type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  UICollectionViewListCoordinatorBase.currentSelection.getter(v14);
  if ((*(v15 + 48))(v14, 1, v4) == 1)
  {
    return (*(v9 + 8))(v14, v8);
  }

  (*(v15 + 32))(v18, v14, v4);
  v27(v18);
  if (static CoreTesting.isRunning.getter())
  {
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x110);
    swift_beginAccess();
    (*(v23 + 16))(v7, &v3[v20], v24);
    v21 = v25;
    v22 = *(v25 - 8);
    result = (*(v22 + 48))(v7, 1, v25);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      specialized Binding.wrappedValue.setter();
      (*(v15 + 8))(v18, v4);
      return (*(v22 + 8))(v7, v21);
    }
  }

  else
  {
    (*(v15 + 16))(v11, v18, v4);
    (*(v15 + 56))(v11, 0, 1, v4);
    specialized UICollectionViewListCoordinatorBase.pendingSelection.setter(v11);
    (*(v9 + 8))(v11, v8);
    return (*(v15 + 8))(v18, v4);
  }

  return result;
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:canPerformPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = IndexPath.section.getter();
  if (v9 == NSNotFound.getter())
  {
    return 0;
  }

  if ([a1 isEditing])
  {
    UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(a2, v8);
    v11 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness);
    (*(v6 + 8))(v8, v5);
    if (v11 == 1)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v13 = [a1 cellForItemAtIndexPath_];

      if (v13)
      {
        v14 = swift_getAssociatedTypeWitness();
        if (swift_dynamicCastUnknownClass())
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v16 = *(AssociatedConformanceWitness + 16);
          v17 = v13;
          v16(v20, v14, AssociatedConformanceWitness);

          v22[0] = v20[0];
          v22[1] = v20[1];
          v22[2] = v20[2];
          v22[3] = v20[3];
          v23 = v21;
          if (*(&v20[0] + 1) != 1)
          {
            v18 = *(&v20[0] + 1) != 0;
            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(v22, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
            return v18;
          }
        }

        else
        {
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v150 = *MEMORY[0x1E69E7D40] & v6;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v138 = &v128[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v142 = &v128[-v11];
  v144 = type metadata accessor for IndexPath();
  v147 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v153 = &v128[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = *((v7 & v6) + 0x70);
  v13 = *(v143 + 8);
  v14 = *((v7 & v6) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v148 = *(AssociatedTypeWitness - 8);
  v16 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v134 = &v128[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v131 = &v128[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v149 = &v128[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v128[-v22];
  v152 = *((v7 & v6) + 0x68);
  v154 = type metadata accessor for Binding();
  v156 = type metadata accessor for Optional();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v151 = &v128[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v137 = &v128[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v128[-v27];
  v158 = type metadata accessor for Optional();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v135 = &v128[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v133 = &v128[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v128[-v33];
  MEMORY[0x1EEE9AC00](v35);
  v159 = &v128[-v36];
  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(a2, &v128[-v36]);
  v141 = a2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v139 = a1;
  v38 = [a1 cellForItemAtIndexPath_];

  v146 = v14;
  v132 = v13;
  if (!v38)
  {
    goto LABEL_5;
  }

  v40 = swift_getAssociatedTypeWitness();
  v39 = swift_dynamicCastUnknownClass();
  if (!v39)
  {
    goto LABEL_5;
  }

  v130 = v28;
  v145 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = v38;
  v43 = *(AssociatedConformanceWitness + 16);
  v140 = v42;
  v44 = v42;
  v43(v161, v40, AssociatedConformanceWitness);
  v164 = v161[0];
  v165 = v161[1];
  v166 = v161[2];
  v167 = v161[3];
  v168 = v162;
  v160 = *(&v161[0] + 1);
  if (*(&v161[0] + 1) != 1)
  {
    v71 = v44;
    v72 = v164;
    v48 = v165;
    v73 = BYTE2(v164);
    v74 = [v139 isEditing];
    if (v73)
    {
      v75 = (*(v148 + 48))(v159, 1, v145);
      v49 = v157;
      v76 = v130;
      if (v75 != 1)
      {
        if (v72)
        {
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v164, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

          LODWORD(v149) = 0;
          v160 = 0;
          v48 = 0;
          AssociatedTypeWitness = v145;
          v50 = v153;
          v38 = v140;
          v51 = MEMORY[0x1E69E7D40];
          goto LABEL_46;
        }

        v129 = v74;
        LODWORD(v136) = v72;
        LODWORD(v149) = 0;
LABEL_33:
        AssociatedTypeWitness = v145;
        v51 = MEMORY[0x1E69E7D40];
        v95 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x110);
        swift_beginAccess();
        v96 = v155;
        v97 = &v3[v95];
        v98 = v156;
        (*(v155 + 16))(v76, v97, v156);
        v99 = (*(*(v154 - 8) + 48))(v76, 1);
        (*(v96 + 8))(v76, v98);
        if (v99 == 1)
        {
          v49 = v157;
          v50 = v153;
          v38 = v140;
          if ((v129 & 1) == 0)
          {
            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v164, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

LABEL_56:
            v160 = 0;
            v48 = 0;
            goto LABEL_8;
          }
        }

        else
        {
          v49 = v157;
          v50 = v153;
          v38 = v140;
          if ((v129 & 1) == 0)
          {

LABEL_42:
            if ((v149 & 1) == 0)
            {
              _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v164, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
              LODWORD(v149) = 0;
              goto LABEL_56;
            }

LABEL_43:
            v101 = v160;
            outlined copy of AppIntentExecutor?(v160);
            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v164, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
            if (v101)
            {

              v83 = v160;
              v84 = v136;
              goto LABEL_45;
            }

            v160 = 0;
            LODWORD(v149) = 1;
            if (v136)
            {
              goto LABEL_46;
            }

LABEL_8:
            v52 = v49;
            v53 = v48;
            v54 = *((*v51 & *v3) + 0x110);
            swift_beginAccess();
            v55 = v155;
            v56 = &v3[v54];
            v57 = v151;
            v58 = v156;
            (*(v155 + 16))(v151, v56, v156);
            if ((*(*(v154 - 8) + 48))(v57, 1) == 1)
            {
              outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v160);

              (*(v55 + 8))(v57, v58);
              v59 = v158;
              v49 = v52;
              return (*(v49 + 8))(v159, v59);
            }

            v145 = AssociatedTypeWitness;
            (*(v55 + 8))(v57, v58);
            v60 = *((*v51 & *v3) + 0xE0);
            swift_beginAccess();
            v61 = v142;
            outlined init with copy of SwipeActions.Configuration?(&v3[v60], v142, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
            v62 = v147;
            v63 = v144;
            if ((*(v147 + 48))(v61, 1, v144) == 1)
            {

              _s10Foundation9IndexPathVSgWOhTm_1(v61, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
              v59 = v158;
            }

            else
            {
              (*(v62 + 32))(v50, v61, v63);
              _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
              v69 = v50;
              if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
              {
                v136 = v53;
                v85 = v135;
                UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v50, v135);
                v86 = v148;
                v87 = v145;
                v49 = v52;
                if ((*(v148 + 48))(v85, 1, v145) == 1)
                {
                  v62 = v147;
                  (*(v147 + 8))(v69, v63);

                  v59 = v158;
                  (*(v52 + 8))(v85, v158);
                }

                else
                {
                  v140 = v38;
                  (*(v86 + 32))(v134, v85, v87);
                  v88 = IndexPath._bridgeToObjectiveC()().super.isa;
                  v89 = [v139 cellForItemAtIndexPath_];

                  v91 = v143;
                  v92 = v152;
                  if (v89)
                  {
                    v93 = swift_getAssociatedTypeWitness();
                    if (swift_dynamicCastUnknownClass() && (v94 = swift_getAssociatedConformanceWitness(), (*(v94 + 16))(&v164, v93, v94), *(&v164 + 1) != 1))
                    {
                      v116 = *(&v165 + 1);
                      v117 = v166;
                      outlined copy of AppIntentExecutor?(*(&v165 + 1));
                      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v164, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
                      v92 = v152;
                      if (v116)
                      {
                        v118 = swift_allocObject();
                        *(v118 + 16) = v116;
                        *(v118 + 24) = v117;
                        v119 = swift_allocObject();
                        *(v119 + 16) = partial apply for thunk for @callee_guaranteed () -> ();
                        *(v119 + 24) = v118;
                        v163 = 17;
                        swift_retain_n();
                        static Update.enqueueAction(reason:_:)();

                        v49 = v157;
                      }

                      v63 = v144;
                    }

                    else
                    {

                      v63 = v144;
                      v92 = v152;
                    }
                  }

                  MEMORY[0x1EEE9AC00](v90);
                  *&v128[-48] = v146;
                  *&v128[-40] = v92;
                  v120 = *(v150 + 120);
                  *&v128[-32] = v91;
                  *&v128[-24] = v120;
                  v121 = v134;
                  *&v128[-16] = v134;
                  UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #6 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:), &v128[-64]);
                  v122 = v153;
                  v123 = IndexPath._bridgeToObjectiveC()().super.isa;
                  [v139 deselectItemAtIndexPath:v123 animated:0];

                  v62 = v147;
                  (*(v147 + 8))(v122, v63);
                  (*(v148 + 8))(v121, v145);
                  v59 = v158;
                }

                v70 = v160;
                goto LABEL_62;
              }

              (*(v62 + 8))(v50, v63);

              v59 = v158;
            }

            v49 = v52;
            v70 = v160;
LABEL_62:
            if (v149)
            {
              if (v70)
              {
                outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v70);
                v124 = *(v62 + 16);
                v125 = v62;
                v126 = v138;
                v124(v138, v141, v63);
                (*(v125 + 56))(v126, 0, 1, v63);
                swift_beginAccess();
                outlined assign with take of IndexPath?(v126, &v3[v60], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
                swift_endAccess();
              }
            }

            else
            {
              outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v70);
            }

            return (*(v49 + 8))(v159, v59);
          }
        }

        if (one-time initialization token for allowNonMomentaryEditModeSelection != -1)
        {
          swift_once();
        }

        v100 = allowNonMomentaryEditModeSelection;

        if (!v100)
        {
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v164, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
          goto LABEL_56;
        }

        goto LABEL_42;
      }

      if ((v72 & 1) == 0)
      {
LABEL_20:
        v129 = v74;
        LODWORD(v136) = v72;
        LODWORD(v149) = 1;
        goto LABEL_33;
      }
    }

    else
    {
      v49 = v157;
      v76 = v130;
      if ((v72 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    LODWORD(v136) = v72;

    AssociatedTypeWitness = v145;
    v50 = v153;
    v38 = v140;
    v51 = MEMORY[0x1E69E7D40];
    goto LABEL_43;
  }

  AssociatedTypeWitness = v145;
  v38 = v140;
LABEL_5:
  MEMORY[0x1EEE9AC00](v39);
  *&v128[-16] = v3;
  v45 = *(v150 + 120);
  v46 = v152;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  static Update.ensure<A>(_:)();
  v47 = v164;
  if (v164 <= 1)
  {
    v160 = 0;
    v48 = 0;
    LODWORD(v149) = 1;
    v49 = v157;
    v50 = v153;
LABEL_7:
    v51 = MEMORY[0x1E69E7D40];
    goto LABEL_8;
  }

  v140 = v38;
  v64 = AssociatedTypeWitness;
  v65 = *(&v164 + 1);
  v66 = swift_allocObject();
  v66[2] = v146;
  v66[3] = v46;
  v66[4] = v143;
  v66[5] = v45;
  v66[6] = v47;
  v66[7] = v65;
  v67 = v158;
  v49 = v157;
  (*(v157 + 16))(v34, v159, v158);
  v68 = v148;
  if ((*(v148 + 48))(v34, 1, v64) == 1)
  {

    (*(v49 + 8))(v34, v67);
    v160 = 0;
    v48 = 0;
    LODWORD(v149) = 1;
    AssociatedTypeWitness = v64;
    v50 = v153;
    v38 = v140;
    goto LABEL_7;
  }

  v77 = v68 + 32;
  v78 = *(v68 + 32);
  v79 = v136;
  v78(v136, v34, v64);
  v80 = v149;
  v78(v149, v79, v64);
  v81 = (*(v77 + 48) + 64) & ~*(v77 + 48);
  v48 = swift_allocObject();
  v82 = v152;
  v48[2] = v146;
  v48[3] = v82;
  v48[4] = v143;
  v48[5] = v45;
  v48[6] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.ListCoreDataSource.SelectionValue>) -> (@out ());
  v48[7] = v66;
  v78(v48 + v81, v80, v64);
  v49 = v157;

  v83 = partial apply for closure #2 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:);
  v84 = 1;
  AssociatedTypeWitness = v64;
  v38 = v140;
  v51 = MEMORY[0x1E69E7D40];
LABEL_45:
  v102 = swift_allocObject();
  v160 = v83;
  *(v102 + 16) = v83;
  *(v102 + 24) = v48;
  v103 = swift_allocObject();
  *(v103 + 16) = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  *(v103 + 24) = v102;
  LOBYTE(v164) = 17;

  static Update.enqueueAction(reason:_:)();

  LODWORD(v149) = 1;
  v50 = v153;
  if ((v84 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_46:
  v136 = v48;
  v104 = *((*v51 & *v3) + 0x110);
  swift_beginAccess();
  v105 = v155;
  v106 = v137;
  v107 = v156;
  (*(v155 + 16))(v137, &v3[v104], v156);
  LODWORD(v104) = (*(*(v154 - 8) + 48))(v106, 1);
  (*(v105 + 8))(v106, v107);
  if (v104 != 1 && (v149 & 1) == 0)
  {
    LODWORD(v149) = 0;
    v48 = v136;
    goto LABEL_8;
  }

  v108 = v133;
  v109 = v158;
  (*(v49 + 16))(v133, v159, v158);
  v110 = v148;
  if ((*(v148 + 48))(v108, 1, AssociatedTypeWitness) == 1)
  {
    (*(v49 + 8))(v108, v109);
  }

  else
  {
    v111 = v131;
    v112 = (*(v110 + 32))(v131, v108, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v112);
    v113 = v152;
    *&v128[-48] = v146;
    *&v128[-40] = v113;
    v114 = *(v150 + 120);
    *&v128[-32] = v143;
    *&v128[-24] = v114;
    *&v128[-16] = v111;
    UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #6 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:), &v128[-64]);
    (*(v110 + 8))(v111, AssociatedTypeWitness);
  }

  v115 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v139 deselectItemAtIndexPath:v115 animated:1];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v160);

  v59 = v158;
  return (*(v49 + 8))(v159, v59);
}

uint64_t UICollectionViewListCoordinatorBase.canSelect(rowAt:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = (*MEMORY[0x1E69E7D40] & *v2);
  v28 = v7[14];
  v27 = *((v6 & v5) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(a2, v12);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    (*(v13 + 56))(a1, 1, 1, AssociatedTypeWitness);
    return 0;
  }

  else
  {
    v26 = a1;
    (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
    v18 = v7[15];
    v19 = v7[13];
    swift_getAssociatedConformanceWitness();
    v20 = WeakSelectionBasedStorage.$isSelectionEnabled.getter();
    if ((v20 & 0x100000000) != 0)
    {
      v17 = 1;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v20);
      v21 = v28;
      *(&v25 - 6) = v27;
      *(&v25 - 5) = v19;
      *(&v25 - 4) = v21;
      *(&v25 - 3) = v18;
      *(&v25 - 4) = v22;
      *(&v25 - 1) = v16;
      static Update.ensure<A>(_:)();
      v17 = v29;
    }

    v23 = v26;
    (*(v13 + 16))(v26, v16, AssociatedTypeWitness);
    (*(v13 + 56))(v23, 0, 1, AssociatedTypeWitness);
    (*(v13 + 8))(v16, AssociatedTypeWitness);
  }

  return v17;
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:selectionFollowsFocusForItemAt:)(void *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v18 - v6;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 cellForItemAtIndexPath_];

  if (v9)
  {
    v10 = swift_getAssociatedTypeWitness();
    v11 = swift_dynamicCastUnknownClass();
    if (v11)
    {
      v18 = v5;
      v19 = a2;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v13 = *(AssociatedConformanceWitness + 16);
      v14 = v9;
      v13(v21, v10, AssociatedConformanceWitness);

      if (v21[1] == 1)
      {
        a2 = v19;
      }

      else
      {
        v15 = v21[0];
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(v21, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        a2 = v19;
        if ((v15 & 1) == 0)
        {

          return 1;
        }
      }

      v5 = v18;
    }

    else
    {
    }
  }

  else
  {
    v11 = 0;
  }

  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(a2, v7);

  v16 = (*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness) != 1;
  (*(v5 + 8))(v7, v20);
  return v16;
}

void UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(void *a1, int a2)
{
  isEscapingClosureAtFileLocation = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v68 = *MEMORY[0x1E69E7D40] & v6;
  v8 = *((v7 & v6) + 0x60);
  v9 = type metadata accessor for Optional();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  v74 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v64 - v15;
  v65 = *((v7 & v6) + 0x70);
  v73 = v8;
  v16 = type metadata accessor for ListCoreBatchUpdates();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v64 - v18;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v64 - v21;
  *(isEscapingClosureAtFileLocation + *((v7 & v6) + 0xD8)) = 1;
  v75 = a2;
  if (a2)
  {
    UICollectionViewListCoordinatorBase.updateEditingState(_:)(a1);
  }

  v76 = a1;
  v23 = type metadata accessor for IndexPath();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = MEMORY[0x1E69E7D40];
  v25 = *((*MEMORY[0x1E69E7D40] & *isEscapingClosureAtFileLocation) + 0xE0);
  swift_beginAccess();
  outlined assign with take of IndexPath?(v22, isEscapingClosureAtFileLocation + v25, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
  swift_endAccess();
  v26 = *((*v24 & *isEscapingClosureAtFileLocation) + 0xB8);
  swift_beginAccess();
  v27 = *(v17 + 16);
  v27(v19, isEscapingClosureAtFileLocation + v26, v16);
  LOBYTE(v25) = ListCoreBatchUpdates.isEmpty.getter(v16);
  v69 = *(v17 + 8);
  v69(v19, v16);
  if ((v25 & 1) == 0)
  {
    v64 = v27;
    v28 = *((*v24 & *isEscapingClosureAtFileLocation) + 0xD0);
    swift_beginAccess();
    v29 = v70;
    v30 = v11;
    v31 = v11;
    v32 = v71;
    (*(v70 + 16))(v31, isEscapingClosureAtFileLocation + v28, v71);
    v33 = v73;
    if ((*(v74 + 48))(v30, 1, v73) != 1)
    {
LABEL_11:
      v45 = v33;
      v46 = v74;
      v47 = *(v74 + 32);
      v48 = v72;
      v47(v72, v30, v33);
      v49 = v67;
      (*(v46 + 16))(v67, v48, v33);
      v50 = (*(v46 + 80) + 56) & ~*(v46 + 80);
      v51 = (v66 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      *(v52 + 2) = v33;
      v53 = v68;
      v54 = v65;
      *(v52 + 3) = *(v68 + 104);
      *(v52 + 4) = v54;
      *(v52 + 5) = *(v53 + 120);
      *(v52 + 6) = isEscapingClosureAtFileLocation;
      v47(&v52[v50], v49, v33);
      v55 = v76;
      *&v52[v51] = v76;
      v56 = swift_allocObject();
      *(v56 + 16) = partial apply for closure #1 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
      *(v56 + 24) = v52;
      v81 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
      v82 = v56;
      aBlock = MEMORY[0x1E69E9820];
      v78 = 1107296256;
      v79 = thunk for @escaping @callee_guaranteed () -> ();
      v80 = &block_descriptor_90_0;
      v57 = _Block_copy(&aBlock);
      v58 = isEscapingClosureAtFileLocation;
      v59 = v55;

      v60 = swift_allocObject();
      *(v60 + 16) = v58;
      *(v60 + 24) = v59;
      *(v60 + 32) = v75 & 1;
      v81 = partial apply for closure #2 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
      v82 = v60;
      aBlock = MEMORY[0x1E69E9820];
      v78 = 1107296256;
      v79 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v80 = &block_descriptor_96_0;
      v61 = _Block_copy(&aBlock);
      v62 = v58;
      v63 = v59;

      [v63 performBatchUpdates:v57 completion:v61];
      _Block_release(v61);
      _Block_release(v57);
      (*(v46 + 8))(v72, v45);

      return;
    }

    (*(v29 + 8))(v30, v32);
    v27 = v64;
  }

  if (v75)
  {
    v27(v19, isEscapingClosureAtFileLocation + v26, v16);
    v34 = ListCoreBatchUpdates.isEmpty.getter(v16);
    v69(v19, v16);
    if (v34)
    {
      v35 = swift_allocObject();
      v36 = v76;
      *(v35 + 16) = isEscapingClosureAtFileLocation;
      *(v35 + 24) = v36;
      *(v35 + 32) = 1;
      v81 = partial apply for closure #3 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
      v82 = v35;
      aBlock = MEMORY[0x1E69E9820];
      v78 = 1107296256;
      v79 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v80 = &block_descriptor_80;
      v37 = _Block_copy(&aBlock);
      v38 = isEscapingClosureAtFileLocation;
      v39 = v36;

      [v39 performBatchUpdates:0 completion:v37];
      _Block_release(v37);
      return;
    }
  }

  v40 = objc_opt_self();
  v41 = swift_allocObject();
  v30 = v76;
  *(v41 + 16) = v76;
  *(v41 + 24) = isEscapingClosureAtFileLocation;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #4 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
  *(v33 + 24) = v41;
  v81 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v82 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed () -> ();
  v80 = &block_descriptor_74;
  v42 = _Block_copy(&aBlock);
  v43 = isEscapingClosureAtFileLocation;
  v44 = v30;

  [v40 performWithoutAnimation_];
  _Block_release(v42);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_11;
  }
}

void UICollectionViewListCoordinatorBase.finishBatchUpdate(collectionView:shouldSetEditing:)(UIView *a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = type metadata accessor for ListCoreBatchUpdates();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = [(UIView *)a1 window];
  if (v12)
  {

    v13 = *((*v6 & *v3) + 0xB8);
    swift_beginAccess();
    (*(v8 + 16))(v11, &v3[v13], v7);
    LOBYTE(v13) = ListCoreBatchUpdates.isEmpty.getter(v7);
    v14 = (*(v8 + 8))(v11, v7);
    if (v13)
    {
      UICollectionViewListCoordinatorBase.updateEditingState(_:)(a1);
      UICollectionViewListCoordinatorBase.enqueueLayoutInvalidationIfNeeded(_:)(a1);
      UICollectionViewListCoordinatorBase.updateListContents(_:)(a1);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v14);
      *(&v15 - 4) = v3;
      *(&v15 - 3) = a1;
      *(&v15 - 16) = a2 & 1;
      static Update.ensure<A>(_:)();
    }
  }

  else
  {
    v3[*((*v6 & *v3) + 0xD8)] = 0;
  }
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.disableFocusEventsForDeletedCells(collectionView:)(UICollectionView *collectionView)
{
  v76 = collectionView;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v67 = *MEMORY[0x1E69E7D40] & *v1;
  v77 = type metadata accessor for IndexPath();
  v4 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v66 - v8;
  v75 = type metadata accessor for IndexSet.Index();
  v78 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1 + *((v3 & v2) + 0xB8);
  swift_beginAccess();
  v19 = *(v11 + 16);
  v66 = v18;
  v19(v13, v18, v10);
  v20 = MEMORY[0x1E6969B50];
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  dispatch thunk of Sequence.makeIterator()();
  v73 = *(v15 + 44);
  v21 = _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, v20);
  v22 = v10;
  v72 = v78 + 1;
  v78 = MEMORY[0x1E69E7CC0];
  v69 = v17;
  v70 = v10;
  v71 = v21;
  while (1)
  {
    v23 = v74;
    dispatch thunk of Collection.endIndex.getter();
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
    v24 = v75;
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v72)(v23, v24);
    if (v25)
    {
      break;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v28 = *v27;
    v26(v80, 0);
    v29 = v22;
    dispatch thunk of Collection.formIndex(after:)();
    v30 = [(UICollectionView *)v76 numberOfItemsInSection:v28];
    if (v30 < 0)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v31 = v30;
    if (v30)
    {
      v80[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
      v32 = 0;
      v33 = v80[0];
      v34 = v77;
      do
      {
        MEMORY[0x18D0006A0](v32, v28);
        v80[0] = v33;
        v36 = *(v33 + 16);
        v35 = *(v33 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
          v33 = v80[0];
        }

        ++v32;
        *(v33 + 16) = v36 + 1;
        (*(v4 + 32))(v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v6, v34);
      }

      while (v31 != v32);
      v17 = v69;
      v29 = v70;
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    v37 = *(v33 + 16);
    v38 = v78[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      goto LABEL_39;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v78;
    if (!isUniquelyReferenced_nonNull_native || v39 > v78[3] >> 1)
    {
      if (v38 <= v39)
      {
        v42 = v38 + v37;
      }

      else
      {
        v42 = v38;
      }

      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v42, 1, v78);
    }

    v43 = *(v33 + 16);
    v78 = v41;
    if (v43)
    {
      if ((v41[3] >> 1) - v41[2] < v37)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      v22 = v29;
      if (v37)
      {
        v44 = v78[2];
        v45 = __OFADD__(v44, v37);
        v46 = v44 + v37;
        if (v45)
        {
          goto LABEL_42;
        }

        v78[2] = v46;
      }
    }

    else
    {

      v22 = v29;
      if (v37)
      {
        goto LABEL_40;
      }
    }
  }

  _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v17, type metadata accessor for IndexingIterator<IndexSet>);
  v47 = *(v67 + 96);
  v48 = *(*(v67 + 112) + 8);
  type metadata accessor for ListCoreBatchUpdates();
  v80[0] = v78;

  specialized Array.append<A>(contentsOf:)(v49);
  v50 = *(v80[0] + 16);
  v51 = v68;
  if (v50)
  {
    v53 = *(v4 + 16);
    v52 = v4 + 16;
    v78 = v53;
    v54 = *(v52 + 64);
    v71 = v80[0];
    v55 = v80[0] + ((v54 + 32) & ~v54);
    v75 = *(v52 + 56);
    v73 = v48;
    v74 = (v52 - 8);
    v56 = &protocol requirements base descriptor for ListCoreDataSource;
    v72 = v47;
    do
    {
      v57 = v77;
      (v78)(v51, v55, v77);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*v74)(v51, v57);
      v59 = [(UICollectionView *)v76 cellForItemAtIndexPath:isa];

      if (v59)
      {
        v60 = v56;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        if (swift_dynamicCastUnknownClass())
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v63 = (*(*(AssociatedConformanceWitness + 8) + 56))(AssociatedTypeWitness);
          if (v63)
          {
            v64 = v63;
            _UIHostingView.viewGraph.getter();
            GraphHost.environment.getter();

            if (v80[1])
            {
              type metadata accessor for EnvironmentPropertyKey<FocusBridgeKey>();
              _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<FocusBridgeKey>);

              v51 = v68;
              PropertyList.Tracker.value<A>(_:for:)();
            }

            else
            {
              type metadata accessor for EnvironmentPropertyKey<FocusBridgeKey>();
              _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<FocusBridgeKey>);
              PropertyList.subscript.getter();
            }

            Strong = swift_weakLoadStrong();

            _s10Foundation9IndexPathVSgWOhTm_1(v79, &lazy cache variable for type metadata for WeakBox<FocusBridge>, type metadata accessor for FocusBridge, MEMORY[0x1E6981A78]);
            v56 = &protocol requirements base descriptor for ListCoreDataSource;
            if (Strong)
            {
              *(Strong + 177) = 1;
            }
          }

          else
          {

            v56 = &protocol requirements base descriptor for ListCoreDataSource;
          }
        }

        else
        {

          v56 = v60;
        }
      }

      v55 += v75;
      --v50;
    }

    while (v50);
  }
}

uint64_t UICollectionViewListCoordinatorBase.leadingSwipeActionsConfiguration(indexPath:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v23 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v22[2] = v1;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v10 = [v8 cellForItemAtIndexPath_];

    if (v10)
    {
      type metadata accessor for AnyListCollectionViewCell();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        (*((*v3 & *v11) + 0x80))(v33);
        v44 = v33[10];
        v45 = v33[11];
        v46 = v33[12];
        v47 = v33[13];
        v40 = v33[6];
        v41 = v33[7];
        v42 = v33[8];
        v43 = v33[9];
        v36 = v33[2];
        v37 = v33[3];
        v38 = v33[4];
        v39 = v33[5];
        v34 = v33[0];
        v35 = v33[1];
        if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(&v34) != 1)
        {
          outlined init with copy of SwipeActions.Configuration?(&v34, &v25, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListVSgMaTm_0);
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(v33, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
          v12 = *(&v35 + 1);
          if (*(&v35 + 1))
          {
            v54 = v35;
            v50 = v38;
            v51 = v39;
            v52 = v40;
            v53 = v34;
            v48 = v36;
            v49 = v37;
            v22[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration);
            v25 = v34;
            v26 = v35;
            v27 = v12;
            v30 = v38;
            v31 = v39;
            v32 = v40;
            v28 = v36;
            v29 = v37;
            v13 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (*(v5 + 16))(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
            v14 = (*(v5 + 80) + 56) & ~*(v5 + 80);
            v15 = swift_allocObject();
            v16 = v23;
            *(v15 + 16) = *(v23 + 96);
            *(v15 + 24) = *(v16 + 104);
            *(v15 + 40) = *(v16 + 120);
            *(v15 + 48) = v13;
            (*(v5 + 32))(v15 + v14, v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
            v17 = v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v17 = v53;
            *(v17 + 16) = v54;
            *(v17 + 24) = v12;
            v18 = v51;
            *(v17 + 64) = v50;
            *(v17 + 80) = v18;
            *(v17 + 96) = v52;
            v19 = v49;
            *(v17 + 32) = v48;
            *(v17 + 48) = v19;
            v20 = MEMORY[0x1E69E6720];
            outlined init with copy of SwipeActions.Configuration?(&v34, v24, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListVSgMaTm_0);
            outlined init with copy of SwipeActions.Configuration?(&v34, v24, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v20, _s7SwiftUI16PlatformItemListVSgMaTm_0);

            v21 = specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(&v25, 0, partial apply for closure #1 in UICollectionViewListCoordinatorBase.leadingSwipeActionsConfiguration(indexPath:), v15);

            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v34, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);

            return v21;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

id UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  v81 = (*MEMORY[0x1E69E7D40] & *v3);
  v8 = type metadata accessor for IndexPath();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v7 & v6) + 0x60);
  v82 = *((v7 & v6) + 0x70);
  v83 = v10;
  v11 = type metadata accessor for ShadowListDataSource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v69 - v13;
  v15 = *a2;
  v16 = a2[1];
  v77 = v15;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v18 = result;
  v75 = v16;
  v76 = a1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [v18 cellForItemAtIndexPath_];

  result = 0;
  if (!v20)
  {
    return result;
  }

  type metadata accessor for AnyListCollectionViewCell();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {

    return 0;
  }

  v74 = v20;
  v22 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v21) + 0x80))(v91);
  v96 = v91[10];
  v97 = v91[11];
  v98 = v91[12];
  v99 = v91[13];
  v92[6] = v91[6];
  v93 = v91[7];
  v94 = v91[8];
  v95 = v91[9];
  v92[2] = v91[2];
  v92[3] = v91[3];
  v92[4] = v91[4];
  v92[5] = v91[5];
  v92[0] = v91[0];
  v92[1] = v91[1];
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(v92) == 1)
  {
    v71 = v9;
    v73 = 0;
  }

  else
  {
    v104 = v97;
    v105 = v98;
    v106 = v99;
    v100 = v93;
    v101 = v94;
    v102 = v95;
    v103 = v96;
    outlined init with copy of SwipeActions.Configuration?(&v93, &v84, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListVSgMaTm_0);
    v23 = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(v91, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
    MEMORY[0x1EEE9AC00](v23);
    v24 = v76;
    *(&v69 - 2) = v3;
    *(&v69 - 1) = v24;
    v25 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI12SwipeActionsO13ConfigurationV_s5NeverOSo07UISwipefG0CTB5(partial apply for closure #1 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:));
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v93, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
    if (v25)
    {
      v73 = v25;
      v26 = [v25 actions];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextualAction);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v27 >> 62)
      {
        v28 = __CocoaSet.count.getter();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = v74;
      v22 = MEMORY[0x1E69E7D40];

      if (v28)
      {

        return v73;
      }

      v71 = v9;
    }

    else
    {
      v71 = v9;
      v73 = 0;
      v22 = MEMORY[0x1E69E7D40];
    }
  }

  v30 = *((*v22 & *v3) + 0x88);
  swift_beginAccess();
  v31 = (*(v12 + 16))(v14, &v3[v30], v11);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v81;
  v33 = v82;
  v34 = v12;
  v35 = v81[13];
  *(&v69 - 4) = v83;
  *(&v69 - 3) = v35;
  v36 = v32[15];
  *(&v69 - 2) = v33;
  *(&v69 - 1) = v36;
  KeyPath = swift_getKeyPath();
  v81 = &v69;
  MEMORY[0x1EEE9AC00](KeyPath);
  v72 = v35;
  *(&v69 - 4) = v35;
  *(&v69 - 3) = v33;
  v70 = v36;
  *(&v69 - 2) = v36;
  *(&v69 - 1) = v38;
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(v76, partial apply for implicit closure #2 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:), (&v69 - 6), v11, MEMORY[0x1E69E6370], WitnessTable, &v84);

  (*(v34 + 8))(v14, v11);
  if (v84 == 2 || (v40 = v74, (v84 & 1) == 0))
  {

    return v73;
  }

  v41 = static Text.System.uiDelete.getter();
  v43 = v42;
  v45 = v44;
  v46 = v77;
  if (v77 == 1)
  {
    EnvironmentValues.init()();
    v48 = v84;
    v47 = v85;
  }

  else
  {
    v84 = v77;
    v85 = v75;
    v47 = v75;
    v48 = v77;
  }

  v90[3] = v48;
  v90[4] = v47;
  v90[1] = 0;
  v90[2] = 0;
  v49 = outlined copy of EnvironmentValues?(v46);
  MEMORY[0x18D009CB0](v90, v49);
  v81 = Text.resolveString(in:with:idiom:)();
  v51 = v50;
  outlined consume of Text.Storage(v41, v43, v45 & 1);

  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = v78;
  v53 = v79;
  v55 = v80;
  (*(v79 + 16))(v78, v76, v80);
  v56 = (*(v53 + 80) + 56) & ~*(v53 + 80);
  v57 = swift_allocObject();
  v58 = v72;
  *(v57 + 2) = v83;
  *(v57 + 3) = v58;
  v59 = v70;
  *(v57 + 4) = v82;
  *(v57 + 5) = v59;
  *(v57 + 6) = v52;
  (*(v53 + 32))(&v57[v56], v54, v55);

  v60 = MEMORY[0x18D00C850](v81, v51);

  v88 = partial apply for closure #2 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:);
  v89 = v57;
  v84 = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
  v87 = &block_descriptor_53_0;
  v61 = _Block_copy(&v84);
  v62 = [objc_opt_self() contextualActionWithStyle:1 title:v60 handler:v61];

  _Block_release(v61);

  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v63 = MEMORY[0x18D00C850](0x6873617274, 0xE500000000000000);
    v64 = [objc_opt_self() systemImageNamed_];

    [v62 setImage_];
  }

  _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_18CD69590;
  *(v65 + 32) = v62;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextualAction);
  v66 = v62;
  v67 = Array._bridgeToObjectiveC()().super.isa;

  v68 = [objc_opt_self() configurationWithActions_];

  return v68;
}

uint64_t (*UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(void *a1, uint64_t a2, int a3))()
{
  v20 = a3;
  v19 = a1;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v18 = *MEMORY[0x1E69E7D40] & v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v11 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *((v6 & v5) + 0x60);
  *(v12 + 24) = *(v18 + 104);
  v13 = *((v6 & v5) + 0x78);
  v14 = v19;
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *(v12 + 56) = v10;
  (*(v8 + 32))(v12 + v11, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v12 + v11 + v9) = v20;
  v15 = v14;
  return partial apply for closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:);
}

uint64_t UICollectionViewListCoordinatorBase.appIntentsDataSourcePayloadProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x178);
  swift_beginAccess();
  return outlined init with copy of SwipeActions.Configuration?(v1 + v3, a1, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
}

double UICollectionViewListCoordinatorBase.id(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v31 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *((v5 & v4) + 0x60);
  v7 = *((v5 & v4) + 0x70);
  v29 = v6;
  v30 = v7;
  v8 = type metadata accessor for ShadowListDataSource();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for IntelligenceDataSourceItem();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11, v17);
  if ((*(v12 + 88))(v14, v11) == *MEMORY[0x1E69DBC38])
  {
    (*(v12 + 96))(v14, v11);
    (*(v16 + 32))(v19, v14, v15);
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
    swift_beginAccess();
    v21 = v32;
    v22 = (*(v32 + 16))(v10, &v2[v20], v8);
    MEMORY[0x1EEE9AC00](v22);
    v23 = v31;
    v24 = *(v31 + 104);
    *(&v29 - 4) = v29;
    *(&v29 - 3) = v24;
    v25 = *(v23 + 120);
    *(&v29 - 2) = v30;
    *(&v29 - 1) = v25;
    WitnessTable = swift_getWitnessTable();
    ListCoreDataSource.visitContent<A>(atRow:visitor:)(v19, partial apply for closure #1 in UICollectionViewListCoordinatorBase.id(for:), (&v29 - 6), v8, MEMORY[0x1E69E69B8], WitnessTable, v33);
    (*(v21 + 8))(v10, v8);
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    v28 = v33;
    *(v33 + 32) = 0;
    result = 0.0;
    *v28 = 0u;
    v28[1] = 0u;
  }

  return result;
}

id UICollectionViewListCoordinatorBaseBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UICollectionViewListCoordinatorBaseBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *closure #1 in variable initialization expression of UICollectionViewListCoordinatorBase.helper()
{
  v0 = type metadata accessor for ScrollViewHelper();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState] = 0;
  v3 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState] = 0;
  v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState] = 0;
  v5 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize] = 0;
  EnvironmentValues.init()();
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties];
  *v6 = 257;
  *(v6 + 21) = 0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 67) = 0u;
  *(v6 + 44) = 4;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v6 + 13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v7);
  v6[112] = 0;
  v6[120] = 0;
  *(v6 + 16) = 0;
  *(v6 + 68) = 0;
  v6[144] = 0;
  *(v6 + 19) = 0;
  *(v6 + 158) = 0;
  v6[166] = 1;
  *(v6 + 167) = 0u;
  *(v6 + 183) = 0u;
  v6[199] = 0;
  static EdgeInsets.zero.getter();
  *(v6 + 25) = v8;
  *(v6 + 26) = v9;
  *(v6 + 27) = v10;
  *(v6 + 28) = v11;
  v12 = static EdgeInsets.zero.getter();
  *(v6 + 29) = v13;
  *(v6 + 30) = v14;
  *(v6 + 31) = v15;
  *(v6 + 32) = v16;
  v17 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v18 = MEMORY[0x18D007050](v42, v12);
  v19 = MEMORY[0x18D007050](v44, v18);
  v20 = MEMORY[0x18D007050](v46, v19);
  MEMORY[0x18D007050](v48, v20);
  v21 = v42[1];
  *v17 = v42[0];
  v17[1] = v21;
  v17[2] = v43[0];
  *(v17 + 41) = *(v43 + 9);
  v22 = v44[1];
  v17[4] = v44[0];
  v17[5] = v22;
  v17[6] = v45[0];
  *(v17 + 105) = *(v45 + 9);
  v23 = v46[0];
  v24 = v46[1];
  v25 = v47[0];
  *(v17 + 169) = *(v47 + 9);
  v17[9] = v24;
  v17[10] = v25;
  v17[8] = v23;
  v26 = v48[1];
  v17[12] = v48[0];
  v17[13] = v26;
  v17[14] = v49[0];
  *(v17 + 233) = *(v49 + 9);
  v27 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_scrollContentBackground];
  *v27 = 0;
  *(v27 + 4) = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 6;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_hasScrollPosition] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v28 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastScrollOffset];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest] = 0;
  v31 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState];
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v31[66] = 0;
  *(v31 + 32) = 512;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase] = 0;
  v32 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastVelocity];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastBoundsSize];
  *v34 = 0;
  *(v34 + 1) = 0;
  v34[16] = 1;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate] = 2;
  v35 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_accessoryPlacementInsets];
  static EdgeInsets.zero.getter();
  *v35 = v36;
  v35[1] = v37;
  v35[2] = v38;
  v35[3] = v39;
  *&v1[v2] = 0;
  *&v1[v3] = 0;
  *&v1[v4] = 0;
  *&v1[v5] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes] = 2;
  v41.receiver = v1;
  v41.super_class = v0;
  result = objc_msgSendSuper2(&v41, sel_init);
  *&result[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 4;
  result[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  return result;
}

void UICollectionViewListCoordinatorBase.subviewUniformHeight.setter(uint64_t a1, char a2)
{
  v3 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v4 = *v3;
  v5 = v3[8];
  *v3 = a1;
  v3[8] = a2 & 1;
  UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v4, v5);
}

uint64_t closure #1 in UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()@<X0>(void *a1@<X8>)
{
  _ProposedSize.init(width:height:)();
  result = LayoutComputer.sizeThatFits(_:)();
  *a1 = v3;
  return result;
}

void closure #1 in UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(void **a1, void *a2, void *a3, size_t *a4)
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v46 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v41 - v17;
  v19 = *a1;
  v20 = [a2 indexPathForCell_];
  if (!v20)
  {
    return;
  }

  v44 = a4;
  v45 = v4;
  v21 = v20;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = *(v10 + 32);
  v22(v18, v14, v9);
  swift_getObjectType();
  v23 = swift_conformsToProtocol2();
  if (!v23 || !v19)
  {
    (*(v10 + 8))(v18, v9);
    return;
  }

  v24 = v23;
  v42 = v22;
  v43 = v9;
  ObjectType = swift_getObjectType();
  v26 = *(v24 + 128);
  v27 = v19;
  v41[1] = ObjectType;
  v28 = COERCE_DOUBLE(v26(ObjectType, v24));
  v31 = (a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x108));
  v32 = *v31;
  if ((v33 & 1) == 0)
  {
    v34 = v43;
    if (v31[1])
    {
      goto LABEL_11;
    }

    v29.n128_f64[0] = *v31;
    v30.n128_f64[0] = v28;
    if (v28 != v32)
    {
      goto LABEL_11;
    }

LABEL_10:
    (*(v10 + 8))(v18, v34, COERCE_DOUBLE(*&v28));

    return;
  }

  v34 = v43;
  if (v31[1])
  {
    goto LABEL_10;
  }

LABEL_11:
  (*(v24 + 136))(COERCE_DOUBLE(*&v32), v29, v30);
  (*(v10 + 16))(v46, v18, v34);
  v35 = v44;
  v36 = *v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v35 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    *v35 = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    *v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1, v36);
  }

  (*(v10 + 8))(v18, v34);
  v40 = *v35;
  *(v40 + 16) = v39 + 1;
  v42(v40 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v39, v46, v34);
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.enqueueLayoutInvalidationIfNeeded(_:)(UIView *a1)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xF0);
  if (v2[9] != 1 || !(*v2 ^ 1 | v2[8]))
  {
    v3 = specialized UIView.firstAncestorWhere(_:)(a1);
    if (v3)
    {
      v6 = v3;
      ObjectType = swift_getObjectType();
      v5 = swift_conformsToProtocol2();
      v3 = v6;
      if (v5)
      {
        (*(v5 + 8))(ObjectType);
        v3 = v6;
      }
    }
  }
}

uint64_t UICollectionViewListCoordinatorBase.pendingSelection.didset(uint64_t a1)
{
  result = (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x68) - 8) + 48))(a1, 1);
  if (result == 1)
  {
    *(swift_allocObject() + 16) = v1;
    v3 = v1;
    static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
  }

  return result;
}

uint64_t closure #1 in UICollectionViewListCoordinatorBase.pendingSelection.didset(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19[-v14];
  v16 = *((v3 & v2) + 0x118);
  swift_beginAccess();
  (*(v6 + 16))(v11, &a1[v16], v5);
  if ((*(v12 + 48))(v11, 1, v4) == 1)
  {
    return (*(v6 + 8))(v11, v5);
  }

  (*(v12 + 32))(v15, v11, v4);
  (*(v12 + 56))(v8, 1, 1, v4);
  specialized UICollectionViewListCoordinatorBase.pendingSelection.setter(v8);
  v18 = (*(v6 + 8))(v8, v5);
  v19[6] = 17;
  MEMORY[0x1EEE9AC00](v18);
  *&v19[-16] = a1;
  *&v19[-8] = v15;
  _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  return (*(v12 + 8))(v15, v4);
}

uint64_t closure #1 in closure #1 in UICollectionViewListCoordinatorBase.pendingSelection.didset@<X0>(char *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *a1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for Binding();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = *((v5 & v4) + 0x110);
  swift_beginAccess();
  result = (*(v7 + 48))(&a1[v10], 1, v6);
  v12 = result;
  if (!result)
  {
    (*(v7 + 16))(v9, &a1[v10], v6);
    specialized Binding.wrappedValue.setter();
    result = (*(v7 + 8))(v9, v6);
  }

  *a2 = v12 != 0;
  return result;
}

void closure #1 in UICollectionViewListCoordinatorBase.setupSizeThatFitsCallback(in:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a5 != a7)
    {
      UpdateCoalescingCollectionView.scheduleVisibleCellsUpdate(indexPath:kind:)(a1, a2, a3);
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        UICollectionViewListCoordinatorBase.enqueueLayoutInvalidationIfNeeded(_:)(v13);
      }
    }
  }
}

BOOL UICollectionViewListCoordinatorBase.hasPendingID<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v4 = *v3;
  v5 = *MEMORY[0x1E69E7D40];
  v23 = *MEMORY[0x1E69E7D40] & *v3;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = *((v5 & v4) + 0x60);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *((v5 & v4) + 0xD0);
  swift_beginAccess();
  (*(v11 + 16))(v13, &v3[v18], v10);
  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v17, v13, v9);
    (*(*(*(v23 + 112) + 8) + 136))(v24, v25, v26, v9);
    (*(v14 + 8))(v17, v9);
    v20 = type metadata accessor for IndexPath();
    v19 = (*(*(v20 - 8) + 48))(v8, 1, v20) != 1;
    _s10Foundation9IndexPathVSgWOhTm_1(v8, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  }

  return v19;
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:indexPathForIndexTitle:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = *((v7 & v6) + 0x88);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v4[v13], v9);
  ShadowListDataSource<>.section(forSectionLabelIndex:)(a4, v9, v8);
  (*(v10 + 8))(v12, v9);
  return IndexPath.init(index:)();
}

Class @objc UICollectionViewListCoordinatorBase.collectionView(_:indexPathForIndexTitle:at:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  UICollectionViewListCoordinatorBase.collectionView(_:indexPathForIndexTitle:at:)(v13, v14, v15, a5);

  v16.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);

  return v16.super.isa;
}

id @objc UICollectionViewListCoordinatorBase.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = UICollectionViewListCoordinatorBase.collectionView(_:viewForSupplementaryElementOfKind:at:)(v12, v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v14;
}

void *closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x130));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v18 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v17 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *((v3 & v2) + 0x78);
  v11 = *((v3 & v2) + 0x68);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = WeakSelectionBasedStorage.action.getter(v5, v6, v7, v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v14 >= 2)
  {
    v16 = v13;
    result = swift_allocObject();
    result[2] = v17;
    result[3] = v11;
    result[4] = v18;
    result[5] = v10;
    result[6] = v14;
    result[7] = v16;
    v14 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<A.ListCoreDataSource.SelectionValue>) -> ();
  }

  else
  {
    result = 0;
  }

  *a2 = v14;
  a2[1] = result;
  return result;
}

uint64_t closure #2 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  getContiguousArrayStorageType<A>(for:)(AssociatedTypeWitness, AssociatedTypeWitness);
  v6 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v7 = static Array._adoptStorage(_:count:)();
  (*(v6 + 16))(v8, a3, AssociatedTypeWitness);
  _finalizeUninitializedArray<A>(_:)();
  if (MEMORY[0x18D00CDF0]())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = specialized Set.init(_nonEmptyArrayLiteral:)(v7, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  a1(v10);
}

uint64_t closure #1 in UICollectionViewListCoordinatorBase.canSelect(rowAt:)@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  v4 = *AGGraphGetValue();

  v4(&v6, a1);

  *a2 = v6;
  return result;
}

BOOL UICollectionViewListCoordinatorBase.collectionView(_:shouldSelectItemAt:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v49 = *MEMORY[0x1E69E7D40] & v5;
  v46 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v6 & v5) + 0x70);
  v9 = *((v6 & v5) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v50 = UICollectionViewListCoordinatorBase.canSelect(rowAt:)(&v45 - v12, a2);
  v14 = [a1 isEditing];
  v15 = (*(*(AssociatedTypeWitness - 8) + 48))(v13, 1, AssociatedTypeWitness);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17 = [a1 cellForItemAtIndexPath_];

  if (v17)
  {
    v18 = v17;
    v19 = swift_getAssociatedTypeWitness();
    v48 = v18;
    v20 = swift_dynamicCastUnknownClass();
    if (v20)
    {
      v21 = v20;
      if ((v15 != 1) | v14 & 1)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      }

      else
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        (*(AssociatedConformanceWitness + 16))(&v53, v19, AssociatedConformanceWitness);
        if (v54)
        {
          if (v54 != 1)
          {
            v23 = v53;
            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v53, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
            if ((v23 & 1) == 0)
            {

              v24 = 1;
              goto LABEL_29;
            }
          }
        }

        else
        {
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v53, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        }
      }

      if (specialized UICollectionViewListCoordinatorBase.editMenuResponder<A>(for:)(v21, v9, *(v49 + 104), v19, v8, *(v49 + 120), AssociatedConformanceWitness))
      {
        _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList?, &type metadata for PlatformItemList, MEMORY[0x1E69E6720]);
        static Update.ensure<A>(_:)();
        v25 = MEMORY[0x1E69E7CC0];
        if (v53)
        {
          v26 = v53;
        }

        else
        {
          v26 = MEMORY[0x1E69E7CC0];
        }

        if (*(v26 + 16))
        {
          v53 = MEMORY[0x1E69E7CC0];
          v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v28 = MEMORY[0x1E69E7CC8];
          v29 = v47;
          v47[8] = 0;
          *(v29 + 16) = v28;
          *(v29 + 24) = v27;
          *(v29 + 32) = v25;
          *(v29 + 40) = v28;
          *(v29 + 48) = 0;
          _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
          v30 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
          v31 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_18CD63400;
          if (one-time initialization token for empty != -1)
          {
            swift_once();
          }

          v33 = __swift_project_value_buffer(v30, static MenuVisitor.MenuStackGroup.empty);
          _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_0(v33, v32 + v31, type metadata accessor for MenuVisitor.MenuStackGroup);
          *(v29 + 56) = v32;
          v34 = *(v46 + 32);
          v35 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
          (*(*(v35 - 8) + 56))(v29 + v34, 1, 1, v35);
          *v29 = 0;
          MenuVisitor.visit(_:uniqueNames:)(v26, &v53);

          v36 = *(v29 + 32);

          _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v29, type metadata accessor for MenuVisitor);
          if (!(v36 >> 62))
          {
            goto LABEL_18;
          }
        }

        else
        {

          v36 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
LABEL_18:
            v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

            v24 = v37 != 0;
            goto LABEL_29;
          }
        }

        v37 = __CocoaSet.count.getter();
        goto LABEL_19;
      }
    }
  }

  if (v15 == 1)
  {
    goto LABEL_25;
  }

  if ((v50 & 1) == 0)
  {
    v24 = 0;
    goto LABEL_29;
  }

  if ((UICollectionViewListCoordinatorBase.hasMultipleSelection.getter() & 1) == 0)
  {
LABEL_25:
    v38 = [a1 indexPathsForSelectedItems];
    if (v38)
    {
      v39 = v38;
      type metadata accessor for IndexPath();
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = *(v40 + 16);

      v24 = v41 < 2;
      v43 = v51;
      v42 = v52;
      if (v15 != 1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v43 = v51;
      v42 = v52;
      if (v15 != 1)
      {
        v24 = 1;
        goto LABEL_33;
      }
    }

    v24 = 0;
    goto LABEL_33;
  }

  v24 = 1;
LABEL_29:
  v43 = v51;
  v42 = v52;
LABEL_33:
  (*(v43 + 8))(v13, v42);
  return v24;
}

void UICollectionViewListCoordinatorBase.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *MEMORY[0x1E69E7D40];
  v88 = *MEMORY[0x1E69E7D40] & v6;
  v8 = *((v7 & v6) + 0x70);
  v9 = *(v8 + 8);
  v10 = *((v7 & v6) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v84 = &v66[-v12];
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v66[-v14];
  v87 = *((v7 & v6) + 0x68);
  v90 = type metadata accessor for Binding();
  v89 = type metadata accessor for Optional();
  v94 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v82 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66[-v17];
  v92 = AssociatedTypeWitness;
  v86 = type metadata accessor for Optional();
  v19 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v21 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v66[-v23];
  v91 = a2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v93 = a1;
  v96 = [a1 cellForItemAtIndexPath_];

  if (v96)
  {
    v25 = swift_getAssociatedTypeWitness();
    v26 = swift_dynamicCastUnknownClass();
    if (v26)
    {
      v27 = v26;
      v81 = v19;
      v78 = v8;
      v75 = v9;
      v76 = v10;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v29 = *(AssociatedConformanceWitness + 16);
      v80 = v25;
      v77 = AssociatedConformanceWitness;
      v74 = v29;
      (v29)(&v99, v25);
      v30 = (v100 != 1) & v99;
      v73 = [v93 isEditing];
      v31 = v95;
      UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v91, v95);
      [v27 setNeedsUpdateConfiguration];
      v79 = v27;
      [v27 layoutIfNeeded];
      v32 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x110);
      swift_beginAccess();
      v33 = v94;
      v34 = *(v94 + 16);
      v72 = v32;
      v35 = v89;
      v71 = v34;
      v34(v18, &v3[v32], v89);
      v36 = *(v90 - 8);
      v70 = *(v36 + 48);
      v69 = v36 + 48;
      LODWORD(v32) = v70(v18, 1);
      v37 = *(v33 + 8);
      v94 = v33 + 8;
      v68 = v37;
      v37(v18, v35);
      if (v32 == 1)
      {
        v38 = v92;
        v39 = v85;
        v40 = v77;
        v41 = v30;
        if (v30)
        {
          v42 = v78;
          v43 = v76;
          v44 = v86;
          if (v100 == 1)
          {
LABEL_21:
            if (![v93 isEditing])
            {
LABEL_30:
              v64 = *(v88 + 120);
              v65 = v80;
              swift_getAssociatedConformanceWitness();
              specialized UICollectionViewListCoordinatorBase.presentEditMenu<A>(on:)(v79, v43, v87, v65, v42, v64, v40);
              _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v99, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

              (*(v81 + 8))(v95, v44);
              return;
            }

LABEL_22:
            v54 = v81;
            (*(v81 + 16))(v21, v95, v44);
            if ((*(v39 + 48))(v21, 1, v38) == 1)
            {
              (*(v54 + 8))(v21, v44);
            }

            else
            {
              v55 = v84;
              (*(v39 + 32))(v84, v21, v38);
              v56 = v82;
              v57 = v89;
              v71(v82, &v3[v72], v89);
              v58 = (v70)(v56, 1, v90);
              v68(v56, v57);
              if (v58 == 1)
              {
                (*(v39 + 8))(v55, v38);
                v40 = v77;
                v42 = v78;
              }

              else
              {
                v59 = [v93 isEditing];
                v60 = v87;
                v42 = v78;
                if (v59)
                {
                  v61 = *(v88 + 120);
                }

                else
                {
                  MEMORY[0x1EEE9AC00](v59);
                  *&v66[-32] = v43;
                  *&v66[-24] = v60;
                  v61 = *(v88 + 120);
                  *&v66[-16] = v42;
                  *&v66[-8] = v61;
                  v59 = UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:didSelectItemAt:), &v66[-48]);
                }

                MEMORY[0x1EEE9AC00](v59);
                *&v66[-48] = v43;
                *&v66[-40] = v60;
                *&v66[-32] = v42;
                *&v66[-24] = v61;
                *&v66[-16] = v62;
                v63 = v62;
                UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #2 in UICollectionViewListCoordinatorBase.collectionView(_:didSelectItemAt:), &v66[-64]);
                (*(v39 + 8))(v63, v38);
                v44 = v86;
                v40 = v77;
              }
            }

            goto LABEL_30;
          }

          v45 = BYTE2(v99);
          if (!v41)
          {
            goto LABEL_22;
          }

LABEL_20:
          if (v45)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v39 = v85;
        v38 = v92;
        v47 = (*(v85 + 48))(v31, 1, v92) != 1;
        v40 = v77;
        v41 = v30;
        if ((v47 | v73 | v30))
        {
LABEL_16:
          if (v100 == 1)
          {
            v42 = v78;
            v43 = v76;
            v44 = v86;
            if (!v41)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }

          v45 = BYTE2(v99);
          v42 = v78;
          v43 = v76;
          v44 = v86;
          if (!v41)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      v67 = v41;
      v74(&v97, v80, v40);
      v48 = v98;
      if (v98 != 1)
      {
        outlined copy of AppIntentExecutor?(v98);
        v49 = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v97, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        if (v48)
        {
          v48(v49);
          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v48);
        }
      }

      v50 = type metadata accessor for IndexPath();
      v51 = *(v50 - 8);
      v52 = v83;
      (*(v51 + 16))(v83, v91, v50);
      (*(v51 + 56))(v52, 0, 1, v50);
      v53 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xE0);
      swift_beginAccess();
      outlined assign with take of IndexPath?(v52, &v3[v53], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
      swift_endAccess();
      v38 = v92;
      v41 = v67;
      goto LABEL_16;
    }

    v46 = v96;
  }
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:didDeselectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v72 = a2;
  v63 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v65 = *MEMORY[0x1E69E7D40] & v4;
  v69 = type metadata accessor for IndexPath();
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v61 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (IndexPath?, IndexPath?)();
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = v60 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v70 = v60 - v14;
  v15 = *((v5 & v4) + 0x70);
  v16 = *((v5 & v4) + 0x60);
  v60[1] = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v60 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v60 - v24;
  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v72, v21);
  v26 = (*(v22 + 48))(v21, 1, AssociatedTypeWitness);
  v60[0] = v16;
  if (v26 == 1)
  {
    (*(v19 + 8))(v21, v18);
  }

  else
  {
    v27 = (*(v22 + 32))(v25, v21, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v27);
    v28 = v65;
    v29 = *(v65 + 104);
    v60[-6] = v16;
    v60[-5] = v29;
    v30 = *(v28 + 120);
    v60[-4] = v15;
    v60[-3] = v30;
    v60[-2] = v25;
    UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:didDeselectItemAt:), &v60[-8]);
    (*(v22 + 8))(v25, AssociatedTypeWitness);
  }

  v31 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xE0);
  swift_beginAccess();
  v33 = v70;
  v32 = v71;
  v34 = v69;
  (*(v71 + 16))(v70, v72, v69);
  v65 = *(v32 + 56);
  v62 = v32 + 56;
  (v65)(v33, 0, 1, v34);
  v35 = *(v67 + 48);
  v36 = MEMORY[0x1E6969C28];
  v37 = MEMORY[0x1E69E6720];
  v67 = v31;
  v38 = v3 + v31;
  v39 = v68;
  outlined init with copy of SwipeActions.Configuration?(v38, v68, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
  outlined init with copy of SwipeActions.Configuration?(v33, v39 + v35, &lazy cache variable for type metadata for IndexPath?, v36, v37, _s10Foundation9IndexPathVSgMaTm_1);
  v40 = *(v32 + 48);
  v41 = v3;
  if (v40(v39, 1, v34) != 1)
  {
    v42 = v66;
    outlined init with copy of SwipeActions.Configuration?(v39, v66, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
    if (v40(v39 + v35, 1, v34) != 1)
    {
      v44 = v71;
      v45 = v61;
      (*(v71 + 32))(v61, v39 + v35, v34);
      _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v44 + 8);
      v47(v45, v34);
      v48 = v42;
      v49 = MEMORY[0x1E6969C28];
      v50 = v41;
      v51 = MEMORY[0x1E69E6720];
      _s10Foundation9IndexPathVSgWOhTm_1(v70, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      v47(v48, v34);
      v52 = v51;
      v41 = v50;
      result = _s10Foundation9IndexPathVSgWOhTm_1(v39, &lazy cache variable for type metadata for IndexPath?, v49, v52);
      if ((v46 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    _s10Foundation9IndexPathVSgWOhTm_1(v70, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    (*(v71 + 8))(v42, v34);
    return _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v39, type metadata accessor for (IndexPath?, IndexPath?));
  }

  _s10Foundation9IndexPathVSgWOhTm_1(v33, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  if (v40(v39 + v35, 1, v34) != 1)
  {
    return _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v39, type metadata accessor for (IndexPath?, IndexPath?));
  }

  _s10Foundation9IndexPathVSgWOhTm_1(v39, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
LABEL_11:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v54 = [v63 cellForItemAtIndexPath_];

  if (v54)
  {
    v55 = swift_getAssociatedTypeWitness();
    if (swift_dynamicCastUnknownClass() && (AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), (*(AssociatedConformanceWitness + 16))(v74, v55, AssociatedConformanceWitness), v74[1] != 1) && (v57 = v75, outlined copy of AppIntentExecutor?(v75), _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(v74, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior), v57))
    {
      v73 = 17;
      static Update.enqueueAction(reason:_:)();

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v57);
    }

    else
    {
    }
  }

  v58 = v64;
  (v65)(v64, 1, 1, v69);
  v59 = v67;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v58, v41 + v59, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
  return swift_endAccess();
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

id UICollectionViewListCoordinatorBase.collectionView(_:didBeginMultipleSelectionInteractionAt:)(void *a1)
{
  result = [a1 isEditing];
  if (result)
  {
    v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x128));
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;

      dispatch thunk of AnyLocation.set(_:transaction:)();
      return outlined consume of Binding<NavigationSplitViewColumn>?(v5, v4);
    }
  }

  return result;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:didBeginMultipleSelectionInteractionAt:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  UICollectionViewListCoordinatorBase.collectionView(_:didBeginMultipleSelectionInteractionAt:)(v9);

  return (*(v6 + 8))(v8, v5);
}

BOOL UICollectionViewListCoordinatorBase.collectionView(_:shouldHighlightItemAt:)(void *a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v44 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
  v48 = *((v4 & v3) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41 - v7;
  v42 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v4 & v3) + 0x78);
  v10 = *((v4 & v3) + 0x68);
  swift_getAssociatedConformanceWitness();
  if ((WeakSelectionBasedStorage.$action.getter() & 0x100000000) == 0)
  {
    return 1;
  }

  v12 = v50;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = v49;
  v15 = [v49 cellForItemAtIndexPath_];

  if (v15)
  {
    v16 = swift_getAssociatedTypeWitness();
    v17 = swift_dynamicCastUnknownClass();
    v18 = v15;
    if (v17)
    {
      v19 = v17;
      v41 = v18;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(&v52, v16, AssociatedConformanceWitness);
      v21 = v53;
      if (v53)
      {
        if (v53 != 1)
        {
          outlined copy of AppIntentExecutor?(v53);
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v52, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);

          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21);
          return 1;
        }
      }

      else
      {
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_1(&v52, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
      }

      if (specialized UICollectionViewListCoordinatorBase.editMenuResponder<A>(for:)(v19, v48, v10, v16, v44, v9, AssociatedConformanceWitness))
      {
        _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList?, &type metadata for PlatformItemList, MEMORY[0x1E69E6720]);
        static Update.ensure<A>(_:)();
        v22 = MEMORY[0x1E69E7CC0];
        if (v51)
        {
          v23 = v51;
        }

        else
        {
          v23 = MEMORY[0x1E69E7CC0];
        }

        if (*(v23 + 16))
        {
          v51 = MEMORY[0x1E69E7CC0];
          v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v25 = MEMORY[0x1E69E7CC8];
          v26 = v43;
          v43[8] = 0;
          *(v26 + 16) = v25;
          *(v26 + 24) = v24;
          *(v26 + 32) = v22;
          *(v26 + 40) = v25;
          *(v26 + 48) = 0;
          _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
          v27 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
          v28 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_18CD63400;
          if (one-time initialization token for empty != -1)
          {
            swift_once();
          }

          v30 = __swift_project_value_buffer(v27, static MenuVisitor.MenuStackGroup.empty);
          _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_0(v30, v29 + v28, type metadata accessor for MenuVisitor.MenuStackGroup);
          *(v26 + 56) = v29;
          v31 = *(v42 + 32);
          v32 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
          (*(*(v32 - 8) + 56))(v26 + v31, 1, 1, v32);
          *v26 = 0;
          MenuVisitor.visit(_:uniqueNames:)(v23, &v51);

          v33 = *(v26 + 32);

          _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v26, type metadata accessor for MenuVisitor);
          if (!(v33 >> 62))
          {
            goto LABEL_18;
          }
        }

        else
        {

          v33 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
LABEL_18:
            v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

            return v34 != 0;
          }
        }

        v34 = __CocoaSet.count.getter();
        goto LABEL_19;
      }

      v12 = v50;
    }

    else
    {
    }
  }

  if (UICollectionViewListCoordinatorBase.hasMultipleSelection.getter())
  {
    goto LABEL_27;
  }

  v35 = [v14 indexPathsForSelectedItems];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for IndexPath();
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v38 = *(v37 + 16);

  if (v38 > 1)
  {
    return 0;
  }

LABEL_27:
  v39 = v45;
  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v12, v45);
  v40 = (*(*(AssociatedTypeWitness - 8) + 48))(v39, 1, AssociatedTypeWitness) != 1;
  (*(v46 + 8))(v39, v47);
  return v40;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:canPerformPrimaryActionForItemAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v12, v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplaying:forItemAt:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = v15;
  v12 = a1;
  specialized UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplaying:forItemAt:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a3;
  v16 = a4;
  v17 = type metadata accessor for IndexPath();
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v15;
  v11 = v16;
  v12 = a1;
  specialized UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(v11, v14, v9);

  return (*(v5 + 8))(v7, v17);
}

uint64_t UICollectionViewListCoordinatorBase.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *((v8 & v7) + 0x88);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v3[v13], v9);
  WitnessTable = swift_getWitnessTable();
  v15 = ListCoreDataSource.canMoveCell(fromRowAt:to:)(a1, a2, v9, WitnessTable);
  (*(v10 + 8))(v12, v9);
  v16 = type metadata accessor for IndexPath();
  if (v15)
  {
    v17 = a2;
  }

  else
  {
    v17 = a1;
  }

  return (*(*(v16 - 8) + 16))(a3, v17, v16);
}

Class @objc UICollectionViewListCoordinatorBase.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(void *a1, uint64_t a2, void *a3)
{
  v23 = a1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a3;
  v18 = v23;
  UICollectionViewListCoordinatorBase.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)(v13, v7, v16);

  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  v19(v13, v4);
  v20.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19(v16, v4);

  return v20.super.isa;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:moveItemAt:to:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  specialized UICollectionViewListCoordinatorBase.collectionView(_:moveItemAt:to:)(v11, v8);

  v14 = *(v6 + 8);
  v14(v8, v5);
  return (v14)(v11, v5);
}

void closure #1 in UICollectionViewListCoordinatorBase.commitUpdates()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    type metadata accessor for ShadowListDataSource();
    ShadowListDataSource.commitUpdates()();
    swift_endAccess();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    *(v3 + *((*v1 & *v3) + 0xC8)) = 0;
  }
}

void closure #2 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(char a1, void *a2, void *a3, char a4)
{
  if (a1)
  {
    UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(a3, a4 & 1);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = a4 & 1;
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in closure #2 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:);
    *(v9 + 24) = v8;
    v14[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed () -> ();
    v14[3] = &block_descriptor_112;
    v10 = _Block_copy(v14);
    v11 = a2;
    v12 = a3;

    [v7 performWithoutAnimation_];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

id UICollectionViewListCoordinatorBase.updateEditingState(_:)(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v56 = (*MEMORY[0x1E69E7D40] & *v1);
  v58 = *((v4 & v3) + 0x70);
  v57 = *((v4 & v3) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = type metadata accessor for Optional();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v7 = &v49 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v49 - v10;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 indexPathsForSelectedItems];
  v53 = v8;
  if (v20)
  {
    v21 = v20;
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v22 = 0;
  }

  v23 = [a1 isEditing];
  UICollectionViewListCoordinatorBase.resolvedEditMode.getter(v59);
  v24 = v59[0];
  result = [a1 setEditing_];
  if (v23)
  {

    if (!v24)
    {
      MEMORY[0x1EEE9AC00](result);
      v26 = v56;
      v27 = v56[13];
      *(&v49 - 4) = v57;
      *(&v49 - 3) = v27;
      v28 = v26[15];
      *(&v49 - 2) = v58;
      *(&v49 - 1) = v28;
      UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #1 in UICollectionViewListCoordinatorBase.updateEditingState(_:), (&v49 - 6));
      v29 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
      swift_beginAccess();
      outlined init with copy of SwipeActions.Configuration?(v1 + v29, v15, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
      v30 = v17;
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        return _s10Foundation9IndexPathVSgWOhTm_1(v15, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      }

      else
      {
        v35 = *(v17 + 32);
        v36 = v55;
        v35(v55, v15, v16);
        type metadata accessor for UpdateCoalescingCollectionView(0);
        v37 = swift_dynamicCastClass();
        if (v37)
        {
          v38 = v37;
          v56 = a1;
          UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v36, v7);
          v39 = v53;
          if ((*(v53 + 48))(v7, 1, AssociatedTypeWitness) == 1)
          {
            (*(v50 + 8))(v7, v52);
          }

          else
          {
            v40 = v51;
            v41 = (*(v39 + 32))(v51, v7, AssociatedTypeWitness);
            MEMORY[0x1EEE9AC00](v41);
            v42 = v58;
            *(&v49 - 6) = v57;
            *(&v49 - 5) = v27;
            *(&v49 - 4) = v42;
            *(&v49 - 3) = v28;
            v43 = v40;
            *(&v49 - 2) = v40;
            UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #2 in UICollectionViewListCoordinatorBase.updateEditingState(_:), (&v49 - 8));
            v36 = v55;
            (*(v39 + 8))(v43, AssociatedTypeWitness);
          }

          v44 = v54;
          (*(v30 + 16))(v54, v36, v16);
          (*(v30 + 56))(v44, 0, 1, v16);
          v45 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
          swift_beginAccess();
          outlined assign with take of IndexPath?(v44, v38 + v45, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
          swift_endAccess();
          v46 = swift_allocObject();
          *(v46 + 16) = v38;
          *(v46 + 24) = v1;
          v47 = v56;
          v48 = v1;
          onNextMainRunLoop(do:)();
        }

        return (*(v30 + 8))(v36, v16);
      }
    }
  }

  else if (v24)
  {
    if (v22)
    {
      v31 = *(v22 + 16);

      if (v31 == 1)
      {
        MEMORY[0x1EEE9AC00](result);
        v32 = v56;
        v33 = v56[13];
        *(&v49 - 4) = v57;
        *(&v49 - 3) = v33;
        v34 = v32[15];
        *(&v49 - 2) = v58;
        *(&v49 - 1) = v34;
        return UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for closure #1 in UICollectionViewListCoordinatorBase.updateEditingState(_:), (&v49 - 6));
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t closure #1 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(void *a1, uint64_t a2, UICollectionView *a3)
{
  v128 = a3;
  v5 = *a1;
  v6 = *MEMORY[0x1E69E7D40];
  v111 = type metadata accessor for IndexSet.Index();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for IndexPath();
  v124 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v109 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v108 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v108 - v12;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v130 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v108 - v16;
  v121 = type metadata accessor for IndexSet();
  v123 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v113 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v108 - v20;
  v21 = *((v6 & v5) + 0x60);
  v125 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v108 - v23;
  v25 = *(*((v6 & v5) + 0x70) + 8);
  v26 = type metadata accessor for ShadowListDataSource();
  v120 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v108 - v27;
  v29 = v128;
  swift_beginAccess();
  ShadowListDataSource.updateBase(to:)(a2);
  swift_endAccess();
  UICollectionViewListCoordinatorBase.disableFocusEventsForDeletedCells(collectionView:)(v29);
  v30 = UICollectionViewListCoordinatorBase.dragAndDropController.getter();
  (*(v125 + 16))(v24, a2, v21);
  v125 = v21;
  v122 = v25;
  ShadowListDataSource.init(_:)(v24, v21, v28);
  v31 = MEMORY[0x1E69E7D40];
  v32 = *((*MEMORY[0x1E69E7D40] & *v30) + 0x60);
  swift_beginAccess();
  v33 = v121;
  v34 = v30 + v32;
  v35 = v119;
  v120[5](v34, v28, v26);
  v36 = v123;
  swift_endAccess();

  v37 = *((*v31 & *a1) + 0xB8);
  v116 = a1;
  v38 = (a1 + v37);
  swift_beginAccess();
  v39 = v36 + 16;
  v40 = *(v36 + 16);
  v40(v35, v38, v33);
  LODWORD(v30) = IndexSet.isEmpty.getter();
  v43 = *(v36 + 8);
  v42 = v36 + 8;
  v41 = v43;
  v43(v35, v33);
  v114 = v30;
  if ((v30 & 1) == 0)
  {
    v40(v35, v38, v33);
    IndexSet._bridgeToObjectiveC()(v44);
    v46 = v45;
    v41(v35, v33);
    [(UICollectionView *)v29 deleteSections:v46];
  }

  v122 = type metadata accessor for ListCoreBatchUpdates();
  v40(v35, v38 + v122[9], v33);
  v47 = IndexSet.isEmpty.getter();
  v41(v35, v33);
  v123 = v42;
  v115 = v41;
  v118 = v39;
  v117 = v40;
  if (v47)
  {
    v48 = v114 ^ 1;
  }

  else
  {
    v40(v35, v38 + v122[9], v33);
    IndexSet._bridgeToObjectiveC()(v49);
    v51 = v50;
    v41(v35, v33);
    [(UICollectionView *)v29 insertSections:v51];

    v48 = 1;
  }

  v52 = v130;
  v53 = v122;
  v54 = *(v38 + v122[10]);
  v55 = *(v54 + 16);
  v120 = v38;
  if (v55)
  {

    v56 = (v54 + 40);
    do
    {
      [(UICollectionView *)v29 moveSection:*(v56 - 1) toSection:*v56];
      v56 += 2;
      --v55;
    }

    while (v55);

    v48 = 1;
    v38 = v120;
  }

  if ((*(v38 + v53[11]))[2])
  {

    isa = Array._bridgeToObjectiveC()().super.isa;

    [(UICollectionView *)v29 deleteItemsAtIndexPaths:isa];

    v52 = v130;
    v48 = 1;
  }

  if ((*(v38 + v53[12]))[2])
  {

    v58 = Array._bridgeToObjectiveC()().super.isa;

    [(UICollectionView *)v29 insertItemsAtIndexPaths:v58];

    v52 = v130;
    v48 = 1;
  }

  v59 = (*(v38 + v53[13]))[2];
  v60 = (v124 + 32);
  v61 = (v124 + 8);
  v125 = *(v38 + v53[13]);

  i = 0;
  if (v59)
  {
    goto LABEL_16;
  }

LABEL_15:
  type metadata accessor for (source: IndexPath, destination: IndexPath)();
  v65 = v64;
  (*(*(v64 - 8) + 56))(v52, 1, 1, v64);
  for (i = v59; ; ++i)
  {
    outlined init with take of IndexPath?(v52, v17, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath));
    type metadata accessor for (source: IndexPath, destination: IndexPath)();
    if ((*(*(v65 - 8) + 48))(v17, 1, v65) == 1)
    {

      v84 = v120;
      v83 = v121;
      v85 = v117;
      if ((v48 & 1) == 0)
      {
        v86 = v119;
        v117(v119, v120 + v122[14], v121);
        v87 = IndexSet.isEmpty.getter();
        v115(v86, v83);
        if ((v87 & 1) == 0)
        {
          v88 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
          v89 = [(UICollectionView *)v128 collectionViewLayout];
          ObjCClassFromObject = swift_getObjCClassFromObject();

          [ObjCClassFromObject invalidationContextClass];
          swift_getObjCClassMetadata();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext);
          swift_dynamicCastMetatypeUnconditional();
          v91 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v92 = v113;
          v85(v113, v84 + v122[14], v83);
          v93 = _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
          v94 = dispatch thunk of Collection.count.getter();
          if (v94)
          {
            v95 = v94;
            v127 = v91;
            v132 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94 & ~(v94 >> 63), 0);
            v96 = v132;
            v97 = v112;
            result = dispatch thunk of Collection.startIndex.getter();
            if (v95 < 0)
            {
              goto LABEL_36;
            }

            v98 = v109;
            v130 = v93;
            do
            {
              v99 = dispatch thunk of Collection.subscript.read();
              v99(v131, 0);
              IndexPath.init(index:)();
              v132 = v96;
              v100 = v92;
              v102 = *(v96 + 16);
              v101 = *(v96 + 24);
              if (v102 >= v101 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v101 > 1, v102 + 1, 1);
                v96 = v132;
              }

              *(v96 + 16) = v102 + 1;
              (*(v124 + 32))(v96 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v102, v98, v129);
              dispatch thunk of Collection.formIndex(after:)();
              --v95;
              v92 = v100;
            }

            while (v95);
            (*(v110 + 8))(v97, v111);
            v115(v100, v83);
            v88 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
            v91 = v127;
          }

          else
          {
            v115(v92, v83);
          }

          v103 = *MEMORY[0x1E69DDC08];
          v104 = Array._bridgeToObjectiveC()().super.isa;
          [v91 invalidateSupplementaryElementsOfKind:v103 atIndexPaths:v104];

          v105 = *MEMORY[0x1E69DDC00];
          v106 = Array._bridgeToObjectiveC()().super.isa;

          [v91 invalidateSupplementaryElementsOfKind:v105 atIndexPaths:v106];

          v107 = [v128 v88[236]];
          [v107 invalidateLayoutWithContext_];
        }
      }

      return UICollectionViewListCoordinatorBase.clearDataSourceUpdates()();
    }

    v75 = *v60;
    v76 = v126;
    v77 = v129;
    (*v60)(v126, &v17[*(v65 + 48)], v129);
    v78 = v127;
    v75(v127, v17, v77);
    v79 = IndexPath._bridgeToObjectiveC()().super.isa;
    v80 = *v61;
    (*v61)(v78, v77);
    v81 = IndexPath._bridgeToObjectiveC()().super.isa;
    [(UICollectionView *)v128 moveItemAtIndexPath:v79 toIndexPath:v81];

    v82 = v76;
    v52 = v130;
    result = v80(v82, v77);
    v48 = 1;
    if (i == v59)
    {
      goto LABEL_15;
    }

LABEL_16:
    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v125 + 16))
    {
      goto LABEL_35;
    }

    v66 = v61;
    v67 = v59;
    v68 = v60;
    v69 = v17;
    v70 = v48;
    v71 = v125;
    type metadata accessor for (source: IndexPath, destination: IndexPath)();
    v65 = v72;
    v73 = *(v72 - 8);
    v74 = v71 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v48 = v70;
    v17 = v69;
    v60 = v68;
    v59 = v67;
    v61 = v66;
    v52 = v130;
    _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_0(v74 + *(v73 + 72) * i, v130, type metadata accessor for (source: IndexPath, destination: IndexPath));
    (*(v73 + 56))(v52, 0, 1, v65);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void @objc UICollectionViewListCoordinatorBase.scrollViewWillBeginDragging(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized UICollectionViewListCoordinatorBase.scrollViewWillBeginDragging(_:)();
}

void @objc UICollectionViewListCoordinatorBase.scrollViewDidEndDragging(_:willDecelerate:)(void *a1, uint64_t a2, void *a3, Swift::Bool a4)
{
  v6 = a3;
  v7 = a1;
  specialized UICollectionViewListCoordinatorBase.scrollViewDidEndDragging(_:willDecelerate:)(a4);
}

void @objc UICollectionViewListCoordinatorBase.scrollViewDidEndDecelerating(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized UICollectionViewListCoordinatorBase.scrollViewDidEndDecelerating(_:)();
}

void @objc UICollectionViewListCoordinatorBase.scrollViewDidEndScrollingAnimation(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized UICollectionViewListCoordinatorBase.scrollViewDidEndScrollingAnimation(_:)();
}

uint64_t closure #3 in UICollectionViewListCoordinatorBase.updateEditingState(_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969C28];
  v9 = MEMORY[0x1E69E6720];
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  (*(v5 + 56))(&v21 - v15, 1, 1, v4, v14);
  v17 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v16, a1 + v17, &lazy cache variable for type metadata for IndexPath?, v8);
  swift_endAccess();
  v18 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xE0);
  swift_beginAccess();
  outlined init with copy of SwipeActions.Configuration?(a2 + v18, v12, &lazy cache variable for type metadata for IndexPath?, v8, v9, _s10Foundation9IndexPathVSgMaTm_1);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return _s10Foundation9IndexPathVSgWOhTm_1(v12, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  }

  (*(v5 + 32))(v7, v12, v4);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

  return (*(v5 + 8))(v7, v4);
}

BOOL closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:canEditItemAt:)@<W0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for _RowVisitationContext();
  result = _RowVisitationContext.canMove.getter(v2) || (UICollectionViewListCoordinatorBase.hasMultipleSelection.getter() & 1) != 0 || (_RowVisitationContext.hasSwipeActions.getter() & 1) != 0 || _RowVisitationContext.canDelete.getter(v2);
  *a1 = result;
  return result;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:shouldBeginMultipleSelectionInteractionAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t closure #1 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v34 = a3;
  v37 = a4;
  v5 = *MEMORY[0x1E69E7D40] & *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v31 = *a2;
  v32 = v6;
  v35 = v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[5];
  v44 = a1[4];
  v45 = v11;
  v46 = a1[6];
  v12 = a1[1];
  v40 = *a1;
  v41 = v12;
  v13 = a1[3];
  v42 = a1[2];
  v43 = v13;
  v36 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration);
  v14 = a1[5];
  v39[4] = a1[4];
  v39[5] = v14;
  v39[6] = a1[6];
  v15 = a1[1];
  v39[0] = *a1;
  v39[1] = v15;
  v16 = a1[3];
  v39[2] = a1[2];
  v39[3] = v16;
  Strong = swift_weakLoadStrong();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v7;
  (*(v8 + 16))(v10, v34, v7);
  v19 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v31;
  v23 = v32;
  *(v21 + 16) = *((v32 & v31) + 0x60);
  *(v21 + 24) = *(v35 + 104);
  *(v21 + 40) = *((v23 & v22) + 0x78);
  *(v21 + 48) = v17;
  (*(v8 + 32))(v21 + v19, v10, v18);
  v24 = (v21 + v20);
  v25 = v45;
  v24[4] = v44;
  v24[5] = v25;
  v24[6] = v46;
  v26 = v41;
  *v24 = v40;
  v24[1] = v26;
  v27 = v43;
  v24[2] = v42;
  v24[3] = v27;
  outlined init with copy of SwipeActions.Configuration(&v40, v38);
  outlined init with copy of SwipeActions.Configuration(&v40, v38);
  v28 = specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(v39, Strong, partial apply for closure #1 in closure #1 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:), v21);

  *v37 = v28;
  return result;
}

void *closure #1 in UICollectionViewListCoordinatorBase.leadingSwipeActionsConfiguration(indexPath:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1();
  }

  v10 = Strong;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(result, a4, 0);
    v14 = v13;

    v23[0] = *(a5 + 56);
    v15 = *(a5 + 88);
    v23[1] = *(a5 + 72);
    v23[2] = v15;
    v24 = *(a5 + 104);
    if (*(&v23[0] + 1))
    {
      v18 = 0;
      v19 = a1;
      v20 = a2;
      v21 = partial apply for closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:);
      v22 = v14;
      v16 = MEMORY[0x1E69E6720];
      outlined init with copy of SwipeActions.Configuration?(v23, v17, &lazy cache variable for type metadata for Binding<SwipeActionResultToken?>?, type metadata accessor for Binding<SwipeActionResultToken?>, MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);

      dispatch thunk of AnyLocation.set(_:transaction:)();

      outlined consume of SwipeActionResultToken?(v18, v19, v20, v21);
      return _s10Foundation9IndexPathVSgWOhTm_1(v23, &lazy cache variable for type metadata for Binding<SwipeActionResultToken?>?, type metadata accessor for Binding<SwipeActionResultToken?>, v16);
    }

    else
    {
      partial apply for closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)();
      (a1)(1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL key path getter for _RowVisitationContext.canDelete : <A, B>_RowVisitationContext<ShadowListDataSource<A>>@<W0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for _RowVisitationContext();
  result = _RowVisitationContext.canDelete.getter(v2);
  *a1 = result;
  return result;
}

void closure #2 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v9 = Strong;
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(v12, a6, 1);

      partial apply for closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)();

LABEL_5:
      a3(1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ()(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> (), v8);
}

uint64_t closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a5;
  v33 = a4;
  v32 = a1;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a3, v13, v16);
  v18 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v30;
  *(v19 + 2) = v30;
  *(v19 + 3) = a6;
  *(v19 + 4) = a7;
  *(v19 + 5) = a8;
  *(v19 + 6) = a2;
  (*(v14 + 32))(&v19[v18], v17, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:);
  *(v21 + 24) = v19;
  v38 = partial apply for thunk for @callee_guaranteed () -> ();
  v39 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed () -> ();
  v37 = &block_descriptor_46;
  v31 = _Block_copy(&aBlock);

  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = a6;
  v22[4] = a7;
  v22[5] = a8;
  v23 = v32;
  v22[6] = a2;
  v22[7] = v23;
  v38 = partial apply for closure #2 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:);
  v39 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v37 = &block_descriptor_39_1;
  v24 = _Block_copy(&aBlock);

  v25 = v23;

  v26 = v25;
  v27 = v31;
  [v26 performBatchUpdates:v31 completion:v24];
  _Block_release(v24);
  _Block_release(v27);
  LOBYTE(aBlock) = 17;
  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = a6;
  *(v28 + 32) = a7;
  *(v28 + 40) = a8;
  *(v28 + 48) = v33;
  *(v28 + 56) = a2;

  static Update.enqueueAction(reason:_:)();

  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(uint64_t a1, uint64_t a2)
{
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for IndexPath();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v5, 1, 1, v8);
    v10 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xE0);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v5, v7 + v10, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    swift_endAccess();
    swift_beginAccess();
    v11 = type metadata accessor for ShadowListDataSource();
    WitnessTable = swift_getWitnessTable();
    ListCoreDataSource.deleteCell(forRowAt:)(a2, v11, WitnessTable);
    swift_endAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
      v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_18CD63400;
      (*(v9 + 16))(v16 + v15, a2, v8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v14 deleteItemsAtIndexPaths_];
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #2 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(uint64_t a1, uint64_t a2, UIView *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    UICollectionViewListCoordinatorBase.enqueueLayoutInvalidationIfNeeded(_:)(a3);
  }
}

void closure #3 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v2 = Strong;
    UICollectionViewListCoordinatorBase.commitUpdates()();
  }

  else
  {
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return;
    }

    v2 = v3;
    swift_beginAccess();
    type metadata accessor for ShadowListDataSource();
    ShadowListDataSource.discardUpdatesForDeletion()();
    swift_endAccess();
  }
}

uint64_t closure #1 in UICollectionViewListCoordinatorBase.id(for:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for _RowVisitationContext();
  return _RowVisitationContext.intelligenceDataSourceItemID.getter(v2, a1);
}

uint64_t UICollectionViewListCoordinatorBase.__ivar_destroyer()
{
  v1 = MEMORY[0x1E69E7D40];

  v2 = *((*v1 & *v0) + 0x88);
  v3 = type metadata accessor for ShadowListDataSource();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&v0[*((*v1 & *v0) + 0x98)]);
  outlined consume of ListItemTint?(*&v0[*((*v1 & *v0) + 0xA0)]);
  swift_weakDestroy();
  v4 = *((*v1 & *v0) + 0xB8);
  v5 = type metadata accessor for ListCoreBatchUpdates();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *((*v1 & *v0) + 0xD0);
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = MEMORY[0x1E6969C28];
  v9 = MEMORY[0x1E69E6720];
  _s10Foundation9IndexPathVSgWOhTm_1(&v0[*((*v1 & *v0) + 0xE0)], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  _s10Foundation9IndexPathVSgWOhTm_1(&v0[*((*v1 & *v0) + 0xE8)], &lazy cache variable for type metadata for IndexPath?, v8, v9);
  MEMORY[0x18D011290](&v0[*((*v1 & *v0) + 0xF8)]);
  v10 = &v0[*((*v1 & *v0) + 0x100)];
  outlined consume of ResolvedSubviewsSizingOptions?(*v10, *(v10 + 1), *(v10 + 2));
  v11 = *((*v1 & *v0) + 0x110);
  type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  v13 = *((*v1 & *v0) + 0x118);
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  v15 = &v0[*((*v1 & *v0) + 0x128)];
  outlined consume of Binding<NavigationSplitViewColumn>?(*v15, v15[1]);

  return _s10Foundation9IndexPathVSgWOhTm_1(&v0[*((*v1 & *v0) + 0x178)], &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, v9);
}

id UICollectionViewListCoordinatorBase.__deallocating_deinit()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UICollectionViewListCoordinatorBase();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t @objc UICollectionViewListCoordinatorBase.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0x88);
  v4 = type metadata accessor for ShadowListDataSource();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&a1[*((*v2 & *a1) + 0x98)]);
  outlined consume of ListItemTint?(*&a1[*((*v2 & *a1) + 0xA0)]);
  swift_weakDestroy();
  v5 = *((*v2 & *a1) + 0xB8);
  v6 = type metadata accessor for ListCoreBatchUpdates();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *((*v2 & *a1) + 0xD0);
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(&a1[v7], v8);
  v9 = MEMORY[0x1E6969C28];
  v10 = MEMORY[0x1E69E6720];
  _s10Foundation9IndexPathVSgWOhTm_1(&a1[*((*v2 & *a1) + 0xE0)], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  _s10Foundation9IndexPathVSgWOhTm_1(&a1[*((*v2 & *a1) + 0xE8)], &lazy cache variable for type metadata for IndexPath?, v9, v10);
  MEMORY[0x18D011290](&a1[*((*v2 & *a1) + 0xF8)]);
  v11 = &a1[*((*v2 & *a1) + 0x100)];
  outlined consume of ResolvedSubviewsSizingOptions?(*v11, *(v11 + 1), *(v11 + 2));
  v12 = *((*v2 & *a1) + 0x110);
  type metadata accessor for Binding();
  v13 = type metadata accessor for Optional();
  (*(*(v13 - 8) + 8))(&a1[v12], v13);
  v14 = *((*v2 & *a1) + 0x118);
  v15 = type metadata accessor for Optional();
  (*(*(v15 - 8) + 8))(&a1[v14], v15);
  v16 = &a1[*((*v2 & *a1) + 0x128)];
  outlined consume of Binding<NavigationSplitViewColumn>?(*v16, v16[1]);

  return _s10Foundation9IndexPathVSgWOhTm_1(&a1[*((*v2 & *a1) + 0x178)], &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, v10);
}

void protocol witness for ListCollectionViewCellEditMenuDelegate.listCollectionViewEditMenuInteraction(_:targetRectFor:) in conformance UICollectionViewListCoordinatorBase<A, B>(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    [v2 frame];
    static UnitPoint.top.getter();
  }
}

unint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceAppIntentsPayloads(for:request:) in conformance UICollectionViewListCoordinatorBase<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceAppIntentsPayloads(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceNeedsAppIntentsPayloadsFetch(for:request:) in conformance UICollectionViewListCoordinatorBase<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceNeedsAppIntentsPayloadsFetch(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:) in conformance UICollectionViewListCoordinatorBase<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:) in conformance UITableViewListCoordinator<A, B>;

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:synchronousPayloads:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:) in conformance UICollectionViewListCoordinatorBase<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v3;
  v7[1] = protocol witness for IntelligenceAppIntentsDataSourcePayloadProviding.intelligenceFetchAppIntentsPayloads(for:request:) in conformance UITableViewListCoordinator<A, B>;

  return IntelligenceAppIntentsDataSourcePayloadProviderAdaptor.intelligenceFetchAppIntentsPayloads(for:request:)(a1, a2, a3, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for UICollectionViewListCoordinatorBase<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t one-time initialization function for allowNonMomentaryEditModeSelection()
{
  result = closure #1 in variable initialization expression of allowFakeMoves();
  allowNonMomentaryEditModeSelection = result & 1;
  return result;
}

uint64_t specialized UICollectionViewListCoordinatorBase.listCollectionViewEditMenuInteraction(_:menuFor:suggestedActions:)(void *a1)
{
  v2 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIKitEditMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      _s7SwiftUI16PlatformItemListVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList?, &type metadata for PlatformItemList, MEMORY[0x1E69E6720]);
      v6 = a1;

      static Update.ensure<A>(_:)();
      v7 = MEMORY[0x1E69E7CC0];
      if (v24)
      {
        v8 = v24;
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      if (*(v8 + 16))
      {
        v24 = MEMORY[0x1E69E7CC0];
        v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v10 = MEMORY[0x1E69E7CC8];
        v4[8] = 0;
        *(v4 + 2) = v10;
        *(v4 + 3) = v9;
        *(v4 + 4) = v7;
        *(v4 + 5) = v10;
        v4[48] = 0;
        _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
        v11 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
        v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_18CD63400;
        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v11, static MenuVisitor.MenuStackGroup.empty);
        _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_0(v14, v13 + v12, type metadata accessor for MenuVisitor.MenuStackGroup);
        *(v4 + 7) = v13;
        v15 = *(v2 + 32);
        v16 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
        (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
        *v4 = 0;
        MenuVisitor.visit(_:uniqueNames:)(v8, &v24);

        v17 = *(v4 + 4);

        _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v4, type metadata accessor for MenuVisitor);
      }

      else
      {

        v17 = MEMORY[0x1E69E7CC0];
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v25.value.super.isa = 0;
      v25.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, v18, 0, v25, 0, 0xFFFFFFFFFFFFFFFFLL, v17, v22);
      v21 = v20;

      return v21;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized UICollectionViewListCoordinatorBase.listCollectionViewEditMenuInteraction(_:willPresentMenuFor:animator:)(void *a1, void *a2)
{
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 view];
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {

      goto LABEL_12;
    }

    v22 = v21;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      (*(v15 + 56))(v13, 1, 1, v14);
LABEL_10:
      _s10Foundation9IndexPathVSgWOhTm_1(v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      goto LABEL_12;
    }

    v33 = a2;
    v24 = Strong;
    v25 = [Strong indexPathForCell_];

    if (v25)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = *(v15 + 56);
      v26(v10, 0, 1, v14);
    }

    else
    {

      v26 = *(v15 + 56);
      v26(v10, 1, 1, v14);
    }

    a2 = v33;
    outlined init with take of IndexPath?(v10, v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      goto LABEL_10;
    }

    v27 = *(v15 + 32);
    v27(v18, v13, v14);
    v27(v7, v18, v14);
    v26(v7, 0, 1, v14);
    v28 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE8);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v7, v2 + v28, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    swift_endAccess();
  }

LABEL_12:
  type metadata accessor for UIKitEditMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      v34 = 17;
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = 1;
      v32 = a2;

      static Update.enqueueAction(reason:_:)();
    }
  }

  return result;
}

uint64_t specialized UICollectionViewListCoordinatorBase.listCollectionViewEditMenuInteraction(_:willDismissMenuFor:animator:)(void *a1, void *a2)
{
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 view];
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {

      goto LABEL_15;
    }

    v22 = v21;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      (*(v15 + 56))(v13, 1, 1, v14);
LABEL_11:
      _s10Foundation9IndexPathVSgWOhTm_1(v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      goto LABEL_15;
    }

    v36 = a2;
    v24 = Strong;
    v25 = [Strong indexPathForCell_];

    if (v25)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = *(v15 + 56);
      v26(v10, 0, 1, v14);
    }

    else
    {
      v26 = *(v15 + 56);
      v26(v10, 1, 1, v14);
    }

    outlined init with take of IndexPath?(v10, v13, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    v27 = (*(v15 + 48))(v13, 1, v14);
    a2 = v36;
    if (v27 == 1)
    {

      goto LABEL_11;
    }

    (*(v15 + 32))(v18, v13, v14);
    v26(v7, 1, 1, v14);
    v28 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE8);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v7, v2 + v28, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28]);
    swift_endAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v30 deselectItemAtIndexPath:isa animated:1];
    }

    (*(v15 + 8))(v18, v14);
  }

LABEL_15:
  type metadata accessor for UIKitEditMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder))
    {
      v37 = 17;
      v33 = swift_allocObject();
      swift_weakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      v35 = a2;

      static Update.enqueueAction(reason:_:)();
    }
  }

  return result;
}

uint64_t specialized UICollectionViewListCoordinatorBase.pendingSelection.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  v9 = *((v4 & v3) + 0x118);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  swift_beginAccess();
  (*(v6 + 24))(&v1[v9], a1, v5);
  swift_endAccess();
  UICollectionViewListCoordinatorBase.pendingSelection.didset(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t partial apply for closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));
  v9 = *(v8 + *(v5 + 64));

  return closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(v6, v7, v8, v9, v1, v2, v3, v4);
}

void partial apply for closure #1 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 48);
  v3 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  closure #1 in closure #1 in UICollectionViewListCoordinatorBase.destructiveAction(collectionView:indexPath:useOnDelete:)(v2, v3);
}

uint64_t objectdestroy_29Tm_0()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_56Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = (v0 + v4);

  if (*(v0 + v4 + 40))
  {
  }

  if (v5[8])
  {

    v6 = v5[10];
    if (v6)
    {
      if (v6 == 1)
      {
        goto LABEL_9;
      }
    }

    if (v5[12])
    {
    }
  }

LABEL_9:

  return swift_deallocObject();
}

void *partial apply for closure #1 in closure #1 in UICollectionViewListCoordinatorBase.trailingSwipeActionsConfiguration(indexPath:environment:)(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  return closure #1 in UICollectionViewListCoordinatorBase.leadingSwipeActionsConfiguration(indexPath:)(a1, a2, *(v2 + 48), v2 + v6, v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
}

void type metadata accessor for EnvironmentPropertyKey<FocusBridgeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>);
    }
  }
}

void partial apply for closure #4 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)()
{
  v1 = *(v0 + 16);
  [v1 layoutIfNeeded];
  UICollectionViewListCoordinatorBase.updateListContents(_:)(v1);
}

uint64_t outlined init with take of IndexPath?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation9IndexPathVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t specialized UICollectionViewListCoordinatorBase.editMenuResponder<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a7 + 8) + 56))(a4);
  if (result)
  {
    v8 = result;
    v9 = specialized _UIHostingView.editMenuBridge.getter();

    v10 = &v9[OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 24))(ObjectType, v11);
      v14 = swift_unknownObjectRelease();
      if (v13)
      {
        MEMORY[0x1EEE9AC00](v14);
        dispatch thunk of ResponderNode.visit(applying:)();

        return 0;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<A.ListCoreDataSource.SelectionValue>) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 48);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for closure #2 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)()
{
  v1 = *(swift_getAssociatedTypeWitness() - 8);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return closure #2 in UICollectionViewListCoordinatorBase.collectionView(_:performPrimaryActionForItemAt:)(v2, v3, v4);
}

void specialized UICollectionViewListCoordinatorBase.scrollViewDidEndDecelerating(_:)()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90));
  *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 0;
  v2 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 66) = 0;
  *(v2 + 64) = 512;
  ScrollViewHelper.updateGraphState(isPreferred:)(0);
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias);
  *v3 = 0;
  v3[1] = 0;
}

void specialized UICollectionViewListCoordinatorBase.scrollViewDidEndScrollingAnimation(_:)()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90));
  *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending) = 1;
  *(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 0;
  v2 = v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 66) = 0;
  *(v2 + 64) = 512;
  ScrollViewHelper.updateGraphState(isPreferred:)(0);
}

unint64_t specialized UICollectionViewListCoordinatorBase.presentEditMenu<A>(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = specialized UICollectionViewListCoordinatorBase.editMenuResponder<A>(for:)(a1, a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v8 = result;
    type metadata accessor for UIKitEditMenuConfiguration();
    lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
    AnyHashable.init<A>(_:)();
    v9 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
    [v9 setPreferredArrowDirection_];
    *&v9[OBJC_IVAR____TtC7SwiftUI26UIKitEditMenuConfiguration_responder] = v8;

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
LABEL_32:
    }

    v11 = v10;
    swift_unknownObjectRetain();
    v12 = [v11 interactions];
    type metadata accessor for UIInteraction();
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = MEMORY[0x1E69E7CC0];
    if (v13 >> 62)
    {
LABEL_22:
      v14 = __CocoaSet.count.getter();
      v21 = v9;
      if (v14)
      {
LABEL_5:
        v9 = 0;
        v15 = MEMORY[0x1E69E7CC0];
        do
        {
          v16 = v9;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              MEMORY[0x18D00E9C0](v16, v13);
              v9 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              swift_unknownObjectRetain();
              v9 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_20:
                __break(1u);
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v16;
            if (v9 == v14)
            {
              goto LABEL_24;
            }
          }

          MEMORY[0x18D00CC30]();
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v15 = v22;
        }

        while (v9 != v14);
LABEL_24:

        if (v15 >> 62)
        {
          v17 = __CocoaSet.count.getter();
          v9 = v21;
          if (v17)
          {
LABEL_26:
            v18 = __OFSUB__(v17, 1);
            result = v17 - 1;
            if (v18)
            {
              __break(1u);
            }

            else if ((v15 & 0xC000000000000001) == 0)
            {
              if ((result & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v19 = *(v15 + 8 * result + 32);
LABEL_31:
                v20 = v19;

                [v20 presentEditMenuWithConfiguration_];
                swift_unknownObjectRelease();

                goto LABEL_32;
              }

              __break(1u);
              return result;
            }

            v19 = MEMORY[0x18D00E9C0](result, v15);
            goto LABEL_31;
          }
        }

        else
        {
          v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v9 = v21;
          if (v17)
          {
            goto LABEL_26;
          }
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v9;
      if (v14)
      {
        goto LABEL_5;
      }
    }

    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  return result;
}

BOOL specialized UICollectionViewListCoordinatorBase.collectionView(_:shouldBeginMultipleSelectionInteractionAt:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  if ((UICollectionViewListCoordinatorBase.hasMultipleSelection.getter() & 1) == 0 || !*(v1 + *((*v3 & *v1) + 0x128) + 8))
  {
    return 0;
  }

  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(a1, v8);
  v9 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness) != 1;
  (*(v6 + 8))(v8, v5);
  return v9;
}

void specialized UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplaying:forItemAt:)()
{
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCastUnknownClass())
  {
    swift_getAssociatedConformanceWitness();
    PlatformListViewBase.updateViewGraphForDisplay(_:)(0);
  }
}

void specialized UICollectionViewListCoordinatorBase.collectionView(_:didEndDisplayingSupplementaryView:forElementOfKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v5 != a3)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_13;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v8 != a3)
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCastUnknownClass())
  {
    swift_getAssociatedConformanceWitness();
    PlatformListViewBase.updateViewGraphForDisplay(_:)(0);
  }
}

uint64_t specialized UICollectionViewListCoordinatorBase.collectionView(_:canMoveItemAt:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for ShadowListDataSource();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = *((v4 & v3) + 0x88);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(a1) = ListCoreDataSource.canMoveCell(forRowAt:)(a1, v5, WitnessTable);
  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void specialized UICollectionViewListCoordinatorBase.collectionView(_:moveItemAt:to:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = type metadata accessor for ShadowListDataSource();
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.moveCell(fromRowAt:to:)(a1, a2, v4, WitnessTable);
  swift_endAccess();
  UICollectionViewListCoordinatorBase.commitUpdates()();
}

uint64_t specialized UICollectionViewListCoordinatorBase.collectionView(_:canEditItemAt:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for ShadowListDataSource();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *((v4 & v3) + 0x88);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  v13 = v1;
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(a1, partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:canEditItemAt:), v12, v5, MEMORY[0x1E69E6370], WitnessTable, &v14);
  (*(v6 + 8))(v8, v5);
  return v14 & 1;
}

uint64_t objectdestroy_141Tm()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t type metadata accessor for UIInteraction()
{
  result = lazy cache variable for type metadata for UIInteraction;
  if (!lazy cache variable for type metadata for UIInteraction)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIInteraction);
  }

  return result;
}

uint64_t BackgroundExtensionView.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BackgroundExtensionView();
  v5 = a2 + *(v4 + 36);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  v6 = a2 + *(v4 + 40);
  *v6 = 0;
  *(v6 + 8) = 1;
  return a1();
}

uint64_t BackgroundExtensionView.init(isBlurEnabled:content:)@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BackgroundExtensionView();
  v7 = a3 + *(v6 + 36);
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  v8 = a3 + *(v6 + 40);
  *v8 = 0;
  *(v8 + 8) = a1;
  return a2();
}

uint64_t BackgroundExtensionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
  v9 = type metadata accessor for ModifiedContent();
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  type metadata accessor for CALayerOverlayModifier<CABackgroundExtensionView>();
  v32 = v12;
  v13 = type metadata accessor for ModifiedContent();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v31 - v16;
  v17 = *(a1 + 24);
  View.clipped(antialiased:)();
  (*(v4 + 16))(v6, v2, a1);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  *(v19 + 24) = v17;
  (*(v4 + 32))(v19 + v18, v6, a1);
  v20 = static Alignment.center.getter();
  v22 = v21;
  type metadata accessor for MutableBox<Attribute<CALayer?>?>(0, &lazy cache variable for type metadata for MutableBox<Attribute<CALayer?>?>, type metadata accessor for Attribute<CALayer?>?, MEMORY[0x1E697DAC0]);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 20) = 1;
  swift_beginAccess();
  *(v23 + 16) = 0;
  *(v23 + 20) = 1;
  v41[0] = partial apply for closure #1 in BackgroundExtensionView.body.getter;
  v41[1] = v19;
  v41[2] = v20;
  v41[3] = v22;
  v42 = 1;
  v43 = v23;
  v24 = lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>();
  v39 = v17;
  v40 = v24;
  WitnessTable = swift_getWitnessTable();
  v26 = v31;
  MEMORY[0x18D00A570](v41, v9, v32, WitnessTable);

  (*(v35 + 8))(v11, v9);
  v37 = WitnessTable;
  v38 = &protocol witness table for CALayerOverlayModifier<A>;
  v27 = swift_getWitnessTable();
  v28 = v33;
  static ViewBuilder.buildExpression<A>(_:)(v26, v13, v27);
  v29 = *(v34 + 8);
  v29(v26, v13);
  static ViewBuilder.buildExpression<A>(_:)(v28, v13, v27);
  return (v29)(v28, v13);
}

void type metadata accessor for CALayerOverlayModifier<CABackgroundExtensionView>()
{
  if (!lazy cache variable for type metadata for CALayerOverlayModifier<CABackgroundExtensionView>)
  {
    type metadata accessor for CABackgroundExtensionView();
    lazy protocol witness table accessor for type CABackgroundExtensionView and conformance CABackgroundExtensionView();
    v0 = type metadata accessor for CALayerOverlayModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CALayerOverlayModifier<CABackgroundExtensionView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CABackgroundExtensionView and conformance CABackgroundExtensionView()
{
  result = lazy protocol witness table cache variable for type CABackgroundExtensionView and conformance CABackgroundExtensionView;
  if (!lazy protocol witness table cache variable for type CABackgroundExtensionView and conformance CABackgroundExtensionView)
  {
    type metadata accessor for CABackgroundExtensionView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CABackgroundExtensionView and conformance CABackgroundExtensionView);
  }

  return result;
}

uint64_t closure #1 in BackgroundExtensionView.body.getter(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundExtensionView();
  v5 = a2 + *(v4 + 36);
  if (*(v5 + 32))
  {
    static Edge.Set.all.getter();
    EdgeInsets.init(_:edges:)();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = *(v5 + 16);
    v13 = *(v5 + 24);
    v7 = *v5;
    v9 = *(v5 + 8);
  }

  v14 = a2 + *(v4 + 40);
  if (*(v14 + 8))
  {
    v15 = 10.0;
  }

  else
  {
    v15 = *v14;
  }

  v16 = a1;
  v17.n128_u64[0] = v7;
  v18.n128_u64[0] = v9;
  v19.n128_u64[0] = v11;
  v20.n128_u64[0] = v13;
  v21.n128_f64[0] = v15;

  return MEMORY[0x1EEE02140](v16, v17, v18, v19, v20, v21);
}

uint64_t partial apply for closure #1 in BackgroundExtensionView.body.getter(void *a1)
{
  v3 = *(type metadata accessor for BackgroundExtensionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in BackgroundExtensionView.body.getter(a1, v4);
}

void type metadata accessor for MutableBox<Attribute<CALayer?>?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for CALayer?()
{
  if (!lazy cache variable for type metadata for CALayer?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for CALayer);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CALayer?);
    }
  }
}

uint64_t CALayerOverlayModifier.effectValue(size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (v2[2])
  {
    v4 = result;
    v5 = swift_allocObject();
    v5[5] = v4;
    v5[6] = swift_getWitnessTable();
    v6 = swift_allocObject();
    v5[2] = v6;
    v7 = v2[1];
    v6[1] = *v2;
    v6[2] = v7;
    v6[3] = v2[2];

    v8 = 3;
  }

  else
  {
    v5 = 0;
    v8 = 20;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 12) = v8;
  return result;
}

id CALayerOverlayModifier.makePlatformGroup()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = [v1 layer];
  v3 = MEMORY[0x18D00C850](0xD000000000000021, 0x800000018CD4F230);
  [v2 setName_];

  v4 = *(v0 + 40);
  swift_beginAccess();
  if ((*(v4 + 20) & 1) == 0)
  {
    v6 = [v1 layer];
    type metadata accessor for CALayer?();
    AGGraphSetValue();
  }

  return v1;
}

void CALayerOverlayModifier.updatePlatformGroup(_:)()
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 layer];
    v3 = *(v0 + 40);
    swift_beginAccess();
    if (*(v3 + 20))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for CALayer?();
      AGGraphSetValue();

      swift_unknownObjectRelease();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t CALayerOverlayModifier.OverlayChildAttribute.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CALayerOverlayModifier();
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 32);
  v5 = *(Value + 40);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

Swift::Void __swiftcall CALayerOverlayModifier.OverlayChildAttribute.updateValue()()
{
  v2 = v1;
  v3 = HIDWORD(v0);
  v19[9] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-v6];
  CALayerOverlayModifier.OverlayChildAttribute.modifier.getter(v17);
  v8 = v18;
  swift_beginAccess();
  *(v8 + 16) = v3;
  *(v8 + 20) = 0;

  type metadata accessor for CALayer?();
  Value = AGGraphGetValue();
  if (!*Value)
  {
    goto LABEL_5;
  }

  v10 = *Value;
  if (*AGGraphGetValue() != 1)
  {

LABEL_5:
    v14 = (*(*(v2 - 8) + 56))(v7, 1, 1, v2);
    MEMORY[0x1EEE9AC00](v14);
    *&v16[-16] = type metadata accessor for CALayerOverlayModifier.OverlayChildAttribute();
    *&v16[-8] = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v7, partial apply for closure #1 in StatefulRule.value.setter, &v16[-32], v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v15);
    goto LABEL_6;
  }

  CALayerOverlayModifier.OverlayChildAttribute.modifier.getter(v19);
  v11 = v19[0];

  v11(v10);

  v12 = (*(*(v2 - 8) + 56))(v7, 0, 1, v2);
  MEMORY[0x1EEE9AC00](v12);
  *&v16[-16] = type metadata accessor for CALayerOverlayModifier.OverlayChildAttribute();
  *&v16[-8] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v7, closure #1 in StatefulRule.value.setterpartial apply, &v16[-32], v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v13);

LABEL_6:
  (*(v5 + 8))(v7, v4);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance CALayerOverlayModifier<A>.OverlayChildAttribute@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static CALayerOverlayModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[3];
  v31 = a2[2];
  v32 = v11;
  v33 = a2[4];
  v34 = *(a2 + 20);
  v12 = a2[1];
  v29 = *a2;
  v30 = v12;
  v25 = a5;
  v26 = a6;
  type metadata accessor for CALayerOverlayModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v23 = a5;
  v24 = a6;
  _GraphValue.subscript.getter();
  type metadata accessor for CALayer?();
  v13 = Attribute.init<A>(body:value:flags:update:)();
  v28[0] = _GraphValue.value.getter();
  v28[1] = v13;
  v28[2] = v18;
  v20 = type metadata accessor for Optional();
  v21 = type metadata accessor for CALayerOverlayModifier.OverlayChildAttribute();
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v19, v21, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = v10;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  v27 = a6;

  swift_getWitnessTable();
  LOBYTE(v28[0]) = 0;
  makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)();
}

uint64_t closure #1 in static CALayerOverlayModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v6[2] = type metadata accessor for CALayerOverlayModifier();
  v2 = MEMORY[0x1E6981D58];
  v3 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 16, closure #1 in static PointerOffset.of(_:)partial apply, v6, v2, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6[5];
}

uint64_t closure #2 in static CALayerOverlayModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v6[2] = type metadata accessor for CALayerOverlayModifier();
  v2 = MEMORY[0x1E69E6370];
  v3 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 32, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v6, v2, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6[5];
}

uint64_t closure #3 in static CALayerOverlayModifier._makeView(modifier:inputs:body:)()
{
  type metadata accessor for CALayerOverlayModifier();
  swift_getWitnessTable();
  return static RendererEffect.makeRendererEffect(effect:inputs:body:)();
}

void (*protocol witness for Animatable.animatableData.modify in conformance CALayerOverlayModifier<A>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CALayerOverlayModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for BackgroundExtensionView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for BackgroundExtensionView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 32);
    v13 = *(v11 + 16);
    *v10 = *v11;
    *(v10 + 16) = v13;
    *(v10 + 32) = v12;
    v14 = (v3 + v5 + 47) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v5 + 47) & 0xFFFFFFFFFFFFFFF8;
    v16 = *v15;
    *(v14 + 8) = *(v15 + 8);
    *v14 = v16;
  }

  return v3;
}

uint64_t initializeWithCopy for BackgroundExtensionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  return a1;
}

uint64_t assignWithCopy for BackgroundExtensionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  return a1;
}

uint64_t initializeWithTake for BackgroundExtensionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  return a1;
}

uint64_t assignWithTake for BackgroundExtensionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  *(v13 + 8) = *(v14 + 8);
  *v13 = v15;
  return a1;
}

uint64_t getEnumTagSinglePayload for BackgroundExtensionView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 47) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for BackgroundExtensionView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 47) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

unint64_t lazy protocol witness table accessor for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier()
{
  result = lazy protocol witness table cache variable for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier;
  if (!lazy protocol witness table cache variable for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier);
  }

  return result;
}

uint64_t destroy for CALayerOverlayModifier()
{
}

uint64_t initializeWithCopy for CALayerOverlayModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for CALayerOverlayModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for CALayerOverlayModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t BackgroundExtensionViewModifier.body(content:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  }

  else
  {
    Path.init(_:)();
    lazy protocol witness table accessor for type Path and conformance Path();
  }

  v4 = AnyShape.init<A>(_:)();
  v5 = static Alignment.center.getter();
  v7 = v6;
  type metadata accessor for MutableBox<Attribute<CALayer?>?>(0, &lazy cache variable for type metadata for MutableBox<Attribute<CALayer?>?>, type metadata accessor for Attribute<CALayer?>?, MEMORY[0x1E697DAC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 20) = 1;
  result = swift_beginAccess();
  *(v8 + 16) = 0;
  *(v8 + 20) = 1;
  *a2 = v4;
  *(a2 + 8) = 256;
  *(a2 + 16) = closure #1 in BackgroundExtensionViewModifier.body(content:);
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 48) = a1 & 1;
  *(a2 + 56) = v8;
  return result;
}

void closure #1 in BackgroundExtensionViewModifier.body(content:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  CABackgroundExtensionView.init(layer:blurUnitInsets:blurRadius:)();
  type metadata accessor for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>();
  *(a2 + *(v4 + 36)) = 0;
}

unint64_t lazy protocol witness table accessor for type Path and conformance Path()
{
  result = lazy protocol witness table cache variable for type Path and conformance Path;
  if (!lazy protocol witness table cache variable for type Path and conformance Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Path and conformance Path);
  }

  return result;
}

void type metadata accessor for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>)
  {
    type metadata accessor for CABackgroundExtensionView();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>, CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>, CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>();
    type metadata accessor for CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>, CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>)
  {
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<BackgroundExtensionViewModifier>, lazy protocol witness table accessor for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier, &type metadata for BackgroundExtensionViewModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, MEMORY[0x1E6981A90], MEMORY[0x1E697DDA0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>);
    }
  }
}

void type metadata accessor for _ClipEffect<Rectangle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyShape and conformance AnyShape()
{
  result = lazy protocol witness table cache variable for type AnyShape and conformance AnyShape;
  if (!lazy protocol witness table cache variable for type AnyShape and conformance AnyShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyShape and conformance AnyShape);
  }

  return result;
}

void type metadata accessor for CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>()
{
  if (!lazy cache variable for type metadata for CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>)
  {
    type metadata accessor for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>, CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>, lazy protocol witness table accessor for type CABackgroundExtensionView and conformance CABackgroundExtensionView);
    v0 = type metadata accessor for CALayerOverlayModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>, CALayerOverlayModifier<ModifiedContent<CABackgroundExtensionView, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<BackgroundExtensionViewModifier> and conformance _ViewModifier_Content<A>();
    lazy protocol witness table accessor for type _ClipEffect<AnyShape> and conformance _ClipEffect<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BackgroundExtensionViewModifier>, _ClipEffect<AnyShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<BackgroundExtensionViewModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<BackgroundExtensionViewModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<BackgroundExtensionViewModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<BackgroundExtensionViewModifier>, lazy protocol witness table accessor for type BackgroundExtensionViewModifier and conformance BackgroundExtensionViewModifier, &type metadata for BackgroundExtensionViewModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<BackgroundExtensionViewModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<AnyShape> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<AnyShape> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<AnyShape> and conformance _ClipEffect<A>)
  {
    type metadata accessor for _ClipEffect<Rectangle>(255, &lazy cache variable for type metadata for _ClipEffect<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, MEMORY[0x1E6981A90], MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<AnyShape> and conformance _ClipEffect<A>);
  }

  return result;
}

uint64_t static _ValueActionModifier._makeScene(modifier:inputs:body:)(_DWORD *a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  v20[1] = a4;
  v21 = a3;
  v34 = *MEMORY[0x1E69E9840];
  a7(255, a5, a6);
  swift_getWitnessTable();
  v11 = type metadata accessor for ValueActionDispatcher();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  LODWORD(v13) = *a1;
  v32 = *a2;
  v33 = *(a2 + 2);
  LODWORD(a1) = *(a2 + 6);
  v15 = *(a2 + 44);
  v30 = *(a2 + 28);
  v31 = v15;
  LODWORD(v25) = v13;
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  ValueActionDispatcher.init(modifier:phase:)();
  v23 = v11;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, a9, v22, v11, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  (*(v12 + 8))(v14, v11);
  v18 = AGGraphSetFlags();
  v25 = v32;
  v26 = v33;
  v27 = a1;
  v28 = v30;
  v29 = v31;
  return v21(v18, &v25);
}

uint64_t Scene.onChange<A>(of:initial:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v47 = a1;
  v48 = a3;
  v42 = a2;
  v46 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = v13;
  v39 = v12;
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _ValueActionModifier2();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v19 = type metadata accessor for ModifiedContent();
  v44 = *(v19 - 8);
  v45 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  v35 = *(v11 + 16);
  v35(v14, v47, a6, v20);

  v37 = v11;
  v36 = *(v11 + 32);
  v36(v18, v14, a6);
  v23 = &v18[*(v15 + 36)];
  *v23 = v48;
  *(v23 + 1) = a4;
  v40 = a4;
  v24 = a5;
  v43 = v22;
  v25 = a5;
  v26 = v41;
  Scene.modifier<A>(_:)(v18, v25, v15);
  (*(v16 + 8))(v18, v15);
  v27 = 0;
  v28 = 0;
  if (v42)
  {
    (v35)(v14, v47, a6);
    v29 = (*(v37 + 80) + 64) & ~*(v37 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = v24;
    *(v28 + 3) = a6;
    v30 = v39;
    v31 = v40;
    *(v28 + 4) = v26;
    *(v28 + 5) = v30;
    *(v28 + 6) = v48;
    *(v28 + 7) = v31;
    v36(&v28[v29], v14, a6);

    v27 = partial apply for closure #1 in Scene.onChange<A>(of:initial:_:);
  }

  v51[0] = v27;
  v51[1] = v28;
  v51[2] = 0;
  v51[3] = 0;
  v49 = v26;
  v50 = &protocol witness table for _ValueActionModifier2<A>;
  v32 = v45;
  swift_getWitnessTable();
  v33 = v43;
  Scene.modifier<A>(_:)(v51, v32, MEMORY[0x1E69805D8]);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27);
  return (*(v44 + 8))(v33, v32);
}

uint64_t Scene.onChange<A>(of:initial:_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a8;
  v35 = a3;
  v36 = a4;
  v33 = a2;
  v34 = a9;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _ValueActionModifier2();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  v31 = type metadata accessor for ModifiedContent();
  v32 = *(v31 - 8);
  v20 = MEMORY[0x1EEE9AC00](v31);
  v22 = &v30 - v21;
  (*(v13 + 16))(v15, a1, a6, v20);
  v23 = swift_allocObject();
  *(v23 + 2) = a5;
  *(v23 + 3) = a6;
  v24 = v30;
  *(v23 + 4) = a7;
  *(v23 + 5) = v24;
  *(v23 + 6) = v35;
  *(v23 + 7) = v36;

  (*(v13 + 32))(v19, v15, a6);
  v25 = &v19[*(v16 + 36)];
  *v25 = partial apply for closure #1 in Scene.onChange<A>(of:initial:_:);
  v25[1] = v23;
  Scene.modifier<A>(_:)(v19, a5, v16);
  (*(v17 + 8))(v19, v16);
  v26 = 0;
  v27 = 0;
  if (v33)
  {
    v27 = v36;

    v26 = v35;
  }

  v39[0] = v26;
  v39[1] = v27;
  v39[2] = 0;
  v39[3] = 0;
  v37 = a7;
  v38 = &protocol witness table for _ValueActionModifier2<A>;
  v28 = v31;
  swift_getWitnessTable();
  Scene.modifier<A>(_:)(v39, v28, MEMORY[0x1E69805D8]);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v26);
  return (*(v32 + 8))(v22, v28);
}

uint64_t Scene.onChange<A>(of:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v18 = a4;
  v16 = a5;
  v17 = a2;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ValueActionModifier();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v7 + 16))(v9, a1, a3, v12);

  _ValueActionModifier.init(value:action:)();
  Scene.modifier<A>(_:)(v14, v17, v10);
  return (*(v11 + 8))(v14, v10);
}

uint64_t partial apply for closure #1 in Scene.onChange<A>(of:initial:_:)()
{
  v1 = *(*(v0 + 24) - 8);
  return (*(v0 + 48))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)), v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));
}

{
  return (*(v0 + 48))();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UpdateCoalescingCollectionView.VisibleCellsUpdate.StateType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

void UpdateCoalescingCollectionView.performBatchUpdates(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate] = 2;
  v5 = *&v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates];
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *&v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = v7;
    if (a1)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = a1;
      *(v12 + 24) = a2;
      v22 = partial apply for thunk for @callee_guaranteed () -> ();
      v23 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v19 = 1107296256;
      v20 = thunk for @escaping @callee_guaranteed () -> ();
      v21 = &block_descriptor_61;
      v13 = _Block_copy(&aBlock);
    }

    else
    {
      v13 = 0;
    }

    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = a4;
    v14[4] = v4;
    v22 = partial apply for closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:);
    v23 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v21 = &block_descriptor_47;
    v15 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a3, a4);
    v16 = v4;

    v17.receiver = v16;
    v17.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
    objc_msgSendSuper2(&v17, sel_performBatchUpdates_completion_, v13, v15);
    _Block_release(v15);
    _Block_release(v13);
  }
}

void closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:)(char a1, void (*a2)(void, double), uint64_t a3, char *a4)
{
  v97 = type metadata accessor for IndexPath();
  v88 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v81 - v11;
  updated = type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation(0);
  v92 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v87 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v81 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v81 - v21;
  if (a2)
  {
    a2(a1 & 1, v20);
  }

  v23 = *&a4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates];
  v24 = v23 != 0;
  v25 = v23 - 1;
  if (v24)
  {
    *&a4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = v25;
    if (!v25 && a4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] == 1)
    {
      specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
    }

    v26 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_postUpdateInvalidations;
    swift_beginAccess();
    v93 = a4;
    v83 = v26;
    v27 = *&a4[v26];
    v28 = *(v27 + 16);

    v29 = MEMORY[0x1E69E7CC0];
    *&v91 = v28;
    if (!v28)
    {
LABEL_22:

      v50 = v93;
      *&v93[v83] = MEMORY[0x1E69E7CC0];

      if (*(v29 + 16))
      {
        v51 = [v50 collectionViewLayout];
        ObjCClassFromObject = swift_getObjCClassFromObject();

        [ObjCClassFromObject invalidationContextClass];
        swift_getObjCClassMetadata();
        type metadata accessor for UICollectionViewLayoutInvalidationContext();
        swift_dynamicCastMetatypeUnconditional();
        v95 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v53 = *(v29 + 16);
        if (v53)
        {
          v54 = v29 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
          v94 = *(v92 + 72);
          v55 = v87;
          v92 = v88 + 32;
          v56 = (v88 + 8);
          v91 = xmmword_18CD63400;
          v57 = v97;
          v58 = v82;
          do
          {
            outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(v54, v55, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              type metadata accessor for (IndexPath, String)();
              v60 = (v55 + *(v59 + 48));
              v61 = v55;
              v62 = *v60;
              v63 = v60[1];
              v64 = v88;
              (*(v88 + 32))(v58, v61, v57);
              v65 = MEMORY[0x18D00C850](v62, v63);

              _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
              v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
              v67 = swift_allocObject();
              *(v67 + 16) = v91;
              (*(v64 + 16))(v67 + v66, v58, v97);
              v68.super.isa = Array._bridgeToObjectiveC()().super.isa;
              v57 = v97;

              [v95 invalidateSupplementaryElementsOfKind:v65 atIndexPaths:v68.super.isa];
            }

            else
            {
              v69 = v88;
              (*(v88 + 32))(v58, v55, v57);
              _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
              v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
              v71 = swift_allocObject();
              *(v71 + 16) = v91;
              (*(v69 + 16))(v71 + v70, v58, v57);
              v68.super.isa = Array._bridgeToObjectiveC()().super.isa;

              [v95 invalidateItemsAtIndexPaths_];
            }

            (*v56)(v58, v57);
            v54 += v94;
            --v53;
            v55 = v87;
          }

          while (v53);
        }

        v72 = objc_opt_self();
        v73 = swift_allocObject();
        v74 = v93;
        v75 = v95;
        *(v73 + 16) = v93;
        *(v73 + 24) = v75;
        v76 = swift_allocObject();
        v77 = partial apply for closure #2 in closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:);
        *(v76 + 16) = partial apply for closure #2 in closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:);
        *(v76 + 24) = v73;
        aBlock[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
        aBlock[5] = v76;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_71_0;
        v78 = _Block_copy(aBlock);
        v79 = v74;
        v80 = v75;

        [v72 performWithoutAnimation_];

        _Block_release(v78);
        LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

        if (v80)
        {
          goto LABEL_35;
        }

        v50 = v93;
      }

      else
      {

        v77 = 0;
      }

      *(v50 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate) = 0;
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v77);
      return;
    }

    v30 = 0;
    v89 = (v88 + 8);
    v90 = (v88 + 32);
    v84 = v27;
    while (1)
    {
      if (v30 >= *(v27 + 16))
      {
        __break(1u);
        break;
      }

      v95 = ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v94 = *(v92 + 72);
      outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(v95 + v27 + v94 * v30, v22, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
      outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(v22, v18, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for (IndexPath, String)();
        v32 = &v18[*(v31 + 48)];
        v33 = *v32;
        v34 = *(v32 + 1);
        v35 = v22;
        v36 = v15;
        v37 = v29;
        v38 = v86;
        v39 = v97;
        (*v90)(v86, v18, v97);
        v40 = MEMORY[0x18D00C850](v33, v34);

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v42 = [v93 supplementaryViewForElementKind:v40 atIndexPath:isa];

        v43 = v38;
        v29 = v37;
        v15 = v36;
        v22 = v35;
        v27 = v84;
        (*v89)(v43, v39);
        if (v42)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v44 = v85;
        v45 = v97;
        (*v90)(v85, v18, v97);
        v46 = IndexPath._bridgeToObjectiveC()().super.isa;
        v42 = [v93 cellForItemAtIndexPath_];

        (*v89)(v44, v45);
        if (v42)
        {
LABEL_17:

          outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v22, v15, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1);
            v29 = aBlock[0];
          }

          v49 = *(v29 + 16);
          v48 = *(v29 + 24);
          if (v49 >= v48 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1);
            v29 = aBlock[0];
          }

          *(v29 + 16) = v49 + 1;
          outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v15, v95 + v29 + v49 * v94, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
          goto LABEL_11;
        }
      }

      outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v22, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
LABEL_11:
      if (v91 == ++v30)
      {
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t closure #2 in closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #2 in closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:);
  *(v5 + 24) = v4;
  aBlock[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_81;
  v6 = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v10.receiver = v7;
  v10.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  objc_msgSendSuper2(&v10, sel_performBatchUpdates_completion_, v6, 0);
  _Block_release(v6);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #2 in closure #1 in UpdateCoalescingCollectionView.performBatchUpdates(_:completion:)(void *a1, uint64_t a2)
{
  v3 = [a1 collectionViewLayout];
  [v3 invalidateLayoutWithContext_];
}

id UpdateCoalescingCollectionView.scheduleVisibleCellsUpdate(indexPath:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation(0);
  v8 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = &v3[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate];
  if (*&v3[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate + 8] > 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v16 = *v15;
    if (v16 == 2 || (v16 & 1) != 0)
    {
      if (a3)
      {
        type metadata accessor for (IndexPath, String)();
        v18 = &v14[*(v17 + 48)];
        v19 = type metadata accessor for IndexPath();
        (*(*(v19 - 8) + 16))(v14, a1, v19);
        *v18 = a2;
        *(v18 + 1) = a3;
        swift_storeEnumTagMultiPayload();
        v20 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_postUpdateInvalidations;
        swift_beginAccess();
        v21 = *&v3[v20];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v3[v20] = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
          *&v3[v20] = v21;
        }

        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v21);
        }

        v21[2] = v24 + 1;
        outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v14, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
        *&v3[v20] = v21;
      }

      else
      {
        v25 = type metadata accessor for IndexPath();
        (*(*(v25 - 8) + 16))(v10, a1, v25);
        swift_storeEnumTagMultiPayload();
        v26 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_postUpdateInvalidations;
        swift_beginAccess();
        v27 = *&v3[v26];
        v28 = swift_isUniquelyReferenced_nonNull_native();
        *&v3[v26] = v27;
        if ((v28 & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
          *&v3[v26] = v27;
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v27);
        }

        v27[2] = v30 + 1;
        outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v10, v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
        *&v3[v26] = v27;
      }

      return swift_endAccess();
    }

    else
    {
      result = [v3 setNeedsLayout];
      *v15 = 1;
    }
  }

  return result;
}

id closure #1 in UpdateCoalescingCollectionView.idealSize(in:)@<X0>(void *a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  [a1 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [a1 setFrame_];
  [a1 safeAreaInsets];
  [a1 frame];
  [a1 setFrame_];
  [a1 _setVisibleRectEdgeInsets_];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  [a1 contentSize];
  v17 = v16;
  v19 = v18;
  if (v18 > 10000.0)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(148);
    MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4F490);
    v20 = Double.description.getter();
    MEMORY[0x18D00C9B0](v20);

    MEMORY[0x18D00C9B0](0xD00000000000005ELL, 0x800000018CD4F4D0);
    MEMORY[0x18D009810](0, 0xE000000000000000);
  }

  v21 = MEMORY[0x1E69DDCE0];
  *a2 = v17;
  a2[1] = v19;
  [a1 _setVisibleRectEdgeInsets_];

  return [a1 setFrame_];
}

uint64_t UpdateCoalescingCollectionView.setAccessory(_:at:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper];
  if (v5)
  {
    v6 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v5 + v6, __src);
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    memset(__src, 0, sizeof(__src));
    LODWORD(__dst[0]) = 257;
    HIDWORD(__dst[10]) = 0;
    memset(&__dst[1], 0, 75);
    LOWORD(__dst[11]) = 4;
    v7 = MEMORY[0x1E69E7CC0];
    __dst[12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    __dst[13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v7);
    LOBYTE(__dst[14]) = 0;
    LOBYTE(__dst[15]) = 0;
    __dst[16] = 0;
    LOWORD(__dst[17]) = 0;
    LOBYTE(__dst[18]) = 0;
    __dst[19] = 0;
    *(&__dst[19] + 6) = 0;
    BYTE6(__dst[20]) = 1;
    *(&__dst[20] + 7) = 0u;
    *(&__dst[22] + 7) = 0u;
    HIBYTE(__dst[24]) = 0;
    static EdgeInsets.zero.getter();
    __dst[25] = v8;
    __dst[26] = v9;
    __dst[27] = v10;
    __dst[28] = v11;
    static EdgeInsets.zero.getter();
    __dst[29] = v12;
    __dst[30] = v13;
    __dst[31] = v14;
    __dst[32] = v15;
  }

  if (BYTE1(__dst[11]) != 2)
  {
    v16 = 4;
    v17 = 1;
    if (LOBYTE(__dst[11]) != 3)
    {
      v17 = a2;
    }

    if (LOBYTE(__dst[11]) != 2)
    {
      v16 = v17;
    }

    v18 = 2;
    if (LOBYTE(__dst[11]))
    {
      v18 = 0;
    }

    if (LOBYTE(__dst[11]) <= 1u)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    v21.receiver = v2;
    v21.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
    objc_msgSendSuper2(&v21, sel_setAccessoryView_atEdge_, a1, v19);
  }

  return outlined destroy of ScrollEnvironmentProperties(__dst);
}

id UpdateCoalescingCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *initializeBufferWithCopyOfBuffer for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = type metadata accessor for IndexPath();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (IndexPath, String)();
      v9 = *(v8 + 48);
      v10 = (a1 + v9);
      v11 = (a2 + v9);
      v12 = v11[1];
      *v10 = *v11;
      v10[1] = v12;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void type metadata accessor for (IndexPath, String)()
{
  if (!lazy cache variable for type metadata for (IndexPath, String))
  {
    type metadata accessor for IndexPath();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (IndexPath, String));
    }
  }
}

uint64_t destroy for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = type metadata accessor for IndexPath();
  result = (*(*(v3 - 8) + 8))(a1, v3);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (IndexPath, String)();
  }

  return result;
}

uint64_t initializeWithCopy for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (IndexPath, String)();
    v7 = *(v6 + 48);
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    v10 = v9[1];
    *v8 = *v9;
    v8[1] = v10;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(a1, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for IndexPath();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (IndexPath, String)();
      v7 = *(v6 + 48);
      v8 = (a1 + v7);
      v9 = (a2 + v7);
      *v8 = *v9;
      v8[1] = v9[1];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for (IndexPath, String)();
    *(a1 + *(v6 + 48)) = *(a2 + *(v6 + 48));
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(a1, type metadata accessor for UpdateCoalescingCollectionView.UpdateInvalidation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for IndexPath();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for (IndexPath, String)();
      *(a1 + *(v6 + 48)) = *(a2 + *(v6 + 48));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata completion function for UpdateCoalescingCollectionView.UpdateInvalidation()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    v2[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v2[5] = v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdateCoalescingCollectionView.VisibleCellsUpdate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UpdateCoalescingCollectionView.VisibleCellsUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t outlined init with copy of BridgedListState.ScrollTarget?(uint64_t a1, uint64_t a2)
{
  _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ScrollEnvironmentProperties?()
{
  if (!lazy cache variable for type metadata for ScrollEnvironmentProperties?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrollEnvironmentProperties?);
    }
  }
}

unint64_t type metadata accessor for UICollectionViewLayoutInvalidationContext()
{
  result = lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext;
  if (!lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext);
  }

  return result;
}

void specialized UpdateCoalescingCollectionView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_safeAreaTransitionState);
  type metadata accessor for FalseSafeAreaTransitionState();
  v2 = swift_allocObject();
  *v1 = v2;
  v1[1] = &protocol witness table for FalseSafeAreaTransitionState;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper) = 0;
  *(v2 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_isLazyStackBehaviorEnabled) = 0;
  v3 = v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_postUpdateInvalidations) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingScrollTarget) = 0;
  v4 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
  v5 = type metadata accessor for IndexPath();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_lastUpdateSeed) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_bridgedState) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_phaseState) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView__layoutContainer + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for UpdateCoalescingCollectionView.VisibleCellsUpdate.StateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UpdateCoalescingCollectionView.VisibleCellsUpdate.StateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_OWORD *initializeBufferWithCopyOfBuffer for UIKitMenuButton(_OWORD *a1, unint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if ((v10 | v7) > 7 || ((*(v9 + 80) | *(v6 + 80)) & 0x100000) != 0 || ((v11 + ((v8 + v10 + ((v7 + 18) & ~v7)) & ~v10) + 9) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + (((v10 | v7) & 0xF8 ^ 0x1F8) & ((v10 | v7) + 16)));
  }

  else
  {
    v15 = ~v7;
    v28 = ~v10;
    if (*a2 < 0xFFFFFFFF)
    {
      *a1 = *a2;
    }

    else
    {
      v16 = a2[1];
      *v3 = *a2;
      *(v3 + 1) = v16;
      v27 = a2;

      a2 = v27;
    }

    *(v3 + 16) = *(a2 + 16);
    *(v3 + 17) = *(a2 + 17);
    v17 = a2 + v7;
    v18 = (v3 + v7 + 18) & v15;
    v19 = (v17 + 18) & v15;
    (*(v6 + 16))(v18, v19, v4);
    v20 = (v18 + v8 + v10) & v28;
    v21 = (v19 + v8 + v10) & v28;
    (*(v9 + 16))(v20, v21, v5);
    v22 = (v20 + v11);
    *v22 = *(v21 + v11);
    v22[1] = *(v21 + v11 + 1);
    v23 = (v20 + v11 + 9) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v21 + v11 + 9) & 0xFFFFFFFFFFFFFFF8;
    if (*v24 < 0xFFFFFFFFuLL)
    {
      *v23 = *v24;
      return v3;
    }

    v25 = *(v24 + 8);
    *v23 = *v24;
    *(v23 + 8) = v25;
  }

  return v3;
}

uint64_t assignWithCopy for UIKitMenuButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v8 = *(a2 + 8);
      *a1 = v6;
      *(a1 + 8) = v8;

      goto LABEL_8;
    }
  }

  else
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v7 = *(a2 + 8);
      *a1 = v6;
      *(a1 + 8) = v7;

      goto LABEL_8;
    }
  }

  *a1 = *a2;
LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = (v11 + 18 + a1) & ~v11;
  v13 = (v11 + 18 + a2) & ~v11;
  (*(v9 + 24))(v12, v13);
  v14 = *(v10 + 40);
  v15 = *(*(a3 + 24) - 8);
  v16 = v15 + 24;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (v18 + v12) & ~v17;
  v20 = (v18 + v13) & ~v17;
  (*(v15 + 24))(v19, v20);
  v21 = *(v16 + 40);
  v22 = (v21 + v19);
  v23 = (v21 + v20);
  *v22 = *v23;
  v22[1] = v23[1];
  v24 = ((v22 + 9) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 9) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  if (*v24 < 0xFFFFFFFFuLL)
  {
    if (v26 >= 0xFFFFFFFF)
    {
      v28 = v25[1];
      *v24 = v26;
      v24[1] = v28;

      return a1;
    }

LABEL_14:
    *v24 = *v25;
    return a1;
  }

  if (v26 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v27 = v25[1];
  *v24 = v26;
  v24[1] = v27;

  return a1;
}

uint64_t initializeWithTake for UIKitMenuButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 < 0xFFFFFFFFuLL)
  {
    *a1 = *a2;
  }

  else
  {
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v8 + 18 + a1) & ~v8;
  v10 = (v8 + 18 + a2) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32);
  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v16 = (v15 + v9) & ~v14;
  v17 = (v15 + v10) & ~v14;
  (*(v12 + 32))(v16, v17);
  v18 = *(v13 + 32);
  v19 = (v18 + v16);
  v20 = v18 + v17;
  *v19 = *(v18 + v17);
  v19[1] = *(v18 + v17 + 1);
  v21 = (v18 + v16 + 9) & 0xFFFFFFFFFFFFFFF8;
  v22 = ((v20 + 9) & 0xFFFFFFFFFFFFFFF8);
  v23 = *v22;
  if (*v22 < 0xFFFFFFFF)
  {
    *v21 = *v22;
  }

  else
  {
    v24 = v22[1];
    *v21 = v23;
    *(v21 + 8) = v24;
  }

  return a1;
}

uint64_t assignWithTake for UIKitMenuButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v8 = *(a2 + 8);
      *a1 = v6;
      *(a1 + 8) = v8;
      goto LABEL_8;
    }
  }

  else
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v7 = *(a2 + 8);
      *a1 = v6;
      *(a1 + 8) = v7;

      goto LABEL_8;
    }
  }

  *a1 = *a2;
LABEL_8:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = (v11 + 18 + a1) & ~v11;
  v13 = (v11 + 18 + a2) & ~v11;
  (*(v9 + 40))(v12, v13);
  v14 = *(v10 + 24);
  v15 = *(*(a3 + 24) - 8);
  v16 = v15 + 40;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (v18 + v12) & ~v17;
  v20 = (v18 + v13) & ~v17;
  (*(v15 + 40))(v19, v20);
  v21 = *(v16 + 24);
  v22 = (v21 + v19);
  v23 = (v21 + v20);
  *v22 = *v23;
  v22[1] = v23[1];
  v24 = ((v22 + 9) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 9) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  if (*v24 < 0xFFFFFFFFuLL)
  {
    if (v26 >= 0xFFFFFFFF)
    {
      v28 = v25[1];
      *v24 = v26;
      v24[1] = v28;
      return a1;
    }

LABEL_14:
    *v24 = *v25;
    return a1;
  }

  if (v26 < 0xFFFFFFFF)
  {

    goto LABEL_14;
  }

  v27 = v25[1];
  *v24 = v26;
  v24[1] = v27;

  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitMenuButton(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 18) & ~v9)) & ~v11) + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v14);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v12 > 0x7FFFFFFE)
  {
    v25 = (a1 + v9 + 18) & ~v9;
    if (v5 == v13)
    {
      return (*(v4 + 48))(v25);
    }

    else
    {
      return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
    }
  }

  else
  {
    v24 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v24) = -1;
    }

    if ((v24 + 1) >= 2)
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }
}

unsigned int *storeEnumTagSinglePayload for UIKitMenuButton(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 18) & ~v8)) & ~v10) + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 18) & ~v8)) & ~v10) + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if (v12 > 0x7FFFFFFE)
        {
          v23 = (result + v8 + 18) & ~v8;
          if (v6 == v13)
          {
            v24 = *(v5 + 56);

            return v24(v23);
          }

          else
          {
            v25 = *(v7 + 56);
            v26 = (v23 + v9 + v10) & ~v10;

            return v25(v26);
          }
        }

        else if (a2 > 0x7FFFFFFE)
        {
          *result = 0;
          *(result + 1) = 0;
          *result = a2 - 0x7FFFFFFF;
        }

        else
        {
          *result = a2;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 18) & ~v8)) & ~v10) + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 18) & ~v8)) & ~v10) + 9) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 18) & ~v8)) & ~v10) + 9) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

uint64_t UIKitMenuButton.init(action:isPopUpButton:flexibleDimensions:menuTitleVisibility:menuIndicatorVisibility:onPresentationChanged:menuContent:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t (*a12)(void))
{
  if ((a3 & 1) != 0 && a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v16 = type metadata accessor for UIKitMenuButton();
    v17 = (a9 + v16[19]);
    *a9 = a1;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3 & 1;
    *(a9 + 17) = a4;
    v18 = a12();
    *v17 = a7;
    v17[1] = a8;
    result = a10(v18);
    *(a9 + v16[17]) = a5;
    *(a9 + v16[18]) = a6;
  }

  return result;
}

uint64_t closure #1 in static UIKitMenuButton._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for UIKitMenuButton();
  v8 = *(v7 + 64);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}