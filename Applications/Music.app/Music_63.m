uint64_t type metadata accessor for Artwork()
{
  return sub_100006300();
}

{
  return type metadata accessor for Artwork();
}

void sub_1006FA870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1006FA8D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006FA960(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
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
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v8 + 80);
  if (v10)
  {
    v14 = *(*(v7 - 8) + 64);
  }

  else
  {
    v14 = *(*(v7 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(*(a3 + 16) - 8) + 64) + v13;
  v16 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v17 = v14 + (v15 & ~v13);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v20 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v6 >= v11)
        {
          v26 = *(v5 + 48);

          return v26();
        }

        else
        {
          v24 = (*(v9 + 48))((a1 + v15) & ~v13, v10, v7, v5);
          if (v24 >= 2)
          {
            return v24 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_33;
  }

LABEL_20:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
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

void sub_1006FAB7C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = v9 - 1;
  if (!v9)
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = v15 + v16;
  v18 = a3 >= v13;
  v19 = a3 - v13;
  if (v19 == 0 || !v18)
  {
LABEL_21:
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v17 > 3)
  {
    v5 = 1;
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v20 = ((v19 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
  if (!HIWORD(v20))
  {
    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_21;
  }

  v5 = 4;
  if (v13 < a2)
  {
LABEL_22:
    v22 = ~v13 + a2;
    if (v17 < 4)
    {
      v24 = (v22 >> (8 * v17)) + 1;
      if (v17)
      {
        v25 = v22 & ~(-1 << (8 * v17));
        v26 = a1;
        bzero(a1, v17);
        a1 = v26;
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *v26 = v25;
            if (v5 > 1)
            {
LABEL_63:
              if (v5 == 2)
              {
                *&a1[v17] = v24;
              }

              else
              {
                *&a1[v17] = v24;
              }

              return;
            }
          }

          else
          {
            *v26 = v22;
            if (v5 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *v26 = v25;
        v26[2] = BYTE2(v25);
      }

      if (v5 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = a1;
      bzero(a1, v17);
      a1 = v23;
      *v23 = v22;
      v24 = 1;
      if (v5 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v5)
    {
      a1[v17] = v24;
    }

    return;
  }

LABEL_31:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v17] = 0;
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

  a1[v17] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v7 >= v12)
  {
    v31 = *(v6 + 56);

    v31();
  }

  else
  {
    v27 = &a1[v14] & ~v11;
    if (v12 >= a2)
    {
      v32 = *(v8 + 56);
      v33 = a2 + 1;
      v34 = &a1[v14] & ~v11;

      v32(v34, v33, v9);
    }

    else
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v16)
      {
        v29 = v28 & (~v12 + a2);
        if (v16 <= 3)
        {
          v30 = v16;
        }

        else
        {
          v30 = 4;
        }

        bzero((&a1[v14] & ~v11), v16);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *v27 = v29;
            *(v27 + 2) = BYTE2(v29);
          }

          else
          {
            *v27 = v29;
          }
        }

        else if (v30 == 1)
        {
          *v27 = v29;
        }

        else
        {
          *v27 = v29;
        }
      }
    }
  }
}

uint64_t sub_1006FAEF4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1006FAF9C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = v8;
  }

  v10 = a3[4];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 > v9)
  {
    v9 = v13;
  }

  v14 = *(*(a3[3] - 8) + 64);
  if (!v7)
  {
    ++v14;
  }

  v15 = *(v6 + 80);
  v16 = *(v11 + 80);
  if (v12)
  {
    v17 = *(*(v10 - 8) + 64);
  }

  else
  {
    v17 = *(*(v10 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[2] - 8) + 64) + v15;
  v19 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_40;
  }

  v20 = v17 + ((v14 + v16 + (v18 & ~v15)) & ~v16);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v23 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v23 < 2)
    {
LABEL_39:
      if (v9)
      {
LABEL_40:
        if (v5 == v9)
        {
          v27 = *(v4 + 48);

          return v27();
        }

        else
        {
          v29 = (a1 + v18) & ~v15;
          if (v8 == v9)
          {
            v30 = (*(v6 + 48))(v29, v7);
          }

          else
          {
            v30 = (*(v11 + 48))((v29 + v14 + v16) & ~v16, v12, v10);
          }

          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_39;
  }

LABEL_26:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v25 = v20;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v9 + (v26 | v24) + 1;
}

void sub_1006FB278(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  v12 = a4[4];
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(v13 + 80);
  v18 = v14 - 1;
  if (!v14)
  {
    v18 = 0;
  }

  if (v18 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v18;
  }

  if (v9)
  {
    v20 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v20 = *(*(a4[3] - 8) + 64) + 1;
  }

  v21 = v15 + v16;
  v22 = (v20 + v17 + ((v15 + v16) & ~v16)) & ~v17;
  if (v14)
  {
    v23 = *(*(v12 - 8) + 64);
  }

  else
  {
    v23 = *(*(v12 - 8) + 64) + 1;
  }

  v24 = v22 + v23;
  v25 = a3 >= v19;
  v26 = a3 - v19;
  if (v26 == 0 || !v25)
  {
LABEL_29:
    if (v19 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  if (v24 > 3)
  {
    v5 = 1;
    if (v19 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  v27 = ((v26 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
  if (!HIWORD(v27))
  {
    if (v27 < 0x100)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (v27 < 2)
    {
      v5 = 0;
    }

    goto LABEL_29;
  }

  v5 = 4;
  if (v19 < a2)
  {
LABEL_30:
    v28 = ~v19 + a2;
    if (v24 < 4)
    {
      v30 = (v28 >> (8 * v24)) + 1;
      if (v24)
      {
        v31 = v28 & ~(-1 << (8 * v24));
        v32 = a1;
        bzero(a1, v24);
        a1 = v32;
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v32 = v31;
            if (v5 > 1)
            {
LABEL_72:
              if (v5 == 2)
              {
                *&a1[v24] = v30;
              }

              else
              {
                *&a1[v24] = v30;
              }

              return;
            }
          }

          else
          {
            *v32 = v28;
            if (v5 > 1)
            {
              goto LABEL_72;
            }
          }

          goto LABEL_69;
        }

        *v32 = v31;
        v32[2] = BYTE2(v31);
      }

      if (v5 > 1)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v29 = a1;
      bzero(a1, v24);
      a1 = v29;
      *v29 = v28;
      v30 = 1;
      if (v5 > 1)
      {
        goto LABEL_72;
      }
    }

LABEL_69:
    if (v5)
    {
      a1[v24] = v30;
    }

    return;
  }

LABEL_39:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&a1[v24] = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v5)
  {
    goto LABEL_45;
  }

  a1[v24] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v7 == v19)
  {
    v33 = *(v6 + 56);

    v33();
  }

  else
  {
    v34 = &a1[v21] & ~v16;
    if (v10 == v19)
    {
      v35 = *(v8 + 56);
      v36 = a2 + 1;

      v35(v34, v36);
    }

    else
    {
      v37 = ((v34 + v20 + v17) & ~v17);
      if (v18 >= a2)
      {
        v41 = *(v13 + 56);
        v42 = a2 + 1;
        v43 = (v34 + v20 + v17) & ~v17;

        v41(v43, v42, v14, v12);
      }

      else
      {
        if (v23 <= 3)
        {
          v38 = ~(-1 << (8 * v23));
        }

        else
        {
          v38 = -1;
        }

        if (v23)
        {
          v39 = v38 & (~v18 + a2);
          if (v23 <= 3)
          {
            v40 = v23;
          }

          else
          {
            v40 = 4;
          }

          bzero(v37, v23);
          if (v40 > 2)
          {
            if (v40 == 3)
            {
              *v37 = v39;
              v37[2] = BYTE2(v39);
            }

            else
            {
              *v37 = v39;
            }
          }

          else if (v40 == 1)
          {
            *v37 = v39;
          }

          else
          {
            *v37 = v39;
          }
        }
      }
    }
  }
}

uint64_t sub_1006FB6C8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006FB754(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
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
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1006FB930(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t sub_1006FBD04()
{
  result = qword_10119F728;
  if (!qword_10119F728)
  {
    sub_1001109D0(&qword_10118F330);
    sub_1006FBD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F728);
  }

  return result;
}

unint64_t sub_1006FBD90()
{
  result = qword_10119F730;
  if (!qword_10119F730)
  {
    sub_1001109D0(&unk_10118F340);
    sub_1006FBE4C(&qword_10119F738, &type metadata accessor for ArtworkImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F730);
  }

  return result;
}

uint64_t sub_1006FBE4C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1006FBF70(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1006FC128(a1);
  (*(*(*(v2 + qword_101219498) - 8) + 8))(a1);
  return v5;
}

id sub_1006FC094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StaticHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1006FC128(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(&v8 - v2, v1);
  v4 = UIHostingController.init(rootView:)();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    dispatch thunk of UIHostingController.sizeThatFits(in:)();
    [v4 setPreferredContentSize:?];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006FC368()
{
  type metadata accessor for MusicLibrary();
  if (v0 <= 0x3F)
  {
    _s11MusicVideosV5ScopeOMa(319);
    if (v1 <= 0x3F)
    {
      sub_10018D5F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1006FC454()
{
  v0 = type metadata accessor for Artist();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1006FC4AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = _s11MusicVideosV5ScopeOMa(0);
  v7 = __chkstk_darwin(v6 - 8);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v52 = &v49 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v49 - v12;
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  *a3 = 8;
  type metadata accessor for MusicLibrary();
  *(a3 + 8) = static MusicLibrary.shared.getter();
  v16 = _s11MusicVideosVMa(0);
  v17 = (a3 + v16[8]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v55 = v16[9];
  *(a3 + v55) = &_swiftEmptySetSingleton;
  v53 = v16[7];
  sub_1006FFEC4(a1, a3 + v53, _s11MusicVideosV5ScopeOMa);
  *(a3 + 16) = a2;
  v50 = objc_opt_self();
  v18 = [v50 standardUserDefaults];
  v56 = a1;
  sub_1006FFEC4(a1, v15, _s11MusicVideosV5ScopeOMa);
  v19 = type metadata accessor for Artist();
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v15, 1, v19);
  v22 = "impressionParentId";
  v23 = 0xD000000000000012;
  v51 = "impressionParentId";
  if (v21 != 1)
  {
    sub_1006FFF2C(v15, _s11MusicVideosV5ScopeOMa);
    v22 = "LibraryArtistDetail";
    v23 = 0xD000000000000013;
  }

  v57 = v23;
  v58 = v22 | 0x8000000000000000;

  v24._countAndFlagsBits = 0x53746E65746E6F43;
  v24._object = 0xEB0000000074726FLL;
  String.append(_:)(v24);

  sub_100110448();
  sub_10011049C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v57);

  v25 = v57;
  if ((v57 & 0xFF00) == 0x200)
  {
    v26 = sub_10045FDA0(0);
    if ((v26 & 0xFF00) == 0x200)
    {
      v27 = v56;
      sub_1006FFEC4(v56, v13, _s11MusicVideosV5ScopeOMa);
      if (v20(v13, 1, v19) == 1)
      {
        v28 = 0;
      }

      else
      {
        sub_1006FFF2C(v13, _s11MusicVideosV5ScopeOMa);
        v28 = 4;
      }

      v32 = v52;
      v29 = (a3 + v16[10]);
      *v29 = v28;
      v29[1] = 1;
      v30 = v29 + 1;
      goto LABEL_15;
    }

    v29 = (a3 + v16[10]);
    *v29 = v26;
    v29[1] = HIBYTE(v26) & 1;
    v30 = v29 + 1;
    v28 = v26;
    v27 = v56;
    if ((v26 & 0x100) == 0)
    {
      v31 = 0;
      v32 = v52;
      goto LABEL_16;
    }
  }

  else
  {
    v29 = (a3 + v16[10]);
    *v29 = v57;
    v29[1] = HIBYTE(v25) & 1;
    v30 = v29 + 1;
    v28 = v25;
    if ((v25 & 0x100) == 0)
    {
      v31 = 0;
      v27 = v56;
      v32 = v52;
      goto LABEL_16;
    }

    v27 = v56;
  }

  v32 = v52;
LABEL_15:
  v31 = 256;
LABEL_16:
  v33 = sub_100375F28(v31 | v28);
  if ((v33 & 0xFF00) == 0x200)
  {
    sub_1006FFEC4(v27, v32, _s11MusicVideosV5ScopeOMa);
    LOBYTE(v34) = 1;
    if (v20(v32, 1, v19) == 1)
    {
      LOBYTE(v33) = 0;
    }

    else
    {
      sub_1006FFF2C(v32, _s11MusicVideosV5ScopeOMa);
      LOBYTE(v33) = 4;
    }
  }

  else
  {
    v34 = (v33 >> 8) & 1;
  }

  *v29 = v33;
  *v30 = v34;
  v35 = [v50 standardUserDefaults];
  v36 = v54;
  sub_1006FFEC4(a3 + v53, v54, _s11MusicVideosV5ScopeOMa);
  v37 = v20(v36, 1, v19);
  v38 = 0xD000000000000012;
  v39 = v51;
  if (v37 != 1)
  {
    sub_1006FFF2C(v36, _s11MusicVideosV5ScopeOMa);
    v39 = "LibraryArtistDetail";
    v38 = 0xD000000000000013;
  }

  v40 = v39 | 0x8000000000000000;
  v41 = sub_10010FC20(&unk_10118CD70);
  v57 = v38;
  v58 = v40;

  v42._countAndFlagsBits = 0x704F7265746C6946;
  v42._object = 0xEC0000006E6F6974;
  String.append(_:)(v42);

  sub_100178DD8(&unk_101182910, sub_100178D84);
  sub_100178DD8(&unk_101182920, sub_100178E50);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v41, &v57);

  v43 = v57;
  if (!v57)
  {
    v44 = sub_1006FE258();
    v45 = Optional<A>.convertToSet.getter(v44);
    if (v45)
    {
      v43 = v45;
    }

    else
    {
      v43 = &_swiftEmptySetSingleton;
    }
  }

  v46 = sub_1006FE4C0();
  v47 = sub_1003AE5C4(v46, v43);

  result = sub_1006FFF2C(v27, _s11MusicVideosV5ScopeOMa);
  *(a3 + v55) = v47;
  return result;
}

uint64_t sub_1006FCB18(__int16 a1)
{
  v3 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11MusicVideosVMa(0);
  v7 = (v1 + *(v6 + 40));
  v8 = v7[1];
  v9 = *v7;
  *v7 = a1;
  v7[1] = (a1 & 0x100) >> 8;
  result = sub_1006B8B0C(a1, v9);
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v8) & 1) == 0)
  {
    v11 = 0xD000000000000012;
    v12 = [objc_opt_self() standardUserDefaults];
    v17[3] = &_s11ContentSortVN;
    v17[4] = sub_100110448();
    v17[5] = sub_10011049C();
    LOBYTE(v17[0]) = a1;
    BYTE1(v17[0]) = (a1 & 0x100) >> 8;
    sub_1006FFEC4(v1 + *(v6 + 28), v5, _s11MusicVideosV5ScopeOMa);
    v13 = type metadata accessor for Artist();
    if ((*(*(v13 - 8) + 48))(v5, 1, v13) == 1)
    {
      v14 = "impressionParentId";
    }

    else
    {
      sub_1006FFF2C(v5, _s11MusicVideosV5ScopeOMa);
      v14 = "LibraryArtistDetail";
      v11 = 0xD000000000000013;
    }

    v16[0] = v11;
    v16[1] = v14 | 0x8000000000000000;

    v15._countAndFlagsBits = 0x53746E65746E6F43;
    v15._object = 0xEB0000000074726FLL;
    String.append(_:)(v15);

    NSUserDefaults.encodeValue(_:forKey:)(v17);

    return sub_10000959C(v17);
  }

  return result;
}

uint64_t sub_1006FCD38@<X0>(uint64_t a1@<X8>)
{
  v16 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v16);
  v15[6] = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v18 = v15 - v4;
  v17 = type metadata accessor for MusicVideo();
  __chkstk_darwin(v17);
  v5 = sub_10010FC20(&qword_10118CEE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v15[5] = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  v11 = sub_10010E83C(&off_101099920);
  sub_1006FF6AC(v11, v10);

  MusicLibrarySectionedRequest<>.filterItems(equalTo:)();
  v24[3] = v5;
  v24[4] = sub_1007018BC();
  v12 = sub_10001C8B8(v24);
  v19 = v6;
  (*(v6 + 16))(v12, v10, v5);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = a1;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v13 = type metadata accessor for MusicPlaybackIntentDescriptor();
  (*(*(v13 - 8) + 56))(v20, 0, 1, v13);
  return (*(v19 + 8))(v10, v5);
}

uint64_t sub_1006FD384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Artist();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v24[5] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v6 - 8);
  v26 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_10118CEE8);
  __chkstk_darwin(v8);
  v24[8] = v24 - v9;
  v30 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v30);
  v24[7] = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v25 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v25);
  v24[6] = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v17 = v24 - v16;
  v29 = v8;
  v34[3] = v8;
  v34[4] = sub_1007018BC();
  v18 = sub_10001C8B8(v34);
  sub_1006FF6AC(&_swiftEmptySetSingleton, v18);
  sub_100701920(a1, v17);
  v19 = type metadata accessor for MusicVideo();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_1000095E8(v17, &unk_1011846B0);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  else
  {
    *(&v32 + 1) = v19;
    v33 = sub_1006FFE18(&unk_101193C00, &type metadata accessor for MusicVideo);
    v21 = sub_10001C8B8(&v31);
    (*(v20 + 32))(v21, v17, v19);
  }

  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v22 = type metadata accessor for MusicPlaybackIntentDescriptor();
  return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
}

Swift::Int sub_1006FDC30@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Artist();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TitledSection();
  type metadata accessor for MusicVideo();
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CEE8);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v10 = _s11MusicVideosVMa(0);
  MusicLibrarySectionedRequest.filterItems(text:)(*(v1 + v10[8]));
  sub_1006FFEC4(v1 + v10[7], v9, _s11MusicVideosV5ScopeOMa);
  if ((*(v4 + 48))(v9, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v9, v3);
    swift_getKeyPath();
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    (*(v4 + 8))(v6, v3);
  }

  sub_1006FDE90();
  return sub_1006FF31C(*(v1 + v10[9]), a1);
}

void sub_1006FDE90()
{
  v1 = _s11MusicVideosVMa(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + *(v2 + 40));
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      swift_getKeyPath();
      sub_10010FC20(&qword_10118CEE8);
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
      goto LABEL_14;
    }

    if (v5 == 4)
    {
      swift_getKeyPath();
      sub_10010FC20(&qword_10118CEE8);
      MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

LABEL_15:
      swift_getKeyPath();
      MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

      return;
    }
  }

  else if (!*(v0 + *(v2 + 40)) || v5 == 1)
  {
    swift_getKeyPath();
    sub_10010FC20(&qword_10118CEE8);
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
LABEL_14:

    goto LABEL_15;
  }

  v6 = v2;
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, static Logger.libraryView);
  sub_1006FFEC4(v0, v4, _s11MusicVideosVMa);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    v16[7] = v4[*(v6 + 40)];
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_1006FFF2C(v4, _s11MusicVideosVMa);
    v15 = sub_1000105AC(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Tried to apply unhandled sortOption=%{public}s to music videos request.", v10, 0xCu);
    sub_10000959C(v11);
  }

  else
  {

    sub_1006FFF2C(v4, _s11MusicVideosVMa);
  }
}

uint64_t sub_1006FE258()
{
  v1 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s11MusicVideosVMa(0);
  sub_1006FFEC4(v0 + *(v4 + 28), v3, _s11MusicVideosV5ScopeOMa);
  v5 = type metadata accessor for Artist();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) != 1)
  {
    sub_1006FFF2C(v3, _s11MusicVideosV5ScopeOMa);
    return 3;
  }

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 stringForKey:v8];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    v14 = _findStringSwitchCase(cases:string:)(&off_101098DD8, v13);

    if (!v14)
    {
      return 0;
    }

    if (v14 == 1)
    {
      return 1;
    }
  }

  v16 = [v6 standardUserDefaults];
  Library.SortConfiguration.storageKey.getter(4u);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 stringForKey:v17];

  if (!v18)
  {
    return 3;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  v23 = _findStringSwitchCase(cases:string:)(&off_101098E28, v22);

  if (v23 >= 3)
  {
    return 3;
  }

  else
  {
    return v23;
  }
}

void *sub_1006FE4C0()
{
  v1 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s11MusicVideosVMa(0);
  sub_1006FFEC4(v0 + *(v4 + 28), v3, _s11MusicVideosV5ScopeOMa);
  v5 = type metadata accessor for Artist();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    if (*(v0 + 16))
    {
      v6 = &off_101098FF8;
    }

    else
    {
      v8 = [objc_opt_self() currentDevice];
      v9 = [v8 userInterfaceIdiom];

      v6 = &off_101098FF8;
      if (v9 != 6)
      {
        v11[1] = *(v0 + 8);
        type metadata accessor for MusicLibrary();

        v11[0] = static MusicLibrary.shared.getter();
        sub_1006FFE18(&qword_10118CE20, &type metadata accessor for MusicLibrary);
        v10 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v10)
        {
          v6 = &off_101099020;
        }
      }
    }
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_1006FFF2C(v3, _s11MusicVideosV5ScopeOMa);
  return v6;
}

uint64_t sub_1006FE6C4(uint64_t a1)
{
  v3 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11MusicVideosVMa(0);
  v7 = *(v1 + *(v6 + 36));
  result = sub_10018FCA0(v7, a1);
  if ((result & 1) == 0)
  {
    v9 = 0xD000000000000012;
    v10 = [objc_opt_self() standardUserDefaults];
    v16[3] = sub_10010FC20(&unk_10118CD70);
    v16[4] = sub_100178DD8(&unk_101182910, sub_100178D84);
    v16[5] = sub_100178DD8(&unk_101182920, sub_100178E50);
    v16[0] = v7;
    sub_1006FFEC4(v1 + *(v6 + 28), v5, _s11MusicVideosV5ScopeOMa);
    v11 = type metadata accessor for Artist();
    v12 = (*(*(v11 - 8) + 48))(v5, 1, v11);

    if (v12 == 1)
    {
      v13 = "impressionParentId";
    }

    else
    {
      sub_1006FFF2C(v5, _s11MusicVideosV5ScopeOMa);
      v13 = "LibraryArtistDetail";
      v9 = 0xD000000000000013;
    }

    v15[0] = v9;
    v15[1] = v13 | 0x8000000000000000;

    v14._countAndFlagsBits = 0x704F7265746C6946;
    v14._object = 0xEC0000006E6F6974;
    String.append(_:)(v14);

    NSUserDefaults.encodeValue(_:forKey:)(v16);

    return sub_10000959C(v16);
  }

  return result;
}

uint64_t sub_1006FE930(uint64_t a1)
{
  v3 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11MusicVideosVMa(0);
  v7 = *(v6 + 36);
  v8 = *(v1 + v7);
  *(v1 + v7) = a1;
  v9 = sub_10018FCA0(a1, v8);

  if ((v9 & 1) == 0)
  {
    v11 = 0xD000000000000012;
    v12 = [objc_opt_self() standardUserDefaults];
    v18[3] = sub_10010FC20(&unk_10118CD70);
    v18[4] = sub_100178DD8(&unk_101182910, sub_100178D84);
    v18[5] = sub_100178DD8(&unk_101182920, sub_100178E50);
    v18[0] = a1;
    sub_1006FFEC4(v1 + *(v6 + 28), v5, _s11MusicVideosV5ScopeOMa);
    v13 = type metadata accessor for Artist();
    v14 = (*(*(v13 - 8) + 48))(v5, 1, v13);

    if (v14 == 1)
    {
      v15 = "impressionParentId";
    }

    else
    {
      sub_1006FFF2C(v5, _s11MusicVideosV5ScopeOMa);
      v15 = "LibraryArtistDetail";
      v11 = 0xD000000000000013;
    }

    v17[0] = v11;
    v17[1] = v15 | 0x8000000000000000;

    v16._countAndFlagsBits = 0x704F7265746C6946;
    v16._object = 0xEC0000006E6F6974;
    String.append(_:)(v16);

    NSUserDefaults.encodeValue(_:forKey:)(v18);

    return sub_10000959C(v18);
  }

  return result;
}

Swift::Int sub_1006FEBAC()
{
  v1 = v0;
  v2 = type metadata accessor for Artist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1006FFEC4(v1, v8, _s11MusicVideosV5ScopeOMa);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_1006FFE18(&qword_101188E70, &type metadata accessor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

void sub_1006FED9C()
{
  v1 = type metadata accessor for Artist();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006FFEC4(v0, v7, _s11MusicVideosV5ScopeOMa);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1uLL);
    sub_1006FFE18(&qword_101188E70, &type metadata accessor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

Swift::Int sub_1006FEF68()
{
  v1 = v0;
  v2 = type metadata accessor for Artist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1006FFEC4(v1, v8, _s11MusicVideosV5ScopeOMa);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1uLL);
    sub_1006FFE18(&qword_101188E70, &type metadata accessor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

_UNKNOWN **sub_1006FF1A8()
{
  v1 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s11MusicVideosVMa(0);
  sub_1006FFEC4(v0 + *(v4 + 28), v3, _s11MusicVideosV5ScopeOMa);
  v5 = type metadata accessor for Artist();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v7 = static MusicLibrary.== infix(_:_:)();

  if (v6 == 1)
  {
    if (v7)
    {
      return &off_101098B80;
    }

    else
    {
      return &off_101098BA8;
    }
  }

  else
  {
    if (v7)
    {
      v8 = &off_101098BD0;
    }

    else
    {
      v8 = &off_101098BF8;
    }

    sub_1006FFF2C(v3, _s11MusicVideosV5ScopeOMa);
  }

  return v8;
}

Swift::Int sub_1006FF31C(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for MusicFavoriteStatus();
  result = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v19 = v5;
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    v10 = result & ~v9;
    if ((*(a1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      while (!*(*(a1 + 48) + v10) || *(*(a1 + 48) + v10) == 2)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_10;
        }

        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

LABEL_10:
      swift_getKeyPath();
      v13 = v19;
      (*(v19 + 104))(v7, enum case for MusicFavoriteStatus.favorited(_:), v3);
      sub_10010FC20(&qword_10118CEE8);
      sub_1006FFE18(&qword_1011831C8, &type metadata accessor for MusicFavoriteStatus);
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();

      result = (*(v13 + 8))(v7, v3);
    }

LABEL_11:
    if (*(a1 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v14 = -1 << *(a1 + 32);
      v15 = result & ~v14;
      if ((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = ~v14;
        while (!*(*(a1 + 48) + v15) || *(*(a1 + 48) + v15) == 1)
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_20;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            return result;
          }
        }

LABEL_20:
        sub_10010FC20(&qword_10118CEE8);
        return MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      }
    }
  }

  return result;
}

uint64_t sub_1006FF6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TitledSection();
  type metadata accessor for MusicVideo();
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CEE8);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v13 = _s11MusicVideosVMa(0);
  MusicLibrarySectionedRequest.filterItems(text:)(*(v2 + v13[8]));
  sub_1006FFEC4(v2 + v13[7], v12, _s11MusicVideosV5ScopeOMa);
  if ((*(v7 + 48))(v12, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    swift_getKeyPath();
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    (*(v7 + 8))(v9, v6);
  }

  sub_1006FDE90();
  v14 = *(v2 + v13[9]);
  if (*(a1 + 16) <= v14[2] >> 3)
  {
    v18 = *(v3 + v13[9]);

    sub_100700034(a1);
    v15 = v18;
  }

  else
  {

    v15 = sub_100700254(a1, v14);
  }

  sub_1006FF31C(v15, a2);
}

void sub_1006FF96C(uint64_t a1)
{
  v3 = type metadata accessor for Artist();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10045EC58(*v1);
  String.hash(into:)();

  v12[1] = *(v1 + 8);
  type metadata accessor for MusicLibrary();
  sub_1006FFE18(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16));
  v10 = _s11MusicVideosVMa(0);
  sub_1006FFEC4(v1 + v10[7], v9, _s11MusicVideosV5ScopeOMa);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1uLL);
    sub_1006FFE18(&qword_101188E70, &type metadata accessor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  String.hash(into:)();
  sub_10010B100(a1, *(v1 + v10[9]));
  v11 = *(v1 + v10[10] + 1);
  String.hash(into:)();

  Hasher._combine(_:)(v11);
}

Swift::Int sub_1006FFD4C()
{
  Hasher.init(_seed:)();
  sub_1006FF96C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1006FFD90()
{
  Hasher.init(_seed:)();
  sub_1006FF96C(v1);
  return Hasher._finalize()();
}

uint64_t sub_1006FFE18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006FFE6C(uint64_t a1)
{
  result = sub_1006FFE18(&qword_10119F9F8, _s11MusicVideosVMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1006FFEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006FFF2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006FFF8C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1006FFFE4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

uint64_t sub_100700034(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_100194E54(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_100700128(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100195A08(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

_BYTE *sub_100700254(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v7 = a1;
  v47 = 0;
  v8 = *(a1 + 56);
  v55 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  v52 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v8;
  v53 = (63 - v9) >> 6;
  v57 = a2 + 7;

  v56 = 0;
LABEL_6:
  while (2)
  {
    if (!v11)
    {
      v13 = v56;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v53)
        {
          goto LABEL_70;
        }

        v11 = *(v55 + 8 * v14);
        ++v13;
        if (v11)
        {
          v56 = v14;
          goto LABEL_12;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      v43 = v12;

      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_35;
      }

      v44 = swift_slowAlloc();
      memcpy(v44, v57, v43);
      v45 = v47;
      v46 = sub_100700F30(v44, v48, v6, v2, &v59);

      if (!v45)
      {

        v52 = v61;
        v56 = v62;
        v6 = v46;
        goto LABEL_70;
      }

      __break(1u);
      return result;
    }

LABEL_12:
    v15 = *(*(v7 + 48) + (__clz(__rbit64(v11)) | (v56 << 6)));
    Hasher.init(_seed:)();
    v11 &= v11 - 1;
    String.hash(into:)();

    v16 = Hasher._finalize()();
    v17 = -1 << v6[32];
    v2 = v16 & ~v17;
    v4 = v2 >> 6;
    v3 = 1 << v2;
    if (((1 << v2) & *(v57 + (v2 >> 6))) == 0)
    {
      continue;
    }

    break;
  }

  v54 = v7;
  v5 = ~v17;
  while (1)
  {
    if (*(*(v6 + 6) + v2))
    {
      if (*(*(v6 + 6) + v2) == 1)
      {
        v18 = 0x657469726F766166;
      }

      else
      {
        v18 = 0x64616F6C6E776F64;
      }

      v19 = 0xE900000000000073;
      if (v15)
      {
LABEL_22:
        if (v15 == 1)
        {
          v21 = 0x657469726F766166;
        }

        else
        {
          v21 = 0x64616F6C6E776F64;
        }

        v20 = 0xE900000000000073;
        if (v18 != v21)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7105633;
      if (v15)
      {
        goto LABEL_22;
      }
    }

    v20 = 0xE300000000000000;
    if (v18 != 7105633)
    {
      goto LABEL_27;
    }

LABEL_26:
    if (v19 == v20)
    {
      v61 = v52;
      v62 = v56;
      v63 = v11;
      v5 = v54;
      v59 = v54;
      v60 = v55;

      goto LABEL_34;
    }

LABEL_27:
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      break;
    }

    v2 = (v2 + 1) & v5;
    v4 = v2 >> 6;
    v3 = 1 << v2;
    if ((*(v57 + (v2 >> 6)) & (1 << v2)) == 0)
    {
      v7 = v54;
      goto LABEL_6;
    }
  }

  v61 = v52;
  v62 = v56;
  v63 = v11;
  v5 = v54;
  v59 = v54;
  v60 = v55;
LABEL_34:
  v24 = v6[32];
  v48 = ((1 << v24) + 63) >> 6;
  v12 = 8 * v48;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_74;
  }

LABEL_35:
  v49 = &v47;
  __chkstk_darwin(v23);
  v2 = &v47 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v2, v57, v25);
  v26 = *(v2 + 8 * v4) & ~v3;
  v27 = *(v6 + 2);
  v51 = v2;
  *(v2 + 8 * v4) = v26;
  v28 = v27 - 1;
LABEL_36:
  v50 = v28;
LABEL_37:
  while (2)
  {
    if (v11)
    {
LABEL_43:
      v3 = *(*(v5 + 48) + (__clz(__rbit64(v11)) | (v56 << 6)));
      Hasher.init(_seed:)();
      v11 &= v11 - 1;
      String.hash(into:)();

      v2 = &v58;
      v31 = Hasher._finalize()();
      v32 = -1 << v6[32];
      v33 = v31 & ~v32;
      v4 = v33 >> 6;
      v34 = 1 << v33;
      if (((1 << v33) & *(v57 + (v33 >> 6))) == 0)
      {
        continue;
      }

      v35 = ~v32;
      while (1)
      {
        if (*(*(v6 + 6) + v33))
        {
          if (*(*(v6 + 6) + v33) == 1)
          {
            v36 = 0x657469726F766166;
          }

          else
          {
            v36 = 0x64616F6C6E776F64;
          }

          v2 = 0xE900000000000073;
          if (v3)
          {
LABEL_53:
            if (v3 == 1)
            {
              v38 = 0x657469726F766166;
            }

            else
            {
              v38 = 0x64616F6C6E776F64;
            }

            v37 = 0xE900000000000073;
            if (v36 != v38)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }
        }

        else
        {
          v2 = 0xE300000000000000;
          v36 = 7105633;
          if (v3)
          {
            goto LABEL_53;
          }
        }

        v37 = 0xE300000000000000;
        if (v36 != 7105633)
        {
          goto LABEL_58;
        }

LABEL_57:
        if (v2 == v37)
        {

LABEL_62:
          v40 = v51[v4];
          v51[v4] = v40 & ~v34;
          v5 = v54;
          if ((v40 & v34) != 0)
          {
            v28 = v50 - 1;
            if (__OFSUB__(v50, 1))
            {
              __break(1u);
            }

            if (v50 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_70;
            }

            goto LABEL_36;
          }

          goto LABEL_37;
        }

LABEL_58:
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v39)
        {
          goto LABEL_62;
        }

        v33 = (v33 + 1) & v35;
        v4 = v33 >> 6;
        v34 = 1 << v33;
        if ((*(v57 + (v33 >> 6)) & (1 << v33)) == 0)
        {
          v5 = v54;
          goto LABEL_37;
        }
      }
    }

    break;
  }

  v29 = v56;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v30 >= v53)
    {
      break;
    }

    v11 = *(v55 + 8 * v30);
    ++v29;
    if (v11)
    {
      v56 = v30;
      goto LABEL_43;
    }
  }

  if (v53 <= v56 + 1)
  {
    v41 = v56 + 1;
  }

  else
  {
    v41 = v53;
  }

  v56 = v41 - 1;
  v6 = sub_1003B1EA0(v51, v48, v50, v6);
LABEL_70:
  sub_10005C9F8();
  return v6;
}

_BYTE *sub_1007009C0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << v5[32];
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 6) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = v5[32];
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 2);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1003B2420(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << v5[32];
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 6) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 6) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_100701230(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_10005C9F8();
    return v5;
  }

  __break(1u);
  return result;
}

Swift::Int sub_100700F30(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v28 = result;
  v6 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v30 = a3 + 56;
LABEL_2:
  v27 = v7;
LABEL_3:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_9:
      v13 = *(*(*a5 + 48) + (__clz(__rbit64(v9)) | (v10 << 6)));
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(a3 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if (((1 << v15) & *(v30 + 8 * (v15 >> 6))) == 0)
      {
        continue;
      }

      v18 = ~v14;
      while (1)
      {
        if (*(*(a3 + 48) + v15))
        {
          if (*(*(a3 + 48) + v15) == 1)
          {
            v19 = 0x657469726F766166;
          }

          else
          {
            v19 = 0x64616F6C6E776F64;
          }

          v20 = 0xE900000000000073;
          if (v13)
          {
LABEL_19:
            if (v13 == 1)
            {
              v22 = 0x657469726F766166;
            }

            else
            {
              v22 = 0x64616F6C6E776F64;
            }

            v21 = 0xE900000000000073;
            if (v19 != v22)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v20 = 0xE300000000000000;
          v19 = 7105633;
          if (v13)
          {
            goto LABEL_19;
          }
        }

        v21 = 0xE300000000000000;
        if (v19 != 7105633)
        {
          goto LABEL_24;
        }

LABEL_23:
        if (v20 == v21)
        {

LABEL_28:
          v24 = v28[v16];
          v28[v16] = v24 & ~v17;
          if ((v24 & v17) != 0)
          {
            v7 = v27 - 1;
            if (__OFSUB__(v27, 1))
            {
LABEL_37:
              __break(1u);
              return result;
            }

            if (v27 == 1)
            {
              return &_swiftEmptySetSingleton;
            }

            goto LABEL_2;
          }

          goto LABEL_3;
        }

LABEL_24:
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_28;
        }

        v15 = (v15 + 1) & v18;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if ((*(v30 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (v11 <= v8 + 1)
  {
    v25 = v8 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_1003B1EA0(v28, a2, v27, a3);
}

unint64_t *sub_100701230(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1003B2420(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100701468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_10119FA00);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1006FFEC4(a1, &v20 - v13, _s11MusicVideosV5ScopeOMa);
  sub_1006FFEC4(a2, &v14[v15], _s11MusicVideosV5ScopeOMa);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1006FFEC4(v14, v10, _s11MusicVideosV5ScopeOMa);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v17 = static Artist.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1006FFF2C(v14, _s11MusicVideosV5ScopeOMa);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v14, &qword_10119FA00);
    v17 = 0;
    return v17 & 1;
  }

  sub_1006FFF2C(v14, _s11MusicVideosV5ScopeOMa);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_100701750(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_10045EC58(*a1);
  v7 = v6;
  if (v5 == sub_10045EC58(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_16:
      v21 = 0;
      return v21 & 1;
    }
  }

  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_16;
  }

  v11 = _s11MusicVideosVMa(0);
  if ((sub_100701468(a1 + v11[7], a2 + v11[7]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = v11[8];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if ((v13 != *v15 || v14 != v15[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((sub_10018FCA0(*(a1 + v11[9]), *(a2 + v11[9])) & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = v11[10];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 1);
  v19 = (a2 + v16);
  v20 = v19[1];
  v21 = sub_1006B8B0C(*v17, *v19) & (v18 ^ v20 ^ 1);
  return v21 & 1;
}

unint64_t sub_1007018BC()
{
  result = qword_101190A00;
  if (!qword_101190A00)
  {
    sub_1001109D0(&qword_10118CEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190A00);
  }

  return result;
}

uint64_t sub_100701920(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011846B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100701990(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1007019EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_100701A4C(void *a1, void *a2)
{
  v5 = sub_10010FC20(&qword_10119FA20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000954C(a1, a1[3]);
  sub_1007020A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = a2;
  v10 = UIImageJPEGRepresentation(v9, 0.9);
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  v18 = v12;
  v19 = v14;
  v17 = 0;
  sub_10010FC20(&qword_10119FA28);
  sub_100702148();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {

    sub_100029CA4(v18, v19);
LABEL_7:
    (*(v6 + 8))(v8, v5);
    return;
  }

  sub_100029CA4(v18, v19);
  [(UIImage *)v9 scale];
  v18 = v15;
  v17 = 1;
  sub_100282B9C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_100701C74()
{
  if (*v0)
  {
    return 0x656C616373;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_100701CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
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

uint64_t sub_100701D7C(uint64_t a1)
{
  v2 = sub_1007020A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100701DB8(uint64_t a1)
{
  v2 = sub_1007020A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100701DF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100701E3C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_100701E3C(void *a1)
{
  v3 = sub_10010FC20(&qword_10119FA08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = sub_10000954C(a1, a1[3]);
  sub_1007020A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v17 = 1;
    sub_100282AE0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if ((v16 & 1) != 0 || (v9 = v15, v17 = 0, sub_1007020F4(), KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), v10 = v16, v16 >> 60 == 15))
    {
      (*(v4 + 8))(v6, v3);
      v7 = 0;
    }

    else
    {
      v11 = *&v15;
      v12 = objc_allocWithZone(UIImage);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v7 = [v12 initWithData:isa scale:v9];

      sub_100029CA4(v11, v10);
      (*(v4 + 8))(v6, v3);
    }
  }

  sub_10000959C(a1);
  return v7;
}

unint64_t sub_1007020A0()
{
  result = qword_10119FA10;
  if (!qword_10119FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA10);
  }

  return result;
}

unint64_t sub_1007020F4()
{
  result = qword_10119FA18;
  if (!qword_10119FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA18);
  }

  return result;
}

unint64_t sub_100702148()
{
  result = qword_10119FA30;
  if (!qword_10119FA30)
  {
    sub_1001109D0(&qword_10119FA28);
    sub_1007021CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA30);
  }

  return result;
}

unint64_t sub_1007021CC()
{
  result = qword_10119FA38;
  if (!qword_10119FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA38);
  }

  return result;
}

unint64_t sub_100702234()
{
  result = qword_10119FA40;
  if (!qword_10119FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA40);
  }

  return result;
}

unint64_t sub_10070228C()
{
  result = qword_10119FA48;
  if (!qword_10119FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA48);
  }

  return result;
}

unint64_t sub_1007022E4()
{
  result = qword_10119FA50;
  if (!qword_10119FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA50);
  }

  return result;
}

id sub_100702394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_heightNeeded] = 0;
  *&v4[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView] = 0;
  *&v4[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView] = 0;
  *&v4[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView] = 0;
  v8 = &v4[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_descriptionText];
  *v8 = a3;
  *(v8 + 1) = a4;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  v10 = String._bridgeToObjectiveC()();

  [v9 setTitle:v10];

  v11 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v9 action:"dismissAnimated"];
  v12 = AccessibilityIdentifier.doneButton.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  sub_100009F78(0, &qword_101181580);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v13, v14);
  v15 = [v9 navigationItem];

  [v15 setLeftBarButtonItem:v11];
  return v9;
}

void sub_1007025E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_10070286C();
  [v7 addSubview:v8];

  sub_1007028D0(0.0, 0.0, 540.0, 0.0);
  v9 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  [*&v1[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView] sizeThatFits:{540.0, 0.0}];
  if (v10 > 648.0)
  {
    v10 = 648.0;
  }

  [v1 setPreferredContentSize:{540.0, v10}];
  sub_10010FC20(&unk_101182D80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6B0;
  *(v11 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v11 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = ObjectType;
  v13 = v1;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v14 = *&v1[v9];
  v15 = sub_100702AE8();
  [v14 setMaskView:v15];

  sub_100702B64(1.0);
  v16 = *&v1[v9];
  v17 = sub_100702C4C();
  [v16 _addContentSubview:v17 atBack:0];

  sub_100702D10(0.0);
}

id sub_10070286C()
{
  v1 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  v2 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView);
  }

  else
  {
    v4 = sub_10070320C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1007028D0(double a1, double a2, double a3, double a4)
{
  Width = CGRectGetWidth(*&a1);
  v6 = HI.SizeClass.init(_:)(Width);
  v7 = sub_10070286C();
  [v7 textContainerInset];

  v8 = HI.SizeClass.margin.getter(v6);
  v9 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  [*(v4 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView) adjustedContentInset];
  if (20.0 - v10 < 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 20.0 - v10;
  }

  result = [*(v4 + v9) textContainerInset];
  if (v16 != 20.0 || v8 != v13 || v11 != v14 || v8 != v15)
  {
    v20 = *(v4 + v9);

    return [v20 setTextContainerInset:{20.0, v8, v11, v8}];
  }

  return result;
}

void sub_1007029C4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_10070286C();
  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v4 setFont:v5];

  [*&a3[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView] sizeThatFits:{540.0, 0.0}];
  if (v6 > 648.0)
  {
    v6 = 648.0;
  }

  [a3 setPreferredContentSize:{540.0, v6}];
  v7 = [a3 view];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

char *sub_100702AE8()
{
  v1 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView;
  v2 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for DescriptionModal.Content.MaskView());
    v6 = sub_10070393C(64.0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100702B64(double a1)
{
  v2 = v1;
  v4 = sub_100702AE8();
  sub_1007037E0(a1);

  v10 = *(v2 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView);
  v5 = sub_10070286C();
  [v5 contentOffset];
  v7 = v6;

  v8 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  [*(v2 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView) frame];
  Width = CGRectGetWidth(v12);
  [*(v2 + v8) frame];
  [v10 setFrame:{0.0, v7, Width, CGRectGetHeight(v13)}];
}

id sub_100702C4C()
{
  v1 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
    v6 = objc_allocWithZone(type metadata accessor for ProgressiveBlurView());
    v7 = ProgressiveBlurView.init(blurRadius:edge:cutoff:interpolation:)(3, v5, 6.0, 0.3);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_100702D10(double a1)
{
  v3 = sub_100702C4C();
  [v3 setAlpha:a1];

  v17 = *(v1 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView);
  v4 = sub_10070286C();
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v13 = CGRectGetHeight(v19) + -64.0;
  v14 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  [*(v1 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView) contentOffset];
  v16 = v13 + v15;
  [*(v1 + v14) frame];
  [v17 setFrame:{0.0, v16, CGRectGetWidth(v20), 64.0}];
}

void sub_100702E74()
{
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLayoutSubviews");
  v1 = sub_10070286C();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1007028D0(v15, v17, v19, v21);
  v22 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  v23 = *&v0[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;

  [v23 sizeThatFits:{v27, v29}];
  v31 = v30;

  v32 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_heightNeeded;
  *&v0[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_heightNeeded] = v31;
  v33 = sub_10070286C();
  [v33 contentOffset];
  v35 = v34;

  [*&v0[v22] frame];
  v37 = v35 + v36;
  [*&v0[v22] adjustedContentInset];
  v39 = (v37 - v38 - *&v0[v32] + 64.0) * 0.015625;
  if (v39 < 0.0)
  {
    v39 = 0.0;
  }

  if (v39 <= 1.0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 1.0;
  }

  sub_100702B64(v40);
  sub_100702D10(1.0 - v40);
}

id sub_100703094()
{
  v1 = sub_10070286C();
  [v1 contentOffset];

  v2 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  [*(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView) frame];
  return [*(v0 + v2) adjustedContentInset];
}

id sub_10070320C(uint64_t a1)
{
  v29 = a1;
  v38 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AttributeContainer();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AttributedString();
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v8 = [objc_allocWithZone(UITextView) init];
  [v8 setEditable:0];
  v9 = [v8 textContainer];
  [v9 setLineFragmentPadding:0.0];

  v10 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v10 setMinimumLineHeight:22.0];
  [v10 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  v11 = sub_100009F78(0, &qword_10119FB20);
  swift_dynamicCast();
  v12 = v39;
  v13 = *(a1 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_descriptionText + 8);
  v40 = *(a1 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_descriptionText);
  v41 = v13;
  sub_10010FC20(&qword_10119FB28);
  swift_allocObject();

  MarkupRenderer.init(_:)();
  dispatch thunk of MarkupRenderer.attributedString.getter();

  sub_10010FC20(&qword_10119FB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = NSParagraphStyleAttributeName;
  *(inited + 40) = v12;
  *(inited + 64) = v11;
  *(inited + 72) = NSFontAttributeName;
  v15 = objc_opt_self();
  v16 = NSParagraphStyleAttributeName;
  v17 = v12;
  v18 = NSFontAttributeName;
  v19 = [v15 preferredFontForTextStyle:UIFontTextStyleBody];
  *(inited + 104) = sub_100009F78(0, &qword_101183A00);
  *(inited + 80) = v19;
  sub_10010BA14(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101180420);
  swift_arrayDestroy();
  v20 = v30;
  AttributeContainer.init(_:)();
  v21 = v36;
  v22 = v33;
  v23 = v38;
  (*(v36 + 104))(v33, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v38);
  AttributedString.mergeAttributes(_:mergePolicy:)();
  (*(v21 + 8))(v22, v23);
  (*(v34 + 8))(v20, v37);
  sub_100009F78(0, &unk_101189D70);
  v24 = v32;
  v25 = v35;
  (*(v32 + 16))(v31, v7, v35);
  v26 = NSAttributedString.init(_:)();
  [v8 setAttributedText:v26];

  v27 = [objc_opt_self() labelColor];
  [v8 setTextColor:v27];

  [v8 setDelegate:v29];
  (*(v24 + 8))(v7, v25);
  return v8;
}

void sub_1007037E0(double a1)
{
  v2 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientOpacity;
  v3 = *(v1 + OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientOpacity);
  *(v1 + OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientOpacity) = a1;
  if (v3 != a1)
  {
    v4 = v1;
    v5 = *(v1 + OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradient);
    sub_10010FC20(&qword_101183990);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBC6D0;
    v7 = objc_opt_self();
    *(v6 + 32) = [v7 blackColor];
    v8 = [v7 blackColor];
    v9 = [v8 colorWithAlphaComponent:*(v4 + v2)];

    *(v6 + 40) = v9;
    v10 = (v5 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
    swift_beginAccess();
    v11 = v10[3];
    v13 = *v10;
    v12 = v10[1];
    v16 = v10[2];
    v17 = v11;
    v14 = v13;
    v15 = v12;
    sub_100703F54(&v14, v18);

    v18[1] = v15;
    v18[2] = v16;
    v18[3] = v17;
    *&v18[0] = v14;
    *(&v18[0] + 1) = v6;
    Gradient.View.typedConfiguration.setter(v18);
  }
}

char *sub_10070393C(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_opaqueFiller;
  v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  [v5 setBackgroundColor:v7];

  *&v2[v4] = v5;
  v8 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradient;
  sub_10010FC20(&qword_101183990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6D0;
  v10 = kCAGradientLayerAxial;
  *(v9 + 32) = [v6 blackColor];
  v11 = [v6 blackColor];
  v12 = [v11 colorWithAlphaComponent:0.0];

  *(v9 + 40) = v12;
  v13 = CGPoint.topCenter.unsafeMutableAddressor();
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = CGPoint.bottomCenter.unsafeMutableAddressor();
  swift_beginAccess();
  Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)(v10, v9, 0, 0, v23, v14, v15, *v16, v16[1]);
  v17 = objc_allocWithZone(type metadata accessor for Gradient.View());
  *&v2[v8] = Gradient.View.init(configuration:)(v23);
  *&v2[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientOpacity] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientHeight] = a1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for DescriptionModal.Content.MaskView();
  v18 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = *&v18[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_opaqueFiller];
  v20 = v18;
  [v20 addSubview:v19];
  [v20 addSubview:*&v20[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradient]];

  return v20;
}

id sub_100703BCC()
{
  v1 = *&v0[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_opaqueFiller];
  [v0 frame];
  Width = CGRectGetWidth(v11);
  [v0 frame];
  Height = CGRectGetHeight(v12);
  v4 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientHeight;
  [v1 setFrame:{0.0, 0.0, Width, Height - *&v0[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientHeight]}];
  v5 = *&v0[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradient];
  [v0 frame];
  v6 = CGRectGetHeight(v13) - *&v0[v4];
  [v0 frame];
  v7 = CGRectGetWidth(v14);
  v8 = *&v0[v4];

  return [v5 setFrame:{0.0, v6, v7, v8}];
}

id sub_100703D34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DescriptionModal.Content.MaskView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100703FB0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_opaqueFiller;
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  [v3 setBackgroundColor:v5];

  *(v1 + v2) = v3;
  v6 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradient;
  sub_10010FC20(&qword_101183990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBC6D0;
  v8 = kCAGradientLayerAxial;
  *(v7 + 32) = [v4 blackColor];
  v9 = [v4 blackColor];
  v10 = [v9 colorWithAlphaComponent:0.0];

  *(v7 + 40) = v10;
  v11 = CGPoint.topCenter.unsafeMutableAddressor();
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = CGPoint.bottomCenter.unsafeMutableAddressor();
  swift_beginAccess();
  Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)(v8, v7, 0, 0, v16, v12, v13, *v14, v14[1]);
  v15 = objc_allocWithZone(type metadata accessor for Gradient.View());
  *(v1 + v6) = Gradient.View.init(configuration:)(v16);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007041B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, char **a4@<X8>)
{
  v46 = a3;
  v47 = a2;
  v48 = a4;
  v5 = sub_10010FC20(&qword_101183A20);
  v6 = __chkstk_darwin(v5 - 8);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v41 - v8;
  v42 = type metadata accessor for ContainerDetail.Source(0);
  v9 = __chkstk_darwin(v42);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v20 = *(v14 + 16);
  v41 = v13;
  v20(&v41 - v18, a1, v13);
  v21 = sub_10010FC20(&qword_10118A430);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  v24 = _s6AlbumsV5ScopeOMa(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  v12[v22] = 0;
  v12[v23] = 0;
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for URL();
  v26 = v44;
  (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
  v20(v17, v19, v13);
  v27 = v43;
  sub_10070F034(v12, v43, type metadata accessor for ContainerDetail.Source);
  v28 = v26;
  v29 = v45;
  sub_1000089F8(v26, v45, &qword_101183A20);
  v30 = v46;

  v31 = sub_100866288(v17, v27, v47, v30, v29, 0);
  v32 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v33 = sub_100137F48(v31, v32);
  sub_1000095E8(v28, &qword_101183A20);
  sub_10070F180(v12, type metadata accessor for ContainerDetail.Source);
  (*(v14 + 8))(v19, v41);
  v34 = sub_10010FC20(&unk_1011841E0);
  v35 = v48;
  v36 = (v48 + *(v34 + 48));
  v37 = *(sub_10010FC20(&unk_10118CE00) + 48);
  *v35 = v33;
  v38 = type metadata accessor for UITraitOverrides();
  (*(*(v38 - 8) + 56))(v35 + v37, 1, 1, v38);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v39 = type metadata accessor for AppInterfaceContext.Activity(0);
  *v36 = 0;
  v36[1] = 0;
  swift_storeEnumTagMultiPayload();
  return (*(*(v39 - 8) + 56))(v35, 0, 1, v39);
}

uint64_t sub_100704654(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for Logger();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_10010FC20(&unk_10119F3A0);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for AppInterfaceContext.Activity(0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_10119DA70);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[20] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[21] = v7;
  v3[22] = v6;

  return _swift_task_switch(sub_10070484C, v7, v6);
}

uint64_t sub_10070484C()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v0[23] = v2;
  if (v2)
  {
    v3 = *(*(v1 + 24) + 16);
    if (v3)
    {

      v4 = [v3 selectedTab];
      if (!v4 || (v5 = v4, v6 = sub_10003F0FC(), v5, v6 == 7))
      {
        v6 = 1;
      }

      v7 = sub_1006BD694(v6);
      v0[24] = v7;
      if (v7)
      {
        v9 = v0[18];
        v8 = v0[19];
        v10 = v0[17];
        (*(v9 + 16))(v8, v0[6], v10);
        v11 = (*(v9 + 88))(v8, v10);
        if (v11 != enum case for MusicPageProvider.Destination.listenNow<A, B>(_:) && v11 != enum case for MusicPageProvider.Destination.radio<A, B>(_:))
        {
          (*(v0[18] + 8))(v0[19], v0[17]);
        }

        v15 = v0[5];
        v16 = MusicPageProvider.page(for:stackAuthority:motionCacheBucketID:)();
        v0[25] = v16;

        if (v15)
        {
          if (sub_10049CB78())
          {
            v17 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v16];

            v16 = v17;
            [v16 setPreferredContentSize:{static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(3u, 0, 0, 1, 0)}];
          }

          v0[28] = v16;
          v18 = v0[13];
          *v18 = v16;
          *(v18 + 8) = 1;
          *(v18 + 16) = &_swiftEmptySetSingleton;
          swift_storeEnumTagMultiPayload();
          v19 = v16;
          v20 = swift_task_alloc();
          v0[29] = v20;
          *v20 = v0;
          v20[1] = sub_100704EE8;
          v22 = v0[13];
          v21 = v0[14];
        }

        else
        {
          v23 = v0[15];
          v24 = v0[11];
          v25 = (v23 + *(sub_10010FC20(&unk_1011841E0) + 48));
          v26 = *(sub_10010FC20(&unk_10118CE00) + 48);
          *v23 = v16;
          v27 = type metadata accessor for UITraitOverrides();
          (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
          sub_10003D17C(v24, v23 + v26, &unk_10119F3A0);
          type metadata accessor for AppInterfaceContext.Activity.Destination(0);
          swift_storeEnumTagMultiPayload();
          *v25 = 0;
          v25[1] = 0;
          swift_storeEnumTagMultiPayload();
          v28 = v16;
          v29 = swift_task_alloc();
          v0[26] = v29;
          *v29 = v0;
          v29[1] = sub_100704C98;
          v22 = v0[15];
          v21 = v0[16];
        }

        return sub_100706024(v21, v22);
      }
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100704C98()
{
  v2 = *v1;
  v3 = (*v1)[15];
  (*v1)[27] = v0;

  sub_10070F180(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100705138;
  }

  else
  {
    sub_10070F180(v2[16], type metadata accessor for AppInterfaceContext.Activity);
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100704E00;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100704E00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100704EE8()
{
  v2 = *v1;
  v3 = (*v1)[13];
  (*v1)[30] = v0;

  sub_10070F180(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_1007053D0;
  }

  else
  {
    sub_10070F180(v2[14], type metadata accessor for AppInterfaceContext.Activity);
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100705050;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100705050()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100705138()
{
  v23 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 216);
    v19 = *(v0 + 200);
    v8 = *(v0 + 64);
    v20 = *(v0 + 56);
    v21 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    *(v0 + 24) = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to navigate to destination view controller with error=%s", v9, 0xCu);
    sub_10000959C(v10);

    (*(v8 + 8))(v21, v20);
  }

  else
  {
    v14 = *(v0 + 80);
    v15 = *(v0 + 56);
    v16 = *(v0 + 64);

    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1007053D0()
{
  v23 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v19 = *(v0 + 224);
    v8 = *(v0 + 64);
    v20 = *(v0 + 56);
    v21 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    *(v0 + 16) = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to present destination view controller with error=%s", v9, 0xCu);
    sub_10000959C(v10);

    (*(v8 + 8))(v21, v20);
  }

  else
  {
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 56);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100705668(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (v2 < 0)
  {
    return 0;
  }

  sub_100009F78(0, &qword_101197A30);
  return static NSObject.== infix(_:_:)() & 1;
}

Swift::Int sub_1007056DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (a4)
  {
    if (a4 == 1)
    {
      Hasher._combine(_:)(2uLL);
    }

    else
    {
      Hasher._combine(_:)(0);
      if (a2)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  return Hasher._finalize()();
}

void sub_1007057AC()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 2;
LABEL_5:
    Hasher._combine(_:)(v2);
    return;
  }

  v3 = *(v0 + 8);
  Hasher._combine(_:)(0);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
}

Swift::Int sub_100705874()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      Hasher._combine(_:)(2uLL);
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v1)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  return Hasher._finalize()();
}

uint64_t sub_100705948(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v53 = a2;
  v6 = sub_10010FC20(&unk_1011841F0);
  __chkstk_darwin(v6 - 8);
  v50 = &v49 - v7;
  v52 = type metadata accessor for AppInterfaceContext.Activity(0);
  v49 = *(v52 - 8);
  v8 = __chkstk_darwin(v52);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v49 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - v15;
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = sub_10010FC20(&qword_10119FD10);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  sub_1000089F8(a1, &v49 - v20, &qword_10119FD10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10070F24C(v21, v18, type metadata accessor for AppInterfaceContext.Activity);
    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_1012194A8);
    sub_10070F034(v18, v16, type metadata accessor for AppInterfaceContext.Activity);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v41;
      *v40 = 136446210;
      sub_10070F034(v16, v13, type metadata accessor for AppInterfaceContext.Activity);
      v42 = v52;
      v43 = String.init<A>(describing:)();
      v45 = v44;
      sub_10070F180(v16, type metadata accessor for AppInterfaceContext.Activity);
      v46 = sub_1000105AC(v43, v45, &v54);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "Successfully performed Activity=%{public}s", v40, 0xCu);
      sub_10000959C(v41);

      v47 = v53;
      if (!v53)
      {
        return sub_10070F180(v18, type metadata accessor for AppInterfaceContext.Activity);
      }
    }

    else
    {

      sub_10070F180(v16, type metadata accessor for AppInterfaceContext.Activity);
      v42 = v52;
      v47 = v53;
      if (!v53)
      {
        return sub_10070F180(v18, type metadata accessor for AppInterfaceContext.Activity);
      }
    }

    v48 = v50;
    sub_10070F034(v18, v50, type metadata accessor for AppInterfaceContext.Activity);
    (*(v49 + 56))(v48, 0, 1, v42);
    v47(v48);
    sub_1000095E8(v48, &unk_1011841F0);
    return sub_10070F180(v18, type metadata accessor for AppInterfaceContext.Activity);
  }

  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000060E4(v22, qword_1012194A8);
  sub_10070F034(a4, v10, type metadata accessor for AppInterfaceContext.Activity);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v54 = v27;
    *v25 = 136446466;
    sub_10070F034(v10, v13, type metadata accessor for AppInterfaceContext.Activity);
    v28 = v52;
    v29 = String.init<A>(describing:)();
    v31 = v30;
    sub_10070F180(v10, type metadata accessor for AppInterfaceContext.Activity);
    v32 = sub_1000105AC(v29, v31, &v54);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2114;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v33;
    *v26 = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to perform Activity=%{public}s with error=%{public}@", v25, 0x16u);
    sub_1000095E8(v26, &unk_101183D70);

    sub_10000959C(v27);

    v34 = v53;
    if (v53)
    {
LABEL_6:
      v35 = v50;
      (*(v49 + 56))(v50, 1, 1, v28);
      v34(v35);

      return sub_1000095E8(v35, &unk_1011841F0);
    }
  }

  else
  {

    sub_10070F180(v10, type metadata accessor for AppInterfaceContext.Activity);
    v28 = v52;
    v34 = v53;
    if (v53)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_100706024(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v3[13] = v4;
  v3[14] = *(v4 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for MainActor();
  v3[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[21] = v6;
  v3[22] = v5;

  return _swift_task_switch(sub_100706148, v6, v5);
}

uint64_t sub_100706148()
{
  v1 = static MainActor.shared.getter();
  *(v0 + 184) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1007061DC, v2, v4);
}

uint64_t sub_1007061DC()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[11];
  v12 = v0 + 2;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1007063D0;
  v7 = swift_continuation_init();
  sub_10070F034(v6, v2, type metadata accessor for AppInterfaceContext.Activity);
  v8 = *(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_10070F24C(v2, v9 + ((v8 + 24) & ~v8), type metadata accessor for AppInterfaceContext.Activity);
  sub_10070F034(v6, v3, type metadata accessor for AppInterfaceContext.Activity);
  sub_10070F034(v3, v4, type metadata accessor for AppInterfaceContext.Activity);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100710C78;
  *(v10 + 24) = v9;
  sub_10070F24C(v4, v10 + ((v8 + 32) & ~v8), type metadata accessor for AppInterfaceContext.Activity);

  sub_100706900(v3, sub_100711088, v10);

  sub_10070F180(v3, type metadata accessor for AppInterfaceContext.Activity);

  return _swift_continuation_await(v12);
}

uint64_t sub_1007063D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    swift_willThrow();

    v3 = v1[21];
    v4 = v1[22];
    v5 = sub_1007065D4;
  }

  else
  {
    v6 = v1[18];
    v7 = v1[10];

    sub_10070F24C(v6, v7, type metadata accessor for AppInterfaceContext.Activity);
    v3 = v1[21];
    v4 = v1[22];
    v5 = sub_100706540;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100706540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007065D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100706668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_1011841F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for AppInterfaceContext.Activity(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  sub_1000089F8(a1, v8, &unk_1011841F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_1011841F0);
    type metadata accessor for AppInterfaceContext.Error(0);
    sub_100710D0C();
    v16 = swift_allocError();
    sub_10070F034(a3, v17, type metadata accessor for AppInterfaceContext.Activity);
    sub_10010FC20(&qword_1011824A0);
    swift_allocError();
    *v18 = v16;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_10070F24C(v8, v15, type metadata accessor for AppInterfaceContext.Activity);
    sub_10070F034(v15, v13, type metadata accessor for AppInterfaceContext.Activity);
    sub_10070F24C(v13, *(*(a2 + 64) + 40), type metadata accessor for AppInterfaceContext.Activity);
    swift_continuation_throwingResume();
    return sub_10070F180(v15, type metadata accessor for AppInterfaceContext.Activity);
  }
}

uint64_t sub_100706900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v178 = a3;
  v180 = a2;
  v181 = a1;
  v164 = type metadata accessor for Playlist.Folder.Item();
  v159 = *(v164 - 8);
  v3 = __chkstk_darwin(v164);
  v163 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v4;
  __chkstk_darwin(v3);
  v173 = &v156 - v5;
  v162 = sub_10010FC20(&unk_1011841D0);
  v157 = *(v162 - 8);
  v6 = __chkstk_darwin(v162);
  v161 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v7;
  __chkstk_darwin(v6);
  v172 = (&v156 - v8);
  v170 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin(v170);
  v171 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v10 - 8);
  v169 = &v156 - v11;
  v167 = type metadata accessor for PlaylistPicker.Context(0);
  v12 = __chkstk_darwin(v167);
  v168 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v177 = &v156 - v14;
  v166 = sub_10010FC20(&qword_10119FD10);
  __chkstk_darwin(v166);
  v165 = &v156 - v15;
  v16 = type metadata accessor for PlaylistCreation.Context(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_10119FD30);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19 - 8);
  v23 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v156 - v24;
  v26 = type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  __chkstk_darwin(v26);
  v28 = (&v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for AppInterfaceContext.Activity(0);
  v174 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v175 = v31;
  v176 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = (&v156 - v32);
  sub_10070F034(v181, &v156 - v32, type metadata accessor for AppInterfaceContext.Activity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v116 = *v33;
      v181 = v33[1];
      v117 = sub_10010FC20(&unk_10118A290);
      sub_10003D17C(v33 + *(v117 + 48), v25, &qword_10119FD30);
      *v28 = 4;
      swift_storeEnumTagMultiPayload();
      sub_1000089F8(v25, v23, &qword_10119FD30);
      v118 = (*(v20 + 80) + 40) & ~*(v20 + 80);
      v119 = swift_allocObject();
      v119[2] = v179;
      v119[3] = v116;
      v119[4] = v181;
      sub_10003D17C(v23, v119 + v118, &qword_10119FD30);
      v120 = (v119 + ((v21 + v118 + 7) & 0xFFFFFFFFFFFFFFF8));
      v121 = v180;
      v122 = v178;
      *v120 = v180;
      v120[1] = v122;

      sub_100030444(v121);
      sub_10070BF44(v28, 0, 0, sub_10070FD00, v119);

      sub_10070F180(v28, type metadata accessor for AppInterfaceContext.Activity.Destination);
      return sub_1000095E8(v25, &qword_10119FD30);
    }

    v39 = (v33 + *(sub_10010FC20(&unk_1011841E0) + 48));
    v40 = *v39;
    v41 = v39[1];
    sub_10070F24C(v33, v28, type metadata accessor for AppInterfaceContext.Activity.Destination);
    sub_10070BF44(v28, v40, v41, v180, v178);
    sub_100020438(v40);
    v37 = type metadata accessor for AppInterfaceContext.Activity.Destination;
    v38 = v28;
    return sub_10070F180(v38, v37);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_10070F24C(v33, v18, type metadata accessor for PlaylistCreation.Context);
      sub_10070E768(v18);
      v35 = v180;
      if (v180)
      {
        v36 = v165;
        sub_10070F034(v181, v165, type metadata accessor for AppInterfaceContext.Activity);
        swift_storeEnumTagMultiPayload();
        v35(v36);
        sub_1000095E8(v36, &qword_10119FD10);
      }

      v37 = type metadata accessor for PlaylistCreation.Context;
      v38 = v18;
    }

    else
    {
      v78 = v33;
      v79 = v177;
      sub_10070F24C(v78, v177, type metadata accessor for PlaylistPicker.Context);
      v80 = [objc_allocWithZone(UINavigationController) init];
      v81 = v168;
      sub_10070F034(v79, v168, type metadata accessor for PlaylistPicker.Context);
      v82 = (v79 + v167[5]);
      v83 = *v82;
      v84 = v82[1];
      v85 = v82[2];
      v86 = type metadata accessor for Playlist.Folder();
      v87 = v169;
      (*(*(v86 - 8) + 56))(v169, 1, 1, v86);
      v88 = objc_allocWithZone(type metadata accessor for PlaylistPicker.ViewController(0));
      sub_10047ABA0(v83, v84, v85);
      v89 = sub_10046773C(v81, v83, v84, v85, v87);
      v90 = *(v179 + 32);
      if (v90 >= 0)
      {
        v91 = *(v179 + 32);
      }

      else
      {
        v91 = (v90 & 0x7FFFFFFFFFFFFFFFLL);
      }

      memset(v188, 0, sizeof(v188));
      v189 = 0;
      v190 = xmmword_100EBCEF0;
      v92 = (v90 & 0x7FFFFFFFFFFFFFFFLL);
      PresentationSource.init(viewController:position:)(v91, v188, v187);
      sub_100009F78(0, &qword_101181580);
      sub_100009F78(0, &qword_1011839A0);
      v93 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v94 = v80;
      v150 = 0;
      v151 = 0;
      v153 = sub_10070F9E4;
      v154 = v93;
      v152 = 0;
      v191.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v191.is_nil = 0;
      isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v191, v192).super.super.isa;
      v169 = v89;
      v96 = [v89 navigationItem];
      v168 = isa;
      [v96 setLeftBarButtonItem:isa];

      v97 = v171;
      sub_10070F034(v79, v171, type metadata accessor for PlaylistPicker.Mode);
      v98 = swift_getEnumCaseMultiPayload();
      v167 = v94;
      if (v98 == 1)
      {
        v99 = v159;
        v172 = *(v159 + 32);
        v100 = v173;
        v101 = v164;
        v172(v173, v97, v164);
        v102 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v103 = v163;
        (*(v99 + 16))(v163, v100, v101);
        sub_10012B7A8(v187, v182);
        v104 = *(v99 + 80);
        v105 = (v104 + 24) & ~v104;
        v179 = v160 + 7;
        v106 = (v160 + 7 + v105) & 0xFFFFFFFFFFFFFFF8;
        v107 = swift_allocObject();
        *(v107 + 16) = v102;
        v108 = v172;
        v172((v107 + v105), v103, v101);
        sub_10012B828(v182, v107 + v106);
        v109 = &v169[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
        v110 = *&v169[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
        *v109 = sub_10070F9EC;
        v109[1] = v107;

        sub_100020438(v110);

        v108(v103, v173, v101);
        sub_10012B7A8(v187, v182);
        v111 = (v104 + 16) & ~v104;
        v112 = (v179 + v111) & 0xFFFFFFFFFFFFFFF8;
        v113 = swift_allocObject();
        v108((v113 + v111), v103, v101);
        sub_10012B828(v182, v113 + v112);
        v114 = &v169[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
        v115 = *&v169[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
        *v114 = sub_10070FA9C;
        v114[1] = v113;
        sub_100020438(v115);
      }

      else
      {
        v124 = v157;
        v125 = *(v157 + 32);
        v126 = v172;
        v127 = v162;
        v125(v172, v97, v162);
        v128 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v129 = v161;
        (*(v124 + 16))(v161, v126, v127);
        sub_10012B7A8(v187, v182);
        v130 = *(v124 + 80);
        v131 = (v130 + 24) & ~v130;
        v173 = (v158 + 7);
        v132 = (v158 + 7 + v131) & 0xFFFFFFFFFFFFFFF8;
        v133 = swift_allocObject();
        *(v133 + 16) = v128;
        v125((v133 + v131), v129, v127);
        sub_10012B828(v182, v133 + v132);
        v134 = &v169[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
        v135 = *&v169[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
        *v134 = sub_10070FB9C;
        v134[1] = v133;

        sub_100020438(v135);

        v136 = swift_allocObject();
        swift_weakInit();
        v125(v129, v172, v127);
        v137 = (v130 + 16) & ~v130;
        v138 = &v173[v137] & 0xFFFFFFFFFFFFFFF8;
        v139 = swift_allocObject();
        v125((v139 + v137), v129, v127);
        *(v139 + v138) = v136;
        v140 = &v169[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
        v141 = *&v169[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
        *v140 = sub_10070FC58;
        v140[1] = v139;

        sub_100020438(v141);
      }

      v142 = v167;
      v143 = v169;
      [v167 pushViewController:v169 animated:0];
      v144 = v142;
      [v144 setModalPresentationStyle:2];
      [v144 setModalInPresentation:0];

      v145 = v176;
      sub_10070F034(v181, v176, type metadata accessor for AppInterfaceContext.Activity);
      v146 = (*(v174 + 80) + 32) & ~*(v174 + 80);
      v147 = swift_allocObject();
      v148 = v180;
      v149 = v178;
      *(v147 + 16) = v180;
      *(v147 + 24) = v149;
      sub_10070F24C(v145, v147 + v146, type metadata accessor for AppInterfaceContext.Activity);
      sub_100030444(v148);
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v144, 1, 1, sub_10070FB38, v147);

      sub_10012BA6C(v187);
      v37 = type metadata accessor for PlaylistPicker.Context;
      v38 = v177;
    }

    return sub_10070F180(v38, v37);
  }

  v42 = *v33;
  LODWORD(v43) = *(v33 + 8);
  v44 = v33[2];
  v45 = *(v179 + 32);
  if (v45 >= 0)
  {
    v46 = *(v179 + 32);
  }

  else
  {
    v46 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  memset(v182, 0, sizeof(v182));
  v183 = 0;
  v184 = xmmword_100EBCEF0;
  v47 = (v45 & 0x7FFFFFFFFFFFFFFFLL);
  PresentationSource.init(viewController:position:)(v46, v182, v187);
  v186 = 1;
  __chkstk_darwin(v48);
  *(&v156 - 8) = v42;
  *(&v156 - 7) = v187;
  v150 = v44;
  v151 = &v186;
  LOBYTE(v152) = v43;
  v153 = v180;
  v154 = v178;
  v155 = v181;
  sub_100377268(sub_10070F9A8, (&v156 - 10), v44);

  if (v186 == 1)
  {
    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000060E4(v49, qword_1012194A8);
    v50 = v42;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      LODWORD(v179) = v43;
      v43 = v54;
      v55 = swift_slowAlloc();
      v185[0] = v55;
      *v53 = 138543618;
      *(v53 + 4) = v50;
      *v43 = v50;
      *(v53 + 12) = 2082;
      v56 = v50;
      *&v188[0] = sub_10070AF04();
      *(&v188[0] + 1) = v57;
      sub_10010FC20(&qword_1011815E0);
      v58 = String.init<A>(describing:)();
      v60 = sub_1000105AC(v58, v59, v185);

      *(v53 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "Presenting viewController=%{public}@\nidentified by %{public}s", v53, 0x16u);
      sub_1000095E8(v43, &unk_101183D70);
      LOBYTE(v43) = v179;

      sub_10000959C(v55);
    }

    v61 = v50;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v185[0] = v66;
      *v64 = 138543618;
      *(v64 + 4) = v61;
      *v65 = v61;
      *(v64 + 12) = 2082;
      v67 = v61;
      *&v188[0] = sub_10070AF04();
      *(&v188[0] + 1) = v68;
      sub_10010FC20(&qword_1011815E0);
      v69 = String.init<A>(describing:)();
      v71 = sub_1000105AC(v69, v70, v185);

      *(v64 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v62, v63, "Presenting viewController=%{public}@\nidentified by %{public}s", v64, 0x16u);
      sub_1000095E8(v65, &unk_101183D70);

      sub_10000959C(v66);
    }

    v72 = v176;
    v73 = v174;
    sub_10070F034(v181, v176, type metadata accessor for AppInterfaceContext.Activity);
    v74 = (*(v73 + 80) + 40) & ~*(v73 + 80);
    v75 = swift_allocObject();
    v76 = v180;
    v75[2] = v61;
    v75[3] = v76;
    v75[4] = v178;
    sub_10070F24C(v72, v75 + v74, type metadata accessor for AppInterfaceContext.Activity);
    sub_100030444(v76);
    v77 = v61;
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v77, 1, v43, sub_10070F9E0, v75);
  }

  else
  {
  }

  return sub_10012BA6C(v187);
}

void sub_100707CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v18[1] = a5;
  v9 = sub_10010FC20(&qword_10119FD10);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  sub_1000089F8(a1, v18 - v10, &qword_10119FD10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1000095E8(v11, &qword_10119FD10);
  if (EnumCaseMultiPayload != 1)
  {
    if ((*(a2 + 32) & 0x8000000000000000) == 0)
    {
      v13 = sub_1006BDF60([*(a2 + 32) selectedIndex]);
      if (v13)
      {
        v14 = v13;
        v15 = [v13 viewControllers];
        sub_100009F78(0, &qword_101183D40);
        v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v16 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        v17 = type metadata accessor for NavigationController();
        v19.receiver = v14;
        v19.super_class = v17;
      }
    }

    if (*(a2 + 16))
    {

      MusicPageProvider.performSearch(for:in:)();
    }
  }

  if (a6)
  {
    a6(a1);
  }
}

void sub_100707E98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100707F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = a5;
  v25 = a4;
  v24 = a2;
  v5 = sub_10010FC20(&unk_1011841D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong presentingViewController];

    if (v16)
    {
      (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v10);
      (*(v6 + 16))(v9, v25, v5);
      sub_10012B7A8(v26, v28);
      v17 = *(v11 + 80);
      v26 = v16;
      v18 = (v17 + 16) & ~v17;
      v19 = (v12 + *(v6 + 80) + v18) & ~*(v6 + 80);
      v20 = swift_allocObject();
      (*(v11 + 32))(v20 + v18, v13, v10);
      (*(v6 + 32))(v20 + v19, v9, v5);
      sub_10012B828(v28, v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
      aBlock[4] = sub_10070FF0C;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010BC348;
      v21 = _Block_copy(aBlock);

      v22 = v26;
      [v26 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);
    }
  }
}

uint64_t sub_100708240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_10010FC20(&unk_1011841D0);
  v23 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v24 = &v23 - v7;
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  (*(v5 + 16))(v8, v25, v4);
  sub_10012B7A8(v26, v27);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = &protocol witness table for MainActor;
  (*(v10 + 32))(v21 + v18, v12, v9);
  (*(v5 + 32))(v21 + v19, v24, v23);
  sub_10012B828(v27, v21 + v20);
  sub_1001F4CB8(0, 0, v15, &unk_100EDF1D8, v21);
}

uint64_t sub_100708538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_100708630, v9, v8);
}

uint64_t sub_100708630()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.checkForDuplicates(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100708704;
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];

  return Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(v4, v2, 0, 1, v3, 1, 0);
}

uint64_t sub_100708704()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_100708888, v6, v5);
}

uint64_t sub_100708888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007088F0(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v31 - v10;
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = type metadata accessor for PlaylistCreation.Context(0);
  v15 = (v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
  swift_beginAccess();
  sub_1000089F8(a1 + v18, v17, &unk_10118F670);
  v19 = v15[8];
  v20 = sub_10010FC20(&unk_1011841D0);
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v17[v19], v34, v20);
  (*(v21 + 56))(&v17[v19], 0, 1, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a3;
  v23 = &v17[v15[7]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v17[v15[9]];
  *v24 = sub_10070FDB4;
  v24[1] = v22;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10070F034(v17, v13, type metadata accessor for PlaylistCreation.Context);
    swift_storeEnumTagMultiPayload();
    sub_10070F034(v13, v11, type metadata accessor for AppInterfaceContext.Activity);
    v25 = v33;
    sub_10070F034(v11, v33, type metadata accessor for AppInterfaceContext.Activity);
    v26 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    sub_10070F24C(v25, v27 + v26, type metadata accessor for AppInterfaceContext.Activity);
    v28 = a1;

    sub_100706900(v11, sub_100711088, v27);

    sub_10070F180(v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_10070F180(v13, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
    v29 = a1;
  }

  return sub_10070F180(v17, type metadata accessor for PlaylistCreation.Context);
}

uint64_t sub_100708CB0(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v46 = type metadata accessor for Playlist();
  v44 = *(v46 - 8);
  v8 = *(v44 + 64);
  v9 = __chkstk_darwin(v46);
  v10 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = type metadata accessor for PlaylistCreation.FlowResult(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  sub_10070F034(a1, &v37 - v17, type metadata accessor for PlaylistCreation.FlowResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_10070F180(v18, type metadata accessor for PlaylistCreation.FlowResult);
  if (EnumCaseMultiPayload != 2)
  {
    v21 = [a2 presentingViewController];
    if (v21)
    {
      v22 = v21;
      [v21 dismissViewControllerAnimated:1 completion:0];
    }

    sub_10070F034(a1, v16, type metadata accessor for PlaylistCreation.FlowResult);
    if (swift_getEnumCaseMultiPayload())
    {
      return sub_10070F180(v16, type metadata accessor for PlaylistCreation.FlowResult);
    }

    else
    {
      v23 = sub_10010FC20(&unk_10118A3A0);
      v24 = *&v16[*(v23 + 48)];
      v42 = *&v16[*(v23 + 64)];
      v43 = v24;
      v25 = v7;
      v39 = v7;
      v26 = v44;
      v27 = *(v44 + 32);
      v40 = v44 + 32;
      v41 = v27;
      v28 = v46;
      v27(v12, v16, v46);
      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
      (*(v26 + 16))(v10, v12, v28);
      type metadata accessor for MainActor();
      v38 = v43;
      v30 = a2;
      v31 = v45;

      v32 = static MainActor.shared.getter();
      v33 = (*(v26 + 80) + 48) & ~*(v26 + 80);
      v34 = (v8 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v35 + 2) = v32;
      *(v35 + 3) = &protocol witness table for MainActor;
      *(v35 + 4) = v43;
      *(v35 + 5) = v30;
      v36 = v46;
      v41(&v35[v33], v10, v46);
      *&v35[v34] = v42;
      *&v35[(v34 + 15) & 0xFFFFFFFFFFFFFFF8] = v31;
      sub_1001F4CB8(0, 0, v39, &unk_100EDF1C0, v35);

      return (*(v26 + 8))(v12, v36);
    }
  }

  return result;
}

uint64_t sub_1007090E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = type metadata accessor for Playlist();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v8[12] = *(v10 + 64);
  v8[13] = swift_task_alloc();
  sub_10010FC20(&unk_10118A5E0);
  v8[14] = swift_task_alloc();
  v8[15] = type metadata accessor for Notice.Variant(0);
  v8[16] = swift_task_alloc();
  v8[17] = type metadata accessor for Notice(0);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[23] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007092E0, v12, v11);
}

uint64_t sub_1007092E0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 40);

  v3 = type metadata accessor for Artwork();
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v5(v1, 1, 1, v3);
  if (v2)
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v8 = *(v0 + 40);
    [objc_allocWithZone(MPArtworkCatalog) initWithToken:v8 dataSource:*PlaylistCovers.ArtworkDataSource.shared.unsafeMutableAddressor()];
    Artwork.init(_:)();

    sub_1000095E8(v7, &unk_101188920);
    v5(v6, 0, 1, v3);
    sub_10003D17C(v6, v7, &unk_101188920);
  }

  v9 = [*(v0 + 48) presentingViewController];
  if (v9 && (v10 = v9, v11 = UIViewController.noticePresenter.getter(), v10, v11))
  {
    v43 = v5;
    v45 = v11;
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    v14 = *(v0 + 128);
    v42 = sub_10010FC20(&unk_10118C0C0);
    v15 = *(v42 + 48);
    *v14 = Playlist.name.getter();
    v14[1] = v16;
    sub_1000089F8(v12, v13, &unk_101188920);
    v17 = *(v4 + 48);
    if (v17(v13, 1, v3) == 1)
    {
      v40 = v17;
      v18 = *(v0 + 112);
      Playlist.artworkViewModel.getter(v18);
      v19 = type metadata accessor for ArtworkImage.ViewModel(0);
      v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
      v21 = *(v0 + 112);
      if (v20 == 1)
      {
        sub_1000095E8(*(v0 + 112), &unk_10118A5E0);
        v22 = 1;
      }

      else
      {
        (*(v4 + 16))(v14 + v15, *(v0 + 112), v3);
        sub_10070F180(v21, type metadata accessor for ArtworkImage.ViewModel);
        v22 = 0;
      }

      v23 = *(v0 + 160);
      v43(v14 + v15, v22, 1, v3);
      if (v40(v23, 1, v3) != 1)
      {
        sub_1000095E8(*(v0 + 160), &unk_101188920);
      }
    }

    else
    {
      (*(v4 + 32))(v14 + v15, *(v0 + 160), v3);
      v43(v14 + v15, 0, 1, v3);
    }

    v44 = *(v0 + 176);
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 128);
    v41 = *(v0 + 136);
    v27 = *(v0 + 96);
    v28 = *(v0 + 104);
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);
    v31 = *(v0 + 56);
    *(v26 + *(v42 + 64)) = *(v0 + 64);
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v26, v24);
    sub_10070F180(v26, type metadata accessor for Notice.Variant);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    (*(v29 + 16))(v28, v31, v30);
    v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v34 = (v27 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    (*(v29 + 32))(v35 + v33, v28, v30);
    v36 = (v35 + v34);
    *v36 = 0;
    v36[1] = 0;
    *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = Strong;
    sub_10070F24C(v24, v25, type metadata accessor for Notice);
    v37 = (v25 + *(v41 + 32));
    sub_100020438(*v37);
    *v37 = sub_10035AE54;
    v37[1] = v35;
    (*(*v45 + 200))(v25, 0);

    sub_1000095E8(v44, &unk_101188920);
    sub_10070F180(v25, type metadata accessor for Notice);
  }

  else
  {
    sub_1000095E8(*(v0 + 176), &unk_101188920);
  }

  v38 = *(v0 + 8);

  return v38();
}

void sub_10070987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v7 = sub_10010FC20(&unk_10118F670);
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Playlist.Folder.Item();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong presentingViewController];

    if (v17)
    {
      (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v11);
      sub_1000089F8(a2, v10, &unk_10118F670);
      sub_10012B7A8(v24, v26);
      v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v19 = (v13 + *(v23 + 80) + v18) & ~*(v23 + 80);
      v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      (*(v12 + 32))(v21 + v18, v14, v11);
      sub_10003D17C(v10, v21 + v19, &unk_10118F670);
      sub_10012B828(v26, v21 + v20);
      aBlock[4] = sub_100710428;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010BC438;
      v22 = _Block_copy(aBlock);

      [v17 dismissViewControllerAnimated:1 completion:v22];
      _Block_release(v22);
    }
  }
}

uint64_t sub_100709B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_10118F670);
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(v13, a1, v10);
  sub_1000089F8(a2, v9, &unk_10118F670);
  sub_10012B7A8(a3, v25);
  type metadata accessor for MainActor();
  v18 = static MainActor.shared.getter();
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + *(v24 + 80) + v19) & ~*(v24 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = &protocol witness table for MainActor;
  (*(v11 + 32))(v21 + v19, v13, v10);
  sub_10003D17C(v9, v21 + v20, &unk_10118F670);
  sub_10012B828(v25, v21 + ((v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1001F5D9C(0, 0, v16, &unk_100EDF230, v21);
}

uint64_t sub_100709E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a1;
  v6[15] = a4;
  type metadata accessor for MainActor();
  v6[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[19] = v8;
  v6[20] = v7;

  return _swift_task_switch(sub_100709F08, v8, v7);
}

uint64_t sub_100709F08()
{
  sub_10012B7A8(v0[17], (v0 + 2));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_100709FAC;
  v2 = v0[16];

  return sub_1003566B8(v2, (v0 + 2));
}

uint64_t sub_100709FAC(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 176) = a1;

  sub_1000095E8(v3 + 16, &unk_1011845E0);
  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return _swift_task_switch(sub_10070A0F4, v5, v4);
}

uint64_t sub_10070A0F4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 112);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10070A160(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v36 = &v31 - v5;
  v6 = type metadata accessor for Playlist.Folder.Item();
  v7 = *(v6 - 8);
  v32 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  v33 = &v31 - v11;
  v13 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
  v31 = a1;
  swift_beginAccess();
  sub_1000089F8(a1 + v13, v12, &unk_10118F670);
  sub_10010FC20(&qword_1011920C0);
  v14 = *(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100EBC6B0;
  v16 = *(v7 + 16);
  v17 = v34;
  v16(v15 + ((v14 + 32) & ~v14), v34, v6);
  v18 = v35;
  sub_10012B7A8(v35, v38);
  v16(v9, v17, v6);
  sub_10012B7A8(v18, v37);
  v19 = (v14 + 24) & ~v14;
  v20 = (v32 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = v31;
  (*(v7 + 32))(v21 + v19, v9, v6);
  sub_10012B828(v37, v21 + v20);
  type metadata accessor for MusicLibrary();
  v23 = v22;
  v24 = static MusicLibrary.shared.getter();
  Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(v33, v15, v24, v38, &unk_100EDF1F0, v21, v39);
  v25 = type metadata accessor for TaskPriority();
  v26 = v36;
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  type metadata accessor for MainActor();

  v27 = static MainActor.shared.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = &protocol witness table for MainActor;
  v29 = v39[1];
  *(v28 + 32) = v39[0];
  *(v28 + 48) = v29;
  *(v28 + 64) = v39[2];
  sub_10086E3AC(0, 0, v26, &unk_100EDF200, v28);
}

uint64_t sub_10070A550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = type metadata accessor for Playlist.Folder.Item();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v4[20] = *(v6 + 64);
  v4[21] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v4[22] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Folder();
  v4[23] = v7;
  v8 = *(v7 - 8);
  v4[24] = v8;
  v4[25] = *(v8 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  type metadata accessor for Actions.CreateFolder.Context.FlowResult();
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for MainActor();
  v4[30] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10070A728, v10, v9);
}

uint64_t sub_10070A728()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[14];

  sub_10070F034(v4, v1, type metadata accessor for Actions.CreateFolder.Context.FlowResult);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v5 = v0[26];
    v6 = v0[27];
    v7 = v0[24];
    v8 = v0[22];
    v9 = v0[23];
    v30 = v8;
    v10 = v0[21];
    v27 = v10;
    v28 = v0[20];
    v29 = v0[25];
    v12 = v0[18];
    v11 = v0[19];
    v25 = v5;
    v26 = v12;
    v21 = v0[16];
    v22 = v0[17];
    v23 = v0[15];
    v31 = *(v7 + 32);
    v24 = v9;
    v31(v6, v0[28], v9);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    (*(v11 + 16))(v10, v21, v12);
    (*(v7 + 16))(v5, v6, v9);
    sub_10012B7A8(v22, (v0 + 2));
    v14 = v23;
    v15 = static MainActor.shared.getter();
    v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v17 = (v28 + *(v7 + 80) + v16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = v15;
    *(v18 + 3) = &protocol witness table for MainActor;
    *(v18 + 4) = v14;
    (*(v11 + 32))(&v18[v16], v27, v26);
    v31(&v18[v17], v25, v24);
    sub_10012B828((v0 + 2), &v18[(v29 + v17 + 7) & 0xFFFFFFFFFFFFFFF8]);
    sub_1001F4CB8(0, 0, v30, &unk_100EDF218, v18);

    (*(v7 + 8))(v6, v24);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_10070AA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  sub_10010FC20(&unk_10118F670);
  v7[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[20] = v9;
  v7[21] = v8;

  return _swift_task_switch(sub_10070AAE0, v9, v8);
}

uint64_t sub_10070AAE0()
{
  v1 = [*(v0 + 112) presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  sub_10012B7A8(v3, v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_10070AC4C;
  v9 = *(v0 + 144);

  return sub_1003566B8(v9, v0 + 16);
}

uint64_t sub_10070AC4C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  sub_1000095E8(v1 + 16, &unk_1011845E0);
  sub_1000095E8(v2, &unk_10118F670);
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return _swift_task_switch(sub_10070ADB4, v4, v3);
}

uint64_t sub_10070ADB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10070AE1C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&qword_10119FD10);
  result = __chkstk_darwin(v5);
  v8 = &v9 - v7;
  if (a1)
  {
    sub_10070F034(a3, &v9 - v7, type metadata accessor for AppInterfaceContext.Activity);
    swift_storeEnumTagMultiPayload();
    a1(v8);
    return sub_1000095E8(v8, &qword_10119FD10);
  }

  return result;
}

uint64_t sub_10070AF04()
{
  if (qword_10117FC60 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_10119FB38))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000095E8(v5, &unk_101183F30);
    return 0;
  }
}

void sub_10070AFFC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_10119FD10);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, qword_1012194A8);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v16;
    v27 = swift_slowAlloc();
    v31 = v27;
    *v15 = 138543874;
    *(v15 + 4) = v11;
    *v16 = v11;
    *(v15 + 12) = 2082;
    v17 = v11;
    v29 = sub_10070AF04();
    v30 = v18;
    sub_10010FC20(&qword_1011815E0);
    v19 = String.init<A>(describing:)();
    v21 = a2;
    v22 = sub_1000105AC(v19, v20, &v31);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2082;
    v29 = [v17 presentingViewController];
    sub_10010FC20(&qword_101190248);
    v23 = String.init<A>(describing:)();
    v25 = sub_1000105AC(v23, v24, &v31);
    a2 = v21;

    *(v15 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v12, v13, "Presented viewController=%{public}@\nidentified by %{public}s\npresented by %{public}s", v15, 0x20u);
    sub_1000095E8(v26, &unk_101183D70);

    swift_arrayDestroy();

    a4 = v28;
  }

  if (a2)
  {
    sub_10070F034(a4, v9, type metadata accessor for AppInterfaceContext.Activity);
    swift_storeEnumTagMultiPayload();
    a2(v9);
    sub_1000095E8(v9, &qword_10119FD10);
  }
}

void sub_10070B328(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v96 = a7;
  v95 = a6;
  v100 = a5;
  v15 = type metadata accessor for AppInterfaceContext.Activity(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = a1[3];
  if (v18 < 2)
  {
    return;
  }

  v92 = v17;
  v93 = a8;
  v94 = v9;
  v20 = *a1;
  v19 = a1[1];
  v21 = a1[2];
  v98 = 0;
  v99 = 0xE000000000000000;
  if (v19)
  {
    v22 = v19;
  }

  else
  {
    swift_getObjectType();
    v20 = _typeName(_:qualified:)();
    v22 = v23;
  }

  v24._countAndFlagsBits = v20;
  v24._object = v22;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);

  v26._countAndFlagsBits = v21;
  v26._object = v18;
  String.append(_:)(v26);

  v27 = v98;
  v28 = v99;
  if (qword_10117FC60 != -1)
  {
    swift_once();
  }

  v29 = qword_10119FB38;
  v30 = String._bridgeToObjectiveC()();
  objc_setAssociatedObject(a2, v29, v30, 3);

  PresentationSource.windowScene.getter();
  if (!v31)
  {
    goto LABEL_28;
  }

  v32 = v31;
  v33 = static PresentationSource.topmostPresentedViewController(in:options:)(v31, 0);
  if (!v33)
  {

    goto LABEL_28;
  }

  v91 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3;
  v35 = v33;
  v36 = sub_10070AF04();
  if (!v37)
  {

    return;
  }

  v89 = v35;
  v90 = v32;
  if (v36 != v27 || v37 != v28)
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v38 = v34;
    if (v39)
    {
      goto LABEL_16;
    }

LABEL_28:

    return;
  }

  v38 = v34;
LABEL_16:
  v40 = v91;
  if (*(a4 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(1uLL), v41 = Hasher._finalize()(), v42 = -1 << *(a4 + 32), v43 = v41 & ~v42, ((*(a4 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0))
  {
    v44 = ~v42;
    while (*(*(a4 + 48) + 32 * v43 + 24))
    {
      v43 = (v43 + 1) & v44;
      if (((*(a4 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v84 = v27;
    v87 = a9;
    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000060E4(v58, qword_1012194A8);
    v59 = v89;
    v60 = v89;

    v61 = a2;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    v88 = v60;

    v85 = v63;
    v86 = v62;
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = v61;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v98 = v67;
      *v64 = 138543874;
      v68 = v88;
      *(v64 + 4) = v88;
      *v66 = v59;
      *(v64 + 12) = 2082;
      v69 = v68;
      v70 = sub_1000105AC(v84, v28, &v98);

      *(v64 + 14) = v70;
      *(v64 + 22) = 2114;
      *(v64 + 24) = v65;
      v66[1] = v65;
      v71 = v65;
      v72 = v86;
      _os_log_impl(&_mh_execute_header, v86, v85, "Dismissing viewController=%{public}@\nidentified by %{public}s,\nin favor of %{public}@", v64, 0x20u);
      sub_10010FC20(&unk_101183D70);
      swift_arrayDestroy();
      v61 = v65;
      v40 = v91;

      sub_10000959C(v67);
    }

    else
    {
    }

    v73 = v95;
    *v100 = 0;
    sub_10012B7A8(v38, &v98);
    sub_10070F034(v87, v40, type metadata accessor for AppInterfaceContext.Activity);
    v74 = (*(v92 + 80) + 144) & ~*(v92 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v61;
    sub_10012B828(&v98, v75 + 24);
    v76 = v73 & 1;
    *(v75 + 120) = v76;
    v77 = v96;
    v78 = v40;
    v79 = v61;
    v80 = v93;
    *(v75 + 128) = v96;
    *(v75 + 136) = v80;
    sub_10070F24C(v78, v75 + v74, type metadata accessor for AppInterfaceContext.Activity);
    aBlock[4] = sub_10071071C;
    aBlock[5] = v75;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC4B0;
    v81 = _Block_copy(aBlock);
    v82 = v79;
    sub_100030444(v77);

    v83 = v88;
    [v88 dismissViewControllerAnimated:v76 completion:v81];

    _Block_release(v81);
  }

  else
  {
LABEL_21:
    *v100 = 0;
    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000060E4(v45, qword_1012194A8);
    v46 = v89;
    v47 = v89;

    v48 = a2;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v98 = v100;
      *v51 = 138543874;
      *(v51 + 4) = v48;
      *v52 = v48;
      *(v51 + 12) = 2082;
      v53 = v48;
      v54 = sub_1000105AC(v27, v28, &v98);
      v55 = v46;
      v56 = v54;

      *(v51 + 14) = v56;
      *(v51 + 22) = 2114;
      *(v51 + 24) = v47;
      v52[1] = v55;
      v57 = v47;
      _os_log_impl(&_mh_execute_header, v49, v50, "Attempted to present a viewController=%{public}@\nidentified by %{public}s,\nbut a similar viewController is already presented %{public}@", v51, 0x20u);
      sub_10010FC20(&unk_101183D70);
      swift_arrayDestroy();

      sub_10000959C(v100);
    }

    else
    {
    }
  }
}

uint64_t sub_10070BBF4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(v9) = a3;
  v12 = type metadata accessor for AppInterfaceContext.Activity(0);
  v40 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v41 = v13;
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000060E4(v15, qword_1012194A8);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v9;
    v22 = v21;
    v36 = v21;
    v37 = swift_slowAlloc();
    v44 = v37;
    *v20 = 138543618;
    *(v20 + 4) = v16;
    *v22 = v16;
    *(v20 + 12) = 2082;
    v23 = v16;
    v42 = sub_10070AF04();
    v43 = v24;
    sub_10010FC20(&qword_1011815E0);
    v25 = String.init<A>(describing:)();
    v9 = v14;
    v27 = a6;
    v28 = a4;
    v29 = a5;
    v30 = sub_1000105AC(v25, v26, &v44);

    *(v20 + 14) = v30;
    a5 = v29;
    a4 = v28;
    a6 = v27;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v17, v18, "Presenting viewController=%{public}@\nidentified by %{public}s", v20, 0x16u);
    sub_1000095E8(v36, &unk_101183D70);
    LOBYTE(v9) = v38;

    sub_10000959C(v37);
  }

  sub_10070F034(a6, v14, type metadata accessor for AppInterfaceContext.Activity);
  v31 = (*(v40 + 80) + 40) & ~*(v40 + 80);
  v32 = swift_allocObject();
  v32[2] = v16;
  v32[3] = a4;
  v32[4] = a5;
  sub_10070F24C(v14, v32 + v31, type metadata accessor for AppInterfaceContext.Activity);
  v33 = v16;
  sub_100030444(a4);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v33, 1, v9 & 1, sub_100711070, v32);
}

uint64_t sub_10070BF44(void (*a1)(unint64_t, char *, unint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v204 = a5;
  v205 = a4;
  v190 = a3;
  v189 = a2;
  v208 = a1;
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v193 = &v187 - v7;
  v200 = type metadata accessor for Artist();
  v196 = *(v200 - 8);
  v8 = __chkstk_darwin(v200);
  v197 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v9;
  __chkstk_darwin(v8);
  v195 = &v187 - v10;
  v11 = sub_10010FC20(&unk_10119F3A0);
  v187 = *(v11 - 8);
  v12 = *(v187 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v188 = &v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v194 = &v187 - v14;
  v198 = sub_10010FC20(&qword_10119FD10);
  __chkstk_darwin(v198);
  v199 = &v187 - v15;
  v16 = type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  v202 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v191 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v187 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = (&v187 - v23);
  v25 = __chkstk_darwin(v22);
  v27 = &v187 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v187 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v187 - v32;
  v203 = v34;
  __chkstk_darwin(v31);
  v206 = (&v187 - v35);
  v36 = sub_10010FC20(&qword_10119FD18);
  v37 = __chkstk_darwin(v36 - 8);
  v39 = &v187 - v38;
  v201 = v5;
  v40 = *(v5 + 32);
  v41 = *(v37 + 56);
  sub_10070F034(v208, &v187 - v38, type metadata accessor for AppInterfaceContext.Activity.Destination);
  *&v39[v41] = v40;
  v207 = v39;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10070F034(v207, v30, type metadata accessor for AppInterfaceContext.Activity.Destination);
        if ((v40 & 0x8000000000000000) == 0)
        {
          v43 = *v30;
          v44 = Library.Menu.Identifier.rawValue.getter(*v30);
          v46 = v45;
          aBlock = 0xD000000000000014;
          v210 = 0x8000000100E3E560;
          v47 = v40;
          v48._countAndFlagsBits = v44;
          v48._object = v46;
          String.append(_:)(v48);

          v49 = String._bridgeToObjectiveC()();

          v50 = [v47 tabForIdentifier:v49];

          if (v50)
          {
            [v47 setSelectedTab:v50];

            v51 = v205;
            goto LABEL_71;
          }

          v152 = type metadata accessor for TabBarController();
          v215.receiver = v47;
          v215.super_class = v152;
          v153 = objc_msgSendSuper2(&v215, "tabs");
          sub_100009F78(0, &qword_101181F70);
          v154 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v198 = v47;
          if (v154 >> 62)
          {
LABEL_68:
            v155 = _CocoaArrayWrapper.endIndex.getter();
            if (v155)
            {
LABEL_39:
              v156 = 0;
              v199 = (v154 & 0xFFFFFFFFFFFFFF8);
              v200 = v154 & 0xC000000000000001;
              while (1)
              {
                if (v200)
                {
                  v157 = sub_1007E914C(v156, v154);
                }

                else
                {
                  if (v156 >= *(v199 + 2))
                  {
                    goto LABEL_67;
                  }

                  v157 = *(v154 + 8 * v156 + 32);
                }

                v158 = v157;
                v159 = v156 + 1;
                if (__OFADD__(v156, 1))
                {
                  __break(1u);
LABEL_67:
                  __break(1u);
                  goto LABEL_68;
                }

                v160 = [v157 identifier];
                v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v163 = v162;

                if (v161 == 0xD00000000000001BLL && 0x8000000100E55B80 == v163)
                {
                  break;
                }

                v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v165)
                {
                  goto LABEL_62;
                }

                ++v156;
                if (v159 == v155)
                {
                  goto LABEL_69;
                }
              }

LABEL_62:

              objc_opt_self();
              v173 = swift_dynamicCastObjCClass();
              v51 = v205;
              v47 = v198;
              if (!v173 || (v174 = v158, v175 = sub_1002D2600(), v174, !v175))
              {
                v175 = v158;
              }

              [v47 setSelectedTab:v175];

              goto LABEL_70;
            }
          }

          else
          {
            v155 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v155)
            {
              goto LABEL_39;
            }
          }

LABEL_69:

          v51 = v205;
          v47 = v198;
LABEL_70:
          sub_10070D9C8(v47, v43, v201);
LABEL_71:
          v176 = sub_1006BDF60([v47 selectedIndex]);
          if (v176)
          {
            v177 = v176;
            v178 = [v176 transitionCoordinator];

            if (v178)
            {
              v179 = v206;
              sub_10070F034(v208, v206, type metadata accessor for AppInterfaceContext.Activity.Destination);
              v180 = (*(v202 + 80) + 40) & ~*(v202 + 80);
              v181 = swift_allocObject();
              v181[2] = v201;
              v181[3] = v51;
              v181[4] = v204;
              sub_10070F24C(v179, v181 + v180, type metadata accessor for AppInterfaceContext.Activity.Destination);
              v213 = sub_10070F860;
              v214 = v181;
              aBlock = _NSConcreteStackBlock;
              v210 = 1107296256;
              v211 = sub_1007E9F28;
              v212 = &unk_1010BC028;
              v182 = _Block_copy(&aBlock);
              sub_100030444(v51);

              [v178 animateAlongsideTransition:0 completion:v182];
              _Block_release(v182);

              goto LABEL_74;
            }
          }

          v183 = v206;
          sub_10070F034(v208, v206, type metadata accessor for AppInterfaceContext.Activity.Destination);
          v184 = (*(v202 + 80) + 32) & ~*(v202 + 80);
          v185 = swift_allocObject();
          v186 = v204;
          *(v185 + 16) = v51;
          *(v185 + 24) = v186;
          sub_10070F24C(v183, v185 + v184, type metadata accessor for AppInterfaceContext.Activity.Destination);
          sub_100030444(v51);
          sub_10070D5C8(sub_10071106C, v185, v201);

LABEL_76:

          return sub_10070F180(v207, type metadata accessor for AppInterfaceContext.Activity.Destination);
        }
      }

      else
      {
        sub_10070F034(v207, v27, type metadata accessor for AppInterfaceContext.Activity.Destination);
        if ((v40 & 0x8000000000000000) == 0)
        {
          v103 = v40;
          v104 = *v27;
          v105 = v206;
          sub_10070F034(v208, v206, type metadata accessor for AppInterfaceContext.Activity.Destination);
          v106 = (*(v202 + 80) + 40) & ~*(v202 + 80);
          v107 = swift_allocObject();
          *(v107 + 16) = v104;
          v108 = v204;
          v109 = v205;
          *(v107 + 24) = v205;
          *(v107 + 32) = v108;
          sub_10070F24C(v105, v107 + v106, type metadata accessor for AppInterfaceContext.Activity.Destination);
          v110 = v103;
          sub_100030444(v109);
          sub_1006BC5FC(sub_10070F640, v107);

          goto LABEL_76;
        }
      }
    }

    else
    {
      sub_10070F034(v207, v33, type metadata accessor for AppInterfaceContext.Activity.Destination);
      if ((v40 & 0x8000000000000000) == 0)
      {
        v73 = *v33;
        v74 = v33[1];
        v75 = v40;
        v76 = [v75 selectedTab];
        if (v76 && (v77 = v76, v78 = sub_10003F0FC(), v77, v78 != 7))
        {
          v170 = sub_10001777C(v78, v73);
          sub_1006BB464(v73);
          if ((v74 & v170) == 1)
          {
            v171 = sub_1006BDF60([v75 selectedIndex]);
            if (v171)
            {
              v172 = v171;
            }
          }
        }

        else
        {
          sub_1006BB464(v73);
        }

        v79 = v206;
        sub_10070F034(v208, v206, type metadata accessor for AppInterfaceContext.Activity.Destination);
        v80 = (*(v202 + 80) + 32) & ~*(v202 + 80);
        v81 = swift_allocObject();
        v82 = v204;
        v83 = v205;
        *(v81 + 16) = v205;
        *(v81 + 24) = v82;
        sub_10070F24C(v79, v81 + v80, type metadata accessor for AppInterfaceContext.Activity.Destination);
        sub_100030444(v83);
        sub_10070D5C8(sub_10071106C, v81, v201);

        goto LABEL_76;
      }
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v84 = v40;
    sub_10070F034(v207, v21, type metadata accessor for AppInterfaceContext.Activity.Destination);
    v85 = v21[*(sub_10010FC20(&qword_101181A10) + 48)];
    v86 = v196;
    v87 = *(v196 + 32);
    v88 = v195;
    v89 = v21;
    v90 = v200;
    v87(v195, v89, v200);
    if (v85)
    {
      v91 = v197;
      (*(v86 + 16))(v197, v88, v90);
      v92 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
      v199 = (v84 & 0x7FFFFFFFFFFFFFFFLL);
      v93 = sub_1001FAE8C(v91, 0);
      v94 = *(sub_10010FC20(&unk_10118CE00) + 48);
      v95 = v206;
      *v206 = v93;
      v96 = type metadata accessor for UITraitOverrides();
      (*(*(v96 - 8) + 56))(&v95[v94], 1, 1, v96);
      swift_storeEnumTagMultiPayload();
      v97 = v191;
      sub_10070F034(v208, v191, type metadata accessor for AppInterfaceContext.Activity.Destination);
      v98 = (*(v202 + 80) + 32) & ~*(v202 + 80);
      v99 = swift_allocObject();
      v100 = v204;
      v101 = v205;
      *(v99 + 16) = v205;
      *(v99 + 24) = v100;
      sub_10070F24C(v97, v99 + v98, type metadata accessor for AppInterfaceContext.Activity.Destination);
      sub_100030444(v101);
      v102 = v93;
      sub_10070BF44(v95, 0, 0, sub_10070F2B4, v99);

      sub_10070F180(v95, type metadata accessor for AppInterfaceContext.Activity.Destination);
    }

    else
    {
      v135 = type metadata accessor for TaskPriority();
      (*(*(v135 - 8) + 56))(v193, 1, 1, v135);
      v136 = v86 + 16;
      (*(v86 + 16))(v197, v88, v90);
      sub_10070F034(v208, v206, type metadata accessor for AppInterfaceContext.Activity.Destination);
      type metadata accessor for MainActor();
      v208 = v87;
      v199 = (v84 & 0x7FFFFFFFFFFFFFFFLL);
      v137 = v204;
      v138 = v205;
      sub_100030444(v205);
      v139 = v201;

      v140 = static MainActor.shared.getter();
      v141 = (*(v136 + 64) + 32) & ~*(v136 + 64);
      v142 = (v192 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
      v143 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
      v144 = (*(v202 + 80) + v143 + 16) & ~*(v202 + 80);
      v145 = swift_allocObject();
      *(v145 + 16) = v140;
      *(v145 + 24) = &protocol witness table for MainActor;
      v208(v145 + v141, v197, v200);
      *(v145 + v142) = v139;
      v86 = v196;
      v146 = (v145 + v143);
      *v146 = v138;
      v146[1] = v137;
      v88 = v195;
      v90 = v200;
      sub_10070F24C(v206, v145 + v144, type metadata accessor for AppInterfaceContext.Activity.Destination);
      sub_1001F4CB8(0, 0, v193, &unk_100EDF188, v145);
    }

    (*(v86 + 8))(v88, v90);

    return sub_10070F180(v207, type metadata accessor for AppInterfaceContext.Activity.Destination);
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_10070F034(v207, v24, type metadata accessor for AppInterfaceContext.Activity.Destination);
    v52 = *v24;
    v53 = *(sub_10010FC20(&unk_10118CE00) + 48);
    if ((v40 & 0x8000000000000000) != 0)
    {
      v122 = (v40 & 0x7FFFFFFFFFFFFFFFLL);
      sub_1000095E8(v24 + v53, &unk_10119F3A0);

      goto LABEL_28;
    }

    v54 = v24 + v53;
    v55 = v194;
    sub_10003D17C(v54, v194, &unk_10119F3A0);
    v56 = v40;
    v57 = sub_1006BDF60([v56 selectedIndex]);
    if (v57)
    {
      v58 = v57;
      v59 = v188;
      sub_1000089F8(v55, v188, &unk_10119F3A0);
      sub_10070F034(v208, v206, type metadata accessor for AppInterfaceContext.Activity.Destination);
      v60 = (*(v187 + 80) + 48) & ~*(v187 + 80);
      v61 = (v12 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = (*(v202 + 80) + v61 + 16) & ~*(v202 + 80);
      v63 = swift_allocObject();
      v208 = v56;
      v64 = v189;
      v65 = v190;
      v63[2] = v189;
      v63[3] = v65;
      v63[4] = v58;
      v63[5] = v52;
      v66 = v63 + v60;
      v55 = v194;
      sub_10003D17C(v59, v66, &unk_10119F3A0);
      v67 = (v63 + v61);
      v68 = v204;
      v69 = v205;
      *v67 = v205;
      v67[1] = v68;
      sub_10070F24C(v206, v63 + v62, type metadata accessor for AppInterfaceContext.Activity.Destination);
      sub_100030444(v69);
      v70 = v64;
      v56 = v208;
      sub_100030444(v70);
      v71 = v58;
      v72 = v52;
      sub_10070D5C8(sub_10070F54C, v63, v201);
    }

    else
    {
      sub_10070F4F8();
      v166 = swift_allocError();
      *v167 = 0xD000000000000038;
      v167[1] = 0x8000000100E55B40;
      v168 = v205;
      if (v205)
      {
        v169 = v199;
        *v199 = v166;
        swift_storeEnumTagMultiPayload();
        swift_errorRetain();
        v168(v169);

        sub_1000095E8(v169, &qword_10119FD10);
      }

      else
      {
      }
    }

    v150 = &unk_10119F3A0;
    v151 = v55;
    goto LABEL_59;
  }

  if ((v40 & 0x8000000000000000) == 0)
  {
    v56 = v40;
    v111 = sub_1006BDF60([v56 selectedIndex]);
    if (v111)
    {
      v112 = v111;
    }

    v113 = sub_1006BDF60([v56 selectedIndex]);
    v114 = v205;
    if (v113)
    {
      v115 = v113;
      v116 = [v113 transitionCoordinator];

      if (v116)
      {
        v117 = v206;
        sub_10070F034(v208, v206, type metadata accessor for AppInterfaceContext.Activity.Destination);
        v118 = (*(v202 + 80) + 32) & ~*(v202 + 80);
        v119 = swift_allocObject();
        v120 = v204;
        *(v119 + 16) = v114;
        *(v119 + 24) = v120;
        sub_10070F24C(v117, v119 + v118, type metadata accessor for AppInterfaceContext.Activity.Destination);
        v213 = sub_10070F930;
        v214 = v119;
        aBlock = _NSConcreteStackBlock;
        v210 = 1107296256;
        v211 = sub_1007E9F28;
        v212 = &unk_1010BC0A0;
        v121 = _Block_copy(&aBlock);
        sub_100030444(v114);

        [v116 animateAlongsideTransition:0 completion:v121];
        _Block_release(v121);

LABEL_74:
        swift_unknownObjectRelease();
        return sub_10070F180(v207, type metadata accessor for AppInterfaceContext.Activity.Destination);
      }
    }

    if (!v114)
    {
LABEL_60:

      return sub_10070F180(v207, type metadata accessor for AppInterfaceContext.Activity.Destination);
    }

    v147 = sub_10010FC20(&unk_1011841E0);
    v148 = v199;
    v149 = &v199[*(v147 + 48)];
    sub_10070F034(v208, v199, type metadata accessor for AppInterfaceContext.Activity.Destination);
    type metadata accessor for AppInterfaceContext.Activity(0);
    *v149 = 0;
    *(v149 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v114(v148);
    v150 = &qword_10119FD10;
    v151 = v148;
LABEL_59:
    sub_1000095E8(v151, v150);
    goto LABEL_60;
  }

LABEL_27:
  v122 = (v40 & 0x7FFFFFFFFFFFFFFFLL);
LABEL_28:
  aBlock = 0;
  v210 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v123._countAndFlagsBits = 0xD000000000000018;
  v123._object = 0x8000000100E55B00;
  String.append(_:)(v123);
  sub_10070F034(v208, v206, type metadata accessor for AppInterfaceContext.Activity.Destination);
  v124._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v124);

  v125._countAndFlagsBits = 0xD00000000000001CLL;
  v125._object = 0x8000000100E55B20;
  String.append(_:)(v125);
  v216 = v40;
  v126 = v122;
  v127._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v127);

  v128 = aBlock;
  v129 = v210;
  sub_10070F4F8();
  v130 = swift_allocError();
  *v131 = v128;
  v131[1] = v129;
  v132 = v205;
  if (v205)
  {
    v133 = v199;
    *v199 = v130;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v132(v133);

    sub_1000095E8(v133, &qword_10119FD10);
  }

  else
  {
  }

  return sub_1000095E8(v207, &qword_10119FD18);
}

void sub_10070D5C8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v6 = *(a3 + 32);
  }

  v7 = objc_opt_self();
  v37 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
  v8 = [v7 sharedPrivacyInfo];
  v9 = [v8 privacyAcknowledgementRequiredForMusic];

  if ((v9 & 1) == 0)
  {
    if (v5 < 0)
    {
LABEL_15:
      aBlock[4] = a1;
      aBlock[5] = a2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010BC0F0;
      v36 = _Block_copy(aBlock);

      [v6 dismissViewControllerAnimated:1 completion:v36];
      _Block_release(v36);

      return;
    }

    v10 = v37;
    v11 = v5;
    v12 = [v11 sidebar];
    v13 = [v12 isHidden];

    v14 = v10;
    if ((v13 & 1) == 0)
    {
      v15 = v11;
      v16 = [v15 view];
      if (v16)
      {
        v17 = v16;
        [v16 bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v40.origin.x = v19;
        v40.origin.y = v21;
        v40.size.width = v23;
        v40.size.height = v25;
        Height = CGRectGetHeight(v40);
        v27 = [v15 view];

        if (v27)
        {
          [v27 bounds];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v41.origin.x = v29;
          v41.origin.y = v31;
          v41.size.width = v33;
          v41.size.height = v35;
          v14 = v10;
          if (CGRectGetWidth(v41) < Height)
          {
            v14 = [v15 sidebar];

            [v14 setHidden:1];
          }

          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_14:

    goto LABEL_15;
  }

  a1();
}

uint64_t sub_10070D8A8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&qword_10119FD10);
  result = __chkstk_darwin(v6);
  v9 = &v11 - v8;
  if (a2)
  {
    v10 = &v9[*(sub_10010FC20(&unk_1011841E0) + 48)];
    sub_10070F034(a4, v9, type metadata accessor for AppInterfaceContext.Activity.Destination);
    type metadata accessor for AppInterfaceContext.Activity(0);
    *v10 = 0;
    *(v10 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a2(v9);
    return sub_1000095E8(v9, &qword_10119FD10);
  }

  return result;
}

void *sub_10070D9C8(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for UITraitOverrides();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  result = sub_1006BDF60([a1 selectedIndex]);
  if (result)
  {
    v14 = result;

    v15 = [a1 traitCollection];
    v16 = sub_10066BAEC(v15, a2);

    v17 = (*(a3 + 32) & 0x7FFFFFFFFFFFFFFFLL);
    UIViewController.traitOverrides.getter();

    sub_10066C1EC(a2, v12);
    (*(v7 + 8))(v9, v6);
    (*(v7 + 56))(v12, 0, 1, v6);
    sub_100795F14(v16, v12, 1);

    return sub_1000095E8(v12, &unk_10119F3A0);
  }

  return result;
}

uint64_t sub_10070DBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_10070F034(a5, &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppInterfaceContext.Activity.Destination);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  sub_10070F24C(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AppInterfaceContext.Activity.Destination);
  sub_100030444(a3);
  sub_10070D5C8(sub_10070F9A4, v13, a2);
}

void sub_10070DD34(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_10010FC20(&qword_10119FD10);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  if (a1)
  {
    v8 = &v7[*(sub_10010FC20(&unk_1011841E0) + 48)];
    sub_10070F034(a3, v7, type metadata accessor for AppInterfaceContext.Activity.Destination);
    type metadata accessor for AppInterfaceContext.Activity(0);
    *v8 = 0;
    *(v8 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a1(v7);
    sub_1000095E8(v7, &qword_10119FD10);
  }
}

void sub_10070DE54(uint64_t a1, unsigned __int8 a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = sub_10010FC20(&qword_10119FD10);
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  if (v9 == 5 || a1 && (sub_1005E3CC0(a2, 1), (v13 & 1) != 0))
  {
    if (!a3)
    {
      return;
    }

    v14 = (v12 + *(sub_10010FC20(&unk_1011841E0) + 48));
    sub_10070F034(a5, v12, type metadata accessor for AppInterfaceContext.Activity.Destination);
    type metadata accessor for AppInterfaceContext.Activity(0);
    *v14 = 0;
    v14[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a3(v12);
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v21 = 0xD00000000000002DLL;
    v22 = 0x8000000100E55BA0;
    v20[15] = a2;
    sub_10010FC20(&qword_10119FD28);
    v15._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v15);

    v16 = v21;
    v17 = v22;
    sub_10070F4F8();
    v18 = swift_allocError();
    *v19 = v16;
    v19[1] = v17;
    if (!a3)
    {

      return;
    }

    *v12 = v18;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v12);
  }

  sub_1000095E8(v12, &qword_10119FD10);
}

void sub_10070E084(uint64_t (*a1)(id), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8)
{
  v14 = sub_10010FC20(&qword_10119FD10);
  __chkstk_darwin(v14);
  v16 = &v18 - v15;
  if (a1)
  {

    sub_1007E87C0(a4, a5, a1, a2, 1);
    sub_100020438(a1);
    if (!a6)
    {
      return;
    }
  }

  else
  {
    sub_100795F14(a4, a5, 1);
    if (!a6)
    {
      return;
    }
  }

  v17 = &v16[*(sub_10010FC20(&unk_1011841E0) + 48)];
  sub_10070F034(a8, v16, type metadata accessor for AppInterfaceContext.Activity.Destination);
  type metadata accessor for AppInterfaceContext.Activity(0);
  *v17 = 0;
  *(v17 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  a6(v16);
  sub_1000095E8(v16, &qword_10119FD10);
}

uint64_t sub_10070E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[5] = sub_10010FC20(&qword_10119FD10);
  v8[6] = swift_task_alloc();
  v8[7] = type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v8[9] = v10;
  *v10 = v8;
  v10[1] = sub_10070E314;

  return sub_100136860(a5);
}

uint64_t sub_10070E314()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10070E450, v1, v0);
}

uint64_t sub_10070E450()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[6];
    v3 = v0[4];
    v4 = v0[2];
    v5 = (v2 + *(sub_10010FC20(&unk_1011841E0) + 48));
    sub_10070F034(v3, v2, type metadata accessor for AppInterfaceContext.Activity.Destination);
    type metadata accessor for AppInterfaceContext.Activity(0);
    *v5 = 0;
    v5[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v4(v2);
    sub_1000095E8(v2, &qword_10119FD10);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10070E568(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_10119FD10);
  v8 = __chkstk_darwin(v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v16 - v11);
  sub_1000089F8(a1, &v16 - v11, &qword_10119FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (a2)
    {
      *v10 = v13;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      a2(v10);

      return sub_1000095E8(v10, &qword_10119FD10);
    }

    else
    {
    }
  }

  else
  {
    if (a2)
    {
      v15 = (v10 + *(sub_10010FC20(&unk_1011841E0) + 48));
      sub_10070F034(a4, v10, type metadata accessor for AppInterfaceContext.Activity.Destination);
      type metadata accessor for AppInterfaceContext.Activity(0);
      *v15 = 0;
      v15[1] = 0;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      a2(v10);
      sub_1000095E8(v10, &qword_10119FD10);
    }

    return sub_1000095E8(v12, &qword_10119FD10);
  }
}

uint64_t sub_10070E768(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppInterfaceContext.Activity(0);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v25 - v8;
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for PlaylistCreation.Context(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v2 + 72);
  v30 = a1;

  v16 = sub_1002D9648(sub_10070F1E0, v29, v15);

  if (v16)
  {
  }

  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v4;
  v18 = v28;
  sub_10070F034(a1, v14, type metadata accessor for PlaylistCreation.Context);
  type metadata accessor for PlaylistCreation.Flow(0);
  swift_allocObject();

  v19 = sub_10042EFE4(v14, sub_10070F218, v2);
  swift_beginAccess();
  if (*(v2 + 72) >> 62 && (result = _CocoaArrayWrapper.endIndex.getter(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_1003BB77C(0, 0, v19);
    swift_endAccess();
    v20 = *(v19 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_navigationController);
    *v11 = v20;
    v11[8] = 1;
    *(v11 + 2) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_10070F034(v11, v9, type metadata accessor for AppInterfaceContext.Activity);
    v21 = v26;
    sub_10070F034(v9, v26, type metadata accessor for AppInterfaceContext.Activity);
    v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_10070F24C(v21, v23 + v22, type metadata accessor for AppInterfaceContext.Activity);
    v24 = v20;
    sub_100706900(v9, sub_10070F220, v23);

    sub_10070F180(v9, type metadata accessor for AppInterfaceContext.Activity);
    return sub_10070F180(v11, type metadata accessor for AppInterfaceContext.Activity);
  }

  return result;
}

uint64_t sub_10070EAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_navigationController) dismissViewControllerAnimated:1 completion:0];
  swift_beginAccess();
  v4 = *(a3 + 72);
  if (v4 >> 62)
  {
LABEL_18:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      sub_1007E9C50(v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v7 = static UUID.== infix(_:_:)();

    if (v7)
    {
      break;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_17;
    }
  }

  swift_beginAccess();
  sub_1005024E8(v6);
  swift_endAccess();
}

uint64_t sub_10070EC78()
{

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_10070ECD4()
{
  sub_10070EC78();

  return swift_deallocClassInstance();
}

uint64_t sub_10070ED08(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = _s9PlaylistsV5ScopeVMa(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v15[-v7];
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
    swift_beginAccess();
    sub_10070F034(a2 + v11, v8, _s9PlaylistsV5ScopeVMa);
    v12 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
    swift_beginAccess();
    sub_10070F034(v10 + v12, v6, _s9PlaylistsV5ScopeVMa);
    v13 = sub_1001982EC(v8, v6);
    sub_10070F180(v6, _s9PlaylistsV5ScopeVMa);
    sub_10070F180(v8, _s9PlaylistsV5ScopeVMa);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10070EE80()
{
  result = swift_slowAlloc();
  qword_10119FB38 = result;
  return result;
}

id sub_10070EFC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MiniPlayerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10070F034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10070F09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (!a4)
  {
    return !a8;
  }

  if (a4 == 1)
  {
    return a8 == 1;
  }

  if (a8 < 2)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v10 = a3;
      v11 = a4;
      v12 = a8;
      v13 = a7;
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v10;
      a4 = v11;
      a7 = v13;
      a8 = v12;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10070F180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10070F24C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10070F2E0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_10070F36C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Artist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v10 = (v8 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v1 + v8;
  v15 = *(v1 + v8);
  v16 = *(v14 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100008F30;

  return sub_10070E214(a1, v12, v13, v1 + v6, v11, v15, v16, v1 + v10);
}

unint64_t sub_10070F4F8()
{
  result = qword_10119FD20;
  if (!qword_10119FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FD20);
  }

  return result;
}

void sub_10070F54C()
{
  v1 = *(sub_10010FC20(&unk_10119F3A0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = *(v0 + v3);
  v10 = *(v0 + v3 + 8);
  v11 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  sub_10070E084(v5, v6, v7, v8, v0 + v2, v9, v10, v11);
}

void sub_10070F640(uint64_t a1)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_10070DE54(a1, v6, v4, v5, v7);
}

uint64_t sub_10070F6B8()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {

    v6 = *(sub_10010FC20(&unk_10118CE00) + 48);
    v7 = type metadata accessor for UITraitOverrides();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = type metadata accessor for Artist();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_10070F860(uint64_t a1)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_10070DBE0(a1, v4, v5, v6, v7);
}

uint64_t sub_10070F930(uint64_t a1)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10070D8A8(a1, v4, v5, v6);
}

void sub_10070F9EC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_10070987C(a1, a2, v7, v2 + v6, v8);
}

uint64_t sub_10070FA9C(void *a1)
{
  v3 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10070A160(a1, v1 + v4, v5);
}

uint64_t sub_10070FB38()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10070AE1C(v2, v3, v4);
}

void sub_10070FB9C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100707F20(a1, a2, v7, v2 + v6, v8);
}

uint64_t sub_10070FC58(void *a1)
{
  v3 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1007088F0(a1, v1 + v4, v5);
}

void sub_10070FD00(uint64_t a1)
{
  v3 = *(sub_10010FC20(&qword_10119FD30) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100707CA8(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_10070FDBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_1007090E8(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_10070FF48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_100708538(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1007100D8(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10070A550(a1, v7, v1 + v5, v1 + v6);
}

uint64_t sub_1007101EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10031B7A0(a1, v4, v5, v1 + 32);
}

uint64_t sub_10071029C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Folder() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_10070AA0C(a1, v11, v12, v13, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_100710464(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t))
{
  v6 = *(a1(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_10010FC20(a2) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a4(v4 + v7, v4 + v10, v11);
}

uint64_t sub_10071058C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_10118F670) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002F3F4;

  return sub_100709E6C(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_10071071C()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = v0 + ((*(v1 + 80) + 144) & ~*(v1 + 80));

  return sub_10070BBF4(v2, v0 + 24, v3, v4, v5, v6);
}

uint64_t sub_10071078C()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  if (*(v0 + 24))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_24:

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_30;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v9 = type metadata accessor for Playlist.Folder();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }

    v11 = type metadata accessor for PlaylistCreation.Context(0);

    v12 = *(v11 + 24);
    v13 = sub_10010FC20(&unk_1011841D0);
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v3 + v12, 1, v13))
    {
      (*(v14 + 8))(v3 + v12, v13);
    }

    v15 = *(v11 + 28);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 4)
    {

      v18 = *(sub_10010FC20(&unk_10118CE00) + 48);
      v19 = type metadata accessor for UITraitOverrides();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v3 + v18, 1, v19))
      {
        (*(v20 + 8))(v3 + v18, v19);
      }
    }

    else if (v16 == 3)
    {
      v17 = type metadata accessor for Artist();
      (*(*(v17 - 8) + 8))(v0 + v2, v17);
    }

    v15 = *(sub_10010FC20(&unk_1011841E0) + 48);
LABEL_28:
    if (*(v3 + v15))
    {
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10010FC20(&unk_10118A290) + 48);
    v7 = type metadata accessor for SearchScope();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

LABEL_30:

  return swift_deallocObject();
}

void sub_100710C10()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_10070AFFC(v2, v3, v4, v5);
}

uint64_t sub_100710C78(uint64_t a1)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100706668(a1, v4, v5);
}

unint64_t sub_100710D0C()
{
  result = qword_10119FD38;
  if (!qword_10119FD38)
  {
    type metadata accessor for AppInterfaceContext.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FD38);
  }

  return result;
}

uint64_t sub_100710D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100710DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100710E4C(uint64_t a1)
{
  result = type metadata accessor for AppInterfaceContext.Activity(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_100710F00(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100710F18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100710F6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void *sub_100710FCC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

unint64_t sub_100711004()
{
  result = qword_10119FF68;
  if (!qword_10119FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FF68);
  }

  return result;
}

uint64_t sub_1007110AC()
{
  v1 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  v0[5] = v1;
  if (v1)
  {
    v9 = v1;
    v10 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
    v0[6] = v10;
    v11 = v10;
    [v11 setServiceType:2];
    v12 = [objc_allocWithZone(ACAccountStore) init];
    v0[7] = v12;
    v13 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:v12];
    v0[8] = v13;
    v14 = [v13 accountForService:AIDAServiceTypeStore];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 username];
      [v11 setUsername:v16];

      v17 = [v15 ams_DSID];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 stringValue];

        if (!v19)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = String._bridgeToObjectiveC()();
        }
      }

      else
      {
        v19 = 0;
      }

      [v11 setDSID:v19];
    }

    [v11 setShouldAllowAppleIDCreation:0];

    v20 = swift_task_alloc();
    v0[9] = v20;
    *(v20 + 16) = v9;
    *(v20 + 24) = v11;
    v21 = swift_task_alloc();
    v0[10] = v21;
    v8 = sub_10010FC20(&qword_1011A0078);
    *v21 = v0;
    v21[1] = sub_10071133C;
    v6 = sub_10071245C;
    v1 = v0 + 2;
    v5 = 0x8000000100E55CD0;
    v2 = 0;
    v3 = 0;
    v4 = 0xD000000000000013;
    v7 = v20;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10071133C()
{

  return _swift_task_switch(sub_100711454, 0, 0);
}

uint64_t sub_100711454()
{
  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  if (*(v0 + 24) == 1)
  {
    v2 = *(v0 + 56);

    v3 = *(v0 + 40);
    v4 = *(v0 + 8);

    return v4(v1, 1);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_10071154C;

    return sub_1007116FC(v1);
  }
}

uint64_t sub_10071154C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  *(v3 + 104) = a1;
  *(v3 + 25) = a2;

  sub_100712464(v4, 0);

  return _swift_task_switch(sub_100711674, 0, 0);
}

uint64_t sub_100711674()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 25);
  v3 = *(v0 + 104);
  v4 = *(v0 + 40);

  v5 = *(v0 + 8);

  return v5(v3, v2 & 1);
}

uint64_t sub_1007116FC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_10071171C, 0, 0);
}

uint64_t sub_10071171C()
{
  if (v0[4] && (v1 = *(v0[5] + OBJC_IVAR____TtC5Music13AuthPresenter_presentingViewController), (v0[6] = v1) != 0))
  {
    v2 = objc_allocWithZone(AMSAuthenticateOptions);
    v3 = v1;
    v4 = [v2 init];
    v0[7] = v4;
    [v4 setAuthenticationType:1];
    [v4 setIgnoreAccountConversion:1];
    v5 = objc_allocWithZone(AMSUIAuthenticateTask);
    v6 = v3;
    v7 = v4;
    sub_10010FC20(&qword_1011A0088);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v9 = [v5 initWithAuthenticationResults:isa presentingViewController:v6 options:v7];
    v0[8] = v9;

    v10 = swift_task_alloc();
    v0[9] = v10;
    *(v10 + 16) = v9;
    v11 = swift_task_alloc();
    v0[10] = v11;
    v12 = sub_10010FC20(&qword_1011A0090);
    *v11 = v0;
    v11[1] = sub_10071196C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002CLL, 0x8000000100E55CF0, sub_1007124C4, v10, v12);
  }

  else
  {
    sub_100712470();
    v13 = swift_allocError();
    v14 = v0[1];

    return v14(v13, 1);
  }
}

uint64_t sub_10071196C()
{

  return _swift_task_switch(sub_100711A84, 0, 0);
}

uint64_t sub_100711A84()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_100711AF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10010FC20(&qword_1011A0088);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_100711BA8(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&qword_1011A0098);
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = aBlock - v7;
  v9 = [a2 performAuthentication];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1007124CC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B378;
  aBlock[3] = &unk_1010BC718;
  v12 = _Block_copy(aBlock);

  [v9 addFinishBlock:v12];
  _Block_release(v12);
}

uint64_t sub_100711D78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  sub_10010FC20(&qword_1011A0098);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100711DEC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100711EF4()
{
  v1 = OBJC_IVAR____TtC5Music13AuthPresenter__isAuthenticating;
  v2 = sub_10010FC20(&unk_101189E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AuthPresenter()
{
  result = qword_10119FFB8;
  if (!qword_10119FFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100712000()
{
  sub_100008E30();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100712248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007122A4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_1011A00A0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_100712564;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100711AF8;
  aBlock[3] = &unk_1010BC768;
  v13 = _Block_copy(aBlock);

  [a2 authenticateWithContext:a3 completion:v13];
  _Block_release(v13);
}

uint64_t sub_100712464(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_100712470()
{
  result = qword_1011A0080;
  if (!qword_1011A0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A0080);
  }

  return result;
}

uint64_t sub_1007124F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
  }

  sub_10010FC20(&unk_1011A00A0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10071258C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_10010FC20(a3) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

unint64_t sub_10071263C()
{
  result = qword_1011A00B0;
  if (!qword_1011A00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A00B0);
  }

  return result;
}

uint64_t sub_100712698()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for MusicSubscription.PrivacyAcknowledgementPolicy();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = type metadata accessor for MusicSubscription();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_10071280C, 0, 0);
}

uint64_t sub_10071280C()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicSubscription.PrivacyAcknowledgementPolicy.promptProhibited(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1007128CC;
  v2 = v0[10];
  v3 = v0[7];

  return static MusicSubscription.current(privacyAcknowledgementPolicy:)(v2, v3);
}

uint64_t sub_1007128CC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100712AE4;
  }

  else
  {
    v5 = sub_100712A3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100712A3C()
{
  v1 = MusicSubscription.canPlayCatalogContent.getter();
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2(v1 & 1);
}

uint64_t sub_100712AE4()
{
  static Logger.music(_:)();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get subscription state with error %{public}@", v3, 0xCu);
    sub_1000095E8(v4, &unk_101183D70);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_100712CA4()
{
  v1[2] = v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_10010FC20(&qword_10118FE28);
  v1[7] = swift_task_alloc();
  sub_10010FC20(&qword_10118FE30);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100712E24, v4, v3);
}

uint64_t sub_100712E24()
{
  type metadata accessor for InternalMusicPlayer();
  v0[14] = static InternalMusicPlayer.localDevice.getter();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = type metadata accessor for Playlist();
  *v1 = v0;
  v1[1] = sub_100712EEC;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Playlist);
}

uint64_t sub_100712EEC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100726824;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100726820;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100713030()
{
  v1[2] = v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_10010FC20(&qword_10118FE28);
  v1[7] = swift_task_alloc();
  sub_10010FC20(&qword_10118FE30);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_1007131B0, v4, v3);
}

uint64_t sub_1007131B0()
{
  type metadata accessor for InternalMusicPlayer();
  v0[14] = static InternalMusicPlayer.localDevice.getter();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = type metadata accessor for Album();
  *v1 = v0;
  v1[1] = sub_100712EEC;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Album);
}

uint64_t sub_100713278()
{
  v1[2] = v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_10010FC20(&qword_10118FE28);
  v1[7] = swift_task_alloc();
  sub_10010FC20(&qword_10118FE30);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_1007133F8, v4, v3);
}

uint64_t sub_1007133F8()
{
  type metadata accessor for InternalMusicPlayer();
  v0[14] = static InternalMusicPlayer.localDevice.getter();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = type metadata accessor for RecentlyPlayedMusicItem();
  *v1 = v0;
  v1[1] = sub_1007134C0;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for RecentlyPlayedMusicItem);
}

uint64_t sub_1007134C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_10071399C;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100713604;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100713604()
{
  v1 = v0[10];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 56);
  v7(v1, 0, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000089F8(v1, v3, &qword_10118FE30);
  sub_1000089F8(v2, v3 + v8, &qword_10118FE30);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[10];
    v11 = v0[3];
    sub_1000095E8(v0[9], &qword_10118FE30);
    sub_1000095E8(v10, &qword_10118FE30);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_1000095E8(v0[7], &qword_10118FE30);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[3];
  sub_1000089F8(v0[7], v0[8], &qword_10118FE30);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v14 == 1)
  {
    v18 = v0[3];
    v19 = v0[4];
    sub_1000095E8(v0[9], &qword_10118FE30);
    sub_1000095E8(v15, &qword_10118FE30);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_1000095E8(v0[7], &qword_10118FE28);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_100726488(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_1000095E8(v16, &qword_10118FE30);
  sub_1000095E8(v15, &qword_10118FE30);
  v23(v17, v22);
  sub_1000095E8(v26, &qword_10118FE30);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

uint64_t sub_10071399C()
{
  v1 = v0[10];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 56);
  v7(v1, 1, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_1000089F8(v1, v3, &qword_10118FE30);
  sub_1000089F8(v2, v3 + v8, &qword_10118FE30);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[10];
    v11 = v0[3];
    sub_1000095E8(v0[9], &qword_10118FE30);
    sub_1000095E8(v10, &qword_10118FE30);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_1000095E8(v0[7], &qword_10118FE30);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[3];
  sub_1000089F8(v0[7], v0[8], &qword_10118FE30);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v14 == 1)
  {
    v18 = v0[3];
    v19 = v0[4];
    sub_1000095E8(v0[9], &qword_10118FE30);
    sub_1000095E8(v15, &qword_10118FE30);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_1000095E8(v0[7], &qword_10118FE28);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_100726488(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_1000095E8(v16, &qword_10118FE30);
  sub_1000095E8(v15, &qword_10118FE30);
  v23(v17, v22);
  sub_1000095E8(v26, &qword_10118FE30);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

void sub_100713D34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v69 = a1;
  v70 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for WidgetDiskCache();
  v58 = *(v68 - 8);
  __chkstk_darwin(v68);
  v59 = v8;
  v60 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_10118DA20);
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v9 - 8);
  v57 = &v49 - v11;
  v12 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v55 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v49 - v20;
  __chkstk_darwin(v19);
  v23 = &v49 - v22;
  sub_1000089F8(v3, v14, &qword_101183A20);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v24 = v69;
    sub_1000095E8(v14, &qword_101183A20);
    v25 = v70;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_1000105AC(v24, v25, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to get widget cache url for saving item named %{public}s", v28, 0xCu);
      sub_10000959C(v29);
    }
  }

  else
  {
    URL.appending(_:)();
    v30 = *(v16 + 8);
    v53 = v16 + 8;
    v54 = v30;
    v30(v14, v15);
    v51 = *(v16 + 32);
    v52 = v23;
    v31 = v21;
    v32 = v15;
    v50 = v15;
    v51(v23, v31, v15);
    v68 = *(v3 + *(v68 + 20));
    v33 = v57;
    sub_1000089F8(v61, v57, &qword_10118DA20);
    v34 = v60;
    sub_10072660C(v4, v60, type metadata accessor for WidgetDiskCache);
    v35 = v55;
    (*(v16 + 16))(v55, v23, v32);
    v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v37 = (v10 + *(v58 + 80) + v36) & ~*(v58 + 80);
    v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v16 + 80) + v38 + 16) & ~*(v16 + 80);
    v40 = swift_allocObject();
    sub_10003D17C(v33, v40 + v36, &qword_10118DA20);
    sub_100726674(v34, v40 + v37, type metadata accessor for WidgetDiskCache);
    v41 = (v40 + v38);
    v42 = v70;
    *v41 = v69;
    v41[1] = v42;
    v43 = v35;
    v44 = v50;
    v51((v40 + v39), v43, v50);
    aBlock[4] = sub_100726460;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC9B0;
    v45 = _Block_copy(aBlock);

    v46 = v62;
    static DispatchQoS.unspecified.getter();
    v71 = &_swiftEmptyArrayStorage;
    sub_100726488(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100020674(&qword_101183F70, &qword_101182970);
    v47 = v64;
    v48 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);
    (*(v66 + 8))(v47, v48);
    (*(v63 + 8))(v46, v65);
    v54(v52, v44);
  }
}

void sub_100714544(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a3;
  v60 = a1;
  v61 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for WidgetDiskCache();
  v50 = *(v59 - 8);
  v8 = *(v50 + 64);
  __chkstk_darwin(v59);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  v22 = v4;
  sub_1000089F8(v4, v11, &qword_101183A20);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v23 = v60;
    sub_1000095E8(v11, &qword_101183A20);
    v24 = v61;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1000105AC(v23, v24, aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to get widget cache url for saving item named %{public}s", v27, 0xCu);
      sub_10000959C(v28);
    }
  }

  else
  {
    URL.appending(_:)();
    v29 = v12;
    v48 = *(v13 + 8);
    v49 = v13 + 8;
    v48(v11, v12);
    v30 = *(v13 + 32);
    v47 = v21;
    v30(v21, v18, v29);
    v59 = *(v22 + *(v59 + 20));
    v31 = v22;
    v32 = v51;
    sub_10072660C(v31, v51, type metadata accessor for WidgetDiskCache);
    v33 = v21;
    v34 = v29;
    (*(v13 + 16))(v15, v33, v29);
    v35 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v36 = (v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (*(v13 + 80) + v36 + 16) & ~*(v13 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v52;
    sub_100726674(v32, v38 + v35, type metadata accessor for WidgetDiskCache);
    v39 = (v38 + v36);
    v40 = v61;
    *v39 = v60;
    v39[1] = v40;
    v41 = v34;
    v30((v38 + v37), v15, v34);
    aBlock[4] = sub_10072619C;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC870;
    v42 = _Block_copy(aBlock);

    v43 = v53;
    static DispatchQoS.unspecified.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_100726488(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100020674(&qword_101183F70, &qword_101182970);
    v44 = v55;
    v45 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);
    (*(v57 + 8))(v44, v45);
    (*(v54 + 8))(v43, v56);
    v48(v47, v41);
  }
}