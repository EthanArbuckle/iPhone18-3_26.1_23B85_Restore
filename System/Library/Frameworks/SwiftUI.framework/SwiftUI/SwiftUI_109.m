void *initializeWithTake for ListScrollable.DataSourceProvider(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2[v7];
  v9 = v8 - 2;
  if (v8 < 2)
  {
    goto LABEL_21;
  }

  if (v7 <= 3)
  {
    v10 = v7;
  }

  else
  {
    v10 = 4;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = *a2;
  }

  else if (v10 == 2)
  {
    v11 = *a2;
  }

  else if (v10 == 3)
  {
    v11 = *a2 | (a2[2] << 16);
  }

  else
  {
    v11 = *a2;
  }

  v12 = (v11 | (v9 << (8 * v7))) + 2;
  v8 = v11 + 2;
  if (v7 < 4)
  {
    v8 = v12;
  }

LABEL_21:
  if (v8 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(a1, a2, v6);
      v14 = 1;
    }

    else
    {
      (*(v5 + 32))(a1, a2, v4);
      v14 = 1;
      (*(v5 + 56))(a1, 0, 1, v4);
    }
  }

  else
  {
    v14 = 0;
    *a1 = *a2;
  }

  *(a1 + v7) = v14;
  return a1;
}

unsigned __int8 *assignWithTake for ListScrollable.DataSourceProvider(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = a1[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_22:
  if (v9 == 1 && !(*(v6 + 48))(a1, 1, v5))
  {
    (*(v6 + 8))(a1, v5);
  }

  v14 = *(a2 + v8);
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_39;
  }

  if (v8 <= 3)
  {
    v16 = v8;
  }

  else
  {
    v16 = 4;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v17 = *a2;
    }

LABEL_37:
    v18 = (v17 | (v15 << (8 * v8))) + 2;
    v14 = v17 + 2;
    if (v8 < 4)
    {
      v14 = v18;
    }

    goto LABEL_39;
  }

  if (v16)
  {
    v17 = *a2;
    goto LABEL_37;
  }

LABEL_39:
  if (v14 == 1)
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
      v19 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      v19 = 1;
      (*(v6 + 56))(a1, 0, 1, v5);
    }
  }

  else
  {
    v19 = 0;
    *a1 = *a2;
  }

  a1[v8] = v19;
  return a1;
}

uint64_t getEnumTagSinglePayload for ListScrollable.DataSourceProvider(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_28:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_28;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void storeEnumTagSinglePayload for ListScrollable.DataSourceProvider(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t getEnumTag for ListScrollable.DataSourceProvider(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  if (*(v2 + 84))
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v3 = *(v2 + 64) + 1;
  }

  v4 = 8;
  if (v3 > 8)
  {
    v4 = v3;
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        return v5;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    LODWORD(v5) = v8 + 2;
    if (v4 >= 4)
    {
      return v5;
    }

    else
    {
      return v9;
    }
  }

  return v5;
}

void destructiveInjectEnumTag for ListScrollable.DataSourceProvider(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  if (a2 <= 1)
  {
    a1[v7] = a2;
    return;
  }

  v8 = a2 - 2;
  if (v7 < 4)
  {
    a1[v7] = (v8 >> (8 * v7)) + 2;
    if (!v7)
    {
      return;
    }

    v8 &= ~(-1 << (8 * v7));
  }

  else
  {
    a1[v7] = 2;
  }

  if (v7 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7;
  }

  bzero(a1, v7);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      *a1 = v8;
      a1[2] = BYTE2(v8);
    }

    else
    {
      *a1 = v8;
    }
  }

  else if (v9 == 1)
  {
    *a1 = v8;
  }

  else
  {
    *a1 = v8;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for BridgedListState.CommitMutation(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v6 = a1 + v5;
    v7 = a2 + v5;
    *(a1 + v5) = *(a2 + v5);
    v8 = type metadata accessor for BridgedListState(0);
    v9 = v8[5];
    v10 = &v6[v9];
    v11 = &v7[v9];
    v12 = type metadata accessor for BridgedListState.ScrollTarget(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
      type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
      memcpy(v10, v11, *(*(v14 - 8) + 64));
    }

    else
    {
      v16 = type metadata accessor for IndexPath();
      (*(*(v16 - 8) + 16))(v10, v11, v16);
      v17 = *(v12 + 20);
      v18 = &v10[v17];
      v19 = &v11[v17];
      *v18 = *v19;
      v18[16] = v19[16];
      v10[*(v12 + 24)] = v11[*(v12 + 24)];
      (*(v13 + 56))(v10, 0, 1, v12);
    }

    v20 = v8[6];
    v21 = &v6[v20];
    v22 = &v7[v20];
    v23 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v23;
    v24 = *(v22 + 3);
    *(v21 + 2) = *(v22 + 2);
    *(v21 + 3) = v24;
    v21[112] = v22[112];
    v25 = *(v22 + 6);
    *(v21 + 5) = *(v22 + 5);
    *(v21 + 6) = v25;
    *(v21 + 4) = *(v22 + 4);
    *&v6[v8[7]] = *&v7[v8[7]];
  }

  return v3;
}

uint64_t destroy for BridgedListState.CommitMutation(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = *(type metadata accessor for BridgedListState(0) + 20);
  v4 = type metadata accessor for BridgedListState.ScrollTarget(0);
  result = (*(*(v4 - 8) + 48))(v2 + v3, 1, v4);
  if (!result)
  {
    v6 = type metadata accessor for IndexPath();
    v7 = *(*(v6 - 8) + 8);

    return v7(v2 + v3, v6);
  }

  return result;
}

void *initializeWithCopy for BridgedListState.CommitMutation(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = type metadata accessor for BridgedListState(0);
  v8 = v7[5];
  v9 = &v5[v8];
  v10 = &v6[v8];
  v11 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 16))(v9, v10, v14);
    v15 = *(v11 + 20);
    v16 = &v9[v15];
    v17 = &v10[v15];
    *v16 = *v17;
    v16[16] = v17[16];
    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  v18 = v7[6];
  v19 = &v5[v18];
  v20 = &v6[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  v22 = *(v20 + 3);
  *(v19 + 2) = *(v20 + 2);
  *(v19 + 3) = v22;
  v19[112] = v20[112];
  v23 = *(v20 + 6);
  *(v19 + 5) = *(v20 + 5);
  *(v19 + 6) = v23;
  *(v19 + 4) = *(v20 + 4);
  *&v5[v7[7]] = *&v6[v7[7]];
  return a1;
}

_DWORD *assignWithCopy for BridgedListState.CommitMutation(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v36 = type metadata accessor for BridgedListState(0);
  v7 = v36[5];
  v8 = &v5[v7];
  v9 = &v6[v7];
  v10 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      v31 = type metadata accessor for IndexPath();
      (*(*(v31 - 8) + 24))(v8, v9, v31);
      v32 = *(v10 + 20);
      v33 = &v8[v32];
      v34 = &v9[v32];
      v35 = *v34;
      v33[16] = v34[16];
      *v33 = v35;
      v8[*(v10 + 24)] = v9[*(v10 + 24)];
      goto LABEL_7;
    }

    outlined destroy of BridgedListState.ScrollTarget(v8, type metadata accessor for BridgedListState.ScrollTarget);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v8, v9, *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  v15 = type metadata accessor for IndexPath();
  (*(*(v15 - 8) + 16))(v8, v9, v15);
  v16 = *(v10 + 20);
  v17 = &v8[v16];
  v18 = &v9[v16];
  v19 = *v18;
  v17[16] = v18[16];
  *v17 = v19;
  v8[*(v10 + 24)] = v9[*(v10 + 24)];
  (*(v11 + 56))(v8, 0, 1, v10);
LABEL_7:
  v21 = v36[6];
  v22 = &v5[v21];
  v23 = &v6[v21];
  v24 = *v23;
  v25 = *(v23 + 1);
  v26 = *(v23 + 3);
  *(v22 + 2) = *(v23 + 2);
  *(v22 + 3) = v26;
  *v22 = v24;
  *(v22 + 1) = v25;
  v27 = *(v23 + 4);
  v28 = *(v23 + 5);
  v29 = *(v23 + 6);
  v22[112] = v23[112];
  *(v22 + 5) = v28;
  *(v22 + 6) = v29;
  *(v22 + 4) = v27;
  *&v5[v36[7]] = *&v6[v36[7]];
  return a1;
}

void *initializeWithTake for BridgedListState.CommitMutation(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = type metadata accessor for BridgedListState(0);
  v8 = v7[5];
  v9 = &v5[v8];
  v10 = &v6[v8];
  v11 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 32))(v9, v10, v14);
    v15 = *(v11 + 20);
    v16 = &v9[v15];
    v17 = &v10[v15];
    *v16 = *v17;
    v16[16] = v17[16];
    v9[*(v11 + 24)] = v10[*(v11 + 24)];
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  v18 = v7[6];
  v19 = &v5[v18];
  v20 = &v6[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  v22 = *(v20 + 3);
  *(v19 + 2) = *(v20 + 2);
  *(v19 + 3) = v22;
  v19[112] = v20[112];
  v23 = *(v20 + 6);
  *(v19 + 5) = *(v20 + 5);
  *(v19 + 6) = v23;
  *(v19 + 4) = *(v20 + 4);
  *&v5[v7[7]] = *&v6[v7[7]];
  return a1;
}

void *assignWithTake for BridgedListState.CommitMutation(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  *(a1 + v3) = *(a2 + v3);
  v6 = type metadata accessor for BridgedListState(0);
  v7 = v6[5];
  v8 = &v4[v7];
  v9 = &v5[v7];
  v10 = type metadata accessor for BridgedListState.ScrollTarget(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v8, 1, v10);
  v14 = v12(v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      v27 = type metadata accessor for IndexPath();
      (*(*(v27 - 8) + 40))(v8, v9, v27);
      v28 = *(v10 + 20);
      v29 = &v8[v28];
      v30 = &v9[v28];
      *v29 = *v30;
      v29[16] = v30[16];
      v8[*(v10 + 24)] = v9[*(v10 + 24)];
      goto LABEL_7;
    }

    outlined destroy of BridgedListState.ScrollTarget(v8, type metadata accessor for BridgedListState.ScrollTarget);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
    memcpy(v8, v9, *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  v15 = type metadata accessor for IndexPath();
  (*(*(v15 - 8) + 32))(v8, v9, v15);
  v16 = *(v10 + 20);
  v17 = &v8[v16];
  v18 = &v9[v16];
  *v17 = *v18;
  v17[16] = v18[16];
  v8[*(v10 + 24)] = v9[*(v10 + 24)];
  (*(v11 + 56))(v8, 0, 1, v10);
LABEL_7:
  v20 = v6[6];
  v21 = &v4[v20];
  v22 = &v5[v20];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  v24 = *(v22 + 3);
  *(v21 + 2) = *(v22 + 2);
  *(v21 + 3) = v24;
  v21[112] = v22[112];
  v25 = *(v22 + 6);
  *(v21 + 5) = *(v22 + 5);
  *(v21 + 6) = v25;
  *(v21 + 4) = *(v22 + 4);
  *&v4[v6[7]] = *&v5[v6[7]];
  return a1;
}

uint64_t type metadata completion function for BridgedListState.CommitMutation()
{
  result = type metadata accessor for BridgedListState(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ListScrollable()
{
  result = type metadata accessor for ListScrollable.DataSourceProvider();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ListScrollable(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7 & 0xFC | 3;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = ((((((v10 + (((v7 & 0xFC) + 11) & ~v8) + 4) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v7 & 0x100000;
  if ((*(v5 + 80) & 0xFCu) > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
    goto LABEL_36;
  }

  *a1 = *a2;
  v16 = ((a1 + v8 + 8) & ~v8);
  v17 = ((a2 + v8 + 8) & ~v8);
  v18 = *(v17 + v10);
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *v17;
      }

      else if (v20 == 3)
      {
        v21 = *v17 | (*(v17 + 2) << 16);
      }

      else
      {
        v21 = *v17;
      }

LABEL_28:
      v22 = (v21 | (v19 << (8 * v10))) + 2;
      v18 = v21 + 2;
      if (v10 < 4)
      {
        v18 = v22;
      }

      goto LABEL_30;
    }

    if (v20)
    {
      v21 = *v17;
      goto LABEL_28;
    }
  }

LABEL_30:
  v23 = v10 + 1;
  if (v18 == 1)
  {
    if ((*(v5 + 48))(v17, 1, v4))
    {
      memcpy(v16, v17, v9);
      v24 = 1;
    }

    else
    {
      (*(v6 + 16))(v16, v17, v4);
      v24 = 1;
      (*(v6 + 56))(v16, 0, 1, v4);
    }
  }

  else
  {
    v24 = 0;
    *v16 = *v17;
  }

  *(v16 + v10) = v24;
  v25 = ((v16 + v23 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v26 = ((v17 + v23 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v25 = *v26;
  v27 = ((v25 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v28 = ((v26 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v27 = *v28;
  *((v27 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
LABEL_36:

  return v3;
}

uint64_t destroy for ListScrollable(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80) & 0xFCLL | 3;
  v5 = ((a1 + v4 + 8) & ~v4);
  v6 = *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v6;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = v5[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = *v5;
    }

    else if (v10 == 2)
    {
      v11 = *v5;
    }

    else if (v10 == 3)
    {
      v11 = *v5 | (v5[2] << 16);
    }

    else
    {
      v11 = *v5;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_20:
  if (v8 == 1 && !(*(v3 + 48))(v5, 1, v2))
  {
    (*(v3 + 8))(v5, v2);
  }
}

void *initializeWithCopy for ListScrollable(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80) & 0xFCLL;
  v7 = v6 + 11;
  v8 = ~v6 & 0xFFFFFFFFFFFFFFFCLL;
  v9 = ((a1 + v7) & v8);
  v10 = ((a2 + v7) & v8);
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = *(v5 + 64) + 1;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = v10[v12];
  v14 = v13 - 2;
  if (v13 < 2)
  {
    goto LABEL_21;
  }

  if (v12 <= 3)
  {
    v15 = v12;
  }

  else
  {
    v15 = 4;
  }

  if (v15 <= 1)
  {
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = *v10;
  }

  else if (v15 == 2)
  {
    v16 = *v10;
  }

  else if (v15 == 3)
  {
    v16 = *v10 | (v10[2] << 16);
  }

  else
  {
    v16 = *v10;
  }

  v17 = (v16 | (v14 << (8 * v12))) + 2;
  v13 = v16 + 2;
  if (v12 < 4)
  {
    v13 = v17;
  }

LABEL_21:
  if (v13 == 1)
  {
    if ((*(v5 + 48))(v10, 1, v4))
    {
      memcpy(v9, v10, v11);
      v18 = 1;
    }

    else
    {
      (*(v5 + 16))(v9, v10, v4);
      v18 = 1;
      (*(v5 + 56))(v9, 0, 1, v4);
    }
  }

  else
  {
    v18 = 0;
    *v9 = *v10;
  }

  *(v9 + v12) = v18;
  v19 = ((v9 + v12 + 4) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = (&v10[v12 + 4] & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v21 = *v22;
  *((v21 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *assignWithCopy for ListScrollable(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80) & 0xFCLL;
  v9 = v8 + 11;
  v10 = ~v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = ((a1 + v9) & v10);
  v12 = *(v5 + 64);
  v13 = ((a2 + v9) & v10);
  if (v11 == v13)
  {
    goto LABEL_45;
  }

  if (v7)
  {
    v14 = *(v5 + 64);
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = v11[v15];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v15 <= 3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_22;
      }

      v19 = *v11;
    }

    else if (v18 == 2)
    {
      v19 = *v11;
    }

    else if (v18 == 3)
    {
      v19 = *v11 | (v11[2] << 16);
    }

    else
    {
      v19 = *v11;
    }

    v20 = (v19 | (v17 << (8 * v15))) + 2;
    v16 = v19 + 2;
    if (v15 < 4)
    {
      v16 = v20;
    }
  }

LABEL_22:
  if (v16 == 1 && !(*(v6 + 48))(v11, 1, v4))
  {
    (*(v6 + 8))(v11, v4);
  }

  v21 = *(v13 + v15);
  v22 = v21 - 2;
  if (v21 < 2)
  {
    goto LABEL_39;
  }

  if (v15 <= 3)
  {
    v23 = v15;
  }

  else
  {
    v23 = 4;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *v13;
    }

    else if (v23 == 3)
    {
      v24 = *v13 | (*(v13 + 2) << 16);
    }

    else
    {
      v24 = *v13;
    }

LABEL_37:
    v25 = (v24 | (v22 << (8 * v15))) + 2;
    v21 = v24 + 2;
    if (v15 < 4)
    {
      v21 = v25;
    }

    goto LABEL_39;
  }

  if (v23)
  {
    v24 = *v13;
    goto LABEL_37;
  }

LABEL_39:
  if (v21 == 1)
  {
    if ((*(v6 + 48))(v13, 1, v4))
    {
      memcpy(v11, v13, v14);
      v26 = 1;
    }

    else
    {
      (*(v6 + 16))(v11, v13, v4);
      v26 = 1;
      (*(v6 + 56))(v11, 0, 1, v4);
    }
  }

  else
  {
    v26 = 0;
    *v11 = *v13;
  }

  v11[v15] = v26;
LABEL_45:
  if (v7)
  {
    v27 = v12;
  }

  else
  {
    v27 = v12 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v28 = v27 + 1;
  v29 = (&v11[v28 + 3] & 0xFFFFFFFFFFFFFFFCLL);
  v30 = ((v13 + v28 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v29 = *v30;
  v29[1] = v30[1];
  v31 = ((v29 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v32 = ((v30 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v31 = *v32;
  v31[1] = v32[1];
  *((v31 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void *initializeWithTake for ListScrollable(void *result, void *a2, uint64_t a3)
{
  *result = *a2;
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80) & 0xFCLL;
  v6 = v5 + 11;
  v7 = ~v5 & 0xFFFFFFFFFFFFFFFCLL;
  v8 = ((result + v6) & v7);
  v9 = ((a2 + v6) & v7);
  if (*(v4 + 84))
  {
    v10 = *(v4 + 64);
  }

  else
  {
    v10 = *(v4 + 64) + 1;
  }

  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v10;
  }

  v12 = v9[v11];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = *v9;
    }

    else if (v14 == 2)
    {
      v15 = *v9;
    }

    else if (v14 == 3)
    {
      v15 = *v9 | (v9[2] << 16);
    }

    else
    {
      v15 = *v9;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 2;
    v12 = v15 + 2;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_21:
  if (v12 == 1)
  {
    v17 = result;
    if ((*(v4 + 48))(v9, 1, v3))
    {
      memcpy(v8, v9, v10);
      v18 = 1;
    }

    else
    {
      (*(v4 + 32))(v8, v9, v3);
      v18 = 1;
      (*(v4 + 56))(v8, 0, 1, v3);
    }

    result = v17;
  }

  else
  {
    v18 = 0;
    *v8 = *v9;
  }

  *(v8 + v11) = v18;
  v19 = ((v8 + v11 + 4) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = (&v9[v11 + 4] & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v21 = *v22;
  *((v21 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  return result;
}

void *assignWithTake for ListScrollable(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80) & 0xFCLL;
  v9 = v8 + 11;
  v10 = ~v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = ((a1 + v9) & v10);
  v12 = *(v5 + 64);
  v13 = ((a2 + v9) & v10);
  if (v11 == v13)
  {
    goto LABEL_45;
  }

  if (v7)
  {
    v14 = *(v5 + 64);
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = v11[v15];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v15 <= 3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_22;
      }

      v19 = *v11;
    }

    else if (v18 == 2)
    {
      v19 = *v11;
    }

    else if (v18 == 3)
    {
      v19 = *v11 | (v11[2] << 16);
    }

    else
    {
      v19 = *v11;
    }

    v20 = (v19 | (v17 << (8 * v15))) + 2;
    v16 = v19 + 2;
    if (v15 < 4)
    {
      v16 = v20;
    }
  }

LABEL_22:
  if (v16 == 1 && !(*(v6 + 48))(v11, 1, v4))
  {
    (*(v6 + 8))(v11, v4);
  }

  v21 = *(v13 + v15);
  v22 = v21 - 2;
  if (v21 < 2)
  {
    goto LABEL_39;
  }

  if (v15 <= 3)
  {
    v23 = v15;
  }

  else
  {
    v23 = 4;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *v13;
    }

    else if (v23 == 3)
    {
      v24 = *v13 | (*(v13 + 2) << 16);
    }

    else
    {
      v24 = *v13;
    }

LABEL_37:
    v25 = (v24 | (v22 << (8 * v15))) + 2;
    v21 = v24 + 2;
    if (v15 < 4)
    {
      v21 = v25;
    }

    goto LABEL_39;
  }

  if (v23)
  {
    v24 = *v13;
    goto LABEL_37;
  }

LABEL_39:
  if (v21 == 1)
  {
    if ((*(v6 + 48))(v13, 1, v4))
    {
      memcpy(v11, v13, v14);
      v26 = 1;
    }

    else
    {
      (*(v6 + 32))(v11, v13, v4);
      v26 = 1;
      (*(v6 + 56))(v11, 0, 1, v4);
    }
  }

  else
  {
    v26 = 0;
    *v11 = *v13;
  }

  v11[v15] = v26;
LABEL_45:
  if (v7)
  {
    v27 = v12;
  }

  else
  {
    v27 = v12 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v28 = v27 + 1;
  v29 = (&v11[v28 + 3] & 0xFFFFFFFFFFFFFFFCLL);
  v30 = ((v13 + v28 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v29 = *v30;
  v29[1] = v30[1];
  v31 = ((v29 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v32 = ((v30 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v31 = *v32;
  v31[1] = v32[1];
  *((v31 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ListScrollable(int *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = 8;
  if (v4 > 8)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = *(v3 + 80) & 0xFC;
  v7 = v6 | 3;
  v8 = v5 + 4;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v11 = ((((((v8 + ((v6 + 11) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  v13 = a2 - 2147483646;
  if ((v11 & 0xFFFFFFF8) != 0)
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
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == 4)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else if (v15 == 2)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
LABEL_8:
      v9 = *((((((v8 + ((a1 + v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v9 >= 0xFFFFFFFF)
      {
        LODWORD(v9) = -1;
      }

      return (v9 + 1);
    }
  }

  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    v18 = *a1;
  }

  else
  {
    v18 = 0;
  }

  return (v18 | v17) ^ 0x80000000;
}

int *storeEnumTagSinglePayload for ListScrollable(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 80) & 0xFCLL;
  v6 = v5 | 3;
  v7 = (v5 + 11) & ~(v5 | 3);
  if (*(v4 + 84))
  {
    v8 = *(v4 + 64);
  }

  else
  {
    v8 = *(v4 + 64) + 1;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v9 = v8 + 4;
  v10 = ((((((v9 + v7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v12 = a3 - 2147483646;
    if (((((((v9 + v7) & 0xFFFFFFFC) + 11) & 0xFFFFFFFC) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
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
      v11 = 1;
    }

    else
    {
      v11 = v13;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    v14 = a2 & 0x7FFFFFFF;
    if (v10)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14 + 1;
    }

    if (v10)
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v14;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(result + v10) = v15;
      }

      else
      {
        *(result + v10) = v15;
      }
    }

    else if (v11)
    {
      *(result + v10) = v15;
    }

    return result;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v11 <= 1)
  {
    if (v11)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (v11 == 2)
  {
    *(result + v10) = 0;
    goto LABEL_31;
  }

  *(result + v10) = 0;
  if (a2)
  {
LABEL_32:
    *((((((v9 + ((result + v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ApplyCollectionViewIDsVisitor(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for ApplyCollectionViewIDsVisitor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for ApplyCollectionViewIDsVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ApplyCollectionViewIDsVisitor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplyCollectionViewIDsVisitor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with take of BridgedListState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TableRowList?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined assign with take of BridgedListState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BridgedListState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TableRowList?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for TableContentVisitor<TableDataSourceAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t destroy for ExplicitIDFromViewListIDVisitor(uint64_t a1)
{

  if (*(a1 + 40))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  }

  return result;
}

uint64_t initializeWithCopy for ExplicitIDFromViewListIDVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 40);

  if (v4)
  {
    v5 = *(a2 + 48);
    *(a1 + 40) = v4;
    *(a1 + 48) = v5;
    (**(v4 - 8))(a1 + 16, a2 + 16, v4);
  }

  else
  {
    v6 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v6;
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

uint64_t assignWithCopy for ExplicitIDFromViewListIDVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    v5 = (a1 + 16);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 16));
    }

    else
    {
      outlined destroy of AnyHashable(v5);
      v6 = *(a2 + 48);
      v7 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v7;
      *(a1 + 48) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 40) = v4;
    *(a1 + 48) = *(a2 + 48);
    (**(v4 - 8))(a1 + 16, a2 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 16) = v8;
    *(a1 + 32) = v9;
  }

  return a1;
}

uint64_t assignWithTake for ExplicitIDFromViewListIDVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 16);
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 16);
    }
  }

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for ExplicitIDFromViewListIDVisitor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ExplicitIDFromViewListIDVisitor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ExplicitIDOffsetVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for ExplicitIDOffsetVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v4;
  return a1;
}

uint64_t assignWithTake for ExplicitIDOffsetVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for ExplicitIDOffsetVisitor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ExplicitIDOffsetVisitor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t EnvironmentValues.pageIndexDisplayMode.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PageIndexDisplayMode.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PageIndexDisplayMode.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t static PageTabViewStyle._makeView<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v19 = *(a2 + 32);
  v20 = v6;
  v8 = *(a2 + 48);
  v21 = *(a2 + 64);
  v9 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v9;
  v14 = v19;
  v15 = v8;
  v16 = *(a2 + 64);
  v10 = *a1;
  v22 = *(a2 + 80);
  v17 = *(a2 + 80);
  v12 = v18[0];
  v13 = v7;
  LOBYTE(v25[0]) = 0;
  outlined init with copy of _ViewInputs(v18, &v27);
  PropertyList.subscript.setter();
  type metadata accessor for PageTabView();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  LODWORD(v25[0]) = v10;
  *&v27 = &type metadata for PageTabViewStyle;
  *(&v27 + 1) = a3;
  *&v28 = &protocol witness table for PageTabViewStyle;
  *(&v28 + 1) = a4;
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  LODWORD(v27) = _GraphValue.value.getter();
  type metadata accessor for PageTabViewStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v23[2] = v14;
  v23[3] = v15;
  v23[4] = v16;
  v24 = v17;
  v23[0] = v12;
  v23[1] = v13;
  outlined init with copy of _ViewInputs(v23, &v27);
  swift_getWitnessTable();
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v25[2] = v14;
  v25[3] = v15;
  v25[4] = v16;
  v26 = v17;
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ViewInputs(v25);
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v27 = v12;
  v28 = v13;
  return outlined destroy of _ViewInputs(&v27);
}

uint64_t static PageTabViewStyle._makeViewList<A>(value:inputs:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of _ViewListInputs(a2, v3);
  PropertyList.subscript.setter();
  type metadata accessor for PageTabView();
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for PageTabViewStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  static View.makeDebuggableViewList(view:inputs:)();
  return outlined destroy of _ViewListInputs(v3);
}

uint64_t PageTabViewStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _TabViewValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t PageTabViewStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v28[0] = &type metadata for PageTabViewStyle;
  v28[1] = a2;
  v28[2] = &protocol witness table for PageTabViewStyle;
  v28[3] = a3;
  v10 = type metadata accessor for _TabViewValue();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v21 = type metadata accessor for PageTabView();
  MEMORY[0x1EEE9AC00](v21);
  v18 = &v21 - v17;
  PageTabViewStyle.Body.base.getter(v16);
  v19 = *v16;
  (*(v11 + 8))(v16, v10);
  LOBYTE(v28[0]) = v19;
  PageTabViewStyle.Body.base.getter(v13);
  (*(v22 + 32))(v9, &v13[*(v10 + 52)], v23);
  PageTabView.init(displayMode:selection:)(v28, v9, v18);
  v25 = a2;
  v26 = a3;
  v27 = a1;
  type metadata accessor for TabViewStyleConfiguration.Content();
  return _VariadicView.Tree.init(_:content:)();
}

uint64_t PageTabView.init(displayMode:selection:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for PageTabView() + 36);
  type metadata accessor for Binding();
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t closure #1 in PageTabViewStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = &type metadata for PageTabViewStyle;
  v10[1] = a2;
  v10[2] = &protocol witness table for PageTabViewStyle;
  v10[3] = a3;
  v3 = type metadata accessor for _TabViewValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  PageTabViewStyle.Body.base.getter(v10 - v5);
  (*(v4 + 8))(v6, v3);
  v7 = type metadata accessor for TabViewStyleConfiguration.Content();
  v8 = static ViewBuilder.buildExpression<A>(_:)(v7, v7, &protocol witness table for TabViewStyleConfiguration<A>.Content);
  return static ViewBuilder.buildExpression<A>(_:)(v8, v7, &protocol witness table for TabViewStyleConfiguration<A>.Content);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance PageTabViewStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PageTabView();
  type metadata accessor for TabViewStyleConfiguration.Content();
  v2 = type metadata accessor for _VariadicView.Tree();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t type metadata completion function for PageTabView()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for PageTabView(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((v7 + 16) & ~v7) + *(v5 + 64);
  if (v7 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-2 - (v7 | 7)) | v7 | 7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v12 = a2 & 0xFFFFFFFFFFFFFFF8;
    v13 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v17 = (*(v5 + 48))(v13 + 1, v6, v4);
      v16 = v3 & 0xFFFFFFFFFFFFFFF8;
      if (v17)
      {
LABEL_13:
        memcpy((v16 + 8), (v12 + 8), v8);
        return v3;
      }
    }

    else
    {
      v14 = *v13;
      if (*v13 >= 0xFFFFFFFF)
      {
        LODWORD(v14) = -1;
      }

      v15 = v14 + 1;
      v16 = v3 & 0xFFFFFFFFFFFFFFF8;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    *(v16 + 8) = *(v12 + 8);
    v18 = v16 + 23;
    *(v18 & 0xFFFFFFFFFFFFFFF8) = *v13;
    v19 = (v18 & 0xFFFFFFFFFFFFFFF8) + 8;
    v20 = *(v5 + 16);

    v20(v19, v13 + 1, v4);
    return v3;
  }

  v11 = *a2;
  *v3 = *a2;
  v3 = v11 + ((v7 + 16) & ~(v7 | 7));

  return v3;
}

uint64_t destroy for PageTabView(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = ~v5;
  v7 = ((((a1 + (v5 | 7) + 1) & ~(v5 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v3 + 84) & 0x80000000) != 0)
  {
    v11 = *(*(a2 + 16) - 8);
    result = (*(v3 + 48))((v7 + v5 + 8) & v6);
    v4 = v11;
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v8 = *v7;
  if (*v7 >= 0xFFFFFFFF)
  {
    LODWORD(v8) = -1;
  }

  result = (v8 + 1);
  if (v8 == -1)
  {
LABEL_7:
    v12 = v4;

    v10 = *(v12 + 8);

    return v10((v7 + v5 + 8) & v6, v2);
  }

  return result;
}

_BYTE *initializeWithCopy for PageTabView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 1;
  v8 = (&a1[v7] & ~(v6 | 7));
  v9 = (&a2[v7] & ~(v6 | 7));
  v10 = ~v6;
  v11 = *(v5 + 64);
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v8 = *v9;
    v14 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v15 = v14 + v6 + 8;
    v16 = *(v5 + 16);

    v16(v15 & v10, (v12 + v6 + 8) & v10, v4);
    return a1;
  }

  if (!(*(v5 + 48))((v12 + v6 + 8) & v10))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v8, v9, ((v6 + 16) & ~v6) + v11);
  return a1;
}

_BYTE *assignWithCopy for PageTabView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 1;
  v8 = (&a1[v7] & ~(v6 | 7));
  v9 = &a2[v7];
  v10 = (v9 & ~(v6 | 7));
  v11 = *(v5 + 84);
  v12 = ~v6;
  v13 = (v6 + 16) & ~v6;
  v14 = *(v5 + 64);
  v15 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v33 = v9 & ~(v6 | 7);
    v22 = *(v5 + 48);
    v31 = *(v5 + 64);
    v30 = v22((v15 + v6 + 8) & ~v6, v11, v4);
    v16 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    v12 = ~v6;
    v18 = v22((v16 + v6 + 8) & ~v6, v11, v4);
    v14 = v31;
    v13 = (v6 + 16) & ~v6;
    v3 = a1;
    v10 = v33;
    if (!v30)
    {
LABEL_5:
      if (!v18)
      {
        *v8 = *v10;

        *v15 = *v16;

        (*(v5 + 24))((v15 + v6 + 8) & v12, (v16 + v6 + 8) & v12, v4);
        return v3;
      }

      v19 = v13;
      v20 = v14;

      (*(v5 + 8))((v15 + v6 + 8) & v12, v4);
      v21 = v19 + v20;
      goto LABEL_10;
    }
  }

  else
  {
    v16 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v15 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v18)
  {
    *v8 = *v10;
    *v15 = *v16;
    v23 = v6 + 8;
    v24 = v4;
    v25 = v15 + v6 + 8;
    v26 = v12;
    v27 = v16 + v23;
    v28 = *(v5 + 16);

    v28(v25 & v26, v27 & v26, v24);
    return v3;
  }

  v21 = v13 + v14;
LABEL_10:
  memcpy(v8, v10, v21);
  return v3;
}

_BYTE *initializeWithTake for PageTabView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 1;
  v8 = (&a1[v7] & ~(v6 | 7));
  v9 = (&a2[v7] & ~(v6 | 7));
  v10 = ~v6;
  v11 = *(v5 + 64);
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v8 = *v9;
    v14 = (v8 + 15);
    *(v14 & 0xFFFFFFFFFFFFFFF8) = *v12;
    (*(v5 + 32))((v6 + 8 + (v14 & 0xFFFFFFFFFFFFFFF8)) & v10, (v12 + v6 + 8) & v10, v4);
    return a1;
  }

  if (!(*(v5 + 48))((v12 + v6 + 8) & v10))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v8, v9, ((v6 + 16) & ~v6) + v11);
  return a1;
}

_BYTE *assignWithTake for PageTabView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 | 7) + 1;
  v8 = (&a1[v7] & ~(v6 | 7));
  v9 = (&a2[v7] & ~(v6 | 7));
  v10 = *(v5 + 84);
  v11 = ~v6;
  v12 = (v6 + 16) & ~v6;
  v13 = *(v5 + 64);
  v14 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 0x80000000) != 0)
  {
    v21 = *(v5 + 48);
    v24 = *(v5 + 64);
    v23 = v21((v14 + v6 + 8) & ~v6, v10, v4);
    v15 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = ~v6;
    v17 = v21((v15 + v6 + 8) & ~v6, v10, v4);
    v13 = v24;
    v12 = (v6 + 16) & ~v6;
    v3 = a1;
    if (!v23)
    {
LABEL_5:
      if (!v17)
      {
        *v8 = *v9;

        *v14 = *v15;

        (*(v5 + 40))((v14 + v6 + 8) & v11, (v15 + v6 + 8) & v11, v4);
        return v3;
      }

      v18 = v12;
      v19 = v13;

      (*(v5 + 8))((v14 + v6 + 8) & v11, v4);
      v20 = v18 + v19;
      goto LABEL_10;
    }
  }

  else
  {
    v15 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = *v15;
    if (*v15 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v16) = -1;
    }

    v17 = v16 + 1;
    if (*v14 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v17)
  {
    *v8 = *v9;
    *v14 = *v15;
    (*(v5 + 32))((v14 + v6 + 8) & v11, (v15 + v6 + 8) & v11, v4);
    return v3;
  }

  v20 = v12 + v13;
LABEL_10:
  memcpy(v8, v9, v20);
  return v3;
}

uint64_t getEnumTagSinglePayload for PageTabView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = v6 | 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) - ((-17 - v6) | v6) - ((-2 - v8) | v8) - 2;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_7;
  }

  v13 = (((1 << v10) + a2 - v7) >> v10) + 1;
  if (HIWORD(v13))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_28:
    v17 = ((((a1 + v8 + 1) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      v19 = (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v19 = v18 + 1;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 > 0xFF)
  {
    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v13 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - ((-17 - v6) | v6) - ((-2 - v8) | v8) == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v9 <= 3)
    {
      v15 = *(*(*(a3 + 16) - 8) + 64) - ((-17 - v6) | v6) - ((-2 - v8) | v8) - 2;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v16 = *a1;
      }
    }

    else if (v15 == 1)
    {
      v16 = *a1;
    }

    else
    {
      v16 = *a1;
    }
  }

  return (v16 | v14) + v7;
}

void storeEnumTagSinglePayload for PageTabView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = -2 - (((-2 - (v10 | 7)) | v10 | 7) + ((-17 - v10) | v10) - *(*(*(a4 + 16) - 8) + 64));
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = (((&a1[(v10 | 7) + 1] & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
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
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

uint64_t instantiation function for generic protocol witness table for PageTabView<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

BOOL protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IndexViewPlacementModifier.IsAutomaticPredicate()
{
  lazy protocol witness table accessor for type IndexViewPlacementModifier.Input and conformance IndexViewPlacementModifier.Input();
  PropertyList.subscript.getter();
  return (v1 & 1) == 0;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IndexViewPlacementModifier.IsToolbarPredicate()
{
  lazy protocol witness table accessor for type IndexViewPlacementModifier.Input and conformance IndexViewPlacementModifier.Input();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance IndexViewPlacementModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance IndexViewPlacementModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type IndexViewPlacementModifier and conformance IndexViewPlacementModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance IndexViewPlacementModifier()
{
  AGGraphGetValue();
  lazy protocol witness table accessor for type IndexViewPlacementModifier.Input and conformance IndexViewPlacementModifier.Input();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type PageIndexDisplayMode and conformance PageIndexDisplayMode()
{
  result = lazy protocol witness table cache variable for type PageIndexDisplayMode and conformance PageIndexDisplayMode;
  if (!lazy protocol witness table cache variable for type PageIndexDisplayMode and conformance PageIndexDisplayMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PageIndexDisplayMode and conformance PageIndexDisplayMode);
  }

  return result;
}

uint64_t PageTabView.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  outlined init with copy of _VariadicView_Children(a1, v14);
  (*(v8 + 16))(v10, &v3[*(a2 + 36)], v7);
  v13 = *v3;
  return PageViewWrapper.init(children:selection:displayMode:)(v14, v10, &v13, a3);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance PageTabView<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type _IndexViewPlacement.Role and conformance _IndexViewPlacement.Role()
{
  result = lazy protocol witness table cache variable for type _IndexViewPlacement.Role and conformance _IndexViewPlacement.Role;
  if (!lazy protocol witness table cache variable for type _IndexViewPlacement.Role and conformance _IndexViewPlacement.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _IndexViewPlacement.Role and conformance _IndexViewPlacement.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexViewPlacementModifier.Input and conformance IndexViewPlacementModifier.Input()
{
  result = lazy protocol witness table cache variable for type IndexViewPlacementModifier.Input and conformance IndexViewPlacementModifier.Input;
  if (!lazy protocol witness table cache variable for type IndexViewPlacementModifier.Input and conformance IndexViewPlacementModifier.Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewPlacementModifier.Input and conformance IndexViewPlacementModifier.Input);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexViewPlacementModifier.Input and conformance IndexViewPlacementModifier.Input;
  if (!lazy protocol witness table cache variable for type IndexViewPlacementModifier.Input and conformance IndexViewPlacementModifier.Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewPlacementModifier.Input and conformance IndexViewPlacementModifier.Input);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<PageIndexDisplayMode.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<PageIndexDisplayMode.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PageIndexDisplayMode.Key>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<PageIndexDisplayMode.Key>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PageIndexDisplayMode.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t ParameterizedLazyView.init(value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for ParameterizedLazyView();
  v9 = (a5 + *(result + 44));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t ParameterizedLazyView.body.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  (*(v1 + *(v11 + 44)))(v12, v8);
  v13 = *(a1 + 32);
  static ViewBuilder.buildExpression<A>(_:)(v6, v3, v13);
  v14 = *(v4 + 8);
  v14(v6, v3);
  static ViewBuilder.buildExpression<A>(_:)(v10, v3, v13);
  return (v14)(v10, v3);
}

uint64_t View.paletteSelectionEffect(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.paletteSelectionEffect.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PaletteSelectionEffectKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PaletteSelectionEffect> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PaletteSelectionEffectKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PaletteSelectionEffectKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PaletteSelectionEffect> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PaletteSelectionEffectKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.paletteSelectionEffect.getter@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PaletteSelectionEffectKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PaletteSelectionEffect> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PaletteSelectionEffectKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PaletteSelectionEffectKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PaletteSelectionEffect> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PaletteSelectionEffectKey>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<PaletteSelectionEffect>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PaletteSelectionEffect>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PaletteSelectionEffect>);
    }
  }
}

uint64_t getEnumTagSinglePayload for PaletteSelectionEffect.Guts(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65285;
  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 16)) - 65285;
  }

  if (v4)
  {
    v5 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v5 << 16)) - 65285;
    }
  }

LABEL_20:
  v7 = *(a1 + 1);
  if (v7 <= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = *(a1 + 1);
  }

  v9 = v8 - 3;
  if (v7 >= 3)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= 3)
  {
    return v10 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PaletteSelectionEffect.Guts(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65285;
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 2) = v6;
      }

      else
      {
        *(result + 2) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *(result + 1) = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<PaletteSelectionEffectKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<PaletteSelectionEffectKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PaletteSelectionEffectKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PaletteSelectionEffect> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int SidebarRowSize.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t EnvironmentValues.sidebarRowSize.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<SidebarRowSize.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SidebarRowSize.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

void type metadata accessor for EnvironmentPropertyKey<SidebarRowSize.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SidebarRowSize.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SidebarRowSize.Key>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SidebarRowSize.Key>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.sidebarRowSize : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<SidebarRowSize.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SidebarRowSize.Key>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.sidebarRowSize : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<SidebarRowSize.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.sidebarRowSize.setter()
{
  type metadata accessor for EnvironmentPropertyKey<SidebarRowSize.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues.sidebarRowSize.modify(uint64_t **a1))(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<SidebarRowSize.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.sidebarRowSize.modify;
}

uint64_t EnvironmentValues.sidebarRowSize.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<SidebarRowSize.Key>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SidebarRowSize.Key> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type SidebarRowSize and conformance SidebarRowSize()
{
  result = lazy protocol witness table cache variable for type SidebarRowSize and conformance SidebarRowSize;
  if (!lazy protocol witness table cache variable for type SidebarRowSize and conformance SidebarRowSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarRowSize and conformance SidebarRowSize);
  }

  return result;
}

uint64_t ViewResponderGestureContainer.description.getter()
{
  swift_getObjectType();
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer_responder;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    v4 = *Strong;
    v5 = *(v3 + 32);

    v5(v4, v3);
    v6 = _typeName(_:qualified:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  v21 = _typeName(_:qualified:)();
  v22 = v9;
  MEMORY[0x18D00C9B0](60, 0xE100000000000000);
  MEMORY[0x18D00C9B0](v6, v8);

  MEMORY[0x18D00C9B0](62, 0xE100000000000000);
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    v11 = *v10;
    v12 = swift_conformsToProtocol2();
    if (v12 && (v13 = v12, v14 = *(v12 + 72), v14(&v19, v11, v12), v19 != 3))
    {
      v19 = 32;
      v20 = 0xE100000000000000;
      v14(&v18, v11, v13);
      if (v18 <= 1u)
      {
        if (v18)
        {
          v16 = 0xD000000000000017;
        }

        else
        {
          v16 = 0xD000000000000019;
        }

        if (v18)
        {
          v15 = 0x800000018CD4C300;
        }

        else
        {
          v15 = 0x800000018CD4C320;
        }
      }

      else if (v18 == 2)
      {
        v16 = 0xD000000000000014;
        v15 = 0x800000018CD4C2E0;
      }

      else if (v18 == 3)
      {
        v15 = 0xE700000000000000;
        v16 = 0x746C7561666564;
      }

      else
      {
        v15 = 0xEC00000079746972;
        v16 = 0x6F69725068676968;
      }

      MEMORY[0x18D00C9B0](v16, v15);

      MEMORY[0x18D00C9B0](v19, v20);
    }

    else
    {
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  MEMORY[0x18D00C9B0](32, 0xE100000000000000);
  v18 = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](v19, v20);

  return v21;
}

uint64_t ViewResponder.parentGestureContainer.getter()
{
  v1 = v0;

  v2 = v0;
  while (1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v4 = Strong;
    v5 = dispatch thunk of ViewResponder.gestureContainer.getter();
    if (v5)
    {
      v16 = v5;

LABEL_19:

      return v16;
    }

    type metadata accessor for UIViewResponder();
    if (swift_dynamicCastClass())
    {

      if (UIViewResponder._shouldUsePlatformViewAsParentContainer.getter())
      {
        swift_beginAccess();
        v6 = swift_unknownObjectWeakLoadStrong();

        if (v6)
        {

          return v6;
        }

        goto LABEL_4;
      }
    }

LABEL_4:
    type metadata accessor for GraphHost();
    v2 = v4;
    if (static GraphHost.isUpdating.getter())
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        v16 = ViewGraphDelegate.uiView.getter(ObjectType, v17);
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      goto LABEL_25;
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v2 + 24);
    v9 = swift_getObjectType();
    v10 = type metadata accessor for EventGraphHost();
    (*(v8 + 16))(v21, v10, v10, v9, v8);
    swift_unknownObjectRelease();
    if (v21[0])
    {
      v11 = v21[1];
      v12 = swift_getObjectType();
      v13 = *(v11 + 16);

      v14 = v13(v12, v11);
      if (!v14)
      {
        swift_unknownObjectRelease();

        return 0;
      }

      v15 = v14;

      if (v2 != v15)
      {

        swift_unknownObjectRelease();
        return 0;
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v1 + 24);
        v20 = swift_getObjectType();
        v16 = ViewGraphDelegate.uiView.getter(v20, v19);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      swift_unknownObjectRelease();
    }
  }

LABEL_25:

  return 0;
}

char *ViewResponderGestureContainer.init(responder:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer_responder + 8] = 0;
  v7 = swift_weakInit();
  v8 = &v3[OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer_subgraphObserver];
  *v8 = 0;
  v8[8] = 1;
  *&v3[OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer_registeredGestureRecognizers] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer__actingParentContainer] = 0;
  *(v7 + 8) = a2;
  swift_weakAssign();
  v17.receiver = v3;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, sel_init);
  v10 = *a1;
  v11 = *(a2 + 8);
  v12 = v9;
  v13 = v11(v10, a2);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = AGSubgraphAddObserver();

  v15 = &v12[OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer_subgraphObserver];
  *v15 = v14;
  v15[8] = 0;

  return v12;
}

void closure #1 in ViewResponderGestureContainer.init(responder:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ViewResponderGestureContainer.unregister()();
    v2 = &v1[OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer_subgraphObserver];
    *v2 = 0;
    v2[8] = 1;
  }
}

uint64_t ViewResponderGestureContainer.unregister()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer_responder;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*(v2 + 8) + 24))(*Strong);
  }

  v4 = OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer_registeredGestureRecognizers;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    do
    {
      outlined init with copy of WeakBox<UIGestureRecognizer>(v7, &v11);
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        _UIGestureRecognizerUnregisterFromContainer();
      }

      outlined destroy of WeakBox<UIGestureRecognizer>(&v11);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  *(v1 + v4) = MEMORY[0x1E69E7CC0];
}

uint64_t ViewResponderGestureContainer._nextPlatformResponder.getter()
{
  if (*(v0 + OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer__actingParentContainer) && (objc_opt_self(), (v1 = swift_dynamicCastObjCClass()) != 0))
  {
    v2 = v1;
    swift_unknownObjectRetain();
    return v2;
  }

  else if (!swift_weakLoadStrong() || (v4 = ViewResponder.parentGestureContainer.getter(), , (result = v4) == 0))
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = result;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 24);
        ObjectType = swift_getObjectType();
        v8 = ViewGraphDelegate.uiView.getter(ObjectType, v6);

        swift_unknownObjectRelease();
        return v8;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t ViewResponderGestureContainer.gestureRecognizers.getter()
{
  Strong = swift_weakLoadStrong();
  v2 = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    return v2;
  }

  v18 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](Strong);
  static Update.ensure<A>(_:)();
  v2 = v18;
  if (v18 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = OBJC_IVAR____TtC7SwiftUI29ViewResponderGestureContainer_registeredGestureRecognizers;
  swift_beginAccess();
  v5 = *(v0 + v4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + v4) = v5;
  if (!isUniquelyReferenced_nonNull_native || v3 > v5[3] >> 1)
  {
    if (v5[2] <= v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = v5[2];
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v7, 0, v5);
  }

  *(v0 + v4) = v5;
  result = swift_endAccess();
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    v9 = result;
    if (!result)
    {
LABEL_24:

      return v2;
    }
  }

  else
  {
    v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x18D00E9C0](v10, v2);
      }

      else
      {
        v11 = *(v2 + 8 * v10 + 32);
      }

      v12 = v11;
      _UIGestureRecognizerRegisterInContainer();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      v13 = *(v0 + v4);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + v4) = v13;
      if ((v14 & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
        *(v0 + v4) = v13;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
      }

      ++v10;
      v13[2] = v16 + 1;
      outlined init with take of WeakBox<UIGestureRecognizer>(v17, &v13[v16 + 4]);
      *(v0 + v4) = v13;
      swift_endAccess();
    }

    while (v9 != v10);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in ViewResponderGestureContainer.gestureRecognizers.getter(void *a1, void *a2, uint64_t a3)
{
  result = (*(a3 + 16))(*a2, a3);
  v4 = result;
  v5 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = result + 40;
    v15 = result + 40;
    v16 = *(result + 16);
    do
    {
      v9 = v6 - v7;
      v10 = (v8 + 16 * v7);
      while (1)
      {
        if (v7 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = *v10;
        ObjectType = swift_getObjectType();
        v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer);
        v14 = *(v11 + 16);
        swift_unknownObjectRetain();
        v14(&v18, v13, v13, ObjectType, v11);
        result = swift_unknownObjectRelease();
        if (v18)
        {
          break;
        }

        v10 += 2;
        ++v7;
        if (!--v9)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x18D00CC30](result);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v7;
      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v19;
      v8 = v15;
      v6 = v16;
    }

    while (v9 != 1);
  }

LABEL_11:

  *a1 = v5;
}

uint64_t ViewResponderGestureContainer._childContainers.getter()
{
  if (swift_weakLoadStrong())
  {
    v0 = ViewResponder.childGestureContainers.getter();

    if (!(v0 >> 62))
    {
      goto LABEL_3;
    }

LABEL_7:
    type metadata accessor for _UIGestureRecognizerContainer();

    v3 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    return v3;
  }

  v0 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_7;
  }

LABEL_3:
  v1 = v0 & 0xFFFFFFFFFFFFFF8;

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for _UIGestureRecognizerContainer();
  if (swift_dynamicCastMetatype() || (v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {
LABEL_4:
  }

  else
  {
    v5 = v1 + 32;
    while (swift_dynamicCastObjCProtocolConditional())
    {
      v5 += 8;
      if (!--v4)
      {
        goto LABEL_4;
      }
    }

    return v1 | 1;
  }

  return v0;
}

unint64_t ViewResponder.childGestureContainers.getter()
{
  v40 = MEMORY[0x1E69E7CC0];
  v0 = dispatch thunk of ViewResponder.children.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v37 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x1E69E7CC0];
    v32 = v1;
    v34 = i;
    v35 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        MEMORY[0x18D00E9C0](v3, v1);
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          break;
        }

        goto LABEL_12;
      }

      if (v3 >= *(v37 + 16))
      {
        goto LABEL_52;
      }

      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

LABEL_12:
      v7 = dispatch thunk of ViewResponder.gestureContainer.getter();
      if (v7)
      {
LABEL_13:
        v8 = v7;
        MEMORY[0x18D00CC30]();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v40;
        if (v3 == i)
        {
LABEL_50:

          return v5;
        }
      }

      else
      {
        type metadata accessor for UIViewResponder();
        v7 = swift_dynamicCastClass();
        if (v7)
        {

          if (UIViewResponder._shouldUsePlatformViewAsParentContainer.getter())
          {
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();

            v7 = Strong;
            if (Strong)
            {
              goto LABEL_13;
            }
          }

          else
          {
          }
        }

        v10 = ViewResponder.childGestureContainers.getter(v7);
        v11 = v10;
        v12 = v10 >> 62;
        if (v10 >> 62)
        {
          v13 = __CocoaSet.count.getter();
        }

        else
        {
          v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = v5 >> 62;
        if (v5 >> 62)
        {
          v15 = __CocoaSet.count.getter();
        }

        else
        {
          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v13;
        v6 = __OFADD__(v15, v13);
        v16 = v15 + v13;
        if (v6)
        {
          goto LABEL_53;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v14)
          {
            v17 = v5 & 0xFFFFFFFFFFFFFF8;
            if (v16 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

LABEL_32:
          __CocoaSet.count.getter();
          goto LABEL_33;
        }

        if (v14)
        {
          goto LABEL_32;
        }

LABEL_33:
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v17 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_34:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v12)
        {
          v21 = v17;
          v22 = __CocoaSet.count.getter();
          v17 = v21;
          v20 = v22;
          if (!v22)
          {
LABEL_4:

            v4 = v35;
            if (v38 > 0)
            {
              goto LABEL_54;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v20)
          {
            goto LABEL_4;
          }
        }

        if (((v19 >> 1) - v18) < v38)
        {
          goto LABEL_55;
        }

        v23 = v17 + 8 * v18 + 32;
        v36 = v17;
        if (v12)
        {
          if (v20 < 1)
          {
            goto LABEL_57;
          }

          v33 = v5;
          type metadata accessor for [UIResponder & _UIGestureRecognizerContainer]();
          lazy protocol witness table accessor for type [UIResponder & _UIGestureRecognizerContainer] and conformance [A]();
          for (j = 0; j != v20; ++j)
          {
            v26 = specialized protocol witness for Collection.subscript.read in conformance [A](v39, j, v11);
            v28 = *v27;
            (v26)(v39, 0);
            *(v23 + 8 * j) = v28;
          }

          v1 = v32;
          v5 = v33;
          v24 = v38;
        }

        else
        {
          type metadata accessor for UIResponder & _UIGestureRecognizerContainer();
          v24 = v38;
          swift_arrayInitWithCopy();
        }

        i = v34;
        v4 = v35;
        if (v24 > 0)
        {
          v29 = *(v36 + 16);
          v6 = __OFADD__(v29, v24);
          v30 = v29 + v24;
          if (v6)
          {
            goto LABEL_56;
          }

          *(v36 + 16) = v30;
        }

LABEL_5:
        v40 = v5;
        if (v3 == i)
        {
          goto LABEL_50;
        }
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *ViewResponderGestureContainer._eventReceivingWindow.getter()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v1 = Strong[3];
      ObjectType = swift_getObjectType();
      v3 = ViewGraphDelegate.uiView.getter(ObjectType, v1);
      swift_unknownObjectRelease();
    }

    else
    {

      v3 = 0;
    }

    Strong = [v3 window];
  }

  return Strong;
}

uint64_t ViewResponderGestureContainer._proxyView.getter()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v4 = ViewGraphDelegate.uiView.getter(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t type metadata accessor for _UIGestureRecognizerContainer()
{
  result = lazy cache variable for type metadata for _UIGestureRecognizerContainer;
  if (!lazy cache variable for type metadata for _UIGestureRecognizerContainer)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _UIGestureRecognizerContainer);
  }

  return result;
}

uint64_t outlined init with take of WeakBox<UIGestureRecognizer>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<UIGestureRecognizer>();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for WeakBox<UIGestureRecognizer>()
{
  if (!lazy cache variable for type metadata for WeakBox<UIGestureRecognizer>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIGestureRecognizer);
    v0 = type metadata accessor for WeakBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WeakBox<UIGestureRecognizer>);
    }
  }
}

unint64_t type metadata accessor for UIResponder & _UIGestureRecognizerContainer()
{
  result = lazy cache variable for type metadata for UIResponder & _UIGestureRecognizerContainer;
  if (!lazy cache variable for type metadata for UIResponder & _UIGestureRecognizerContainer)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIResponder);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIResponder & _UIGestureRecognizerContainer);
  }

  return result;
}

uint64_t outlined init with copy of WeakBox<UIGestureRecognizer>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBox<UIGestureRecognizer>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WeakBox<UIGestureRecognizer>(uint64_t a1)
{
  type metadata accessor for WeakBox<UIGestureRecognizer>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ContentMarginPlacement.Role and conformance ContentMarginPlacement.Role()
{
  result = lazy protocol witness table cache variable for type ContentMarginPlacement.Role and conformance ContentMarginPlacement.Role;
  if (!lazy protocol witness table cache variable for type ContentMarginPlacement.Role and conformance ContentMarginPlacement.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentMarginPlacement.Role and conformance ContentMarginPlacement.Role);
  }

  return result;
}

double closure #1 in CircularPercentageGauge.body.getter@<D0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  result = 58.0;
  *a3 = xmmword_18CD8A050;
  *(a3 + 16) = v10;
  *(a3 + 24) = 0;
  *(a3 + 32) = a4;
  *(a3 + 40) = a1 & 1;
  *(a3 + 41) = BYTE1(a1) & 1;
  *(a3 + 42) = BYTE2(a1) & 1;
  *(a3 + 48) = v11;
  *(a3 + 56) = 0;
  *(a3 + 57) = a2;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = 0;
  *(a3 + 80) = v9;
  *(a3 + 88) = 0;
  return result;
}

double protocol witness for View.body.getter in conformance CircularPercentageGauge@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 10);
  closure #1 in CircularPercentageGauge.body.getter(v4 | (v5 << 8) | (v6 << 16), 1, v13, v3);
  closure #1 in CircularPercentageGauge.body.getter(v4 | (v5 << 8) | (v6 << 16), 0, v18, v3);
  v7 = v18[3];
  a1[8] = v18[2];
  a1[9] = v7;
  a1[10] = v19[0];
  *(a1 + 169) = *(v19 + 9);
  v8 = v17;
  a1[4] = v16;
  a1[5] = v8;
  v9 = v18[1];
  a1[6] = v18[0];
  a1[7] = v9;
  v10 = v13[1];
  *a1 = v13[0];
  a1[1] = v10;
  result = *&v14;
  v12 = v15;
  a1[2] = v14;
  a1[3] = v12;
  return result;
}

uint64_t SizedCircularPercentageGauge.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v26 = v1[3];
  v27[0] = v4;
  *(v27 + 9) = *(v1 + 73);
  v5 = v1[1];
  v25[0] = *v1;
  v25[1] = v5;
  v25[2] = v3;
  specialized Environment.wrappedValue.getter(v26, SBYTE8(v26));
  v6 = swift_allocObject();
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v6[5] = v1[4];
  *(v6 + 89) = *(v1 + 73);
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  outlined init with copy of SizedCircularPercentageGauge(v25, &v16);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v24 = v17;
  v23 = v19;
  v22 = 0;
  result = swift_getKeyPath();
  *a1 = partial apply for closure #1 in SizedCircularPercentageGauge.body.getter;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = 0x3FF0000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = result;
  *(a1 + 88) = 0x3F847AE147AE147BLL;
  return result;
}

void *closure #1 in SizedCircularPercentageGauge.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in closure #1 in SizedCircularPercentageGauge.body.getter(a2, v12, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  outlined init with copy of TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>(__dst, &v10, type metadata accessor for TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>);
  outlined destroy of TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>(v15, type metadata accessor for TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>);
  *a3 = v6;
  a3[1] = v8;
  return memcpy(a3 + 2, __dst, 0x118uLL);
}

uint64_t closure #1 in closure #1 in SizedCircularPercentageGauge.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  specialized Environment.wrappedValue.getter(*(a1 + 64), *(a1 + 72), &v52);
  if (v52 & 2) != 0 && (specialized Environment.wrappedValue.getter(*(a1 + 80), *(a1 + 88)))
  {
    v6 = 0.0;
  }

  v8 = specialized Environment.wrappedValue.getter(*(a1 + 16), *(a1 + 24));
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  if (v8)
  {
    v35 = v8;
  }

  else
  {
    *&v52 = static Color.primary.getter();
    v35 = AnyShapeStyle.init<A>(_:)();
  }

  v34 = static HorizontalAlignment.center.getter();
  v33 = static VerticalAlignment.center.getter();
  v9 = a2[1];
  v52 = *a2;
  v53 = v9;
  *v54 = a2[2];
  *&v54[16] = *(a2 + 12);
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v74[53] = v80;
  *&v74[69] = v81;
  *&v74[85] = v82;
  *&v74[101] = v83;
  *&v74[5] = v77;
  v76 = 1;
  v10 = v7 & 1;
  v75 = v10;
  *&v74[21] = v78;
  *&v74[37] = v79;
  v11 = a2[1];
  v52 = *a2;
  v53 = v11;
  *v54 = a2[2];
  *&v54[16] = *(a2 + 12);
  GeometryProxy.size.getter();
  static Font.Weight.medium.getter();
  LOBYTE(v52) = 4;
  v32 = static Font.system(size:weight:design:)();
  v12 = swift_getKeyPath();
  v13 = a2[1];
  v70 = *a2;
  v71 = v13;
  v72 = a2[2];
  v73 = *(a2 + 12);
  GeometryProxy.size.getter();
  v14 = a2[1];
  v66 = *a2;
  v67 = v14;
  v68 = a2[2];
  v69 = *(a2 + 12);
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v45[0] = v34;
  v45[1] = 0;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = v33;
  *v47 = 0;
  *&v47[8] = 1;
  v47[10] = v10;
  v15 = *&v74[48];
  *&v47[75] = *&v74[64];
  v16 = *&v74[64];
  *&v47[91] = *&v74[80];
  v17 = *&v74[80];
  *&v47[107] = *&v74[96];
  *&v47[11] = *v74;
  v18 = *v74;
  v19 = *&v74[16];
  *&v47[27] = *&v74[16];
  *&v47[43] = *&v74[32];
  v20 = *&v74[32];
  *&v47[59] = *&v74[48];
  *&v47[120] = *&v74[109];
  *&v48 = v12;
  *(&v48 + 1) = v32;
  v21 = v42;
  v49 = v42;
  v50 = v43;
  v22 = v43;
  v51 = v44;
  *&v39[183] = v42;
  *&v39[199] = v43;
  *&v39[215] = v44;
  *&v39[103] = *&v47[64];
  *&v39[119] = *&v47[80];
  *&v39[135] = *&v47[96];
  *&v39[151] = *&v47[112];
  *&v39[39] = *v47;
  *&v39[55] = *&v47[16];
  *&v39[71] = *&v47[32];
  *&v39[87] = *&v47[48];
  v23 = v44;
  *&v39[7] = v34;
  *&v39[23] = v46;
  *&v39[167] = v48;
  *a3 = v6;
  v24 = *&v39[160];
  *(a3 + 225) = *&v39[176];
  v25 = *&v39[208];
  *(a3 + 241) = *&v39[192];
  *(a3 + 257) = v25;
  v26 = *&v39[96];
  *(a3 + 161) = *&v39[112];
  v27 = *&v39[144];
  *(a3 + 177) = *&v39[128];
  *(a3 + 193) = v27;
  *(a3 + 209) = v24;
  v28 = *&v39[32];
  *(a3 + 97) = *&v39[48];
  v29 = *&v39[80];
  *(a3 + 113) = *&v39[64];
  *(a3 + 129) = v29;
  *(a3 + 145) = v26;
  v30 = *&v39[16];
  *(a3 + 49) = *v39;
  *(a3 + 65) = v30;
  *(a3 + 81) = v28;
  v58 = v16;
  v59 = v17;
  *v60 = *&v74[96];
  *&v54[11] = v18;
  v55 = v19;
  v56 = v20;
  v41 = 0;
  v40 = 0;
  *(a3 + 8) = v35;
  *(a3 + 16) = KeyPath;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = v36;
  *(a3 + 48) = 0;
  *(a3 + 272) = *&v39[223];
  v52 = v34;
  LOBYTE(v53) = 1;
  *(&v53 + 1) = v33;
  *v54 = 0;
  *&v54[8] = 1;
  v54[10] = v10;
  v57 = v15;
  *&v60[13] = *&v74[109];
  v61 = v12;
  v62 = v32;
  v63 = v21;
  v64 = v22;
  v65 = v23;

  outlined copy of Environment<(Color, Color)?>.Content(KeyPath, 0, 0);
  outlined copy of Environment<Selector?>.Content(v36, 0);
  outlined init with copy of TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>(v45, &v38, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>);
  outlined destroy of TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>(&v52, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>);

  outlined consume of Environment<(Color, Color)?>.Content(KeyPath, 0, 0);
  return outlined consume of Environment<Selector?>.Content(v36, 0);
}

uint64_t CircularPercentageGaugeRing.resolvedTint.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  AnyShapeStyle.as<A>(type:)();
  v4 = v9[0];
  if (v9[0])
  {

    specialized Environment.wrappedValue.getter(v2, v3, v9);
    if (LOBYTE(v9[0]) == 1)
    {
      v5 = Gradient.reversed.getter();

      v4 = v5;
    }

    static UnitPoint.center.getter();
    v9[0] = v4;
    v9[1] = v6;
    v9[2] = v7;
    v10 = xmmword_18CDAC970;
    return AnyShapeStyle.init<A>(_:)();
  }

  else
  {
    AnyShapeStyle.as<A>(type:)();
  }

  return v1;
}

uint64_t CircularPercentageGaugeRing.resolvedStartCapColor.getter()
{
  v1 = *(v0 + 8);
  if (specialized Environment.wrappedValue.getter(*(v0 + 16), *(v0 + 24), *(v0 + 32)))
  {
    v1 = AnyShapeStyle.init<A>(_:)();
  }

  else
  {

    AnyShapeStyle.as<A>(type:)();
    if (v3)
    {

      Gradient.color(at:)();

      return AnyShapeStyle.init<A>(_:)();
    }

    else
    {
      AnyShapeStyle.as<A>(type:)();
    }
  }

  return v1;
}

uint64_t CircularPercentageGaugeRing.resolvedEndCapColor.getter()
{
  v1 = *(v0 + 8);
  if (specialized Environment.wrappedValue.getter(*(v0 + 16), *(v0 + 24), *(v0 + 32)))
  {
    v1 = AnyShapeStyle.init<A>(_:)();
  }

  else
  {

    AnyShapeStyle.as<A>(type:)();
    if (v3)
    {

      Gradient.color(at:)();

      return AnyShapeStyle.init<A>(_:)();
    }

    else
    {
      AnyShapeStyle.as<A>(type:)();
    }
  }

  return v1;
}

uint64_t CircularPercentageGaugeRing.init(fractionCompleted:tint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  if (!a1)
  {
    static Color.primary.getter();
  }

  result = AnyShapeStyle.init<A>(_:)();
  *a2 = a3;
  *(a2 + 8) = result;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0;
  return result;
}

__n128 closure #1 in CircularPercentageGaugeRing.body.getter@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v51 = *a1;
  v52 = v5;
  v7 = *a1;
  v6 = a1[1];
  v53 = a1[2];
  v54 = *(a1 + 12);
  v55 = v7;
  v56 = v6;
  v57 = a1[2];
  v58 = *(a1 + 12);
  GeometryProxy.size.getter();
  v9 = v8;
  GeometryProxy.size.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 / 10.5;
  v13 = static Alignment.center.getter();
  v15 = v14;
  closure #1 in closure #1 in CircularPercentageGaugeRing.body.getter(a2, &v23, v12);
  v46 = v33;
  v47 = v34;
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v36 = v23;
  v37 = v24;
  v49[10] = v33;
  v49[11] = v34;
  v49[6] = v29;
  v49[7] = v30;
  v49[8] = v31;
  v49[9] = v32;
  v49[2] = v25;
  v49[3] = v26;
  v49[4] = v27;
  v49[5] = v28;
  v48 = v35;
  v50 = v35;
  v49[0] = v23;
  v49[1] = v24;
  outlined init with copy of TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>(&v36, &v22, type metadata accessor for TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>);
  outlined destroy of TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>(v49, type metadata accessor for TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>);
  *a3 = v13;
  *(a3 + 8) = v15;
  v16 = v47;
  *(a3 + 176) = v46;
  *(a3 + 192) = v16;
  *(a3 + 208) = v48;
  v17 = v43;
  *(a3 + 112) = v42;
  *(a3 + 128) = v17;
  v18 = v45;
  *(a3 + 144) = v44;
  *(a3 + 160) = v18;
  v19 = v39;
  *(a3 + 48) = v38;
  *(a3 + 64) = v19;
  v20 = v41;
  *(a3 + 80) = v40;
  *(a3 + 96) = v20;
  result = v37;
  *(a3 + 16) = v36;
  *(a3 + 32) = result;
  return result;
}

uint64_t closure #1 in closure #1 in CircularPercentageGaugeRing.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 32);
  if (specialized Environment.wrappedValue.getter(v6, v7, v8))
  {
    *&v91 = v9;

    v51 = AnyShapeStyle.init<A>(_:)();
  }

  else
  {
    v10 = a1[1];
    v91 = *a1;
    v92 = v10;
    v93 = a1[2];
    LOBYTE(v94) = *(a1 + 48);
    *&v91 = CircularPercentageGaugeRing.resolvedTint.getter();
    DWORD2(v91) = 1051931443;
    type metadata accessor for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>(0, &lazy cache variable for type metadata for _OpacityShapeStyle<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type _OpacityShapeStyle<AnyShapeStyle> and conformance _OpacityShapeStyle<A>();
    v51 = AnyShapeStyle.init<A>(_:)();
  }

  v11 = 0.0;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v12 = v105;
  v13 = v106;
  v14 = v107;
  v15 = v108;
  v48 = v109;
  v16 = v110;
  v17 = static Alignment.center.getter();
  v49 = v18;
  v50 = v17;
  v19 = *a1;
  if (*a1 <= 0.0)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0.0;
    v24 = 0;
    v25 = 0.0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    a3 = 0.0;
  }

  else
  {
    v20 = specialized Environment.wrappedValue.getter(v6, v7, v8);
    if (v20)
    {
      *&v91 = v20;
      v47 = AnyShapeStyle.init<A>(_:)();
    }

    else
    {
      v29 = a1[1];
      v91 = *a1;
      v92 = v29;
      v93 = a1[2];
      LOBYTE(v94) = *(a1 + 48);
      v47 = CircularPercentageGaugeRing.resolvedTint.getter();
    }

    v30 = a1[1];
    v91 = *a1;
    v92 = v30;
    v93 = a1[2];
    LOBYTE(v94) = *(a1 + 48);
    started = CircularPercentageGaugeRing.resolvedStartCapColor.getter();
    if (v19 <= 0.5)
    {
      v23 = 0.0;
      v24 = 0;
      v32 = 0;
      v25 = v19;
    }

    else
    {
      v31 = specialized Environment.wrappedValue.getter(v6, v7, v8);
      if (v31)
      {
        *&v91 = v31;
        v24 = AnyShapeStyle.init<A>(_:)();
      }

      else
      {
        v33 = a1[1];
        v91 = *a1;
        v92 = v33;
        v93 = a1[2];
        LOBYTE(v94) = *(a1 + 48);
        v24 = CircularPercentageGaugeRing.resolvedTint.getter();
      }

      v25 = v19;

      v32 = 256;
      v23 = v19;
      v11 = a3;
    }

    specialized Environment.wrappedValue.getter(*(a1 + 5), *(a1 + 48), &v82);
    v34 = a1[1];
    v91 = *a1;
    v92 = v34;
    v93 = a1[2];
    LOBYTE(v94) = *(a1 + 48);
    v26 = CircularPercentageGaugeRing.resolvedEndCapColor.getter();

    v28 = 1;
    v22 = started;
    v21 = v47;
    v27 = v32;
  }

  *&v77 = v12 * 0.5;
  *(&v77 + 1) = v12;
  *&v78 = __PAIR64__(v14, v13);
  *(&v78 + 1) = v15;
  *&v79 = v48;
  *(&v79 + 1) = v16;
  *&v80 = v51;
  WORD4(v80) = 256;
  HIWORD(v80) = v104;
  *(&v80 + 10) = v103;
  *&v81 = v50;
  *(&v81 + 1) = v49;
  v64 = v77;
  v67 = v80;
  v68 = v81;
  v65 = v78;
  v66 = v79;
  *&v82 = v25;
  *(&v82 + 1) = a3;
  *&v83 = v28;
  *(&v83 + 1) = v21;
  *&v84 = v28 << 8;
  *(&v84 + 1) = v22;
  *&v85 = a3;
  *(&v85 + 1) = v23;
  v86 = v11;
  v87 = 0;
  *&v88 = v24;
  *(&v88 + 1) = v27;
  *&v89 = a3;
  *(&v89 + 1) = v25;
  v90 = v26;
  v71 = v84;
  v72 = v85;
  v69 = v82;
  v70 = v83;
  v76 = v26;
  v74 = v88;
  v75 = v89;
  v73 = *&v11;
  v35 = v77;
  v36 = v78;
  v37 = v80;
  v38 = v81;
  *(a2 + 32) = v79;
  *(a2 + 48) = v37;
  *a2 = v35;
  *(a2 + 16) = v36;
  v39 = v69;
  v40 = v71;
  v41 = v72;
  *(a2 + 96) = v70;
  *(a2 + 112) = v40;
  *(a2 + 64) = v38;
  *(a2 + 80) = v39;
  v42 = v73;
  v43 = v74;
  v44 = v75;
  *(a2 + 192) = v76;
  *(a2 + 160) = v43;
  *(a2 + 176) = v44;
  *(a2 + 128) = v41;
  *(a2 + 144) = v42;
  *&v91 = v25;
  *(&v91 + 1) = a3;
  *&v92 = v28;
  *(&v92 + 1) = v21;
  *&v93 = v28 << 8;
  *(&v93 + 1) = v22;
  v94 = a3;
  v95 = v23;
  v96 = v11;
  v97 = 0;
  v98 = v24;
  v99 = v27;
  v100 = a3;
  v101 = v25;
  v102 = v26;
  outlined init with copy of TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>(&v77, v52, type metadata accessor for StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>);
  outlined init with copy of TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>(&v82, v52, type metadata accessor for TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?);
  outlined destroy of TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>(&v91, type metadata accessor for TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?);
  v52[0] = v12 * 0.5;
  v52[1] = v12;
  v53 = v13;
  v54 = v14;
  v55 = v15;
  v56 = v48;
  v57 = v16;
  v58 = v51;
  v59 = 256;
  v60 = v103;
  v61 = v104;
  v62 = v50;
  v63 = v49;
  return outlined destroy of TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>(v52, type metadata accessor for StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>);
}

uint64_t CircularPercentageGaugeRing.StartCap.content(proxy:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  GeometryProxy.size.getter();
  v8 = v6 * 0.5;
  v9 = v7 * 0.5;
  if (v7 * 0.5 >= v6 * 0.5)
  {
    v10 = v6 * 0.5;
  }

  else
  {
    v10 = v7 * 0.5;
  }

  static UnitPoint.center.getter();
  *a2 = xmmword_18CDAC980;
  *(a2 + 16) = 0x3FF921FB54442D18;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = a3;
  *(a2 + 48) = a3;
  *(a2 + 56) = a1;
  *(a2 + 64) = 256;
  *(a2 + 72) = v8 - a3 * 0.5;
  *(a2 + 80) = v9 - v10;
  *(a2 + 88) = 1;
}

uint64_t protocol witness for View.body.getter in conformance CircularPercentageGaugeRing.StartCap@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = partial apply for implicit closure #2 in implicit closure #1 in CircularPercentageGaugeRing.StartCap.body.getter;
  a1[1] = v5;
}

uint64_t CircularPercentageGaugeRing.EndCap.content(proxy:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  GeometryProxy.size.getter();
  v10 = v8 * 0.5;
  if (v9 * 0.5 >= v8 * 0.5)
  {
    v11 = v8 * 0.5;
  }

  else
  {
    v11 = v9 * 0.5;
  }

  v12 = v9 * 0.5 - v11;
  v13 = static Color.black.getter();

  result = static UnitPoint.center.getter();
  *a2 = a3;
  *(a2 + 8) = a3;
  *(a2 + 16) = a1;
  *(a2 + 24) = 256;
  *(a2 + 32) = v13;
  *(a2 + 40) = v11 * 0.03;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = v10 - a3 * 0.5;
  *(a2 + 72) = v12;
  *(a2 + 80) = a3;
  *(a2 + 88) = a3;
  *(a2 + 96) = v10 + -1.0;
  *(a2 + 104) = v12;
  *(a2 + 112) = 0;
  *(a2 + 120) = a4 * 3.14159265 + a4 * 3.14159265;
  *(a2 + 128) = v15;
  *(a2 + 136) = v16;
  *(a2 + 144) = 1;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance CircularPercentageGaugeRing.EndCap@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 4) = v5;
  *a1 = partial apply for implicit closure #2 in implicit closure #1 in CircularPercentageGaugeRing.EndCap.body.getter;
  a1[1] = v6;
}

double CircularPercentageGaugeRing.RingArc.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetMidX(*&a2);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetMidY(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetWidth(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetHeight(v26);
  v18 = 0x3FF0000000000000;
  v19 = 0;
  v20 = 0;
  v21 = 0x3FF0000000000000;
  v22 = 0;
  v23 = 0;
  Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  memset(v16, 0, sizeof(v16));
  v17 = 6;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  outlined destroy of StrokeStyle(v12);
  outlined destroy of Path(v16);
  result = *&v13;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v15;
  return result;
}

double protocol witness for Shape.path(in:) in conformance CircularPercentageGaugeRing.RingArc@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CircularPercentageGaugeRing.RingArc.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

__n128 protocol witness for Animatable.animatableData.getter in conformance CircularPercentageGaugeRing.RingArc@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance CircularPercentageGaugeRing.RingArc(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 (*protocol witness for Animatable.animatableData.modify in conformance CircularPercentageGaugeRing.RingArc(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance CircularPercentageGaugeRing.RingArc;
}

__n128 protocol witness for Animatable.animatableData.modify in conformance CircularPercentageGaugeRing.RingArc(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

__n128 protocol witness for View.body.getter in conformance CircularPercentageGaugeRing.RingArc@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 17) = 256;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance CircularPercentageGaugeRing@<X0>(double (**a1)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v8[2] = *(v1 + 32);
  v9 = *(v1 + 48);
  v4 = swift_allocObject();
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  *(v4 + 64) = *(v1 + 48);
  *a1 = partial apply for closure #1 in CircularPercentageGaugeRing.body.getter;
  a1[1] = v4;
  return outlined init with copy of CircularPercentageGaugeRing(v8, v7);
}

uint64_t AccessoryCircularCapacityGaugeStyle.makeBody(configuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = 256;
  if (!*(result + 9))
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (!*(result + 10))
  {
    v5 = 0;
  }

  v6 = v5 | *(result + 8) | v4;
  if (*v2)
  {
    v6 |= 0x1000000uLL;
  }

  *a2 = *result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3 ^ 1;
  return result;
}

double CircularProgressGaugeStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 9) = v4;
  *(a2 + 10) = v5;
  return result;
}

double protocol witness for GaugeStyle.makeBody(configuration:) in conformance CircularProgressGaugeStyle@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 9) = v4;
  *(a2 + 10) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>(255, &lazy cache variable for type metadata for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>, &type metadata for HalfOpenCircularGauge, &type metadata for CircularPercentageGauge, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type HalfOpenCircularGauge and conformance HalfOpenCircularGauge();
    lazy protocol witness table accessor for type CircularPercentageGauge and conformance CircularPercentageGauge();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HalfOpenCircularGauge and conformance HalfOpenCircularGauge()
{
  result = lazy protocol witness table cache variable for type HalfOpenCircularGauge and conformance HalfOpenCircularGauge;
  if (!lazy protocol witness table cache variable for type HalfOpenCircularGauge and conformance HalfOpenCircularGauge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HalfOpenCircularGauge and conformance HalfOpenCircularGauge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CircularPercentageGauge and conformance CircularPercentageGauge()
{
  result = lazy protocol witness table cache variable for type CircularPercentageGauge and conformance CircularPercentageGauge;
  if (!lazy protocol witness table cache variable for type CircularPercentageGauge and conformance CircularPercentageGauge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CircularPercentageGauge and conformance CircularPercentageGauge);
  }

  return result;
}

uint64_t destroy for SizedCircularPercentageGauge(uint64_t a1)
{
  outlined consume of Environment<AnyShapeStyle?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 48), *(a1 + 56));
  outlined consume of Environment<Selector?>.Content(*(a1 + 64), *(a1 + 72));
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for SizedCircularPercentageGauge(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of Environment<Color?>.Content(v4, v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 39) = *(v2 + 39);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 57) = *(v2 + 57);
  v8 = *(v2 + 64);
  v9 = *(v2 + 72);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  v10 = *(v2 + 80);
  LOBYTE(v2) = *(v2 + 88);
  outlined copy of Environment<Selector?>.Content(v10, v2);
  *(a1 + 80) = v10;
  *(a1 + 88) = v2;
  return a1;
}

uint64_t assignWithCopy for SizedCircularPercentageGauge(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of Environment<Color?>.Content(v4, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined consume of Environment<AnyShapeStyle?>.Content(v6, v7);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 40) = *(v2 + 40);
  *(a1 + 41) = *(v2 + 41);
  *(a1 + 42) = *(v2 + 42);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  *(a1 + 57) = *(v2 + 57);
  v12 = *(v2 + 64);
  v13 = *(v2 + 72);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  v16 = *(v2 + 80);
  LOBYTE(v2) = *(v2 + 88);
  outlined copy of Environment<Selector?>.Content(v16, v2);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  *(a1 + 80) = v16;
  *(a1 + 88) = v2;
  outlined consume of Environment<Selector?>.Content(v17, v18);
  return a1;
}

uint64_t assignWithTake for SizedCircularPercentageGauge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  outlined consume of Environment<AnyShapeStyle?>.Content(v6, v7);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v8 = *(a2 + 56);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  *(a1 + 57) = *(a2 + 57);
  v11 = *(a2 + 72);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = *(a2 + 88);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v14;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for SizedCircularPercentageGauge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SizedCircularPercentageGauge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t outlined copy of Environment<(Color, Color)?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return outlined copy of (Color, Color)?(result);
  }

  else
  {
  }
}

uint64_t destroy for CircularPercentageGaugeRing(uint64_t a1)
{

  outlined consume of Environment<(Color, Color)?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t outlined consume of Environment<(Color, Color)?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(result);
  }

  else
  {
  }
}

uint64_t initializeWithCopy for CircularPercentageGaugeRing(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);

  outlined copy of Environment<(Color, Color)?>.Content(v5, v6, v7);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  LOBYTE(v2) = *(v2 + 48);
  outlined copy of Environment<Selector?>.Content(v8, v2);
  *(a1 + 40) = v8;
  *(a1 + 48) = v2;
  return a1;
}

uint64_t assignWithCopy for CircularPercentageGaugeRing(uint64_t a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;
  *(a1 + 8) = a2[1];

  v4 = v2[2];
  v5 = v2[3];
  v6 = *(v2 + 32);
  outlined copy of Environment<(Color, Color)?>.Content(v4, v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  outlined consume of Environment<(Color, Color)?>.Content(v7, v8, v9);
  v10 = v2[5];
  LOBYTE(v2) = *(v2 + 48);
  outlined copy of Environment<Selector?>.Content(v10, v2);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 40) = v10;
  *(a1 + 48) = v2;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  return a1;
}

uint64_t assignWithTake for CircularPercentageGaugeRing(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of Environment<(Color, Color)?>.Content(v5, v6, v7);
  v8 = *(a2 + 48);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  return a1;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedCircularPercentageGauge, SizedCircularPercentageGauge> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedCircularPercentageGauge, SizedCircularPercentageGauge> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedCircularPercentageGauge, SizedCircularPercentageGauge> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedCircularPercentageGauge, SizedCircularPercentageGauge>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type SizedCircularPercentageGauge and conformance SizedCircularPercentageGauge();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedCircularPercentageGauge, SizedCircularPercentageGauge> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedCircularPercentageGauge, SizedCircularPercentageGauge>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedCircularPercentageGauge, SizedCircularPercentageGauge>)
  {
    type metadata accessor for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, MEMORY[0x1E6980678], MEMORY[0x1E6980670], MEMORY[0x1E69801E0]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, SizedCircularPercentageGauge, SizedCircularPercentageGauge>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SizedCircularPercentageGauge and conformance SizedCircularPercentageGauge()
{
  result = lazy protocol witness table cache variable for type SizedCircularPercentageGauge and conformance SizedCircularPercentageGauge;
  if (!lazy protocol witness table cache variable for type SizedCircularPercentageGauge and conformance SizedCircularPercentageGauge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SizedCircularPercentageGauge and conformance SizedCircularPercentageGauge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TimelineProgressViewBaseEmptyState and conformance _TimelineProgressViewBaseEmptyState()
{
  result = lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState and conformance _TimelineProgressViewBaseEmptyState;
  if (!lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState and conformance _TimelineProgressViewBaseEmptyState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState and conformance _TimelineProgressViewBaseEmptyState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState and conformance _TimelineProgressViewBaseEmptyState;
  if (!lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState and conformance _TimelineProgressViewBaseEmptyState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimelineProgressViewBaseEmptyState and conformance _TimelineProgressViewBaseEmptyState);
  }

  return result;
}

void type metadata accessor for (ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>))
  {
    type metadata accessor for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>(255, &lazy cache variable for type metadata for ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, &type metadata for CircularPercentageGaugeRing, MEMORY[0x1E6980900], MEMORY[0x1E697E830]);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>();
    type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>, lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, &type metadata for IconOnlyLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, type metadata accessor for ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, type metadata accessor for _EnvironmentKeyWritingModifier<Font?>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>()
{
  if (!lazy cache variable for type metadata for VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>)
  {
    type metadata accessor for _ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>();
    lazy protocol witness table accessor for type _ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>)
  {
    type metadata accessor for HStack<GaugeStyleConfiguration.CurrentValueLabel?>();
    type metadata accessor for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>(255, &lazy cache variable for type metadata for HStack<GaugeStyleConfiguration.Label>, &type metadata for GaugeStyleConfiguration.Label, &protocol witness table for GaugeStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for HStack<GaugeStyleConfiguration.CurrentValueLabel?>()
{
  if (!lazy cache variable for type metadata for HStack<GaugeStyleConfiguration.CurrentValueLabel?>)
  {
    type metadata accessor for GaugeStyleConfiguration.CurrentValueLabel?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.CurrentValueLabel?, &type metadata for GaugeStyleConfiguration.CurrentValueLabel, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel? and conformance <A> A?();
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<GaugeStyleConfiguration.CurrentValueLabel?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel? and conformance <A> A?)
  {
    type metadata accessor for GaugeStyleConfiguration.CurrentValueLabel?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.CurrentValueLabel?, &type metadata for GaugeStyleConfiguration.CurrentValueLabel, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>();
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type HStack<GaugeStyleConfiguration.CurrentValueLabel?> and conformance HStack<A>, type metadata accessor for HStack<GaugeStyleConfiguration.CurrentValueLabel?>);
    lazy protocol witness table accessor for type HStack<GaugeStyleConfiguration.Label> and conformance HStack<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStack<GaugeStyleConfiguration.Label> and conformance HStack<A>()
{
  result = lazy protocol witness table cache variable for type HStack<GaugeStyleConfiguration.Label> and conformance HStack<A>;
  if (!lazy protocol witness table cache variable for type HStack<GaugeStyleConfiguration.Label> and conformance HStack<A>)
  {
    type metadata accessor for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>(255, &lazy cache variable for type metadata for HStack<GaugeStyleConfiguration.Label>, &type metadata for GaugeStyleConfiguration.Label, &protocol witness table for GaugeStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStack<GaugeStyleConfiguration.Label> and conformance HStack<A>);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)()
{
  if (!lazy cache variable for type metadata for (StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?))
  {
    type metadata accessor for StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>();
    type metadata accessor for TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?));
    }
  }
}

void type metadata accessor for StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>()
{
  if (!lazy cache variable for type metadata for StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>)
  {
    lazy protocol witness table accessor for type Circle and conformance Circle();
    v0 = type metadata accessor for StrokeBorderShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)()
{
  if (!lazy cache variable for type metadata for (_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap))
  {
    type metadata accessor for _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>(255, &lazy cache variable for type metadata for _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>);
    type metadata accessor for _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap));
    }
  }
}

unint64_t lazy protocol witness table accessor for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc()
{
  result = lazy protocol witness table cache variable for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc;
  if (!lazy protocol witness table cache variable for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc;
  if (!lazy protocol witness table cache variable for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc;
  if (!lazy protocol witness table cache variable for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc);
  }

  return result;
}

void type metadata accessor for _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?()
{
  if (!lazy cache variable for type metadata for _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?)
  {
    type metadata accessor for _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>(255, &lazy cache variable for type metadata for _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?);
    }
  }
}

uint64_t outlined init with copy of TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *assignWithCopy for CircularPercentageGaugeRing.EndCap(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for CircularPercentageGaugeRing.StartCap(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for CircularPercentageGaugeRing.StartCap(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout>, lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout>(255);
    type metadata accessor for GaugeStyleConfiguration.CurrentValueLabel?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

void type metadata accessor for GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>()
{
  if (!lazy cache variable for type metadata for GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>)
  {
    type metadata accessor for ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>();
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>);
    v0 = type metadata accessor for GeometryReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>(255);
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>);
    }
  }
}

void type metadata accessor for GaugeStyleConfiguration.CurrentValueLabel?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>(255);
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>> and conformance GeometryReader<A>, type metadata accessor for GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for GaugeStyleConfiguration.CurrentValueLabel?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for GeometryReader<ZStack<TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>>>()
{
  if (!lazy cache variable for type metadata for GeometryReader<ZStack<TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>>>)
  {
    type metadata accessor for ZStack<TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>>();
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>>);
    v0 = type metadata accessor for GeometryReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryReader<ZStack<TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>>>);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>>)
  {
    type metadata accessor for TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>(255);
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(StrokeBorderShapeView<Circle, AnyShapeStyle, EmptyView>, TupleView<(_ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>, CircularPercentageGaugeRing.StartCap, _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>?, CircularPercentageGaugeRing.EndCap)>?)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ShapeView<CircularPercentageGaugeRing.RingArc, ForegroundStyle> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<CircularPercentageGaugeRing.RingArc, ForegroundStyle> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<CircularPercentageGaugeRing.RingArc, ForegroundStyle> and conformance _ShapeView<A, B>)
  {
    type metadata accessor for _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>(255, &lazy cache variable for type metadata for _ShapeView<CircularPercentageGaugeRing.RingArc, ForegroundStyle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<CircularPercentageGaugeRing.RingArc, ForegroundStyle> and conformance _ShapeView<A, B>);
  }

  return result;
}

void type metadata accessor for _ShapeView<CircularPercentageGaugeRing.RingArc, AnyShapeStyle>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc();
    v3 = type metadata accessor for _ShapeView();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for AnimatablePair<Double, CGFloat>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<Double, CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<Double, CGFloat>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for CircularPercentageGaugeRing.RingArc(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc();
  result = lazy protocol witness table accessor for type CircularPercentageGaugeRing.RingArc and conformance CircularPercentageGaugeRing.RingArc();
  *(a1 + 16) = result;
  return result;
}

void type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, _RotationEffect>, _LayoutDirectionBehaviorEffect>>()
{
  if (!lazy cache variable for type metadata for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, _RotationEffect>, _LayoutDirectionBehaviorEffect>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, _RotationEffect>, _LayoutDirectionBehaviorEffect>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, _RotationEffect>, _LayoutDirectionBehaviorEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, _RotationEffect>, _LayoutDirectionBehaviorEffect>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for GeometryReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, _RotationEffect>, _LayoutDirectionBehaviorEffect>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, _RotationEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, _RotationEffect>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, type metadata accessor for _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, _RotationEffect>);
    }
  }
}

void type metadata accessor for _ShapeView<_SizedShape<Circle>, AnyShapeStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<_SizedShape<Circle>, AnyShapeStyle>)
  {
    type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>(255, &lazy cache variable for type metadata for _SizedShape<Circle>, lazy protocol witness table accessor for type Circle and conformance Circle, MEMORY[0x1E69817E8], MEMORY[0x1E697DDF0]);
    lazy protocol witness table accessor for type _SizedShape<Circle> and conformance _SizedShape<A>();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<_SizedShape<Circle>, AnyShapeStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _SizedShape<Circle> and conformance _SizedShape<A>()
{
  result = lazy protocol witness table cache variable for type _SizedShape<Circle> and conformance _SizedShape<A>;
  if (!lazy protocol witness table cache variable for type _SizedShape<Circle> and conformance _SizedShape<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>(255, &lazy cache variable for type metadata for _SizedShape<Circle>, lazy protocol witness table accessor for type Circle and conformance Circle, MEMORY[0x1E69817E8], MEMORY[0x1E697DDF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SizedShape<Circle> and conformance _SizedShape<A>);
  }

  return result;
}

void type metadata accessor for _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>()
{
  if (!lazy cache variable for type metadata for _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>)
  {
    type metadata accessor for OffsetShape<_SizedShape<Rectangle>>();
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type OffsetShape<_SizedShape<Rectangle>> and conformance OffsetShape<A>, type metadata accessor for OffsetShape<_SizedShape<Rectangle>>);
    v0 = type metadata accessor for _ClipEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>);
    }
  }
}

void type metadata accessor for OffsetShape<_SizedShape<Rectangle>>()
{
  if (!lazy cache variable for type metadata for OffsetShape<_SizedShape<Rectangle>>)
  {
    type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>(255, &lazy cache variable for type metadata for _SizedShape<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDF0]);
    lazy protocol witness table accessor for type _SizedShape<Rectangle> and conformance _SizedShape<A>();
    v0 = type metadata accessor for OffsetShape();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OffsetShape<_SizedShape<Rectangle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _SizedShape<Rectangle> and conformance _SizedShape<A>()
{
  result = lazy protocol witness table cache variable for type _SizedShape<Rectangle> and conformance _SizedShape<A>;
  if (!lazy protocol witness table cache variable for type _SizedShape<Rectangle> and conformance _SizedShape<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>(255, &lazy cache variable for type metadata for _SizedShape<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SizedShape<Rectangle> and conformance _SizedShape<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, type metadata accessor for _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, lazy protocol witness table accessor for type ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<OffsetShape<_SizedShape<Rectangle>>> and conformance _ClipEffect<A>, type metadata accessor for _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>, _OffsetEffect>, _ClipEffect<OffsetShape<_SizedShape<Rectangle>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect>(255);
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<_SizedShape<Circle>, AnyShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<_SizedShape<Circle>, AnyShapeStyle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<_SizedShape<Circle>, AnyShapeStyle>, _ShadowEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect>, _LayoutDirectionBehaviorEffect>>()
{
  if (!lazy cache variable for type metadata for GeometryReader<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect>, _LayoutDirectionBehaviorEffect>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect>, _LayoutDirectionBehaviorEffect>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect>, _LayoutDirectionBehaviorEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect>, _LayoutDirectionBehaviorEffect>, lazy protocol witness table accessor for type ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for GeometryReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect>, _LayoutDirectionBehaviorEffect>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>)
  {
    type metadata accessor for _SizedShape<RotatedShape<_TrimmedShape<Circle>>>();
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _SizedShape<RotatedShape<_TrimmedShape<Circle>>> and conformance _SizedShape<A>, type metadata accessor for _SizedShape<RotatedShape<_TrimmedShape<Circle>>>);
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>);
    }
  }
}

void type metadata accessor for _SizedShape<RotatedShape<_TrimmedShape<Circle>>>()
{
  if (!lazy cache variable for type metadata for _SizedShape<RotatedShape<_TrimmedShape<Circle>>>)
  {
    type metadata accessor for RotatedShape<_TrimmedShape<Circle>>();
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type RotatedShape<_TrimmedShape<Circle>> and conformance RotatedShape<A>, type metadata accessor for RotatedShape<_TrimmedShape<Circle>>);
    v0 = type metadata accessor for _SizedShape();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SizedShape<RotatedShape<_TrimmedShape<Circle>>>);
    }
  }
}

void type metadata accessor for RotatedShape<_TrimmedShape<Circle>>()
{
  if (!lazy cache variable for type metadata for RotatedShape<_TrimmedShape<Circle>>)
  {
    type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>(255, &lazy cache variable for type metadata for _TrimmedShape<Circle>, lazy protocol witness table accessor for type Circle and conformance Circle, MEMORY[0x1E69817E8], MEMORY[0x1E697E2D8]);
    lazy protocol witness table accessor for type _TrimmedShape<Circle> and conformance _TrimmedShape<A>();
    v0 = type metadata accessor for RotatedShape();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RotatedShape<_TrimmedShape<Circle>>);
    }
  }
}

void type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _TrimmedShape<Circle> and conformance _TrimmedShape<A>()
{
  result = lazy protocol witness table cache variable for type _TrimmedShape<Circle> and conformance _TrimmedShape<A>;
  if (!lazy protocol witness table cache variable for type _TrimmedShape<Circle> and conformance _TrimmedShape<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>(255, &lazy cache variable for type metadata for _TrimmedShape<Circle>, lazy protocol witness table accessor for type Circle and conformance Circle, MEMORY[0x1E69817E8], MEMORY[0x1E697E2D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TrimmedShape<Circle> and conformance _TrimmedShape<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(ModifiedContent<CircularPercentageGaugeRing, _ForegroundLayerViewModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<GaugeStyleConfiguration.CurrentValueLabel?>, HStack<GaugeStyleConfiguration.Label>>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)>>>, _FrameLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect>(255);
    lazy protocol witness table accessor for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<_SizedShape<RotatedShape<_TrimmedShape<Circle>>>, AnyShapeStyle>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #2 in SidebarSection.body.getter(_OWORD *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v2[3] = a1[2];
  v2[4] = v3;
  v2[5] = a1[4];
  *(v2 + 89) = *(a1 + 73);
  v4 = a1[1];
  v2[1] = *a1;
  v2[2] = v4;
  v6[12] = partial apply for closure #1 in closure #1 in closure #2 in SidebarSection.body.getter;
  v6[13] = v2;
  outlined init with copy of SidebarSection(a1, v6);
  type metadata accessor for CountViews<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, ();
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type CountViews<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebar, type metadata accessor for CountViews<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate,);
  View.countViewsRequiresNonEmptySource()();
}

void specialized SidebarSection.resolvedHeader<A>(base:)(uint64_t a1@<X8>)
{
  type metadata accessor for Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, Primiti(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized closure #1 in closure #1 in SidebarSection.resolvedHeader<A>(base:)(v1, v5);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButt(0);
  specialized closure #2 in closure #1 in SidebarSection.resolvedHeader<A>(base:)(v1, &v5[*(v6 + 44)]);
  v7 = *(v1 + 32);
  if (*(v1 + 41))
  {
    v8 = *(v1 + 40);
    v15 = *(v1 + 24);
    v16 = v7;
    v17 = v8 & 1;
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v18);
  }

  else
  {
    LOBYTE(v15) = *(v1 + 24) & 1;
    v16 = v7;
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
  }

  v9 = 1;
  if ((v18 & 1) == 0)
  {
    v9 = specialized Environment.wrappedValue.getter(*(v1 + 64), *(v1 + 72)) ^ 1;
  }

  v10 = v9 & 1;
  v11 = swift_allocObject();
  *(v11 + 16) = 1;
  *(v11 + 17) = v10;
  outlined init with take of Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod(v5, a1, type metadata accessor for Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, Primiti);
  type metadata accessor for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Recta();
  v13 = (a1 + *(v12 + 36));
  *v13 = closure #1 in View.outlineRoot(_:isExpanded:)partial apply;
  v13[1] = v11;
}

uint64_t specialized closure #1 in closure #1 in SidebarSection.resolvedHeader<A>(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 41))
  {
    v7 = swift_allocObject();
    v8 = *(a1 + 48);
    v7[3] = *(a1 + 32);
    v7[4] = v8;
    v7[5] = *(a1 + 64);
    *(v7 + 89) = *(a1 + 73);
    v9 = *(a1 + 16);
    v7[1] = *a1;
    v7[2] = v9;
    *v6 = 4;
    type metadata accessor for Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>(0);
    v11 = v10;
    v12 = &v6[*(v10 + 36)];
    *v12 = implicit closure #2 in implicit closure #1 in SidebarSection.headerWithOutlineDisclosure<A>(base:)partial apply;
    v12[1] = v7;
    type metadata accessor for ButtonAction();
    swift_storeEnumTagMultiPayload();
    v13 = &v6[*(v11 + 40)];
    outlined init with copy of SidebarSection(a1, v21);

    v14 = static VerticalAlignment.center.getter();
    LOBYTE(v25[0]) = 1;
    specialized closure #1 in closure #1 in SidebarSection.headerWithOutlineDisclosure<A>(base:)(a1, v21);

    *&v23[55] = v21[3];
    *&v23[39] = v21[2];
    *&v23[23] = v21[1];
    *&v23[7] = v21[0];
    v15 = *v23;
    *(v13 + 33) = *&v23[16];
    v16 = *&v23[48];
    *(v13 + 49) = *&v23[32];
    *(v13 + 65) = v16;
    v23[71] = v22;
    v17 = v25[0];
    *v13 = v14;
    *(v13 + 1) = 0;
    v13[16] = v17;
    *(v13 + 81) = *&v23[64];
    *(v13 + 17) = v15;
    *(v13 + 89) = v25[0];
    *(v13 + 23) = *(v25 + 3);
    v13[96] = 0;
    v18 = *v24;
    *(v13 + 25) = *&v24[3];
    *(v13 + 97) = v18;
    *(v13 + 13) = 1;
    outlined init with take of Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod(v6, a2, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>);
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>.Storage, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>, MEMORY[0x1E697F948]);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = static VerticalAlignment.center.getter();
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>.Storage, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>, MEMORY[0x1E697F948]);

    return swift_storeEnumTagMultiPayload();
  }
}

{
  type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 41))
  {
    v7 = swift_allocObject();
    v8 = *(a1 + 48);
    v7[3] = *(a1 + 32);
    v7[4] = v8;
    v7[5] = *(a1 + 64);
    *(v7 + 89) = *(a1 + 73);
    v9 = *(a1 + 16);
    v7[1] = *a1;
    v7[2] = v9;
    *v6 = 4;
    type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>(0);
    v11 = v10;
    v12 = &v6[*(v10 + 36)];
    *v12 = implicit closure #2 in implicit closure #1 in SidebarSection.headerWithOutlineDisclosure<A>(base:)partial apply;
    v12[1] = v7;
    type metadata accessor for ButtonAction();
    swift_storeEnumTagMultiPayload();
    v13 = &v6[*(v11 + 40)];
    outlined init with copy of SidebarSection(a1, v21);

    v14 = static VerticalAlignment.center.getter();
    LOBYTE(v25[0]) = 1;
    specialized closure #1 in closure #1 in SidebarSection.headerWithOutlineDisclosure<A>(base:)(a1, v21);

    *&v23[55] = v21[3];
    *&v23[39] = v21[2];
    *&v23[23] = v21[1];
    *&v23[7] = v21[0];
    v15 = *v23;
    *(v13 + 33) = *&v23[16];
    v16 = *&v23[48];
    *(v13 + 49) = *&v23[32];
    *(v13 + 65) = v16;
    v23[71] = v22;
    v17 = v25[0];
    *v13 = v14;
    *(v13 + 1) = 0;
    v13[16] = v17;
    *(v13 + 81) = *&v23[64];
    *(v13 + 17) = v15;
    *(v13 + 89) = v25[0];
    *(v13 + 23) = *(v25 + 3);
    v13[96] = 0;
    v18 = *v24;
    *(v13 + 25) = *&v24[3];
    *(v13 + 97) = v18;
    *(v13 + 13) = 1;
    outlined init with take of Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod(v6, a2, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>);
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>.Storage, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>, MEMORY[0x1E697F948]);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = static VerticalAlignment.center.getter();
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>.Storage, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>, MEMORY[0x1E697F948]);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t specialized closure #2 in closure #1 in SidebarSection.resolvedHeader<A>(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (specialized Environment.wrappedValue.getter(*(a1 + 64), *(a1 + 72)))
  {
    v7 = swift_allocObject();
    v8 = *(a1 + 48);
    v7[3] = *(a1 + 32);
    v7[4] = v8;
    v7[5] = *(a1 + 64);
    *(v7 + 89) = *(a1 + 73);
    v9 = *(a1 + 16);
    v7[1] = *a1;
    v7[2] = v9;
    *v6 = 4;
    type metadata accessor for Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>(0);
    v11 = v10;
    v12 = &v6[*(v10 + 36)];
    *v12 = implicit closure #2 in implicit closure #1 in SidebarSection.headerWithOutlineDisclosure<A>(base:)partial apply;
    v12[1] = v7;
    type metadata accessor for ButtonAction();
    swift_storeEnumTagMultiPayload();
    v13 = &v6[*(v11 + 40)];
    outlined init with copy of SidebarSection(a1, v21);

    v14 = static VerticalAlignment.center.getter();
    LOBYTE(v25[0]) = 1;
    specialized closure #1 in closure #1 in SidebarSection.headerWithOutlineDisclosure<A>(base:)(a1, v21);

    *&v23[55] = v21[3];
    *&v23[39] = v21[2];
    *&v23[23] = v21[1];
    *&v23[7] = v21[0];
    v15 = *v23;
    *(v13 + 33) = *&v23[16];
    v16 = *&v23[48];
    *(v13 + 49) = *&v23[32];
    *(v13 + 65) = v16;
    v23[71] = v22;
    v17 = v25[0];
    *v13 = v14;
    *(v13 + 1) = 0;
    v13[16] = v17;
    *(v13 + 81) = *&v23[64];
    *(v13 + 17) = v15;
    *(v13 + 89) = v25[0];
    *(v13 + 23) = *(v25 + 3);
    v13[96] = 0;
    v18 = *v24;
    *(v13 + 25) = *&v24[3];
    *(v13 + 97) = v18;
    *(v13 + 13) = 1;
    outlined init with take of Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod(v6, a2, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>);
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>.Storage, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>, MEMORY[0x1E697F948]);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = static VerticalAlignment.center.getter();
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>.Storage, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>, MEMORY[0x1E697F948]);

    return swift_storeEnumTagMultiPayload();
  }
}

{
  type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (specialized Environment.wrappedValue.getter(*(a1 + 64), *(a1 + 72)))
  {
    v7 = swift_allocObject();
    v8 = *(a1 + 48);
    v7[3] = *(a1 + 32);
    v7[4] = v8;
    v7[5] = *(a1 + 64);
    *(v7 + 89) = *(a1 + 73);
    v9 = *(a1 + 16);
    v7[1] = *a1;
    v7[2] = v9;
    *v6 = 4;
    type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>(0);
    v11 = v10;
    v12 = &v6[*(v10 + 36)];
    *v12 = partial apply for implicit closure #2 in implicit closure #1 in SidebarSection.headerWithOutlineDisclosure<A>(base:);
    v12[1] = v7;
    type metadata accessor for ButtonAction();
    swift_storeEnumTagMultiPayload();
    v13 = &v6[*(v11 + 40)];
    outlined init with copy of SidebarSection(a1, v21);

    v14 = static VerticalAlignment.center.getter();
    LOBYTE(v25[0]) = 1;
    specialized closure #1 in closure #1 in SidebarSection.headerWithOutlineDisclosure<A>(base:)(a1, v21);

    *&v23[55] = v21[3];
    *&v23[39] = v21[2];
    *&v23[23] = v21[1];
    *&v23[7] = v21[0];
    v15 = *v23;
    *(v13 + 33) = *&v23[16];
    v16 = *&v23[48];
    *(v13 + 49) = *&v23[32];
    *(v13 + 65) = v16;
    v23[71] = v22;
    v17 = v25[0];
    *v13 = v14;
    *(v13 + 1) = 0;
    v13[16] = v17;
    *(v13 + 81) = *&v23[64];
    *(v13 + 17) = v15;
    *(v13 + 89) = v25[0];
    *(v13 + 23) = *(v25 + 3);
    v13[96] = 0;
    v18 = *v24;
    *(v13 + 25) = *&v24[3];
    *(v13 + 97) = v18;
    *(v13 + 13) = 1;
    outlined init with take of Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod(v6, a2, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>);
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>.Storage, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>, MEMORY[0x1E697F948]);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = static VerticalAlignment.center.getter();
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>.Storage, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>, MEMORY[0x1E697F948]);

    return swift_storeEnumTagMultiPayload();
  }
}

Swift::Void __swiftcall SidebarSection.toggleExpansion()()
{
  if (*(v0 + 41))
  {
  }

  else
  {
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
  }

  Transaction.subscript.setter();
  v1 = Transaction.current.getter();
  MEMORY[0x1EEE9AC00](v1);
  withTransaction<A>(_:_:)();
}

__n128 SidebarHeaderModifier.body(content:)@<Q0>(__n128 *a1@<X8>)
{
  static Font.Weight.semibold.getter();
  v4.n128_u8[0] = 4;
  static Font.system(size:weight:design:)();
  swift_getKeyPath();
  static Color.primary.getter();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>();
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.defaultForegroundColor(_:)();

  KeyPath = swift_getKeyPath();
  result = v4;
  *a1 = v4;
  a1[1].n128_u64[0] = v5;
  a1[1].n128_u64[1] = v6;
  a1[2].n128_u64[0] = KeyPath;
  a1[2].n128_u8[8] = 2;
  return result;
}

uint64_t assignWithCopy for SidebarSection(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = *(a2 + 1);

      *(a1 + 16) = *(a2 + 16);
    }

    else
    {
      outlined destroy of Binding<Bool>(a1);
      v5 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v6;
  }

  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = *(a2 + 41);
  v10 = *(a2 + 40);
  outlined copy of StateOrBinding<Bool>(v7, v8, v10, v9);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 41);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v14 = *(a1 + 40);
  *(a1 + 40) = v10;
  *(a1 + 41) = v9;
  outlined consume of StateOrBinding<Bool>(v11, v12, v14, v13);
  v15 = *(a2 + 6);
  LOBYTE(v8) = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v15, v8);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *(a1 + 48) = v15;
  *(a1 + 56) = v8;
  outlined consume of Environment<Selector?>.Content(v16, v17);
  v18 = *(a2 + 8);
  LOBYTE(v8) = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v18, v8);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  *(a1 + 64) = v18;
  *(a1 + 72) = v8;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  v21 = *(a2 + 10);
  v22 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v21, v22);
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  *(a1 + 80) = v21;
  *(a1 + 88) = v22;
  outlined consume of Environment<Selector?>.Content(v23, v24);
  return a1;
}

uint64_t assignWithTake for SidebarSection(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    outlined destroy of Binding<Bool>(a1);
LABEL_5:
    *a1 = *a2;
    goto LABEL_6;
  }

  *a1 = *a2;

  *(a1 + 8) = v4;

LABEL_6:
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 40);
  v6 = *(a2 + 41);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 41);
  *(a1 + 24) = *(a2 + 24);
  v10 = *(a1 + 40);
  *(a1 + 40) = v5;
  *(a1 + 41) = v6;
  outlined consume of StateOrBinding<Bool>(v7, v8, v10, v9);
  v11 = *(a2 + 56);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = *(a2 + 72);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v14;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  v17 = *(a2 + 88);
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  return a1;
}

uint64_t getEnumTagSinglePayload for SidebarSection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SidebarSection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata accessor for <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0)
  {
    type metadata accessor for CountViews<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, ();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type CountViews<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebar, type metadata accessor for CountViews<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate,);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0);
    }
  }
}

void type metadata accessor for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Recta()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKin)
  {
    type metadata accessor for Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, Primiti(255);
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<OutlineRootConfiguration.Key>, &type metadata for OutlineRootConfiguration.Key, &protocol witness table for OutlineRootConfiguration.Key, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKin);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShap()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _Conte;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _Conte)
  {
    type metadata accessor for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Recta();
    lazy protocol witness table accessor for type Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Re( &lazy protocol witness table cache variable for type Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModif,  type metadata accessor for Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, Primiti,  lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangl);
    lazy protocol witness table accessor for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _Conte);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStac()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButto)
  {
    type metadata accessor for Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod(255);
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<OutlineRootConfiguration.Key>, &type metadata for OutlineRootConfiguration.Key, &protocol witness table for OutlineRootConfiguration.Key, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButto);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleConfiguration.RawContent?>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleConfiguration.RawContent?>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, &type metadata for SectionStyleConfiguration.RawContent, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    _s7SwiftUI7BindingVySbGMaTm_6(255, &lazy cache variable for type metadata for SectionStyleConfiguration.RawContent?, &type metadata for SectionStyleConfiguration.RawContent, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleConfiguration.RawContent?>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, SectionStyleConfiguration.Footer, SectionStyleConfiguration.Footer?>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, SectionStyleConfiguration.Footer, SectionStyleConfiguration.Footer?>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    _s7SwiftUI7BindingVySbGMaTm_6(255, &lazy cache variable for type metadata for SectionStyleConfiguration.Footer?, &type metadata for SectionStyleConfiguration.Footer, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, SectionStyleConfiguration.Footer, SectionStyleConfiguration.Footer?>);
    }
  }
}

uint64_t objectdestroy_12Tm()
{
  if (*(v0 + 24))
  {
  }

  outlined consume of StateOrBinding<Bool>(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 57));
  outlined consume of Environment<Selector?>.Content(*(v0 + 64), *(v0 + 72));
  outlined consume of Environment<Selector?>.Content(*(v0 + 80), *(v0 + 88));
  outlined consume of Environment<Selector?>.Content(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainB()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<)
  {
    type metadata accessor for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStac();
    lazy protocol witness table accessor for type Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Re( &lazy protocol witness table cache variable for type Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle,  type metadata accessor for Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod,  lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<T);
    lazy protocol witness table accessor for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Re(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangl(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleConfiguration.RawContent?> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleConfiguration.RawContent?> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleConfiguration.RawContent?> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleConfiguration.RawContent?>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    lazy protocol witness table accessor for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent? and conformance <A> A?(&lazy protocol witness table cache variable for type SectionStyleConfiguration.RawContent? and conformance <A> A?, &lazy cache variable for type metadata for SectionStyleConfiguration.RawContent?, &type metadata for SectionStyleConfiguration.RawContent);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleConfiguration.RawContent?> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, SectionStyleConfiguration.Footer, SectionStyleConfiguration.Footer?> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, SectionStyleConfiguration.Footer, SectionStyleConfiguration.Footer?> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, SectionStyleConfiguration.Footer, SectionStyleConfiguration.Footer?> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, SectionStyleConfiguration.Footer, SectionStyleConfiguration.Footer?>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent? and conformance <A> A?(&lazy protocol witness table cache variable for type SectionStyleConfiguration.Footer? and conformance <A> A?, &lazy cache variable for type metadata for SectionStyleConfiguration.Footer?, &type metadata for SectionStyleConfiguration.Footer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, SectionStyleConfiguration.Footer, SectionStyleConfiguration.Footer?> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI7BindingVySbGMaTm_6(255, a2, a3, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for _ContentShapeKindModifier<Rectangle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SidebarHeaderModifier>, lazy protocol witness table accessor for type SidebarHeaderModifier and conformance SidebarHeaderModifier, &unk_1EFFCCAA0, MEMORY[0x1E697FDE8]);
    type metadata accessor for _EnvironmentKeyWritingModifier<Text.Case?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.Case?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    _s7SwiftUI7BindingVySbGMaTm_6(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<SidebarHeaderModifier> and conformance _ViewModifier_Content<A>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SidebarHeaderModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<SidebarHeaderModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<SidebarHeaderModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ContentShapeKindModifier<Rectangle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SidebarHeaderModifier>, lazy protocol witness table accessor for type SidebarHeaderModifier and conformance SidebarHeaderModifier, &unk_1EFFCCAA0, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<SidebarHeaderModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Case?>, &lazy cache variable for type metadata for Text.Case?, MEMORY[0x1E6980FE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>();
    type metadata accessor for _EnvironmentKeyWritingModifier<Text.Case?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.Case?>, &lazy cache variable for type metadata for Text.Case?, MEMORY[0x1E6980FE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Text.Case?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>();
    type metadata accessor for _EnvironmentKeyWritingModifier<Text.Case?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<SidebarHeaderModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Text.Case?>(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WrappedButtonStyle<>.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 8))(v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t WrappedButtonStyleBody.ArchiveBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = type metadata accessor for ArchivableLinkModifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v91 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E62F8];
  type metadata accessor for FailedCallbacks<()>(255, &lazy cache variable for type metadata for [Bool], MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
  v7 = v6;
  v8 = *(a1 + 16);
  v89 = *(a1 + 24);
  v90 = v8;
  v9 = type metadata accessor for ResolvedButtonStyleBody();
  v10 = _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type [Bool] and conformance [A], &lazy cache variable for type metadata for [Bool], v5);
  *v167 = v7;
  *&v167[8] = v9;
  *&v167[16] = v10;
  *&v167[24] = &protocol witness table for ResolvedButtonStyleBody<A>;
  *&v168 = MEMORY[0x1E69E6388];
  *(&v168 + 1) = MEMORY[0x1E6981FD8];
  v11 = type metadata accessor for TemporalStack();
  v92 = v3;
  v12 = type metadata accessor for ModifiedContent();
  v94 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v86 - v15;
  v87 = type metadata accessor for LinkDestination();
  MEMORY[0x1EEE9AC00](v87);
  v95 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v12;
  v17 = type metadata accessor for _ConditionalContent();
  *&v100 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v98 = v9;
  v99 = &v86 - v18;
  v88 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v86 - v23;
  v25 = type metadata accessor for ButtonAction();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v11;
  v32 = a1;
  v33 = v101;
  v34 = type metadata accessor for ModifiedContent();
  v105 = v17;
  v102 = v34;
  v35 = type metadata accessor for _ConditionalContent();
  v103 = *(v35 - 8);
  v104 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v108 = &v86 - v36;
  v37 = *(v32 + 44);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(&v33[v37], v31, type metadata accessor for PrimitiveButtonStyleConfiguration);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(&v31[*(v29 + 32)], v27, type metadata accessor for ButtonAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v39 = v95;
      _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(v27, v95, MEMORY[0x1E697E828]);
      WrappedButtonStyleBody.ArchiveBody.temporalStack.getter(v32, v167);
      *(v164 + 8) = *&v167[8];
      *&v164[0] = *v167;
      *(&v164[1] + 1) = *&v167[24];
      *&v164[2] = v168;
      v40 = v91;
      _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(v39 + *(v87 + 24), v91, MEMORY[0x1E697E810]);
      v41 = v93;
      MEMORY[0x18D00A570](v40, v96, v92, &protocol witness table for TemporalStack<A, B>);
      outlined destroy of LinkDestination.Configuration(v40, type metadata accessor for ArchivableLinkModifier);

      v42 = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier);
      v119 = &protocol witness table for TemporalStack<A, B>;
      v120 = v42;
      v43 = v106;
      WitnessTable = swift_getWitnessTable();
      v45 = v97;
      static ViewBuilder.buildExpression<A>(_:)(v41, v43, WitnessTable);
      v46 = *(v94 + 8);
      v46(v41, v43);
      static ViewBuilder.buildExpression<A>(_:)(v45, v43, WitnessTable);
      v47 = v99;
      static ViewBuilder.buildEither<A, B>(second:)(v41, v98, v43);
      v117 = &protocol witness table for ResolvedButtonStyleBody<A>;
      v118 = WitnessTable;
      v48 = v105;
      swift_getWitnessTable();
      v49 = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
      v115 = &protocol witness table for TemporalStack<A, B>;
      v116 = v49;
      swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(first:)(v47, v48);
      (*(v100 + 8))(v47, v48);
      v46(v41, v43);
      v46(v97, v43);
      outlined destroy of LinkDestination.Configuration(v95, MEMORY[0x1E697E828]);
    }

    else
    {
      v58 = *v27;
      v59 = *(v27 + 1);
      v60 = v27[16];
      v61 = *(v27 + 5);
      v100 = *(v27 + 24);
      WrappedButtonStyleBody.ArchiveBody.temporalStack.getter(v32, v160);
      *(v156 + 8) = *(v160 + 8);
      *&v156[0] = *&v160[0];
      *(&v156[1] + 1) = *(&v160[1] + 1);
      *&v157 = v161;
      v62 = *(v33 + 2);
      v63 = v33[24];
      v64 = v59;
      outlined copy of Environment<AppIntentExecutor?>.Content(v58, v59, v60);
      v65 = v100;
      v101 = v65;

      v66 = specialized Environment.wrappedValue.getter(v62, v63);
      *&v164[0] = v58;
      v95 = v58;
      *(&v164[0] + 1) = v64;
      v97 = v61;
      v98 = v64;
      LODWORD(v99) = v60;
      LOBYTE(v164[1]) = v60;
      *(&v164[1] + 8) = v100;
      *(&v164[2] + 1) = v61;
      LOBYTE(v165) = v66 & 1;
      MEMORY[0x18D00A570](v167, v164, v96, &type metadata for ArchivableButtonAppIntentModifier, &protocol witness table for TemporalStack<A, B>);
      outlined consume of Environment<AppIntentExecutor?>.Content(v58, v64, v60);

      v164[2] = v168;
      v165 = v169;
      v166[0] = v170[0];
      *(v166 + 9) = *(v170 + 9);
      v164[0] = *v167;
      v164[1] = *&v167[16];
      v67 = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
      v143 = &protocol witness table for TemporalStack<A, B>;
      v144 = v67;
      v68 = v102;
      v69 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)(v164, v68, v69);
      v150[2] = v164[2];
      v150[3] = v165;
      v151[0] = v166[0];
      *(v151 + 9) = *(v166 + 9);
      v150[0] = v164[0];
      v150[1] = v164[1];
      v70 = *(v68 - 8);
      v71 = *(v70 + 8);
      v71(v150, v68);
      v152[2] = v147;
      v152[3] = v148;
      v153[0] = v149[0];
      *(v153 + 9) = *(v149 + 9);
      v152[0] = v145;
      v152[1] = v146;
      v168 = v147;
      v169 = v148;
      v170[0] = v149[0];
      *(v170 + 9) = *(v149 + 9);
      *v167 = v145;
      *&v167[16] = v146;
      static ViewBuilder.buildExpression<A>(_:)(v167, v68, v69);
      v154[2] = v168;
      v154[3] = v169;
      v155[0] = v170[0];
      *(v155 + 9) = *(v170 + 9);
      v154[0] = *v167;
      v154[1] = *&v167[16];
      v72 = *(v70 + 16);
      v72(v164, v152, v68);
      v71(v154, v68);
      v157 = v140;
      v158 = v141;
      v159[0] = v142[0];
      *(v159 + 9) = *(v142 + 9);
      v156[0] = v138;
      v156[1] = v139;
      v135 = v140;
      v136 = v141;
      v137[0] = v142[0];
      *(v137 + 9) = *(v142 + 9);
      v133 = v138;
      v134 = v139;
      v72(v167, v156, v68);
      v73 = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier);
      v131 = &protocol witness table for TemporalStack<A, B>;
      v132 = v73;
      v74 = swift_getWitnessTable();
      v129 = &protocol witness table for ResolvedButtonStyleBody<A>;
      v130 = v74;
      v75 = v105;
      swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(&v133, v75, v68);
      outlined consume of Environment<AppIntentExecutor?>.Content(v95, v98, v99);

      v161 = v135;
      v162 = v136;
      v163[0] = v137[0];
      *(v163 + 9) = *(v137 + 9);
      v160[0] = v133;
      v160[1] = v134;
      v71(v160, v68);
      v164[2] = v140;
      v165 = v141;
      v166[0] = v142[0];
      *(v166 + 9) = *(v142 + 9);
      v164[0] = v138;
      v164[1] = v139;
      v71(v164, v68);
      v168 = v147;
      v169 = v148;
      v170[0] = v149[0];
      *(v170 + 9) = *(v149 + 9);
      *v167 = v145;
      *&v167[16] = v146;
      v71(v167, v68);
    }
  }

  else
  {
    outlined destroy of LinkDestination.Configuration(v27, type metadata accessor for ButtonAction);
    *v167 = v33[v37];
    ButtonStyle.resolvedBody(configuration:)(v167, v90, v21);
    v50 = v24;
    v86 = v24;
    v51 = v98;
    static ViewBuilder.buildExpression<A>(_:)(v21, v98, &protocol witness table for ResolvedButtonStyleBody<A>);
    v101 = *(v88 + 8);
    (v101)(v21, v51);
    static ViewBuilder.buildExpression<A>(_:)(v50, v51, &protocol witness table for ResolvedButtonStyleBody<A>);
    v52 = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier);
    v113 = &protocol witness table for TemporalStack<A, B>;
    v114 = v52;
    v53 = swift_getWitnessTable();
    v54 = v99;
    static ViewBuilder.buildEither<A, B>(first:)(v21, v51);
    v111 = &protocol witness table for ResolvedButtonStyleBody<A>;
    v112 = v53;
    v55 = v105;
    swift_getWitnessTable();
    v56 = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
    v109 = &protocol witness table for TemporalStack<A, B>;
    v110 = v56;
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(first:)(v54, v55);
    (*(v100 + 8))(v54, v55);
    v57 = v101;
    (v101)(v21, v51);
    (v57)(v86, v51);
  }

  v77 = v103;
  v76 = v104;
  v78 = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier);
  v127 = &protocol witness table for TemporalStack<A, B>;
  v128 = v78;
  v79 = swift_getWitnessTable();
  v125 = &protocol witness table for ResolvedButtonStyleBody<A>;
  v126 = v79;
  v80 = swift_getWitnessTable();
  v81 = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
  v123 = &protocol witness table for TemporalStack<A, B>;
  v124 = v81;
  v82 = swift_getWitnessTable();
  v121 = v80;
  v122 = v82;
  v83 = swift_getWitnessTable();
  v84 = v108;
  static ViewBuilder.buildExpression<A>(_:)(v108, v76, v83);
  return (*(v77 + 8))(v84, v76);
}

uint64_t WrappedButtonStyleBody.ArchiveBody.temporalStack.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &outlined read-only object #0 of WrappedButtonStyleBody.ArchiveBody.temporalStack.getter;
  (*(v4 + 16))(v7, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = *(a1 + 24);
  *(v9 + 16) = *(a1 + 16);
  *(v9 + 24) = v10;
  (*(v4 + 32))(v9 + v8, v7, a1);
  v11 = static Alignment.center.getter();
  v13 = v12;
  v14 = MEMORY[0x1E69E62F8];
  type metadata accessor for FailedCallbacks<()>(0, &lazy cache variable for type metadata for [Bool], MEMORY[0x1E69E6370], MEMORY[0x1E69E62F8]);
  v16 = v15;
  type metadata accessor for ResolvedButtonStyleBody();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type [Bool] and conformance [A], &lazy cache variable for type metadata for [Bool], v14);
  return TemporalStack.init(states:alignment:content:)(&v19, v11, v13, partial apply for closure #1 in WrappedButtonStyleBody.ArchiveBody.temporalStack.getter, v9, v16, a2);
}

uint64_t closure #1 in WrappedButtonStyleBody.ArchiveBody.temporalStack.getter(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ResolvedButtonStyleBody();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  LOBYTE(a1) = *a1;
  v16[0] = *(a2 + *(type metadata accessor for WrappedButtonStyleBody.ArchiveBody() + 44));
  v16[1] = a1;
  ButtonStyle.resolvedBody(configuration:)(v16, a3, v9);
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, &protocol witness table for ResolvedButtonStyleBody<A>);
  v13 = *(v7 + 8);
  v13(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, &protocol witness table for ResolvedButtonStyleBody<A>);
  return (v13)(v12, v6);
}

uint64_t WrappedButtonStyleBody.ArchiveBody.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  v8 = type metadata accessor for WrappedButtonStyleBody.ArchiveBody();
  (*(*(a3 - 8) + 32))(a4 + *(v8 + 40), a1, a3);
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(a2, a4 + *(v8 + 44), type metadata accessor for PrimitiveButtonStyleConfiguration);
}

uint64_t WrappedButtonStyleBody.archivedBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v35[0] = a1;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[1] = *(a1 + 24);
  v10 = type metadata accessor for WrappedButtonStyleBody.ArchiveBody();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v16 = type metadata accessor for ModifiedContent();
  v40 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v35 - v21;
  v23 = *(v6 + 16);
  v24 = v9;
  v25 = v9;
  v26 = v36;
  v23(v25, v36, v5, v20);
  v27 = v26 + *(v35[0] + 36);
  v28 = v38;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_4(v27, v38, type metadata accessor for PrimitiveButtonStyleConfiguration);
  WrappedButtonStyleBody.ArchiveBody.init(style:configuration:)(v24, v28, v5, v12);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](WitnessTable, v10, &type metadata for ArchivesInteractiveControlsEffect, WitnessTable);
  (*(v37 + 8))(v12, v10);
  v44 = WitnessTable;
  v45 = &protocol witness table for ArchivesInteractiveControlsEffect;
  v30 = swift_getWitnessTable();
  MEMORY[0x18D00A570](v30, v13, &type metadata for HandGestureShortcutInteractiveControl, v30);
  (*(v39 + 8))(v15, v13);
  v31 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl and conformance HandGestureShortcutInteractiveControl();
  v42 = v30;
  v43 = v31;
  v32 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v18, v16, v32);
  v33 = *(v40 + 8);
  v33(v18, v16);
  static ViewBuilder.buildExpression<A>(_:)(v22, v16, v32);
  return (v33)(v22, v16);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableLinkModifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableLinkModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableLinkModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ArchivableLinkModifier(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableLinkModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys, &unk_1EFFCCFB0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for LinkDestination.Configuration();
  lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type LinkDestination.Configuration and conformance LinkDestination.Configuration, MEMORY[0x1E697E810]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in ArchivableButtonAppIntentModifier.body(content:)(__int128 *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  v24 = a1[2];
  type metadata accessor for MainActor();
  static Semantics.v7.getter();
  v20 = &v22;
  static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
  static Log.archivedButton.getter();
  v25 = v22;
  v26 = v23;
  v7 = *(&v23 + 1);
  outlined init with copy of Environment<AppIntentExecutor?>(&v25, v21);
  v8 = v7;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  outlined destroy of Environment<AppIntentExecutor?>(&v25);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315138;
    v13 = [v8 debugDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v21);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_18BD4A000, v9, v10, "Executed LNAction %s from button tap.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x18D0110E0](v12, -1, -1);
    MEMORY[0x18D0110E0](v11, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t ArchivableButtonAppIntentModifier.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableButtonAppIntentModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys, &unk_1EFFCD330, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v3[1];
  v12[0] = *v3;
  v12[1] = v10;
  v12[2] = v3[2];
  v13 = 0;
  lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ArchivableButtonAppIntentModifier.CodingKeys()
{
  if (*v0)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableButtonAppIntentModifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableButtonAppIntentModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableButtonAppIntentModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ArchivableButtonAppIntentModifier@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 5);
  v4 = *(v1 + 48);
  v11 = *v1;
  v12 = *(v1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = *v1;
  *(v5 + 32) = *(v1 + 2);
  v9 = *(v1 + 24);
  *(v5 + 40) = v9;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v13 = 0;
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = partial apply for closure #1 in ArchivableButtonAppIntentModifier.body(content:);
  *(a1 + 24) = v5;
  *(a1 + 32) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(a1 + 40) = 0;
  *(a1 + 48) = partial apply for closure #2 in ArchivableButtonAppIntentModifier.body(content:);
  *(a1 + 56) = 0;
  *(a1 + 64) = closure #3 in ArchivableButtonAppIntentModifier.body(content:);
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
  *(a1 + 82) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = KeyPath;
  *(a1 + 104) = v4 & 1;
  outlined init with copy of Environment<AppIntentExecutor?>(&v11, v10);
  v7 = v9;
}

double protocol witness for Decodable.init(from:) in conformance ArchivableButtonAppIntentModifier@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ArchivableButtonAppIntentModifier.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t closure #2 in closure #1 in LinkButtonModifierBody.body(content:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 96) = 0;
  return result;
}

uint64_t ButtonBehavior.ended()()
{
  v10 = *(v0 + 80);
  v11 = *(&v10 + 1);
  v9 = *(v0 + 80);
  type metadata accessor for ButtonBehavior.StateType();
  type metadata accessor for AnyLocation();
  v1 = type metadata accessor for Optional();
  (*(*(v1 - 8) + 16))(&v7, &v11, v1);
  v2 = type metadata accessor for State();
  State.wrappedValue.getter();
  if (v7 == 2)
  {
    ButtonBehavior.pressing(_:)(1);
  }

  v9 = v10;
  v3 = State.wrappedValue.getter();
  if (v7 == 2 || (v7 & 0x100) == 0)
  {
    (*(v0 + 16))(v3);
  }

  v9 = v10;
  State.wrappedValue.getter();
  v7 = v10;
  v5 = 2;
  v6 = v8;
  specialized State.wrappedValue.setter(&v5, v2);
  return (*(*(v2 - 8) + 8))(&v10, v2);
}

uint64_t ButtonBehavior.pressing(_:)(char a1)
{
  (*(v1 + 32))();
  v15 = *(v1 + 80);
  v16 = *(&v15 + 1);
  v14 = *(v1 + 80);
  type metadata accessor for ButtonBehavior.StateType();
  type metadata accessor for AnyLocation();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 16))(&v11, &v16, v3);
  v4 = type metadata accessor for State();
  State.wrappedValue.getter();
  v5 = v11 != 2;
  v14 = v15;
  State.wrappedValue.getter();
  v11 = v15;
  v9 = v12;
  v10 = v5;
  specialized State.wrappedValue.setter(&v9, v4);
  v14 = v15;
  State.wrappedValue.getter();
  v6 = v12 & 0x100;
  if (v12 == 2)
  {
    v6 = 0;
  }

  v11 = v15;
  v9 = v6 & 0xFFFE | a1 & 1;
  v10 = v13;
  specialized State.wrappedValue.setter(&v9, v4);
  v7 = (*(*(v4 - 8) + 8))(&v15, v4);
  return MEMORY[0x18D002F80](v7);
}

uint64_t closure #1 in ButtonBehavior.body.getter(uint64_t a1)
{
  v8 = *(a1 + 80);
  v6[1] = *(a1 + 80);
  v9 = *(&v8 + 1);
  type metadata accessor for ButtonBehavior.StateType();
  type metadata accessor for AnyLocation();
  v1 = type metadata accessor for Optional();
  (*(*(v1 - 8) + 16))(v6, &v9, v1);
  v2 = type metadata accessor for State();
  State.wrappedValue.getter();
  v6[0] = v8;
  v4 = 2;
  v5 = v7;
  specialized State.wrappedValue.setter(&v4, v2);
  return (*(*(v2 - 8) + 8))(&v8, v2);
}

uint64_t closure #4 in ButtonBehavior.body.getter(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v10 = *(a2 + 80);
  v8[1] = *(a2 + 80);
  v11 = *(&v10 + 1);
  type metadata accessor for ButtonBehavior.StateType();
  type metadata accessor for AnyLocation();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 16))(v8, &v11, v3);
  v4 = type metadata accessor for State();
  State.wrappedValue.getter();
  v8[0] = v10;
  v6 = v2;
  v7 = v9;
  specialized State.wrappedValue.setter(&v6, v4);
  return (*(*(v4 - 8) + 8))(&v10, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ButtonInteractionPhase(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    return *a2 == 2;
  }

  if (*a2 == 2)
  {
    return 0;
  }

  v5 = v3 ^ v2;
  v6 = ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
  if (v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id _s7SwiftUI20ButtonRepeatModifier33_AEEDD090E917AC57C12008D974DC6805LLV0D5StateV8schedule6timing6action06updateL0AFSgx_yycyAKctStRzSd7ElementRtzlFZAA0cD6TimingV8IteratorV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v24 = ButtonRepeatTiming.Iterator.next()();
  if (v13)
  {

    return 0;
  }

  else
  {
    v15 = *&v24.is_nil;
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = v12;
    v16[5] = a5;
    v16[6] = a6;
    v23[4] = partial apply for specialized closure #1 in static ButtonRepeatModifier.RepeatState.schedule<A>(timing:action:updateState:);
    v23[5] = v16;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v23[3] = &block_descriptor_39;
    v17 = _Block_copy(v23);
    v18 = objc_opt_self();

    v19 = [v18 timerWithTimeInterval:0 repeats:v17 block:v15];
    _Block_release(v17);

    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 mainRunLoop];
    [v22 addTimer:v21 forMode:*MEMORY[0x1E695DA28]];

    return v21;
  }
}

void specialized closure #1 in static ButtonRepeatModifier.RepeatState.schedule<A>(timing:action:updateState:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  a2();
  swift_beginAccess();
  v11 = *(a4 + 24);

  v13 = _s7SwiftUI20ButtonRepeatModifier33_AEEDD090E917AC57C12008D974DC6805LLV0D5StateV8schedule6timing6action06updateL0AFSgx_yycyAKctStRzSd7ElementRtzlFZAA0cD6TimingV8IteratorV_Tt2g5(v12, v11, a2, a3, a5, a6);
  v15 = v14;

  if (v13)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  a5(v13, v16);
}

__n128 ButtonRepeatModifier.body(content:)@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v17 = v1[2];
  v18[0] = v3;
  *(v18 + 9) = *(v1 + 57);
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  *v11 = v15;
  *&v11[16] = *(v1 + 8);
  type metadata accessor for FailedCallbacks<()>(0, &lazy cache variable for type metadata for Binding<ButtonInteractionPhase>, &type metadata for ButtonInteractionPhase, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v14);
  v5 = swift_allocObject();
  v6 = v18[0];
  v5[3] = v17;
  v5[4] = v6;
  *(v5 + 73) = *(v18 + 9);
  v7 = v16;
  v5[1] = v15;
  v5[2] = v7;
  outlined init with copy of ButtonRepeatModifier(&v15, v11);
  type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(0, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonRepeatModifier>, lazy protocol witness table accessor for type ButtonRepeatModifier and conformance ButtonRepeatModifier, &unk_1EFFCD428, MEMORY[0x1E697FDE8]);
  lazy protocol witness table accessor for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>();
  lazy protocol witness table accessor for type ButtonInteractionPhase and conformance ButtonInteractionPhase();
  View.onChange<A>(of:initial:_:)();

  result = v12;
  v9 = v13;
  v10 = *&v11[8];
  *a1 = *v11;
  *(a1 + 8) = v10;
  *(a1 + 24) = result;
  *(a1 + 40) = v9;
  return result;
}

void closure #1 in ButtonRepeatModifier.body(content:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  v20 = *(a3 + 40);
  v5 = *(a3 + 56);
  v17 = *(a3 + 40);
  v18 = v5;
  type metadata accessor for Environment<AppIntentExecutor?>(0, &lazy cache variable for type metadata for State<ButtonRepeatModifier.RepeatState?>, &lazy cache variable for type metadata for ButtonRepeatModifier.RepeatState?, &unk_1EFFCD6E8, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v19)
  {

    goto LABEL_9;
  }

  if (v4 == 2 || (v4 & 1) == 0 || (specialized Environment.wrappedValue.getter(*(a3 + 64), *(a3 + 72), &v17), (v6 = v17) == 0))
  {
LABEL_9:
    v17 = v20;
    v18 = v5;
    State.wrappedValue.getter();
    if (v19)
    {

      if (v4 == 2 || (v4 & 1) == 0)
      {
        v17 = v20;
        v18 = v5;
        State.wrappedValue.getter();
        v16 = v19;
        if (v19)
        {
          [v19 invalidate];
        }

        *&v17 = 0;
        BYTE8(v17) = 0;
        if (v5)
        {
          dispatch thunk of AnyLocation.set(_:transaction:)();
        }
      }
    }

    return;
  }

  v7 = swift_allocObject();
  v8 = *(a3 + 48);
  v7[3] = *(a3 + 32);
  v7[4] = v8;
  *(v7 + 73) = *(a3 + 57);
  v9 = *(a3 + 16);
  v7[1] = *a3;
  v7[2] = v9;
  v10 = swift_allocObject();
  v11 = *(a3 + 48);
  v10[3] = *(a3 + 32);
  v10[4] = v11;
  *(v10 + 73) = *(a3 + 57);
  v12 = *(a3 + 16);
  v10[1] = *a3;
  v10[2] = v12;
  outlined init with copy of ButtonRepeatModifier(a3, &v17);
  outlined init with copy of ButtonRepeatModifier(a3, &v17);
  v13 = _s7SwiftUI20ButtonRepeatModifier33_AEEDD090E917AC57C12008D974DC6805LLV0D5StateV8schedule6timing6action06updateL0AFSgx_yycyAKctStRzSd7ElementRtzlFZAA0cD6TimingV8IteratorV_Tt2g5(v6, 0, partial apply for closure #1 in closure #1 in ButtonRepeatModifier.body(content:), v7, partial apply for closure #2 in closure #1 in ButtonRepeatModifier.body(content:), v10);
  v15 = v14;

  *&v17 = v13;
  BYTE8(v17) = v15;
  if (v5)
  {
    v13 = v13;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }
}

uint64_t closure #1 in closure #1 in ButtonRepeatModifier.body(content:)(uint64_t a1)
{
  type metadata accessor for FailedCallbacks<()>(0, &lazy cache variable for type metadata for Binding<ButtonInteractionPhase>, &type metadata for ButtonInteractionPhase, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v4);
  v2 = dispatch thunk of AnyLocation.set(_:transaction:)();
  return (*(a1 + 24))(v2);
}

void closure #2 in closure #1 in ButtonRepeatModifier.body(content:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 56))
  {
    v3 = a1;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }
}

uint64_t ButtonSpringLoadedInteraction.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v11 = *v1;
  v3 = swift_allocObject();
  v4 = *(v1 + 1);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1[4];
  v5 = swift_allocObject();
  v6 = *(v1 + 1);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = v1[4];
  v7 = swift_allocObject();
  v8 = *(v1 + 1);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = v1[4];
  *a1 = 0;
  *(a1 + 8) = partial apply for closure #1 in ButtonSpringLoadedInteraction.body(content:);
  *(a1 + 16) = v3;
  *(a1 + 24) = partial apply for closure #2 in ButtonSpringLoadedInteraction.body(content:);
  *(a1 + 32) = v5;
  *(a1 + 40) = partial apply for closure #3 in ButtonSpringLoadedInteraction.body(content:);
  *(a1 + 48) = v7;
  outlined init with copy of Transaction(&v11, &v10);

  outlined init with copy of Transaction(&v11, &v10);

  outlined init with copy of Transaction(&v11, &v10);
}

uint64_t closure #2 in ButtonSpringLoadedInteraction.body(content:)()
{
  type metadata accessor for FailedCallbacks<()>(0, &lazy cache variable for type metadata for Binding<ButtonInteractionPhase>, &type metadata for ButtonInteractionPhase, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v1);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

unint64_t instantiation function for generic protocol witness table for ButtonBehaviorStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonBehaviorStyleConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *destructiveInjectEnumTag for ButtonInteractionPhase(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ArchivableLinkModifier(void *a1, void *a2)
{
  v4 = type metadata accessor for LinkDestination.Configuration();
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
  }

  return a1;
}

uint64_t initializeWithTake for ArchivableLinkModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for LinkDestination.Configuration();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  return a1;
}

uint64_t assignWithTake for ArchivableLinkModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  v5 = type metadata accessor for LinkDestination.Configuration();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  return a1;
}

uint64_t instantiation function for generic protocol witness table for ArchivableLinkModifier(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier);
  a1[2] = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier);
  result = lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier);
  a1[3] = result;
  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for WrappedButtonStyleBody() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  v4 = v2[11];
  v5 = v0 + v3 + v4 + *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  type metadata accessor for ButtonAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v5, *(v5 + 8), *(v5 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 74));
      v7 = *(type metadata accessor for LinkDestination() + 24);
      v8 = type metadata accessor for URL();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t destroy for ArchivableButtonAppIntentModifier(uint64_t a1)
{
  outlined consume of Environment<AppIntentExecutor?>.Content(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t initializeWithCopy for ArchivableButtonAppIntentModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a2 + 48);
  v9 = v8;

  return a1;
}

uint64_t assignWithCopy for ArchivableButtonAppIntentModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  v10 = *(a2 + 24);
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;
  v12 = v10;

  v13 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v13;

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for ArchivableButtonAppIntentModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Environment<AppIntentExecutor?>.Content(v5, v6, v7);

  v8 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v8;

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivableButtonAppIntentModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ArchivableButtonAppIntentModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonBehavior.StateType(unsigned __int16 *a1, unsigned int a2)
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

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonBehavior.StateType(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 2) = a2 + 1;
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

uint64_t *initializeBufferWithCopyOfBuffer for ResolvedButtonStyleBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 2) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t initializeWithTake for ResolvedButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *(*(v5 + 32) + a1) = *(*(v5 + 32) + a2);
  return a1;
}

uint64_t assignWithTake for ResolvedButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedButtonStyleBody(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6 + 1);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for ResolvedButtonStyleBody(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFE)
      {
        v23 = result + v8;
        if (a2 > 0xFE)
        {
          *v23 = a2 - 255;
        }

        else
        {
          v23[1] = a2 + 1;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_43;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}