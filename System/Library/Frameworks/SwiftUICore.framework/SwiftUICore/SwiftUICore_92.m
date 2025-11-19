uint64_t getEnumTagSinglePayload for Cache3(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(v7 + 80);
  if (v10)
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = *(v7 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v7 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64) + v14;
  v16 = a2 - v11;
  if (a2 > v11)
  {
    v17 = *(v4 + 80) | v12;
    v18 = ((v13 + (v15 & ~v14) + v17 + ((v13 + (v15 & ~v14) + v17) & ~v17)) & ~v17) + v13 + (v15 & ~v14);
    v19 = 8 * v18;
    if (v18 > 3)
    {
      goto LABEL_12;
    }

    v21 = ((v16 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (v20)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v21 <= 0xFF)
      {
        if (v21 < 2)
        {
          goto LABEL_32;
        }

LABEL_12:
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_32;
        }

LABEL_19:
        v22 = (v20 - 1) << v19;
        if (v18 > 3)
        {
          v22 = 0;
        }

        if (v18)
        {
          if (v18 <= 3)
          {
            v23 = v18;
          }

          else
          {
            v23 = 4;
          }

          if (v23 > 2)
          {
            if (v23 == 3)
            {
              v24 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v24 = *a1;
            }
          }

          else if (v23 == 1)
          {
            v24 = *a1;
          }

          else
          {
            v24 = *a1;
          }
        }

        else
        {
          v24 = 0;
        }

        return v11 + (v24 | v22) + 1;
      }

      v20 = *(a1 + v18);
      if (*(a1 + v18))
      {
        goto LABEL_19;
      }
    }
  }

LABEL_32:
  if (v10 < 2)
  {
    return 0;
  }

  if (v5 >= v9)
  {
    v26 = (*(v4 + 48))(a1, v5);
  }

  else
  {
    v26 = (*(v8 + 48))((a1 + v15) & ~v14, v9, v6);
  }

  if (v26 >= 2)
  {
    return v26 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for Cache3(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(a4 + 24);
  v9 = *(v7 + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  if (v11 <= v9)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v10 + 80);
  v16 = *(*(*(a4 + 16) - 8) + 64) + v15;
  v17 = (v16 & ~v15) + v12;
  if (v13)
  {
    v18 = (v16 & ~v15) + v12;
  }

  else
  {
    v18 = v17 + 1;
  }

  v19 = *(v7 + 80) | *(v10 + 80);
  v20 = ((v18 + v19 + ((v18 + v19) & ~v19)) & ~v19) + v18;
  v21 = a3 >= v14;
  v22 = a3 - v14;
  if (v22 == 0 || !v21)
  {
    goto LABEL_22;
  }

  if (v20 > 3)
  {
    v6 = 1;
    if (v14 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v23 = ((v22 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
  if (!HIWORD(v23))
  {
    if (v23 < 0x100)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    if (v23 >= 2)
    {
      v6 = v24;
    }

    else
    {
      v6 = 0;
    }

LABEL_22:
    if (v14 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v6 = 4;
  if (v14 < a2)
  {
LABEL_23:
    v25 = ~v14 + a2;
    if (v20 < 4)
    {
      v26 = (v25 >> (8 * v20)) + 1;
      if (v20)
      {
        v27 = v25 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v27;
            if (v6 > 1)
            {
LABEL_65:
              if (v6 == 2)
              {
                *&a1[v20] = v26;
              }

              else
              {
                *&a1[v20] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v6 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v6 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v25;
      v26 = 1;
      if (v6 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v6)
    {
      a1[v20] = v26;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v20] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  a1[v20] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v13 >= 2)
  {
    if (a2 >= v13)
    {
      if (v17 <= 3)
      {
        v30 = ~(-1 << (8 * v17));
      }

      else
      {
        v30 = -1;
      }

      if (v17)
      {
        v31 = v30 & (a2 - v13);
        if (v17 <= 3)
        {
          v32 = (v16 & ~v15) + v12;
        }

        else
        {
          v32 = 4;
        }

        bzero(a1, v17);
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            *a1 = v31;
            a1[2] = BYTE2(v31);
          }

          else
          {
            *a1 = v31;
          }
        }

        else if (v32 == 1)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v31;
        }
      }
    }

    else if (v9 >= v11)
    {
      v33 = *(v7 + 56);
      v34 = a2 + 1;

      v33(a1, v34);
    }

    else
    {
      v28 = *(v10 + 56);
      v29 = a2 + 1;

      v28(&a1[v16] & ~v15, v29, v11, v8);
    }
  }
}

uint64_t type metadata completion function for CollectionOfTwo()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3 = &v2;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *assignWithCopy for EquatableOptionalObject(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithTake for EquatableOptionalObject(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t type metadata completion function for ConformingTuple(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[1] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 8;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ConformingTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (**(TupleTypeMetadata - 8))(a1, v3);
}

uint64_t destroy for ConformingTuple(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v7 = 0;
      v8 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_9;
      }

      if (&v6[-v8] < 0x20)
      {
        goto LABEL_9;
      }

      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v8 + 16);
      v10 = v6 + 16;
      v11 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 4;
      }

      while (v11);
      if (v3 != v7)
      {
LABEL_9:
        v13 = v3 - v7;
        v14 = 8 * v7;
        v15 = &v6[8 * v7];
        v16 = (v8 + v14);
        do
        {
          v17 = *v16++;
          *v15 = v17;
          v15 += 8;
          --v13;
        }

        while (v13);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  return (*(*(TupleTypeMetadata - 8) + 8))();
}

uint64_t initializeWithCopy for ConformingTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 16))(a1, v3);
  return a1;
}

uint64_t assignWithCopy for ConformingTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 24))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for ConformingTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 32))(a1, v3);
  return a1;
}

uint64_t assignWithTake for ConformingTuple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 40))(a1, v3);
  return a1;
}

uint64_t specialized MutableCollection<>.subscript.setter()
{
  type metadata accessor for Slice();
  swift_getWitnessTable();

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)();
}

uint64_t specialized Dictionary.optimisticFilter(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= 0x41uLL)
  {
    return specialized _NativeDictionary.filter(_:)(a1, a2);
  }

  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v58 = a1;

  v9 = 0;
  v10 = 0;
  v57 = 0;
  v54 = 1;
  v55 = 1;
  while (v6)
  {
LABEL_13:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (*(v58 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    outlined init with copy of AnyTrackedValue(*(v58 + 56) + 40 * v12, v71);
    *&v70 = v14;
    *(&v70 + 1) = v15;
    *&v66 = v14;
    *(&v66 + 1) = v15;
    outlined init with take of _ViewList_Elements(v71, &v67);
    outlined init with copy of (key: EventID, value: EventType)(&v66, v64);
    v62[0] = v64[0];
    v62[1] = v64[1];
    outlined init with copy of AnyTrackedValue(v65, v63);
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    DynamicType = swift_getDynamicType();
    swift_beginAccess();
    v17 = *(a2 + 48);
    if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(DynamicType), (v19 & 1) != 0))
    {
      outlined init with copy of AnyTrackedValue(*(v17 + 56) + 40 * v18, &v59);
    }

    else
    {
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
    }

    swift_endAccess();
    outlined destroy of (key: EventID, value: EventType)(v62, type metadata accessor for (key: EventID, value: EventType));
    v20 = *(&v60 + 1);
    outlined destroy of (key: EventID, value: EventType)(&v59, type metadata accessor for ForwardedEventDispatcher?);
    outlined destroy of (key: EventID, value: EventType)(&v66, type metadata accessor for (key: EventID, value: EventType));
    __swift_destroy_boxed_opaque_existential_1(v65);
    if (v20)
    {
      v55 = 0;
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      v54 = 0;
      v21 = 1 << v9;
      if (v9 >= 0x40)
      {
        v21 = 0;
      }

      v57 |= v21;
    }

    v6 &= v6 - 1;
    ++v9;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_60;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_13;
    }
  }

  v2 = v58;

  if (v54)
  {
    v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_26:

    return v2;
  }

  if (v55)
  {

    goto LABEL_26;
  }

  v22 = 1 << *(v58 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v58 + 64);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC8];
  while (v24)
  {
    v29 = v27;
LABEL_41:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = v32 | (v29 << 6);
    v34 = (*(v2 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    outlined init with copy of AnyTrackedValue(*(v2 + 56) + 40 * v33, v64);
    *&v66 = v35;
    *(&v66 + 1) = v36;
    outlined init with take of _ViewList_Elements(v64, &v67);
LABEL_42:
    v70 = v66;
    v71[0] = v67;
    v71[1] = v68;
    v72 = v69;
    v37 = v66;
    if (!v66)
    {

      return v28;
    }

    v38 = *(&v70 + 1);
    outlined init with take of _ViewList_Elements(v71, &v66);
    if (v26 == 0x8000000000000000)
    {
      goto LABEL_61;
    }

    if (v26 < 0x40 && ((v57 >> v26) & 1) != 0)
    {
      outlined init with copy of AnyTrackedValue(&v66, v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v28;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
      v42 = v28[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_62;
      }

      v46 = v41;
      if (v28[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = v40;
          specialized _NativeDictionary.copy()();
          v40 = v52;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_65;
        }
      }

      v28 = v62[0];
      if (v46)
      {
        v48 = *(v62[0] + 56) + 40 * v40;
        __swift_destroy_boxed_opaque_existential_1(v48);
        outlined init with take of _ViewList_Elements(v64, v48);
        __swift_destroy_boxed_opaque_existential_1(&v66);
        v2 = v58;
        ++v26;
      }

      else
      {
        *(v62[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v49 = (v28[6] + 16 * v40);
        *v49 = v37;
        v49[1] = v38;
        outlined init with take of _ViewList_Elements(v64, v28[7] + 40 * v40);
        __swift_destroy_boxed_opaque_existential_1(&v66);
        v50 = v28[2];
        v44 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v44)
        {
          goto LABEL_63;
        }

        v28[2] = v51;
        v2 = v58;
        ++v26;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v66);
      ++v26;
    }
  }

  if (v25 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v25;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      v24 = 0;
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
      v27 = v31;
      v66 = 0u;
      goto LABEL_42;
    }

    v24 = *(v3 + 8 * v29);
    ++v27;
    if (v24)
    {
      v27 = v29;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a4;
  v21 = result;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    outlined init with copy of AnyTrackedValue(*(a3 + 56) + 40 * v14, v25);
    v23[0] = v16;
    v23[1] = v17;
    outlined init with copy of AnyTrackedValue(v25, v24);
    type metadata accessor for EventFilter<TappableEvent>();
    v18 = *AGGraphGetValue();

    LOBYTE(v17) = v18(v24);

    outlined destroy of (key: EventID, value: EventType)(v23, type metadata accessor for (key: EventID, value: EventType));
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v21, a2, v22, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v21, a2, v22, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = 0;
  v24 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    outlined init with copy of AnyTrackedValue(*(a3 + 56) + 40 * v14, v31);
    v27[0] = v16;
    v27[1] = v17;
    outlined init with copy of AnyTrackedValue(v31, v28);
    v18 = v29;
    v19 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v19 + 24))(&v32, v18, v19);
    if (v32)
    {
      v20 = *a4;
      v21 = *(*v32 + 128);

      LOBYTE(v21) = v21(v20);

      outlined destroy of (key: EventID, value: EventType)(v27, type metadata accessor for (key: EventID, value: EventType));
      result = __swift_destroy_boxed_opaque_existential_1(v31);
      if (v21)
      {
        *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v24, a2, v25, a3);
        }
      }
    }

    else
    {
      outlined destroy of (key: EventID, value: EventType)(v27, type metadata accessor for (key: EventID, value: EventType));
      result = __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v24, a2, v25, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    outlined init with copy of LayoutGestureBox.Child(a2, v13);
    outlined init with copy of LayoutGestureBox.Child(a2, v13);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v10 = swift_slowAlloc();
      outlined init with copy of LayoutGestureBox.Child(a2, v13);
      v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i94UI13LayoutGesturePAAE11childEvents33_05F3243F43C616B77CCF383885E80E966events5index3boxSDyAA7k8IDVAA0Q4M52_pGAL_SiAA0cD3BoxAELLCtFSbAJ3key_AaK_p5valuet_tXEfU_AH16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildVTf1nnc_n(v10, v6, a1, a2);
      MEMORY[0x193AC4820](v10, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of LayoutGestureBox.Child(a2, v13);
    v8 = outlined init with copy of LayoutGestureBox.Child(a2, v13);
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(&v13[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v7);
  outlined init with copy of LayoutGestureBox.Child(a2, v13);
  v9 = specialized closure #1 in _NativeDictionary.filter(_:)(&v13[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v6, a1, a2);
  outlined destroy of LayoutGestureBox.Child(a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_8:
  outlined destroy of LayoutGestureBox.Child(a2);
  outlined destroy of LayoutGestureBox.Child(a2);
  return v9;
}

uint64_t specialized Dictionary.optimisticFilter(_:)(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16) >= 0x41uLL)
  {
    return specialized _NativeDictionary.filter(_:)(a1, a2);
  }

  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  outlined init with copy of LayoutGestureBox.Child(a2, &v69);
  v9 = (v5 + 63) >> 6;
  v57 = a1;

  v10 = 0;
  v11 = 0;
  v56 = 0;
  v54 = 1;
  LODWORD(v55) = 1;
  while (v7)
  {
LABEL_13:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = (*(v57 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    outlined init with copy of AnyTrackedValue(*(v57 + 56) + 40 * v13, v70);
    *&v69 = v15;
    *(&v69 + 1) = v16;
    *&v65 = v15;
    *(&v65 + 1) = v16;
    outlined init with take of _ViewList_Elements(v70, &v66);
    outlined init with copy of (key: EventID, value: EventType)(&v65, v63);
    v59[0] = v63[0];
    v59[1] = v63[1];
    outlined init with copy of AnyTrackedValue(v64, v60);
    v17 = v61;
    v18 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    (*(v18 + 24))(&v58, v17, v18);
    if (v58)
    {
      v19 = *a2;
      v20 = *(*v58 + 128);

      LOBYTE(v19) = v20(v19);

      outlined destroy of (key: EventID, value: EventType)(v59, type metadata accessor for (key: EventID, value: EventType));
      outlined destroy of (key: EventID, value: EventType)(&v65, type metadata accessor for (key: EventID, value: EventType));
      __swift_destroy_boxed_opaque_existential_1(v64);
      if (v19)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        v54 = 0;
        v21 = 1 << v10;
        if (v10 >= 0x40)
        {
          v21 = 0;
        }

        v56 |= v21;
      }

      else
      {
        LODWORD(v55) = 0;
      }
    }

    else
    {
      outlined destroy of (key: EventID, value: EventType)(v59, type metadata accessor for (key: EventID, value: EventType));
      outlined destroy of (key: EventID, value: EventType)(&v65, type metadata accessor for (key: EventID, value: EventType));
      __swift_destroy_boxed_opaque_existential_1(v64);
      LODWORD(v55) = 0;
    }

    v7 &= v7 - 1;
    ++v10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_58;
    }

    if (v12 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  v3 = v57;

  if (v54)
  {
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_24:
    outlined destroy of LayoutGestureBox.Child(a2);
    return v3;
  }

  if (v55)
  {

    goto LABEL_24;
  }

  v55 = a2;
  v22 = 1 << *(v57 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v57 + 64);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC8];
  while (v24)
  {
    v29 = v27;
LABEL_39:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = v32 | (v29 << 6);
    v34 = (*(v3 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v33, v63);
    *&v65 = v35;
    *(&v65 + 1) = v36;
    outlined init with take of _ViewList_Elements(v63, &v66);
LABEL_40:
    v69 = v65;
    v70[0] = v66;
    v70[1] = v67;
    v71 = v68;
    v37 = v65;
    if (!v65)
    {

      outlined destroy of LayoutGestureBox.Child(v55);
      return v28;
    }

    v38 = *(&v69 + 1);
    outlined init with take of _ViewList_Elements(v70, &v65);
    if (v26 == 0x8000000000000000)
    {
      goto LABEL_59;
    }

    if (v26 < 0x40 && ((v56 >> v26) & 1) != 0)
    {
      outlined init with copy of AnyTrackedValue(&v65, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59[0] = v28;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
      v42 = v28[2];
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_60;
      }

      v46 = v41;
      if (v28[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = v40;
          specialized _NativeDictionary.copy()();
          v40 = v52;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
        v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_63;
        }
      }

      v3 = v57;
      v28 = v59[0];
      if (v46)
      {
        v48 = *(v59[0] + 56) + 40 * v40;
        __swift_destroy_boxed_opaque_existential_1(v48);
        outlined init with take of _ViewList_Elements(v63, v48);
        __swift_destroy_boxed_opaque_existential_1(&v65);
        ++v26;
      }

      else
      {
        *(v59[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v49 = (v28[6] + 16 * v40);
        *v49 = v37;
        v49[1] = v38;
        outlined init with take of _ViewList_Elements(v63, v28[7] + 40 * v40);
        __swift_destroy_boxed_opaque_existential_1(&v65);
        v50 = v28[2];
        v44 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v44)
        {
          goto LABEL_61;
        }

        v28[2] = v51;
        ++v26;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v65);
      ++v26;
    }
  }

  if (v25 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v25;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      v24 = 0;
      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v27 = v31;
      v65 = 0u;
      goto LABEL_40;
    }

    v24 = *(v4 + 8 * v29);
    ++v27;
    if (v24)
    {
      v27 = v29;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  outlined destroy of LayoutGestureBox.Child(v55);
  outlined destroy of LayoutGestureBox.Child(v55);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of (key: EventID, value: EventType)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: EventID, value: EventType)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (key: EventID, value: EventType)()
{
  if (!lazy cache variable for type metadata for (key: EventID, value: EventType))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for EventType);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: EventID, value: EventType));
    }
  }
}

void type metadata accessor for EventFilter<TappableEvent>()
{
  if (!lazy cache variable for type metadata for EventFilter<TappableEvent>)
  {
    v0 = type metadata accessor for EventFilter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EventFilter<TappableEvent>);
    }
  }
}

uint64_t outlined destroy of (key: EventID, value: EventType)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ForwardedEventDispatcher?()
{
  if (!lazy cache variable for type metadata for ForwardedEventDispatcher?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for ForwardedEventDispatcher);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForwardedEventDispatcher?);
    }
  }
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_UnaryC7AdaptorVyAA05EmptyC0VG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = AGCreateWeakAttribute();
  v5 = v4;
  v6 = HIDWORD(v4);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, &type metadata for EmptyView, &protocol witness table for EmptyView, type metadata accessor for _UnaryViewAdaptor);
  v8 = v7;
  v9 = *(a1 + 32);
  v43[1] = *(a1 + 16);
  v43[2] = v9;
  v43[0] = *a1;
  v10 = WORD2(v9);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v42[3] = v11;
  v42[4] = &protocol witness table for UnaryElements<A>;
  v12 = swift_allocObject();
  v42[0] = v12;
  *(v12 + 16) = v5;
  *(v12 + 20) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = &protocol witness table for _UnaryViewAdaptor<A>;
  v13 = *(a1 + 16);
  *(v12 + 40) = *a1;
  *(v12 + 56) = v13;
  *(v12 + 72) = *(a1 + 32);
  if ((v10 & 0x100) != 0)
  {
    v17 = *&v43[0];
    outlined init with copy of _GraphInputs(v43, v32);
    v18 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v17);
    Attribute = AGWeakAttributeGetAttribute();
    v15 = *MEMORY[0x1E698D3F8];
    v16 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v43, v32);
    v14 = 0;
    v15 = *MEMORY[0x1E698D3F8];
    v16 = 1;
  }

  v20 = *(a1 + 64);
  if (v20 != v15)
  {
    goto LABEL_13;
  }

  v21 = !v16;
  if ((*(a1 + 56) & 3) == 1)
  {
    v21 = 1;
  }

  if (v21 & 1) != 0 || (v22 = *(a1 + 128), v22 != 255) && ((v22 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v42, v31);
    v23 = *(a1 + 48);
    v24 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v30 = *(a1 + 112);
    v25 = *(a1 + 128);
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    if (v20 == v15)
    {
      v20 = v15;
    }

    outlined init with take of _ViewList_Elements(v31, v32);
    v33 = v23;
    v34 = v24;
    v35 = v14;
    v36 = v16;
    v37 = v30;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v41 = v20;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v28 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v32);
    *a2 = v28;
    *(a2 + 8) = 0;
    *(a2 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v42, a2);
    *(a2 + 40) = 0;
    v23 = *(a1 + 48);
  }

  *(a2 + 48) = v23 + 1;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for DynamicTextView, &protocol witness table for DynamicTextView, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06MappedC7ElementV11Placeholder33_0869CE5E72C6BD6754FF980DEA862555LLV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for MappedViewElement.Placeholder, &protocol witness table for MappedViewElement.Placeholder, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = AGCreateWeakAttribute();
  v9 = v8;
  v10 = HIDWORD(v8);
  v11 = *(a1 + 32);
  v45[1] = *(a1 + 16);
  v45[2] = v11;
  v45[0] = *a1;
  v12 = WORD2(v11);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v44[3] = v13;
  v44[4] = &protocol witness table for UnaryElements<A>;
  v14 = swift_allocObject();
  v44[0] = v14;
  *(v14 + 16) = v9;
  *(v14 + 20) = v10;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v15 = *(a1 + 16);
  *(v14 + 40) = *a1;
  *(v14 + 56) = v15;
  *(v14 + 72) = *(a1 + 32);
  if ((v12 & 0x100) != 0)
  {
    v19 = *&v45[0];
    outlined init with copy of _GraphInputs(v45, v34);
    v20 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v19);
    Attribute = AGWeakAttributeGetAttribute();
    v17 = *MEMORY[0x1E698D3F8];
    v18 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v16 = 0;
    }

    else
    {
      v16 = v20;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v45, v34);
    v16 = 0;
    v17 = *MEMORY[0x1E698D3F8];
    v18 = 1;
  }

  v22 = *(a1 + 64);
  if (v22 != v17)
  {
    goto LABEL_13;
  }

  v23 = !v18;
  if ((*(a1 + 56) & 3) == 1)
  {
    v23 = 1;
  }

  if (v23 & 1) != 0 || (v24 = *(a1 + 128), v24 != 255) && ((v24 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v44, v33);
    v25 = *(a1 + 48);
    v26 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v32 = *(a1 + 112);
    v27 = *(a1 + 128);
    v28 = *(a1 + 72);
    v29 = *(a1 + 80);
    if (v22 == v17)
    {
      v22 = v17;
    }

    outlined init with take of _ViewList_Elements(v33, v34);
    v35 = v25;
    v36 = v26;
    v37 = v16;
    v38 = v18;
    v39 = v32;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    v43 = v22;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v30 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v34);
    *a4 = v30;
    *(a4 + 8) = 0;
    *(a4 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v44, a4);
    *(a4 + 40) = 0;
    v25 = *(a1 + 48);
  }

  *(a4 + 48) = v25 + 1;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA016ContainerStorageC033_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for ContainerStorageView, &protocol witness table for ContainerStorageView, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA018PrimitiveGlassItemC033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for PrimitiveGlassItemView, &protocol witness table for PrimitiveGlassItemView, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA4TextV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for Text, &protocol witness table for Text, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA5ImageV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for Image, &protocol witness table for Image, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA7SubviewV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for Subview, &protocol witness table for Subview, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = AGCreateWeakAttribute();
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = a2(0);
  v10 = *(a1 + 32);
  v44[1] = *(a1 + 16);
  v44[2] = v10;
  v44[0] = *a1;
  v11 = WORD2(v10);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v43[3] = v12;
  v43[4] = &protocol witness table for UnaryElements<A>;
  v13 = swift_allocObject();
  v43[0] = v13;
  *(v13 + 16) = v7;
  *(v13 + 20) = v8;
  *(v13 + 24) = v9;
  *(v13 + 32) = &protocol witness table for _ShapeView<A, B>;
  v14 = *(a1 + 16);
  *(v13 + 40) = *a1;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a1 + 32);
  if ((v11 & 0x100) != 0)
  {
    v18 = *&v44[0];
    outlined init with copy of _GraphInputs(v44, v33);
    v19 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v18);
    Attribute = AGWeakAttributeGetAttribute();
    v16 = *MEMORY[0x1E698D3F8];
    v17 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v15 = 0;
    }

    else
    {
      v15 = v19;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v44, v33);
    v15 = 0;
    v16 = *MEMORY[0x1E698D3F8];
    v17 = 1;
  }

  v21 = *(a1 + 64);
  if (v21 != v16)
  {
    goto LABEL_13;
  }

  v22 = !v17;
  if ((*(a1 + 56) & 3) == 1)
  {
    v22 = 1;
  }

  if (v22 & 1) != 0 || (v23 = *(a1 + 128), v23 != 255) && ((v23 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v43, v32);
    v24 = *(a1 + 48);
    v25 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v31 = *(a1 + 112);
    v26 = *(a1 + 128);
    v27 = *(a1 + 72);
    v28 = *(a1 + 80);
    if (v21 == v16)
    {
      v21 = v16;
    }

    outlined init with take of _ViewList_Elements(v32, v33);
    v34 = v24;
    v35 = v25;
    v36 = v15;
    v37 = v17;
    v38 = v31;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v21;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v29 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v33);
    *a3 = v29;
    *(a3 + 8) = 0;
    *(a3 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v43, a3);
    *(a3 + 40) = 0;
    v24 = *(a1 + 48);
  }

  *(a3 + 48) = v24 + 1;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA15ModifiedContentVyAA22GlassContainerResolverVyAPyAA6ZStackVyAA7ForEachVySayAA0pQ0O6EffectVGAX15DisplayMaterialV2IDVAPyAA0pvC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0pQ18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = AGCreateWeakAttribute();
  v5 = v4;
  v6 = HIDWORD(v4);
  type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(0, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>, type metadata accessor for GeometryReader);
  v8 = v7;
  v9 = *(a1 + 32);
  v43[1] = *(a1 + 16);
  v43[2] = v9;
  v43[0] = *a1;
  v10 = WORD2(v9);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v42[3] = v11;
  v42[4] = &protocol witness table for UnaryElements<A>;
  v12 = swift_allocObject();
  v42[0] = v12;
  *(v12 + 16) = v5;
  *(v12 + 20) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = &protocol witness table for GeometryReader<A>;
  v13 = *(a1 + 16);
  *(v12 + 40) = *a1;
  *(v12 + 56) = v13;
  *(v12 + 72) = *(a1 + 32);
  if ((v10 & 0x100) != 0)
  {
    v17 = *&v43[0];
    outlined init with copy of _GraphInputs(v43, v32);
    v18 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v17);
    Attribute = AGWeakAttributeGetAttribute();
    v15 = *MEMORY[0x1E698D3F8];
    v16 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v43, v32);
    v14 = 0;
    v15 = *MEMORY[0x1E698D3F8];
    v16 = 1;
  }

  v20 = *(a1 + 64);
  if (v20 != v15)
  {
    goto LABEL_13;
  }

  v21 = !v16;
  if ((*(a1 + 56) & 3) == 1)
  {
    v21 = 1;
  }

  if (v21 & 1) != 0 || (v22 = *(a1 + 128), v22 != 255) && ((v22 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v42, v31);
    v23 = *(a1 + 48);
    v24 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v30 = *(a1 + 112);
    v25 = *(a1 + 128);
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    if (v20 == v15)
    {
      v20 = v15;
    }

    outlined init with take of _ViewList_Elements(v31, v32);
    v33 = v23;
    v34 = v24;
    v35 = v14;
    v36 = v16;
    v37 = v30;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v41 = v20;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v28 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v32);
    *a2 = v28;
    *(a2 + 8) = 0;
    *(a2 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v42, a2);
    *(a2 + 40) = 0;
    v23 = *(a1 + 48);
  }

  *(a2 + 48) = v23 + 1;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA14GeometryReaderVyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = AGCreateWeakAttribute();
  v5 = v4;
  v6 = HIDWORD(v4);
  type metadata accessor for IndexingIterator<SubviewsCollectionSlice>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader);
  v8 = v7;
  v9 = *(a1 + 32);
  v43[1] = *(a1 + 16);
  v43[2] = v9;
  v43[0] = *a1;
  v10 = WORD2(v9);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v42[3] = v11;
  v42[4] = &protocol witness table for UnaryElements<A>;
  v12 = swift_allocObject();
  v42[0] = v12;
  *(v12 + 16) = v5;
  *(v12 + 20) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = &protocol witness table for GeometryReader<A>;
  v13 = *(a1 + 16);
  *(v12 + 40) = *a1;
  *(v12 + 56) = v13;
  *(v12 + 72) = *(a1 + 32);
  if ((v10 & 0x100) != 0)
  {
    v17 = *&v43[0];
    outlined init with copy of _GraphInputs(v43, v32);
    v18 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v17);
    Attribute = AGWeakAttributeGetAttribute();
    v15 = *MEMORY[0x1E698D3F8];
    v16 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v43, v32);
    v14 = 0;
    v15 = *MEMORY[0x1E698D3F8];
    v16 = 1;
  }

  v20 = *(a1 + 64);
  if (v20 != v15)
  {
    goto LABEL_13;
  }

  v21 = !v16;
  if ((*(a1 + 56) & 3) == 1)
  {
    v21 = 1;
  }

  if (v21 & 1) != 0 || (v22 = *(a1 + 128), v22 != 255) && ((v22 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v42, v31);
    v23 = *(a1 + 48);
    v24 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v30 = *(a1 + 112);
    v25 = *(a1 + 128);
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    if (v20 == v15)
    {
      v20 = v15;
    }

    outlined init with take of _ViewList_Elements(v31, v32);
    v33 = v23;
    v34 = v24;
    v35 = v14;
    v36 = v16;
    v37 = v30;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v41 = v20;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v28 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v32);
    *a2 = v28;
    *(a2 + 8) = 0;
    *(a2 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v42, a2);
    *(a2 + 40) = 0;
    v23 = *(a1 + 48);
  }

  *(a2 + 48) = v23 + 1;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA015CombinedContentL033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA22GlassContainerResolverVyAA15ModifiedContentVyAA6ZStackVyAA7ForEachVySayAA0lM0O6EffectVGAV15DisplayMaterialV2IDVAPyAA0ltC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0lM18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = AGCreateWeakAttribute();
  v5 = v4;
  v6 = HIDWORD(v4);
  type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(0, &lazy cache variable for type metadata for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, type metadata accessor for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>, lazy protocol witness table accessor for type ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for GlassContainerResolver);
  v8 = v7;
  v9 = *(a1 + 32);
  v43[1] = *(a1 + 16);
  v43[2] = v9;
  v43[0] = *a1;
  v10 = WORD2(v9);
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for UnaryElements<TypedUnaryViewGenerator>, &type metadata for TypedUnaryViewGenerator, &protocol witness table for TypedUnaryViewGenerator, type metadata accessor for UnaryElements);
  v42[3] = v11;
  v42[4] = &protocol witness table for UnaryElements<A>;
  v12 = swift_allocObject();
  v42[0] = v12;
  *(v12 + 16) = v5;
  *(v12 + 20) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = &protocol witness table for GlassContainerResolver<A>;
  v13 = *(a1 + 16);
  *(v12 + 40) = *a1;
  *(v12 + 56) = v13;
  *(v12 + 72) = *(a1 + 32);
  if ((v10 & 0x100) != 0)
  {
    v17 = *&v43[0];
    outlined init with copy of _GraphInputs(v43, v32);
    v18 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v17);
    Attribute = AGWeakAttributeGetAttribute();
    v15 = *MEMORY[0x1E698D3F8];
    v16 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }
  }

  else
  {
    outlined init with copy of _GraphInputs(v43, v32);
    v14 = 0;
    v15 = *MEMORY[0x1E698D3F8];
    v16 = 1;
  }

  v20 = *(a1 + 64);
  if (v20 != v15)
  {
    goto LABEL_13;
  }

  v21 = !v16;
  if ((*(a1 + 56) & 3) == 1)
  {
    v21 = 1;
  }

  if (v21 & 1) != 0 || (v22 = *(a1 + 128), v22 != 255) && ((v22 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v42, v31);
    v23 = *(a1 + 48);
    v24 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v30 = *(a1 + 112);
    v25 = *(a1 + 128);
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    if (v20 == v15)
    {
      v20 = v15;
    }

    outlined init with take of _ViewList_Elements(v31, v32);
    v33 = v23;
    v34 = v24;
    v35 = v14;
    v36 = v16;
    v37 = v30;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v41 = v20;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v28 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of BaseViewList.Init(v32);
    *a2 = v28;
    *(a2 + 8) = 0;
    *(a2 + 40) = 1;
  }

  else
  {
    outlined init with copy of AnyTrackedValue(v42, a2);
    *(a2 + 40) = 0;
    v23 = *(a1 + 48);
  }

  *(a2 + 48) = v23 + 1;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA01_cd1_C0V_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for _ViewList_View, &protocol witness table for _ViewList_View, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA08BackdropC0V_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for BackdropView, &protocol witness table for BackdropView, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA12MeshGradientV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for MeshGradient, &protocol witness table for MeshGradient, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA17ConditionalSpacerV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for ConditionalSpacer, &protocol witness table for ConditionalSpacer, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA09MountablecE0V07Displayd5ProxyC0V_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for MountableViewOutputs.DisplayListProxyView, &protocol witness table for MountableViewOutputs.DisplayListProxyView, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA017StyledTextContentC0V_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA09_VariadicC9_ChildrenV7ElementV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for _VariadicView_Children.Element, &protocol witness table for _VariadicView_Children.Element, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA26_BackdropEffectPlaceholderV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for _BackdropEffectPlaceholder, &protocol witness table for _BackdropEffectPlaceholder, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA27_TextBaselineRelativeSpacerV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for _TextBaselineRelativeSpacer, &protocol witness table for _TextBaselineRelativeSpacer, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA5ColorV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for Color, &protocol witness table for Color, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA5ImageVAAE8ResolvedV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA6SpacerV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for Spacer, &protocol witness table for Spacer, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA8_HSpacerV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for _HSpacer, &protocol witness table for _HSpacer, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA8_VSpacerV_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for _VSpacer, &protocol witness table for _VSpacer, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA05ColorC0V_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA011DynamicTextC033_641995D812913A47B866B20B88782376LLV_Tt2B5Tm(a1, &type metadata for ColorView, &protocol witness table for ColorView, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Rectangle._Inset, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA03AnyL0VAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7EllipseV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Ellipse._Inset, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Capsule, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA7CapsuleV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Capsule._Inset, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Circle, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA6CircleV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Circle._Inset, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA4PathVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Path, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA024PartialContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<PartialContainerRelativeShape, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA018DefaultGlassEffectL0VAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<UnevenRoundedRectangle, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA22UnevenRoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<UnevenRoundedRectangle._Inset, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ImplicitContainerL0VAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0VAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA017ContainerRelativeL0V6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<ContainerRelativeShape._Inset, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA19ConcentricRectangleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<ConcentricRectangle, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA18EllipticalGradientVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA16RoundedRectangleV6_InsetVAA15ForegroundStyleVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<RoundedRectangle._Inset, ForegroundStyle>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA15AngularGradientVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Rectangle, AngularGradient>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14RadialGradientVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Rectangle, RadialGradient>, a2);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_ShapeC0VyAA9RectangleVAA14LinearGradientVG_Tt2B5Tm(a1, type metadata accessor for _ShapeView<Rectangle, LinearGradient>, a2);
}

uint64_t static _ViewListOutputs.nonEmptyParentViewList(inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a1, v11);
  LODWORD(v9) = *(a1 + 64);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type EmptyViewTrait and conformance EmptyViewTrait();
  v12 = Attribute.init<A>(body:value:flags:update:)();
  if (v13)
  {
    v9 = v13;
    v10 = v14 & 1;
    v13 = 0;
    v14 = 0;
    specialized Set._Variant.insert(_:)(&v8, &type metadata for IsEmptyViewTraitKey);
    v4 = v9;
    v5 = v10;

    v13 = v4;
    v14 = v5;
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(0, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, &type metadata for EmptyView, &protocol witness table for EmptyView, type metadata accessor for _UnaryViewAdaptor);
  specialized GraphHost.intern<A>(_:for:id:)(v6, 0);

  _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA06_UnaryC7AdaptorVyAA05EmptyC0VG_Tt2B5(v11, a2);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t DepthTrait.value.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 == *MEMORY[0x1E698D3F8])
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v3 = *AGGraphGetValue();
  }

  v4 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA05DepthdJ0V_Tt0B5(0, v3);
  v5 = __OFADD__(v4, 1);
  result = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    result = _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA05DepthdG0V_Tt0g5(result);
    *a1 = v3;
  }

  return result;
}

uint64_t SectionHeaderTrait.value.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 == *MEMORY[0x1E698D3F8])
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
  }

  v5 = v3;
  result = _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA015IsSectionHeaderdG0V_Tt0g5(1);
  *a1 = v5;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance SectionedTrait@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t *a2@<X8>)
{
  if (*v2 == *MEMORY[0x1E698D3F8])
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
  }

  v7 = v5;
  result = a1(1);
  *a2 = v7;
  return result;
}

uint64_t (*ViewTraitCollection.groupDepth.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA05DepthdJ0V_Tt0B5(0, *v1);
  return ViewTraitCollection.groupDepth.modify;
}

uint64_t (*ViewTraitCollection.isSectioned.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA011IsSectioneddJ0V_Tt0B5(0, *v1) & 1;
  return ViewTraitCollection.isSectioned.modify;
}

uint64_t (*ViewTraitCollection.isEmptyView.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07IsEmptycdJ0V_Tt0B5(0, *v1) & 1;
  return ViewTraitCollection.isEmptyView.modify;
}

uint64_t (*ViewTraitCollection.isSectionHeader.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA015IsSectionHeaderdJ0V_Tt0B5(0, *v1) & 1;
  return ViewTraitCollection.isSectionHeader.modify;
}

uint64_t (*ViewTraitCollection.isSectionFooter.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA015IsSectionFooterdJ0V_Tt0B5(0, *v1) & 1;
  return ViewTraitCollection.isSectionFooter.modify;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<NSCalendarUnit>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSCalendarUnit>, type metadata accessor for NSCalendarUnit, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<NSCalendarUnit>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<ViewList>>, type metadata accessor for Attribute<ViewList>, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      type metadata accessor for _ContiguousArrayStorage<_ViewListOutputs>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 80);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *result)
{
  v1 = result[3];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (v1)
    {
      v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5(result[3], 0);

      v3 = specialized Sequence._copySequenceContents(initializing:)(v4, (v2 + 4), v1);

      if (v3 == v1)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

{
  v1 = result[6];
  v2 = result[7];
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v2, v1))
  {
    if (v3)
    {
      v4 = result;
      v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV8RunSliceV_Tt1gq5(v2 - v1, 0);
      v6 = v4[1];
      v9[0] = *v4;
      v9[1] = v6;
      v7 = v4[3];
      v9[2] = v4[2];
      v9[3] = v7;
      outlined init with copy of Text.Layout.RunSlice(v9, v10);
      v8 = specialized Sequence._copySequenceContents(initializing:)(v10, (v5 + 4), v3);
      outlined destroy of IndexingIterator<SubviewsCollectionSlice>(v10, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.RunSlice>, lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice, &type metadata for Text.Layout.RunSlice);
      if (v8 == v3)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

{
  v1 = result[1];
  v2 = v1 - *result;
  if (v1 < *result)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v1, *result))
  {
    if (v2)
    {
      v3 = result;
      v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI7SubviewV_Tt1gq5(v1 - *result, 0);
      outlined init with copy of SubviewsCollectionSlice(v3, v6);
      v5 = specialized Sequence._copySequenceContents(initializing:)(v7, (v4 + 4), v2);
      outlined destroy of IndexingIterator<SubviewsCollectionSlice>(v7, &lazy cache variable for type metadata for IndexingIterator<SubviewsCollectionSlice>, lazy protocol witness table accessor for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice, &type metadata for SubviewsCollectionSlice);
      if (v5 == v2)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

{
  v1 = result[5];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (v1)
    {
      v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DataV_Tt1gq5(result[5], 0);

      v3 = specialized Sequence._copySequenceContents(initializing:)(&v4, (v2 + 4), v1);

      if (v3 == v1)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV4LineV_Tt1gq5(*(*a1 + 16), 0);
  v3 = specialized Sequence._copySequenceContents(initializing:)(v5, (v2 + 4), v1);

  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV8RunSliceV_Tt1gq5(*(v1 + 16), 0);

  v4 = specialized Sequence._copySequenceContents(initializing:)(v6, v3 + 2, v2);

  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutVAFE11DecorationsV8FragmentV_Tt1gq5(*(v1 + 16), 0);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  outlined init with copy of Text.Layout.Decorations.Segment(v8, v10);
  v6 = specialized Sequence._copySequenceContents(initializing:)(v10, v4 + 2, v2);
  outlined destroy of IndexingIterator<SubviewsCollectionSlice>(v10, &lazy cache variable for type metadata for IndexingIterator<Text.Layout.Decorations.Segment>, lazy protocol witness table accessor for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment, &type metadata for Text.Layout.Decorations.Segment);
  if (v6 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

{
  v1 = *(a1 + 12);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI020_UnsafeHeterogeneousC8_ElementV_Tt1gq5(v1, 0);
  if (specialized Sequence._copySequenceContents(initializing:)(v4, v2 + 4, v1) != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI32AnyAttributedTextValueConstraintV_Tt1gq5(*(*a1 + 16), 0);

  v3 = specialized Sequence._copySequenceContents(initializing:)(&v5, (v2 + 4), v1);

  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11LayoutProxyV_Tt1gq5(*(v1 + 16), 0);

  v4 = specialized Sequence._copySequenceContents(initializing:)(v6, (v3 + 4), v2);

  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13LayoutSubviewV_Tt1gq5(*(v1 + 16), 0);

  v4 = specialized Sequence._copySequenceContents(initializing:)(v6, (v3 + 4), v2);

  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI12PlatformItemV_Tt1gq5(*(v1 + 16), 0);

  v4 = specialized Sequence._copySequenceContents(initializing:)(v6, (v3 + 4), v2);

  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI12_ViewList_IDV_Tt1gq5(*(a1 + 16), 0);

  v3 = specialized Sequence._copySequenceContents(initializing:)(v5, (v2 + 4), v1);

  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutVAFE11DecorationsV7SegmentV_Tt1gq5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI035CoreInteractionRepresentableFeatureC0V7ElementV_Tt1gq5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI028CoreViewRepresentableFeatureC0V7ElementV_Tt1gq5, specialized Sequence._copySequenceContents(initializing:));
}

{
  v1 = *(*a1 + 88);
  v2 = v1();
  result = v1();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = v1();
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      if (v2)
      {
        v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI12_ViewList_IDV_Tt1gq5(v2, 0);

        v5 = specialized Sequence._copySequenceContents(initializing:)(&v6, v4 + 4, v2);

        if (v5 == v2)
        {
          return v4;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI20SectionConfigurationV_Tt1gq5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13PreferenceKey_pXp_Tt1gq5, specialized Sequence._copySequenceContents(initializing:));
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = v3;
  if (v2 == 1)
  {
    v5 = _NSTextLineFragmentGetCTLine(v3);

    if (v5)
    {
      RunCount = CTLineGetRunCount();
    }

    else
    {
      RunCount = 0;
    }

    v8 = v4;
    v7 = _NSTextLineFragmentGetCTLine(v8);

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    RunCount = CTLineGetRunCount();

    v7 = v4;
  }

  v9 = CTLineGetRunCount();

  if (v9 < 0)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if ((v2 & 1) == 0)
  {
    v11 = v4;
    goto LABEL_12;
  }

LABEL_9:
  v10 = v4;
  v11 = _NSTextLineFragmentGetCTLine(v10);

  if (v11)
  {
LABEL_12:
    v12 = CTLineGetRunCount();

    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:
  if (RunCount < 0 || v12 < RunCount)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (RunCount)
  {
    v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV3RunV_Tt1gq5(RunCount, 0);
    outlined copy of Text.Layout.Line.Line(v1);
    specialized Sequence._copySequenceContents(initializing:)(&v16, (v13 + 4), RunCount);
    v15 = v14;
    outlined consume of Text.Layout.Line.Line(v16);
    if (v15 != RunCount)
    {
      __break(1u);
    }
  }
}

void specialized _copyCollectionToContiguousArray<A>(_:)(void **a1)
{
  v1 = *a1;
  v2 = CTLineGetRunAtIndex();
  GlyphCount = CTRunGetGlyphCount(v2);

  v4 = CTLineGetRunAtIndex();
  v5 = CTRunGetGlyphCount(v4);

  if (v5 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v6 = CTLineGetRunAtIndex();
  v7 = CTRunGetGlyphCount(v6);

  if (GlyphCount < 0 || v7 < GlyphCount)
  {
    goto LABEL_9;
  }

  if (GlyphCount)
  {
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutV8RunSliceV_Tt1gq5(GlyphCount, 0);

    v9 = v1;
    specialized Sequence._copySequenceContents(initializing:)(v12, (v8 + 4), GlyphCount);
    v11 = v10;

    if (v11 != GlyphCount)
    {
      __break(1u);
    }
  }
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t result, uint64_t (*a2)(void, void), uint64_t (*a3)(_BYTE *, uint64_t, uint64_t))
{
  v3 = *(result + 12);
  if ((v3 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v3)
  {
    v5 = *(result + 12);
    while (*result)
    {
      if (!--v5)
      {
        v6 = a2(*(result + 12), 0);
        if (a3(v7, v6 + 32, v3) == v3)
        {
          return v6;
        }

        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    goto LABEL_11;
  }

  return MEMORY[0x1E69E7CC0];
}

size_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = _HashTable.startBucket.getter();
  v3 = specialized Collection.distance(from:to:)(v2, *(v1 + 36), 0, 1 << *(v1 + 32), *(v1 + 36), 0);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_7SwiftUI29AccessibilityCustomAttributesV5ValueO5valuet_Tt1gq5(v3, 0);
  type metadata accessor for (key: String, value: AccessibilityCustomAttributes.Value)();
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);

  v8 = specialized Sequence._copySequenceContents(initializing:)(v13, v5 + v7, v4);
  v9 = v13[1];
  v10 = v13[2];
  v11 = v14;

  outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v9, v10, v11);
  if (v8 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

_OWORD *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI23LayoutGestureChildProxyV0L0V_Tt1gq5(*(v2 + 16), 0);
  result = swift_beginAccess();
  v7 = *(v1 + 160);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of LayoutGestureBox.Child(result, v6);
    return v4;
  }

  v9 = 0;
  v10 = v3 - 1;
  v11 = 32;
  while (v9 < v8)
  {
    v22[0] = *(v7 + v11);
    v12 = *(v7 + v11 + 16);
    v13 = *(v7 + v11 + 32);
    v14 = *(v7 + v11 + 64);
    v22[3] = *(v7 + v11 + 48);
    v22[4] = v14;
    v22[1] = v12;
    v22[2] = v13;
    v15 = *(v7 + v11 + 80);
    v16 = *(v7 + v11 + 96);
    v17 = *(v7 + v11 + 128);
    v22[7] = *(v7 + v11 + 112);
    v22[8] = v17;
    v22[5] = v15;
    v22[6] = v16;
    v18 = *(v7 + v11 + 144);
    v19 = *(v7 + v11 + 160);
    v20 = *(v7 + v11 + 176);
    *(v23 + 12) = *(v7 + v11 + 188);
    v22[10] = v19;
    v23[0] = v20;
    v22[9] = v18;
    memmove(&v4[v11 / 8], (v7 + v11), 0xCCuLL);
    result = v22;
    v6 = v21;
    if (v10 == v9)
    {
      goto LABEL_8;
    }

    result = outlined init with copy of LayoutGestureBox.Child(v22, v21);
    v8 = *(v7 + 16);
    ++v9;
    v11 += 208;
    if (v9 == v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(void *a1)
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = ViewList.count.getter(v3, v4);
  static Update.end()();
  _MovableLockUnlock(v2);
  _MovableLockLock(v2);
  specialized static Update.begin()();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = ViewList.count.getter(v6, v7);
  static Update.end()();
  result = _MovableLockUnlock(v2);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    _MovableLockLock(v2);
    specialized static Update.begin()();
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = ViewList.count.getter(v10, v11);
    static Update.end()();
    result = _MovableLockUnlock(v2);
    if ((v5 & 0x8000000000000000) == 0 && v12 >= v5)
    {
      if (v5)
      {
        v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI22_VariadicView_ChildrenV7ElementV_Tt1gq5(v5, 0);
        outlined init with copy of _VariadicView_Children(a1, v15);
        v14 = specialized Sequence._copySequenceContents(initializing:)(v16, (v13 + 4), v5);
        outlined destroy of IndexingIterator<SubviewsCollectionSlice>(v16, &lazy cache variable for type metadata for IndexingIterator<_VariadicView_Children>, lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children, &type metadata for _VariadicView_Children);
        if (v14 == v5)
        {
          return v13;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = ViewList.count.getter(v3, v4);
  static Update.end()();
  _MovableLockUnlock(v2);
  _MovableLockLock(v2);
  specialized static Update.begin()();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = ViewList.count.getter(v6, v7);
  static Update.end()();
  result = _MovableLockUnlock(v2);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    _MovableLockLock(v2);
    specialized static Update.begin()();
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = ViewList.count.getter(v10, v11);
    static Update.end()();
    result = _MovableLockUnlock(v2);
    if ((v5 & 0x8000000000000000) == 0 && v12 >= v5)
    {
      if (v5)
      {
        v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI7SubviewV_Tt1gq5(v5, 0);
        outlined init with copy of SubviewsCollection(a1, v15);
        v14 = specialized Sequence._copySequenceContents(initializing:)(v16, (v13 + 4), v5);
        outlined destroy of IndexingIterator<SubviewsCollectionSlice>(v16, &lazy cache variable for type metadata for IndexingIterator<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection);
        if (v14 == v5)
        {
          return v13;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = *(v1 + 80);
    v4 = SectionAccumulator.RowIDs.endIndex.getter();
    v5 = *(v1 + 80);
  }

  else
  {
    v4 = SectionAccumulator.RowIDs.endIndex.getter();
    v3 = 0;
    v5 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v3 < v5 || result < v3)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v2)
  {
    v8 = *(v1 + 80);
  }

  else
  {
    v8 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v4 < v8 || result < v4)
  {
    goto LABEL_20;
  }

  v9 = __OFSUB__(v4, v3);
  v10 = v4 - v3;
  if (!v9)
  {
    if (v10)
    {
      v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI12_ViewList_IDV9CanonicalV_Tt1gq5(v10, 0);

      v12 = specialized Sequence._copySequenceContents(initializing:)(&v13, v11 + 4, v10);

      if (v12 == v10)
      {
        return v11;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  v3 = (v2 >> 1) - v1;
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(result + 32);
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6 - v4;
  if (v6 < v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v6 == v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI16_ShapeStyle_PackV0K0V_Tt1gq5(v6 - v4, 0);
  swift_unknownObjectRetain();
  v9 = specialized Sequence._copySequenceContents(initializing:)(v10, v8 + 32, v7);
  result = swift_unknownObjectRelease();
  if (v9 != v7)
  {
    goto LABEL_13;
  }

  return v8;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v3 = *(*a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a2(*(*a1 + 16), 0);

  v6 = a3(&v8, v5 + 32, v3);

  if (v6 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v2, 0);

    MEMORY[0x193AC0390](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSb_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<_ViewListOutputs>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t specialized GraphHost.intern<A>(_:for:id:)(uint64_t a1, char a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = &type metadata for EmptyViewList;
  v18 = lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList();
  swift_beginAccess();
  v6 = *(a3 + 120);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 4 * v7);
  }

  else
  {
    swift_beginAccess();
    v10 = *(a3 + 24);
    AGGraphClearUpdate();
    v11 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    outlined init with copy of AnyTrackedValue(v16, v15);
    type metadata accessor for ViewList();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(v15);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a3 + 120);
    *(a3 + 120) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);
    *(a3 + 120) = v14;
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v9;
}

unint64_t lazy protocol witness table accessor for type SectionFooterTrait and conformance SectionFooterTrait()
{
  result = lazy protocol witness table cache variable for type SectionFooterTrait and conformance SectionFooterTrait;
  if (!lazy protocol witness table cache variable for type SectionFooterTrait and conformance SectionFooterTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionFooterTrait and conformance SectionFooterTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SectionHeaderTrait and conformance SectionHeaderTrait()
{
  result = lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait;
  if (!lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionHeaderTrait and conformance SectionHeaderTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyViewTrait and conformance EmptyViewTrait()
{
  result = lazy protocol witness table cache variable for type EmptyViewTrait and conformance EmptyViewTrait;
  if (!lazy protocol witness table cache variable for type EmptyViewTrait and conformance EmptyViewTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyViewTrait and conformance EmptyViewTrait);
  }

  return result;
}

uint64_t assignWithCopy for MakeSection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t assignWithTake for MakeSection(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

void type metadata accessor for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>)
  {
    type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(255, &lazy cache variable for type metadata for ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, type metadata accessor for ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>, lazy protocol witness table accessor for type ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>> and conformance <> ForEach<A, B, C>, type metadata accessor for ZStack);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<EmptyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ViewList_Section and conformance _ViewList_Section()
{
  result = lazy protocol witness table cache variable for type _ViewList_Section and conformance _ViewList_Section;
  if (!lazy protocol witness table cache variable for type _ViewList_Section and conformance _ViewList_Section)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_Section and conformance _ViewList_Section);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewList_Section and conformance _ViewList_Section;
  if (!lazy protocol witness table cache variable for type _ViewList_Section and conformance _ViewList_Section)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_Section and conformance _ViewList_Section);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice()
{
  result = lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice;
  if (!lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice;
  if (!lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice;
  if (!lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice;
  if (!lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewsCollectionSlice and conformance SubviewsCollectionSlice);
  }

  return result;
}

uint64_t outlined destroy of IndexingIterator<SubviewsCollectionSlice>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  type metadata accessor for IndexingIterator<SubviewsCollectionSlice>(0, a2, a3, a4, MEMORY[0x1E69E6CF0]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment()
{
  result = lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment;
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment;
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment;
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment;
  if (!lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.Decorations.Segment and conformance Text.Layout.Decorations.Segment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice()
{
  result = lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice;
  if (!lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice;
  if (!lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice;
  if (!lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice;
  if (!lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Layout.RunSlice and conformance Text.Layout.RunSlice);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<_ViewListOutputs>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for IndexingIterator<SubviewsCollectionSlice>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

double protocol witness for static Rule.initialValue.getter in conformance PrivacyRedactionViewModifier.Child<A>@<D0>(_OWORD *a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_18DDBA140;
  return result;
}

uint64_t PrivacyRedactionViewModifier.Transform.PrivacyEffect.scrapeableContent.getter@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = 0x9000000000000000;
  if ((result & 0x10100) == 0)
  {
    v2 = 0xF000000000000007;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for _RendererEffect.scrapeableContent.getter in conformance PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect@<X0>(unint64_t *a1@<X8>)
{
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return PrivacyRedactionViewModifier.Transform.PrivacyEffect.scrapeableContent.getter(v3 | *v1 | v2, a1);
}

void *EnvironmentValues.sensitiveContent.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.sensitiveContent : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.sensitiveContent : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016SensitiveContentF033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016SensitiveContentK033_7799685610985DBA9248562F2E4D5E6ELLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.sensitiveContent.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016SensitiveContentF033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016SensitiveContentK033_7799685610985DBA9248562F2E4D5E6ELLVG_Ttg5(v4, *v2);
  }
}

char *PrivacyRedactionViewModifier.WidgetAuxiliaryChild.value.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  if ((*AGGraphGetValue() & 2) != 0 && *AGGraphGetValue() == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = *AGGraphGetValue();
  }

  v4 = swift_getKeyPath();
  result = AGGraphGetValue();
  v6 = *result;
  *a1 = KeyPath;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  return result;
}

void protocol witness for static Rule.initialValue.getter in conformance PrivacyRedactionViewModifier.WidgetAuxiliaryChild(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t key path setter for _GraphInputs.privacyReductionAccessibilityProvider : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.privacyReductionAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_GraphInputs.privacyReductionAccessibilityProvider.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.privacyReductionAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.PrivacyReductionAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.PrivacyReductionAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.privacyReductionAccessibilityProvider.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.privacyReductionAccessibilityProvider.modify;
}

void _GraphInputs.privacyReductionAccessibilityProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

void (*EnvironmentValues.sensitiveContent.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *(v4 + 40) = v7 & 1;
  return EnvironmentValues.sensitiveContent.modify;
}

void EnvironmentValues.sensitiveContent.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016SensitiveContentF033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016SensitiveContentK033_7799685610985DBA9248562F2E4D5E6ELLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t _s7SwiftUI15ModifiedContentVA2A12ViewModifierRzAaDR_rlE05_makeE08modifier6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVAjA01_L0V_APtctFZAA022_EnvironmentKeyWritingF0VyAA16RedactionReasonsVG_ATySbGTt3B5@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v48 = *(a1 + 32);
  v49 = v5;
  v50 = *(a1 + 64);
  v51 = *(a1 + 80);
  v6 = *(a1 + 16);
  v46 = *a1;
  v47 = v6;
  v17 = v48;
  LODWORD(v48) = 0;
  v52[0] = v46;
  v52[1] = v6;
  v53 = v51;
  v52[3] = v5;
  v52[4] = v50;
  v52[2] = v48;
  v7 = *(&v6 + 1);
  v8 = *(a1 + 52);
  v42 = *(a1 + 36);
  v43 = v8;
  v44 = *(a1 + 68);
  v45 = v46;
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(v52, v54);
  outlined init with copy of _ViewInputs(v52, v54);
  outlined init with copy of _ViewInputs(a1, v54);
  type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(0, &lazy cache variable for type metadata for ChildEnvironment<Bool>, MEMORY[0x1E69E6370], type metadata accessor for ChildEnvironment);
  lazy protocol witness table accessor for type ChildEnvironment<Bool> and conformance ChildEnvironment<A>();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v10 = MEMORY[0x1E69E7CC0];
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = v7;
  *(v12 + 24) = v10;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 256;
  *(v12 + 82) = v20;
  *(v12 + 86) = v21;
  *(v12 + 88) = v11;

  v39 = v45;
  *&v40 = v12;
  *(&v40 + 1) = v7;
  *v41 = 32;
  *&v41[4] = v42;
  *&v41[20] = v43;
  *&v41[36] = v44;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (ShouldRecordTree)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
    AGSubgraphBeginTreeElement();
  }

  v35 = *v41;
  v36 = *&v41[16];
  v37 = *&v41[32];
  v38 = *&v41[48];
  v33 = v39;
  v34 = v40;
  v15 = *v41;
  LODWORD(v35) = 0;
  v55 = *&v41[48];
  v54[3] = *&v41[16];
  v54[4] = *&v41[32];
  v54[0] = v39;
  v54[1] = v40;
  v54[2] = v35;
  outlined init with copy of _ViewInputs(&v39, &v26);
  outlined init with copy of _ViewInputs(v54, &v26);
  _s7SwiftUI12ViewModifierPA2A012_GraphInputsD0Rzs5NeverO4BodyACRtzrlE05_makeC08modifier6inputs4bodyAA01_C7OutputsVAA01_E5ValueVyxG_AA01_cF0VAnA01_E0V_AStctFZAA022_EnvironmentKeyWritingD0VyAA16RedactionReasonsVG_Tt3B5(OffsetAttribute2, v54, a2);
  outlined destroy of _ViewInputs(v54);
  LODWORD(v35) = v15;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v33);
    AGSubgraphEndTreeElement();
  }

  outlined destroy of _ViewInputs(v52);
  v24[2] = v35;
  v24[3] = v36;
  v24[4] = v37;
  v25 = v38;
  v24[0] = v33;
  v24[1] = v34;
  outlined destroy of _ViewInputs(v24);
  v26 = v45;
  v27 = v12;
  v28 = v13;
  v29 = 32;
  v30 = v42;
  v31 = v43;
  v32 = v44;
  outlined destroy of _ViewInputs(&v26);
  LODWORD(v48) = v17;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v46);
    AGSubgraphEndTreeElement();
  }

  v22[2] = v48;
  v22[3] = v49;
  v22[4] = v50;
  v23 = v51;
  v22[0] = v46;
  v22[1] = v47;
  return outlined destroy of _ViewInputs(v22);
}

void type metadata accessor for ModifiedContent<_EnvironmentKeyWritingModifier<RedactionReasons>, _EnvironmentKeyWritingModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_EnvironmentKeyWritingModifier<RedactionReasons>, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_EnvironmentKeyWritingModifier<RedactionReasons>, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PrivacyRedactionViewModifier.WidgetAuxiliaryChild and conformance PrivacyRedactionViewModifier.WidgetAuxiliaryChild()
{
  result = lazy protocol witness table cache variable for type PrivacyRedactionViewModifier.WidgetAuxiliaryChild and conformance PrivacyRedactionViewModifier.WidgetAuxiliaryChild;
  if (!lazy protocol witness table cache variable for type PrivacyRedactionViewModifier.WidgetAuxiliaryChild and conformance PrivacyRedactionViewModifier.WidgetAuxiliaryChild)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrivacyRedactionViewModifier.WidgetAuxiliaryChild and conformance PrivacyRedactionViewModifier.WidgetAuxiliaryChild);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyRedactionViewModifier.Transform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for PrivacyRedactionViewModifier.Transform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyRedactionViewModifier.Transform.PrivacyEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyRedactionViewModifier.Transform.PrivacyEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double (*_ContrastEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double _ContrastEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v4 = swift_allocObject();
  *v9 = a2;
  _s7SwiftUI14GraphicsFilterOWOi11_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _ContrastEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *&v9[0] = v3;
  _s7SwiftUI14GraphicsFilterOWOi11_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ContrastEffect(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance _ContrastEffect;
}

void type metadata accessor for RendererVisualEffect<_ContrastEffect>()
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<_ContrastEffect>)
  {
    v0 = type metadata accessor for RendererVisualEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RendererVisualEffect<_ContrastEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RendererVisualEffect<_ContrastEffect> and conformance RendererVisualEffect<A>()
{
  result = lazy protocol witness table cache variable for type RendererVisualEffect<_ContrastEffect> and conformance RendererVisualEffect<A>;
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_ContrastEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<_ContrastEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererVisualEffect<_ContrastEffect> and conformance RendererVisualEffect<A>);
  }

  return result;
}

double static GlassEffectTransition.matchedGeometry.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_18DDB6AD0;
  *(a1 + 16) = 0x3FE0000000000000;
  *(a1 + 24) = 0;
  return result;
}

void static GlassEffectTransition.materialize.getter(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
  *(a1 + 24) = 1;
}

uint64_t static GlassEffectTransition.matchedGeometry(properties:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = 0;
  return result;
}

void static GlassEffectTransition.identity.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t View.glassEffectTransition(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return View._glassEffectTransition(_:isEnabled:)(&v5, 1, a2);
}

uint64_t View.glassEffectTransition(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a1;
  v7 = v3;
  v8 = v4;
  return View._glassEffectTransition(_:isEnabled:)(&v6, a2, a3);
}

uint64_t getEnumTagSinglePayload for GlassEffectTransition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlassEffectTransition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t URL.encode(to:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!URL.relativeString.getter() && v10 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v11 = v27;
  }

  else
  {
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    static String.Encoding.utf8.getter();
    v20 = String.data(using:allowLossyConversion:)();
    v22 = v21;

    (*(v25 + 8))(v4, v2);
    if (v22 >> 60 == 15)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      swift_allocError();
      return swift_willThrow();
    }

    v23 = v27;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v20, v22);
    v11 = v23;
    outlined consume of Data?(v20, v22);
  }

  URL.baseURL.getter();
  v12 = v28;
  if ((*(v28 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of URL?(v7);
  }

  v14 = v26;
  (*(v12 + 32))(v26, v7, v8);
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v15 = *(a1 + 8);
  v16 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
    v16 = result;
  }

  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
    v16 = result;
  }

  *(v16 + 16) = v18 + 1;
  *(v16 + 8 * v18 + 32) = v15;
  *(a1 + 24) = v16;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v15 + 1;
    URL.encode(to:)(a1);
    v19 = (v28 + 8);
    if (!v11)
    {
      ProtobufEncoder.endLengthDelimited()();
    }

    return (*v19)(v14, v8);
  }

  return result;
}

uint64_t URL.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for URL();
  v50 = *(v13 - 8);
  v14 = *(v50 + 56);
  v54 = v13;
  v52 = v14;
  (v14)(v12, 1, 1);
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  if (v15 < v16)
  {
    v49 = v12;
    do
    {
      v17 = *(a1 + 24);
      if (v17)
      {
        v18 = *(a1 + 32);
        if (v15 < v18)
        {
          goto LABEL_11;
        }

        if (v18 < v15)
        {
          goto LABEL_56;
        }

        *(a1 + 24) = 0;
      }

      v19 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_59;
      }

      v17 = v19;
      if (v19 < 8)
      {
        goto LABEL_56;
      }

LABEL_11:
      if (v17 >> 3 == 2)
      {
        if ((v17 & 7) != 2)
        {
          goto LABEL_56;
        }

        v17 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
        }

        v12 = *(v17 + 16);
        v30 = *(v17 + 24);
        if (v12 >= v30 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v12 + 1, 1, v17);
        }

        *(v17 + 16) = v12 + 1;
        *(v17 + 8 * v12 + 32) = v16;
        *(a1 + 40) = v17;
        v31 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {

          v12 = v49;
          return outlined destroy of URL?(v12);
        }

        if (v31 < 0)
        {
          goto LABEL_64;
        }

        v32 = *(a1 + 8) + v31;
        v12 = v49;
        if (v16 < v32)
        {
          goto LABEL_56;
        }

        *(a1 + 16) = v32;
        URL.init(from:)(a1);
        v17 = *(a1 + 40);
        if (!*(v17 + 16))
        {
          goto LABEL_65;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v33 = *(v17 + 16);
          if (!v33)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v33 = *(v17 + 16);
          if (!v33)
          {
LABEL_52:
            __break(1u);
            break;
          }
        }

        v34 = v33 - 1;
        v16 = *(v17 + 8 * v34 + 32);
        *(v17 + 16) = v34;
        *(a1 + 40) = v17;
        outlined destroy of URL?(v12);
        *(a1 + 16) = v16;
        v35 = v55;
        v52(v55, 0, 1, v54);
        outlined init with take of URL?(v35, v12);
      }

      else if (v17 >> 3 == 1)
      {

        if ((v17 & 7) != 2)
        {
          goto LABEL_57;
        }

        v20 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined destroy of URL?(v12);
        }

        v17 = v20;
        if (v20 < 0)
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v46 = *(result + 16);
          if (v46)
          {
            v44 = v46 - 1;
            v45 = *(result + 8 * v44 + 32);
            *(result + 16) = v44;
            *(a1 + 40) = result;
            result = outlined destroy of URL?(v12);
            *(a1 + 16) = v45;
          }

          else
          {
            __break(1u);
          }

          return result;
        }

        v21 = *(a1 + 8);
        if (v16 < v21 + v20)
        {
          goto LABEL_57;
        }

        *(a1 + 8) = v21 + v20;
        if (v20)
        {
          v22 = v21 - [*a1 bytes];
          v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
          if (__OFADD__(v22, v17))
          {
            goto LABEL_66;
          }

          if ((v22 + v17) < v22)
          {
            goto LABEL_67;
          }

          v26 = v23;
          v27 = Data._Representation.subscript.getter();
          v29 = v28;
          outlined consume of Data._Representation(v26, v25);
        }

        else
        {
          v27 = 0;
          v29 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        String.init(data:encoding:)();
        if (!v38)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          outlined consume of Data._Representation(v27, v29);
          return outlined destroy of URL?(v12);
        }

        outlined consume of Data._Representation(v27, v29);
      }

      else
      {
        v36 = v17 & 7;
        if (v36 > 1)
        {
          if (v36 == 2)
          {
            v39 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
LABEL_59:
              outlined destroy of URL?(v12);
            }

            if (v39 < 0)
            {
              goto LABEL_68;
            }

            v37 = *(a1 + 8) + v39;
            if (v16 < v37)
            {
LABEL_56:

              goto LABEL_57;
            }
          }

          else
          {
            if (v36 != 5)
            {
              goto LABEL_56;
            }

            v37 = *(a1 + 8) + 4;
            if (v16 < v37)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_3;
        }

        if ((v17 & 7) != 0)
        {
          if (v36 != 1)
          {
            goto LABEL_56;
          }

          v37 = *(a1 + 8) + 8;
          if (v16 < v37)
          {
            goto LABEL_56;
          }

LABEL_3:
          *(a1 + 8) = v37;
          goto LABEL_4;
        }

        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_59;
        }
      }

LABEL_4:
      v15 = *(a1 + 8);
    }

    while (v15 < v16);
  }

  *(a1 + 24) = 0;
  v40 = v51;
  URL.init(string:relativeTo:)();

  v41 = v50;
  v42 = v54;
  if ((*(v50 + 48))(v40, 1, v54) == 1)
  {
    outlined destroy of URL?(v40);
LABEL_57:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    return outlined destroy of URL?(v12);
  }

  else
  {
    outlined destroy of URL?(v12);
    return (*(v41 + 32))(v48, v40, v42);
  }
}

void UUID.encode(to:)()
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = UUID.uuid.getter();
  v9 = v0;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  ProtobufEncoder.encodeData(_:)(&v8, &v17);
}

unint64_t UUID.init(from:)(void *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
LABEL_34:
    a1[3] = 0;
    return UUID.init(uuid:)();
  }

  while (1)
  {
    result = a1[3];
    if (result)
    {
      v6 = a1[4];
      if (v3 < v6)
      {
        goto LABEL_11;
      }

      if (v6 < v3)
      {
        break;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      return result;
    }

    if (result <= 7)
    {
      break;
    }

LABEL_11:
    v7 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      if ((result & 7) > 1)
      {
        if (v7 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v3 = a1[1] + result;
          if (v4 < v3)
          {
            break;
          }
        }

        else
        {
          if (v7 != 5)
          {
            break;
          }

          v3 = a1[1] + 4;
          if (v4 < v3)
          {
            break;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            return result;
          }

          v3 = a1[1];
          goto LABEL_4;
        }

        if (v7 != 1)
        {
          break;
        }

        v3 = a1[1] + 8;
        if (v4 < v3)
        {
          break;
        }
      }

      a1[1] = v3;
      goto LABEL_4;
    }

    if (v7 != 2)
    {
      break;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
    }

    v3 = a1[1] + result;
    if (v4 < v3)
    {
      break;
    }

    a1[1] = v3;
    if (result != 16)
    {
      break;
    }

LABEL_4:
    if (v3 >= v4)
    {
      goto LABEL_34;
    }
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

void Data.encode(to:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 32);
  if (one-time initialization token for writerKey != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for CodingUserInfoKey();
  v8 = __swift_project_value_buffer(v7, static ArchiveWriter.writerKey);
  if (!*(v6 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v10 & 1) == 0) || (outlined init with copy of Any(*(v6 + 56) + 32 * v9, &v21), type metadata accessor for ArchiveWriter(), (swift_dynamicCast() & 1) == 0))
  {
    v17 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v17 != 2)
      {
        return;
      }

      v18 = *(a2 + 16);
      v19 = *(a2 + 24);
    }

    else
    {
      if (!v17)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_19:
        ProtobufEncoder.encodeVarint(_:)(0x12uLL);
        specialized Data._Representation.withUnsafeBytes<A>(_:)(a2, a3);
        return;
      }

      v18 = a2;
      v19 = a2 >> 32;
    }

    if (v18 == v19)
    {
      return;
    }

    goto LABEL_19;
  }

  outlined copy of Data._Representation(a2, a3);
  _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(a2, a3, &v21);
  v11 = v23;
  v12 = v21;
  v13 = v22;
  v14 = specialized Collection<>.firstIndex(of:)(v21, v22, v23, v20[4]);
  if (v15)
  {
    v21 = v12;
    v22 = v13;
    v23 = v11;
    v24 = 0;
    outlined copy of Data._Representation(a2, a3);
    v14 = specialized ArchiveWriter.addAttachment(hash:from:)(&v21, v20, a2, a3);
    if (v3)
    {
      goto LABEL_10;
    }
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = v14;
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v16);
LABEL_10:

    return;
  }

  __break(1u);
}

uint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance Data@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Data.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t Locale.encode(to:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!Locale.identifier.getter() && v4 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;

  (*(v1 + 8))(v3, v0);
  if (v8 >> 60 == 15)
  {
    lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v6, v8);
    return outlined consume of Data?(v6, v8);
  }
}

uint64_t Locale.init(from:)(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 < v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 24);
      if (v7)
      {
        v8 = *(a1 + 32);
        if (v4 < v8)
        {
          goto LABEL_11;
        }

        if (v8 < v4)
        {
          goto LABEL_37;
        }

        *(a1 + 24) = 0;
      }

      v9 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
      }

      v7 = v9;
      if (v9 < 8)
      {
        goto LABEL_37;
      }

LABEL_11:
      if ((v7 & 0xFFFFFFFFFFFFFFF8) == 8)
      {

        if ((v7 & 7) != 2)
        {
          goto LABEL_38;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          return result;
        }

        v11 = result;
        if (result < 0)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          return result;
        }

        v12 = *(a1 + 8);
        if (v5 < v12 + result)
        {
          goto LABEL_38;
        }

        *(a1 + 8) = v12 + result;
        if (result)
        {
          v13 = v12 - [*a1 bytes];
          result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
          if (__OFADD__(v13, v11))
          {
            goto LABEL_48;
          }

          if (v13 + v11 < v13)
          {
            goto LABEL_49;
          }

          v16 = result;
          v17 = Data._Representation.subscript.getter();
          v19 = v18;
          outlined consume of Data._Representation(v16, v15);
        }

        else
        {
          v17 = 0;
          v19 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        String.init(data:encoding:)();
        if (!v22)
        {
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          return outlined consume of Data._Representation(v17, v19);
        }

        v6 = v22;
        outlined consume of Data._Representation(v17, v19);
        goto LABEL_4;
      }

      v20 = v7 & 7;
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
          }

          if (result < 0)
          {
            goto LABEL_50;
          }

          v21 = *(a1 + 8) + result;
          if (v5 < v21)
          {
LABEL_37:

LABEL_38:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            return swift_willThrow();
          }
        }

        else
        {
          if (v20 != 5)
          {
            goto LABEL_37;
          }

          v21 = *(a1 + 8) + 4;
          if (v5 < v21)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        if ((v7 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()();
          if (v1)
          {
          }

          goto LABEL_4;
        }

        if (v20 != 1)
        {
          goto LABEL_37;
        }

        v21 = *(a1 + 8) + 8;
        if (v5 < v21)
        {
          goto LABEL_37;
        }
      }

      *(a1 + 8) = v21;
LABEL_4:
      v4 = *(a1 + 8);
      if (v4 >= v5)
      {
        *(a1 + 24) = 0;
        if (!v6)
        {
          return static Locale.current.getter();
        }

        return Locale.init(identifier:)();
      }
    }
  }

  *(a1 + 24) = 0;
  return static Locale.current.getter();
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  for (i = (a4 + 48); ; i += 5)
  {
    v8 = *(i - 4) == a1 && *(i - 3) == HIDWORD(a1);
    v9 = v8 && *(i - 2) == a2;
    v10 = v9 && *(i - 1) == HIDWORD(a2);
    if (v10 && *i == a3)
    {
      break;
    }

    if (v4 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a5 + 32;
  v51 = a5 + 32;
  v50 = (a4 + 40);
  v47 = *(a5 + 16);
  while (1)
  {
    v11 = v10 + 32 * v9;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 24);
    if ((*(v11 + 16) & 1) == 0)
    {
      break;
    }

    if (v6)
    {
      v56 = v9;
      v58 = *(v11 + 16);
      v15 = v7;
      v16 = *(*v13 + 96);

      v57 = v12;
      outlined copy of Text.Storage(v13, v12, 1);
      v17 = v8;
      v18 = v13;
      v19 = v16(v17);
      v7 = v15;
      if (v19)
      {
        goto LABEL_19;
      }

      goto LABEL_3;
    }

LABEL_6:
    if (++v9 == v5)
    {
      return 0;
    }
  }

  if (v6)
  {
    goto LABEL_6;
  }

  v56 = v9;
  v58 = *(v11 + 16);
  v20 = v13 == v8 && v12 == v7;
  v57 = *(v11 + 8);
  if (v20)
  {
    v25 = v8;
    v18 = *v11;

    outlined copy of Text.Storage(v25, v7, 0);
    goto LABEL_19;
  }

  v21 = v7;
  v22 = *(v11 + 8);
  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v18 = v13;
  v24 = v22;
  v7 = v21;
  outlined copy of Text.Storage(v13, v24, 0);
  if ((v23 & 1) == 0)
  {
LABEL_3:
    outlined consume of Text.Storage(v18, v57, v58);

    goto LABEL_4;
  }

LABEL_19:
  v26 = *(v14 + 16);
  v27 = v14;
  if (v26 != *(a4 + 16))
  {
    outlined consume of Text.Storage(v18, v57, v58);

    v10 = v51;
LABEL_4:
    v8 = a1;
LABEL_5:
    v9 = v56;
    goto LABEL_6;
  }

  if (v26)
  {
    v28 = v14 == a4;
  }

  else
  {
    v28 = 1;
  }

  result = v18;
  if (v28)
  {
LABEL_74:
    outlined consume of Text.Storage(result, v57, v58);

    return v56;
  }

  v30 = *(v14 + 16);
  v31 = 0;
  v32 = (v14 + 40);
  v33 = v50;
  v55 = v14;
  v53 = result;
  while (2)
  {
    if (v31 < *(v27 + 16))
    {
      if (v30 == v31)
      {
        goto LABEL_76;
      }

      v34 = *(v32 - 1);
      v35 = *v32;
      v36 = *(v33 - 1);
      v37 = *v33;
      v38 = v35 >> 5;
      if (v35 >> 5 > 3)
      {
        if (v35 >> 5 > 5)
        {
          if (v38 != 6)
          {
            if (v34 | v35 ^ 0xE0)
            {
              if (v37 < 0xE0 || v36 != 1)
              {
LABEL_72:
                outlined consume of Text.Storage(result, v57, v58);

                v6 = a3;
                v5 = v47;
                v7 = a2;
                v8 = a1;
                v10 = v51;
                goto LABEL_5;
              }
            }

            else if (v37 < 0xE0 || *&v36 != 0.0)
            {
              goto LABEL_72;
            }

            if (v37 != 224)
            {
              goto LABEL_72;
            }

            goto LABEL_27;
          }

          if ((v37 & 0xE0) != 0xC0)
          {
            goto LABEL_72;
          }

          v41 = *(*v34 + 96);
          outlined copy of Text.Modifier(*(v33 - 1), *v33);
          outlined copy of Text.Modifier(v34, v35);
          v42 = v41(v36);
          outlined consume of Text.Modifier(v36, v37);
          v43 = v34;
          v44 = v35;
          goto LABEL_55;
        }

        if (v38 == 4)
        {
          if ((v37 & 0xE0) != 0x80)
          {
            goto LABEL_72;
          }
        }

        else if ((v37 & 0xE0) != 0xA0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v35 >> 5 <= 1)
        {
          if (!v38)
          {
            if (v37 >= 0x20)
            {
              goto LABEL_72;
            }

            if (*&v34 != 0.0)
            {
              if (*&v36 == 0.0)
              {
                goto LABEL_72;
              }

              v27 = v55;
              if (v34 != v36)
              {
                v39 = *(*v34 + 88);
                outlined copy of Text.Modifier(*(v33 - 1), *v33);
                outlined copy of Text.Modifier(v34, v35);
                v40 = v39(v36);
                goto LABEL_54;
              }

LABEL_27:
              ++v31;
              v32 += 2;
              v33 += 16;
              if (v30 == v31)
              {
                goto LABEL_74;
              }

              continue;
            }

LABEL_63:
            if (*&v36 != 0.0)
            {
              goto LABEL_72;
            }

            v46 = result;
            outlined consume of Text.Modifier(0, *v33);
            result = v46;
            v27 = v55;
            goto LABEL_27;
          }

          if ((v37 & 0xE0) != 0x20)
          {
            goto LABEL_72;
          }

          if (*&v34 == 0.0)
          {
            goto LABEL_63;
          }

          if (*&v36 == 0.0)
          {
            goto LABEL_72;
          }

          v45 = *(*v34 + 112);
          outlined copy of Text.Modifier(*(v33 - 1), *v33);
          outlined copy of Text.Modifier(v34, v35);
          v40 = v45(v36);
LABEL_54:
          v42 = v40;
          outlined consume of Text.Modifier(v34, v35);
          v43 = v36;
          v44 = v37;
LABEL_55:
          outlined consume of Text.Modifier(v43, v44);
          result = v53;
          v27 = v55;
          if ((v42 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_27;
        }

        if (v38 == 2)
        {
          if ((v37 & 0xE0) != 0x40)
          {
            goto LABEL_72;
          }

          if (v35)
          {
            if ((v37 & 1) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_27;
          }

          if (v37)
          {
            goto LABEL_72;
          }
        }

        else if ((v37 & 0xE0) != 0x60)
        {
          goto LABEL_72;
        }
      }

      if (*&v34 != *&v36)
      {
        goto LABEL_72;
      }

      goto LABEL_27;
    }

    break;
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  type metadata accessor for URL?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL?(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Image.Orientation@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Image.Orientation.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Image.Orientation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x507030104060200uLL >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Image.Orientation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x507030104060200uLL >> (8 * v1));
  return Hasher._finalize()();
}

double CGRect.apply(_:in:)(unsigned __int8 a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v7 = a7;
  v8 = a5;
  v10 = 1;
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      v11 = a4;
      v12 = a6;
      v13 = a4;
      if (!a1)
      {
        return v13;
      }

      goto LABEL_13;
    }

    if (a1 == 2)
    {
      v10 = 0;
      v11 = a4;
      v12 = a6;
      goto LABEL_13;
    }

    v13 = a4;
    v14 = a7;
    a4 = a5;
LABEL_17:
    v17.origin.x = v13;
    v17.origin.y = a4;
    v17.size.width = a6;
    v17.size.height = v14;
    CGRectGetHeight(v17);
    return v13;
  }

  if (a1 > 5u)
  {
    if (a1 != 6)
    {
      v13 = a3 - a5;
      v14 = a6;
      a6 = a7;
      goto LABEL_17;
    }

    v10 = 0;
LABEL_12:
    v11 = a3 - a5;
    v8 = a4;
    v12 = a7;
    v7 = a6;
    a2 = a3;
LABEL_13:
    v16.origin.x = v11;
    v16.origin.y = v8;
    v16.size.width = v12;
    v16.size.height = v7;
    v13 = a2 - (v11 + CGRectGetWidth(v16));
    v14 = v7;
    a6 = v12;
    a4 = v8;
    if (v10)
    {
      return v13;
    }

    goto LABEL_17;
  }

  if (a1 != 4)
  {
    goto LABEL_12;
  }

  return a3 - a5;
}

double CGRect.unapply(_:in:)(unsigned __int8 a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v9 = a5;
  v10 = a4;
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v11 = 1;
      }

      else
      {
        v11 = 3;
      }

      goto LABEL_9;
    }

    if (a1 == 6)
    {
      v14 = 7;
    }

    else
    {
      v14 = 5;
    }
  }

  else
  {
    if (a1 <= 1u)
    {
      if (!a1)
      {
        return v10;
      }

      v11 = 2;
LABEL_9:
      v12 = (v11 & 1) == 0;
      if (v11)
      {
        v13 = a3;
      }

      else
      {
        v13 = a2;
      }

      if ((v11 & 2) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (a1 == 2)
    {
      v14 = 6;
    }

    else
    {
      v14 = 4;
    }
  }

  v12 = (v14 & 1) == 0;
  if (v14)
  {
    v13 = a3;
  }

  else
  {
    v13 = a2;
  }

  if (v14)
  {
    v15 = a2;
  }

  else
  {
    v15 = a3;
  }

  v17.origin.x = a4;
  v17.origin.y = a5;
  v17.size.width = a6;
  v17.size.height = a7;
  v9 = v15 - (CGRectGetHeight(v17) + v9);
  if ((v14 & 2) == 0)
  {
    goto LABEL_28;
  }

LABEL_27:
  v18.origin.x = v10;
  v18.origin.y = v9;
  v18.size.width = a6;
  v18.size.height = a7;
  v10 = v13 - (CGRectGetWidth(v18) + v10);
LABEL_28:
  if (!v12)
  {
    return v9;
  }

  return v10;
}

double CGAffineTransform.init(orientation:in:)@<D0>(CGAffineTransform *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  specialized CGAffineTransform.init(orientation:in:)(a1, v7, a3, a4);
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  result = *&v8;
  a2[2] = v8;
  return result;
}

CGFloat CGAffineTransform.init(orientation:in:)@<D0>(CGAffineTransform *a1@<X0>, _OWORD *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  specialized CGAffineTransform.init(orientation:in:)(a1, v21, a5, a6);
  v9 = v22;
  v10 = v23;
  CGAffineTransformMakeTranslation(&t1, a3, a4);
  tx = t1.tx;
  ty = t1.ty;
  v16 = *&t1.c;
  v17 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, -a3, -a4);
  *&t2.a = v21[0];
  *&t2.c = v21[1];
  t2.tx = v9;
  t2.ty = v10;
  CGAffineTransformConcat(&v18, &t1, &t2);
  t1 = v18;
  *&t2.a = v17;
  *&t2.c = v16;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v18, &t1, &t2);
  result = v18.a;
  v14 = *&v18.c;
  v15 = *&v18.tx;
  *a2 = *&v18.a;
  a2[1] = v14;
  a2[2] = v15;
  return result;
}

CGFloat CGAffineTransform.apply(_:)(unsigned __int8 a1, CGFloat result)
{
  if (a1 > 3u)
  {
    v3 = xmmword_18DDAA020;
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        v4 = xmmword_18DDBA6A0;
      }

      else
      {
        v4 = xmmword_18DDAB500;
      }

      goto LABEL_16;
    }

    if (a1 == 6)
    {
      v4 = xmmword_18DDAB500;
    }

    else
    {
      v4 = xmmword_18DDBA6A0;
    }

    goto LABEL_15;
  }

  if (a1 > 1u)
  {
    v3 = xmmword_18DDAB500;
    if (a1 == 2)
    {
      v4 = xmmword_18DDBA6B0;
    }

    else
    {
      v4 = xmmword_18DDAA020;
    }

LABEL_15:
    v3 = vnegq_f64(v3);
    goto LABEL_16;
  }

  if (!a1)
  {
    return result;
  }

  v3 = xmmword_18DDAB500;
  v4 = xmmword_18DDBA6B0;
LABEL_16:
  *&t1.a = v4;
  *&t1.c = v3;
  __asm { FMOV            V0.2D, #0.5 }

  *&t1.tx = _Q0;
  CGAffineTransformTranslate(&t2, &t1, -0.5, -0.5);
  t1 = t2;
  v10 = v2[1];
  *&t2.a = *v2;
  *&t2.c = v10;
  *&t2.tx = v2[2];
  CGAffineTransformConcat(&v13, &t1, &t2);
  result = v13.a;
  v11 = *&v13.c;
  v12 = *&v13.tx;
  *v2 = *&v13.a;
  v2[1] = v11;
  v2[2] = v12;
  return result;
}

CGAffineTransform *specialized CGAffineTransform.init(orientation:in:)@<X0>(CGAffineTransform *result@<X0>, __int128 *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (result > 3u)
  {
    v8 = a3 * 0.5;
    v9 = a4 * 0.5;
    v10 = xmmword_18DDAA020;
    if (result <= 5u)
    {
      if (result == 4)
      {
        v11 = xmmword_18DDBA6A0;
      }

      else
      {
        v11 = xmmword_18DDAB500;
      }

      v12 = a3 * 0.5;
      v13 = v9;
      goto LABEL_20;
    }

    if (result == 6)
    {
      v11 = xmmword_18DDAB500;
    }

    else
    {
      v11 = xmmword_18DDBA6A0;
    }

    v12 = a3 * 0.5;
    v13 = v9;
    goto LABEL_19;
  }

  if (result > 1u)
  {
    v8 = a3 * 0.5;
    v9 = a4 * 0.5;
    v10 = xmmword_18DDAB500;
    if (result == 2)
    {
      v11 = xmmword_18DDBA6B0;
    }

    else
    {
      v11 = xmmword_18DDAA020;
    }

    v12 = a4 * 0.5;
    v13 = a3 * 0.5;
LABEL_19:
    v10 = vnegq_f64(v10);
    goto LABEL_20;
  }

  if (result)
  {
    v8 = a3 * 0.5;
    v9 = a4 * 0.5;
    v10 = xmmword_18DDAB500;
    v11 = xmmword_18DDBA6B0;
    v12 = a4 * 0.5;
    v13 = a3 * 0.5;
LABEL_20:
    *&v15.a = v11;
    *&v15.c = v10;
    v15.tx = v8;
    v15.ty = v9;
    result = CGAffineTransformTranslate(&v14, &v15, -v13, -v12);
    v6 = *&v14.a;
    v5 = *&v14.c;
    v7 = *&v14.tx;
    goto LABEL_21;
  }

  v5 = xmmword_18DDAB500;
  v6 = xmmword_18DDAA020;
  v7 = 0uLL;
LABEL_21:
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  return result;
}

uint64_t specialized Image.Orientation.init(rawValue:)(char a1)
{
  if ((a1 & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return (0x602070305010400uLL >> (8 * a1));
  }
}

unint64_t lazy protocol witness table accessor for type [Image.Orientation] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Image.Orientation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Image.Orientation] and conformance [A])
  {
    type metadata accessor for [Image.Orientation]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Image.Orientation] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [Image.Orientation]()
{
  if (!lazy cache variable for type metadata for [Image.Orientation])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Image.Orientation]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Image.Orientation and conformance Image.Orientation()
{
  result = lazy protocol witness table cache variable for type Image.Orientation and conformance Image.Orientation;
  if (!lazy protocol witness table cache variable for type Image.Orientation and conformance Image.Orientation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.Orientation and conformance Image.Orientation);
  }

  return result;
}

Swift::Double __swiftcall UnitCurve.velocity(at:)(Swift::Double at)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = at > 0.0;
  v6 = 0.0;
  if (v5)
  {
    v6 = at;
  }

  v7 = 1.0;
  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  if (*(v1 + 32) != 1)
  {
    return UnitCurve.CubicSolver.velocity(at:)(v6);
  }

  v8 = v1[2] | v1[1];
  if (!(v8 | v3 | v4))
  {
    return v7;
  }

  v9 = v8 | v4;
  if (v3 == 1 && v9 == 0)
  {
    v15 = at / sqrt(1.0 - at * at);
  }

  else
  {
    if (v3 == 2 && v9 == 0)
    {
      v12 = at + -1.0;
      v17 = -((at + -2.0) * at);
    }

    else
    {
      v12 = at + at;
      if (at >= 0.5)
      {
        v12 = v12 + -2.0;
        v13 = (at * -4.0 + 8.0) * at;
        v14 = -3.0;
      }

      else
      {
        v13 = at * -4.0 * at;
        v14 = 1.0;
      }

      v17 = v13 + v14;
    }

    v15 = v12 / sqrt(v17);
  }

  return fabs(v15);
}

__n128 UnitCurve.function.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 UnitCurve.function.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

void static UnitCurve.bezier(startControlPoint:endControlPoint:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = 0;
}

Swift::Double __swiftcall UnitCurve.CubicSolver.value(at:)(Swift::Double at)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = UnitCurve.CubicSolver.solveX(_:epsilon:)(at, 0.000000953674316);
  return round(v5 * (v4 + v5 * (v3 + v2 * v5)) * 1048576.0) * 0.000000953674316;
}

Swift::Double __swiftcall UnitCurve.CubicSolver.velocity(at:)(Swift::Double at)
{
  v13 = v1[3];
  v14 = *v1;
  v15 = v1[4];
  v16 = v1[1];
  v17 = v1[5];
  v18 = v1[2];
  v2 = UnitCurve.CubicSolver.solveX(_:epsilon:)(at, 0.000000953674316);
  v3.f64[0] = v14;
  v3.f64[1] = v13;
  __asm { FMOV            V1.2D, #3.0 }

  v9 = vmulq_n_f64(vmulq_f64(v3, _Q1), v2);
  v3.f64[0] = v16;
  v3.f64[1] = v15;
  v10 = vmulq_n_f64(vaddq_f64(vaddq_f64(v3, v3), v9), v2);
  v9.f64[0] = v18;
  v9.f64[1] = v17;
  v11 = vaddq_f64(v9, v10);
  result = 1.0;
  if (v11.f64[0] != v11.f64[1])
  {
    if (v11.f64[0] == 0.0)
    {
      result = INFINITY;
      if (v11.f64[1] < 0.0)
      {
        return -INFINITY;
      }
    }

    else
    {
      return round(v11.f64[1] / v11.f64[0] * 1048576.0) * 0.000000953674316;
    }
  }

  return result;
}

void UnitCurve.inverse.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  if (*(v1 + 32) != 1)
  {
    *a1 = v3;
    *(a1 + 8) = v2;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = 0;
    return;
  }

  v6 = v5 | v3;
  if (!(v6 | v2 | v4))
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
LABEL_16:
    *(a1 + 32) = 1;
    return;
  }

  v7 = v6 | v4;
  if (v2 == 1 && v7 == 0)
  {
    v10 = 2;
    goto LABEL_15;
  }

  if (v2 != 2 || v7 != 0)
  {
    v10 = 3;
LABEL_15:
    *a1 = v10;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    goto LABEL_16;
  }

  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t static UnitCurve.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 32) != 1)
  {
    return (*(a2 + 32) & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v2, v4)))) & 1) != 0;
  }

  if (!(*&v2.f64[0] | *&v3.f64[1] | *&v3.f64[0] | *&v2.f64[1]))
  {
    return *(a2 + 32) && !(*&v4.f64[0] | *&v5.f64[0] | *&v5.f64[1] | *&v4.f64[1]);
  }

  v6 = *&v2.f64[0] | *&v3.f64[1] | *&v2.f64[1];
  if (*&v3.f64[0] == 1 && v6 == 0)
  {
    if (!*(a2 + 32))
    {
      return 0;
    }

    v10 = *&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1] && *&v5.f64[0] == 1;
    return v10 && (*&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1]) == 0;
  }

  if (*&v3.f64[0] == 2 && v6 == 0)
  {
    if (!*(a2 + 32))
    {
      return 0;
    }

    if (!(*&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1]))
    {
      return 0;
    }

    v12 = *&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1];
    if (*&v5.f64[0] == 1 && !v12)
    {
      return 0;
    }

    return *&v5.f64[0] == 2 && !v12;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  if (!(*&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1]))
  {
    return 0;
  }

  result = 1;
  if ((*&v5.f64[0] - 1) <= 1 && !(*&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1]))
  {
    return 0;
  }

  return result;
}

uint64_t UnitCurve.Function.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v3 = *(v0 + 16) | *(v0 + 8);
    if (v3 | *&v1 | v2)
    {
      v4 = v3 | v2;
      if (*&v1 == 1 && v4 == 0)
      {
        v7 = 1;
      }

      else if (*&v1 == 2 && v4 == 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 0;
    }

    return MEMORY[0x193AC11A0](v7);
  }

  else
  {
    v8 = *v0;
    v9 = *(v0 + 8);
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    MEMORY[0x193AC11A0](4);
    UnitPoint.hash(into:)(v8, v9);

    return UnitPoint.hash(into:)(v10, v11);
  }
}

Swift::Int UnitCurve.Function.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v5 == 1)
  {
    if (*&v4 | *&v2 | *&v1 | *&v3)
    {
      v6 = *&v4 | *&v2 | *&v3;
      if (*&v1 == 1 && v6 == 0)
      {
        v8 = 1;
      }

      else if (*&v1 != 2 || v6)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x193AC11A0](v8);
  }

  else
  {
    MEMORY[0x193AC11A0](4);
    UnitPoint.hash(into:)(v1, v2);
    UnitPoint.hash(into:)(v4, v3);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitCurve.Function()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v3 = *(v0 + 16) | *(v0 + 8);
    if (v3 | *&v1 | v2)
    {
      v4 = v3 | v2;
      if (*&v1 == 1 && v4 == 0)
      {
        v6 = 1;
      }

      else if (*&v1 != 2 || v4)
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x193AC11A0](v6);
  }

  else
  {
    v7 = *v0;
    v8 = *(v0 + 8);
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    MEMORY[0x193AC11A0](4);
    UnitPoint.hash(into:)(v7, v8);
    UnitPoint.hash(into:)(v9, v10);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UnitCurve(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*(a1 + 32) != 1)
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    if (v2 == v6 && v3 == v7 && v5 == v9)
    {
      return v4 == v8;
    }

    return 0;
  }

  v10 = *&v5 | *&v3;
  if (!(v10 | *&v2 | *&v4))
  {
    if (*(a2 + 32))
    {
      return (*&v9 | *&v7 | *&v6 | *&v8) == 0;
    }

    return 0;
  }

  v11 = v10 | *&v4;
  if (*&v2 == 1 && v11 == 0)
  {
    if (*(a2 + 32))
    {
      v20 = *&v9 | *&v7;
      if (v20 | *&v6 | *&v8)
      {
        if (*&v6 == 1 && !(v20 | *&v8))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 != 2 || v11 != 0)
  {
    if (*(a2 + 32))
    {
      v14 = *&v9 | *&v7;
      if (v14 | *&v6 | *&v8)
      {
        v15 = v14 | *&v8;
        if (*&v6 != 1 || v15)
        {
          return *&v6 != 2 || v15 != 0;
        }
      }
    }

    return 0;
  }

  if (!*(a2 + 32))
  {
    return 0;
  }

  v21 = *&v9 | *&v7;
  if (!(v21 | *&v6 | *&v8))
  {
    return 0;
  }

  v22 = v21 | *&v8;
  if (*&v6 == 1 && !v22)
  {
    return 0;
  }

  return *&v6 == 2 && v22 == 0;
}

double static UnitCurve.easeIn.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.42;
  __asm { FMOV            V1.2D, #1.0 }

  *a1 = xmmword_18DDBA7C0;
  *(a1 + 16) = _Q1;
  *(a1 + 32) = 0;
  return result;
}

double static UnitCurve.easeOut.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.58;
  *(a1 + 16) = xmmword_18DDBA7D0;
  *(a1 + 32) = 0;
  return result;
}

void static UnitCurve.circularEaseIn.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void static UnitCurve.circularEaseOut.getter(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void static UnitCurve.circularEaseInOut.getter(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

double static UnitCurve.linear.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double UnitCurve.CubicSolver.init(startControlPoint:endControlPoint:)@<D0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v5 = a2 * 3.0;
  v6 = (a4 - a2) * 3.0 - a2 * 3.0;
  v7 = a3 * 3.0;
  v8 = (a5 - a3) * 3.0 - a3 * 3.0;
  *a1 = 1.0 - v5 - v6;
  a1[1] = v6;
  result = 1.0 - v7 - v8;
  a1[2] = v5;
  a1[3] = result;
  a1[4] = v8;
  a1[5] = v7;
  return result;
}

uint64_t UnitCurve.CubicSolver.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  MEMORY[0x193AC11E0](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x193AC11E0](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x193AC11E0](*&v10);
  if (v6 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v6;
  }

  return MEMORY[0x193AC11E0](*&v11);
}

Swift::Int UnitCurve.CubicSolver.hashValue.getter()
{
  Hasher.init(_seed:)();
  UnitCurve.CubicSolver.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitCurve.CubicSolver()
{
  Hasher.init(_seed:)();
  UnitCurve.CubicSolver.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitCurve.CubicSolver()
{
  Hasher.init(_seed:)();
  UnitCurve.CubicSolver.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static Animation.timingCurve(_:duration:)(uint64_t a1, double a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {
    if (*&v5 | *&v4 | *&v3 | *&v6)
    {
      type metadata accessor for InternalAnimationBox<UnitCurveAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<UnitCurveAnimation>, lazy protocol witness table accessor for type UnitCurveAnimation and conformance UnitCurveAnimation);
      result = swift_allocObject();
      *(result + 16) = a2;
      *(result + 24) = v3;
      *(result + 32) = v4;
      *(result + 40) = v5;
      *(result + 48) = v6;
      *(result + 56) = 1;
    }

    else
    {
      type metadata accessor for InternalAnimationBox<UnitCurveAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>, lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation);
      result = swift_allocObject();
      *(result + 16) = a2;
      *(result + 24) = xmmword_18DDAF520;
      *(result + 40) = xmmword_18DDBA7E0;
      *(result + 56) = xmmword_18DDBA7F0;
    }
  }

  else
  {
    v8 = (v5 - v3) * 3.0 - v3 * 3.0;
    v9 = (v6 - v4) * 3.0 - v4 * 3.0;
    type metadata accessor for InternalAnimationBox<UnitCurveAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>, lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation);
    result = swift_allocObject();
    *(result + 16) = a2;
    *(result + 24) = 1.0 - v3 * 3.0 - v8;
    *(result + 32) = v8;
    *(result + 40) = v3 * 3.0;
    *(result + 48) = 1.0 - v4 * 3.0 - v9;
    *(result + 56) = v9;
    *(result + 64) = v4 * 3.0;
  }

  return result;
}

__n128 UnitCurveAnimation.init(curve:duration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 32);
  *a2 = a3;
  result = *a1;
  v5 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v5;
  *(a2 + 40) = v3;
  return result;
}

double *UnitCurve.CubicSolver.encode(to:)(double *result)
{
  v2 = v1;
  v3 = result;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v5 / 3.0;
  if (v5 / 3.0 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(9uLL);
    v9 = *(v3 + 1);
    result = (v9 + 8);
    if (__OFADD__(v9, 8))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (*(v3 + 2) < result)
    {
      goto LABEL_21;
    }

    *(v3 + 1) = result;
    *(*v3 + v9) = v8;
  }

  while (1)
  {
    v10 = v7 / 3.0;
    if (v7 / 3.0 == 0.0)
    {
      break;
    }

    ProtobufEncoder.encodeVarint(_:)(0x11uLL);
    v11 = *(v3 + 1);
    result = (v11 + 8);
    if (!__OFADD__(v11, 8))
    {
      if (*(v3 + 2) >= result)
      {
        *(v3 + 1) = result;
        *(*v3 + v11) = v10;
        goto LABEL_9;
      }

      goto LABEL_23;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v8;
  }

  while (1)
  {
LABEL_9:
    v4 = v8 + (v4 + v5) / 3.0;
    if (v4 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x19uLL);
      v12 = *(v3 + 1);
      result = (v12 + 8);
      if (__OFADD__(v12, 8))
      {
        goto LABEL_20;
      }

      if (*(v3 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v4;
      }

      else
      {
        *(v3 + 1) = result;
        *(*v3 + v12) = v4;
      }
    }

    v6 = v10 + (v6 + v7) / 3.0;
    if (v6 == 0.0)
    {
      return result;
    }

    ProtobufEncoder.encodeVarint(_:)(0x21uLL);
    v13 = *(v3 + 1);
    result = (v13 + 8);
    if (!__OFADD__(v13, 8))
    {
      if (*(v3 + 2) < result)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(result);
        *result = v6;
      }

      else
      {
        *(v3 + 1) = result;
        *(*v3 + v13) = v6;
      }

      return result;
    }

    __break(1u);
LABEL_23:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v10;
  }
}

unint64_t UnitCurve.CubicSolver.init(from:)@<X0>(unint64_t result@<X0>, double *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0.0;
  if (v5 >= v6)
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
LABEL_4:
    v3[3] = 0;
    v11 = (v8 - v10) * 3.0 - v10 * 3.0;
    v12 = (v7 - v9) * 3.0 - v9 * 3.0;
    *a2 = 1.0 - v10 * 3.0 - v11;
    a2[1] = v11;
    a2[2] = v10 * 3.0;
    a2[3] = 1.0 - v9 * 3.0 - v12;
    a2[4] = v12;
    a2[5] = v9 * 3.0;
    return result;
  }

  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v13 = v3[4];
      if (v5 < v13)
      {
        goto LABEL_15;
      }

      if (v13 < v5)
      {
        goto LABEL_80;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_80;
    }

LABEL_15:
    v14 = result >> 3;
    v15 = result & 7;
    if (result >> 3 > 2)
    {
      break;
    }

    if (v14 == 1)
    {
      if (v15 != 5)
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          v18 = v3[1];
          if (v6 < v18 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 9;
          v3[4] = v18 + result;
        }

        else
        {
          if (v15 != 1)
          {
            goto LABEL_80;
          }

          v18 = v3[1];
        }

        v5 = (v18 + 1);
        if (v6 < (v18 + 1))
        {
          goto LABEL_80;
        }

        v10 = *v18;
        goto LABEL_7;
      }

      v24 = v3[1];
      v5 = (v24 + 1);
      if (v6 < (v24 + 1))
      {
        goto LABEL_80;
      }

      v25 = *v24;
      v3[1] = v5;
      v10 = v25;
      goto LABEL_8;
    }

    if (v14 == 2)
    {
      if (v15 != 5)
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          v16 = v3[1];
          if (v6 < v16 + result)
          {
            goto LABEL_80;
          }

          v3[3] = 17;
          v3[4] = v16 + result;
        }

        else
        {
          if (v15 != 1)
          {
            goto LABEL_80;
          }

          v16 = v3[1];
        }

        v5 = (v16 + 1);
        if (v6 < (v16 + 1))
        {
          goto LABEL_80;
        }

        v9 = *v16;
        goto LABEL_7;
      }

      v20 = v3[1];
      v5 = (v20 + 1);
      if (v6 < (v20 + 1))
      {
        goto LABEL_80;
      }

      v21 = *v20;
      v3[1] = v5;
      v9 = v21;
      goto LABEL_8;
    }

LABEL_28:
    if ((result & 7) > 1)
    {
      if (v15 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_80:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          return swift_willThrow();
        }

        v5 = v3[1] + result;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_80;
        }

        v5 = v3[1] + 4;
      }

LABEL_6:
      if (v6 < v5)
      {
        goto LABEL_80;
      }

LABEL_7:
      v3[1] = v5;
      goto LABEL_8;
    }

    if ((result & 7) != 0)
    {
      if (v15 != 1)
      {
        goto LABEL_80;
      }

      v5 = v3[1] + 8;
      goto LABEL_6;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v5 = v3[1];
LABEL_8:
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v14 == 3)
  {
    if (v15 != 5)
    {
      if (v15 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        v19 = v3[1];
        if (v6 < v19 + result)
        {
          goto LABEL_80;
        }

        v3[3] = 25;
        v3[4] = v19 + result;
      }

      else
      {
        if (v15 != 1)
        {
          goto LABEL_80;
        }

        v19 = v3[1];
      }

      v5 = (v19 + 1);
      if (v6 < (v19 + 1))
      {
        goto LABEL_80;
      }

      v8 = *v19;
      goto LABEL_7;
    }

    v26 = v3[1];
    v5 = (v26 + 1);
    if (v6 < (v26 + 1))
    {
      goto LABEL_80;
    }

    v27 = *v26;
    v3[1] = v5;
    v8 = v27;
    goto LABEL_8;
  }

  if (v14 != 4)
  {
    goto LABEL_28;
  }

  if (v15 == 5)
  {
    v22 = v3[1];
    v5 = (v22 + 1);
    if (v6 < (v22 + 1))
    {
      goto LABEL_80;
    }

    v23 = *v22;
    v3[1] = v5;
    v7 = v23;
    goto LABEL_8;
  }

  if (v15 != 2)
  {
    if (v15 != 1)
    {
      goto LABEL_80;
    }

    v17 = v3[1];
LABEL_53:
    v5 = (v17 + 1);
    if (v6 < (v17 + 1))
    {
      goto LABEL_80;
    }

    v7 = *v17;
    goto LABEL_7;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v17 = v3[1];
    if (v6 < v17 + result)
    {
      goto LABEL_80;
    }

    v3[3] = 33;
    v3[4] = v17 + result;
    goto LABEL_53;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t UnitCurve.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, a1, a2, v7);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  BinaryFloatingPoint.init<A>(_:)();
  v19 = v21;
  v11 = type metadata accessor for BezierTimingFunction();
  (v10)(v9, a1 + v11[9], a2);
  BinaryFloatingPoint.init<A>(_:)();
  v18 = v20;
  (v10)(v9, a1 + v11[10], a2);
  BinaryFloatingPoint.init<A>(_:)();
  v17 = v21;
  (v10)(v9, a1 + v11[11], a2);
  BinaryFloatingPoint.init<A>(_:)();
  result = (*(*(v11 - 1) + 8))(a1, v11);
  v13 = v20;
  v14 = v17;
  v15 = v18;
  *a3 = v19;
  *(a3 + 8) = v15;
  *(a3 + 16) = v14;
  *(a3 + 24) = v13;
  *(a3 + 32) = 0;
  return result;
}

__n128 UnitCurveAnimation.curve.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 UnitCurveAnimation.curve.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

void UnitCurveAnimation.animate<A>(value:time:context:)(float64x2_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a2 == MEMORY[0x1E69E63B0])
  {
    v18 = *v5 <= 0.0 || *v5 < a5;
    v19 = 0.0;
    if (!v18)
    {
      v21 = a5 / *v5;
      if (v21 > 1.0)
      {
        v21 = 1.0;
      }

      if (v21 <= 0.0)
      {
        v21 = 0.0;
      }

      v20 = a1->f64[0];
      v19 = v20 * UnitCurve.value(at:)(v21);
    }

    *a4 = v19;
    *(a4 + 8) = v18;
  }

  else
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    v11 = *v5;
    if (v12 == a2)
    {
      v22 = v11 <= 0.0 || v11 < a5;
      v23 = 0uLL;
      v24 = 0uLL;
      if (!v22)
      {
        v25 = a5 / v11;
        if (v25 > 1.0)
        {
          v25 = 1.0;
        }

        if (v25 <= 0.0)
        {
          v25 = 0.0;
        }

        v27 = a1[1];
        v28 = *a1;
        v26 = UnitCurve.value(at:)(v25);
        v23 = vmulq_n_f64(v28, v26);
        v24 = vmulq_n_f64(v27, v26);
      }

      *a4 = v23;
      *(a4 + 16) = v24;
      *(a4 + 32) = v22;
    }

    else
    {
      if (v11 < a5 || v11 <= 0.0)
      {
        v15 = *(*(a2 - 8) + 56);
        v16 = a4;
        v17 = 1;
      }

      else
      {
        v13 = a5 / v11;
        if (v13 > 1.0)
        {
          v13 = 1.0;
        }

        if (v13 <= 0.0)
        {
          v13 = 0.0;
        }

        v14 = UnitCurve.value(at:)(v13);
        VectorArithmetic.scaled(by:)(a2, a3, a4, v14);
        v15 = *(*(a2 - 8) + 56);
        v16 = a4;
        v17 = 0;
      }

      v15(v16, v17, 1, a2);
    }
  }
}

uint64_t UnitCurveAnimation.velocity<A>(value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  if (*v4 < v9 || v12 <= 0.0)
  {
    v18 = *(v8 + 56);

    return v18(a4, 1, 1, a2);
  }

  else
  {
    v13 = *(v4 + 40);
    v14 = v9 / v12;
    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    v15 = *(v4 + 24);
    if (v14 <= 0.0)
    {
      v14 = 0.0;
    }

    v21 = *(v4 + 8);
    v22 = v15;
    v23 = v13;
    v20 = v8;
    v16 = UnitCurve.velocity(at:)(v14);
    VectorArithmetic.scaled(by:)(a2, a3, v11, 1.0 / v12);
    VectorArithmetic.scaled(by:)(a2, a3, a4, v16);
    (*(v20 + 8))(v11, a2);
    return (*(v20 + 56))(a4, 0, 1, a2);
  }
}

void UnitCurveAnimation.function.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    v6 = v4 | v3;
    v7 = v6 | v2 | v5;
    v8 = v6 | v5;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v2 == 2;
    }

    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    v11 = v2 == 1 && v8 == 0;
    v5 = 0;
    if (v11)
    {
      v10 = 1;
    }

    v9 = v7 == 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    if (v9)
    {
      v5 = 0;
      v10 = 0;
    }
  }

  else
  {
    v10 = 4;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v10;
}

uint64_t UnitCurveAnimation.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v6 == 1)
  {
    if (*&v5 | *&v3 | *&v2 | *&v4)
    {
      v7 = *&v5 | *&v3 | *&v4;
      if (*&v2 == 1 && v7 == 0)
      {
        v9 = 1;
      }

      else if (*&v2 != 2 || v7)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 0;
    }

    return MEMORY[0x193AC11A0](v9);
  }

  else
  {
    MEMORY[0x193AC11A0](4);
    UnitPoint.hash(into:)(v2, v3);

    return UnitPoint.hash(into:)(v5, v4);
  }
}

Swift::Int UnitCurveAnimation.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  v7 = 0.0;
  if (v1 != 0.0)
  {
    v7 = v1;
  }

  MEMORY[0x193AC11E0](*&v7);
  if (v6 == 1)
  {
    if (*&v5 | *&v3 | *&v2 | *&v4)
    {
      v8 = *&v5 | *&v3 | *&v4;
      if (*&v2 == 1 && v8 == 0)
      {
        v10 = 1;
      }

      else if (*&v2 != 2 || v8)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193AC11A0](v10);
  }

  else
  {
    MEMORY[0x193AC11A0](4);
    UnitPoint.hash(into:)(v2, v3);
    UnitPoint.hash(into:)(v5, v4);
  }

  return Hasher._finalize()();
}

void protocol witness for InternalCustomAnimation.function.getter in conformance UnitCurveAnimation(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    v6 = v4 | v3;
    v7 = v6 | v2 | v5;
    v8 = v6 | v5;
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v2 == 2;
    }

    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    v11 = v2 == 1 && v8 == 0;
    v5 = 0;
    if (v11)
    {
      v10 = 1;
    }

    v9 = v7 == 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    if (v9)
    {
      v5 = 0;
      v10 = 0;
    }
  }

  else
  {
    v10 = 4;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v10;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitCurveAnimation()
{
  Hasher.init(_seed:)();
  UnitCurveAnimation.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static UnitCurveAnimation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 8);
  if (*(a1 + 40) != 1)
  {
    return (*(a2 + 40) & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v5), vceqq_f64(v2, v4)))) & 1) != 0;
  }

  if (!(*&v2.f64[0] | *&v3.f64[1] | *&v3.f64[0] | *&v2.f64[1]))
  {
    return *(a2 + 40) && !(*&v4.f64[0] | *&v5.f64[0] | *&v5.f64[1] | *&v4.f64[1]);
  }

  v6 = *&v2.f64[0] | *&v3.f64[1] | *&v2.f64[1];
  if (*&v3.f64[0] == 1 && v6 == 0)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }

    v9 = *&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1] && *&v5.f64[0] == 1;
    return v9 && (*&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1]) == 0;
  }

  if (*&v3.f64[0] == 2 && !v6)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }

    if (!(*&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1]))
    {
      return 0;
    }

    v8 = *&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1];
    if (*&v5.f64[0] == 1 && !v8)
    {
      return 0;
    }

    return *&v5.f64[0] == 2 && !v8;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    return 0;
  }

  if (!(*&v4.f64[0] | *&v5.f64[1] | *&v5.f64[0] | *&v4.f64[1]))
  {
    return 0;
  }

  result = 1;
  if ((*&v5.f64[0] - 1) <= 1 && !(*&v4.f64[0] | *&v5.f64[1] | *&v4.f64[1]))
  {
    return 0;
  }

  return result;
}

BOOL specialized static UnitCurve.Function.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*(a1 + 32) != 1)
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    if (v2 == v6 && v3 == v7)
    {
      return v4 == v8 && v5 == v9;
    }

    return 0;
  }

  v10 = *&v5 | *&v3;
  if (!(v10 | *&v2 | *&v4))
  {
    if (*(a2 + 32))
    {
      return (*&v9 | *&v7 | *&v6 | *&v8) == 0;
    }

    return 0;
  }

  v11 = v10 | *&v4;
  if (*&v2 == 1 && v11 == 0)
  {
    if (*(a2 + 32))
    {
      v19 = *&v9 | *&v7;
      if (v19 | *&v6 | *&v8)
      {
        if (*&v6 == 1 && !(v19 | *&v8))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (*&v2 != 2 || v11 != 0)
  {
    if (*(a2 + 32))
    {
      v14 = *&v9 | *&v7;
      if (v14 | *&v6 | *&v8)
      {
        v15 = v14 | *&v8;
        if (*&v6 != 1 || v15)
        {
          return *&v6 != 2 || v15 != 0;
        }
      }
    }

    return 0;
  }

  if (!*(a2 + 32))
  {
    return 0;
  }

  v20 = *&v9 | *&v7;
  if (!(v20 | *&v6 | *&v8))
  {
    return 0;
  }

  v21 = v20 | *&v8;
  if (*&v6 == 1 && !v21)
  {
    return 0;
  }

  return *&v6 == 2 && v21 == 0;
}

unint64_t lazy protocol witness table accessor for type UnitCurveAnimation and conformance UnitCurveAnimation()
{
  result = lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation;
  if (!lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation;
  if (!lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation;
  if (!lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation;
  if (!lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitCurveAnimation and conformance UnitCurveAnimation);
  }

  return result;
}

void type metadata accessor for InternalAnimationBox<UnitCurveAnimation>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for InternalAnimationBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UnitCurve.Function and conformance UnitCurve.Function()
{
  result = lazy protocol witness table cache variable for type UnitCurve.Function and conformance UnitCurve.Function;
  if (!lazy protocol witness table cache variable for type UnitCurve.Function and conformance UnitCurve.Function)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitCurve.Function and conformance UnitCurve.Function);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitCurve and conformance UnitCurve()
{
  result = lazy protocol witness table cache variable for type UnitCurve and conformance UnitCurve;
  if (!lazy protocol witness table cache variable for type UnitCurve and conformance UnitCurve)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitCurve and conformance UnitCurve);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitCurve.CubicSolver and conformance UnitCurve.CubicSolver()
{
  result = lazy protocol witness table cache variable for type UnitCurve.CubicSolver and conformance UnitCurve.CubicSolver;
  if (!lazy protocol witness table cache variable for type UnitCurve.CubicSolver and conformance UnitCurve.CubicSolver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitCurve.CubicSolver and conformance UnitCurve.CubicSolver);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for UnitCurveAnimation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UnitCurveAnimation and conformance UnitCurveAnimation();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type UnitCurveAnimation and conformance UnitCurveAnimation();
  *(a1 + 8) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for UnitCurve.Function(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t _MatchedGeometryEffect.init(id:namespace:properties:anchor:isSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for _MatchedGeometryEffect();
  *(a6 + *(result + 36)) = a2;
  v15 = a6 + *(result + 40);
  *v15 = a3;
  *(v15 + 8) = a7;
  *(v15 + 16) = a8;
  *(v15 + 24) = a4;
  return result;
}

uint64_t View.matchedGeometryEffect<A, B>(id:in:clipShape:properties:anchor:isSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v48 = a6;
  v43 = a4;
  v44 = a5;
  v46 = a3;
  v47 = a9;
  v39[1] = a14;
  v40 = a1;
  v41 = *(a8 - 8);
  v42 = a2;
  v45 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v25;
  v39[0] = v25;
  v27 = type metadata accessor for _MatchedGeometryEffect();
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v39 - v29;
  v49 = a7;
  v50 = a8;
  v51 = v26;
  v52 = a14;
  v31 = type metadata accessor for MatchedGeometryEffect2();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = v39 - v34;
  (*(v21 + 16))(v24, v40, a7, v33);
  (*(v21 + 32))(v30, v24, a7);
  *&v30[*(v28 + 44)] = v42;
  v36 = &v30[*(v28 + 48)];
  v37 = v44;
  *v36 = v43;
  *(v36 + 1) = a10;
  *(v36 + 2) = a11;
  v36[24] = v37;
  (*(v41 + 16))(v19, v46, a8);
  MatchedGeometryEffect2.init(base:clipShape:)(v30, v19, a8, v35);
  View.modifier<A>(_:)(v35, v48, v31);
  return (*(v32 + 8))(v35, v31);
}

uint64_t MatchedGeometryEffect2.init(base:clipShape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for _MatchedGeometryEffect();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for MatchedGeometryEffect2();
  return (*(*(a3 - 8) + 32))(a4 + *(v9 + 52), a2, a3);
}

uint64_t _MatchedGeometryEffect.args.setter(uint64_t result, char a2, uint64_t a3, double a4, double a5)
{
  v6 = v5 + *(a3 + 40);
  *v6 = result;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  *(v6 + 24) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type MatchedGeometryProperties and conformance MatchedGeometryProperties()
{
  result = lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties;
  if (!lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties;
  if (!lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties;
  if (!lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties;
  if (!lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedGeometryProperties and conformance MatchedGeometryProperties);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _MatchedGeometryEffect(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) == 0 && ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v12;
    v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v14 + 9) = *(v12 + 9);
    *v14 = v13;
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  return v3;
}

uint64_t initializeWithTake for _MatchedGeometryEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 9);
  *v9 = *v10;
  *(v9 + 9) = v11;
  return a1;
}

uint64_t assignWithTake for _MatchedGeometryEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);
  *(v9 + 24) = *(v10 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for _MatchedGeometryEffect(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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
    goto LABEL_27;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
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
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void storeEnumTagSinglePayload for _MatchedGeometryEffect(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25;
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
        v18 = ((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          *(v18 + 24) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 24) = a2 + 1;
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
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25);
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

uint64_t static MatchedGeometryEffect2._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v9 = *a1;
  v10 = a2[3];
  v29 = a2[2];
  v30 = v10;
  v31 = a2[4];
  v32 = *(a2 + 20);
  v11 = a2[1];
  v27 = *a2;
  v28 = v11;
  LODWORD(v33[0]) = v9;
  type metadata accessor for MatchedGeometryEffect2();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static MatchedGeometryEffect2._makeView(modifier:inputs:body:), a5, &v26);
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v12 = *(a6 + 8);
  v13 = *(v12 + 48);
  outlined init with copy of _GraphInputs(&v27, v33);
  v13(&v26, &v19, a5, v12);
  v33[0] = v19;
  v33[1] = v20;
  v33[2] = v21;
  outlined destroy of _GraphInputs(v33);
  v25[1] = v9;
  v14 = type metadata accessor for _MatchedGeometryEffect();
  _GraphValue.subscript.getter(partial apply for closure #2 in static MatchedGeometryEffect2._makeView(modifier:inputs:body:), v14, v25);
  v21 = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  v19 = v27;
  v20 = v28;
  return static _MatchedGeometryEffect.makeView<A>(modifier:inputs:clipShape:body:)(v25, &v19, v26, a3, a4, a5, a7, a6);
}

uint64_t closure #1 in static MatchedGeometryEffect2._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for MatchedGeometryEffect2();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t closure #2 in static MatchedGeometryEffect2._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v9[2] = type metadata accessor for MatchedGeometryEffect2();
  v10 = type metadata accessor for _MatchedGeometryEffect();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

uint64_t MatchedGeometryScope.releaseFrame(index:owner:)(int64_t a1, uint64_t a2)
{
  v6 = v2;
  result = swift_beginAccess();
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = *(v6 + 112);
  if (*(v3 + 2) <= a1)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    *(v6 + 112) = v3;
    goto LABEL_9;
  }

  v5 = a1 << 6;
  v10 = *&v3[64 * a1 + 80];
  v11 = *(v10 + 16);
  if (!v11)
  {
    return result;
  }

  v4 = 0;
  v12 = (v10 + 32);
  while (1)
  {
    v13 = *v12;
    v12 += 7;
    if (v13 == a2)
    {
      break;
    }

    if (v11 == ++v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 112) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (*(v3 + 2) <= a1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v15 = &v3[v5];
  a2 = &v3[v5 + 80];
  specialized Array.remove(at:)(v4, v17);
  *(v6 + 112) = v3;
  swift_endAccess();
  if (*(v3 + 2) <= a1)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    goto LABEL_13;
  }

  if (!*(*(v15 + 10) + 16))
  {
    outlined init with copy of AnyHashable((v15 + 40), v17);
    swift_beginAccess();
    specialized Dictionary.removeValue(forKey:)(v17);
    swift_endAccess();
    outlined destroy of AnyHashable(v17);
    lazy protocol witness table accessor for type MatchedGeometryScope.EmptyKey and conformance MatchedGeometryScope.EmptyKey();
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    a2 = *(v6 + 112);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 112) = a2;
    if (result)
    {
LABEL_16:
      if (*(a2 + 16) <= a1)
      {
        __break(1u);
        return result;
      }

      outlined assign with take of AnyHashable(v17, a2 + v5 + 40);
      *(v6 + 112) = a2;
      return swift_endAccess();
    }

LABEL_27:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    *(v6 + 112) = result;
    goto LABEL_16;
  }

  swift_beginAccess();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 112) = v3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (*(v3 + 2) <= a1)
  {
    __break(1u);
    goto LABEL_27;
  }

  ++*&v3[v5 + 88];
  *(v6 + 112) = v3;
  return swift_endAccess();
}

uint64_t closure #2 in MatchedGeometryScope.frame<A>(index:for:view:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
        v3 = v6;
        if (v6 >= 1)
        {
LABEL_3:
          for (i = 0; i != v3; ++i)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v5 = MEMORY[0x193AC03C0](i, v2);
            }

            else
            {
              v5 = *(v2 + 8 * i + 32);
            }

            (*(*v5 + 96))();
          }

          goto LABEL_12;
        }

        __break(1u);
      }

LABEL_12:

      *(a1 + 24) = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t destroy for MatchedGeometryScope.Frame(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
}

uint64_t assignWithCopy for MatchedGeometryScope.Frame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for MatchedGeometryScope.Frame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

uint64_t type metadata completion function for MatchedGeometryEffect2()
{
  result = type metadata accessor for _MatchedGeometryEffect();
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

uint64_t *initializeBufferWithCopyOfBuffer for MatchedGeometryEffect2(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 25;
  v10 = v8 | *(v4 + 80) & 0xF8;
  if (v10 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || (v9 & ~v8) + *(v7 + 64) > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + (((v10 | 7) + 16) & ~(v10 | 7)));
  }

  else
  {
    v14 = ~v8;
    (*(v4 + 16))(a1);
    v16 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = *v19;
    *(v18 + 9) = *(v19 + 9);
    *v18 = v20;
    (*(v7 + 16))((v3 + v9) & v14, (a2 + v9) & v14, v6);
  }

  return v3;
}

uint64_t destroy for MatchedGeometryEffect2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + ((((*(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 25) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t initializeWithCopy for MatchedGeometryEffect2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  v8 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v8;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 9);
  *v10 = *v11;
  *(v10 + 9) = v12;
  v13 = *(*(a3 + 24) - 8);
  v14 = *(v13 + 80);
  v15 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 25;
  (*(v13 + 16))((v15 + a1) & ~v14, (v15 + a2) & ~v14);
  return a1;
}

uint64_t assignWithCopy for MatchedGeometryEffect2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);
  *(v10 + 24) = *(v11 + 24);
  v12 = *(*(a3 + 24) - 8);
  v13 = *(v12 + 80);
  v14 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 25;
  (*(v12 + 24))((v14 + a1) & ~v13, (v14 + a2) & ~v13);
  return a1;
}

uint64_t initializeWithTake for MatchedGeometryEffect2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32) + 7;
  v8 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v8;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 9);
  *v10 = *v11;
  *(v10 + 9) = v12;
  v13 = *(*(a3 + 24) - 8);
  v14 = *(v13 + 80);
  v15 = (((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 25;
  (*(v13 + 32))((v15 + a1) & ~v14, (v15 + a2) & ~v14);
  return a1;
}