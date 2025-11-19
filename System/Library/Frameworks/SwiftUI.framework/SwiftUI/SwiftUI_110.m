uint64_t assignWithTake for ButtonBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  v4 = *(a2 + 64);
  if (!*(a1 + 64))
  {
    if (v4)
    {
      v6 = *(a2 + 72);
      *(a1 + 64) = v4;
      *(a1 + 72) = v6;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 64) = *(a2 + 64);
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = *(a2 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;

LABEL_8:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for ButtonBehavior(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for ButtonBehavior(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for WrappedButtonStyleBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v10;
  v12 = *(v9 + 64) + ((v11 + 75) & ~v11);
  if ((v12 + 1) > 0x30)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 48;
  }

  v14 = v10 | 7 | *(v6 + 80);
  v15 = (*(v6 + 80) | v10) & 0x100000;
  v16 = ((-2 - (v10 | 7)) & 0xFFFFFFFFFFFFFFFELL | v10 & 0xF8 | 6) - (((v10 | 7) + v7) & ~(v10 | 7)) - v13;
  if (v14 != 7 || v15 != 0 || v16 < 0xFFFFFFFFFFFFFFE7)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v14 + 16) & ~v14));
LABEL_31:

    return a1;
  }

  v50 = *(*(v8 - 8) + 64);
  v51 = v8;
  (*(v6 + 16))(a1, a2, v5);
  *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = (a1 + v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = ((a2 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[v13];
  v23 = v22 - 3;
  if (v22 >= 3)
  {
    if (v13 <= 3)
    {
      v24 = v13;
    }

    else
    {
      v24 = 4;
    }

    if (v24 <= 1)
    {
      if (!v24)
      {
        goto LABEL_26;
      }

      v25 = *v21;
    }

    else if (v24 == 2)
    {
      v25 = *v21;
    }

    else if (v24 == 3)
    {
      v25 = *v21 | (v21[2] << 16);
    }

    else
    {
      v25 = *v21;
    }

    v26 = (v25 | (v23 << (8 * v13))) + 3;
    v22 = v25 + 3;
    if (v13 < 4)
    {
      v22 = v26;
    }
  }

LABEL_26:
  if (v22 == 2)
  {
    v38 = *v21;
    v39 = *(v21 + 1);
    v40 = v21[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v21, v39, v40);
    *v20 = v38;
    *(v20 + 8) = v39;
    *(v20 + 16) = v40;
    v41 = *(v21 + 3);
    *(v20 + 24) = v41;
    v42 = *(v21 + 5);
    *(v20 + 32) = *(v21 + 4);
    *(v20 + 40) = v42;
    *(v20 + v13) = 2;
    v43 = v41;
    goto LABEL_31;
  }

  if (v22 != 1)
  {
    v44 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 8) = v44;
    *(v20 + v13) = 0;
    goto LABEL_31;
  }

  v49 = v9;
  v27 = *v21;
  v28 = *(v21 + 1);
  v29 = *(v21 + 2);
  v30 = *(v21 + 3);
  v47 = v21[34];
  v31 = *(v21 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v21, v28, v29, v30, v31, v47);
  *v20 = v27;
  *(v20 + 8) = v28;
  *(v20 + 16) = v29;
  *(v20 + 24) = v30;
  *(v20 + 32) = v31;
  *(v20 + 34) = v47;
  v32 = (v20 + 42) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v21 + 42) & 0xFFFFFFFFFFFFFFF8;
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  v37 = *(v33 + 24);
  v46 = *(v33 + 32);
  v48 = *(v33 + 34);
  outlined copy of Environment<OpenURLAction>.Content(*v33, v35, v36, v37, v46, v48);
  *v32 = v34;
  *(v32 + 8) = v35;
  *(v32 + 16) = v36;
  *(v32 + 24) = v37;
  *(v32 + 32) = v46;
  *(v32 + 34) = v48;
  (*(v49 + 16))((v32 + v11 + 35) & ~v11, (v33 + v11 + 35) & ~v11, v51);
  *(((v32 + v11 + 35) & ~v11) + v50) = *(((v33 + v11 + 35) & ~v11) + v50);
  *(v20 + v13) = 1;
  return a1;
}

uint64_t initializeWithTake for WrappedButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  *v11 = *v12;
  v13 = (v9 | 7) + 1;
  v14 = &v11[v13] & ~(v9 | 7);
  v15 = (&v12[v13] & ~(v9 | 7));
  v16 = *(v8 + 64);
  v17 = v16 + ((v9 + 75) & ~v9);
  if ((v17 + 1) > 0x30)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 48;
  }

  v19 = v15[v18];
  v20 = v19 - 3;
  if (v19 < 3)
  {
    goto LABEL_18;
  }

  if (v18 <= 3)
  {
    v21 = v18;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = *v15;
  }

  else if (v21 == 2)
  {
    v22 = *v15;
  }

  else if (v21 == 3)
  {
    v22 = *v15 | (v15[2] << 16);
  }

  else
  {
    v22 = *v15;
  }

  v23 = (v22 | (v20 << (8 * v18))) + 3;
  v19 = v22 + 3;
  if (v18 < 4)
  {
    v19 = v23;
  }

LABEL_18:
  if (v19 == 2)
  {
    v35 = *v15;
    v36 = *(v15 + 2);
    *(v14 + 16) = *(v15 + 1);
    *(v14 + 32) = v36;
    *v14 = v35;
    v34 = 2;
  }

  else if (v19 == 1)
  {
    v24 = ~v9;
    v25 = *v15;
    v26 = *(v15 + 1);
    *(v14 + 31) = *(v15 + 31);
    *v14 = v25;
    *(v14 + 16) = v26;
    v27 = (v14 + 42) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v15 + 42) & 0xFFFFFFFFFFFFFFF8;
    v29 = *v28;
    v30 = *(v28 + 16);
    *(v27 + 31) = *(v28 + 31);
    *v27 = v29;
    *(v27 + 16) = v30;
    v31 = v9 + 35;
    v32 = (v31 + v27) & v24;
    v33 = (v31 + v28) & v24;
    (*(v8 + 32))(v32, v33, v7);
    *(v32 + v16) = *(v33 + v16);
    v34 = 1;
  }

  else
  {
    v34 = 0;
    *v14 = *v15;
  }

  *(v14 + v18) = v34;
  return a1;
}

uint64_t assignWithTake for WrappedButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  *v11 = *v12;
  v13 = (v9 | 7) + 1;
  v14 = (&v11[v13] & ~(v9 | 7));
  v15 = (&v12[v13] & ~(v9 | 7));
  if (v14 == v15)
  {
    return a1;
  }

  v16 = v7;
  v17 = v8;
  v18 = *(v8 + 64);
  v19 = ((v9 + 75) & ~v9) + v18;
  if ((v19 + 1) > 0x30)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = 48;
  }

  v21 = v14[v20];
  v22 = v21 - 3;
  if (v21 >= 3)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_19;
      }

      v24 = *v14;
    }

    else if (v23 == 2)
    {
      v24 = *v14;
    }

    else if (v23 == 3)
    {
      v24 = *v14 | (v14[2] << 16);
    }

    else
    {
      v24 = *v14;
    }

    v25 = (v24 | (v22 << (8 * v20))) + 3;
    v21 = v24 + 3;
    if (v20 < 4)
    {
      v21 = v25;
    }
  }

LABEL_19:
  v26 = ~v9;
  if (v21 == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v14, *(v14 + 1), v14[16]);
  }

  else if (v21 == 1)
  {
    outlined consume of Environment<OpenURLAction>.Content(*v14, *(v14 + 1), *(v14 + 2), *(v14 + 3), *(v14 + 16), v14[34]);
    v27 = (v14 + 42) & 0xFFFFFFFFFFFFFFF8;
    outlined consume of Environment<OpenURLAction>.Content(*v27, *(v27 + 8), *(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 34));
    (*(v17 + 8))((v9 + v27 + 35) & v26, v16);
    goto LABEL_24;
  }

LABEL_24:
  v28 = v15[v20];
  v29 = v28 - 3;
  if (v28 >= 3)
  {
    if (v20 <= 3)
    {
      v30 = v20;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *v15;
      }

      else if (v30 == 3)
      {
        v31 = *v15 | (v15[2] << 16);
      }

      else
      {
        v31 = *v15;
      }

LABEL_36:
      v32 = (v31 | (v29 << (8 * v20))) + 3;
      v28 = v31 + 3;
      if (v20 < 4)
      {
        v28 = v32;
      }

      goto LABEL_38;
    }

    if (v30)
    {
      v31 = *v15;
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v28 == 2)
  {
    v42 = *v15;
    v43 = *(v15 + 2);
    *(v14 + 1) = *(v15 + 1);
    *(v14 + 2) = v43;
    *v14 = v42;
    v41 = 2;
  }

  else if (v28 == 1)
  {
    v33 = *v15;
    v34 = *(v15 + 1);
    *(v14 + 31) = *(v15 + 31);
    *v14 = v33;
    *(v14 + 1) = v34;
    v35 = (v14 + 42) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v15 + 42) & 0xFFFFFFFFFFFFFFF8;
    v37 = *v36;
    v38 = *(v36 + 16);
    *(v35 + 31) = *(v36 + 31);
    *v35 = v37;
    *(v35 + 16) = v38;
    v39 = (v9 + 35 + v35) & v26;
    v40 = (v9 + 35 + v36) & v26;
    (*(v17 + 32))(v39, v40, v16);
    *(v18 + v39) = *(v18 + v40);
    v41 = 1;
  }

  else
  {
    v41 = 0;
    *v14 = *v15;
  }

  v14[v20] = v41;
  return a1;
}

uint64_t getEnumTagSinglePayload for WrappedButtonStyleBody(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64) + ((v9 + 75) & ~v9);
  v11 = 48;
  if ((v10 + 1) > 0x30)
  {
    v11 = v10 + 1;
  }

  if (v7 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v9 | 7;
  v14 = (v9 | 7) + *(v6 + 64);
  v15 = (v9 | 7) + 1;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v16 = v11 + (v14 & ~v13) + (v15 & ~v13) + 1;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 < 2)
    {
LABEL_30:
      if (v7 < 0xFD)
      {
        v25 = *(((v15 + ((a1 + v14) & ~v13)) & ~v13) + v11);
        if (v25 >= 3)
        {
          return (v25 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v24 = *(v6 + 48);

        return v24(a1, v7, v5);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for WrappedButtonStyleBody(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v33 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64) + ((v11 + 75) & ~v11);
  if ((v12 + 1) > 0x30)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 48;
  }

  if (v9 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = v9;
  }

  v15 = v11 | 7;
  v16 = (v11 | 7) + *(v8 + 64);
  v17 = v16 & ~(v11 | 7);
  v18 = (v11 | 7) + 1;
  v19 = v13 + (v18 & ~v15) + 1;
  v20 = v19 + v17;
  if (a3 <= v14)
  {
    v21 = 0;
  }

  else if (v20 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
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

  if (v14 < a2)
  {
    v22 = ~v14 + a2;
    if (v20 < 4)
    {
      v23 = (v22 >> (8 * v20)) + 1;
      if (v20)
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
LABEL_58:
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
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v21 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
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
  if (v9 < 0xFD)
  {
    v28 = ~v15;
    v29 = (&a1[v16] & v28);
    if (a2 > 0xFD)
    {
      if (v19 <= 3)
      {
        v30 = ~(-1 << (8 * v19));
      }

      else
      {
        v30 = -1;
      }

      if (v19)
      {
        v31 = v30 & (a2 - 254);
        if (v19 <= 3)
        {
          v32 = v19;
        }

        else
        {
          v32 = 4;
        }

        bzero(v29, v19);
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            *v29 = v31;
            v29[2] = BYTE2(v31);
          }

          else
          {
            *v29 = v31;
          }
        }

        else if (v32 == 1)
        {
          *v29 = v31;
        }

        else
        {
          *v29 = v31;
        }
      }
    }

    else
    {
      *((&v29[v18] & v28) + v13) = -a2;
    }
  }

  else
  {
    v27 = *(v33 + 56);

    v27(a1, a2, v9, v7);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for WrappedButtonStyleBody.ArchiveBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v7;
  v9 = *(v6 + 64);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = v12;
  v14 = *(v11 + 64) + ((v13 + 75) & ~v13);
  if ((v14 + 1) > 0x30)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 48;
  }

  v16 = v15 - ((-2 - (v12 | 7)) & 0xFFFFFFFFFFFFFFFELL | v12 & 0xF8 | 6) - ((((-26 - v7) | v7) - (v9 + (v12 | 7))) | v12 | 7) - 2;
  v17 = (v12 | v7) & 0x100000;
  if ((v13 | v7) > 7 || v17 != 0 || v16 > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    v21 = v20 + (((v13 | v7) & 0xF8 ^ 0x1F8) & ((v13 | v7) + 16));
LABEL_34:

    return v21;
  }

  v60 = *(v11 + 64);
  v61 = *(v10 - 8);
  v62 = v10;
  v22 = *a2;
  v23 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v23);
  *a1 = v22;
  *(a1 + 8) = v23;
  v63 = a1;
  v24 = a1 & 0xFFFFFFFFFFFFFFF8;
  v25 = a2 & 0xFFFFFFFFFFFFFFF8;
  v26 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v22) = *(v25 + 24);
  outlined copy of Environment<Selector?>.Content(v26, v22);
  *(v24 + 16) = v26;
  *(v24 + 24) = v22;
  v27 = (v24 + v8 + 25) & ~v8;
  v28 = (v25 + v8 + 25) & ~v8;
  (*(v6 + 16))(v27, v28, v5);
  *((v27 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v29 = (v27 + v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((v28 + v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = v30[v15];
  v32 = v31 - 3;
  if (v31 < 3)
  {
    v21 = v63;
    goto LABEL_29;
  }

  if (v15 <= 3)
  {
    v33 = v15;
  }

  else
  {
    v33 = 4;
  }

  if (v33 <= 1)
  {
    v21 = v63;
    if (!v33)
    {
      goto LABEL_29;
    }

    v34 = *v30;
  }

  else
  {
    if (v33 == 2)
    {
      v34 = *v30;
    }

    else if (v33 == 3)
    {
      v34 = *v30 | (v30[2] << 16);
    }

    else
    {
      v34 = *v30;
    }

    v21 = v63;
  }

  v35 = (v34 | (v32 << (8 * v15))) + 3;
  v31 = v34 + 3;
  if (v15 < 4)
  {
    v31 = v35;
  }

LABEL_29:
  if (v31 == 2)
  {
    v51 = *v30;
    v52 = *(v30 + 1);
    v53 = v30[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v30, v52, v53);
    *v29 = v51;
    *(v29 + 8) = v52;
    *(v29 + 16) = v53;
    v54 = *(v30 + 3);
    *(v29 + 24) = v54;
    v55 = *(v30 + 5);
    *(v29 + 32) = *(v30 + 4);
    *(v29 + 40) = v55;
    *(v29 + v15) = 2;
    v56 = v54;
    goto LABEL_34;
  }

  if (v31 != 1)
  {
    v57 = *(v30 + 1);
    *v29 = *v30;
    *(v29 + 8) = v57;
    *(v29 + v15) = 0;
    goto LABEL_34;
  }

  v36 = *v30;
  v37 = *(v30 + 1);
  v38 = *(v30 + 2);
  v39 = *(v30 + 3);
  v40 = v30[34];
  v41 = *(v30 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v30, v37, v38, v39, v41, v40);
  *v29 = v36;
  *(v29 + 8) = v37;
  *(v29 + 16) = v38;
  *(v29 + 24) = v39;
  *(v29 + 32) = v41;
  *(v29 + 34) = v40;
  v42 = (v29 + 42) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v30 + 42) & 0xFFFFFFFFFFFFFFF8;
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = *(v43 + 16);
  v47 = *(v43 + 24);
  v59 = *(v43 + 34);
  v48 = *(v43 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*v43, v45, v46, v47, v48, v59);
  *v42 = v44;
  *(v42 + 8) = v45;
  *(v42 + 16) = v46;
  *(v42 + 24) = v47;
  *(v42 + 32) = v48;
  *(v42 + 34) = v59;
  v49 = v13 + 35 + v42;
  v21 = v63;
  v50 = v49 & ~v13;
  (*(v61 + 16))(v50, (v13 + 35 + v43) & ~v13, v62);
  *(v50 + v60) = *(((v13 + 35 + v43) & ~v13) + v60);
  *(v29 + v15) = 1;
  return v21;
}

uint64_t destroy for WrappedButtonStyleBody.ArchiveBody(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*(v3 + 16), *(v3 + 24));
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (v3 + *(v4 + 80) + 25) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(v5 + 56);
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 80);
  v10 = ((((v6 + v7 + (v9 | 7)) | v9 | 7) + 1) & ~(v9 | 7));
  v11 = *(*(v8 - 8) + 64) + ((v9 + 75) & ~v9);
  if ((v11 + 1) > 0x30)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 48;
  }

  v13 = v10[v12];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
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
        goto LABEL_18;
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

    v17 = (v16 | (v14 << (8 * v12))) + 3;
    v13 = v16 + 3;
    if (v12 < 4)
    {
      v13 = v17;
    }
  }

LABEL_18:
  if (v13 == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v10, *(v10 + 1), v10[16]);
  }

  else if (v13 == 1)
  {
    v22 = *(v8 - 8);
    v18 = v8;
    outlined consume of Environment<OpenURLAction>.Content(*v10, *(v10 + 1), *(v10 + 2), *(v10 + 3), *(v10 + 16), v10[34]);
    v19 = (v10 + 42) & 0xFFFFFFFFFFFFFFF8;
    outlined consume of Environment<OpenURLAction>.Content(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 34));
    v20 = *(v22 + 8);

    return v20((v9 + v19 + 35) & ~v9, v18);
  }
}

uint64_t initializeWithCopy for WrappedButtonStyleBody.ArchiveBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = a1 & 0xFFFFFFFFFFFFFFF8;
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v6) = *(v9 + 24);
  outlined copy of Environment<Selector?>.Content(v10, v6);
  *(v8 + 16) = v10;
  *(v8 + 24) = v6;
  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 16;
  v13 = *(v11 + 80);
  v14 = (v13 + 25 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v13;
  v15 = (v13 + 25 + v9) & ~v13;
  (*(v11 + 16))(v14, v15);
  v16 = *(v12 + 48);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = v18;
  v20 = *(v18 + 80);
  v21 = (v20 | 7) + v16;
  v22 = ((v21 + v14) & ~(v20 | 7));
  v23 = ((v21 + v15) & ~(v20 | 7));
  *v22 = *v23;
  v24 = (v20 | 7) + 1;
  v25 = &v22[v24] & ~(v20 | 7);
  v26 = (&v23[v24] & ~(v20 | 7));
  v27 = *(v18 + 64);
  v28 = v27 + ((v20 + 75) & ~v20);
  if ((v28 + 1) > 0x30)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = 48;
  }

  v30 = v26[v29];
  v31 = v30 - 3;
  if (v30 >= 3)
  {
    if (v29 <= 3)
    {
      v32 = v29;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_18;
      }

      v33 = *v26;
    }

    else if (v32 == 2)
    {
      v33 = *v26;
    }

    else if (v32 == 3)
    {
      v33 = *v26 | (v26[2] << 16);
    }

    else
    {
      v33 = *v26;
    }

    v34 = (v33 | (v31 << (8 * v29))) + 3;
    v30 = v33 + 3;
    if (v29 < 4)
    {
      v30 = v34;
    }
  }

LABEL_18:
  if (v30 == 2)
  {
    v50 = *v26;
    v51 = *(v26 + 1);
    v52 = v26[16];
    outlined copy of Environment<AppIntentExecutor?>.Content(*v26, v51, v52);
    *v25 = v50;
    *(v25 + 8) = v51;
    *(v25 + 16) = v52;
    v53 = *(v26 + 3);
    *(v25 + 24) = v53;
    v54 = *(v26 + 5);
    *(v25 + 32) = *(v26 + 4);
    *(v25 + 40) = v54;
    *(v25 + v29) = 2;
    v55 = v53;
LABEL_23:

    return a1;
  }

  if (v30 != 1)
  {
    v56 = *(v26 + 1);
    *v25 = *v26;
    *(v25 + 8) = v56;
    *(v25 + v29) = 0;
    goto LABEL_23;
  }

  v62 = a1;
  v35 = *v26;
  v36 = *(v26 + 1);
  v37 = *(v26 + 2);
  v38 = *(v26 + 3);
  v39 = v26[34];
  v40 = *(v26 + 16);
  v60 = v27;
  v61 = v17;
  v59 = v19;
  outlined copy of Environment<OpenURLAction>.Content(*v26, v36, v37, v38, v40, v39);
  *v25 = v35;
  *(v25 + 8) = v36;
  *(v25 + 16) = v37;
  *(v25 + 24) = v38;
  *(v25 + 32) = v40;
  *(v25 + 34) = v39;
  v41 = (v25 + 42) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v26 + 42) & 0xFFFFFFFFFFFFFFF8;
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  v46 = *(v42 + 24);
  v58 = *(v42 + 34);
  v47 = *(v42 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*v42, v44, v45, v46, v47, v58);
  *v41 = v43;
  *(v41 + 8) = v44;
  *(v41 + 16) = v45;
  *(v41 + 24) = v46;
  *(v41 + 32) = v47;
  *(v41 + 34) = v58;
  v48 = v20 + 35 + v41;
  a1 = v62;
  v49 = v48 & ~v20;
  (*(v59 + 16))(v49, (v20 + 35 + v42) & ~v20, v61);
  *(v49 + v60) = *(((v20 + 35 + v42) & ~v20) + v60);
  *(v25 + v29) = 1;
  return a1;
}

uint64_t assignWithCopy for WrappedButtonStyleBody.ArchiveBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v11 = a2 & 0xFFFFFFFFFFFFFFF8;
  v12 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v6) = *(v11 + 24);
  outlined copy of Environment<Selector?>.Content(v12, v6);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 16) = v12;
  *(v10 + 24) = v6;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 24;
  v17 = *(v15 + 80);
  v18 = (v17 + 25 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v17;
  v19 = (v17 + 25 + v11) & ~v17;
  (*(v15 + 24))(v18, v19);
  v20 = *(v16 + 40);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 | 7) + v20;
  v25 = ((v24 + v18) & ~(v23 | 7));
  v26 = ((v24 + v19) & ~(v23 | 7));
  *v25 = *v26;
  v27 = (v23 | 7) + 1;
  v28 = (&v25[v27] & ~(v23 | 7));
  v29 = (&v26[v27] & ~(v23 | 7));
  if (v28 != v29)
  {
    v30 = v21;
    v31 = v22;
    v32 = *(v22 + 64);
    v33 = ((v23 + 75) & ~v23) + v32;
    if ((v33 + 1) > 0x30)
    {
      v34 = v33 + 1;
    }

    else
    {
      v34 = 48;
    }

    v35 = v28[v34];
    v36 = v35 - 3;
    if (v35 >= 3)
    {
      if (v34 <= 3)
      {
        v37 = v34;
      }

      else
      {
        v37 = 4;
      }

      if (v37 <= 1)
      {
        if (!v37)
        {
          goto LABEL_19;
        }

        v38 = *v28;
      }

      else if (v37 == 2)
      {
        v38 = *v28;
      }

      else if (v37 == 3)
      {
        v38 = *v28 | (v28[2] << 16);
      }

      else
      {
        v38 = *v28;
      }

      v39 = (v38 | (v36 << (8 * v34))) + 3;
      v35 = v38 + 3;
      if (v34 < 4)
      {
        v35 = v39;
      }
    }

LABEL_19:
    if (v35 == 2)
    {
      outlined consume of Environment<AppIntentExecutor?>.Content(*v28, *(v28 + 1), v28[16]);
    }

    else if (v35 == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v28, *(v28 + 1), *(v28 + 2), *(v28 + 3), *(v28 + 16), v28[34]);
      v40 = (v28 + 42) & 0xFFFFFFFFFFFFFFF8;
      outlined consume of Environment<OpenURLAction>.Content(*v40, *(v40 + 8), *(v40 + 16), *(v40 + 24), *(v40 + 32), *(v40 + 34));
      (*(v31 + 8))((v23 + v40 + 35) & ~v23, v30);
      goto LABEL_24;
    }

LABEL_24:
    v41 = v29[v34];
    v42 = v41 - 3;
    if (v41 < 3)
    {
      goto LABEL_38;
    }

    if (v34 <= 3)
    {
      v43 = v34;
    }

    else
    {
      v43 = 4;
    }

    if (v43 <= 1)
    {
      if (!v43)
      {
        goto LABEL_38;
      }

      v44 = *v29;
    }

    else if (v43 == 2)
    {
      v44 = *v29;
    }

    else if (v43 == 3)
    {
      v44 = *v29 | (v29[2] << 16);
    }

    else
    {
      v44 = *v29;
    }

    v45 = (v44 | (v42 << (8 * v34))) + 3;
    v41 = v44 + 3;
    if (v34 < 4)
    {
      v41 = v45;
    }

LABEL_38:
    if (v41 == 2)
    {
      v59 = *v29;
      v60 = *(v29 + 1);
      v61 = v29[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v29, v60, v61);
      *v28 = v59;
      *(v28 + 1) = v60;
      v28[16] = v61;
      v62 = *(v29 + 3);
      *(v28 + 3) = v62;
      v63 = *(v29 + 5);
      *(v28 + 4) = *(v29 + 4);
      *(v28 + 5) = v63;
      v28[v34] = 2;
      v64 = v62;
    }

    else
    {
      if (v41 == 1)
      {
        v70 = v32;
        v71 = v34;
        v46 = *v29;
        v47 = *(v29 + 1);
        v68 = v31;
        v69 = v30;
        v48 = *(v29 + 2);
        v49 = *(v29 + 3);
        v50 = v29[34];
        v51 = *(v29 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v29, v47, v48, v49, v51, v50);
        *v28 = v46;
        *(v28 + 1) = v47;
        *(v28 + 2) = v48;
        *(v28 + 3) = v49;
        *(v28 + 16) = v51;
        v28[34] = v50;
        v52 = (v28 + 42) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v29 + 42) & 0xFFFFFFFFFFFFFFF8;
        v54 = *v53;
        v55 = *(v53 + 8);
        v56 = *(v53 + 16);
        v57 = *(v53 + 24);
        v67 = *(v53 + 34);
        v58 = *(v53 + 32);
        outlined copy of Environment<OpenURLAction>.Content(*v53, v55, v56, v57, v58, v67);
        *v52 = v54;
        *(v52 + 8) = v55;
        *(v52 + 16) = v56;
        *(v52 + 24) = v57;
        *(v52 + 32) = v58;
        *(v52 + 34) = v67;
        (*(v68 + 16))((v23 + 35 + v52) & ~v23, (v23 + 35 + v53) & ~v23, v69);
        *(v70 + ((v23 + 35 + v52) & ~v23)) = *(v70 + ((v23 + 35 + v53) & ~v23));
        v28[v71] = 1;
        return a1;
      }

      v65 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v65;
      v28[v34] = 0;
    }
  }

  return a1;
}

uint64_t initializeWithTake for WrappedButtonStyleBody.ArchiveBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v4 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v4 + 16) = v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v8 + 25 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v8;
  v10 = (v8 + 25 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = (v14 | 7) + v11;
  v16 = ((v15 + v9) & ~(v14 | 7));
  v17 = ((v15 + v10) & ~(v14 | 7));
  *v16 = *v17;
  v18 = (v14 | 7) + 1;
  v19 = &v16[v18] & ~(v14 | 7);
  v20 = (&v17[v18] & ~(v14 | 7));
  v21 = *(v13 + 64);
  v22 = v21 + ((v14 + 75) & ~v14);
  if ((v22 + 1) > 0x30)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 48;
  }

  v24 = v20[v23];
  v25 = v24 - 3;
  if (v24 < 3)
  {
    goto LABEL_18;
  }

  if (v23 <= 3)
  {
    v26 = v23;
  }

  else
  {
    v26 = 4;
  }

  if (v26 <= 1)
  {
    if (!v26)
    {
      goto LABEL_18;
    }

    v27 = *v20;
  }

  else if (v26 == 2)
  {
    v27 = *v20;
  }

  else if (v26 == 3)
  {
    v27 = *v20 | (v20[2] << 16);
  }

  else
  {
    v27 = *v20;
  }

  v28 = (v27 | (v25 << (8 * v23))) + 3;
  v24 = v27 + 3;
  if (v23 < 4)
  {
    v24 = v28;
  }

LABEL_18:
  if (v24 == 2)
  {
    v40 = *v20;
    v41 = *(v20 + 2);
    *(v19 + 16) = *(v20 + 1);
    *(v19 + 32) = v41;
    *v19 = v40;
    v39 = 2;
  }

  else if (v24 == 1)
  {
    v29 = ~v14;
    v30 = *v20;
    v31 = *(v20 + 1);
    *(v19 + 31) = *(v20 + 31);
    *v19 = v30;
    *(v19 + 16) = v31;
    v32 = (v19 + 42) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v20 + 42) & 0xFFFFFFFFFFFFFFF8;
    v34 = *v33;
    v35 = *(v33 + 16);
    *(v32 + 31) = *(v33 + 31);
    *v32 = v34;
    *(v32 + 16) = v35;
    v36 = v14 + 35;
    v37 = (v36 + v32) & v29;
    v38 = (v36 + v33) & v29;
    (*(v13 + 32))(v37, v38, v12);
    *(v37 + v21) = *(v38 + v21);
    v39 = 1;
  }

  else
  {
    v39 = 0;
    *v19 = *v20;
  }

  *(v19 + v23) = v39;
  return a1;
}

uint64_t assignWithTake for WrappedButtonStyleBody.ArchiveBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v11 = a2 & 0xFFFFFFFFFFFFFFF8;
  v12 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v10 + 24) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 40;
  v17 = *(v15 + 80);
  v18 = (v17 + 25 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v17;
  v19 = (v17 + 25 + v11) & ~v17;
  (*(v15 + 40))(v18, v19);
  v20 = *(v16 + 24);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 | 7) + v20;
  v25 = ((v24 + v18) & ~(v23 | 7));
  v26 = ((v24 + v19) & ~(v23 | 7));
  *v25 = *v26;
  v27 = (v23 | 7) + 1;
  v28 = (&v25[v27] & ~(v23 | 7));
  v29 = (&v26[v27] & ~(v23 | 7));
  if (v28 == v29)
  {
    return a1;
  }

  v30 = v21;
  v31 = v22;
  v32 = *(v22 + 64);
  v33 = ((v23 + 75) & ~v23) + v32;
  if ((v33 + 1) > 0x30)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = 48;
  }

  v35 = v28[v34];
  v36 = v35 - 3;
  if (v35 >= 3)
  {
    if (v34 <= 3)
    {
      v37 = v34;
    }

    else
    {
      v37 = 4;
    }

    if (v37 <= 1)
    {
      if (!v37)
      {
        goto LABEL_19;
      }

      v38 = *v28;
    }

    else if (v37 == 2)
    {
      v38 = *v28;
    }

    else if (v37 == 3)
    {
      v38 = *v28 | (v28[2] << 16);
    }

    else
    {
      v38 = *v28;
    }

    v39 = (v38 | (v36 << (8 * v34))) + 3;
    v35 = v38 + 3;
    if (v34 < 4)
    {
      v35 = v39;
    }
  }

LABEL_19:
  v40 = ~v23;
  if (v35 == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v28, *(v28 + 1), v28[16]);
  }

  else if (v35 == 1)
  {
    outlined consume of Environment<OpenURLAction>.Content(*v28, *(v28 + 1), *(v28 + 2), *(v28 + 3), *(v28 + 16), v28[34]);
    v41 = (v28 + 42) & 0xFFFFFFFFFFFFFFF8;
    outlined consume of Environment<OpenURLAction>.Content(*v41, *(v41 + 8), *(v41 + 16), *(v41 + 24), *(v41 + 32), *(v41 + 34));
    (*(v31 + 8))((v23 + v41 + 35) & v40, v30);
    goto LABEL_24;
  }

LABEL_24:
  v42 = v29[v34];
  v43 = v42 - 3;
  if (v42 >= 3)
  {
    if (v34 <= 3)
    {
      v44 = v34;
    }

    else
    {
      v44 = 4;
    }

    if (v44 > 1)
    {
      if (v44 == 2)
      {
        v45 = *v29;
      }

      else if (v44 == 3)
      {
        v45 = *v29 | (v29[2] << 16);
      }

      else
      {
        v45 = *v29;
      }

LABEL_36:
      v46 = (v45 | (v43 << (8 * v34))) + 3;
      v42 = v45 + 3;
      if (v34 < 4)
      {
        v42 = v46;
      }

      goto LABEL_38;
    }

    if (v44)
    {
      v45 = *v29;
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v42 == 2)
  {
    v56 = *v29;
    v57 = *(v29 + 2);
    *(v28 + 1) = *(v29 + 1);
    *(v28 + 2) = v57;
    *v28 = v56;
    v55 = 2;
  }

  else if (v42 == 1)
  {
    v47 = *v29;
    v48 = *(v29 + 1);
    *(v28 + 31) = *(v29 + 31);
    *v28 = v47;
    *(v28 + 1) = v48;
    v49 = (v28 + 42) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v29 + 42) & 0xFFFFFFFFFFFFFFF8;
    v51 = *v50;
    v52 = *(v50 + 16);
    *(v49 + 31) = *(v50 + 31);
    *v49 = v51;
    *(v49 + 16) = v52;
    v53 = (v23 + 35 + v49) & v40;
    v54 = (v23 + 35 + v50) & v40;
    (*(v31 + 32))(v53, v54, v30);
    *(v32 + v53) = *(v32 + v54);
    v55 = 1;
  }

  else
  {
    v55 = 0;
    *v28 = *v29;
  }

  v28[v34] = v55;
  return a1;
}

uint64_t getEnumTagSinglePayload for WrappedButtonStyleBody.ArchiveBody(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 80);
  v11 = *(v6 + 80);
  v12 = *(*(v9 - 8) + 64) - ((-76 - v10) | v10);
  if (v12 <= 0x30)
  {
    v12 = 48;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v13 = v12 - ((-2 - (v10 | 7)) | v10 | 0xFFFFFFFF00000007) + (((v10 | 7) + *(v6 + 64) + ((v11 + 25) & ~v11)) & ~(v10 | 7));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 > 0xFE)
      {
        v20 = *(v6 + 48);

        return v20(((a1 & 0xFFFFFFFFFFFFFFF8) + v11 + 25) & ~v11, v7, v5);
      }

      else
      {
        v19 = *(a1 + 8);
        if (v19 > 1)
        {
          return (v19 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void storeEnumTagSinglePayload for WrappedButtonStyleBody.ArchiveBody(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for URL() - 8);
  v12 = *(v11 + 80);
  v13 = *(v8 + 80);
  v14 = ((v12 | 7) + *(v8 + 64) + ((v13 + 25) & ~v13)) & ~(v12 | 7);
  v15 = (-2 - (v12 | 7)) | v12;
  v16 = *(v11 + 64) - ((-76 - v12) | v12);
  if (v16 <= 0x30)
  {
    v16 = 48;
  }

  v17 = v16 - (*&v15 | 0xFFFFFFFF00000007) + v14;
  if (a3 <= v10)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v10 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v10 < a2)
  {
    v19 = ~v10 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_48:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
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
  if (v9 > 0xFE)
  {
    v24 = *(v25 + 56);

    v24(((a1 & 0xFFFFFFFFFFFFFFF8) + v13 + 25) & ~v13, a2, v9, v7);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 8) = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    *(a1 + 8) = -a2;
  }
}

unint64_t instantiation function for generic protocol witness table for ArchivableButtonAppIntentModifier(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
  a1[2] = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
  result = lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
  a1[3] = result;
  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
    lazy protocol witness table accessor for type ButtonFocusInteractionModifier and conformance ButtonFocusInteractionModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ButtonFocusInteractionModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t specialized ArchivableButtonAppIntentModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableButtonAppIntentModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys, &unk_1EFFCD330, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v17;
  v24 = 0;
  lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v18;
  v11 = v19;
  v23 = v20;
  v16 = v21;
  v15 = v22;
  LOBYTE(v18) = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v23;
  *(v9 + 24) = v16;
  *(v9 + 40) = v15;
  *(v9 + 48) = v12 & 1;
  return result;
}

uint64_t objectdestroy_73Tm()
{

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in WrappedButtonStyleBody.ArchiveBody.temporalStack.getter(_BYTE *a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for WrappedButtonStyleBody.ArchiveBody() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return closure #1 in WrappedButtonStyleBody.ArchiveBody.temporalStack.getter(a1, v5, v3);
}

unint64_t lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableButtonAppIntentModifier.CodingKeys and conformance ArchivableButtonAppIntentModifier.CodingKeys);
  }

  return result;
}

uint64_t assignWithTake for ButtonSpringLoadedInteraction(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for ButtonRepeatModifier(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v5 = *(a2 + 72);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for ButtonRepeatModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for ButtonRepeatModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>>();
    lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>> and conformance ButtonBehavior<A>, type metadata accessor for ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>();
    type metadata accessor for FailedCallbacks<()>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

void type metadata accessor for ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>()
{
  if (!lazy cache variable for type metadata for ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>, lazy protocol witness table accessor for type _ViewModifier_Content<ArchivableButtonAppIntentModifier> and conformance _ViewModifier_Content<A>);
    v0 = type metadata accessor for ButtonBehavior();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ButtonBehavior<ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableButtonAppIntentModifier>, lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier, &type metadata for ArchivableButtonAppIntentModifier, MEMORY[0x1E697FDE8]);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for TemporalStateViewModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981FD8], type metadata accessor for TemporalStateViewModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableButtonAppIntentModifier>, TemporalStateViewModifier<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ArchivableButtonAppIntentModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableButtonAppIntentModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableButtonAppIntentModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableButtonAppIntentModifier>, lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier, &type metadata for ArchivableButtonAppIntentModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableButtonAppIntentModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for ButtonBehavior<StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>>()
{
  if (!lazy cache variable for type metadata for ButtonBehavior<StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>();
    lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance <> StaticIf<A, B, C>();
    v0 = type metadata accessor for ButtonBehavior();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ButtonBehavior<StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_1(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>();
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, TemporalStateViewModifier<Bool>>, ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t objectdestroy_118Tm()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in ButtonFocusInteractionModifier.physicalButtonPressGesture.getter()
{
  v1 = *(v0 + 16);
  v2 = (*(v0 + 32))(0);
  return v1(v2);
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonRepeatModifier>, lazy protocol witness table accessor for type ButtonRepeatModifier and conformance ButtonRepeatModifier, &unk_1EFFCD428, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for Environment<AppIntentExecutor?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for FailedCallbacks<()>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroy_124Tm()
{

  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t assignWithCopy for ButtonRepeatModifier.RepeatState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for ButtonRepeatModifier.RepeatState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, _AppearanceActionModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LinkButtonModifierBody>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, lazy protocol witness table accessor for type _ViewModifier_Content<ButtonRepeatModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type _ValueActionModifier2<ButtonInteractionPhase> and conformance _ValueActionModifier2<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonRepeatModifier>, lazy protocol witness table accessor for type ButtonRepeatModifier and conformance ButtonRepeatModifier, &unk_1EFFCD428, MEMORY[0x1E697FDE8]);
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ValueActionModifier2<ButtonInteractionPhase>, lazy protocol witness table accessor for type ButtonInteractionPhase and conformance ButtonInteractionPhase, &type metadata for ButtonInteractionPhase, MEMORY[0x1E697FDD0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonRepeatModifier>, _ValueActionModifier2<ButtonInteractionPhase>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ValueActionModifier2<ButtonInteractionPhase> and conformance _ValueActionModifier2<A>()
{
  result = lazy protocol witness table cache variable for type _ValueActionModifier2<ButtonInteractionPhase> and conformance _ValueActionModifier2<A>;
  if (!lazy protocol witness table cache variable for type _ValueActionModifier2<ButtonInteractionPhase> and conformance _ValueActionModifier2<A>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ValueActionModifier2<ButtonInteractionPhase>, lazy protocol witness table accessor for type ButtonInteractionPhase and conformance ButtonInteractionPhase, &type metadata for ButtonInteractionPhase, MEMORY[0x1E697FDD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ValueActionModifier2<ButtonInteractionPhase> and conformance _ValueActionModifier2<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ButtonSpringLoadedInteraction>, SpringLoadingInteractionModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonSpringLoadedInteraction>, SpringLoadingInteractionModifier>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonSpringLoadedInteraction>, lazy protocol witness table accessor for type ButtonSpringLoadedInteraction and conformance ButtonSpringLoadedInteraction, &unk_1EFFCD3A8, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ButtonSpringLoadedInteraction>, SpringLoadingInteractionModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ButtonSpringLoadedInteraction> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonSpringLoadedInteraction> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonSpringLoadedInteraction> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ButtonSpringLoadedInteraction>, lazy protocol witness table accessor for type ButtonSpringLoadedInteraction and conformance ButtonSpringLoadedInteraction, &unk_1EFFCD3A8, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ButtonSpringLoadedInteraction> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> CoalescingAdjacentDuplicates<A>()
{
  return associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> CoalescingAdjacentDuplicates<A>();
}

{
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t CoalescingAdjacentDuplicates.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v46 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = type metadata accessor for Optional();
  v7 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v32 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v43 = v5;
  v44 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v15;
  dispatch thunk of IteratorProtocol.next()();
  v38 = *(v12 + 48);
  v39 = v12 + 48;
  if (v38(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v11, v48);
    return (*(v12 + 56))(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v32 = v12;
    v33 = a2;
    v16 = *(v12 + 32);
    v34 = (v7 + 16);
    v35 = v16;
    v45 = (v7 + 8);
    v36 = v12 + 32;
    v37 = (v12 + 8);
    v17 = v47;
    v18 = v42;
    while (1)
    {
      v19 = AssociatedTypeWitness;
      v35(v17, v11, AssociatedTypeWitness);
      v20 = *(v46 + 36);
      v21 = v48;
      v22 = (*v34)(v18, v2 + v20, v48);
      MEMORY[0x1EEE9AC00](v22);
      v23 = v44;
      *(&v32 - 4) = v43;
      *(&v32 - 3) = v23;
      *(&v32 - 2) = v2;
      *(&v32 - 1) = v17;
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in CoalescingAdjacentDuplicates.Iterator.next(), (&v32 - 6), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v24, v49);
      v25 = *v45;
      (*v45)(v18, v21);
      if (v49[0] == 2 || (v49[0] & 1) != 0)
      {
        break;
      }

      v17 = v47;
      AssociatedTypeWitness = v19;
      (*v37)(v47, v19);
      dispatch thunk of IteratorProtocol.next()();
      if (v38(v11, 1, v19) == 1)
      {
        v12 = v32;
        a2 = v33;
        v25(v11, v48);
        return (*(v12 + 56))(a2, 1, 1, AssociatedTypeWitness);
      }
    }

    v25((v2 + v20), v48);
    v27 = v32;
    v28 = *(v32 + 16);
    v29 = v47;
    v28(v2 + v20, v47, v19);
    v30 = *(v27 + 56);
    v30(v2 + v20, 0, 1, v19);
    v31 = v33;
    v28(v33, v29, v19);
    v30(v31, 0, 1, v19);
    return (*(v27 + 8))(v29, v19);
  }
}

uint64_t closure #1 in CoalescingAdjacentDuplicates.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = *(a2 + *(type metadata accessor for CoalescingAdjacentDuplicates.Iterator() + 40));

  LOBYTE(a3) = v7(a3, a1);

  *a4 = (a3 & 1) == 0;
  return result;
}

uint64_t CoalescingAdjacentDuplicates.Iterator.init(baseIterator:last:comparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v11 = type metadata accessor for CoalescingAdjacentDuplicates.Iterator();
  v12 = *(v11 + 36);
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  v15 = (a5 + *(v11 + 40));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t CoalescingAdjacentDuplicates.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v18 - v15;
  (*(v9 + 16))(v12, v2, v4, v14);
  dispatch thunk of Sequence.makeIterator()();
  (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);
  CoalescingAdjacentDuplicates.Iterator.init(baseIterator:last:comparator:)(v16, v8, *(v2 + *(a1 + 36)), *(v2 + *(a1 + 36) + 8), v19);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CoalescingAdjacentDuplicates<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CoalescingAdjacentDuplicates.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t CoalescingAdjacentDuplicates<>.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, a1, AssociatedTypeWitness);

  return CoalescingAdjacentDuplicates<>.formIndex(after:)(a3, a2);
}

uint64_t CoalescingAdjacentDuplicates<>.formIndex(after:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v29 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v37 = v2;
  v38 = a1;
  v15 = dispatch thunk of Collection.subscript.read();
  v16 = *(v9 + 16);
  v35 = v14;
  v36 = v8;
  v29 = v16;
  v16(v14);
  v15(v39, 0);
  v32 = (v30 + 16);
  v17 = (v30 + 8);
  v30 = v9 + 16;
  v18 = (v9 + 8);
  while (1)
  {
    v19 = v38;
    dispatch thunk of Collection.formIndex(after:)();
    v20 = v33;
    (*v32)(v33, v19, AssociatedTypeWitness);
    v21 = v34;
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v17;
    (*v17)(v21, AssociatedTypeWitness);
    v23(v20, AssociatedTypeWitness);
    if (v22)
    {
      break;
    }

    v24 = *(v37 + *(v31 + 36));
    v25 = dispatch thunk of Collection.subscript.read();
    v26 = v36;
    v29(v11);
    (v25)(v39, 0);
    LOBYTE(v25) = v24(v35, v11);
    v27 = *v18;
    (*v18)(v11, v26);
    if ((v25 & 1) == 0)
    {
      return (v27)(v35, v36);
    }
  }

  v27 = *v18;
  return (v27)(v35, v36);
}

uint64_t CoalescingAdjacentDuplicates<>.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of Collection.subscript.read();
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v4, AssociatedTypeWitness);
  return v2(&v7, 0);
}

void (*protocol witness for Collection.subscript.read in conformance <> CoalescingAdjacentDuplicates<A>(uint64_t **a1))(void *a1)
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
  v2[4] = CoalescingAdjacentDuplicates<>.subscript.read(v2);
  return protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>;
}

void (*CoalescingAdjacentDuplicates<>.subscript.read(uint64_t *a1))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v3 = *(AssociatedTypeWitness - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  CoalescingAdjacentDuplicates<>.subscript.getter(v4);
  return CoalescingAdjacentDuplicates<>.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> CoalescingAdjacentDuplicates<A>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t CoalescingAdjacentDuplicates<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);

  return CoalescingAdjacentDuplicates<>.formIndex(before:)(a4, a2, a3);
}

uint64_t CoalescingAdjacentDuplicates<>.formIndex(before:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v44 = a2;
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v45 = a3;
  v19 = v3;
  dispatch thunk of BidirectionalCollection.formIndex(before:)();
  v20 = dispatch thunk of Collection.subscript.read();
  v21 = *(v14 + 16);
  v48 = v18;
  v49 = v13;
  v41 = v21;
  v21(v18);
  v20(v52, 0);
  v22 = v50 + 16;
  v38 = *(v50 + 16);
  v39 = a1;
  v38(v12, a1, AssociatedTypeWitness);
  v50 = v22;
  v23 = (v22 - 8);
  v43 = v14 + 16;
  v47 = (v14 + 8);
  v40 = (v22 - 8);
  while (1)
  {
    v24 = v46;
    dispatch thunk of Collection.startIndex.getter();
    swift_getAssociatedConformanceWitness();
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = v6;
    v27 = *v23;
    (*v23)(v24, AssociatedTypeWitness);
    if (v25)
    {
      break;
    }

    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v51 = *(v19 + *(v44 + 36));
    v28 = dispatch thunk of Collection.subscript.read();
    v29 = AssociatedTypeWitness;
    v30 = v42;
    v31 = v12;
    v32 = v7;
    v33 = v49;
    v41(v42);
    (v28)(v52, 0);
    v23 = v40;
    LOBYTE(v28) = v51(v48, v30);
    v34 = v30;
    AssociatedTypeWitness = v29;
    v35 = v33;
    v7 = v32;
    v12 = v31;
    (*v47)(v34, v35);
    if ((v28 & 1) == 0)
    {
      break;
    }

    v36 = v39;
    v27(v39, v29);
    v38(v36, v31, v29);
    v6 = v26;
  }

  v27(v12, AssociatedTypeWitness);
  return (*v47)(v48, v49);
}

uint64_t type metadata completion function for CoalescingAdjacentDuplicates.Iterator()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CoalescingAdjacentDuplicates.Iterator(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9;
  if (*(v8 + 84))
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = v9 | *(v5 + 80) & 0xF8;
  if (v12 > 7 || ((*(v5 + 80) | *(v8 + 80)) & 0x100000) != 0 || ((v11 + (v10 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = v7;
    v17 = ~v9;
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v18 = ((a2 + v10) & v17);
    if ((*(v8 + 48))(v18, 1, v16))
    {
      memcpy(((a1 + v10) & v17), v18, v11);
    }

    else
    {
      (*(v8 + 16))((a1 + v10) & v17, v18, v16);
      (*(v8 + 56))((a1 + v10) & v17, 0, 1, v16);
    }

    v19 = ((v18 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = v19[1];
    v21 = ((((a1 + v10) & v17) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v19;
    v21[1] = v20;
  }

  return a1;
}

uint64_t destroy for CoalescingAdjacentDuplicates.Iterator(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8) + 8;
  (*v3)(a1, AssociatedTypeWitness);
  v4 = *(v3 + 56);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(v5 - 8);
  v7 = (v4 + a1 + *(v6 + 80)) & ~*(v6 + 80);
  if (!(*(v6 + 48))(v7, 1, v5))
  {
    (*(v6 + 8))(v7, v5);
  }
}

uint64_t initializeWithCopy for CoalescingAdjacentDuplicates.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v6 + v9 + a1) & ~v9);
  v11 = ((v6 + v9 + a2) & ~v9);
  if ((*(v8 + 48))(v11, 1, v7))
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

    memcpy(v10, v11, v14);
  }

  else
  {
    (*(v8 + 16))(v10, v11, v7);
    v16 = *(v8 + 56);
    v15 = v8 + 56;
    v16(v10, 0, 1, v7);
    v12 = *(v15 + 28);
    v13 = *(v15 + 8);
  }

  if (v12)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  v18 = v10 + v17 + 7;
  v19 = ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = *v19;
  v20 = v19[1];
  v22 = (v18 & 0xFFFFFFFFFFFFFFF8);
  *v22 = v21;
  v22[1] = v20;

  return a1;
}

uint64_t assignWithCopy for CoalescingAdjacentDuplicates.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v6 + v9 + a1) & ~v9);
  v11 = ((v6 + v9 + a2) & ~v9);
  v12 = *(v8 + 48);
  LODWORD(v6) = v12(v10, 1, v7);
  v13 = v12(v11, 1, v7);
  if (v6)
  {
    if (!v13)
    {
      (*(v8 + 16))(v10, v11, v7);
      (*(v8 + 56))(v10, 0, 1, v7);
      goto LABEL_12;
    }

    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v8 + 24))(v10, v11, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, v7);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v10, v11, v16);
LABEL_12:
  if (*(v8 + 84))
  {
    v17 = *(v8 + 64);
  }

  else
  {
    v17 = *(v8 + 64) + 1;
  }

  v18 = ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;

  return a1;
}

uint64_t initializeWithTake for CoalescingAdjacentDuplicates.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v6 + v9 + a1) & ~v9);
  v11 = ((v6 + v9 + a2) & ~v9);
  if ((*(v8 + 48))(v11, 1, v7))
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

    memcpy(v10, v11, v14);
  }

  else
  {
    (*(v8 + 32))(v10, v11, v7);
    v16 = *(v8 + 56);
    v15 = v8 + 56;
    v16(v10, 0, 1, v7);
    v12 = *(v15 + 28);
    v13 = *(v15 + 8);
  }

  if (v12)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  *((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for CoalescingAdjacentDuplicates.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v6 + v9 + a1) & ~v9);
  v11 = ((v6 + v9 + a2) & ~v9);
  v12 = *(v8 + 48);
  LODWORD(v6) = v12(v10, 1, v7);
  v13 = v12(v11, 1, v7);
  if (v6)
  {
    if (!v13)
    {
      (*(v8 + 32))(v10, v11, v7);
      (*(v8 + 56))(v10, 0, 1, v7);
      goto LABEL_12;
    }

    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v8 + 40))(v10, v11, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, v7);
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v10, v11, v16);
LABEL_12:
  if (*(v8 + 84))
  {
    v17 = *(v8 + 64);
  }

  else
  {
    v17 = *(v8 + 64) + 1;
  }

  *((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for CoalescingAdjacentDuplicates.Iterator(int *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v8 + 80);
  v14 = *(*(v7 - 8) + 64);
  if (!v10)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v5 + 64) + v13;
  v16 = v14 + 7;
  if (v12 < a2)
  {
    v17 = ((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v12 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v17);
      if (v22)
      {
LABEL_27:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      }
    }
  }

  if (v6 == v12)
  {
    v25 = *(v5 + 48);

    return v25(a1, v6, AssociatedTypeWitness);
  }

  v27 = (a1 + v15) & ~v13;
  if (v11 == v12)
  {
    if (v10 >= 2)
    {
      v29 = (*(v9 + 48))(v27);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *((v16 + v27) & 0xFFFFFFFFFFFFFFF8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void storeEnumTagSinglePayload for CoalescingAdjacentDuplicates.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = v10 - 1;
  if (!v10)
  {
    v12 = 0;
  }

  v13 = *(v9 + 80);
  if (v12 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v12;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = v11 + v13;
  v16 = (v11 + v13) & ~v13;
  if (v10)
  {
    v17 = *(v9 + 64);
  }

  else
  {
    v17 = *(v9 + 64) + 1;
  }

  v18 = v17 + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v18 + v16) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = a3 - v14 + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v14 < a3)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 > v14)
  {
    if (v19)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v14;
    }

    if (v19)
    {
      v25 = ~v14 + a2;
      bzero(a1, v19);
      *a1 = v25;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        *(a1 + v19) = v24;
      }

      else
      {
        *(a1 + v19) = v24;
      }
    }

    else if (v23)
    {
      *(a1 + v19) = v24;
    }

    return;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v19) = 0;
  }

  else if (v23)
  {
    *(a1 + v19) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v8 == v14)
  {
    v26 = *(v7 + 56);

    v26(a1, a2, v8, AssociatedTypeWitness);
  }

  else
  {
    v27 = (a1 + v15) & ~v13;
    if (v12 == v14)
    {
      v28 = *(v9 + 56);

      v28(v27, (a2 + 1));
    }

    else
    {
      v29 = ((v18 + v27) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v29 = a2 & 0x7FFFFFFF;
        v29[1] = 0;
      }

      else
      {
        *v29 = (a2 - 1);
      }
    }
  }
}

void CircularGaugeStyle.init(tint:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t ComplicationCircularGaugeStyle.init(tint:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Color>();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18CD63400;
  *(v4 + 32) = a1;
  result = MEMORY[0x18D00B0A0]();
  *a2 = result;
  return result;
}

uint64_t ComplicationCircularGaugeStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = *v2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = v7;
}

uint64_t protocol witness for GaugeStyle.makeBody(configuration:) in conformance ComplicationCircularGaugeStyle@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = *v2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = v7;
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvedTextFieldStyle(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = v4;
  v6 = *(*(v4 - 8) + 80);
  v7 = *a2;
  *a1 = *a2;
  if ((v6 & 0x20000) != 0)
  {
    a1 = v7 + ((v6 + 16) & ~v6);
  }

  else
  {
    v48 = v5;
    v8 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v8;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    v9 = a2[8];

    if (v9)
    {
      v10 = a2[5];
      v11 = a2[6];
      v12 = *(a2 + 56);
      outlined copy of Text.Storage(v10, v11, v12);
      *(a1 + 40) = v10;
      *(a1 + 48) = v11;
      *(a1 + 56) = v12;
      *(a1 + 64) = v9;
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
    }

    v13 = a2[9];
    v14 = a2[10];
    v15 = a2[11];
    v16 = a2[12];
    v17 = a2[13];
    v18 = a2[14];
    v20 = a2[15];
    v19 = a2[16];
    v40 = a2[17];
    v41 = a2[18];
    v42 = a2[19];
    v43 = a2[20];
    v44 = a2[21];
    v45 = *(a2 + 44);
    __dsta = *(a2 + 180);
    outlined copy of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v20, v19, v40, v41, v42, v43, v44, v45, __dsta);
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v15;
    *(a1 + 96) = v16;
    *(a1 + 104) = v17;
    *(a1 + 112) = v18;
    *(a1 + 120) = v20;
    *(a1 + 128) = v19;
    *(a1 + 136) = v40;
    *(a1 + 144) = v41;
    *(a1 + 152) = v42;
    *(a1 + 160) = v43;
    *(a1 + 168) = v44;
    *(a1 + 176) = v45;
    *(a1 + 180) = __dsta;
    v21 = *(v48 + 56);
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    type metadata accessor for Binding<TextSelection?>(0);
    v25 = v24;
    v26 = *(v24 - 8);
    if ((*(v26 + 48))(v23, 1, v24))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
      memcpy(v22, v23, *(*(v27 - 8) + 64));
    }

    else
    {
      v28 = v23[1];
      *v22 = *v23;
      v22[1] = v28;
      v29 = *(v25 + 32);
      v49 = v22;
      __dst = v22 + v29;
      v30 = v23 + v29;
      v31 = type metadata accessor for TextSelection(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);

      v34 = v30;

      if (v33(v30, 1, v31))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v30, *(*(v35 - 8) + 64));
        v36 = v49;
      }

      else
      {
        v37 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v38 - 8) + 16))(__dst, v30, v38);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v30, *(*(v37 - 8) + 64));
        }

        v36 = v49;
        __dst[*(v31 + 20)] = v34[*(v31 + 20)];
        (*(v32 + 56))(__dst, 0, 1, v31);
      }

      (*(v26 + 56))(v36, 0, 1, v25);
    }
  }

  return a1;
}

uint64_t initializeWithTake for ResolvedTextFieldStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v6 = *(v5 + 56);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for Binding<TextSelection?>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v8[1];
    *v7 = *v8;
    v7[1] = v13;
    v14 = *(v10 + 32);
    v15 = v7 + v14;
    v16 = v8 + v14;
    v17 = type metadata accessor for TextSelection(0);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v16, 1, v17))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v15, v16, *(*(v19 - 8) + 64));
    }

    else
    {
      v20 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v21 - 8) + 32))(v15, v16, v21);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v15, v16, *(*(v20 - 8) + 64));
      }

      v15[*(v17 + 20)] = v16[*(v17 + 20)];
      (*(v18 + 56))(v15, 0, 1, v17);
    }

    (*(v11 + 56))(v7, 0, 1, v10);
  }

  return a1;
}

uint64_t assignWithTake for ResolvedTextFieldStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  if (*(a1 + 64))
  {
    v5 = *(a2 + 64);
    if (v5)
    {
      v6 = *(a2 + 56);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      *(a1 + 64) = v5;

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v10 = *(a2 + 168);
  v11 = *(a2 + 176);
  v12 = *(a2 + 180);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  v22 = *(a1 + 152);
  v23 = *(a1 + 168);
  v24 = *(a1 + 176);
  v25 = *(a1 + 180);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v10;
  *(a1 + 176) = v11;
  *(a1 + 180) = v12;
  outlined consume of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v27 = *(v26 + 56);
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  type metadata accessor for Binding<TextSelection?>(0);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v28, 1, v30);
  v35 = v33(v29, 1, v31);
  if (v34)
  {
    if (!v35)
    {
      v36 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v36;
      v37 = *(v31 + 32);
      v38 = &v28[v37];
      v39 = &v29[v37];
      v40 = type metadata accessor for TextSelection(0);
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v38, v39, *(*(v42 - 8) + 64));
      }

      else
      {
        v57 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v58 - 8) + 32))(v38, v39, v58);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v38, v39, *(*(v57 - 8) + 64));
        }

        v38[*(v40 + 20)] = v39[*(v40 + 20)];
        (*(v41 + 56))(v38, 0, 1, v40);
      }

      (*(v32 + 56))(v28, 0, 1, v31);
      return a1;
    }

    goto LABEL_12;
  }

  if (v35)
  {
    outlined destroy of TextSelection.Indices(v28, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    v44 = *(*(v43 - 8) + 64);
    v45 = v28;
    v46 = v29;
LABEL_13:
    memcpy(v45, v46, v44);
    return a1;
  }

  *v28 = *v29;

  *(v28 + 1) = *(v29 + 1);

  v47 = *(v31 + 32);
  v48 = &v28[v47];
  v49 = &v29[v47];
  v50 = type metadata accessor for TextSelection(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v48, 1, v50);
  v54 = v52(v49, 1, v50);
  if (v53)
  {
    if (!v54)
    {
      v55 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v56 - 8) + 32))(v48, v49, v56);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v48, v49, *(*(v55 - 8) + 64));
      }

      v48[*(v50 + 20)] = v49[*(v50 + 20)];
      (*(v51 + 56))(v48, 0, 1, v50);
      return a1;
    }

    goto LABEL_22;
  }

  if (v54)
  {
    outlined destroy of TextSelection.Indices(v48, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v44 = *(*(v59 - 8) + 64);
    v45 = v48;
    v46 = v49;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    outlined destroy of TextSelection.Indices(v48, type metadata accessor for TextSelection.Indices);
    v61 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v62 - 8) + 32))(v48, v49, v62);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v48, v49, *(*(v61 - 8) + 64));
    }
  }

  v48[*(v50 + 20)] = v49[*(v50 + 20)];
  return a1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedTextFieldStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7SwiftUI22ResolvedTextFieldStyleVAcA4ViewAAWlTm_0(&lazy protocol witness table cache variable for type ResolvedTextFieldStyle and conformance ResolvedTextFieldStyle, type metadata accessor for ResolvedTextFieldStyle);

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

void type metadata accessor for TextFieldStyleModifier<DefaultTextFieldStyle>()
{
  if (!lazy cache variable for type metadata for TextFieldStyleModifier<DefaultTextFieldStyle>)
  {
    lazy protocol witness table accessor for type DefaultTextFieldStyle and conformance DefaultTextFieldStyle();
    v0 = type metadata accessor for TextFieldStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TextFieldStyleModifier<DefaultTextFieldStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultTextFieldStyle and conformance DefaultTextFieldStyle()
{
  result = lazy protocol witness table cache variable for type DefaultTextFieldStyle and conformance DefaultTextFieldStyle;
  if (!lazy protocol witness table cache variable for type DefaultTextFieldStyle and conformance DefaultTextFieldStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultTextFieldStyle and conformance DefaultTextFieldStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TextFieldStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

_DWORD *protocol witness for Rule.value.getter in conformance AccessibilityGestureAttachment@<X0>(_DWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t AccessibilityGestureModifier.initialAttachment(for:)(unint64_t a1, uint64_t a2)
{
  v38 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_38:
    v26 = a2;
    v27 = __CocoaSet.count.getter();
    a2 = v26;
    v3 = v27;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v31 = a2;
      v4 = 0;
      v5 = a1 & 0xC000000000000001;
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
      v32 = v3;
      while (1)
      {
        if (v5)
        {
          v7 = MEMORY[0x18D00E9C0](v4, a1);
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_37;
          }

          v7 = *(a1 + 32 + 8 * v4);
        }

        v8 = v7;
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v10 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_cachedCombinedAttachment;
        swift_beginAccess();
        outlined init with copy of AccessibilityAttachment?(&v8[v10], __src);
        if (__src[35])
        {
          memcpy(__dst, __src, 0x128uLL);
          outlined init with copy of AccessibilityProperties(__dst, __src);
          outlined destroy of AccessibilityAttachment(__dst);
          v11 = __src[14];
          v12 = BYTE4(__src[14]);
          v13 = LOBYTE(__src[15]);
          outlined destroy of AccessibilityProperties(__src);
          if (v13)
          {
            v14 = 0;
          }

          else
          {
            v14 = v12;
          }

          if (v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v11;
          }

          if ((v15 & 4) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          outlined destroy of AccessibilityAttachment?(__src);
          v16 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
          swift_beginAccess();
          v17 = *&v8[v16];
          v18 = *(v17 + 16);
          if (v18)
          {

            v15 = 0;
            v14 = 0;
            v19 = v17 + 320 * v18 - 288;
            while (v18 <= *(v17 + 16))
            {
              outlined init with copy of AccessibilityAttachmentStorage(v19, __dst);
              outlined init with copy of AccessibilityAttachment(__dst, __src);
              outlined destroy of AccessibilityAttachmentStorage(__dst);
              outlined init with copy of AccessibilityProperties(__src, v33);
              outlined destroy of AccessibilityAttachment(__src);
              v20 = v34;
              v21 = v35;
              outlined destroy of AccessibilityProperties(v33);
              if ((v21 & 1) == 0)
              {
                v22 = v20 & ~v14;
                v23 = v14 | ~BYTE4(v20);
                v14 |= BYTE4(v20);
                v15 = v23 & v15 | v22;
              }

              v19 -= 320;
              if (!--v18)
              {

                v6 = a1 & 0xFFFFFFFFFFFFFF8;
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_34:
            v24 = v38;
            LODWORD(a2) = v31;
            if (v31)
            {
              goto LABEL_40;
            }

LABEL_35:

            v25 = 0;
LABEL_48:
            AccessibilityProperties.init()();
            __dst[5] = v25;
            __dst[6] = 0x100000;
            LOBYTE(__dst[7]) = 0;
            static AccessibilityAttachment.properties(_:)();
            return outlined destroy of AccessibilityProperties(__dst);
          }

          v14 = 0;
          v15 = 0;
LABEL_24:
          v5 = a1 & 0xC000000000000001;
          v3 = v32;
          if ((v15 & 4) != 0)
          {
            goto LABEL_27;
          }
        }

        if ((v14 & 4) != 0 || (v15 & 8) == 0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v6 = a1 & 0xFFFFFFFFFFFFFF8;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_29;
        }

LABEL_27:

LABEL_29:
        if (v4 == v3)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
  if (!a2)
  {
    goto LABEL_35;
  }

LABEL_40:
  v28 = a2;
  if (v24 < 0 || (v24 & 0x4000000000000000) != 0)
  {
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *(v24 + 16);
  }

  if (v29 > 1)
  {
    v25 = 0;
    goto LABEL_48;
  }

  if ((v28 | 2) == 3 && v29 == 1)
  {
    v25 = 0x100000;
    goto LABEL_48;
  }

  return AccessibilityAttachment.init()();
}

void AccessibilityGestureModifier.updatedAttachment(for:nodes:atIndex:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x18D00E9C0](a3, a2);
    goto LABEL_5;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = *(a2 + 8 * a3 + 32);
LABEL_5:
  v7 = v6;
  AccessibilityNode.visibility.getter(&v8);

  if ((v8 & 4) != 0 || (v8 & 8) != 0 && (v9 & 4) == 0)
  {

    AccessibilityAttachment.init()();
  }

  else
  {

    AccessibilityGestureModifier.initialAttachment(for:)(a2, a4);
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AccessibilityIgnoreGestures()
{
  lazy protocol witness table accessor for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance AccessibilityIgnoreGesturesModifier()
{
  return protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance AccessibilityIgnoreGesturesModifier();
}

{
  lazy protocol witness table accessor for type AccessibilityIgnoreGestures and conformance AccessibilityIgnoreGestures();
  return PropertyList.subscript.setter();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityIgnoreGesturesModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

unint64_t instantiation function for generic protocol witness table for AccessibilityGestureAttachment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityGestureAttachment and conformance AccessibilityGestureAttachment();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of AccessibilityAttachment?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AccessibilityAttachment?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AccessibilityAttachment?()
{
  if (!lazy cache variable for type metadata for AccessibilityAttachment?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityAttachment?);
    }
  }
}

uint64_t outlined destroy of AccessibilityAttachment?(uint64_t a1)
{
  type metadata accessor for AccessibilityAttachment?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall UIKitTabBarItem.updateAccessibility()()
{
  if (*&v0[OBJC_IVAR____TtC7SwiftUI15UIKitTabBarItem_resolvedAccessibilityLabel])
  {
    [v0 setAccessibilityAttributedLabel_];
  }

  v1 = &v0[OBJC_IVAR____TtC7SwiftUI15UIKitTabBarItem_accessibility];
  if (*&v0[OBJC_IVAR____TtC7SwiftUI15UIKitTabBarItem_accessibility + 280])
  {
    v2 = *(v1 + 1);
    if (v2)
    {
      if (v1[16] <= 1u)
      {
        v3 = *v1;

        v4 = MEMORY[0x18D00C850](v3, v2);

        [v0 setAccessibilityIdentifier_];
      }
    }
  }

  v5 = [v0 __view];
  if (v5)
  {
    v10 = v5;
    v6 = [v0 accessibilityAttributedLabel];
    if (v6)
    {
      v7 = v6;
      [v10 setAccessibilityAttributedLabel_];
    }

    v8 = [v0 accessibilityIdentifier];
    v9 = v10;
    if (v8)
    {
      [v10 setAccessibilityIdentifier_];

      v9 = v10;
    }
  }
}

uint64_t outlined destroy of PlatformItem.AccessibilityContent?(uint64_t a1)
{
  type metadata accessor for PlatformItem.AccessibilityContent?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for PlatformItem.AccessibilityContent?()
{
  if (!lazy cache variable for type metadata for PlatformItem.AccessibilityContent?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?);
    }
  }
}

uint64_t EnvironmentValues.sceneAllowsSecureDrawing.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t implicit closure #1 in static TrueAllowsSecureDrawingModifier._makeView(modifier:inputs:body:)()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_2(0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6720]);
  v0 = GraphHost.intern<A>(_:for:id:)();

  return v0;
}

uint64_t View.allowsSecureDrawing(_:)(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ViewInputFlagModifier<IsInSecureDrawingHierarchy>();
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy();
  View.input<A>(_:)();
  v12 = a1;
  v9 = lazy protocol witness table accessor for type ViewInputFlagModifier<IsInSecureDrawingHierarchy> and conformance ViewInputFlagModifier<A>();
  v11[1] = a3;
  v11[2] = v9;
  swift_getWitnessTable();
  View.preference<A>(key:value:)();
  return (*(v6 + 8))(v8, v5);
}

void type metadata accessor for ViewInputFlagModifier<IsInSecureDrawingHierarchy>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<IsInSecureDrawingHierarchy>)
  {
    lazy protocol witness table accessor for type IsInSecureDrawingHierarchy and conformance IsInSecureDrawingHierarchy();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<IsInSecureDrawingHierarchy>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsInSecureDrawingHierarchy> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInSecureDrawingHierarchy> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInSecureDrawingHierarchy> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsInSecureDrawingHierarchy>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInSecureDrawingHierarchy> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.sceneAllowsSecureDrawing : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.sceneAllowsSecureDrawing : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<AllowsSecureDrawingKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<AllowsSecureDrawingKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<AllowsSecureDrawingKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<AllowsSecureDrawingKey>, &type metadata for AllowsSecureDrawingKey, &protocol witness table for AllowsSecureDrawingKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<AllowsSecureDrawingKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance AllowsSecureDrawingKey(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (v3 == 2)
  {
    result = a2((&v6 + 1));
    v4 = BYTE1(v6);
  }

  else
  {
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      result = a2(&v6);
      v5 = v6;
    }

    v4 = v5 & 1;
  }

  *v2 = v4;
  return result;
}

double MultimodalListStyle.init(layout:iconStyle:)@<D0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (one-time initialization token for defaultGridCellMinWidth != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  result = *&static ClarityUIMetrics.defaultGridCellMinWidth;
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = result;
  return result;
}

char *MultimodalListStyle.init(layout:iconStyle:defaultGridCellMinWidth:)@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *result;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (a4)
  {
    if (one-time initialization token for defaultGridCellMinWidth != -1)
    {
      v8 = a5;
      result = swift_once();
      a5 = v8;
    }

    a3 = static ClarityUIMetrics.defaultGridCellMinWidth;
  }

  *a5 = v5;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 24) = a3;
  return result;
}

SwiftUI::MultimodalListStyle::Layout_optional __swiftcall MultimodalListStyle.Layout.init(rawValue:)(Swift::Int rawValue)
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MultimodalListStyle.Layout@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t static MultimodalListStyle._makeView<A>(value:inputs:)()
{
  v0 = one-time initialization token for multimodalListLayout;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  type metadata accessor for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for MultimodalListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static MultimodalListStyle._makeViewList<A>(value:inputs:)()
{
  if (one-time initialization token for multimodalListLayout != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  type metadata accessor for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for MultimodalListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t MultimodalListStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ListValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

double MultimodalListStyle.Body.value.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = &type metadata for MultimodalListStyle;
  v23 = *&a1;
  v24 = &protocol witness table for MultimodalListStyle;
  v25 = a2;
  v6 = type metadata accessor for _ListValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  MultimodalListStyle.Body.base.getter(&v21 - v11);
  v13 = *v12;
  v14 = *(v7 + 8);
  v14(v12, v6);
  LOBYTE(v12) = *AGGraphGetValue();
  MultimodalListStyle.Body.base.getter(v9);
  v15 = v9[3];
  v14(v9, v6);
  LOBYTE(v22) = v13;
  BYTE1(v22) = v12;
  v23 = v15;
  closure #1 in MultimodalListStyle.Body.value.getter(a1, a2, &v24);
  v16 = BYTE1(v22);
  result = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  *a3 = v22;
  *(a3 + 1) = v16;
  *(a3 + 8) = result;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + 32) = v20;
  return result;
}

uint64_t closure #1 in MultimodalListStyle.Body.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16[0] = &type metadata for MultimodalListStyle;
  v16[1] = a1;
  v16[2] = &protocol witness table for MultimodalListStyle;
  v16[3] = a2;
  v4 = type metadata accessor for _ListValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  MultimodalListStyle.Body.base.getter(v16 - v9);
  v11 = *(v5 + 8);
  v11(v10, v4);
  KeyPath = swift_getKeyPath();
  MultimodalListStyle.Body.base.getter(v7);
  v13 = *(v7 + 1);
  v14 = v7[16];
  result = (v11)(v7, v4);
  *a3 = KeyPath;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  return result;
}

uint64_t EnvironmentValues.multimodalListIconStyle.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

double protocol witness for static Rule.initialValue.getter in conformance MultimodalListStyle.Body<A>@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t Root.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 1);
  if (v4 == 2)
  {
    v7 = v2[1];
  }

  else
  {
    v7 = *v2;
  }

  outlined init with copy of _VariadicView_Children(a1, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = v7 & 1;
  v9 = v14[1];
  *(v8 + 24) = v14[0];
  *(v8 + 40) = v9;
  v10 = v14[3];
  *(v8 + 56) = v14[2];
  *(v8 + 72) = v10;
  *(v8 + 88) = v4;
  *(v8 + 89) = v5;
  *(v8 + 96) = v6;
  result = static Animation.default.getter();
  if (one-time initialization token for listTitleBottomPadding != -1)
  {
    v13 = result;
    swift_once();
    result = v13;
  }

  v12 = static ClarityUIMetrics.listTitleBottomPadding;
  *a2 = partial apply for closure #1 in Root.body(children:);
  *(a2 + 8) = v8;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = v12;
  *(a2 + 40) = 0;
  return result;
}

__n128 closure #1 in Root.body(children:)@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 184) = 258;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 2;
  *(a4 + 256) = 0;
  *(a4 + 232) = 0;
  *(a4 + 240) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 296) = 0;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  outlined init with copy of _VariadicView_Children(a3, &v19);
  if (a2)
  {
    v10 = *(a1 + 12);
    v12 = a1[1];
    v11 = a1[2];
    v34 = *a1;
    v35 = v12;
    v36 = v11;
    LODWORD(v37) = v10;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v33 = v22;
  }

  else
  {
    v13 = a1[1];
    v23 = *a1;
    v24 = v13;
    v25 = a1[2];
    LODWORD(v26) = *(a1 + 12);
    *(&v26 + 1) = a5;
    *&v27 = swift_getKeyPath();
    BYTE8(v27) = 0;
    *&v28 = swift_getKeyPath();
    BYTE8(v28) = 0;
    v29 = MEMORY[0x1E69E7CC0];
    v34 = v23;
    v35 = v24;
    v36 = v25;
    v37 = v26;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v33 = v22;
    v38 = v27;
    v39 = v28;
    v40 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v19) = a2 & 1;
  v14 = v39;
  *(a4 + 128) = v38;
  *(a4 + 144) = v14;
  *(a4 + 160) = v40;
  v15 = v35;
  *(a4 + 64) = v34;
  *(a4 + 80) = v15;
  v16 = v37;
  *(a4 + 96) = v36;
  *(a4 + 112) = v16;
  v17 = v31;
  *a4 = v30;
  *(a4 + 16) = v17;
  result = v33;
  *(a4 + 32) = v32;
  *(a4 + 48) = result;
  *(a4 + 176) = v19;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance Root(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type Root and conformance Root();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, v10);
}

uint64_t MultimodalListStyleIconContainerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>();
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>();
  type metadata accessor for ModifiedContent();
  v91 = *(a1 + 24);
  v92 = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Color?>);
  swift_getWitnessTable();
  v4 = type metadata accessor for _OverlayModifier();
  v5 = type metadata accessor for ModifiedContent();
  v64 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _ClipEffect<IconShape>, lazy protocol witness table accessor for type IconShape and conformance IconShape, &unk_1EFFCDF68, MEMORY[0x1E697DDA0]);
  v11 = type metadata accessor for ModifiedContent();
  v61 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v56 - v12;
  type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _ContentShapeModifier<IconShape>, lazy protocol witness table accessor for type IconShape and conformance IconShape, &unk_1EFFCDF68, MEMORY[0x1E697FD48]);
  v63 = v11;
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v56 - v18;
  v62 = v19;
  v67 = type metadata accessor for _ConditionalContent();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v56 - v20;
  v21 = (v2 + *(a1 + 36));
  if (*(v21 + 8) == 1 && *v21 > 1)
  {
    MultimodalListStyleIconContainerView.styledIcon.getter(a1);
    v39 = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, TintShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>);
    WitnessTable = swift_getWitnessTable();
    v89 = v39;
    v90 = WitnessTable;
    v41 = swift_getWitnessTable();
    v57 = v10;
    static ViewBuilder.buildExpression<A>(_:)(v7, v5, v41);
    v42 = *(v64 + 8);
    v42(v7, v5);
    static ViewBuilder.buildExpression<A>(_:)(v10, v5, v41);
    v43 = lazy protocol witness table accessor for type _ClipEffect<IconShape> and conformance _ClipEffect<A>();
    v87 = v41;
    v88 = v43;
    v44 = swift_getWitnessTable();
    v45 = lazy protocol witness table accessor for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>();
    v85 = v44;
    v86 = v45;
    v46 = v62;
    swift_getWitnessTable();
    v38 = v65;
    static ViewBuilder.buildEither<A, B>(second:)(v7, v46, v5);
    v42(v7, v5);
    v42(v57, v5);
  }

  else
  {
    MultimodalListStyleIconContainerView.styledIcon.getter(a1);
    v22 = *(v21 + 8);
    v75 = *v21;
    v76 = v22;
    v23 = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, TintShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>);
    v24 = swift_getWitnessTable();
    v73 = v23;
    v74 = v24;
    v25 = swift_getWitnessTable();
    lazy protocol witness table accessor for type IconShape and conformance IconShape();
    v58 = v4;
    v26 = v5;
    v27 = v14;
    v28 = v59;
    View.clipShape<A>(_:style:)();
    (*(v64 + 8))(v10, v26);
    v29 = *(v21 + 8);
    v75 = *v21;
    v76 = v29;
    v30 = lazy protocol witness table accessor for type _ClipEffect<IconShape> and conformance _ClipEffect<A>();
    v71 = v25;
    v72 = v30;
    v31 = v63;
    v32 = swift_getWitnessTable();
    View.contentShape<A>(_:eoFill:)();
    (*(v61 + 8))(v28, v31);
    v33 = lazy protocol witness table accessor for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>();
    v69 = v32;
    v70 = v33;
    v34 = v62;
    v35 = swift_getWitnessTable();
    v36 = v60;
    static ViewBuilder.buildExpression<A>(_:)(v16, v34, v35);
    v37 = *(v27 + 8);
    v37(v16, v34);
    static ViewBuilder.buildExpression<A>(_:)(v36, v34, v35);
    v38 = v65;
    static ViewBuilder.buildEither<A, B>(first:)(v16, v34);
    v37(v16, v34);
    v37(v36, v34);
  }

  v47 = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, TintShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>);
  v48 = swift_getWitnessTable();
  v83 = v47;
  v84 = v48;
  v49 = swift_getWitnessTable();
  v50 = lazy protocol witness table accessor for type _ClipEffect<IconShape> and conformance _ClipEffect<A>();
  v81 = v49;
  v82 = v50;
  v51 = swift_getWitnessTable();
  v52 = lazy protocol witness table accessor for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>();
  v79 = v51;
  v80 = v52;
  v77 = swift_getWitnessTable();
  v78 = v49;
  v53 = v67;
  v54 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v38, v53, v54);
  return (*(v66 + 8))(v38, v53);
}

uint64_t MultimodalListStyleIconContainerView.styledIcon.getter(uint64_t a1)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - v4;
  v10 = 256;
  static Color.white.getter();
  v6 = *(a1 + 24);
  View.foregroundColor(_:)();

  static Alignment.center.getter();
  type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>();
  lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, TintShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>);
  v7 = lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Color?>);
  v9[1] = v6;
  v9[2] = v7;
  swift_getWitnessTable();
  View.overlay<A>(_:alignment:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for Shape.path(in:) in conformance IconShape@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) != 1)
  {
    goto LABEL_5;
  }

  if (!*v1)
  {
    result = Circle.path(in:)();
LABEL_6:
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
    return result;
  }

  if (*v1 == 1)
  {
LABEL_5:
    result = Rectangle.path(in:)();
    goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void protocol witness for View.body.getter in conformance IconShape(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = 256;
}

void type metadata accessor for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>)
  {
    type metadata accessor for _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>();
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MultimodalListContext>, MEMORY[0x1E697FC90], MEMORY[0x1E697FC88], MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>)
  {
    type metadata accessor for ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>();
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>, &type metadata for MultimodalListStyle.IconStyle, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>>();
    lazy protocol witness table accessor for type _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>> and conformance <> _VariadicView.Tree<A, B>();
    lazy protocol witness table accessor for type StyleContextWriter<MultimodalListContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>, StyleContextWriter<MultimodalListContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>> and conformance <> _VariadicView.Tree<A, B>)
  {
    type metadata accessor for _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>>();
    lazy protocol witness table accessor for type Root and conformance Root();
    lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<Root, ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Root and conformance Root()
{
  result = lazy protocol witness table cache variable for type Root and conformance Root;
  if (!lazy protocol witness table cache variable for type Root and conformance Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Root and conformance Root);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Root and conformance Root;
  if (!lazy protocol witness table cache variable for type Root and conformance Root)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Root and conformance Root);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>, &type metadata for MultimodalListStyle.IconStyle, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<MultimodalListContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MultimodalListContext>, MEMORY[0x1E697FC90], MEMORY[0x1E697FC88], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout()
{
  result = lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout;
  if (!lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout;
  if (!lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [MultimodalListStyle.Layout] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MultimodalListStyle.Layout] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MultimodalListStyle.Layout] and conformance [A])
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>(255, &lazy cache variable for type metadata for [MultimodalListStyle.Layout], &type metadata for MultimodalListStyle.Layout, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MultimodalListStyle.Layout] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultimodalListStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[32])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MultimodalListStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata completion function for MultimodalListStyleIconContainerView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MultimodalListStyleIconContainerView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(v10 + 8);
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v10;
    *(v12 + 8) = v11;
  }

  return v3;
}

uint64_t initializeWithCopy for MultimodalListStyleIconContainerView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t assignWithCopy for MultimodalListStyleIconContainerView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t assignWithTake for MultimodalListStyleIconContainerView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t getEnumTagSinglePayload for MultimodalListStyleIconContainerView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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

void storeEnumTagSinglePayload for MultimodalListStyleIconContainerView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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

uint64_t getEnumTagSinglePayload for Root(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Root(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Root(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Root and conformance Root();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, TintShapeStyle>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Rectangle, TintShapeStyle>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<MultimodalListStyle.IconStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type IconShape and conformance IconShape()
{
  result = lazy protocol witness table cache variable for type IconShape and conformance IconShape;
  if (!lazy protocol witness table cache variable for type IconShape and conformance IconShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IconShape and conformance IconShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IconShape and conformance IconShape;
  if (!lazy protocol witness table cache variable for type IconShape and conformance IconShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IconShape and conformance IconShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IconShape and conformance IconShape;
  if (!lazy protocol witness table cache variable for type IconShape and conformance IconShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IconShape and conformance IconShape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<IconShape> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<IconShape> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<IconShape> and conformance _ClipEffect<A>)
  {
    type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _ClipEffect<IconShape>, lazy protocol witness table accessor for type IconShape and conformance IconShape, &unk_1EFFCDF68, MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<IconShape> and conformance _ClipEffect<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>)
  {
    type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _ContentShapeModifier<IconShape>, lazy protocol witness table accessor for type IconShape and conformance IconShape, &unk_1EFFCDF68, MEMORY[0x1E697FD48]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeModifier<IconShape> and conformance _ContentShapeModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<IconStyleKey>, &type metadata for IconStyleKey, &protocol witness table for IconStyleKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<IconStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>>();
    lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>>)
  {
    type metadata accessor for ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>();
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>, &type metadata for MultimodalNavigationTitleBottomPaddingKey, &protocol witness table for MultimodalNavigationTitleBottomPaddingKey, MEMORY[0x1E6980750]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>, _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>)
  {
    type metadata accessor for GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>();
    type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _AnimationModifier<MultimodalListStyle.Layout>, lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout, &type metadata for MultimodalListStyle.Layout, MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>);
    }
  }
}

void type metadata accessor for GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>()
{
  if (!lazy cache variable for type metadata for GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>)
  {
    type metadata accessor for ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>();
    lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>> and conformance ScrollView<A>, type metadata accessor for ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>);
    v0 = type metadata accessor for GeometryReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>);
    }
  }
}

void type metadata accessor for ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>()
{
  if (!lazy cache variable for type metadata for ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>)
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>, &type metadata for MultimodalListStyleGridScrollViewContent, &type metadata for MultimodalListStyleStackScrollViewContent, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for ScrollView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>, &type metadata for MultimodalListStyleGridScrollViewContent, &type metadata for MultimodalListStyleStackScrollViewContent, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type MultimodalListStyleGridScrollViewContent and conformance MultimodalListStyleGridScrollViewContent();
    lazy protocol witness table accessor for type MultimodalListStyleStackScrollViewContent and conformance MultimodalListStyleStackScrollViewContent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalListStyleGridScrollViewContent and conformance MultimodalListStyleGridScrollViewContent()
{
  result = lazy protocol witness table cache variable for type MultimodalListStyleGridScrollViewContent and conformance MultimodalListStyleGridScrollViewContent;
  if (!lazy protocol witness table cache variable for type MultimodalListStyleGridScrollViewContent and conformance MultimodalListStyleGridScrollViewContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyleGridScrollViewContent and conformance MultimodalListStyleGridScrollViewContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalListStyleStackScrollViewContent and conformance MultimodalListStyleStackScrollViewContent()
{
  result = lazy protocol witness table cache variable for type MultimodalListStyleStackScrollViewContent and conformance MultimodalListStyleStackScrollViewContent;
  if (!lazy protocol witness table cache variable for type MultimodalListStyleStackScrollViewContent and conformance MultimodalListStyleStackScrollViewContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyleStackScrollViewContent and conformance MultimodalListStyleStackScrollViewContent);
  }

  return result;
}

void type metadata accessor for _ClipEffect<IconShape>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StyleContextWriter<MultimodalListContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>>();
    lazy protocol witness table accessor for type _ShapeView<IconShape, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>> and conformance GeometryReader<A>, type metadata accessor for GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>);
    lazy protocol witness table accessor for type _AnimationModifier<MultimodalListStyle.Layout> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ScrollView<_ConditionalContent<MultimodalListStyleGridScrollViewContent, MultimodalListStyleStackScrollViewContent>>>, _AnimationModifier<MultimodalListStyle.Layout>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AnimationModifier<MultimodalListStyle.Layout> and conformance _AnimationModifier<A>()
{
  result = lazy protocol witness table cache variable for type _AnimationModifier<MultimodalListStyle.Layout> and conformance _AnimationModifier<A>;
  if (!lazy protocol witness table cache variable for type _AnimationModifier<MultimodalListStyle.Layout> and conformance _AnimationModifier<A>)
  {
    type metadata accessor for _ClipEffect<IconShape>(255, &lazy cache variable for type metadata for _AnimationModifier<MultimodalListStyle.Layout>, lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout, &type metadata for MultimodalListStyle.Layout, MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AnimationModifier<MultimodalListStyle.Layout> and conformance _AnimationModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for StyleContextWriter<MultimodalListContext>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey>, &type metadata for MultimodalNavigationTitleBottomPaddingKey, &protocol witness table for MultimodalNavigationTitleBottomPaddingKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _ShapeView<IconShape, ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<IconShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type IconShape and conformance IconShape();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<IconShape, ForegroundStyle>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for IconShape(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type IconShape and conformance IconShape();
  result = lazy protocol witness table accessor for type IconShape and conformance IconShape();
  *(a1 + 16) = result;
  return result;
}

uint64_t UIHostingConfiguration.background<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a2 + 32);
  v11[1] = *(a2 + 16);
  v12 = a3;
  v13 = v7;
  v14 = a4;
  v15 = a1;
  v8 = type metadata accessor for _UIHostingConfigurationBackgroundView();
  WitnessTable = swift_getWitnessTable();
  return UIHostingConfiguration.background<A>(content:)(partial apply for closure #1 in UIHostingConfiguration.background<A>(_:), v11, a2, v8, WitnessTable, a5);
}

uint64_t closure #1 in UIHostingConfiguration.background<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _UIHostingConfigurationBackgroundView();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v6 + 16))(v8, a1, a4, v14);
  (*(v6 + 32))(v12, v8, a4);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v16, v9, WitnessTable);
  return (v18)(v16, v9);
}

uint64_t UIHostingConfiguration.minSize(width:height:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = (*(*(a5 - 8) + 16))(a6, v6, a5);
  v14 = a6 + *(a5 + 56);
  *(v14 + 72) = a1;
  *(v14 + 80) = a2 & 1;
  *(v14 + 88) = a3;
  *(v14 + 96) = a4 & 1;
  return result;
}

uint64_t UIHostingConfiguration.animatedSizeInvalidationDisabled()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = (*(*(a1 - 8) + 16))(a2, v3, a1);
  *(a2 + *(a1 + 56) + 98) = 1;
  return result;
}

uint64_t _UIHostingConfigurationBackgroundView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[1] = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  v10 = *(a1 + 24);
  v22[2] = MEMORY[0x1E6981EF8];
  v22[3] = v5;
  v22[4] = v9;
  v22[5] = v10;
  v11 = type metadata accessor for _ShapeView();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v22 - v17;
  (*(v6 + 16))(v8, v3, v5, v16);
  _ShapeView.init(shape:style:fillStyle:)();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, WitnessTable);
  v20 = *(v12 + 8);
  v20(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v18, v11, WitnessTable);
  return (v20)(v18, v11);
}

void @objc UIHostingBackgroundView.bounds.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  UIHostingBackgroundView.bounds.setter(a2, a3, a4, a5);
}

void UIHostingBackgroundView.bounds.setter(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v19.receiver = v4;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_bounds);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_setBounds_, a1, a2, a3, a4);
  UIHostingBackgroundView.bounds.didset(v11, v13, v15, v17);
}

void UIHostingBackgroundView.bounds.didset(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_bounds);
  if (v8 != a3 || v7 != a4)
  {
    v10 = _UIHostingView.base.getter();
    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }
}

void *UIHostingBackgroundView.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = specialized UIHostingBackgroundView.__allocating_init(rootView:)(a1);
  (*(*(*(v1 + 1792) - 8) + 8))(a1);
  return v3;
}

uint64_t UIHostingContentView.listEnvironment.setter(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x720);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return UIHostingContentView.listEnvironment.didset(v3);
}

void (*UIHostingContentView.configuration.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  UIHostingContentView.configuration.getter(v3);
  return UIHostingContentView.configuration.modify;
}

void UIHostingContentView.configuration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of _Benchmark(*a1, v2 + 40);
    UIHostingContentView.configuration.setter(v2 + 40);
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    UIHostingContentView.configuration.setter(*a1);
  }

  free(v2);
}

__n128 UIHostingContentView.lastObservedSize.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x760));
  v3 = v2[1].n128_u64[0];
  v4 = v2[1].n128_u8[8];
  v5 = v2[1].n128_u8[9];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u8[8] = v4;
  a1[1].n128_u8[9] = v5;
  return result;
}

__n128 UIHostingContentView.lastObservedSize.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  v5 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x760));
  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v2;
  v5[1].n128_u8[8] = v3;
  v5[1].n128_u8[9] = v4;
  return result;
}

uint64_t UIHostingContentView.lastSizeThatFits.setter(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x768);
  *v4 = result;
  *(v4 + 1) = a2;
  v4[16] = a3 & 1;
  return result;
}

uint64_t UIHostingContentView.hostingView<A>(_:didChangePlatformItemList:)(void *a1, uint64_t a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v16[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v16[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  UIHostingContentView._configuration.getter(v16 - v9);
  v11 = UIHostingConfiguration.delegate.getter(v7);
  v13 = v12;
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 48))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

id UIHostingContentView._leadingSwipeActionsConfiguration()()
{
  _UIHostingView.viewGraph.getter();
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(0, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();

  v16[10] = v12;
  v16[11] = v13;
  v16[12] = v14;
  v16[13] = v15;
  v16[6] = v8;
  v16[7] = v9;
  v16[8] = v10;
  v16[9] = v11;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v7;
  v16[0] = v2;
  v16[1] = v3;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v17 = v2;
  v18 = v3;
  if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(&v17) == 1)
  {
    return 0;
  }

  outlined init with copy of SwipeActions.Configuration?(&v17, v1);
  outlined destroy of SwipeActions.Configuration?(v16, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
  if (!*(&v18 + 1))
  {
    return 0;
  }

  v1[4] = v21;
  v1[5] = v22;
  v1[6] = v23;
  v1[0] = v17;
  v1[1] = v18;
  v1[2] = v19;
  v1[3] = v20;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration);
  return specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(v1, 0, closure #1 in closure #1 in TabItem.swipeActionsConfiguration(for:), 0);
}

uint64_t UIHostingContentView._trailingSwipeActionsConfiguration()()
{
  _UIHostingView.viewGraph.getter();
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(0, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();

  v27[10] = v23;
  v27[11] = v24;
  v27[12] = v25;
  v27[13] = v26;
  v27[6] = v19;
  v27[7] = v20;
  v27[8] = v21;
  v27[9] = v22;
  v27[2] = v15;
  v27[3] = v16;
  v27[4] = v17;
  v27[5] = v18;
  v27[0] = v13;
  v27[1] = v14;
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v28[6] = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v28[2] = v15;
  v28[3] = v16;
  v28[4] = v17;
  v28[5] = v18;
  v28[0] = v13;
  v28[1] = v14;
  v1 = _s7SwiftUI12SwipeActionsO5ValueVSgWOg(v28);
  result = 0;
  if (v1 != 1)
  {
    outlined init with copy of SwipeActions.Configuration?(&v29, v12);
    outlined destroy of SwipeActions.Configuration?(v27, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value);
    if (*(&v30 + 1))
    {
      v7 = v32;
      v8 = v33;
      v9 = v34;
      v10 = v35;
      v4 = v29;
      v5 = v30;
      v6 = v31;
      v12[0] = v29;
      v12[1] = v30;
      v12[2] = v31;
      v12[3] = v32;
      v12[4] = v33;
      v12[5] = v34;
      v12[6] = v35;
      outlined init with copy of SwipeActions.Configuration(v12, v3);
      closure #1 in UIHostingContentView._trailingSwipeActionsConfiguration()(&v4, v0, &v11);
      outlined destroy of SwipeActions.Configuration?(&v29, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
      v3[4] = v8;
      v3[5] = v9;
      v3[6] = v10;
      v3[0] = v4;
      v3[1] = v5;
      v3[2] = v6;
      v3[3] = v7;
      outlined destroy of SwipeActions.Configuration(v3);
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id @objc UIHostingContentView._defaultListContentConfigurationProvider.getter()
{
  v0 = specialized UIHostingContentView._defaultListContentConfigurationProvider.getter();
  if (v0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed () -> (@owned UIDragPreview?);
    v5[3] = &block_descriptor_53;
    v2 = v0;
    v3 = _Block_copy(v5);
    outlined copy of AppIntentExecutor?(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id @objc UIHostingContentView._containerBackgroundViewDidChangeHandler.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = a3();
  if (v5)
  {
    v10[4] = v5;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed () -> ();
    v10[3] = a4;
    v7 = v5;
    v8 = _Block_copy(v10);
    outlined copy of AppIntentExecutor?(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id @objc UIHostingContentView._leadingSwipeActionsConfiguration()(void *a1)
{
  v1 = a1;
  v2 = UIHostingContentView._leadingSwipeActionsConfiguration()();

  return v2;
}

uint64_t closure #1 in UIHostingContentView._trailingSwipeActionsConfiguration()@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *a2;
  v8 = a1[5];
  v30 = a1[4];
  v31 = v8;
  v32 = a1[6];
  v9 = a1[1];
  v26 = *a1;
  v27 = v9;
  v10 = a1[3];
  v28 = a1[2];
  v29 = v10;
  v11 = v7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISwipeActionsConfiguration);
  v12 = a1[5];
  v25[4] = a1[4];
  v25[5] = v12;
  v25[6] = a1[6];
  v13 = a1[1];
  v25[0] = *a1;
  v25[1] = v13;
  v14 = a1[3];
  v25[2] = a1[2];
  v25[3] = v14;
  outlined init with copy of SwipeActions.Configuration(&v26, v24);
  v15 = _UIHostingView.viewGraph.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = *((v6 & v5) + 0x700);
  *(v17 + 24) = *(v11 + 1800);
  v18 = *((v6 & v5) + 0x718);
  v19 = v28;
  *(v17 + 104) = v29;
  v20 = v31;
  *(v17 + 120) = v30;
  *(v17 + 136) = v20;
  *(v17 + 152) = v32;
  v21 = v27;
  *(v17 + 56) = v26;
  *(v17 + 72) = v21;
  *(v17 + 40) = v18;
  *(v17 + 48) = v16;
  *(v17 + 88) = v19;
  outlined init with copy of SwipeActions.Configuration(&v26, v24);
  v22 = specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(v25, v15, partial apply for closure #1 in closure #1 in UIHostingContentView._trailingSwipeActionsConfiguration(), v17);

  *a3 = v22;
  return result;
}

uint64_t closure #1 in closure #1 in UIHostingContentView._trailingSwipeActionsConfiguration()(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v16[0] = *(a4 + 56);
    v8 = *(a4 + 88);
    v16[1] = *(a4 + 72);
    v16[2] = v8;
    v17 = *(a4 + 104);
    if (*(&v16[0] + 1))
    {
      v11 = 0;
      v12 = a1;
      v14 = 0;
      v15 = 0;
      v13 = a2;
      outlined init with copy of UIHostingConfigurationStorage(v16, v10, type metadata accessor for Binding<SwipeActionResultToken?>?);

      dispatch thunk of AnyLocation.set(_:transaction:)();
      outlined consume of SwipeActionResultToken?(v11, v12, v13, v14);
      return outlined destroy of UIHostingConfigurationStorage(v16, type metadata accessor for Binding<SwipeActionResultToken?>?);
    }

    Strong = 1;
  }

  return a1(Strong);
}

id @objc UIHostingContentView._trailingSwipeActionsConfiguration()(void *a1)
{
  v1 = a1;
  v2 = UIHostingContentView._trailingSwipeActionsConfiguration()();

  return v2;
}

uint64_t UIHostingContentView.__ivar_destroyer()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x728);
  v3 = type metadata accessor for UIHostingConfiguration();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&v0[*((*v1 & *v0) + 0x730)]);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&v0[*((*v1 & *v0) + 0x740)]);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&v0[*((*v1 & *v0) + 0x748)]);
  outlined destroy of UIHostingConfigurationStorage(&v0[*((*v1 & *v0) + 0x750)], type metadata accessor for WeakBox<UIButton>?);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&v0[*((*v1 & *v0) + 0x778)]);
}

id UIHostingContentView.__deallocating_deinit()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x700);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x710);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UIHostingContentView();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t @objc UIHostingContentView.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x728);
  v4 = type metadata accessor for UIHostingConfiguration();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&a1[*((*v2 & *a1) + 0x730)]);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&a1[*((*v2 & *a1) + 0x740)]);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&a1[*((*v2 & *a1) + 0x748)]);
  outlined destroy of UIHostingConfigurationStorage(&a1[*((*v2 & *a1) + 0x750)], type metadata accessor for WeakBox<UIButton>?);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&a1[*((*v2 & *a1) + 0x778)]);
}

void (*protocol witness for UIContentView.configuration.modify in conformance UIHostingContentView<A, B>(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = UIHostingContentView.configuration.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsInHostingConfiguration()
{
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t assignWithTake for UIHostingConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(v8 + 24);
  v14 = type metadata accessor for UICellConfigurationState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (v16 | 7) + v13;
  v18 = (v17 + v11) & ~(v16 | 7);
  v19 = (v17 + v12) & ~(v16 | 7);
  *v18 = *v19;
  LOBYTE(v17) = *(v19 + 0x10);
  *(v18 + 8) = *(v19 + 8);
  *(v18 + 16) = v17;
  LOBYTE(v17) = *(v19 + 32);
  *(v18 + 24) = *(v19 + 24);
  *(v18 + 32) = v17;
  LOBYTE(v17) = *(v19 + 48);
  *(v18 + 40) = *(v19 + 40);
  *(v18 + 48) = v17;
  LOBYTE(v17) = *(v19 + 64);
  *(v18 + 56) = *(v19 + 56);
  *(v18 + 64) = v17;
  LOBYTE(v17) = *(v19 + 80);
  *(v18 + 72) = *(v19 + 72);
  *(v18 + 80) = v17;
  LOBYTE(v17) = *(v19 + 96);
  *(v18 + 88) = *(v19 + 88);
  *(v18 + 96) = v17;
  *(v18 + 97) = *(v19 + 97);
  *(v18 + 98) = *(v19 + 98);
  v20 = ((v16 + 99 + v18) & ~v16);
  v21 = ((v16 + 99 + v19) & ~v16);
  v22 = *(v15 + 48);
  LODWORD(v13) = v22(v20, 1, v14);
  v23 = v22(v21, 1, v14);
  if (v13)
  {
    if (!v23)
    {
      (*(v15 + 32))(v20, v21, v14);
      (*(v15 + 56))(v20, 0, 1, v14);
      goto LABEL_12;
    }

    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
  }

  else
  {
    if (!v23)
    {
      (*(v15 + 40))(v20, v21, v14);
      goto LABEL_12;
    }

    (*(v15 + 8))(v20, v14);
    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  memcpy(v20, v21, v26);
LABEL_12:
  if (*(v15 + 84))
  {
    v27 = *(v15 + 64);
  }

  else
  {
    v27 = *(v15 + 64) + 1;
  }

  v28 = &v20[v27];
  v29 = &v21[v27];
  *v28 = *v29;
  v30 = v28 & 0xFFFFFFFFFFFFFFF8;
  v31 = v29 & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectWeakTakeAssign();
  *(v30 + 16) = *(v31 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIHostingConfiguration(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v41 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v41 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UICellConfigurationState() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  if (!v13)
  {
    ++v19;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + v16;
  v21 = v18 | 7;
  v22 = v18 + 99;
  if (v15 >= a2)
  {
    goto LABEL_37;
  }

  v23 = ((v21 + v17 + (v20 & ~v16)) & ~v21) + (((v22 & ~v18) + v19) & 0xFFFFFFFFFFFFFFF8) + 24;
  v24 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v15 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= 1)
  {
    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = *(a1 + v23);
    if (!v28)
    {
      goto LABEL_37;
    }

LABEL_34:
    v30 = v28 - 1;
    if (v24)
    {
      v30 = 0;
      v31 = *a1;
    }

    else
    {
      v31 = 0;
    }

    return v15 + (v31 | v30) + 1;
  }

  if (v27 == 2)
  {
    v28 = *(a1 + v23);
    if (v28)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v28 = *(a1 + v23);
    if (v28)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  if (v7 == v15)
  {
    v32 = *(v6 + 48);
    v33 = a1;
    v34 = v7;
    v35 = v5;

    return v32(v33, v34, v35);
  }

  v33 = ((a1 + v20) & ~v16);
  if (v9 == v15)
  {
    v32 = *(v8 + 48);
    v34 = v9;
    v35 = v41;

    return v32(v33, v34, v35);
  }

  v36 = (v22 + ((v33 + v17 + v21) & ~v21)) & ~v18;
  if (v14 < 0x7FFFFFFF)
  {
    v38 = (v36 + v19) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v38 + 16);
    v40 = *(v38 + 8) & 0x7FFFFFFF;
    if ((v39 & 0xF000000000000007) != 0)
    {
      return (v40 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v37 = (*(v12 + 48))(v36);
    if (v37 >= 2)
    {
      return v37 - 1;
    }

    else
    {
      return 0;
    }
  }
}

_OWORD *initializeBufferWithCopyOfBuffer for HostingContentViewRootModifier(_OWORD *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v7;
    v8 = a2[5];
    *(v4 + 4) = a2[4];
    *(v4 + 5) = v8;
    *(v4 + 6) = a2[6];
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 8) = a2[8];
    v10 = a2 + 9;
    v9 = a2[9];

    if (v9 == 1)
    {
      *(v4 + 9) = *v10;
      *(v4 + 80) = *(a2 + 80);
    }

    else
    {
      *(v4 + 9) = v9;
      *(v4 + 80) = *(a2 + 80);
    }

    *(v4 + 88) = *(a2 + 11);
    *(v4 + 104) = *(a2 + 13);
    *(v4 + 120) = *(a2 + 15);
    *(v4 + 129) = *(a2 + 129);
    *(v4 + 152) = *(a2 + 19);
    *(v4 + 161) = *(a2 + 161);
    *(v4 + 23) = a2[23];
    v12 = *(a3 + 32);
    v13 = type metadata accessor for UICellConfigurationState();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      type metadata accessor for UICellConfigurationState?(0);
      memcpy(v4 + v12, a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(v4 + v12, a2 + v12, v13);
      (*(v14 + 56))(v4 + v12, 0, 1, v13);
    }
  }

  return v4;
}

uint64_t initializeWithTake for HostingContentViewRootModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 184) = *(a2 + 184);
  v7 = *(a3 + 32);
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

char *initializeBufferWithCopyOfBuffer for UIHostingConfigurationStorage(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 49) = *(a2 + 49);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 81) = *(a2 + 81);
    *(a1 + 97) = *(a2 + 97);
    v7 = a3[9];
    v8 = type metadata accessor for UICellConfigurationState();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2 + v7, 1, v8))
    {
      type metadata accessor for UICellConfigurationState?(0);
      memcpy(&v4[v7], a2 + v7, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], a2 + v7, v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }

    v12 = a3[11];
    v4[a3[10]] = *(a2 + a3[10]);
    *(swift_unknownObjectWeakCopyInit() + 8) = *(a2 + v12 + 8);
  }

  return v4;
}

uint64_t assignWithCopy for UIHostingConfigurationStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v7;
  v8 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v8;
  v9 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v9;
  v10 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v10;
  v11 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v11;
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  v12 = a3[9];
  v13 = type metadata accessor for UICellConfigurationState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(a1 + v12, 1, v13);
  v17 = v15(a2 + v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 24))(a1 + v12, a2 + v12, v13);
      goto LABEL_7;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v17)
  {
LABEL_6:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v12), (a2 + v12), *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v14 + 16))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
LABEL_7:
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v19 = a2 + a3[11];
  *(swift_unknownObjectWeakCopyAssign() + 8) = *(v19 + 8);
  return a1;
}

uint64_t initializeWithTake for UIHostingConfigurationStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 97) = *(a2 + 97);
  v6 = a3[9];
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(swift_unknownObjectWeakTakeInit() + 8) = *(a2 + v10 + 8);
  return a1;
}

void specialized UIHostingContentView.init(rootView:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x720)) = 1;
  v2 = (v0 + *((*v1 & *v0) + 0x730));
  *v2 = 0;
  v2[1] = 0;
  *(v0 + *((*v1 & *v0) + 0x738)) = 0;
  v3 = (v0 + *((*v1 & *v0) + 0x740));
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + *((*v1 & *v0) + 0x748));
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + *((*v1 & *v0) + 0x750);
  *v5 = 0;
  v5[8] = 1;
  *(v0 + *((*v1 & *v0) + 0x758)) = -1;
  v6 = v0 + *((*v1 & *v0) + 0x760);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  *(v6 + 12) = 256;
  v7 = v0 + *((*v1 & *v0) + 0x768);
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *(v0 + *((*v1 & *v0) + 0x770)) = 0;
  v8 = (v0 + *((*v1 & *v0) + 0x778));
  *v8 = 0;
  v8[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of SwipeActions.Configuration?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(0, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SwipeActions.Configuration?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Binding<SwipeActionResultToken?>()
{
  if (!lazy cache variable for type metadata for Binding<SwipeActionResultToken?>)
  {
    _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_2(255, &lazy cache variable for type metadata for SwipeActionResultToken?, &type metadata for SwipeActionResultToken, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<SwipeActionResultToken?>);
    }
  }
}

void outlined consume of SwipeActionResultToken?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a2);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a4);
  }
}

uint64_t partial apply for closure #1 in UIHostingContentView.listEnvironment.didset()
{
  _UIHostingView.viewGraph.getter();
  GraphHost.uninstantiate(immediately:)(0);
}

void specialized UIHostingContentView.init(coder:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x720)) = 1;
  v2 = (v0 + *((*v1 & *v0) + 0x730));
  *v2 = 0;
  v2[1] = 0;
  *(v0 + *((*v1 & *v0) + 0x738)) = 0;
  v3 = (v0 + *((*v1 & *v0) + 0x740));
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + *((*v1 & *v0) + 0x748));
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + *((*v1 & *v0) + 0x750);
  *v5 = 0;
  v5[8] = 1;
  *(v0 + *((*v1 & *v0) + 0x758)) = -1;
  v6 = v0 + *((*v1 & *v0) + 0x760);
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  *(v6 + 12) = 256;
  v7 = v0 + *((*v1 & *v0) + 0x768);
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *(v0 + *((*v1 & *v0) + 0x770)) = 0;
  v8 = (v0 + *((*v1 & *v0) + 0x778));
  *v8 = 0;
  v8[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ViewInputFlagModifier<IsInHostingConfiguration> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(255);
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsInHostingConfiguration>, lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration, &type metadata for IsInHostingConfiguration, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier>, ViewInputFlagModifier<IsInHostingConfiguration>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<HostingContentViewRootModifier>, _PaddingLayout>, ContentConfigurationBasedRootEnvironment>, _FlexFrameLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t *assignWithTake for PickerContentView(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  a1[2] = a2[2];

  __swift_destroy_boxed_opaque_existential_1((a1 + 3));
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 5) = *(a2 + 5);
  v8 = a2[8];
  v9 = a1[8];
  a1[7] = a2[7];
  a1[8] = v8;

  a1[9] = a2[9];

  a1[10] = a2[10];
  return a1;
}

uint64_t getEnumTagSinglePayload for PickerContentView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for PickerContentView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

void *initializeBufferWithCopyOfBuffer for PickerItemView(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-10 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v10 = a2 + v6 + 9;
    v11 = *(v5 + 16);

    v11((v3 + v6 + 9) & ~v6, v10 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t initializeWithTake for PickerItemView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for PickerItemView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 40))((*(v6 + 80) + 9 + a1) & ~*(v6 + 80), (*(v6 + 80) + 9 + a2) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for PickerItemView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void storeEnumTagSinglePayload for PickerItemView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 9] & ~v9;

    v20(v21);
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

    *a1 = v19;
  }
}

void specialized closure #1 in ClarityUIListLayoutSettingsDiffAction.SettingsDiffInspector.observeListLayout(handler:)(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 1;
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned BSSettingDiffTypes, @unowned UnsafeMutableRawPointer?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

id ClarityUIListLayoutSettingsDiffAction.diffInspector.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI37ClarityUIListLayoutSettingsDiffAction____lazy_storage___diffInspector;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI37ClarityUIListLayoutSettingsDiffAction____lazy_storage___diffInspector);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI37ClarityUIListLayoutSettingsDiffAction____lazy_storage___diffInspector);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ClarityUIListLayoutSettingsDiffAction.SettingsDiffInspector()) init];
    v9[4] = specialized closure #1 in ClarityUIListLayoutSettingsDiffAction.SettingsDiffInspector.observeListLayout(handler:);
    v9[5] = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@unowned BSSettingDiffTypes, @unowned UnsafeMutableRawPointer?) -> ();
    v9[3] = &block_descriptor_41;
    v5 = _Block_copy(v9);

    [v4 observeOtherSetting:312002 withBlock:v5];
    _Block_release(v5);
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id ClarityUIListLayoutSettingsDiffAction.SettingsDiffInspector.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized ClarityUIListLayoutSettingsDiffAction._performActions(for:withUpdatedFBSScene:settingsDiff:from:transitionContext:lifecycleActionType:)(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  if (a1)
  {
    v1 = a1;
    v2 = ClarityUIListLayoutSettingsDiffAction.diffInspector.getter();
    [v2 inspectDiff:v1 withContext:&v4];

    if (v4 == 1)
    {
      v3 = [objc_opt_self() defaultCenter];
      if (one-time initialization token for didUpdateListLayout != -1)
      {
        swift_once();
      }

      [v3 postNotificationName:static ClarityUI.didUpdateListLayout object:0];
    }
  }
}

__n128 MultimodalListStyleGridScrollViewContent.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  _s7SwiftUI4FontVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridItem>, &type metadata for GridItem, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18CD63400;
  v5 = *(v1 + 120);
  v6 = v5 * MultimodalListStyleGridScrollViewContent.dynamicTypeScaleFactor.getter();
  v7 = specialized Environment.wrappedValue.getter(*(v1 + 144), *(v1 + 152));
  if (v7 == 1.0)
  {
    v8 = round(v6);
  }

  else
  {
    v8 = v7 * round(v6 / v7);
  }

  if (one-time initialization token for gridCellSpacing != -1)
  {
    swift_once();
  }

  v9 = static ClarityUIMetrics.gridCellSpacing;
  v10 = static Alignment.top.getter();
  LOBYTE(v42) = 0;
  *(v4 + 32) = v8;
  *(v4 + 40) = 0x7FF0000000000000;
  *(v4 + 48) = 2;
  *(v4 + 56) = v9;
  *(v4 + 64) = 0;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  *(v4 + 88) = 0;
  v12 = static HorizontalAlignment.center.getter();
  outlined init with copy of _VariadicView_Children(v2, &v40);
  *v39 = v4;
  *&v39[8] = v12;
  *&v39[16] = v9;
  v39[24] = 0;
  *&v39[28] = 0;
  type metadata accessor for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>();
  lazy protocol witness table accessor for type _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>> and conformance <> _VariadicView.Tree<A, B>();
  View.resettableLazyLayoutRoot()();
  outlined destroy of _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>(v39);
  lazy protocol witness table accessor for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace();
  AnyHashable.init<A>(_:)();
  v49[24] = 0;
  v38 = static Edge.Set.horizontal.getter();
  v13 = *(v2 + 80);
  *v39 = *(v2 + 64);
  *&v39[16] = v13;
  v40 = *(v2 + 96);
  v41 = *(v2 + 112);
  if (!MultimodalListStyleGridScrollViewContent.isLandscape(geom:)())
  {
    if (one-time initialization token for gridHorizontalPaddingPortrait == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (one-time initialization token for gridHorizontalPaddingLandscape != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_10:
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v57 = v48;
  *v58 = *v49;
  *&v58[9] = *&v49[9];
  v53 = v44;
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v51 = v42;
  v52 = v43;
  v50 = 0;
  v22 = *(v2 + 80);
  *v39 = *(v2 + 64);
  *&v39[16] = v22;
  v40 = *(v2 + 96);
  v41 = *(v2 + 112);
  if (MultimodalListStyleGridScrollViewContent.isLandscape(geom:)())
  {
    if (one-time initialization token for gridHorizontalPaddingLandscape != -1)
    {
      swift_once();
    }

    v23 = &static ClarityUIMetrics.gridHorizontalPaddingLandscape;
  }

  else
  {
    if (one-time initialization token for gridHorizontalPaddingPortrait != -1)
    {
      swift_once();
    }

    v23 = &static ClarityUIMetrics.gridHorizontalPaddingPortrait;
  }

  v24 = *v23;
  v25 = v50;
  v59 = 0;
  v26 = *(v2 + 160);
  v27 = *(v2 + 168);
  type metadata accessor for _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>(0, &lazy cache variable for type metadata for State<[MultimodalBadgeInfo]>, MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v28 = *v39;
  v37 = *&v39[8];
  v29 = v59;
  KeyPath = swift_getKeyPath();
  *v39 = v26;
  *&v39[8] = v27;
  State.wrappedValue.getter();
  v31 = swift_getKeyPath();
  v32 = *v58;
  *(a1 + 96) = v57;
  *(a1 + 112) = v32;
  *(a1 + 128) = *&v58[16];
  v33 = v54;
  *(a1 + 32) = v53;
  *(a1 + 48) = v33;
  v34 = v56;
  *(a1 + 64) = v55;
  *(a1 + 80) = v34;
  v35 = v52;
  *a1 = v51;
  *(a1 + 16) = v35;
  *(a1 + 144) = v38;
  *(a1 + 152) = v15;
  *(a1 + 160) = v17;
  *(a1 + 168) = v19;
  *(a1 + 176) = v21;
  *(a1 + 184) = v25;
  *(a1 + 192) = v24;
  *(a1 + 200) = v29;
  *(a1 + 208) = v28;
  result = v37;
  *(a1 + 216) = v37;
  *(a1 + 232) = KeyPath;
  *(a1 + 240) = v26;
  *(a1 + 248) = v31;
  *(a1 + 256) = v5;
  return result;
}

uint64_t EnvironmentValues.multimodalListGridBadgeInfos.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.multimodalListGridBadgeInfos : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.multimodalListGridBadgeInfos : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double EnvironmentValues.multimodalListDefaultGridCellMinWidth.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

double MultimodalListStyleGridScrollViewContent.dynamicTypeScaleFactor.getter()
{
  v6 = 6;
  specialized Environment.wrappedValue.getter(*(v0 + 128), *(v0 + 136), &v5);
  v1 = MEMORY[0x18D0099E0](&v6, &v5);
  v4 = 6;
  v3 = 7;
  return v1 / MEMORY[0x18D0099E0](&v4, &v3);
}

BOOL MultimodalListStyleGridScrollViewContent.isLandscape(geom:)()
{
  GeometryProxy.size.getter();
  v1 = v0;
  GeometryProxy.safeAreaInsets.getter();
  v3 = v1 + v2;
  GeometryProxy.safeAreaInsets.getter();
  v5 = v3 + v4;
  GeometryProxy.size.getter();
  v7 = v6;
  GeometryProxy.safeAreaInsets.getter();
  v9 = v7 + v8;
  GeometryProxy.safeAreaInsets.getter();
  return v9 + v10 < v5;
}

uint64_t MultimodalListGridLabelStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  result = swift_getKeyPath();
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

double MultimodalListGridLabelStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v21 = *v1;
  v22[0] = v3;
  *(v22 + 9) = *(v1 + 25);
  v4 = static HorizontalAlignment.center.getter();
  v20 = 0;
  closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)(&v21, &v11);
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v31[0] = v11;
  v31[1] = v12;
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v31[5] = v16;
  v31[6] = v17;
  v32 = v18;
  outlined init with copy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(&v23, &v10, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>, type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer));
  outlined destroy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(v31, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>, type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer));
  *&v19[71] = v27;
  *&v19[87] = v28;
  *&v19[103] = v29;
  *&v19[7] = v23;
  *&v19[23] = v24;
  *&v19[39] = v25;
  *&v19[55] = v26;
  v5 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v5;
  *(a1 + 113) = *&v19[96];
  v6 = *&v19[16];
  *(a1 + 17) = *v19;
  *(a1 + 33) = v6;
  result = *&v19[32];
  v8 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  v19[119] = v30;
  v9 = v20;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 129) = *&v19[112];
  *(a1 + 65) = v8;
  return result;
}

uint64_t closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  if (one-time initialization token for gridIconToTextSpacing != -1)
  {
    swift_once();
  }

  v5 = static ClarityUIMetrics.gridIconToTextSpacing;
  LOBYTE(v24) = 0;
  closure #1 in closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)(a1, &v26);
  v20 = v28;
  v21[0] = *v29;
  *(v21 + 9) = *&v29[9];
  v18 = v26;
  v19 = v27;
  v22[2] = v28;
  v23[0] = *v29;
  *(v23 + 9) = *&v29[9];
  v22[0] = v26;
  v22[1] = v27;
  outlined init with copy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(&v18, v32, &lazy cache variable for type metadata for TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>));
  outlined destroy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(v22, &lazy cache variable for type metadata for TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>));
  *&v17[7] = v18;
  *&v17[64] = *(v21 + 9);
  *&v17[55] = v21[0];
  *&v17[39] = v20;
  *&v17[23] = v19;
  v6 = v24;
  *&v24 = v4;
  *(&v24 + 1) = v5;
  v25[0] = v6;
  v7 = *&v17[16];
  *&v25[1] = *v17;
  *&v25[65] = *&v17[64];
  v9 = *&v17[48];
  v8 = *&v17[64];
  *&v25[49] = *&v17[48];
  v10 = *&v17[32];
  *&v25[33] = *&v17[32];
  v11 = *v17;
  *&v25[17] = *&v17[16];
  v26 = v24;
  v27 = *v25;
  *&v29[16] = *&v25[48];
  v30 = *&v25[64];
  v28 = *&v25[16];
  *v29 = *&v25[32];
  v12 = *v25;
  *a2 = v24;
  *(a2 + 16) = v12;
  v13 = v30;
  *(a2 + 64) = *&v29[16];
  *(a2 + 80) = v13;
  v14 = *v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v14;
  v34 = v11;
  LOBYTE(v31) = v25[80];
  v16[104] = 0;
  *(a2 + 96) = v31;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v32[0] = v4;
  v32[1] = v5;
  v33 = v6;
  v38 = v8;
  v37 = v9;
  v36 = v10;
  v35 = v7;
  outlined init with copy of VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(&v24, v16);
  return outlined destroy of VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(v32);
}

void type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)()
{
  if (!lazy cache variable for type metadata for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer))
  {
    type metadata accessor for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(255, &lazy cache variable for type metadata for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, &lazy cache variable for type metadata for TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>), &lazy protocol witness table cache variable for type TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer));
    }
  }
}

void type metadata accessor for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for TupleView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)()
{
  if (!lazy cache variable for type metadata for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>))
  {
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>();
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>));
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>)
  {
    type metadata accessor for _LayoutRoot<GridIconLayout>();
    type metadata accessor for GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _LayoutRoot<GridIconLayout> and conformance _LayoutRoot<A>, type metadata accessor for _LayoutRoot<GridIconLayout>);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>);
    }
  }
}

void type metadata accessor for _LayoutRoot<GridIconLayout>()
{
  if (!lazy cache variable for type metadata for _LayoutRoot<GridIconLayout>)
  {
    lazy protocol witness table accessor for type GridIconLayout and conformance GridIconLayout();
    v0 = type metadata accessor for _LayoutRoot();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _LayoutRoot<GridIconLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GridIconLayout and conformance GridIconLayout()
{
  result = lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout;
  if (!lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout;
  if (!lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridIconLayout and conformance GridIconLayout);
  }

  return result;
}

void type metadata accessor for GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>()
{
  if (!lazy cache variable for type metadata for GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>)
  {
    type metadata accessor for MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>> and conformance MultimodalListStyleIconContainerView<A>, type metadata accessor for MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>);
    v0 = type metadata accessor for GeometryReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>);
    }
  }
}

void type metadata accessor for MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>()
{
  if (!lazy cache variable for type metadata for MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>);
    lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for MultimodalListStyleIconContainerView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Font?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>);
    _s7SwiftUI4FontVSgMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Font?>();
    v3 = type metadata accessor for ModifiedContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t closure #1 in closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Environment.wrappedValue.getter(*a1, *(a1 + 8) | (*(a1 + 9) << 8), &v14);
  v4 = v14;
  v5 = v15;
  v6 = specialized Environment.wrappedValue.getter(*(a1 + 16), *(a1 + 24));
  v7 = specialized Environment.wrappedValue.getter(*(a1 + 32), *(a1 + 40));
  v8 = swift_allocObject();
  v9 = *(a1 + 16);
  v8[1] = *a1;
  v8[2] = v9;
  *(v8 + 41) = *(a1 + 25);
  outlined init with copy of MultimodalListGridLabelStyle(a1, &v14);
  if (one-time initialization token for clarityUIGridCellTitle != -1)
  {
    swift_once();
  }

  v10 = static Font.clarityUIGridCellTitle;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  LOBYTE(v14) = v5;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:);
  *(a2 + 40) = v8;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v10;
  *(a2 + 64) = v12;
  *(a2 + 72) = 1;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MultimodalListGridLabelStyle.gridIconFont(geom:)(a1);
  KeyPath = swift_getKeyPath();
  result = specialized Environment.wrappedValue.getter(*a2, *(a2 + 8) | (*(a2 + 9) << 8), &v10);
  v8 = v10;
  v9 = v11;
  *a3 = KeyPath;
  *(a3 + 8) = v5;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  return result;
}

uint64_t MultimodalListGridLabelStyle.gridIconFont(geom:)(__int128 *a1)
{
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8) | (*(v1 + 9) << 8), &v7);
  if (BYTE8(v7) != 1 || v7 == 1)
  {
    v4 = a1[1];
    v7 = *a1;
    v8 = v4;
    v9 = a1[2];
    v10 = *(a1 + 12);
    GeometryProxy.size.getter();
    if (one-time initialization token for buttonHorizontalPadding != -1)
    {
      swift_once();
    }
  }

  else
  {
    v5 = a1[1];
    v7 = *a1;
    v8 = v5;
    v9 = a1[2];
    v10 = *(a1 + 12);
    GeometryProxy.size.getter();
  }

  LOBYTE(v7) = 0;
  return static Font.system(size:weight:design:)();
}

double protocol witness for LabelStyle.makeBody(configuration:) in conformance MultimodalListGridLabelStyle@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v21 = *v1;
  v22[0] = v3;
  *(v22 + 9) = *(v1 + 25);
  v4 = static HorizontalAlignment.center.getter();
  v20 = 0;
  closure #1 in MultimodalListGridLabelStyle.makeBody(configuration:)(&v21, &v11);
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v31[0] = v11;
  v31[1] = v12;
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v31[5] = v16;
  v31[6] = v17;
  v32 = v18;
  outlined init with copy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(&v23, &v10, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>, type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer));
  outlined destroy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(v31, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>, type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer));
  *&v19[71] = v27;
  *&v19[87] = v28;
  *&v19[103] = v29;
  *&v19[7] = v23;
  *&v19[23] = v24;
  *&v19[39] = v25;
  *&v19[55] = v26;
  v5 = *&v19[80];
  *(a1 + 81) = *&v19[64];
  *(a1 + 97) = v5;
  *(a1 + 113) = *&v19[96];
  v6 = *&v19[16];
  *(a1 + 17) = *v19;
  *(a1 + 33) = v6;
  result = *&v19[32];
  v8 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  v19[119] = v30;
  v9 = v20;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 129) = *&v19[112];
  *(a1 + 65) = v8;
  return result;
}

uint64_t destroy for MultimodalListGridLabelStyle(uint64_t a1)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for MultimodalListGridLabelStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  v9 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v9, v2);
  *(a1 + 32) = v9;
  *(a1 + 40) = v2;
  return a1;
}

uint64_t assignWithCopy for MultimodalListGridLabelStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  v7 = *a1;
  v8 = *(a1 + 9);
  *a1 = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v7, v9, v8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v14 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v14, v2);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  *(a1 + 32) = v14;
  *(a1 + 40) = v2;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  return a1;
}

uint64_t assignWithTake for MultimodalListGridLabelStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v6 = *a1;
  v7 = *(a1 + 9);
  *a1 = *a2;
  v8 = *(a1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v6, v8, v7);
  v9 = *(a2 + 24);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 40);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for MultimodalListGridLabelStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
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

uint64_t storeEnumTagSinglePayload for MultimodalListGridLabelStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>> and conformance VStack<A>)
  {
    type metadata accessor for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(255, &lazy cache variable for type metadata for VStack<TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>>, &lazy cache variable for type metadata for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>, type metadata accessor for (VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer), &lazy protocol witness table cache variable for type TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)> and conformance TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>> and conformance VStack<A>);
  }

  return result;
}

void type metadata accessor for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    type metadata accessor for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(255, a3, a4);
    lazy protocol witness table accessor for type TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>(a5, a3, a4);
    v9 = type metadata accessor for VStack();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GridIconLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GridIconLayout and conformance GridIconLayout();
  *(a1 + 8) = result;
  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance DefaultGridCellMinWidthEnvironmentKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static DefaultGridCellMinWidthEnvironmentKey.defaultValue;
  *a1 = static DefaultGridCellMinWidthEnvironmentKey.defaultValue;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance GridBadgeInfoEnvironmentKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static GridBadgeInfoEnvironmentKey.defaultValue;
}

uint64_t specialized implicit closure #1 in _GraphInputs.multimodalListGridBadgeInfos.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

__n128 static OnBadgeInfoChange._makeView(modifier:inputs:body:)@<Q0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a2[3];
  v7 = a2[1];
  v38 = a2[2];
  v39 = v6;
  v8 = a2[3];
  v40 = a2[4];
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  v10 = a2[4];
  v33 = v8;
  v34 = v10;
  v30 = v36;
  v11 = *a1;
  v41 = *(a2 + 20);
  v35 = *(a2 + 20);
  v31 = v7;
  v32 = v38;
  outlined init with copy of _ViewInputs(&v36, v44);
  PreferenceKeys.add(_:)();
  v42[2] = v32;
  v42[3] = v33;
  v42[4] = v34;
  v43 = v35;
  v42[0] = v30;
  v42[1] = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v12 = outlined init with copy of _ViewInputs(v42, v44);
  a3(&v22, v12, &v24);
  v44[2] = v26;
  v44[3] = v27;
  v44[4] = v28;
  v45 = v29;
  v44[0] = v24;
  v44[1] = v25;
  outlined destroy of _ViewInputs(v44);
  v13 = v22;
  v14.n128_u64[0] = v23;
  *&v24 = v22;
  v21 = v14;
  DWORD2(v24) = v23;
  v15 = PreferencesOutputs.subscript.getter();
  if ((v15 & 0x100000000) == 0)
  {
    v16 = v15;
    v17 = DWORD2(v37);
    type metadata accessor for GraphHost();
    v18 = MEMORY[0x18D00B7D0]();
    swift_beginAccess();
    v19 = *(v18 + 64);

    *&v24 = __PAIR64__(v16, v11);
    *(&v24 + 1) = __PAIR64__(v19, v17);
    *&v25 = 0xFFFFFFFFLL;
    BYTE8(v25) = 0;
    HIDWORD(v25) = 0;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type BadgeInfoActionBinding and conformance BadgeInfoActionBinding();
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphSetFlags();
  }

  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  outlined destroy of _ViewInputs(&v24);
  *a4 = v13;
  result = v21;
  a4[1] = v21.n128_u64[0];
  return result;
}

uint64_t *BadgeInfoActionBinding.updateValue()()
{
  if (*(v0 + 28) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 28) = *AGGraphGetValue() >> 1;
    *(v0 + 16) = 0xFFFFFFFFLL;
    *(v0 + 24) = 0;
  }

  _s7SwiftUI4FontVSgMaTm_0(0, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if (v2)
  {
    v3 = *result;

    if (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      AGGraphClearUpdate();
      Value = AGGraphGetValue();
      v5 = *Value;
      v6 = Value[1];
      v7 = Value[2];

      AGGraphSetUpdate();
      v8 = swift_allocObject();
      v8[2] = v5;
      v8[3] = v6;
      v8[4] = v7;
      v8[5] = v3;

      static Update.enqueueAction(reason:_:)();
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #2 in BadgeInfoActionBinding.updateValue()()
{

  dispatch thunk of AnyLocation.set(_:transaction:)();
}

void specialized GridIconLayout.sizeThatFits(proposal:subviews:cache:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = [objc_opt_self() mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v13.origin.x = v5;
  v13.origin.y = v7;
  v13.size.width = v9;
  v13.size.height = v11;
  CGRectGetWidth(v13);
  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  Width = CGRectGetWidth(v14);
  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  if (CGRectGetHeight(v15) >= Width)
  {
    if (one-time initialization token for gridHorizontalPaddingPortrait == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (one-time initialization token for gridHorizontalPaddingLandscape != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_5:
  if (one-time initialization token for gridCellSpacing != -1)
  {
    swift_once();
  }

  if (one-time initialization token for buttonHorizontalPadding != -1)
  {
    swift_once();
  }

  if ((!v2 || v1 == 1) && one-time initialization token for buttonVerticalPadding != -1)
  {
    swift_once();
  }
}

uint64_t specialized GridIconLayout.placeSubviews(in:proposal:subviews:cache:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *v4;
  v10 = *(v4 + 8);
  result = LayoutSubviews.endIndex.getter();
  if (result)
  {
    LayoutSubviews.subscript.getter();
    if (v9 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    if ((v12 & 1) == 0)
    {
      v13.origin.x = a1;
      v13.origin.y = a2;
      v13.size.width = a3;
      v13.size.height = a4;
      CGRectGetWidth(v13);
      if (one-time initialization token for buttonHorizontalPadding != -1)
      {
        swift_once();
      }

      v14.origin.x = a1;
      v14.origin.y = a2;
      v14.size.width = a3;
      v14.size.height = a4;
      CGRectGetHeight(v14);
      if (one-time initialization token for buttonVerticalPadding != -1)
      {
        swift_once();
      }
    }

    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetMidX(v15);
    static UnitPoint.top.getter();
    return LayoutSubview.place(at:anchor:proposal:)();
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for TupleView<(VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, Spacer)>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(0, &lazy cache variable for type metadata for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, &lazy cache variable for type metadata for TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>), &lazy protocol witness table cache variable for type TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(uint64_t a1)
{
  type metadata accessor for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(0, &lazy cache variable for type metadata for VStack<TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, &lazy cache variable for type metadata for TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)>, type metadata accessor for (_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>), &lazy protocol witness table cache variable for type TupleView<(_VariadicView.Tree<_LayoutRoot<GridIconLayout>, GeometryReader<MultimodalListStyleIconContainerView<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>>>>, ModifiedContent<ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>, &type metadata for DefaultGridCellMinWidthEnvironmentKey, &protocol witness table for DefaultGridCellMinWidthEnvironmentKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t destroy for MultimodalListStyleGridScrollViewContent(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  outlined consume of Environment<Selector?>.Content(*(a1 + 128), *(a1 + 136));
  outlined consume of Environment<Selector?>.Content(*(a1 + 144), *(a1 + 152));
}

uint64_t initializeWithCopy for MultimodalListStyleGridScrollViewContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 136);
  v10 = v5;

  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 128) = v8;
  *(a1 + 136) = v9;
  v11 = *(a2 + 144);
  LOBYTE(v8) = *(a2 + 152);
  outlined copy of Environment<Selector?>.Content(v11, v8);
  *(a1 + 144) = v11;
  *(a1 + 152) = v8;
  v12 = *(a2 + 160);
  v13 = *(a2 + 168);
  *(a1 + 160) = v12;
  *(a1 + 168) = v13;

  return a1;
}

uint64_t assignWithCopy for MultimodalListStyleGridScrollViewContent(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v7 = *(a2 + 128);
  v8 = *(a2 + 136);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 128);
  v10 = *(a1 + 136);
  *(a1 + 128) = v7;
  *(a1 + 136) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 144);
  v12 = *(a2 + 152);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  v13 = *(a1 + 144);
  v14 = *(a1 + 152);
  *(a1 + 144) = v11;
  *(a1 + 152) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  return a1;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t assignWithTake for MultimodalListStyleGridScrollViewContent(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v8 = *(a2 + 136);
  v9 = *(a1 + 128);
  v10 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 152);
  v12 = *(a1 + 144);
  v13 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t getEnumTagSinglePayload for MultimodalListStyleGridScrollViewContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t storeEnumTagSinglePayload for MultimodalListStyleGridScrollViewContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>();
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(255, &lazy cache variable for type metadata for StyleContextWriter<MultimodalListGridContext>, MEMORY[0x1E6980550], MEMORY[0x1E6980548], MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>> and conformance <> _VariadicView.Tree<A, B>)
  {
    type metadata accessor for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>();
    lazy protocol witness table accessor for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>();
    lazy protocol witness table accessor for type StyleContextWriter<MultimodalListGridContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<MultimodalListGridContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListGridContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListGridContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(255, &lazy cache variable for type metadata for StyleContextWriter<MultimodalListGridContext>, MEMORY[0x1E6980550], MEMORY[0x1E6980548], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<MultimodalListGridContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t outlined destroy of _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>(uint64_t a1)
{
  type metadata accessor for _VariadicView.Tree<LazyVGridLayout, ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI4FontVSgMaTm_0(255, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultGridCellMinWidthEnvironmentKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey>, &unk_1EFFCE920, &protocol witness table for GridBadgeInfoEnvironmentKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<GridBadgeInfoEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t destroy for OnBadgeInfoChange()
{
}

void *initializeBufferWithCopyOfBuffer for OnBadgeInfoChange(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for OnBadgeInfoChange(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for OnBadgeInfoChange(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>, _EnvironmentKeyWritingModifier<CGFloat>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>();
    _s7SwiftUI4FontVSgMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>);
    type metadata accessor for _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LazyVGrid<ModifiedContent<_VariadicView_Children, StyleContextWriter<MultimodalListGridContext>>>, CoordinateSpaceNameModifier>, _PaddingLayout>, _PreferenceWritingModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, OnBadgeInfoChange>, _EnvironmentKeyWritingModifier<[MultimodalBadgeInfo]>>);
    }
  }
}