uint64_t assignWithTake for AnimatedValueKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  (*(v6 + 40))(a1, a2, v5);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = ~v8;
  v10 = ((v7 + v8 + a1) & ~v8);
  v11 = ((v7 + v8 + a2) & ~v8);
  if (v7 <= 0x18)
  {
    v12 = 24;
  }

  else
  {
    v12 = *(v6 + 64);
  }

  v46 = v6;
  if (v10 == v11)
  {
    v45 = 8 * v12;
    goto LABEL_6;
  }

  v22 = 8 * v12;
  v23 = *(v10 + v12);
  v24 = v23 - 3;
  if (v23 >= 3)
  {
    if (v12 <= 3)
    {
      v25 = v12;
    }

    else
    {
      v25 = 4;
    }

    if (v25 <= 1)
    {
      if (!v25)
      {
        goto LABEL_33;
      }

      v26 = *v10;
    }

    else if (v25 == 2)
    {
      v26 = *v10;
    }

    else if (v25 == 3)
    {
      v26 = *v10 | (*(v10 + 2) << 16);
    }

    else
    {
      v26 = *v10;
    }

    v31 = (v26 | (v24 << v22)) + 3;
    v23 = v26 + 3;
    if (v12 < 4)
    {
      v23 = v31;
    }
  }

LABEL_33:
  if (v23 - 1 <= 1)
  {
    (*(v6 + 8))(v10, v5);
  }

  v32 = *(v11 + v12);
  v33 = v32 - 3;
  if (v32 < 3)
  {
    goto LABEL_65;
  }

  if (v12 <= 3)
  {
    v34 = v12;
  }

  else
  {
    v34 = 4;
  }

  if (v34 > 1)
  {
    if (v34 == 2)
    {
      v35 = *v11;
    }

    else if (v34 == 3)
    {
      v35 = *v11 | (*(v11 + 2) << 16);
    }

    else
    {
      v35 = *v11;
    }

LABEL_63:
    v41 = (v35 | (v33 << v22)) + 3;
    v32 = v35 + 3;
    if (v12 < 4)
    {
      v32 = v41;
    }

    goto LABEL_65;
  }

  if (v34)
  {
    v35 = *v11;
    goto LABEL_63;
  }

LABEL_65:
  v45 = 8 * v12;
  if (v32 == 2)
  {
    (*(v6 + 32))(v10, v11, v5);
    *(v10 + v12) = 2;
  }

  else if (v32 == 1)
  {
    (*(v6 + 32))(v10, v11, v5);
    *(v10 + v12) = 1;
  }

  else if (v32)
  {
    memcpy(v10, v11, v12 + 1);
  }

  else
  {
    v42 = *v11;
    v10[2] = v11[2];
    *v10 = v42;
    *(v10 + v12) = 0;
  }

LABEL_6:
  v13 = v12 + 1 + v8;
  v14 = ((v10 + v13) & v9);
  v15 = ((v11 + v13) & v9);
  if (v14 == v15)
  {
    goto LABEL_7;
  }

  v27 = v14[v12];
  v28 = v27 - 3;
  if (v27 >= 3)
  {
    if (v12 <= 3)
    {
      v29 = v12;
    }

    else
    {
      v29 = 4;
    }

    if (v29 <= 1)
    {
      if (!v29)
      {
        goto LABEL_49;
      }

      v30 = *v14;
    }

    else if (v29 == 2)
    {
      v30 = *v14;
    }

    else if (v29 == 3)
    {
      v30 = *v14 | (*(((v10 + v13) & v9) + 2) << 16);
    }

    else
    {
      v30 = *v14;
    }

    v36 = (v30 | (v28 << v45)) + 3;
    v27 = v30 + 3;
    if (v12 < 4)
    {
      v27 = v36;
    }
  }

LABEL_49:
  if (v27 - 1 <= 1)
  {
    (*(v46 + 8))((v10 + v13) & v9, v5);
  }

  v37 = v15[v12];
  v38 = v37 - 3;
  if (v37 < 3)
  {
    goto LABEL_75;
  }

  if (v12 <= 3)
  {
    v39 = v12;
  }

  else
  {
    v39 = 4;
  }

  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v40 = *v15;
    }

    else if (v39 == 3)
    {
      v40 = *v15 | (*(((v11 + v13) & v9) + 2) << 16);
    }

    else
    {
      v40 = *v15;
    }

LABEL_73:
    v43 = (v40 | (v38 << v45)) + 3;
    v37 = v40 + 3;
    if (v12 < 4)
    {
      v37 = v43;
    }

    goto LABEL_75;
  }

  if (v39)
  {
    v40 = *v15;
    goto LABEL_73;
  }

LABEL_75:
  if (v37 == 2)
  {
    (*(v46 + 32))((v10 + v13) & v9, (v11 + v13) & v9, v5);
    v14[v12] = 2;
  }

  else if (v37 == 1)
  {
    (*(v46 + 32))((v10 + v13) & v9, (v11 + v13) & v9, v5);
    v14[v12] = 1;
  }

  else if (v37)
  {
    memcpy(((v10 + v13) & v9), ((v11 + v13) & v9), v12 + 1);
  }

  else
  {
    v44 = *v15;
    *(((v10 + v13) & v9) + 0x10) = *(((v11 + v13) & v9) + 0x10);
    *v14 = v44;
    v14[v12] = 0;
  }

LABEL_7:
  v16 = (v13 & v9) + v12 + 1;
  v17 = v10 + v16 + 7;
  v18 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 16);
  v17 &= 0xFFFFFFFFFFFFFFF8;
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValueKeyframe(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v6 <= 0x18)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (v7 >= 4)
  {
    v8 = 252;
  }

  else
  {
    v8 = 252 - (1u >> (8 * v7));
  }

  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v4 + 80) & 0xF8 | 7;
  v11 = v6 + v10;
  if (v9 >= a2)
  {
    goto LABEL_34;
  }

  v12 = ((v7 + (v11 & ~v10) + ((v7 + v10 + 1) & ~v10) + 8) & 0xFFFFFFFFFFFFFFF8) + 33;
  v13 = (a2 - v9 + 255) >> 8;
  if (v12 <= 3)
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
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v12];
      if (*&a1[v12])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v17 = *&a1[v12];
      if (v17)
      {
        goto LABEL_30;
      }
    }

LABEL_34:
    if (v5 >= v8)
    {
      return (*(v4 + 48))();
    }

    v21 = *((&a1[v11] & ~v10) + v7);
    if (v8 <= (v21 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v21);
    }
  }

  if (!v16)
  {
    goto LABEL_34;
  }

  v17 = a1[v12];
  if (!a1[v12])
  {
    goto LABEL_34;
  }

LABEL_30:
  v19 = (v17 - 1) << (8 * v12);
  if (v12 <= 3)
  {
    v20 = *a1;
  }

  else
  {
    v19 = 0;
    v20 = *a1;
  }

  return v9 + (v20 | v19) + 1;
}

void storeEnumTagSinglePayload for AnimatedValueKeyframe(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = 24;
  if (v8 > 0x18)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  v10 = 252 - (1u >> (8 * v9));
  if (v9 >= 4)
  {
    v10 = 252;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v6 + 80) & 0xF8 | 7;
  v13 = v8 + v12;
  v14 = ((v9 + 1 + v12) & ~v12) + v9 + 1;
  v15 = ((v14 + (v13 & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v11 >= a3)
  {
    v19 = 0;
    if (v11 >= a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = (a3 - v11 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
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

    if (v11 >= a2)
    {
LABEL_21:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v7 >= v10)
        {
          v24 = *(v6 + 56);

          v24();
        }

        else
        {
          v22 = (&a1[v13] & ~v12);
          if (v10 >= a2)
          {
            v22[v9] = -a2;
          }

          else
          {
            v23 = ~v10 + a2;
            if (v14 < 4)
            {
              if (v14)
              {
                v25 = v23 & ~(-1 << (8 * v14));
                bzero(v22, v14);
                if (v14 == 3)
                {
                  *v22 = v25;
                  v22[2] = BYTE2(v25);
                }

                else if (v14 == 2)
                {
                  *v22 = v25;
                }

                else
                {
                  *v22 = v23;
                }
              }
            }

            else
            {
              bzero(v22, v14);
              *v22 = v23;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  v20 = ~v11 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_31:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_31;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t type metadata completion function for AnimatedValueKeyframe.InterpolationParameters()
{
  result = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnimatedValueKeyframe.InterpolationParameters(_OWORD *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v4 = __dst;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x18uLL)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = v7 + 1;
  v9 = *(v6 + 80);
  v10 = v9 & 0xF8 | 7;
  if ((v9 & 0x1000F8) != 0 || ((v7 + 1 + v10) & ~v10) + v7 + 1 > 0x18)
  {
    v12 = *__src;
    *v4 = *__src;
    v4 = (v12 + ((v10 + 16) & ~v10));

    return v4;
  }

  v14 = 8 * v7;
  v15 = __src[v7];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v7 <= 3)
    {
      v17 = v7;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = *__src;
      if (v7 < 4)
      {
LABEL_32:
        v20 = v18 | (v16 << v14);
        v15 = v20 + 3;
        if (v20 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }
    }

    else if (v17 == 2)
    {
      v18 = *__src;
      if (v7 < 4)
      {
        goto LABEL_32;
      }
    }

    else if (v17 == 3)
    {
      v18 = *__src | (__src[2] << 16);
      if (v7 < 4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v18 = *__src;
      if (v7 < 4)
      {
        goto LABEL_32;
      }
    }

    v15 = v18 + 3;
  }

LABEL_25:
  if (v15 == 2)
  {
LABEL_33:
    (*(v6 + 16))(__dst, __src, v5);
    v19 = 2;
    goto LABEL_34;
  }

LABEL_26:
  if (v15 == 1)
  {
    (*(v6 + 16))(__dst, __src, v5);
    v19 = 1;
LABEL_34:
    *(v4 + v7) = v19;
    goto LABEL_35;
  }

  if (v15)
  {
    memcpy(__dst, __src, v7 + 1);
  }

  else
  {
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
    *(__dst + v7) = 0;
  }

LABEL_35:
  v21 = v4 + v8 + 7;
  v22 = (&__src[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
  v23 = *(v22 + v7);
  v24 = v23 - 3;
  if (v23 >= 3)
  {
    if (v7 <= 3)
    {
      v25 = v7;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *v22;
      }

      else if (v25 == 3)
      {
        v26 = *v22 | (*(v22 + 2) << 16);
      }

      else
      {
        v26 = *v22;
      }

LABEL_47:
      v27 = (v26 | (v24 << v14)) + 3;
      v23 = v26 + 3;
      if (v7 < 4)
      {
        v23 = v27;
      }

      goto LABEL_49;
    }

    if (v25)
    {
      v26 = *v22;
      goto LABEL_47;
    }
  }

LABEL_49:
  v28 = v21 & 0xFFFFFFFFFFFFFFF8;
  if (v23 == 2)
  {
    (*(v6 + 16))(v28);
    *(v28 + v7) = 2;
  }

  else if (v23 == 1)
  {
    (*(v6 + 16))(v28);
    *(v28 + v7) = 1;
  }

  else if (v23)
  {
    memcpy((v21 & 0xFFFFFFFFFFFFFFF8), v22, v7 + 1);
  }

  else
  {
    v29 = *v22;
    *(v28 + 16) = v22[2];
    *v28 = v29;
    *(v28 + v7) = 0;
  }

  return v4;
}

unsigned __int8 *destroy for AnimatedValueKeyframe.InterpolationParameters(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  if (*(v3 + 64) <= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = 8 * v4;
  v6 = a1[v4];
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v4 <= 3)
    {
      v8 = v4;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_18;
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

    v10 = (v9 | (v7 << v5)) + 3;
    v6 = v9 + 3;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_18:
  if (v6 - 1 <= 1)
  {
    v19 = *(*(a2 + 16) - 8);
    (*(v3 + 8))(a1, *(a2 + 16));
    v3 = v19;
  }

  v11 = *(v3 + 80) & 0xF8 | 7;
  result = (&a1[v4 + 1 + v11] & ~v11);
  v13 = result[v4];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v4 <= 3)
    {
      v15 = v4;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_34;
      }

      v16 = *result;
    }

    else if (v15 == 2)
    {
      v16 = *result;
    }

    else if (v15 == 3)
    {
      v16 = *result | (result[2] << 16);
    }

    else
    {
      v16 = *result;
    }

    v17 = (v16 | (v14 << v5)) + 3;
    v13 = v16 + 3;
    if (v4 < 4)
    {
      v13 = v17;
    }
  }

LABEL_34:
  if (v13 - 1 <= 1)
  {
    v18 = *(v3 + 8);

    return v18();
  }

  return result;
}

_BYTE *initializeWithCopy for AnimatedValueKeyframe.InterpolationParameters(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x18uLL)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = __src[v7];
  v10 = v9 - 3;
  if (v9 < 3)
  {
    goto LABEL_18;
  }

  if (v7 <= 3)
  {
    v11 = v7;
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *__src;
  }

  else if (v11 == 2)
  {
    v12 = *__src;
  }

  else if (v11 == 3)
  {
    v12 = *__src | (__src[2] << 16);
  }

  else
  {
    v12 = *__src;
  }

  v13 = (v12 | (v10 << v8)) + 3;
  v9 = v12 + 3;
  if (v7 < 4)
  {
    v9 = v13;
  }

LABEL_18:
  if (v9 == 2)
  {
    (*(v6 + 16))(__dst, __src, v5);
    __dst[v7] = 2;
  }

  else if (v9 == 1)
  {
    (*(v6 + 16))(__dst, __src, v5);
    __dst[v7] = 1;
  }

  else if (v9)
  {
    memcpy(__dst, __src, v7 + 1);
  }

  else
  {
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
    __dst[v7] = 0;
  }

  v14 = *(v6 + 80) & 0xF8 | 7;
  v15 = v7 + 1 + v14;
  v16 = (&__dst[v15] & ~v14);
  v17 = (&__src[v15] & ~v14);
  v18 = *(v17 + v7);
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v7 <= 3)
    {
      v20 = v7;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_39;
      }

      v21 = *v17;
    }

    else if (v20 == 2)
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

    v22 = (v21 | (v19 << v8)) + 3;
    v18 = v21 + 3;
    if (v7 < 4)
    {
      v18 = v22;
    }
  }

LABEL_39:
  if (v18 == 2)
  {
    (*(v6 + 16))(v16);
    *(v16 + v7) = 2;
  }

  else if (v18 == 1)
  {
    (*(v6 + 16))(v16);
    *(v16 + v7) = 1;
  }

  else if (v18)
  {
    memcpy(v16, v17, v7 + 1);
  }

  else
  {
    v23 = *v17;
    v16[2] = v17[2];
    *v16 = v23;
    *(v16 + v7) = 0;
  }

  return __dst;
}

unsigned __int8 *assignWithCopy for AnimatedValueKeyframe.InterpolationParameters(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (__dst == __src)
  {
    goto LABEL_47;
  }

  if (*(v6 + 64) <= 0x18uLL)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = __dst[v7];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *__dst;
        if (v7 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = *__dst | (__dst[2] << 16);
          if (v7 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v9 = v12 + 3;
          goto LABEL_21;
        }

        v12 = *__dst;
        if (v7 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v9 = (v12 | (v10 << v8)) + 3;
      goto LABEL_21;
    }

    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = *__dst;
    if (v7 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_21:
  if (v9 - 1 <= 1)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v13 = __src[v7];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_37;
      }

      v16 = *__src;
      if (v7 < 4)
      {
LABEL_44:
        v19 = v16 | (v14 << v8);
        v13 = v19 + 3;
        if (v19 == -1)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }
    }

    else if (v15 == 2)
    {
      v16 = *__src;
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    else if (v15 == 3)
    {
      v16 = *__src | (__src[2] << 16);
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v16 = *__src;
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    v13 = v16 + 3;
  }

LABEL_37:
  if (v13 == 2)
  {
LABEL_45:
    (*(v6 + 16))(__dst, __src, v5);
    v18 = 2;
    goto LABEL_46;
  }

LABEL_38:
  if (v13 != 1)
  {
    if (v13)
    {
      memcpy(__dst, __src, v7 + 1);
    }

    else
    {
      v17 = *__src;
      *(__dst + 2) = *(__src + 2);
      *__dst = v17;
      __dst[v7] = 0;
    }

    goto LABEL_47;
  }

  (*(v6 + 16))(__dst, __src, v5);
  v18 = 1;
LABEL_46:
  __dst[v7] = v18;
LABEL_47:
  v20 = v6;
  if (*(v6 + 64) <= 0x18uLL)
  {
    v21 = 24;
  }

  else
  {
    v21 = *(v6 + 64);
  }

  v22 = *(v6 + 80) & 0xF8 | 7;
  v23 = v21 + 1 + v22;
  v24 = (&__dst[v23] & ~v22);
  v25 = (&__src[v23] & ~v22);
  if (v24 != v25)
  {
    v27 = 8 * v21;
    v28 = *(v24 + v21);
    v29 = v28 - 3;
    if (v28 < 3)
    {
      goto LABEL_66;
    }

    if (v21 <= 3)
    {
      v30 = v21;
    }

    else
    {
      v30 = 4;
    }

    if (v30 <= 1)
    {
      if (!v30)
      {
        goto LABEL_66;
      }

      v31 = *v24;
    }

    else if (v30 == 2)
    {
      v31 = *v24;
    }

    else if (v30 == 3)
    {
      v31 = *v24 | (*(v24 + 2) << 16);
    }

    else
    {
      v31 = *v24;
    }

    v32 = (v31 | (v29 << v27)) + 3;
    v28 = v31 + 3;
    if (v21 < 4)
    {
      v28 = v32;
    }

LABEL_66:
    if (v28 - 1 <= 1)
    {
      (*(v20 + 8))(v24, v5);
    }

    v33 = v25[v21];
    v34 = v33 - 3;
    if (v33 < 3)
    {
      goto LABEL_82;
    }

    if (v21 <= 3)
    {
      v35 = v21;
    }

    else
    {
      v35 = 4;
    }

    if (v35 <= 1)
    {
      if (!v35)
      {
LABEL_82:
        if (v33 == 2)
        {
          (*(v20 + 16))(v24, v25, v5);
          *(v24 + v21) = 2;
        }

        else if (v33 == 1)
        {
          (*(v20 + 16))(v24, v25, v5);
          *(v24 + v21) = 1;
        }

        else if (v33)
        {
          memcpy(v24, v25, v21 + 1);
        }

        else
        {
          v38 = *v25;
          v24[2] = *(v25 + 2);
          *v24 = v38;
          *(v24 + v21) = 0;
        }

        return __dst;
      }

      v36 = *v25;
    }

    else if (v35 == 2)
    {
      v36 = *v25;
    }

    else if (v35 == 3)
    {
      v36 = *v25 | (v25[2] << 16);
    }

    else
    {
      v36 = *v25;
    }

    v37 = (v36 | (v34 << v27)) + 3;
    v33 = v36 + 3;
    if (v21 < 4)
    {
      v33 = v37;
    }

    goto LABEL_82;
  }

  return __dst;
}

_BYTE *initializeWithTake for AnimatedValueKeyframe.InterpolationParameters(_BYTE *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x18uLL)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = __src[v7];
  v10 = v9 - 3;
  if (v9 < 3)
  {
    goto LABEL_18;
  }

  if (v7 <= 3)
  {
    v11 = v7;
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *__src;
  }

  else if (v11 == 2)
  {
    v12 = *__src;
  }

  else if (v11 == 3)
  {
    v12 = *__src | (__src[2] << 16);
  }

  else
  {
    v12 = *__src;
  }

  v13 = (v12 | (v10 << v8)) + 3;
  v9 = v12 + 3;
  if (v7 < 4)
  {
    v9 = v13;
  }

LABEL_18:
  if (v9 == 2)
  {
    (*(v6 + 32))(__dst, __src, v5);
    __dst[v7] = 2;
  }

  else if (v9 == 1)
  {
    (*(v6 + 32))(__dst, __src, v5);
    __dst[v7] = 1;
  }

  else if (v9)
  {
    memcpy(__dst, __src, v7 + 1);
  }

  else
  {
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
    __dst[v7] = 0;
  }

  v14 = *(v6 + 80) & 0xF8 | 7;
  v15 = v7 + 1 + v14;
  v16 = (&__dst[v15] & ~v14);
  v17 = (&__src[v15] & ~v14);
  v18 = *(v17 + v7);
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v7 <= 3)
    {
      v20 = v7;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_39;
      }

      v21 = *v17;
    }

    else if (v20 == 2)
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

    v22 = (v21 | (v19 << v8)) + 3;
    v18 = v21 + 3;
    if (v7 < 4)
    {
      v18 = v22;
    }
  }

LABEL_39:
  if (v18 == 2)
  {
    (*(v6 + 32))(v16);
    *(v16 + v7) = 2;
  }

  else if (v18 == 1)
  {
    (*(v6 + 32))(v16);
    *(v16 + v7) = 1;
  }

  else if (v18)
  {
    memcpy(v16, v17, v7 + 1);
  }

  else
  {
    v23 = *v17;
    v16[2] = v17[2];
    *v16 = v23;
    *(v16 + v7) = 0;
  }

  return __dst;
}

unsigned __int8 *assignWithTake for AnimatedValueKeyframe.InterpolationParameters(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (__dst == __src)
  {
    goto LABEL_47;
  }

  if (*(v6 + 64) <= 0x18uLL)
  {
    v7 = 24;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8 * v7;
  v9 = __dst[v7];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v7 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *__dst;
        if (v7 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = *__dst | (__dst[2] << 16);
          if (v7 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v9 = v12 + 3;
          goto LABEL_21;
        }

        v12 = *__dst;
        if (v7 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v9 = (v12 | (v10 << v8)) + 3;
      goto LABEL_21;
    }

    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = *__dst;
    if (v7 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_21:
  if (v9 - 1 <= 1)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v13 = __src[v7];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_37;
      }

      v16 = *__src;
      if (v7 < 4)
      {
LABEL_44:
        v18 = v16 | (v14 << v8);
        v13 = v18 + 3;
        if (v18 == -1)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }
    }

    else if (v15 == 2)
    {
      v16 = *__src;
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    else if (v15 == 3)
    {
      v16 = *__src | (__src[2] << 16);
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v16 = *__src;
      if (v7 < 4)
      {
        goto LABEL_44;
      }
    }

    v13 = v16 + 3;
  }

LABEL_37:
  if (v13 == 2)
  {
LABEL_45:
    (*(v6 + 32))(__dst, __src, v5);
    v17 = 2;
    goto LABEL_46;
  }

LABEL_38:
  if (v13 != 1)
  {
    if (v13)
    {
      memcpy(__dst, __src, v7 + 1);
    }

    else
    {
      *__dst = *__src;
      *(__dst + 2) = *(__src + 2);
      __dst[v7] = 0;
    }

    goto LABEL_47;
  }

  (*(v6 + 32))(__dst, __src, v5);
  v17 = 1;
LABEL_46:
  __dst[v7] = v17;
LABEL_47:
  v19 = v6;
  if (*(v6 + 64) <= 0x18uLL)
  {
    v20 = 24;
  }

  else
  {
    v20 = *(v6 + 64);
  }

  v21 = *(v6 + 80) & 0xF8 | 7;
  v22 = v20 + 1 + v21;
  v23 = (&__dst[v22] & ~v21);
  v24 = (&__src[v22] & ~v21);
  if (v23 != v24)
  {
    v26 = 8 * v20;
    v27 = *(v23 + v20);
    v28 = v27 - 3;
    if (v27 < 3)
    {
      goto LABEL_66;
    }

    if (v20 <= 3)
    {
      v29 = v20;
    }

    else
    {
      v29 = 4;
    }

    if (v29 <= 1)
    {
      if (!v29)
      {
        goto LABEL_66;
      }

      v30 = *v23;
    }

    else if (v29 == 2)
    {
      v30 = *v23;
    }

    else if (v29 == 3)
    {
      v30 = *v23 | (*(v23 + 2) << 16);
    }

    else
    {
      v30 = *v23;
    }

    v31 = (v30 | (v28 << v26)) + 3;
    v27 = v30 + 3;
    if (v20 < 4)
    {
      v27 = v31;
    }

LABEL_66:
    if (v27 - 1 <= 1)
    {
      (*(v19 + 8))(v23, v5);
    }

    v32 = v24[v20];
    v33 = v32 - 3;
    if (v32 < 3)
    {
      goto LABEL_82;
    }

    if (v20 <= 3)
    {
      v34 = v20;
    }

    else
    {
      v34 = 4;
    }

    if (v34 <= 1)
    {
      if (!v34)
      {
LABEL_82:
        if (v32 == 2)
        {
          (*(v19 + 32))(v23, v24, v5);
          *(v23 + v20) = 2;
        }

        else if (v32 == 1)
        {
          (*(v19 + 32))(v23, v24, v5);
          *(v23 + v20) = 1;
        }

        else if (v32)
        {
          memcpy(v23, v24, v20 + 1);
        }

        else
        {
          v37 = *v24;
          v23[2] = *(v24 + 2);
          *v23 = v37;
          *(v23 + v20) = 0;
        }

        return __dst;
      }

      v35 = *v24;
    }

    else if (v34 == 2)
    {
      v35 = *v24;
    }

    else if (v34 == 3)
    {
      v35 = *v24 | (v24[2] << 16);
    }

    else
    {
      v35 = *v24;
    }

    v36 = (v35 | (v33 << v26)) + 3;
    v32 = v35 + 3;
    if (v20 < 4)
    {
      v32 = v36;
    }

    goto LABEL_82;
  }

  return __dst;
}

uint64_t getEnumTagSinglePayload for AnimatedValueKeyframe.InterpolationParameters(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 24;
  if (*(v3 + 64) > 0x18uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = 252 - (1u >> (8 * v4));
  if (v4 >= 4)
  {
    v5 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
    goto LABEL_27;
  }

  v6 = *(v3 + 80) & 0xF8 | 7;
  v7 = ((v4 + 1 + v6) & ~v6) + v4 + 1;
  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v11 = ((a2 - v5 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_27:
      v13 = *(a1 + v4);
      if (v5 <= (v13 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v13);
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_27;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v5 + (v7 | v12) + 1;
}

void storeEnumTagSinglePayload for AnimatedValueKeyframe.InterpolationParameters(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  v7 = 252 - (1u >> (8 * v6));
  if (v6 >= 4)
  {
    v7 = 252;
  }

  v8 = *(v5 + 80) & 0xF8 | 7;
  v9 = ((v6 + 1 + v8) & ~v8) + v6 + 1;
  if (a3 <= v7)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v7 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
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
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v7 >= a2)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

LABEL_32:
        a1[v6] = -a2;
        return;
      }

      *&a1[v9] = 0;
    }

    else if (v10)
    {
      a1[v9] = 0;
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

    goto LABEL_32;
  }

  v11 = ~v7 + a2;
  if (v9 >= 4)
  {
    bzero(a1, v9);
    *a1 = v11;
    v12 = 1;
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v12 = (v11 >> (8 * v9)) + 1;
  if (!v9)
  {
LABEL_37:
    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v11 & ~(-1 << (8 * v9));
  bzero(a1, v9);
  if (v9 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v9 == 2)
  {
    *a1 = v15;
    if (v10 > 1)
    {
LABEL_41:
      if (v10 == 2)
      {
        *&a1[v9] = v12;
      }

      else
      {
        *&a1[v9] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v11;
    if (v10 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v10)
  {
    a1[v9] = v12;
  }
}

uint64_t type metadata completion function for AnimatedValueKeyframe.InterpolationParameters.Mode()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnimatedValueKeyframe.InterpolationParameters.Mode(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 0x18uLL)
  {
    v5 = 24;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));

    return v3;
  }

  v10 = a2[v5];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v5 <= 3)
    {
      v12 = v5;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_25;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v5))) + 3;
    v10 = v13 + 3;
    if (v5 < 4)
    {
      v10 = v14;
    }
  }

LABEL_25:
  switch(v10)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      *(v3 + v5) = 2;
      return v3;
    case 1u:
      (*(v4 + 16))(__dst);
      *(v3 + v5) = 1;
      return v3;
    case 0u:
      *__dst = *a2;
      __dst[2] = *(a2 + 2);
      *(__dst + v5) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *destroy for AnimatedValueKeyframe.InterpolationParameters.Mode(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 0x18)
  {
    v2 = 24;
  }

  v3 = result[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *result;
    }

    else if (v5 == 2)
    {
      v6 = *result;
    }

    else if (v5 == 3)
    {
      v6 = *result | (result[2] << 16);
    }

    else
    {
      v6 = *result;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    v3 = v6 + 3;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 - 1 <= 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

void *initializeWithCopy for AnimatedValueKeyframe.InterpolationParameters.Mode(void *result, void *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = *(a2 + v4);
  v6 = v5 - 3;
  if (v5 >= 3)
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
        goto LABEL_18;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 3;
    v5 = v8 + 3;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_18:
  if (v5 == 2)
  {
    v10 = result;
    (*(v3 + 16))();
    result = v10;
    v11 = 2;
    goto LABEL_24;
  }

  if (v5 == 1)
  {
    v10 = result;
    (*(v3 + 16))();
    result = v10;
    v11 = 1;
LABEL_24:
    *(v10 + v4) = v11;
    return result;
  }

  if (v5)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    *result = *a2;
    result[2] = a2[2];
    *(result + v4) = 0;
  }

  return result;
}

void *assignWithCopy for AnimatedValueKeyframe.InterpolationParameters.Mode(void *result, void *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = 8 * v4;
  v6 = *(result + v4);
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v4 <= 3)
    {
      v8 = v4;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (*(result + 2) << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << v5)) + 3;
    v6 = v9 + 3;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_19:
  if (v6 - 1 <= 1)
  {
    v11 = result;
    v12 = a2;
    (*(v3 + 8))();
    a2 = v12;
    result = v11;
  }

  v13 = *(a2 + v4);
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v4 <= 3)
    {
      v15 = v4;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_35;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << v5)) + 3;
    v13 = v16 + 3;
    if (v4 < 4)
    {
      v13 = v17;
    }
  }

LABEL_35:
  if (v13 == 2)
  {
    v19 = result;
    (*(v3 + 16))();
    result = v19;
    v20 = 2;
    goto LABEL_41;
  }

  if (v13 == 1)
  {
    v19 = result;
    (*(v3 + 16))();
    result = v19;
    v20 = 1;
LABEL_41:
    *(v19 + v4) = v20;
    return result;
  }

  if (v13)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v18 = *a2;
    result[2] = a2[2];
    *result = v18;
    *(result + v4) = 0;
  }

  return result;
}

void *initializeWithTake for AnimatedValueKeyframe.InterpolationParameters.Mode(void *result, void *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = *(a2 + v4);
  v6 = v5 - 3;
  if (v5 >= 3)
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
        goto LABEL_18;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 3;
    v5 = v8 + 3;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_18:
  if (v5 == 2)
  {
    v10 = result;
    (*(v3 + 32))();
    result = v10;
    v11 = 2;
    goto LABEL_24;
  }

  if (v5 == 1)
  {
    v10 = result;
    (*(v3 + 32))();
    result = v10;
    v11 = 1;
LABEL_24:
    *(v10 + v4) = v11;
    return result;
  }

  if (v5)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    *result = *a2;
    result[2] = a2[2];
    *(result + v4) = 0;
  }

  return result;
}

void *assignWithTake for AnimatedValueKeyframe.InterpolationParameters.Mode(void *result, void *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 0x18uLL)
  {
    v4 = 24;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = 8 * v4;
  v6 = *(result + v4);
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v4 <= 3)
    {
      v8 = v4;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (*(result + 2) << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << v5)) + 3;
    v6 = v9 + 3;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_19:
  if (v6 - 1 <= 1)
  {
    v11 = result;
    v12 = a2;
    (*(v3 + 8))();
    a2 = v12;
    result = v11;
  }

  v13 = *(a2 + v4);
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v4 <= 3)
    {
      v15 = v4;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_35;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << v5)) + 3;
    v13 = v16 + 3;
    if (v4 < 4)
    {
      v13 = v17;
    }
  }

LABEL_35:
  if (v13 == 2)
  {
    v18 = result;
    (*(v3 + 32))();
    result = v18;
    v19 = 2;
    goto LABEL_41;
  }

  if (v13 == 1)
  {
    v18 = result;
    (*(v3 + 32))();
    result = v18;
    v19 = 1;
LABEL_41:
    *(v18 + v4) = v19;
    return result;
  }

  if (v13)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    *result = *a2;
    result[2] = a2[2];
    *(result + v4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimatedValueKeyframe.InterpolationParameters.Mode(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 24;
  if (*(v3 + 64) > 0x18uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = 252 - (1u >> (8 * v4));
  if (v4 >= 4)
  {
    v5 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
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

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for AnimatedValueKeyframe.InterpolationParameters.Mode(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = 252 - (1u >> (8 * v5));
  if (v5 >= 4)
  {
    v6 = 252;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
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

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t getEnumTag for AnimatedValueKeyframe.InterpolationParameters.Mode(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 24;
  if (*(v2 + 64) > 0x18uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 3;
  if (v4 >= 3)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 3;
    LODWORD(v4) = v7 + 3;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for AnimatedValueKeyframe.InterpolationParameters.Mode(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x18uLL)
  {
    v3 = 24;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

void type metadata accessor for CapsuleSlider<ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>>()
{
  if (!lazy cache variable for type metadata for CapsuleSlider<ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>>)
  {
    type metadata accessor for ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for CapsuleSlider();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CapsuleSlider<ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>)
  {
    type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>);
    }
  }
}

void type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>()
{
  if (!lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>)
  {
    lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle();
    v0 = type metadata accessor for LabelStyleWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle()
{
  result = lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle;
  if (!lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>();
    lazy protocol witness table accessor for type CapsuleSlider<ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance CapsuleSlider<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>, type metadata accessor for LabelStyleWritingModifier<IconOnlyLabelStyle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CapsuleSlider<ModifiedContent<SliderStyleConfiguration.Label, LabelStyleWritingModifier<IconOnlyLabelStyle>>> and conformance CapsuleSlider<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.toolbarBackground<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = AnyShapeStyle.init<A>(_:)();
  v38 = 1;
  v37 = 1;
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v25 = a3;
    v26 = a5;
    v27 = v5;
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v36;
    v15 = a2 + 32;
    do
    {
      outlined init with copy of ToolbarPlacement(v15, &v32);
      outlined init with copy of ToolbarPlacement.Storage(&v32, &v28);
      if (*(&v29 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement(&v32);
        v16 = 0;
        v17 = 0uLL;
        v18 = 0uLL;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Storage(&v28);
        v17 = v32;
        v18 = v33;
        v16 = v34;
      }

      v36 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        v24 = v17;
        v23 = v18;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v18 = v23;
        v17 = v24;
        v14 = v36;
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 40 * v20;
      *(v21 + 32) = v17;
      *(v21 + 48) = v18;
      *(v21 + 64) = v16;
      v15 += 40;
      --v13;
    }

    while (v13);
    a5 = v26;
    a3 = v25;
  }

  LOBYTE(v28) = 3;
  *(&v28 + 1) = 0;
  *&v29 = v12;
  BYTE8(v29) = 4;
  *&v30 = 0;
  BYTE8(v30) = v38;
  *v31 = 0;
  v31[8] = v37;
  *&v31[9] = 770;
  v31[11] = 3;
  *&v31[16] = v14;
  v31[24] = 2;
  MEMORY[0x18D00A570](&v28, a3, &type metadata for ToolbarAppearanceModifier, a5);
  v34 = v30;
  v35[0] = *v31;
  *(v35 + 9) = *&v31[9];
  v32 = v28;
  v33 = v29;
  return outlined destroy of ToolbarAppearanceModifier(&v32);
}

uint64_t View.toolbarBackground(_:for:)(char a1, uint64_t a2, uint64_t a3)
{
  v29 = 1;
  v28 = 1;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v27;
    v8 = a2 + 32;
    do
    {
      outlined init with copy of ToolbarPlacement(v8, &v23);
      outlined init with copy of ToolbarPlacement.Storage(&v23, &v19);
      if (*(&v20 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement(&v23);
        v9 = 0;
        v10 = 0uLL;
        v11 = 0uLL;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Storage(&v19);
        v10 = v23;
        v11 = v24;
        v9 = v25;
      }

      v27 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v11;
        v17 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v17;
        v6 = v27;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 40 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
      *(v14 + 64) = v9;
      v8 += 40;
      --v5;
    }

    while (v5);
    a3 = v18;
  }

  LOBYTE(v19) = 3;
  *(&v19 + 1) = 0;
  *&v20 = 0;
  BYTE8(v20) = 0x30100u >> (8 * a1);
  *&v21 = 0;
  BYTE8(v21) = v29;
  *v22 = 0;
  v22[8] = v28;
  *&v22[9] = 770;
  v22[11] = 3;
  *&v22[16] = v6;
  v22[24] = 1;
  MEMORY[0x18D00A570](&v19, a3, &type metadata for ToolbarAppearanceModifier);
  v25 = v21;
  v26[0] = *v22;
  *(v26 + 9) = *&v22[9];
  v23 = v19;
  v24 = v20;
  return outlined destroy of ToolbarAppearanceModifier(&v23);
}

uint64_t View.toolbarColorScheme(_:for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v28 = 1;
  v27 = 1;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v26;
    v8 = a2 + 32;
    do
    {
      outlined init with copy of ToolbarPlacement(v8, &v22);
      outlined init with copy of ToolbarPlacement.Storage(&v22, &v18);
      if (*(&v19 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement(&v22);
        v9 = 0;
        v10 = 0uLL;
        v11 = 0uLL;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Storage(&v18);
        v10 = v22;
        v11 = v23;
        v9 = v24;
      }

      v26 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v11;
        v17 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v17;
        v6 = v26;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 40 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
      *(v14 + 64) = v9;
      v8 += 40;
      --v5;
    }

    while (v5);
  }

  LOBYTE(v18) = 3;
  *(&v18 + 1) = 0;
  *&v19 = 0;
  BYTE8(v19) = 4;
  *&v20 = 0;
  BYTE8(v20) = v28;
  *v21 = 0;
  v21[8] = v27;
  v21[9] = v4;
  *&v21[10] = 771;
  *&v21[16] = v6;
  v21[24] = 2;
  MEMORY[0x18D00A570](&v18, a3, &type metadata for ToolbarAppearanceModifier);
  v24 = v20;
  v25[0] = *v21;
  *(v25 + 9) = *&v21[9];
  v22 = v18;
  v23 = v19;
  return outlined destroy of ToolbarAppearanceModifier(&v22);
}

uint64_t View.toolbarForegroundStyle<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = AnyShapeStyle.init<A>(_:)();
  v38 = 1;
  v37 = 1;
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v25 = a3;
    v26 = a5;
    v27 = v5;
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v14 = v36;
    v15 = a2 + 32;
    do
    {
      outlined init with copy of ToolbarPlacement(v15, &v32);
      outlined init with copy of ToolbarPlacement.Storage(&v32, &v28);
      if (*(&v29 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement(&v32);
        v16 = 0;
        v17 = 0uLL;
        v18 = 0uLL;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Storage(&v28);
        v17 = v32;
        v18 = v33;
        v16 = v34;
      }

      v36 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        v24 = v17;
        v23 = v18;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v18 = v23;
        v17 = v24;
        v14 = v36;
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 40 * v20;
      *(v21 + 32) = v17;
      *(v21 + 48) = v18;
      *(v21 + 64) = v16;
      v15 += 40;
      --v13;
    }

    while (v13);
    a5 = v26;
    a3 = v25;
  }

  LOBYTE(v28) = 3;
  *(&v28 + 1) = v12;
  *&v29 = 0;
  BYTE8(v29) = 4;
  *&v30 = 0;
  BYTE8(v30) = v38;
  *v31 = 0;
  v31[8] = v37;
  *&v31[9] = 770;
  v31[11] = 3;
  *&v31[16] = v14;
  v31[24] = 2;
  MEMORY[0x18D00A570](&v28, a3, &type metadata for ToolbarAppearanceModifier, a5);
  v34 = v30;
  v35[0] = *v31;
  *(v35 + 9) = *&v31[9];
  v32 = v28;
  v33 = v29;
  return outlined destroy of ToolbarAppearanceModifier(&v32);
}

uint64_t View.avoidNavigationBarToToolbarConversion()()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.allowsNavigationBarToToolbarConversion.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.allowsNavigationBarToToolbarConversion : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.allowsNavigationBarToToolbarConversion : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t FocusedValues.toolbarVisibility.setter(uint64_t result)
{
  if (result != 3)
  {
    if ((*(v1 + 8) & 2) != 0)
    {
      if (one-time initialization token for scene == -1)
      {
LABEL_6:
        type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility>, &type metadata for FocusedValues.__Key_toolbarVisibility, &protocol witness table for FocusedValues.__Key_toolbarVisibility, type metadata accessor for FocusedValuePropertyKey);
        lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>();

        return PropertyList.subscript.setter();
      }
    }

    else if (one-time initialization token for view == -1)
    {
      goto LABEL_6;
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarBackgroundVisibility.Role and conformance ToolbarBackgroundVisibility.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarBackgroundVisibility.Role and conformance ToolbarBackgroundVisibility.Role;
  if (!lazy protocol witness table cache variable for type ToolbarBackgroundVisibility.Role and conformance ToolbarBackgroundVisibility.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarBackgroundVisibility.Role and conformance ToolbarBackgroundVisibility.Role);
  }

  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t))
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  a5(0);
  v17 = *(a8(0, a6, a7) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v20);
  if (!v18)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_29;
  }

  v20[2] = v15;
  v20[3] = 2 * ((result - v19) / v18);
LABEL_19:
  v22 = *(a8(0, a6, a7) - 8);
  if (v12)
  {
    if (v20 < a4 || (v23 = (*(v22 + 80) + 32) & ~*(v22 + 80), v20 + v23 >= a4 + v23 + *(v22 + 72) * v15))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v20 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v20;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  if (a3)
  {
    v13 = a4[3];
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = a4[2];
  if (v14 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    a5(0);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size_1(v17);
    v19 = v18 - 32;
    if (v18 < 32)
    {
      v19 = v18 - 1;
    }

    v17[2] = v15;
    v17[3] = 2 * (v19 >> 5);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v12)
  {
    if (v17 != a4 || v17 + 4 >= &a4[4 * v15 + 4])
    {
      memmove(v17 + 4, a4 + 4, 32 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(0, a6, a7, a8, type metadata accessor for BackgroundTaskEntry);
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    a8(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_1(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  v18 = 40 * v12;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v18])
    {
      memmove(v16, v17, v18);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v18);
  }

  return v14;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, void (*a5)(void))
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_1(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

void type metadata accessor for _ContiguousArrayStorage<[Text]>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<[Text]>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for [Text], MEMORY[0x1E6981148], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[Text]>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<BackgroundTaskEntry<AppRefreshBackgroundTask>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<AppRefreshBackgroundTask>>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for BackgroundTaskEntry<AppRefreshBackgroundTask>, &type metadata for AppRefreshBackgroundTask, &protocol witness table for AppRefreshBackgroundTask, type metadata accessor for BackgroundTaskEntry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<AppRefreshBackgroundTask>>);
    }
  }
}

void type metadata accessor for (Float, Float, Float, Float)()
{
  if (!lazy cache variable for type metadata for (Float, Float, Float, Float))
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (Float, Float, Float, Float));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ProxyCodable<Color>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ProxyCodable<Color>>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for ProxyCodable<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981578], MEMORY[0x1E697DEE0]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ProxyCodable<Color>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(name: String, value: String)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(name: String, value: String)>)
  {
    type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)(255, &lazy cache variable for type metadata for (name: String, value: String));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(name: String, value: String)>);
    }
  }
}

unint64_t type metadata accessor for PlatformListCell & UIFocusItem()
{
  result = lazy cache variable for type metadata for PlatformListCell & UIFocusItem;
  if (!lazy cache variable for type metadata for PlatformListCell & UIFocusItem)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformListCell & UIFocusItem);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: ToolbarStorage.Item)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: ToolbarStorage.Item)>)
  {
    type metadata accessor for (offset: Int, element: ToolbarStorage.Item)(255, &lazy cache variable for type metadata for (offset: Int, element: ToolbarStorage.Item), type metadata accessor for ToolbarStorage.Item);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: ToolbarStorage.Item)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<UIKitProxyFocusItem>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitProxyFocusItem>)
  {
    type metadata accessor for DropDelegate(255, &lazy cache variable for type metadata for UIKitProxyFocusItem);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitProxyFocusItem>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>)
  {
    type metadata accessor for (offset: Int, element: ToolbarStorage.Item)(255, &lazy cache variable for type metadata for (offset: Int, element: AccessibilityNode), type metadata accessor for AccessibilityNode);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(offset: Int, element: AccessibilityNode)>);
    }
  }
}

void type metadata accessor for (offset: Int, element: ToolbarStorage.Item)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(String, Any)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>)
  {
    type metadata accessor for (Badge, Spacer)(255, &lazy cache variable for type metadata for (String, Any));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<BackgroundTaskEntry<UnidentifiedURLSessionBackgroundTask>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<UnidentifiedURLSessionBackgroundTask>>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for BackgroundTaskEntry<UnidentifiedURLSessionBackgroundTask>, &type metadata for UnidentifiedURLSessionBackgroundTask, &protocol witness table for UnidentifiedURLSessionBackgroundTask, type metadata accessor for BackgroundTaskEntry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<UnidentifiedURLSessionBackgroundTask>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<BackgroundTaskEntry<URLSessionBackgroundTask>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<URLSessionBackgroundTask>>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for BackgroundTaskEntry<URLSessionBackgroundTask>, &type metadata for URLSessionBackgroundTask, &protocol witness table for URLSessionBackgroundTask, type metadata accessor for BackgroundTaskEntry);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<BackgroundTaskEntry<URLSessionBackgroundTask>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Attribute<TableRowList>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<TableRowList>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for Attribute<TableRowList>, &type metadata for TableRowList, MEMORY[0x1E698D388]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<TableRowList>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for ScrapedContentTree<ScrapeableContent.Item>, MEMORY[0x1E697F290], type metadata accessor for ScrapedContentTree);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>.Node>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>.Node>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for ScrapedContentTree<ScrapeableContent.Item>.Node, MEMORY[0x1E697F290], type metadata accessor for ScrapedContentTree.Node);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrapedContentTree<ScrapeableContent.Item>.Node>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<HitTestTrace<ResponderBasedHitTestTracing>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<HitTestTrace<ResponderBasedHitTestTracing>>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for HitTestTrace<ResponderBasedHitTestTracing>, &type metadata for ResponderBasedHitTestTracing, &protocol witness table for ResponderBasedHitTestTracing, type metadata accessor for HitTestTrace);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HitTestTrace<ResponderBasedHitTestTracing>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>;
  if (!lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility>, &type metadata for FocusedValues.__Key_toolbarVisibility, &protocol witness table for FocusedValues.__Key_toolbarVisibility, type metadata accessor for FocusedValuePropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedValuePropertyKey<FocusedValues.__Key_toolbarVisibility> and conformance FocusedValuePropertyKey<A>);
  }

  return result;
}

void type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for BackgroundTaskEntry<AppRefreshBackgroundTask>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Attribute<AccessibilityRotorEntryList>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<AccessibilityRotorEntryList>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for Attribute<AccessibilityRotorEntryList>, &type metadata for AccessibilityRotorEntryList, MEMORY[0x1E698D388]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<AccessibilityRotorEntryList>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<SliderMark<Double>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SliderMark<Double>>)
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for SliderMark<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderMark);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SliderMark<Double>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<SliderTick<Double>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SliderTick<Double>>)
  {
    _sSNy12CoreGraphics7CGFloatVGMaTm_0(255, &lazy cache variable for type metadata for SliderTick<Double>, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], type metadata accessor for SliderTick);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SliderTick<Double>>);
    }
  }
}

void _sSNy12CoreGraphics7CGFloatVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<String?>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<String?>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String?>);
    }
  }
}

void type metadata accessor for (UIViewController, TabEntry)()
{
  if (!lazy cache variable for type metadata for (UIViewController, TabEntry))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIViewController);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIViewController, TabEntry));
    }
  }
}

uint64_t specialized PlatformListViewBase<>.backgroundHost.getter(void (*a1)(double))
{
  type metadata accessor for UIBackgroundConfiguration?();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v3);
  v6 = type metadata accessor for UIBackgroundConfiguration();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    outlined destroy of UIBackgroundConfiguration?(v5);
    return 0;
  }

  v8 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v5);
  result = 0;
  if (v8)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ResolvedMultiDatePicker(char *a1, char *a2)
{
  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = v4;
    v8 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v8;
    v9 = *(v4 + 24);
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);

    if (v12(&a2[v9], 1, v10))
    {
      type metadata accessor for Date?();
      memcpy(&a1[v9], &a2[v9], *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&a1[v9], &a2[v9], v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
    }

    v14 = *(v7 + 28);
    if (v12(&a2[v14], 1, v10))
    {
      type metadata accessor for Date?();
      memcpy(&a1[v14], &a2[v14], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&a1[v14], &a2[v14], v10);
      (*(v11 + 56))(&a1[v14], 0, 1, v10);
    }
  }

  return a1;
}

uint64_t destroy for ResolvedMultiDatePicker(uint64_t a1)
{

  v2 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Date();
  v9 = *(v4 - 8);
  v5 = *(v9 + 48);
  if (!v5(a1 + v3, 1, v4))
  {
    (*(v9 + 8))(a1 + v3, v4);
  }

  v6 = *(v2 + 28);
  result = (v5)(a1 + v6, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v6, v4);
  }

  return result;
}

char *initializeWithCopy for ResolvedMultiDatePicker(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  *(a1 + 2) = *(a2 + 2);
  v13 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v13 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);

  if (v8(&a2[v5], 1, v6))
  {
    type metadata accessor for Date?();
    memcpy(&a1[v5], &a2[v5], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  v10 = *(v13 + 28);
  if (v8(&a2[v10], 1, v6))
  {
    type metadata accessor for Date?();
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  return a1;
}

char *assignWithCopy for ResolvedMultiDatePicker(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(&a1[v5], &a2[v5], v6);
      (*(v7 + 56))(&a1[v5], 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(&a1[v5], v6);
LABEL_6:
    type metadata accessor for Date?();
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(&a1[v5], &a2[v5], v6);
LABEL_7:
  v12 = *(v4 + 28);
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (!v13)
  {
    if (!v14)
    {
      (*(v7 + 24))(&a1[v12], &a2[v12], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    type metadata accessor for Date?();
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
  return a1;
}

uint64_t initializeWithTake for ResolvedMultiDatePicker(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2 + v5, 1, v6))
  {
    type metadata accessor for Date?();
    memcpy((a1 + v5), (a2 + v5), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v5, a2 + v5, v6);
    (*(v7 + 56))(a1 + v5, 0, 1, v6);
  }

  v10 = *(v4 + 28);
  if (v8(a2 + v10, 1, v6))
  {
    type metadata accessor for Date?();
    memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1 + v10, a2 + v10, v6);
    (*(v7 + 56))(a1 + v10, 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for ResolvedMultiDatePicker(char *a1, char *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(&a1[v5], &a2[v5], v6);
      (*(v7 + 56))(&a1[v5], 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(&a1[v5], v6);
LABEL_6:
    type metadata accessor for Date?();
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(&a1[v5], &a2[v5], v6);
LABEL_7:
  v12 = *(v4 + 28);
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (!v13)
  {
    if (!v14)
    {
      (*(v7 + 40))(&a1[v12], &a2[v12], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    type metadata accessor for Date?();
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
  return a1;
}

uint64_t type metadata completion function for ResolvedMultiDatePicker()
{
  result = type metadata accessor for MultiDatePickerStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MultiDatePickerStyleConfiguration(char *a1, char *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v8;
    v9 = *(a3 + 24);
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);

    if (v12(&a2[v9], 1, v10))
    {
      type metadata accessor for Date?();
      memcpy(&v7[v9], &a2[v9], *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v7[v9], &a2[v9], v10);
      (*(v11 + 56))(&v7[v9], 0, 1, v10);
    }

    v14 = *(a3 + 28);
    if (v12(&a2[v14], 1, v10))
    {
      type metadata accessor for Date?();
      memcpy(&v7[v14], &a2[v14], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v7[v14], &a2[v14], v10);
      (*(v11 + 56))(&v7[v14], 0, 1, v10);
    }
  }

  return v7;
}

uint64_t destroy for MultiDatePickerStyleConfiguration(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for Date();
  v10 = *(v5 - 8);
  v6 = *(v10 + 48);
  if (!v6(a1 + v4, 1, v5))
  {
    (*(v10 + 8))(a1 + v4, v5);
  }

  v7 = *(a2 + 28);
  result = (v6)(a1 + v7, 1, v5);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v7, v5);
  }

  return result;
}

char *initializeWithCopy for MultiDatePickerStyleConfiguration(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 1, v7))
  {
    type metadata accessor for Date?();
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v11 = *(a3 + 28);
  if (v9(&a2[v11], 1, v7))
  {
    type metadata accessor for Date?();
    memcpy(&a1[v11], &a2[v11], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v11], &a2[v11], v7);
    (*(v8 + 56))(&a1[v11], 0, 1, v7);
  }

  return a1;
}

char *assignWithCopy for MultiDatePickerStyleConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    type metadata accessor for Date?();
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(&a1[v6], &a2[v6], v7);
LABEL_7:
  v13 = *(a3 + 28);
  v14 = v9(&a1[v13], 1, v7);
  v15 = v9(&a2[v13], 1, v7);
  if (!v14)
  {
    if (!v15)
    {
      (*(v8 + 24))(&a1[v13], &a2[v13], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v13], v7);
    goto LABEL_12;
  }

  if (v15)
  {
LABEL_12:
    type metadata accessor for Date?();
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(&a1[v13], &a2[v13], v7);
  (*(v8 + 56))(&a1[v13], 0, 1, v7);
  return a1;
}

uint64_t initializeWithTake for MultiDatePickerStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(a2 + v6, 1, v7))
  {
    type metadata accessor for Date?();
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v11 = *(a3 + 28);
  if (v9(a2 + v11, 1, v7))
  {
    type metadata accessor for Date?();
    memcpy((a1 + v11), (a2 + v11), *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v11, a2 + v11, v7);
    (*(v8 + 56))(a1 + v11, 0, 1, v7);
  }

  return a1;
}

char *assignWithTake for MultiDatePickerStyleConfiguration(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 32))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    type metadata accessor for Date?();
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 40))(&a1[v6], &a2[v6], v7);
LABEL_7:
  v13 = *(a3 + 28);
  v14 = v9(&a1[v13], 1, v7);
  v15 = v9(&a2[v13], 1, v7);
  if (!v14)
  {
    if (!v15)
    {
      (*(v8 + 40))(&a1[v13], &a2[v13], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v13], v7);
    goto LABEL_12;
  }

  if (v15)
  {
LABEL_12:
    type metadata accessor for Date?();
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
    return a1;
  }

  (*(v8 + 32))(&a1[v13], &a2[v13], v7);
  (*(v8 + 56))(&a1[v13], 0, 1, v7);
  return a1;
}

void type metadata completion function for MultiDatePickerStyleConfiguration()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t MultiDatePickerValue.Init.base.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ResolvedMultiDatePicker(0);
  Value = AGGraphGetValue();

  return outlined init with copy of ResolvedMultiDatePicker(Value, a1);
}

uint64_t MultiDatePickerValue.Init.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ResolvedMultiDatePicker(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v2 + *(a1 + 36), v11, v13);
  MultiDatePickerValue.Init.base.getter(v10);
  outlined init with take of MultiDatePickerStyleConfiguration(v10, v7);
  return MultiDatePickerValue.init(style:configuration:)(v15, v7, v11, a2);
}

uint64_t MultiDatePickerValue.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for MultiDatePickerValue() + 36);

  return outlined init with take of MultiDatePickerStyleConfiguration(a2, v6);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance MultiDatePickerValue<A>.Init@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MultiDatePickerValue();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedMultiDatePicker()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(0, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>, type metadata accessor for MultiDatePickerValue);
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(0, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init, type metadata accessor for MultiDatePickerValue.Init);
  lazy protocol witness table accessor for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init();
  Attribute.init<A>(body:value:flags:update:)();
  return off_1EFFB3020();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedMultiDatePicker()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(0, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>, type metadata accessor for MultiDatePickerValue);
  type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(0, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init, type metadata accessor for MultiDatePickerValue.Init);
  lazy protocol witness table accessor for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init();
  Attribute.init<A>(body:value:flags:update:)();
  return off_1EFFB3028();
}

void type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AutomaticMultiDatePickerStyle, &protocol witness table for AutomaticMultiDatePickerStyle);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init()
{
  result = lazy protocol witness table cache variable for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init;
  if (!lazy protocol witness table cache variable for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init)
  {
    type metadata accessor for MultiDatePickerValue<AutomaticMultiDatePickerStyle>(255, &lazy cache variable for type metadata for MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init, type metadata accessor for MultiDatePickerValue.Init);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiDatePickerValue<AutomaticMultiDatePickerStyle>.Init and conformance MultiDatePickerValue<A>.Init);
  }

  return result;
}

uint64_t type metadata completion function for MultiDatePickerValue.Init()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for MultiDatePickerValue()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MultiDatePickerStyleConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MultiDatePickerValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(v9 + 64);
  }

  else
  {
    v11 = *(v9 + 64) + 1;
  }

  v12 = v10 | 7 | *(v6 + 80);
  if (v12 == 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((((-25 - v10) | v10) - (v11 + v10)) | v10) - ((((v10 | 7) + v7) & ~(v10 | 7)) + v11) >= 0xFFFFFFFFFFFFFFE7)
  {
    v17 = v8;
    v27 = v11 + v10;
    v18 = ~v10;
    (*(v6 + 16))(a1, a2, v5);
    v28 = a1;
    v19 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v19[1] = v20[1];
    v19[2] = v20[2];
    v21 = ((v19 + v10 + 24) & ~v10);
    v22 = ((v20 + v10 + 24) & ~v10);
    v23 = *(v9 + 48);

    if (v23(v22, 1, v17))
    {
      memcpy(v21, v22, v11);
    }

    else
    {
      (*(v9 + 16))(v21, v22, v17);
      (*(v9 + 56))(v21, 0, 1, v17);
    }

    v24 = &v21[v27];
    v25 = &v22[v27];
    if (v23((v25 & v18), 1, v17))
    {
      memcpy((v24 & v18), (v25 & v18), v11);
    }

    else
    {
      (*(v9 + 16))(v24 & v18, v25 & v18, v17);
      (*(v9 + 56))(v24 & v18, 0, 1, v17);
    }

    return v28;
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    v16 = v15 + ((v12 + 16) & ~v12);
  }

  return v16;
}

uint64_t destroy for MultiDatePickerValue(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56);
  v5 = type metadata accessor for Date();
  v16 = *(v5 - 8);
  v6 = *(v16 + 80);
  v7 = v4 + a1 + (v6 | 7);
  v8 = ~v6;
  v9 = v7 & ~v6 & 0xFFFFFFFFFFFFFFF8;

  v10 = (v6 + v9 + 24) & ~v6;
  v11 = *(v16 + 48);
  if (!v11(v10, 1, v5))
  {
    (*(v16 + 8))(v10, v5);
  }

  v12 = *(v16 + 64);
  if (*(v16 + 84))
  {
    v13 = v10 + v6 + v12;
  }

  else
  {
    v13 = v10 + v6 + v12 + 1;
  }

  result = (v11)(v13 & v8, 1, v5);
  if (!result)
  {
    v15 = *(v16 + 8);

    return v15(v13 & v8, v5);
  }

  return result;
}

uint64_t initializeWithCopy for MultiDatePickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v24 = a1;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  *v11 = *v12;
  v11[1] = v12[1];
  v11[2] = v12[2];
  v13 = ~v9;
  v14 = ((v11 + v9 + 24) & ~v9);
  v15 = ((v12 + v9 + 24) & ~v9);
  v16 = *(v8 + 48);

  if (v16(v15, 1, v7))
  {
    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
    if (v17)
    {
      v19 = *(v8 + 64);
    }

    else
    {
      v19 = v18 + 1;
    }

    memcpy(v14, v15, v19);
  }

  else
  {
    (*(v8 + 16))(v14, v15, v7);
    (*(v8 + 56))(v14, 0, 1, v7);
    v17 = *(v8 + 84);
    v18 = *(v8 + 64);
  }

  if (v17)
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 + 1;
  }

  v21 = &v14[v9 + v20];
  v22 = &v15[v9 + v20];
  if (v16((v22 & v13), 1, v7))
  {
    memcpy((v21 & v13), (v22 & v13), v20);
  }

  else
  {
    (*(v8 + 16))(v21 & v13, v22 & v13, v7);
    (*(v8 + 56))(v21 & v13, 0, 1, v7);
  }

  return v24;
}

uint64_t assignWithCopy for MultiDatePickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v28 = a1;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  *v11 = *v12;

  v11[1] = v12[1];

  v11[2] = v12[2];

  v13 = ~v9;
  v14 = ((v11 + v9 + 24) & ~v9);
  v15 = ((v12 + v9 + 24) & ~v9);
  v16 = *(v8 + 48);
  v17 = v16(v14, 1, v7);
  v18 = v16(v15, 1, v7);
  if (v17)
  {
    if (!v18)
    {
      (*(v8 + 16))(v14, v15, v7);
      (*(v8 + 56))(v14, 0, 1, v7);
      goto LABEL_12;
    }

    v19 = *(v8 + 84);
    v20 = *(v8 + 64);
  }

  else
  {
    if (!v18)
    {
      (*(v8 + 24))(v14, v15, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v14, v7);
    v19 = *(v8 + 84);
    v20 = *(v8 + 64);
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  memcpy(v14, v15, v21);
LABEL_12:
  if (*(v8 + 84))
  {
    v22 = *(v8 + 64);
  }

  else
  {
    v22 = *(v8 + 64) + 1;
  }

  v23 = &v14[v9 + v22];
  v24 = &v15[v9 + v22];
  v25 = v16((v23 & v13), 1, v7);
  v26 = v16((v24 & v13), 1, v7);
  if (!v25)
  {
    if (!v26)
    {
      (*(v8 + 24))(v23 & v13, v24 & v13, v7);
      return v28;
    }

    (*(v8 + 8))(v23 & v13, v7);
    goto LABEL_20;
  }

  if (v26)
  {
LABEL_20:
    memcpy((v23 & v13), (v24 & v13), v22);
    return v28;
  }

  (*(v8 + 16))(v23 & v13, v24 & v13, v7);
  (*(v8 + 56))(v23 & v13, 0, 1, v7);
  return v28;
}

uint64_t initializeWithTake for MultiDatePickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v25 = a1;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  v13 = *(v12 + 0x10);
  *v11 = *v12;
  *(v11 + 16) = v13;
  v14 = ~v9;
  v15 = ((v9 + 24 + v11) & ~v9);
  v16 = ((v9 + 24 + v12) & ~v9);
  v17 = *(v8 + 48);
  if (v17(v16, 1, v7))
  {
    v18 = *(v8 + 84);
    v19 = *(v8 + 64);
    if (v18)
    {
      v20 = *(v8 + 64);
    }

    else
    {
      v20 = v19 + 1;
    }

    memcpy(v15, v16, v20);
  }

  else
  {
    (*(v8 + 32))(v15, v16, v7);
    (*(v8 + 56))(v15, 0, 1, v7);
    v18 = *(v8 + 84);
    v19 = *(v8 + 64);
  }

  if (v18)
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 + 1;
  }

  v22 = &v15[v9 + v21];
  v23 = &v16[v9 + v21];
  if (v17((v23 & v14), 1, v7))
  {
    memcpy((v22 & v14), (v23 & v14), v21);
  }

  else
  {
    (*(v8 + 32))(v22 & v14, v23 & v14, v7);
    (*(v8 + 56))(v22 & v14, 0, 1, v7);
  }

  return v25;
}

uint64_t assignWithTake for MultiDatePickerValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v28 = a1;
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  *v11 = *v12;

  v11[1] = v12[1];

  v11[2] = v12[2];

  v13 = ~v9;
  v14 = ((v11 + v9 + 24) & ~v9);
  v15 = ((v12 + v9 + 24) & ~v9);
  v16 = *(v8 + 48);
  v17 = v16(v14, 1, v7);
  v18 = v16(v15, 1, v7);
  if (v17)
  {
    if (!v18)
    {
      (*(v8 + 32))(v14, v15, v7);
      (*(v8 + 56))(v14, 0, 1, v7);
      goto LABEL_12;
    }

    v19 = *(v8 + 84);
    v20 = *(v8 + 64);
  }

  else
  {
    if (!v18)
    {
      (*(v8 + 40))(v14, v15, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v14, v7);
    v19 = *(v8 + 84);
    v20 = *(v8 + 64);
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  memcpy(v14, v15, v21);
LABEL_12:
  if (*(v8 + 84))
  {
    v22 = *(v8 + 64);
  }

  else
  {
    v22 = *(v8 + 64) + 1;
  }

  v23 = &v14[v9 + v22];
  v24 = &v15[v9 + v22];
  v25 = v16((v23 & v13), 1, v7);
  v26 = v16((v24 & v13), 1, v7);
  if (!v25)
  {
    if (!v26)
    {
      (*(v8 + 40))(v23 & v13, v24 & v13, v7);
      return v28;
    }

    (*(v8 + 8))(v23 & v13, v7);
    goto LABEL_20;
  }

  if (v26)
  {
LABEL_20:
    memcpy((v23 & v13), (v24 & v13), v22);
    return v28;
  }

  (*(v8 + 32))(v23 & v13, v24 & v13, v7);
  (*(v8 + 56))(v23 & v13, 0, 1, v7);
  return v28;
}

uint64_t getEnumTagSinglePayload for MultiDatePickerValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v9 + 80);
  if (v11)
  {
    v16 = *(*(v8 - 8) + 64);
  }

  else
  {
    v16 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = (v15 | 7) + *(v6 + 64);
  v19 = v15 + 24;
  if (a2 <= v14)
  {
    goto LABEL_37;
  }

  v20 = (v18 & ~v17) + v16 + ((v16 + v15 + (v19 & ~v15)) & ~v15);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 < 2)
    {
LABEL_37:
      if (v7 >= v13)
      {
        v29 = *(v6 + 48);

        return v29(a1, v7, v5);
      }

      else if ((v12 & 0x80000000) != 0)
      {
        v30 = (*(v10 + 48))((v19 + ((a1 + v18) & ~v17)) & ~v15);
        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v28 = *(((a1 + v18) & ~v17) + 8);
        if (v28 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_37;
  }

LABEL_24:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v14 + (v27 | v25) + 1;
}

void storeEnumTagSinglePayload for MultiDatePickerValue(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(type metadata accessor for Date() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v11 + 80);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v14 | 7) + *(v8 + 64);
  if (v13)
  {
    v19 = *(v11 + 64);
  }

  else
  {
    v19 = *(v11 + 64) + 1;
  }

  v20 = ((v19 + v14 + ((v14 + 24) & ~v14)) & ~v14) + v19;
  v21 = v20 + (v18 & ~(v14 | 7));
  if (a3 <= v17)
  {
    goto LABEL_27;
  }

  if (v21 > 3)
  {
    v10 = 1;
    if (v17 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v24 = ~v17 + a2;
    if (v21 >= 4)
    {
      bzero(a1, v21);
      *a1 = v24;
      v25 = 1;
      if (v10 > 1)
      {
        goto LABEL_30;
      }

LABEL_65:
      if (v10)
      {
        a1[v21] = v25;
      }

      return;
    }

    v25 = (v24 >> (8 * v21)) + 1;
    if (v21)
    {
      v30 = v24 & ~(-1 << (8 * v21));
      bzero(a1, v21);
      if (v21 != 3)
      {
        if (v21 == 2)
        {
          *a1 = v30;
          if (v10 <= 1)
          {
            goto LABEL_65;
          }
        }

        else
        {
          *a1 = v24;
          if (v10 <= 1)
          {
            goto LABEL_65;
          }
        }

LABEL_30:
        if (v10 == 2)
        {
          *&a1[v21] = v25;
        }

        else
        {
          *&a1[v21] = v25;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v10 <= 1)
    {
      goto LABEL_65;
    }

    goto LABEL_30;
  }

  v22 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
  if (!HIWORD(v22))
  {
    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

LABEL_27:
    if (v17 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v10 = 4;
  if (v17 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v21] = 0;
  }

  else if (v10)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v16)
  {
    v31 = *(v34 + 56);

    v31(a1, a2, v9, v7);
  }

  else
  {
    v26 = (&a1[v18] & ~(v14 | 7));
    if (v16 >= a2)
    {
      if ((v15 & 0x80000000) != 0)
      {
        v26 = ((v26 + v14 + 24) & ~v14);
        if (v15 >= a2)
        {
          v33 = *(v12 + 56);

          v33(v26, (a2 + 1));
        }

        else
        {
          if (v19 <= 3)
          {
            v32 = ~(-1 << (8 * v19));
          }

          else
          {
            v32 = -1;
          }

          if (v19)
          {
            v28 = v32 & (~v15 + a2);
            if (v19 <= 3)
            {
              v29 = v19;
            }

            else
            {
              v29 = 4;
            }

            bzero(v26, v19);
            if (v29 <= 2)
            {
              if (v29 == 1)
              {
                goto LABEL_46;
              }

              goto LABEL_80;
            }

            goto LABEL_81;
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        v26[1] = 0;
        v26[2] = 0;
        *v26 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v26[1] = (a2 - 1);
      }
    }

    else
    {
      if (v20 <= 3)
      {
        v27 = ~(-1 << (8 * v20));
      }

      else
      {
        v27 = -1;
      }

      if (v20)
      {
        v28 = v27 & (~v16 + a2);
        if (v20 <= 3)
        {
          v29 = ((v19 + v14 + ((v14 + 24) & ~v14)) & ~v14) + v19;
        }

        else
        {
          v29 = 4;
        }

        bzero(v26, v20);
        if (v29 <= 2)
        {
          if (v29 == 1)
          {
LABEL_46:
            *v26 = v28;
            return;
          }

LABEL_80:
          *v26 = v28;
          return;
        }

LABEL_81:
        if (v29 == 3)
        {
          *v26 = v28;
          *(v26 + 2) = BYTE2(v28);
        }

        else
        {
          *v26 = v28;
        }
      }
    }
  }
}

unint64_t instantiation function for generic protocol witness table for MultiDatePickerStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of ResolvedMultiDatePicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedMultiDatePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t View.itemProvider(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v4 = swift_allocObject();
    v5 = a2;
    v6 = v4;
    a1 = v2;
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = _sSo14NSItemProviderCSgIego_ACIegr_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  outlined copy of AppIntentExecutor?(a1);
  View._trait<A>(_:_:)();
  return outlined consume of TriggerSubmitAction?(v7);
}

void type metadata accessor for _TraitWritingModifier<ItemProviderTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<ItemProviderTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<ItemProviderTraitKey>);
    }
  }
}

uint64_t type metadata completion function for ActiveControlLabelWrapper()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ActiveControlLabelWrapper(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v10 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    outlined copy of Environment<Bool>.Content(v12, v13);
    *(v10 + 8) = v12;
    *(v10 + 16) = v13;
  }

  return v3;
}

uint64_t destroy for ActiveControlLabelWrapper(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (*(v3 + 56) + a1) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);

  return outlined consume of Environment<Bool>.Content(v5, v6);
}

uint64_t initializeWithCopy for ActiveControlLabelWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 8);
  LOBYTE(v5) = *(v8 + 16);
  outlined copy of Environment<Bool>.Content(v10, v5);
  *(v9 + 8) = v10;
  *(v9 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ActiveControlLabelWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 8);
  LOBYTE(v5) = *(v8 + 16);
  outlined copy of Environment<Bool>.Content(v10, v5);
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *(v9 + 8) = v10;
  *(v9 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v11, v12);
  return a1;
}

uint64_t initializeWithTake for ActiveControlLabelWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = v9;
  return a1;
}

uint64_t assignWithTake for ActiveControlLabelWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  LOBYTE(v8) = *(v8 + 16);
  v10 = *(v7 + 8);
  v11 = *(v7 + 16);
  *(v7 + 8) = v9;
  *(v7 + 16) = v8;
  outlined consume of Environment<Bool>.Content(v10, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for ActiveControlLabelWrapper(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 17;
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

    v17 = a1[v6];
    if (v17 >= 2)
    {
      return v17 - 1;
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

void storeEnumTagSinglePayload for ActiveControlLabelWrapper(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 17;
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
        a1[v9] = a2 + 1;
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
  bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 17);
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

void type metadata accessor for _EnvironmentKeyTransformModifier<ColorScheme>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ColorScheme>)
  {
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ColorScheme>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ColorScheme>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier>();
    lazy protocol witness table accessor for type PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance PlatformItemLabelView<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier>)
  {
    type metadata accessor for PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>, ScrollEdgeEffectTagModifier>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<SidebarDimmingIgnoresSafeAreaTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t static InsetGroupedListStyle._makeView<A>(value:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v36 = a2[2];
  v37 = v7;
  v38 = a2[4];
  v39 = *(a2 + 20);
  v8 = a2[1];
  v34 = *a2;
  v35 = v8;
  v27 = v6;
  v23 = &type metadata for InsetGroupedListStyle;
  *&v24 = a3;
  *(&v24 + 1) = &protocol witness table for InsetGroupedListStyle;
  *&v25 = a4;
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  v9 = _GraphValue.value.getter();
  memset(v32, 0, sizeof(v32));
  v33 = 1;
  v10 = lazy protocol witness table accessor for type InsetGroupedListStyleContext and conformance InsetGroupedListStyleContext();
  InsettableGroupedListBodyRule.init(base:insetMode:context:)(v9, v32, v11, &type metadata for InsetGroupedListStyleContext, &v23);
  v12 = v23;
  v13 = v26;
  v14 = BYTE1(v26);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>>();
  v16 = v15;
  v17 = type metadata accessor for SelectionManagerBox();
  v18 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetGroupedListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v21 = v25;
  v22 = v24;
  WitnessTable = swift_getWitnessTable();
  v23 = v16;
  *&v24 = v17;
  *(&v24 + 1) = v18;
  *&v25 = WitnessTable;
  type metadata accessor for InsettableGroupedListBody();
  v27 = v12;
  v29 = v21;
  v28 = v22;
  v30 = v13;
  v31 = v14;
  v23 = &type metadata for InsetGroupedListStyle;
  *&v24 = &type metadata for InsetGroupedListStyleContext;
  *(&v24 + 1) = a3;
  *&v25 = &protocol witness table for InsetGroupedListStyle;
  *(&v25 + 1) = v10;
  v26 = a4;
  type metadata accessor for InsettableGroupedListBodyRule();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t UIKitCalendarView.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of MultiDatePickerStyleConfiguration(a1, a2);
  v3 = type metadata accessor for UIKitCalendarView(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = v3[6];
  *(a2 + v6) = swift_getKeyPath();
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], v5);
  swift_storeEnumTagMultiPayload();
  v7 = v3[7];
  *(a2 + v7) = swift_getKeyPath();
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], v5);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v3[8];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a2 + v3[9];
  result = swift_getKeyPath();
  *v9 = result;
  *(v9 + 8) = 0;
  return result;
}

uint64_t UIKitCalendarView.fontDesign.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for UIKitCalendarView(0);
  v4 = specialized Environment.wrappedValue.getter(*(v1 + *(v3 + 36)), *(v1 + *(v3 + 36) + 8));
  v5 = v4;
  v15 = v4;
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (!__OFSUB__(v6--, 1))
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x18D00E9C0](v6, v5);
LABEL_8:
        type metadata accessor for AnyDynamicFontModifier<Font.DesignModifier>();
        v8 = swift_dynamicCastClass();
        v9 = v8 == 0;

        if (v8 || !v6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_13;
        }

        if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          goto LABEL_8;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        v4 = __CocoaSet.count.getter();
        v6 = v4;
        if (!v4)
        {
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  v9 = 1;
LABEL_17:
  MEMORY[0x1EEE9AC00](v4);
  v14[2] = &v15;
  v10 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_So16UIViewControllerCTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v14, v6, v9);

  if (v10)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.DesignModifier>();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = *(v12 + 16);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  *a1 = v13;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance UIKitCalendarView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>();
  v6 = *(v5 + 40);
  outlined init with copy of MultiDatePickerStyleConfiguration(v2, a2);
  v7 = type metadata accessor for UIKitCalendarViewRepresentable(0);
  specialized Environment.wrappedValue.getter(a2 + v7[5]);
  specialized Environment.wrappedValue.getter(a2 + v7[6]);
  specialized Environment.wrappedValue.getter(a2 + v7[7]);
  v8 = specialized Environment.wrappedValue.getter(*(v2 + *(a1 + 32)), *(v2 + *(a1 + 32) + 8));
  result = UIKitCalendarView.fontDesign.getter(&v11);
  v10 = v11;
  *(a2 + v7[8]) = v8;
  *(a2 + v7[9]) = v10;
  *(a2 + v6) = 2;
  return result;
}

uint64_t @objc UIKitCalendarViewRepresentable.Coordinator.multiDateSelection(_:didSelectDate:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for DateComponents();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t type metadata completion function for UIKitCalendarViewRepresentable.Coordinator()
{
  result = type metadata accessor for MultiDatePickerStyleConfiguration(319);
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

uint64_t outlined destroy of MultiDatePickerStyleConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void UIKitCalendarViewRepresentable.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DateInterval();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  v64 = *(a2 + 40);
  v22 = type metadata accessor for UIKitCalendarViewRepresentable(0);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  [a1 setLocale_];

  v24 = Calendar._bridgeToObjectiveC()().super.isa;
  [a1 setCalendar_];

  v65 = v22;
  v25 = TimeZone._bridgeToObjectiveC()().super.isa;
  v26 = a1;
  [a1 setTimeZone_];

  v27 = v14;
  v28 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v29 = *(v28 + 24);
  v66 = v3;
  outlined init with copy of Date?(v3 + v29, v12);
  v30 = *(v27 + 48);
  v31 = v30(v12, 1, v13);
  v58 = v18;
  if (v31 == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v12, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v32 = v27;
    v33 = &selRef_bundleIdentifier;
  }

  else
  {
    (*(v27 + 32))(v21, v12, v13);
    (*(v27 + 16))(v18, v21, v13);
    v32 = v27;
    v34 = [a1 availableDateRange];
    v35 = v61;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.start.setter();
    v36 = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v62 + 8))(v35, v63);
    [a1 setAvailableDateRange_];

    (*(v32 + 8))(v21, v13);
    v26 = a1;
    v33 = &selRef_bundleIdentifier;
  }

  v37 = v66;
  v38 = v60;
  outlined init with copy of Date?(v66 + *(v28 + 28), v60);
  if (v30(v38, 1, v13) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v38, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  }

  else
  {
    v39 = v59;
    (*(v32 + 32))(v59, v38, v13);
    (*(v32 + 16))(v58, v39, v13);
    v40 = [v26 availableDateRange];
    v41 = v61;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.end.setter();
    v42 = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v62 + 8))(v41, v63);
    [v26 v33[402]];

    (*(v32 + 8))(v39, v13);
  }

  v43 = v65;
  v44 = *(v65 + 32);
  if (*(v37 + v44))
  {
    v45 = *(v37 + v44);
  }

  else
  {
    v45 = static Color.blue.getter();
  }

  type metadata accessor for UIColor();

  v46 = UIColor.init(_:)(v45);
  [v26 setTintColor_];

  v47 = objc_allocWithZone(MEMORY[0x1E69DC748]);
  v48 = [v47 initWithDelegate_];
  v67 = *v37;
  v68 = *(v37 + 1);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Binding<Set<DateComponents>>, type metadata accessor for Set<DateComponents>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v69);
  v49 = v69;
  v50 = *(v69 + 16);
  if (!v50)
  {
    goto LABEL_13;
  }

  v51 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation14DateComponentsV_Tt1g5(*(v69 + 16), 0);
  v52 = *(type metadata accessor for DateComponents() - 8);
  specialized Sequence._copySequenceContents(initializing:)(&v67, (v51 + ((*(v52 + 80) + 32) & ~*(v52 + 80))), v50, v49);
  v54 = v53;
  outlined consume of Set<UIPress>.Iterator._Variant();
  if (v54 != v50)
  {
    __break(1u);
LABEL_13:
  }

  type metadata accessor for DateComponents();
  v55 = Array._bridgeToObjectiveC()().super.isa;

  [v48 setSelectedDates_];

  [v26 setSelectionBehavior_];
  v56 = **(&unk_1E7238140 + *(v37 + *(v43 + 36)));
  [v26 setFontDesign_];
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance UIKitCalendarViewRepresentable()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC760]);

  return [v0 init];
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitCalendarViewRepresentable@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MultiDatePickerStyleConfiguration(v1, v5);
  v6 = type metadata accessor for UIKitCalendarViewRepresentable.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  outlined init with copy of MultiDatePickerStyleConfiguration(v5, v7 + OBJC_IVAR____TtCV7SwiftUIP33_1CD2D554D5FF79B0EC2610FA354BC03430UIKitCalendarViewRepresentable11Coordinator_configuration);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = outlined destroy of MultiDatePickerStyleConfiguration(v5);
  *a1 = v8;
  return result;
}

uint64_t specialized UIKitCalendarViewRepresentable.Coordinator.multiDateSelection(_:didSelectDate:)(uint64_t a1)
{
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = (v1 + OBJC_IVAR____TtCV7SwiftUIP33_1CD2D554D5FF79B0EC2610FA354BC03430UIKitCalendarViewRepresentable11Coordinator_configuration);
  (*(v4 + 16))(v6, a1, v3, v8);
  v15 = *v11;
  v13 = *(v11 + 1);
  v16 = v13;
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Binding<Set<DateComponents>>, type metadata accessor for Set<DateComponents>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v17);
  specialized Set._Variant.insert(_:)(v10, v6);
  (*(v4 + 8))(v10, v3);
  v14 = v17;
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t specialized UIKitCalendarViewRepresentable.Coordinator.multiDateSelection(_:didDeselectDate:)(uint64_t a1)
{
  v3 = MEMORY[0x1E6968278];
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  v11 = *(v1 + OBJC_IVAR____TtCV7SwiftUIP33_1CD2D554D5FF79B0EC2610FA354BC03430UIKitCalendarViewRepresentable11Coordinator_configuration);
  v9 = *(v1 + OBJC_IVAR____TtCV7SwiftUIP33_1CD2D554D5FF79B0EC2610FA354BC03430UIKitCalendarViewRepresentable11Coordinator_configuration + 8);
  v12 = v9;
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Binding<Set<DateComponents>>, type metadata accessor for Set<DateComponents>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v13);
  specialized Set._Variant.remove(_:)(a1, v7);
  _s10Foundation4DateVSgWOhTm_0(v7, &lazy cache variable for type metadata for DateComponents?, v3, v4);
  v10 = v13;
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

void type metadata accessor for Set<DateComponents>()
{
  if (!lazy cache variable for type metadata for Set<DateComponents>)
  {
    type metadata accessor for DateComponents();
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<DateComponents>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DateComponents and conformance DateComponents()
{
  result = lazy protocol witness table cache variable for type DateComponents and conformance DateComponents;
  if (!lazy protocol witness table cache variable for type DateComponents and conformance DateComponents)
  {
    type metadata accessor for DateComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents and conformance DateComponents);
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for DateComponents?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for UIKitCalendarView(char *a1, char *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v7 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v7;
    v31 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
    v8 = *(v31 + 24);
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v6[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v6[v8], &a2[v8], v9);
      (*(v10 + 56))(&v6[v8], 0, 1, v9);
    }

    v13 = *(v31 + 28);
    if (v11(&a2[v13], 1, v9))
    {
      type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v6[v13], &a2[v13], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v6[v13], &a2[v13], v9);
      (*(v10 + 56))(&v6[v13], 0, 1, v9);
    }

    v15 = a3[5];
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for Locale();
      (*(*(v16 - 8) + 16))(&v6[v15], &a2[v15], v16);
    }

    else
    {
      *&v6[v15] = *&a2[v15];
    }

    swift_storeEnumTagMultiPayload();
    v17 = a3[6];
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = type metadata accessor for Calendar();
      (*(*(v18 - 8) + 16))(&v6[v17], &a2[v17], v18);
    }

    else
    {
      *&v6[v17] = *&a2[v17];
    }

    swift_storeEnumTagMultiPayload();
    v19 = a3[7];
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = type metadata accessor for TimeZone();
      (*(*(v20 - 8) + 16))(&v6[v19], &a2[v19], v20);
    }

    else
    {
      *&v6[v19] = *&a2[v19];
    }

    swift_storeEnumTagMultiPayload();
    v21 = a3[8];
    v22 = &v6[v21];
    v23 = &a2[v21];
    v24 = *v23;
    v25 = v23[8];
    outlined copy of Environment<Color?>.Content(*v23, v25);
    *v22 = v24;
    v22[8] = v25;
    v26 = a3[9];
    v27 = &v6[v26];
    v28 = &a2[v26];
    v29 = *v28;
    LOBYTE(v22) = v28[8];
    outlined copy of ResolvedTableRowIDs.Storage(*v28, v22);
    *v27 = v29;
    v27[8] = v22;
  }

  return v6;
}

uint64_t destroy for UIKitCalendarView(uint64_t a1, int *a2)
{

  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v9 = *(v4 + 28);
  if (!v8(a1 + v9, 1, v6))
  {
    (*(v7 + 8))(a1 + v9, v6);
  }

  v10 = a2[5];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Locale();
    (*(*(v11 - 8) + 8))(a1 + v10, v11);
  }

  else
  {
  }

  v12 = a2[6];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for Calendar();
    (*(*(v13 - 8) + 8))(a1 + v12, v13);
  }

  else
  {
  }

  v14 = a2[7];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for TimeZone();
    (*(*(v15 - 8) + 8))(a1 + v14, v15);
  }

  else
  {
  }

  outlined consume of Environment<Color?>.Content(*(a1 + a2[8]), *(a1 + a2[8] + 8));
  v16 = a1 + a2[9];
  v17 = *v16;
  v18 = *(v16 + 8);

  return outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v17, v18);
}

char *initializeWithCopy for UIKitCalendarView(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v29 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v6 = *(v29 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 1, v7))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v11 = *(v29 + 28);
  if (v9(&a2[v11], 1, v7))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v11], &a2[v11], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v11], &a2[v11], v7);
    (*(v8 + 56))(&a1[v11], 0, 1, v7);
  }

  v13 = a3[5];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for Locale();
    (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
  }

  else
  {
    *&a1[v13] = *&a2[v13];
  }

  swift_storeEnumTagMultiPayload();
  v15 = a3[6];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for Calendar();
    (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
  }

  else
  {
    *&a1[v15] = *&a2[v15];
  }

  swift_storeEnumTagMultiPayload();
  v17 = a3[7];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for TimeZone();
    (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  }

  else
  {
    *&a1[v17] = *&a2[v17];
  }

  swift_storeEnumTagMultiPayload();
  v19 = a3[8];
  v20 = &a1[v19];
  v21 = &a2[v19];
  v22 = *v21;
  v23 = v21[8];
  outlined copy of Environment<Color?>.Content(*v21, v23);
  *v20 = v22;
  v20[8] = v23;
  v24 = a3[9];
  v25 = &a1[v24];
  v26 = &a2[v24];
  v27 = *v26;
  LOBYTE(v20) = v26[8];
  outlined copy of ResolvedTableRowIDs.Storage(*v26, v20);
  *v25 = v27;
  v25[8] = v20;
  return a1;
}

char *assignWithCopy for UIKitCalendarView(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 16))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 24))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = *(v6 + 28);
  v15 = v10(&a1[v14], 1, v8);
  v16 = v10(&a2[v14], 1, v8);
  if (v15)
  {
    if (!v16)
    {
      (*(v9 + 16))(&a1[v14], &a2[v14], v8);
      (*(v9 + 56))(&a1[v14], 0, 1, v8);
      if (a1 == a2)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

LABEL_13:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v14], &a2[v14], *(*(v17 - 8) + 64));
    if (a1 == a2)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  if (v16)
  {
    (*(v9 + 8))(&a1[v14], v8);
    goto LABEL_13;
  }

  (*(v9 + 24))(&a1[v14], &a2[v14], v8);
  if (a1 == a2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = a3[5];
  v19 = MEMORY[0x1E6969770];
  v20 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v18], &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for Locale();
    (*(*(v21 - 8) + 16))(&a1[v18], &a2[v18], v21);
  }

  else
  {
    *&a1[v18] = *&a2[v18];
  }

  swift_storeEnumTagMultiPayload();
  v22 = a3[6];
  v23 = MEMORY[0x1E6969AE8];
  v24 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v22], &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, v23, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = type metadata accessor for Calendar();
    (*(*(v25 - 8) + 16))(&a1[v22], &a2[v22], v25);
  }

  else
  {
    *&a1[v22] = *&a2[v22];
  }

  swift_storeEnumTagMultiPayload();
  v26 = a3[7];
  v27 = MEMORY[0x1E6969BC0];
  v28 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v26], &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, v27, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = type metadata accessor for TimeZone();
    (*(*(v29 - 8) + 16))(&a1[v26], &a2[v26], v29);
  }

  else
  {
    *&a1[v26] = *&a2[v26];
  }

  swift_storeEnumTagMultiPayload();
LABEL_24:
  v30 = a3[8];
  v31 = &a1[v30];
  v32 = &a2[v30];
  v33 = *v32;
  v34 = v32[8];
  outlined copy of Environment<Color?>.Content(*v32, v34);
  v35 = *v31;
  v36 = v31[8];
  *v31 = v33;
  v31[8] = v34;
  outlined consume of Environment<Color?>.Content(v35, v36);
  v37 = a3[9];
  v38 = &a1[v37];
  v39 = &a2[v37];
  v40 = *v39;
  v41 = v39[8];
  outlined copy of ResolvedTableRowIDs.Storage(*v39, v41);
  v42 = *v38;
  v43 = v38[8];
  *v38 = v40;
  v38[8] = v41;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v42, v43);
  return a1;
}

uint64_t initializeWithTake for UIKitCalendarView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(a2 + v7, 1, v8))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v7), (a2 + v7), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v12 = *(v6 + 28);
  if (v10(a2 + v12, 1, v8))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v12), (a2 + v12), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v12, a2 + v12, v8);
    (*(v9 + 56))(a1 + v12, 0, 1, v8);
  }

  v14 = a3[5];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  v16 = v15;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for Locale();
    (*(*(v17 - 8) + 32))(a1 + v14, a2 + v14, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v14), (a2 + v14), *(*(v16 - 8) + 64));
  }

  v18 = a3[6];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  v20 = v19;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for Calendar();
    (*(*(v21 - 8) + 32))(a1 + v18, a2 + v18, v21);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v18), (a2 + v18), *(*(v20 - 8) + 64));
  }

  v22 = a3[7];
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  v24 = v23;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = type metadata accessor for TimeZone();
    (*(*(v25 - 8) + 32))(a1 + v22, a2 + v22, v25);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a1 + v22), (a2 + v22), *(*(v24 - 8) + 64));
  }

  v26 = a3[8];
  v27 = a3[9];
  v28 = a1 + v26;
  v29 = a2 + v26;
  *v28 = *v29;
  *(v28 + 8) = *(v29 + 8);
  v30 = a1 + v27;
  v31 = a2 + v27;
  *v30 = *v31;
  *(v30 + 8) = *(v31 + 8);
  return a1;
}

char *assignWithTake for UIKitCalendarView(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = *(v6 + 28);
  v15 = v10(&a1[v14], 1, v8);
  v16 = v10(&a2[v14], 1, v8);
  if (v15)
  {
    if (!v16)
    {
      (*(v9 + 32))(&a1[v14], &a2[v14], v8);
      (*(v9 + 56))(&a1[v14], 0, 1, v8);
      if (a1 == a2)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

LABEL_13:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v14], &a2[v14], *(*(v17 - 8) + 64));
    if (a1 == a2)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (v16)
  {
    (*(v9 + 8))(&a1[v14], v8);
    goto LABEL_13;
  }

  (*(v9 + 40))(&a1[v14], &a2[v14], v8);
  if (a1 == a2)
  {
    goto LABEL_23;
  }

LABEL_14:
  v18 = a3[5];
  v19 = MEMORY[0x1E6969770];
  v20 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v18], &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Locale>.Content, v19, v20);
  v22 = v21;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = type metadata accessor for Locale();
    (*(*(v23 - 8) + 32))(&a1[v18], &a2[v18], v23);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v18], &a2[v18], *(*(v22 - 8) + 64));
  }

  v24 = a3[6];
  v25 = MEMORY[0x1E6969AE8];
  v26 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v24], &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, v25, v26);
  v28 = v27;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = type metadata accessor for Calendar();
    (*(*(v29 - 8) + 32))(&a1[v24], &a2[v24], v29);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v24], &a2[v24], *(*(v28 - 8) + 64));
  }

  v30 = a3[7];
  v31 = MEMORY[0x1E6969BC0];
  v32 = MEMORY[0x1E697DCB8];
  _s10Foundation4DateVSgWOhTm_0(&a1[v30], &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, v31, v32);
  v34 = v33;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = type metadata accessor for TimeZone();
    (*(*(v35 - 8) + 32))(&a1[v30], &a2[v30], v35);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v30], &a2[v30], *(*(v34 - 8) + 64));
  }

LABEL_23:
  v36 = a3[8];
  v37 = &a1[v36];
  v38 = &a2[v36];
  v39 = *v38;
  LOBYTE(v38) = v38[8];
  v40 = *v37;
  v41 = v37[8];
  *v37 = v39;
  v37[8] = v38;
  outlined consume of Environment<Color?>.Content(v40, v41);
  v42 = a3[9];
  v43 = &a1[v42];
  v44 = &a2[v42];
  v45 = *v44;
  LOBYTE(v44) = v44[8];
  v46 = *v43;
  v47 = v43[8];
  *v43 = v45;
  v43[8] = v44;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v46, v47);
  return a1;
}

void type metadata completion function for UIKitCalendarView()
{
  type metadata accessor for MultiDatePickerStyleConfiguration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DateComponents?(319, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DateComponents?(319, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DateComponents?(319, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
        if (v3 <= 0x3F)
        {
          swift_initStructMetadata();
        }
      }
    }
  }
}

void type metadata accessor for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>()
{
  if (!lazy cache variable for type metadata for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>)
  {
    type metadata accessor for UIKitCalendarViewRepresentable(255);
    v0 = type metadata accessor for LabeledContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>);
    }
  }
}

uint64_t outlined init with copy of MultiDatePickerStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AnyDynamicFontModifier<Font.DesignModifier>()
{
  if (!lazy cache variable for type metadata for AnyDynamicFontModifier<Font.DesignModifier>)
  {
    lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier();
    v0 = type metadata accessor for AnyDynamicFontModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.DesignModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier()
{
  result = lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier;
  if (!lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for UIKitCalendarViewRepresentable(char *a1, char *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v7 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v7;
    v24 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
    v8 = *(v24 + 24);
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }

    v13 = *(v24 + 28);
    if (v11(&a2[v13], 1, v9))
    {
      type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&a1[v13], &a2[v13], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v13], &a2[v13], v9);
      (*(v10 + 56))(&a1[v13], 0, 1, v9);
    }

    v15 = a3[5];
    v16 = type metadata accessor for Locale();
    (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
    v17 = a3[6];
    v18 = type metadata accessor for Calendar();
    (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
    v19 = a3[7];
    v20 = type metadata accessor for TimeZone();
    (*(*(v20 - 8) + 16))(&a1[v19], &a2[v19], v20);
    v21 = a3[9];
    *&a1[a3[8]] = *&a2[a3[8]];
    a1[v21] = a2[v21];
  }

  return a1;
}

uint64_t destroy for UIKitCalendarViewRepresentable(uint64_t a1, int *a2)
{

  v4 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v9 = *(v4 + 28);
  if (!v8(a1 + v9, 1, v6))
  {
    (*(v7 + 8))(a1 + v9, v6);
  }

  v10 = a2[5];
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 8))(a1 + v10, v11);
  v12 = a2[6];
  v13 = type metadata accessor for Calendar();
  (*(*(v13 - 8) + 8))(a1 + v12, v13);
  v14 = a2[7];
  v15 = type metadata accessor for TimeZone();
  (*(*(v15 - 8) + 8))(a1 + v14, v15);
}

char *initializeWithCopy for UIKitCalendarViewRepresentable(char *a1, char *a2, int *a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v21 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v6 = *(v21 + 24);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 1, v7))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v11 = *(v21 + 28);
  if (v9(&a2[v11], 1, v7))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v11], &a2[v11], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v11], &a2[v11], v7);
    (*(v8 + 56))(&a1[v11], 0, 1, v7);
  }

  v13 = a3[5];
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
  v15 = a3[6];
  v16 = type metadata accessor for Calendar();
  (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
  v17 = a3[7];
  v18 = type metadata accessor for TimeZone();
  (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  v19 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  a1[v19] = a2[v19];

  return a1;
}

char *assignWithCopy for UIKitCalendarViewRepresentable(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 16))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 24))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = *(v6 + 28);
  v15 = v10(&a1[v14], 1, v8);
  v16 = v10(&a2[v14], 1, v8);
  if (!v15)
  {
    if (!v16)
    {
      (*(v9 + 24))(&a1[v14], &a2[v14], v8);
      goto LABEL_13;
    }

    (*(v9 + 8))(&a1[v14], v8);
    goto LABEL_12;
  }

  if (v16)
  {
LABEL_12:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v14], &a2[v14], *(*(v17 - 8) + 64));
    goto LABEL_13;
  }

  (*(v9 + 16))(&a1[v14], &a2[v14], v8);
  (*(v9 + 56))(&a1[v14], 0, 1, v8);
LABEL_13:
  v18 = a3[5];
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 24))(&a1[v18], &a2[v18], v19);
  v20 = a3[6];
  v21 = type metadata accessor for Calendar();
  (*(*(v21 - 8) + 24))(&a1[v20], &a2[v20], v21);
  v22 = a3[7];
  v23 = type metadata accessor for TimeZone();
  (*(*(v23 - 8) + 24))(&a1[v22], &a2[v22], v23);
  *&a1[a3[8]] = *&a2[a3[8]];

  a1[a3[9]] = a2[a3[9]];
  return a1;
}

uint64_t initializeWithTake for UIKitCalendarViewRepresentable(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(a2 + v7, 1, v8))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v7), (a2 + v7), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v12 = *(v6 + 28);
  if (v10(a2 + v12, 1, v8))
  {
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v12), (a2 + v12), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v12, a2 + v12, v8);
    (*(v9 + 56))(a1 + v12, 0, 1, v8);
  }

  v14 = a3[5];
  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
  v16 = a3[6];
  v17 = type metadata accessor for Calendar();
  (*(*(v17 - 8) + 32))(a1 + v16, a2 + v16, v17);
  v18 = a3[7];
  v19 = type metadata accessor for TimeZone();
  (*(*(v19 - 8) + 32))(a1 + v18, a2 + v18, v19);
  v20 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v20) = *(a2 + v20);
  return a1;
}

char *assignWithTake for UIKitCalendarViewRepresentable(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);

  v6 = type metadata accessor for MultiDatePickerStyleConfiguration(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(&a1[v7], 1, v8);
  v12 = v10(&a2[v7], 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v9 + 8))(&a1[v7], v8);
LABEL_6:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v7], &a2[v7], *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 40))(&a1[v7], &a2[v7], v8);
LABEL_7:
  v14 = *(v6 + 28);
  v15 = v10(&a1[v14], 1, v8);
  v16 = v10(&a2[v14], 1, v8);
  if (!v15)
  {
    if (!v16)
    {
      (*(v9 + 40))(&a1[v14], &a2[v14], v8);
      goto LABEL_13;
    }

    (*(v9 + 8))(&a1[v14], v8);
    goto LABEL_12;
  }

  if (v16)
  {
LABEL_12:
    type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v14], &a2[v14], *(*(v17 - 8) + 64));
    goto LABEL_13;
  }

  (*(v9 + 32))(&a1[v14], &a2[v14], v8);
  (*(v9 + 56))(&a1[v14], 0, 1, v8);
LABEL_13:
  v18 = a3[5];
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 40))(&a1[v18], &a2[v18], v19);
  v20 = a3[6];
  v21 = type metadata accessor for Calendar();
  (*(*(v21 - 8) + 40))(&a1[v20], &a2[v20], v21);
  v22 = a3[7];
  v23 = type metadata accessor for TimeZone();
  (*(*(v23 - 8) + 40))(&a1[v22], &a2[v22], v23);
  *&a1[a3[8]] = *&a2[a3[8]];

  a1[a3[9]] = a2[a3[9]];
  return a1;
}

uint64_t type metadata completion function for UIKitCalendarViewRepresentable()
{
  result = type metadata accessor for MultiDatePickerStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Calendar();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TimeZone();
        if (v4 <= 0x3F)
        {
          swift_initStructMetadata();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier>();
    lazy protocol witness table accessor for type LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable> and conformance <> LabeledContent<A, B>();
    lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier>)
  {
    type metadata accessor for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>, LabelsHiddenModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable> and conformance <> LabeledContent<A, B>)
  {
    type metadata accessor for LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<MultiDatePickerStyleConfiguration.Label, UIKitCalendarViewRepresentable> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

double (*_LayoutScaleModifier.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance ScrollTransitionProgress;
}

double static _LayoutScaleModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v6 = a2[3];
  v50 = a2[2];
  v51 = v6;
  v52 = a2[4];
  v7 = a2[1];
  v48 = *a2;
  v49 = v7;
  v42 = v48;
  v43 = v5;
  v8 = *a1;
  v53 = *(a2 + 20);
  LODWORD(v36) = v8;
  v44 = v50;
  v9 = lazy protocol witness table accessor for type _LayoutScaleModifier and conformance _LayoutScaleModifier();
  (*(v9 + 48))(&v36, &v42);
  v10 = v36;
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  v11 = v49;
  swift_beginAccess();
  *&v34[0] = __PAIR64__(*(v11 + 16), v10);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v48, &v36);
  lazy protocol witness table accessor for type ScaledEnvironment and conformance ScaledEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v12 = BYTE4(v50);
  if ((BYTE4(v50) & 0x20) != 0)
  {
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v36 = v48;
    v37 = v49;
    *&v36 = __PAIR64__(_ViewInputs.position.getter(), v10);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for CGPoint(0);
    lazy protocol witness table accessor for type ScaledOrigin and conformance ScaledOrigin();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.position.setter();
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v36 = v48;
    v37 = v49;
    *&v36 = __PAIR64__(_ViewInputs.animatedPosition()(), v10);
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.containerPosition.setter();
    *&v36 = __PAIR64__(DWORD2(v52), v10);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScaledSize and conformance ScaledSize();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.size.setter();
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v36 = v48;
    v37 = v49;
    *&v36 = __PAIR64__(_ViewInputs.position.getter(), v10);
    DWORD2(v36) = HIDWORD(v51);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScaledTransform and conformance ScaledTransform();
    Attribute.init<A>(body:value:flags:update:)();
    _ViewInputs.transform.setter();
  }

  v34[2] = v44;
  v34[3] = v45;
  v34[4] = v46;
  v35 = v47;
  v34[0] = v42;
  v34[1] = v43;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v28 = v42;
  v29 = v43;
  v13 = outlined init with copy of _ViewInputs(v34, &v36);
  a3(&v26, v13, &v28);
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v41 = v33;
  v36 = v28;
  v37 = v29;
  outlined destroy of _ViewInputs(&v36);
  *&v28 = v51;
  DWORD2(v28) = DWORD2(v51);
  v14 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v15 = MEMORY[0x1E698D3F8];
  if (v14)
  {
    _DisplayList_Identity.init()();
    v16 = v28;
    v30 = v50;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v28 = v48;
    v29 = v49;
    _ViewInputs.pushIdentity(_:)();
    v30 = v50;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v28 = v48;
    v29 = v49;
    v17 = _ViewInputs.animatedPosition()();
    v30 = v50;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v28 = v48;
    v29 = v49;
    v18 = _ViewInputs.animatedCGSize()();
    v30 = v50;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v28 = v48;
    v29 = v49;
    v19 = _ViewInputs.containerPosition.getter();
    v20 = PreferencesOutputs.subscript.getter();
    v21 = *v15;
    if ((v20 & 0x100000000) == 0)
    {
      v21 = v20;
    }

    *&v28 = __PAIR64__(v10, v16);
    *(&v28 + 1) = __PAIR64__(v18, v17);
    *&v29 = __PAIR64__(v21, v19);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScaledDisplayList and conformance ScaledDisplayList();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v28) = 0;
    PreferencesOutputs.subscript.setter();
  }

  if ((v12 & 2) != 0)
  {
    v22 = _ViewOutputs.layoutComputer.getter();
    v23 = *v15;
    if ((v22 & 0x100000000) == 0)
    {
      v23 = v22;
    }

    *&v28 = __PAIR64__(v23, v10);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type ScaledLayoutComputer and conformance ScaledLayoutComputer();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v28) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v28 = v42;
  v29 = v43;
  outlined destroy of _ViewInputs(&v28);
  *a4 = v26;
  result = v27;
  a4[1] = v27;
  return result;
}

unint64_t lazy protocol witness table accessor for type _LayoutScaleModifier and conformance _LayoutScaleModifier()
{
  result = lazy protocol witness table cache variable for type _LayoutScaleModifier and conformance _LayoutScaleModifier;
  if (!lazy protocol witness table cache variable for type _LayoutScaleModifier and conformance _LayoutScaleModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutScaleModifier and conformance _LayoutScaleModifier);
  }

  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _LayoutScaleModifier(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance _LayoutScaleModifier;
}

uint64_t ScaledEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  v2 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  *a1 = v5;
  a1[1] = v4;
  if (v2 == 0.0)
  {
  }

  else
  {

    EnvironmentValues.pixelLength.getter();
    AGGraphGetValue();
    return EnvironmentValues.defaultPixelLength.setter();
  }
}

double ScaledOrigin.value.getter()
{
  v0 = *AGGraphGetValue();
  type metadata accessor for CGPoint(0);
  v1 = *AGGraphGetValue();
  if (v0 != 0.0)
  {
    return v1 * (1.0 / *AGGraphGetValue());
  }

  return v1;
}

double ScaledSize.value.getter@<D0>(_OWORD *a1@<X8>)
{
  if (*AGGraphGetValue() == 0.0)
  {

    static ViewSize.zero.getter();
  }

  else
  {
    Value = AGGraphGetValue();
    v4 = Value[1];
    v10 = *Value;
    v11 = v4;
    v8 = 1.0 / *AGGraphGetValue();
    v5 = ViewSize.value.modify();
    *v6 = vmulq_n_f64(*v6, v8);
    v5(&v9, 0);
    ViewSize.proposal.getter();
    _ProposedSize.scaled(by:)();
    ViewSize.proposal.setter();
    result = *&v10;
    v7 = v11;
    *a1 = v10;
    a1[1] = v7;
  }

  return result;
}

void ScaledTransform.value.getter(uint64_t a1@<X8>)
{
  if (*AGGraphGetValue() == 0.0)
  {
    static CGFloat.leastNonzeroScaleFactor.getter();
    v3 = v2;
  }

  else
  {
    v3 = *AGGraphGetValue();
  }

  Value = AGGraphGetValue();
  v5 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v5;
  v6 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v6;
  type metadata accessor for CGPoint(0);

  AGGraphGetValue();
  ViewTransform.appendPosition(_:scale:)();
  CGAffineTransformMakeScale(&v7, 1.0 / v3, 1.0 / v3);
  ViewTransform.appendAffineTransform(_:inverse:)(&v7, 0);
}

uint64_t ScaledLayoutComputer.updateValue()()
{
  AGGraphGetValue();
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    static LayoutComputer.defaultValue.getter();
  }

  else
  {
    AGGraphGetValue();
  }

  lazy protocol witness table accessor for type ScaledLayoutComputer and conformance ScaledLayoutComputer();
  lazy protocol witness table accessor for type ScaledLayoutComputer.Engine and conformance ScaledLayoutComputer.Engine();
  StatefulRule<>.update<A>(to:)();
}

uint64_t ScaledLayoutComputer.Engine.sizeThatFits(_:)()
{
  if (*v0 != 0.0)
  {

    _ProposedSize.scaled(by:)();
    LayoutComputer.sizeThatFits(_:)();
  }

  return result;
}

uint64_t ScaledDisplayList.value.getter()
{
  if (*(v0 + 20) == *MEMORY[0x1E698D3F8])
  {
    DisplayList.init()();
    a = v16.a;
    b_low = LOWORD(v16.b);
    b_high = HIDWORD(v16.b);
    if (*(*&v16.a + 16))
    {
LABEL_3:
      type metadata accessor for CGPoint(0);
      AGGraphGetValue();
      AGGraphGetValue();
      if (*AGGraphGetValue() == 0.0)
      {
        static CGFloat.leastNonzeroScaleFactor.getter();
      }

      else
      {
        v4 = *AGGraphGetValue();
      }

      CGAffineTransformMakeScale(&v16, v4, v4);
      tx = v16.tx;
      ty = v16.ty;
      v10 = *&v16.c;
      v11 = *&v16.a;
      v9 = swift_allocObject();
      *(v9 + 16) = v11;
      *(v9 + 32) = v10;
      *(v9 + 48) = tx;
      *(v9 + 56) = ty;
      *(v9 + 88) = 0;
      *&v16.a = v9;
      *&v16.b = 0x900000000;
      v16.c = a;
      *&v16.d = b_low | (b_high << 32) | 0x40000000;
      type metadata accessor for CGSize(0);
      AGGraphGetValue();
      DisplayList.Version.init(forUpdate:)();
      DisplayList.Item.init(_:frame:identity:version:)();
      LOBYTE(v16.a) = 0;
      DisplayList.Item.canonicalize(options:)();
      v14[2] = *&v12.tx;
      v15[0] = *v13;
      *(v15 + 12) = *&v13[12];
      v14[0] = *&v12.a;
      v14[1] = *&v12.c;
      outlined init with copy of DisplayList.Item(v14, &v16);
      DisplayList.init(_:)();
      v16 = v12;
      v17[0] = *v13;
      *(v17 + 12) = *&v13[12];
      return outlined destroy of DisplayList.Item(&v16);
    }
  }

  else
  {
    Value = AGGraphGetValue();
    a = *Value;
    b_low = *(Value + 8);
    b_high = *(Value + 12);

    if (*(*&a + 16))
    {
      goto LABEL_3;
    }
  }

  return DisplayList.init()();
}

unint64_t lazy protocol witness table accessor for type ScaledEnvironment and conformance ScaledEnvironment()
{
  result = lazy protocol witness table cache variable for type ScaledEnvironment and conformance ScaledEnvironment;
  if (!lazy protocol witness table cache variable for type ScaledEnvironment and conformance ScaledEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledEnvironment and conformance ScaledEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledLayoutComputer and conformance ScaledLayoutComputer()
{
  result = lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer;
  if (!lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer;
  if (!lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledLayoutComputer and conformance ScaledLayoutComputer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledDisplayList and conformance ScaledDisplayList()
{
  result = lazy protocol witness table cache variable for type ScaledDisplayList and conformance ScaledDisplayList;
  if (!lazy protocol witness table cache variable for type ScaledDisplayList and conformance ScaledDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledDisplayList and conformance ScaledDisplayList);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledOrigin and conformance ScaledOrigin()
{
  result = lazy protocol witness table cache variable for type ScaledOrigin and conformance ScaledOrigin;
  if (!lazy protocol witness table cache variable for type ScaledOrigin and conformance ScaledOrigin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledOrigin and conformance ScaledOrigin);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledSize and conformance ScaledSize()
{
  result = lazy protocol witness table cache variable for type ScaledSize and conformance ScaledSize;
  if (!lazy protocol witness table cache variable for type ScaledSize and conformance ScaledSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledSize and conformance ScaledSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledTransform and conformance ScaledTransform()
{
  result = lazy protocol witness table cache variable for type ScaledTransform and conformance ScaledTransform;
  if (!lazy protocol witness table cache variable for type ScaledTransform and conformance ScaledTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledTransform and conformance ScaledTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaledLayoutComputer.Engine and conformance ScaledLayoutComputer.Engine()
{
  result = lazy protocol witness table cache variable for type ScaledLayoutComputer.Engine and conformance ScaledLayoutComputer.Engine;
  if (!lazy protocol witness table cache variable for type ScaledLayoutComputer.Engine and conformance ScaledLayoutComputer.Engine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaledLayoutComputer.Engine and conformance ScaledLayoutComputer.Engine);
  }

  return result;
}

void *assignWithCopy for ScaledLayoutComputer.Engine(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

void *assignWithTake for ScaledLayoutComputer.Engine(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

char *initializeBufferWithCopyOfBuffer for CollapsibleWheelDatePickerStyle(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for Environment<Locale>.Content();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Locale();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v9 = a3[5];
    type metadata accessor for Environment<Calendar>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for Calendar();
      (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    }

    else
    {
      *&a1[v9] = *&a2[v9];
    }

    swift_storeEnumTagMultiPayload();
    v11 = a3[6];
    type metadata accessor for Environment<TimeZone>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = type metadata accessor for TimeZone();
      (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    }

    else
    {
      *&a1[v11] = *&a2[v11];
    }

    swift_storeEnumTagMultiPayload();
    v13 = a3[7];
    v14 = &a1[v13];
    v15 = &a2[v13];
    *v14 = *v15;
    *(v14 + 1) = *(v15 + 1);
  }

  return a1;
}

void type metadata accessor for Environment<Locale>.Content(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t destroy for CollapsibleWheelDatePickerStyle(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Environment<Locale>.Content();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Locale();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  else
  {
  }

  v5 = *(a2 + 20);
  type metadata accessor for Environment<Calendar>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Calendar();
    (*(*(v6 - 8) + 8))(a1 + v5, v6);
  }

  else
  {
  }

  v7 = *(a2 + 24);
  type metadata accessor for Environment<TimeZone>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for TimeZone();
    (*(*(v8 - 8) + 8))(a1 + v7, v8);
  }

  else
  {
  }
}

char *initializeWithCopy for CollapsibleWheelDatePickerStyle(char *a1, char *a2, int *a3)
{
  type metadata accessor for Environment<Locale>.Content();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Locale();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  v7 = a3[5];
  type metadata accessor for Environment<Calendar>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Calendar();
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  }

  else
  {
    *&a1[v7] = *&a2[v7];
  }

  swift_storeEnumTagMultiPayload();
  v9 = a3[6];
  type metadata accessor for Environment<TimeZone>.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for TimeZone();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
  }

  else
  {
    *&a1[v9] = *&a2[v9];
  }

  swift_storeEnumTagMultiPayload();
  v11 = a3[7];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  *(v12 + 1) = *(v13 + 1);

  return a1;
}

char *assignWithCopy for CollapsibleWheelDatePickerStyle(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<Locale>.Content(a1, type metadata accessor for Environment<Locale>.Content);
    type metadata accessor for Environment<Locale>.Content();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for Locale();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v7 = a3[5];
    outlined destroy of Environment<Locale>.Content(&a1[v7], type metadata accessor for Environment<Calendar>.Content);
    type metadata accessor for Environment<Calendar>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Calendar();
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    }

    else
    {
      *&a1[v7] = *&a2[v7];
    }

    swift_storeEnumTagMultiPayload();
    v9 = a3[6];
    outlined destroy of Environment<Locale>.Content(&a1[v9], type metadata accessor for Environment<TimeZone>.Content);
    type metadata accessor for Environment<TimeZone>.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for TimeZone();
      (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    }

    else
    {
      *&a1[v9] = *&a2[v9];
    }

    swift_storeEnumTagMultiPayload();
  }

  v11 = a3[7];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  *(v12 + 1) = *(v13 + 1);

  return a1;
}

char *initializeWithTake for CollapsibleWheelDatePickerStyle(char *a1, char *a2, int *a3)
{
  type metadata accessor for Environment<Locale>.Content();
  v7 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Locale();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  v9 = a3[5];
  type metadata accessor for Environment<Calendar>.Content(0);
  v11 = v10;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for Calendar();
    (*(*(v12 - 8) + 32))(&a1[v9], &a2[v9], v12);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v9], &a2[v9], *(*(v11 - 8) + 64));
  }

  v13 = a3[6];
  type metadata accessor for Environment<TimeZone>.Content(0);
  v15 = v14;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for TimeZone();
    (*(*(v16 - 8) + 32))(&a1[v13], &a2[v13], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v13], &a2[v13], *(*(v15 - 8) + 64));
  }

  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithTake for CollapsibleWheelDatePickerStyle(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of Environment<Locale>.Content(a1, type metadata accessor for Environment<Locale>.Content);
    type metadata accessor for Environment<Locale>.Content();
    v7 = v6;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = type metadata accessor for Locale();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    v9 = a3[5];
    outlined destroy of Environment<Locale>.Content(&a1[v9], type metadata accessor for Environment<Calendar>.Content);
    type metadata accessor for Environment<Calendar>.Content(0);
    v11 = v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = type metadata accessor for Calendar();
      (*(*(v12 - 8) + 32))(&a1[v9], &a2[v9], v12);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v9], &a2[v9], *(*(v11 - 8) + 64));
    }

    v13 = a3[6];
    outlined destroy of Environment<Locale>.Content(&a1[v13], type metadata accessor for Environment<TimeZone>.Content);
    type metadata accessor for Environment<TimeZone>.Content(0);
    v15 = v14;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for TimeZone();
      (*(*(v16 - 8) + 32))(&a1[v13], &a2[v13], v16);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v13], &a2[v13], *(*(v15 - 8) + 64));
    }
  }

  v17 = a3[7];
  v18 = &a1[v17];
  v19 = &a2[v17];
  *v18 = *v19;
  *(v18 + 1) = *(v19 + 1);

  return a1;
}

uint64_t type metadata accessor for CollapsibleWheelDatePickerStyle()
{
  result = type metadata singleton initialization cache for CollapsibleWheelDatePickerStyle;
  if (!type metadata singleton initialization cache for CollapsibleWheelDatePickerStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CollapsibleWheelDatePickerStyle()
{
  type metadata accessor for Environment<Locale>.Content();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Calendar>.Content(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<TimeZone>.Content(319);
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

id one-time initialization function for dateFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  static CollapsibleWheelDatePickerStyle.dateFormatter = v0;
  return result;
}

uint64_t CollapsibleWheelDatePickerStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v49 = a2;
  v43 = type metadata accessor for DatePickerStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - v5;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for CollapsibleWheelDatePickerStyle();
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  outlined init with copy of CollapsibleWheelDatePickerStyle(v2, &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollapsibleWheelDatePickerStyle);
  v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v23 = swift_allocObject();
  outlined init with take of CollapsibleWheelDatePickerStyle(&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  *v21 = 4;
  v24 = &v21[*(v17 + 44)];
  *v24 = partial apply for closure #1 in CollapsibleWheelDatePickerStyle.makeBody(configuration:);
  v24[1] = v23;
  v25 = v44;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  closure #2 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)(v2, v25, &v21[*(v17 + 48)]);
  v26 = v2 + *(v13 + 36);
  v27 = *v26;
  v28 = *(v26 + 8);
  v51 = v27;
  v52 = v28;
  _s7SwiftUI5ColorVSgMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v50 == 1)
  {
    v29 = v42;
    outlined init with copy of CollapsibleWheelDatePickerStyle(v25, v42, type metadata accessor for DatePickerStyleConfiguration);
    outlined init with copy of CollapsibleWheelDatePickerStyle(v29, v6, type metadata accessor for Binding<Date>);
    v30 = v43;
    v31 = *(v43 + 24);
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>();
    v33 = v32;
    outlined init with copy of CollapsibleWheelDatePickerStyle(v29 + v31, &v6[*(v32 + 36)], type metadata accessor for Date?);
    outlined init with copy of CollapsibleWheelDatePickerStyle(v29 + *(v30 + 28), &v6[*(v33 + 40)], type metadata accessor for Date?);
    *&v6[*(v33 + 44)] = *(v29 + *(v30 + 32));
    outlined destroy of Environment<Locale>.Content(v29, type metadata accessor for DatePickerStyleConfiguration);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>();
    *&v6[*(v34 + 36)] = 769;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(v6, v11);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  (*(v46 + 56))(v11, v35, 1, v47);
  v36 = v45;
  outlined init with copy of CollapsibleWheelDatePickerStyle(v21, v45, type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>);
  v37 = v48;
  outlined init with copy of CollapsibleWheelDatePickerStyle(v11, v48, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?);
  v38 = v49;
  outlined init with copy of CollapsibleWheelDatePickerStyle(v36, v49, type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>);
  type metadata accessor for (Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?)();
  outlined init with copy of CollapsibleWheelDatePickerStyle(v37, v38 + *(v39 + 48), type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?);
  outlined destroy of Environment<Locale>.Content(v11, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?);
  outlined destroy of Environment<Locale>.Content(v21, type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>);
  outlined destroy of Environment<Locale>.Content(v37, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?);
  return outlined destroy of Environment<Locale>.Content(v36, type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>);
}

uint64_t closure #1 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for CollapsibleWheelDatePickerStyle() + 28) + 8);
  _s7SwiftUI5ColorVSgMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = State.wrappedValue.getter();
  if (v1)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

__n128 closure #2 in CollapsibleWheelDatePickerStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  CollapsibleWheelDatePickerStyle.formattedDate(_:)(a2);
  v5 = a1 + *(type metadata accessor for CollapsibleWheelDatePickerStyle() + 28);
  LOBYTE(v9) = *v5;
  v10 = *(v5 + 8);
  _s7SwiftUI5ColorVSgMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v7 == 1)
  {
    static Color.accentColor.getter();
  }

  else
  {
    static Color.secondary.getter();
  }

  View.defaultForegroundColor(_:)();

  View.defaultForegroundColor(_:)();
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  result = v12;
  *(a3 + 40) = v12;
  *(a3 + 56) = v13;
  *(a3 + 64) = 2;
  return result;
}

uint64_t CollapsibleWheelDatePickerStyle.formattedDate(_:)(uint64_t a1)
{
  v26 = a1;
  v27 = type metadata accessor for Date();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v24 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TimeZone();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v13 = static CollapsibleWheelDatePickerStyle.dateFormatter;
  specialized Environment.wrappedValue.getter(v12);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v12, v9);
  [v13 setLocale_];

  type metadata accessor for CollapsibleWheelDatePickerStyle();
  specialized Environment.wrappedValue.getter(v8);
  v15 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [v13 setCalendar_];

  specialized Environment.wrappedValue.getter(v4);
  v16 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v22 + 8))(v4, v23);
  [v13 setTimeZone_];

  LODWORD(v16) = ~*(v26 + *(type metadata accessor for DatePickerStyleConfiguration(0) + 32));
  [v13 setTimeStyle_];
  [v13 setDateStyle_];
  type metadata accessor for Binding<Date>(0);
  v17 = v24;
  MEMORY[0x18D00ACC0]();
  v18 = Date._bridgeToObjectiveC()().super.isa;
  (*(v25 + 8))(v17, v27);
  v19 = [v13 stringFromDate_];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v20;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>)
  {
    type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>();
    type metadata accessor for DatePickerStyleModifier<WheelDatePickerStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<HiddenLabeledContentStyle>, lazy protocol witness table accessor for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle, &type metadata for HiddenLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>)
  {
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>();
    type metadata accessor for DatePickerStyleModifier<WheelDatePickerStyle>(255, &lazy cache variable for type metadata for DatePickerStyleModifier<WheelDatePickerStyle>, lazy protocol witness table accessor for type WheelDatePickerStyle and conformance WheelDatePickerStyle, &type metadata for WheelDatePickerStyle, type metadata accessor for DatePickerStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>);
    }
  }
}

void type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>)
  {
    v0 = type metadata accessor for DatePicker();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WheelDatePickerStyle and conformance WheelDatePickerStyle()
{
  result = lazy protocol witness table cache variable for type WheelDatePickerStyle and conformance WheelDatePickerStyle;
  if (!lazy protocol witness table cache variable for type WheelDatePickerStyle and conformance WheelDatePickerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WheelDatePickerStyle and conformance WheelDatePickerStyle);
  }

  return result;
}

void type metadata accessor for DatePickerStyleModifier<WheelDatePickerStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>?);
    }
  }
}

void type metadata accessor for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>()
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(255, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, type metadata accessor for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>);
    lazy protocol witness table accessor for type ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for DatePickerStyleModifier<WheelDatePickerStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>()
{
  if (!lazy cache variable for type metadata for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>)
  {
    type metadata accessor for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(255, &lazy cache variable for type metadata for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>);
    type metadata accessor for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(255, &lazy cache variable for type metadata for ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>);
    v0 = type metadata accessor for LabeledContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Color?>();
    v3 = type metadata accessor for ModifiedContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<WheelDatePickerStyle>>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _AlignmentLayout>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>(255, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>, type metadata accessor for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>);
    lazy protocol witness table accessor for type LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> LabeledContent<A, B>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> LabeledContent<A, B>)
  {
    type metadata accessor for LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>>();
    lazy protocol witness table accessor for type ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>);
    lazy protocol witness table accessor for type ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<DatePickerStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Color?>>(255, a2);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_2(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Color?>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}