uint64_t static Group<A>._tableRowCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a3 + 56))(v8);
}

uint64_t static Group<A>._containsOutlineSymbol(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a3 + 64))(v8) & 1;
}

void type metadata accessor for Attribute<TableRowList>()
{
  if (!lazy cache variable for type metadata for Attribute<TableRowList>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<TableRowList>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for TupleTableRowContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for TupleTableRowContent.CheckOutline(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t assignWithCopy for TupleTableRowContent.CheckOutline(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithTake for TupleTableRowContent.CheckOutline(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for TupleTableRowContent.CheckOutline(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TupleTableRowContent.CheckOutline(uint64_t result, int a2, int a3)
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
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TupleTableRowContent.CountRows(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t assignWithCopy for TupleTableRowContent.CountRows(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  v4 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v4;
  return a1;
}

uint64_t assignWithTake for TupleTableRowContent.CountRows(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t getEnumTagSinglePayload for TupleTableRowContent.CountRows(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TupleTableRowContent.CountRows(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TupleTableRowContent.MakeList()
{
}

uint64_t initializeWithCopy for TupleTableRowContent.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v5 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v5;

  return a1;
}

uint64_t assignWithCopy for TupleTableRowContent.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t assignWithTake for TupleTableRowContent.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  v4 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v4;

  return a1;
}

uint64_t type metadata completion function for ItemNavigationLinkModifier()
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ItemNavigationLinkModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v7 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
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
  v13 = ((v10 + v11 + (v9 & (v7 + 8)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v7 & 0x100000;
  if (v8 > 7 || v14 != 0 || v13 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    v18 = (v17 + (v9 & (v8 + 16)));
  }

  else
  {
    v29 = a2 + 15;
    *a1 = *a2;
    v19 = a1 + 15;
    v20 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
    *((a1 + 15) & 0xFFFFFFFFFFFFFFF8) = *((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15;
    v22 = ((v20 & 0xFFFFFFFFFFFFFFF8) + 8);
    *(v21 & 0xFFFFFFFFFFFFFFF8) = *(v20 & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 & 0xFFFFFFFFFFFFFFF8) + 8);
    v24 = *(v5 + 48);

    if (v24(v22, 1, v4))
    {
      memcpy(v23, v22, v11);
    }

    else
    {
      (*(v6 + 16))(v23, v22, v4);
      (*(v6 + 56))(v23, 0, 1, v4);
    }

    v18 = a1;
    v25 = (((v29 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
    v26 = v25[1];
    v27 = (((v19 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v25;
    v27[1] = v26;
  }

  return v18;
}

uint64_t destroy for ItemNavigationLinkModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (a1 + (v4 | 7) + 8) & ~(v4 | 7);

  v6 = v4 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!(*(v3 + 48))(v6 & ~v4, 1, v2))
  {
    (*(v3 + 8))(v6 & ~v4, v2);
  }
}

void *initializeWithCopy for ItemNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v7 | 7) + 8;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v27 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v27;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = v10 + v7 + 8;
  v13 = v11 + v7 + 8;
  v14 = *(v5 + 48);

  if (v14(v13 & ~v7, 1, v4))
  {
    v15 = *(v6 + 84);
    v16 = *(v6 + 64);
    if (v15)
    {
      v17 = *(v6 + 64);
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy((v12 & ~v7), (v13 & ~v7), v17);
  }

  else
  {
    (*(v6 + 16))(v12 & ~v7, v13 & ~v7, v4);
    v19 = *(v6 + 56);
    v18 = v6 + 56;
    v19(v12 & ~v7, 0, 1, v4);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  v20 = v16 + ((v7 + 16) & ~v7);
  if (!v15)
  {
    ++v20;
  }

  v21 = v9 + v20 + 7;
  v22 = ((v27 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v24 = *v22;
  v23 = v22[1];
  v25 = (v21 & 0xFFFFFFFFFFFFFFF8);
  *v25 = v24;
  v25[1] = v23;

  return a1;
}

void *assignWithCopy for ItemNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 8;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v23 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v23;

  v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *((v23 + 15) & 0xFFFFFFFFFFFFFFF8);

  v10 = v9 + v6 + 8;
  v11 = v6 + 8 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v5 + 48);
  v13 = v12(v10 & ~v6, 1, v4);
  v14 = v12(v11 & ~v6, 1, v4);
  if (v13)
  {
    if (v14)
    {
      v15 = *(v5 + 84);
      v16 = *(v5 + 64);
LABEL_6:
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 + 1;
      }

      memcpy((v10 & ~v6), (v11 & ~v6), v17);
      goto LABEL_12;
    }

    (*(v5 + 16))(v10 & ~v6, v11 & ~v6, v4);
    (*(v5 + 56))(v10 & ~v6, 0, 1, v4);
  }

  else
  {
    if (v14)
    {
      (*(v5 + 8))(v10 & ~v6, v4);
      v15 = *(v5 + 84);
      v16 = *(v5 + 64);
      goto LABEL_6;
    }

    (*(v5 + 24))(v10 & ~v6, v11 & ~v6, v4);
  }

LABEL_12:
  v18 = *(v5 + 64) + ((v6 + 16) & ~v6);
  if (!*(v5 + 84))
  {
    ++v18;
  }

  v19 = ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v23 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

void *initializeWithTake for ItemNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v7 | 7) + 8;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = v11 + v7 + 8;
  v14 = v12 + v7 + 8;
  if ((*(v5 + 48))(v14 & ~v7, 1, v4))
  {
    v15 = *(v6 + 84);
    v16 = *(v6 + 64);
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy((v13 & ~v7), (v14 & ~v7), v17);
  }

  else
  {
    (*(v6 + 32))(v13 & ~v7, v14 & ~v7, v4);
    v19 = *(v6 + 56);
    v18 = v6 + 56;
    v19(v13 & ~v7, 0, 1, v4);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  v20 = v16 + ((v7 + 16) & ~v7);
  if (!v15)
  {
    ++v20;
  }

  *((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for ItemNavigationLinkModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 8;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v20 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v20;

  v9 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = v9 + v6 + 8;
  v12 = v10 + v6 + 8;
  v13 = *(v5 + 48);
  LODWORD(v10) = v13(v11 & ~v6, 1, v4);
  v14 = v13(v12 & ~v6, 1, v4);
  if (v10)
  {
    if (v14)
    {
      v15 = *(v5 + 84);
      v16 = *(v5 + 64);
LABEL_6:
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 + 1;
      }

      memcpy((v11 & ~v6), (v12 & ~v6), v17);
      goto LABEL_12;
    }

    (*(v5 + 32))(v11 & ~v6, v12 & ~v6, v4);
    (*(v5 + 56))(v11 & ~v6, 0, 1, v4);
  }

  else
  {
    if (v14)
    {
      (*(v5 + 8))(v11 & ~v6, v4);
      v15 = *(v5 + 84);
      v16 = *(v5 + 64);
      goto LABEL_6;
    }

    (*(v5 + 40))(v11 & ~v6, v12 & ~v6, v4);
  }

LABEL_12:
  v18 = *(v5 + 64) + ((v6 + 16) & ~v6);
  if (!*(v5 + 84))
  {
    ++v18;
  }

  *((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ItemNavigationLinkModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v6)
  {
    v10 = 5;
  }

  else
  {
    v10 = 6;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  if (v8 >= a2)
  {
    goto LABEL_34;
  }

  v12 = ((v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-9 - v9) | v11))) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_34;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_34:
    v21 = ((((a1 + v11 + 8) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v23 = (*(v5 + 48))((v21 + v9 + 8) & ~v9);
      if (v23 >= 2)
      {
        return v23 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v22 = *v21;
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for ItemNavigationLinkModifier(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v8;
  }

  if (!v7)
  {
    ++v10;
  }

  v12 = ((v10 - (((-17 - v9) | v9) + ((-9 - v9) | v9 | 7)) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 < a3)
  {
    v13 = a3 - v11;
    if (((v10 - (((-17 - v9) | v9) + ((-9 - v9) | v9 | 7)) + 5) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

  if (a2 > v11)
  {
    if (((v10 - (((-17 - v9) | v9) + ((-9 - v9) | v9 | 7)) + 5) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 - (((-17 - v9) | v9) + ((-9 - v9) | v9 | 7)) + 5) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v11 + a2;
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

      goto LABEL_39;
    }

    *(a1 + v12) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v5)
  {
    goto LABEL_38;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v19 = ((((a1 + (v9 | 7) + 8) & ~(v9 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v19 + v9 + 8) & ~v9);
    if (v8 >= a2)
    {
      v25 = *(v6 + 56);
      v26 = a2 + 1;

      v25((v19 + v9 + 8) & ~v9, v26);
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
        v23 = v22 & (~v8 + a2);
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

    *v19 = v20;
  }
}

uint64_t ItemNavigationLinkModifier.item.getter()
{
  type metadata accessor for Optional();
  v0 = type metadata accessor for Binding();
  return MEMORY[0x18D00ACC0](v0);
}

uint64_t ItemNavigationLinkModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  ItemNavigationLinkModifier.base(_:)(a1, a2);
  strcpy(v16, "navigationLink");
  v16[15] = -18;
  v2 = Namespace.wrappedValue.getter();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>, &type metadata for NavigationDestinationsKey, &protocol witness table for NavigationDestinationsKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v3 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v15 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v4 = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6158];
  v6 = MEMORY[0x1E69E6168];
  View.accessibilityLinkedGroup<A>(id:in:)(v16, v2, v3, MEMORY[0x1E69E6158], v4);

  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(255, &lazy cache variable for type metadata for RelationshipModifier<String>, v5, v6, type metadata accessor for RelationshipModifier);
  v7 = type metadata accessor for ModifiedContent();
  v8 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v10, v7, v8);

  v17 = v21;
  v18 = v22;
  v19 = v23;
  v20 = v24;
  static ViewBuilder.buildExpression<A>(_:)(&v17, v7, v8);
}

uint64_t ItemNavigationLinkModifier.base(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a2, v5);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = *(a2 + 32);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v10;
  (*(v3 + 32))(v9 + v8, v6, a2);
  swift_getWitnessTable();
  v11 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  View.transactionalPreferenceTransform<A>(key:transform:)(&type metadata for NavigationDestinationsKey, partial apply for closure #1 in ItemNavigationLinkModifier.base(_:), v9, v11, &type metadata for NavigationDestinationsKey, WitnessTable);
}

unint64_t closure #1 in ItemNavigationLinkModifier.base(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a2;
  v41 = a1;
  v43 = a4;
  v44 = a5;
  v36 = a6;
  v45 = a6;
  v46 = a7;
  v38 = a7;
  v10 = type metadata accessor for ItemNavigationLinkModifier();
  v35 = *(v10 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v37 = a5;
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  v19 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemNavigationLinkModifier.item.getter();
  if ((*(v19 + 48))(v18, 1, a4) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v23 = Namespace.wrappedValue.getter();
    v43 = Namespace.wrappedValue.getter();
    v44 = v40;
    v47 = 1;

    return specialized Dictionary.subscript.setter(&v43, v23);
  }

  else
  {
    (*(v19 + 32))(v22, v18, a4);
    v33 = Namespace.wrappedValue.getter();
    v32 = Namespace.wrappedValue.getter();
    (*(a3 + *(v10 + 56)))(v22);
    v42 = xmmword_18CD6A6D0;
    v25 = v35;
    (*(v35 + 16))(v12, a3, v10);
    v26 = (*(v25 + 80) + 48) & ~*(v25 + 80);
    v27 = swift_allocObject();
    v28 = v36;
    v29 = v37;
    *(v27 + 2) = a4;
    *(v27 + 3) = v29;
    v30 = v38;
    *(v27 + 4) = v28;
    *(v27 + 5) = v30;
    (*(v25 + 32))(&v27[v26], v12, v10);
    v31 = v40;

    LOBYTE(v43) = 1;
    NavigationDestinationContent.init<A>(id:content:isDetail:transaction:environment:updateSeed:onDismiss:)(v32, v39, 1, v31, &v42, partial apply for closure #1 in closure #1 in ItemNavigationLinkModifier.base(_:), v27, &v43, v29, v30);
    v47 = 0;
    specialized Dictionary.subscript.setter(&v43, v33);
    return (*(v19 + 8))(v22, a4);
  }
}

uint64_t closure #1 in closure #1 in ItemNavigationLinkModifier.base(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - v12;
  (*(*(a2 - 8) + 56))(v15 - v12, 1, 1, a2, v11);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  type metadata accessor for ItemNavigationLinkModifier();
  specialized ItemNavigationLinkModifier.item.setter();
  return (*(v10 + 8))(v13, v9);
}

void type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t partial apply for closure #1 in ItemNavigationLinkModifier.base(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for ItemNavigationLinkModifier() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return closure #1 in ItemNavigationLinkModifier.base(_:)(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in ItemNavigationLinkModifier.base(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for ItemNavigationLinkModifier() - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return closure #1 in closure #1 in ItemNavigationLinkModifier.base(_:)(v6, v1, v2, v3, v4);
}

uint64_t specialized ItemNavigationLinkModifier.item.setter()
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  return specialized Binding.wrappedValue.setter();
}

uint64_t TitleOnlyLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t protocol witness for LabelStyle.makeBody(configuration:) in conformance TitleOnlyLabelStyle@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>();
    lazy protocol witness table accessor for type _ContainerValueWritingModifier<LabelItemRole?> and conformance _ContainerValueWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>)
  {
    type metadata accessor for _ContainerValueWritingModifier<LabelItemRole?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _ContainerValueWritingModifier<LabelItemRole?>>);
    }
  }
}

uint64_t initializeWithCopy for PlatformItemList.Item.ConfigurationIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  v6 = v4;
  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for PlatformItemList.Item.ConfigurationIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = v5;

  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  *(a1 + 32) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for PlatformItemList.Item.ConfigurationIdentifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void PlatformItemList.Item.ConfigurationIdentifier.hash(into:)()
{
  v1 = v0;
  Hasher._combine(_:)(*v0 & 1);
  Hasher._combine(_:)(*(v0 + 1) & 1);
  Hasher._combine(_:)(*(v0 + 2) & 1);
  if (*(v0 + 16))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v2 = *(v0 + 24);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    v4 = *(v0 + 32);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v2 = *(v0 + 24);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v3 = v2;
  NSObject.hash(into:)();

  v4 = *(v1 + 32);
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  v5 = v4;
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PlatformItemList.Item.ConfigurationIdentifier()
{
  Hasher.init(_seed:)();
  PlatformItemList.Item.ConfigurationIdentifier.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlatformItemList.Item.ConfigurationIdentifier()
{
  Hasher.init(_seed:)();
  PlatformItemList.Item.ConfigurationIdentifier.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PlatformItemList.Item.ConfigurationIdentifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static PlatformItemList.Item.ConfigurationIdentifier.== infix(_:_:)(v5, v7);
}

unint64_t lazy protocol witness table accessor for type PlatformItemList.Item.ConfigurationIdentifier and conformance PlatformItemList.Item.ConfigurationIdentifier()
{
  result = lazy protocol witness table cache variable for type PlatformItemList.Item.ConfigurationIdentifier and conformance PlatformItemList.Item.ConfigurationIdentifier;
  if (!lazy protocol witness table cache variable for type PlatformItemList.Item.ConfigurationIdentifier and conformance PlatformItemList.Item.ConfigurationIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemList.Item.ConfigurationIdentifier and conformance PlatformItemList.Item.ConfigurationIdentifier);
  }

  return result;
}

BOOL specialized static PlatformItemList.Item.ConfigurationIdentifier.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v4 = *(a2 + 2);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v3 != v4)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 3);
  v10 = *(a2 + 3);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = a1;
    v12 = a2;
    type metadata accessor for NSAttributedString();
    v13 = v10;
    v14 = v9;
    v15 = static NSObject.== infix(_:_:)();

    a1 = v11;
    a2 = v12;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v16 = *(a1 + 4);
  v17 = *(a2 + 4);
  if (v16)
  {
    if (v17)
    {
      type metadata accessor for NSAttributedString();
      v18 = v17;
      v19 = v16;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v17;
}

uint64_t View.scrollPosition(_:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of Binding<ScrollPosition>(a1, v12);
  v12[13] = a2;
  v12[14] = a3;
  v13 = a4 & 1;
  MEMORY[0x18D00A570](v12, a5, MEMORY[0x1E6980958], a6);
  return outlined destroy of ScrollPositionBindingModifier(v12);
}

uint64_t View.scrollPosition<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Optional();
  v7 = type metadata accessor for Binding();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  (*(v8 + 16))(v19 - v10, a1, v7, v9);
  static UnitPoint.topLeading.getter();
  v13 = v12;
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  v19[0] = v13;
  v19[1] = v15;
  v20 = 0;
  type metadata accessor for ValueToScrollPosition();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  outlined init with copy of Binding<ScrollPosition>(v24, v19);
  static UnitPoint.topLeading.getter();
  v21 = v16;
  v22 = v17;
  v23 = 0;
  MEMORY[0x18D00A570](v19, a2, MEMORY[0x1E6980958], a4);
  outlined destroy of ScrollPositionBindingModifier(v19);
  return outlined destroy of Binding<ScrollPosition>(v24);
}

uint64_t View.scrollPosition<A>(initialID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Optional();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15[-v11 - 8], a1, v9, v10);
  v14 = a5;
  swift_getWitnessTable();
  ScrollPosition.init<A>(id:anchor:)();
  MEMORY[0x18D00A570](v15, a2, MEMORY[0x1E697F7F8], a4);
  return outlined destroy of ScrollValueModifier(v15);
}

uint64_t View.tabViewCustomization(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TabViewCustomizationModifier();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Binding<TabViewCustomization>?(a1, v8);
  MEMORY[0x18D00A570](v8, a2, v6, a3);
  return outlined destroy of TabViewCustomizationModifier(v8, type metadata accessor for TabViewCustomizationModifier);
}

uint64_t type metadata accessor for TabViewCustomizationModifier()
{
  result = type metadata singleton initialization cache for TabViewCustomizationModifier;
  if (!type metadata singleton initialization cache for TabViewCustomizationModifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TabViewCustomizationModifier(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 1, v7))
  {
    v13 = a2[1];
    *a1 = *a2;
    a1[1] = v13;
    v14 = *(v8 + 32);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 16);

    v18(v15, v16, v17);
    v19 = type metadata accessor for TabViewCustomization();
    *&v15[*(v19 + 20)] = *&v16[*(v19 + 20)];
    *&v15[*(v19 + 24)] = *&v16[*(v19 + 24)];
    v20 = *(v9 + 56);

    v20(a1, 0, 1, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for TabViewCustomizationModifier(uint64_t a1)
{
  type metadata accessor for Binding<TabViewCustomization>(0);
  v3 = v2;
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {

    v5 = a1 + *(v3 + 32);
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v5, v6);
    type metadata accessor for TabViewCustomization();
  }

  return result;
}

void *initializeWithCopy for TabViewCustomizationModifier(void *a1, void *a2)
{
  type metadata accessor for Binding<TabViewCustomization>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 1, v4))
  {
    type metadata accessor for Binding<TabViewCustomization>?(0);
    v8 = *(*(v7 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = *(v5 + 32);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = type metadata accessor for UUID();
    v15 = *(*(v14 - 8) + 16);

    v15(v12, v13, v14);
    v16 = type metadata accessor for TabViewCustomization();
    *&v12[*(v16 + 20)] = *&v13[*(v16 + 20)];
    *&v12[*(v16 + 24)] = *&v13[*(v16 + 24)];
    v17 = *(v6 + 56);

    v17(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithCopy for TabViewCustomizationModifier(void *a1, void *a2)
{
  type metadata accessor for Binding<TabViewCustomization>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v4);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      v10 = *(v5 + 32);
      v11 = a1 + v10;
      v12 = a2 + v10;
      v13 = type metadata accessor for UUID();
      v14 = *(*(v13 - 8) + 16);

      v14(v11, v12, v13);
      v15 = type metadata accessor for TabViewCustomization();
      *&v11[*(v15 + 20)] = *&v12[*(v15 + 20)];
      *&v11[*(v15 + 24)] = *&v12[*(v15 + 24)];
      v16 = *(v6 + 56);

      v16(a1, 0, 1, v5);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      *a1 = *a2;

      a1[1] = a2[1];

      v20 = *(v5 + 32);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = type metadata accessor for UUID();
      (*(*(v23 - 8) + 24))(v21, v22, v23);
      v24 = type metadata accessor for TabViewCustomization();
      *&v21[*(v24 + 20)] = *&v22[*(v24 + 20)];

      *&v21[*(v24 + 24)] = *&v22[*(v24 + 24)];

      return a1;
    }

    outlined destroy of TabViewCustomizationModifier(a1, type metadata accessor for Binding<TabViewCustomization>);
  }

  type metadata accessor for Binding<TabViewCustomization>?(0);
  v18 = *(*(v17 - 8) + 64);

  return memcpy(a1, a2, v18);
}

uint64_t outlined destroy of TabViewCustomizationModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *initializeWithTake for TabViewCustomizationModifier(void *a1, void *a2)
{
  type metadata accessor for Binding<TabViewCustomization>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 1, v4))
  {
    type metadata accessor for Binding<TabViewCustomization>?(0);
    v8 = *(*(v7 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = *(v5 + 32);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 32))(v12, v13, v14);
    v15 = type metadata accessor for TabViewCustomization();
    *&v12[*(v15 + 20)] = *&v13[*(v15 + 20)];
    *&v12[*(v15 + 24)] = *&v13[*(v15 + 24)];
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for TabViewCustomizationModifier(void *a1, void *a2)
{
  type metadata accessor for Binding<TabViewCustomization>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v4);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      v11 = *(v5 + 32);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = type metadata accessor for UUID();
      (*(*(v14 - 8) + 32))(v12, v13, v14);
      v15 = type metadata accessor for TabViewCustomization();
      *&v12[*(v15 + 20)] = *&v13[*(v15 + 20)];
      *&v12[*(v15 + 24)] = *&v13[*(v15 + 24)];
      (*(v6 + 56))(a1, 0, 1, v5);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      *a1 = *a2;

      a1[1] = a2[1];

      v19 = *(v5 + 32);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 40))(v20, v21, v22);
      v23 = type metadata accessor for TabViewCustomization();
      *&v20[*(v23 + 20)] = *&v21[*(v23 + 20)];

      *&v20[*(v23 + 24)] = *&v21[*(v23 + 24)];

      return a1;
    }

    outlined destroy of TabViewCustomizationModifier(a1, type metadata accessor for Binding<TabViewCustomization>);
  }

  type metadata accessor for Binding<TabViewCustomization>?(0);
  v17 = *(*(v16 - 8) + 64);

  return memcpy(a1, a2, v17);
}

void type metadata completion function for TabViewCustomizationModifier()
{
  type metadata accessor for Binding<TabViewCustomization>?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t EnvironmentValues.tabViewCustomization.setter(uint64_t a1)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  outlined init with copy of Binding<TabViewCustomization>?(a1, &v10 - v7);
  outlined init with copy of Binding<TabViewCustomization>?(v8, v5);
  type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>);

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of TabViewCustomizationModifier(a1, type metadata accessor for Binding<TabViewCustomization>?);
  return outlined destroy of TabViewCustomizationModifier(v8, type metadata accessor for Binding<TabViewCustomization>?);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TabViewCustomizationModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TabViewCustomizationModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance TabViewCustomizationModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static EnvironmentModifier.makeEnvironment(modifier:environment:) in conformance TabViewCustomizationModifier()
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of Binding<TabViewCustomization>?(Value, v2);
  return EnvironmentValues.tabViewCustomization.setter(v2);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance TabViewCustomizationModifier()
{
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type TabViewCustomizationModifier and conformance TabViewCustomizationModifier, type metadata accessor for TabViewCustomizationModifier);

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EnvironmentValues.tabViewCustomization.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabViewCustomization.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<TabViewCustomization.Key>);

    return PropertyList.subscript.getter();
  }
}

uint64_t specialized MultiViewResponder.visit(applying:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  type metadata accessor for FocusEventProxyResponder();
  if (swift_dynamicCastClass())
  {
    *a2 = a1;

LABEL_16:
    v12 = 2;
  }

  else
  {
    v7 = dispatch thunk of ViewResponder.children.getter();
    v8 = v7;
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
LABEL_19:
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    while (v10 != v11)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x18D00E9C0](v11, v8);
        if (__OFADD__(v11, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v11 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        if (__OFADD__(v11, 1))
        {
          goto LABEL_14;
        }
      }

      dispatch thunk of ResponderNode.visit(applying:)();

      ++v11;
      if (v13 == 2)
      {

        goto LABEL_16;
      }
    }

    v12 = 0;
  }

  *a3 = v12;
  return result;
}

uint64_t View.focusable(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = &type metadata for FocusInteractions;
  v8 = &protocol witness table for FocusInteractions;
  *&v6 = 3;
  v9[0] = a1;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v6, v10);
  v10[5] = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v10[6] = 0;
  MEMORY[0x18D00A570](v9, a2, &type metadata for _FocusableModifier, a3);
  return outlined destroy of OnCommandModifier(v9);
}

uint64_t View.focusEffect(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.focusEffect.getter@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a1 = (v4 & 1) == 0;
  return result;
}

uint64_t key path getter for EnvironmentValues.focusEffect : EnvironmentValues@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = EnvironmentValues.focusEffect.getter(&v4);
  *a2 = v4;
  return result;
}

uint64_t EnvironmentValues.focusEffect.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.focusEffectDisabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v10[0] = KeyPath;
  v10[1] = partial apply for closure #1 in View.hoverEffectDisabled(_:);
  v10[2] = v7;
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  MEMORY[0x18D00A570](v10, a2, v8, a3);
}

uint64_t EnvironmentValues.isFocused.getter(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1);
    a4();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1);
    a4();
    PropertyList.subscript.getter();
  }

  return v7;
}

uint64_t key path getter for EnvironmentValues.isFocusEffectEnabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.isFocusEffectEnabled : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.isFocusEffectEnabled.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues.isFocusEffectEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(a1 + 24) = *(a1 + 25);
  return EnvironmentValues.isFocusEffectEnabled.modify;
}

uint64_t EnvironmentValues.isFocusEffectEnabled.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t implicit closure #1 in makeViewResponderFilter #1 (inputs:outputs:) in static _FocusableModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type FocusDelegation.Provider and conformance FocusDelegation.Provider();

  v0 = Attribute.init<A>(body:value:flags:update:)();

  return v0;
}

uint64_t implicit closure #2 in makeViewResponderFilter #1 (inputs:outputs:) in static _FocusableModifier._makeView(modifier:inputs:body:)()
{
  _ViewInputs.animatedPosition()();
  swift_beginAccess();
  CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for [FocusableBounds], MEMORY[0x1E697E780], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type FocusableBoundsTransform and conformance FocusableBoundsTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance IOSFocusEnabledFlag(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static IOSFocusEnabledFlag.evaluate(inputs:)();
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t FocusableOptions.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    v5 = v9;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    v5 = v9;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsFocusEffectEnabledKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  v7 = v4 | 2;
  if (!v5)
  {
    v7 = v4;
  }

  if (!v8)
  {
    v7 |= 4uLL;
  }

  if ((v7 & 3) != 0)
  {
    v7 |= 0x20uLL;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for static RemovableAttribute.willRemove(attribute:) in conformance UpdateFocusableViewResponder()
{
  AGGraphGetAttributeInfo();
  swift_retain_n();
  static Update.enqueueAction(reason:_:)();
}

uint64_t ResolvedOptions.value.getter()
{
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value + 8, v9);
  v1 = v10;
  v2 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v3 = AGGraphGetValue();
  v5 = *v3;
  v4 = v3[1];
  v8[0] = v5;
  v8[1] = v4;
  v6 = *(v2 + 8);

  v6(v8, v1, v2);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void FocusableViewResponder.baseItem.didset(int *a1)
{
  v2 = *(a1 + 2);
  if (!*(v1 + 248))
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_12;
  }

  v3 = v2 == 0;
  if (v2)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 || *(v1 + 232) != v4)
  {
LABEL_12:
    v6 = *(v1 + 360);
    if (v6)
    {
      *(v1 + 360) = 0;
    }
  }
}

void *FocusableViewResponder.hostedItem.getter()
{
  if (!*(v0 + 248))
  {
    return 0;
  }

  if ((*(v0 + 240) & 8) != 0)
  {
    return 0;
  }

  v1 = *(v0 + 360);
  if (!v1)
  {
    v2 = objc_allocWithZone(type metadata accessor for UIKitFocusableViewResponderItem());

    v3 = specialized UIKitFocusableViewResponderItem.init(_:)();

    v4 = *(v0 + 360);
    *(v0 + 360) = v3;

    v1 = *(v0 + 360);
    if (!v1)
    {
      return 0;
    }
  }

  v5 = v1;
  v6 = v1;
  return v5;
}

void FocusableViewResponder.focusItem.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 248);
  if (v3)
  {
    if (*(v1 + 305) != 1)
    {
      goto LABEL_7;
    }

    if (FocusableViewResponder.hostedItem.getter())
    {
      *(a1 + 48) = 0;
      swift_weakInit();
      *(a1 + 56) = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(a1 + 32) = 1;
      *(a1 + 48) = &protocol witness table for FocusableViewResponder;
      swift_weakAssign();
      *(a1 + 33) = 0;
      return;
    }

    v3 = *(v1 + 248);
    if (!v3)
    {
      __break(1u);
    }

    else
    {
LABEL_7:
      v4 = *(v1 + 256);
      v6 = *(v1 + 232);
      v5 = *(v1 + 240);
      *(a1 + 48) = 0;
      swift_weakInit();
      *a1 = v6;
      *(a1 + 4) = BYTE4(v6) & 1;
      *(a1 + 8) = v5;
      *(a1 + 16) = v3;
      *(a1 + 24) = v4;
      *(a1 + 32) = 0;
      *(a1 + 48) = &protocol witness table for FocusableViewResponder;
      *(a1 + 56) = 0;
      swift_weakAssign();
      *(a1 + 33) = 0;
    }
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = xmmword_18CD6A6D0;
  }
}

uint64_t FocusableViewResponder.bindEvent(_:)(void *a1)
{
  type metadata accessor for DefaultLayoutViewResponder();
  v3 = method lookup function for ResponderNode();
  result = v3(a1);
  if (!result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (EventType.isFocusEvent.getter())
    {
      v6 = 0;
      specialized MultiViewResponder.visit(applying:)(v1, &v6, &v5);
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in FocusableViewResponder.focusProxyResponder.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  type metadata accessor for FocusEventProxyResponder();
  result = swift_dynamicCastClass();
  if (result)
  {
    *a2 = a1;

    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t FocusableViewResponder.init(inputs:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + 224) = MEMORY[0x1E69E7CC0];
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = *MEMORY[0x1E698D3F8];
  *(v0 + 268) = 1;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 285) = 0;
  *(v0 + 293) = 1;
  *(v0 + 296) = 0;
  *(v0 + 304) = 1;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 1;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 344) = 0;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t FocusableViewResponder.init(inputs:viewSubgraph:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + 224) = MEMORY[0x1E69E7CC0];
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = *MEMORY[0x1E698D3F8];
  *(v0 + 268) = 1;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 285) = 0;
  *(v0 + 293) = 1;
  *(v0 + 296) = 0;
  *(v0 + 304) = 1;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 1;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 344) = 0;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

void FocusableViewResponder.__ivar_destroyer()
{
  MEMORY[0x18D011290](v0 + 27);

  outlined consume of FocusItem.ViewItem?(v0[29], v0[30], v0[31]);
  _s7SwiftUI9FocusItemVSgWOhTm_1((v0 + 39), &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3);
  v1 = v0[45];
}

uint64_t FocusableViewResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();

  MEMORY[0x18D011290](v1 + 216);

  outlined consume of FocusItem.ViewItem?(v0[29], v0[30], v0[31]);
  _s7SwiftUI9FocusItemVSgWOhTm_1((v0 + 39), &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3);
  v2 = v0[45];

  return swift_deallocClassInstance();
}

uint64_t UIKitFocusableViewResponderItem.next.getter()
{
  if ((MEMORY[0x18D008800]() & 1) == 0)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = 0;
    specialized MultiViewResponder.visit(applying:)(result, &v4, &v3);
    if (v4)
    {
      v1 = ViewResponder.parentGestureContainer.getter();

      return v1;
    }

    else
    {

      v2 = ViewResponder.parentGestureContainer.getter();

      return v2;
    }
  }

  return result;
}

double UIKitFocusableViewResponderItem.defaultFocusGroupIdentifier.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem____lazy_storage___defaultFocusGroupIdentifier;
  swift_beginAccess();
  _s7SwiftUI9FocusItemVSgWOcTm_0(v1 + v3, &v6, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier);
  if (*(&v7 + 1) == 1)
  {
    _s7SwiftUI9FocusItemVSgWOhTm_1(&v6, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3);
    UniqueID.init()();
    lazy protocol witness table accessor for type FocusGroupIdentifier.ID and conformance FocusGroupIdentifier.ID();
    AnyHashable.init<A>(_:)();
    outlined init with copy of _PresentationTransitionOutputs.Content(a1, &v6);
    swift_beginAccess();
    outlined assign with take of FocusGroupIdentifier?(&v6, v1 + v3);
    swift_endAccess();
  }

  else
  {
    result = *&v6;
    v5 = v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t UIKitFocusableViewResponderItem.swiftui_focusGroupIdentifier.getter()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    _s7SwiftUI9FocusItemVSgWOcTm_0(v1 + 312, &v7, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier);

    if (*&v8[8] != 1)
    {
      v9[0] = v7;
      v9[1] = *v8;
      v10 = *&v8[16];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0uLL;
    *v8 = 0;
    *&v8[8] = xmmword_18CD6A6D0;
  }

  _s7SwiftUI9FocusItemVSgWOhTm_1(&v7, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720], _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3);
  UIKitFocusableViewResponderItem.defaultFocusGroupIdentifier.getter(v9);
LABEL_6:
  outlined init with copy of _PresentationTransitionOutputs.Content(v9, &v4);
  if (*(&v5 + 1))
  {
    v7 = v4;
    *v8 = v5;
    *&v8[16] = v6;
    v2 = AnyHashable.description.getter();
    outlined destroy of AnyHashable(&v7);
  }

  else
  {
    outlined destroy of FocusGroupIdentifier(&v4);
    v2 = 0;
  }

  outlined destroy of FocusGroupIdentifier(v9);
  return v2;
}

uint64_t UIKitFocusableViewResponderItem.shouldUpdateFocus(in:)(void *a1)
{
  v3 = [a1 nextFocusedItem];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  swift_unknownObjectRelease();
  if (v4 != v1)
  {
    return 1;
  }

  if (![a1 previouslyFocusedItem])
  {
    return 1;
  }

  swift_unknownObjectRelease();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v8 = Strong[29];
  v7 = Strong[30];
  v9 = Strong[31];
  outlined copy of FocusItem.ViewItem?(v8, v7, v9);

  if (!v9)
  {
    return 1;
  }

  outlined consume of FocusItem.ViewItem?(v8, v7, v9);
  return BYTE4(v8) & ((v7 & 2) != 0);
}

uint64_t UIKitFocusableViewResponderItem.focusEffect.getter()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v2;
  v7 = v3;
  v8 = *(v1 + 32);
  v32 = v5;
  v33 = v4;
  v9 = *(v1 + 32);
  if (v8 != 255)
  {
    goto LABEL_12;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  v38 = 0u;
  v39 = 0u;
  v40 = 6;
  v12 = swift_unknownObjectWeakLoadStrong();
  v25 = v2;
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  type metadata accessor for HostingScrollView.PlatformGroupContainer();
  if (!swift_dynamicCastClass())
  {

LABEL_7:
    *&v34[0] = 16;
    static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace.getter();
    v37 = 1;
    MultiViewResponder.addContentPath(to:kind:in:observer:)();
    goto LABEL_8;
  }

  *&v34[0] = 16;
  static CoordinateSpace.scrollViewSafeArea.getter();
  MultiViewResponder.addContentPath(to:kind:in:observer:)();

LABEL_8:
  outlined destroy of CoordinateSpace(v35);
  v26 = v38;
  v29 = v39;
  v35[0] = v38;
  v35[1] = v39;
  v9 = v40;
  v36 = v40;
  if (Path.isEmpty.getter())
  {
    MEMORY[0x18D00ABE0]();
    AGGraphClearUpdate();
    closure #1 in UIKitFocusableViewResponderItem.focusEffect.getter(v11, v34);
    AGGraphSetUpdate();
    v27 = v34[0];
    v30 = v34[1];
    static Update.end()();

    outlined destroy of Path(v35);
    v15 = v27;
    v14 = v30;
    v9 = 0;
  }

  else
  {

    v15 = v26;
    v14 = v29;
  }

  v31 = *v1;
  v28 = *(v1 + 8);
  v23 = *(v1 + 24);
  v24 = *(v1 + 16);
  *v1 = v15;
  *(v1 + 16) = v14;
  v16 = *(v1 + 32);
  *(v1 + 32) = v9;
  v7 = *(&v15 + 1);
  v6 = v15;
  v5 = *(&v14 + 1);
  v4 = v14;
  outlined copy of Path.Storage(v15, *(&v15 + 1), v14, *(&v14 + 1), v9);
  outlined copy of Path.Storage(v6, v7, v4, v5, v9);
  outlined consume of Path?(v31, v28, v24, v23, v16);
  outlined consume of Path.Storage(v6, v7, v4, v5, v9);
  v2 = v25;
LABEL_12:
  *&v38 = v6;
  *(&v38 + 1) = v7;
  *&v39 = v4;
  *(&v39 + 1) = v5;
  v40 = v9;
  result = swift_weakLoadStrong();
  if (!result)
  {
    outlined copy of Path?(v2, v3, v33, v32, v8);
    goto LABEL_18;
  }

  if (*(result + 248))
  {
    v18 = *(result + 240);
    outlined copy of Path?(v2, v3, v33, v32, v8);

    if ((v18 & 4) != 0)
    {
      outlined consume of Path.Storage(v6, v7, v4, v5, v9);
      return 0;
    }

LABEL_18:
    if (Path.isEmpty.getter())
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCA28]) init];
    }

    else
    {
      v20 = Path.cgPath.getter();
      v21 = [objc_opt_self() bezierPathWithCGPath_];

      v19 = [objc_opt_self() effectWithPath_];
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    [v19 setContainerView_];

    outlined consume of Path.Storage(v6, v7, v4, v5, v9);
    return v19;
  }

  __break(1u);
  return result;
}

double closure #1 in UIKitFocusableViewResponderItem.focusEffect.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *(Value + 8);
  *&v24 = *Value;
  *(&v24 + 1) = v5;
  v6 = *(Value + 32);
  v25 = *(Value + 16);
  v26 = v6;
  v7 = *(a1 + 104);
  v8 = *(a1 + 136);
  v19 = *(a1 + 120);
  v20 = v8;
  v21 = *(a1 + 152);
  v17 = *(a1 + 88);
  v18 = v7;
  v9 = *(a1 + 164);
  v22 = *(a1 + 160);
  v23 = v9;

  _ViewInputs.position.getter();
  type metadata accessor for CGPoint(0);
  v10 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v10);
  AGGraphGetValue();
  v15 = 0uLL;
  *&v16 = MEMORY[0x18D00B390]();
  *(&v16 + 1) = v11;
  static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace.getter();
  v14[40] = 1;
  v17 = v24;
  v18 = v25;
  v19 = v26;

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v14);

  result = *&v15;
  v13 = v16;
  *a2 = v15;
  a2[1] = v13;
  return result;
}

id UIKitFocusableViewResponderItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitFocusableViewResponderItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for TrivialContentPathObserver.contentPathDidChange(for:) in conformance UIKitFocusableViewResponderItem()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath);
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 8);
  v4 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 16);
  v5 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath + 24);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v6 = *(v1 + 32);
  *(v1 + 32) = -1;
  return outlined consume of Path?(v2, v3, v4, v5, v6);
}

uint64_t protocol witness for ContentPathObserver.respondersDidChange(for:) in conformance UIKitFocusableViewResponderItem(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2298](a1, a2, WitnessTable);
}

uint64_t protocol witness for ContentPathObserver.contentPathDidChange(for:changes:transform:finished:) in conformance UIKitFocusableViewResponderItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2290](a1, a2, a3, a4, a5, a6, WitnessTable);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance FocusDelegation.Key@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return _s7SwiftUI9FocusItemVSgWOcTm_0(&static FocusDelegation.Key.defaultValue, v1, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem);
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance FocusDelegation.Key(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v4 = outlined init with take of FocusItem?(a1, v8);
  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v5 = v10 == 1;
  }

  if (v5)
  {
    a2(v11, v4);
    if (v9)
    {
      v6 = 0;
    }

    else
    {
      v6 = v10 == 1;
    }

    if (!v6)
    {
      _s7SwiftUI9FocusItemVSgWOhTm_1(v8, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720], _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3);
    }
  }

  else
  {
    outlined init with take of FocusItem(v8, v11);
  }

  return outlined init with take of FocusItem?(v11, a1);
}

uint64_t protocol witness for ViewGraphFeature.modifyViewOutputs(outputs:inputs:graph:) in conformance FocusDelegation.Feature()
{
  PreferencesOutputs.subscript.getter();
  result = AGCreateWeakAttribute();
  *v0 = result;
  *(v0 + 8) = 0;
  return result;
}

int64x2_t protocol witness for static Rule.initialValue.getter in conformance FocusDelegation.Provider@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = vdupq_n_s64(1uLL);
  *(a1 + 40) = result;
  *(a1 + 56) = 0;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance FocusDelegation.Provider@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 4);
  v5 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);
  *(a1 + 48) = 0;
  swift_weakInit();
  *a1 = v3;
  *(a1 + 4) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 48) = &protocol witness table for FocusableViewResponder;
  *(a1 + 56) = 0;
  swift_weakAssign();
  *(a1 + 33) = 0;
}

uint64_t closure #1 in ViewGraph.delegatedFocusItem()@<X0>(_OWORD *a1@<X8>)
{
  AGGraphClearUpdate();
  lazy protocol witness table accessor for type FocusDelegation.Feature and conformance FocusDelegation.Feature();
  v2 = ViewGraph.subscript.getter();
  if (v2 && (*(v2 + 8) & 1) == 0 && (_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem, MEMORY[0x1E69E6720]), (WeakValue = AGGraphGetWeakValue()) != 0))
  {
    _s7SwiftUI9FocusItemVSgWOcTm_0(WeakValue, v5, &lazy cache variable for type metadata for FocusItem?, &type metadata for FocusItem);
    outlined init with take of FocusItem?(v5, a1);
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = xmmword_18CD6A6D0;
  }

  return AGGraphSetUpdate();
}

void protocol witness for ObservedAttribute.destroy() in conformance UpdateFocusRingFrame()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector];
    *v1 = 0;
    v1[4] = 1;
  }
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance FocusableOptionsKey(void *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 |= v4;
  return result;
}

uint64_t EnvironmentValues.focusDebugDescription.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.focusDebugDescription : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.focusDebugDescription : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.focusDebugDescription.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void (*EnvironmentValues.focusDebugDescription.modify(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v5 = v1[1];
  v3[6] = v5;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *v4 = v4[1];
  return EnvironmentValues.focusDebugDescription.modify;
}

void EnvironmentValues.focusDebugDescription.modify(void **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  v3[2] = **a1;
  v5 = v3[6];
  v3[3] = v4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>);
  if (a2)
  {
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  else
  {
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v5)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  free(v3);
}

uint64_t View.focusable(_:interactions:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  v10 = a5;
  v11 = a6;
  v9 = v6;
  v8[0] = a1;
  v12 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v13 = 0;
  MEMORY[0x18D00A570](v8, a3, &type metadata for _FocusableModifier);
  return outlined destroy of OnCommandModifier(v8);
}

uint64_t type metadata accessor for FocusableViewResponder()
{
  result = type metadata singleton initialization cache for FocusableViewResponder;
  if (!type metadata singleton initialization cache for FocusableViewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusDebugDescription> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusInteractions and conformance FocusInteractions()
{
  result = lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions;
  if (!lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions;
  if (!lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions;
  if (!lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions;
  if (!lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusInteractions and conformance FocusInteractions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusableOptions and conformance FocusableOptions()
{
  result = lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions;
  if (!lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions;
  if (!lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions;
  if (!lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions;
  if (!lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusableOptions and conformance FocusableOptions);
  }

  return result;
}

uint64_t assignWithCopy for _FocusableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  return a1;
}

uint64_t assignWithTake for _FocusableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for _FocusableModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _FocusableModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<FocusEffect> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FocusEffect> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FocusEffect> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<FocusEffect>, &type metadata for FocusEffect, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<FocusEffect> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA11FocusEffectVGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), void (*a5)(void))
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(255, a2, a3, a4);
  type metadata accessor for ModifiedContent();
  a5();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for FocusableGeometryHelper(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FocusableGeometryHelper(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t assignWithCopy for UpdateFocusableViewResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for UpdateViewFocusItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  swift_weakCopyAssign();
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t initializeWithTake for UpdateViewFocusItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakTakeInit();
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for UpdateViewFocusItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakTakeAssign();
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

unint64_t lazy protocol witness table accessor for type FocusEffect.Kind and conformance FocusEffect.Kind()
{
  result = lazy protocol witness table cache variable for type FocusEffect.Kind and conformance FocusEffect.Kind;
  if (!lazy protocol witness table cache variable for type FocusEffect.Kind and conformance FocusEffect.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusEffect.Kind and conformance FocusEffect.Kind);
  }

  return result;
}

id specialized UIKitFocusableViewResponderItem.init(_:)()
{
  swift_weakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameAttr] = 0;
  v1 = &v0[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_contentPath];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v1[32] = -1;
  v2 = &v0[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem____lazy_storage___defaultFocusGroupIdentifier];
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  *(v2 + 24) = xmmword_18CD6A6D0;
  v3 = &v0[OBJC_IVAR____TtC7SwiftUIP33_B6A2D4E72E5722B5103497ADB7778B5F31UIKitFocusableViewResponderItem_frameChangeDetector];
  *v3 = 0;
  v3[4] = 1;
  swift_weakAssign();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for UIKitFocusableViewResponderItem();
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsPlatformFocusSystemEnabled> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined assign with take of FocusGroupIdentifier?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for FocusGroupIdentifier?, &type metadata for FocusGroupIdentifier, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllControlsNavigableKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusDelegation.Provider and conformance FocusDelegation.Provider()
{
  result = lazy protocol witness table cache variable for type FocusDelegation.Provider and conformance FocusDelegation.Provider;
  if (!lazy protocol witness table cache variable for type FocusDelegation.Provider and conformance FocusDelegation.Provider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusDelegation.Provider and conformance FocusDelegation.Provider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FocusDelegation.Feature and conformance FocusDelegation.Feature()
{
  result = lazy protocol witness table cache variable for type FocusDelegation.Feature and conformance FocusDelegation.Feature;
  if (!lazy protocol witness table cache variable for type FocusDelegation.Feature and conformance FocusDelegation.Feature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusDelegation.Feature and conformance FocusDelegation.Feature);
  }

  return result;
}

uint64_t assignWithCopy for UpdateFocusRingFrame(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithTake for UpdateFocusRingFrame(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for UpdateFocusRingFrame(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for UIKitFocusableViewResponderItem.FocusedStateCommitMutation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UIKitFocusableViewResponderItem.FocusedStateCommitMutation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t EnvironmentValues.labelsVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t EnvironmentValues.labelsVisibility.setter()
{
  type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.labels(_:)(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  swift_getKeyPath();
  v12 = a1;
  View.environment<A>(_:_:)();

  v9 = lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>);
  v11[1] = a3;
  v11[2] = v9;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured();
  View.input<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t (*EnvironmentValues.labelsVisibility.modify(uint64_t a1))(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(a1 + 24) = *(a1 + 25);
  return EnvironmentValues.labelsVisibility.modify;
}

uint64_t EnvironmentValues.labelsVisibility.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for ViewInputFlagModifier<LabelVisibilityConfigured>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<LabelVisibilityConfigured>)
  {
    lazy protocol witness table accessor for type LabelVisibilityConfigured and conformance LabelVisibilityConfigured();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<LabelVisibilityConfigured>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.labelsVisibility.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type _CircleLayout and conformance _CircleLayout()
{
  result = lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout;
  if (!lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout;
  if (!lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CircleLayout and conformance _CircleLayout);
  }

  return result;
}

uint64_t specialized _CircleLayout.placeSubviews(in:proposal:subviews:cache:)(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  v13 = *(a1 + 17);
  v14 = *v5;
  CGRectGetMidX(*&a2);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMidY(v21);
  LODWORD(v19.a) = v10;
  v19.b = v11;
  LOBYTE(v19.c) = v12;
  BYTE1(v19.c) = v13;
  v15 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v15 < 0 || result < v15)
  {
    goto LABEL_9;
  }

  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      CGAffineTransform.init(rotation:)();
      v18 = v19;
      v20.x = 0.0;
      v20.y = -v14;
      CGPointApplyAffineTransform(v20, &v18);
      LODWORD(v18.a) = v10;
      v18.b = v11;
      LOBYTE(v18.c) = v12;
      BYTE1(v18.c) = v13;
      LayoutSubviews.subscript.getter();
      static UnitPoint.center.getter();
      result = LayoutSubview.place(at:anchor:proposal:)();
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _CircleLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _CircleLayout and conformance _CircleLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InitialSceneSizeState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 26))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InitialSceneSizeState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 26) = v3;
  return result;
}

uint64_t getEnumTag for InitialSceneSizeState(uint64_t a1)
{
  if (*(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for InitialSceneSizeState(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 25) = 1;
  }

  else
  {
    *(result + 25) = 0;
  }

  return result;
}

void closure #1 in SceneBridge.updateMinimumSizeObserver(added:viewGraph:)(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState;
    if (*(Strong + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState + 25) == 1 && ((v6 = *(v5 + 24), v7 = *v5, v8 = *(v5 + 8) | *(v5 + 16), !v6) ? (v9 = (v8 | v7) == 0) : (v9 = 0), !v9 ? (v10 = v6 == 0) : (v10 = 0), v10 ? (v11 = v7 == 1) : (v11 = 0), v11 ? (v12 = v8 == 0) : (v12 = 0), v12) || (v13 = swift_unknownObjectWeakLoadStrong()) == 0 || (v14 = v13, v15 = [v13 sizeRestrictions], v14, !v15))
    {
    }

    else
    {
      [v15 minimumSize];
      if (v17 != v2 || v16 != v3)
      {
        [v15 setMinimumSize_];
      }
    }
  }
}

void closure #1 in SceneBridge.updateMaximumSizeObserver(added:viewGraph:)(uint64_t a1, double *a2)
{
  v3 = *a2;
  v2 = a2[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState;
    if (*(Strong + OBJC_IVAR____TtC7SwiftUI11SceneBridge_initialSceneSizeState + 25) == 1 && ((v6 = *(v5 + 24), v7 = *v5, v8 = *(v5 + 8) | *(v5 + 16), !v6) ? (v9 = (v8 | v7) == 0) : (v9 = 0), !v9 ? (v10 = v6 == 0) : (v10 = 0), v10 ? (v11 = v7 == 1) : (v11 = 0), v11 ? (v12 = v8 == 0) : (v12 = 0), v12) || (v13 = swift_unknownObjectWeakLoadStrong()) == 0 || (v14 = v13, v15 = [v13 sizeRestrictions], v14, !v15))
    {
    }

    else
    {
      [v15 maximumSize];
      if (v17 != INFINITY || v16 != INFINITY)
      {
        v19 = 2777777.0;
        if (v3 <= 2777777.0)
        {
          v20 = v3;
        }

        else
        {
          v20 = 2777777.0;
        }

        if (v2 <= 2777777.0)
        {
          v19 = v2;
        }

        [v15 setMaximumSize_];
      }
    }
  }
}

uint64_t specialized static InitialSceneSizeState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *(a2 + 24);
  if (*(a1 + 25) == 1)
  {
    v12 = v6 | v5;
    if (v12 | v4)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7 == 0;
    }

    if (v13)
    {
      if (v10 | v9 | v8)
      {
        v17 = 0;
      }

      else
      {
        v17 = v11 == 0;
      }

      v18 = v17;
      if (*(a2 + 25))
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      return v19 & 1;
    }

    else if (!*(a1 + 24) && (v4 == 1 ? (v14 = v12 == 0) : (v14 = 0), v14))
    {
      if (*(a2 + 25) && ((v15 = v10 | v9, v15 | v8) || *(a2 + 24)))
      {
        return v8 == 1 && v15 == 0 && v11 == 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = v10 | v9;
      v21 = v20 | v8;
      v24 = v8 != 1 || v20 != 0 || v11 != 0;
      if (v21)
      {
        v25 = 0;
      }

      else
      {
        v25 = v11 == 0;
      }

      v26 = !v25 && v24;
      return (*(a2 + 25) & 1) != 0 && v26;
    }
  }

  else if (*(a2 + 25))
  {
    return 0;
  }

  else
  {
    v39 = v2;
    v40 = v3;
    v35 = v4;
    v36 = v5 & 1;
    v37 = v6;
    v38 = v7 & 1;
    v31 = v8;
    v32 = v9 & 1;
    v33 = v10;
    v34 = v11 & 1;
    return MEMORY[0x18D004850](&v35, &v31) & 1;
  }
}

Swift::Int TimelineView.Context.Cadence.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimelineView<A, B>.Context.Cadence()
{
  Hasher.init(_seed:)();
  TimelineView.Context.Cadence.hash(into:)();
  return Hasher._finalize()();
}

uint64_t closure #1 in TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v22[1] = a3;
  v23 = a2;
  v24 = a6;
  type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  v18 = type metadata accessor for TimelineView.Context();
  v20 = *(v18 - 8);
  result = v18 - 8;
  if (*(v20 + 64) == v10)
  {
    outlined init with copy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(a1, v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    v23(v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    outlined destroy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimelineView<EveryMinuteTimelineSchedule, Never>.Context);
    static ViewBuilder.buildExpression<A>(_:)(v14, a4, a5);
    v21 = *(v11 + 8);
    v21(v14, a4);
    static ViewBuilder.buildExpression<A>(_:)(v17, a4, a5);
    return (v21)(v17, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL TimelineView<>.UpdateFilter.updateFromBacklightServices(frameSpecifier:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = [a1 entrySpecifierForTimelineIdentifier_];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 timelineEntry];
    v17 = [v16 presentationTime];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 32))(v13, v9, v6);
    Date.timeIntervalSinceReferenceDate.getter();
    v19 = v18;

    (*(v7 + 8))(v13, v6);
    *(v3 + *(a2 + 96)) = v19;
    *(v3 + *(a2 + 100)) = 0x7FF0000000000000;
  }

  return v15 != 0;
}

void *initializeBufferWithCopyOfBuffer for TimelineView.Context(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 44)) = *(a2 + *(a3 + 44));
    swift_weakCopyInit();
  }

  return a1;
}

uint64_t assignWithCopy for TimelineView.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 44)) = *(a2 + *(a3 + 44));
  swift_weakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for TimelineView.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 44)) = *(a2 + *(a3 + 44));
  swift_weakTakeInit();
  return a1;
}

uint64_t assignWithTake for TimelineView.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 44)) = *(a2 + *(a3 + 44));
  swift_weakTakeAssign();
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TimelineView<>.UpdateFilter(uint64_t *a1, uint64_t *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v8 + 7;
  v10 = v6 & 0x100000;
  if (v7 > 7 || v10 != 0 || ((((v8 + 7 + ((v7 + 52) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v14 = AssociatedTypeWitness;
    *a1 = *a2;
    v15 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v16 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v15 = *v16;
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v17 = *v18;
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v19 = *v20;
    v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v21 = *v22;
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = *v24;
    *v23 = *v24;
    v26 = ((v23 + 11) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
    v28 = v27 + 19;
    *v26 = *v27;
    v29 = v26 + 19;
    v26[1] = v27[1];
    v30 = (v26 + 11) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v27 + 11) & 0xFFFFFFFFFFFFFFF8;
    *v30 = *v31;
    *(v30 + 4) = *(v31 + 4);
    *(v29 & 0xFFFFFFFFFFFFFFF8) = *(v28 & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v7 + (v29 & 0xFFFFFFFFFFFFFFF8) + 4) & ~v7);
    v33 = ((v7 + (v28 & 0xFFFFFFFFFFFFFFF8) + 4) & ~v7);
    v34 = *(v5 + 48);
    v35 = v25;
    if (v34(v33, 1, v14))
    {
      memcpy(v32, v33, v8);
    }

    else
    {
      (*(v5 + 16))(v32, v33, v14);
      (*(v5 + 56))(v32, 0, 1, v14);
    }

    v36 = ((v32 + v9) & 0xFFFFFFFFFFFFFFF8);
    v37 = ((v33 + v9) & 0xFFFFFFFFFFFFFFF8);
    *v36 = *v37;
    v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v38 = *v39;
    *(v38 + 8) = *(v39 + 8);
  }

  return a1;
}

_DWORD *assignWithCopy for TimelineView<>.UpdateFilter(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v3;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v5;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v7;
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v12 += 11;
  v14 = *v11;
  *v11 = v13;
  v11 += 11;
  v15 = v13;

  *(v11 & 0xFFFFFFFFFFFFFFF8) = *(v12 & 0xFFFFFFFFFFFFFFF8);
  *((v11 & 0xFFFFFFFFFFFFFFF8) + 4) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 4);
  v16 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v17 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 4) = *(v17 + 4);
  v18 = (((v11 & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
  v19 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 80);
  v23 = ((v18 + v22 + 4) & ~v22);
  v24 = ((v19 + v22 + 4) & ~v22);
  v25 = *(v21 + 48);
  LODWORD(v18) = v25(v23, 1, AssociatedTypeWitness);
  v26 = v25(v24, 1, AssociatedTypeWitness);
  if (v18)
  {
    if (!v26)
    {
      (*(v21 + 16))(v23, v24, AssociatedTypeWitness);
      (*(v21 + 56))(v23, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v27 = *(v21 + 84);
    v28 = *(v21 + 64);
  }

  else
  {
    if (!v26)
    {
      (*(v21 + 24))(v23, v24, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v21 + 8))(v23, AssociatedTypeWitness);
    v27 = *(v21 + 84);
    v28 = *(v21 + 64);
  }

  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = v28 + 1;
  }

  memcpy(v23, v24, v29);
LABEL_12:
  if (*(v21 + 84))
  {
    v30 = *(v21 + 64);
  }

  else
  {
    v30 = *(v21 + 64) + 1;
  }

  v31 = ((v23 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v33 = *v34;
  *(v33 + 8) = *(v34 + 8);
  return a1;
}

_DWORD *initializeWithTake for TimelineView<>.UpdateFilter(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14 + 19;
  *v13 = *v14;
  v16 = v13 + 19;
  v13[1] = v14[1];
  v17 = (v13 + 11) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v14 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 4) = *(v18 + 4);
  v19 = v16 & 0xFFFFFFFFFFFFFFF8;
  v20 = v15 & 0xFFFFFFFFFFFFFFF8;
  *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v15 & 0xFFFFFFFFFFFFFFF8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 80);
  v24 = ((v23 + v19 + 4) & ~v23);
  v25 = ((v23 + v20 + 4) & ~v23);
  if ((*(v22 + 48))(v25, 1, AssociatedTypeWitness))
  {
    v26 = *(v22 + 84);
    v27 = *(v22 + 64);
    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v22 + 32))(v24, v25, AssociatedTypeWitness);
    v30 = *(v22 + 56);
    v29 = v22 + 56;
    v30(v24, 0, 1, AssociatedTypeWitness);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  v32 = ((v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v25 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v34 = *v35;
  *(v34 + 8) = *(v35 + 8);
  return a1;
}

_DWORD *assignWithTake for TimelineView<>.UpdateFilter(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v3;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v5;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v7;
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v12 += 11;
  v14 = *v11;
  *v11 = v13;
  v11 += 11;

  *(v11 & 0xFFFFFFFFFFFFFFF8) = *(v12 & 0xFFFFFFFFFFFFFFF8);
  *((v11 & 0xFFFFFFFFFFFFFFF8) + 4) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 4);
  v15 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 4) = *(v16 + 4);
  v17 = (((v11 & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
  v18 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 80);
  v22 = ((v17 + v21 + 4) & ~v21);
  v23 = ((v18 + v21 + 4) & ~v21);
  v24 = *(v20 + 48);
  LODWORD(v17) = v24(v22, 1, AssociatedTypeWitness);
  v25 = v24(v23, 1, AssociatedTypeWitness);
  if (v17)
  {
    if (!v25)
    {
      (*(v20 + 32))(v22, v23, AssociatedTypeWitness);
      (*(v20 + 56))(v22, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v26 = *(v20 + 84);
    v27 = *(v20 + 64);
  }

  else
  {
    if (!v25)
    {
      (*(v20 + 40))(v22, v23, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v20 + 8))(v22, AssociatedTypeWitness);
    v26 = *(v20 + 84);
    v27 = *(v20 + 64);
  }

  if (v26)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  memcpy(v22, v23, v28);
LABEL_12:
  if (*(v20 + 84))
  {
    v29 = *(v20 + 64);
  }

  else
  {
    v29 = *(v20 + 64) + 1;
  }

  v30 = ((v22 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v23 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v32 = *v33;
  *(v32 + 8) = *(v33 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimelineView<>.UpdateFilter(unsigned __int8 *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = 7;
  if (!v6)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_36;
  }

  v12 = ((((v11 + v10 + ((v9 + 52) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v12 <= 3)
  {
    v13 = ((a2 - v8 + 255) >> 8) + 1;
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

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *&a1[v12];
      if (!*&a1[v12])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v16 = *&a1[v12];
      if (!v16)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v15 || (v16 = a1[v12]) == 0)
  {
LABEL_36:
    v20 = ((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v22 = (*(v5 + 48))((((((v20 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + v9 + 12) & ~v9);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = *v20;
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }
  }

  v18 = v12 > 3;
  if (v12 <= 3)
  {
    v19 = (v16 - 1) << (8 * v12);
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v23 = *a1;
  }

  else
  {
    v23 = *a1;
  }

  return v8 + (v23 | v19) + 1;
}

void storeEnumTagSinglePayload for TimelineView<>.UpdateFilter(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((((v12 + ((v10 + 52) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 < a3)
  {
    if (v13 <= 3)
    {
      v14 = ((a3 - v11 + 255) >> 8) + 1;
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
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v11 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      v18 = ((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v20 = ((((((v18 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + v10 + 12) & ~v10);
        if (v9 >= a2)
        {
          v24 = *(v7 + 56);

          v24((((((v18 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + v10 + 12) & ~v10, a2 + 1);
        }

        else
        {
          if (v12 <= 3)
          {
            v21 = ~(-1 << (8 * v12));
          }

          else
          {
            v21 = -1;
          }

          if (v12)
          {
            v22 = v21 & (~v9 + a2);
            if (v12 <= 3)
            {
              v23 = v12;
            }

            else
            {
              v23 = 4;
            }

            bzero(v20, v12);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                *v20 = v22;
                v20[2] = BYTE2(v22);
              }

              else
              {
                *v20 = v22;
              }
            }

            else if (v23 == 1)
            {
              *v20 = v22;
            }

            else
            {
              *v20 = v22;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  v16 = ~v11 + a2;
  bzero(a1, ((((v12 + ((v10 + 52) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v13 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v16;
    if (v6 > 1)
    {
LABEL_27:
      if (v6 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v6)
  {
    a1[v13] = v17;
  }
}

uint64_t outlined init with take of (value: Date?, changed: Bool)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (value: Date?, changed: Bool)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ToolbarSpacer.init(_:placement:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, (a3 + 8));
  *a3 = v5;

  return outlined assign with take of ToolbarItemPlacement(a2, (a3 + 8));
}

uint64_t static ToolbarSpacer.fixed.getter@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, v5);
  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, (a2 + 8));
  *a2 = a1;
  return outlined assign with take of ToolbarItemPlacement(v5, (a2 + 8));
}

uint64_t static ToolbarSpacer.fixed(placement:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  outlined init with copy of ToolbarItemPlacement(a1, v6);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, (a3 + 8));
  *a3 = a2;
  return outlined assign with take of ToolbarItemPlacement(v6, (a3 + 8));
}

uint64_t static ToolbarSpacer._makeToolbar(content:inputs:)@<X0>(unsigned int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v5 = a2[3];
  v16 = a2[2];
  *v17 = v5;
  *&v17[12] = *(a2 + 60);
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  v7 = a2[3];
  v13[2] = v16;
  v14[0] = v7;
  *(v14 + 12) = *(a2 + 60);
  v8 = *a1;
  v13[0] = v15[0];
  v13[1] = v4;
  outlined init with copy of _ToolbarInputs(v15, v12);
  specialized ToolbarSpacer.PreferenceTransform.init(spacer:inputs:)(v8, v13);
  v9 = *&v17[16] + 1;
  PreferencesOutputs.init()();
  v10 = DWORD2(v13[0]);
  *a3 = *&v13[0];
  *(a3 + 8) = v10;
  *(a3 + 16) = v9;
  *&v13[0] = *v17;
  DWORD2(v13[0]) = *&v17[8];

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static ToolbarSpacer._makeToolbar(content:inputs:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type ToolbarSpacer.PreferenceTransform and conformance ToolbarSpacer.PreferenceTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t closure #1 in ToolbarSpacer.PreferenceTransform.value.getter(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, int a5)
{
  v6 = a4;
  v26 = a1;
  v8 = HIDWORD(a3);
  v9 = HIDWORD(a4);
  v10 = type metadata accessor for ToolbarStorage.Entry(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  outlined init with copy of ToolbarItemPlacement((a2 + 8), &v29);
  v27 = v29;
  v28[0] = v30[0];
  *(v28 + 9) = *(v30 + 9);
  v15 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == v8)
  {
    if (v8 == v6)
    {
      v16 = 0;
      goto LABEL_5;
    }

    v16 = 0;
    v17 = *AGGraphGetValue();
    if (v15 != v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = *AGGraphGetValue();
    if (v15 == v6)
    {
LABEL_5:
      v17 = 1;
      if (v15 == v9)
      {
        goto LABEL_6;
      }

LABEL_13:
      v18 = *AGGraphGetValue();
      if (v15 == a5)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    v17 = *AGGraphGetValue();
    if (*AGGraphGetValue())
    {
      v17 = 1;
    }

    if (v15 != v9)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  v18 = 0;
  if (v15 == a5)
  {
LABEL_7:
    v19 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v19 = *AGGraphGetValue();
  if (v15 != v8 && *AGGraphGetValue())
  {
    v19 = 0;
  }

LABEL_17:
  v31[0] = v14 ^ 1;
  v32 = v27;
  *v33 = v28[0];
  *&v33[9] = *(v28 + 9);
  v34 = v16;
  v35 = 0;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  outlined init with copy of ToolbarStorage.SpacerItem(v31, v13);
  type metadata accessor for ToolbarStorage.Entry.Kind(0);
  swift_storeEnumTagMultiPayload();
  v13[*(v10 + 20)] = 2;
  v20 = v26;
  v21 = *(v26 + 48);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1, v21);
  }

  outlined destroy of ToolbarStorage.SpacerItem(v31);
  v21[2] = v23 + 1;
  result = outlined init with take of ToolbarStorage.Entry(v13, v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23);
  *(v20 + 48) = v21;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ToolbarSpacer.PreferenceTransform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *(v1 + 4);
  v8 = *v1;
  Value = AGGraphGetValue();
  outlined init with copy of ToolbarSpacer(Value, v9);
  v5 = swift_allocObject();
  v6 = v9[1];
  *(v5 + 16) = v9[0];
  *(v5 + 32) = v6;
  *(v5 + 48) = v9[2];
  *(v5 + 64) = v10;
  *(v5 + 68) = v8;
  *(v5 + 76) = v1[1];
  *(v5 + 84) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in ToolbarSpacer.PreferenceTransform.value.getter;
  *(result + 24) = v5;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a1[1] = result;
  return result;
}

unint64_t specialized ToolbarSpacer.PreferenceTransform.init(spacer:inputs:)(unsigned int a1, _OWORD *a2)
{
  v3 = a2[3];
  v7[2] = a2[2];
  v8[0] = v3;
  *(v8 + 12) = *(a2 + 60);
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  if (one-time initialization token for toolbarCustomizationBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationVisibility != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemIsHidden != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationOptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _ToolbarInputs(v7);
  return a1 | (v5 << 32);
}

uint64_t assignWithCopy for ToolbarSpacer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    if (*(a2 + 48) == 1)
    {
      v5 = *(a2 + 32);
      *(a1 + 32) = v5;
      *(a1 + 40) = *(a2 + 40);
      (**(v5 - 8))(v3, a2 + 8);
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = *(a2 + 8);
      v7 = *(a2 + 24);
      *(v3 + 25) = *(a2 + 33);
      *v3 = v6;
      v3[1] = v7;
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarSpacer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[49])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarSpacer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarSpacer.PreferenceTransform and conformance ToolbarSpacer.PreferenceTransform()
{
  result = lazy protocol witness table cache variable for type ToolbarSpacer.PreferenceTransform and conformance ToolbarSpacer.PreferenceTransform;
  if (!lazy protocol witness table cache variable for type ToolbarSpacer.PreferenceTransform and conformance ToolbarSpacer.PreferenceTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarSpacer.PreferenceTransform and conformance ToolbarSpacer.PreferenceTransform);
  }

  return result;
}

uint64_t ListBadgedViewStyle.makeBody(configuration:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = static VerticalAlignment.center.getter();
  v11 = 0;
  closure #1 in ListBadgedViewStyle.makeBody(configuration:)(v1, v2, v3, v4, &v23);
  v18 = v29;
  v19 = v30;
  v14 = v25;
  v15 = v26;
  v16 = v27;
  v17 = v28;
  v12 = v23;
  v13 = v24;
  v21[6] = v29;
  v21[7] = v30;
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v28;
  v20 = v31;
  v22 = v31;
  v21[0] = v23;
  v21[1] = v24;
  v6 = MEMORY[0x1E6981F40];
  outlined init with copy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(&v12, &v8, &lazy cache variable for type metadata for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>, type metadata accessor for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?), MEMORY[0x1E6981F40]);
  outlined destroy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(v21, &lazy cache variable for type metadata for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>, type metadata accessor for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?), v6);
  *(&v10[6] + 7) = v18;
  *(&v10[5] + 7) = v17;
  *(&v10[2] + 7) = v14;
  *(&v10[1] + 7) = v13;
  *(&v10[7] + 7) = v19;
  *(&v10[8] + 7) = v20;
  *(&v10[3] + 7) = v15;
  *(&v10[4] + 7) = v16;
  *(v10 + 7) = v12;
  *&v9[81] = v10[5];
  *&v9[97] = v10[6];
  *&v9[113] = v10[7];
  *&v9[128] = *(&v10[7] + 15);
  *&v9[17] = v10[1];
  *&v9[33] = v10[2];
  *&v9[49] = v10[3];
  *&v9[65] = v10[4];
  v8 = v5;
  v9[0] = v11;
  *&v9[1] = v10[0];
  Spacing.init()();
  type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>();
  lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>);
  View.spacing(_:)();

  v29 = *&v9[80];
  v30 = *&v9[96];
  v31 = *&v9[112];
  v32 = *&v9[128];
  v25 = *&v9[16];
  v26 = *&v9[32];
  v27 = *&v9[48];
  v28 = *&v9[64];
  v23 = v8;
  v24 = *v9;
  return outlined destroy of HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>(&v23);
}

uint64_t closure #1 in ListBadgedViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >> 1 == 0xFFFFFFFF)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    KeyPath = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0x1FFFFFFFELL;
  }

  else
  {
    v17 = a1;
    v19 = a3;
    v20 = a2;
    KeyPath = swift_getKeyPath();
    v10 = swift_getKeyPath();
    v11 = swift_getKeyPath();
    v30[0] = 0;
    v12 = swift_getKeyPath();
    v21 = swift_getKeyPath();
    a2 = v20;
    a3 = v19;
    v13 = v21;
    a1 = v17;
    v15 = 0x4024000000000000;
    v14 = 0x3FF0000000000000;
    v6 = v17;
    v7 = v20;
    v16 = v19;
    v8 = a4;
  }

  v32 = 0;
  *&v33 = v6;
  *(&v33 + 1) = v7;
  *&v34 = v16;
  *(&v34 + 1) = v8;
  v35 = KeyPath;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = 0;
  v41 = v14;
  *&v31[55] = v10;
  *&v31[39] = KeyPath;
  *&v31[23] = v34;
  *&v31[7] = v33;
  *&v31[119] = v14;
  *&v31[103] = v13;
  *&v31[87] = v12;
  *&v31[71] = v11;
  *a5 = v15;
  *(a5 + 8) = 0;
  v22 = *v31;
  v23 = *&v31[16];
  v24 = *&v31[32];
  *(a5 + 57) = *&v31[48];
  *(a5 + 41) = v24;
  *(a5 + 25) = v23;
  *(a5 + 9) = v22;
  v25 = *&v31[64];
  v26 = *&v31[80];
  v27 = *&v31[96];
  *(a5 + 120) = *&v31[111];
  *(a5 + 105) = v27;
  *(a5 + 89) = v26;
  *(a5 + 73) = v25;
  v42[0] = v6;
  v42[1] = v7;
  v42[2] = v16;
  v42[3] = v8;
  v42[4] = KeyPath;
  v42[5] = 0;
  v42[6] = v10;
  v42[7] = 0;
  v42[8] = v11;
  v42[9] = 0;
  v42[10] = v12;
  v42[11] = 0;
  v42[12] = v13;
  v42[13] = 0;
  v42[14] = v14;
  outlined copy of BadgeLabel?(a1, a2, a3);
  v28 = MEMORY[0x1E69E6720];
  outlined init with copy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(&v33, v30, &lazy cache variable for type metadata for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?, type metadata accessor for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>, MEMORY[0x1E69E6720]);
  return outlined destroy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(v42, &lazy cache variable for type metadata for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?, type metadata accessor for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>, v28);
}

void type metadata accessor for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)()
{
  if (!lazy cache variable for type metadata for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?))
  {
    type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(255, &lazy cache variable for type metadata for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?, type metadata accessor for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?));
    }
  }
}

void type metadata accessor for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>)
  {
    type metadata accessor for Badge<BadgeLabel>();
    type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<LayoutPriorityTraitKey>, MEMORY[0x1E697FEB0], MEMORY[0x1E697FEA0], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>);
    }
  }
}

void type metadata accessor for Badge<BadgeLabel>()
{
  if (!lazy cache variable for type metadata for Badge<BadgeLabel>)
  {
    lazy protocol witness table accessor for type BadgeLabel and conformance BadgeLabel();
    v0 = type metadata accessor for Badge();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Badge<BadgeLabel>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>)
  {
    type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(255, &lazy cache variable for type metadata for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>, type metadata accessor for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)> and conformance TupleView<A>();
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(255, &lazy cache variable for type metadata for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>, type metadata accessor for (BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>(uint64_t a1)
{
  type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t Badge.style.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  v3 = *v2;
  v4 = *(v2 + 8);
  specialized Environment.wrappedValue.getter(*v2, v4, &v7);
  if (v7 == 2)
  {
    specialized Environment.wrappedValue.getter(v3, v4, &v7);
    if (v7 == 2)
    {
      v7 = static Color.white.getter();
      AnyShapeStyle.init<A>(_:)();

      v7 = static Color.red.getter();
    }

    else
    {
      LODWORD(v7) = 1;
      AnyShapeStyle.init<A>(_:)();
      LODWORD(v7) = 4;
    }

    AnyShapeStyle.init<A>(_:)();
    v5 = static Font.body.getter();
  }

  else
  {
    v5 = static Font.body.getter();
    LODWORD(v7) = 1;
    AnyShapeStyle.init<A>(_:)();
  }

  return v5;
}

uint64_t Badge.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, type metadata accessor for Font?, MEMORY[0x1E6980A08]);
  v4 = type metadata accessor for ModifiedContent();
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - v5;
  type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
  v7 = type metadata accessor for ModifiedContent();
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v57 - v11;
  v57 = v12;
  v13 = type metadata accessor for ModifiedContent();
  v66 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v57 - v14;
  v59 = v15;
  v16 = type metadata accessor for ModifiedContent();
  v68 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v57 - v17;
  type metadata accessor for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>();
  v69 = v16;
  v18 = type metadata accessor for ModifiedContent();
  v74 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v57 - v19;
  v63 = v20;
  v75 = type metadata accessor for ModifiedContent();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v70 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v71 = &v57 - v23;
  v24 = Badge.style.getter(a1);
  v77 = v25;
  v78 = v24;
  v27 = v26;
  v28 = *(a1 + 24);
  v58 = v26 == 0;
  if (v26)
  {
    v80 = 0x4038000000000000;
    closure #1 in Badge.body.getter(&v80, v2, v79);
  }

  View.font(_:)();
  v80 = v77;
  v29 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>();
  v79[13] = v28;
  *&v79[14] = v29;
  WitnessTable = swift_getWitnessTable();
  View.foregroundStyle<A>(_:)();
  (*(v62 + 8))(v6, v4);
  static Edge.Set.horizontal.getter();
  v31 = lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>();
  *&v79[11] = WitnessTable;
  *&v79[12] = v31;
  v32 = swift_getWitnessTable();
  v33 = v60;
  View.padding(_:_:)();
  (*(v61 + 8))(v9, v7);
  static Alignment.center.getter();
  *&v79[9] = v32;
  *&v79[10] = MEMORY[0x1E697E5D8];
  v55 = v57;
  v56 = swift_getWitnessTable();
  v34 = v64;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v65 + 8))(v33, v55);
  static Alignment.center.getter();
  *&v79[7] = v56;
  *&v79[8] = MEMORY[0x1E697EBF8];
  v35 = v59;
  v36 = swift_getWitnessTable();
  v37 = v67;
  View.frame(width:height:alignment:)();
  (*(v66 + 8))(v34, v35);
  if (v27)
  {
    v38 = v27;
  }

  else
  {
    v80 = static Color.clear.getter();
    v38 = AnyShapeStyle.init<A>(_:)();
  }

  v80 = v38;
  LOBYTE(v79[0]) = 1;
  *&v79[5] = v36;
  *&v79[6] = MEMORY[0x1E697E040];

  v39 = v69;
  v40 = swift_getWitnessTable();
  lazy protocol witness table accessor for type Capsule and conformance Capsule();
  v41 = v72;
  View.background<A, B>(_:in:fillStyle:)();

  (*(v68 + 8))(v37, v39);
  v42 = lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>, type metadata accessor for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>);
  *&v79[3] = v40;
  *&v79[4] = v42;
  v43 = v63;
  v44 = swift_getWitnessTable();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v43, v44, v45, v46);
  v47 = type metadata accessor for AccessibilityBadgedViewModifier.Badge();
  v48 = swift_getWitnessTable();
  *&v79[1] = v44;
  *&v79[2] = &protocol witness table for AccessibilityAttachmentModifier;
  v49 = v75;
  v50 = swift_getWitnessTable();
  v51 = v70;
  View.accessibilityConfiguration<A>(_:)(v50, v43, v47, v44, v48);

  (*(v74 + 8))(v41, v43);
  v52 = v71;
  static ViewBuilder.buildExpression<A>(_:)(v51, v49, v50);
  v53 = *(v73 + 8);
  v53(v51, v49);
  static ViewBuilder.buildExpression<A>(_:)(v52, v49, v50);
  return (v53)(v52, v49);
}

void closure #1 in Badge.body.getter(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v5 = *a1;
  v13 = 6;
  v6 = type metadata accessor for Badge();
  specialized Environment.wrappedValue.getter(*(a2 + *(v6 + 48)), *(a2 + *(v6 + 48) + 8), &v12);
  v7 = v5 * MEMORY[0x18D0099E0](&v13, &v12);
  v8 = specialized Environment.wrappedValue.getter(*(a2 + *(v6 + 52)), *(a2 + *(v6 + 52) + 8));
  v9 = v8 == 1.0;
  v10 = v8 * round(v7 / v8);
  v11 = round(v7);
  if (v9)
  {
    v10 = v11;
  }

  *a3 = v10;
}

uint64_t type metadata completion function for Badge()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Badge(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 71) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = v3 + v5;
    v11 = a2 + v5;
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    v15 = *(v13 + 8);
    outlined copy of Environment<Selector?>.Content(*v13, v15);
    *v12 = v14;
    *(v12 + 8) = v15;
    v16 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v19 = *(v17 + 8);
    outlined copy of Environment<Selector?>.Content(*v17, v19);
    *v16 = v18;
    *(v16 + 8) = v19;
    v20 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    v23 = *(v21 + 8);
    outlined copy of Environment<Selector?>.Content(*v21, v23);
    *v20 = v22;
    *(v20 + 8) = v23;
    v24 = (v10 + 55) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v11 + 55) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    v27 = *(v25 + 8);
    outlined copy of Environment<Selector?>.Content(*v25, v27);
    *v24 = v26;
    *(v24 + 8) = v27;
    v28 = (v10 + 71) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v11 + 71) & 0xFFFFFFFFFFFFFFF8;
    v30 = *v29;
    v31 = *(v29 + 8);
    outlined copy of Environment<Selector?>.Content(*v29, v31);
    *v28 = v30;
    *(v28 + 8) = v31;
  }

  return v3;
}

uint64_t destroy for Badge(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + a1;
  outlined consume of Environment<Selector?>.Content(*((v4 + 7) & 0xFFFFFFFFFFFFFFF8), *(((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v4 + 23) & 0xFFFFFFFFFFFFFFF8), *(((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v4 + 39) & 0xFFFFFFFFFFFFFFF8), *(((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v4 + 55) & 0xFFFFFFFFFFFFFFF8), *(((v4 + 55) & 0xFFFFFFFFFFFFFFF8) + 8));
  v5 = (v4 + 71) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 8);

  return outlined consume of Environment<Selector?>.Content(v6, v7);
}

uint64_t initializeWithCopy for Badge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v5) = *(v10 + 8);
  outlined copy of Environment<Selector?>.Content(*v10, v5);
  *v9 = v11;
  *(v9 + 8) = v5;
  v12 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  LOBYTE(v5) = *(v13 + 8);
  outlined copy of Environment<Selector?>.Content(*v13, v5);
  *v12 = v14;
  *(v12 + 8) = v5;
  v15 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  LOBYTE(v5) = *(v16 + 8);
  outlined copy of Environment<Selector?>.Content(*v16, v5);
  *v15 = v17;
  *(v15 + 8) = v5;
  v18 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v8 + 55) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  LOBYTE(v5) = *(v19 + 8);
  outlined copy of Environment<Selector?>.Content(*v19, v5);
  *v18 = v20;
  *(v18 + 8) = v5;
  v21 = (v7 + 71) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v8 + 71) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  LOBYTE(v5) = *(v22 + 8);
  outlined copy of Environment<Selector?>.Content(*v22, v5);
  *v21 = v23;
  *(v21 + 8) = v5;
  return a1;
}

uint64_t assignWithCopy for Badge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v5) = *(v10 + 8);
  outlined copy of Environment<Selector?>.Content(*v10, v5);
  v12 = *v9;
  v13 = *(v9 + 8);
  *v9 = v11;
  *(v9 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v5) = *(v15 + 8);
  outlined copy of Environment<Selector?>.Content(*v15, v5);
  v17 = *v14;
  v18 = *(v14 + 8);
  *v14 = v16;
  *(v14 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  v19 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  LOBYTE(v5) = *(v20 + 8);
  outlined copy of Environment<Selector?>.Content(*v20, v5);
  v22 = *v19;
  v23 = *(v19 + 8);
  *v19 = v21;
  *(v19 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  v24 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v8 + 55) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  LOBYTE(v5) = *(v25 + 8);
  outlined copy of Environment<Selector?>.Content(*v25, v5);
  v27 = *v24;
  v28 = *(v24 + 8);
  *v24 = v26;
  *(v24 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  v29 = (v7 + 71) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v8 + 71) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  LOBYTE(v5) = *(v30 + 8);
  outlined copy of Environment<Selector?>.Content(*v30, v5);
  v32 = *v29;
  v33 = *(v29 + 8);
  *v29 = v31;
  *(v29 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v32, v33);
  return a1;
}

uint64_t initializeWithTake for Badge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *v12 = v14;
  v15 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v14) = *(v16 + 8);
  *v15 = *v16;
  *(v15 + 8) = v14;
  v17 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v8 + 55) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v14) = *(v18 + 8);
  *v17 = *v18;
  *(v17 + 8) = v14;
  v19 = (v7 + 71) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v8 + 71) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v17) = *(v20 + 8);
  *v19 = *v20;
  *(v19 + 8) = v17;
  return a1;
}

uint64_t assignWithTake for Badge(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  v12 = *v9;
  v13 = *(v9 + 8);
  *v9 = v11;
  *(v9 + 8) = v10;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v17 = *v14;
  v18 = *(v14 + 8);
  *v14 = v16;
  *(v14 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  v19 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  v22 = *v19;
  v23 = *(v19 + 8);
  *v19 = v21;
  *(v19 + 8) = v20;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  v24 = (v7 + 55) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v8 + 55) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  v27 = *v24;
  v28 = *(v24 + 8);
  *v24 = v26;
  *(v24 + 8) = v25;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  v29 = (v7 + 71) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v8 + 71) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v32 = *v29;
  v33 = *(v29 + 8);
  *v29 = v31;
  *(v29 + 8) = v30;
  outlined consume of Environment<Selector?>.Content(v32, v33);
  return a1;
}

uint64_t getEnumTagSinglePayload for Badge(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 71) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for Badge(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 71) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
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
      if (v7 < 0xFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 71) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>()
{
  if (!lazy cache variable for type metadata for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>)
  {
    lazy protocol witness table accessor for type Capsule and conformance Capsule();
    v0 = type metadata accessor for _InsettableBackgroundShapeModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>);
  }

  return result;
}

Swift::Bool __swiftcall AccessibilityNode.scrollToVisible()()
{
  AccessibilityNode.enclosingScrollableContext.getter(&v30);
  if (v33[22] == 255)
  {
    outlined destroy of AccessibilityScrollableContext?(&v30, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998]);
    return 0;
  }

  else
  {
    v34[1] = v31;
    v34[2] = v32;
    v35[0] = *v33;
    *(v35 + 15) = *&v33[15];
    v34[0] = v30;
    AccessibilityScrollableContext.scrollableCollection.getter();
    if (*(&v31 + 1))
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, v29);
      v2 = AccessibilityNode.enclosingHostingScrollView.getter();
      if (v2)
      {
        v3 = v2;
        MEMORY[0x18D00ABE0]();
        v4 = v3;
        [v4 accessibilityFrame];
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        if (CGRectIsEmpty(v36) && (v9 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL), v10 = NSClassFromString(v9), v9, !v10))
        {
          v17 = v4;
          [v17 frame];
          x = v18;
          y = v19;
          width = v20;
          height = v21;
          v22 = [v17 window];
          if (v22)
          {
            v23 = v22;
            [v17 bounds];
            [v23 convertRect:v17 fromCoordinateSpace:?];
            x = v24;
            y = v25;
            width = v26;
            height = v27;
          }

          else
          {
          }
        }

        else
        {
        }

        [v0 accessibilityFrame];
        v11 = v37.origin.x;
        v12 = v37.origin.y;
        v13 = v37.size.width;
        v14 = v37.size.height;
        if (CGRectIsEmpty(v37))
        {
          v15 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
          NSClassFromString(v15);
        }

        v38.origin.x = x;
        v38.origin.y = y;
        v38.size.width = width;
        v38.size.height = height;
        v40.origin.x = v11;
        v40.origin.y = v12;
        v40.size.width = v13;
        v40.size.height = v14;
        v39 = CGRectIntersection(v38, v40);
        v41.origin.x = v11;
        v41.origin.y = v12;
        v41.size.width = v13;
        v41.size.height = v14;
        if (CGRectEqualToRect(v39, v41))
        {
          static Update.end()();

          outlined destroy of AccessibilityScrollableContext(v34);
          __swift_destroy_boxed_opaque_existential_1(v29);
          return 1;
        }

        else
        {
          v16 = outlined init with copy of AccessibilityScrollableContext(v34, &v30);
          if (!v33[22] || v33[22] != 1)
          {
            v16 = __swift_destroy_boxed_opaque_existential_1(&v30);
          }

          MEMORY[0x1EEE9AC00](v16);
          static Update.ensure<A>(_:)();
          v28 = v30;
          if (v30 == 1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_getObjectType();
              *&v30 = 0;
              BYTE8(v30) = 1;
              ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
              swift_unknownObjectRelease();
            }
          }

          static Update.end()();

          outlined destroy of AccessibilityScrollableContext(v34);
          __swift_destroy_boxed_opaque_existential_1(v29);
          return v28;
        }
      }

      else
      {
        outlined destroy of AccessibilityScrollableContext(v34);
        __swift_destroy_boxed_opaque_existential_1(v29);
        return 0;
      }
    }

    else
    {
      outlined destroy of AccessibilityScrollableContext(v34);
      outlined destroy of ScrollableCollection?(&v30);
      return 0;
    }
  }
}

double AccessibilityScrollableModifier.scrollableCollection.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  if (*(*Value + 16))
  {
    outlined init with copy of _Benchmark(*Value + 32, v6);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Scrollable);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for ScrollableCollection);
    if (swift_dynamicCast())
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v4, a1);
      return result;
    }

    v5 = 0;
    memset(v4, 0, sizeof(v4));
    outlined destroy of ScrollableCollection?(v4);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id AccessibilityScrollableModifier.createOrUpdateNode(viewRendererHost:existingNode:)(uint64_t a1, uint64_t a2, void *a3)
{
  AccessibilityScrollableModifier.scrollableCollection.getter(v15);
  if (v16)
  {
    v6 = *v3;
    if (!a3)
    {
      if (*v3)
      {
        v7 = type metadata accessor for AccessibilityLazyLayoutNode();
LABEL_13:
        v12 = objc_allocWithZone(v7);
        v13 = swift_unknownObjectRetain();
        v10 = specialized AccessibilityNode.init(viewRendererHost:isFromDisplayList:)(v13, a2, 0);
        swift_unknownObjectRelease();
        goto LABEL_14;
      }

LABEL_10:
      v7 = type metadata accessor for AccessibilityNode();
      goto LABEL_13;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    v6 = 0;
  }

  v8 = type metadata accessor for AccessibilityLazyLayoutNode();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    if (!v6)
    {
      v10 = a3;
      goto LABEL_14;
    }

    v7 = v8;
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = a3;
LABEL_14:
  outlined destroy of ScrollableCollection?(v15);
  return v10;
}

uint64_t AccessibilityScrollableModifier.initialAttachment(for:)()
{
  AccessibilityScrollableModifier.scrollableCollection.getter(&v4);
  if (v5)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v4, v8);
    outlined init with copy of AccessibilityProperties(v0 + 8, &v4);
    outlined init with copy of _Benchmark(v8, v3);
    outlined init with copy of ScrollableCollection?(v3, v2);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableCollectionKey and conformance AccessibilityProperties.ScrollableCollectionKey();
    AccessibilityProperties.subscript.setter();
    outlined destroy of ScrollableCollection?(v3);
    v6 = 0x300000003;
    v7 = 0;
    static AccessibilityAttachment.properties(_:)();
    outlined destroy of AccessibilityProperties(&v4);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    outlined destroy of ScrollableCollection?(&v4);
    return static AccessibilityAttachment.properties(_:)();
  }
}

uint64_t protocol witness for AccessibilityViewModifier.willCreateNode(for:) in conformance AccessibilityScrollableModifier()
{
  AccessibilityScrollableModifier.scrollableCollection.getter(v3);
  if (v4)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  outlined destroy of ScrollableCollection?(v3);
  return v1;
}

Swift::Bool __swiftcall AccessibilityScrollableContextModifier.willCreateNode(for:)(Swift::OpaquePointer a1)
{
  outlined init with copy of AccessibilityScrollableContext?(v1 + 72, v5, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (v5[35])
  {
    memcpy(__dst, v5, sizeof(__dst));
    if (a1._rawValue >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v3 = 0;
LABEL_8:
      outlined destroy of AccessibilityAttachment(__dst);
      return v3 & 1;
    }

    v3 = AccessibilityAttachment.isEmpty.getter() ^ 1;
    goto LABEL_8;
  }

  outlined destroy of AccessibilityScrollableContext?(v5, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  v3 = 0;
  return v3 & 1;
}

void *AccessibilityScrollableContextModifier.initialAttachment(for:)@<X0>(void *a1@<X8>)
{
  outlined init with copy of AccessibilityScrollableContext?(v1 + 72, __src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
  if (__src[35])
  {
    memcpy(__dst, __src, sizeof(__dst));
    outlined init with copy of AccessibilityScrollableContext(v1, __src);
    v3 = MEMORY[0x1E6980998];
    outlined init with copy of AccessibilityScrollableContext?(__src, v5, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998]);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
    AccessibilityProperties.subscript.setter();
    outlined destroy of AccessibilityScrollableContext?(__src, &lazy cache variable for type metadata for AccessibilityScrollableContext?, v3);
    return memcpy(a1, __dst, 0x128uLL);
  }

  else
  {
    outlined destroy of AccessibilityScrollableContext?(__src, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    outlined init with copy of AccessibilityScrollableContext(v1, __src);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
    AccessibilityProperties.init<A>(_:_:)();
    static AccessibilityAttachment.properties(_:)();
    return outlined destroy of AccessibilityProperties(__dst);
  }
}

uint64_t LayoutScrollableTransform.updateValue()()
{
  v1 = v0;
  v181 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v11 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_140;
  }

  v131 = v7;
  v132 = v3;
  AccessibilityAttachmentToken.init<A>(_:)();
  v3 = v169;
  LODWORD(v7) = BYTE8(v169);
  if (*AGGraphGetValue() != 1 || *(v0 + 8) == v11)
  {
    v2 = *(v0 + 24);
    if (v2 >> 62)
    {
      goto LABEL_142;
    }

    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_143:

    v107 = MEMORY[0x1E69E7CC0];
    *(v1 + 24) = MEMORY[0x1E69E7CC0];
    v169 = v107;
LABEL_144:
    AGGraphSetOutputValue();
  }

  v120 = v2;
  v121 = v9;
  v137 = 0;
  Value = AGGraphGetValue();
  v17 = *Value;
  v122 = Value[1];
  v18 = *(v0 + 12);
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E69E62F8]);
  v20 = v19;
  v139 = v17;

  LODWORD(v138) = v18;
  v136 = v20;
  v21 = *AGGraphGetValue();
  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v141 = v7;
  v118 = v6;
  v119 = v5;
  v123 = v1;
  v140 = v3;
  if (!v22)
  {
    goto LABEL_25;
  }

  LODWORD(v135) = v11;
  v24 = v21 + 32;
  v134 = v21;

  do
  {
    outlined init with copy of _Benchmark(v24, &v169);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v169, v143);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Scrollable);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for ScrollableCollection);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v149 = 0;
      v147 = 0u;
      v148 = 0u;
LABEL_15:
      outlined destroy of ScrollableCollection?(&v147);
      goto LABEL_16;
    }

    if (!*(&v148 + 1))
    {
      goto LABEL_15;
    }

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v147, v143);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v143, &v23[5 * v26 + 4]);
LABEL_16:
    v24 += 40;
    --v22;
  }

  while (v22);

  v1 = v123;
  LOBYTE(v7) = v141;
  v11 = v135;
LABEL_25:
  if (!v23[2])
  {

    *&v169 = v139;
    *(&v169 + 1) = v122;
    goto LABEL_144;
  }

  outlined init with copy of _Benchmark((v23 + 4), &v169);

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v169, v178);
  AGGraphGetValue();
  v28 = v27;
  v29 = *(v1 + 24);

  v134 = v29;
  v31 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17AccessibilityNodeC_Tt1g5(v30, v29);

  if (v28 & 1) == 0 && (v31)
  {
    v32 = v139;
    v33 = v122;
    goto LABEL_173;
  }

  v142 = MEMORY[0x1E69E7CD0];
  if (*(v1 + 16) == v11)
  {
    v129 = 0;
    v34 = v139;
  }

  else
  {
    type metadata accessor for AccessibilityScrollableContext?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], MEMORY[0x1E6980610], MEMORY[0x1E69E62F8]);
    v34 = v139;

    v129 = *AGGraphGetValue();
  }

  if (v34 >> 62)
  {
    goto LABEL_149;
  }

  v136 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v136)
  {
LABEL_150:

    if (*v1)
    {
      v106 = 0;
      v133 = MEMORY[0x1E69E7CC8];
      v105 = v134;
      if (v134 < 0)
      {
        goto LABEL_177;
      }

      goto LABEL_158;
    }

    v105 = v134;
    if (*(v142 + 16) > 1uLL)
    {
      v106 = 0;
      v133 = MEMORY[0x1E69E7CC8];
      if (v134 < 0)
      {
        goto LABEL_177;
      }

      goto LABEL_158;
    }

    v133 = MEMORY[0x1E69E7CC8];
LABEL_157:
    v106 = 0;
    if ((v105 & 0x8000000000000000) != 0)
    {
      goto LABEL_177;
    }

LABEL_158:
    if ((v105 & 0x4000000000000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_177;
  }

LABEL_35:
  v3 = 0;
  v138 = v139 & 0xC000000000000001;
  v126 = v139 + 32;
  v127 = v139 & 0xFFFFFFFFFFFFFF8;
  v2 = &v176;
  v133 = MEMORY[0x1E69E7CC8];
  v1 = v136;
  do
  {
    if (v138)
    {
      v35 = MEMORY[0x18D00E9C0](v3, v139);
    }

    else
    {
      if (v3 >= *(v127 + 16))
      {
        goto LABEL_146;
      }

      v35 = *(v126 + 8 * v3);
    }

    v36 = v35;
    v37 = __OFADD__(v3++, 1);
    if (v37)
    {
      goto LABEL_139;
    }

    v38 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v39 = v36;
    v40 = *&v36[v38];
    v41 = *(v40 + 16);
    if (!v41)
    {

      continue;
    }

    v135 = v39;
    v42 = v40 + 32;

    v43 = 0;
    while (1)
    {
      if (v43 >= *(v40 + 16))
      {
        __break(1u);
        goto LABEL_134;
      }

      outlined init with copy of AccessibilityAttachmentStorage(v42, &v169);
      v44 = v176;
      v45 = v177;
      outlined destroy of AccessibilityAttachmentStorage(&v169);
      if (v45 != 255)
      {
        *&v143[0] = v44;
        BYTE8(v143[0]) = v45 & 1;
        if ((AccessibilityAttachmentToken.attribute.getter() & 0x100000000) == 0)
        {
          break;
        }
      }

      ++v43;
      v42 += 320;
      if (v41 == v43)
      {

LABEL_53:
        v1 = v136;
        goto LABEL_37;
      }
    }

    v46 = AGGraphGetAttributeSubgraph();
    if (!v46)
    {

      goto LABEL_53;
    }

    v47 = v46;
    v48 = v179;
    v49 = v180;
    __swift_project_boxed_opaque_existential_1(v178, v179);
    (*(v49 + 72))(&v157, v47, v48, v49);
    v130 = v158;
    v1 = v136;
    if (v158 == 1)
    {

      continue;
    }

    v128 = v157;
    v50 = v135;
    if (!v129)
    {
      goto LABEL_67;
    }

    v116 = v47;
    v51 = *(v129 + 16);

    v125 = v51;
    if (!v51)
    {
LABEL_66:

      v50 = v135;
      v1 = v136;
      v47 = v116;
LABEL_67:
      v125 = *&v50[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v63 = 0x200000000;
      goto LABEL_68;
    }

    v53 = 0;
    v124 = HIDWORD(v128);
    v54 = 32;
    while (1)
    {
      if (v53 >= *(v52 + 16))
      {
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v143[0] = *(v52 + v54);
      v55 = *(v52 + v54 + 16);
      v56 = *(v52 + v54 + 32);
      v57 = *(v52 + v54 + 64);
      v143[3] = *(v52 + v54 + 48);
      v143[4] = v57;
      v143[1] = v55;
      v143[2] = v56;
      v148 = *(v52 + v54 + 16);
      v149 = *(v52 + v54 + 32);
      v150 = *(v52 + v54 + 48);
      v151 = *(v52 + v54 + 64);
      v147 = *(v52 + v54);
      outlined init with copy of _LazyLayout_PlacedSubview(v143, &v169);
      _LazyLayout_PlacedSubview.id.getter();
      v58 = v166;
      v1 = v167;
      v59 = v168;
      v60 = *(v168 + 16);

      if (v60)
      {
        v60 = *(v59 + 32);
        LODWORD(v7) = *(v59 + 52);

        swift_bridgeObjectRelease_n();
        v61 = v7 == 0;
        LOBYTE(v7) = v141;
        v1 = v61 ? v1 : 0xFFFFFFFFLL;
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v154 = v143[2];
      v155 = v143[3];
      v156 = v143[4];
      v152 = v143[0];
      v153 = v143[1];
      *&v169 = __PAIR64__(v1, v58);
      *(&v169 + 1) = v60;
      v144 = v128;
      v145 = v124;
      v146 = v130;
      v62 = MEMORY[0x18D003E10](&v169, &v144);

      if (v62)
      {
        break;
      }

      v53 = (v53 + 1);
      outlined destroy of _LazyLayout_PlacedSubview(v143);
      v54 += 80;
      v52 = v129;
      if (v125 == v53)
      {
        goto LABEL_66;
      }
    }

    v125 = *&v135[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id];
    v170 = v143[1];
    v171 = v143[2];
    v172 = v143[3];
    v173 = v143[4];
    v169 = v143[0];
    _LazyLayout_PlacedSubview.accessibilityContext.getter();
    v170 = v153;
    v171 = v154;
    v172 = v155;
    v173 = v156;
    v68 = 0x100000000;
    if (!v145)
    {
      v68 = 0;
    }

    v69 = v68 | v144;
    v70 = 0x10000000000;
    if (!BYTE1(v145))
    {
      v70 = 0;
    }

    v63 = v69 | v70;
    v169 = v152;
    v1 = v136;
    v47 = v116;
LABEL_68:
    v64 = v128;
    v65 = v130;
    outlined copy of Text.LineStyle?(v128, v130);
    v66 = v133;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v143[0] = v66;
    v117 = v63 | v117 & 0xFFFF000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, v65, v117, v125, isUniquelyReferenced_nonNull_native);
    v133 = *&v143[0];
    outlined copy of Text.LineStyle?(v64, v65);
    specialized Set._Variant.insert(_:)(v143, v64, v65);

    outlined consume of Text.LineStyle?(v64, v65);
    outlined destroy of AccessibilityScrollableContext?(&v169, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, MEMORY[0x1E6980610]);

LABEL_37:
    ;
  }

  while (v3 != v1);

  v1 = v123;
  v2 = v137;
  LODWORD(v129) = *v123;
  if ((v129 & 1) == 0 && *(v142 + 16) <= 1uLL)
  {
    v105 = v134;
    goto LABEL_157;
  }

  LODWORD(v130) = 0;
  v3 = 0;
  v128 = &v170;
  v125 = (v132 + 8);
  ++v131;
  v1 = v136;
  while (1)
  {
LABEL_80:
    if (v138)
    {
      v71 = MEMORY[0x18D00E9C0](v3, v139);
    }

    else
    {
      if (v3 >= *(v127 + 16))
      {
        goto LABEL_148;
      }

      v71 = *(v126 + 8 * v3);
    }

    v72 = v71;
    v37 = __OFADD__(v3++, 1);
    if (v37)
    {
      goto LABEL_141;
    }

    v137 = v2;
    v73 = v133;
    if (*(v133 + 16))
    {
      v74 = specialized __RawDictionaryStorage.find<A>(_:)(*&v71[OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_id]);
      if (v75)
      {
        v76 = *(v73 + 56) + 24 * v74;
        v78 = *v76;
        v77 = *(v76 + 4);
        v2 = *(v76 + 8);
        v79 = *(v76 + 20);
        v80 = *(v76 + 16);
        outlined init with copy of _Benchmark(v178, &v157);
        if (v129)
        {
          v81 = 0;
          LOBYTE(v159) = v123[1];
          v161 = __PAIR64__(v77, v78);
          v162 = v2;
          v163 = v80;
          v164 = (v80 | (v79 << 32)) >> 32;
        }

        else
        {
          v159 = v78;
          v160 = v77;
          v81 = 2;
          v161 = v2;
        }

        v165 = v81;
        outlined init with copy of AccessibilityScrollableContext(&v157, &v169);
        lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
        v132 = v2;
        swift_retain_n();
        AccessibilityProperties.init<A>(_:_:)();
        static AccessibilityAttachment.properties(_:)();
        v86 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
        swift_beginAccess();
        v135 = v86;
        v87 = *&v86[v72];
        v88 = *(v87 + 16);
        v1 = v136;
        if (v88)
        {
          v89 = v87 + 32;

          v7 = 0;
          while (v7 < *(v87 + 16))
          {
            outlined init with copy of AccessibilityAttachmentStorage(v89, &v169);
            v1 = v176;
            v2 = v177;
            outlined destroy of AccessibilityAttachmentStorage(&v169);
            if (v2 != 255)
            {
              if (v2)
              {
                if (v141 && v1 == v140)
                {
                  goto LABEL_115;
                }
              }

              else if ((v141 & 1) == 0 && v1 == v140)
              {
LABEL_115:

                *&v169 = v140;
                LOBYTE(v7) = v141;
                BYTE8(v169) = v141;
                v90 = specialized AccessibilityNode.updateAttachment(_:isInPlatformItemList:token:merge:)(&v147, &v169, 0);

                outlined destroy of AccessibilityAttachment(&v147);
                outlined destroy of AccessibilityProperties(&v152);
                outlined destroy of AccessibilityScrollableContext(&v157);
                LODWORD(v130) = v90 | v130;
                v1 = v136;
                v2 = v137;
                goto LABEL_79;
              }
            }

            v7 = (v7 + 1);
            v89 += 320;
            if (v88 == v7)
            {

              LOBYTE(v7) = v141;
              v1 = v136;
              goto LABEL_117;
            }
          }

LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          v12 = __CocoaSet.count.getter();
          if (!v12)
          {
            goto LABEL_143;
          }

LABEL_6:
          if (v12 >= 1)
          {
            v13 = 0;
            do
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v14 = MEMORY[0x18D00E9C0](v13, v2);
              }

              else
              {
                v14 = *(v2 + 8 * v13 + 32);
              }

              v15 = v14;
              ++v13;
              *&v169 = v3;
              BYTE8(v169) = v7;
              specialized AccessibilityNode.removeAttachment(isInPlatformItemList:token:)(&v169);
            }

            while (v12 != v13);
            goto LABEL_143;
          }

LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          v136 = __CocoaSet.count.getter();
          if (!v136)
          {
            goto LABEL_150;
          }

          goto LABEL_35;
        }

LABEL_117:
        v2 = v137;
        if ((BYTE8(v150) & 1) == 0 && (BYTE9(v149) & 0x40) != 0)
        {
          LOBYTE(v143[0]) = 4;
          AccessibilityNode.impliedVisibility(consideringParent:with:)(1, v143, &v169);
          if (v169 != 3)
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v92 = Strong;
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                type metadata accessor for OS_dispatch_queue();
                v124 = v92;
                v130 = static OS_dispatch_queue.main.getter();
                v93 = swift_allocObject();
                *(v93 + 16) = 0;
                *(v93 + 24) = 0;
                *&v171 = partial apply for closure #1 in AccessibilityNode.scheduleNotifyForAttachmentAddition(of:);
                *(&v171 + 1) = v93;
                *&v169 = MEMORY[0x1E69E9820];
                *(&v169 + 1) = 1107296256;
                *&v170 = thunk for @escaping @callee_guaranteed () -> ();
                *(&v170 + 1) = &block_descriptor_86;
                v94 = _Block_copy(&v169);

                static DispatchQoS.unspecified.getter();
                *&v169 = MEMORY[0x1E69E7CC0];
                v117 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
                type metadata accessor for [DispatchWorkItemFlags]();
                lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags]);
                v96 = v119;
                v95 = v120;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v97 = v130;
                MEMORY[0x18D00DA20](0, v121, v96, v94);
                swift_unknownObjectRelease();
                _Block_release(v94);

                v98 = v96;
                v1 = v136;
                (*v125)(v98, v95);
                (*v131)(v121, v118);
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }

        outlined init with copy of AccessibilityAttachment(&v147, &v169);
        v174 = 0;
        v176 = v140;
        v177 = v7;
        v175 = 0;
        outlined init with copy of AccessibilityAttachmentStorage(&v169, v143);
        v99 = v135;
        swift_beginAccess();
        v100 = *&v99[v72];
        v101 = swift_isUniquelyReferenced_nonNull_native();
        *&v99[v72] = v100;
        if ((v101 & 1) == 0)
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 2) + 1, 1, v100);
          *&v135[v72] = v100;
        }

        v103 = *(v100 + 2);
        v102 = *(v100 + 3);
        if (v103 >= v102 >> 1)
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v100);
        }

        *(v100 + 2) = v103 + 1;
        memcpy(&v100[320 * v103 + 32], v143, 0x13DuLL);
        *&v135[v72] = v100;
        swift_endAccess();

        outlined destroy of AccessibilityAttachmentStorage(&v169);
        outlined destroy of AccessibilityAttachment(&v147);
        outlined destroy of AccessibilityProperties(&v152);
        outlined destroy of AccessibilityScrollableContext(&v157);
        memset(v143, 0, 296);
        v104 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
        swift_beginAccess();
        outlined assign with copy of AccessibilityAttachment?(v143, v72 + v104);
        swift_endAccess();
        outlined destroy of AccessibilityScrollableContext?(v143, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
        LODWORD(v130) = 1;
        *(v72 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_platformElementPropertiesDirty) = 1;

        goto LABEL_79;
      }
    }

    v82 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
    swift_beginAccess();
    v83 = *(v72 + v82);
    v2 = *(v83 + 16);
    if (v2)
    {
      break;
    }

LABEL_78:
    v2 = v137;
LABEL_79:
    if (v3 == v1)
    {
      v105 = v134;
      if (v134 < 0)
      {
        goto LABEL_176;
      }

      v1 = v123;
      v106 = v130;
      if ((v134 & 0x4000000000000000) == 0)
      {
        goto LABEL_159;
      }

      goto LABEL_177;
    }
  }

  v84 = v83 + 32;

  v85 = 0;
  while (2)
  {
    if (v85 >= *(v83 + 16))
    {
      __break(1u);
      goto LABEL_138;
    }

    outlined init with copy of AccessibilityAttachmentStorage(v84, &v169);
    v1 = v176;
    LODWORD(v7) = v177;
    outlined destroy of AccessibilityAttachmentStorage(&v169);
    if (v7 == 255)
    {
      goto LABEL_91;
    }

    if (v7)
    {
      if (v141 && v1 == v140)
      {
        break;
      }

      goto LABEL_91;
    }

    if ((v141 & 1) != 0 || v1 != v140)
    {
LABEL_91:
      ++v85;
      v84 += 320;
      if (v2 == v85)
      {

        LOBYTE(v7) = v141;
        v1 = v136;
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  *&v169 = v140;
  LOBYTE(v7) = v141;
  BYTE8(v169) = v141;
  specialized AccessibilityNode.removeAttachment(isInPlatformItemList:token:)(&v169);

  LODWORD(v130) = 1;
  v1 = v136;
  v2 = v137;
  if (v3 != v136)
  {
    goto LABEL_80;
  }

LABEL_134:
  v106 = 1;
  v105 = v134;
  if (v134 < 0)
  {
    v1 = v123;
LABEL_177:
    while (1)
    {
      v109 = __CocoaSet.count.getter();
      if (!v109)
      {
        goto LABEL_171;
      }

LABEL_160:
      LODWORD(v130) = v106;
      v110 = 0;
      v111 = v105 & 0xC000000000000001;
      v112 = v105 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v111)
        {
          v113 = MEMORY[0x18D00E9C0](v110, v134);
        }

        else
        {
          if (v110 >= *(v112 + 16))
          {
            goto LABEL_175;
          }

          v113 = *(v134 + 8 * v110 + 32);
        }

        v105 = v113;
        v114 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          break;
        }

        *&v169 = v113;
        MEMORY[0x1EEE9AC00](v113);
        *(&v115 - 2) = &v169;
        if (specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say7SwiftUI17AccessibilityNodeCG_TG5TA_0, (&v115 - 4), v139))
        {

          ++v110;
          if (v114 == v109)
          {
            v1 = v123;
            LOBYTE(v106) = v130;
            goto LABEL_171;
          }
        }

        else
        {
          *&v169 = v140;
          BYTE8(v169) = v141;
          specialized AccessibilityNode.removeAttachment(isInPlatformItemList:token:)(&v169);

          LODWORD(v130) = 1;
          ++v110;
          if (v114 == v109)
          {
            v32 = v139;

            *(v123 + 3) = v32;

            goto LABEL_172;
          }
        }
      }

      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      v1 = v123;
      v106 = v130;
    }
  }

  v1 = v123;
  if ((v134 & 0x4000000000000000) != 0)
  {
    goto LABEL_177;
  }

LABEL_159:
  v109 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v109)
  {
    goto LABEL_160;
  }

LABEL_171:
  v32 = v139;

  *(v1 + 24) = v32;

  v33 = v122;
  if (v106)
  {
LABEL_172:
    DisplayList.Version.init(forUpdate:)();
    v33 = v169;
  }

LABEL_173:
  *&v169 = v32;
  *(&v169 + 1) = v33;
  AGGraphSetOutputValue();

  return __swift_destroy_boxed_opaque_existential_1(v178);
}

uint64_t LayoutScrollableTransform.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(68);
  MEMORY[0x18D00C9B0](0xD000000000000036, 0x800000018CD5CF20);
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x18D00C9B0](v2, v3);

  MEMORY[0x18D00C9B0](0x6C6F722020202020, 0xEA00000000002065);
  type metadata accessor for AccessibilityScrollableContext?(0, &lazy cache variable for type metadata for AccessibilityLayoutRole?, MEMORY[0x1E6980020], MEMORY[0x1E69E6720]);
  v4 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v4);

  return 0;
}

double AccessibilityNode.enclosingScrollableContext.getter@<D0>(uint64_t a1@<X8>)
{
  AccessibilityNode.attachment.getter(v7);
  outlined init with copy of AccessibilityProperties(v7, v8);
  outlined destroy of AccessibilityAttachment(v7);
  lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
  AccessibilityProperties.subscript.getter();
  outlined destroy of AccessibilityProperties(v8);
  if (v10[22] == 255)
  {
    outlined destroy of AccessibilityScrollableContext?(v9, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      AccessibilityNode.enclosingScrollableContext.getter();
    }

    else
    {
      *&v4 = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 68) = 0;
      *(a1 + 64) = 0;
      *(a1 + 70) = -1;
    }
  }

  else
  {
    v5 = *v10;
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v5;
    *(a1 + 63) = *&v10[15];
    v4 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v4;
  }

  return *&v4;
}

uint64_t AccessibilityNode.enclosingHostingScrollView.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = result;
    while (1)
    {
      v2 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
      swift_beginAccess();
      v3 = *&Strong[v2];
      v4 = *(v3 + 16);
      v5 = Strong;

      if (v4)
      {
        break;
      }

LABEL_8:

LABEL_11:
      Strong = swift_unknownObjectWeakLoadStrong();

      if (!Strong)
      {
        return 0;
      }
    }

    v6 = v3 + 320 * v4 - 288;
    while (1)
    {
      if (v4 > *(v3 + 16))
      {
        __break(1u);
        return result;
      }

      outlined init with copy of AccessibilityAttachment(v6, v10);
      v7 = AccessibilityAttachment.platformElement.getter();
      result = outlined destroy of AccessibilityAttachment(v10);
      if (v7)
      {
        break;
      }

      v6 -= 320;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    type metadata accessor for HostingScrollView();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {

      goto LABEL_11;
    }

    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t closure #1 in scroll #1 () in AccessibilityNode.scroll(toCollectionViewID:in:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v11[0] = v5;
  v11[1] = v7;
  v12 = a3;
  result = (*(v9 + 80))(v11, 0, 0, 1, v8, v9);
  *a4 = result & 1;
  return result;
}

uint64_t assignWithCopy for AccessibilityScrollableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v4;
  v5 = *(a1 + 96);
  v6 = *(a2 + 96);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 72);
        v8 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v8;
        *(a1 + 72) = v7;
        goto LABEL_18;
      }

      *(a1 + 96) = v6;
      *(a1 + 104) = *(a2 + 104);
      (**(v6 - 8))(a1 + 72, a2 + 72);
    }

    else
    {
      v12 = *(a2 + 72);
      v13 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v13;
      *(a1 + 72) = v12;
    }

    *(a1 + 112) = *(a2 + 112);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 72);
    v9 = *(a2 + 104);
    v10 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v10;
    *(a1 + 104) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 72);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 72));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 104);
        v15 = *(a2 + 88);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = v15;
        *(a1 + 104) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 96) = v6;
      *(a1 + 104) = *(a2 + 104);
      (**(v6 - 8))(a1 + 72, a2 + 72);
    }

    else
    {
      v16 = *(a2 + 72);
      v17 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v17;
      *(a1 + 72) = v16;
    }

    *(a1 + 112) = *(a2 + 112);
  }

LABEL_18:
  v18 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v18;
  v19 = (a1 + 136);
  v20 = (a2 + 136);
  v21 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v21 == 1)
    {
      v22 = *(a2 + 152);
      *v19 = *v20;
      *(a1 + 152) = v22;
      v23 = *(a2 + 168);
      v24 = *(a2 + 184);
      v25 = *(a2 + 216);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 216) = v25;
      *(a1 + 168) = v23;
      *(a1 + 184) = v24;
      v26 = *(a2 + 232);
      v27 = *(a2 + 248);
      v28 = *(a2 + 264);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 248) = v27;
      *(a1 + 264) = v28;
      *(a1 + 232) = v26;
    }

    else
    {
      v36 = *v20;
      *(a1 + 144) = *(a2 + 144);
      *v19 = v36;
      v37 = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 152) = v37;
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      *(a1 + 164) = *(a2 + 164);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      v38 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 256) = v38;
      *(a1 + 280) = *(a2 + 280);
    }
  }

  else if (v21 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 136);
    v29 = *(a2 + 152);
    *v19 = *v20;
    *(a1 + 152) = v29;
    v30 = *(a2 + 216);
    v32 = *(a2 + 168);
    v31 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v30;
    *(a1 + 168) = v32;
    *(a1 + 184) = v31;
    v34 = *(a2 + 248);
    v33 = *(a2 + 264);
    v35 = *(a2 + 232);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 248) = v34;
    *(a1 + 264) = v33;
    *(a1 + 232) = v35;
  }

  else
  {
    v39 = *v20;
    *(a1 + 144) = *(a2 + 144);
    *v19 = v39;
    v40 = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 152) = v40;
    *(a1 + 161) = *(a2 + 161);
    *(a1 + 162) = *(a2 + 162);
    *(a1 + 163) = *(a2 + 163);
    *(a1 + 164) = *(a2 + 164);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 217) = *(a2 + 217);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);

    v41 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v41;
    *(a1 + 280) = *(a2 + 280);
  }

  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t assignWithTake for AccessibilityScrollableModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a1 + 96);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 96);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 72);
LABEL_4:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_10;
  }

  if (v5)
  {
    v7 = a1 + 72;
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v7);
    }
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v8 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;

LABEL_10:
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v9 = (a1 + 136);
  v10 = (a2 + 136);
  if (*(a1 + 248) != 1)
  {
    v11 = *(a2 + 248);
    if (v11 != 1)
    {
      *v9 = *v10;
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 163) = *(a2 + 163);
      *(a1 + 164) = *(a2 + 164);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = v11;

      *(a1 + 256) = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = *(a2 + 280);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 136);
  }

  v12 = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = v12;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  v13 = *(a2 + 184);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = v13;
  v14 = *(a2 + 216);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = v14;
  v15 = *(a2 + 152);
  *v9 = *v10;
  *(a1 + 152) = v15;
LABEL_15:
  *(a1 + 288) = *(a2 + 288);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityScrollableModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 288);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityScrollableModifier(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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
      *(result + 288) = (a2 - 1);
      return result;
    }

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for AccessibilityScrollableContextModifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1);
    v4 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v4;
    *(a1 + 63) = *(a2 + 63);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  if (*(a1 + 352))
  {
    if (*(a2 + 352))
    {
      v6 = *(a2 + 80);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v6;

      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      v7 = *(a1 + 160);
      if (v7 != 1)
      {
        v8 = *(a2 + 160);
        if (v8 != 1)
        {
          if (v7)
          {
            v9 = a1 + 136;
            if (v8)
            {
              __swift_destroy_boxed_opaque_existential_1(v9);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v9);
            }
          }

          *(a1 + 136) = *(a2 + 136);
          *(a1 + 152) = *(a2 + 152);
          v10 = *(a2 + 176);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 176) = v10;

LABEL_16:
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 192) = *(a2 + 192);
          v11 = (a1 + 200);
          v12 = (a2 + 200);
          if (*(a1 + 312) != 1)
          {
            v13 = *(a2 + 312);
            if (v13 != 1)
            {
              *v11 = *v12;
              *(a1 + 208) = *(a2 + 208);
              *(a1 + 216) = *(a2 + 216);
              *(a1 + 224) = *(a2 + 224);
              *(a1 + 225) = *(a2 + 225);
              *(a1 + 227) = *(a2 + 227);
              *(a1 + 228) = *(a2 + 228);
              *(a1 + 232) = *(a2 + 232);
              *(a1 + 248) = *(a2 + 248);
              v18 = *(a2 + 272);
              *(a1 + 264) = *(a2 + 264);
              *(a1 + 272) = v18;
              *(a1 + 280) = *(a2 + 280);
              *(a1 + 281) = *(a2 + 281);
              *(a1 + 288) = *(a2 + 288);
              *(a1 + 304) = *(a2 + 304);
              *(a1 + 312) = v13;

              *(a1 + 320) = *(a2 + 320);
              *(a1 + 336) = *(a2 + 336);
              *(a1 + 344) = *(a2 + 344);
              goto LABEL_21;
            }

            outlined destroy of AccessibilityTextLayoutProperties(a1 + 200);
          }

          v14 = *(a2 + 312);
          *(a1 + 296) = *(a2 + 296);
          *(a1 + 312) = v14;
          *(a1 + 328) = *(a2 + 328);
          *(a1 + 344) = *(a2 + 344);
          v15 = *(a2 + 248);
          *(a1 + 232) = *(a2 + 232);
          *(a1 + 248) = v15;
          v16 = *(a2 + 280);
          *(a1 + 264) = *(a2 + 264);
          *(a1 + 280) = v16;
          v17 = *(a2 + 216);
          *v11 = *v12;
          *(a1 + 216) = v17;
LABEL_21:
          *(a1 + 352) = *(a2 + 352);

          v19 = *(a1 + 360);
          *(a1 + 360) = *(a2 + 360);

          return a1;
        }

        outlined destroy of AccessibilityValueStorage(a1 + 136);
      }

      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      goto LABEL_16;
    }

    outlined destroy of AccessibilityAttachment(a1 + 72);
  }

  memcpy((a1 + 72), (a2 + 72), 0x128uLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityScrollableContextModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 368))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 352);
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

uint64_t storeEnumTagSinglePayload for AccessibilityScrollableContextModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 368) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 368) = 0;
    }

    if (a2)
    {
      *(result + 352) = a2;
    }
  }

  return result;
}

uint64_t outlined destroy of AccessibilityScrollableContext?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AccessibilityScrollableContext?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of AccessibilityScrollableContext?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AccessibilityScrollableContext?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t assignWithCopy for LayoutScrollableTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for LayoutScrollableTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void type metadata accessor for AccessibilityScrollableContext?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t DefaultGaugeStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t protocol witness for GaugeStyle.makeBody(configuration:) in conformance DefaultGaugeStyle@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t type metadata completion function for ContextMenuPreviewResponder()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ContextMenuPreviewModifier.init(menuView:preview:hidePreview:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = 0;
  *(a9 + 8) = swift_getKeyPath();
  *(a9 + 16) = 0;
  v17 = type metadata accessor for ContextMenuPreviewModifier();
  (*(*(a7 - 8) + 32))(a9 + v17[14], a1, a7);
  result = (*(*(a8 - 8) + 32))(a9 + v17[15], a2, a8);
  *(a9 + v17[16]) = a3;
  v19 = a9 + v17[17];
  *v19 = a4;
  *(v19 + 8) = a5;
  *(v19 + 16) = a6;
  return result;
}

uint64_t ContextMenuPreviewDestinationModifier.init(menuView:preview:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for ContextMenuPreviewDestinationModifier();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 72), a3, a6);
}

uint64_t ContextMenuPreviewModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v91 = a2;
  swift_getWitnessTable();
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v103[0] = *(a1 + 16);
  v7 = v103[0];
  v103[1] = v6;
  v10 = v6;
  v73 = v6;
  v80 = v8;
  v103[2] = v8;
  v103[3] = v9;
  v78 = v9;
  v11 = type metadata accessor for ContextMenuPreviewModifierCore();
  v76 = v5;
  v12 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>, type metadata accessor for _SemanticFeature<Semantics_v5>);
  v81 = v13;
  v83 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for StaticIf();
  v86 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v72 - v15;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>, type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>);
  v88 = v14;
  v89 = type metadata accessor for ModifiedContent();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v82 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v72 - v18;
  v19 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v11;
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v72 - v28;
  v90 = v12;
  v77 = *(v12 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v75 = &v72 - v32;
  v34 = *(v33 + 16);
  v35 = &v3[*(a1 + 56)];
  v79 = v7;
  v34(v25, v35, v7, v31);
  v36 = v73;
  (*(v19 + 16))(v22, &v3[*(a1 + 60)]);
  if (*v3)
  {
    v37 = *(a1 + 68);
    v38 = v3[*(a1 + 64)];
    LODWORD(v103[0]) = *v3;
    v39 = *&v3[v37];
    v40 = *&v3[v37 + 8];
    v41 = v3[v37 + 16];
    v70 = v78;
    v72 = v3;
    v69 = v80;
    v42 = v22;
    v43 = v79;
    ContextMenuPreviewModifierCore.init(menuView:preview:hidePreview:id:previewAction:)(v25, v42, v38, v103, v39, v40, v41, v79, v29, v36);
    outlined copy of ContextMenuPreviewAction?(v39, v40, v41);
    v44 = v76;
    WitnessTable = swift_getWitnessTable();
    v46 = v75;
    v47 = v44;
    v48 = v74;
    MEMORY[0x18D00A570](v29, v47, v74, WitnessTable);
    v49 = (*(v26 + 8))(v29, v48);
    v76 = &v72;
    MEMORY[0x1EEE9AC00](v49);
    *(&v72 - 6) = v43;
    *(&v72 - 5) = v36;
    MEMORY[0x1EEE9AC00](v50);
    *(&v72 - 6) = v43;
    *(&v72 - 5) = v36;
    v51 = v46;
    v71 = v72;
    v52 = lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
    v101 = WitnessTable;
    v102 = &protocol witness table for ContextMenuPreviewModifierCore<A, B>;
    v53 = v90;
    v54 = swift_getWitnessTable();
    v99 = v54;
    v100 = MEMORY[0x1E697FC98];
    v55 = swift_getWitnessTable();
    v56 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v97 = v55;
    v98 = v56;
    v57 = swift_getWitnessTable();
    v69 = v54;
    v70 = v57;
    v68 = v52;
    v58 = v85;
    StaticIf<>.init(_:then:else:)();
    v94 = v52;
    v95 = v54;
    v96 = v57;
    v59 = v88;
    v60 = swift_getWitnessTable();
    v61 = v82;
    View.sharingPickerHost()(v59, v60);
    (*(v86 + 8))(v58, v59);
    IsSharingPicker = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v92 = v60;
    v93 = IsSharingPicker;
    v63 = v89;
    v64 = swift_getWitnessTable();
    v65 = v84;
    static ViewBuilder.buildExpression<A>(_:)(v61, v63, v64);
    v66 = *(v87 + 8);
    v66(v61, v63);
    static ViewBuilder.buildExpression<A>(_:)(v65, v63, v64);
    v66(v65, v63);
    return (*(v77 + 8))(v51, v53);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ContextMenuPreviewModifierCore.init(menuView:preview:hidePreview:id:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = *a4;
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v16 = type metadata accessor for ContextMenuPreviewModifierCore();
  result = (*(*(a10 - 8) + 32))(a9 + v16[13], a2, a10);
  *(a9 + v16[14]) = a3;
  *(a9 + v16[15]) = v15;
  v18 = a9 + v16[16];
  *v18 = a5;
  *(v18 + 8) = a6;
  *(v18 + 16) = a7;
  return result;
}

uint64_t closure #1 in ContextMenuPreviewModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ContextMenuPreviewModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  type metadata accessor for ContextMenuPreviewModifierCore();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  v16[0] = swift_getWitnessTable();
  v16[1] = &protocol witness table for ContextMenuPreviewModifierCore<A, B>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1, v10, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  return (*(v11 + 8))(v13, v10);
}

uint64_t closure #2 in ContextMenuPreviewModifier.body(content:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a1;
  v37 = a7;
  type metadata accessor for ContextMenuPreviewModifier();
  swift_getWitnessTable();
  v12 = type metadata accessor for _ViewModifier_Content();
  v44[0] = a3;
  v44[1] = a4;
  v44[2] = a5;
  v44[3] = a6;
  type metadata accessor for ContextMenuPreviewModifierCore();
  v33[1] = v12;
  v13 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>, type metadata accessor for _SemanticFeature<Semantics_v5>);
  v17 = type metadata accessor for ModifiedContent();
  v35 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - v21;
  v23 = *a2;
  if (!*a2)
  {
    goto LABEL_7;
  }

  v24 = *(a2 + 1);
  v25 = *(a2 + 16);
  specialized Environment.wrappedValue.getter(v24, v25, v44);
  if (v23 != LODWORD(v44[0]) || (specialized Environment.wrappedValue.getter(v24, v25, v44), v26 = 0.0, BYTE4(v44[0]) == 1))
  {
    v26 = 1.0;
  }

  *v44 = v26;
  WitnessTable = swift_getWitnessTable();
  v43 = &protocol witness table for ContextMenuPreviewModifierCore<A, B>;
  v27 = swift_getWitnessTable();
  MEMORY[0x18D00A570](v44, v13, MEMORY[0x1E697FCA0], v27);
  if (*a2)
  {
    LODWORD(v44[0]) = *a2;
    v40 = v27;
    v41 = MEMORY[0x1E697FC98];
    v28 = swift_getWitnessTable();
    View.portalGroup(kind:id:)(1, v44, v14, v28);
    (*(v34 + 8))(v16, v14);
    v29 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v38 = v28;
    v39 = v29;
    v30 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v19, v17, v30);
    v31 = *(v35 + 8);
    v31(v19, v17);
    static ViewBuilder.buildExpression<A>(_:)(v22, v17, v30);
    return (v31)(v22, v17);
  }

  else
  {
LABEL_7:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContextMenuPreviewModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double static ContextMenuPreviewModifierCore._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v45 = a5;
  v88 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = a2[3];
  v84 = a2[2];
  v85 = v14;
  v86 = a2[4];
  v87 = *(a2 + 20);
  v15 = a2[1];
  v82 = *a2;
  v83 = v15;
  v49 = *(a2 + 6);
  v50 = *(a2 + 14);
  v16 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v70 = v49;
  DWORD2(v70) = v50;
  v17 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v16 & 1) != 0 || (v17)
  {
    UniqueID.init()();
    v19 = v70;
    v78 = v84;
    v79 = v85;
    v80 = v86;
    v81 = v87;
    v76 = v82;
    v77 = v83;
    v43 = a7;
    v44 = a8;
    v42 = v70;
    if (v16)
    {
      v20 = HIDWORD(v85);
      v72 = v84;
      v73 = v85;
      v74 = v86;
      LODWORD(v75[0]) = v87;
      v70 = v82;
      v71 = v83;
      outlined init with copy of _ViewInputs(&v82, &v58);
      *&v70 = __PAIR64__(_ViewInputs.position.getter(), v20);
      a7 = v43;
      *(&v70 + 1) = v19;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform();
      Attribute.init<A>(body:value:flags:update:)();
      _ViewInputs.transform.setter();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v82, &v70);
    }

    v64[2] = v78;
    v64[3] = v79;
    v64[4] = v80;
    v65 = v81;
    v64[0] = v76;
    v64[1] = v77;
    v72 = v78;
    v73 = v79;
    v74 = v80;
    LODWORD(v75[0]) = v81;
    v70 = v76;
    v71 = v77;
    v21 = outlined init with copy of _ViewInputs(v64, &v58);
    (a3)(&v48, v21, &v70);
    v66[2] = v72;
    v66[3] = v73;
    v66[4] = v74;
    v67 = v75[0];
    v66[0] = v70;
    v66[1] = v71;
    outlined destroy of _ViewInputs(v66);
    v68[2] = v78;
    v68[3] = v79;
    v68[4] = v80;
    v69 = v81;
    v68[0] = v76;
    v68[1] = v77;
    outlined destroy of _ViewInputs(v68);
    LODWORD(v52) = v13;
    *&v70 = a4;
    *(&v70 + 1) = v45;
    *&v71 = a6;
    *(&v71 + 1) = a7;
    type metadata accessor for ContextMenuPreviewModifierCore();
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v72 = v84;
    v73 = v85;
    v74 = v86;
    LODWORD(v75[0]) = v87;
    v70 = v82;
    v71 = v83;
    v23 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v70, 1, &v58);
    MEMORY[0x1EEE9AC00](v23);
    *&v70 = &type metadata for AllPlatformItemListFlags;
    *(&v70 + 1) = a4;
    *&v71 = &protocol witness table for AllPlatformItemListFlags;
    *(&v71 + 1) = a6;
    v24 = type metadata accessor for PlatformItemListGenerator();
    v39 = v24;
    WitnessTable = swift_getWitnessTable();
    outlined init with copy of _ViewInputs(&v82, &v70);
    type metadata accessor for Path?(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v58, closure #1 in Attribute.init<A>(_:)partial apply, v38, v24, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
    v74 = v62;
    v75[0] = v63[0];
    *(v75 + 12) = *(v63 + 12);
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v73 = v61;
    (*(*(v24 - 8) + 8))(&v70, v24);
    v27 = v48;
    if (v16)
    {
      *&v58 = v48;
      DWORD2(v58) = DWORD2(v48);
      if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
      {
        v47 = v13;
        v41 = _GraphValue.value.getter();
        v58 = v48;

        v28 = _ViewOutputs.viewResponders()();

        v60 = v84;
        v61 = v85;
        v62 = v86;
        LODWORD(v63[0]) = v87;
        v58 = v82;
        v59 = v83;
        v29 = v45;
        v30 = v43;
        type metadata accessor for ContextMenuPreviewResponder();
        v54 = v84;
        v55 = v85;
        v56 = v86;
        v57 = v87;
        v52 = v82;
        v53 = v83;
        v46 = v42;
        outlined init with copy of _ViewInputs(&v82, v51);
        outlined init with copy of _ViewInputs(&v82, v51);
        swift_allocObject();
        v31 = ContextMenuPreviewResponder.init(inputs:space:itemList:displayList:)(&v52, &v46);
        v32 = ContextMenuPreviewResponderFilter.init(modifier:children:inputs:responder:)(v28, &v58, v31, &v52);
        MEMORY[0x1EEE9AC00](v32);
        *&v58 = a4;
        *(&v58 + 1) = v29;
        *&v59 = a6;
        *(&v59 + 1) = v30;
        v33 = type metadata accessor for ContextMenuPreviewResponderFilter();
        v39 = v33;
        WitnessTable = swift_getWitnessTable();
        _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v52, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_9, v38, v33, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v35);
        v58 = v52;
        v59 = v53;
        v60 = v54;
        *&v61 = v55;
        (*(*(v33 - 8) + 8))(&v58, v33);
        LOBYTE(v52) = 0;
        v36 = PreferencesOutputs.subscript.setter();
        *&v52 = v49;
        DWORD2(v52) = v50;
        MEMORY[0x1EEE9AC00](v36);
        v39 = &v82;
        outlined init with copy of PreferencesInputs(&v49, v51);
        PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

        v27 = v48;
      }
    }

    v37 = v44;
    *v44 = v27;
    result = *(&v48 + 1);
    v37[1] = *(&v48 + 1);
  }

  else
  {
    v72 = v84;
    v73 = v85;
    v74 = v86;
    LODWORD(v75[0]) = v87;
    v70 = v82;
    v71 = v83;
    a3();
  }

  return result;
}

uint64_t ContextMenuPreviewResponderFilter.init(modifier:children:inputs:responder:)@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 64);
  v20 = *(a2 + 48);
  v21 = v7;
  v8 = *(a2 + 16);
  v19[0] = *a2;
  v22 = *(a2 + 80);
  v19[1] = v8;
  v19[2] = v6;
  type metadata accessor for ContextMenuPreviewModifierCore();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v16 = _ViewInputs.animatedPosition()();
  v9 = HIDWORD(v20);
  swift_beginAccess();
  v10 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v11 = _ViewInputs.containerPosition.getter();
  v12 = _ViewInputs.isEnabled.getter();
  outlined destroy of _ViewInputs(v19);
  v13 = AGGraphCreateOffsetAttribute2();
  v14 = AGGraphCreateOffsetAttribute2();
  AGGraphCreateOffsetAttribute2();
  result = AGCreateWeakAttribute();
  *a4 = OffsetAttribute2;
  *(a4 + 4) = a1;
  *(a4 + 8) = v16;
  *(a4 + 12) = v9;
  *(a4 + 16) = v10;
  *(a4 + 20) = v11;
  *(a4 + 24) = v12;
  *(a4 + 28) = v13;
  *(a4 + 32) = v14;
  *(a4 + 36) = result;
  *(a4 + 48) = a3;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContextMenuPreviewModifierCore<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t ContextMenuPreviewResponderFilter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v51 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v42 = type metadata accessor for Optional();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v38 - v5;
  type metadata accessor for CGPoint(0);
  v39 = v7;
  Value = AGGraphGetValue();
  v10 = v9;
  v11 = *Value;
  v12 = Value[1];
  v13 = *(v2 + 6);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  if (((v10 | v17) & 1) != 0 || (v40 = *v14, v38 = v16, type metadata accessor for [ViewResponder](0), OutputValue = AGGraphGetOutputValue(), v16 = v38, v15 = v40, !OutputValue))
  {
    v47 = v15;
    v48 = v16;
    *(v13 + 224) = MEMORY[0x18D00B390]();
    *(v13 + 232) = v19;
    *(v13 + 240) = v11;
    *(v13 + 248) = v12;
  }

  v20 = v2[1];
  v47 = *v2;
  v48 = v20;
  v49 = v2[2];
  v50 = *(v2 + 6);
  v21 = v50;
  *(v13 + 304) = *AGGraphGetValue();
  v22 = *(v2 + 6);
  v23 = *(a1 - 8);
  v24 = *(v23 + 16);
  v24(v45, &v47, a1);
  *&v38 = v24;
  v24(v45, &v47, a1);
  *(v21 + 256) = AGCreateWeakAttribute();
  *(v22 + 264) = *AGGraphGetValue();
  v25 = *(v2 + 6);
  type metadata accessor for [ViewResponder](0);
  *&v40 = v26;
  AGGraphGetValue();
  if (v27)
  {

    MultiViewResponder.children.setter();
  }

  v28 = *(v23 + 8);
  v28(&v47, a1);
  v29 = AGGraphGetValue();
  v30 = v12 - v29[1];
  *(v25 + 280) = v11 - *v29;
  *(v25 + 288) = v30;
  if (*AGGraphGetValue() == 1)
  {
    v31 = *(v4 - 8);
    v32 = 1;
  }

  else
  {
    v33 = AGGraphGetValue();
    v31 = *(v4 - 8);
    (*(v31 + 16))(v6, v33, v4);
    v32 = 0;
  }

  (*(v31 + 56))(v6, v32, 1, v4);
  specialized ContextMenuPreviewResponder.preview.setter(v6);
  (*(v41 + 8))(v6, v42);
  v34 = v2[2];
  v45[1] = v2[1];
  v45[2] = v34;
  v45[0] = *v2;
  v46 = *(v2 + 6);
  AGWeakAttributeGetAttribute();
  *(v21 + 308) = AGCreateWeakAttribute();
  *(v21 + 316) = 0;
  v28(&v47, a1);
  result = AGGraphGetOutputValue();
  if (!result)
  {
    v36 = v46;
    type metadata accessor for Path?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_18CD69590;
    *(v37 + 32) = v36;
    v43 = v37;
    (v38)(v44, v45, a1);
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t static ContextMenuPreviewDestinationModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v13 = *a1;
  v14 = a2[3];
  v28 = a2[2];
  v29 = v14;
  v30 = a2[4];
  v31 = *(a2 + 20);
  v15 = a2[1];
  v26 = *a2;
  v27 = v15;
  v25 = v13;
  type metadata accessor for ContextMenuPreviewDestinationModifier();
  type metadata accessor for _GraphValue();
  v16 = _GraphValue.value.getter();
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  outlined init with copy of _ViewInputs(&v26, v18);
  ContextMenuPreviewDestinationModifier.Child.init(modifier:inputs:)(v16, &v19, v18);
  *&v19 = a5;
  *(&v19 + 1) = a6;
  *&v20 = a7;
  *(&v20 + 1) = a8;
  v21 = a9;
  type metadata accessor for ContextMenuPreviewDestinationModifier.Transform();
  *&v19 = a5;
  *(&v19 + 1) = a6;
  *&v20 = a7;
  *(&v20 + 1) = a8;
  v21 = a9;
  type metadata accessor for ContextMenuPreviewDestinationModifier.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  swift_getWitnessTable();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

__n128 ContextMenuPreviewDestinationModifier.Child.init(modifier:inputs:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v5;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v6 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v6;
  lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations();
  v7.n128_u64[0] = v10;
  v7.n128_u64[1] = v10;
  v9 = v7;
  PropertyList.subscript.getter();
  outlined destroy of _ViewInputs(v11);
  *a3 = a1;
  *(a3 + 4) = v10;
  result = v9;
  *(a3 + 8) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v10;
  return result;
}

uint64_t ContextMenuPreviewDestinationModifier.Child.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextMenuPreviewDestinationModifier();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t ContextMenuPreviewDestinationModifier.Child.stackKey.getter()
{
  type metadata accessor for Path?(0, &lazy cache variable for type metadata for NavigationState.StackContent.Key?, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6720]);
  result = AGGraphGetWeakValue();
  if (result)
  {
    return *result;
  }

  return result;
}

double ContextMenuPreviewDestinationModifier.Child.authority.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Path?(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of NavigationAuthority?(WeakValue, a1);
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_18CD874C0;
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t ContextMenuPreviewDestinationModifier.Child.value.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = a1[2];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v23 = a1[3];
  v24 = v3;
  *&v29 = v3;
  *(&v29 + 1) = v23;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v8 = type metadata accessor for ContextMenuPreviewDestinationModifier();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  ContextMenuPreviewDestinationModifier.Child.modifier.getter(&v22 - v9);
  v22 = *AGGraphGetValue();
  v11 = ContextMenuPreviewDestinationModifier.Child.stackKey.getter();
  v13 = v12;
  v15 = v14;
  ContextMenuPreviewDestinationModifier.Child.authority.getter(v28);
  outlined init with copy of NavigationAuthority??(v28, v26);
  if (v27 == 2)
  {
    outlined destroy of NavigationAuthority??(v28);
    v29 = xmmword_18CD633F0;
    v30 = 0;
  }

  else
  {
    outlined init with take of NavigationAuthority?(v26, &v29);
    outlined destroy of NavigationAuthority??(v28);
  }

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v17 = *WeakValue;
  }

  else
  {
    v17 = -1;
  }

  if (v13 == 7)
  {
    v18 = 0;
  }

  else
  {
    v18 = v11;
  }

  if (v13 == 7)
  {
    v19 = 6;
  }

  else
  {
    v19 = v13;
  }

  if (v13 == 7)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  return ContextMenuPreviewDestinationModifier.Transform.init(modifier:depth:stackKey:navigationAuthority:navigationStateSeeds:isExtracting:)(v10, v22, v18, v19, v20, &v29, v17, *(v2 + 32), v25);
}

uint64_t ContextMenuPreviewDestinationModifier.Transform.init(modifier:depth:stackKey:navigationAuthority:navigationStateSeeds:isExtracting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  v11 = type metadata accessor for ContextMenuPreviewDestinationModifier.Transform();
  v12 = v11[18];
  v13 = type metadata accessor for ContextMenuPreviewDestinationModifier();
  (*(*(v13 - 8) + 32))(a9 + v12, a1, v13);
  *(a9 + v11[19]) = a2;
  v14 = (a9 + v11[20]);
  *v14 = a3;
  v14[1] = a4;
  v14[2] = a5;
  result = outlined init with take of NavigationAuthority?(a6, a9 + v11[21]);
  *(a9 + v11[22]) = a7;
  *(a9 + v11[23]) = a8;
  return result;
}

uint64_t ContextMenuPreviewDestinationModifier.Transform.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v51 = *(a1 + 16);
  v49 = *(a1 + 40);
  v68 = v51;
  *v69 = v49;
  v5 = type metadata accessor for ContextMenuPreviewModifier();
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  swift_getWitnessTable();
  v8 = type metadata accessor for _ViewModifier_Content();
  v9 = type metadata accessor for ModifiedContent();
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  type metadata accessor for UpdateViewDestinationViewModifier();
  type metadata accessor for UpdateViewDestinationRequestProcessor();
  v14 = type metadata accessor for ModifiedContent();
  v58 = v9;
  v53 = v14;
  v50 = type metadata accessor for ModifiedContent();
  v57 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v43 - v17;
  ContextMenuPreviewDestinationModifier.Transform.contextMenuModifier.getter(a1, v7);
  WitnessTable = swift_getWitnessTable();
  v55 = v11;
  MEMORY[0x18D00A570](v7, v8, v5, WitnessTable);
  (*(v48 + 8))(v7, v5);
  v19 = *(v3 + 16);
  LOBYTE(v66) = *(v3 + 8);
  v67 = v19;
  type metadata accessor for Path?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v47 = *(&v68 + 1);
  v48 = v68;
  v46 = v69[0];
  v20 = *(a1 + 72);
  v68 = v51;
  *&v51 = v12;
  *v69 = v12;
  *&v69[8] = v49;
  *&v49 = v13;
  v70 = v13;
  v45 = *(type metadata accessor for ContextMenuPreviewDestinationModifier() + 72);
  v21 = (v3 + *(a1 + 80));
  v22 = *(v21 + 8);
  if (v22 == 6)
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0x1FFFFFFFELL;
  }

  else
  {
    v25 = 0;
    v24 = v21[2];
    v23 = *v21;
  }

  v26 = v3 + v20;
  *&v68 = v23;
  *(&v68 + 1) = v22;
  *v69 = v24;
  *&v69[16] = v25;
  v70 = 0;
  v44 = *(v3 + *(a1 + 76));
  v27 = Namespace.wrappedValue.getter();
  v28 = v3 + *(a1 + 84);
  v29 = *(v3 + *(a1 + 92));
  v66 = 0;
  Transaction.disablesAnimations.setter();
  v30 = v66;
  v31 = swift_getWitnessTable();
  v64 = WitnessTable;
  v65 = v31;
  v32 = v58;
  v33 = swift_getWitnessTable();
  v42 = v29;
  v34 = v52;
  v35 = v55;
  View.updateViewDestinations<A>(isPresented:destination:key:kind:id:shouldTargetSourceColumn:navigationAuthority:isExtractingDestinations:transaction:)(v48, v47, v46, v26 + v45, &v68, v44, 0, v27, v52, 0, v28, v42, v30, v32, v51, v33);

  (*(v56 + 8))(v35, v32);
  v62 = &protocol witness table for UpdateViewDestinationViewModifier<A>;
  v63 = &protocol witness table for UpdateViewDestinationRequestProcessor<A, B>;
  v36 = swift_getWitnessTable();
  v60 = v33;
  v61 = v36;
  v37 = v50;
  v38 = swift_getWitnessTable();
  v39 = v54;
  static ViewBuilder.buildExpression<A>(_:)(v34, v37, v38);
  v40 = *(v57 + 8);
  v40(v34, v37);
  static ViewBuilder.buildExpression<A>(_:)(v39, v37, v38);
  return (v40)(v39, v37);
}

uint64_t ContextMenuPreviewDestinationModifier.Transform.contextMenuModifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + *(v14 + 72);
  (*(v16 + 16))(v13, v15, v10, v11);
  *&v17 = v10;
  *(&v17 + 1) = v5;
  v18 = *(a1 + 32);
  v25[0] = *(a1 + 48);
  v25[1] = v18;
  v28 = v17;
  v29 = v18;
  v30 = v25[0];
  v19 = type metadata accessor for ContextMenuPreviewDestinationModifier();
  (*(v6 + 16))(v8, v15 + *(v19 + 68), v5);
  if (ContextMenuPreviewDestinationModifier.Transform.isDisabled.getter(a1))
  {
    v20 = 0;
    v21 = 0;
    v22 = -2;
  }

  else
  {
    v23 = *(v2 + 16);
    v26 = *(v2 + 8);
    v27 = v23;
    type metadata accessor for Path?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v21 = *(&v28 + 1);
    v20 = v28;
    v22 = v29 | 0x80;
  }

  return ContextMenuPreviewModifier.init(menuView:preview:hidePreview:previewAction:)(v13, v8, 0, v20, v21, v22, v10, v5, a2);
}