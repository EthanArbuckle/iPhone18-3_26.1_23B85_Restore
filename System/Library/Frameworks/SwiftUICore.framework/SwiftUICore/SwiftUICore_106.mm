uint64_t assignWithTake for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      outlined consume of Text.Storage(v6, v7, v8);
      *(a1 + 24) = v4;

      if (!*(a1 + 56))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of Text(a1);
  }

  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  if (!*(a1 + 56))
  {
LABEL_10:
    v15 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v15;
    goto LABEL_11;
  }

LABEL_7:
  v10 = *(a2 + 56);
  if (!v10)
  {
    outlined destroy of Text(a1 + 32);
    goto LABEL_10;
  }

  v11 = *(a2 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v11;
  outlined consume of Text.Storage(v12, v13, v14);
  *(a1 + 56) = v10;

LABEL_11:
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1)
{
  if (*(a1 + 18) != 255)
  {
    v2 = *(a1 + 16) | (*(a1 + 18) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a1, *(a1 + 8), v2, BYTE2(v2) & 1);
  }

  if (*(a1 + 42) != 255)
  {
    v3 = *(a1 + 40) | (*(a1 + 42) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 24), *(a1 + 32), v3, BYTE2(v3) & 1);
  }
}

uint64_t initializeWithCopy for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 18) == 255)
  {
    *a1 = *a2;
    *(a1 + 15) = *(a2 + 15);
  }

  else
  {
    v4 = *(a2 + 8) | (*(a2 + 18) << 16);
    v5 = *a2;
    v6 = a2[1];
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v6, *(a2 + 8), BYTE2(v4) & 1);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v4;
    *(a1 + 18) = BYTE2(v4) & 1;
  }

  if (*(a2 + 42) == 255)
  {
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 39) = *(a2 + 39);
  }

  else
  {
    v7 = *(a2 + 20) | (*(a2 + 42) << 16);
    v8 = a2[3];
    v9 = a2[4];
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v8, v9, *(a2 + 20), BYTE2(v7) & 1);
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v7;
    *(a1 + 42) = BYTE2(v7) & 1;
  }

  v10 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v10;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 80);
  v11 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v11;
  *(a1 + 104) = a2[13];

  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 8) | (*(a2 + 18) << 16);
  if (*(a1 + 18) == 255)
  {
    if (BYTE2(v4) == 255)
    {
      v5 = *a2;
      *(a1 + 15) = *(a2 + 15);
      *a1 = v5;
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v8, v4, BYTE2(v4) & 1);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v4;
      *(a1 + 18) = BYTE2(v4) & 1;
    }
  }

  else if (BYTE2(v4) == 255)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1);
    v6 = *(a2 + 15);
    *a1 = *a2;
    *(a1 + 15) = v6;
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v10, v4, BYTE2(v4) & 1);
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 18);
    *a1 = v9;
    *(a1 + 8) = v10;
    v14 = *(a1 + 16);
    *(a1 + 16) = v4;
    *(a1 + 18) = BYTE2(v4) & 1;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v11, v12, v14, v13);
  }

  v15 = *(a2 + 20) | (*(a2 + 42) << 16);
  if (*(a1 + 42) == 255)
  {
    if (BYTE2(v15) == 255)
    {
      v16 = *(a2 + 24);
      *(a1 + 39) = *(a2 + 39);
      *(a1 + 24) = v16;
    }

    else
    {
      v18 = *(a2 + 3);
      v19 = *(a2 + 4);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v18, v19, *(a2 + 20), BYTE2(v15) & 1);
      *(a1 + 24) = v18;
      *(a1 + 32) = v19;
      *(a1 + 40) = v15;
      *(a1 + 42) = BYTE2(v15) & 1;
    }
  }

  else if (BYTE2(v15) == 255)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 24);
    v17 = *(a2 + 39);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 39) = v17;
  }

  else
  {
    v20 = *(a2 + 3);
    v21 = *(a2 + 4);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v20, v21, *(a2 + 20), BYTE2(v15) & 1);
    v22 = *(a1 + 24);
    v23 = *(a1 + 32);
    v24 = *(a1 + 42);
    *(a1 + 24) = v20;
    *(a1 + 32) = v21;
    v25 = *(a1 + 40);
    *(a1 + 40) = v15;
    *(a1 + 42) = BYTE2(v15) & 1;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v22, v23, v25, v24);
  }

  *(a1 + 48) = *(a2 + 6);

  v26 = *(a2 + 7);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v26;
  LOBYTE(v26) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 80) = v26;
  *(a1 + 88) = *(a2 + 11);

  *(a1 + 96) = *(a2 + 12);

  *(a1 + 104) = *(a2 + 13);

  return a1;
}

uint64_t outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(uint64_t a1)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithTake for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 18) == 255)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 16) | (*(a2 + 18) << 16);
  if (HIWORD(v4) > 0xFEu)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1);
LABEL_4:
    *a1 = *a2;
    *(a1 + 15) = *(a2 + 15);
    goto LABEL_6;
  }

  v5 = *(a1 + 16) | (*(a1 + 18) << 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 18) = BYTE2(v4) & 1;
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v6, v7, v5, BYTE2(v5) & 1);
LABEL_6:
  if (*(a1 + 42) != 255)
  {
    v8 = *(a2 + 40) | (*(a2 + 42) << 16);
    if (HIWORD(v8) <= 0xFEu)
    {
      v9 = *(a1 + 40) | (*(a1 + 42) << 16);
      v10 = *(a1 + 24);
      v11 = *(a1 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v8;
      *(a1 + 42) = BYTE2(v8) & 1;
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v10, v11, v9, BYTE2(v9) & 1);
      goto LABEL_11;
    }

    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 24);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 39) = *(a2 + 39);
LABEL_11:
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for CodableAccessibilityDataSeriesConfiguration(uint64_t a1)
{
  if (*(a1 + 18) != 255)
  {
    v2 = *(a1 + 16) | (*(a1 + 18) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a1, *(a1 + 8), v2, BYTE2(v2) & 1);
  }

  if (*(a1 + 88))
  {
    if (*(a1 + 58) != 255)
    {
      v3 = *(a1 + 56) | (*(a1 + 58) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v3, BYTE2(v3) & 1);
    }

    if (*(a1 + 82) != 255)
    {
      v4 = *(a1 + 80) | (*(a1 + 82) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v4, BYTE2(v4) & 1);
    }
  }

  if (*(a1 + 200))
  {
    if (*(a1 + 170) != 255)
    {
      v5 = *(a1 + 168) | (*(a1 + 170) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 152), *(a1 + 160), v5, BYTE2(v5) & 1);
    }

    if (*(a1 + 194) != 255)
    {
      v6 = *(a1 + 192) | (*(a1 + 194) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 176), *(a1 + 184), v6, BYTE2(v6) & 1);
    }
  }
}

uint64_t initializeWithCopy for CodableAccessibilityDataSeriesConfiguration(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 18) == 255)
  {
    *a1 = *a2;
    *(a1 + 15) = *(a2 + 15);
  }

  else
  {
    v4 = *(a2 + 8) | (*(a2 + 18) << 16);
    v5 = *a2;
    v6 = a2[1];
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v6, *(a2 + 8), BYTE2(v4) & 1);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v4;
    *(a1 + 18) = BYTE2(v4) & 1;
  }

  *(a1 + 19) = *(a2 + 19);
  *(a1 + 24) = a2[3];
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v7 = a2[11];
  if (v7)
  {
    if (*(a2 + 58) == 255)
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 55) = *(a2 + 55);
    }

    else
    {
      v9 = *(a2 + 28) | (*(a2 + 58) << 16);
      v10 = a2[5];
      v11 = a2[6];
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v10, v11, *(a2 + 28), BYTE2(v9) & 1);
      *(a1 + 40) = v10;
      *(a1 + 48) = v11;
      *(a1 + 56) = v9;
      *(a1 + 58) = BYTE2(v9) & 1;
    }

    if (*(a2 + 82) == 255)
    {
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 79) = *(a2 + 79);
    }

    else
    {
      v12 = *(a2 + 40) | (*(a2 + 82) << 16);
      v13 = a2[8];
      v14 = a2[9];
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v13, v14, *(a2 + 40), BYTE2(v12) & 1);
      *(a1 + 64) = v13;
      *(a1 + 72) = v14;
      *(a1 + 80) = v12;
      *(a1 + 82) = BYTE2(v12) & 1;
    }

    v15 = a2[12];
    *(a1 + 88) = v7;
    *(a1 + 96) = v15;
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = a2[14];
    *(a1 + 120) = *(a2 + 120);
    v16 = a2[17];
    *(a1 + 128) = a2[16];
    *(a1 + 136) = v16;
    *(a1 + 144) = a2[18];

    v8 = a2[25];
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_8:
    *(a1 + 200) = *(a2 + 25);
    *(a1 + 216) = *(a2 + 27);
    *(a1 + 232) = *(a2 + 29);
    *(a1 + 248) = *(a2 + 31);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 168) = *(a2 + 21);
    *(a1 + 184) = *(a2 + 23);
    return a1;
  }

  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
  v8 = a2[25];
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_14:
  if (*(a2 + 170) == 255)
  {
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 167) = *(a2 + 167);
  }

  else
  {
    v17 = *(a2 + 84) | (*(a2 + 170) << 16);
    v18 = a2[19];
    v19 = a2[20];
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v18, v19, *(a2 + 84), BYTE2(v17) & 1);
    *(a1 + 152) = v18;
    *(a1 + 160) = v19;
    *(a1 + 168) = v17;
    *(a1 + 170) = BYTE2(v17) & 1;
  }

  if (*(a2 + 194) == 255)
  {
    *(a1 + 176) = *(a2 + 11);
    *(a1 + 191) = *(a2 + 191);
  }

  else
  {
    v20 = *(a2 + 96) | (*(a2 + 194) << 16);
    v21 = a2[22];
    v22 = a2[23];
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v21, v22, *(a2 + 96), BYTE2(v20) & 1);
    *(a1 + 176) = v21;
    *(a1 + 184) = v22;
    *(a1 + 192) = v20;
    *(a1 + 194) = BYTE2(v20) & 1;
  }

  v23 = a2[26];
  *(a1 + 200) = v8;
  *(a1 + 208) = v23;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = a2[28];
  *(a1 + 232) = *(a2 + 232);
  v24 = a2[31];
  *(a1 + 240) = a2[30];
  *(a1 + 248) = v24;
  *(a1 + 256) = a2[32];

  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityDataSeriesConfiguration(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 8) | (*(a2 + 18) << 16);
  if (*(a1 + 18) == 255)
  {
    if (*(a2 + 18) == 255)
    {
      v5 = *a2;
      *(a1 + 15) = *(a2 + 15);
      *a1 = v5;
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v8, v4, BYTE2(v4) & 1);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v4;
      *(a1 + 18) = BYTE2(v4) & 1;
    }
  }

  else if (*(a2 + 18) == 255)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1);
    v6 = *(a2 + 15);
    *a1 = *a2;
    *(a1 + 15) = v6;
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v10, v4, BYTE2(v4) & 1);
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 18);
    *a1 = v9;
    *(a1 + 8) = v10;
    v14 = *(a1 + 16);
    *(a1 + 16) = v4;
    *(a1 + 18) = BYTE2(v4) & 1;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v11, v12, v14, v13);
  }

  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = *(a2 + 20);
  v15 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v15;
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  v16 = *(a2 + 11);
  if (*(a1 + 88))
  {
    if (v16)
    {
      v17 = *(a2 + 28) | (*(a2 + 58) << 16);
      if (*(a1 + 58) == 255)
      {
        if (*(a2 + 58) == 255)
        {
          v18 = *(a2 + 40);
          *(a1 + 55) = *(a2 + 55);
          *(a1 + 40) = v18;
        }

        else
        {
          v40 = *(a2 + 5);
          v41 = *(a2 + 6);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v40, v41, *(a2 + 28), BYTE2(v17) & 1);
          *(a1 + 40) = v40;
          *(a1 + 48) = v41;
          *(a1 + 56) = v17;
          *(a1 + 58) = BYTE2(v17) & 1;
        }
      }

      else if (*(a2 + 58) == 255)
      {
        outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 40);
        v25 = *(a2 + 55);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 55) = v25;
      }

      else
      {
        v42 = *(a2 + 5);
        v43 = *(a2 + 6);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v42, v43, *(a2 + 28), BYTE2(v17) & 1);
        v44 = *(a1 + 40);
        v45 = *(a1 + 48);
        v46 = *(a1 + 58);
        *(a1 + 40) = v42;
        *(a1 + 48) = v43;
        v47 = *(a1 + 56);
        *(a1 + 56) = v17;
        *(a1 + 58) = BYTE2(v17) & 1;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v44, v45, v47, v46);
      }

      v48 = *(a2 + 40) | (*(a2 + 82) << 16);
      if (*(a1 + 82) == 255)
      {
        if (*(a2 + 82) == 255)
        {
          v49 = a2[4];
          *(a1 + 79) = *(a2 + 79);
          *(a1 + 64) = v49;
        }

        else
        {
          v51 = *(a2 + 8);
          v52 = *(a2 + 9);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v51, v52, *(a2 + 40), BYTE2(v48) & 1);
          *(a1 + 64) = v51;
          *(a1 + 72) = v52;
          *(a1 + 80) = v48;
          *(a1 + 82) = BYTE2(v48) & 1;
        }
      }

      else if (*(a2 + 82) == 255)
      {
        outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 64);
        v50 = *(a2 + 79);
        *(a1 + 64) = a2[4];
        *(a1 + 79) = v50;
      }

      else
      {
        v53 = *(a2 + 8);
        v54 = *(a2 + 9);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v53, v54, *(a2 + 40), BYTE2(v48) & 1);
        v55 = *(a1 + 64);
        v56 = *(a1 + 72);
        v57 = *(a1 + 82);
        *(a1 + 64) = v53;
        *(a1 + 72) = v54;
        v58 = *(a1 + 80);
        *(a1 + 80) = v48;
        *(a1 + 82) = BYTE2(v48) & 1;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v55, v56, v58, v57);
      }

      *(a1 + 88) = *(a2 + 11);

      v59 = *(a2 + 12);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 96) = v59;
      LOBYTE(v59) = *(a2 + 120);
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 120) = v59;
      *(a1 + 128) = *(a2 + 16);

      *(a1 + 136) = *(a2 + 17);

      *(a1 + 144) = *(a2 + 18);
    }

    else
    {
      outlined destroy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 40);
      v20 = *(a2 + 72);
      v21 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v21;
      *(a1 + 72) = v20;
      v22 = *(a2 + 104);
      v23 = *(a2 + 120);
      v24 = *(a2 + 136);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 136) = v24;
      *(a1 + 120) = v23;
      *(a1 + 104) = v22;
    }
  }

  else if (v16)
  {
    if (*(a2 + 58) == 255)
    {
      v19 = *(a2 + 40);
      *(a1 + 55) = *(a2 + 55);
      *(a1 + 40) = v19;
    }

    else
    {
      v31 = *(a2 + 28) | (*(a2 + 58) << 16);
      v32 = *(a2 + 5);
      v33 = *(a2 + 6);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v32, v33, *(a2 + 28), BYTE2(v31) & 1);
      *(a1 + 40) = v32;
      *(a1 + 48) = v33;
      *(a1 + 56) = v31;
      *(a1 + 58) = BYTE2(v31) & 1;
    }

    if (*(a2 + 82) == 255)
    {
      v34 = a2[4];
      *(a1 + 79) = *(a2 + 79);
      *(a1 + 64) = v34;
    }

    else
    {
      v35 = *(a2 + 40) | (*(a2 + 82) << 16);
      v36 = *(a2 + 8);
      v37 = *(a2 + 9);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v36, v37, *(a2 + 40), BYTE2(v35) & 1);
      *(a1 + 64) = v36;
      *(a1 + 72) = v37;
      *(a1 + 80) = v35;
      *(a1 + 82) = BYTE2(v35) & 1;
    }

    *(a1 + 88) = *(a2 + 11);
    v38 = *(a2 + 12);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 96) = v38;
    v39 = *(a2 + 14);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 112) = v39;
    *(a1 + 128) = *(a2 + 16);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 144) = *(a2 + 18);
  }

  else
  {
    v26 = *(a2 + 40);
    v27 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v27;
    *(a1 + 40) = v26;
    v28 = *(a2 + 88);
    v29 = *(a2 + 104);
    v30 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v30;
    *(a1 + 104) = v29;
    *(a1 + 88) = v28;
  }

  v60 = *(a2 + 25);
  if (*(a1 + 200))
  {
    if (v60)
    {
      v61 = *(a2 + 84) | (*(a2 + 170) << 16);
      if (*(a1 + 170) == 255)
      {
        if (BYTE2(v61) == 255)
        {
          v62 = *(a2 + 152);
          *(a1 + 167) = *(a2 + 167);
          *(a1 + 152) = v62;
        }

        else
        {
          v84 = *(a2 + 19);
          v85 = *(a2 + 20);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v84, v85, *(a2 + 84), BYTE2(v61) & 1);
          *(a1 + 152) = v84;
          *(a1 + 160) = v85;
          *(a1 + 168) = v61;
          *(a1 + 170) = BYTE2(v61) & 1;
        }
      }

      else if (BYTE2(v61) == 255)
      {
        outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 152);
        v69 = *(a2 + 167);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 167) = v69;
      }

      else
      {
        v86 = *(a2 + 19);
        v87 = *(a2 + 20);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v86, v87, *(a2 + 84), BYTE2(v61) & 1);
        v88 = *(a1 + 152);
        v89 = *(a1 + 160);
        v90 = *(a1 + 170);
        *(a1 + 152) = v86;
        *(a1 + 160) = v87;
        v91 = *(a1 + 168);
        *(a1 + 168) = v61;
        *(a1 + 170) = BYTE2(v61) & 1;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v88, v89, v91, v90);
      }

      v92 = *(a2 + 96) | (*(a2 + 194) << 16);
      if (*(a1 + 194) == 255)
      {
        if (BYTE2(v92) == 255)
        {
          v93 = a2[11];
          *(a1 + 191) = *(a2 + 191);
          *(a1 + 176) = v93;
        }

        else
        {
          v95 = *(a2 + 22);
          v96 = *(a2 + 23);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v95, v96, *(a2 + 96), BYTE2(v92) & 1);
          *(a1 + 176) = v95;
          *(a1 + 184) = v96;
          *(a1 + 192) = v92;
          *(a1 + 194) = BYTE2(v92) & 1;
        }
      }

      else if (BYTE2(v92) == 255)
      {
        outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 176);
        v94 = *(a2 + 191);
        *(a1 + 176) = a2[11];
        *(a1 + 191) = v94;
      }

      else
      {
        v97 = *(a2 + 22);
        v98 = *(a2 + 23);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v97, v98, *(a2 + 96), BYTE2(v92) & 1);
        v99 = *(a1 + 176);
        v100 = *(a1 + 184);
        v101 = *(a1 + 194);
        *(a1 + 176) = v97;
        *(a1 + 184) = v98;
        v102 = *(a1 + 192);
        *(a1 + 192) = v92;
        *(a1 + 194) = BYTE2(v92) & 1;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v99, v100, v102, v101);
      }

      *(a1 + 200) = *(a2 + 25);

      v103 = *(a2 + 26);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 208) = v103;
      LOBYTE(v103) = *(a2 + 232);
      *(a1 + 224) = *(a2 + 28);
      *(a1 + 232) = v103;
      *(a1 + 240) = *(a2 + 30);

      *(a1 + 248) = *(a2 + 31);

      *(a1 + 256) = *(a2 + 32);
    }

    else
    {
      outlined destroy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 152);
      v64 = *(a2 + 184);
      v65 = *(a2 + 168);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = v65;
      *(a1 + 184) = v64;
      v66 = *(a2 + 216);
      v67 = *(a2 + 232);
      v68 = *(a2 + 248);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 248) = v68;
      *(a1 + 232) = v67;
      *(a1 + 216) = v66;
    }
  }

  else if (v60)
  {
    if (*(a2 + 170) == 255)
    {
      v63 = *(a2 + 152);
      *(a1 + 167) = *(a2 + 167);
      *(a1 + 152) = v63;
    }

    else
    {
      v75 = *(a2 + 84) | (*(a2 + 170) << 16);
      v76 = *(a2 + 19);
      v77 = *(a2 + 20);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v76, v77, *(a2 + 84), BYTE2(v75) & 1);
      *(a1 + 152) = v76;
      *(a1 + 160) = v77;
      *(a1 + 168) = v75;
      *(a1 + 170) = BYTE2(v75) & 1;
    }

    if (*(a2 + 194) == 255)
    {
      v78 = a2[11];
      *(a1 + 191) = *(a2 + 191);
      *(a1 + 176) = v78;
    }

    else
    {
      v79 = *(a2 + 96) | (*(a2 + 194) << 16);
      v80 = *(a2 + 22);
      v81 = *(a2 + 23);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v80, v81, *(a2 + 96), BYTE2(v79) & 1);
      *(a1 + 176) = v80;
      *(a1 + 184) = v81;
      *(a1 + 192) = v79;
      *(a1 + 194) = BYTE2(v79) & 1;
    }

    *(a1 + 200) = *(a2 + 25);
    v82 = *(a2 + 26);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 208) = v82;
    v83 = *(a2 + 28);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v83;
    *(a1 + 240) = *(a2 + 30);
    *(a1 + 248) = *(a2 + 31);
    *(a1 + 256) = *(a2 + 32);
  }

  else
  {
    v70 = *(a2 + 152);
    v71 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v71;
    *(a1 + 152) = v70;
    v72 = *(a2 + 200);
    v73 = *(a2 + 216);
    v74 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = v74;
    *(a1 + 216) = v73;
    *(a1 + 200) = v72;
  }

  return a1;
}

uint64_t assignWithTake for CodableAccessibilityDataSeriesConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 18) == 255)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 16) | (*(a2 + 18) << 16);
  if (HIWORD(v4) > 0xFEu)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1);
LABEL_4:
    *a1 = *a2;
    *(a1 + 15) = *(a2 + 15);
    goto LABEL_6;
  }

  v5 = *(a1 + 16) | (*(a1 + 18) << 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 18) = BYTE2(v4) & 1;
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v6, v7, v5, BYTE2(v5) & 1);
LABEL_6:
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  if (*(a1 + 88))
  {
    if (*(a2 + 88))
    {
      if (*(a1 + 58) != 255)
      {
        v8 = *(a2 + 56) | (*(a2 + 58) << 16);
        if (HIWORD(v8) <= 0xFEu)
        {
          v9 = *(a1 + 56) | (*(a1 + 58) << 16);
          v10 = *(a1 + 40);
          v11 = *(a1 + 48);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = v8;
          *(a1 + 58) = BYTE2(v8) & 1;
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v10, v11, v9, BYTE2(v9) & 1);
LABEL_16:
          if (*(a1 + 82) != 255)
          {
            v12 = *(a2 + 80) | (*(a2 + 82) << 16);
            if (HIWORD(v12) <= 0xFEu)
            {
              v13 = *(a1 + 80) | (*(a1 + 82) << 16);
              v14 = *(a1 + 64);
              v15 = *(a1 + 72);
              *(a1 + 64) = *(a2 + 64);
              *(a1 + 80) = v12;
              *(a1 + 82) = BYTE2(v12) & 1;
              outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v14, v15, v13, BYTE2(v13) & 1);
LABEL_21:
              *(a1 + 88) = *(a2 + 88);

              *(a1 + 96) = *(a2 + 96);
              *(a1 + 104) = *(a2 + 104);
              *(a1 + 112) = *(a2 + 112);
              *(a1 + 120) = *(a2 + 120);
              *(a1 + 128) = *(a2 + 128);

              *(a1 + 136) = *(a2 + 136);

              *(a1 + 144) = *(a2 + 144);

              if (!*(a1 + 200))
              {
                goto LABEL_28;
              }

              goto LABEL_22;
            }

            outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 64);
          }

          *(a1 + 64) = *(a2 + 64);
          *(a1 + 79) = *(a2 + 79);
          goto LABEL_21;
        }

        outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 40);
      }

      *(a1 + 40) = *(a2 + 40);
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_16;
    }

    outlined destroy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 40);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  if (!*(a1 + 200))
  {
    goto LABEL_28;
  }

LABEL_22:
  if (*(a2 + 200))
  {
    if (*(a1 + 170) != 255)
    {
      v16 = *(a2 + 168) | (*(a2 + 170) << 16);
      if (HIWORD(v16) <= 0xFEu)
      {
        v17 = *(a1 + 168) | (*(a1 + 170) << 16);
        v18 = *(a1 + 152);
        v19 = *(a1 + 160);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 168) = v16;
        *(a1 + 170) = BYTE2(v16) & 1;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v18, v19, v17, BYTE2(v17) & 1);
LABEL_30:
        if (*(a1 + 194) != 255)
        {
          v20 = *(a2 + 192) | (*(a2 + 194) << 16);
          if (HIWORD(v20) <= 0xFEu)
          {
            v21 = *(a1 + 192) | (*(a1 + 194) << 16);
            v22 = *(a1 + 176);
            v23 = *(a1 + 184);
            *(a1 + 176) = *(a2 + 176);
            *(a1 + 192) = v20;
            *(a1 + 194) = BYTE2(v20) & 1;
            outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v22, v23, v21, BYTE2(v21) & 1);
            goto LABEL_35;
          }

          outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 176);
        }

        *(a1 + 176) = *(a2 + 176);
        *(a1 + 191) = *(a2 + 191);
LABEL_35:
        *(a1 + 200) = *(a2 + 200);

        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 240) = *(a2 + 240);

        *(a1 + 248) = *(a2 + 248);

        *(a1 + 256) = *(a2 + 256);

        return a1;
      }

      outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 152);
    }

    *(a1 + 152) = *(a2 + 152);
    *(a1 + 167) = *(a2 + 167);
    goto LABEL_30;
  }

  outlined destroy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 152);
LABEL_28:
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityDataSeriesConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 264))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityDataSeriesConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 248) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t CodableAccessibilityDataSeriesConfiguration.ValueDescription.encode(to:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys, &unk_1F006CBE8, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 18);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = a1[3];
  v12 = a1;
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v5, v6, v8 | (v7 << 16));
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v5;
  v23 = v6;
  v25 = v7;
  v24 = v8;
  v15 = v19;
  v26 = 0;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
  lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>);
  v16 = v21;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v16)
  {
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v22, v23, v24 | (v25 << 16));
    return (*(v20 + 8))(v14, v15);
  }

  else
  {
    v18 = v20;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v22, v23, v24 | (v25 << 16));
    v22 = v9;
    v23 = v10;
    v26 = 1;
    type metadata accessor for Range<Double>();
    lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v18 + 8))(v14, v15);
  }
}

void CodableAccessibilityDataSeriesConfiguration.ValueDescription.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys, &unk_1F006CBE8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 16711680;
  }

  else
  {
    v14 = v6;
    v9 = v15;
    type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
    v19 = 0;
    lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = *(&v16 + 1);
    v11 = v16;
    v12 = v17 | (v18 << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    type metadata accessor for Range<Double>();
    v19 = 1;
    lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 8))(v8, v5);
    v13 = v16;
    *v9 = v11;
    *(v9 + 8) = v10;
    *(v9 + 18) = BYTE2(v12);
    *(v9 + 16) = v12;
    *(v9 + 24) = v13;
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v11, v10, v12);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v11, v10, v12);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018DD7A890 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.init(_:in:)(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[5];
  v91 = a1[4];
  v92 = v3;
  v4 = a1[7];
  v93 = a1[6];
  v94 = v4;
  v5 = a1[1];
  v87 = *a1;
  v88 = v5;
  v6 = a1[3];
  v89 = a1[2];
  v90 = v6;
  v8 = *a2;
  v7 = a2[1];
  v9 = *(&v5 + 1);
  if (*(&v5 + 1) && (v11 = *(&v87 + 1), v10 = v88, v12 = v87, type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]), inited = swift_initStackObject(), *(inited + 16) = xmmword_18DDA6EB0, *(inited + 32) = v12, *(inited + 40) = v11, *(inited + 48) = v10 & 1, *(inited + 56) = v9, v80 = v8, v81 = v7, v78 = 0, v79 = 0, , , outlined copy of Text?(v12, v11, v10, v9), CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(inited, &v80, 0, &v78, &v82), v84 != 255))
  {
    v71 = v83 | (v84 << 16);
    v70 = v82;
  }

  else
  {
    v70 = 0uLL;
    v71 = 16711680;
  }

  v14 = 16711680;
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
  v15 = *(&v90 + 1);
  v76 = v8;
  if (*(&v90 + 1) && (v17 = *(&v89 + 1), v16 = v90, v18 = v89, type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]), v19 = swift_initStackObject(), *(v19 + 16) = xmmword_18DDA6EB0, *(v19 + 32) = v18, *(v19 + 40) = v17, *(v19 + 48) = v16 & 1, *(v19 + 56) = v15, v80 = v8, v81 = v7, v78 = 0, v79 = 0, , , outlined copy of Text?(v18, v17, v16, v15), CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(v19, &v80, 0, &v78, &v82), v84 != 255))
  {
    v14 = v83 | (v84 << 16);
    v68 = v82;
  }

  else
  {
    v68 = 0uLL;
  }

  v69 = v14;
  v75 = v7;
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
  v20 = v91;
  v21 = *(v91 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v91 + 56;
    v74 = *(v91 + 16);
    v64 = v21 - 1;
    v73 = MEMORY[0x1E69E7CC0];
    v66 = v91 + 56;
    do
    {
      v24 = (v23 + 32 * v22);
      v25 = v22;
      while (1)
      {
        if (v25 >= *(v20 + 16))
        {
          __break(1u);
          return;
        }

        v22 = v25 + 1;
        v26 = *v24;
        v27 = *(v24 - 8);
        v29 = *(v24 - 3);
        v28 = *(v24 - 2);
        type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
        v30 = swift_initStackObject();
        *(v30 + 16) = xmmword_18DDA6EB0;
        *(v30 + 32) = v29;
        *(v30 + 40) = v28;
        *(v30 + 48) = v27;
        *(v30 + 56) = v26;
        v80 = v76;
        v81 = v75;
        v78 = 0;
        v79 = 0;

        outlined copy of Text.Storage(v29, v28, v27);
        CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(v30, &v80, 0, &v78, &v82);
        v31 = v84;
        if (v84 != 255)
        {
          break;
        }

        v24 += 4;
        ++v25;
        if (v74 == v22)
        {
          goto LABEL_23;
        }
      }

      v62 = v82;
      v32 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
      }

      v34 = v73[2];
      v33 = v73[3];
      if (v34 >= v33 >> 1)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v73);
      }

      v35 = v32 & 0xFF00FFFF | (v31 << 16);
      v73[2] = v34 + 1;
      v36 = &v73[3 * v34];
      *(v36 + 2) = v62;
      *(v36 + 24) = v35;
      *(v36 + 50) = BYTE2(v35) & 1;
      v23 = v66;
    }

    while (v64 != v25);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

LABEL_23:
  v37 = *(&v91 + 1);
  v86 = v92;
  v38 = *(&v92 + 1);
  v85 = v93;
  v39 = *(&v93 + 1);
  v40 = *(&v94 + 1);
  v41 = v94;
  v42 = *(*(&v94 + 1) + 16);
  if (v42)
  {
    v65 = *(&v92 + 1);
    v67 = *(&v91 + 1);
    v77 = MEMORY[0x1E69E7CC0];
    v63 = *(&v93 + 1);

    v61 = v41;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
    v43 = v77;
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v44 = (v40 + 72);
    do
    {
      v46 = *(v44 - 5);
      v45 = *(v44 - 4);
      v47 = *(v44 - 24);
      v48 = *(v44 - 2);
      v49 = *(v44 - 1);
      v50 = *v44;
      v51 = swift_initStackObject();
      *(v51 + 16) = xmmword_18DDA6EB0;
      *(v51 + 32) = v46;
      *(v51 + 40) = v45;
      *(v51 + 48) = v47;
      *(v51 + 56) = v48;
      v80 = v76;
      v81 = v75;
      v78 = 0;
      v79 = 0;
      outlined copy of Text.Storage(v46, v45, v47);

      outlined copy of Text.Storage(v46, v45, v47);

      CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(v51, &v80, 0, &v78, &v82);
      if (v84 == 255)
      {
        v52 = 0;
      }

      else
      {
        v52 = v82;
      }

      if (v84 == 255)
      {
        v53 = 0;
      }

      else
      {
        v53 = *(&v82 + 1);
      }

      if (v84 == 255)
      {
        v54 = 16711680;
      }

      else
      {
        v54 = v83 | (v84 << 16);
      }

      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
      outlined consume of Text.Storage(v46, v45, v47);

      v56 = *(v77 + 16);
      v55 = *(v77 + 24);
      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
      }

      *(v77 + 16) = v56 + 1;
      v57 = v77 + 40 * v56;
      *(v57 + 32) = v52;
      *(v57 + 40) = v53;
      *(v57 + 50) = BYTE2(v54);
      *(v57 + 48) = v54;
      *(v57 + 56) = v49;
      *(v57 + 64) = v50;
      v44 += 6;
      --v42;
    }

    while (v42);

    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(&v87);
    v58 = a3;
    v38 = v65;
    v37 = v67;
    v41 = v61;
    v39 = v63;
  }

  else
  {

    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(&v87);
    v43 = MEMORY[0x1E69E7CC0];
    v58 = a3;
  }

  v59 = v86;
  v60 = v85;
  *v58 = v70;
  *(v58 + 16) = v71;
  *(v58 + 18) = BYTE2(v71);
  *(v58 + 24) = v68;
  *(v58 + 40) = v69;
  *(v58 + 42) = BYTE2(v69);
  *(v58 + 48) = v73;
  *(v58 + 56) = v37;
  *(v58 + 64) = v59;
  *(v58 + 72) = v38;
  *(v58 + 80) = v60;
  *(v58 + 88) = v39;
  *(v58 + 96) = v41;
  *(v58 + 104) = v43;
}

uint64_t CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40) | (*(v1 + 42) << 16);
  v5 = *(v1 + 48);
  v69 = *(v1 + 56);
  v68 = *(v1 + 64);
  v67 = *(v1 + 72);
  v66 = *(v1 + 80);
  v71 = *(v1 + 96);
  v72 = *(v1 + 88);
  v73 = *(v1 + 104);
  if (*(v1 + 18) == 255)
  {
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v6 = *v1;
    v7 = *(v1 + 16);
    if (((*(v1 + 18) << 16) & 0x10000) != 0)
    {
      v12 = *(v1 + 8);
      type metadata accessor for AccessibilityTextStorage();
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      *(v13 + 24) = v12;
      *(v13 + 32) = v7 & 1;
      *(v13 + 33) = HIBYTE(v7) & 1;
      v64 = 1;
      v65 = v13;
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v6, v12, v7, 1);
      v63 = 0;
      v62 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v8 = ResolvedStyledText.accessibilityText.getter();
      v62 = v10;
      v63 = v9;
      v64 = v11 & 1;
      v65 = v8;
    }
  }

  if (BYTE2(v4) == 255)
  {
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
  }

  else if ((v4 & 0x10000) != 0)
  {
    type metadata accessor for AccessibilityTextStorage();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = v3;
    *(v18 + 32) = v4 & 1;
    *(v18 + 33) = BYTE1(v4) & 1;
    v60 = 1;
    v61 = v18;
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v2, v3, v4, 1);
    v59 = 0;
    v58 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = ResolvedStyledText.accessibilityText.getter();
    v58 = v16;
    v59 = v15;
    v60 = v17 & 1;
    v61 = v14;
  }

  v19 = *(v5 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v84 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v21 = v84;
    v22 = (v5 + 50);
    while (1)
    {
      v76 = v21;
      v23 = *(v22 - 18);
      v24 = *(v22 - 10);
      v25 = *(v22 - 1);
      if (*v22)
      {
        type metadata accessor for AccessibilityTextStorage();
        v26 = swift_allocObject();
        *(v26 + 16) = v23;
        *(v26 + 24) = v24;
        *(v26 + 32) = v25 & 1;
        *(v26 + 33) = HIBYTE(v25) & 1;
        outlined copy of AccessibilityText.Storage(v23, v24, v25 & 1);
      }

      else
      {
        v27 = v23[27];
        if (v27)
        {
          v83 = type metadata accessor for NSAttributedString();
          *&v82 = v27;
          v81 = 0;
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v23, v24, v25, 0);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v23, v24, v25, 0);
          v29 = [v27 isKindOfClass_];
          v30 = v29;
          if (v29)
          {
            outlined init with take of Any(&v82, v80);
            swift_dynamicCast();
            v31 = 0;
            v32 = v78;
            v33 = v81;
          }

          else
          {
            outlined init with copy of Any(&v82, v80);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_47:
              result = _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
              return result;
            }

            v32 = v78;
            v31 = v79;
            __swift_destroy_boxed_opaque_existential_1(&v82);
            v33 = 0;
          }

          type metadata accessor for AccessibilityTextStorage();
          v26 = swift_allocObject();
          *(v26 + 16) = v32;
          *(v26 + 24) = v31;
          *(v26 + 32) = v30;
          *(v26 + 33) = v33;
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v23, v24, v25, 0);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v23, v24, v25, 0);
          v20 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          type metadata accessor for LocalizedTextStorage();
          v26 = swift_allocObject();
          *(v26 + 16) = 0;
          *(v26 + 24) = 0xE000000000000000;
          *(v26 + 32) = 0;
          *(v26 + 40) = v20;
          *(v26 + 48) = 0;
          *(v26 + 56) = 0;
          *(v26 + 64) = 0;
        }
      }

      v21 = v76;
      v84 = v76;
      v35 = *(v76 + 16);
      v34 = *(v76 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v21 = v84;
      }

      *(v21 + 16) = v35 + 1;
      v36 = v21 + 32 * v35;
      *(v36 + 32) = v26;
      *(v36 + 40) = 0;
      *(v36 + 48) = 1;
      *(v36 + 56) = v20;
      v22 += 24;
      if (!--v19)
      {
        goto LABEL_27;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v37 = *(v73 + 16);
  if (v37)
  {
    v77 = v21;
    v84 = v20;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v38 = v84;
    v39 = (v73 + 56);
    do
    {
      v40 = *(v39 - 4) | (*(v39 - 6) << 16);
      v41 = *v39;
      if (*(v39 - 6) == 255)
      {
        v49 = 0;
        v43 = 0xE000000000000000;
      }

      else
      {
        v42 = *(v39 - 3);
        v74 = *v39;
        if (((*(v39 - 6) << 16) & 0x10000) != 0)
        {
          v50 = *(v39 - 2);
          type metadata accessor for AccessibilityTextStorage();
          v49 = swift_allocObject();
          *(v49 + 16) = v42;
          *(v49 + 24) = v50;
          *(v49 + 32) = v40 & 1;
          *(v49 + 33) = BYTE1(v40) & 1;
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v42, v50, v40, 1);
          v41 = v74;
          v43 = 0;
        }

        else
        {
          v43 = v42[27];
          if (v43)
          {
            v83 = type metadata accessor for NSAttributedString();
            *&v82 = v43;
            v81 = 0;
            v44 = [v43 isKindOfClass_];
            v45 = v44;
            if (v44)
            {
              outlined init with take of Any(&v82, v80);
              swift_dynamicCast();
              v46 = 0;
              v47 = v78;
              v48 = v81;
            }

            else
            {
              outlined init with copy of Any(&v82, v80);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_47;
              }

              v47 = v78;
              v46 = v79;
              __swift_destroy_boxed_opaque_existential_1(&v82);
              v48 = 0;
            }

            type metadata accessor for AccessibilityTextStorage();
            v49 = swift_allocObject();
            v43 = 0;
            *(v49 + 16) = v47;
            *(v49 + 24) = v46;
            *(v49 + 32) = v45;
            *(v49 + 33) = v48;
            v20 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            type metadata accessor for LocalizedTextStorage();
            v49 = swift_allocObject();
            *(v49 + 16) = 0;
            *(v49 + 24) = 0xE000000000000000;
            *(v49 + 32) = 0;
            *(v49 + 40) = v20;
            *(v49 + 48) = 0;
            *(v49 + 56) = 0;
            *(v49 + 64) = 0;
          }

          v41 = v74;
        }
      }

      v84 = v38;
      v52 = *(v38 + 16);
      v51 = *(v38 + 24);
      if (v52 >= v51 >> 1)
      {
        v75 = v41;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
        v41 = v75;
        v38 = v84;
      }

      *(v38 + 16) = v52 + 1;
      v53 = v38 + 48 * v52;
      *(v53 + 32) = v49;
      *(v53 + 40) = v43;
      *(v53 + 48) = v40 < 0xFF0000;
      *(v53 + 56) = v20;
      *(v53 + 64) = v41;
      v39 = (v39 + 40);
      --v37;
    }

    while (v37);
    v55 = v69;
    v54 = a1;
    result = v71;
    v57 = v72;
    v21 = v77;
  }

  else
  {
    v57 = v72;

    v38 = MEMORY[0x1E69E7CC0];
    v55 = v69;
    v54 = a1;
  }

  *v54 = v65;
  *(v54 + 8) = v63;
  *(v54 + 16) = v64;
  *(v54 + 24) = v62;
  *(v54 + 32) = v61;
  *(v54 + 40) = v59;
  *(v54 + 48) = v60;
  *(v54 + 56) = v58;
  *(v54 + 64) = v21;
  *(v54 + 72) = v55;
  *(v54 + 80) = v68;
  *(v54 + 88) = v67;
  *(v54 + 96) = v66;
  *(v54 + 104) = v57;
  *(v54 + 112) = result;
  *(v54 + 120) = v38;
  return result;
}

uint64_t CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.encode(to:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys, &unk_1F006CA48, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 18);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v31 = *(v1 + 32);
  v32 = v11;
  v41 = *(v1 + 42);
  v30 = *(v1 + 40);
  v12 = *(v1 + 56);
  v29 = *(v1 + 48);
  v27 = v12;
  v28 = *(v1 + 64);
  v13 = *(v1 + 72);
  v26 = *(v1 + 80);
  v14 = *(v1 + 96);
  v24 = *(v1 + 88);
  v25 = v13;
  v22 = *(v1 + 104);
  v23 = v14;
  v15 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v8, v7, v10 | (v9 << 16));
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v37 = v8;
  v38 = v7;
  v16 = v34;
  v40 = v9;
  v39 = v10;
  v42 = 0;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
  lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>);
  v17 = v36;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v17)
  {
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v37, v38, v39 | (v40 << 16));
    return (*(v35 + 8))(v6, v16);
  }

  else
  {
    v19 = v29;
    v20 = v35;
    v21 = v30 | (v41 << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v37, v38, v39 | (v40 << 16));
    v37 = v32;
    v38 = v31;
    v40 = BYTE2(v21);
    v39 = v21;
    v42 = 1;
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v32, v31, v21);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v37, v38, v39 | (v40 << 16));
    v37 = v19;
    v42 = 2;
    type metadata accessor for [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>]();
    lazy protocol witness table accessor for type [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>] and conformance <A> [A], &lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v37) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = v24;
    v42 = 5;
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Double] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v37 = v23;
    v42 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v37 = v22;
    v42 = 7;
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for [CodableAccessibilityDataSeriesConfiguration.ValueDescription], &type metadata for CodableAccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [CodableAccessibilityDataSeriesConfiguration.ValueDescription] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityDataSeriesConfiguration.ValueDescription] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v20 + 8))(v6, v16);
  }
}

void CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v43 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys, &unk_1F006CA48, MEMORY[0x1E69E6F48]);
  v44 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys();
  v45 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v86 = v2;
    LODWORD(v45) = 0;
    __swift_destroy_boxed_opaque_existential_1(v46);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    if (v45)
    {
    }
  }

  else
  {
    v9 = v5;
    v10 = v43;
    type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
    LOBYTE(v47) = 0;
    lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v54;
    v39 = v55;
    v38 = v56 | (v57 << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    LOBYTE(v47) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = v54;
    v13 = v55;
    v37 = v56 | (v57 << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    type metadata accessor for [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>]();
    LOBYTE(v47) = 2;
    lazy protocol witness table accessor for type [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>] and conformance <A> [A], &lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v54;
    LOBYTE(v54) = 3;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v81 = v15 & 1;
    LOBYTE(v54) = 4;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v14;
    v79 = v16 & 1;
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    v18 = v17;
    LOBYTE(v47) = 5;
    v19 = lazy protocol witness table accessor for type [Double] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
    v20 = v44;
    v86 = v18;
    v40 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = v54;
    LOBYTE(v47) = 6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v54;
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for [CodableAccessibilityDataSeriesConfiguration.ValueDescription], &type metadata for CodableAccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E62F8]);
    v76 = 7;
    lazy protocol witness table accessor for type [CodableAccessibilityDataSeriesConfiguration.ValueDescription] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityDataSeriesConfiguration.ValueDescription] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v86 = 0;
    (*(v9 + 8))(v45, v20);
    v30 = v77;
    v33 = v13;
    v34 = v11;
    *&v47 = v11;
    *(&v47 + 1) = v39;
    LOWORD(v14) = v37;
    LOWORD(v9) = v38;
    LODWORD(v45) = HIWORD(v38);
    BYTE2(v48) = BYTE2(v38);
    LOWORD(v48) = v38;
    *(&v48 + 3) = v84;
    BYTE7(v48) = v85;
    v32 = v12;
    *(&v48 + 1) = v12;
    *&v49 = v13;
    LODWORD(v44) = HIWORD(v37);
    BYTE10(v49) = BYTE2(v37);
    WORD4(v49) = v37;
    *(&v49 + 11) = v82;
    HIBYTE(v49) = v83;
    v21 = v41;
    v22 = v35;
    *&v50 = v42;
    *(&v50 + 1) = v36;
    v31 = v81;
    LOBYTE(v51) = v81;
    *(&v51 + 1) = *v80;
    DWORD1(v51) = *&v80[3];
    *(&v51 + 1) = v35;
    LOBYTE(v11) = v79;
    LOBYTE(v52) = v79;
    *(&v52 + 1) = *v78;
    DWORD1(v52) = *&v78[3];
    v23 = v40;
    *(&v52 + 1) = v41;
    *&v53 = v40;
    *(&v53 + 1) = v77;
    v24 = v48;
    *v10 = v47;
    v10[1] = v24;
    v25 = v49;
    v26 = v50;
    v27 = v53;
    v28 = v51;
    v10[5] = v52;
    v10[6] = v27;
    v10[3] = v26;
    v10[4] = v28;
    v10[2] = v25;
    outlined init with copy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(&v47, &v54);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v54 = v34;
    v55 = v39;
    v57 = v45;
    v56 = v9;
    v58 = v84;
    v59 = v85;
    v60 = v32;
    v61 = v33;
    v63 = v44;
    v62 = v14;
    v64 = v82;
    v65 = v83;
    v66 = v42;
    v67 = v36;
    v68 = v31;
    *&v69[3] = *&v80[3];
    *v69 = *v80;
    v70 = v22;
    v71 = v11;
    *v72 = *v78;
    *&v72[3] = *&v78[3];
    v73 = v21;
    v74 = v23;
    v75 = v30;
    outlined destroy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(&v54);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x7365756C6176;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x566D756D6978616DLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79726F6765746163;
  if (v1 != 2)
  {
    v5 = 0x566D756D696E696DLL;
  }

  if (*v0)
  {
    v2 = 0x6562614C74696E75;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 CodableAccessibilityDataSeriesConfiguration.init(_:in:)@<Q0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x138uLL);
  v5 = *a2;
  v6 = a2[1];
  v7 = __dst[0];
  v8 = __dst[1];
  v9 = __dst[2];
  v10 = __dst[3];
  type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18DDA6EB0;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = v10;
  *&v66[0] = v5;
  *(&v66[0] + 1) = v6;
  v58 = 0u;

  outlined copy of Text.Storage(v7, v8, v9);
  CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(v11, v66, 0, &v58, v67);
  v42 = v67[1];
  v43 = v67[0];
  v12 = v69;
  v13 = v68;
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
  v40 = BYTE1(__dst[4]);
  v41 = __dst[4];
  v39 = __dst[5];
  v70 = __dst[6];
  v14 = BYTE1(__dst[6]);
  v15 = BYTE2(__dst[6]);
  v66[4] = *&__dst[15];
  v66[5] = *&__dst[17];
  v66[6] = *&__dst[19];
  v66[7] = *&__dst[21];
  v66[0] = *&__dst[7];
  v66[1] = *&__dst[9];
  v66[2] = *&__dst[11];
  v66[3] = *&__dst[13];
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(v66) == 1)
  {
    v16 = 0;
    v17 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
  }

  else
  {
    v62 = *&__dst[15];
    v63 = *&__dst[17];
    v64 = *&__dst[19];
    v65 = *&__dst[21];
    v58 = *&__dst[7];
    v59 = *&__dst[9];
    v60 = *&__dst[11];
    v61 = *&__dst[13];
    *&v48[0] = v5;
    *(&v48[0] + 1) = v6;

    outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&__dst[7], &v49, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
    CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.init(_:in:)(&v58, v48, &v49);
    v37 = v50;
    v38 = v49;
    v35 = v52;
    v36 = v51;
    v33 = v54;
    v34 = v53;
    v17 = *(&v55 + 1);
    v16 = v55;
  }

  v18 = v13 | (v12 << 16);
  memset(v57, 0, sizeof(v57));
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v57, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
  v62 = *&__dst[31];
  v63 = *&__dst[33];
  v64 = *&__dst[35];
  v65 = *&__dst[37];
  v58 = *&__dst[23];
  v59 = *&__dst[25];
  v60 = *&__dst[27];
  v61 = *&__dst[29];
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(&v58) == 1)
  {

    outlined destroy of AccessibilityDataSeriesConfiguration(__dst);
    v19 = 0;
    v20 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    v48[4] = *&__dst[31];
    v48[5] = *&__dst[33];
    v48[6] = *&__dst[35];
    v48[7] = *&__dst[37];
    v48[0] = *&__dst[23];
    v48[1] = *&__dst[25];
    v48[2] = *&__dst[27];
    v48[3] = *&__dst[29];
    v51 = *&__dst[27];
    v52 = *&__dst[29];
    v47[0] = v5;
    v47[1] = v6;
    v49 = *&__dst[23];
    v50 = *&__dst[25];
    v55 = *&__dst[35];
    v56 = *&__dst[37];
    v53 = *&__dst[31];
    v54 = *&__dst[33];
    outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&__dst[23], v44, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
    outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration(&v49, v44);
    CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.init(_:in:)(v48, v47, v44);
    outlined destroy of AccessibilityDataSeriesConfiguration(__dst);
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&__dst[23], &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
    v31 = v44[1];
    v32 = v44[0];
    v29 = v44[3];
    v30 = v44[2];
    v27 = v44[5];
    v28 = v44[4];
    v19 = v45;
    v20 = v46;
  }

  v54 = 0u;
  v55 = 0u;
  v21 = HIWORD(v18);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&v49, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
  v22 = v70;
  v23 = v42;
  v24 = v43;
  if (HIWORD(v18) > 0xFEu)
  {
    v23 = 0;
  }

  if (v21 > 0xFE)
  {
    v24 = 0;
  }

  *a3 = v24;
  *(a3 + 8) = v23;
  if (v21 <= 0xFE)
  {
    v25 = v18;
  }

  else
  {
    v25 = -65536;
  }

  *(a3 + 16) = v25;
  *(a3 + 18) = BYTE2(v25);
  *(a3 + 19) = v41;
  *(a3 + 20) = v40;
  *(a3 + 24) = v39;
  *(a3 + 32) = v22;
  *(a3 + 33) = v14;
  *(a3 + 34) = v15;
  *(a3 + 56) = v37;
  *(a3 + 40) = v38;
  *(a3 + 88) = v35;
  *(a3 + 72) = v36;
  *(a3 + 120) = v33;
  *(a3 + 104) = v34;
  *(a3 + 136) = v16;
  *(a3 + 144) = v17;
  *(a3 + 168) = v31;
  *(a3 + 152) = v32;
  *(a3 + 200) = v29;
  *(a3 + 184) = v30;
  result = v28;
  *(a3 + 232) = v27;
  *(a3 + 216) = v28;
  *(a3 + 248) = v19;
  *(a3 + 256) = v20;
  return result;
}

double CodableAccessibilityDataSeriesConfiguration.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 18);
  v53 = *(v1 + 20);
  v54 = *(v1 + 19);
  v52 = *(v1 + 24);
  v50 = *(v1 + 33);
  v51 = *(v1 + 32);
  v49 = *(v1 + 34);
  v5 = *(v1 + 88);
  v6 = *(v1 + 200);
  if (v4 == 255)
  {
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = 0xE000000000000000;
    if (!v5)
    {
LABEL_9:
      _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v77);
      if (!v6)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v11 = *v1;
    v12 = *(v2 + 16);
    if (((v4 << 16) & 0x10000) != 0)
    {
      v22 = *(v2 + 8);
      type metadata accessor for AccessibilityTextStorage();
      v7 = swift_allocObject();
      *(v7 + 16) = v11;
      *(v7 + 24) = v22;
      *(v7 + 32) = v12 & 1;
      *(v7 + 33) = HIBYTE(v12) & 1;
      v8 = 1;
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v11, v22, v12, 1);
      v10 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = ResolvedStyledText.accessibilityText.getter();
      v10 = v13;
      v8 = v14;
      v9 = v15;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = *(v2 + 56);
  v77 = *(v2 + 40);
  v78 = v16;
  v79 = *(v2 + 72);
  v17 = *(v2 + 112);
  *&v80[8] = *(v2 + 96);
  *&v80[24] = v17;
  *&v80[40] = *(v2 + 128);
  v18 = *(v2 + 144);
  *v80 = v5;
  *&v80[56] = v18;
  CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.configuration.getter(&v72);
  _ViewInputs.base.modify(&v72);
  *&v80[16] = *&v75[16];
  *&v80[32] = *&v75[32];
  *&v80[48] = *&v75[48];
  v81 = v76;
  v77 = v72;
  v78 = v73;
  v79 = v74;
  *v80 = *v75;
  if (!v6)
  {
LABEL_10:
    _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v72);
    goto LABEL_11;
  }

LABEL_7:
  v19 = *(v2 + 168);
  v72 = *(v2 + 152);
  v73 = v19;
  v74 = *(v2 + 184);
  v20 = *(v2 + 224);
  *&v75[8] = *(v2 + 208);
  *&v75[24] = v20;
  *&v75[40] = *(v2 + 240);
  v21 = *(v2 + 256);
  *v75 = v6;
  *&v75[56] = v21;
  CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.configuration.getter(&v64);
  _ViewInputs.base.modify(&v64);
  *&v75[16] = v68;
  *&v75[32] = v69;
  *&v75[48] = v70;
  v76 = v71;
  v72 = v64;
  v73 = v65;
  v74 = v66;
  *v75 = v67;
LABEL_11:
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v55);
  v23 = v60;
  v24 = v59;
  v25 = v60;
  *(a1 + 248) = v59;
  v27 = v61;
  v26 = v62;
  *(a1 + 264) = v23;
  *(a1 + 280) = v27;
  v28 = v61;
  v29 = v62;
  *(a1 + 296) = v26;
  v30 = v56;
  *(a1 + 184) = v55;
  v31 = v55;
  v32 = v56;
  *(a1 + 200) = v30;
  v33 = v58;
  *(a1 + 216) = v57;
  v34 = v57;
  *(a1 + 232) = v58;
  v63[6] = v28;
  v63[7] = v29;
  v63[4] = v24;
  v63[5] = v25;
  v63[2] = v34;
  v63[3] = v33;
  *a1 = v7;
  *(a1 + 8) = v10;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v54;
  *(a1 + 33) = v53;
  *(a1 + 40) = v52;
  *(a1 + 48) = v51;
  *(a1 + 49) = v50;
  *(a1 + 50) = v49;
  v63[0] = v31;
  v63[1] = v32;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v63, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v35 = *&v80[32];
  *(a1 + 120) = *&v80[16];
  *(a1 + 136) = v35;
  v36 = v81;
  *(a1 + 152) = *&v80[48];
  *(a1 + 168) = v36;
  v37 = v78;
  *(a1 + 56) = v77;
  *(a1 + 72) = v37;
  v38 = *v80;
  *(a1 + 88) = v79;
  *(a1 + 104) = v38;
  v39 = *(a1 + 232);
  v66 = *(a1 + 216);
  v67 = v39;
  v40 = *(a1 + 200);
  v64 = *(a1 + 184);
  v65 = v40;
  v41 = *(a1 + 296);
  v42 = *(a1 + 264);
  v70 = *(a1 + 280);
  v71 = v41;
  v68 = *(a1 + 248);
  v69 = v42;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&v64, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v43 = *&v75[32];
  *(a1 + 248) = *&v75[16];
  v44 = *&v75[48];
  v45 = v76;
  *(a1 + 264) = v43;
  *(a1 + 280) = v44;
  *(a1 + 296) = v45;
  v46 = v73;
  *(a1 + 184) = v72;
  *(a1 + 200) = v46;
  result = *&v74;
  v48 = *v75;
  *(a1 + 216) = v74;
  *(a1 + 232) = v48;
  return result;
}

uint64_t CodableAccessibilityDataSeriesConfiguration.encode(to:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys, &unk_1F006CAD8, MEMORY[0x1E69E6F58]);
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v23 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 18);
  v60 = *(v1 + 16);
  v26 = *(v1 + 19);
  v27 = v60 | (v8 << 16);
  v25 = *(v1 + 20);
  v24 = *(v1 + 24);
  v9 = *(v1 + 32);
  v23[4] = *(v1 + 33);
  v23[5] = v9;
  v23[3] = *(v1 + 34);
  v10 = *(v1 + 88);
  v11 = *(v1 + 120);
  v50 = *(v1 + 104);
  v51 = v11;
  v52 = *(v1 + 136);
  v12 = *(v1 + 56);
  v46 = *(v1 + 40);
  v47 = v12;
  v48 = *(v1 + 72);
  v49 = v10;
  v13 = *(v1 + 200);
  v14 = *(v1 + 232);
  v57 = *(v1 + 216);
  v58 = v14;
  v59 = *(v1 + 248);
  v15 = *(v1 + 168);
  v53 = *(v1 + 152);
  v54 = v15;
  v55 = *(v1 + 184);
  v56 = v13;
  v16 = a1[3];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v6, v27);
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v39 = v7;
  *(&v39 + 1) = v6;
  BYTE2(v40) = v8;
  LOWORD(v40) = v60;
  LOBYTE(v38[0]) = 0;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
  lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>);
  v20 = v29;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v20)
  {
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v39, *(&v39 + 1), v40 | (BYTE2(v40) << 16));
    return (*(v28 + 8))(v5, v19);
  }

  else
  {
    v22 = v28;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v39, *(&v39 + 1), v40 | (BYTE2(v40) << 16));
    LOBYTE(v39) = v26;
    LOBYTE(v38[0]) = 1;
    lazy protocol witness table accessor for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v39) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v39) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v39) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v39) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v39 = v46;
    v40 = v47;
    v41 = v48;
    v42 = v49;
    v62 = 6;
    outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&v46, v38, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v38[4] = v43;
    v38[5] = v44;
    v38[6] = v45;
    v38[0] = v39;
    v38[1] = v40;
    v38[2] = v41;
    v38[3] = v42;
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v38, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    v35 = v57;
    v36 = v58;
    v37 = v59;
    v31 = v53;
    v32 = v54;
    v33 = v55;
    v34 = v56;
    v61 = 7;
    outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&v53, v30, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30[4] = v35;
    v30[5] = v36;
    v30[6] = v37;
    v30[0] = v31;
    v30[1] = v32;
    v30[2] = v33;
    v30[3] = v34;
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v30, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    return (*(v22 + 8))(v5, v19);
  }
}

uint64_t CodableAccessibilityDataSeriesConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys, &unk_1F006CAD8, MEMORY[0x1E69E6F48]);
  v45 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys();
  v46 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v49 = v2;
    v50 = 0;
    v51 = 0;
    v47 = 0;
    v120 = 0;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    __swift_destroy_boxed_opaque_existential_1(v48);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    *v58 = v50;
    *&v58[8] = v51;
    *&v58[16] = v47;
    *&v58[24] = v120;
    *&v58[32] = v55;
    *&v58[40] = v56;
    *&v58[48] = v54;
    *&v58[56] = v53;
    *&v58[64] = v52;
    memset(&v58[72], 0, 40);
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v58, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    return outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&v59, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
  }

  else
  {
    v9 = v5;
    v10 = v44;
    type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
    v58[0] = 0;
    lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>);
    v11 = v45;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43 = v59;
    v42 = v60 | (BYTE2(v60) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    v58[0] = 1;
    lazy protocol witness table accessor for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v9;
    LODWORD(v9) = v59;
    LOBYTE(v59) = 2;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v59) = 3;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v117 = v16 & 1;
    LOBYTE(v59) = 4;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v59) = 5;
    LODWORD(v40) = KeyedDecodingContainer.decode(_:forKey:)();
    LODWORD(v41) = v17;
    v100[127] = 6;
    v49 = lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    LODWORD(v32) = v14;
    v33 = v15;
    v34 = v9;
    v50 = v101;
    v51 = v102;
    v47 = v103;
    v120 = v104;
    v55 = v105;
    v56 = v106;
    v53 = v108;
    v54 = v107;
    v52 = v109;
    v38 = v111;
    v39 = v110;
    v36 = v113;
    v37 = v112;
    v35 = v114;
    memset(v100, 0, 112);
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v100, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    v85 = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v49 = 0;
    LOBYTE(v9) = v32 & 1;
    LOBYTE(v15) = v41 & 1;
    LOBYTE(v14) = v40 & 1;
    v21 = v32 & 1;
    v22 = v40 & 1;
    (*(v13 + 8))(v46, v11);
    v45 = v87;
    v46 = v86;
    v40 = v89;
    v41 = v88;
    v31 = v91;
    v32 = v90;
    v29 = v93;
    v30 = v92;
    v27 = v95;
    v28 = v94;
    v25 = v97;
    v26 = v96;
    v23 = v99;
    v24 = v98;
    memset(v57, 0, 112);
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v57, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    *v58 = v43;
    *&v58[21] = v118;
    *&v58[35] = v115;
    v18 = v42;
    LODWORD(v11) = HIWORD(v42);
    v58[18] = BYTE2(v42);
    *&v58[16] = v42;
    LOBYTE(v17) = v34;
    v58[19] = v34;
    v58[20] = v9;
    v58[23] = v119;
    v19 = v33;
    *&v58[24] = v33;
    v58[39] = v116;
    LOBYTE(v13) = v117;
    v58[32] = v117;
    v58[33] = v15;
    v58[34] = v14;
    *&v58[40] = v50;
    *&v58[48] = v51;
    v20 = v47;
    *&v58[56] = v47;
    *&v58[64] = v120;
    *&v58[72] = v55;
    *&v58[80] = v56;
    *&v58[88] = v54;
    *&v58[96] = v53;
    *&v58[104] = v52;
    *&v58[112] = v39;
    *&v58[120] = v38;
    *&v58[128] = v37;
    *&v58[136] = v36;
    *&v58[144] = v35;
    *&v58[152] = v46;
    *&v58[160] = v45;
    *&v58[168] = v41;
    *&v58[176] = v40;
    *&v58[184] = v32;
    *&v58[192] = v31;
    *&v58[200] = v30;
    *&v58[208] = v29;
    *&v58[216] = v28;
    *&v58[224] = v27;
    *&v58[232] = v26;
    *&v58[240] = v25;
    *&v58[248] = v24;
    *&v58[256] = v23;
    memcpy(v10, v58, 0x108uLL);
    outlined init with copy of CodableAccessibilityDataSeriesConfiguration(v58, &v59);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v59 = v43;
    BYTE2(v60) = v11;
    LOWORD(v60) = v18;
    BYTE3(v60) = v17;
    BYTE4(v60) = v21;
    *(&v60 + 1) = v19;
    LOBYTE(v61) = v13;
    BYTE1(v61) = v15;
    *(&v60 + 5) = v118;
    BYTE7(v60) = v119;
    BYTE2(v61) = v22;
    *(&v61 + 3) = v115;
    BYTE7(v61) = v116;
    *(&v61 + 1) = v50;
    *&v62 = v51;
    *(&v62 + 1) = v20;
    *&v63 = v120;
    *(&v63 + 1) = v55;
    *&v64 = v56;
    *(&v64 + 1) = v54;
    *&v65 = v53;
    *(&v65 + 1) = v52;
    v66 = v39;
    v67 = v38;
    v68 = v37;
    v69 = v36;
    v70 = v35;
    v71 = v46;
    v72 = v45;
    v73 = v41;
    v74 = v40;
    v75 = v32;
    v76 = v31;
    v77 = v30;
    v78 = v29;
    v79 = v28;
    v80 = v27;
    v81 = v26;
    v82 = v25;
    v83 = v24;
    v84 = v23;
    return outlined destroy of CodableAccessibilityDataSeriesConfiguration(&v59);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys()
{
  if (*v0 > 3u)
  {
    v3 = 0xD000000000000015;
    if (*v0 == 4)
    {
      v3 = 0xD00000000000001FLL;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    v1 = 1701667182;
    if (*v0)
    {
      v1 = 1701869940;
    }

    if (*v0 <= 1u)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000014;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized CodableAccessibilityDataSeriesConfiguration.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CodableAccessibilityDataSeriesConfiguration.ValueDescription] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(255, &lazy cache variable for type metadata for [CodableAccessibilityDataSeriesConfiguration.ValueDescription], &type metadata for CodableAccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription);
  }

  return result;
}

id outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(id result, uint64_t a2, int a3)
{
  if (BYTE2(a3) != 255)
  {
    return outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(result, a2, a3, BYTE2(a3) & 1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Double] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(255, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void destroy for CodableAccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1)
{
  if (*(a1 + 18) != 255)
  {
    v1 = *(a1 + 16) | (*(a1 + 18) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a1, *(a1 + 8), v1, BYTE2(v1) & 1);
  }
}

__n128 initializeWithCopy for CodableAccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 18) == 255)
  {
    *a1 = *a2;
    *(a1 + 15) = *(a2 + 15);
  }

  else
  {
    v3 = *(a2 + 8) | (*(a2 + 18) << 16);
    v4 = *a2;
    v5 = a2[1];
    v6 = a1;
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v5, *(a2 + 8), BYTE2(v3) & 1);
    a1 = v6;
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = v3;
    *(v6 + 18) = BYTE2(v3) & 1;
  }

  result = *(a2 + 3);
  *(a1 + 24) = result;
  return result;
}

uint64_t assignWithCopy for CodableAccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 8) | (*(a2 + 18) << 16);
  if (*(a1 + 18) == 255)
  {
    if (BYTE2(v4) == 255)
    {
      v5 = *a2;
      *(a1 + 15) = *(a2 + 15);
      *a1 = v5;
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v8, v4, BYTE2(v4) & 1);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v4;
      *(a1 + 18) = BYTE2(v4) & 1;
    }
  }

  else if (BYTE2(v4) == 255)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1);
    v6 = *(a2 + 15);
    *a1 = *a2;
    *(a1 + 15) = v6;
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v10, v4, BYTE2(v4) & 1);
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 18);
    *a1 = v9;
    *(a1 + 8) = v10;
    v14 = *(a1 + 16);
    *(a1 + 16) = v4;
    *(a1 + 18) = BYTE2(v4) & 1;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v11, v12, v14, v13);
  }

  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = *(a2 + 4);
  return a1;
}

__n128 assignWithTake for CodableAccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 18) == 255)
  {
    *a1 = *a2;
    *(a1 + 15) = *(a2 + 15);
  }

  else
  {
    v3 = *(a2 + 16) | (*(a2 + 18) << 16);
    if (HIWORD(v3) <= 0xFEu)
    {
      v5 = *(a1 + 16) | (*(a1 + 18) << 16);
      v7 = *a1;
      v6 = *(a1 + 8);
      *a1 = *a2;
      *(a1 + 16) = v3;
      *(a1 + 18) = BYTE2(v3) & 1;
      v8 = a1;
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v7, v6, v5, BYTE2(v5) & 1);
      a1 = v8;
    }

    else
    {
      v4 = a1;
      outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1);
      a1 = v4;
      *v4 = *a2;
      *(v4 + 15) = *(a2 + 15);
    }
  }

  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 18);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableAccessibilityDataSeriesConfiguration.ValueDescription(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 18) = ~a2;
    }
  }

  return result;
}

uint64_t specialized CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEE00736C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x566D756D696E696DLL && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x566D756D6978616DLL && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018DD7A850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018DD7A870 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t specialized CodableAccessibilityDataSeriesConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018DD7A790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018DD7A7B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000018DD7A7D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018DD7A7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018DD7A810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018DD7A830 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys);
  }

  return result;
}

void type metadata accessor for Range<Double>()
{
  if (!lazy cache variable for type metadata for Range<Double>)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Double>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Range<Double>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t EnvironmentValues.platformProvidersDefinition.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);

    return v2;
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(v1);
    if (v4)
    {
      v5 = v4 + 9;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v5 = &static EnvironmentValues.CorePlatfromProvidersDefinitionKey.defaultValue;
    }

    return *v5;
  }
}

uint64_t _GraphInputs.platformSystem.setter(unsigned __int8 *a1)
{
  v2 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014PlatformSystemF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2B5(v1, v2);
}

Swift::Int PlatformSystemDefinition.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t key path setter for _GraphInputs.platformSystem : _GraphInputs(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014PlatformSystemF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2B5(a2, v3);
}

void (*_GraphInputs.platformSystem.modify(uint64_t *a1))(uint64_t ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = v5;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return _GraphInputs.platformSystem.modify;
}

void _GraphInputs.platformSystem.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014PlatformSystemF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2B5(v1[2], v2);

  free(v1);
}

double CorePlatformProviders.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t CorePlatformProviders.defaultAccentColor.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t CorePlatformProviders.cuiNamedColor.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CorePlatformProviders.resolvedText.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CorePlatformProviders.accessibilityTextAttributeResolver.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t CorePlatformProviders.bridgedEnvironment.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  return result;
}

uint64_t CorePlatformProviders.fallbackFont.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2;
  return result;
}

uint64_t CorePlatformProviders.layerStackBitmap.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2;
  return result;
}

uint64_t CorePlatformProviders.gestureConstants.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2;
  return result;
}

uint64_t CorePlatformProviders.lazyContainerInputs.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2;
  return result;
}

uint64_t CorePlatformProviders.lazyLayout.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2;
  return result;
}

uint64_t key path getter for EnvironmentValues.platformProvidersDefinition : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*a1);
    if (result)
    {
      v6 = (result + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v6 = &static EnvironmentValues.CorePlatfromProvidersDefinitionKey.defaultValue;
    }

    v4 = *v6;
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.platformProvidersDefinition : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE031CorePlatfromProvidersDefinitionK033_C648E6A51A5817691B7DBFA00A618C21LLVG_Ttg5(v4, *a2);
  }
}

void (*EnvironmentValues.platformProvidersDefinition.modify(uint64_t **a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  v3[5] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(v5);
    if (v8)
    {
      v9 = v8 + 9;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = &static EnvironmentValues.CorePlatfromProvidersDefinitionKey.defaultValue;
    }

    v7 = *v9;
  }

  *v4 = v7;
  return EnvironmentValues.platformProvidersDefinition.modify;
}

void EnvironmentValues.platformProvidersDefinition.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  swift_retain_n();
  v3 = v1[5];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt2g5(v1[3], v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE031CorePlatfromProvidersDefinitionK033_C648E6A51A5817691B7DBFA00A618C21LLVG_Ttg5(v1[4], *v1[3]);
  }

  free(v1);
}

uint64_t key path setter for _GraphInputs.platformProvidersDefinition : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(a2, v3);
}

void (*_GraphInputs.platformProvidersDefinition.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  v4[4] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v5);
  v4[5] = 0;
  *v4 = v6;
  return _GraphInputs.platformProvidersDefinition.modify;
}

void _GraphInputs.platformProvidersDefinition.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v1[3], v2);

  free(v1);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.CorePlatfromProvidersDefinitionKey@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformSystemDefinition and conformance PlatformSystemDefinition()
{
  result = lazy protocol witness table cache variable for type PlatformSystemDefinition and conformance PlatformSystemDefinition;
  if (!lazy protocol witness table cache variable for type PlatformSystemDefinition and conformance PlatformSystemDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformSystemDefinition and conformance PlatformSystemDefinition);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for CorePlatformProviders(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CorePlatformProviders(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t Gesture.requiredTapCount(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10 = a1;
  v11 = a2 & 1;
  v8 = type metadata accessor for RequiredTapCountWriter();
  swift_getWitnessTable();
  return Gesture.modifier<A>(_:)(&v10, a3, v8, a4);
}

unint64_t static RequiredTapCountWriter._makeGesture(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, _OWORD *)@<X2>, void *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v6;
  v7 = *(a2 + 80);
  v22[4] = *(a2 + 64);
  v22[5] = v7;
  v8 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v8;
  v9 = *(a2 + 96);
  v24 = *(a2 + 104);
  v25 = *(a2 + 120);
  v23 = v9;
  a3(a4, v22);
  *&v22[0] = v9;
  result = PreferenceKeys._index(of:)(&type metadata for RequiredTapCountKey);
  v11 = *(v9 + 16);
  if (result != v11)
  {
    if (result >= v11)
    {
      __break(1u);
    }

    if (*(v9 + 16 * result + 32) == &type metadata for RequiredTapCountKey)
    {
      LODWORD(v22[0]) = v5;
      MEMORY[0x1EEE9AC00](result);
      v19 = type metadata accessor for RequiredTapCountWriter.Child();
      WitnessTable = swift_getWitnessTable();
      type metadata accessor for Attribute<(_:)>();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_10, &v18, v19, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
      v14 = v21;
      v15 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA016RequiredTapCountI0V_TtB5(a4[1]);
      v16 = *MEMORY[0x1E698D3F8];
      if ((v15 & 0x100000000) == 0)
      {
        v16 = v15;
      }

      *&v22[0] = __PAIR64__(v16, v14);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for Int?();
      type metadata accessor for PreferenceTransform<RequiredTapCountKey>();
      lazy protocol witness table accessor for type PreferenceTransform<RequiredTapCountKey> and conformance PreferenceTransform<A>();
      v17 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v22[0]) = 0;
      return PreferencesOutputs.subscript.setter(v17, &type metadata for RequiredTapCountKey, &protocol witness table for RequiredTapCountKey);
    }
  }

  return result;
}

uint64_t *(*RequiredTapCountWriter.Child.value.getter())(uint64_t *a1)
{
  type metadata accessor for RequiredTapCountWriter();
  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  return partial apply for closure #1 in RequiredTapCountWriter.Child.value.getter;
}

uint64_t *closure #1 in RequiredTapCountWriter.Child.value.getter(uint64_t *result, uint64_t a2, char a3)
{
  if (result[1])
  {
    goto LABEL_28;
  }

  if (a3)
  {
    return result;
  }

  v3 = a2;
  v4 = result;
  v5 = *result;
  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  v6 = static GestureContainerFeature.isEnabledOverride;
  if (static GestureContainerFeature.isEnabledOverride != 2)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for envValue != -1)
  {
    swift_once();
  }

  v6 = static GestureContainerFeature.envValue;
  if (static GestureContainerFeature.envValue != 2)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for userDefaultsValue != -1)
  {
    swift_once();
  }

  v6 = static GestureContainerFeature.userDefaultsValue;
  if (static GestureContainerFeature.userDefaultsValue != 2)
  {
LABEL_19:
    if ((v6 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v10 = &type metadata for GestureContainerFeature.IOSFeature;
  v11 = lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
  v7 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v9);
  if ((v7 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v8 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_1ED53C51C & 1) == 0)
  {
    if (static Semantics.forced < v8)
    {
      goto LABEL_24;
    }

LABEL_20:
    a3 = 0;
    if (v5 >= v3)
    {
      a2 = v3;
    }

    else
    {
      a2 = v5;
    }

    goto LABEL_27;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_20;
  }

LABEL_24:
  a3 = 0;
  if (v5 <= v3)
  {
    a2 = v3;
  }

  else
  {
    a2 = v5;
  }

LABEL_27:
  result = v4;
LABEL_28:
  *result = a2;
  *(result + 8) = a3 & 1;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance RequiredTapCountWriter<A>.Child@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = RequiredTapCountWriter.Child.value.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout Int?) -> ();
  a1[1] = result;
  return result;
}

uint64_t specialized static RequiredTapCountKey.reduce(value:nextValue:)(uint64_t *a1, void *(*a2)(uint64_t *__return_ptr))
{
  if (a1[1])
  {
    result = a2(&v9);
    v4 = v9;
    v5 = v10;
  }

  else
  {
    v6 = *a1;
    result = a2(&v9);
    if (v10)
    {
      return result;
    }

    v7 = v9;
    result = specialized static SimultaneousGestureBeginsWhenChildEndsFeature.isEnabled.getter(result);
    if (v7 <= v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = v7;
    }

    if (v7 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (result)
    {
      v4 = v8;
    }

    v5 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return result;
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

void type metadata accessor for Attribute<(_:)>()
{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

void type metadata accessor for PreferenceTransform<RequiredTapCountKey>()
{
  if (!lazy cache variable for type metadata for PreferenceTransform<RequiredTapCountKey>)
  {
    v0 = type metadata accessor for PreferenceTransform();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PreferenceTransform<RequiredTapCountKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PreferenceTransform<RequiredTapCountKey> and conformance PreferenceTransform<A>()
{
  result = lazy protocol witness table cache variable for type PreferenceTransform<RequiredTapCountKey> and conformance PreferenceTransform<A>;
  if (!lazy protocol witness table cache variable for type PreferenceTransform<RequiredTapCountKey> and conformance PreferenceTransform<A>)
  {
    type metadata accessor for PreferenceTransform<RequiredTapCountKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceTransform<RequiredTapCountKey> and conformance PreferenceTransform<A>);
  }

  return result;
}

uint64_t Font.ProviderTag.box.getter()
{
  v1 = *v0;
  v2 = (v1 >> 4) & 3;
  if (!v2)
  {
    switch(*v0)
    {
      case 1:
        v5 = &type metadata for Font.WidthModifier;
        v6 = lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier();
        break;
      case 2:
        v5 = &type metadata for Font.GradeModifier;
        v6 = lazy protocol witness table accessor for type Font.GradeModifier and conformance Font.GradeModifier();
        break;
      case 3:
        v5 = &type metadata for Font.DesignModifier;
        v6 = lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier();
        break;
      case 4:
        v5 = &type metadata for Font.StylisticAlternativeModifier;
        v6 = lazy protocol witness table accessor for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier();
        break;
      case 5:
        v5 = &type metadata for Font.LeadingModifier;
        v6 = lazy protocol witness table accessor for type Font.LeadingModifier and conformance Font.LeadingModifier();
        break;
      case 6:
        v5 = &type metadata for Font.VariationModifier;
        v6 = lazy protocol witness table accessor for type Font.VariationModifier and conformance Font.VariationModifier();
        break;
      case 7:
        v5 = &type metadata for Font.FeatureSettingModifier;
        v6 = lazy protocol witness table accessor for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier();
        break;
      case 8:
        v5 = &type metadata for Font.OpenTypeFeatureSettingModifier;
        v6 = lazy protocol witness table accessor for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier();
        break;
      case 9:
        v5 = &type metadata for Font.FeatureDictionariesSettingModifier;
        v6 = lazy protocol witness table accessor for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier();
        break;
      case 0xA:
        v5 = &type metadata for LanguageFontModifier;
        v6 = lazy protocol witness table accessor for type LanguageFontModifier and conformance LanguageFontModifier();
        break;
      case 0xB:
        v5 = &type metadata for LanguageAwareLineHeightRatioFontModifier;
        v6 = lazy protocol witness table accessor for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier();
        break;
      case 0xC:
        v5 = &type metadata for Font.ScalePointSizeModifier;
        v6 = lazy protocol witness table accessor for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier();
        break;
      case 0xD:
        v5 = &type metadata for Font.PointSizeModifier;
        v6 = lazy protocol witness table accessor for type Font.PointSizeModifier and conformance Font.PointSizeModifier();
        break;
      default:
        v5 = &type metadata for Font.WeightModifier;
        v6 = lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier();
        break;
    }

    v4 = v6;
    v14 = type metadata accessor for Font.ModifierProvider;
    v3 = v5;
    return static FontModifier.provider.getter(v3, v4, v14);
  }

  if (v2 == 1)
  {
    if (v1 >> 6)
    {
      if (v1 >> 6 == 1)
      {
        v3 = off_1E72435F8[v1 & 0xF];
        v4 = off_1E7243610[v1 & 0xF][1];
      }

      else
      {
        v4 = &protocol witness table for Font.MonospacedDigitModifier;
        v3 = &type metadata for Font.MonospacedDigitModifier;
      }
    }

    else
    {
      v3 = static UndoableStaticFontModifier.undoType.getter();
    }

    v14 = type metadata accessor for Font.StaticModifierProvider;
    return static FontModifier.provider.getter(v3, v4, v14);
  }

  if (*v0 <= 0x22u)
  {
    if (v1 == 32)
    {
      v7 = &lazy cache variable for type metadata for FontBox<Font.PlatformFontProvider>;
      v8 = &type metadata for Font.PlatformFontProvider;
      v9 = lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider;
      type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PlatformFontProvider>, lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider, type metadata accessor for FontBox);
      v11 = v16;
      v12 = &lazy protocol witness table cache variable for type FontBox<Font.PlatformFontProvider> and conformance FontBox<A>;
    }

    else if (v1 == 33)
    {
      v7 = &lazy cache variable for type metadata for FontBox<Font.SystemProvider>;
      v8 = &type metadata for Font.SystemProvider;
      v9 = lazy protocol witness table accessor for type Font.SystemProvider and conformance Font.SystemProvider;
      type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for FontBox<Font.SystemProvider>, lazy protocol witness table accessor for type Font.SystemProvider and conformance Font.SystemProvider, &type metadata for Font.SystemProvider, type metadata accessor for FontBox);
      v11 = v13;
      v12 = &lazy protocol witness table cache variable for type FontBox<Font.SystemProvider> and conformance FontBox<A>;
    }

    else
    {
      v7 = &lazy cache variable for type metadata for FontBox<Font.PrivateSystemDesignProvider>;
      v8 = &type metadata for Font.PrivateSystemDesignProvider;
      v9 = lazy protocol witness table accessor for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider;
      type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PrivateSystemDesignProvider>, lazy protocol witness table accessor for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider, &type metadata for Font.PrivateSystemDesignProvider, type metadata accessor for FontBox);
      v11 = v17;
      v12 = &lazy protocol witness table cache variable for type FontBox<Font.PrivateSystemDesignProvider> and conformance FontBox<A>;
    }
  }

  else if (*v0 > 0x24u)
  {
    if (v1 == 37)
    {
      v7 = &lazy cache variable for type metadata for FontBox<Font.NamedProvider>;
      v8 = &type metadata for Font.NamedProvider;
      v9 = lazy protocol witness table accessor for type Font.NamedProvider and conformance Font.NamedProvider;
      type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for FontBox<Font.NamedProvider>, lazy protocol witness table accessor for type Font.NamedProvider and conformance Font.NamedProvider, &type metadata for Font.NamedProvider, type metadata accessor for FontBox);
      v11 = v15;
      v12 = &lazy protocol witness table cache variable for type FontBox<Font.NamedProvider> and conformance FontBox<A>;
    }

    else
    {
      v7 = &lazy cache variable for type metadata for FontBox<Font.DefaultProvider>;
      v8 = &type metadata for Font.DefaultProvider;
      v9 = lazy protocol witness table accessor for type Font.DefaultProvider and conformance Font.DefaultProvider;
      type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for FontBox<Font.DefaultProvider>, lazy protocol witness table accessor for type Font.DefaultProvider and conformance Font.DefaultProvider, &type metadata for Font.DefaultProvider, type metadata accessor for FontBox);
      v11 = v19;
      v12 = &lazy protocol witness table cache variable for type FontBox<Font.DefaultProvider> and conformance FontBox<A>;
    }
  }

  else if (v1 == 35)
  {
    v7 = &lazy cache variable for type metadata for FontBox<Font.TextStyleProvider>;
    v8 = &type metadata for Font.TextStyleProvider;
    v9 = lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider;
    type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for FontBox<Font.TextStyleProvider>, lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider, &type metadata for Font.TextStyleProvider, type metadata accessor for FontBox);
    v11 = v10;
    v12 = &lazy protocol witness table cache variable for type FontBox<Font.TextStyleProvider> and conformance FontBox<A>;
  }

  else
  {
    v7 = &lazy cache variable for type metadata for FontBox<Font.PrivateTextStyleProvider>;
    v8 = &type metadata for Font.PrivateTextStyleProvider;
    v9 = lazy protocol witness table accessor for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider;
    type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PrivateTextStyleProvider>, lazy protocol witness table accessor for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider, &type metadata for Font.PrivateTextStyleProvider, type metadata accessor for FontBox);
    v11 = v18;
    v12 = &lazy protocol witness table cache variable for type FontBox<Font.PrivateTextStyleProvider> and conformance FontBox<A>;
  }

  lazy protocol witness table accessor for type FontBox<Font.DefaultProvider> and conformance FontBox<A>(v12, v7, v9, v8);
  return v11;
}

uint64_t static FontModifier.provider.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  a3(255, a1, a2);
  swift_getWitnessTable();
  v3 = type metadata accessor for FontBox();
  swift_getWitnessTable();
  return v3;
}

uint64_t Font.ProviderTag.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6D726F6674616C70;
    v6 = 0x6D65747379735FLL;
    if (a1 != 2)
    {
      v6 = 0x656C797473;
    }

    if (a1)
    {
      v5 = 0x6D6574737973;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746C7561666564;
    v2 = 0x7265696669646F6DLL;
    if (a1 != 7)
    {
      v2 = 0x6F4D636974617473;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C7974735FLL;
    if (a1 != 4)
    {
      v3 = 0x64656D616ELL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.ProviderTag.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Font.ProviderTag.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ProviderTag.DefaultCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ProviderTag.DefaultCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ProviderTag.ModifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ProviderTag.ModifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ProviderTag.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ProviderTag.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ProviderTag.PlatformCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ProviderTag.PlatformCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ProviderTag.StaticModifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ProviderTag.StaticModifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ProviderTag.StyleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ProviderTag.StyleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ProviderTag.SystemCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ProviderTag.SystemCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ProviderTag._styleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ProviderTag._styleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ProviderTag._systemCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ProviderTag._systemCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.ProviderTag.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.ProviderTag.StaticModifierCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys, &unk_1F006D1A0, MEMORY[0x1E69E6F58]);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v46 - v5;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.ProviderTag.ModifierCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys, &unk_1F006D110, v3);
  v67 = v6;
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v46 - v7;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.ProviderTag.DefaultCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys, &unk_1F006D080, v3);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v46 - v9;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.ProviderTag.NamedCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys, &unk_1F006D060, v3);
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v46 - v11;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.ProviderTag._styleCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys, &unk_1F006D040, v3);
  v57 = *(v12 - 8);
  v58 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v46 - v13;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.ProviderTag.StyleCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys, &unk_1F006D020, v3);
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v46 - v15;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.ProviderTag._systemCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys, &unk_1F006D000, v3);
  v52 = v16;
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v46 - v17;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.ProviderTag.SystemCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys, &unk_1F006CFE0, v3);
  v49 = v18;
  v48 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.ProviderTag.PlatformCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys, &unk_1F006CFC0, v3);
  v22 = v21;
  v47 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys, &unk_1F006CFA0, v3);
  v26 = *(v25 - 8);
  v71 = v25;
  v72 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v27 = *v1;
  v28 = a1[3];
  v29 = a1;
  v31 = &v46 - v30;
  __swift_project_boxed_opaque_existential_1(v29, v28);
  lazy protocol witness table accessor for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v32 = (v27 >> 4) & 3;
  if (!v32)
  {
    v36 = v65;
    v81 = 7;
    lazy protocol witness table accessor for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys();
    v37 = v66;
    v34 = v71;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v80 = v27;
    lazy protocol witness table accessor for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag();
    v38 = v67;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v36 + 8))(v37, v38);
    return (*(v72 + 8))(v31, v34);
  }

  if (v32 == 1)
  {
    v83 = 8;
    lazy protocol witness table accessor for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys();
    v33 = v68;
    v34 = v71;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v82 = v27 & 0xCF;
    lazy protocol witness table accessor for type Font.StaticModifierTag and conformance Font.StaticModifierTag();
    v35 = v70;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v69 + 8))(v33, v35);
    return (*(v72 + 8))(v31, v34);
  }

  if (v27 <= 34)
  {
    if (v27 == 32)
    {
      v73 = 0;
      lazy protocol witness table accessor for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys();
      v40 = v71;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v47 + 8))(v24, v22);
    }

    else
    {
      if (v27 == 33)
      {
        v74 = 1;
        lazy protocol witness table accessor for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys();
        v44 = v71;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v48 + 8))(v20, v49);
        return (*(v72 + 8))(v31, v44);
      }

      v75 = 2;
      lazy protocol witness table accessor for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys();
      v45 = v50;
      v40 = v71;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v45, v52);
    }
  }

  else
  {
    if (v27 > 36)
    {
      v40 = v71;
      if (v27 == 37)
      {
        v78 = 5;
        lazy protocol witness table accessor for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys();
        v41 = v59;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = v60;
        v42 = v61;
      }

      else
      {
        v79 = 6;
        lazy protocol witness table accessor for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys();
        v41 = v62;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = v63;
        v42 = v64;
      }
    }

    else
    {
      v40 = v71;
      if (v27 == 35)
      {
        v76 = 3;
        lazy protocol witness table accessor for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys();
        v41 = v53;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = v54;
        v42 = v55;
      }

      else
      {
        v77 = 4;
        lazy protocol witness table accessor for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys();
        v41 = v56;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v43 = v57;
        v42 = v58;
      }
    }

    (*(v43 + 8))(v41, v42);
  }

  return (*(v72 + 8))(v31, v40);
}

uint64_t Font.ProviderTag.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.ProviderTag.StaticModifierCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys, &unk_1F006D1A0, MEMORY[0x1E69E6F48]);
  v79 = v4;
  v82 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v63 - v5;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.ProviderTag.ModifierCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys, &unk_1F006D110, v3);
  v7 = *(v6 - 8);
  v80 = v6;
  v81 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v63 - v8;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.ProviderTag.DefaultCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys, &unk_1F006D080, v3);
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v63 - v10;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.ProviderTag.NamedCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys, &unk_1F006D060, v3);
  v76 = v11;
  v75 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v63 - v12;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.ProviderTag._styleCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys, &unk_1F006D040, v3);
  v74 = v13;
  v73 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v63 - v14;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.ProviderTag.StyleCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys, &unk_1F006D020, v3);
  v71 = v15;
  v72 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v63 - v16;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.ProviderTag._systemCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys, &unk_1F006D000, v3);
  v67 = v17;
  v70 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v63 - v18;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.ProviderTag.SystemCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys, &unk_1F006CFE0, v3);
  v69 = v19;
  v68 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v63 - v20;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.ProviderTag.PlatformCodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys, &unk_1F006CFC0, v3);
  v22 = v21;
  v66 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v63 - v23;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys, &unk_1F006CFA0, v3);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v63 - v28;
  v30 = a1;
  v31 = a1[3];
  v92 = v30;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  lazy protocol witness table accessor for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys();
  v32 = v93;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    goto LABEL_12;
  }

  v65 = v24;
  v64 = v22;
  v33 = v87;
  v34 = v88;
  v93 = 0;
  v35 = v89;
  v36 = v90;
  v37 = v91;
  v38 = KeyedDecodingContainer.allKeys.getter();
  v39 = (2 * *(v38 + 16)) | 1;
  v94 = v38;
  v95 = v38 + 32;
  v96 = 0;
  v97 = v39;
  v40 = specialized Collection<>.popFirst()();
  if (v40 == 9 || v96 != v97 >> 1)
  {
    v44 = type metadata accessor for DecodingError();
    swift_allocError();
    v46 = v45;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v46 = &type metadata for Font.ProviderTag;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
  }

  else if (v40 <= 3u)
  {
    if (v40 <= 1u)
    {
      if (v40)
      {
        v98 = 1;
        lazy protocol witness table accessor for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys();
        v56 = v93;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v56)
        {
          (*(v68 + 8))(v33, v69);
          (*(v27 + 8))(v29, v26);
          swift_unknownObjectRelease();
          v62 = 33;
          goto LABEL_35;
        }
      }

      else
      {
        v98 = 0;
        lazy protocol witness table accessor for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys();
        v49 = v65;
        v50 = v93;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v50)
        {
          (*(v66 + 8))(v49, v64);
          (*(v27 + 8))(v29, v26);
          swift_unknownObjectRelease();
          v62 = 32;
          goto LABEL_35;
        }
      }

      goto LABEL_11;
    }

    v51 = v86;
    if (v40 == 2)
    {
      v98 = 2;
      lazy protocol witness table accessor for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys();
      v52 = v83;
      v53 = v93;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v53)
      {
        (*(v70 + 8))(v52, v67);
        (*(v27 + 8))(v29, v26);
        swift_unknownObjectRelease();
        v62 = 34;
LABEL_34:
        v47 = v92;
LABEL_36:
        *v51 = v62;
        return __swift_destroy_boxed_opaque_existential_1(v47);
      }
    }

    else
    {
      v98 = 3;
      lazy protocol witness table accessor for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys();
      v57 = v93;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v57)
      {
        (*(v72 + 8))(v34, v71);
        (*(v27 + 8))(v29, v26);
        swift_unknownObjectRelease();
        v62 = 35;
        goto LABEL_34;
      }
    }
  }

  else
  {
    if (v40 > 5u)
    {
      if (v40 == 6)
      {
        v98 = 6;
        lazy protocol witness table accessor for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys();
        v55 = v93;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v55)
        {
          (*(v77 + 8))(v37, v78);
          (*(v27 + 8))(v29, v26);
          swift_unknownObjectRelease();
          v62 = 38;
          goto LABEL_35;
        }
      }

      else if (v40 == 7)
      {
        v98 = 7;
        lazy protocol witness table accessor for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys();
        v41 = v84;
        v42 = v93;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v42)
        {
          lazy protocol witness table accessor for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag();
          v43 = v80;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v81 + 8))(v41, v43);
          (*(v27 + 8))(v29, v26);
          swift_unknownObjectRelease();
          v62 = v98;
LABEL_35:
          v47 = v92;
          v51 = v86;
          goto LABEL_36;
        }
      }

      else
      {
        v98 = 8;
        lazy protocol witness table accessor for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys();
        v58 = v85;
        v59 = v93;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v59)
        {
          lazy protocol witness table accessor for type Font.StaticModifierTag and conformance Font.StaticModifierTag();
          v60 = v79;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v82 + 8))(v58, v60);
          (*(v27 + 8))(v29, v26);
          swift_unknownObjectRelease();
          v62 = v98 | 0x10;
          goto LABEL_35;
        }
      }

      goto LABEL_11;
    }

    v51 = v86;
    if (v40 == 4)
    {
      v98 = 4;
      lazy protocol witness table accessor for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys();
      v54 = v93;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v54)
      {
        (*(v73 + 8))(v35, v74);
        (*(v27 + 8))(v29, v26);
        swift_unknownObjectRelease();
        v62 = 36;
        goto LABEL_34;
      }
    }

    else
    {
      v98 = 5;
      lazy protocol witness table accessor for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys();
      v61 = v93;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v61)
      {
        (*(v75 + 8))(v36, v76);
        (*(v27 + 8))(v29, v26);
        swift_unknownObjectRelease();
        v62 = 37;
        goto LABEL_34;
      }
    }
  }

LABEL_11:
  (*(v27 + 8))(v29, v26);
  swift_unknownObjectRelease();
LABEL_12:
  v47 = v92;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t static FontBox.deserialize(from:)(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(*(v1 + 152) + 16) + 16))(v3);
  if (!v2)
  {
    return FontBox.__allocating_init(_:)(v5);
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance FontBox<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static FontBox.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance Font.SystemProvider@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.SystemProvider@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 17) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance Font.PrivateSystemDesignProvider@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.PrivateSystemDesignProvider@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = MEMORY[0x193ABEC20](a1[2], a1[3]);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = result;
  return result;
}

void protocol witness for CodableByProxy.codingProxy.getter in conformance Font.TextStyleProvider(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.TextStyleProvider@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance Font.PrivateTextStyleProvider@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v3)
  {
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    result = 0;
    v10 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = result;
  *(a1 + 24) = v10;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.PrivateTextStyleProvider@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = MEMORY[0x193ABEC20](*a1, *(a1 + 8));
  if (v4)
  {
    result = MEMORY[0x193ABEC20](v3, v4);
  }

  else
  {
    result = 0;
  }

  *a2 = v7;
  *(a2 + 8) = result;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance Font.NamedProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.NamedProvider@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

void *Font.ModifierProvider.tag.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*(a1 + 24) + 24))(&v4, *(a1 + 16));
  *a2 = v4;
  return result;
}

uint64_t Font.ModifierProvider.codingProxy.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  (*(v10 + 16))(v7, &v2[*(v9 + 36)], v4, v5);
  *a2 = v8;
  v11 = type metadata accessor for Font.ModifierDefinition();
  ProxyCodable.init(wrappedValue:)(v7, v4, a2 + *(v11 + 36));
}

uint64_t static Font.ModifierProvider.unwrap(codingProxy:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Font.ModifierDefinition();
  v9 = *a1;
  Font.ModifierDefinition.modifier.getter(v8, v7);
  Font.ModifierProvider.init(base:modifier:)(v9, v7, a2, a3);
}

uint64_t Font.ModifierDefinition.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ProxyCodable();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v2 + *(a1 + 36), v7);
  return (*(*(v5 - 8) + 32))(a2, v9, v5);
}

void *Font.StaticModifierProvider.tag.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(a2 + 8))(&v5, a1, a2);
  *a3 = v5 | 0x10;
  return result;
}

uint64_t static Font.StaticModifierProvider.unwrap(codingProxy:)(void *a1, uint64_t a2)
{
  v2 = _ViewInputs.base.modify(*a1, a2);

  return v2;
}

uint64_t Font.SystemFontDefinition.encode(to:)(void *a1)
{
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.SystemFontDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys, &unk_1F006D528, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = *v1;
  v23 = v1[1];
  v9 = *(v1 + 16);
  v21 = *(v1 + 17);
  v22 = v9;
  v19 = *(v1 + 18);
  v20 = v1[3];
  v10 = *(v1 + 32);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  lazy protocol witness table accessor for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = v8;
  v26 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v18 = v10;
    v15 = v20;
    v24 = v23;
    v16 = v21;
    v25 = v22;
    v26 = 1;
    type metadata accessor for ProxyCodable<Font.Weight?>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Weight?>, &lazy cache variable for type metadata for Font.Weight?, &type metadata for Font.Weight, lazy protocol witness table accessor for type Font.Weight? and conformance <A> A?);
    lazy protocol witness table accessor for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v24) = v16;
    v26 = 2;
    type metadata accessor for ProxyCodable<Font.Weight?>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Design?>, &lazy cache variable for type metadata for Font.Design?, &type metadata for Font.Design, lazy protocol witness table accessor for type Font.Design? and conformance <A> A?);
    lazy protocol witness table accessor for type ProxyCodable<Font.Design?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Design?> and conformance ProxyCodable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v24) = v19;
    v26 = 3;
    lazy protocol witness table accessor for type Font.TextStyle and conformance Font.TextStyle();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = v15;
    v25 = v18;
    v26 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v14);
}

uint64_t Font.SystemFontDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.SystemFontDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys, &unk_1F006D528, MEMORY[0x1E69E6F48]);
  v24 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v28 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys();
  v8 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v21 = a1;
  }

  else
  {
    v22 = a1;
    v9 = v5;
    v10 = v23;
    v27 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v11 = v24;
    v12 = v8;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v25;
    type metadata accessor for ProxyCodable<Font.Weight?>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Weight?>, &lazy cache variable for type metadata for Font.Weight?, &type metadata for Font.Weight, lazy protocol witness table accessor for type Font.Weight? and conformance <A> A?);
    v27 = 1;
    lazy protocol witness table accessor for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v25;
    v28 = v26;
    type metadata accessor for ProxyCodable<Font.Weight?>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Design?>, &lazy cache variable for type metadata for Font.Design?, &type metadata for Font.Design, lazy protocol witness table accessor for type Font.Design? and conformance <A> A?);
    v27 = 2;
    lazy protocol witness table accessor for type ProxyCodable<Font.Design?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Design?> and conformance ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v25;
    v27 = 3;
    lazy protocol witness table accessor for type Font.TextStyle and conformance Font.TextStyle();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v25;
    v27 = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v9 + 8))(v12, v11);
    v18 = v25;
    v19 = v26;
    v20 = v28;
    *v10 = v13;
    *(v10 + 8) = v14;
    *(v10 + 16) = v20;
    *(v10 + 17) = v16;
    *(v10 + 18) = v17;
    *(v10 + 24) = v18;
    *(v10 + 32) = v19;
    v21 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t Font.PrivateSystemFontDefinition.encode(to:)(void *a1)
{
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.PrivateSystemFontDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys, &unk_1F006D498, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v13[1] = v1[3];
  v13[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v10;
  v14 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = v9;
    v14 = 1;
    type metadata accessor for ProxyCodable<Font.Weight>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Weight>);
    lazy protocol witness table accessor for type ProxyCodable<Font.Weight> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Weight> and conformance ProxyCodable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Font.PrivateSystemFontDefinition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.PrivateSystemFontDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys, &unk_1F006D498, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v18;
    v19 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v20;
    type metadata accessor for ProxyCodable<Font.Weight>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Weight>);
    v19 = 1;
    lazy protocol witness table accessor for type ProxyCodable<Font.Weight> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Weight> and conformance ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v9;
    v13 = v20;
    LOBYTE(v20) = 2;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    (*(v12 + 8))(v8, v5);
    *v10 = v11;
    v10[1] = v13;
    v10[2] = v15;
    v10[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.SystemFontDefinition.CodingKeys()
{
  v1 = *v0;
  v2 = 1702521203;
  v3 = 0x6E6769736564;
  v4 = 0x6C79745374786574;
  if (v1 != 3)
  {
    v4 = 0x536D756D6978616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696577;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.SystemFontDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Font.SystemFontDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.SystemFontDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.SystemFontDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.PrivateSystemFontDefinition.CodingKeys()
{
  v1 = 0x746867696577;
  if (*v0 != 1)
  {
    v1 = 0x6E6769736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.PrivateSystemFontDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Font.PrivateSystemFontDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.PrivateSystemFontDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.PrivateSystemFontDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.StyleDefinition.encode(to:)(void *a1)
{
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.StyleDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys, &unk_1F006D408, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *v1;
  v15 = v1[1];
  v14 = *(v1 + 1);
  HIDWORD(v13) = v1[16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = v8;
  v22 = 0;
  lazy protocol witness table accessor for type Font.TextStyle and conformance Font.TextStyle();
  v9 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {
    v10 = BYTE4(v13);
    v11 = v14;
    v21 = v15;
    v20 = 1;
    type metadata accessor for ProxyCodable<Font.Weight?>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Design?>, &lazy cache variable for type metadata for Font.Design?, &type metadata for Font.Design, lazy protocol witness table accessor for type Font.Design? and conformance <A> A?);
    lazy protocol witness table accessor for type ProxyCodable<Font.Design?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Design?> and conformance ProxyCodable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v11;
    v18 = v10;
    v19 = 2;
    type metadata accessor for ProxyCodable<Font.Weight?>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Weight?>, &lazy cache variable for type metadata for Font.Weight?, &type metadata for Font.Weight, lazy protocol witness table accessor for type Font.Weight? and conformance <A> A?);
    lazy protocol witness table accessor for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Font.StyleDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.StyleDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys, &unk_1F006D408, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v18;
    v24 = 0;
    lazy protocol witness table accessor for type Font.TextStyle and conformance Font.TextStyle();
    v11 = v5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v25;
    type metadata accessor for ProxyCodable<Font.Weight?>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Design?>, &lazy cache variable for type metadata for Font.Design?, &type metadata for Font.Design, lazy protocol witness table accessor for type Font.Design? and conformance <A> A?);
    v22 = 1;
    lazy protocol witness table accessor for type ProxyCodable<Font.Design?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Design?> and conformance ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v9;
    LOBYTE(v9) = v23;
    type metadata accessor for ProxyCodable<Font.Weight?>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Weight?>, &lazy cache variable for type metadata for Font.Weight?, &type metadata for Font.Weight, lazy protocol witness table accessor for type Font.Weight? and conformance <A> A?);
    v21 = 2;
    lazy protocol witness table accessor for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v8, v11);
    v15 = v19;
    v16 = v20;
    *v10 = v12;
    *(v10 + 1) = v9;
    *(v10 + 8) = v15;
    *(v10 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.StyleDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.StyleDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.PrivateStyleDefinition.encode(to:)(void *a1)
{
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.PrivateStyleDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys, &unk_1F006D378, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *(v1 + 16);
  v13[1] = *(v1 + 24);
  v13[2] = v8;
  v13[0] = *(v1 + 32);
  v15 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  v9 = v13[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v9)
  {
    v10 = v15;
    v11 = v13[0];
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13[4] = v11;
    v14 = v10;
    v16 = 2;
    type metadata accessor for ProxyCodable<Font.Weight?>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Weight?>, &lazy cache variable for type metadata for Font.Weight?, &type metadata for Font.Weight, lazy protocol witness table accessor for type Font.Weight? and conformance <A> A?);
    lazy protocol witness table accessor for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Font.PrivateStyleDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.PrivateStyleDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys, &unk_1F006D378, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v24;
  v29 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v23 = v11;
  v28 = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v22 = v14;
  type metadata accessor for ProxyCodable<Font.Weight?>(0, &lazy cache variable for type metadata for ProxyCodable<Font.Weight?>, &lazy cache variable for type metadata for Font.Weight?, &type metadata for Font.Weight, lazy protocol witness table accessor for type Font.Weight? and conformance <A> A?);
  v27 = 2;
  lazy protocol witness table accessor for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v9 + 8))(v8, v5);
  v17 = v25;
  v18 = v26;
  v19 = v22;
  *v10 = v23;
  *(v10 + 8) = v13;
  *(v10 + 16) = v19;
  *(v10 + 24) = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.PrivateStyleDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.PrivateStyleDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.NamedFontDefinition.encode(to:)(void *a1)
{
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.NamedFontDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys, &unk_1F006D2E8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *(v1 + 16);
  v13 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  v9 = v14;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v9)
  {
    v10 = v13;
    v18 = v8;
    v17 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v10;
    v15 = 2;
    lazy protocol witness table accessor for type Font.TextStyle and conformance Font.TextStyle();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Font.NamedFontDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  type metadata accessor for FontBox<Font.DefaultProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.NamedFontDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys, &unk_1F006D2E8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v18;
  v23 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v21 = 1;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v22;
  v19 = 2;
  lazy protocol witness table accessor for type Font.TextStyle and conformance Font.TextStyle();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v9 + 8))(v8, v5);
  v17 = v20;
  *v10 = v14;
  *(v10 + 8) = v13;
  *(v10 + 16) = v15;
  *(v10 + 24) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Font.ModifierDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953394534 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265696669646F6DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t Font.ModifierDefinition.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7265696669646F6DLL;
  }

  else
  {
    return 1953394534;
  }
}

uint64_t Font.ModifierDefinition.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v12[1] = *(a2 + 24);
  v12[2] = v4;
  type metadata accessor for Font.ModifierDefinition.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v12[3];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v9;
  v14 = 0;
  type metadata accessor for ProxyCodable<Font.Weight>(0, &lazy cache variable for type metadata for ProxyCodable<Font>);
  lazy protocol witness table accessor for type ProxyCodable<Font> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font> and conformance ProxyCodable<A>);

  v10 = v12[4];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v10)
  {
    v13 = 1;
    type metadata accessor for ProxyCodable();
    swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Font.ModifierDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v23 = type metadata accessor for ProxyCodable();
  v19 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v18 - v3;
  type metadata accessor for Font.ModifierDefinition.CodingKeys();
  swift_getWitnessTable();
  v25 = type metadata accessor for KeyedDecodingContainer();
  v21 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Font.ModifierDefinition();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v18 - v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v5;
  v9 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v9)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v10 = v6;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  type metadata accessor for ProxyCodable<Font.Weight>(0, &lazy cache variable for type metadata for ProxyCodable<Font>);
  v28 = 0;
  lazy protocol witness table accessor for type ProxyCodable<Font> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font> and conformance ProxyCodable<A>);
  v14 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v8;
  *v8 = v29;
  v27 = 1;
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 8))(v14, v25);
  (*(v19 + 32))(v8 + *(v10 + 36), v12, v13);
  v16 = v18;
  (*(v18 + 16))(v20, v15, v10);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return (*(v16 + 8))(v15, v10);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.NamedFontDefinition.CodingKeys()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x6C79745374786574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.NamedFontDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Font.NamedFontDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.NamedFontDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.NamedFontDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.ModifierDefinition<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Font.ModifierDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.ModifierDefinition<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.ModifierDefinition<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type Font.NamedProvider and conformance Font.NamedProvider()
{
  result = lazy protocol witness table cache variable for type Font.NamedProvider and conformance Font.NamedProvider;
  if (!lazy protocol witness table cache variable for type Font.NamedProvider and conformance Font.NamedProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.NamedProvider and conformance Font.NamedProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.NamedProvider and conformance Font.NamedProvider;
  if (!lazy protocol witness table cache variable for type Font.NamedProvider and conformance Font.NamedProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.NamedProvider and conformance Font.NamedProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.NamedProvider and conformance Font.NamedProvider;
  if (!lazy protocol witness table cache variable for type Font.NamedProvider and conformance Font.NamedProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.NamedProvider and conformance Font.NamedProvider);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FontBox<Font.DefaultProvider> and conformance FontBox<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FontBox<Font.DefaultProvider>(255, a2, a3, a4, type metadata accessor for FontBox);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider()
{
  result = lazy protocol witness table cache variable for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider;
  if (!lazy protocol witness table cache variable for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider;
  if (!lazy protocol witness table cache variable for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider;
  if (!lazy protocol witness table cache variable for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateSystemDesignProvider and conformance Font.PrivateSystemDesignProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.StaticModifierCodingKeys and conformance Font.ProviderTag.StaticModifierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.ModifierCodingKeys and conformance Font.ProviderTag.ModifierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.DefaultCodingKeys and conformance Font.ProviderTag.DefaultCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.NamedCodingKeys and conformance Font.ProviderTag.NamedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag._styleCodingKeys and conformance Font.ProviderTag._styleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.StyleCodingKeys and conformance Font.ProviderTag.StyleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag._systemCodingKeys and conformance Font.ProviderTag._systemCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.SystemCodingKeys and conformance Font.ProviderTag.SystemCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.PlatformCodingKeys and conformance Font.ProviderTag.PlatformCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ProviderTag.CodingKeys and conformance Font.ProviderTag.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierTag and conformance Font.StaticModifierTag()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag and conformance Font.StaticModifierTag;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag and conformance Font.StaticModifierTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag and conformance Font.StaticModifierTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag and conformance Font.StaticModifierTag;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag and conformance Font.StaticModifierTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag and conformance Font.StaticModifierTag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyFontBox and conformance AnyFontBox()
{
  result = lazy protocol witness table cache variable for type AnyFontBox and conformance AnyFontBox;
  if (!lazy protocol witness table cache variable for type AnyFontBox and conformance AnyFontBox)
  {
    type metadata accessor for AnyFontBox();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyFontBox and conformance AnyFontBox);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Font.ProviderTag(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Font.ProviderTag and conformance Font.ProviderTag();
  result = lazy protocol witness table accessor for type Font.ProviderTag and conformance Font.ProviderTag();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Font.ProviderTag(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    goto LABEL_17;
  }

  if ((a2 + 254) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 254) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 254;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 254;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 254;
    }
  }

LABEL_17:
  if ((~*a1 & 0x30) != 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for Font.ProviderTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 254 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 254) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 2)
  {
    v4 = 0;
  }

  if (a2 > 1)
  {
    v5 = ((a2 - 2) >> 8) + 1;
    *result = a2 - 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for Font.ProviderTag(unsigned __int8 *a1)
{
  v1 = *a1;
  if (((v1 >> 4) & 2) != 0)
  {
    return (v1 & 0xF | (16 * (v1 >> 6))) + 2;
  }

  else
  {
    return (v1 >> 4) & 3;
  }
}

_BYTE *destructiveInjectEnumTag for Font.ProviderTag(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xCF | (16 * a2);
  }

  else
  {
    *result = (4 * (a2 - 2)) & 0xC0 | (a2 - 2) & 0xF | 0x20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.NamedFontDefinition and conformance Font.NamedFontDefinition()
{
  result = lazy protocol witness table cache variable for type Font.NamedFontDefinition and conformance Font.NamedFontDefinition;
  if (!lazy protocol witness table cache variable for type Font.NamedFontDefinition and conformance Font.NamedFontDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.NamedFontDefinition and conformance Font.NamedFontDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.NamedFontDefinition and conformance Font.NamedFontDefinition;
  if (!lazy protocol witness table cache variable for type Font.NamedFontDefinition and conformance Font.NamedFontDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.NamedFontDefinition and conformance Font.NamedFontDefinition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.PrivateStyleDefinition and conformance Font.PrivateStyleDefinition()
{
  result = lazy protocol witness table cache variable for type Font.PrivateStyleDefinition and conformance Font.PrivateStyleDefinition;
  if (!lazy protocol witness table cache variable for type Font.PrivateStyleDefinition and conformance Font.PrivateStyleDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateStyleDefinition and conformance Font.PrivateStyleDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateStyleDefinition and conformance Font.PrivateStyleDefinition;
  if (!lazy protocol witness table cache variable for type Font.PrivateStyleDefinition and conformance Font.PrivateStyleDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateStyleDefinition and conformance Font.PrivateStyleDefinition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.PrivateSystemFontDefinition and conformance Font.PrivateSystemFontDefinition()
{
  result = lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition and conformance Font.PrivateSystemFontDefinition;
  if (!lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition and conformance Font.PrivateSystemFontDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition and conformance Font.PrivateSystemFontDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition and conformance Font.PrivateSystemFontDefinition;
  if (!lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition and conformance Font.PrivateSystemFontDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition and conformance Font.PrivateSystemFontDefinition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.SystemFontDefinition and conformance Font.SystemFontDefinition()
{
  result = lazy protocol witness table cache variable for type Font.SystemFontDefinition and conformance Font.SystemFontDefinition;
  if (!lazy protocol witness table cache variable for type Font.SystemFontDefinition and conformance Font.SystemFontDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.SystemFontDefinition and conformance Font.SystemFontDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.SystemFontDefinition and conformance Font.SystemFontDefinition;
  if (!lazy protocol witness table cache variable for type Font.SystemFontDefinition and conformance Font.SystemFontDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.SystemFontDefinition and conformance Font.SystemFontDefinition);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for FontBox<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.StaticModifierProvider<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = static Font.StaticModifierProvider.unwrap(codingProxy:)(a1, *(a2 + 16));
  *a3 = result;
  return result;
}

uint64_t specialized Font.ProviderTag.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D65747379735FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C7974735FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656D616ELL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7265696669646F6DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F4D636974617473 && a2 == 0xEE00726569666964)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.SystemFontDefinition.CodingKeys and conformance Font.SystemFontDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.Weight? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Font.Weight? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Font.Weight? and conformance <A> A?)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Font.Weight?);
    lazy protocol witness table accessor for type Font.Weight and conformance Font.Weight();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Weight? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.Weight and conformance Font.Weight()
{
  result = lazy protocol witness table cache variable for type Font.Weight and conformance Font.Weight;
  if (!lazy protocol witness table cache variable for type Font.Weight and conformance Font.Weight)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Weight and conformance Font.Weight);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.Weight and conformance Font.Weight;
  if (!lazy protocol witness table cache variable for type Font.Weight and conformance Font.Weight)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Weight and conformance Font.Weight);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<Font.Weight?> and conformance ProxyCodable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProxyCodable<Font.Weight?>(255, &lazy cache variable for type metadata for ProxyCodable<Font.Weight?>, &lazy cache variable for type metadata for Font.Weight?, &type metadata for Font.Weight, lazy protocol witness table accessor for type Font.Weight? and conformance <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ProxyCodable<Font.Weight?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for HitTestableEvent?(255, a3);
    a5();
    v7 = type metadata accessor for ProxyCodable();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.Design? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Font.Design? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Font.Design? and conformance <A> A?)
  {
    type metadata accessor for HitTestableEvent?(255, &lazy cache variable for type metadata for Font.Design?);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Design? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<Font.Design?> and conformance ProxyCodable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProxyCodable<Font.Weight?>(255, &lazy cache variable for type metadata for ProxyCodable<Font.Design?>, &lazy cache variable for type metadata for Font.Design?, &type metadata for Font.Design, lazy protocol witness table accessor for type Font.Design? and conformance <A> A?);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.TextStyle and conformance Font.TextStyle()
{
  result = lazy protocol witness table cache variable for type Font.TextStyle and conformance Font.TextStyle;
  if (!lazy protocol witness table cache variable for type Font.TextStyle and conformance Font.TextStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle and conformance Font.TextStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle and conformance Font.TextStyle;
  if (!lazy protocol witness table cache variable for type Font.TextStyle and conformance Font.TextStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle and conformance Font.TextStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.TextStyle and conformance Font.TextStyle;
  if (!lazy protocol witness table cache variable for type Font.TextStyle and conformance Font.TextStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.TextStyle and conformance Font.TextStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateSystemFontDefinition.CodingKeys and conformance Font.PrivateSystemFontDefinition.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<Font.Weight> and conformance ProxyCodable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProxyCodable<Font.Weight>(255, &lazy cache variable for type metadata for ProxyCodable<Font.Weight>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StyleDefinition.CodingKeys and conformance Font.StyleDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateStyleDefinition.CodingKeys and conformance Font.PrivateStyleDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.NamedFontDefinition.CodingKeys and conformance Font.NamedFontDefinition.CodingKeys);
  }

  return result;
}

void type metadata accessor for ProxyCodable<Font.Weight>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for ProxyCodable();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<Font> and conformance ProxyCodable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProxyCodable<Font.Weight>(255, &lazy cache variable for type metadata for ProxyCodable<Font>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Font.SystemFontDefinition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 17);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 17);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for Font.SystemFontDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 4;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Font.PrivateSystemFontDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for Font.PrivateSystemFontDefinition(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for Font.PrivateSystemFontDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for Font.StyleDefinition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 1);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 1);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for Font.StyleDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 4;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Font.PrivateStyleDefinition(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for Font.PrivateStyleDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  return a1;
}

uint64_t assignWithTake for Font.PrivateStyleDefinition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for Font.PrivateStyleDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Font.PrivateStyleDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Font.NamedFontDefinition(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for Font.NamedFontDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for Font.NamedFontDefinition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for Font.NamedFontDefinition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Font.NamedFontDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for Font.ModifierDefinition(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v9 + 8) & ~v9) + v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
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
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_58:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v21 = (&a1[v9 + 8] & ~v9);
    if (v7 >= a2)
    {
      v25 = *(v6 + 56);

      v25(v21);
    }

    else
    {
      if (v10 <= 3)
      {
        v22 = ~(-1 << (8 * v10));
      }

      else
      {
        v22 = -1;
      }

      if (v10)
      {
        v23 = v22 & (~v7 + a2);
        if (v10 <= 3)
        {
          v24 = v10;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v10);
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

    *a1 = v20;
  }
}

uint64_t specialized Font.SystemFontDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6769736564 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79745374786574 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x536D756D6978616DLL && a2 == 0xEB00000000657A69)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized Font.PrivateSystemFontDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6769736564 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized Font.StyleDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6769736564 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized Font.NamedFontDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374786574 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void PanEvent.location.setter(double a1, double a2)
{
  *v2 = a1;
  v2[1] = a2;
  v2[7] = a1;
  v2[8] = a2;
}

__n128 PanEvent.location.modify(__n128 **a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    result = **a1;
    *(*a1 + 56) = result;
  }

  return result;
}

double PanEvent.timestamp.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

double PanEvent.timestamp.setter(double *a1)
{
  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

uint64_t PanEvent.binding.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
  return result;
}

void PanEvent.customHitTestOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
}

uint64_t PanEvent.customHitTestOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t PanEvent.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(*(v4 + 8) + 8))(&v39, v5);
  v6 = LOBYTE(v39);
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(*(v7 + 8) + 16))(&v39, v8);
  v9 = v39;
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(*(v10 + 8) + 24))(&v39, v11);
  v12 = v39;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v17 = v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 32))(v18, v19);
  v22 = v21;
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(*(v23 + 16) + 8))(&v39, v24);
  LOBYTE(v19) = LOBYTE(v39);
  v26 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(*(v25 + 8) + 48))(&v39, v26);
  v27 = v39;
  LOBYTE(v26) = v40;
  *&v33 = v15;
  *(&v33 + 1) = v17;
  *&v34 = v20;
  *(&v34 + 1) = v22;
  LOBYTE(v35) = v6;
  *(&v35 + 1) = v9;
  *&v36 = v12;
  *(&v36 + 1) = v15;
  *&v37 = v17;
  *(&v37 + 1) = v20;
  *v38 = v22;
  v38[8] = v19;
  *&v38[16] = v39;
  v38[24] = v40;
  v28 = v34;
  *a2 = v33;
  a2[1] = v28;
  v29 = v35;
  v30 = v36;
  *(a2 + 89) = *&v38[9];
  v31 = *v38;
  a2[4] = v37;
  a2[5] = v31;
  a2[2] = v29;
  a2[3] = v30;
  outlined init with copy of PanEvent(&v33, &v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39 = v15;
  v40 = v17;
  v41 = v20;
  v42 = v22;
  v43 = v6;
  v44 = v9;
  v45 = v12;
  v46 = v15;
  v47 = v17;
  v48 = v20;
  v49 = v22;
  v50 = v19;
  v51 = v27;
  v52 = v26;
  return outlined destroy of PanEvent(&v39);
}

uint64_t outlined init with copy of PanEvent(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v3;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  v4 = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 96) = v4;

  return a2;
}

char *PanEvent.init(globalLocation:phase:timestamp:globalTranslation:touchType:)@<X0>(char *result@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *result;
  v9 = *a2;
  v10 = *a3;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  *(a4 + 72) = a7;
  *(a4 + 80) = a8;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  *(a4 + 88) = v10;
  *(a4 + 48) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = 1;
  return result;
}

double PanEvent.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v13);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for PanEventType);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v11, v14);
    outlined init with copy of AnyTrackedValue(v14, v8);
    PanEvent.init(_:)(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v4 = v10[0];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v4;
    *(a2 + 89) = *(v10 + 9);
    v5 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v5;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of PanEventType?(v11);
    *&v6 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 1;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0;
  }

  return *&v6;
}

uint64_t outlined destroy of PanEventType?(uint64_t a1)
{
  type metadata accessor for PanEventType?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for PanEventType?()
{
  if (!lazy cache variable for type metadata for PanEventType?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for PanEventType);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PanEventType?);
    }
  }
}

void protocol witness for SpatialEventType.location.setter in conformance PanEvent(double a1, double a2)
{
  *v2 = a1;
  v2[1] = a2;
  v2[7] = a1;
  v2[8] = a2;
}

double protocol witness for EventType.timestamp.getter in conformance PanEvent@<D0>(double *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

uint64_t protocol witness for EventType.binding.setter in conformance PanEvent(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
  return result;
}

void protocol witness for EventType.customHitTestOptions.getter in conformance PanEvent(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
}

uint64_t specialized static PanEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 32) == *(a2 + 32))
  {
    v4 = *(a1 + 48);
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    v9 = *(a1 + 88);
    v10 = *(a1 + 96);
    v11 = *(a1 + 104);
    v12 = *(a2 + 48);
    v13 = *(a2 + 56);
    if (v4)
    {
      if (v12)
      {
        result = 0;
        if (v4 != v12 || v6 != v13)
        {
          return result;
        }

LABEL_14:
        if (v5 != *(a2 + 64) || v8 != *(a2 + 72) || v7 != *(a2 + 80) || v9 != *(a2 + 88))
        {
          return result;
        }

        if (v11)
        {
          if (*(a2 + 104))
          {
            return 1;
          }
        }

        else
        {
          if (v10 == *(a2 + 96))
          {
            v14 = *(a2 + 104);
          }

          else
          {
            v14 = 1;
          }

          if ((v14 & 1) == 0)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else if (!v12)
    {
      result = 0;
      if (v6 != v13)
      {
        return result;
      }

      goto LABEL_14;
    }

    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for PanEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v5;

  return a1;
}

uint64_t assignWithCopy for PanEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v4;
  return a1;
}

uint64_t assignWithTake for PanEvent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for PanEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PanEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI19CAHostingLayerEventV11MouseButtonVG_AH8ResolvedVs5NeverOTg5(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v29 = v32;
    v7 = a3 + 56;
    v8 = _HashTable.startBucket.getter();
    v9 = 0;
    v26 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a3 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      v28 = v9;
      v12 = *(a3 + 36);
      v30 = *(*(a3 + 48) + 8 * v8);
      a1(v31, &v30);
      if (v3)
      {
        goto LABEL_27;
      }

      v13 = v29;
      v32 = v29;
      v15 = *(v29 + 16);
      v14 = *(v29 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v13 = v32;
      }

      *(v13 + 16) = v15 + 1;
      v16 = (v13 + 48 * v15);
      v17 = v31[0];
      v18 = v31[2];
      v16[3] = v31[1];
      v16[4] = v18;
      v16[2] = v17;
      v10 = 1 << *(a3 + 32);
      if (v8 >= v10)
      {
        goto LABEL_24;
      }

      v19 = *(v7 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      v29 = v13;
      if (v12 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (a3 + 64 + 8 * v11);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v8, v12, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v8, v12, 0);
      }

LABEL_4:
      v9 = v28 + 1;
      v8 = v10;
      if (v28 + 1 == v26)
      {
        return v29;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI15SelectionRangesOy10Foundation16AttributedStringV5IndexVG_So7NSValueCs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  type metadata accessor for Range<AttributedString.Index>(0, &lazy cache variable for type metadata for Range<AttributedString.Index>, MEMORY[0x1E69E66A8]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = v29 - v5;
  type metadata accessor for Range<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v7 = v6;
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v31 = v29 - v8;
  type metadata accessor for Range<AttributedString.Index>(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v30 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - v11;
  type metadata accessor for Range<AttributedString.Index>(0, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>, type metadata accessor for SelectionRanges);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  v16 = specialized Collection.count.getter();
  result = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v36 = v3;
    v40 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v29[1] = v2;
    outlined init with copy of SelectionRanges<AttributedString.Index>(v2, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v15;
      v20 = v30;
      (*(v10 + 32))(v12, v19, v30);
      v21 = v31;
      RangeSet.ranges.getter();
      v22 = RangeSet.Ranges.startIndex.getter();
      (*(v32 + 8))(v21, v7);
      v23 = *(v10 + 8);
      v10 += 8;
      v23(v12, v20);
    }

    else
    {
      outlined destroy of Range<AttributedString.Index>(v15, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>, type metadata accessor for SelectionRanges);
      v22 = 0;
    }

    v38 = v22;
    v39 = EnumCaseMultiPayload == 1;
    if ((v16 & 0x8000000000000000) == 0)
    {
      for (i = 0; i < v16; ++i)
      {
        v25 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }

        v26 = v38;
        v27 = v39;
        v10 = v33;
        specialized SelectionRanges.subscript.getter(v38, v39, v33);
        v28 = v36;
        v34(&v37, v10);
        v36 = v28;
        if (v28)
        {
          goto LABEL_16;
        }

        outlined destroy of Range<AttributedString.Index>(v10, &lazy cache variable for type metadata for Range<AttributedString.Index>, MEMORY[0x1E69E66A8]);
        v10 = v37;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        specialized SelectionRanges.index(after:)(v26, v27, &v38);
        if (v25 == v16)
        {
          return v40;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    outlined destroy of Range<AttributedString.Index>(v10, &lazy cache variable for type metadata for Range<AttributedString.Index>, MEMORY[0x1E69E66A8]);

    __break(1u);
  }

  return result;
}

void _DynamicPropertyBuffer.getState<A>(type:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Binding();
  v23 = type metadata accessor for Optional();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v9 = &v21 - v8;
  v10 = *(v2 + 3);
  if (!v10)
  {
    v17 = *(v5 - 8);
LABEL_11:
    v18 = v17;
    v20 = 1;
    goto LABEL_13;
  }

  v22 = a2;
  v11 = *v2;
  if (*v2)
  {
    v12 = 0;
    v13 = (v6 + 8);
    v14 = v10 - 1;
    v21 = (v5 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    while (1)
    {
      v15 = (v11 + v12);
      if (v14)
      {
        v12 += *(v15 + 2);
      }

      else
      {
        v12 = 0;
      }

      v16 = *v15;
      v24 = v15;
      (*(v16 + 128))(&v24, a1, a1, v7);
      v17 = *(v5 - 8);
      v18 = v17;
      if ((*(v17 + 48))(v9, 1, v5) != 1)
      {
        break;
      }

      v19 = v14 | v12;
      (*v13)(v9, v23);
      --v14;
      if (!v19)
      {
        a2 = v22;
        goto LABEL_11;
      }
    }

    a2 = v22;
    (*(v17 + 32))(v22, v9, v5);
    v20 = 0;
LABEL_13:
    (*(v18 + 56))(a2, v20, 1, v5);
    return;
  }

  __break(1u);
}

double _DynamicPropertyBuffer.init<A>(fields:container:inputs:baseOffset:)@<D0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  v10 = *(a1 + 5);
  v11 = *a2;
  v17 = 0;
  v18 = 0.0;
  v14[0] = v7;
  v14[1] = v8;
  v15 = v9;
  v16 = v10;
  v13 = v11;
  _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(v14, &v13, a3, a4, a5);
  outlined consume of DynamicPropertyCache.Fields.Layout();
  *a6 = v17;
  result = v18;
  a6[1] = v18;
  return result;
}

uint64_t _DynamicPropertyBuffer.applyChanged(to:)(uint64_t result)
{
  v2 = *(v1 + 3);
  if (v2)
  {
    v3 = *v1;
    if (*v1)
    {
      v4 = result;
      v5 = 0;
      v6 = v2 - 1;
      while (1)
      {
        v8 = v3 + v5;
        if (v6)
        {
          v5 += *(v8 + 8);
          v9 = *(v8 + 12);
          if (v9 < 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v5 = 0;
          v9 = *(v8 + 12);
          if (v9 < 0)
          {
LABEL_9:
            result = v4(v9 & 0x7FFFFFFF);
          }
        }

        if (!(v6-- | v5))
        {
          return result;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static BoxVTableBase.getState<A>(elt:type:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Binding();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static BoxVTable.getState<A>(elt:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 136);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v3 + 144) + 48))(a2, a3, v6);
}

uint64_t static EnumVTable.reset(elt:)(uint64_t result)
{
  v1 = *result;
  if ((*(*result + 40) & 1) == 0)
  {
    v2 = *(v1 + 32);
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *(v1 + 16);
      if (v2 < *(v3 + 16))
      {
        v4 = v3 + 24 * v2;
        v5 = *(v4 + 52);
        if (!v5)
        {
LABEL_11:
          *(v1 + 24) = 0;
          *(v1 + 32) = 0;
          *(v1 + 40) = 1;
          return result;
        }

        v6 = *(v4 + 40);
        if (v6)
        {
          v7 = 0;
          v8 = v5 - 1;
          do
          {
            v11 = (v6 + v7);
            if (v8)
            {
              v7 += *(v11 + 2);
            }

            else
            {
              v7 = 0;
            }

            v9 = v8 | v7;
            v10 = *v11;
            v12 = v11;
            result = (*(v10 + 112))(&v12);
            --v8;
          }

          while (v9);
          goto LABEL_11;
        }

LABEL_15:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

void static EnumVTable.getState<A>(elt:type:)(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 40))
  {
    v5 = type metadata accessor for Binding();
    v6 = *(*(v5 - 8) + 56);

    v6(a3, 1, 1, v5);
  }

  else
  {
    v7 = *(v3 + 32);
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(*(v3 + 16) + 16))
    {
      _DynamicPropertyBuffer.getState<A>(type:)(a2, a3);
      return;
    }

    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index()
{
  result = lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index;
  if (!lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index)
  {
    type metadata accessor for AttributedString.Index();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index);
  }

  return result;
}

void type metadata accessor for Range<AttributedString.Index>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of SelectionRanges<AttributedString.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Range<AttributedString.Index>(0, &lazy cache variable for type metadata for SelectionRanges<AttributedString.Index>, type metadata accessor for SelectionRanges);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Range<AttributedString.Index>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  type metadata accessor for Range<AttributedString.Index>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized _DynamicPropertyBuffer.applyChanged(to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(result + 12);
  if (v5)
  {
    v6 = *result;
    if (*result)
    {
      v10 = 0;
      v11 = a4 & 0xFFFFFFFF00000000;
      v12 = v5 - 1;
      v13 = a4 & 1;
      while (1)
      {
        v15 = v6 + v10;
        if (v12)
        {
          v10 += *(v15 + 8);
          v16 = *(v15 + 12);
          if (v16 < 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v10 = 0;
          v16 = *(v15 + 12);
          if (v16 < 0)
          {
LABEL_9:
            result = closure #2 in changedBodyProperties<A>(of:)(v16 & 0x7FFFFFFF, a2, a3, v11 | v13, a5);
          }
        }

        if (!(v12-- | v10))
        {
          return result;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t assignWithCopy for EnumBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  return a1;
}

AXChartDescriptor __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AccessibilityChartDescriptorStorage.resolve()()
{
  result.super.isa = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RepresentableChartDescriptorStorage.__allocating_init(_:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 68) = 0;
  outlined init with take of AnyTrackedValue(a1, v2 + 16);
  return v2;
}

uint64_t RepresentableChartDescriptorStorage.init(_:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 68) = 0;
  outlined init with take of AnyTrackedValue(a1, v1 + 16);
  return v1;
}

Swift::Void __swiftcall RepresentableChartDescriptorStorage.reset()()
{
  *(v0 + 68) = 0;
  *(v0 + 64) = 0;
  v1 = *(v0 + 56);
  *(v0 + 56) = 0;
}

uint64_t RepresentableChartDescriptorStorage.markNeedsUpdate(_:)(uint64_t *a1)
{
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v1 + 16), a1);
  result = swift_endAccess();
  v4 = *(v1 + 68);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 68) = v6;
    *(v1 + 64) = 1;
  }

  return result;
}

AXChartDescriptor __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RepresentableChartDescriptorStorage.resolve()()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    if (*(v0 + 64) == 1)
    {
      swift_beginAccess();
      outlined init with copy of AnyTrackedValue(v0 + 16, v12);
      v2 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v3 = *(v2 + 16);
      v4 = v1;
      v3();
      __swift_destroy_boxed_opaque_existential_1(v12);
      *(v0 + 64) = 0;
      return v4;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    swift_beginAccess();
    outlined init with copy of AnyTrackedValue(v0 + 16, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = v0;
    v9 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v10 = *(v8 + 56);
    *(v8 + 56) = v9;
    v11 = v9;

    *(v8 + 64) = 0;
    return v11;
  }
}

uint64_t RepresentableChartDescriptorStorage.isEqual(to:)()
{
  v6 = *MEMORY[0x1E69E9840];
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(v0 + 68) == *(result + 68))
    {
      v2 = result;
      swift_beginAccess();
      outlined init with copy of AnyTrackedValue(v0 + 16, v5);
      swift_beginAccess();
      outlined init with copy of AnyTrackedValue(v2 + 16, v4);
      type metadata accessor for AXChartDescriptorRepresentable();
      v3 = AGCompareValues();
      __swift_destroy_boxed_opaque_existential_1(v4);
      __swift_destroy_boxed_opaque_existential_1(v5);
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for AXChartDescriptorRepresentable()
{
  result = lazy cache variable for type metadata for AXChartDescriptorRepresentable;
  if (!lazy cache variable for type metadata for AXChartDescriptorRepresentable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AXChartDescriptorRepresentable);
  }

  return result;
}

void RepresentableChartDescriptorStorage.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 56);
}

uint64_t RepresentableChartDescriptorStorage.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t RepresentableChartDescriptorStorage.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t CodableAXChartDescriptor.storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CodableAXChartDescriptor.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodableAXChartDescriptor.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CodableAXChartDescriptor.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance CodableAXChartDescriptor.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAXChartDescriptor.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance CodableAXChartDescriptor.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAXChartDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAXChartDescriptor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableAXChartDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for KeyedDecodingContainer<CodableAXChartDescriptor.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAXChartDescriptor.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    v10 = v14[0];
    v11 = v14[1];
    type metadata accessor for AccessibilitySpecificChartDescriptorStorage();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys);
  }

  return result;
}

uint64_t CodableAXChartDescriptor.encode(to:)(void *a1)
{
  v24[2] = *MEMORY[0x1E69E9840];
  type metadata accessor for KeyedDecodingContainer<CodableAXChartDescriptor.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAXChartDescriptor.CodingKeys>, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-1] - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys();
  v10 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = (*(*v9 + 80))(v10);
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v23 = v11;
  v13 = [v11 dictionaryRepresentation];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v24[0] = 0;
  v16 = [v14 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v24];

  v17 = v24[0];
  if (!v16)
  {
    v22 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  v18 = v23;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v24[0] = v19;
  v24[1] = v21;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);

  return outlined consume of Data._Representation(v19, v21);
}