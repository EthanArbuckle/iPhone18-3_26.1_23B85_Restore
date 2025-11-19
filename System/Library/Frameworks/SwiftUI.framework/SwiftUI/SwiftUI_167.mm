uint64_t initializeWithCopy for AccessibilityActionReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  LODWORD(v10) = -1;
  if (v9 < 0xFFFFFFFF)
  {
    v10 = *(v8 + 24);
  }

  if (v10 - 2 < 0 && v9 >= 2)
  {
    v19 = *v8;
    v20 = *(v8 + 8);
    v21 = *(v8 + 16);
    outlined copy of Text.Storage(*v8, v20, v21);
    *v7 = v19;
    *(v7 + 8) = v20;
    *(v7 + 16) = v21;
    *(v7 + 24) = *(v8 + 24);
  }

  else
  {
    v11 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v11;
  }

  v12 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    v17 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v17;
  }

  else
  {
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    outlined copy of Text.Storage(*v13, v15, v16);
    *v12 = v14;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 24) = *(v13 + 24);
  }

  *((v12 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 39) & 0xFFFFFFFFFFFFFFF8);

  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t assignWithCopy for AccessibilityActionReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 24);
  LODWORD(v10) = -1;
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  else
  {
    v11 = *(v7 + 24);
  }

  v12 = v11 - 2;
  v13 = *(v8 + 24);
  if (v13 < 0xFFFFFFFF)
  {
    v10 = *(v8 + 24);
  }

  v14 = v10 - 2;
  if (v12 < 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      if (v9 >= 2)
      {
        outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
      }

      goto LABEL_14;
    }

    if (v9 >= 2)
    {
      if (v13 >= 2)
      {
        v34 = *v8;
        v35 = *(v8 + 8);
        v36 = *(v8 + 16);
        outlined copy of Text.Storage(*v8, v35, v36);
        v37 = *v7;
        v38 = *(v7 + 8);
        v39 = *(v7 + 16);
        *v7 = v34;
        *(v7 + 8) = v35;
        *(v7 + 16) = v36;
        outlined consume of Text.Storage(v37, v38, v39);
        *(v7 + 24) = *(v8 + 24);
      }

      else
      {
        outlined destroy of Text(v7);
        v33 = *(v8 + 16);
        *v7 = *v8;
        *(v7 + 16) = v33;
      }

      goto LABEL_15;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
LABEL_14:
    v15 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v15;
    goto LABEL_15;
  }

  if (v13 < 2)
  {
    goto LABEL_14;
  }

  v30 = *v8;
  v31 = *(v8 + 8);
  v32 = *(v8 + 16);
  outlined copy of Text.Storage(*v8, v31, v32);
  *v7 = v30;
  *(v7 + 8) = v31;
  *(v7 + 16) = v32;
  *(v7 + 24) = *(v8 + 24);

LABEL_15:
  v16 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 24);
  if (*(v16 + 24) < 0xFFFFFFFFuLL)
  {
    if (v18 >= 0xFFFFFFFF)
    {
      v25 = *v17;
      v26 = *(v17 + 8);
      v27 = *(v17 + 16);
      outlined copy of Text.Storage(*v17, v26, v27);
      *v16 = v25;
      *(v16 + 8) = v26;
      *(v16 + 16) = v27;
      *(v16 + 24) = *(v17 + 24);

      goto LABEL_22;
    }

LABEL_21:
    v28 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v28;
    goto LABEL_22;
  }

  if (v18 < 0xFFFFFFFF)
  {
    outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

    goto LABEL_21;
  }

  v19 = *v17;
  v20 = *(v17 + 8);
  v21 = *(v17 + 16);
  outlined copy of Text.Storage(*v17, v20, v21);
  v22 = *v16;
  v23 = *(v16 + 8);
  v24 = *(v16 + 16);
  *v16 = v19;
  *(v16 + 8) = v20;
  *(v16 + 16) = v21;
  outlined consume of Text.Storage(v22, v23, v24);
  *(v16 + 24) = *(v17 + 24);

LABEL_22:
  *((v16 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 39) & 0xFFFFFFFFFFFFFFF8);

  swift_unknownObjectWeakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for AccessibilityActionReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  *((v10 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectWeakTakeInit();
  return a1;
}

uint64_t assignWithTake for AccessibilityActionReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 24);
  LODWORD(v10) = -1;
  if (v9 < 0xFFFFFFFF)
  {
    v10 = *(v7 + 24);
  }

  if (v10 - 2 >= 0)
  {
    goto LABEL_4;
  }

  v18 = *(v8 + 24);
  LODWORD(v19) = -1;
  if (v18 < 0xFFFFFFFF)
  {
    v19 = *(v8 + 24);
  }

  if (v19 - 2 >= 0)
  {
    if (v9 >= 2)
    {
      outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
    }

    goto LABEL_4;
  }

  if (v9 < 2)
  {
LABEL_4:
    v11 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v11;
    goto LABEL_5;
  }

  if (v18 >= 2)
  {
    v23 = *(v8 + 16);
    v24 = *v7;
    v25 = *(v7 + 8);
    v26 = *(v7 + 16);
    *v7 = *v8;
    *(v7 + 16) = v23;
    outlined consume of Text.Storage(v24, v25, v26);
    *(v7 + 24) = *(v8 + 24);
  }

  else
  {
    outlined destroy of Text(v7);
    v22 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v22;
  }

LABEL_5:
  v12 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v12 + 24) < 0xFFFFFFFFuLL)
  {
LABEL_14:
    v20 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v20;
    goto LABEL_15;
  }

  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v12, *(v12 + 8), *(v12 + 16));

    goto LABEL_14;
  }

  v14 = *(v13 + 16);
  v15 = *v12;
  v16 = *(v12 + 8);
  v17 = *(v12 + 16);
  *v12 = *v13;
  *(v12 + 16) = v14;
  outlined consume of Text.Storage(v15, v16, v17);
  *(v12 + 24) = *(v13 + 24);

LABEL_15:
  *((v12 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 39) & 0xFFFFFFFFFFFFFFF8);

  swift_unknownObjectWeakTakeAssign();
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionReference(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for AccessibilityActionReference(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v9) = 0;
      }

      else if (v13)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v20 = (((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          result = 0.0;
          *v20 = 0u;
          *(v20 + 16) = 0u;
          *v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 24) = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v9) = v15;
    }

    else
    {
      *(a1 + v9) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v9) = v15;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityActionStorage(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 24);
    LODWORD(v13) = -1;
    if (v12 < 0xFFFFFFFF)
    {
      v13 = *(v11 + 24);
    }

    if (v13 - 2 < 0 && v12 >= 2)
    {
      v27 = *v11;
      v28 = *(v11 + 8);
      v29 = *(v11 + 16);
      outlined copy of Text.Storage(*v11, v28, v29);
      *v10 = v27;
      *(v10 + 8) = v28;
      *(v10 + 16) = v29;
      *(v10 + 24) = *(v11 + 24);
    }

    else
    {
      v14 = *(v11 + 16);
      *v10 = *v11;
      *(v10 + 16) = v14;
    }

    v15 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
    if (*(v16 + 24) < 0xFFFFFFFFuLL)
    {
      v20 = *(v16 + 16);
      *v15 = *v16;
      *(v15 + 16) = v20;
    }

    else
    {
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      outlined copy of Text.Storage(*v16, v18, v19);
      *v15 = v17;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = *(v16 + 24);
    }

    v21 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = v24[1];
    *v23 = *v24;
    v23[1] = v25;
    *((v23 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 19) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for AccessibilityActionStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  LODWORD(v10) = -1;
  if (v9 < 0xFFFFFFFF)
  {
    v10 = *(v8 + 24);
  }

  if (v10 - 2 < 0 && v9 >= 2)
  {
    v24 = *v8;
    v25 = *(v8 + 8);
    v26 = *(v8 + 16);
    outlined copy of Text.Storage(*v8, v25, v26);
    *v7 = v24;
    *(v7 + 8) = v25;
    *(v7 + 16) = v26;
    *(v7 + 24) = *(v8 + 24);
  }

  else
  {
    v11 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v11;
  }

  v12 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    v17 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v17;
  }

  else
  {
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    outlined copy of Text.Storage(*v13, v15, v16);
    *v12 = v14;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 24) = *(v13 + 24);
  }

  v18 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;
  *((v20 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 19) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for AccessibilityActionStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 24);
  LODWORD(v10) = -1;
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  else
  {
    v11 = *(v7 + 24);
  }

  v12 = v11 - 2;
  v13 = *(v8 + 24);
  if (v13 < 0xFFFFFFFF)
  {
    v10 = *(v8 + 24);
  }

  v14 = v10 - 2;
  if (v12 < 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      if (v9 >= 2)
      {
        outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
      }

      goto LABEL_14;
    }

    if (v9 >= 2)
    {
      if (v13 >= 2)
      {
        v39 = *v8;
        v40 = *(v8 + 8);
        v41 = *(v8 + 16);
        outlined copy of Text.Storage(*v8, v40, v41);
        v42 = *v7;
        v43 = *(v7 + 8);
        v44 = *(v7 + 16);
        *v7 = v39;
        *(v7 + 8) = v40;
        *(v7 + 16) = v41;
        outlined consume of Text.Storage(v42, v43, v44);
        *(v7 + 24) = *(v8 + 24);
      }

      else
      {
        outlined destroy of Text(v7);
        v38 = *(v8 + 16);
        *v7 = *v8;
        *(v7 + 16) = v38;
      }

      goto LABEL_15;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
LABEL_14:
    v15 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v15;
    goto LABEL_15;
  }

  if (v13 < 2)
  {
    goto LABEL_14;
  }

  v35 = *v8;
  v36 = *(v8 + 8);
  v37 = *(v8 + 16);
  outlined copy of Text.Storage(*v8, v36, v37);
  *v7 = v35;
  *(v7 + 8) = v36;
  *(v7 + 16) = v37;
  *(v7 + 24) = *(v8 + 24);

LABEL_15:
  v16 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 24);
  if (*(v16 + 24) < 0xFFFFFFFFuLL)
  {
    if (v18 >= 0xFFFFFFFF)
    {
      v25 = *v17;
      v26 = *(v17 + 8);
      v27 = *(v17 + 16);
      outlined copy of Text.Storage(*v17, v26, v27);
      *v16 = v25;
      *(v16 + 8) = v26;
      *(v16 + 16) = v27;
      *(v16 + 24) = *(v17 + 24);

      goto LABEL_22;
    }

LABEL_21:
    v28 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v28;
    goto LABEL_22;
  }

  if (v18 < 0xFFFFFFFF)
  {
    outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

    goto LABEL_21;
  }

  v19 = *v17;
  v20 = *(v17 + 8);
  v21 = *(v17 + 16);
  outlined copy of Text.Storage(*v17, v20, v21);
  v22 = *v16;
  v23 = *(v16 + 8);
  v24 = *(v16 + 16);
  *v16 = v19;
  *(v16 + 8) = v20;
  *(v16 + 16) = v21;
  outlined consume of Text.Storage(v22, v23, v24);
  *(v16 + 24) = *(v17 + 24);

LABEL_22:
  v29 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;

  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;

  *((v31 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for AccessibilityActionStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *((v15 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AccessibilityActionStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 24);
  LODWORD(v10) = -1;
  if (v9 < 0xFFFFFFFF)
  {
    v10 = *(v7 + 24);
  }

  if (v10 - 2 >= 0)
  {
    goto LABEL_4;
  }

  v18 = *(v8 + 24);
  LODWORD(v19) = -1;
  if (v18 < 0xFFFFFFFF)
  {
    v19 = *(v8 + 24);
  }

  if (v19 - 2 >= 0)
  {
    if (v9 >= 2)
    {
      outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
    }

    goto LABEL_4;
  }

  if (v9 < 2)
  {
LABEL_4:
    v11 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v11;
    goto LABEL_5;
  }

  if (v18 >= 2)
  {
    v27 = *(v8 + 16);
    v28 = *v7;
    v29 = *(v7 + 8);
    v30 = *(v7 + 16);
    *v7 = *v8;
    *(v7 + 16) = v27;
    outlined consume of Text.Storage(v28, v29, v30);
    *(v7 + 24) = *(v8 + 24);
  }

  else
  {
    outlined destroy of Text(v7);
    v26 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v26;
  }

LABEL_5:
  v12 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v12 + 24) < 0xFFFFFFFFuLL)
  {
LABEL_14:
    v20 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v20;
    goto LABEL_15;
  }

  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v12, *(v12 + 8), *(v12 + 16));

    goto LABEL_14;
  }

  v14 = *(v13 + 16);
  v15 = *v12;
  v16 = *(v12 + 8);
  v17 = *(v12 + 16);
  *v12 = *v13;
  *(v12 + 16) = v14;
  outlined consume of Text.Storage(v15, v16, v17);
  *(v12 + 24) = *(v13 + 24);

LABEL_15:
  v21 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;

  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;

  *((v23 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionStorage(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 < a2 && *(a1 + ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return (*(v4 + 48))();
  }

  v9 = *((((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

void storeEnumTagSinglePayload for AccessibilityActionStorage(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFF)
      {
        v13 = (((((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v13 = a2 & 0x7FFFFFFF;
          v13[1] = 0;
        }

        else
        {
          *v13 = a2 - 1;
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

uint64_t instantiation function for generic protocol witness table for AccessibilityActionReference<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in AccessibilityActionStorage.perform(value:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = type metadata accessor for AccessibilityActionStorage();
  return (*(v2 + *(v3 + 48)))(v1);
}

void _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata completion function for BadgedView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for BadgedView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-33 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[2];
    if ((v10 >> 1) > 0x80000000)
    {
      v15 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v15;
    }

    else
    {
      v11 = *a2;
      v12 = a2[1];
      v13 = a2[3];
      v14 = a2;
      outlined copy of BadgeLabel(*a2, v12, v10);
      a2 = v14;
      *v3 = v11;
      v3[1] = v12;
      v3[2] = v10;
      v3[3] = v13;
    }

    (*(v5 + 16))((v3 + v6 + 32) & ~v6, (a2 + v6 + 32) & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t destroy for BadgedView(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if ((v4 >> 1) <= 0x80000000)
  {
    outlined consume of BadgeLabel(*a1, a1[1], v4);
  }

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + 32) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t initializeWithCopy for BadgedView(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[2];
  if ((v6 >> 1) > 0x80000000)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v10;
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[3];
    outlined copy of BadgeLabel(*a2, v8, v6);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v6;
    *(a1 + 24) = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 16))((*(v11 + 80) + 32 + a1) & ~*(v11 + 80), (a2 + *(v11 + 80) + 32) & ~*(v11 + 80));
  return a1;
}

uint64_t *assignWithCopy for BadgedView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1[2];
  v7 = a2[2];
  v8 = v7 >> 1;
  if ((v6 >> 1) > 0x80000000)
  {
    if (v8 <= 0x80000000)
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[3];
      outlined copy of BadgeLabel(*a2, v16, v7);
      *a1 = v15;
      a1[1] = v16;
      a1[2] = v7;
      a1[3] = v17;
      goto LABEL_8;
    }

LABEL_7:
    v18 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v18;
    goto LABEL_8;
  }

  if (v8 > 0x80000000)
  {
    outlined consume of BadgeLabel(*a1, a1[1], v6);
    goto LABEL_7;
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  outlined copy of BadgeLabel(*a2, v10, v7);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v7;
  a1[3] = v11;
  outlined consume of BadgeLabel(v12, v13, v14);
LABEL_8:
  v19 = *(*(a3 + 16) - 8);
  (*(v19 + 24))((a1 + *(v19 + 80) + 32) & ~*(v19 + 80), (a2 + *(v19 + 80) + 32) & ~*(v19 + 80));
  return a1;
}

uint64_t *assignWithTake for BadgedView(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  if ((v6 >> 1) > 0x80000000)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if ((v7 >> 1) > 0x80000000)
  {
    outlined consume of BadgeLabel(*a1, a1[1], v6);
LABEL_5:
    v11 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 1) = v11;
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  v9 = *a1;
  v10 = a1[1];
  *a1 = *a2;
  a1[2] = v7;
  a1[3] = v8;
  outlined consume of BadgeLabel(v9, v10, v6);
LABEL_6:
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 40))((a1 + *(v12 + 80) + 32) & ~*(v12 + 80), (*(v12 + 80) + 32 + a2) & ~*(v12 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for BadgedView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 32) & ~v6);
      }

      v15 = *(a1 + 2) >> 1;
      if (v15 > 0x80000000)
      {
        v16 = ~v15;
      }

      else
      {
        v16 = -1;
      }

      if (v16 + 1 >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for BadgedView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 32] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 2 * ~a2;
    *(a1 + 3) = 0;
  }
}

uint64_t *initializeWithCopy for BadgeLabel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of BadgeLabel(*a2, v4, v5);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for BadgeLabel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of BadgeLabel(*a2, v4, v5);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of BadgeLabel(v7, v8, v9);
  return a1;
}

uint64_t *assignWithTake for BadgeLabel(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v6;
  outlined consume of BadgeLabel(v3, v5, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type BadgeLabel and conformance BadgeLabel()
{
  result = lazy protocol witness table cache variable for type BadgeLabel and conformance BadgeLabel;
  if (!lazy protocol witness table cache variable for type BadgeLabel and conformance BadgeLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BadgeLabel and conformance BadgeLabel);
  }

  return result;
}

uint64_t specialized closure #1 in AccessibilityBadgedViewModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a1;
  if (a3 < 0)
  {
    v9 = a3;
    v8 = a2;
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    outlined copy of Text.Storage(v6, v8, v9 & 1);
  }

  else
  {
    v14[0] = a1;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;

    v9 = 0;
  }

  v10 = *a5;
  v11 = a5[1];

  outlined copy of Text.Storage(v6, v8, v9 & 1);

  AccessibilityValueStorage.init(description:)();
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v14, v13);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v10 + 80, v13);
  outlined destroy of AccessibilityValueStorage?(v10 + 80);
  outlined init with copy of AccessibilityValueStorage(v13, v10 + 80);
  outlined destroy of AccessibilityValueStorage(v13);
  swift_endAccess();
  outlined consume of Text.Storage(v6, v8, v9 & 1);

  outlined consume of Text.Storage(v6, v8, v9 & 1);

  outlined destroy of AccessibilityValueStorage(v14);

  *a5 = v10;
  a5[1] = v11;
}

uint64_t BadgedView.init(badgeLabel:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  type metadata accessor for BadgedView();
  return a5();
}

uint64_t BadgedView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v4 = *(a1 + 16);
  type metadata accessor for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>();
  v5 = type metadata accessor for ModifiedContent();
  v6 = lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content();
  v33 = *(a1 + 24);
  v7 = v33;
  v34 = lazy protocol witness table accessor for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v22[0] = MEMORY[0x1E697E858];
  v29 = &type metadata for BadgeViewStyleConfiguration.Content;
  v30 = v5;
  v31 = v6;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for StaticSourceWriter();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v15 = *(v2 + 8);
  v16 = *(v2 + 16);
  v17 = *(v2 + 24);
  v29 = *v2;
  v30 = v15;
  v31 = v16;
  WitnessTable = v17;
  v24 = v4;
  v25 = v7;
  v26 = v2;
  outlined copy of BadgeLabel?(v29, v15, v16);
  v18 = lazy protocol witness table accessor for type ResolvedBadgedView and conformance ResolvedBadgedView();
  View.viewAlias<A, B>(_:_:)(&type metadata for BadgeViewStyleConfiguration.Content, partial apply for closure #1 in BadgedView.body.getter, v23, &type metadata for ResolvedBadgedView, &type metadata for BadgeViewStyleConfiguration.Content, v5, v18);
  outlined consume of BadgeLabel?(v29, v30, v31);
  v27 = v18;
  v28 = &protocol witness table for StaticSourceWriter<A, B>;
  v19 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v19);
  v20 = *(v9 + 8);
  v20(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)(v14, v8, v19);
  return (v20)(v14, v8);
}

uint64_t closure #1 in BadgedView.body.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>();
  v7 = v6;
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  type metadata accessor for BadgedView();
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3];
  v23 = *a1;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  outlined copy of BadgeLabel?(v23, v15, v16);
  MEMORY[0x18D00A570](&v23, a2, v7, a3);
  outlined consume of BadgeLabel?(v23, v24, v25);
  v18 = lazy protocol witness table accessor for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v22[0] = a3;
  v22[1] = v18;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, WitnessTable);
  v20 = *(v9 + 8);
  v20(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)(v14, v8, WitnessTable);
  return (v20)(v14, v8);
}

uint64_t AccessibilityConfigurationViewModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  outlined copy of BadgeLabel?(a1, a2, a3);
  AccessibilityProperties.init()();
  outlined init with copy of AccessibilityProperties(v15, v13);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v15);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v10 = swift_allocObject();
  result = memcpy((v10 + 16), __src, 0x128uLL);
  __src[0] = v10;
  __src[1] = 0;
  if (a3 >> 1 == 0xFFFFFFFF)
  {
    v12 = 0;
  }

  else
  {
    specialized closure #1 in AccessibilityBadgedViewModifier.body(content:)(a1, a2, a3, a4, __src);
    result = outlined consume of BadgeLabel?(a1, a2, a3);
    v10 = __src[0];
    v12 = __src[1];
  }

  *a5 = v10;
  a5[1] = v12;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance BadgeLabel@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v3 - 8);
  _s10Foundation18IntegerFormatStyleVySiGMaTm_0(0, &lazy cache variable for type metadata for IntegerFormatStyle<Int>, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
  MEMORY[0x1EEE9AC00](v4);
  v5 = *v1;
  v6 = v1[2];
  if (v6 < 0)
  {
    v12 = v1[3];
    v9 = v1[1];
    outlined copy of Text.Storage(v5, v9, v6 & 1);
  }

  else
  {
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Int and conformance Int();
    IntegerFormatStyle.init(locale:)();
    lazy protocol witness table accessor for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>();
    result = Text.init<A>(_:format:)();
    v5 = result;
    v9 = v8;
    LOBYTE(v6) = v10;
    v12 = v11;
  }

  *a1 = v5;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v12;
  return result;
}

void type metadata accessor for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>();
    lazy protocol witness table accessor for type AccessibilityBadgedViewNeedsValue and conformance AccessibilityBadgedViewNeedsValue();
    lazy protocol witness table accessor for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityBadgedViewNeedsValue and conformance AccessibilityBadgedViewNeedsValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewNeedsValue and conformance AccessibilityBadgedViewNeedsValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewNeedsValue and conformance AccessibilityBadgedViewNeedsValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewNeedsValue and conformance AccessibilityBadgedViewNeedsValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier>();
    lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityConfigurationViewModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier>)
  {
    _s10Foundation18IntegerFormatStyleVySiGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityConfigurationViewModifier>, lazy protocol witness table accessor for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier, &unk_1F0004420, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier>);
    }
  }
}

void _s10Foundation18IntegerFormatStyleVySiGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityConfigurationViewModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityConfigurationViewModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityConfigurationViewModifier> and conformance _ViewModifier_Content<A>)
  {
    _s10Foundation18IntegerFormatStyleVySiGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityConfigurationViewModifier>, lazy protocol witness table accessor for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier, &unk_1F0004420, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityConfigurationViewModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t specialized TextInputValidation.shouldChangeText(in:text:replacement:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v61 = a5;
  v10 = MEMORY[0x1E69E60D0];
  v11 = MEMORY[0x1E69E60E0];
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BA8]);
  v13 = v12;
  v58 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v54 - v14;
  type metadata accessor for IndexingIterator<RangeSet<String.Index>.Ranges>();
  v56 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, v10, v11, MEMORY[0x1E69E7BE0]);
  v66 = v17;
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v54 - v20;
  v77 = a2;
  v78 = a3;
  v69 = a2;
  v59 = v13;
  if (a1 >> 62)
  {
LABEL_27:
    v68 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v68 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = a1;
  v23 = a1 & 0xC000000000000001;

  v24 = 0;
  v67 = MEMORY[0x1E69E7CC0];
  while (v21 != v24)
  {
    if (v23)
    {
      v25 = MEMORY[0x18D00E9C0](v24, v22);
    }

    else
    {
      if (v24 >= *(v68 + 16))
      {
        goto LABEL_26;
      }

      v25 = *(v22 + 8 * v24 + 32);
    }

    a1 = v25;
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    [v25 rangeValue];

    v27 = Range<>.init(_:in:)();
    v29 = v28;
    v31 = v30;

    ++v24;
    if ((v31 & 1) == 0)
    {
      v32 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      a1 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = a1;
      v67 = v32;
      v35 = &v32[16 * v34];
      *(v35 + 4) = v27;
      *(v35 + 5) = v29;
      v24 = v26;
    }
  }

  v36 = v67;

  v38 = v65;
  _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufCSS5IndexV_SaySnyAIGGTt1g5(v37);
  v39 = v66;
  if (RangeSet.isEmpty.getter())
  {
    (*(v62 + 8))(v38, v39);
  }

  else
  {
    lazy protocol witness table accessor for type String and conformance String();
    v40 = v55;
    RangeSet._inverted<A>(within:)();
    v75 = 0;
    v76 = 0xE000000000000000;
    v41 = v57;
    RangeSet.ranges.getter();
    v42 = *(v62 + 8);
    v62 = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68 = v42;
    v42(v40, v39);
    v43 = v58;
    v44 = v59;
    v45 = v70;
    (*(v58 + 16))(v70, v41, v59);
    v46 = *(v56 + 36);
    lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
    dispatch thunk of Collection.startIndex.getter();
    (*(v43 + 8))(v41, v44);
    dispatch thunk of Collection.endIndex.getter();
    v47 = v45;
    if (*&v45[v46] != v71)
    {
      do
      {
        v48 = dispatch thunk of Collection.subscript.read();
        v48(&v71, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v71 = String.subscript.getter();
        v72 = v49;
        v73 = v50;
        v74 = v51;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();

        dispatch thunk of Collection.endIndex.getter();
        v47 = v70;
      }

      while (*&v70[v46] != v71);
    }

    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v47, type metadata accessor for IndexingIterator<RangeSet<String.Index>.Ranges>);

    v77 = v75;
    v78 = v76;
    v36 = v67;
    (v68)(v65, v66);
  }

  if (*(v36 + 2))
  {

    v71 = v60;
    v72 = v61;
    lazy protocol witness table accessor for type String and conformance String();
    String.insert<A>(contentsOf:at:)();
  }

  else
  {
  }

  v52 = v64(v77, v78);

  return v52 & 1;
}

_BYTE *TextEditorTextView.helper.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper);
  }

  else
  {
    v4 = closure #1 in TextEditorTextView.helper.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void TextEditorTextView.updateBackground(_:inheritBackground:)(uint64_t a1, unsigned __int8 a2, char a3)
{
  v6 = a2;
  v7 = [v3 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  v9 = objc_opt_self();
  v10 = &selRef_clearColor;
  if (v8 != 6)
  {
    v10 = &selRef_systemBackgroundColor;
  }

  v11 = [v9 *v10];
  v12 = v11;
  v13 = 0;
  if (v6 != 2 && !a1 && (a3 & 1) == 0)
  {
    v13 = v11;
  }

  v14 = v13;
  [v3 setBackgroundColor_];
}

uint64_t static UIKitTextEditor._makeView(view:inputs:)(uint64_t a1, __int128 *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  v3 = a2[3];
  v23 = a2[2];
  v24 = v3;
  v25 = a2[4];
  v4 = a2[1];
  v21 = *a2;
  v22 = v4;
  v15 = v21;
  v16 = v2;
  v26 = *(a2 + 20);
  v17 = v23;
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v5 = 1;
  }

  else
  {
    v15 = v21;
    v16 = v22;
    v17 = v23;
    v5 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>();
  outlined init with copy of _GraphInputs(&v21, &v15);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_6(&lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<TextSelection> and conformance _GraphInputs.SelectionBasedStorageKey<A>, type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>);
  PropertyList.subscript.getter();
  outlined destroy of _GraphInputs(&v21);
  v6 = _s7SwiftUI25WeakSelectionBasedStorageVyACyxGAA0deF0VyxGcfCAA04TextD0V_Tt0g5(v15, *(&v15 + 1));
  v8 = v7;
  v10 = v9;
  v12 = v11;
  type metadata accessor for TextEditorStyleConfiguration(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for UIKitTextViewAdaptor(0);
  LODWORD(v15) = OffsetAttribute2;
  BYTE4(v15) = v5 & 1;
  *(&v15 + 1) = v6;
  *&v16 = v8;
  *(&v16 + 1) = v10;
  *&v17 = v12;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UIKitTextEditor.MakeRepresentable and conformance UIKitTextEditor.MakeRepresentable();
  Attribute.init<A>(body:value:flags:update:)();
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t UIKitTextEditor.MakeRepresentable.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TextEditor.Storage(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextEditorStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of TextEditorStyleConfiguration(Value, v8, type metadata accessor for TextEditorStyleConfiguration);
  v10 = *(v1 + 24);
  v24 = *(v1 + 8);
  v25 = v10;
  v11 = *(v1 + 4);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v12 = type metadata accessor for UIKitTextViewAdaptor(0);
  v13 = v12[7];
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  outlined init with copy of TextEditorStyleConfiguration(v8, v5, type metadata accessor for TextEditor.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v8, type metadata accessor for TextEditorStyleConfiguration);
    v23 = *v5;
    v15 = *(v5 + 2);
    v16 = *(v5 + 3);
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v18 = *(v17 + 48);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(a1 + v13, type metadata accessor for Binding<TextSelection?>?);
    result = outlined init with take of Binding<TextSelection?>?(&v5[v18], a1 + v13, type metadata accessor for Binding<TextSelection?>?);
    v20 = v24;
    *(a1 + 32) = v23;
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    v21 = (a1 + v12[8]);
    v22 = v25;
    *v21 = v20;
    v21[1] = v22;
    *(a1 + v12[9]) = v11;
  }

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance UIKitTextEditor.MakeRepresentable@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIKitTextViewAdaptor(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id UIKitTextViewAdaptor.makeUIView(context:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  type metadata accessor for TextEditorTextView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setContentInsetAdjustmentBehavior_];
  v4 = v3;
  [v4 setAllowsEditingTextAttributes_];
  [v4 setDelegate_];
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8));
  [v4 setBorderStyle_];

  v5 = specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24));
  UIView.setHoverEffectEnabled(_:)(v5 & 1);
  return v4;
}

uint64_t UIKitTextViewAdaptor.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v11 = v4;
  RepresentableContextValues.environment.getter();
  v6 = v12;
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>();
  if (*(&v12 + 1))
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v7 = *(v2 + *(type metadata accessor for UIKitTextViewAdaptor(0) + 36));
  TextEditorTextView.updateBackground(_:inheritBackground:)(*&v10[0], BYTE8(v10[0]), v7);

  specialized Environment.wrappedValue.getter(*v2, *(v2 + 8));
  [a1 setBorderStyle_];
  v8 = specialized Environment.wrappedValue.getter(*(v2 + 16), *(v2 + 24));
  UIView.setHoverEffectEnabled(_:)(v8 & 1);
  sub_18BF9B644(v12, *(&v12 + 1));
  specialized UITextInputTraits_Private.updatePrivateTraits(in:)(v12, *(&v12 + 1));
  v10[0] = v12;
  UIKitTextEditorCoordinator.update(_:configuration:env:)(a1, v2, v10);
  v10[0] = v6;
  specialized UIKitTextEditorCoordinatorBase.updateInputAccessoryGenerator(textView:env:)(a1, v10);
}

void UIKitTextEditorCoordinator.update(_:configuration:env:)(char *a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  type metadata accessor for AttributedString.LineHeight?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v121 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.TextAlignment?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  v118 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v114 = (&v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v113 = (&v112 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v112 - v20;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v124 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v115 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v112 - v26;
  v27 = type metadata accessor for TextSelection(0);
  v126 = *(v27 - 8);
  v127 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v119 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a3;
  v29 = a3[1];
  v122 = OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_viewIsUpdating;
  *(v4 + OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_viewIsUpdating) = 1;
  v31 = OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_configuration;
  swift_beginAccess();
  outlined assign with copy of UIKitTextViewAdaptor(a2, v4 + v31, type metadata accessor for UIKitTextViewAdaptor);
  swift_endAccess();
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>, &type metadata for TextInputValidationKey, &protocol witness table for TextInputValidationKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>();
  if (v29)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v32 = OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_textInputValidation;
  swift_beginAccess();
  v123 = v4;
  outlined assign with take of TextInputValidation?(&v136, v4 + v32);
  swift_endAccess();
  *&v136 = v30;
  *(&v136 + 1) = v29;
  specialized UIKitTextEditorCoordinatorBase.updateFindInteraction(textView:env:)(a1, &v136);
  v33 = [a1 text];
  v129 = v29;
  v130 = a1;
  v128 = v30;
  v116 = v18;
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = a2[4];
  v39 = a2[5];
  v41 = a2[6];
  v40 = a2[7];
  *&v136 = v38;
  *(&v136 + 1) = v39;
  *&v137 = v41;
  *(&v137 + 1) = v40;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<String>);
  v43 = v42;
  MEMORY[0x18D00ACC0](v134);
  if (!v37)
  {

LABEL_12:
    *&v136 = v38;
    *(&v136 + 1) = v39;
    *&v137 = v41;
    *(&v137 + 1) = v40;
    MEMORY[0x18D00ACC0](v134, v43);
    v45 = MEMORY[0x18D00C850](*&v134[0], *(&v134[0] + 1));

    [v130 setText_];

    goto LABEL_13;
  }

  if (__PAIR128__(v37, v35) == v134[0])
  {

    goto LABEL_13;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v44 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v46 = type metadata accessor for UIKitTextViewAdaptor(0);
  v47 = v124;
  outlined init with copy of TextEditorStyleConfiguration(a2 + *(v46 + 28), v124, type metadata accessor for Binding<TextSelection?>?);
  type metadata accessor for Binding<TextSelection?>(0);
  v49 = v48;
  v50 = (*(*(v48 - 8) + 48))(v47, 1, v48);
  v51 = v126;
  if (v50 != 1)
  {
    v52 = v125;
    MEMORY[0x18D00ACC0](v49);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v47, type metadata accessor for Binding<TextSelection?>);
    v56 = v127;
    v57 = (*(v51 + 48))(v52, 1, v127);
    v53 = v129;
    v54 = v130;
    v55 = v128;
    if (v57 == 1)
    {
      goto LABEL_16;
    }

    v60 = v119;
    outlined init with take of Binding<TextSelection?>?(v52, v119, type metadata accessor for TextSelection);
    v61 = v60;
    v62 = v115;
    outlined init with copy of TextEditorStyleConfiguration(v61, v115, type metadata accessor for TextSelection);
    (*(v51 + 56))(v62, 0, 1, v56);
    v63 = v117;
    SelectionRanges<>.init(_:)(v62, v117);
    v64 = v116;
    outlined init with copy of SelectionRanges<String.Index>(v63, v116);
    v65 = [v54 text];
    if (v65)
    {
      v66 = v65;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      *&v136 = v67;
      *(&v136 + 1) = v69;
      lazy protocol witness table accessor for type String and conformance String();
      LOBYTE(v66) = SelectionRanges.isSafe<A>(in:)();

      outlined destroy of SelectionRanges<String.Index>(v64);
      if (v66)
      {
        goto LABEL_25;
      }

      v70 = [v54 text];
      if (v70)
      {
        v71 = v70;
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        outlined destroy of SelectionRanges<String.Index>(v63);

        v75 = HIBYTE(v74) & 0xF;
        if ((v74 & 0x2000000000000000) == 0)
        {
          v75 = v72;
        }

        v76 = 7;
        if (((v74 >> 60) & ((v72 & 0x800000000000000) == 0)) != 0)
        {
          v76 = 11;
        }

        v77 = v113;
        *v113 = v76 | (v75 << 16);
        swift_storeEnumTagMultiPayload();
        outlined init with take of SelectionRanges<String.Index>(v77, v63);
LABEL_25:
        v78 = v114;
        UITextView.selection.getter(v114);
        v79 = _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v63, v78);
        outlined destroy of SelectionRanges<String.Index>(v78);
        if ((v79 & 1) == 0)
        {
          outlined init with copy of SelectionRanges<String.Index>(v63, v78);
          UITextView.selection.setter(v78);
        }

        if (v53)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();

          PropertyList.Tracker.value<A>(_:for:)();

          if (!v136 || (, PropertyList.Tracker.value<A>(_:for:)(), , v80 = v136, !v136))
          {
LABEL_35:
            outlined destroy of SelectionRanges<String.Index>(v63);
            v58 = type metadata accessor for TextSelection;
            v59 = v119;
            goto LABEL_36;
          }
        }

        else
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();
          PropertyList.subscript.getter();
          if (!v136)
          {
            goto LABEL_35;
          }

          PropertyList.subscript.getter();
          v80 = v136;
          if (!v136)
          {
            goto LABEL_35;
          }
        }

        v81 = v80 != 1;
        if (v81 != [v54 selectionAffinity])
        {
          [v54 setSelectionAffinity_];
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v47, type metadata accessor for Binding<TextSelection?>?);
  v52 = v125;
  (*(v51 + 56))(v125, 1, 1, v127);
  v53 = v129;
  v54 = v130;
  v55 = v128;
LABEL_16:
  v58 = type metadata accessor for TextSelection?;
  v59 = v52;
LABEL_36:
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v59, v58);
  v82 = TextEditorTextView.helper.getter();
  *&v134[0] = v55;
  *(&v134[0] + 1) = v53;

  ScrollEnvironmentProperties.init(environment:)(v134, &v136);
  v83 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(&v82[v83], v134);
  swift_beginAccess();
  outlined assign with copy of ScrollEnvironmentProperties(&v136, &v82[v83]);
  swift_endAccess();
  ScrollViewHelper.didChangeProperties(from:)(v134);

  outlined destroy of ScrollEnvironmentProperties(v134);
  outlined destroy of ScrollEnvironmentProperties(&v136);
  v84 = *&v54[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper];
  v132 = v55;
  v133 = v53;
  v85 = v84;
  EnvironmentValues.contentMarginProxy.getter(&v136);
  v86 = &v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v134[12] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 192];
  v134[13] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 208];
  v135[0] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 224];
  *(v135 + 9) = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 233];
  v134[8] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 128];
  v134[9] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 144];
  v134[10] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 160];
  v134[11] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 176];
  v134[4] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64];
  v134[5] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80];
  v134[6] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96];
  v134[7] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 112];
  v134[0] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v134[1] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16];
  v134[2] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32];
  v134[3] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 48];
  *(v86 + 12) = v148;
  *(v86 + 13) = v149;
  *(v86 + 14) = v150[0];
  *(v86 + 233) = *(v150 + 9);
  *(v86 + 8) = v144;
  *(v86 + 9) = v145;
  *(v86 + 10) = v146;
  *(v86 + 11) = v147;
  *(v86 + 4) = v140;
  *(v86 + 5) = v141;
  *(v86 + 6) = v142;
  *(v86 + 7) = v143;
  *v86 = v136;
  *(v86 + 1) = v137;
  *(v86 + 2) = v138;
  *(v86 + 3) = v139;
  ScrollViewHelper.didChangeMargins(from:)();

  *&v134[0] = v55;
  *(&v134[0] + 1) = v53;
  if (EnvironmentValues.font.getter())
  {
    v132 = v55;
    v133 = v53;
    v87 = Font.platformFont(in:)();
  }

  else
  {
    *&v134[0] = v55;
    *(&v134[0] + 1) = v53;
    EnvironmentValues.dynamicTypeSize.getter();
    v88 = **(&unk_1E7238808 + v132);
    v89 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v90 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v89];
    Font.init(_:)();
    *&v134[0] = v55;
    *(&v134[0] + 1) = v53;
    v87 = Font.platformFont(in:)();
  }

  *&v134[0] = v55;
  *(&v134[0] + 1) = v53;
  v91 = type metadata accessor for AttributedString.TextAlignment();
  v92 = v120;
  (*(*(v91 - 8) + 56))(v120, 1, 1, v91);
  LOBYTE(v132) = 1;
  v131 = 1;
  v93 = type metadata accessor for AttributedString.LineHeight();
  v94 = v121;
  (*(*(v93 - 8) + 56))(v121, 1, 1, v93);
  v95 = v87;
  v96 = makeParagraphStyle(environment:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)();
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v94, type metadata accessor for AttributedString.LineHeight?);
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v92, type metadata accessor for AttributedString.TextAlignment?);
  [v96 setLineBreakMode_];
  [v96 setLineBreakStrategy_];
  *&v134[0] = v55;
  *(&v134[0] + 1) = v53;
  if (EnvironmentValues.foregroundColor.getter())
  {
    v132 = v55;
    v133 = v53;
    dispatch thunk of AnyColorBox.resolve(in:)();

    Color.Resolved.kitColor.getter();
    objc_opt_self();
    v97 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v97 = [objc_opt_self() labelColor];
  }

  v98 = v97;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>, type metadata accessor for (NSAttributedStringKey, Any), MEMORY[0x1E69E6F90]);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_18CDD3F30;
  v100 = *MEMORY[0x1E69DB688];
  *(v99 + 32) = *MEMORY[0x1E69DB688];
  v101 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
  *(v99 + 40) = v96;
  v102 = *MEMORY[0x1E69DB650];
  *(v99 + 64) = v101;
  *(v99 + 72) = v102;
  v103 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  *(v99 + 80) = v98;
  v104 = *MEMORY[0x1E69DB648];
  *(v99 + 104) = v103;
  *(v99 + 112) = v104;
  *(v99 + 144) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  *(v99 + 120) = v95;
  v105 = v100;
  v129 = v96;
  v106 = v102;
  v107 = v98;
  v108 = v104;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v99);
  swift_setDeallocating();
  type metadata accessor for (NSAttributedStringKey, Any)();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v109 = [v54 textStorage];
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_6(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v109 addAttributes:isa range:{0, objc_msgSend(v109, sel_length)}];

  v111 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v54 setTypingAttributes_];

  *(v123 + v122) = 0;
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitTextViewAdaptor@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1 - 8;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextEditorStyleConfiguration(v3, v7, type metadata accessor for UIKitTextViewAdaptor);
  v8 = (v3 + *(v5 + 40));
  v9 = v8[1];
  v18 = *v8;
  v19 = v9;
  v10 = type metadata accessor for UIKitTextEditorCoordinator(0);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_textInputValidation];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v11[OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_viewIsUpdating] = 0;
  outlined init with copy of TextEditorStyleConfiguration(v7, &v11[OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_configuration], type metadata accessor for UIKitTextViewAdaptor);
  v13 = &v11[OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_selectionStorage];
  v14 = v19;
  *v13 = v18;
  v13[1] = v14;
  v17.receiver = v11;
  v17.super_class = v10;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v7, type metadata accessor for UIKitTextViewAdaptor);
  *a2 = v15;
  return result;
}

void UIKitTextEditorCoordinator.textViewDidChange(_:)(void *a1)
{
  if ((*(v1 + OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_viewIsUpdating) & 1) == 0)
  {
    v3 = v1 + OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_configuration;
    swift_beginAccess();

    v4 = [a1 text];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *&v28 = v6;
    *(&v28 + 1) = v8;
    dispatch thunk of AnyLocation.set(_:transaction:)();

    v9 = *(v3 + 48);
    v10 = *(v3 + 56);
    v28 = *(v3 + 32);
    v29 = v9;
    v30 = v10;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<String>);
    v12 = v11;
    MEMORY[0x18D00ACC0](&v26);
    v14 = v26;
    v13 = v27;
    v15 = [a1 text];
    if (!v15)
    {

LABEL_9:
      v21 = *(v3 + 32);
      v22 = *(v3 + 40);
      v23 = *(v3 + 48);
      v24 = *(v3 + 56);
      *&v28 = v21;
      *(&v28 + 1) = v22;
      v29 = v23;
      v30 = v24;

      MEMORY[0x18D00ACC0](&v26, v12);
      v25 = MEMORY[0x18D00C850](v26, v27);

      [a1 setText_];

      return;
    }

    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v14 == v17 && v13 == v19)
    {

      return;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_9;
    }
  }
}

id UIKitTextEditorCoordinator.textView(_:shouldChangeTextInRanges:replacementText:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_textInputValidation;
  swift_beginAccess();
  outlined init with copy of TextEditorStyleConfiguration(v4 + v9, &v17, type metadata accessor for TextInputValidation?);
  if (!v18)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(&v17, type metadata accessor for TextInputValidation?);
    v16 = 1;
    return (v16 & 1);
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v17, v19);
  v10 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  result = [a1 text];
  if (result)
  {
    v12 = result;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = specialized TextInputValidation.shouldChangeText(in:text:replacement:)(a2, v13, v15, a3, a4, *v10, v10[1]);

    __swift_destroy_boxed_opaque_existential_1(v19);
    return (v16 & 1);
  }

  __break(1u);
  return result;
}

uint64_t *closure #1 in UIKitTextEditorCoordinator.textView(_:editMenuForTextInRanges:suggestedActions:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for (_:)();
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t closure #2 in UIKitTextEditorCoordinator.textView(_:editMenuForTextInRanges:suggestedActions:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for TextSelection(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextEditorStyleConfiguration(a2, v8, type metadata accessor for TextSelection);
  v9 = a1(v8);
  result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v8, type metadata accessor for TextSelection);
  *a3 = v9;
  return result;
}

uint64_t UIKitTextEditorCoordinator.textViewDidChangeSelection(_:)(void *a1)
{
  v2 = v1;
  v108 = a1;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v93 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v93 - v9;
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  v15 = *(v14 - 8);
  v102 = v14;
  v103 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v109 = (&v93 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v107 = &v93 - v27;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TextSelection?>(0);
  v32 = v31;
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v93 - v37;
  if ((*(v2 + OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_viewIsUpdating) & 1) == 0)
  {
    v100 = v35;
    v43 = v2 + OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_configuration;
    v44 = v36;
    swift_beginAccess();
    v45 = type metadata accessor for UIKitTextViewAdaptor(0);
    outlined init with copy of TextEditorStyleConfiguration(v43 + *(v45 + 28), v30, type metadata accessor for Binding<TextSelection?>?);
    v99 = v44;
    if ((*(v44 + 48))(v30, 1, v32) == 1)
    {
      v41 = type metadata accessor for Binding<TextSelection?>?;
      v42 = v30;
    }

    else
    {
      outlined init with take of Binding<TextSelection?>?(v30, v38, type metadata accessor for Binding<TextSelection?>);
      MEMORY[0x18D00ACC0](v32);
      v50 = v107;
      SelectionRanges<>.init(_:)(v13, v107);
      UITextView.selection.getter(v109);
      static Log.textEditor.getter();
      v51 = type metadata accessor for Logger();
      v97 = *(v51 - 8);
      v52 = *(v97 + 48);
      v53 = v52(v10, 1, v51);
      v98 = v51;
      if (v53 == 1)
      {
        _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v10, type metadata accessor for Logger?);
      }

      else
      {
        outlined init with copy of SelectionRanges<String.Index>(v50, v23);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v93 = v56;
          v95 = swift_slowAlloc();
          v110 = v95;
          *v56 = 136315138;
          v94 = v55;
          v57 = SelectionRanges.debugDescription.getter();
          v59 = v58;
          outlined destroy of SelectionRanges<String.Index>(v23);
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v110);

          v61 = v93;
          *(v93 + 1) = v60;
          v62 = v61;
          _os_log_impl(&dword_18BD4A000, v54, v94, "Selection binding selection: %s", v61, 0xCu);
          v63 = v95;
          __swift_destroy_boxed_opaque_existential_1(v95);
          MEMORY[0x18D0110E0](v63, -1, -1);
          MEMORY[0x18D0110E0](v62, -1, -1);
        }

        else
        {

          outlined destroy of SelectionRanges<String.Index>(v23);
        }

        v51 = v98;
        (*(v97 + 8))(v10, v98);
      }

      v64 = v104;
      static Log.textEditor.getter();
      if (v52(v64, 1, v51) == 1)
      {
        v65 = v38;
        _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v64, type metadata accessor for Logger?);
        v66 = v107;
      }

      else
      {
        v67 = v101;
        outlined init with copy of SelectionRanges<String.Index>(v109, v101);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = v67;
          v104 = swift_slowAlloc();
          v110 = v104;
          *v70 = 136315138;
          v72 = SelectionRanges.debugDescription.getter();
          v74 = v73;
          outlined destroy of SelectionRanges<String.Index>(v71);
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v110);

          *(v70 + 4) = v75;
          _os_log_impl(&dword_18BD4A000, v68, v69, "UITextView selection: %s", v70, 0xCu);
          v76 = v104;
          __swift_destroy_boxed_opaque_existential_1(v104);
          MEMORY[0x18D0110E0](v76, -1, -1);
          MEMORY[0x18D0110E0](v70, -1, -1);
        }

        else
        {

          outlined destroy of SelectionRanges<String.Index>(v67);
        }

        v66 = v107;
        v65 = v38;
        (*(v97 + 8))(v64, v98);
      }

      v77 = [v108 selectionAffinity];
      v78 = 2 * (v77 == 1);
      if (!v77)
      {
        v78 = 1;
      }

      LODWORD(v108) = v78;
      LOBYTE(v110) = 17;
      v79 = v105;
      outlined init with copy of SelectionRanges<String.Index>(v66, v105);
      v80 = v109;
      v81 = v106;
      outlined init with copy of SelectionRanges<String.Index>(v109, v106);
      v82 = v65;
      v96 = v65;
      v83 = v100;
      outlined init with copy of TextEditorStyleConfiguration(v82, v100, type metadata accessor for Binding<TextSelection?>);
      v84 = *(v103 + 80);
      v85 = (v84 + 16) & ~v84;
      v86 = (v16 + v84 + v85) & ~v84;
      v87 = *(v99 + 80);
      v88 = v16 + v87 + v86;
      v89 = v66;
      v90 = v88 & ~v87;
      v91 = v90 + v33;
      v92 = swift_allocObject();
      outlined init with take of SelectionRanges<String.Index>(v79, v92 + v85);
      outlined init with take of SelectionRanges<String.Index>(v81, v92 + v86);
      outlined init with take of Binding<TextSelection?>?(v83, v92 + v90, type metadata accessor for Binding<TextSelection?>);
      *(v92 + v91) = v108;
      static Update.enqueueAction(reason:_:)();

      outlined destroy of SelectionRanges<String.Index>(v80);
      outlined destroy of SelectionRanges<String.Index>(v89);
      v41 = type metadata accessor for Binding<TextSelection?>;
      v42 = v96;
    }

    return _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v42, v41);
  }

  static Log.textEditor.getter();
  v39 = type metadata accessor for Logger();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v5, 1, v39) == 1)
  {
    v41 = type metadata accessor for Logger?;
    v42 = v5;
    return _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v42, v41);
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_18BD4A000, v46, v47, "Ignoring selection update because view is updating", v48, 2u);
    MEMORY[0x18D0110E0](v48, -1, -1);
  }

  return (*(v40 + 8))(v5, v39);
}

uint64_t closure #1 in UIKitTextEditorCoordinator.textViewDidChangeSelection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v49 = a4;
  v48 = a1;
  v5 = MEMORY[0x1E69E60D0];
  v6 = MEMORY[0x1E69E60E0];
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v43 - v8;
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, v5, v6, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v43 - v26;
  v28 = type metadata accessor for TextSelection(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v48, a2) & 1) == 0)
  {
    outlined init with copy of SelectionRanges<String.Index>(a2, v11);
    TextSelection.init(_:)(v11, v27);
    v48 = v29;
    v32 = *(v29 + 48);
    if (v32(v27, 1, v28) == 1)
    {
      v33 = v44;
      RangeSet.init()();
      (*(v45 + 32))(v31, v33, v46);
      type metadata accessor for TextSelection.Indices(0);
      swift_storeEnumTagMultiPayload();
      v31[*(v28 + 20)] = 0;
      if (v32(v27, 1, v28) != 1)
      {
        _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v27, type metadata accessor for TextSelection?);
      }
    }

    else
    {
      outlined init with take of Binding<TextSelection?>?(v27, v31, type metadata accessor for TextSelection);
    }

    type metadata accessor for Binding<TextSelection?>(0);
    MEMORY[0x18D00ACC0]();
    outlined init with copy of TextEditorStyleConfiguration(v24, v21, type metadata accessor for TextSelection?);
    v34 = v32(v21, 1, v28);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v21, type metadata accessor for TextSelection?);
    if (v34 == 1)
    {
      _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v24, type metadata accessor for TextSelection?);
      outlined init with copy of TextEditorStyleConfiguration(v31, v24, type metadata accessor for TextSelection.Indices);
      v24[*(v28 + 20)] = 0;
      (*(v48 + 56))(v24, 0, 1, v28);
    }

    else if (!v32(v24, 1, v28))
    {
      outlined assign with copy of UIKitTextViewAdaptor(v31, v24, type metadata accessor for TextSelection.Indices);
    }

    dispatch thunk of AnyLocation.set(_:transaction:)();
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v31, type metadata accessor for TextSelection);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v24, type metadata accessor for TextSelection?);
    v29 = v48;
  }

  v35 = v49;
  type metadata accessor for Binding<TextSelection?>(0);
  v37 = v36;
  MEMORY[0x18D00ACC0]();
  v38 = *(v29 + 48);
  if (v38(v18, 1, v28))
  {
    result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v18, type metadata accessor for TextSelection?);
  }

  else
  {
    v40 = v18[*(v28 + 20)];
    result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v18, type metadata accessor for TextSelection?);
    if (v40 != 3)
    {
      v41 = v50;
      if (v35 != 3 && v40 == v35)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  v41 = v50;
  if (v35 == 3)
  {
    return result;
  }

LABEL_15:
  MEMORY[0x18D00ACC0](v37);
  if (v38(v41, 1, v28))
  {
    v42 = v47;
    outlined init with copy of TextEditorStyleConfiguration(v41, v47, type metadata accessor for TextSelection?);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v42, type metadata accessor for TextSelection?);
  }

  else
  {
    *(v41 + *(v28 + 20)) = v35;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v41, type metadata accessor for TextSelection?);
}

uint64_t type metadata completion function for UIKitTextEditorCoordinator()
{
  result = type metadata accessor for UIKitTextViewAdaptor(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *closure #1 in TextEditorTextView.helper.getter()
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
  v18 = MEMORY[0x18D007050](v43, v12);
  v19 = MEMORY[0x18D007050](v45, v18);
  v20 = MEMORY[0x18D007050](v47, v19);
  MEMORY[0x18D007050](v49, v20);
  v21 = v43[1];
  *v17 = v43[0];
  v17[1] = v21;
  v17[2] = v44[0];
  *(v17 + 41) = *(v44 + 9);
  v22 = v45[1];
  v17[4] = v45[0];
  v17[5] = v22;
  v17[6] = v46[0];
  *(v17 + 105) = *(v46 + 9);
  v23 = v47[0];
  v24 = v47[1];
  v25 = v48[0];
  *(v17 + 169) = *(v48 + 9);
  v17[9] = v24;
  v17[10] = v25;
  v17[8] = v23;
  v26 = v49[1];
  v17[12] = v49[0];
  v17[13] = v26;
  v17[14] = v50[0];
  *(v17 + 233) = *(v50 + 9);
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
  v42.receiver = v1;
  v42.super_class = v0;
  v40 = objc_msgSendSuper2(&v42, sel_init);
  swift_unknownObjectWeakAssign();
  *&v40[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate + 8] = &protocol witness table for TextEditorTextView;
  swift_unknownObjectWeakAssign();
  v40[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 2;
  return v40;
}

uint64_t TextEditorTextView.findInteraction(_:didBegin:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for TextEditorTextView();
  result = objc_msgSendSuper2(&v13, *a3, a1, a2);
  v8 = &v3[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext];
  v9 = *&v3[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext + 8];
  if (v9 != 1)
  {
    v10 = *v8;
    v11 = *(v8 + 8);
    outlined copy of _FindContext?(*v8, v9);
    outlined copy of Binding<Int>?(v10, v9);
    result = outlined consume of _FindContext?(v10, v9);
    if (v9)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      *(v12 + 24) = v9;
      *(v12 + 32) = v11 & 1;

      static Update.enqueueAction(reason:_:)();
    }
  }

  return result;
}

void TextEditorTextView.__ivar_destroyer()
{
  outlined consume of _FindContext?(*(v0 + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext), *(v0 + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext + 8));
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper);
}

id UIKitTextEditorCoordinatorBase.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t initializeBufferWithCopyOfBuffer for UIKitTextViewAdaptor(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = v21 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    outlined copy of Environment<Selector?>.Content(*a2, v8);
    *a1 = v7;
    *(a1 + 8) = v8;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    outlined copy of Environment<Selector?>.Content(v9, v10);
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    v11 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v11;
    v12 = *(a2 + 56);
    v48 = a3;
    v13 = *(a3 + 28);
    v14 = (a1 + v13);
    v15 = (a2 + v13);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v12;
    type metadata accessor for Binding<TextSelection?>(0);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v16;

    if (v18(v15, 1, v19))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v14, v15, *(*(v20 - 8) + 64));
    }

    else
    {
      v45 = v17;
      v46 = v19;
      v22 = v15[1];
      *v14 = *v15;
      v14[1] = v22;
      v23 = *(v19 + 32);
      v47 = v14;
      v24 = v14 + v23;
      v25 = v15 + v23;
      v26 = type metadata accessor for TextSelection(0);
      v27 = *(v26 - 8);
      v28 = *(v27 + 48);

      if (v28(v25, 1, v26))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v24, v25, *(*(v29 - 8) + 64));
        v31 = v46;
        v30 = v47;
        v32 = v45;
      }

      else
      {
        v33 = v24;
        v34 = v27;
        v35 = type metadata accessor for TextSelection.Indices(0);
        v32 = v45;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          v37 = v33;
          (*(*(v36 - 8) + 16))(v33, v25, v36);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v37 = v33;
          memcpy(v33, v25, *(*(v35 - 8) + 64));
        }

        v38 = v37;
        v31 = v46;
        v30 = v47;
        v38[*(v26 + 20)] = v25[*(v26 + 20)];
        (*(v34 + 56))();
      }

      (*(v32 + 56))(v30, 0, 1, v31);
    }

    v39 = *(v48 + 32);
    v40 = *(v48 + 36);
    v41 = (a1 + v39);
    v42 = (a2 + v39);
    v43 = v42[1];
    *v41 = *v42;
    v41[1] = v43;
    *(a1 + v40) = *(a2 + v40);
  }

  return a1;
}

uint64_t destroy for UIKitTextViewAdaptor(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));

  v4 = a1 + *(a2 + 28);
  type metadata accessor for Binding<TextSelection?>(0);
  v6 = v5;
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (!result)
  {

    v8 = *(v6 + 32);
    v9 = type metadata accessor for TextSelection(0);
    result = (*(*(v9 - 8) + 48))(v4 + v8, 1, v9);
    if (!result)
    {
      type metadata accessor for TextSelection.Indices(0);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v11 = *(*(v10 - 8) + 8);

        return v11(v4 + v8, v10);
      }
    }
  }

  return result;
}

uint64_t initializeWithCopy for UIKitTextViewAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v10 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v10;
  v11 = *(a2 + 56);
  v46 = a3;
  v12 = *(a3 + 28);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v11;
  type metadata accessor for Binding<TextSelection?>(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v15;

  if (v17(v14, 1, v18))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v13, v14, *(*(v19 - 8) + 64));
  }

  else
  {
    v43 = v16;
    v44 = v18;
    v20 = v14[1];
    *v13 = *v14;
    v13[1] = v20;
    v21 = *(v18 + 32);
    v45 = v13;
    v22 = v13 + v21;
    v23 = v14 + v21;
    v24 = type metadata accessor for TextSelection(0);
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);

    if (v26(v23, 1, v24))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v22, v23, *(*(v27 - 8) + 64));
      v29 = v44;
      v28 = v45;
      v30 = v43;
    }

    else
    {
      v31 = v22;
      v32 = v25;
      v33 = type metadata accessor for TextSelection.Indices(0);
      v30 = v43;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v35 = v31;
        (*(*(v34 - 8) + 16))(v31, v23, v34);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v35 = v31;
        memcpy(v31, v23, *(*(v33 - 8) + 64));
      }

      v36 = v35;
      v29 = v44;
      v28 = v45;
      v36[*(v24 + 20)] = v23[*(v24 + 20)];
      (*(v32 + 56))();
    }

    (*(v30 + 56))(v28, 0, 1, v29);
  }

  v37 = *(v46 + 32);
  v38 = *(v46 + 36);
  v39 = (a1 + v37);
  v40 = (a2 + v37);
  v41 = v40[1];
  *v39 = *v40;
  v39[1] = v41;
  *(a1 + v38) = *(a2 + v38);
  return a1;
}

uint64_t assignWithCopy for UIKitTextViewAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  type metadata accessor for Binding<TextSelection?>(0);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v15, 1, v17);
  v22 = v20(v16, 1, v18);
  if (v21)
  {
    if (!v22)
    {
      *v15 = *v16;
      *(v15 + 1) = *(v16 + 1);
      v23 = *(v18 + 32);
      v52 = &v16[v23];
      __dst = &v15[v23];
      v24 = type metadata accessor for TextSelection(0);
      v51 = *(v24 - 8);
      v25 = *(v51 + 48);

      if (v25(v52, 1, v24))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v52, *(*(v26 - 8) + 64));
      }

      else
      {
        v41 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          v43 = v52;
          (*(*(v42 - 8) + 16))(__dst, v52, v42);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v43 = v52;
          memcpy(__dst, v52, *(*(v41 - 8) + 64));
        }

        __dst[*(v24 + 20)] = v43[*(v24 + 20)];
        (*(v51 + 56))(__dst, 0, 1, v24);
      }

      (*(v19 + 56))(v15, 0, 1, v18);
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v22)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v15, type metadata accessor for Binding<TextSelection?>);
LABEL_7:
    type metadata accessor for Binding<TextSelection?>?(0);
    v28 = *(*(v27 - 8) + 64);
    v29 = v15;
    v30 = v16;
LABEL_8:
    memcpy(v29, v30, v28);
    goto LABEL_21;
  }

  *v15 = *v16;

  *(v15 + 1) = *(v16 + 1);

  v31 = *(v18 + 32);
  v32 = &v15[v31];
  v33 = &v16[v31];
  v34 = type metadata accessor for TextSelection(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36(v32, 1, v34);
  v38 = v36(v33, 1, v34);
  if (v37)
  {
    if (!v38)
    {
      v39 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v40 - 8) + 16))(v32, v33, v40);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v32, v33, *(*(v39 - 8) + 64));
      }

      v32[*(v34 + 20)] = v33[*(v34 + 20)];
      (*(v35 + 56))(v32, 0, 1, v34);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (v38)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v32, type metadata accessor for TextSelection);
LABEL_17:
    type metadata accessor for TextSelection?(0);
    v28 = *(*(v44 - 8) + 64);
    v29 = v32;
    v30 = v33;
    goto LABEL_8;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v32, type metadata accessor for TextSelection.Indices);
    v49 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v50 - 8) + 16))(v32, v33, v50);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v32, v33, *(*(v49 - 8) + 64));
    }
  }

  v32[*(v34 + 20)] = v33[*(v34 + 20)];
LABEL_21:
  v45 = a3[8];
  v46 = (a1 + v45);
  v47 = (a2 + v45);
  *v46 = *v47;
  v46[1] = v47[1];
  v46[2] = v47[2];
  v46[3] = v47[3];
  v46[4] = v47[4];
  v46[5] = v47[5];
  v46[6] = v47[6];
  v46[7] = v47[7];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t initializeWithTake for UIKitTextViewAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  v7 = a3[7];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  type metadata accessor for Binding<TextSelection?>(0);
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v9, 1, v10))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v8, v9, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = v9[1];
    *v8 = *v9;
    v8[1] = v14;
    v15 = *(v11 + 32);
    v16 = v8 + v15;
    v17 = v9 + v15;
    v18 = type metadata accessor for TextSelection(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v28 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v21 - 8) + 32))(v16, v17, v21);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v16, v17, *(*(v28 - 8) + 64));
      }

      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    (*(v12 + 56))(v8, 0, 1, v11);
  }

  v22 = a3[8];
  v23 = a3[9];
  v24 = (a1 + v22);
  v25 = (a2 + v22);
  v26 = v25[1];
  *v24 = *v25;
  v24[1] = v26;
  *(a1 + v23) = *(a2 + v23);
  return a1;
}

uint64_t assignWithTake for UIKitTextViewAdaptor(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = *(a2 + 24);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  *(a1 + 32) = a2[4];

  *(a1 + 40) = a2[5];

  v13 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v13;

  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = a2 + v14;
  type metadata accessor for Binding<TextSelection?>(0);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v15, 1, v17);
  v22 = v20(v16, 1, v18);
  if (v21)
  {
    if (!v22)
    {
      v23 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v23;
      v24 = *(v18 + 32);
      v25 = &v15[v24];
      v26 = &v16[v24];
      v27 = type metadata accessor for TextSelection(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v25, v26, *(*(v29 - 8) + 64));
      }

      else
      {
        v54 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v44 - 8) + 32))(v25, v26, v44);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v25, v26, *(*(v54 - 8) + 64));
        }

        v25[*(v27 + 20)] = v26[*(v27 + 20)];
        (*(v28 + 56))(v25, 0, 1, v27);
      }

      (*(v19 + 56))(v15, 0, 1, v18);
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v22)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v15, type metadata accessor for Binding<TextSelection?>);
LABEL_7:
    type metadata accessor for Binding<TextSelection?>?(0);
    v31 = *(*(v30 - 8) + 64);
    v32 = v15;
    v33 = v16;
LABEL_8:
    memcpy(v32, v33, v31);
    goto LABEL_21;
  }

  *v15 = *v16;

  *(v15 + 1) = *(v16 + 1);

  v34 = *(v18 + 32);
  v35 = &v15[v34];
  v36 = &v16[v34];
  v37 = type metadata accessor for TextSelection(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v40 = v39(v35, 1, v37);
  v41 = v39(v36, 1, v37);
  if (v40)
  {
    if (!v41)
    {
      v42 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v43 - 8) + 32))(v35, v36, v43);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v35, v36, *(*(v42 - 8) + 64));
      }

      v35[*(v37 + 20)] = v36[*(v37 + 20)];
      (*(v38 + 56))(v35, 0, 1, v37);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (v41)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v35, type metadata accessor for TextSelection);
LABEL_17:
    type metadata accessor for TextSelection?(0);
    v31 = *(*(v45 - 8) + 64);
    v32 = v35;
    v33 = v36;
    goto LABEL_8;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v35, type metadata accessor for TextSelection.Indices);
    v52 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v53 - 8) + 32))(v35, v36, v53);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v35, v36, *(*(v52 - 8) + 64));
    }
  }

  v35[*(v37 + 20)] = v36[*(v37 + 20)];
LABEL_21:
  v46 = a3[8];
  v47 = a3[9];
  v48 = (a1 + v46);
  v49 = (a2 + v46);
  v50 = v49[1];
  *v48 = *v49;
  v48[1] = v50;
  *(a1 + v47) = *(a2 + v47);
  return a1;
}

void type metadata completion function for UIKitTextViewAdaptor()
{
  type metadata accessor for Binding<TextSelection?>?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for UIKitTextEditor(uint64_t *a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for TextEditor.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v8 = *(v7 + 32);
      v9 = type metadata accessor for AttributedString();
      v10 = *(*(v9 - 8) + 16);

      v10(a1 + v8, a2 + v8, v9);
      v11 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v12 = (a1 + v11);
      v13 = (a2 + v11);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v15 = v14;
      v16 = *(v14 - 8);
      if ((*(v16 + 48))(v13, 1, v14))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v12, v13, *(*(v17 - 8) + 64));
      }

      else
      {
        v59 = v12;
        v29 = v13[1];
        *v12 = *v13;
        v12[1] = v29;
        v30 = *(v15 + 32);
        __dst = v12 + v30;
        v31 = v13 + v30;
        v32 = type metadata accessor for AttributedTextSelection.Indices(0);
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);

        if (v34(v31, 1, v32))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v36 = __dst;
          memcpy(__dst, v31, *(*(v35 - 8) + 64));
        }

        else
        {
          v36 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v48 = v47;
          }

          else
          {
            v48 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v48 - 8) + 16))(__dst, v31);
          swift_storeEnumTagMultiPayload();
          (*(v33 + 56))(__dst, 0, 1, v32);
        }

        v51 = type metadata accessor for AttributedTextSelection(0);
        v52 = *(v51 + 20);
        v53 = type metadata accessor for AttributeContainer();
        v54 = *(v53 - 8);
        if ((*(v54 + 48))(&v31[v52], 1, v53))
        {
          v55 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v36[v52], &v31[v52], *(*(v55 - 8) + 64));
        }

        else
        {
          (*(v54 + 16))(&v36[v52], &v31[v52], v53);
          (*(v54 + 56))(&v36[v52], 0, 1, v53);
        }

        v36[*(v51 + 24)] = v31[*(v51 + 24)];
        (*(v16 + 56))(v59, 0, 1, v15);
      }
    }

    else
    {
      v19 = a2[3];
      a1[2] = a2[2];
      a1[3] = v19;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v21 = *(v20 + 48);
      v22 = (a1 + v21);
      v23 = (a2 + v21);
      type metadata accessor for Binding<TextSelection?>(0);
      v25 = v24;
      v26 = *(v24 - 1);
      v27 = *(v26 + 48);

      if (v27(v23, 1, v25))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v22, v23, *(*(v28 - 8) + 64));
      }

      else
      {
        v37 = v23[1];
        *v22 = *v23;
        v22[1] = v37;
        __dsta = v25;
        v60 = v22;
        v38 = v25[8];
        v39 = v22 + v38;
        v40 = v23 + v38;
        v41 = type metadata accessor for TextSelection(0);
        v42 = *(v41 - 8);
        v43 = *(v42 + 48);

        if (v43(v40, 1, v41))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v39, v40, *(*(v44 - 8) + 64));
          v46 = __dsta;
          v45 = v60;
        }

        else
        {
          v49 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v50 - 8) + 16))(v39, v40, v50);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v39, v40, *(*(v49 - 8) + 64));
          }

          v46 = __dsta;
          v45 = v60;
          v39[*(v41 + 20)] = v40[*(v41 + 20)];
          (*(v42 + 56))(v39, 0, 1, v41);
        }

        (*(v26 + 56))(v45, 0, 1, v46);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for UIKitTextEditor(uint64_t a1)
{
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v14 = a1 + *(v13 + 48);
    type metadata accessor for Binding<TextSelection?>(0);
    v16 = v15;
    result = (*(*(v15 - 8) + 48))(v14, 1, v15);
    if (result)
    {
      return result;
    }

    v17 = *(v16 + 32);
    v18 = type metadata accessor for TextSelection(0);
    result = (*(*(v18 - 8) + 48))(v14 + v17, 1, v18);
    if (result)
    {
      return result;
    }

    type metadata accessor for TextSelection.Indices(0);
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      return result;
    }

    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    v20 = v19;
    v21 = *(*(v19 - 8) + 8);
    v22 = v14 + v17;
    goto LABEL_15;
  }

  _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a1 + *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v8 = v7;
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {

    v10 = v6 + *(v8 + 32);
    v11 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>();
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 8))(v10, v12);
    }

    v23 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v24 = type metadata accessor for AttributeContainer();
    v25 = *(v24 - 8);
    result = (*(v25 + 48))(v10 + v23, 1, v24);
    if (!result)
    {
      v21 = *(v25 + 8);
      v22 = v10 + v23;
      v20 = v24;
LABEL_15:

      return v21(v22, v20);
    }
  }

  return result;
}

char *initializeWithCopy for UIKitTextEditor(char *a1, char *a2)
{
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  if (EnumCaseMultiPayload == 1)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 16);

    v9(&a1[v7], &a2[v7], v8);
    v10 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v11 = &a1[v10];
    v12 = &a2[v10];
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v14 = v13;
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v12, 1, v13))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v11, v12, *(*(v16 - 8) + 64));
    }

    else
    {
      v54 = v11;
      v27 = *(v12 + 1);
      *v11 = *v12;
      *(v11 + 1) = v27;
      v28 = *(v14 + 32);
      __dst = &v11[v28];
      v29 = &v12[v28];
      v30 = type metadata accessor for AttributedTextSelection.Indices(0);
      v31 = *(v30 - 8);
      v32 = *(v31 + 48);

      if (v32(v29, 1, v30))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        v34 = __dst;
        memcpy(__dst, v29, *(*(v33 - 8) + 64));
      }

      else
      {
        v34 = __dst;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v43 = v42;
        }

        else
        {
          v43 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v43 - 8) + 16))(__dst, v29);
        swift_storeEnumTagMultiPayload();
        (*(v31 + 56))(__dst, 0, 1, v30);
      }

      v46 = type metadata accessor for AttributedTextSelection(0);
      v47 = *(v46 + 20);
      v48 = type metadata accessor for AttributeContainer();
      v49 = *(v48 - 8);
      if ((*(v49 + 48))(&v29[v47], 1, v48))
      {
        v50 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v34[v47], &v29[v47], *(*(v50 - 8) + 64));
      }

      else
      {
        (*(v49 + 16))(&v34[v47], &v29[v47], v48);
        (*(v49 + 56))(&v34[v47], 0, 1, v48);
      }

      v34[*(v46 + 24)] = v29[*(v46 + 24)];
      (*(v15 + 56))(v54, 0, 1, v14);
    }
  }

  else
  {
    v17 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v17;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v19 = *(v18 + 48);
    v20 = &a1[v19];
    v21 = &a2[v19];
    type metadata accessor for Binding<TextSelection?>(0);
    v23 = v22;
    v24 = *(v22 - 8);
    v25 = *(v24 + 48);

    if (v25(v21, 1, v23))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v20, v21, *(*(v26 - 8) + 64));
    }

    else
    {
      v35 = *(v21 + 1);
      *v20 = *v21;
      *(v20 + 1) = v35;
      v36 = *(v23 + 32);
      __dsta = &v20[v36];
      v55 = v20;
      v37 = &v21[v36];
      v38 = type metadata accessor for TextSelection(0);
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);

      if (v40(v37, 1, v38))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dsta, v37, *(*(v41 - 8) + 64));
      }

      else
      {
        v44 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v45 - 8) + 16))(__dsta, v37, v45);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dsta, v37, *(*(v44 - 8) + 64));
        }

        __dsta[*(v38 + 20)] = v37[*(v38 + 20)];
        (*(v39 + 56))(__dsta, 0, 1, v38);
      }

      (*(v24 + 56))(v55, 0, 1, v23);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for UIKitTextEditor(char *a1, char *a2)
{
  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(a1, type metadata accessor for TextEditor.Storage);
    type metadata accessor for TextEditor.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      v8 = *(*(v7 - 8) + 16);

      v8(&a1[v6], &a2[v6], v7);
      v9 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v10 = &a1[v9];
      v11 = &a2[v9];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v13 = v12;
      v14 = *(v12 - 8);
      if ((*(v14 + 48))(v11, 1, v12))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v10, v11, *(*(v15 - 8) + 64));
      }

      else
      {
        v50 = v10;
        *v10 = *v11;
        *(v10 + 1) = *(v11 + 1);
        v25 = *(v13 + 32);
        __dst = &v10[v25];
        v26 = &v11[v25];
        v27 = type metadata accessor for AttributedTextSelection.Indices(0);
        v28 = *(v27 - 8);
        v29 = *(v28 + 48);

        if (v29(v26, 1, v27))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v31 = __dst;
          memcpy(__dst, v26, *(*(v30 - 8) + 64));
        }

        else
        {
          v31 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 16))(__dst, v26);
          swift_storeEnumTagMultiPayload();
          (*(v28 + 56))(__dst, 0, 1, v27);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v26[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v31[v43], &v26[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 16))(&v31[v43], &v26[v43], v44);
          (*(v45 + 56))(&v31[v43], 0, 1, v44);
        }

        v31[*(v42 + 24)] = v26[*(v42 + 24)];
        (*(v14 + 56))(v50, 0, 1, v13);
      }
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v17 = *(v16 + 48);
      v18 = &a1[v17];
      v19 = &a2[v17];
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      v23 = *(v22 + 48);

      if (v23(v19, 1, v21))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v18, v19, *(*(v24 - 8) + 64));
      }

      else
      {
        *v18 = *v19;
        *(v18 + 1) = *(v19 + 1);
        v32 = *(v21 + 32);
        __dsta = &v18[v32];
        v51 = v18;
        v33 = &v19[v32];
        v34 = type metadata accessor for TextSelection(0);
        v35 = *(v34 - 8);
        v36 = *(v35 + 48);

        if (v36(v33, 1, v34))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(__dsta, v33, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v41 - 8) + 16))(__dsta, v33, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(__dsta, v33, *(*(v40 - 8) + 64));
          }

          __dsta[*(v34 + 20)] = v33[*(v34 + 20)];
          (*(v35 + 56))(__dsta, 0, 1, v34);
        }

        (*(v22 + 56))(v51, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for UIKitTextEditor(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextEditor.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v6 = *(v5 + 32);
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
    v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v10, 1, v11))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      v24 = v10[1];
      *v9 = *v10;
      v9[1] = v24;
      v25 = *(v12 + 32);
      v26 = v9 + v25;
      v27 = v10 + v25;
      v28 = type metadata accessor for AttributedTextSelection.Indices(0);
      v29 = *(v28 - 8);
      v49 = v26;
      if ((*(v29 + 48))(v27, 1, v28))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        memcpy(v26, v27, *(*(v30 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v39 = v38;
        }

        else
        {
          v39 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v39 - 8) + 32))(v26, v27);
        swift_storeEnumTagMultiPayload();
        (*(v29 + 56))(v26, 0, 1, v28);
      }

      v42 = type metadata accessor for AttributedTextSelection(0);
      v43 = *(v42 + 20);
      v44 = type metadata accessor for AttributeContainer();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(&v27[v43], 1, v44))
      {
        v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v47 = v49;
        memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
      }

      else
      {
        (*(v45 + 32))(&v49[v43], &v27[v43], v44);
        (*(v45 + 56))(&v49[v43], 0, 1, v44);
        v47 = v49;
      }

      v47[*(v42 + 24)] = v27[*(v42 + 24)];
      (*(v13 + 56))(v9, 0, 1, v12);
    }
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v17 = *(v16 + 48);
    v18 = (a1 + v17);
    v19 = (a2 + v17);
    type metadata accessor for Binding<TextSelection?>(0);
    v21 = v20;
    v22 = *(v20 - 8);
    if ((*(v22 + 48))(v19, 1, v20))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      v31 = v19[1];
      *v18 = *v19;
      v18[1] = v31;
      v32 = *(v21 + 32);
      v33 = v18 + v32;
      v34 = v19 + v32;
      v35 = type metadata accessor for TextSelection(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v34, 1, v35))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v33, v34, *(*(v37 - 8) + 64));
      }

      else
      {
        v40 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v41 - 8) + 32))(v33, v34, v41);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v33, v34, *(*(v40 - 8) + 64));
        }

        v33[*(v35 + 20)] = v34[*(v35 + 20)];
        (*(v36 + 56))(v33, 0, 1, v35);
      }

      (*(v22 + 56))(v18, 0, 1, v21);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for UIKitTextEditor(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(a1, type metadata accessor for TextEditor.Storage);
    type metadata accessor for TextEditor.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
      v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v9 = (a1 + v8);
      v10 = (a2 + v8);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v12 = v11;
      v13 = *(v11 - 8);
      if ((*(v13 + 48))(v10, 1, v11))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v9, v10, *(*(v14 - 8) + 64));
      }

      else
      {
        v24 = v10[1];
        *v9 = *v10;
        v9[1] = v24;
        v25 = *(v12 + 32);
        v26 = v9 + v25;
        v27 = v10 + v25;
        v28 = type metadata accessor for AttributedTextSelection.Indices(0);
        v29 = *(v28 - 8);
        v49 = v26;
        if ((*(v29 + 48))(v27, 1, v28))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          memcpy(v26, v27, *(*(v30 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 32))(v26, v27);
          swift_storeEnumTagMultiPayload();
          (*(v29 + 56))(v26, 0, 1, v28);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v27[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          v47 = v49;
          memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 32))(&v49[v43], &v27[v43], v44);
          (*(v45 + 56))(&v49[v43], 0, 1, v44);
          v47 = v49;
        }

        v47[*(v42 + 24)] = v27[*(v42 + 24)];
        (*(v13 + 56))(v9, 0, 1, v12);
      }
    }

    else
    {
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v17 = *(v16 + 48);
      v18 = (a1 + v17);
      v19 = (a2 + v17);
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      if ((*(v22 + 48))(v19, 1, v20))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v18, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v31 = v19[1];
        *v18 = *v19;
        v18[1] = v31;
        v32 = *(v21 + 32);
        v33 = v18 + v32;
        v34 = v19 + v32;
        v35 = type metadata accessor for TextSelection(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v34, 1, v35))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v33, v34, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v41 - 8) + 32))(v33, v34, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v33, v34, *(*(v40 - 8) + 64));
          }

          v33[*(v35 + 20)] = v34[*(v35 + 20)];
          (*(v36 + 56))(v33, 0, 1, v35);
        }

        (*(v22 + 56))(v18, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E60D0];
  v5 = MEMORY[0x1E69E60E0];
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, v4, v5, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v25 - v15);
  type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>)();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 56);
  outlined init with copy of SelectionRanges<String.Index>(a1, v19);
  outlined init with copy of SelectionRanges<String.Index>(a2, &v19[v21]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of SelectionRanges<String.Index>(v19, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = (*v16 ^ *&v19[v21]) < 0x4000uLL;
      goto LABEL_6;
    }

LABEL_8:
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v19, type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>));
    v22 = 0;
    return v22 & 1;
  }

  outlined init with copy of SelectionRanges<String.Index>(v19, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v8 + 8))(v13, v7);
    goto LABEL_8;
  }

  (*(v8 + 32))(v10, &v19[v21], v7);
  v22 = static RangeSet.== infix(_:_:)();
  v23 = *(v8 + 8);
  v23(v10, v7);
  v23(v13, v7);
LABEL_6:
  outlined destroy of SelectionRanges<String.Index>(v19);
  return v22 & 1;
}

unint64_t lazy protocol witness table accessor for type UIKitTextEditor.MakeRepresentable and conformance UIKitTextEditor.MakeRepresentable()
{
  result = lazy protocol witness table cache variable for type UIKitTextEditor.MakeRepresentable and conformance UIKitTextEditor.MakeRepresentable;
  if (!lazy protocol witness table cache variable for type UIKitTextEditor.MakeRepresentable and conformance UIKitTextEditor.MakeRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitTextEditor.MakeRepresentable and conformance UIKitTextEditor.MakeRepresentable);
  }

  return result;
}

uint64_t outlined init with copy of TextEditorStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized UIKitTextEditorCoordinatorBase.updateFindInteraction(textView:env:)(char *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<_FindContext.Key>, &type metadata for _FindContext.Key, &protocol witness table for _FindContext.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<_FindContext.Key>, &type metadata for _FindContext.Key, &protocol witness table for _FindContext.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v4 = v24;
  v3 = v25;
  v5 = v26;
  v6 = v27;
  v7 = v28;
  if (v27)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v26;
  v10 = &a1[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext];
  v11 = *&a1[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext];
  v12 = *&a1[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext + 8];
  *v10 = v24;
  *(v10 + 1) = v3;
  v10 += 16;
  *v10 = v9;
  v10[2] = v7 != 0;
  outlined copy of Binding<Int>?(v4, v3);
  outlined consume of _FindContext?(v11, v12);
  [a1 setFindInteractionEnabled_];
  v13 = [a1 findInteraction];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [a1 window];
  if (!v15)
  {
LABEL_17:

LABEL_18:
    outlined consume of Binding<NavigationSplitViewColumn>?(v4, v3);
    return;
  }

  v16 = [v14 isFindNavigatorVisible];
  if (v6)
  {
    if (v3)
    {
      v24 = v4;
      v25 = v3;
      v26 = v5 & 1;
      type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>);
      v18 = v17;

      MEMORY[0x18D00ACC0](&v23, v18);
      v19 = v23;

      if (!(v16 & 1 | ((v19 & 1) == 0)))
      {
LABEL_16:
        *(swift_allocObject() + 16) = v14;
        v22 = v14;
        onNextMainRunLoop(do:)();

        outlined consume of Binding<NavigationSplitViewColumn>?(v4, v3);

        return;
      }

      goto LABEL_14;
    }
  }

  else if (v3)
  {
LABEL_14:
    v24 = v4;
    v25 = v3;
    v26 = v5 & 1;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>);
    v21 = v20;

    MEMORY[0x18D00ACC0](&v23, v21);

    if (v23 != 1 && v16)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }
}

void specialized UIKitTextEditorCoordinatorBase.updateInputAccessoryGenerator(textView:env:)(void *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey>, &type metadata for EnvironmentValues.InputAccessoryKey, &protocol witness table for EnvironmentValues.InputAccessoryKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey>, &type metadata for EnvironmentValues.InputAccessoryKey, &protocol witness table for EnvironmentValues.InputAccessoryKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  Strong = swift_weakLoadStrong();
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v7, type metadata accessor for WeakBox<InputAccessoryGenerator>);
  if (Strong)
  {
    v4 = specialized InputAccessoryGenerator.callAsFunction()();
    v5 = [a1 inputAccessoryView];
    if (v5 && (v6 = v5, v5, v6 == v4))
    {
    }

    else
    {
      [a1 setInputAccessoryView_];
    }
  }
}

uint64_t outlined assign with take of TextInputValidation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextInputValidation?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Binding<TextSelection?>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>)()
{
  if (!lazy cache variable for type metadata for (SelectionRanges<String.Index>, SelectionRanges<String.Index>))
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SelectionRanges<String.Index>, SelectionRanges<String.Index>));
    }
  }
}

uint64_t outlined consume of _FindContext?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return outlined consume of Binding<NavigationSplitViewColumn>?(a1, a2);
  }

  return a1;
}

void _UITextInputTraitSetForceDisableDictation(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setForceDisableDictation:a2];
  }
}

void _UITextInputTraitSetPreferOnlineDictation(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setPreferOnlineDictation:a2];
  }
}

void _UITextInputTraitSetForceSpellingDictation(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setForceSpellingDictation:a2];
  }
}

void _UITextInputTraitSetForceEnableDictation(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setForceEnableDictation:a2];
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined copy of _FindContext?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return outlined copy of Binding<Int>?(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_28Tm()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in UIKitTextEditorCoordinator.textViewDidChangeSelection(_:)()
{
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  type metadata accessor for Binding<TextSelection?>(0);
  v7 = *(v6 - 8);
  v8 = v0 + ((v5 + v4 + *(v7 + 80)) & ~*(v7 + 80));
  v9 = *(v8 + *(v7 + 64));

  return closure #1 in UIKitTextEditorCoordinator.textViewDidChangeSelection(_:)(v0 + v3, v0 + v5, v8, v9);
}

uint64_t outlined assign with copy of UIKitTextViewAdaptor(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void specialized UIKitTextEditorCoordinator.textView(_:editMenuForTextInRanges:suggestedActions:)(void *a1, UIMenuElementSize a2)
{
  v49 = a1;
  v50 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E60D0];
  v7 = MEMORY[0x1E69E60E0];
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, v6, v7, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v45 - v12);
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TextSelection(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for ((_:))?, type metadata accessor for (_:), MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  v21 = v52[0];
  if (v52[0])
  {
    v46 = a2;
    v22 = v52[1];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v45 = v23;
    v24 = [v49 selectionAffinity];
    if (v24)
    {
      v25 = 2 * (v24 == 1);
    }

    else
    {
      v25 = 1;
    }

    UITextView.selection.getter(v13);
    TextSelection.init(_:)(v13, v16);
    v26 = *(v18 + 48);
    if (v26(v16, 1, v17) == 1)
    {
      RangeSet.init()();
      (*(v47 + 32))(v20, v10, v48);
      type metadata accessor for TextSelection.Indices(0);
      swift_storeEnumTagMultiPayload();
      v20[*(v17 + 20)] = 0;
      v27 = v26(v16, 1, v17);
      if (v27 != 1)
      {
        v27 = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v16, type metadata accessor for TextSelection?);
      }
    }

    else
    {
      v27 = outlined init with take of Binding<TextSelection?>?(v16, v20, type metadata accessor for TextSelection);
    }

    v20[*(v17 + 20)] = v25;
    MEMORY[0x1EEE9AC00](v27);
    v30 = v45;
    *(&v45 - 4) = _s7SwiftUI13TextSelectionVAA16PlatformItemListVIegnr_AcEIegno_TRTA_0;
    *(&v45 - 3) = v30;
    v43 = v20;
    static Update.ensure<A>(_:)();
    v31 = v52[0];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
    v32 = MEMORY[0x1E69E7CC0];
    v52[0] = MEMORY[0x1E69E7CC0];
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v34 = MEMORY[0x1E69E7CC8];
    v5[8] = 0;
    *(v5 + 2) = v34;
    *(v5 + 3) = v33;
    *(v5 + 4) = v32;
    *(v5 + 5) = v34;
    v5[48] = 0;
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
    v35 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
    v36 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_18CD63400;
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v35, static MenuVisitor.MenuStackGroup.empty);
    outlined init with copy of TextEditorStyleConfiguration(v38, v37 + v36, type metadata accessor for MenuVisitor.MenuStackGroup);
    *(v5 + 7) = v37;
    v39 = *(v50 + 32);
    v40 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
    (*(*(v40 - 8) + 56))(&v5[v39], 1, 1, v40);
    *v5 = 0;
    MenuVisitor.visit(_:uniqueNames:)(v31, v52);

    v41 = *(v5 + 4);

    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v5, type metadata accessor for MenuVisitor);
    v52[0] = v46;

    specialized Array.append<A>(contentsOf:)(v41);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v54.value.super.isa = 0;
    v54.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v52[0], v42, 0, v54, 0, 0xFFFFFFFFFFFFFFFFLL, v52[0], v44);

    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v20, type metadata accessor for TextSelection);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);

    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v53.value.super.isa = 0;
    v53.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, v28, 0, v53, 0, 0xFFFFFFFFFFFFFFFFLL, a2, v44);
  }
}

void type metadata accessor for IndexingIterator<RangeSet<String.Index>.Ranges>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<RangeSet<String.Index>.Ranges>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BA8]);
    lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<RangeSet<String.Index>.Ranges>);
    }
  }
}

uint64_t _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitTextEditor.MakeRepresentable(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UIKitTextEditor.MakeRepresentable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

double protocol witness for StyleableView.configuration.getter in conformance ResolvedGaugeStyle@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedGaugeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedGaugeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t View.gaugeStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GaugeStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

unint64_t instantiation function for generic protocol witness table for GaugeStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GaugeStyleConfiguration.CurrentValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GaugeStyleConfiguration.MinimumValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GaugeStyleConfiguration.MaximumValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GaugeStyleConfiguration.MarkedValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel();
  *(a1 + 8) = result;
  return result;
}

uint64_t GaugeStyleModifier.styleBody(configuration:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *(a1 + 8);
  v13 = *(a1 + 9);
  v14 = *(a1 + 10);
  v18 = *a1;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  (*(v3 + 24))(&v18, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v6 + 8);
  v16(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance GaugeStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GaugeStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type GaugeStyleModifier<DefaultGaugeStyle> and conformance GaugeStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type GaugeStyleModifier<DefaultGaugeStyle> and conformance GaugeStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type GaugeStyleModifier<DefaultGaugeStyle> and conformance GaugeStyleModifier<A>)
  {
    type metadata accessor for GaugeStyleModifier<DefaultGaugeStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleModifier<DefaultGaugeStyle> and conformance GaugeStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for GaugeStyleModifier<DefaultGaugeStyle>()
{
  if (!lazy cache variable for type metadata for GaugeStyleModifier<DefaultGaugeStyle>)
  {
    lazy protocol witness table accessor for type DefaultGaugeStyle and conformance DefaultGaugeStyle();
    v0 = type metadata accessor for GaugeStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GaugeStyleModifier<DefaultGaugeStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultGaugeStyle and conformance DefaultGaugeStyle()
{
  result = lazy protocol witness table cache variable for type DefaultGaugeStyle and conformance DefaultGaugeStyle;
  if (!lazy protocol witness table cache variable for type DefaultGaugeStyle and conformance DefaultGaugeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultGaugeStyle and conformance DefaultGaugeStyle);
  }

  return result;
}

uint64_t initializeWithCopy for AnyToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  (**(v5 - 8))(a1 + 32, a2 + 32);
  return a1;
}

uint64_t *assignWithCopy for AnyToken(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2);
  __swift_assign_boxed_opaque_existential_1(a1 + 4, a2 + 4);
  return a1;
}

uint64_t assignWithTake for AnyToken(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t AttributedString.search.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Void __swiftcall SearchAttributedString.update(tokens:text:)(Swift::OpaquePointer tokens, Swift::String text)
{
  v15 = text;
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for AttributedString();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  AttributedString.init()();
  v10 = *(tokens._rawValue + 2);
  if (v10)
  {
    v11 = tokens._rawValue + 32;
    v12 = (v17 + 8);
    do
    {
      v19[0] = 12369903;
      static String._uncheckedFromUTF8(_:)();
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      outlined init with copy of AnyToken(v11, v19);
      outlined init with copy of AnyToken?(v19, v18);
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
      AttributedString.subscript.setter();
      outlined destroy of AnyToken?(v19);
      static AttributedString.+= infix(_:_:)();
      (*v12)(v6, v4);
      v11 += 72;
      --v10;
    }

    while (v10);
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  AttributedString.append<A>(_:)();
  v13 = v17;
  (*(v17 + 8))(v6, v4);
  (*(v13 + 40))(v16, v9, v4);
}

char *SearchAttributedString.tokens.getter()
{
  v29 = type metadata accessor for AttributedString.Runs.Index();
  v0 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AttributedString.Runs.Run();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString.Runs();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.runs.getter();
  (*(v6 + 16))(v11, v8, v5);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
  dispatch thunk of Collection.startIndex.getter();
  (*(v6 + 8))(v8, v5);
  v12 = (v0 + 8);
  v27 = (v26 + 2);
  ++v26;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
    v14 = v29;
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v12)(v2, v14);
    if (v15)
    {
      break;
    }

    v16 = dispatch thunk of Collection.subscript.read();
    v17 = v28;
    (*v27)(v4);
    v16(v35, 0);
    dispatch thunk of Collection.formIndex(after:)();
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
    AttributedString.Runs.Run.subscript.getter();
    (*v26)(v4, v17);
    if (*(&v31 + 1))
    {
      v35[2] = v32;
      v35[3] = v33;
      v36 = v34;
      v35[0] = v30;
      v35[1] = v31;
      outlined init with copy of AnyToken(v35, &v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = *(v13 + 2);
      v18 = *(v13 + 3);
      if (v19 >= v18 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v13);
      }

      outlined destroy of AnyToken(v35);
      *(v13 + 2) = v19 + 1;
      v20 = &v13[72 * v19];
      v21 = v33;
      v22 = v32;
      v23 = v31;
      *(v20 + 12) = v34;
      *(v20 + 4) = v22;
      *(v20 + 5) = v21;
      *(v20 + 3) = v23;
      *(v20 + 2) = v30;
    }

    else
    {
      outlined destroy of AnyToken?(&v30);
    }
  }

  outlined destroy of SearchAttributedString(v11, type metadata accessor for IndexingIterator<AttributedString.Runs>);
  return v13;
}

uint64_t AnyToken.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  a3[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(a2 - 8);
  (*(v8 + 16))(boxed_opaque_existential_1, a1, a2);
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  AnyHashable.init<A>(_:)();
  return (*(v8 + 8))(a1, a2);
}

Swift::Void __swiftcall SearchAttributedString.update(text:)(Swift::String text)
{
  countAndFlagsBits = text._countAndFlagsBits;
  type metadata accessor for Range<AttributedString.Index>();
  v22 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.Runs();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.Runs.Run();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = type metadata accessor for AttributedString();
  v24 = *(v15 - 8);
  v25 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  AttributedString.runs.getter();
  specialized BidirectionalCollection.last.getter(v5);
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of SearchAttributedString(v5, type metadata accessor for AttributedString.Runs.Run?);
  }

  else
  {
    (*(v11 + 32))(v13, v5, v10);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if (!v27)
    {
      outlined destroy of AnyToken?(v26);
      v19 = v21;
      AttributedString.Runs.Run.range.getter();
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
      v18 = v25;
      AttributedString.replaceSubrange<A, B>(_:with:)();
      outlined destroy of SearchAttributedString(v19, type metadata accessor for Range<AttributedString.Index>);
      (*(v11 + 8))(v13, v10);
      goto LABEL_6;
    }

    (*(v11 + 8))(v13, v10);
    outlined destroy of AnyToken?(v26);
  }

  v18 = v25;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  AttributedString.append<A>(_:)();
LABEL_6:
  (*(v24 + 8))(v17, v18);
}

uint64_t SearchAttributedString.append(token:)(uint64_t a1)
{
  v23 = a1;
  type metadata accessor for Range<AttributedString.Index>();
  v21[1] = v1;
  MEMORY[0x1EEE9AC00](v1);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.Runs();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.Runs.Run();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v22 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = type metadata accessor for AttributedString();
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = 12369903;
  static String._uncheckedFromUTF8(_:)();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  outlined init with copy of AnyToken(v23, v27);
  outlined init with copy of AnyToken?(v27, v26);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
  AttributedString.subscript.setter();
  outlined destroy of AnyToken?(v27);
  AttributedString.runs.getter();
  specialized BidirectionalCollection.last.getter(v5);
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of SearchAttributedString(v5, type metadata accessor for AttributedString.Runs.Run?);
  }

  else
  {
    v17 = v22;
    (*(v11 + 32))(v22, v5, v10);
    AttributedString.Runs.Run.subscript.getter();
    if (!v27[3])
    {
      outlined destroy of AnyToken?(v27);
      v20 = v21[0];
      AttributedString.Runs.Run.range.getter();
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
      v18 = v25;
      AttributedString.replaceSubrange<A, B>(_:with:)();
      outlined destroy of SearchAttributedString(v20, type metadata accessor for Range<AttributedString.Index>);
      (*(v11 + 8))(v17, v10);
      return (*(v24 + 8))(v16, v18);
    }

    (*(v11 + 8))(v17, v10);
    outlined destroy of AnyToken?(v27);
  }

  v18 = v25;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
  AttributedString.append<A>(_:)();
  return (*(v24 + 8))(v16, v18);
}

uint64_t SearchAttributedString.lastText.getter()
{
  v0 = type metadata accessor for AttributedString.Index();
  v44 = *(v0 - 8);
  v45 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v43 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for AttributedString.CharacterView();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Slice<AttributedString.CharacterView>();
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString.Runs();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString.Runs.Run();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.runs.getter();
  specialized BidirectionalCollection.last.getter(v12);
  (*(v14 + 8))(v16, v13);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    outlined destroy of SearchAttributedString(v12, type metadata accessor for AttributedString.Runs.Run?);
    return 0;
  }

  v21 = *(v18 + 32);
  v36 = v17;
  v21(v20, v12, v17);
  v22 = v38;
  AttributedString.characters.getter();
  v23 = v41;
  AttributedString.Runs.Run.range.getter();
  AttributedString.CharacterView.subscript.getter();
  outlined destroy of SearchAttributedString(v23, type metadata accessor for Range<AttributedString.Index>);
  (*(v40 + 8))(v22, v42);
  v25 = v43;
  v24 = v44;
  v26 = v45;
  (*(v44 + 16))(v43, v9, v45);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v27 = specialized Slice.subscript.getter(v25);
    v28 = v29;
  }

  (*(v24 + 8))(v25, v26);
  v46 = 12369903;
  v30 = static String._uncheckedFromUTF8(_:)();
  if (v28)
  {
    if (v27 == v30 && v28 == v31)
    {

LABEL_12:
      outlined destroy of SearchAttributedString(v9, type metadata accessor for Slice<AttributedString.CharacterView>);
      (*(v18 + 8))(v20, v36);
      return 0;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v9, v37, type metadata accessor for Slice<AttributedString.CharacterView>);
  v34 = String.init(_:)();
  outlined destroy of SearchAttributedString(v9, type metadata accessor for Slice<AttributedString.CharacterView>);
  (*(v18 + 8))(v20, v36);
  return v34;
}

Swift::Void __swiftcall SearchAttributedString.update(tokens:)(Swift::OpaquePointer tokens)
{
  type metadata accessor for Slice<AttributedString.CharacterView>();
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for AttributedString.CharacterView();
  v48 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString.Runs.Index();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for AttributedString.Runs.Run();
  v62 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v45 - v11;
  v45 = type metadata accessor for AttributedString.Runs();
  v64 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v63 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<AttributedString.Runs>();
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AttributedString();
  v46 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  AttributedString.init()();
  v25 = *(tokens._rawValue + 2);
  if (v25)
  {
    v26 = tokens._rawValue + 32;
    v27 = (v46 + 8);
    do
    {
      v69[0] = 12369903;
      static String._uncheckedFromUTF8(_:)();
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      outlined init with copy of AnyToken(v26, v69);
      outlined init with copy of AnyToken?(v69, v68);
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
      AttributedString.subscript.setter();
      outlined destroy of AnyToken?(v69);
      static AttributedString.+= infix(_:_:)();
      (*v27)(v21, v19);
      v26 += 72;
      --v25;
    }

    while (v25);
  }

  v49 = v21;
  v56 = v24;
  v50 = v18;
  v57 = v19;
  v28 = v63;
  AttributedString.runs.getter();
  v29 = v64;
  v30 = v45;
  (v64[2])(v15, v28, v45);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
  dispatch thunk of Collection.startIndex.getter();
  (v29[1])(v28, v30);
  ++v66;
  v64 = (v62 + 2);
  v63 = (v62 + 4);
  ++v62;
  ++v48;
  v47 = (v46 + 8);
  v31 = v60;
  v32 = v59;
  v33 = v58;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
    v34 = v67;
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v66)(v31, v34);
    if (v35)
    {
      break;
    }

    v36 = dispatch thunk of Collection.subscript.read();
    v37 = v65;
    (*v64)(v65);
    v36(v69, 0);
    v38 = v30;
    dispatch thunk of Collection.formIndex(after:)();
    (*v63)(v33, v37, v32);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if (v69[3])
    {
      (*v62)(v33, v32);
      outlined destroy of AnyToken?(v69);
    }

    else
    {
      outlined destroy of AnyToken?(v69);
      v39 = v51;
      AttributedString.Runs.Run.range.getter();
      v40 = v52;
      AttributedString.characters.getter();
      AttributedString.CharacterView.subscript.getter();
      v41 = v40;
      v33 = v58;
      (*v48)(v41, v53);
      v42 = v39;
      v32 = v59;
      outlined destroy of SearchAttributedString(v42, type metadata accessor for Range<AttributedString.Index>);
      AttributeContainer.init()();
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type Slice<AttributedString.CharacterView> and conformance Slice<A>, type metadata accessor for Slice<AttributedString.CharacterView>);
      v43 = v49;
      v31 = v60;
      AttributedString.init<A>(_:attributes:)();
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
      v44 = v57;
      AttributedString.append<A>(_:)();
      (*v47)(v43, v44);
      (*v62)(v33, v32);
      v30 = v38;
    }
  }

  outlined destroy of SearchAttributedString(v15, type metadata accessor for IndexingIterator<AttributedString.Runs>);
  (*(v46 + 40))(v61, v56, v57);
}

uint64_t protocol witness for Projection.set(base:newValue:) in conformance StringToAttributedStringProjection(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(v5 + 16))(v7, a2, v4);
  result = String.init(_:)();
  *a1 = result;
  a1[1] = v9;
  return result;
}

uint64_t outlined init with copy of AnyToken?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyToken?(0, &lazy cache variable for type metadata for AnyToken?, &type metadata for AnyToken, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnyToken?(uint64_t a1)
{
  type metadata accessor for AnyToken?(0, &lazy cache variable for type metadata for AnyToken?, &type metadata for AnyToken, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StringTokensToAttributedStringProjection.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a5;
  v32 = a7;
  v33 = a8;
  v34 = a3;
  v30 = a1;
  v11 = type metadata accessor for SearchAttributedString();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v29 - v21;
  (*(*(a4 - 8) + 16))(&v29 - v21, v30, a4, v20);
  v23 = &v22[*(TupleTypeMetadata2 + 48)];
  v24 = v34;
  *v23 = a2;
  v23[1] = v24;

  AttributedString.init()();
  v36 = a4;
  v37 = v31;
  v38 = a6;
  v39 = v32;
  v26 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in StringTokensToAttributedStringProjection.get(base:), v35, a4, &type metadata for AnyToken, MEMORY[0x1E69E73E0], *(a6 + 8), MEMORY[0x1E69E7410], v25);
  (*(v15 + 16))(v13, v17, v14);
  v27._countAndFlagsBits = a2;
  v27._object = v34;
  SearchAttributedString.update(tokens:text:)(v26, v27);

  (*(v15 + 8))(v17, v14);
  (*(v15 + 32))(v33, v13, v14);
  return (*(v19 + 8))(v22, TupleTypeMetadata2);
}

uint64_t implicit closure #1 in StringTokensToAttributedStringProjection.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, AssociatedTypeWitness, v5);
  return AnyToken.init<A>(_:)(v7, AssociatedTypeWitness, a2);
}

uint64_t closure #1 in StringTokensToAttributedStringProjection.set(base:newValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(a1, &v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a2, v4 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for Projection.get(base:) in conformance StringTokensToAttributedStringProjection<A>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v8 = *v7;
  v9 = v7[1];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];

  return StringTokensToAttributedStringProjection.get(base:)(a1, v8, v9, v6, v10, v11, v12, a3);
}

uint64_t specialized Slice.subscript.getter(uint64_t a1)
{
  v27 = a1;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  type metadata accessor for Range<AttributedString.Index>();
  v26 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Slice<AttributedString.CharacterView>();
  v25[1] = v12;
  v13 = *(v12 + 36);
  v14 = type metadata accessor for AttributedString.Index();
  v15 = *(v14 - 8);
  v16 = v15[2];
  v25[0] = v1;
  v16(v8, v1, v14);
  v16(&v8[*(v3 + 56)], v1 + v13, v14);
  outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v8, v5, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v17 = *(v3 + 56);
  v18 = v15[4];
  v19 = v11;
  v18(v11, v5, v14);
  v20 = v15[1];
  v20(&v5[v17], v14);
  outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(v8, v5);
  v18((v19 + *(v26 + 44)), &v5[*(v3 + 56)], v14);
  v20(v5, v14);
  type metadata accessor for AttributedString.CharacterView();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
  outlined destroy of SearchAttributedString(v19, type metadata accessor for Range<AttributedString.Index>);
  v21 = dispatch thunk of Collection.subscript.read();
  v23 = *v22;

  v21(v28, 0);
  return v23;
}

uint64_t outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for SearchAttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t initializeWithCopy for SearchAttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for SearchAttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for SearchAttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for SearchAttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t specialized StringTokensToAttributedStringProjection.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v108 = a1;
  v11 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v95 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v94 = v79 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93 = type metadata accessor for Range();
  v86 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = v79 - v16;
  v106 = AssociatedTypeWitness;
  v83 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v107 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v109 = v79 - v20;
  v21 = type metadata accessor for SearchAttributedString();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AttributedString();
  (*(*(v24 - 8) + 16))(v23, a2, v24);
  v119 = SearchAttributedString.splitIntoTokensAndText()();
  rawValue = v119._0._rawValue;
  v105 = v119._0._rawValue;
  object = v119._1._object;
  countAndFlagsBits = v119._1._countAndFlagsBits;
  outlined destroy of SearchAttributedString(v23, type metadata accessor for SearchAttributedString);
  v111 = rawValue;
  v110[14] = a3;
  v110[15] = a4;
  v110[16] = a5;
  v110[17] = a6;
  type metadata accessor for AnyToken?(0, &lazy cache variable for type metadata for [AnyToken], &type metadata for AnyToken, MEMORY[0x1E69E62F8]);
  v26 = swift_getAssociatedTypeWitness();
  _sSays11AnyHashableVGSayxGSKsWlTm_0(&lazy protocol witness table cache variable for type [AnyToken] and conformance [A], &lazy cache variable for type metadata for [AnyToken], &type metadata for AnyToken);
  v80 = Sequence.compactMap<A>(_:)();
  v110[8] = a3;
  v110[9] = a4;
  v110[10] = a5;
  v110[11] = a6;
  KeyPath = swift_getKeyPath();
  v110[2] = a3;
  v110[3] = a4;
  v103 = a5;
  v110[4] = a5;
  v110[5] = a6;
  v110[6] = KeyPath;
  v84 = v26;
  v28 = swift_getAssociatedTypeWitness();
  v101 = a3;
  v104 = v11;
  v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in StringTokensToAttributedStringProjection.set(base:newValue:), v110, a3, v28, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v29);
  v31 = v105;

  v32 = v31[2];
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v100 = v30;
    v102 = v28;
    v118 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v34 = v118;
    v35 = (v31 + 4);
    do
    {
      outlined init with copy of AnyToken(v35, &v111);
      outlined init with copy of AnyHashable(&v115, v116);
      outlined destroy of AnyToken(&v111);
      v118 = v34;
      v37 = *(v34 + 16);
      v36 = *(v34 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v34 = v118;
      }

      *(v34 + 16) = v37 + 1;
      v38 = v34 + 40 * v37;
      v39 = v116[0];
      v40 = v116[1];
      *(v38 + 64) = v117;
      *(v38 + 32) = v39;
      *(v38 + 48) = v40;
      v35 += 72;
      --v32;
    }

    while (v32);

    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  v41 = MEMORY[0x1E69E69B8];
  v42 = _arrayForceCast<A, B>(_:)();

  *&v116[0] = v42;
  v118 = v34;
  v111 = v33;
  type metadata accessor for CollectionChanges<Int, Int>();
  type metadata accessor for AnyToken?(0, &lazy cache variable for type metadata for [AnyHashable], v41, MEMORY[0x1E69E62F8]);
  _sSays11AnyHashableVGSayxGSKsWlTm_0(&lazy protocol witness table cache variable for type [AnyHashable] and conformance [A], &lazy cache variable for type metadata for [AnyHashable], v41);
  CollectionChanges.formChanges<A, B>(from:to:)();

  v43 = v111;
  LOBYTE(v116[0]) = 0;
  type metadata accessor for Range<Int>();
  v45 = v44;

  v79[0] = v45;
  v79[1] = v43;
  CollectionChanges.Projection.init(kind:changes:)();
  v46 = v113;
  v100 = v112;
  v102 = v114;
  v47 = v106;
  v48 = v109;
  if (v114 == v113)
  {
LABEL_12:

    LOBYTE(v116[0]) = 1;
    CollectionChanges.Projection.init(kind:changes:)();
    v66 = v112;
    v102 = v113;
    v67 = v80;
    if (v113 != v114)
    {
      v68 = v48;
      LODWORD(AssociatedConformanceWitness) = v111;
      v98 = (v83 + 8);
      v69 = v102;
      v100 = v112;
      v107 = v114;
      do
      {
        v70 = AssociatedConformanceWitness;
        v71 = v67;
        v72 = v102;
        v105 = specialized CollectionChanges.Projection.subscript.getter(v69, AssociatedConformanceWitness, v66);
        v106 = v73;
        LOBYTE(v111) = v70;
        v112 = v66;
        v113 = v72;
        v67 = v71;
        v114 = v107;
        type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>();
        v69 = CollectionChanges.Projection.index(after:)(v69);
        dispatch thunk of Collection.startIndex.getter();
        Collection.formIndex(_:offsetBy:)();
        v111 = Array.subscript.getter();
        v112 = v74;
        v113 = v75;
        v114 = v76;
        type metadata accessor for ArraySlice();
        swift_getWitnessTable();
        dispatch thunk of RangeReplaceableCollection.insert<A>(contentsOf:at:)();
        v66 = v100;
        (*v98)(v68, v47);
      }

      while (v69 != v107);
    }

    v77 = (v108 + *(swift_getTupleTypeMetadata2() + 48));

    v78 = object;
    *v77 = countAndFlagsBits;
    v77[1] = v78;
  }

  else
  {
    LODWORD(v98) = v111;
    type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>();
    v97 = v49;
    v90 = v87 + 2;
    v91 = (v83 + 16);
    v88 = (v83 + 8);
    v89 = (v83 + 32);
    ++v86;
    v87 += 4;
    v50 = v102;
    v85 = v46;
    while (1)
    {
      v51 = v47;
      v52 = v98;
      LOBYTE(v111) = v98;
      v53 = v100;
      v112 = v100;
      v113 = v46;
      v114 = v102;
      v106 = CollectionChanges.Projection.index(before:)(v50);
      specialized CollectionChanges.Projection.subscript.getter(v106, v52, v53);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.startIndex.getter();
      Collection.formIndex(_:offsetBy:)();
      v54 = v109;
      Collection.formIndex(_:offsetBy:)();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        break;
      }

      v47 = v51;
      v56 = *v91;
      v57 = v94;
      (*v91)(v94, v54, v51);
      v58 = TupleTypeMetadata2;
      v56(&v57[*(TupleTypeMetadata2 + 48)], v107, v47);
      v59 = v95;
      (*v90)(v95, v57, v58);
      v60 = *(v58 + 48);
      v105 = *v89;
      v61 = v92;
      (v105)(v92, v59, v47);
      v62 = *v88;
      (*v88)(&v59[v60], v47);
      (*v87)(v59, v57, v58);
      v63 = v93;
      (v105)(&v61[*(v93 + 36)], &v59[*(v58 + 48)], v47);
      v62(v59, v47);
      dispatch thunk of RangeReplaceableCollection.removeSubrange(_:)();
      v64 = v63;
      v65 = v107;
      (*v86)(v61, v64);
      v62(v65, v47);
      v48 = v109;
      v62(v109, v47);
      v50 = v106;
      v46 = v85;
      if (v106 == v85)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSays11AnyHashableVGSayxGSKsWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyToken?(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for AnyToken?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

int *_OutlineGenerator_Configuration.init(element:isExpanded:grouping:parentContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  result = type metadata accessor for _OutlineGenerator_Configuration();
  v18 = a9 + result[15];
  *v18 = a2;
  *(v18 + 8) = a3;
  *(v18 + 16) = a4;
  v19 = (a9 + result[16]);
  *v19 = a5;
  v19[1] = a6;
  v20 = (a9 + result[17]);
  *v20 = a7;
  v20[1] = a8;
  return result;
}

uint64_t OutlineGenerator<>.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  v5 = type metadata accessor for _OutlineGenerator_Configuration();
  v6 = (a1 + v5[15]);
  v8 = *v6;
  v7 = v6[1];
  v21 = *(v6 + 16);
  type metadata accessor for _OutlineGenerator_Configuration.Subtree();
  v9 = type metadata accessor for OutlineGenerator();
  v10 = a3 + v9[23];
  *v10 = v8;
  *(v10 + 8) = v7;
  *(v10 + 16) = v21;
  v11 = (a1 + v5[16]);
  v12 = *v11;
  v13 = v11[1];
  v14 = (a3 + v9[24]);
  *v14 = v12;
  v14[1] = v13;
  v15 = (a1 + v5[17]);
  v16 = *v15;
  v17 = v15[1];
  v18 = (a3 + v9[25]);
  *v18 = v16;
  v18[1] = v17;
  v19 = *(*(v5 - 1) + 8);

  return v19(a1, v5);
}

uint64_t OutlineGenerator.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = *(a1 + 24);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v6 + 32);
  v40 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v9 + 40);
  v35 = *(v9 + 72);
  v54 = v35;
  v53 = v34;
  type metadata accessor for StaticSourceWriter();
  v10 = type metadata accessor for ModifiedContent();
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v36 = &v30 - v14;
  v16 = *(a1 + 92);
  v15 = *(a1 + 96);
  v31 = v2;
  v17 = *(v2 + v15);
  v18 = *(v2 + v16);
  v19 = *(v2 + v16 + 8);
  v20 = *(v2 + v16 + 16);
  (*(v2 + *(a1 + 100)))(v2, v13);
  v17(v18, v19, v20, v5);
  v21 = v5;
  v22 = v38;
  (*(v37 + 8))(v21, v38);
  v43 = *(a1 + 16);
  v44 = v22;
  v23 = v32;
  v45 = v32;
  v46 = v34;
  v24 = *(a1 + 64);
  v47 = *(a1 + 56);
  v48 = v24;
  v49 = v35;
  v50 = v31;
  v25 = v33;
  View.viewAlias<A, B>(_:_:)(v34, partial apply for closure #1 in OutlineGenerator.body.getter, v42, v32, v34, *(&v34 + 1), v24);
  (*(v40 + 8))(v8, v23);
  v51 = v24;
  v52 = &protocol witness table for StaticSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  v27 = v36;
  static ViewBuilder.buildExpression<A>(_:)(v25, v10, WitnessTable);
  v28 = *(v39 + 8);
  v28(v25, v10);
  static ViewBuilder.buildExpression<A>(_:)(v27, v10, WitnessTable);
  return (v28)(v27, v10);
}

uint64_t closure #1 in OutlineGenerator.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = v15;
  v25[2] = v16;
  v25[3] = v17;
  v25[4] = v18;
  v25[5] = v19;
  v25[6] = v20;
  v25[7] = v21;
  v25[8] = v22;
  v25[9] = a10;
  v23 = type metadata accessor for OutlineGenerator();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v23 + 104), a6, a10);
  static ViewBuilder.buildExpression<A>(_:)(v14, a6, a10);
  return (*(v12 + 8))(v14, a6);
}

uint64_t type metadata completion function for _OutlineGenerator_Configuration()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _OutlineGenerator_Configuration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = *(v11 + 16);
    v12 = ((v3 + v5 + 31) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + v5 + 31) & 0xFFFFFFFFFFFFFFF8);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
    v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
  }

  return v3;
}

uint64_t destroy for _OutlineGenerator_Configuration(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for _OutlineGenerator_Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);
  v11 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;

  return a1;
}

uint64_t assignWithCopy for _OutlineGenerator_Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);

  *(v9 + 16) = *(v10 + 16);
  v11 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;

  return a1;
}

uint64_t initializeWithTake for _OutlineGenerator_Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  v12 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _OutlineGenerator_Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);

  *(v9 + 16) = *(v10 + 16);
  v11 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for _OutlineGenerator_Configuration(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for _OutlineGenerator_Configuration(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = &result[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 16) = 0;
          *v19 = a2 & 0x7FFFFFFF;
          *(v19 + 8) = 0;
        }

        else
        {
          *(v19 + 8) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata completion function for OutlineGenerator()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for OutlineGenerator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 48);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8 | *(v4 + 80) & 0xF8;
  if (v9 <= 7 && ((*(v4 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((-17 - v8 - ((((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v8) - *(v7 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v4 + 16))(a1);
    v14 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
    *(v14 + 16) = *(v15 + 16);
    v16 = ((v3 + v5 + 31) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v5 + 31) & 0xFFFFFFFFFFFFFFF8);
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
    v19 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = *(v7 + 16);

    v22(v19 + 2, v20 + 2, v6);
  }

  else
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + (((v9 | 7) + 16) & ~(v9 | 7)));
  }

  return v3;
}

uint64_t destroy for OutlineGenerator(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;

  v6 = *(*(a2 + 48) - 8);
  v7 = *(v6 + 8);
  v8 = (((((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t initializeWithCopy for OutlineGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = v7 + a1;
  v9 = v7 + a2;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = *(a3 + 48);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v21 = *(v19 + 80);
  v22 = v15 + v21 + 16;
  v23 = v16 + v21 + 16;

  v20(v22 & ~v21, v23 & ~v21, v18);
  return a1;
}

uint64_t assignWithCopy for OutlineGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = v7 + a1;
  v9 = v7 + a2;
  v10 = (v7 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v7 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);

  *(v10 + 16) = *(v11 + 16);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  v18 = *(*(a3 + 48) - 8);
  (*(v18 + 24))((v15 + *(v18 + 80) + 16) & ~*(v18 + 80), (v16 + *(v18 + 80) + 16) & ~*(v18 + 80));
  return a1;
}

uint64_t initializeWithTake for OutlineGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = v7 + a1;
  v9 = v7 + a2;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  v13 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v13;
  v15 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = *(*(a3 + 48) - 8);
  (*(v17 + 32))((v15 + *(v17 + 80) + 16) & ~*(v17 + 80), (v16 + *(v17 + 80) + 16) & ~*(v17 + 80));
  return a1;
}

uint64_t assignWithTake for OutlineGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = v7 + a1;
  v9 = v7 + a2;
  v10 = (v7 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);

  *(v10 + 16) = *(v11 + 16);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  v16 = *(*(a3 + 48) - 8);
  (*(v16 + 40))((v14 + *(v16 + 80) + 16) & ~*(v16 + 80), (v15 + *(v16 + 80) + 16) & ~*(v16 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for OutlineGenerator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v5 = *(*(a3 + 48) - 8);
  v6 = *(v3 + 64);
  v7 = *(v5 + 80);
  if (v4 <= *(v5 + 84))
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v3 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v7 + 16;
  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v11 = ((v10 + ((((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v7) + *(*(*(a3 + 48) - 8) + 64);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v9 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v4 == v9)
      {
        return (*(v3 + 48))();
      }

      v19 = a1 + v6;
      if ((v8 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((v10 + ((((v19 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v7);
      }

      v20 = *(((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_18:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 <= 3)
    {
      v17 = ((v10 + ((((v6 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v7) + *(*(*(a3 + 48) - 8) + 64);
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v18 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v18 = *a1;
      }
    }

    else if (v17 == 1)
    {
      v18 = *a1;
    }

    else
    {
      v18 = *a1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v9 + (v18 | v16) + 1;
}

char *storeEnumTagSinglePayload for OutlineGenerator(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 48) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  if (v5 <= *(v6 + 84))
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v4 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = ((v8 + 16 + ((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v8) + v9;
  if (a3 > v11)
  {
    if (v12 <= 3)
    {
      v17 = ((a3 - v11 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
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
          v13 = v18;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v11 < a2)
  {
    v14 = ~v11 + a2;
    if (v12 < 4)
    {
      v16 = (v14 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v14 & ~(-1 << (8 * v12));
        v20 = result;
        bzero(result, ((v8 + 16 + ((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v8) + v9);
        result = v20;
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_52:
              if (v13 == 2)
              {
                *&result[v12] = v16;
              }

              else
              {
                *&result[v12] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = result;
      bzero(result, ((v8 + 16 + ((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v8) + v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v13)
    {
      result[v12] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v12] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v12] = 0;
  }

  else if (v13)
  {
    result[v12] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v5 == v11)
  {
    v21 = *(v4 + 56);

    return v21();
  }

  else
  {
    v22 = &result[v7];
    if ((v10 & 0x80000000) != 0)
    {
      v24 = *(v6 + 56);

      return v24((v8 + 16 + ((((v22 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v8);
    }

    else
    {
      v23 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      if ((a2 & 0x80000000) != 0)
      {
        *(v23 + 16) = 0;
        *v23 = a2 & 0x7FFFFFFF;
        *(v23 + 8) = 0;
      }

      else
      {
        *(v23 + 8) = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _OutlineGenerator_Configuration<A, B, C>.Subtree(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 Stepper.init(label:currentValueField:onIncrement:onDecrement:onEditingChanged:accessibilityValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for Stepper();
  v19 = &a9[*(v18 + 40)];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *a9 = a2;
  *(a9 + 1) = a3;
  *(a9 + 2) = a4;
  *(a9 + 3) = a5;
  *(a9 + 4) = a6;
  *(a9 + 5) = a7;
  *(a9 + 6) = a8;
  (*(*(a11 - 8) + 32))(&a9[*(v18 + 36)], a1, a11);
  outlined consume of AccessibilityBoundedNumber?(*v19, v19[1], v19[2], v19[3]);
  result = *a10;
  v21 = *(a10 + 16);
  *v19 = *a10;
  *(v19 + 1) = v21;
  return result;
}

double Stepper.init(onIncrement:onDecrement:onEditingChanged:label:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, uint64_t a8)
{
  v20 = a6;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v14);
  memset(v21, 0, sizeof(v21));
  *&result = Stepper.init(label:currentValueField:onIncrement:onDecrement:onEditingChanged:accessibilityValue:)(v16, 0, a1, a2, a3, a4, a5, v20, a7, v21, a8).n128_u64[0];
  return result;
}

void Stepper.init<A>(label:currentValueLabel:onIncrement:onDecrement:onEditingChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a7);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a5);
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t Stepper.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a1;
  v53 = a2;
  v5 = *(a1 + 16);
  v44 = lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label();
  v6 = *(a1 + 24);
  *&v60 = &type metadata for StepperStyleConfiguration.Label;
  *(&v60 + 1) = v5;
  *&v61 = v44;
  *(&v61 + 1) = v6;
  type metadata accessor for StaticSourceWriter();
  v47 = type metadata accessor for ModifiedContent();
  v52 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v42 - v7;
  v49 = type metadata accessor for ModifiedContent();
  v51 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v42 - v10;
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v15 = v3[4];
  v14 = v3[5];
  v16 = v3[6];
  *&v60 = *v3;
  *(&v60 + 1) = v11;
  *&v61 = v12;
  *(&v61 + 1) = v13;
  *&v62 = v15;
  *(&v62 + 1) = v14;
  *&v63 = v16;
  v54[2] = v5;
  v54[3] = v6;
  v54[4] = v3;

  outlined copy of AppIntentExecutor?(v11);
  outlined copy of AppIntentExecutor?(v13);
  v17 = lazy protocol witness table accessor for type StepperBody and conformance StepperBody();
  v43 = v17;

  View.viewAlias<A, B>(_:_:)(&type metadata for StepperStyleConfiguration.Label, partial apply for closure #1 in Stepper.body.getter, v54, &type metadata for StepperBody, &type metadata for StepperStyleConfiguration.Label, v5, v17);
  v18 = *(&v60 + 1);
  v19 = *(&v61 + 1);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19);

  v20 = v3[1];
  v21 = v3[2];
  v22 = v3[3];
  v24 = v3[4];
  v23 = v3[5];
  v25 = v3[6];
  *&v60 = *v3;
  *(&v60 + 1) = v20;
  *&v61 = v21;
  *(&v61 + 1) = v22;
  *&v62 = v24;
  *(&v62 + 1) = v23;
  *&v63 = v25;
  v26 = (v3 + *(v46 + 40));
  v27 = v26[1];
  v30 = v26[2];
  v29 = v26[3];
  v59[0] = *v26;
  v28 = v59[0];
  v59[1] = v27;
  v59[2] = v30;
  v59[3] = v29;

  outlined copy of AppIntentExecutor?(v20);
  outlined copy of AppIntentExecutor?(v22);

  outlined copy of AccessibilityBoundedNumber?(v28, v27, v30, v29);
  v57 = v43;
  v58 = &protocol witness table for StaticSourceWriter<A, B>;
  v31 = v47;
  WitnessTable = swift_getWitnessTable();
  AccessibilityStepperModifier.init(_:value:)(&v60, v59, v31, WitnessTable, v55);
  v33 = type metadata accessor for AccessibilityStepperModifier();
  v34 = swift_getWitnessTable();
  v54[5] = WitnessTable;
  v54[6] = &protocol witness table for AccessibilityAttachmentModifier;
  v35 = v49;
  v36 = swift_getWitnessTable();
  v37 = v48;
  v38 = v45;
  View.accessibilityConfiguration<A>(_:)(v55, v31, v33, WitnessTable, v34);
  v64 = v55[4];
  v65 = v55[5];
  v66 = v56;
  v60 = v55[0];
  v61 = v55[1];
  v62 = v55[2];
  v63 = v55[3];
  (*(*(v33 - 8) + 8))(&v60, v33);
  (*(v52 + 8))(v38, v31);
  v39 = v50;
  static ViewBuilder.buildExpression<A>(_:)(v37, v35, v36);
  v40 = *(v51 + 8);
  v40(v37, v35);
  static ViewBuilder.buildExpression<A>(_:)(v39, v35, v36);
  return (v40)(v39, v35);
}

uint64_t closure #1 in Stepper.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Stepper();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 36), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v172 = a7;
  v171 = a6;
  v170 = a5;
  v179 = a4;
  v185 = a3;
  v186 = a1;
  v169 = a9;
  v178 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v167 = v147 - v16;
  v183 = a8;
  v168 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v166 = v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v174 = v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v173 = (v147 - v22);
  v181 = AssociatedTypeWitness;
  v182 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v160 = v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v147 - v26;
  v188 = type metadata accessor for Binding();
  v28 = *(v188 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v31 = v147 - v30;
  v184 = a12;
  v32 = *(a12 + 8);
  v187 = a10;
  v33 = type metadata accessor for ClosedRange();
  v34 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v34);
  v165 = v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v147 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v157 = v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v40;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = v147 - v43;
  v175 = v45;
  v46 = *(v45 + 16);
  v180 = a2;
  v47 = a2;
  v49 = v48;
  v164 = v45 + 16;
  v163 = v46;
  (v46)(v38, v47, v34, v42);
  v50 = (*(v49 + 48))(v38, 1, v33);
  v176 = v28;
  v177 = v34;
  v161 = v27;
  if (v50 != 1)
  {
    v151 = v29;
    v152 = v31;
    v153 = v49;
    v68 = *(v49 + 32);
    v149 = v49 + 32;
    v148 = v68;
    v68(v44, v38, v33);
    MEMORY[0x18D00ACC0](v188);
    v154 = v33;
    v69 = v160;
    v70 = v184;
    dispatch thunk of Strideable.distance(to:)();
    v71 = v32;
    v72 = *(v32 + 8);
    v155 = v44;
    v147[2] = v72;
    v73 = v70;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v162 = 0;
      v150 = 0;
      v74 = v181;
      v75 = v173;
    }

    else
    {
      v76 = v181;
      swift_getAssociatedConformanceWitness();
      v77 = dispatch thunk of static Comparable.> infix(_:_:)();
      v78 = v182;
      v147[1] = v71;
      if (v77 & 1) != 0 && (v79 = v187, swift_getAssociatedConformanceWitness(), v80 = v161, dispatch thunk of static SignedNumeric.- prefix(_:)(), v81 = v174, dispatch thunk of Strideable.advanced(by:)(), (*(v78 + 8))(v80, v76), v82 = dispatch thunk of static Comparable.<= infix(_:_:)(), (*(v158 + 8))(v81, v79), (v82))
      {
        v83 = v176;
        (*(v176 + 16))(v152, v186, v188);
        v84 = v153 + 16;
        v85 = v157;
        v86 = v154;
        (*(v153 + 16))(v157, v155, v154);
        v87 = v78;
        v88 = v161;
        (*(v78 + 16))(v161, v185, v76);
        v89 = (*(v83 + 80) + 48) & ~*(v83 + 80);
        v90 = (v151 + v89 + *(v84 + 64)) & ~*(v84 + 64);
        v91 = (v156 + *(v78 + 80) + v90) & ~*(v78 + 80);
        v92 = swift_allocObject();
        v94 = v187;
        v93 = v188;
        *(v92 + 2) = v183;
        *(v92 + 3) = v94;
        *(v92 + 4) = v178;
        *(v92 + 5) = v73;
        (*(v176 + 32))(&v92[v89], v152, v93);
        v148(&v92[v90], v85, v86);
        (*(v87 + 32))(&v92[v91], v88, v76);
        v95 = partial apply for closure #1 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
        v74 = v76;
      }

      else
      {
        v96 = v176;
        v97 = v152;
        v98 = v188;
        (*(v176 + 16))(v152, v186, v188);
        v99 = v153 + 16;
        v100 = v157;
        v74 = v76;
        v101 = v154;
        (*(v153 + 16))(v157, v155, v154);
        v102 = v73;
        v103 = (*(v96 + 80) + 48) & ~*(v96 + 80);
        v104 = (v151 + v103 + *(v99 + 64)) & ~*(v99 + 64);
        v105 = swift_allocObject();
        v106 = v187;
        *(v105 + 2) = v183;
        *(v105 + 3) = v106;
        *(v105 + 4) = v178;
        *(v105 + 5) = v102;
        (*(v96 + 32))(&v105[v103], v97, v98);
        v107 = v100;
        v92 = v105;
        v148(&v105[v104], v107, v101);
        v95 = partial apply for closure #2 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
      }

      v162 = v95;
      v150 = v92;

      v75 = v173;
      v69 = v160;
    }

    v108 = v155;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      (*(v182 + 8))(v69, v74);
      (*(v158 + 8))(v75, v187);
      (*(v153 + 8))(v108, v154);
      v173 = 0;
      v64 = 0;
LABEL_18:
      v57 = v150;
      goto LABEL_19;
    }

    swift_getAssociatedConformanceWitness();
    if (dispatch thunk of static Comparable.> infix(_:_:)())
    {
      v109 = v174;
      v110 = v108;
      v111 = v187;
      dispatch thunk of Strideable.advanced(by:)();
      v112 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v113 = *(v158 + 8);
      v114 = v109;
      v115 = v74;
      v113(v114, v111);
      v116 = v182;
      (*(v182 + 8))(v69, v74);
      v113(v75, v111);
      v117 = v152;
      if (v112)
      {
        v118 = v176;
        (*(v176 + 16))(v152, v186, v188);
        v119 = v148;
        v148(v157, v110, v154);
        (*(v116 + 16))(v161, v185, v115);
        v120 = (*(v118 + 80) + 48) & ~*(v118 + 80);
        v121 = (v151 + v120 + *(v153 + 80)) & ~*(v153 + 80);
        v122 = (v156 + *(v116 + 80) + v121) & ~*(v116 + 80);
        v64 = swift_allocObject();
        v124 = v187;
        v123 = v188;
        *(v64 + 16) = v183;
        *(v64 + 24) = v124;
        v125 = v184;
        *(v64 + 32) = v178;
        *(v64 + 40) = v125;
        (*(v118 + 32))(v64 + v120, v117, v123);
        v119(v64 + v121, v157, v154);
        (*(v116 + 32))(v64 + v122, v161, v181);

        v126 = partial apply for closure #3 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
LABEL_17:
        v173 = v126;
        goto LABEL_18;
      }
    }

    else
    {
      (*(v182 + 8))(v69, v74);
      (*(v158 + 8))(v75, v187);
      v117 = v152;
      v110 = v108;
    }

    v127 = v176;
    v128 = v188;
    (*(v176 + 16))(v117, v186, v188);
    v129 = v157;
    v130 = v110;
    v131 = v154;
    v132 = v117;
    v133 = v148;
    v148(v157, v130, v154);
    v134 = (*(v127 + 80) + 48) & ~*(v127 + 80);
    v135 = (v151 + v134 + *(v153 + 80)) & ~*(v153 + 80);
    v64 = swift_allocObject();
    v136 = v187;
    *(v64 + 16) = v183;
    *(v64 + 24) = v136;
    v137 = v184;
    *(v64 + 32) = v178;
    *(v64 + 40) = v137;
    (*(v127 + 32))(v64 + v134, v132, v128);
    v133(v64 + v135, v129, v131);

    v126 = partial apply for closure #4 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
    goto LABEL_17;
  }

  (*(v175 + 8))(v38, v34);
  v51 = *(v28 + 16);
  v157 = (v28 + 16);
  v173 = v51;
  (v51)(v31, v186, v188);
  v52 = v182;
  v162 = *(v182 + 16);
  v53 = v181;
  (v162)(v27, v185, v181);
  v54 = *(v28 + 80);
  v55 = (v54 + 48) & ~v54;
  v56 = *(v52 + 80);
  v155 = v55;
  v154 = (v29 + v56 + v55) & ~v56;
  v160 = (v54 | v56);
  v57 = swift_allocObject();
  v58 = v187;
  *(v57 + 2) = v183;
  *(v57 + 3) = v58;
  v59 = v178;
  v60 = v184;
  *(v57 + 4) = v178;
  *(v57 + 5) = v60;
  v158 = *(v28 + 32);
  (v158)(&v57[v55], v31, v188);
  v61 = v53;
  v156 = *(v52 + 32);
  v62 = v154;
  v63 = v161;
  v156(&v57[v154], v161, v61);
  (v173)(v31, v186, v188);
  (v162)(v63, v185, v61);
  v64 = swift_allocObject();
  v66 = v187;
  v65 = v188;
  *(v64 + 16) = v183;
  *(v64 + 24) = v66;
  v67 = v184;
  *(v64 + 32) = v59;
  *(v64 + 40) = v67;
  (v158)(&v155[v64], v31, v65);
  v156((v64 + v62), v63, v61);

  v162 = partial apply for closure #5 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
  v173 = partial apply for closure #6 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
LABEL_19:
  v138 = v168;
  v139 = v166;
  v140 = v183;
  (*(v168 + 16))(v166, v179, v183);
  MEMORY[0x18D00ACC0](v188);
  v163(v165, v180, v177);
  v141 = v181;
  v142 = v182;
  v143 = v167;
  (*(v182 + 16))(v167, v185, v181);
  (*(v142 + 56))(v143, 0, 1, v141);
  AccessibilityBoundedNumber.init<A>(for:in:by:)();
  v189[0] = v189[2];
  v189[1] = v189[3];
  v144 = v162;
  v145 = v173;
  Stepper.init(label:currentValueField:onIncrement:onDecrement:onEditingChanged:accessibilityValue:)(v139, v170, v162, v57, v173, v64, v171, v172, v169, v189, v140);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v144);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v145);
  (*(v138 + 8))(v179, v140);
  (*(v142 + 8))(v185, v141);
  (*(v175 + 8))(v180, v177);
  return (*(v176 + 8))(v186, v188);
}

uint64_t closure #1 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a3;
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  Comparable.clamped(to:)();
  v15 = *(v6 + 8);
  v15(v8, a5);
  dispatch thunk of Strideable.advanced(by:)();
  v15(v11, a5);
  specialized Binding.wrappedValue.setter();
  return (v15)(v14, a5);
}

uint64_t closure #2 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)()
{
  type metadata accessor for ClosedRange();
  type metadata accessor for Binding();
  return specialized Binding.wrappedValue.setter();
}

uint64_t closure #3 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v22[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v22 - v7;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v22 - v17;
  v22[0] = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v22[0], v19);
  Comparable.clamped(to:)();
  v20 = *(v9 + 8);
  v20(v12, a5);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  dispatch thunk of Strideable.advanced(by:)();
  (*(v23 + 8))(v8, AssociatedTypeWitness);
  v20(v15, a5);
  specialized Binding.wrappedValue.setter();
  return (v20)(v18, a5);
}

uint64_t closure #5 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  dispatch thunk of Strideable.advanced(by:)();
  v11 = *(v5 + 8);
  v11(v7, a4);
  specialized Binding.wrappedValue.setter();
  return (v11)(v10, a4);
}

uint64_t closure #6 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v17 - v6;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static SignedNumeric.- prefix(_:)();
  dispatch thunk of Strideable.advanced(by:)();
  (*(v17[0] + 8))(v7, AssociatedTypeWitness);
  v15 = *(v8 + 8);
  v15(v11, a4);
  specialized Binding.wrappedValue.setter();
  return (v15)(v14, a4);
}

uint64_t Stepper.init<A>(value:step:onEditingChanged:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v39 = a7;
  v40 = a3;
  v36 = a6;
  v37 = a5;
  v41 = a4;
  v42 = a1;
  v38 = a9;
  v35 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v31 - v16;
  v32 = a8;
  v18 = type metadata accessor for ClosedRange();
  v19 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v31 - v20;
  v22 = type metadata accessor for Binding();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v31 - v25;
  (*(v23 + 16))(&v31 - v25, v42, v22, v24);
  (*(*(v18 - 8) + 56))(v21, 1, 1, v18);
  v27 = AssociatedTypeWitness;
  v28 = (*(v15 + 16))(v17, a2, AssociatedTypeWitness);
  v29 = v34;
  v37(v28);
  Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)(v26, v21, v17, v29, 0, v40, v41, v39, v38, v32, v35, v33);
  (*(v15 + 8))(a2, v27);
  return (*(v23 + 8))(v42, v22);
}

void Stepper.init<A, B>(value:step:label:currentValueLabel:onEditingChanged:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t Stepper.init<A>(value:in:step:onEditingChanged:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v47 = a8;
  v48 = a4;
  v44 = a7;
  v45 = a6;
  v49 = a5;
  v41 = a3;
  v36 = a2;
  v39 = a1;
  v46 = a9;
  v43 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v16 = v35;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v37 = a10;
  v19 = type metadata accessor for ClosedRange();
  v20 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v34 - v21;
  v38 = type metadata accessor for Binding();
  v23 = *(v38 - 8);
  v24 = MEMORY[0x1EEE9AC00](v38);
  v26 = &v34 - v25;
  (*(v23 + 16))(&v34 - v25, a1, v24);
  v27 = *(v19 - 8);
  (*(v27 + 16))(v22, a2, v19);
  (*(v27 + 56))(v22, 0, 1, v19);
  v28 = *(v16 + 16);
  v29 = v41;
  v30 = AssociatedTypeWitness;
  v31 = v28(v18, v41, AssociatedTypeWitness);
  v32 = v42;
  v45(v31);
  Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)(v26, v22, v18, v32, 0, v48, v49, v47, v46, v37, v43, v40);
  (*(v35 + 8))(v29, v30);
  (*(v27 + 8))(v36, v19);
  return (*(v23 + 8))(v39, v38);
}

void Stepper.init<A, B>(value:in:step:label:currentValueLabel:onEditingChanged:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

double Stepper<>.init(_:onIncrement:onDecrement:onEditingChanged:)@<D0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  v19 = v17 & 1;
  outlined consume of AccessibilityBoundedNumber?(0, 0, 0, 0);
  *a5 = 0;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  *(a5 + 40) = a6;
  *(a5 + 48) = a7;
  *(a5 + 56) = v12;
  *(a5 + 64) = v14;
  *(a5 + 72) = v19;
  *(a5 + 80) = v16;
  result = 0.0;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  return result;
}

uint64_t Stepper<>.init<A>(_:onIncrement:onDecrement:onEditingChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  closure #1 in Stepper<>.init<A>(_:onIncrement:onDecrement:onEditingChanged:)(a1, v25);
  v17 = v25[0];
  v16 = v25[1];
  v18 = v27;
  v28 = v26;
  outlined consume of AccessibilityBoundedNumber?(0, 0, 0, 0);
  v19 = v28;
  *a9 = 0;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v17;
  *(a9 + 64) = v16;
  *(a9 + 72) = v19;
  *(a9 + 80) = v18;
  *(a9 + 88) = 0u;
  v20 = *(a8 - 8);
  *(a9 + 104) = 0u;
  v21 = *(v20 + 8);

  return v21(a1, a8);
}

uint64_t closure #1 in Stepper<>.init<A>(_:onIncrement:onDecrement:onEditingChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

double Stepper<>.init<A>(_:value:step:onEditingChanged:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v37 = a7;
  v34 = a6;
  v31 = a5;
  v36 = a4;
  v35 = a3;
  v33 = a1;
  v32 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v29 - v16;
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  (*(v19 + 16))(&v29 - v21, a5, v18, v20);
  v23 = v34;
  (*(v15 + 16))(v17, v34, AssociatedTypeWitness);
  v40 = v33;
  v41 = a2;
  v42 = v35;
  v43 = v36;
  Stepper.init<A>(value:step:onEditingChanged:label:)(v22, v17, v37, v38, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v39, MEMORY[0x1E6981148], a10, v44, MEMORY[0x1E6981138]);

  (*(v15 + 8))(v23, v30);
  (*(v19 + 8))(v31, v18);
  v24 = v48;
  v25 = v49;
  *(a9 + 64) = v47;
  *(a9 + 80) = v24;
  *(a9 + 96) = v25;
  *(a9 + 112) = v50;
  v26 = v44[1];
  *a9 = v44[0];
  *(a9 + 16) = v26;
  result = *&v45;
  v28 = v46;
  *(a9 + 32) = v45;
  *(a9 + 48) = v28;
  return result;
}

uint64_t Stepper<>.init<A, B>(_:value:step:onEditingChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v31 = a8;
  v34 = a6;
  v33 = a5;
  v32 = a4;
  v30 = a3;
  v29 = a2;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Binding();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  (*(v18 + 16))(&v28 - v20, a2, v17, v19);
  v22 = v30;
  (*(v14 + 16))(v16, v30, AssociatedTypeWitness);
  v37 = v34;
  v38 = a7;
  v39 = v31;
  v40 = a10;
  v41 = v35;
  Stepper.init<A>(value:step:onEditingChanged:label:)(v21, v16, v32, v33, partial apply for closure #1 in Stepper<>.init<A, B>(_:value:step:onEditingChanged:), v36, MEMORY[0x1E6981148], a7, v42, MEMORY[0x1E6981138]);
  (*(v14 + 8))(v22, AssociatedTypeWitness);
  (*(v18 + 8))(v29, v17);
  v23 = v42[5];
  v24 = v42[6];
  *(a9 + 64) = v42[4];
  *(a9 + 80) = v23;
  *(a9 + 96) = v24;
  *(a9 + 112) = v43;
  v25 = v42[1];
  *a9 = v42[0];
  *(a9 + 16) = v25;
  v26 = v42[3];
  *(a9 + 32) = v42[2];
  *(a9 + 48) = v26;
  return (*(*(v34 - 8) + 8))(v35);
}

double Stepper<>.init<A>(_:value:in:step:onEditingChanged:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a8;
  v40 = a7;
  v44 = a6;
  v45 = a5;
  v37 = a4;
  v41 = a3;
  v39 = a2;
  v38 = a1;
  v42 = a10;
  v35 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = AssociatedTypeWitness;
  v33 = *(AssociatedTypeWitness - 8);
  v14 = v33;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v32 - v15;
  v17 = type metadata accessor for ClosedRange();
  v34 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  v36 = type metadata accessor for Binding();
  v21 = *(v36 - 8);
  v22 = MEMORY[0x1EEE9AC00](v36);
  v24 = &v32 - v23;
  (*(v21 + 16))(&v32 - v23, v45, v22);
  (*(v18 + 16))(v20, v44, v17);
  v25 = *(v14 + 16);
  v26 = v40;
  v25(v16, v40, AssociatedTypeWitness);
  v47 = v38;
  v48 = v39;
  v49 = v41;
  v50 = v37;
  Stepper.init<A>(value:in:step:onEditingChanged:label:)(v24, v20, v16, v43, v42, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v46, MEMORY[0x1E6981148], v51, a11, MEMORY[0x1E6981138]);

  (*(v33 + 8))(v26, v32);
  (*(v18 + 8))(v44, v34);
  (*(v21 + 8))(v45, v36);
  v27 = v55;
  v28 = v56;
  *(a9 + 64) = v54;
  *(a9 + 80) = v27;
  *(a9 + 96) = v28;
  *(a9 + 112) = v57;
  v29 = v51[1];
  *a9 = v51[0];
  *(a9 + 16) = v29;
  result = *&v52;
  v31 = v53;
  *(a9 + 32) = v52;
  *(a9 + 48) = v31;
  return result;
}

uint64_t Stepper<>.init<A, B>(_:value:in:step:onEditingChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v42 = a7;
  v39 = a6;
  v38 = a5;
  v37 = a4;
  v40 = a3;
  v41 = a2;
  v43 = a1;
  v36 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v13 = v32;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v32 - v14;
  v16 = type metadata accessor for ClosedRange();
  v33 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  v34 = type metadata accessor for Binding();
  v20 = *(v34 - 8);
  v21 = MEMORY[0x1EEE9AC00](v34);
  v23 = &v32 - v22;
  (*(v20 + 16))(&v32 - v22, v41, v21);
  (*(v17 + 16))(v19, v40, v16);
  v24 = *(v13 + 16);
  v25 = v37;
  v26 = AssociatedTypeWitness;
  v24(v15, v37, AssociatedTypeWitness);
  v45 = v42;
  v46 = a8;
  v47 = v36;
  v48 = a11;
  v49 = v43;
  Stepper.init<A>(value:in:step:onEditingChanged:label:)(v23, v19, v15, v38, v39, partial apply for closure #1 in Stepper<>.init<A, B>(_:value:in:step:onEditingChanged:), v44, MEMORY[0x1E6981148], v50, a8, MEMORY[0x1E6981138]);
  (*(v32 + 8))(v25, v26);
  (*(v17 + 8))(v40, v33);
  (*(v20 + 8))(v41, v34);
  v27 = v50[5];
  v28 = v50[6];
  *(a9 + 64) = v50[4];
  *(a9 + 80) = v27;
  *(a9 + 96) = v28;
  *(a9 + 112) = v51;
  v29 = v50[1];
  *a9 = v50[0];
  *(a9 + 16) = v29;
  v30 = v50[3];
  *(a9 + 32) = v50[2];
  *(a9 + 48) = v30;
  return (*(*(v42 - 8) + 8))(v43);
}

uint64_t closure #1 in Stepper<>.init<A, B>(_:value:step:onEditingChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

void Stepper.init<A>(value:step:format:label:onEditingChanged:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v58 = a6;
  v59 = a7;
  v49 = a5;
  v64 = a4;
  v65 = a3;
  v56 = a2;
  v57 = a9;
  v60 = a11;
  v61 = a8;
  v45 = a12;
  v47 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v55 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v15 + 16) + 24);
  v18 = v17;
  v62 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = v16;
  v53 = swift_getAssociatedTypeWitness();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = v41 - v20;
  v50 = AssociatedTypeWitness;
  v48 = type metadata accessor for ClosedRange();
  v21 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v46 = v41 - v22;
  v43 = *(v18 - 8);
  v23 = v43;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Binding();
  v44 = *(v27 - 8);
  v28 = v44;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v41 - v29;
  v31 = type metadata accessor for TextField();
  v41[4] = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v41 - v32;
  v42 = type metadata accessor for ModifiedContent();
  v63 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41[5] = v41 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v41[0] = v41 - v37;
  v38 = *(v28 + 16);
  v41[3] = v27;
  v38(v30, a1, v27, v36);
  v39 = *(v23 + 16);
  v40 = v62;
  v39(v26, v65, v62);
  v67 = v61;
  v68 = v40;
  v69 = v60;
  v70 = v45;
  v71 = v47;
  v72 = v64;
  v73 = v49;
  v41[1] = v30;
  TextField.init<A>(value:format:prompt:label:)(v30, v26, 0, 0, 0, 0, partial apply for closure #1 in Stepper.init<A>(value:step:format:label:onEditingChanged:), v66, v33, v61, v40, v60, v45);
  swift_getWitnessTable();
  View.labelsHidden()();
}

uint64_t sub_18CB3DEF4()
{
  (*(*(v7 - 384) + 8))(v1, v2);
  *(v7 - 400) = v3;
  v5(v0, v3, v6);
  v8 = *(v7 - 336);
  (*(*(*(v7 - 320) - 8) + 56))(v8, 1, 1);
  v9 = *(v7 - 288);
  v10 = *(v7 - 296);
  v11 = *(v7 - 256);
  v12 = *(v7 - 280);
  v13 = (*(v9 + 16))(v10, v11, v12);
  v14 = *(v7 - 264);
  (*(v7 - 192))(v13);
  v15 = *(v7 - 416);
  v16 = *(v7 - 368);
  (*(*(v7 - 200) + 16))(*(v7 - 376), v15, v16);
  v17 = lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier();
  *(v7 - 104) = v4;
  *(v7 - 96) = v17;
  swift_getWitnessTable();
  v18 = AnyView.init<A>(_:)();
  Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)(*(v7 - 408), v8, v10, v14, v18, *(v7 - 240), *(v7 - 232), *(v7 - 216), *(v7 - 248), *(v7 - 304), *(v7 - 224), *(v7 - 272));
  (*(*(v7 - 360) + 8))(*(v7 - 184), *(v7 - 208));
  (*(v9 + 8))(v11, v12);
  (*(*(v7 - 352) + 8))(*(v7 - 400), *(v7 - 392));
  return (*(*(v7 - 200) + 8))(v15, v16);
}

void Stepper.init<A>(value:in:step:format:label:onEditingChanged:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = a8;
  v52 = a7;
  v63 = a6;
  v61 = a5;
  v65 = a4;
  v50 = a3;
  v62 = a2;
  v60 = a1;
  v51 = a9;
  v54 = a12;
  v42 = a13;
  v55 = a10;
  v44 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v49 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v15 + 16) + 24);
  v18 = v17;
  v56 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = v16;
  v20 = AssociatedTypeWitness;
  v47 = swift_getAssociatedTypeWitness();
  v64 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v40 - v21;
  v45 = v20;
  v59 = type metadata accessor for ClosedRange();
  v22 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v58 = v40 - v23;
  v57 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Binding();
  v43 = *(v27 - 8);
  v28 = v43;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v40 - v29;
  v31 = type metadata accessor for TextField();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v40 - v32;
  v41 = type metadata accessor for ModifiedContent();
  v40[4] = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40[3] = v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v40[0] = v40 - v37;
  v38 = *(v28 + 16);
  v40[2] = v27;
  v38(v30, v60, v27, v36);
  v39 = v56;
  (*(v57 + 16))(v26, v65, v56);
  v67 = v55;
  v68 = v39;
  v69 = v54;
  v70 = v42;
  v71 = v44;
  v72 = v61;
  v73 = v63;
  v40[1] = v30;
  TextField.init<A>(value:format:prompt:label:)(v30, v26, 0, 0, 0, 0, partial apply for closure #1 in Stepper.init<A>(value:in:step:format:label:onEditingChanged:), v66, v33, v55, v39, v54, v42);
  swift_getWitnessTable();
  View.labelsHidden()();
}

uint64_t sub_18CB3E668()
{
  (*(v6 + 8))(v1, v7);
  v8(v3, v0, v4);
  v10 = *(v9 - 240);
  v11 = *(v9 - 232);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, *(v9 - 208), v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = *(v9 - 336);
  v14 = *(v9 - 304);
  v15 = *(v9 - 328);
  v16 = (*(*(v9 - 192) + 16))(v13, v14, v15);
  v17 = *(v9 - 312);
  (*(v9 - 216))(v16);
  v18 = *(v9 - 384);
  v19 = *(v9 - 376);
  (*(v18 + 16))(*(v9 - 392), v2, v19);
  v20 = lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier();
  *(v9 - 104) = v5;
  *(v9 - 96) = v20;
  swift_getWitnessTable();
  v21 = AnyView.init<A>(_:)();
  Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)(*(v9 - 408), *(v9 - 240), v13, v17, v21, *(v9 - 288), *(v9 - 280), *(v9 - 264), *(v9 - 296), *(v9 - 344), *(v9 - 272), *(v9 - 320));
  (*(*(v9 - 248) + 8))(*(v9 - 184), *(v9 - 256));
  (*(*(v9 - 192) + 8))(v14, v15);
  (*(v12 + 8))(*(v9 - 208), *(v9 - 232));
  (*(*(v9 - 360) + 8))(*(v9 - 224), *(v9 - 400));
  return (*(v18 + 8))(v2, v19);
}

uint64_t closure #1 in Stepper.init<A>(value:step:format:label:onEditingChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14(v11);
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a5);
  v15 = *(v7 + 8);
  v15(v9, a3);
  static ViewBuilder.buildExpression<A>(_:)(v13, a3, a5);
  return (v15)(v13, a3);
}

void Stepper<>.init<A>(_:value:step:format:onEditingChanged:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a8;
  v41 = a7;
  v42 = a6;
  v32 = a5;
  v39 = a4;
  v37 = a3;
  v36 = a2;
  v35 = a1;
  v38 = a9;
  v29 = a10;
  v28 = *(a10 - 8);
  v13 = v28;
  v33 = a11;
  v34 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v15;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v27 - v18;
  v31 = type metadata accessor for Binding();
  v20 = *(v31 - 8);
  v21 = MEMORY[0x1EEE9AC00](v31);
  v23 = &v27 - v22;
  (*(v20 + 16))(&v27 - v22, a5, v21);
  (*(v17 + 16))(v19, v42, AssociatedTypeWitness);
  v24 = v29;
  (*(v13 + 16))(v15, v41, v29);
  v44 = v35;
  v45 = v36;
  v46 = v37;
  v47 = v39;
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v40;
  *(v25 + 24) = v26;

  Stepper.init<A>(value:step:format:label:onEditingChanged:)(v23, v19, v27, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v43, partial apply for closure #2 in Stepper<>.init<A, B>(_:value:step:format:onEditingChanged:), v25, MEMORY[0x1E6981148], v48, v24, MEMORY[0x1E6981138], v33, v34);
}

__n128 sub_18CB3EDDC()
{

  (*(*(v4 - 392) + 8))(*(v4 - 288), v3);
  (*(v1 + 8))(*(v4 - 280), *(v4 - 376));
  (*(v2 + 8))(*(v4 - 360), *(v4 - 368));
  v5 = *(v4 - 136);
  v6 = *(v4 - 120);
  *(v0 + 64) = *(v4 - 152);
  *(v0 + 80) = v5;
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v4 - 104);
  v7 = *(v4 - 200);
  *v0 = *(v4 - 216);
  *(v0 + 16) = v7;
  result = *(v4 - 184);
  v9 = *(v4 - 168);
  *(v0 + 32) = result;
  *(v0 + 48) = v9;
  return result;
}

void Stepper<>.init<A, B>(_:value:step:format:onEditingChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = a7;
  v41 = a6;
  v40 = a5;
  v39 = a4;
  v42 = a3;
  v38 = a2;
  v43 = a1;
  v35 = a10;
  v31 = *(a8 - 8);
  v13 = v31;
  v36 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = AssociatedTypeWitness;
  v33 = *(AssociatedTypeWitness - 8);
  v16 = v33;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v29 - v17;
  v30 = &v29 - v17;
  v37 = type metadata accessor for Binding();
  v19 = *(v37 - 8);
  v20 = MEMORY[0x1EEE9AC00](v37);
  v22 = &v29 - v21;
  (*(v19 + 16))(&v29 - v21, a2, v20);
  (*(v16 + 16))(v18, v42, AssociatedTypeWitness);
  v23 = v34;
  v24 = a8;
  (*(v13 + 16))(v34, v39, a8);
  v46 = v44;
  v47 = a8;
  v48 = a9;
  v25 = v35;
  v26 = v36;
  v49 = v35;
  v50 = v36;
  v51 = v43;
  v27 = swift_allocObject();
  v28 = v41;
  *(v27 + 16) = v40;
  *(v27 + 24) = v28;

  Stepper.init<A>(value:step:format:label:onEditingChanged:)(v22, v30, v23, partial apply for closure #1 in Stepper<>.init<A, B>(_:value:step:format:onEditingChanged:), v45, partial apply for closure #2 in Stepper<>.init<A, B>(_:value:step:format:onEditingChanged:), v27, MEMORY[0x1E6981148], v52, v24, MEMORY[0x1E6981138], v25, v26);
}

uint64_t sub_18CB3F244()
{

  (*(*(v4 - 400) + 8))(v1, v3);
  (*(*(v4 - 384) + 8))(*(v4 - 312), *(v4 - 392));
  (*(v2 + 8))(*(v4 - 344), *(v4 - 352));
  v5 = *(v4 - 136);
  *(v0 + 64) = *(v4 - 152);
  *(v0 + 80) = v5;
  *(v0 + 96) = *(v4 - 120);
  *(v0 + 112) = *(v4 - 104);
  v6 = *(v4 - 200);
  *v0 = *(v4 - 216);
  *(v0 + 16) = v6;
  v7 = *(v4 - 168);
  *(v0 + 32) = *(v4 - 184);
  *(v0 + 48) = v7;
  return (*(*(*(v4 - 296) - 8) + 8))(*(v4 - 304));
}

void Stepper<>.init<A>(_:value:in:step:format:onEditingChanged:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a8;
  v49 = a7;
  v50 = a6;
  v48 = a5;
  v45 = a4;
  v43 = a3;
  v40 = a2;
  v39 = a1;
  v44 = a10;
  v42 = a9;
  v38 = a12;
  v35 = a11;
  v47 = *(a11 - 8);
  v37 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = AssociatedTypeWitness;
  v32 = *(AssociatedTypeWitness - 8);
  v15 = v32;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v29 - v16;
  v30 = &v29 - v16;
  v18 = type metadata accessor for ClosedRange();
  v33 = v18;
  v34 = *(v18 - 8);
  v19 = v34;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  v36 = type metadata accessor for Binding();
  v22 = *(v36 - 8);
  v23 = MEMORY[0x1EEE9AC00](v36);
  v25 = &v29 - v24;
  (*(v22 + 16))(&v29 - v24, v48, v23);
  (*(v19 + 16))(v21, v50, v18);
  (*(v15 + 16))(v17, v49, AssociatedTypeWitness);
  v26 = v35;
  (*(v47 + 16))(v46, v41, v35);
  v52 = v39;
  v53 = v40;
  v54 = v43;
  v55 = v45;
  v27 = swift_allocObject();
  v28 = v44;
  *(v27 + 16) = v42;
  *(v27 + 24) = v28;

  Stepper.init<A>(value:in:step:format:label:onEditingChanged:)(v25, v21, v30, v46, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v51, partial apply for closure #2 in Stepper<>.init<A>(_:value:in:step:format:onEditingChanged:), v27, v56, MEMORY[0x1E6981148], v26, MEMORY[0x1E6981138], v38, v37);
}

__n128 sub_18CB3F7B4()
{

  (*(*(v4 - 304) + 8))(v3, v2);
  (*(*(v4 - 424) + 8))(*(v4 - 288), *(v4 - 432));
  (*(*(v4 - 408) + 8))(*(v4 - 280), *(v4 - 416));
  (*(v1 + 8))(*(v4 - 296), *(v4 - 392));
  v5 = *(v4 - 136);
  v6 = *(v4 - 120);
  *(v0 + 64) = *(v4 - 152);
  *(v0 + 80) = v5;
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v4 - 104);
  v7 = *(v4 - 200);
  *v0 = *(v4 - 216);
  *(v0 + 16) = v7;
  result = *(v4 - 184);
  v9 = *(v4 - 168);
  *(v0 + 32) = result;
  *(v0 + 48) = v9;
  return result;
}

void Stepper<>.init<A, B>(_:value:in:step:format:onEditingChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48 = a8;
  v41 = a7;
  v40 = a6;
  v39 = a5;
  v44 = a4;
  v46 = a3;
  v45 = a2;
  v47 = a1;
  v38 = a10;
  v43 = *(a9 - 8);
  v36 = a11;
  v37 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = AssociatedTypeWitness;
  v32 = *(AssociatedTypeWitness - 8);
  v14 = v32;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v29 - v15;
  v30 = &v29 - v15;
  v17 = type metadata accessor for ClosedRange();
  v33 = v17;
  v34 = *(v17 - 8);
  v18 = v34;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  v35 = type metadata accessor for Binding();
  v21 = *(v35 - 8);
  v22 = MEMORY[0x1EEE9AC00](v35);
  v24 = &v29 - v23;
  (*(v21 + 16))(&v29 - v23, v45, v22);
  (*(v18 + 16))(v20, v46, v17);
  (*(v14 + 16))(v16, v44, AssociatedTypeWitness);
  (*(v43 + 16))(v42, v39, a9);
  v50 = v48;
  v51 = a9;
  v25 = v36;
  v52 = v38;
  v53 = v36;
  v26 = v37;
  v54 = v37;
  v55 = v47;
  v27 = swift_allocObject();
  v28 = v41;
  *(v27 + 16) = v40;
  *(v27 + 24) = v28;

  Stepper.init<A>(value:in:step:format:label:onEditingChanged:)(v24, v20, v30, v42, partial apply for closure #1 in Stepper<>.init<A, B>(_:value:in:step:format:onEditingChanged:), v49, partial apply for closure #2 in Stepper<>.init<A, B>(_:value:step:format:onEditingChanged:), v27, v56, MEMORY[0x1E6981148], a9, MEMORY[0x1E6981138], v25, v26);
}

uint64_t sub_18CB3FD38()
{

  (*(*(v4 - 336) + 8))(v2, v3);
  (*(*(v4 - 424) + 8))(*(v4 - 328), *(v4 - 432));
  (*(*(v4 - 408) + 8))(*(v4 - 312), *(v4 - 416));
  (*(v1 + 8))(*(v4 - 320), *(v4 - 400));
  v5 = *(v4 - 136);
  *(v0 + 64) = *(v4 - 152);
  *(v0 + 80) = v5;
  *(v0 + 96) = *(v4 - 120);
  *(v0 + 112) = *(v4 - 104);
  v6 = *(v4 - 200);
  *v0 = *(v4 - 216);
  *(v0 + 16) = v6;
  v7 = *(v4 - 168);
  *(v0 + 32) = *(v4 - 184);
  *(v0 + 48) = v7;
  return (*(*(*(v4 - 296) - 8) + 8))(*(v4 - 304));
}

uint64_t type metadata completion function for Stepper()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for Stepper(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + ((v6 + 56) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v14 = a2 + 1;
    v13 = a2[1];

    if (v13)
    {
      v15 = a2[2];
      a1[1] = v13;
      a1[2] = v15;
    }

    else
    {
      *(a1 + 1) = *v14;
    }

    v16 = ~v6;
    v17 = a2[3];
    if (v17)
    {
      v18 = a2[4];
      a1[3] = v17;
      a1[4] = v18;
    }

    else
    {
      *(a1 + 3) = *(a2 + 3);
    }

    v19 = a2[6];
    a1[5] = a2[5];
    a1[6] = v19;
    v20 = a2 + v6;
    v21 = (a1 + v6 + 56) & v16;
    v22 = (v20 + 56) & v16;
    v23 = *(v5 + 16);

    v23(v21, v22, v4);
    v24 = (v7 + v21) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v7 + v22) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    if (*v25 < 0xFFFFFFFFuLL)
    {
      v34 = *(v25 + 16);
      *v24 = *v25;
      *(v24 + 16) = v34;
    }

    else
    {
      *v24 = v26;
      v27 = *(v25 + 8);
      *(v24 + 8) = v27;
      v28 = *(v25 + 16);
      *(v24 + 16) = v28;
      v29 = *(v25 + 24);
      *(v24 + 24) = v29;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
    }
  }

  return a1;
}

void destroy for Stepper(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 8))
  {
  }

  if (*(a1 + 24))
  {
  }

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 56) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v7 >= 0xFFFFFFFFuLL)
  {

    v8 = *(v7 + 24);
  }
}

void *initializeWithCopy for Stepper(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v7 = a2 + 1;
  v6 = a2[1];

  if (v6)
  {
    v8 = a2[2];
    a1[1] = v6;
    a1[2] = v8;
  }

  else
  {
    *(a1 + 1) = *v7;
  }

  v9 = a2[3];
  if (v9)
  {
    v10 = a2[4];
    a1[3] = v9;
    a1[4] = v10;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  v11 = a2[6];
  a1[5] = a2[5];
  a1[6] = v11;
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v15 = v13 + 16;
  v16 = *(v13 + 80);
  v17 = (a1 + v16 + 56) & ~v16;
  v18 = (a2 + v16 + 56) & ~v16;

  v14(v17, v18, v12);
  v19 = *(v15 + 48) + 7;
  v20 = (v19 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  if (*v21 < 0xFFFFFFFFuLL)
  {
    v30 = *(v21 + 16);
    *v20 = *v21;
    *(v20 + 16) = v30;
  }

  else
  {
    *v20 = v22;
    v23 = *(v21 + 8);
    *(v20 + 8) = v23;
    v24 = *(v21 + 16);
    *(v20 + 16) = v24;
    v25 = *(v21 + 24);
    *(v20 + 24) = v25;
    v26 = v22;
    v27 = v23;
    v28 = v24;
    v29 = v25;
  }

  return a1;
}

void *assignWithCopy for Stepper(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = a2[1];
  if (a1[1])
  {
    if (v6)
    {
      v7 = a2[2];
      a1[1] = v6;
      a1[2] = v7;

      goto LABEL_8;
    }
  }

  else if (v6)
  {
    v8 = a2[2];
    a1[1] = v6;
    a1[2] = v8;

    goto LABEL_8;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_8:
  v9 = a2[3];
  if (a1[3])
  {
    if (v9)
    {
      v10 = a2[4];
      a1[3] = v9;
      a1[4] = v10;

      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v11 = a2[4];
    a1[3] = v9;
    a1[4] = v11;

    goto LABEL_15;
  }

  *(a1 + 3) = *(a2 + 3);
LABEL_15:
  v12 = a2[6];
  a1[5] = a2[5];
  a1[6] = v12;

  v13 = *(*(a3 + 16) - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (a1 + v15 + 56) & ~v15;
  v17 = (a2 + v15 + 56) & ~v15;
  (*(v13 + 24))(v16, v17);
  v18 = *(v14 + 40) + 7;
  v19 = (v18 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v19;
  v22 = *v20;
  if (*v19 < 0xFFFFFFFFuLL)
  {
    if (v22 >= 0xFFFFFFFF)
    {
      *v19 = v22;
      v33 = *(v20 + 8);
      *(v19 + 8) = v33;
      v34 = *(v20 + 16);
      *(v19 + 16) = v34;
      v35 = *(v20 + 24);
      *(v19 + 24) = v35;
      v36 = v22;
      v37 = v33;
      v38 = v34;
      v39 = v35;
      return a1;
    }

LABEL_21:
    v40 = *(v20 + 16);
    *v19 = *v20;
    *(v19 + 16) = v40;
    return a1;
  }

  if (v22 < 0xFFFFFFFF)
  {

    goto LABEL_21;
  }

  *v19 = v22;
  v23 = v22;

  v24 = *(v19 + 8);
  v25 = *(v20 + 8);
  *(v19 + 8) = v25;
  v26 = v25;

  v27 = *(v19 + 16);
  v28 = *(v20 + 16);
  *(v19 + 16) = v28;
  v29 = v28;

  v30 = *(v19 + 24);
  v31 = *(v20 + 24);
  *(v19 + 24) = v31;
  v32 = v31;

  return a1;
}

uint64_t initializeWithTake for Stepper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (v7 + 56 + a1) & ~v7;
  v9 = (v7 + 56 + a2) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  return a1;
}

uint64_t assignWithTake for Stepper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v6)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
    goto LABEL_8;
  }

  *(a1 + 8) = *(a2 + 8);
LABEL_8:
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v9)
    {
      v10 = *(a2 + 32);
      *(a1 + 24) = v9;
      *(a1 + 32) = v10;

      goto LABEL_15;
    }
  }

  else if (v9)
  {
    v11 = *(a2 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    goto LABEL_15;
  }

  *(a1 + 24) = *(a2 + 24);
LABEL_15:
  *(a1 + 40) = *(a2 + 40);

  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 40;
  v14 = *(v12 + 80);
  v15 = (v14 + 56 + a1) & ~v14;
  v16 = (v14 + 56 + a2) & ~v14;
  (*(v12 + 40))(v15, v16);
  v17 = *(v13 + 24) + 7;
  v18 = (v17 + v15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v18;
  if (*v18 < 0xFFFFFFFFuLL)
  {
LABEL_19:
    v24 = *(v19 + 16);
    *v18 = *v19;
    *(v18 + 16) = v24;
    return a1;
  }

  if (*v19 < 0xFFFFFFFFuLL)
  {

    goto LABEL_19;
  }

  *v18 = *v19;

  v21 = *(v18 + 8);
  *(v18 + 8) = *(v19 + 8);

  v22 = *(v18 + 16);
  *(v18 + 16) = *(v19 + 16);

  v23 = *(v18 + 24);
  *(v18 + 24) = *(v19 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for Stepper(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 56) & ~v6);
    }

    v17 = *(a1 + 40);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}