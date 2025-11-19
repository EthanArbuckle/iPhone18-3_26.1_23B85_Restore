uint64_t type metadata completion function for TimeDataFormatting.FallbackRedactionEntries()
{
  result = type metadata accessor for TimeDataFormatting.EntriesState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TimeDataFormatting.FallbackRedactionEntries(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = *(v9 - 8);
  v12 = *(v11 + 80);
  v13 = v8 + 1 + v12;
  v14 = *(v10 - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64);
  v17 = (*(v11 + 80) | *(v7 + 80) | *(v14 + 80));
  if (v17 > 7 || v16 + ((*(*(v9 - 8) + 64) + v15 + ((v8 + 1 + v12) & ~v12)) & ~v15) + 1 > 0x18 || ((*(v11 + 80) | *(v7 + 80) | *(v14 + 80)) & 0x100000) != 0)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + ((v17 + 16) & ~v17));

    return a1;
  }

  v21 = *(a2 + v8);
  v22 = v21 - 2;
  if (v21 >= 2)
  {
    if (v8 <= 3)
    {
      v23 = *(v7 + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *a2;
        if (v8 < 4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v23 == 3)
        {
          v24 = *a2 | (*(a2 + 2) << 16);
          if (v8 < 4)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        v24 = *a2;
        if (v8 < 4)
        {
LABEL_24:
          v21 = (v24 | (v22 << (8 * v8))) + 2;
          goto LABEL_25;
        }
      }

LABEL_22:
      v21 = v24 + 2;
      goto LABEL_25;
    }

    if (v23)
    {
      v24 = *a2;
      if (v8 < 4)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

LABEL_25:
  v25 = ~v12;
  v26 = ~v15;
  v33 = v10;
  v34 = v9;
  v32 = *(*(v9 - 8) + 64);
  if (v21 == 1)
  {
    (*(v7 + 16))(a1, a2, v6);
    *(a1 + v8) = 1;
  }

  else if (v21)
  {
    memcpy(a1, a2, v8 + 1);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    *(a1 + v8) = 0;
  }

  v27 = (a2 + v13) & v25;
  (*(v11 + 16))((a1 + v13) & v25, v27, v34);
  v28 = v32 + v15;
  v29 = (((a1 + v13) & v25) + v32 + v15) & v26;
  v30 = (v27 + v28) & v26;
  (*(v14 + 16))(v29, v30, v33);
  *(v29 + v16) = *(v30 + v16);
  return a1;
}

uint64_t destroy for TimeDataFormatting.ComplyingFormatStyleEntries(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  v6 = a1[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = *(*(v4 - 8) + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = *a1;
    }

    else if (v8 == 2)
    {
      v9 = *a1;
    }

    else if (v8 == 3)
    {
      v9 = *a1 | (a1[2] << 16);
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_15:
  if (v6 <= 1)
  {
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v11 = *(*(a2 + 16) - 8);
  v12 = v11 + 8;
  v13 = &a1[v5 + 1 + *(v11 + 80)] & ~*(v11 + 80);
  (*(v11 + 8))(v13);
  v14 = *(*(a2 + 24) - 8);
  v15 = *(v14 + 8);
  v16 = (v13 + *(v12 + 56) + *(v14 + 80)) & ~*(v14 + 80);

  return v15(v16);
}

_BYTE *initializeWithCopy for TimeDataFormatting.FallbackRedactionEntries(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 < 2)
  {
    goto LABEL_15;
  }

  if (v8 <= 3)
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = *a2;
  }

  else if (v11 == 2)
  {
    v12 = *a2;
  }

  else if (v11 == 3)
  {
    v12 = *a2 | (a2[2] << 16);
  }

  else
  {
    v12 = *a2;
  }

  v13 = (v12 | (v10 << (8 * v8))) + 2;
  v9 = v12 + 2;
  if (v8 < 4)
  {
    v9 = v13;
  }

LABEL_15:
  if (v9 == 1)
  {
    (*(v7 + 16))(a1, a2, v6);
    a1[v8] = 1;
  }

  else if (v9)
  {
    memcpy(a1, a2, v8 + 1);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    a1[v8] = 0;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v8 + v16 + 1;
  v18 = &a1[v17] & ~v16;
  v19 = &a2[v17] & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48);
  v21 = *(*(a3 + 24) - 8);
  v22 = v21 + 16;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 16))(v25, v26);
  *(*(v22 + 48) + v25) = *(*(v22 + 48) + v26);
  return a1;
}

unsigned __int8 *assignWithCopy for TimeDataFormatting.FallbackRedactionEntries(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    v9 = a1[v8];
    v10 = v9 - 2;
    if (v9 < 2)
    {
      goto LABEL_16;
    }

    if (v8 <= 3)
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = *a1;
      if (v8 < 4)
      {
LABEL_37:
        if ((v12 | (v10 << (8 * v8))) + 2 > 1)
        {
LABEL_18:
          v13 = a2[v8];
          v14 = v13 - 2;
          if (v13 < 2)
          {
            goto LABEL_32;
          }

          if (v8 <= 3)
          {
            v15 = v8;
          }

          else
          {
            v15 = 4;
          }

          if (v15 <= 1)
          {
            if (!v15)
            {
              goto LABEL_32;
            }

            v16 = *a2;
            if (v8 < 4)
            {
LABEL_40:
              v17 = v16 | (v14 << (8 * v8));
              v13 = v17 + 2;
              if (v17 == -1)
              {
                goto LABEL_41;
              }

LABEL_33:
              if (v13)
              {
                memcpy(a1, a2, v8 + 1);
              }

              else
              {
                (*(v7 + 16))(a1, a2, v6);
                a1[v8] = 0;
              }

              goto LABEL_42;
            }
          }

          else if (v15 == 2)
          {
            v16 = *a2;
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          else if (v15 == 3)
          {
            v16 = *a2 | (a2[2] << 16);
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v16 = *a2;
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          v13 = v16 + 2;
LABEL_32:
          if (v13 == 1)
          {
LABEL_41:
            (*(v7 + 16))(a1, a2, v6);
            a1[v8] = 1;
            goto LABEL_42;
          }

          goto LABEL_33;
        }

LABEL_17:
        (*(v7 + 8))(a1, v6);
        goto LABEL_18;
      }
    }

    else if (v11 == 2)
    {
      v12 = *a1;
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v12 = *a1;
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    v9 = v12 + 2;
LABEL_16:
    if (v9 > 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_42:
  v18 = type metadata accessor for Date();
  v19 = *(*(a3 + 16) - 8);
  v20 = v19 + 24;
  v21 = *(v19 + 80);
  v22 = *(*(v18 - 8) + 64) + v21 + 1;
  v23 = &a1[v22] & ~v21;
  v24 = &a2[v22] & ~v21;
  (*(v19 + 24))(v23, v24);
  v25 = *(v20 + 40);
  v26 = *(*(a3 + 24) - 8);
  v27 = v26 + 24;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  v30 = (v29 + v23) & ~v28;
  v31 = (v29 + v24) & ~v28;
  (*(v26 + 24))(v30, v31);
  *(*(v27 + 40) + v30) = *(*(v27 + 40) + v31);
  return a1;
}

_BYTE *initializeWithTake for TimeDataFormatting.FallbackRedactionEntries(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 < 2)
  {
    goto LABEL_15;
  }

  if (v8 <= 3)
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = *a2;
  }

  else if (v11 == 2)
  {
    v12 = *a2;
  }

  else if (v11 == 3)
  {
    v12 = *a2 | (a2[2] << 16);
  }

  else
  {
    v12 = *a2;
  }

  v13 = (v12 | (v10 << (8 * v8))) + 2;
  v9 = v12 + 2;
  if (v8 < 4)
  {
    v9 = v13;
  }

LABEL_15:
  if (v9 == 1)
  {
    (*(v7 + 32))(a1, a2, v6);
    a1[v8] = 1;
  }

  else if (v9)
  {
    memcpy(a1, a2, v8 + 1);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    a1[v8] = 0;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v8 + v16 + 1;
  v18 = &a1[v17] & ~v16;
  v19 = &a2[v17] & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(v15 + 32);
  v21 = *(*(a3 + 24) - 8);
  v22 = v21 + 32;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 32))(v25, v26);
  *(*(v22 + 32) + v25) = *(*(v22 + 32) + v26);
  return a1;
}

unsigned __int8 *assignWithTake for TimeDataFormatting.FallbackRedactionEntries(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    v9 = a1[v8];
    v10 = v9 - 2;
    if (v9 < 2)
    {
      goto LABEL_16;
    }

    if (v8 <= 3)
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = *a1;
      if (v8 < 4)
      {
LABEL_37:
        if ((v12 | (v10 << (8 * v8))) + 2 > 1)
        {
LABEL_18:
          v13 = a2[v8];
          v14 = v13 - 2;
          if (v13 < 2)
          {
            goto LABEL_32;
          }

          if (v8 <= 3)
          {
            v15 = v8;
          }

          else
          {
            v15 = 4;
          }

          if (v15 <= 1)
          {
            if (!v15)
            {
              goto LABEL_32;
            }

            v16 = *a2;
            if (v8 < 4)
            {
LABEL_40:
              v17 = v16 | (v14 << (8 * v8));
              v13 = v17 + 2;
              if (v17 == -1)
              {
                goto LABEL_41;
              }

LABEL_33:
              if (v13)
              {
                memcpy(a1, a2, v8 + 1);
              }

              else
              {
                (*(v7 + 32))(a1, a2, v6);
                a1[v8] = 0;
              }

              goto LABEL_42;
            }
          }

          else if (v15 == 2)
          {
            v16 = *a2;
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          else if (v15 == 3)
          {
            v16 = *a2 | (a2[2] << 16);
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v16 = *a2;
            if (v8 < 4)
            {
              goto LABEL_40;
            }
          }

          v13 = v16 + 2;
LABEL_32:
          if (v13 == 1)
          {
LABEL_41:
            (*(v7 + 32))(a1, a2, v6);
            a1[v8] = 1;
            goto LABEL_42;
          }

          goto LABEL_33;
        }

LABEL_17:
        (*(v7 + 8))(a1, v6);
        goto LABEL_18;
      }
    }

    else if (v11 == 2)
    {
      v12 = *a1;
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v12 = *a1;
      if (v8 < 4)
      {
        goto LABEL_37;
      }
    }

    v9 = v12 + 2;
LABEL_16:
    if (v9 > 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_42:
  v18 = type metadata accessor for Date();
  v19 = *(*(a3 + 16) - 8);
  v20 = v19 + 40;
  v21 = *(v19 + 80);
  v22 = *(*(v18 - 8) + 64) + v21 + 1;
  v23 = &a1[v22] & ~v21;
  v24 = &a2[v22] & ~v21;
  (*(v19 + 40))(v23, v24);
  v25 = *(v20 + 24);
  v26 = *(*(a3 + 24) - 8);
  v27 = v26 + 40;
  v28 = *(v26 + 80);
  v29 = v25 + v28;
  v30 = (v29 + v23) & ~v28;
  v31 = (v29 + v24) & ~v28;
  (*(v26 + 40))(v30, v31);
  *(*(v27 + 24) + v30) = *(*(v27 + 24) + v31);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataFormatting.FallbackRedactionEntries(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for Date() - 8) + 64);
  v7 = *(a3 + 24);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0xFD)
  {
    v16 = 253;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v6 + v12 + 1;
  if (a2 <= v16)
  {
    goto LABEL_31;
  }

  v18 = *(*(v7 - 8) + 64) + ((v13 + v14 + (v17 & ~v12)) & ~v14) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v15 > 0xFD)
      {
        v27 = (a1 + v17) & ~v12;
        if (v9 == v16)
        {
          v28 = *(v8 + 48);

          return v28(v27);
        }

        else
        {
          v29 = *(v10 + 48);
          v30 = (v27 + v13 + v14) & ~v14;

          return v29(v30, v11, v7);
        }
      }

      else
      {
        v26 = *(a1 + v6);
        if (v26 >= 3)
        {
          return (v26 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v16 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for TimeDataFormatting.FallbackRedactionEntries(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(type metadata accessor for Date() - 8) + 64);
  v9 = *(a4 + 24);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  v16 = *(v12 + 80);
  if (v11 <= v13)
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0xFD)
  {
    v18 = 253;
  }

  else
  {
    v18 = v17;
  }

  v19 = v8 + v14 + 1;
  v20 = *(*(v9 - 8) + 64) + ((v15 + v16 + (v19 & ~v14)) & ~v16) + 1;
  if (a3 <= v18)
  {
    v21 = 0;
  }

  else if (v20 <= 3)
  {
    v24 = ((a3 - v18 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v18 < a2)
  {
    v22 = ~v18 + a2;
    if (v20 < 4)
    {
      v23 = (v22 >> (8 * v20)) + 1;
      if (*(*(v9 - 8) + 64) + ((v15 + v16 + (v19 & ~v14)) & ~v16) != -1)
      {
        v26 = v22 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v26;
            if (v21 > 1)
            {
LABEL_62:
              if (v21 == 2)
              {
                *&a1[v20] = v23;
              }

              else
              {
                *&a1[v20] = v23;
              }

              return;
            }
          }

          else
          {
            *a1 = v22;
            if (v21 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v21 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v21)
    {
      a1[v20] = v23;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v20] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v21)
  {
    goto LABEL_33;
  }

  a1[v20] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v17 > 0xFD)
  {
    v27 = &a1[v19] & ~v14;
    if (v11 == v18)
    {
      v28 = *(v10 + 56);

      v28(v27, a2);
    }

    else
    {
      v33 = *(v12 + 56);
      v34 = (v27 + v15 + v16) & ~v16;

      v33(v34, a2, v13, v9);
    }
  }

  else if (a2 > 0xFD)
  {
    v29 = (v8 + 1);
    if (v29 <= 3)
    {
      v30 = ~(-1 << (8 * (v8 + 1)));
    }

    else
    {
      v30 = -1;
    }

    if (v8 != -1)
    {
      v31 = v30 & (a2 - 254);
      if (v29 <= 3)
      {
        v32 = v8 + 1;
      }

      else
      {
        v32 = 4;
      }

      bzero(a1, v29);
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

  else
  {
    a1[v8] = -a2;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataFormatting.EntriesState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for TimeDataFormatting.EntriesState(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v3 = type metadata accessor for Date();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *initializeWithCopy for TimeDataFormatting.EntriesState(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithCopy for TimeDataFormatting.EntriesState(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TimeDataFormatting.EntriesState(a1);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t outlined destroy of TimeDataFormatting.EntriesState(uint64_t a1)
{
  v2 = type metadata accessor for TimeDataFormatting.EntriesState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeWithTake for TimeDataFormatting.EntriesState(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for TimeDataFormatting.EntriesState(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of TimeDataFormatting.EntriesState(a1);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for TimeDataFormatting.EntriesState()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t (*implicit closure #1 in TimeDataFormatting.ComplyingFormatStyleEntries.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for TimeDataFormatting.ComplyingFormatStyleEntries();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return partial apply for implicit closure #2 in implicit closure #1 in TimeDataFormatting.ComplyingFormatStyleEntries.next();
}

uint64_t TimeDataFormatting.ComplyingFormatStyleEntries.nextEntry(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _ss11AnySequenceVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19[-v15];
  v17 = *(a2 + 32);
  v20 = *(a2 + 16);
  v21 = v17;
  v22 = v3;
  TimeDataSourceStorage.withValue(for:call:)(a1, partial apply for closure #1 in TimeDataFormatting.ComplyingFormatStyleEntries.nextEntry(for:), v19, v20, v17, &v19[-v15]);
  outlined init with copy of Date?(v16, v13);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    outlined destroy of Date?(v13);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    lazy protocol witness table accessor for type Date and conformance Date();
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      Date.timeIntervalSinceReferenceDate.getter();
      Date.init(timeIntervalSinceReferenceDate:)();
      (*(v8 + 8))(v10, v7);
      outlined destroy of Date?(v16);
      return (*(v8 + 56))(a3, 0, 1, v7);
    }

    (*(v8 + 8))(v10, v7);
  }

  return outlined init with take of Date?(v16, a3);
}

uint64_t TimeDataFormatting.EntriesState.next(_:)@<X0>(void (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  _ss11AnySequenceVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for TimeDataFormatting.EntriesState();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TimeDataFormatting.EntriesState(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined destroy of TimeDataFormatting.EntriesState(v2);
    v24 = *(v7 + 32);
    v24(v15, v18, v6);
    (*(v7 + 16))(v2, v15, v6);
    swift_storeEnumTagMultiPayload();
    v23 = v29;
    v24(v29, v15, v6);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of TimeDataFormatting.EntriesState(v2);
    v20 = v18;
    v21 = *(v7 + 32);
    v21(v12, v20, v6);
    v28(v12);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v7 + 8))(v12, v6);
      outlined destroy of Date?(v5);
      swift_storeEnumTagMultiPayload();
      goto LABEL_5;
    }

    v21(v9, v5, v6);
    (*(v7 + 16))(v2, v9, v6);
    swift_storeEnumTagMultiPayload();
    Date.timeIntervalSince(_:)();
    if (v26 <= 0.0333333333)
    {
      (*(v7 + 8))(v12, v6);
      v23 = v29;
      v21(v29, v9, v6);
    }

    else
    {
      v23 = v29;
      static Date.+ infix(_:_:)();
      v27 = *(v7 + 8);
      v27(v9, v6);
      v27(v12, v6);
    }

LABEL_7:
    v22 = 0;
    return (*(v7 + 56))(v23, v22, 1, v6);
  }

LABEL_5:
  v22 = 1;
  v23 = v29;
  return (*(v7 + 56))(v23, v22, 1, v6);
}

uint64_t TimeDataFormatting.ComplyingFormatStyleEntries.next()@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void)@<X1>, char *a3@<X8>)
{
  v5 = a2(v3, a1[2], a1[3], a1[4], a1[5]);
  TimeDataFormatting.EntriesState.next(_:)(v5, a3);
}

uint64_t (*implicit closure #1 in TimeDataFormatting.FallbackRedactionEntries.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for TimeDataFormatting.FallbackRedactionEntries();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return partial apply for implicit closure #2 in implicit closure #1 in TimeDataFormatting.FallbackRedactionEntries.next();
}

uint64_t TimeDataFormatting.FallbackRedactionEntries.nextEntry(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v52 = a3;
  v7 = type metadata accessor for Date();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v44 - v12;
  _ss11AnySequenceVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v53 = v4[*(a2 + 60)];
  v24 = *(a2 + 16);
  v23 = *(a2 + 24);
  v25 = *(a2 + 32);
  v26 = *(a2 + 40);
  v49 = *(a2 + 52);
  v27 = DiscreteFormatStyle.needsRedaction<A>(for:evaluating:at:)(&v53, &v4[v49], a1, v23, v24, v26, v25);
  if (v27)
  {
    v28 = v48;
    v29 = static Date.+ infix(_:_:)();
    MEMORY[0x1EEE9AC00](v29);
    *(&v44 - 6) = v24;
    *(&v44 - 5) = v23;
    *(&v44 - 4) = v25;
    *(&v44 - 3) = v26;
    *(&v44 - 2) = v4;
    TimeDataSourceStorage.withValue(for:call:)(v28, partial apply for closure #2 in TimeDataFormatting.FallbackRedactionEntries.nextEntry(for:), (&v44 - 8), v24, v25, v22);
    v30 = v50;
    v31 = *(v50 + 8);
    v32 = v28;
    v33 = v51;
    v31(v32, v51);
    v34 = v47;
    outlined init with copy of Date?(v22, v47);
    if ((*(v30 + 48))(v34, 1, v33) == 1)
    {
      outlined destroy of Date?(v34);
      v35 = v22;
    }

    else
    {
      v39 = v45;
      (*(v30 + 32))(v45, v34, v33);
      lazy protocol witness table accessor for type Date and conformance Date();
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        Date.timeIntervalSinceReferenceDate.getter();
        v40 = v52;
        Date.init(timeIntervalSinceReferenceDate:)();
        v31(v39, v33);
        outlined destroy of Date?(v22);
        return (*(v30 + 56))(v40, 0, 1, v33);
      }

      v31(v39, v33);
      v35 = v22;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v27);
    *(&v44 - 6) = v24;
    *(&v44 - 5) = v23;
    *(&v44 - 4) = v25;
    *(&v44 - 3) = v26;
    *(&v44 - 2) = v4;
    TimeDataSourceStorage.withValue(for:call:)(a1, partial apply for closure #1 in TimeDataFormatting.FallbackRedactionEntries.nextEntry(for:), (&v44 - 8), v24, v25, v17);
    v36 = v46;
    outlined init with copy of Date?(v17, v46);
    v38 = v50;
    v37 = v51;
    if ((*(v50 + 48))(v36, 1, v51) == 1)
    {
      outlined destroy of Date?(v36);
    }

    else
    {
      v42 = v44;
      (*(v38 + 32))(v44, v36, v37);
      lazy protocol witness table accessor for type Date and conformance Date();
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        Date.timeIntervalSinceReferenceDate.getter();
        v43 = v52;
        Date.init(timeIntervalSinceReferenceDate:)();
        (*(v38 + 8))(v42, v37);
        outlined destroy of Date?(v17);
        return (*(v38 + 56))(v43, 0, 1, v37);
      }

      (*(v38 + 8))(v42, v37);
    }

    v35 = v17;
  }

  return outlined init with take of Date?(v35, v52);
}

uint64_t closure #2 in TimeDataFormatting.FallbackRedactionEntries.nextEntry(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v82 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v84 = *(v14 - 8);
  v85 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v69 - v23;
  v24 = type metadata accessor for FloatingPointRoundingRule();
  v25 = *(v24 - 8);
  v76 = v24;
  v77 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = AssociatedTypeWitness;
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v28);
  v69 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v70 = &v69 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v73 = &v69 - v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v69 - v36;
  (*(v38 + 104))(v27, *MEMORY[0x1E69E7048], v35);
  v88 = a3;
  v89 = a4;
  v81 = a4;
  v90 = a5;
  v91 = a6;
  v83 = a6;
  v39 = type metadata accessor for TimeDataFormatting.FallbackRedactionEntries();
  (*(a5 + 56))(a1, v27, a3, a5, 1.0 / dbl_18DDE63F0[*(a2 + *(v39 + 60))]);
  (*(v77 + 8))(v27, v76);
  v40 = (*(a5 + 64))(a1, a3, a5);
  v75 = a2;
  v72 = v39;
  if (v40)
  {
    v41 = v78;
    dispatch thunk of DiscreteFormatStyle.discreteInput(after:)();
    v42 = v79;
    v43 = v87;
  }

  else
  {
    v43 = v87;
    v41 = v78;
    v42 = v79;
    (*(v87 + 16))(v78, v37, v79);
    (*(v43 + 56))(v41, 0, 1, v42);
  }

  v44 = v37;
  v46 = v84;
  v45 = v85;
  v47 = v86;
  (*(v84 + 32))(v86, v41, v85);
  v48 = v80;
  (*(v46 + 16))(v80, v47, v45);
  v49 = v43;
  v50 = v43;
  v51 = v48;
  v52 = *(v49 + 48);
  v53 = v52(v51, 1, v42);
  v56 = *(v46 + 8);
  v55 = v46 + 8;
  v54 = v56;
  if (v53 == 1)
  {
    v54(v51, v45);
    v84 = *(v72 + 56);
    v57 = v74;
    v80 = v44;
    dispatch thunk of DiscreteFormatStyle.discreteInput(before:)();
    if (v52(v57, 1, v42) == 1)
    {
      v54(v86, v45);
      v50 = v87;
      (*(v87 + 8))(v80, v42);
      v58 = v82;
    }

    else
    {
      v63 = v87;
      v64 = v70;
      v78 = *(v87 + 32);
      v79 = v87 + 32;
      (v78)(v70, v57, v42);
      v57 = v71;
      dispatch thunk of DiscreteFormatStyle.input(after:)();
      v65 = *(v63 + 8);
      v65(v64, v42);
      v84 = v55;
      v54(v86, v85);
      v65(v80, v42);
      if (v52(v57, 1, v42) != 1)
      {
        v66 = v69;
        v67 = v78;
        (v78)(v69, v57, v42);
        v58 = v82;
        (v67)(v82, v66, v42);
        v62 = 0;
        v50 = v87;
        return (*(v50 + 56))(v58, v62, 1, v42);
      }

      v58 = v82;
      v45 = v85;
      v50 = v87;
    }

    v54(v57, v45);
    v62 = 1;
  }

  else
  {
    v54(v47, v45);
    (*(v50 + 8))(v44, v42);
    v59 = v51;
    v60 = *(v50 + 32);
    v61 = v73;
    v60(v73, v59, v42);
    v58 = v82;
    v60(v82, v61, v42);
    v62 = 0;
  }

  return (*(v50 + 56))(v58, v62, 1, v42);
}

void _ss11AnySequenceVy10Foundation4DateVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of TimeDataFormatting.EntriesState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeDataFormatting.EntriesState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  _ss11AnySequenceVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in TimeDataFormatting.ComplyingFormatStyleEntries.next()(uint64_t a1, uint64_t (*a2)(void, uint64_t *), uint64_t (*a3)(uint64_t, uint64_t))
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v13 = v3[2];
  v7 = v13;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  a2(0, &v13);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v11 = a2(0, &v13);
  return a3(a1, v11);
}

uint64_t partial apply for closure #1 in TimeDataFormatting.ComplyingFormatStyleEntries.nextEntry(for:)(uint64_t a1, void (*a2)(void, uint64_t *))
{
  v3 = *(v2 + 40);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v3;
  a2(0, &v5);
  return dispatch thunk of DiscreteFormatStyle.discreteInput(after:)();
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickV033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0jG7ElementAMLLOTt0g5()
{
  v1 = *v0;
  _s7SwiftUI9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionP0VGGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<KickModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 16);

    outlined copy of BodyInputElement();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickT033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickV033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_AA0jG7ElementAMLLOTt0g5()
{
  v1 = *v0;
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_1(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>, type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>, type metadata accessor for BodyInput);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA23TranslationKickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 16);

    outlined copy of BodyInputElement();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickT033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationV033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0jG7ElementAMLLOTt0g5Tm(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t), void (*a3)(void *, uint64_t, _BYTE *))
{
  v6 = v3;
  v7 = *v3;
  v8 = a1(0);
  BloomFilter.init(hashValue:)(v8);
  v9 = a2(v7, v15);
  if (v9 && (v10 = *(v9 + 72)) != 0)
  {
    v11 = *(v10 + 40);
    v12 = *(v10 + 16);

    outlined copy of BodyInputElement();
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  a3(v6, v11, v14);

  return v12;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateV033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0jG7ElementAMLLOTt0g5()
{
  v1 = *v0;
  _s7SwiftUI9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionP0VGGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassTransitionStateModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA28GlassTransitionStateModifier04_D12L27F25A0BD65FFBD3A7636B60067DFLLVGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 16);

    outlined copy of BodyInputElement();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateT033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeV033_62A32D59B8A902A88963544196023CF7LLVGG_AA0jG7ElementAMLLOTt0g5()
{
  v1 = *v0;
  _s7SwiftUI9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionP0VGGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectShapeModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 16);

    outlined copy of BodyInputElement();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeT033_62A32D59B8A902A88963544196023CF7LLVGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionV0VGG_AA0jG7ElementAMLLOTt0g5()
{
  v1 = *v0;
  _s7SwiftUI9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionP0VGGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier, &type metadata for FlexInteractionModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA23FlexInteractionModifierVGG_Tt0B5(v1, v9);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 16);

    outlined copy of BodyInputElement();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionT0VGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0w17CaptureProtectionuV0VGG_AA0jG7ElementAMLLOTt0g5()
{
  _s7SwiftUI9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionP0VGGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ContentCaptureProtectionViewModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier, &type metadata for ContentCaptureProtectionViewModifier);
  BloomFilter.init(hashValue:)(v1);

  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA36ContentCaptureProtectionViewModifierVGG_Tt0B5(v2, v9);
  if (!v3)
  {

    goto LABEL_5;
  }

  v4 = v3[9];

  if (!v4)
  {
LABEL_5:
    v6 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + 40);
  v6 = *(v4 + 16);
  outlined copy of BodyInputElement();

LABEL_6:

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0u17CaptureProtectionsT0VGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameV0VGG_AA0jG7ElementAMLLOTt0g5()
{
  _s7SwiftUI9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionP0VGGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<FlexibleButtonFrameModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier);
  BloomFilter.init(hashValue:)(v1);

  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA27FlexibleButtonFrameModifierVGG_Tt0B5(v2, v9);
  if (!v3)
  {

    goto LABEL_5;
  }

  v4 = v3[9];

  if (!v4)
  {
LABEL_5:
    v6 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + 40);
  v6 = *(v4 + 16);
  outlined copy of BodyInputElement();

LABEL_6:

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA019FlexibleButtonFrameT0VGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingV0VGG_AA0jG7ElementAMLLOTt0g5()
{
  _s7SwiftUI9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionP0VGGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<SafeAreaPaddingModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier);
  BloomFilter.init(hashValue:)(v1);

  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA23SafeAreaPaddingModifierVGG_Tt0B5(v2, v9);
  if (!v3)
  {

    goto LABEL_5;
  }

  v4 = v3[9];

  if (!v4)
  {
LABEL_5:
    v6 = 0;
    v5 = 0;
    goto LABEL_6;
  }

  v5 = *(v4 + 40);
  v6 = *(v4 + 16);
  outlined copy of BodyInputElement();

LABEL_6:

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingT0VGG_Tt2B5(v0, v5, v8);

  return v6;
}

uint64_t _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v54 = *(a1 + 32);
  v55 = v4;
  v56 = *(a1 + 64);
  v57 = *(a1 + 80);
  v5 = *(a1 + 16);
  v52 = *a1;
  v53 = v5;
  outlined init with copy of _ViewInputs(a1, &v38);
  v6 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationV033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0jG7ElementAMLLOTt0g5Tm(type metadata accessor for BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>, _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA26ScheduledAnimationModifier020_94C2570E898B27608B6L11D65EF8A1A07LLVySiGGG_Tt0B5, _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationT033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_Tt2B5);
  if (v8 == -1)
  {
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 8) = 0;
    v22 = *MEMORY[0x1E698D3F8];
    v40 = v54;
    v41 = v55;
    v42 = v56;
    LODWORD(v43) = v57;
    v38 = v52;
    v39 = v53;
    result = outlined destroy of _ViewInputs(&v38);
    *(a2 + 12) = v22;
    return result;
  }

  v9 = v6;
  v10 = v7;
  v11 = v8;
  if (v8)
  {
    v48 = v54;
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v46 = v52;
    v47 = v53;
    v12 = swift_allocObject();
    v13 = *(a1 + 48);
    *(v12 + 48) = *(a1 + 32);
    *(v12 + 64) = v13;
    *(v12 + 80) = *(a1 + 64);
    *(v12 + 96) = *(a1 + 80);
    v14 = *(a1 + 16);
    *(v12 + 16) = *a1;
    *(v12 + 32) = v14;
    *(v12 + 104) = v9;
    *(v12 + 112) = v10;
    v40 = v54;
    v41 = v55;
    v42 = v56;
    LODWORD(v43) = v57;
    v38 = v52;
    v39 = v53;
    *(&v43 + 1) = closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)partial apply;
    v44 = v12;
    v45 = 0;
    v15 = v46;
    outlined init with copy of _ViewInputs(&v46, &v24);
    outlined init with copy of _ViewInputs(a1, &v24);
    outlined init with copy of _ViewInputs(&v46, &v24);
    outlined copy of BodyInputElement?(v9, v10, v11);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v15);
    result = (*(v16 + 8))(&v38, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
    v18 = *(&v44 + 1);
    if (!*(&v44 + 1))
    {
      __break(1u);
      return result;
    }

    v19 = v45;
    v20 = HIDWORD(v45);
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;

    outlined destroy of MakeViewRoot(&v24);

    outlined consume of BodyInputElement?(v9, v10, v11);
    outlined destroy of _ViewInputs(&v46);
    *a2 = v18;
    *(a2 + 8) = v19;
    *(a2 + 12) = v20;
    v34 = v54;
    v35 = v55;
    v36 = v56;
    v37 = v57;
    v32 = v52;
    v33 = v53;
    v21 = &v32;
  }

  else
  {
    v48 = v54;
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v46 = v52;
    v47 = v53;
    v34 = v54;
    v35 = v55;
    v36 = v56;
    v37 = v57;
    v32 = v52;
    v33 = v53;
    v23 = outlined init with copy of _ViewInputs(&v46, &v38);
    v9(v23, &v32);
    outlined consume of BodyInputElement?(v9, v10, v11);
    v26 = v34;
    v27 = v35;
    v28 = v36;
    LODWORD(v29) = v37;
    v24 = v32;
    v25 = v33;
    outlined destroy of _ViewInputs(&v24);
    v40 = v54;
    v41 = v55;
    v42 = v56;
    LODWORD(v43) = v57;
    v38 = v52;
    v39 = v53;
    v21 = &v38;
  }

  return outlined destroy of _ViewInputs(v21);
}

uint64_t _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_Tt2B5@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v54 = *(a1 + 32);
  v55 = v4;
  v56 = *(a1 + 64);
  v57 = *(a1 + 80);
  v5 = *(a1 + 16);
  v52 = *a1;
  v53 = v5;
  outlined init with copy of _ViewInputs(a1, &v38);
  v6 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationV033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_AA0jG7ElementAMLLOTt0g5Tm(type metadata accessor for BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>, _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA18ScalePulseModifier33_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_Tt0B5, _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA010ScalePulseT033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGG_Tt2B5);
  if (v8 == -1)
  {
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 8) = 0;
    v22 = *MEMORY[0x1E698D3F8];
    v40 = v54;
    v41 = v55;
    v42 = v56;
    LODWORD(v43) = v57;
    v38 = v52;
    v39 = v53;
    result = outlined destroy of _ViewInputs(&v38);
    *(a2 + 12) = v22;
    return result;
  }

  v9 = v6;
  v10 = v7;
  v11 = v8;
  if (v8)
  {
    v48 = v54;
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v46 = v52;
    v47 = v53;
    v12 = swift_allocObject();
    v13 = *(a1 + 48);
    *(v12 + 48) = *(a1 + 32);
    *(v12 + 64) = v13;
    *(v12 + 80) = *(a1 + 64);
    *(v12 + 96) = *(a1 + 80);
    v14 = *(a1 + 16);
    *(v12 + 16) = *a1;
    *(v12 + 32) = v14;
    *(v12 + 104) = v9;
    *(v12 + 112) = v10;
    v40 = v54;
    v41 = v55;
    v42 = v56;
    LODWORD(v43) = v57;
    v38 = v52;
    v39 = v53;
    *(&v43 + 1) = closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)partial apply;
    v44 = v12;
    v45 = 0;
    v15 = v46;
    outlined init with copy of _ViewInputs(&v46, &v24);
    outlined init with copy of _ViewInputs(a1, &v24);
    outlined init with copy of _ViewInputs(&v46, &v24);
    outlined copy of BodyInputElement?(v9, v10, v11);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v15);
    result = (*(v16 + 8))(&v38, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
    v18 = *(&v44 + 1);
    if (!*(&v44 + 1))
    {
      __break(1u);
      return result;
    }

    v19 = v45;
    v20 = HIDWORD(v45);
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;

    outlined destroy of MakeViewRoot(&v24);

    outlined consume of BodyInputElement?(v9, v10, v11);
    outlined destroy of _ViewInputs(&v46);
    *a2 = v18;
    *(a2 + 8) = v19;
    *(a2 + 12) = v20;
    v34 = v54;
    v35 = v55;
    v36 = v56;
    v37 = v57;
    v32 = v52;
    v33 = v53;
    v21 = &v32;
  }

  else
  {
    v48 = v54;
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v46 = v52;
    v47 = v53;
    v34 = v54;
    v35 = v55;
    v36 = v56;
    v37 = v57;
    v32 = v52;
    v33 = v53;
    v23 = outlined init with copy of _ViewInputs(&v46, &v38);
    v9(v23, &v32);
    outlined consume of BodyInputElement?(v9, v10, v11);
    v26 = v34;
    v27 = v35;
    v28 = v36;
    LODWORD(v29) = v37;
    v24 = v32;
    v25 = v33;
    outlined destroy of _ViewInputs(&v24);
    v40 = v54;
    v41 = v55;
    v42 = v56;
    LODWORD(v43) = v57;
    v38 = v52;
    v39 = v53;
    v21 = &v38;
  }

  return outlined destroy of _ViewInputs(v21);
}

uint64_t _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA015FlexInteractionD0VG_Tt2B5Tm@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 48);
  v59 = *(a1 + 32);
  v60 = v8;
  v61 = *(a1 + 64);
  v62 = *(a1 + 80);
  v9 = *(a1 + 16);
  v57 = *a1;
  v58 = v9;
  v10 = outlined init with copy of _ViewInputs(a1, &v43);
  v11 = a2(v10);
  if (v13 == -1)
  {
    *a4 = MEMORY[0x1E69E7CC0];
    *(a4 + 8) = 0;
    v27 = *MEMORY[0x1E698D3F8];
    v45 = v59;
    v46 = v60;
    v47 = v61;
    LODWORD(v48) = v62;
    v43 = v57;
    v44 = v58;
    result = outlined destroy of _ViewInputs(&v43);
    *(a4 + 12) = v27;
    return result;
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
  if (v13)
  {
    v53 = v59;
    v54 = v60;
    v55 = v61;
    v56 = v62;
    v51 = v57;
    v52 = v58;
    v17 = swift_allocObject();
    v18 = *(a1 + 48);
    *(v17 + 48) = *(a1 + 32);
    *(v17 + 64) = v18;
    *(v17 + 80) = *(a1 + 64);
    *(v17 + 96) = *(a1 + 80);
    v19 = *(a1 + 16);
    *(v17 + 16) = *a1;
    *(v17 + 32) = v19;
    *(v17 + 104) = v14;
    *(v17 + 112) = v15;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    LODWORD(v48) = v62;
    v43 = v57;
    v44 = v58;
    *(&v48 + 1) = a3;
    v49 = v17;
    v50 = 0;
    v20 = v51;
    outlined init with copy of _ViewInputs(&v51, &v29);
    outlined init with copy of _ViewInputs(a1, &v29);
    outlined init with copy of _ViewInputs(&v51, &v29);
    outlined copy of BodyInputElement?(v14, v15, v16);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v20);
    result = (*(v21 + 8))(&v43, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
    v23 = *(&v49 + 1);
    if (!*(&v49 + 1))
    {
      __break(1u);
      return result;
    }

    v24 = v50;
    v25 = HIDWORD(v50);
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v32 = v46;

    outlined destroy of MakeViewRoot(&v29);

    outlined consume of BodyInputElement?(v14, v15, v16);
    outlined destroy of _ViewInputs(&v51);
    *a4 = v23;
    *(a4 + 8) = v24;
    *(a4 + 12) = v25;
    v39 = v59;
    v40 = v60;
    v41 = v61;
    v42 = v62;
    v37 = v57;
    v38 = v58;
    v26 = &v37;
  }

  else
  {
    v53 = v59;
    v54 = v60;
    v55 = v61;
    v56 = v62;
    v51 = v57;
    v52 = v58;
    v39 = v59;
    v40 = v60;
    v41 = v61;
    v42 = v62;
    v37 = v57;
    v38 = v58;
    v28 = outlined init with copy of _ViewInputs(&v51, &v43);
    v14(v28, &v37);
    outlined consume of BodyInputElement?(v14, v15, v16);
    v31 = v39;
    v32 = v40;
    v33 = v41;
    LODWORD(v34) = v42;
    v29 = v37;
    v30 = v38;
    outlined destroy of _ViewInputs(&v29);
    v45 = v59;
    v46 = v60;
    v47 = v61;
    LODWORD(v48) = v62;
    v43 = v57;
    v44 = v58;
    v26 = &v43;
  }

  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA0e17CaptureProtectioncD0VG_Tt0t2B5Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 48);
  v59 = *(a1 + 32);
  v60 = v8;
  v61 = *(a1 + 64);
  v62 = *(a1 + 80);
  v9 = *(a1 + 16);
  v57 = *a1;
  v58 = v9;
  v10 = outlined init with copy of _ViewInputs(a1, &v43);
  v11 = a2(v10);
  if (v13 == -1)
  {
    *a4 = MEMORY[0x1E69E7CC0];
    *(a4 + 8) = 0;
    v27 = *MEMORY[0x1E698D3F8];
    v45 = v59;
    v46 = v60;
    v47 = v61;
    LODWORD(v48) = v62;
    v43 = v57;
    v44 = v58;
    result = outlined destroy of _ViewInputs(&v43);
    *(a4 + 12) = v27;
    return result;
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
  if (v13)
  {
    v53 = v59;
    v54 = v60;
    v55 = v61;
    v56 = v62;
    v51 = v57;
    v52 = v58;
    v17 = swift_allocObject();
    v18 = *(a1 + 48);
    *(v17 + 48) = *(a1 + 32);
    *(v17 + 64) = v18;
    *(v17 + 80) = *(a1 + 64);
    *(v17 + 96) = *(a1 + 80);
    v19 = *(a1 + 16);
    *(v17 + 16) = *a1;
    *(v17 + 32) = v19;
    *(v17 + 104) = v14;
    *(v17 + 112) = v15;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    LODWORD(v48) = v62;
    v43 = v57;
    v44 = v58;
    *(&v48 + 1) = a3;
    v49 = v17;
    v50 = 0;
    v20 = v51;
    outlined init with copy of _ViewInputs(&v51, &v29);
    outlined init with copy of _ViewInputs(a1, &v29);
    outlined init with copy of _ViewInputs(&v51, &v29);
    outlined copy of BodyInputElement?(v14, v15, v16);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v20);
    result = (*(v21 + 8))(&v43, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
    v23 = *(&v49 + 1);
    if (!*(&v49 + 1))
    {
      __break(1u);
      return result;
    }

    v24 = v50;
    v25 = HIDWORD(v50);
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v32 = v46;

    outlined destroy of MakeViewRoot(&v29);

    outlined consume of BodyInputElement?(v14, v15, v16);
    outlined destroy of _ViewInputs(&v51);
    *a4 = v23;
    *(a4 + 8) = v24;
    *(a4 + 12) = v25;
    v39 = v59;
    v40 = v60;
    v41 = v61;
    v42 = v62;
    v37 = v57;
    v38 = v58;
    v26 = &v37;
  }

  else
  {
    v53 = v59;
    v54 = v60;
    v55 = v61;
    v56 = v62;
    v51 = v57;
    v52 = v58;
    v39 = v59;
    v40 = v60;
    v41 = v61;
    v42 = v62;
    v37 = v57;
    v38 = v58;
    v28 = outlined init with copy of _ViewInputs(&v51, &v43);
    v14(v28, &v37);
    outlined consume of BodyInputElement?(v14, v15, v16);
    v31 = v39;
    v32 = v40;
    v33 = v41;
    LODWORD(v34) = v42;
    v29 = v37;
    v30 = v38;
    outlined destroy of _ViewInputs(&v29);
    v45 = v59;
    v46 = v60;
    v47 = v61;
    LODWORD(v48) = v62;
    v43 = v57;
    v44 = v58;
    v26 = &v43;
  }

  return outlined destroy of _ViewInputs(v26);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA14MaterialEffectV_Tt3g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 32);
  v44[1] = *(a2 + 16);
  v44[2] = v10;
  v44[0] = *a2;
  v11 = WORD2(v10);
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(0, &lazy cache variable for type metadata for UnaryElements<BodyUnaryViewGenerator>, &type metadata for BodyUnaryViewGenerator, &protocol witness table for BodyUnaryViewGenerator, type metadata accessor for UnaryElements);
  v43[3] = v12;
  v43[4] = &protocol witness table for UnaryElements<A>;
  v13 = swift_allocObject();
  v43[0] = v13;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a1;
  v14 = *(a2 + 16);
  *(v13 + 40) = *a2;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a2 + 32);
  if ((v11 & 0x100) != 0)
  {
    v18 = *&v44[0];
    swift_retain_n();
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
    swift_retain_n();
    outlined init with copy of _GraphInputs(v44, v33);
    v15 = 0;
    v16 = *MEMORY[0x1E698D3F8];
    v17 = 1;
  }

  v21 = *(a2 + 64);
  if (v21 != v16)
  {
    goto LABEL_13;
  }

  v22 = !v17;
  if ((*(a2 + 56) & 3) == 1)
  {
    v22 = 1;
  }

  if (v22 & 1) != 0 || (v23 = *(a2 + 128), v23 != 255) && ((v23 & 1) != 0 || (*(a2 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v43, v32);
    v24 = *(a2 + 48);
    v25 = (*(a2 + 56) & 1) != 0 && (*(a2 + 56) & 2) == 0;
    v31 = *(a2 + 112);
    v26 = *(a2 + 128);
    v27 = *(a2 + 72);
    v28 = *(a2 + 80);
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
    *a5 = v29;
    *(a5 + 8) = 0;
    *(a5 + 40) = 1;
  }

  else
  {

    outlined init with copy of AnyTrackedValue(v43, a5);
    *(a5 + 40) = 0;
    v24 = *(a2 + 48);
  }

  *(a5 + 48) = v24 + 1;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA28GlassEffectContainerModifier33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v42[1] = *(a1 + 16);
  v42[2] = v8;
  v42[0] = *a1;
  v9 = WORD2(v8);
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(0, &lazy cache variable for type metadata for UnaryElements<BodyUnaryViewGenerator>, &type metadata for BodyUnaryViewGenerator, &protocol witness table for BodyUnaryViewGenerator, type metadata accessor for UnaryElements);
  v41[3] = v10;
  v41[4] = &protocol witness table for UnaryElements<A>;
  v11 = swift_allocObject();
  v41[0] = v11;
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = &type metadata for GlassEffectContainerModifier;
  v12 = *(a1 + 16);
  *(v11 + 40) = *a1;
  *(v11 + 56) = v12;
  *(v11 + 72) = *(a1 + 32);
  if ((v9 & 0x100) != 0)
  {
    v16 = *&v42[0];
    swift_retain_n();
    outlined init with copy of _GraphInputs(v42, v31);
    v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v16);
    Attribute = AGWeakAttributeGetAttribute();
    v14 = *MEMORY[0x1E698D3F8];
    v15 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v13 = 0;
    }

    else
    {
      v13 = v17;
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _GraphInputs(v42, v31);
    v13 = 0;
    v14 = *MEMORY[0x1E698D3F8];
    v15 = 1;
  }

  v19 = *(a1 + 64);
  if (v19 != v14)
  {
    goto LABEL_13;
  }

  v20 = !v15;
  if ((*(a1 + 56) & 3) == 1)
  {
    v20 = 1;
  }

  if (v20 & 1) != 0 || (v21 = *(a1 + 128), v21 != 255) && ((v21 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v41, v30);
    v22 = *(a1 + 48);
    v23 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v29 = *(a1 + 112);
    v24 = *(a1 + 128);
    v25 = *(a1 + 72);
    v26 = *(a1 + 80);
    if (v19 == v14)
    {
      v19 = v14;
    }

    outlined init with take of _ViewList_Elements(v30, v31);
    v32 = v22;
    v33 = v23;
    v34 = v13;
    v35 = v15;
    v36 = v29;
    v37 = v24;
    v38 = v25;
    v39 = v26;
    v40 = v19;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v27 = Attribute.init<A>(body:value:flags:update:)();

    outlined destroy of BaseViewList.Init(v31);
    *a4 = v27;
    *(a4 + 8) = 0;
    *(a4 + 40) = 1;
  }

  else
  {

    outlined init with copy of AnyTrackedValue(v41, a4);
    *(a4 + 40) = 0;
    v22 = *(a1 + 48);
  }

  *(a4 + 48) = v22 + 1;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _ViewModifier_Content<ScheduledAnimationModifier<Int>>, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, type metadata accessor for ScheduledAnimationModifier, lazy protocol witness table accessor for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA04KickL033_02B8A9C041E17C70E13F37D6E2D14302LLVG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for _ViewModifier_Content, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>(0, a4, a5, a6, a7);
  v13 = v12;
  v14 = *(a1 + 32);
  v48[1] = *(a1 + 16);
  v48[2] = v14;
  v48[0] = *a1;
  v15 = WORD2(v14);
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(0, &lazy cache variable for type metadata for UnaryElements<BodyUnaryViewGenerator>, &type metadata for BodyUnaryViewGenerator, &protocol witness table for BodyUnaryViewGenerator, type metadata accessor for UnaryElements);
  v47[3] = v16;
  v47[4] = &protocol witness table for UnaryElements<A>;
  v17 = swift_allocObject();
  v47[0] = v17;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = v13;
  v18 = *(a1 + 16);
  *(v17 + 40) = *a1;
  *(v17 + 56) = v18;
  *(v17 + 72) = *(a1 + 32);
  if ((v15 & 0x100) != 0)
  {
    v22 = *&v48[0];
    swift_retain_n();
    outlined init with copy of _GraphInputs(v48, v37);
    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v22);
    Attribute = AGWeakAttributeGetAttribute();
    v20 = *MEMORY[0x1E698D3F8];
    v21 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v19 = 0;
    }

    else
    {
      v19 = v23;
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _GraphInputs(v48, v37);
    v19 = 0;
    v20 = *MEMORY[0x1E698D3F8];
    v21 = 1;
  }

  v25 = *(a1 + 64);
  if (v25 != v20)
  {
    goto LABEL_13;
  }

  v26 = !v21;
  if ((*(a1 + 56) & 3) == 1)
  {
    v26 = 1;
  }

  if (v26 & 1) != 0 || (v27 = *(a1 + 128), v27 != 255) && ((v27 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v47, v36);
    v28 = *(a1 + 48);
    v29 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v35 = *(a1 + 112);
    v30 = *(a1 + 128);
    v31 = *(a1 + 72);
    v32 = *(a1 + 80);
    if (v25 == v20)
    {
      v25 = v20;
    }

    outlined init with take of _ViewList_Elements(v36, v37);
    v38 = v28;
    v39 = v29;
    v40 = v19;
    v41 = v21;
    v42 = v35;
    v43 = v30;
    v44 = v31;
    v45 = v32;
    v46 = v25;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v33 = Attribute.init<A>(body:value:flags:update:)();

    outlined destroy of BaseViewList.Init(v37);
    *a8 = v33;
    *(a8 + 8) = 0;
    *(a8 + 40) = 1;
  }

  else
  {

    outlined init with copy of AnyTrackedValue(v47, a8);
    *(a8 + 40) = 0;
    v28 = *(a1 + 48);
  }

  *(a8 + 48) = v28 + 1;
  *(a8 + 56) = 1;
  *(a8 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015TranslationKickL033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>();
  v9 = v8;
  v10 = *(a1 + 32);
  v44[1] = *(a1 + 16);
  v44[2] = v10;
  v44[0] = *a1;
  v11 = WORD2(v10);
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(0, &lazy cache variable for type metadata for UnaryElements<BodyUnaryViewGenerator>, &type metadata for BodyUnaryViewGenerator, &protocol witness table for BodyUnaryViewGenerator, type metadata accessor for UnaryElements);
  v43[3] = v12;
  v43[4] = &protocol witness table for UnaryElements<A>;
  v13 = swift_allocObject();
  v43[0] = v13;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = v9;
  v14 = *(a1 + 16);
  *(v13 + 40) = *a1;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a1 + 32);
  if ((v11 & 0x100) != 0)
  {
    v18 = *&v44[0];
    swift_retain_n();
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
    swift_retain_n();
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
    *a4 = v29;
    *(a4 + 8) = 0;
    *(a4 + 40) = 1;
  }

  else
  {

    outlined init with copy of AnyTrackedValue(v43, a4);
    *(a4 + 40) = 0;
    v24 = *(a1 + 48);
  }

  *(a4 + 48) = v24 + 1;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA010ScalePulseL033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _ViewModifier_Content<ScalePulseModifier<Int>>, &lazy cache variable for type metadata for ScalePulseModifier<Int>, type metadata accessor for ScalePulseModifier, lazy protocol witness table accessor for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt0t3g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, unint64_t *a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, void (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>(0, a4, a5, a6, a7);
  v13 = v12;
  v14 = *(a1 + 32);
  v48[1] = *(a1 + 16);
  v48[2] = v14;
  v48[0] = *a1;
  v15 = WORD2(v14);
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(0, &lazy cache variable for type metadata for UnaryElements<BodyUnaryViewGenerator>, &type metadata for BodyUnaryViewGenerator, &protocol witness table for BodyUnaryViewGenerator, type metadata accessor for UnaryElements);
  v47[3] = v16;
  v47[4] = &protocol witness table for UnaryElements<A>;
  v17 = swift_allocObject();
  v47[0] = v17;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = v13;
  v18 = *(a1 + 16);
  *(v17 + 40) = *a1;
  *(v17 + 56) = v18;
  *(v17 + 72) = *(a1 + 32);
  if ((v15 & 0x100) != 0)
  {
    v22 = *&v48[0];
    swift_retain_n();
    outlined init with copy of _GraphInputs(v48, v37);
    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v22);
    Attribute = AGWeakAttributeGetAttribute();
    v20 = *MEMORY[0x1E698D3F8];
    v21 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v19 = 0;
    }

    else
    {
      v19 = v23;
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _GraphInputs(v48, v37);
    v19 = 0;
    v20 = *MEMORY[0x1E698D3F8];
    v21 = 1;
  }

  v25 = *(a1 + 64);
  if (v25 != v20)
  {
    goto LABEL_13;
  }

  v26 = !v21;
  if ((*(a1 + 56) & 3) == 1)
  {
    v26 = 1;
  }

  if (v26 & 1) != 0 || (v27 = *(a1 + 128), v27 != 255) && ((v27 & 1) != 0 || (*(a1 + 120)))
  {
LABEL_13:
    outlined init with copy of AnyTrackedValue(v47, v36);
    v28 = *(a1 + 48);
    v29 = (*(a1 + 56) & 1) != 0 && (*(a1 + 56) & 2) == 0;
    v35 = *(a1 + 112);
    v30 = *(a1 + 128);
    v31 = *(a1 + 72);
    v32 = *(a1 + 80);
    if (v25 == v20)
    {
      v25 = v20;
    }

    outlined init with take of _ViewList_Elements(v36, v37);
    v38 = v28;
    v39 = v29;
    v40 = v19;
    v41 = v21;
    v42 = v35;
    v43 = v30;
    v44 = v31;
    v45 = v32;
    v46 = v25;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ViewList();
    lazy protocol witness table accessor for type BaseViewList.Init and conformance BaseViewList.Init();

    v33 = Attribute.init<A>(body:value:flags:update:)();

    outlined destroy of BaseViewList.Init(v37);
    *a8 = v33;
    *(a8 + 8) = 0;
    *(a8 + 40) = 1;
  }

  else
  {

    outlined init with copy of AnyTrackedValue(v47, a8);
    *(a8 + 40) = 0;
    v28 = *(a1 + 48);
  }

  *(a8 + 48) = v28 + 1;
  *(a8 + 56) = 1;
  *(a8 + 64) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA020GlassTransitionStateL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier, type metadata accessor for _ViewModifier_Content, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA016GlassEffectShapeL033_62A32D59B8A902A88963544196023CF7LLVG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for _ViewModifier_Content, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA016GlassEffectLocalL008_3DF70D9R23D7473F4D189A049B764CFEFLLVG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for _ViewModifier_Content, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015FlexInteractionL0VG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier, &type metadata for FlexInteractionModifier, type metadata accessor for _ViewModifier_Content, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA11_LayoutRootVyAA011GlassEffectL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _LayoutRoot<GlassEffectLayout>, lazy protocol witness table accessor for type GlassEffectLayout and conformance GlassEffectLayout, &type metadata for GlassEffectLayout, type metadata accessor for _LayoutRoot, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA11_LayoutRootVyAA010GlassEntryL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _LayoutRoot<GlassEntryLayout>, lazy protocol witness table accessor for type GlassEntryLayout and conformance GlassEntryLayout, &type metadata for GlassEntryLayout, type metadata accessor for _LayoutRoot, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA0m17CaptureProtectioncL0VG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier, &type metadata for ContentCaptureProtectionViewModifier, type metadata accessor for _ViewModifier_Content, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA11_LayoutRootVyAA019FlexibleButtonFrameL0VG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _LayoutRoot<FlexibleButtonFrameLayout>, lazy protocol witness table accessor for type FlexibleButtonFrameLayout and conformance FlexibleButtonFrameLayout, &type metadata for FlexibleButtonFrameLayout, type metadata accessor for _LayoutRoot, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA019FlexibleButtonFrameL0VG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _ViewModifier_Content<FlexibleButtonFrameModifier>, lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier, &type metadata for FlexibleButtonFrameModifier, type metadata accessor for _ViewModifier_Content, a4);
}

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  return _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA01_C16Modifier_ContentVyAA015SafeAreaPaddingL0VG_Tt0t3g5Tm(a1, a2, a3, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, type metadata accessor for _ViewModifier_Content, a4);
}

uint64_t _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA14MaterialEffectV_Tt3B5Tm@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *(a2 + 16);
  *&v26[40] = *(a2 + 32);
  v13 = *(a2 + 64);
  *&v26[56] = *(a2 + 48);
  *&v26[72] = v13;
  *&v26[8] = *a2;
  v14 = *(a2 + 80);
  *v26 = a1;
  *&v26[88] = v14;
  *&v26[24] = v12;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  v28 = 0uLL;
  v15 = *a2;
  outlined init with copy of _ViewInputs(a2, v25);

  v16 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v15);
  v18 = v17;
  v19 = *(v17 + 8);
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(0, a5, a6, a7, type metadata accessor for MakeModifiedRoot);
  result = v19(v26, v20, &protocol witness table for MakeModifiedRoot<A>, v16, v18);
  v22 = v28;
  if (v28)
  {
    v23 = DWORD2(v28);
    v24 = HIDWORD(*(&v28 + 1));
    v25[4] = *&v26[64];
    v25[5] = *&v26[80];
    v25[6] = v27;
    v25[7] = v28;
    v25[0] = *v26;
    v25[1] = *&v26[16];
    v25[2] = *&v26[32];
    v25[3] = *&v26[48];

    result = outlined destroy of MakeModifiedRoot<GlassEntryInteractionModifier>(v25, a5, a6, a7);
    *a8 = v22;
    *(a8 + 8) = v23;
    *(a8 + 12) = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double _s7SwiftUI14GeometryReaderV9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyACyxGG_AA01_F6InputsVtFZAA15ModifiedContentVyAA22GlassContainerResolverVyAPyAA6ZStackVyAA7ForEachVySayAA0oP0O6EffectVGAX15DisplayMaterialV2IDVAPyAA0ouF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0oP18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VG_Tt2B5@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 72);
  v6 = *(a2 + 60);
  v7 = *(a2 + 64);
  v8 = *(a2 + 16);
  v9 = *(a2 + 36);
  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = *(a2 + 76);
  *&v44 = __PAIR64__(v5, a1);
  v25 = v7;
  *(&v44 + 1) = __PAIR64__(v6, v7);
  LODWORD(v45) = v10;
  *(&v45 + 4) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>();
  type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(0, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>.Child, type metadata accessor for GeometryReader.Child);
  lazy protocol witness table accessor for type GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>.Child and conformance GeometryReader<A>.Child();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v12 = *(a2 + 16);
  v42 = *a2;
  v43 = v12;
  v14 = *(a2 + 32);
  v13 = *(a2 + 36);
  v40 = *(a2 + 40);
  v41 = *(a2 + 56);
  v15 = *(a2 + 68);
  v27 = *(a2 + 76);
  v16 = MEMORY[0x1E698D3F8];
  if ((v9 & 0x20) != 0)
  {
    v13 = v9 | 2;
    outlined init with copy of _ViewInputs(a2, &v44);
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v19 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    v20 = specialized CachedEnvironment.attribute<A>(id:_:)(v19);
    swift_endAccess();
    v21 = *v16;
    *&v44 = __PAIR64__(v5, v20);
    DWORD2(v44) = v21;
    HIDWORD(v44) = v21;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RootGeometry and conformance RootGeometry();
    Attribute.init<A>(body:value:flags:update:)();
    *&v44 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v25);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for CGPoint(0);
    lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
    v18 = Attribute.init<A>(body:value:flags:update:)();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v14 |= 0x18u;
  }

  else
  {
    OffsetAttribute2 = *(a2 + 72);
    v18 = *(a2 + 64);
    outlined init with copy of _ViewInputs(a2, &v44);
  }

  v44 = v42;
  v45 = v43;
  v46 = v14;
  v47 = v13;
  v48 = v40;
  v49 = v41;
  v50 = v18;
  v51 = v15;
  v52 = OffsetAttribute2;
  v53 = v27;
  v22 = specialized closure #1 in static GeometryReader._makeView(view:inputs:)(&v44, v26, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, specialized static Layout.makeLayoutView(root:inputs:body:), _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, &v29);
  if ((v9 & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v22);
    MEMORY[0x1EEE9AC00](v23);
    AGGraphMutateAttribute();
  }

  HIDWORD(v30) = *MEMORY[0x1E698D3F8];
  if ((LOBYTE(v30) & 0x80) == 0)
  {
    LODWORD(v30) |= 0x80u;
  }

  v31[0] = v42;
  v31[1] = v43;
  v32 = v14;
  v33 = v13;
  v34 = v40;
  v35 = v41;
  v36 = v18;
  v37 = v15;
  v38 = OffsetAttribute2;
  v39 = v27;
  outlined destroy of _ViewInputs(v31);
  *a3 = v29;
  result = v30;
  a3[1] = v30;
  return result;
}

double _s7SwiftUI14GeometryReaderV9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyACyxGG_AA01_F6InputsVtFZAA010GlassEntryF033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt2B5@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 72);
  v6 = *(a2 + 60);
  v7 = *(a2 + 64);
  v8 = *(a2 + 16);
  v9 = *(a2 + 36);
  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = *(a2 + 76);
  *&v44 = __PAIR64__(v5, a1);
  v25 = v7;
  *(&v44 + 1) = __PAIR64__(v6, v7);
  LODWORD(v45) = v10;
  *(&v45 + 4) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, GlassEntryView>();
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>(0, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>.Child, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader.Child);
  lazy protocol witness table accessor for type GeometryReader<GlassEntryView>.Child and conformance GeometryReader<A>.Child();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v12 = *(a2 + 16);
  v42 = *a2;
  v43 = v12;
  v14 = *(a2 + 32);
  v13 = *(a2 + 36);
  v40 = *(a2 + 40);
  v41 = *(a2 + 56);
  v15 = *(a2 + 68);
  v27 = *(a2 + 76);
  v16 = MEMORY[0x1E698D3F8];
  if ((v9 & 0x20) != 0)
  {
    v13 = v9 | 2;
    outlined init with copy of _ViewInputs(a2, &v44);
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v19 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    v20 = specialized CachedEnvironment.attribute<A>(id:_:)(v19);
    swift_endAccess();
    v21 = *v16;
    *&v44 = __PAIR64__(v5, v20);
    DWORD2(v44) = v21;
    HIDWORD(v44) = v21;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RootGeometry and conformance RootGeometry();
    Attribute.init<A>(body:value:flags:update:)();
    *&v44 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v25);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for CGPoint(0);
    lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
    v18 = Attribute.init<A>(body:value:flags:update:)();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v14 |= 0x18u;
  }

  else
  {
    OffsetAttribute2 = *(a2 + 72);
    v18 = *(a2 + 64);
    outlined init with copy of _ViewInputs(a2, &v44);
  }

  v44 = v42;
  v45 = v43;
  v46 = v14;
  v47 = v13;
  v48 = v40;
  v49 = v41;
  v50 = v18;
  v51 = v15;
  v52 = OffsetAttribute2;
  v53 = v27;
  v22 = specialized closure #1 in static GeometryReader._makeView(view:inputs:)(&v44, v26, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, GlassEntryView>, specialized static Layout.makeLayoutView(root:inputs:body:), _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, &v29);
  if ((v9 & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v22);
    MEMORY[0x1EEE9AC00](v23);
    AGGraphMutateAttribute();
  }

  HIDWORD(v30) = *MEMORY[0x1E698D3F8];
  if ((LOBYTE(v30) & 0x80) == 0)
  {
    LODWORD(v30) |= 0x80u;
  }

  v31[0] = v42;
  v31[1] = v43;
  v32 = v14;
  v33 = v13;
  v34 = v40;
  v35 = v41;
  v36 = v18;
  v37 = v15;
  v38 = OffsetAttribute2;
  v39 = v27;
  outlined destroy of _ViewInputs(v31);
  *a3 = v29;
  result = v30;
  a3[1] = v30;
  return result;
}

uint64_t specialized closure #1 in static GeometryReader._makeView(view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, void (*a4)(uint64_t, _OWORD *, ValueMetadata *, uint64_t)@<X3>, void (*a5)(uint64_t, __int128 *)@<X4>, uint64_t a6@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    a3(0);
    AGSubgraphBeginTreeElement();
  }

  v13 = *(a1 + 48);
  v30 = *(a1 + 32);
  v31 = v13;
  v32 = *(a1 + 64);
  v33 = *(a1 + 80);
  v14 = *(a1 + 16);
  v28 = *a1;
  v29 = v14;
  v15 = v30;
  LODWORD(v30) = 0;
  v34[0] = v28;
  v34[1] = v14;
  v35 = v33;
  v34[3] = v13;
  v34[4] = v32;
  v34[2] = v30;
  v24 = v30;
  v25 = v13;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v14;
  outlined init with copy of _ViewInputs(v34, v36);
  outlined init with copy of _ViewInputs(v34, v36);
  outlined init with copy of _ViewInputs(a1, v36);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v22, 0);
  AGGraphCreateOffsetAttribute2();
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v37 = v27;
  v36[0] = v22;
  v36[1] = v23;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  a4(OffsetAttribute2, v36, &type metadata for GeometryReaderLayout, a2);
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  outlined destroy of _ViewInputs(v20);
  outlined destroy of _ViewInputs(v34);
  LODWORD(v30) = v15;
  if (ShouldRecordTree)
  {
    a5(a6, &v28);
    AGSubgraphEndTreeElement();
  }

  v18[2] = v30;
  v18[3] = v31;
  v18[4] = v32;
  v19 = v33;
  v18[0] = v28;
  v18[1] = v29;
  return outlined destroy of _ViewInputs(v18);
}

uint64_t specialized static GlassEffectContainerModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v106 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v102 = *(a2 + 32);
  v103 = v6;
  v8 = *(a2 + 48);
  v104 = *(a2 + 64);
  v9 = *(a2 + 16);
  v100 = *a2;
  v101 = v9;
  v90 = v102;
  v91 = v8;
  v92 = *(a2 + 64);
  v10 = *a1;
  v105 = *(a2 + 80);
  v93 = *(a2 + 80);
  v88 = v100;
  v89 = v7;
  v11 = &v88;
  v12 = v8;
  *&v82 = v8;
  v13 = &type metadata for GlassContainer.Item.Key;
  v14 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  outlined init with copy of _ViewInputs(&v100, &v94);

  v15 = *(v12 + 2);
  if (v14 == v15)
  {
    goto LABEL_4;
  }

  if (v14 >= v15)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (*&v12[16 * v14 + 32] != &type metadata for GlassContainer.Item.Key)
  {
LABEL_4:
    if (v15 < v14)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v15 >= *(v12 + 3) >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15 + 1, 1, v12);
      *&v91 = v12;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v14, v14, 1, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    *&v91 = v12;
  }

  *&v94 = v12;
  v13 = &type metadata for GlassContainer.DataStorage.Key;
  v17 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.DataStorage.Key);

  v18 = *(v12 + 2);
  if (v17 != v18)
  {
    if (v17 >= v18)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
      goto LABEL_20;
    }

    if (*&v12[16 * v17 + 32] == &type metadata for GlassContainer.DataStorage.Key)
    {
      goto LABEL_17;
    }
  }

  if (v18 < v17)
  {
    goto LABEL_34;
  }

  v19 = swift_isUniquelyReferenced_nonNull_native();
  if (!v19 || v18 >= *(v12 + 3) >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v18 + 1, 1, v12);
    *&v91 = v12;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for GlassContainer.DataStorage.Key, &protocol witness table for GlassContainer.DataStorage.Key);
  *&v91 = v12;
LABEL_17:
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24IsInGlassEffectContainerV_Tt2g5(&v88, 1);

  LODWORD(v94) = 2143289344;
  Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GlassEffectBackdropObserver();
  v20 = swift_allocObject();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_weakInit();

  *(v20 + 24) = 0;
  *(v20 + 24) = AGCreateWeakAttribute();
  v96 = v102;
  v97 = v103;
  v98 = v104;
  v99 = v105;
  v94 = v100;
  v95 = v101;
  type metadata accessor for GlassContainerCache();
  swift_allocObject();
  outlined init with copy of _ViewInputs(&v100, &v82);

  v13 = specialized GlassContainerCache.init(observer:inputs:)(v21, &v94);

  swift_weakInit();
  swift_weakAssign();
  outlined init with copy of WeakBox<GlassContainerCache>(&v94, &v82);

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(&v88, &v82);

  outlined destroy of WeakBox<GlassContainerCache>(&v94);

  outlined destroy of WeakBox<GlassContainerCache>(&v82);
  v96 = v90;
  v97 = v91;
  v98 = v92;
  v99 = v93;
  v94 = v88;
  v95 = v89;
  outlined init with copy of _ViewInputs(&v94, &v82);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v94, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA016GlassEffectLocalF008_3DF70D9R23D7473F4D189A049B764CFEFLLVG_AA0no9ContainerF0ATLLVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, &v47);
  outlined destroy of _ViewInputs(&v94);
  a3 = v47;
  LODWORD(v11) = v48;
  v22 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(v47);
  if ((v22 & 0x100000000) != 0 || (v23 = v22, v42 = a4, v24 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO11DataStorageV0I0V_TtB5(a3), (v24 & 0x100000000) != 0))
  {

    v84 = v90;
    v85 = v91;
    v86 = v92;
    v87 = v93;
    v82 = v88;
    v83 = v89;
    result = outlined destroy of _ViewInputs(&v82);
    goto LABEL_32;
  }

  v25 = v24;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v27 = v101;
  swift_beginAccess();
  v28 = *(v27 + 16);
  *&v82 = __PAIR64__(v23, OffsetAttribute2);
  *(&v82 + 1) = __PAIR64__(v28, v25);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type UpdatedContainerStorage and conformance UpdatedContainerStorage();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v84 = v102;
  v85 = v103;
  v86 = v104;
  v87 = v105;
  v82 = v100;
  v83 = v101;
  swift_weakInit();
  swift_weakAssign();
  outlined init with copy of WeakBox<GlassContainerCache>(v46, v45);
  outlined init with copy of _ViewInputs(&v100, &v76);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(&v82, v45);

  outlined destroy of WeakBox<GlassContainerCache>(v46);

  outlined destroy of WeakBox<GlassContainerCache>(v45);
  if (one-time initialization token for materialBackdropProxy != -1)
  {
    goto LABEL_37;
  }

LABEL_20:
  v29 = static CachedEnvironment.ID.materialBackdropProxy;
  swift_beginAccess();
  v30 = specialized CachedEnvironment.attribute<A>(id:_:)(v29);
  swift_endAccess();
  Description = v13[7].Description;
  *&v76 = __PAIR64__(v30, v10);
  *(&v76 + 1) = Description;
  *&v77 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ContainerStorageView.Init and conformance ContainerStorageView.Init();

  v32 = Attribute.init<A>(body:value:flags:update:)();

  v78 = v84;
  v79 = v85;
  v80 = v86;
  v81 = v87;
  v76 = v82;
  v77 = v83;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v68 = v78;
  v69 = v79;
  v70 = v80;
  v71 = v81;
  v66 = v76;
  v67 = v77;
  v34 = v78;
  LODWORD(v68) = 0;
  LODWORD(v58[0]) = v32;
  v72[0] = v76;
  v72[1] = v77;
  v73 = v81;
  v72[3] = v79;
  v72[4] = v80;
  v72[2] = v68;
  v62 = v68;
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v60 = v76;
  v61 = v77;
  outlined init with copy of _ViewInputs(&v76, v74);
  outlined init with copy of _ViewInputs(v72, v74);
  static ContainerStorageView._makeView(view:inputs:)(&v60, &v43);
  v74[2] = v62;
  v74[3] = v63;
  v74[4] = v64;
  v75 = v65;
  v74[0] = v60;
  v74[1] = v61;
  outlined destroy of _ViewInputs(v74);
  LODWORD(v68) = v34;
  a4 = v42;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v43, &v66);
    AGSubgraphEndTreeElement();
  }

  v62 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v60 = v66;
  v61 = v67;
  outlined destroy of _ViewInputs(&v60);
  v54 = MEMORY[0x1E69E7CC0];
  v55 = 0;
  v50 = a3;
  v51 = v11;
  v52 = v43;
  v53 = v44;
  v35 = v103;
  v36 = *(v103 + 16);
  if (v36)
  {

    v37 = (v35 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v50, *(v37 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v37, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v37 += 2;
      --v36;
    }

    while (v36);
  }

  else
  {
  }

  v39 = v54;
  v40 = v55;

  v47 = v39;
  v48 = v40;
  LOBYTE(v58[0]) = 1;
  PreferencesOutputs.subscript.setter(0x100000000uLL, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
  LOBYTE(v58[0]) = 1;
  PreferencesOutputs.subscript.setter(0x100000000uLL, &type metadata for GlassContainer.DataStorage.Key, &protocol witness table for GlassContainer.DataStorage.Key);

  v56[2] = v84;
  v56[3] = v85;
  v56[4] = v86;
  v57 = v87;
  v56[0] = v82;
  v56[1] = v83;
  outlined destroy of _ViewInputs(v56);
  v58[2] = v90;
  v58[3] = v91;
  v58[4] = v92;
  v59 = v93;
  v58[0] = v88;
  v58[1] = v89;
  result = outlined destroy of _ViewInputs(v58);
  a3 = v47;
  LODWORD(v11) = v48;
LABEL_32:
  v41 = v49;
  *a4 = a3;
  *(a4 + 8) = v11;
  *(a4 + 12) = v41;
  return result;
}

uint64_t protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance GlassEffectContainerModifier(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5())
  {
    return 1;
  }

  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  v7[4] = a1[4];
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  return a2(v7);
}

uint64_t UpdatedContainerStorage.updateValue()()
{
  v64 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v41 = v1;
  v2 = *Value;
  type metadata accessor for [GlassContainer.Effect](0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
  v3 = AGGraphGetValue();
  v40 = v4;
  v5 = *v3;

  v6 = AGGraphGetValue();
  v39 = v7;
  v8 = MEMORY[0x1E69E7CC0];
  v46 = *(v6 + 8);
  *&v47 = MEMORY[0x1E69E7CC0];
  *(&v47 + 1) = MEMORY[0x1E69E7CC0];
  v9 = *(v5 + 16);

  v44 = v9;
  if (v9)
  {
    v10 = 0;
    v11 = v9 - 1;
    do
    {
      v12 = *(v5 + 16);
      v13 = (v5 + 32 + 656 * v10);
      v14 = v10;
      while (1)
      {
        if (v14 >= v12)
        {
          goto LABEL_50;
        }

        memcpy(__dst, v13, 0x289uLL);
        v10 = v14 + 1;
        if (BYTE1(__dst[11]))
        {
          break;
        }

        v13 += 656;
        ++v14;
        if (v44 == v10)
        {
          goto LABEL_13;
        }
      }

      outlined init with copy of GlassContainer.Item(__dst, v62);
      *&__src[0] = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
        v8 = *&__src[0];
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v8 = *&__src[0];
      }

      *(v8 + 16) = v16 + 1;
      memcpy((v8 + 656 * v16 + 32), __dst, 0x289uLL);
    }

    while (v11 != v14);
  }

LABEL_13:
  v17 = 0;
  v18 = *(v8 + 16);
  v19 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v20 = 656 * v17 + 160;
  while (v18 != v17)
  {
    if (v17 >= *(v8 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
    }

    ++v17;
    v21 = *(v8 + v20);
    v20 += 656;
    if (v21)
    {

      v22 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      }

      v24 = *(v19 + 2);
      v23 = *(v19 + 3);
      if (v24 >= v23 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v19);
      }

      *(v19 + 2) = v24 + 1;
      *&v19[8 * v24 + 32] = v21;
      v5 = v22;
      goto LABEL_14;
    }
  }

  v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI12AnyHashable2V_SayAFGTt0g5Tf4g_n(v19);

  v26 = v44;
  if (v44)
  {
    v27 = 0;
    v42 = v5;
    v43 = v5 + 32;
    v45 = v25 + 56;
    while (v27 < *(v5 + 16))
    {
      memcpy(v62, (v43 + 656 * v27), 0x289uLL);
      memmove(__dst, (v43 + 656 * v27), 0x289uLL);
      v58 = __dst[4];
      v59 = __dst[5];
      v60 = __dst[6];
      v61 = __dst[7];
      v54 = __dst[0];
      v55 = __dst[1];
      v56 = __dst[2];
      v57 = __dst[3];
      v29 = *&__dst[8];
      *(v53 + 9) = *(&__dst[10] + 1);
      v53[0] = *(&__dst[9] + 8);
      v52 = *(&__dst[8] + 8);
      v30 = BYTE1(__dst[11]);
      memcpy(v51, &__dst[11] + 2, sizeof(v51));
      if (*&__dst[8] && *(v25 + 16))
      {
        Hasher.init(_seed:)();
        v31 = *(*v29 + 120);
        outlined init with copy of GlassContainer.Item(v62, __src);
        outlined init with copy of GlassContainer.Item(__dst, __src);

        v31(v49);
        v32 = Hasher._finalize()();
        v33 = -1 << *(v25 + 32);
        v34 = v32 & ~v33;
        if ((*(v45 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
        {
          v35 = ~v33;
          while (1)
          {
            v36 = *(*(v25 + 48) + 8 * v34);
            if (v36 == v29)
            {
              break;
            }

            v37 = *(*v36 + 112);

            LOBYTE(v37) = v37(v29);

            if (v37)
            {
              break;
            }

            v34 = (v34 + 1) & v35;
            if (((*(v45 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {

              goto LABEL_38;
            }
          }

          v30 = 1;
LABEL_38:
          v5 = v42;
        }

        else
        {
        }

        v26 = v44;
      }

      else
      {
        outlined init with copy of GlassContainer.Item(v62, __src);
        outlined init with copy of GlassContainer.Item(__dst, __src);
      }

      __src[4] = v58;
      __src[5] = v59;
      __src[6] = v60;
      __src[7] = v61;
      __src[0] = v54;
      __src[1] = v55;
      __src[2] = v56;
      __src[3] = v57;
      *(&__src[8] + 8) = v52;
      *&__src[8] = v29;
      *(&__src[9] + 8) = v53[0];
      *(&__src[10] + 1) = *(v53 + 9);
      BYTE1(__src[11]) = v30;
      memcpy(&__src[11] + 2, v51, 0x1D7uLL);
      memcpy(v49, __src, 0x289uLL);
      outlined init with copy of GlassContainer.Item(__src, v48);
      if (GlassContainer.Storage.appendToExistingEntry(item:)(v49))
      {
        v49[4] = v58;
        v49[5] = v59;
        v49[6] = v60;
        v49[7] = v61;
        v49[0] = v54;
        v49[1] = v55;
        v49[2] = v56;
        v49[3] = v57;
        *(&v49[10] + 1) = *(v53 + 9);
        *(&v49[9] + 8) = v53[0];
        *&v49[8] = v29;
        *(&v49[8] + 8) = v52;
        BYTE1(v49[11]) = v30;
        memcpy(&v49[11] + 2, v51, 0x1D7uLL);
        outlined destroy of GlassContainer.Item(v49);
        outlined destroy of GlassContainer.Item(__src);
        v28 = __dst;
      }

      else
      {
        memcpy(v48, __src, 0x289uLL);
        GlassContainer.Storage.appendToNewEntry(item:)(v48);
        outlined destroy of GlassContainer.Item(__dst);
        v49[4] = v58;
        v49[5] = v59;
        v49[6] = v60;
        v49[7] = v61;
        v49[0] = v54;
        v49[1] = v55;
        v49[2] = v56;
        v49[3] = v57;
        *(&v49[10] + 1) = *(v53 + 9);
        *(&v49[9] + 8) = v53[0];
        *&v49[8] = v29;
        *(&v49[8] + 8) = v52;
        BYTE1(v49[11]) = v30;
        memcpy(&v49[11] + 2, v51, 0x1D7uLL);
        outlined destroy of GlassContainer.Item(v49);
        v28 = __src;
      }

      outlined destroy of GlassContainer.Item(v28);
      if (++v27 == v26)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_51;
  }

LABEL_43:

  if (v41 & 1) != 0 || (v40 & 1) != 0 || (v39)
  {
    *&__dst[0] = v2;
    *(&__dst[0] + 1) = v46;
    __dst[1] = v47;
    AGGraphSetOutputValue();
  }

  else
  {
  }
}

uint64_t ContainerStorageView.Init.updateValue()()
{
  type metadata accessor for [GlassContainer.Effect](0, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);
  v1 = *AGGraphGetValue();
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (!v1)
  {
    if (!v2)
    {
      goto LABEL_8;
    }

LABEL_10:

    v4 = *(v0 + 16);
    if (v4)
    {
LABEL_5:

      os_unfair_lock_lock(v4 + 4);
      _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v4[6], v3);
      os_unfair_lock_unlock(v4 + 4);

      if (!v1)
      {
LABEL_7:

        *(v0 + 16) = v1;
        goto LABEL_8;
      }

LABEL_6:

      os_unfair_lock_lock(v1 + 4);
      _s7SwiftUI21MaterialBackdropProxyV11addObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v1[6], v3, &protocol witness table for SDFShape.BackdropObserver);
      os_unfair_lock_unlock(v1 + 4);

      goto LABEL_7;
    }

LABEL_11:
    if (!v1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!v2)
  {
    goto LABEL_10;
  }

  if (v1 != v2)
  {
    v4 = *(v0 + 16);
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_8:
  AGGraphGetValue();

  AGGraphSetOutputValue();
}

uint64_t protocol witness for ObservedAttribute.destroy() in conformance ContainerStorageView.Init()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 8);

    os_unfair_lock_lock(v1 + 4);
    _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v1[6], v2);
    os_unfair_lock_unlock(v1 + 4);
  }

  *(v0 + 16) = 0;
  return result;
}

uint64_t protocol witness for static _AttributeBody._destroySelf(_:) in conformance ContainerStorageView.Init(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 8);

    os_unfair_lock_lock(v2 + 4);
    _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v2[6], v3);
    os_unfair_lock_unlock(v2 + 4);
  }

  *(a1 + 16) = 0;
}

uint64_t one-time initialization function for defaultFeatureValue()
{
  result = closure #1 in variable initialization expression of static UnaryGlassContainer.defaultFeatureValue();
  static UnaryGlassContainer.defaultFeatureValue = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static UnaryGlassContainer.defaultFeatureValue()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1 && (static String._unconditionallyBridgeFromObjectiveC(_:)(), v1, v3 = qword_1F00444B0, v2 = off_1F00444B8, , v4._countAndFlagsBits = v3, v4._object = v2, v5 = String.hasPrefix(_:)(v4), , , v5))
  {
    outlined destroy of String(&qword_1F00444B0);
    return 0;
  }

  else
  {
    if (one-time initialization token for v7_1 != -1)
    {
      swift_once();
    }

    v7 = static Semantics.v7_1;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      return dyld_program_sdk_at_least();
    }

    else
    {
      return static Semantics.forced >= v7;
    }
  }
}

uint64_t GlassEffectContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for _GlassEffectContainer();
  v5 = type metadata accessor for StaticIf();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v19 = v4;
  v20 = v3;
  v21 = v2;
  v16[4] = v4;
  v16[5] = v3;
  v17 = v2;
  WitnessTable = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)(&type metadata for GlassEnabledPredicate, partial apply for closure #1 in GlassEffectContainer.body.getter, v18, partial apply for closure #2 in GlassEffectContainer.body.getter);
  v22 = &protocol witness table for GlassEnabledPredicate;
  v23 = WitnessTable;
  v24 = v3;
  v12 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v5, v12);
  v13 = *(v6 + 8);
  v13(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)(v11, v5, v12);
  return (v13)(v11, v5);
}

uint64_t closure #1 in GlassEffectContainer.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for _GlassEffectContainer();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1, v2, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v5, v2, WitnessTable);
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #2 in GlassEffectContainer.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _GlassEffectContainer();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v8, a1, v6, v11);
  v15 = *(v6 + 36);
  static ViewBuilder.buildExpression<A>(_:)(&v8[v15], a2, a3);
  v16 = *(v9 + 8);
  v16(&v8[v15], a2);
  static ViewBuilder.buildExpression<A>(_:)(v13, a2, a3);
  return (v16)(v13, a2);
}

uint64_t getEnumTagSinglePayload for _GlassEffectContainer(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for _GlassEffectContainer(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t type metadata completion function for GlassEffectContainer()
{
  result = type metadata accessor for _GlassEffectContainer();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _GlassEffectContainer(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-9 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 8) & ~v5, (a2 + v5 + 8) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

void *assignWithTake for _GlassEffectContainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

uint64_t specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _LayoutRoot<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _ViewModifier_Content<FlexInteractionModifier>, lazy protocol witness table accessor for type FlexInteractionModifier and conformance FlexInteractionModifier, &type metadata for FlexInteractionModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA015FlexInteractionD0VG_Tt2B5Tm(v17, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)partial apply, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, ScalePulseModifier<Int>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVGAA0N21AppearanceScaleEffectATLLVG_AA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA015TranslationKickF033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_AA0oF0ATLLVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{
  v19 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>(0, &lazy cache variable for type metadata for _ViewModifier_Content<ScheduledAnimationModifier<Int>>, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, type metadata accessor for ScheduledAnimationModifier, lazy protocol witness table accessor for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>);
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA018ScheduledAnimationD033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_Tt2B5(v17, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

{
  v19 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>();
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA015FlexInteractionD0VG_Tt2B5Tm(v17, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015TranslationKickV033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)partial apply, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

{
  v19 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _LayoutRoot<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _ViewModifier_Content<KickModifier>, lazy protocol witness table accessor for type KickModifier and conformance KickModifier, &type metadata for KickModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA015FlexInteractionD0VG_Tt2B5Tm(v17, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickV033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)partial apply, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, GlassAppearanceScaleEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVGAA11_BlurEffectVG_AA0N21AppearanceScaleEffectATLLVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYGAYGAYG_AA05_BlurY0VTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYGAYG_AYTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVGAYG_AYTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6EffectATLLVG_AYTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_AA0nO6EffectATLLVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{
  v19 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>(0, &lazy cache variable for type metadata for _ViewModifier_Content<ScalePulseModifier<Int>>, &lazy cache variable for type metadata for ScalePulseModifier<Int>, type metadata accessor for ScalePulseModifier, lazy protocol witness table accessor for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>);
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA010ScalePulseD033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGG_Tt2B5(v17, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _BlurEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_OpacityEffectVG_AA11_BlurEffectVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassTransitionStateModifier>, _OpacityEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA14_OpacityEffectVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{
  v19 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _LayoutRoot<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassTransitionStateModifier>, lazy protocol witness table accessor for type GlassTransitionStateModifier and conformance GlassTransitionStateModifier, &type metadata for GlassTransitionStateModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA015FlexInteractionD0VG_Tt2B5Tm(v17, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA020GlassTransitionStateV033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)partial apply, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

{
  v19 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _LayoutRoot<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA015FlexInteractionD0VG_Tt2B5Tm(v17, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectShapeV033_62A32D59B8A902A88963544196023CF7LLVGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)partial apply, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

{
  v19 = *MEMORY[0x1E69E9840];
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _LayoutRoot<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for _ViewModifier_Content);
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA015FlexInteractionD0VG_Tt2B5Tm(v17, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalV033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0jG7ElementAMLLOTt0g5, partial apply for closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:), a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _s7SwiftUI14GeometryReaderV9_makeView4view6inputsAA01_F7OutputsVAA11_GraphValueVyACyxGG_AA01_F6InputsVtFZAA15ModifiedContentVyAA22GlassContainerResolverVyAPyAA6ZStackVyAA7ForEachVySayAA0oP0O6EffectVGAX15DisplayMaterialV2IDVAPyAA0ouF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA21_TraitWritingModifierVyAA18TransitionTraitKeyVGGGGAA0oP18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VG_Tt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEffectLayout>, ForEach<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>>, _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_D6InputsVtFZAA07_LayoutF0VyAA011GlassEffectN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0O9ContainerO5EntryVGA2_8StableIDVAA15ModifiedContentVyA7_yAA6ZStackVyAA0o14EntryContainerD0AVLLVGAA21_TraitWritingModifierVyAA01_N5TraitVyAW3KeyVGGGA14_yAA18TransitionTraitKeyVGGGTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, GlassTransitionStateModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVGAA0rs11InteractionF0AXLLVGAA0rs15FlexInteractionF0AXLLVG_AA0r15TransitionStateF0AXLLVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, GlassEntryFlexInteractionModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVGAA0rs11InteractionF0AXLLVG_AA0rs15FlexInteractionF0AXLLVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, GlassEntryInteractionModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVGAA0r18EffectPlatformItemF0AXLLVG_AA0rs11InteractionF0AXLLVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, GlassEffectPlatformItemModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGGAA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVG_AA0r18EffectPlatformItemF0AXLLVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA09_VariadicE0O4TreeVy_AA11_LayoutRootVyAA010GlassEntryP033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0R9ContainerO4ItemVGA4_2IDVAA0r4ItemE0AXLLVGG_AA0r11EffectShapeF033_62A32D59B8A902A88963544196023CF7LLVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for _VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, _s7SwiftUI13_VariadicViewO4TreeVA2A01_cd1_D4RootRzAA0D0R_rlE05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyAEy_xq_GG_AA01_D6InputsVtFZAA07_LayoutF0VyAA010GlassEntryN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AA7ForEachVySayAA0O9ContainerO4ItemVGA2_2IDVAA0o4ItemD0AVLLVGTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, static Image._makeView(view:inputs:), _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0o15TransitionStateF0ARLLVGAA20_GeometryGroupEffectVG_AA013_TraitWritingF0VyAA0Z8TraitKeyVGTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0o15TransitionStateF0ARLLVG_AA20_GeometryGroupEffectVTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, static PrimitiveGlassItemView._makeView(view:inputs:), _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{
  v19 = *MEMORY[0x1E69E9840];
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _ViewModifier_Content<ContentCaptureProtectionViewModifier>, lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier, &type metadata for ContentCaptureProtectionViewModifier, type metadata accessor for _ViewModifier_Content);
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA0e17CaptureProtectioncD0VG_Tt0t2B5Tm(v17, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA0w17CaptureProtectionuV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)partial apply, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

{
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v6;
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v7 = *(a1 + 16);
  v12 = *a1;
  v13 = v7;
  v8 = v14;
  LODWORD(v14) = 0;
  v19 = v17;
  v18[3] = v6;
  v18[4] = v16;
  v18[0] = v12;
  v18[1] = v7;
  v18[2] = v14;
  outlined init with copy of _ViewInputs(a1, v10);
  outlined init with copy of _ViewInputs(v18, v10);
  _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGGA1_G_A1_Tt2B5(OffsetAttribute2, v18, a2);
  outlined destroy of _ViewInputs(v18);
  LODWORD(v14) = v8;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v12);
    AGSubgraphEndTreeElement();
  }

  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v11 = v17;
  v10[0] = v12;
  v10[1] = v13;
  return outlined destroy of _ViewInputs(v10);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA01_ef1_D0VyAA015SafeAreaPaddingF0VGAA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGG_A1_Tt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<_ViewModifier_Content<SafeAreaPaddingModifier>, _InsetViewModifier<ModifiedContent<Color, _FrameLayout>>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA01_ef1_D0VyAA015SafeAreaPaddingF0VG_AA06_InseteF0VyACyAA5ColorVAA12_FrameLayoutVGGTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{
  v19 = *MEMORY[0x1E69E9840];
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>(0, &lazy cache variable for type metadata for _ViewModifier_Content<SafeAreaPaddingModifier>, lazy protocol witness table accessor for type SafeAreaPaddingModifier and conformance SafeAreaPaddingModifier, &type metadata for SafeAreaPaddingModifier, type metadata accessor for _ViewModifier_Content);
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v5 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v6 = *(a1 + 16);
  v11 = *a1;
  v12 = v6;
  v7 = v13;
  LODWORD(v13) = 0;
  v18 = v16;
  v17[3] = v5;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v6;
  v17[2] = v13;
  outlined init with copy of _ViewInputs(a1, v9);
  outlined init with copy of _ViewInputs(v17, v9);
  _s7SwiftUI27ViewModifierContentProvider33_2BA0A33A15B7F322F46AFB9D0D1A262DLLPAAE012providerMakeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA01_cd1_E0VyAA0e17CaptureProtectioncD0VG_Tt0t2B5Tm(v17, _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015SafeAreaPaddingV0VGG_AA0jG7ElementAMLLOTt0g5, closure #1 in static ViewModifierContentProvider.providerMakeView(view:inputs:)partial apply, a2);
  outlined destroy of _ViewInputs(v17);
  LODWORD(v13) = v7;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v11);
    AGSubgraphEndTreeElement();
  }

  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  return outlined destroy of _ViewInputs(v9);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_AA01_l11TransactionF0VySbGTt2B5, _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

{
  v23 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v16 = *(a1 + 32);
  v17 = v6;
  v18 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 16);
  v14 = *a1;
  v15 = v8;
  v9 = v16;
  v19 = v7;
  LODWORD(v16) = 0;
  v21 = v7;
  v20[3] = v6;
  v20[4] = v18;
  v20[0] = v14;
  v20[1] = v8;
  v20[2] = v16;
  v22[1] = v8;
  v22[2] = v16;
  v22[0] = v14;
  v11 = OffsetAttribute2;
  outlined init with copy of _ViewInputs(a1, v12);
  outlined init with copy of _ViewInputs(v20, v12);
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(&v11, v22);
  _s7SwiftUI4ViewPAAE04makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5(v11, v20, a2);
  outlined destroy of _ViewInputs(v20);
  LODWORD(v16) = v9;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v14);
    AGSubgraphEndTreeElement();
  }

  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  return outlined destroy of _ViewInputs(v12);
}

{

  return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a1, static Text._makeView(view:inputs:), _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5, a2);
}

uint64_t specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, void (*a3)(uint64_t, _OWORD *)@<X4>, void (*a4)(uint64_t, __int128 *)@<X5>, uint64_t a5@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    a2(0);
    AGSubgraphBeginTreeElement();
  }

  v12 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = v12;
  v22 = *(a1 + 64);
  v23 = *(a1 + 80);
  v13 = *(a1 + 16);
  v18 = *a1;
  v19 = v13;
  v14 = v20;
  LODWORD(v20) = 0;
  v25 = v23;
  v24[3] = v12;
  v24[4] = v22;
  v24[0] = v18;
  v24[1] = v13;
  v24[2] = v20;
  outlined init with copy of _ViewInputs(a1, v16);
  outlined init with copy of _ViewInputs(v24, v16);
  a3(OffsetAttribute2, v24);
  outlined destroy of _ViewInputs(v24);
  LODWORD(v20) = v14;
  if (ShouldRecordTree)
  {
    a4(a5, &v18);
    AGSubgraphEndTreeElement();
  }

  v16[2] = v20;
  v16[3] = v21;
  v16[4] = v22;
  v17 = v23;
  v16[0] = v18;
  v16[1] = v19;
  return outlined destroy of _ViewInputs(v16);
}

uint64_t specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(0, &lazy cache variable for type metadata for ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, &type metadata for PrimitiveGlassItemView, &type metadata for GlassTransitionStateModifier, type metadata accessor for ModifiedContent);
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v6;
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v7 = *(a1 + 16);
  v12 = *a1;
  v13 = v7;
  v8 = v14;
  LODWORD(v14) = 0;
  v19 = v17;
  v18[3] = v6;
  v18[4] = v16;
  v18[0] = v12;
  v18[1] = v7;
  v18[2] = v14;
  outlined init with copy of _ViewInputs(a1, v10);
  outlined init with copy of _ViewInputs(v18, v10);
  _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_AA0o15TransitionStateF0ARLLVTt2B5(OffsetAttribute2, v18, a2);
  outlined destroy of _ViewInputs(v18);
  LODWORD(v14) = v8;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v12);
    AGSubgraphEndTreeElement();
  }

  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v11 = v17;
  v10[0] = v12;
  v10[1] = v13;
  return outlined destroy of _ViewInputs(v10);
}

{
  v20 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v6 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v6;
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v7 = *(a1 + 16);
  v12 = *a1;
  v13 = v7;
  v8 = v14;
  LODWORD(v14) = 0;
  v19 = v17;
  v18[3] = v6;
  v18[4] = v16;
  v18[0] = v12;
  v18[1] = v7;
  v18[2] = v14;
  outlined init with copy of _ViewInputs(a1, v10);
  outlined init with copy of _ViewInputs(v18, v10);
  _s7SwiftUI17EnvironmentalViewPAAE05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVtFZAA5ColorV_Tt2B5(OffsetAttribute2, v18, a2);
  outlined destroy of _ViewInputs(v18);
  LODWORD(v14) = v8;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v12);
    AGSubgraphEndTreeElement();
  }

  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v11 = v17;
  v10[0] = v12;
  v10[1] = v13;
  return outlined destroy of _ViewInputs(v10);
}

uint64_t specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, void (*a3)(uint64_t, _OWORD *)@<X4>, void (*a4)(uint64_t, __int128 *)@<X5>, uint64_t a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  a2(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v11 = *(a1 + 48);
  v19 = *(a1 + 32);
  v20 = v11;
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v12 = *(a1 + 16);
  v17 = *a1;
  v18 = v12;
  v13 = v19;
  LODWORD(v19) = 0;
  v24 = v22;
  v23[3] = v11;
  v23[4] = v21;
  v23[0] = v17;
  v23[1] = v12;
  v23[2] = v19;
  outlined init with copy of _ViewInputs(a1, v15);
  outlined init with copy of _ViewInputs(v23, v15);
  a3(OffsetAttribute2, v23);
  outlined destroy of _ViewInputs(v23);
  LODWORD(v19) = v13;
  if (ShouldRecordTree)
  {
    a4(a5, &v17);
    AGSubgraphEndTreeElement();
  }

  v15[2] = v19;
  v15[3] = v20;
  v15[4] = v21;
  v16 = v22;
  v15[0] = v17;
  v15[1] = v18;
  return outlined destroy of _ViewInputs(v15);
}

uint64_t specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)@<X0>(uint64_t a1@<X0>, void (*a2)(int *, __int128 *)@<X4>, void (*a3)(uint64_t, __int128 *)@<X5>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v10 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v10;
  v25 = *(a1 + 64);
  v26 = *(a1 + 80);
  v11 = *(a1 + 16);
  v21 = *a1;
  v22 = v11;
  v28 = v26;
  v12 = v23;
  LODWORD(v23) = 0;
  v14 = OffsetAttribute2;
  v27[0] = v21;
  v27[1] = v11;
  v27[3] = v10;
  v27[4] = v25;
  v27[2] = v23;
  v17 = v23;
  v18 = v10;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v11;
  outlined init with copy of _ViewInputs(a1, v29);
  outlined init with copy of _ViewInputs(v27, v29);
  a2(&v14, &v15);
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v30 = v20;
  v29[0] = v15;
  v29[1] = v16;
  outlined destroy of _ViewInputs(v29);
  LODWORD(v23) = v12;
  if (ShouldRecordTree)
  {
    a3(a4, &v21);
    AGSubgraphEndTreeElement();
  }

  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  return outlined destroy of _ViewInputs(&v15);
}

uint64_t _s7SwiftUI12ViewModifierPAAE09makeUnaryC4List8modifier6inputs4bodyAA01_cG7OutputsVAA11_GraphValueVyxG_AA01_cG6InputsVAiA01_L0V_ANtctFZAA01_cK0VAA01_cN0VcfU_AA020GlassEffectContainerD033_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Tt2G5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v7;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a4 = MEMORY[0x1E69E7CC0];
    *(a4 + 8) = 0;
    *(a4 + 12) = result;
  }

  else
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA14MaterialEffectV_Tt3B5Tm(v10, v12, _s7SwiftUI12ViewModifierPAAE16makeImplicitRoot8modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListK0VAA01_L0V_AA01_coN0VtctFZApR_ANtcfU_TA_0, v11, &lazy cache variable for type metadata for MakeModifiedRoot<GlassEffectContainerModifier>, &type metadata for GlassEffectContainerModifier, &protocol witness table for GlassEffectContainerModifier, a4);
  }

  return result;
}

uint64_t outlined init with copy of WeakBox<GlassContainerCache>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_1(0, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _GlassContainerStorageView.Init and conformance _GlassContainerStorageView.Init()
{
  result = lazy protocol witness table cache variable for type _GlassContainerStorageView.Init and conformance _GlassContainerStorageView.Init;
  if (!lazy protocol witness table cache variable for type _GlassContainerStorageView.Init and conformance _GlassContainerStorageView.Init)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GlassContainerStorageView.Init and conformance _GlassContainerStorageView.Init);
  }

  return result;
}

void type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(255, &lazy cache variable for type metadata for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, type metadata accessor for GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>.Child and conformance GeometryReader<A>.Child()
{
  result = lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>.Child and conformance GeometryReader<A>.Child;
  if (!lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>.Child and conformance GeometryReader<A>.Child)
  {
    type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(255, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>.Child, type metadata accessor for GeometryReader.Child);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>.Child and conformance GeometryReader<A>.Child);
  }

  return result;
}

void _s7SwiftUI9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionP0VGGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for _LayoutRoot<GeometryReaderLayout>(255, a3, a4, a5, type metadata accessor for _ViewModifier_Content);
    v6 = type metadata accessor for BodyInput();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of MakeModifiedRoot<GlassEntryInteractionModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(0, a2, a3, a4, type metadata accessor for MakeModifiedRoot);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>)
  {
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for _ValueTransactionModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for UpdatedContainerStorage(uint64_t a1)
{
  result = lazy protocol witness table accessor for type UpdatedContainerStorage and conformance UpdatedContainerStorage();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for [GlassContainer.Effect](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type GeometryReader<GlassEntryView>.Child and conformance GeometryReader<A>.Child()
{
  result = lazy protocol witness table cache variable for type GeometryReader<GlassEntryView>.Child and conformance GeometryReader<A>.Child;
  if (!lazy protocol witness table cache variable for type GeometryReader<GlassEntryView>.Child and conformance GeometryReader<A>.Child)
  {
    type metadata accessor for _LayoutRoot<GeometryReaderLayout>(255, &lazy cache variable for type metadata for GeometryReader<GlassEntryView>.Child, lazy protocol witness table accessor for type GlassEntryView and conformance GlassEntryView, &type metadata for GlassEntryView, type metadata accessor for GeometryReader.Child);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<GlassEntryView>.Child and conformance GeometryReader<A>.Child);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<ScalePulseModifier<Int>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t, uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, a3, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], a4);
    a5();
    v7 = type metadata accessor for _ViewModifier_Content();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for _LayoutRoot<GeometryReaderLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t _s7SwiftUI16_ViewListOutputsVAAE05unarycD08viewType6inputs4bodyACxm_AA01_cD6InputsVAA01_cE0VAA01_cK0VctlFZAA19GlassMaterialEffect33_62A32D59B8A902A88963544196023CF7LLV_Tt3g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  return sub_18D3B43DC(a1, a2, a3, a4, a5);
}

uint64_t Font.Resolved.isBold.getter()
{
  v0 = Font.Resolved.ctFont.getter();
  SymbolicTraits = CTFontGetSymbolicTraits(v0);

  return (SymbolicTraits >> 1) & 1;
}

uint64_t Font.Resolved.isItalic.getter()
{
  v0 = Font.Resolved.ctFont.getter();
  SymbolicTraits = CTFontGetSymbolicTraits(v0);

  return SymbolicTraits & 1;
}

double Font.Resolved.pointSize.getter()
{
  v0 = Font.Resolved.ctFont.getter();
  Size = CTFontGetSize(v0);

  return Size;
}

double Font.Resolved.weight.getter()
{
  v0 = Font.Resolved.ctFont.getter();
  CTFontGetWeight();
  v2 = v1;

  return v2;
}

void Font.Resolved.width.getter(void *a1@<X8>)
{
  v2 = Font.Resolved.ctFont.getter();
  CTFontGetWidth();
  v4 = v3;

  *a1 = v4;
}

void Font.Resolved.leading.getter(_BYTE *a1@<X8>)
{
  v2 = Font.Resolved.ctFont.getter();
  SymbolicTraits = CTFontGetSymbolicTraits(v2);

  v4 = (SymbolicTraits >> 15) & 1;
  if ((SymbolicTraits & 0x10000) != 0)
  {
    LOBYTE(v4) = 2;
  }

  *a1 = v4;
}

BOOL Font.Resolved.isMonospaced.getter()
{
  v0 = Font.Resolved.ctFont.getter();
  v1 = CTFontCopyFontDescriptor(v0);
  v2 = CTFontDescriptorRef.isMonospaced.getter();

  return v2;
}

uint64_t Font.Resolved.isLowercaseSmallCaps.getter()
{
  v0 = Font.Resolved.ctFont.getter();
  HasFeatureSettingWithTypeAndSelector = CTFontHasFeatureSettingWithTypeAndSelector();

  return HasFeatureSettingWithTypeAndSelector;
}

uint64_t Font.Resolved.isSmallCaps.getter()
{
  v0 = Font.Resolved.ctFont.getter();
  HasFeatureSettingWithTypeAndSelector = CTFontHasFeatureSettingWithTypeAndSelector();

  if (!HasFeatureSettingWithTypeAndSelector)
  {
    return 0;
  }

  v2 = Font.Resolved.ctFont.getter();
  v3 = CTFontHasFeatureSettingWithTypeAndSelector();

  return v3;
}

Swift::Int Font.Resolved.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v8 = *(v0 + 8);
  v9 = v2;
  v10 = *(v0 + 40);
  Hasher.init(_seed:)();
  v5 = v8;
  v6 = v9;
  v7 = v10;
  outlined init with copy of Font.Context(&v8, v11);
  v3 = Font.platformFont(in:modifiers:overrideContextModifiers:)(&v5, MEMORY[0x1E69E7CC0], 0, v1);
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  outlined destroy of Font.Context(v11);
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef();
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font.Resolved()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v8 = *(v0 + 8);
  v9 = v2;
  v10 = *(v0 + 40);
  Hasher.init(_seed:)();
  v5 = v8;
  v6 = v9;
  v7 = v10;
  outlined init with copy of Font.Context(&v8, v11);
  v3 = Font.platformFont(in:modifiers:overrideContextModifiers:)(&v5, MEMORY[0x1E69E7CC0], 0, v1);
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  outlined destroy of Font.Context(v11);
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef();
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Font.Resolved()
{
  v0 = Font.Resolved.ctFont.getter();
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef();
  _CFObject.hash(into:)();
}

void Font.Resolved.hash(into:)()
{
  v0 = Font.Resolved.ctFont.getter();
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef();
  _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.Resolved()
{
  Hasher.init(_seed:)();
  v0 = Font.Resolved.ctFont.getter();
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef();
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t Font.resolve(in:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v8[0] = *a1;
  v3 = v8[0];
  v8[1] = v4;
  v9 = a1[2];
  v5 = v9;
  *a3 = a2;
  *(a3 + 8) = v3;
  *(a3 + 24) = v4;
  *(a3 + 40) = v5;
  outlined init with copy of Font.Context(v8, &v7);
}

uint64_t specialized static Font.Resolved.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v18[0] = *(a1 + 8);
  v18[1] = v4;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v18[2] = *(a1 + 40);
  v19 = v6;
  v8 = *(a2 + 40);
  v20 = v7;
  v21 = v8;
  type metadata accessor for CTFontRef(0);
  v9 = *(a1 + 24);
  v23 = *(a1 + 8);
  v24 = v9;
  v25 = *(a1 + 40);
  outlined init with copy of Font.Context(v18, v22);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = Font.platformFont(in:modifiers:overrideContextModifiers:)(&v23, MEMORY[0x1E69E7CC0], 0, v3);
  v22[0] = v23;
  v22[1] = v24;
  v22[2] = v25;
  outlined destroy of Font.Context(v22);
  v15 = v19;
  v16 = v20;
  v17 = v21;
  outlined init with copy of Font.Context(&v19, &v23);
  v12 = Font.platformFont(in:modifiers:overrideContextModifiers:)(&v15, v10, 0, v5);
  v23 = v15;
  v24 = v16;
  v25 = v17;
  outlined destroy of Font.Context(&v23);
  lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef();
  v13 = static _CFObject.== infix(_:_:)();

  return v13 & 1;
}

unint64_t lazy protocol witness table accessor for type Font.Resolved and conformance Font.Resolved()
{
  result = lazy protocol witness table cache variable for type Font.Resolved and conformance Font.Resolved;
  if (!lazy protocol witness table cache variable for type Font.Resolved and conformance Font.Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.Resolved and conformance Font.Resolved);
  }

  return result;
}

uint64_t initializeWithCopy for Font.Resolved(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

uint64_t assignWithCopy for Font.Resolved(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for Font.Resolved(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for Font.Resolved(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for Font.Resolved(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Color._background.getter()
{
  type metadata accessor for ColorBox<Color.BackgroundColorProvider>();

  return swift_allocObject();
}

void type metadata accessor for ColorBox<Color.BackgroundColorProvider>()
{
  if (!lazy cache variable for type metadata for ColorBox<Color.BackgroundColorProvider>)
  {
    lazy protocol witness table accessor for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider();
    v0 = type metadata accessor for ColorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ColorBox<Color.BackgroundColorProvider>);
    }
  }
}

uint64_t EnvironmentValues.backgroundInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v5 = static BackgroundInfoKey.defaultValue;
    }

    *a1 = v5;
  }

  return result;
}

void *EnvironmentValues.backgroundContext.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017BackgroundContextI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017BackgroundContextS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t static BackgroundStyle._makeView<A>(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v11 = v5;
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v11, v9, &type metadata for BackgroundStyle, a3, &protocol witness table for BackgroundStyle, a4, a5);
}

uint64_t EnvironmentValues.backgroundInfo.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(v2, v3, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v5, *v2);
  }
}

uint64_t key path getter for EnvironmentValues.backgroundInfo : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = &v8;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v3, &v8);

    v6 = &v9;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = (result + 72);
      v6 = (result + 80);
    }

    else
    {
      v4 = &static BackgroundInfoKey.defaultValue;
      v6 = &static BackgroundInfoKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }
    }
  }

  v7 = *v6;
  *a2 = *v4;
  a2[1] = v7;
  return result;
}

uint64_t key path setter for EnvironmentValues.backgroundInfo : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(a2, v3, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v5, *a2);
  }
}

uint64_t View._addingBackgroundGroup()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  View.transformEnvironment<A>(_:transform:)(KeyPath, a4, 0, a1);
}

uint64_t key path getter for EnvironmentValues.backgroundContext : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017BackgroundContextI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017BackgroundContextS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.backgroundContext : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017BackgroundContextF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017BackgroundContextK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.backgroundContext.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017BackgroundContextF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017BackgroundContextK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v4, *v2);
  }
}

uint64_t View.backgroundStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _EnvironmentBackgroundStyleModifier();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, a3, v11);
  (*(v6 + 32))(v13, v8, a3);
  View.modifier<A>(_:)(v13, a2, v9);
  return (*(v10 + 8))(v13, v9);
}

void *EnvironmentValues.currentBackgroundStyle.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BackgroundStyleI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v1);

    return v2;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BackgroundStyleS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v1);
    if (result)
    {
    }
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.backgroundStyle : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BackgroundStyleI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BackgroundStyleS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.backgroundStyle : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015BackgroundStyleF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015BackgroundStyleK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.backgroundStyle.setter(uint64_t a1)
{
  v3 = *v1;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015BackgroundStyleF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2g5(v1, a1);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015BackgroundStyleK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v3, *v1);
  }
}

void (*EnvironmentValues.backgroundStyle.modify(uint64_t **a1))(uint64_t **a1, char a2)
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

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BackgroundStyleI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BackgroundStyleS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.backgroundStyle.modify;
}

void EnvironmentValues.backgroundStyle.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[5];
  v5 = (*a1)[3];
  if (a2)
  {
    swift_retain_n();
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015BackgroundStyleF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2g5(v5, v3);

    if (v4)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015BackgroundStyleK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v2[4], *v2[3]);
    }
  }

  else
  {
    swift_retain_n();
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015BackgroundStyleF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2g5(v5, v3);

    if (v4)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015BackgroundStyleK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v2[4], *v2[3]);
    }
  }

  free(v2);
}

uint64_t EnvironmentValues.effectiveBackgroundStyle.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BackgroundStyleI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v1);

    if (v2)
    {
      return v2;
    }
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BackgroundStyleS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v1);
    if (v3)
    {
      v2 = v3[9];

      if (v2)
      {
        return v2;
      }
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static BackgroundStyle.shared;

  return v2;
}

void (*EnvironmentValues.backgroundContext.modify(void *a1))(uint64_t *a1)
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017BackgroundContextI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017BackgroundContextS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.backgroundContext.modify;
}

void EnvironmentValues.backgroundContext.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017BackgroundContextF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017BackgroundContextK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void (*EnvironmentValues.backgroundInfo.modify(void *a1))(uint64_t **a1)
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
  v5 = *v1;
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v5, v4);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v8 = static BackgroundInfoKey.defaultValue;
    }

    *v4 = v8;
  }

  return EnvironmentValues.backgroundInfo.modify;
}

void EnvironmentValues.backgroundInfo.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  swift_retain_n();
  v4 = v1[6];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(v1[4], v2, v3);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v1[5], *v1[4]);
  }

  free(v1);
}

uint64_t key path getter for EnvironmentValues.backgroundLevel : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = v6;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v3, v6);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = (result + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v4 = &static BackgroundInfoKey.defaultValue;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.backgroundLevel : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v4, &v10);

    v6 = &v11;
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a2);
    if (v7)
    {
      v6 = v7 + 10;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = &static BackgroundInfoKey.defaultValue + 1;
    }
  }

  v8 = *v6;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(a2, v3, v8);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v4, *a2);
  }
}

void (*EnvironmentValues.backgroundLevel.modify(void *a1))(uint64_t **a1)
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v5, &v11);

    *v4 = v11;
    return EnvironmentValues.backgroundLevel.modify;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v5);
    if (v8)
    {
      v9 = (v8 + 9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = &static BackgroundInfoKey.defaultValue;
    }

    *v4 = *v9;
    return EnvironmentValues.backgroundLevel.modify;
  }
}

void EnvironmentValues.backgroundLevel.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5((*a1)[4]);
  if (a2)
  {
    if (v5)
    {
      v6 = v5 + 10;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = &static BackgroundInfoKey.defaultValue + 1;
    }
  }

  else if (v5)
  {
    v6 = v5 + 10;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v6 = &static BackgroundInfoKey.defaultValue + 1;
  }

  v7 = v3[5];
  v8 = v3[3];
  v9 = *v6;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(v8, v4, v9);

  if (v7)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v3[4], *v3[3]);
  }

  free(v3);
}

void EnvironmentValues.backgroundLevel.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[4];

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v3, v7);

  v4 = v1[5];
  v5 = v1[3];
  v6 = v7[1];
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(v5, v2, v6);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v1[4], *v1[3]);
  }

  free(v1);
}

uint64_t EnvironmentValues.backgroundGroupLevel.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v1, &v5);

    v2 = &v6;
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v1);
    if (v3)
    {
      v2 = (v3 + 10);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v2 = &static BackgroundInfoKey.defaultValue + 8;
    }
  }

  return *v2;
}

uint64_t key path getter for EnvironmentValues.backgroundGroupLevel : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v3, &v6);

    v5 = &v7;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = (result + 80);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        result = swift_once();
      }

      v5 = &static BackgroundInfoKey.defaultValue + 1;
    }
  }

  *a2 = *v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.backgroundGroupLevel : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {

    v6 = v10;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v4, v10);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a2);
    if (v7)
    {
      v6 = v7 + 9;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = &static BackgroundInfoKey.defaultValue;
    }
  }

  v8 = *v6;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(a2, v8, v3);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.backgroundGroupLevel.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    v6 = v10;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v4, v10);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v4);
    if (v7)
    {
      v6 = v7 + 9;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = &static BackgroundInfoKey.defaultValue;
    }
  }

  v8 = *v6;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(v2, v8, a1);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.backgroundGroupLevel.modify(void *a1))(uint64_t **a1)
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

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v5, v11);

    *v4 = v11[1];
    return EnvironmentValues.backgroundGroupLevel.modify;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v5);
    if (v8)
    {
      v9 = v8 + 10;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = &static BackgroundInfoKey.defaultValue + 1;
    }

    *v4 = *v9;
    return EnvironmentValues.backgroundGroupLevel.modify;
  }
}

void EnvironmentValues.backgroundGroupLevel.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5((*a1)[4]);
  if (a2)
  {
    if (v5)
    {
      v6 = v5 + 9;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = &static BackgroundInfoKey.defaultValue;
    }
  }

  else if (v5)
  {
    v6 = v5 + 9;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v6 = &static BackgroundInfoKey.defaultValue;
  }

  v7 = v3[5];
  v8 = v3[3];
  v9 = *v6;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(v8, v9, v4);

  if (v7)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v3[4], *v3[3]);
  }

  free(v3);
}

void EnvironmentValues.backgroundGroupLevel.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[4];

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v3, v7);

  v4 = v1[5];
  v5 = v1[3];
  v6 = v7[0];
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014BackgroundInfoF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2B5(v5, v6, v2);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014BackgroundInfoK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v1[4], *v1[3]);
  }

  free(v1);
}

SwiftUI::BackgroundContext_optional __swiftcall BackgroundContext.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

SwiftUI::BackgroundInfo __swiftcall BackgroundInfo.init(layer:groupCount:)(Swift::Int layer, Swift::Int groupCount)
{
  *v2 = layer;
  v2[1] = groupCount;
  result.groupCount = groupCount;
  result.layer = layer;
  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance BackgroundInfoKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static BackgroundInfoKey.defaultValue;
  *a1 = static BackgroundInfoKey.defaultValue;
  return result;
}

uint64_t static _EnvironmentBackgroundStyleModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v9[0] = v2;
  v9[1] = v4;
  v11 = type metadata accessor for _EnvironmentBackgroundStyleModifier.ChildEnvironment();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for [BackgroundContext](0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, &type metadata for EnvironmentValues, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, closure #1 in Attribute.init<A>(_:)partial apply, v10, v11, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return _GraphInputs.environment.setter(v8);
}

uint64_t static _EnvironmentBackgroundStyleModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = static _EnvironmentBackgroundStyleModifier._makeInputs(modifier:inputs:)(&v7, v8);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

uint64_t _EnvironmentBackgroundStyleModifier.ChildEnvironment.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _EnvironmentBackgroundStyleModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t _EnvironmentBackgroundStyleModifier.ChildEnvironment.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for _EnvironmentBackgroundStyleModifier();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7 + 8;
  MaterialView.ChildEnvironment.environment.getter(a3);
  _EnvironmentBackgroundStyleModifier.ChildEnvironment.modifier.getter(v8);
  v15 = 1;
  v9 = *a3;
  v10 = a3[1];
  v14[0] = *a3;
  v14[1] = v10;

  v11 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v15, v14, 0, a1, a2);

  (*(*(a1 - 8) + 8))(v8, a1);
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015BackgroundStyleF033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt2g5(a3, v11);

  if (v10)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015BackgroundStyleK033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Ttg5(v9, *a3);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _EnvironmentBackgroundStyleModifier<A>.ChildEnvironment()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

unint64_t lazy protocol witness table accessor for type BackgroundContext and conformance BackgroundContext()
{
  result = lazy protocol witness table cache variable for type BackgroundContext and conformance BackgroundContext;
  if (!lazy protocol witness table cache variable for type BackgroundContext and conformance BackgroundContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundContext and conformance BackgroundContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [BackgroundContext] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [BackgroundContext] and conformance [A];
  if (!lazy protocol witness table cache variable for type [BackgroundContext] and conformance [A])
  {
    type metadata accessor for [BackgroundContext](255, &lazy cache variable for type metadata for [BackgroundContext], &type metadata for BackgroundContext, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [BackgroundContext] and conformance [A]);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.BackgroundColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.BackgroundColorProvider and conformance Color.BackgroundColorProvider();
  *(a1 + 8) = result;
  return result;
}

float specialized Color.BackgroundColorProvider.resolve(in:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v1, &v17);

    v16 = v17;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017BackgroundContextI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5(v1, &v15);

    v3 = v15;
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(*a1);
    if (v4)
    {
      v5 = (v4 + 9);
      v6 = v4 + 10;
    }

    else
    {
      v5 = &static BackgroundInfoKey.defaultValue;
      v6 = &static BackgroundInfoKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v6 = &static BackgroundInfoKey.defaultValue + 1;
        v5 = &static BackgroundInfoKey.defaultValue;
      }
    }

    v7 = *v6;
    *&v16 = *v5;
    *(&v16 + 1) = v7;
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017BackgroundContextS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(v1);
    if (v8)
    {
      v3 = *(v8 + 72);
    }

    else
    {
      v3 = 0;
    }
  }

  v14 = v3;
  v12 = v1;
  v13 = v2;
  EnvironmentValues.colorScheme.getter(&v11);
  v10 = v11;
  return specialized static Color.systemBackgroundColor(info:context:scheme:)(&v16, &v14, &v10);
}

uint64_t instantiation function for generic protocol witness table for _EnvironmentBackgroundStyleModifier<A>.ChildEnvironment(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t ShapeStyle.mix<A>(_:by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, a2, v14);
  (*(v10 + 16))(v12, a1, a3);
  v19 = a5;
  return InterpolatedShapeStyle.init(from:to:progress:)(v16, v12, a2, a3, a4, v19);
}

uint64_t InterpolatedShapeStyle.init(from:to:progress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for InterpolatedShapeStyle();
  result = (*(*(a4 - 8) + 32))(a5 + *(v10 + 52), a2, a4);
  *(a5 + *(v10 + 56)) = a6;
  return result;
}

uint64_t InterpolatedShapeStyle._apply(to:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 56));
  if (v3 == 0.0)
  {
    v4 = *(*(a2 + 32) + 32);
    v5 = *(a2 + 16);

    return v4(result, v5);
  }

  if (v3 == 1.0)
  {
    return (*(*(a2 + 40) + 32))(result, *(a2 + 24));
  }

  v6 = *(result + 24);
  if (v6 <= 1)
  {
    if (*(result + 24))
    {
      v10 = *(result + 64);
      v11 = *(result + 80);
      v12 = *(result + 32);
      v43 = *(result + 48);
      v44 = v10;
      v45[0] = v11;
      *(v45 + 12) = *(result + 92);
      v13 = *(result + 16);
      v14 = result;
      v42[0] = *result;
      v42[1] = v13;
      v42[2] = v12;
      v36 = v42[0];
      v37 = v13;
      v38 = v12;
      v39 = v43;
      v40 = v10;
      v41[0] = v11;
      *(v41 + 12) = *(v45 + 12);
      v15 = *(a2 + 32);
      v16 = *(v15 + 32);
      outlined init with copy of _ShapeStyle_Shape(v42, &v30);
      v16(&v36, *(a2 + 16), v15);
      if (BYTE8(v38) == 1)
      {
        v18 = v38;
        v29 = v38;
        v19 = *(a2 + 40);
        v20 = *(v19 + 32);
        v21 = *(a2 + 24);

        v20(v14, v21, v19);
        if (*(v14 + 40) == 1)
        {
          v22 = *(v14 + 32);
          _ShapeStyle_Pack.animatableData.getter(&v27);
          *&v30 = v22;
          _ShapeStyle_Pack.animatableData.getter(&v25);
          _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(&v25, v27, v28);
          specialized KeyedAnimatableArray.scale(by:)(v3);
          _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(&v27, v25, v26);

          v23 = v27;
          v24 = v28;
          _ShapeStyle_Pack.animatableData.setter(&v23);
          v35[0] = v41[0];
          *(v35 + 12) = *(v41 + 12);
          v30 = v36;
          v31 = v37;
          v33 = v39;
          v34 = v40;
          v32 = v38;
          outlined destroy of _ShapeStyle_Shape(&v30);
          v18 = v29;
        }

        else
        {

          v35[0] = v41[0];
          *(v35 + 12) = *(v41 + 12);
          v30 = v36;
          v31 = v37;
          v33 = v39;
          v34 = v40;
          v32 = v38;
          outlined copy of _ShapeStyle_Shape.Result(v18, 1u);
          outlined destroy of _ShapeStyle_Shape(&v30);
        }

        result = outlined consume of _ShapeStyle_Shape.Result(*(v14 + 32), *(v14 + 40));
        *(v14 + 32) = v18;
        *(v14 + 40) = 1;
      }

      else
      {
        (*(*(a2 + 40) + 32))(v14, *(a2 + 24));
        v35[0] = v41[0];
        *(v35 + 12) = *(v41 + 12);
        v30 = v36;
        v31 = v37;
        v33 = v39;
        v34 = v40;
        v32 = v38;
        return outlined destroy of _ShapeStyle_Shape(&v30);
      }
    }

    else
    {
      v9 = result;
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
    }
  }

  else
  {
    if (v6 - 2 < 2)
    {
      return (*(*(a2 + 40) + 32))(result, *(a2 + 24));
    }

    if (v6 != 4 && !(*(result + 8) | *(result + 16) | *result))
    {
      v7 = result;
      result = (*(*(a2 + 32) + 32))();
      if (*(v7 + 40) != 4 || (*(v7 + 32) & 1) == 0)
      {
        return (*(*(a2 + 40) + 32))(v7, *(a2 + 24));
      }
    }
  }

  return result;
}

void _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(void *a1, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = a2;
    v4 = a1;
    v5 = *a1;
    if (a1[1])
    {

      *v4 = v3;
      *(v4 + 8) = 0;

      specialized KeyedAnimatableArray.scale(by:)(-1.0);
    }

    else
    {
      v6 = v5[2];
      v36 = a2[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_38;
      }

      while (v6 >= 1 && v36 != 0)
      {
        v35 = v3;
        v33 = v4;
        v9 = 0;
        v10 = 0;
LABEL_11:
        v11 = 0;
        v12 = v9 + 1;
        v34 = v9;
        v3 = &v5[14 * v9];
        v4 = &v35[14 * v10];
        while (1)
        {
          v8 = v12 - 1;
          v13 = v5[2];
          if (v12 - 1 >= v13)
          {
            break;
          }

          if (v10 < 0)
          {
            goto LABEL_37;
          }

          v14 = BYTE1(v3[v11 + 4]);
          v15 = LOBYTE(v3[v11 + 4]);
          v16 = LOBYTE(v4[v11 + 4]);
          v17 = BYTE1(v4[v11 + 4]);
          if (v15 != v16 || v14 != v17)
          {
            v25 = v15 == v16;
            if (v14 >= v17)
            {
              v25 = 0;
            }

            if (v15 < v16 || v25)
            {
              v26 = &v5[14 * v34 + v11];
              v27 = v13 - 1;
              v28 = v26[2];
              v29 = v26[4];
              *&v39[16] = v26[3];
              *&v39[32] = v29;
              *v39 = v28;
              v30 = v26[5];
              v31 = v26[6];
              v32 = v26[8];
              *&v39[80] = v26[7];
              *&v39[96] = v32;
              *&v39[48] = v30;
              *&v39[64] = v31;
              memmove(v26 + 2, v26 + 9, 112 * (v13 - v12));
              v5[2] = v27;
              _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOhTm_0(v39, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
              v8 = v12 - 1;
              --v6;
            }

            else
            {
              ++v10;
            }

            if (v8 >= v6)
            {
              goto LABEL_32;
            }

            v9 = v8;
            if (v10 >= v36)
            {
              goto LABEL_32;
            }

            goto LABEL_11;
          }

          v19 = *&v4[v11 + 14];
          *&v39[64] = *&v4[v11 + 12];
          *&v39[80] = v19;
          *&v39[96] = *&v4[v11 + 16];
          v20 = *&v4[v11 + 6];
          *v39 = *&v4[v11 + 4];
          *&v39[16] = v20;
          v21 = *&v4[v11 + 10];
          *&v39[32] = *&v4[v11 + 8];
          *&v39[48] = v21;
          _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOcTm_0(v39, v37, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
          v22 = *&v39[96];
          v37[4] = *&v39[72];
          v37[5] = *&v39[88];
          v38 = *&v39[104];
          v37[0] = *&v39[8];
          v37[1] = *&v39[24];
          v37[2] = *&v39[40];
          v37[3] = *&v39[56];
          specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(&v3[v11 + 5], v37);
          v23 = v38;
          *&v3[v11 + 16] = *&v3[v11 + 16] - v22;
          _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(&v3[v11 + 17], v23);
          _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOhTm_0(v39, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
          v24 = v12 + 1;
          if (v12 < v6)
          {
            ++v10;
            v11 += 14;
            ++v12;
            if (v10 < v36)
            {
              continue;
            }
          }

          v8 = v24 - 1;
LABEL_32:
          v4 = v33;
          goto LABEL_33;
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      }

      v8 = 0;
LABEL_33:
      *v4 = v5;
      if (v6 < v8)
      {
        __break(1u);
      }

      else
      {
        specialized Array.replaceSubrange<A>(_:with:)(v8, v6);
      }
    }
  }
}

uint64_t _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(uint64_t result, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = a2;
    v5 = result;
    v6 = *result;
    if ((*(result + 8) & 1) == 0)
    {
      v7 = v6[2];
      v23 = a2[2];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      goto LABEL_41;
    }

    *v5 = v4;
    *(v5 + 8) = 0;
    v3 = v4[2];

    if (v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v6 = 0;
        v7 = (v4 + 6);
        while (v6 < v4[2])
        {
          v6 = (v6 + 1);
          result = (*(*(v7 - 8) + 120))(v7, -1.0);
          v7 += 48;
          if (v3 == v6)
          {
            *v5 = v4;
            return result;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
LABEL_10:
        if (v7 >= 1 && v23 != 0)
        {
          v10 = 0;
          v11 = 0;
          v12 = v4 + 4;
          v20 = v4 + 4;
          v21 = v5;
          while (1)
          {
            v13 = 0;
            v14 = v10 + 1;
            v3 = &v12[6 * v11];
            v22 = v10;
            v5 = &v6[6 * v10];
            while (1)
            {
              v9 = v14 - 1;
              v15 = v6[2];
              if (v14 - 1 >= v15)
              {
                goto LABEL_39;
              }

              if (v11 < 0)
              {
                goto LABEL_40;
              }

              v16 = v5[v13 + 4];
              v17 = v3[v13];
              if (v16 != v17)
              {
                break;
              }

              _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOcTm_0(&v3[v13], v26, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
              v25 = v29;
              v24[0] = v27;
              v24[1] = v28;
              v4 = &v5[v13 + 5];
              v18 = *v4;
              if (*v4 == v27)
              {
                (*(v18 + 104))(&v5[v13 + 6], v24 + 8);
              }

              else if (v18 == type metadata accessor for ZeroVTable())
              {
                outlined destroy of _AnyAnimatableData(&v5[v13 + 5]);
                outlined init with copy of _AnyAnimatableData(v24, &v5[v13 + 5]);
                (*(*v4 + 112))(&v5[v13 + 6]);
              }

              outlined destroy of _AnyAnimatableData(v24);
              v19 = v14 + 1;
              if (v14 < v7)
              {
                ++v11;
                v13 += 6;
                ++v14;
                if (v11 < v23)
                {
                  continue;
                }
              }

              v9 = v19 - 1;
LABEL_34:
              v5 = v21;
              goto LABEL_35;
            }

            if (v16 >= v17)
            {
              ++v11;
            }

            else
            {
              v4 = &v6[6 * v22 + v13];
              v3 = (v14 - 1);
              _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOhTm_0((v4 + 4), type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
              memmove(v4 + 4, v4 + 10, 48 * (v15 - v14));
              v9 = v14 - 1;
              v6[2] = v15 - 1;
              --v7;
            }

            v12 = v20;
            if (v9 < v7)
            {
              v10 = v9;
              if (v11 < v23)
              {
                continue;
              }
            }

            goto LABEL_34;
          }
        }

        v9 = 0;
LABEL_35:
        *v5 = v6;
        if (v7 >= v9)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(v9, v7);
        }

        __break(1u);
LABEL_43:
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      }
    }
  }

  return result;
}

void specialized KeyedAnimatableArray.scale(by:)(Swift::Double a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v5 = 0;
    v6 = a1;
    v19 = v6;
    do
    {
      if (v5 == v3)
      {
        goto LABEL_19;
      }

      if (v5 >= v2[2])
      {
        goto LABEL_20;
      }

      v7 = &v2[14 * v5 + 4];
      _ShapeStyle_Pack.Fill.AnimatableData.scale(by:)(a1);
      *(v7 + 96) = *(v7 + 96) * v19;
      v8 = *(v7 + 104);
      v9 = *(v8 + 2);
      if (v9)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v7 + 104) = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        v11 = 0;
        v12 = 0;
        *(v7 + 104) = v8;
        while (1)
        {
          *(v7 + 104) = v8;
          if (v12 >= *(v8 + 2))
          {
            break;
          }

          v13 = &v8[v11];
          *&v8[v11 + 32] = *&v8[v11 + 32] * v19;
          if (a1 != 1.0 && (v13[80] & 1) == 0)
          {
            v14 = &v8[v11];
            v15 = *&v8[v11 + 72];
            v16 = *(v13 + 40);
            v17 = vmul_n_f32(vmovn_s64(v16), v19);
            v18.i64[0] = v17.u32[0];
            v18.i64[1] = v17.u32[1];
            *(v13 + 40) = vorrq_s8(vshll_n_s32(vmul_n_f32(vshrn_n_s64(v16, 0x20uLL), v19), 0x20uLL), v18);
            *(v14 + 56) = vmulq_n_f64(*&v8[v11 + 56], a1);
            *(v14 + 9) = v15 * a1;
            v13[80] = 0;
          }

          ++v12;
          v8 = *(v7 + 104);
          v11 += 56;
          if (v9 == v12)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_4:
      ++v5;
    }

    while (v5 != v3);
    *v4 = v2;
  }
}

uint64_t _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(uint64_t result, void *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = a2;
    v4 = result;
    v5 = *result;
    if (*(result + 8))
    {

      *v4 = v3;
      *(v4 + 8) = 0;
    }

    else
    {
      v6 = v5[2];
      v35 = a2[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

      while (v6 >= 1 && v35 != 0)
      {
        v34 = v3;
        v32 = v4;
        v8 = 0;
        v9 = 0;
LABEL_13:
        v10 = 0;
        v11 = v8 + 1;
        v33 = v8;
        v3 = &v5[14 * v8];
        v4 = &v34[14 * v9];
        while (1)
        {
          result = v11 - 1;
          v12 = v5[2];
          if (v11 - 1 >= v12)
          {
            break;
          }

          if (v9 < 0)
          {
            goto LABEL_39;
          }

          v13 = BYTE1(v3[v10 / 8 + 4]);
          v14 = LOBYTE(v3[v10 / 8 + 4]);
          v15 = *(v4 + v10 + 32);
          v16 = *(v4 + v10 + 33);
          if (v14 != v15 || v13 != v16)
          {
            v24 = v14 == v15;
            if (v13 >= v16)
            {
              v24 = 0;
            }

            if (v14 < v15 || v24)
            {
              v25 = &v5[14 * v33 + v10 / 8];
              v26 = v12 - 1;
              v27 = v25[2];
              v28 = v25[4];
              *&v38[16] = v25[3];
              *&v38[32] = v28;
              *v38 = v27;
              v29 = v25[5];
              v30 = v25[6];
              v31 = v25[8];
              *&v38[80] = v25[7];
              *&v38[96] = v31;
              *&v38[48] = v29;
              *&v38[64] = v30;
              memmove(v25 + 2, v25 + 9, 112 * (v12 - v11));
              v5[2] = v26;
              _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOhTm_0(v38, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
              result = v11 - 1;
              --v6;
            }

            else
            {
              ++v9;
            }

            if (result >= v6)
            {
              goto LABEL_34;
            }

            v8 = result;
            if (v9 >= v35)
            {
              goto LABEL_34;
            }

            goto LABEL_13;
          }

          v18 = *(v4 + v10 + 112);
          *&v38[64] = *(v4 + v10 + 96);
          *&v38[80] = v18;
          *&v38[96] = *(v4 + v10 + 128);
          v19 = *(v4 + v10 + 48);
          *v38 = *(v4 + v10 + 32);
          *&v38[16] = v19;
          v20 = *(v4 + v10 + 80);
          *&v38[32] = *(v4 + v10 + 64);
          *&v38[48] = v20;
          _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOcTm_0(v38, v36, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
          v21 = *&v38[96];
          v36[4] = *&v38[72];
          v36[5] = *&v38[88];
          v37 = *&v38[104];
          v36[0] = *&v38[8];
          v36[1] = *&v38[24];
          v36[2] = *&v38[40];
          v36[3] = *&v38[56];
          specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(&v3[v10 / 8 + 5], v36);
          v22 = v37;
          *&v3[v10 / 8 + 16] = v21 + *&v3[v10 / 8 + 16];
          _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(&v3[v10 / 8 + 17], v22);
          _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOhTm_0(v38, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element);
          v23 = v11 + 1;
          if (v11 < v6)
          {
            ++v9;
            v10 += 112;
            ++v11;
            if (v9 < v35)
            {
              continue;
            }
          }

          result = v23 - 1;
LABEL_34:
          v4 = v32;
          goto LABEL_35;
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      }

      result = 0;
LABEL_35:
      *v4 = v5;
      if (v6 < result)
      {
        __break(1u);
      }

      else
      {
        return specialized Array.replaceSubrange<A>(_:with:)(result, v6);
      }
    }
  }

  return result;
}

uint64_t _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(uint64_t result, unint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  v3 = a2;
  v4 = result;
  v5 = *result;
  if (*(result + 8))
  {

    *v4 = v3;
    *(v4 + 8) = 0;
  }

  v6 = v5[2];
  v24 = *(a2 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_7:
  if (v6 >= 1 && v24 != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = v3 + 32;
    v21 = v3 + 32;
    v22 = v4;
LABEL_13:
    v11 = 0;
    v12 = v8 + 1;
    v4 = v10 + 48 * v9;
    v23 = v8;
    v13 = &v5[6 * v8];
    while (1)
    {
      result = v12 - 1;
      v3 = v5[2];
      if (v12 - 1 >= v3)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        goto LABEL_7;
      }

      if (v9 < 0)
      {
        goto LABEL_37;
      }

      v14 = v13[v11 + 4];
      v15 = *(v4 + v11 * 8);
      if (v14 != v15)
      {
        if (v14 >= v15)
        {
          ++v9;
        }

        else
        {
          v20 = &v5[6 * v23 + v11];
          _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOhTm_0((v20 + 4), type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
          memmove(v20 + 4, v20 + 10, 48 * (v3 - v12));
          result = v12 - 1;
          v5[2] = v3 - 1;
          --v6;
        }

        v10 = v21;
        if (result >= v6)
        {
          goto LABEL_32;
        }

        v8 = result;
        if (v9 >= v24)
        {
          goto LABEL_32;
        }

        goto LABEL_13;
      }

      _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOcTm_0(v4 + v11 * 8, v28, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
      v27 = v31;
      v25 = v29;
      v26 = v30;
      v16 = v13[v11 + 5];
      if (v16 == v29)
      {
        (*(v16 + 96))(&v13[v11 + 6], &v25 + 8);
      }

      else if (v16 == type metadata accessor for ZeroVTable())
      {
        outlined destroy of _AnyAnimatableData(&v13[v11 + 5]);
        v17 = v27;
        v18 = v26;
        *&v13[v11 + 5] = v25;
        *&v13[v11 + 7] = v18;
        v13[v11 + 9] = v17;
        goto LABEL_22;
      }

      outlined destroy of _AnyAnimatableData(&v25);
LABEL_22:
      v19 = v12 + 1;
      if (v12 < v6)
      {
        ++v9;
        v11 += 6;
        ++v12;
        if (v9 < v24)
        {
          continue;
        }
      }

      result = v19 - 1;
LABEL_32:
      v4 = v22;
      goto LABEL_33;
    }
  }

  result = 0;
LABEL_33:
  *v4 = v5;
  if (v6 >= result)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(result, v6);
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for InterpolatedShapeStyle()
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

uint64_t *initializeBufferWithCopyOfBuffer for InterpolatedShapeStyle(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 3;
  v11 = ((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v12 = v8 | *(v4 + 80) & 0xFC;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 3) + 16) & ~(v12 | 3)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *((v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFFCLL) = *((v10 + v18) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v3;
}

uint64_t initializeWithCopy for InterpolatedShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  *((*(v9 + 48) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 48) + 3 + v13) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithCopy for InterpolatedShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  *((*(v9 + 40) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 40) + 3 + v13) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t initializeWithTake for InterpolatedShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *((*(v9 + 32) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 32) + 3 + v13) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithTake for InterpolatedShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  *((*(v9 + 24) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 24) + 3 + v13) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for InterpolatedShapeStyle(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((*(*(v6 - 8) + 64) + (v11 & ~v9) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFFC;
  if ((v12 & 0xFFFFFFFC) != 0)
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
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    if (v10)
    {
LABEL_27:
      if (v5 >= v8)
      {
        return (*(v4 + 48))();
      }

      else
      {
        return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v19) + 1;
}

unsigned int *storeEnumTagSinglePayload for InterpolatedShapeStyle(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v12;
    if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
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

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
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
      if (v6 >= v9)
      {
        v24 = *(v5 + 56);

        return v24();
      }

      else
      {
        v22 = *(v8 + 56);
        v23 = (result + v10 + v11) & ~v11;

        return v22(v23);
      }
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v20 = ~v12 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

uint64_t _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI20KeyedAnimatableArrayV7ElementVyAA16_ShapeStyle_PackV3KeyVAA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGG_GWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Int _UpdateFidelity.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type _UpdateFidelity and conformance _UpdateFidelity()
{
  result = lazy protocol witness table cache variable for type _UpdateFidelity and conformance _UpdateFidelity;
  if (!lazy protocol witness table cache variable for type _UpdateFidelity and conformance _UpdateFidelity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UpdateFidelity and conformance _UpdateFidelity);
  }

  return result;
}

uint64_t EnvironmentValues.defaultForegroundStyle.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (v2[1])
  {

    v5 = a1(v3);

    return v5;
  }

  else
  {
    result = a2(v3);
    if (result)
    {
    }
  }

  return result;
}

uint64_t _ForegroundStyleModifier2.init(primary:secondary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for _ForegroundStyleModifier2();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t View.foregroundStyle<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a6;
  v28[1] = a7;
  v29 = a1;
  v31 = a8;
  v32 = a3;
  v30 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v22 = type metadata accessor for _ForegroundStyleModifier2();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v28 - v25;
  (*(v14 + 16))(v17, v29, a4, v24);
  (*(v10 + 16))(v12, v30, a5);
  _ForegroundStyleModifier2.init(primary:secondary:)(v17, v12, a4, a5, v26);
  View.modifier<A>(_:)(v26, v32, v22);
  return (*(v23 + 8))(v26, v22);
}

uint64_t View.foregroundStyle<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  return View.foregroundStyle<A, B, C>(_:_:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

{
  v48 = a8;
  v46 = a9;
  v47 = a4;
  v44 = a2;
  v45 = a3;
  v40[1] = a12;
  v15 = *(a7 - 8);
  v42 = a1;
  v43 = v15;
  v40[2] = a10;
  v40[3] = a11;
  MEMORY[0x1EEE9AC00](a1);
  v41 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v27;
  v50 = v28;
  v51 = v29;
  v52 = v30;
  v53 = v32;
  v54 = v31;
  v33 = type metadata accessor for _ForegroundStyleModifier3();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = v40 - v36;
  (*(v23 + 16))(v26, v42, a5, v35);
  (*(v18 + 16))(v21, v44, a6);
  v38 = v41;
  (*(v43 + 16))(v41, v45, a7);
  _ForegroundStyleModifier3.init(primary:secondary:tertiary:)(v26, v21, v38, a5, a6, a7, v37);
  View.modifier<A>(_:)(v37, v47, v33);
  return (*(v34 + 8))(v37, v33);
}

uint64_t _ForegroundStyleModifier3.init(primary:secondary:tertiary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for _ForegroundStyleModifier3();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 72), a3, a6);
}

void (*EnvironmentValues.foregroundStyle.modify(uint64_t **a1))(uint64_t **a1, char a2)
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

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015ForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.foregroundStyle.modify;
}

uint64_t key path getter for EnvironmentValues.foregroundStyle : EnvironmentValues@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    v7 = a2(v5);
  }

  else
  {
    result = a3(*a1);
    if (result)
    {
      v7 = *(result + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *a4 = v7;
  return result;
}

uint64_t key path setter for EnvironmentValues.foregroundStyle : EnvironmentValues(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a1;
  v10 = *a2;

  swift_retain_n();
  a5(a2, v9, &v12);

  if (a2[1])
  {
    a6(v10, *a2);
  }
}

void (*EnvironmentValues.defaultForegroundStyle.modify(uint64_t **a1))(uint64_t **a1, char a2)
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

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022DefaultForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022DefaultForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.defaultForegroundStyle.modify;
}

void EnvironmentValues.foregroundStyle.modify(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t *), void (*a4)(uint64_t, void))
{
  v6 = *a1;
  v7 = **a1;
  v8 = (*a1)[5];
  v9 = (*a1)[3];
  if (a2)
  {
    swift_retain_n();
    swift_retain_n();
    a3(v9, v7, v6 + 1);

    if (v8)
    {
      a4(v6[4], *v6[3]);
    }
  }

  else
  {
    swift_retain_n();
    swift_retain_n();
    a3(v9, v7, v6 + 2);

    if (v8)
    {
      a4(v6[4], *v6[3]);
    }
  }

  free(v6);
}

uint64_t specialized implicit closure #1 in _GraphInputs.foregroundStyle.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6[0] = v4;
  v6[1] = v3;

  key path getter for EnvironmentValues.foregroundStyle : EnvironmentValues(v6, _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015ForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5, _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5, a2);
}

uint64_t EnvironmentValues._effectiveForegroundStyle.getter()
{
  result = EnvironmentValues.currentForegroundStyle.getter();
  if (!result)
  {
    if (one-time initialization token for sharedPrimary != -1)
    {
      swift_once();
    }
  }

  return result;
}

uint64_t _DefaultForegroundStyleModifier.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _DefaultForegroundStyleModifier.style.setter(uint64_t a1)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ForegroundStyleModifier3<A, B, C>.ForegroundStyleEnvironment()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t static ForegroundStyle._makeView<A>(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v11 = v5;
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v11, v9, &type metadata for ForegroundStyle, a3, &protocol witness table for ForegroundStyle, a4, a5);
}

uint64_t specialized _ImplicitShapeStyle._apply(to:)(uint64_t a1)
{
  if (*(a1 + 24) == 3)
  {
    if (*a1 == 1)
    {
      v2 = EnvironmentValues.effectiveBackgroundStyle.getter();
    }

    else
    {
      if (*(a1 + 64))
      {
        v2 = *(a1 + 64);
      }

      else
      {
        v4 = EnvironmentValues.currentForegroundStyle.getter();
        if (v4)
        {
          v2 = v4;
        }

        else
        {
          if (one-time initialization token for sharedPrimary != -1)
          {
            swift_once();
          }

          v2 = static HierarchicalShapeStyle.sharedPrimary;
        }
      }
    }

    result = outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = v2;
    *(a1 + 40) = 2;
  }

  else
  {

    return specialized ForegroundStyle._apply(to:)(a1);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ForegroundStyleModifier3(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = a3[4];
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = (v5 + v8) & ~v8;
  v11 = *(v7 + 64);
  v12 = *(v6 - 8);
  v13 = *(v12 + 80);
  v14 = v11 + v13;
  v15 = ((v11 + v13 + v10) & ~v13) + *(v12 + 64);
  v16 = (*(v7 + 80) | *(v4 + 80) | *(v12 + 80));
  if (v16 <= 7 && v15 <= 0x18 && ((*(v7 + 80) | *(v4 + 80) | *(v12 + 80)) & 0x100000) == 0)
  {
    v20 = ~v8;
    v21 = ~v13;
    v25 = a3[3];
    (*(v4 + 16))(a1);
    v23 = (a2 + v9) & v20;
    (*(v7 + 16))((v3 + v9) & v20, v23, v25);
    (*(v12 + 16))((((v3 + v9) & v20) + v14) & v21, (v23 + v14) & v21, v6);
  }

  else
  {
    v19 = *a2;
    *v3 = *a2;
    v3 = (v19 + ((v16 + 16) & ~v16));
  }

  return v3;
}

uint64_t initializeWithCopy for _ForegroundStyleModifier3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 16))((*(v8 + 48) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 48) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithCopy for _ForegroundStyleModifier3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 24))((*(v8 + 40) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 40) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t initializeWithTake for _ForegroundStyleModifier3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 32))((*(v8 + 32) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 32) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithTake for _ForegroundStyleModifier3(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(a3[4] - 8);
  (*(v13 + 40))((*(v8 + 24) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v8 + 24) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _ForegroundStyleModifier3(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
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

  return v15 + (v24 | v22) + 1;
}

char *storeEnumTagSinglePayload for _ForegroundStyleModifier3(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
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
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for _ForegroundStyleModifier3<A, B, C>.ForegroundStyleEnvironment(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ShapeStyleTriple<AnyShapeStyle, AnyShapeStyle, AnyShapeStyle>()
{
  if (!lazy cache variable for type metadata for ShapeStyleTriple<AnyShapeStyle, AnyShapeStyle, AnyShapeStyle>)
  {
    v0 = type metadata accessor for ShapeStyleTriple();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ShapeStyleTriple<AnyShapeStyle, AnyShapeStyle, AnyShapeStyle>);
    }
  }
}

void type metadata accessor for ShapeStyleBox<ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for ShapeStyleBox<ForegroundStyle>)
  {
    v0 = type metadata accessor for ShapeStyleBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ShapeStyleBox<ForegroundStyle>);
    }
  }
}

uint64_t static ShapeStyle._apply(to:)(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (result != MEMORY[0x1E69E73E0])
  {
    v3 = result;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 40))(a1, v3, AssociatedConformanceWitness);
  }

  return result;
}

{
  return static ShapeStyle._apply(to:)(a1);
}

uint64_t ShapeStyle.fallbackColor(in:level:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v17[27] = 0;
  *&v13 = 0;
  v12 = a2;
  BYTE8(v13) = 2;
  *&v14 = 0;
  BYTE8(v14) = 5;
  *&v15 = v7;
  *(&v15 + 1) = v6;
  v16 = 0u;
  memset(v17, 0, 24);
  v17[24] = 1;
  *&v17[25] = 768;
  v8 = *(a4 + 32);

  v8(&v12, a3, a4);
  v9 = v14;
  v10 = BYTE8(v14);
  v18[4] = v16;
  v19[0] = *v17;
  *(v19 + 12) = *&v17[12];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = v15;
  outlined copy of _ShapeStyle_Shape.Result(v14, BYTE8(v14));
  outlined destroy of _ShapeStyle_Shape(v18);
  if (v10 != 3)
  {
    outlined consume of _ShapeStyle_Shape.Result(v9, v10);
    return 0;
  }

  return v9;
}

uint64_t _ShapeStyle_Shape.applyingOpacity(at:to:)(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1 >= 1)
  {
    v6 = *(v2 + 56);
    v10[0] = *(v2 + 48);
    v10[1] = v6;
    v7 = *(*a2 + 168);

    v8 = v7(a1, v10);

    type metadata accessor for ColorBox<Color.OpacityColor>();
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    *(v4 + 24) = v8;
  }

  return v4;
}

float _ShapeStyle_Shape.opacity(for:at:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  v9[0] = *(v2 + 48);
  v9[1] = v5;
  v6 = *(*a1 + 168);

  v7 = v6(a2, v9);

  return v7;
}

uint64_t static ShapeStyle._makeView<A>(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a1;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  v13 = v7;
  return static ShapeStyle.legacyMakeShapeView<A>(view:inputs:)(&v13, v11, a3, a4, a5, a6, a7);
}