uint64_t sub_21B2FB1D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0;
  result = 0;
  v6 = (a1 + 40);
  while (1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return 0;
      }

      v7 = *(a1 + 16);
      if (v4 == v7)
      {
        return result;
      }

      if (v4 >= v7)
      {
        goto LABEL_17;
      }

      v8 = *(v6 - 1);
      v9 = *v6;
    }

    else
    {
      if (v4 == 1)
      {
        return result;
      }

      if (v4)
      {
        goto LABEL_18;
      }

      v8 = a1;
      v9 = a2;
    }

    v10 = v9 - v8;
    if (__OFSUB__(v9, v8))
    {
      break;
    }

    ++v4;
    v6 += 2;
    v11 = __OFADD__(result, v10);
    result += v10;
    if (v11)
    {
      __break(1u);
      return 0;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21B2FB268@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    goto LABEL_33;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (a3 + 56);
  while (1)
  {
    v12 = *v10;
    v10 += 6;
    v11 = v12;
    v13 = v7 + v12;
    if (__OFADD__(v7, v12))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v13 <= result)
    {
      goto LABEL_3;
    }

    if (v7 <= result)
    {
      break;
    }

    v14 = __OFADD__(v6, v11);
    v6 += v11;
    if (v14)
    {
      goto LABEL_25;
    }

    if (v7 < a2)
    {
      goto LABEL_14;
    }

LABEL_3:
    ++v9;
    v7 = v13;
    if (v4 == v9)
    {
      goto LABEL_21;
    }
  }

  v8 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_26;
  }

  v15 = v11 - v8;
  if (__OFSUB__(v11, v8))
  {
    goto LABEL_27;
  }

  v14 = __OFADD__(v6, v15);
  v6 += v15;
  if (v14)
  {
    goto LABEL_28;
  }

  v5 = v9;
  if (v7 >= a2)
  {
    goto LABEL_3;
  }

LABEL_14:
  if (v13 < a2)
  {
    goto LABEL_3;
  }

  v4 = v9 + 1;
  if (v9 + 1 < v5)
  {
    goto LABEL_30;
  }

  v16 = a2 - v7;
  if (__OFSUB__(a2, v7))
  {
    goto LABEL_31;
  }

  v17 = v11 - v16;
  if (__OFSUB__(v11, v16))
  {
    goto LABEL_32;
  }

  v14 = __OFSUB__(v6, v17);
  v6 -= v17;
  if (!v14)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_21:
  if (v4 >= v5)
  {
    v16 = *(a3 + 48 * v4 + 8);
LABEL_23:
    *a4 = v5;
    a4[1] = v4;
    a4[2] = v8;
    a4[3] = v16;
    a4[4] = v6;
    return result;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_21B2FB36C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(result + 48 * v2 + 8);
    v5 = (result + 56);
    v6 = *(result + 16);
    while (1)
    {
      v7 = *v5;
      v5 += 6;
      v8 = __OFADD__(v3, v7);
      v3 += v7;
      if (v8)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0;
LABEL_7:
    *a2 = 0;
    a2[1] = v2;
    a2[2] = 0;
    a2[3] = v4;
    a2[4] = v3;
  }

  return result;
}

uint64_t sub_21B2FB3C0(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21B2FB468(unsigned __int16 *a1, unsigned int a2, void *a3)
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

char *sub_21B2FB720(char *result, unsigned int a2, unsigned int a3, void *a4)
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

uint64_t sub_21B2FBAAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B2FBB38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_21B2FBD14(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_21B2FBFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for Tuple2();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_21B2FC0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a5 + 8);
  if (sub_21B34AC54())
  {
    v8 = *(type metadata accessor for Tuple2() + 52);
    v9 = *(a6 + 8);
    v10 = sub_21B34AC54();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_21B2FC144(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  sub_21B34AAB4();
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = v2 + *(a2 + 52);
  return sub_21B34AAB4();
}

uint64_t sub_21B2FC1EC(uint64_t a1)
{
  v28 = a1;
  v1 = *(a1 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - v8;
  v10 = *(v7 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v7);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v29 = 0x28656C707554;
  v30 = 0xE600000000000000;
  v18 = *(v11 + 16);
  v18(&v27 - v16);
  (v18)(v15, v17, v10);
  v19 = sub_21B34AD54();
  v21 = v20;
  (*(v11 + 8))(v17, v10);
  MEMORY[0x21CEED5E0](v19, v21);

  MEMORY[0x21CEED5E0](8236, 0xE200000000000000);
  v22 = *(v2 + 16);
  v22(v9, v27 + *(v28 + 52), v1);
  v22(v6, v9, v1);
  v23 = sub_21B34AD54();
  v25 = v24;
  (*(v2 + 8))(v9, v1);
  MEMORY[0x21CEED5E0](v23, v25);

  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  return v29;
}

uint64_t sub_21B2FC488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for Tuple3();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 72), a3, a6);
}

uint64_t sub_21B2FC5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a6 + 8);
  if (sub_21B34AC54() & 1) != 0 && (v11 = type metadata accessor for Tuple3(), v12 = *(v11 + 68), v13 = *(a7 + 8), (sub_21B34AC54()))
  {
    v14 = *(v11 + 72);
    v15 = *(a8 + 8);
    v16 = sub_21B34AC54();
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_21B2FC67C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  sub_21B34AAB4();
  v7 = *(a2 + 24);
  v8 = *(a2 + 48);
  v9 = v2 + *(a2 + 68);
  sub_21B34AAB4();
  v10 = *(a2 + 32);
  v11 = *(a2 + 56);
  v12 = v3 + *(a2 + 72);
  return sub_21B34AAB4();
}

uint64_t sub_21B2FC6E8(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_21B34BBC4();
  a2(v5, a1);
  return sub_21B34BC24();
}

uint64_t sub_21B2FC788(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_21B34BBC4();
  a4(v7, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2FC7F0(uint64_t a1)
{
  v48 = *(a1 + 32);
  v47 = *(v48 - 8);
  v2 = *(v47 + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v45 = &v43 - v6;
  v7 = *(v5 + 24);
  v43 = v5;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = *(v12 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v12);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_21B34B634();

  v49 = 0x28656C707554;
  v50 = 0xE600000000000000;
  v23 = *(v16 + 16);
  v23(v22, v1, v15);
  v23(v20, v22, v15);
  v24 = sub_21B34AD54();
  v26 = v25;
  (*(v16 + 8))(v22, v15);
  MEMORY[0x21CEED5E0](v24, v26);

  MEMORY[0x21CEED5E0](8236, 0xE200000000000000);
  v27 = v43;
  v28 = *(v8 + 16);
  v29 = v1;
  v28(v14, v1 + *(v43 + 68), v7);
  v28(v44, v14, v7);
  v30 = sub_21B34AD54();
  v32 = v31;
  (*(v8 + 8))(v14, v7);
  MEMORY[0x21CEED5E0](v30, v32);

  MEMORY[0x21CEED5E0](8236, 0xE200000000000000);
  v34 = v47;
  v33 = v48;
  v35 = *(v47 + 16);
  v36 = v29 + *(v27 + 72);
  v37 = v45;
  v35(v45, v36, v48);
  v35(v46, v37, v33);
  v38 = v33;
  v39 = sub_21B34AD54();
  v41 = v40;
  (*(v34 + 8))(v37, v38);
  MEMORY[0x21CEED5E0](v39, v41);

  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  return v49;
}

uint64_t sub_21B2FCC28(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_21B34B1D4();
  if (!v26)
  {
    return sub_21B34AFD4();
  }

  v48 = v26;
  v52 = sub_21B34B774();
  v39 = sub_21B34B784();
  sub_21B34B744();
  result = sub_21B34B1B4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_21B34B314();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_21B34B764();
      result = sub_21B34B244();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RowGrouping.randomSplit(by:seed:)(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, double a6)
{
  v23 = v6[1];
  v7 = v6[2];
  v43 = *v6;
  v8 = *(a5 + 16);
  v9 = *(a5 + 24);
  v38 = v8;
  v39 = v9;
  v40 = a6;
  v41 = a3;
  v42 = a4 & 1;
  v33 = v8;
  v34 = v9;
  v35 = sub_21B3035EC;
  v36 = &v37;
  sub_21B34B474();

  swift_getTupleTypeMetadata2();
  v10 = sub_21B34B054();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_21B2FCC28(sub_21B3036EC, v32, v10, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  v43 = v14;
  v30 = v8;
  v31 = v9;
  v15 = sub_21B34B054();
  v16 = swift_getTupleTypeMetadata2();
  v17 = swift_getWitnessTable();
  v19 = sub_21B2FCC28(sub_21B3039E4, v29, v15, v16, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v18);
  v43 = v14;
  v27 = v8;
  v28 = v9;
  v21 = sub_21B2FCC28(sub_21B303CD4, v26, v15, v16, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v20);

  RowGrouping.init<A>(groups:groupKeysColumnName:)(v19, v23, v7, v8, &type metadata for DataFrame.Slice, v9, &protocol witness table for DataFrame.Slice, a1);

  return RowGrouping.init<A>(groups:groupKeysColumnName:)(v21, v23, v7, v8, &type metadata for DataFrame.Slice, v9, &protocol witness table for DataFrame.Slice, a2);
}

TabularData::DataFrame __swiftcall RowGrouping.ungrouped()()
{
  v3 = v1;
  v4 = v2[1];
  v5 = v2[2];
  *&v35 = *v2;
  v6 = *(v0 + 24);
  v28 = *(v0 + 16);
  v29 = v6;
  v30 = v35;
  v31 = v4;
  v32 = v5;
  v23 = v28;
  v24 = v6;
  v25 = sub_21B303CF4;
  v26 = &v27;
  sub_21B34B474();

  swift_getTupleTypeMetadata2();
  v7 = sub_21B34B054();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_21B2FCC28(sub_21B303D04, v22, v7, &type metadata for DataFrame, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v10 + 48);
    v21 = *(v10 + 32);
    v35 = v21;
    v36 = v12;

    v14 = v11 - 1;
    if (v14)
    {
      v15 = (v10 + 72);
      do
      {
        v16 = *v15;
        v33 = *(v15 - 1);
        v34 = v16;
        v13.columns._rawValue = &v33;
        DataFrame.append(rowsOf:)(v13);
        v15 += 3;
        --v14;
      }

      while (v14);
      v21 = v35;
      v12 = v36;
    }

    *v3 = v21;
    *(v3 + 16) = v12;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
    *v3 = MEMORY[0x277D84F90];
    *(v3 + 8) = v20;
    v17 = sub_21B25DC2C(v20);
    *(v3 + 16) = v17;
  }

  result.columnIndicesByName._rawValue = v19;
  result.aliases._rawValue = v18;
  result.columns._rawValue = v17;
  return result;
}

void sub_21B2FD4BC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v7, *(v5 + 16), *(v5 + 24), a1);
    sub_21B2B0940(*(v5 + 16), *(v5 + 24));
    *(v5 + 16) = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
    v6 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360(&v7, *(v5 + 16), *(v5 + 24), a1);
    *(v6 + 16) = v7;

    *v1 = v6;
  }
}

void sub_21B2FD5CC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v6 = *(v5 + 24);
    sub_21B2AFD1C(*(v5 + 16), a1, &v10);
    v7 = *(v5 + 24);
    sub_21B2B0954(*(v5 + 16));
    *(v5 + 16) = v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
    v8 = swift_allocObject();
    swift_beginAccess();
    v9 = *(v5 + 24);
    sub_21B2AEFEC(*(v5 + 16), a1, &v10);
    *(v8 + 16) = v10;

    *v1 = v8;
  }
}

void sub_21B2FD6DC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v6 = *(v5 + 24);
    sub_21B2AFF0C(*(v5 + 16), a1, &v10);
    v7 = *(v5 + 24);
    sub_21B2B0A2C(*(v5 + 16));
    *(v5 + 16) = v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
    v8 = swift_allocObject();
    swift_beginAccess();
    v9 = *(v5 + 24);
    sub_21B2AF188(*(v5 + 16), a1, &v10);
    *(v8 + 16) = v10;

    *v1 = v8;
  }
}

void sub_21B2FD7B0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v7, *(v5 + 16), *(v5 + 24), a1);
    sub_21B2B0C0C(*(v5 + 16), *(v5 + 24));
    *(v5 + 16) = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
    v6 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360(&v7, *(v5 + 16), *(v5 + 24), a1);
    *(v6 + 16) = v7;

    *v1 = v6;
  }
}

void sub_21B2FD884(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v7, *(v5 + 16), *(v5 + 24), a1);
    sub_21B2B0D10(*(v5 + 16), *(v5 + 24));
    *(v5 + 16) = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C0, &qword_21B355BC0);
    v6 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360(&v7, *(v5 + 16), *(v5 + 24), a1);
    *(v6 + 16) = v7;

    *v1 = v6;
  }
}

void sub_21B2FD958(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v7, *(v5 + 16), *(v5 + 24), a1);
    sub_21B2B0D24(*(v5 + 16), *(v5 + 24));
    *(v5 + 16) = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E360, &qword_21B351C70);
    v6 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360(&v7, *(v5 + 16), *(v5 + 24), a1);
    *(v6 + 16) = v7;

    *v1 = v6;
  }
}

void sub_21B2FDA2C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v7, *(v5 + 16), *(v5 + 24), a1);
    sub_21B2B0D38(*(v5 + 16), *(v5 + 24));
    *(v5 + 16) = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E358, &qword_21B351C68);
    v6 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360(&v7, *(v5 + 16), *(v5 + 24), a1);
    *(v6 + 16) = v7;

    *v1 = v6;
  }
}

void sub_21B2FDB00(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v6 = *(v5 + 24);
    sub_21B2B0554(*(v5 + 16), a1, &v10);
    v7 = *(v5 + 24);
    sub_21B2B0D4C(*(v5 + 16));
    *(v5 + 16) = v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E338, &qword_21B351C50);
    v8 = swift_allocObject();
    swift_beginAccess();
    v9 = *(v5 + 24);
    sub_21B2AF50C(*(v5 + 16), a1, &v10);
    *(v8 + 16) = v10;

    *v1 = v8;
  }
}

void sub_21B2FDBD4(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4364(&v7, *(v5 + 16), *(v5 + 24), a1);
    sub_21B2B0E44(*(v5 + 16), *(v5 + 24));
    *(v5 + 16) = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E320, &qword_21B351C38);
    v6 = swift_allocObject();
    swift_beginAccess();
    sub_21B2B4360(&v7, *(v5 + 16), *(v5 + 24), a1);
    *(v6 + 16) = v7;

    *v1 = v6;
  }
}

void sub_21B2FDCE4(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    v6 = *(v5 + 24);
    sub_21B2AFD1C(*(v5 + 16), a1, &v10);
    v7 = *(v5 + 24);
    sub_21B2B0B34(*(v5 + 16));
    *(v5 + 16) = v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B0, &unk_21B354470);
    v8 = swift_allocObject();
    swift_beginAccess();
    v9 = *(v5 + 24);
    sub_21B2AF9E0(*(v5 + 16), a1, &v10);
    *(v8 + 16) = v10;

    *v1 = v8;
  }
}

uint64_t sub_21B2FDDB8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    swift_beginAccess();
    sub_21B2B4368(&v9, *(v5 + 16), *(v5 + 24));
    result = sub_21B2B436C(*(v5 + 16), *(v5 + 24));
    *(v5 + 16) = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4F8, &qword_21B354CA0);
    v7 = swift_allocObject();
    swift_beginAccess();
    v8 = *(v5 + 24);
    sub_21B2AFB80(*(v5 + 16), a1, &v9);
    *(v7 + 16) = v9;

    *v1 = v7;
  }

  return result;
}

uint64_t sub_21B2FDE8C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 8);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v11 = *(v10 + 16);
    if (v11)
    {
      if (*v11 < v7)
      {
        sub_21B2B3630(v7, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = *v12;
    if (*v12 >= v7)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
      v14 = swift_allocObject();
      v15 = *(v10 + 24);
      sub_21B2AF188(v12, v13, &v17);
      *(v14 + 16) = v17;

      *v1 = v14;
      v10 = v14;
LABEL_14:
      swift_beginAccess();
      v16 = *(v10 + 24);
      return sub_21B2B1010(a1, *(v10 + 16));
    }

    if (v13 + 0x4000000000000000 >= 0)
    {
      if (2 * v13 <= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE000(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 8);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v11 = *(v10 + 16);
    if (v11)
    {
      if (*v11 < v7)
      {
        sub_21B2B3794(v7, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = *v12;
    if (*v12 >= v7)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
      v14 = swift_allocObject();
      sub_21B2B4360(&v15, v12, *(v10 + 24), v13);
      *(v14 + 16) = v15;

      *v1 = v14;
      v10 = v14;
LABEL_14:
      swift_beginAccess();
      return sub_21B2B4374(a1, *(v10 + 16), *(v10 + 24));
    }

    if (v13 + 0x4000000000000000 >= 0)
    {
      if (2 * v13 <= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE174(uint64_t a1, char a2)
{
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *(v7 + 8);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v13 = *(v12 + 16);
    if (v13)
    {
      if (*v13 < v9)
      {
        sub_21B2B3508(v9, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *v14;
    if (*v14 >= v9)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
      v16 = swift_allocObject();
      v17 = *(v12 + 24);
      sub_21B2AEE64(v14, v15, &v19);
      *(v16 + 16) = v19;

      *v2 = v16;
      v12 = v16;
LABEL_14:
      swift_beginAccess();
      v18 = *(v12 + 24);
      return sub_21B2B0F30(a1, a2 & 1, *(v12 + 16));
    }

    if (v15 + 0x4000000000000000 >= 0)
    {
      if (2 * v15 <= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE2F8(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 8);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v11 = *(v10 + 16);
    if (v11)
    {
      if (*v11 < v7)
      {
        sub_21B2B37A8(v7, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = *v12;
    if (*v12 >= v7)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C0, &qword_21B355BC0);
      v14 = swift_allocObject();
      sub_21B2B4360(&v15, v12, *(v10 + 24), v13);
      *(v14 + 16) = v15;

      *v1 = v14;
      v10 = v14;
LABEL_14:
      swift_beginAccess();
      return sub_21B2B4374(a1, *(v10 + 16), *(v10 + 24));
    }

    if (v13 + 0x4000000000000000 >= 0)
    {
      if (2 * v13 <= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE46C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 8);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v11 = *(v10 + 16);
    if (v11)
    {
      if (*v11 < v7)
      {
        sub_21B2B3688(v7, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = *v12;
    if (*v12 >= v7)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A8, &unk_21B354C90);
      v14 = swift_allocObject();
      v15 = *(v10 + 24);
      sub_21B2AF39C(v12, v13, &v17);
      *(v14 + 16) = v17;

      *v1 = v14;
      v10 = v14;
LABEL_14:
      swift_beginAccess();
      v16 = *(v10 + 24);
      return sub_21B2B133C(a1, *(v10 + 16));
    }

    if (v13 + 0x4000000000000000 >= 0)
    {
      if (2 * v13 <= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE5E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 8);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v11 = *(v10 + 16);
    if (v11)
    {
      if (*v11 < v7)
      {
        sub_21B2B36A0(v7, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = *v12;
    if (*v12 >= v7)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E498, &unk_21B354490);
      v14 = swift_allocObject();
      v15 = *(v10 + 24);
      sub_21B2AF858(v12, v13, &v17);
      *(v14 + 16) = v17;

      *v1 = v14;
      v10 = v14;
LABEL_14:
      swift_beginAccess();
      v16 = *(v10 + 24);
      return sub_21B2B1400(a1 | ((HIDWORD(a1) & 1) << 32), *(v10 + 16));
    }

    if (v13 + 0x4000000000000000 >= 0)
    {
      if (2 * v13 <= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE75C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *(v7 + 8);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v13 = *(v12 + 16);
    if (v13)
    {
      if (*v13 < v9)
      {
        sub_21B2B365C(v9, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *v14;
    if (*v14 >= v9)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B0, &unk_21B354470);
      v16 = swift_allocObject();
      v17 = *(v12 + 24);
      sub_21B2AF9E0(v14, v15, &v19);
      *(v16 + 16) = v19;

      *v2 = v16;
      v12 = v16;
LABEL_14:
      swift_beginAccess();
      v18 = *(v12 + 24);
      return sub_21B2B127C(a1, a2, *(v12 + 16));
    }

    if (v15 + 0x4000000000000000 >= 0)
    {
      if (2 * v15 <= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FE8E0(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 8);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = swift_beginAccess();
    v11 = *(v10 + 16);
    if (v11)
    {
      if (*v11 < v7)
      {
        sub_21B2B3520(v7, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_18;
  }

  result = swift_beginAccess();
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = *v12;
    if (*v12 >= v7)
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E180, &qword_21B351AB0);
      v14 = swift_allocObject();
      sub_21B2B4360(&v15, v12, *(v10 + 24), v13);
      *(v14 + 16) = v15;

      *v1 = v14;
      v10 = v14;
LABEL_14:
      swift_beginAccess();
      return sub_21B2B4374(a1, *(v10 + 16), *(v10 + 24));
    }

    if (v13 + 0x4000000000000000 >= 0)
    {
      if (2 * v13 <= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 *= 2;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B2FEB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, void (*a10)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a11)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a8(&v82, a1, a2, a5, a6, a7);
  v14 = v82;
  v65 = v83;
  v70 = a6;
  v66 = *(a5 + 16);
  if (v66)
  {
    sub_21B233A74(a5 + 32, &v82);
    v15 = *(&v83 + 1);
    v16 = v84;
    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    v17 = *(v16 + 8);
    v18 = *(v17 + 48);

    v19 = v18(v15, v17);
    sub_21B233960(&v82);
    if (v19 < 0)
    {
      goto LABEL_45;
    }

    if (v19)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v20 = 2;
  sub_21B2A6400(0, 0, 2);
  v19 = 0;
  if (v23)
  {
    v21 = 0;
  }

  else
  {
    v21 = v22;
  }

LABEL_9:
  sub_21B2A6400(0, v19, v20);
  v85[0] = a5;
  v85[1] = v70;
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v85[2] = a7;
  v85[3] = 0;
  v85[4] = v19;
  v86 = v20;
  *v87 = v79[0];
  *&v87[3] = *(v79 + 3);
  v88 = v21;
  v89 = v26;

  v27 = sub_21B2640C4(v85);
  sub_21B261664(v85, &qword_27CD7E510, &unk_21B351F10);
  *&v82 = v27;
  sub_21B308084(&v82, v14, *(&v14 + 1), v65, a3, a4, a10, a11);

  if (v73)
  {

    swift_bridgeObjectRelease_n();
  }

  v29 = v82;
  v30 = MEMORY[0x277D84F90];
  v63 = v82;
  if (v66)
  {
    v90 = MEMORY[0x277D84F90];
    sub_21B254088(0, v66, 0);
    v30 = v90;
    v31 = a5 + 32;
    v32 = v66;
    do
    {
      sub_21B233A74(v31, v79);
      v34 = v80;
      v33 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      (*(*(v33 + 8) + 88))(&v75, v34);
      v35 = v77;
      v36 = v78;
      __swift_project_boxed_opaque_existential_1(&v75, v77);
      v38 = v80;
      v37 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v39 = (*(*(v37 + 8) + 48))(v38);
      (*(v36 + 32))(&v82, v39, v35, v36);
      sub_21B233960(v79);
      __swift_destroy_boxed_opaque_existential_1Tm(&v75);
      v90 = v30;
      v41 = *(v30 + 16);
      v40 = *(v30 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_21B254088((v40 > 1), v41 + 1, 1);
        v30 = v90;
      }

      *(v30 + 16) = v41 + 1;
      v42 = v30 + 40 * v41;
      v43 = v82;
      v44 = v83;
      *(v42 + 64) = v84;
      *(v42 + 32) = v43;
      *(v42 + 48) = v44;
      v31 += 40;
      --v32;
    }

    while (v32);
    v29 = v63;
  }

  sub_21B23BEF8(v30, &v75);
  v68 = *(v29 + 16);
  if (!v68)
  {

    v15 = v75;
LABEL_41:
    *a9 = v15;
    *(a9 + 8) = v76;
    return result;
  }

  v45 = 0;
  v67 = v29 + 32;
  v46 = v66;
  while (1)
  {
    v72 = v45;
    v74 = *(v67 + 8 * v45);
    if (v46)
    {
      sub_21B233A74(a5 + 32, &v82);
      v47 = *(&v83 + 1);
      v48 = v84;
      __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
      v49 = *(v48 + 8);
      v50 = *(v49 + 48);

      v15 = v50(v47, v49);
      sub_21B233960(&v82);
      if (v15 < 0)
      {
        goto LABEL_43;
      }

      if (v15)
      {
        v51 = 0;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v15 = 0;
    v51 = 2;
LABEL_30:
    sub_21B23A9F4(0, v15, v51);
    v52 = *(a5 + 16);
    v15 = v75;
    if (v52 != *(v75 + 2))
    {
      goto LABEL_46;
    }

    if (v52)
    {
      break;
    }

LABEL_23:
    v45 = v72 + 1;
    if (v72 + 1 == v68)
    {

      goto LABEL_41;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_21B23A2F4(v15);
  }

  if (v52 <= *(a5 + 16))
  {
    v53 = 0;
    v54 = 0;
    while (1)
    {
      sub_21B233A74(a5 + v53 + 32, &v82);
      if (v54 >= *(v15 + 16))
      {
        break;
      }

      ++v54;
      v55 = *(&v83 + 1);
      v56 = v84;
      v57 = __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
      v80 = v55;
      v81 = *(v56 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
      (*(*(v55 - 8) + 16))(boxed_opaque_existential_1, v57, v55);
      v59 = *(v15 + v53 + 56);
      v60 = *(v15 + v53 + 64);
      __swift_mutable_project_boxed_opaque_existential_1(v15 + v53 + 32, v59);
      (*(v60 + 56))(v74, v79, v59, v60);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      sub_21B233960(&v82);
      v75 = v15;
      v53 += 40;
      if (v52 == v54)
      {

        v46 = v66;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
  v79[0] = *(a5 + 16);
  v61 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v61);

  MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
  v79[0] = *(v15 + 16);
  v62 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v62);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2FF264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *))
{
  if (a1 < 0)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v10 = *(a5 + 16);
  if (!v10)
  {
    __break(1u);
LABEL_13:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v11 = *(v10 + 8);
  if (v11 <= a1)
  {
    goto LABEL_13;
  }

  v12 = *(a5 + 24);
  v13 = sub_21B2B18C4(a1, *(a5 + 16), v11);
  if (a2 < 0)
  {
    goto LABEL_13;
  }

  v14 = *(v10 + 8);
  if (v14 <= a2)
  {
    goto LABEL_13;
  }

  v15 = v13;
  v16 = *(a5 + 24);
  v17 = sub_21B2B18C4(a2, *(a5 + 16), v14);
  if (v15 == 2)
  {
    v18 = 0;
  }

  else if (v17 == 2)
  {
    v18 = 1;
  }

  else
  {
    v21 = v15 & 1;
    v20 = v17 & 1;
    v18 = a6(&v21, &v20);
  }

  return v18 & 1;
}

uint64_t sub_21B2FF3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t *))
{
  if (a1 < 0)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v10 = *(a5 + 16);
  if (!v10)
  {
    __break(1u);
LABEL_11:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v11 = *(v10 + 8);
  if (v11 <= a1)
  {
    goto LABEL_11;
  }

  v12 = *(a5 + 24);
  v13 = sub_21B2B1790(a1, *(a5 + 16), v11);
  if (a2 < 0)
  {
    goto LABEL_11;
  }

  v15 = *(v10 + 8);
  if (v15 <= a2)
  {
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  v18 = *(a5 + 24);
  v20 = sub_21B2B1790(a2, *(a5 + 16), v15);
  v21 = v17 ^ 1;
  if ((v17 & 1) == 0 && (v19 & 1) == 0)
  {
    v23 = v20;
    v24 = v16;
    v21 = a6(&v24, &v23);
  }

  return v21 & 1;
}

uint64_t sub_21B2FF4EC(uint64_t a1)
{
  v2 = *(v1 + 2);
  v10 = *v1;
  v11 = v2;
  sub_21B2FF59C(a1, v8);
  v3 = v8[3];
  v4 = v8[4];
  v5 = v9;
  v6 = DataFrame.Slice.columns.getter();

  sub_21B23A9F4(v3, v4, v5);
  return v6;
}

double sub_21B2FF59C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v16 - v8;
  v18 = *v2;
  sub_21B34B054();
  swift_getWitnessTable();
  if (sub_21B34B2B4())
  {
    v17 = vdupq_n_s64(MEMORY[0x277D84F90]);
    v10 = sub_21B25DC2C(MEMORY[0x277D84F90]);
    v11 = 0uLL;
    v12 = 2;
  }

  else
  {
    sub_21B34B094();
    v13 = &v9[*(TupleTypeMetadata2 + 48)];
    v14 = *v13;
    v10 = *(v13 + 2);
    v16 = *(v13 + 24);
    v17 = v14;
    v12 = v13[40];
    (*(*(v5 - 8) + 8))(v9, v5);
    v11 = v16;
  }

  result = *v17.i64;
  *a2 = v17;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 40) = v12;
  return result;
}

uint64_t sub_21B2FF730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v13 = sub_21B2FF7B0(a1, a2, a3, a4, a5, a6, a7);
  result = (*(*(a5 - 8) + 8))(a1, a5);
  *a8 = v13;
  a8[1] = a2;
  a8[2] = a3;
  return result;
}

uint64_t sub_21B2FF7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a6;
  v50 = 0;
  (*(a7 + 24))(v67, a5, a7);
  v64 = v67[0];
  v65 = v67[1];
  v66 = v67[2];
  DataFrame.subscript.getter(a2, a3);

  v13 = *(a7 + 32);
  v51 = a1;
  v52 = a5;
  v13(&v60, a5, a7);
  v14 = v62;
  v15 = v63;
  sub_21B254074(v62, *(&v62 + 1), v63);

  sub_21B23A9F4(v14, *(&v14 + 1), v15);
  v16 = v57;
  __swift_project_boxed_opaque_existential_1(&v55, v57);
  (*(*(*(&v16 + 1) + 8) + 160))(v68, v14, *(&v14 + 1), v15, v16);
  sub_21B23A9F4(v14, *(&v14 + 1), v15);
  sub_21B233960(&v55);
  v18 = v69;
  v17 = v70;
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v19 = (*(*(v17 + 8) + 80))(v18);
  if (v19 == a4)
  {
    AnyColumnSlice.assumingType<A>(_:)(a4, &v60);
    v55 = v60;
    v56 = v61;
    v57 = v62;
    v58 = v63;
    v27 = type metadata accessor for DiscontiguousColumnSlice();
    WitnessTable = swift_getWitnessTable();
    sub_21B34B474();
    v54 = v53;
    v29 = swift_getWitnessTable();
    sub_21B2966F4(v27, WitnessTable, v29);
    v30 = v57;
    v31 = v58;

    sub_21B23A9F4(v30, *(&v30 + 1), v31);
  }

  else
  {
    MEMORY[0x28223BE20](v19);
    v46 = a4;
    v47 = v52;
    v20 = v53;
    v48 = v53;
    v49 = a7;
    v21 = sub_21B34B474();
    v22 = sub_21B2F187C();
    v60 = sub_21B2FCC28(sub_21B3057F8, v45, &type metadata for AnyColumnSlice, v21, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);
    v24 = sub_21B34B054();
    v25 = swift_getWitnessTable();
    v59 = v20;
    v26 = swift_getWitnessTable();
    sub_21B2966F4(v24, v25, v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v32 = sub_21B34B7B4();

  v60 = v32;
  v34 = MEMORY[0x28223BE20](v33);
  v45[0] = a4;
  v45[1] = v52;
  v46 = v53;
  v47 = a7;
  v48 = v51;
  MEMORY[0x28223BE20](v34);
  v44[2] = a4;
  v44[3] = v35;
  v44[4] = v36;
  v44[5] = a7;
  v44[6] = sub_21B30581C;
  v44[7] = v37;
  sub_21B34B474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  swift_getTupleTypeMetadata2();
  v38 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = swift_getWitnessTable();
  v42 = sub_21B2FCC28(sub_21B305850, v44, v38, TupleTypeMetadata2, MEMORY[0x277D84A98], v40, MEMORY[0x277D84AC0], v41);

  sub_21B25F000(v68);
  return v42;
}

uint64_t RowGrouping.description.getter(uint64_t a1)
{
  v3 = 1937207154;
  v4 = type metadata accessor for FormattingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a1 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = &v55 - v10;
  v62 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_21B34B474();
  v13 = *(v65 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v65);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v55 - v18;
  v19 = *v1;
  v20 = v1[1];
  v21 = v1[2];
  if (v20 == 1937207154 && v21 == 0xE400000000000000 || (v22 = 0xE400000000000000, (sub_21B34B9F4() & 1) != 0))
  {
    v22 = 0xE500000000000000;
    v3 = 0x73776F725FLL;
  }

  v23 = sub_21B34B004();
  Column.init(name:capacity:)(v20, v21, v23, v66, v81);
  v78 = v3;
  v79 = v22;
  sub_21B234EF8(MEMORY[0x277D84F90]);
  v80 = v24;
  sub_21B235224(v23, sub_21B235334, &qword_27CD7E488, &unk_21B3544A0, sub_21B2AECDC);
  v67 = TupleTypeMetadata2 - 8;
  v64 = (v13 + 32);
  v57 = (v8 + 32);
  v56 = (v8 + 8);

  v25 = 0;
  v60 = TupleTypeMetadata2;
  v59 = v17;
  v58 = v19;
  while (1)
  {
    if (v25 == sub_21B34B004())
    {
      v26 = *(TupleTypeMetadata2 - 8);
      (*(v26 + 56))(v17, 1, 1, TupleTypeMetadata2);
      goto LABEL_11;
    }

    v27 = sub_21B34AFF4();
    sub_21B34AFA4();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v28 = *(TupleTypeMetadata2 - 8);
    (*(v28 + 16))(v17, v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, TupleTypeMetadata2);
    v29 = __OFADD__(v25++, 1);
    if (v29)
    {
      goto LABEL_16;
    }

LABEL_10:
    v26 = v28;
    (*(v28 + 56))(v17, 0, 1, TupleTypeMetadata2);
LABEL_11:
    v30 = v63;
    (*v64)(v63, v17, v65);
    if ((*(v26 + 48))(v30, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_17;
    }

    v31 = &v30[*(TupleTypeMetadata2 + 48)];
    v32 = *v31;
    v33 = *(v31 + 1);
    v34 = *(v31 + 2);
    v35 = *(v31 + 3);
    v36 = *(v31 + 4);
    v37 = *v57;
    v38 = v31[40];
    v68 = v25;
    v39 = v61;
    v40 = v62;
    v37(v61, v30, v62);
    v41 = type metadata accessor for Column();
    Column.append(_:)(v39, v41);
    v42 = sub_21B2FB1D4(v35, v36, v38);
    v69 = v32;
    v70 = v33;
    v71 = v34;
    v72 = v35;
    v73 = v36;
    v74 = v38;
    DataFrame.Slice.columns.getter();

    v19 = v58;

    v43 = v38;
    TupleTypeMetadata2 = v60;
    sub_21B23A9F4(v35, v36, v43);

    sub_21B235528(v42, 0);
    v44 = v39;
    v25 = v68;
    v45 = v40;
    v17 = v59;
    (*v56)(v44, v45);
  }

  result = sub_21B34B684();
  v28 = *(TupleTypeMetadata2 - 8);
  if (*(v28 + 64) == 8)
  {
    v69 = result;
    (*(v28 + 16))(v17, &v69, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    v29 = __OFADD__(v25++, 1);
    if (v29)
    {
LABEL_16:
      __break(1u);
LABEL_17:

      v75 = MEMORY[0x277D84F90];
      v76 = MEMORY[0x277D84F90];
      v77 = sub_21B25DC2C(MEMORY[0x277D84F90]);
      v69 = v81[0];
      v70 = v81[1];
      v71 = v81[2];

      DataFrame.append<A>(column:)(&v69);

      v47 = v78;
      v48 = v79;
      v49 = v80;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
      v73 = &off_282CAA128;
      v69 = v47;
      v70 = v48;
      v71 = v49;

      DataFrame.append(column:)(&v69);
      sub_21B233960(&v69);
      v50 = v75;
      v51 = v76;
      v52 = v77;
      v53 = v55;
      FormattingOptions.init()(v55);
      v54 = sub_21B2C6E78(v53, v50, v51, v52);

      sub_21B2B42B0(v53);

      return v54;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t RowGrouping.init<A>(groups:groupKeysColumnName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v23 = a1;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = sub_21B305378;
  v17[7] = &v18;
  sub_21B34B474();
  swift_getTupleTypeMetadata2();
  v11 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21B2FCC28(sub_21B305384, v17, v11, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

  *a8 = v15;
  a8[1] = a2;
  a8[2] = a3;
  return result;
}

double sub_21B300660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_21B34B474();
  (*(*(v13 - 8) + 16))(a1, a3, v13);
  (*(a8 + 24))(&v23, a6, a8);
  v14 = v24;
  (*(a8 + 32))(&v19, a6, a8);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  sub_21B254074(v20, v21, v22);

  sub_21B23A9F4(v15, v16, v17);
  result = *&v23;
  *a2 = v23;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_21B300794@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  sub_21B34B474();
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t sub_21B300850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21B2615FC(a1, &v7, &qword_27CD7E0F8, &unk_21B3557C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_21B300910(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = sub_21B34B474();
  (*(*(v17 - 8) + 16))(a1, a3, v17);
  (*(a11 + 24))(v35, a9, a11);
  v18 = v35[0];
  v19 = v35[1];
  v20 = v35[2];
  if (!*(v35[0] + 16))
  {

    goto LABEL_6;
  }

  v31 = a4;
  v21 = a6;
  sub_21B233A74(v35[0] + 32, v32);
  v22 = v33;
  v23 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v24 = *(v23 + 8);
  v25 = *(v24 + 48);

  v26 = v25(v22, v24);
  result = sub_21B233960(v32);
  if ((v26 & 0x8000000000000000) == 0)
  {
    a6 = v21;
    a4 = v31;
    if (v26)
    {
      v28 = 0;
LABEL_7:
      sub_21B254074(0, v26, v28);

      sub_21B23A9F4(0, v26, v28);
      result = sub_21B248CCC(a4, a5, a6, 0, v26, v28);
      *a2 = v18;
      *(a2 + 8) = v19;
      *(a2 + 16) = v20;
      *(a2 + 24) = result;
      *(a2 + 32) = v29;
      *(a2 + 40) = v30;
      return result;
    }

LABEL_6:
    v26 = 0;
    v28 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B300AF4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  sub_21B34B474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  v6 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, v7, v8, v9);
}

uint64_t RowGrouping.aggregated<A, B>(on:naming:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, void (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, _OWORD *a8@<X7>, _OWORD *a9@<X8>)
{
  v108 = a6;
  v100 = a4;
  v101 = a5;
  v111 = a3;
  v106 = a2;
  v92 = a9;
  v99 = sub_21B34B474();
  v93 = *(v99 - 8);
  v14 = *(v93 + 64);
  MEMORY[0x28223BE20](v99);
  v114 = &v92 - v15;
  v16 = *(a6 + 16);
  v17 = sub_21B34B474();
  v113 = *(v17 - 8);
  v96 = *(v113 + 64);
  MEMORY[0x28223BE20](v17);
  v115 = &v92 - v18;
  v20 = *v9;
  v19 = v9[1];
  v21 = v9[2];

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v110 = v20;
  v104 = TupleTypeMetadata2;
  v23 = sub_21B34B004();
  sub_21B265ED0(v19, v21, v16, v130);
  v112 = type metadata accessor for SingleColumnBuilder();
  sub_21B265F40(v23, v112);
  v103 = a1;
  *&v125 = a1;
  v116[2] = v16;
  v116[3] = a7;
  v105 = a7;
  v24 = *(v108 + 24);
  v116[4] = a8;
  v116[5] = v24;
  v108 = v24;
  v109 = v16;
  v116[6] = v106;
  v116[7] = v111;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  v111 = a8;
  v26 = type metadata accessor for SingleColumnBuilder();
  v27 = sub_21B305404();
  v28 = v107;
  v131 = sub_21B2FCC28(sub_21B3053B0, v116, v25, v26, MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v29);

  v30 = sub_21B34B004();

  if (v30 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v106 = v17;
  v107 = v28;
  if (v30)
  {
    sub_21B34B054();
    sub_21B34AFC4();
    sub_21B34AFC4();
    v32 = 0;
    v33 = 32;
    do
    {
      sub_21B34AFC4();
      sub_21B305254(v32, v131);
      sub_21B265F40(v23, v26);
      v33 += 40;
      ++v32;
    }

    while (v30 != v32);
  }

  v102 = v26;
  *&v125 = v110;
  MEMORY[0x28223BE20](result);
  v34 = v108;
  v35 = v105;
  *(&v92 - 4) = v109;
  *(&v92 - 3) = v35;
  v36 = v111;
  *(&v92 - 2) = v111;
  *(&v92 - 1) = v34;
  KeyPath = swift_getKeyPath();
  v98 = &v92;
  v38 = MEMORY[0x28223BE20](KeyPath);
  *(&v92 - 4) = v35;
  *(&v92 - 3) = v36;
  *(&v92 - 2) = v34;
  *(&v92 - 1) = v38;
  v39 = sub_21B34B054();

  WitnessTable = swift_getWitnessTable();
  v104 = v39;
  v42 = v106;
  v41 = v107;
  v97 = WitnessTable;
  v44 = sub_21B2FCC28(sub_21B305468, (&v92 - 6), v39, v106, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v43);
  v107 = v41;

  if (sub_21B34B004())
  {
    v45 = 0;
    v46 = (v113 + 16);
    v47 = (v113 + 8);
    do
    {
      v48 = sub_21B34AFF4();
      sub_21B34AFA4();
      if (v48)
      {
        (*(v113 + 16))(v115, v44 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v45, v42);
        v49 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_21B34B684();
        if (v96 != 8)
        {
          goto LABEL_39;
        }

        *&v125 = result;
        (*v46)(v115, &v125, v42);
        swift_unknownObjectRelease();
        v49 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v50 = v115;
      sub_21B265FC0(v115, v112);
      (*v47)(v50, v42);
      ++v45;
    }

    while (v49 != sub_21B34B004());
  }

  *&v125 = v110;
  MEMORY[0x28223BE20](v51);
  v52 = v108;
  v53 = v109;
  v54 = v105;
  *(&v92 - 4) = v109;
  *(&v92 - 3) = v54;
  v55 = v111;
  *(&v92 - 2) = v111;
  *(&v92 - 1) = v52;
  v56 = swift_getKeyPath();
  v57 = MEMORY[0x28223BE20](v56);
  *(&v92 - 6) = v53;
  *(&v92 - 5) = v54;
  *(&v92 - 4) = v55;
  *(&v92 - 3) = v52;
  *(&v92 - 2) = v57;

  v58 = v107;
  v60 = sub_21B2FCC28(sub_21B30548C, (&v92 - 8), v104, &type metadata for DataFrame.Slice, MEMORY[0x277D84A98], v97, MEMORY[0x277D84AC0], v59);
  v61 = v58;

  v94 = *(v60 + 16);
  if (v94)
  {
    v62 = v102;
    v63 = sub_21B34B054();
    sub_21B34AFC4();
    v96 = v60 + 32;
    v104 = v63;
    result = sub_21B34AFC4();
    v64 = 0;
    v98 = (v93 + 8);
    v93 = v103 + 40;
    v95 = v60;
    while (v64 < *(v60 + 16))
    {
      v66 = v96 + 48 * v64;
      v67 = *v66;
      v68 = *(v66 + 8);
      v69 = *(v66 + 16);
      v70 = *(v66 + 24);
      v71 = *(v66 + 32);
      v72 = *(v66 + 40);
      v115 = v131;
      v108 = v67;

      v107 = v68;

      v106 = v69;

      v109 = v70;
      v110 = v71;
      LODWORD(v111) = v72;
      sub_21B254074(v70, v71, v72);
      result = sub_21B34B004();
      if (result < 0)
      {
        goto LABEL_36;
      }

      v73 = result;
      v97 = v64;
      sub_21B34AFC4();
      result = sub_21B34AFC4();
      if (v73)
      {
        v74 = 0;
        v75 = v93;
        v76 = 32;
        while (v74 < *(v103 + 16))
        {
          v77 = *(v75 - 1);
          v78 = *v75;
          *&v125 = v108;
          *(&v125 + 1) = v107;
          v126 = v106;
          v127 = v109;
          v128 = v110;
          v129 = v111;

          DataFrame.Slice.subscript.getter(v77, v78, &v121);

          v117 = v121;
          v118 = v122;
          v119 = v123;
          v120 = v124;
          v100(&v117);
          if (v61)
          {

            sub_21B23A9F4(v109, v110, v111);

            v85 = v119;
            v86 = v120;

            sub_21B23A9F4(v85, *(&v85 + 1), v86);
          }

          v115 = v74 + 1;
          v80 = *(&v119 + 1);
          v79 = v119;
          v113 = v74;
          v81 = v120;

          v82 = v80;
          v62 = v102;
          v83 = v81;
          v61 = 0;
          sub_21B23A9F4(v79, v82, v83);
          sub_21B34AFC4();
          sub_21B305254(v113, v131);
          v84 = v114;
          sub_21B265FC0(v114, v62);
          result = (*v98)(v84, v99);
          v76 += 40;
          v75 += 2;
          v74 = v115;
          if (v73 == v115)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

LABEL_17:
      v64 = v97 + 1;

      result = sub_21B23A9F4(v109, v110, v111);
      v60 = v95;
      v65 = v112;
      if (v64 == v94)
      {

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v62 = v102;
  v65 = v112;
LABEL_28:
  *&v125 = MEMORY[0x277D84F90];
  *(&v125 + 1) = MEMORY[0x277D84F90];
  v126 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  sub_21B265FFC(&v125, 0, v65);
  result = sub_21B34B004();
  if ((result & 0x8000000000000000) == 0)
  {
    v87 = result;
    if (result)
    {
      sub_21B34B054();
      sub_21B34AFC4();
      sub_21B34AFC4();
      v88 = 0;
      v89 = 32;
      do
      {
        sub_21B34AFC4();
        sub_21B305254(v88, v131);
        sub_21B265FFC(&v125, 0, v62);
        v89 += 40;
        ++v88;
      }

      while (v87 != v88);
    }

    v90 = v126;
    v91 = v92;
    *v92 = v125;
    *(v91 + 2) = v90;
    return result;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_21B3020C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v3 = *a2;
  v4 = *(*a2 + *MEMORY[0x277D84DE8]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  (*(v5 + 16))(&v20 - v10);
  v12 = *(v4 + 48);
  v13 = *&v11[v12];
  v21 = *&v11[v12 + 16];
  v14 = *&v11[v12 + 32];
  v15 = v11[v12 + 40];
  v16 = &v9[v12];
  v17 = *(*(*(v3 + *MEMORY[0x277D84DE8] + 8) - 8) + 32);
  v20 = v13;
  v17(v9, v11);
  v18 = v21;
  *v16 = v20;
  *(v16 + 1) = v18;
  *(v16 + 4) = v14;
  v16[40] = v15;
  swift_getAtKeyPath();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_21B30229C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  (*(v5 + 16))(&v20 - v10, a1, TupleTypeMetadata2);
  v12 = *(TupleTypeMetadata2 + 48);
  v13 = *&v11[v12];
  v21 = *&v11[v12 + 16];
  v14 = *&v11[v12 + 32];
  v15 = v11[v12 + 40];
  v16 = &v9[v12];
  v17 = *(*(v3 - 8) + 32);
  v20 = v13;
  v17(v9, v11, v3);
  v18 = v21;
  *v16 = v20;
  *(v16 + 1) = v18;
  *(v16 + 4) = v14;
  v16[40] = v15;
  swift_getAtKeyPath();
  return (*(v5 + 8))(v9, TupleTypeMetadata2);
}

void sub_21B302460(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = sub_21B2FB1D4(v11, v13, v14);

  sub_21B254074(v11, v13, v14);

  sub_21B23A9F4(v11, v13, v14);

  sub_21B265ED0(a3, a4, a5, v21);
  v16 = type metadata accessor for SingleColumnBuilder();
  sub_21B265F40(v15, v16);
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    for (; v15; --v15)
    {
      sub_21B265FC0(a1, v16);
    }

    v19[0] = v10;
    v19[1] = v9;
    v19[2] = v12;
    v19[3] = v11;
    v19[4] = v13;
    v20 = v14;

    sub_21B254074(v11, v13, v14);
    DataFrame.init(_:)(v19, a6);
    sub_21B265FFC(a6, 1, v16);
  }
}

uint64_t RowGrouping.filter(_:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  v9 = *v2;
  v8 = *(a1 + 16);
  sub_21B34B474();

  swift_getTupleTypeMetadata2();
  sub_21B34B054();
  swift_getWitnessTable();
  result = sub_21B34B704();
  if (!v3)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_21B302704(uint64_t a1, uint64_t (*a2)(__int128 *))
{
  sub_21B34B474();
  v4 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v5 = *(v4 + 2);
  v6 = *(v4 + 40);
  v8 = *v4;
  v9 = v5;
  v10 = *(v4 + 24);
  v11 = v6;
  return a2(&v8) & 1;
}

uint64_t RowGrouping.mapGroups(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v15 = v4[1];
  v6 = v4[2];
  v27[2] = *v4;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v23 = v7;
  v24 = v8;
  v25 = a1;
  v26 = a2;
  v18 = v7;
  v19 = v8;
  v20 = sub_21B3054D8;
  v21 = &v22;
  sub_21B34B474();

  swift_getTupleTypeMetadata2();
  v9 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_21B2FCC28(sub_21B3054F8, v17, v9, TupleTypeMetadata2, v11, WitnessTable, MEMORY[0x277D84950], v27);

  if (!v5)
  {

    return RowGrouping.init<A>(groups:groupKeysColumnName:)(v13, v15, v6, v7, &type metadata for DataFrame, v8, &protocol witness table for DataFrame, a4);
  }

  return result;
}

uint64_t sub_21B302958(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t (*a5)(_OWORD *))
{
  v15 = a4[1];
  v8 = *(a4 + 4);
  v9 = *(a4 + 40);
  v10 = sub_21B34B474();
  v11 = *(v10 - 8);
  v14 = *a4;
  (*(v11 + 16))(a1, a3, v10);
  v17[0] = v14;
  v17[1] = v15;
  v18 = v8;
  v19 = v9;
  v12 = v20;
  result = a5(v17);
  if (v12)
  {
    return (*(v11 + 8))(a1, v10);
  }

  return result;
}

uint64_t sub_21B302A74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void *a3@<X5>, uint64_t a4@<X8>)
{
  sub_21B34B474();
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a4, a4 + *(TupleTypeMetadata2 + 48), a1, a1 + v9);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_21B302B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 2);
  v13 = *v3;
  v14 = v6;
  sub_21B2FF59C(a3, &v9);
  sub_21B23A9F4(v10, v11, v12);
  v7 = sub_21B23AC94(a1, a2);

  return v7;
}

uint64_t RowGrouping.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v6 = *(a2 + 16);
  v7 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_21B34B474();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  v36 = v7;
  v35 = *(v7 - 8);
  v14 = *(v35 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = v31 - v16;
  v18 = *(v6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v3;
  if (*(a1 + 16))
  {
    sub_21B2615FC(a1 + 32, v37, &qword_27CD7E0F8, &unk_21B3557C0);
  }

  else
  {
    memset(v37, 0, 24);
    v37[3] = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7F360, &qword_21B356960);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v24(v17, 0, 1, v6);
    v25 = (*(v18 + 32))(v21, v17, v6);
    v31[1] = v31;
    v37[0] = v22;
    MEMORY[0x28223BE20](v25);
    v26 = *(v34 + 24);
    v31[-4] = v6;
    v31[-3] = v26;
    v31[-2] = v21;
    sub_21B34B054();

    swift_getWitnessTable();
    sub_21B34AF14();

    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      (*(v32 + 8))(v13, v33);
      *(a3 + 25) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      v28 = &v13[*(TupleTypeMetadata2 + 48)];
      v29 = *(v28 + 2);
      v30 = v28[40];
      *a3 = *v28;
      *(a3 + 16) = v29;
      *(a3 + 24) = *(v28 + 24);
      *(a3 + 40) = v30;
      (*(v35 + 8))(v13, v36);
    }

    return (*(v18 + 8))(v21, v6);
  }

  else
  {
    v24(v17, 1, 1, v6);
    result = (*(v35 + 8))(v17, v36);
    *(a3 + 25) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21B30300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v45 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v11 = *(v40 + 64);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v36 - v13;
  v15 = *(v9 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v12);
  v43 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  (*(v6 + 16))(&v36 - v19, a2, a3);
  (*(v6 + 56))(v20, 0, 1, a3);
  v41 = TupleTypeMetadata2;
  v21 = *(TupleTypeMetadata2 + 48);
  v22 = v15[2];
  v22(v14, v45, v9);
  v44 = v21;
  v22(&v14[v21], v20, v9);
  v42 = v6;
  v23 = *(v6 + 48);
  v45 = a3;
  if (v23(v14, 1, a3) != 1)
  {
    v37 = v15;
    v26 = v43;
    v22(v43, v14, v9);
    v28 = v44;
    v27 = v45;
    if (v23(&v14[v44], 1, v45) != 1)
    {
      v29 = v42;
      v30 = v38;
      (*(v42 + 32))(v38, &v14[v28], v27);
      v31 = *(v39 + 8);
      v32 = v27;
      v25 = sub_21B34AC54();
      v33 = *(v29 + 8);
      v33(v30, v32);
      v34 = v37[1];
      v34(v20, v9);
      v33(v43, v32);
      v34(v14, v9);
      return v25 & 1;
    }

    (v37[1])(v20, v9);
    (*(v42 + 8))(v26, v27);
    goto LABEL_6;
  }

  v24 = v15[1];
  v24(v20, v9);
  if (v23(&v14[v44], 1, v45) != 1)
  {
LABEL_6:
    (*(v40 + 8))(v14, v41);
    v25 = 0;
    return v25 & 1;
  }

  v24(v14, v9);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_21B3034D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, double a8)
{
  v15 = a5[1];
  v19 = *a5;
  v20[0] = v15;
  *(v20 + 9) = *(a5 + 25);
  v16 = sub_21B34B474();
  result = (*(*(v16 - 8) + 16))(a1, a4, v16);
  if (a7)
  {
    return sub_21B343AF4(a2, a3, a8);
  }

  if (a6 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject();
    v18 = sub_21B262CF4(a6);
    sub_21B34351C(a2, a3, &v18, a8);
  }

  return result;
}

uint64_t sub_21B3035EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = *(v5 + 16);
  v8 = *(v5 + 24);
  return sub_21B3034D4(a1, a2, a3, a4, a5, *(v5 + 40), *(v5 + 48), *(v5 + 32));
}

uint64_t sub_21B303620@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  sub_21B34B474();
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a3 + *(TupleTypeMetadata2 + 48) + 48, a1, a1 + v6);
}

uint64_t sub_21B3036EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_21B303620(a1, *(v2 + 32), a2);
}

uint64_t sub_21B303710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v45 = a1;
  v43 = a2;
  v4 = sub_21B34B474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  v49 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v47 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v38[-v10];
  v48 = (a2 + *(swift_getTupleTypeMetadata2() + 48));
  v12 = *(v6 + 16);
  v44 = v6 + 16;
  *&v46 = v12;
  v12(v11, a1, TupleTypeMetadata2);
  v13 = &v11[*(TupleTypeMetadata2 + 48)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = *(v13 + 2);
  v17 = *(v13 + 3);
  v18 = *(v13 + 4);
  v19 = *(v13 + 6);
  v20 = *(v13 + 7);
  v21 = *(v13 + 8);
  v42 = *(v13 + 9);
  v22 = *(v13 + 10);
  v40 = v19;
  v41 = v22;
  v23 = v13[40];
  v39 = v13[88];

  sub_21B23A9F4(v17, v18, v23);

  sub_21B23A9F4(v42, v41, v39);
  v24 = *(v49 - 8);
  (*(v24 + 32))(v43, v11);
  v25 = v47;
  (v46)(v47, v45, TupleTypeMetadata2);
  v26 = &v25[*(TupleTypeMetadata2 + 48)];
  v27 = *(v26 + 4);
  LOBYTE(v11) = v26[40];
  v28 = *(v26 + 6);
  v29 = *(v26 + 7);
  v30 = *(v26 + 8);
  v31 = *(v26 + 9);
  v32 = *(v26 + 10);
  v33 = *(v26 + 1);
  v45 = *v26;
  v46 = v33;
  v34 = v26[88];

  sub_21B23A9F4(v31, v32, v34);
  v35 = v48;
  v36 = v46;
  *v48 = v45;
  v35[1] = v36;
  *(v35 + 4) = v27;
  *(v35 + 40) = v11;
  return (*(v24 + 8))(v25, v49);
}

uint64_t sub_21B3039E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_21B303710(a1, a2);
}

uint64_t sub_21B303A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v45 = a2;
  v4 = sub_21B34B474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  v44 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v49 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v39[-v10];
  v50 = (a2 + *(swift_getTupleTypeMetadata2() + 48));
  v12 = *(v6 + 16);
  v46 = v6 + 16;
  v48 = v12;
  v12(v11, a1, TupleTypeMetadata2);
  v13 = &v11[*(TupleTypeMetadata2 + 48)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = *(v13 + 2);
  v17 = *(v13 + 3);
  v18 = *(v13 + 4);
  v19 = *(v13 + 6);
  v20 = *(v13 + 7);
  v21 = *(v13 + 8);
  v43 = *(v13 + 9);
  v22 = *(v13 + 10);
  v41 = v19;
  v42 = v22;
  v23 = v13[40];
  v40 = v13[88];

  sub_21B23A9F4(v17, v18, v23);

  sub_21B23A9F4(v43, v42, v40);
  v24 = *(v44 - 8);
  v25 = v11;
  v26 = v44;
  (*(v24 + 32))(v45, v25);
  v27 = v49;
  v48(v49, v47, TupleTypeMetadata2);
  v28 = &v27[*(TupleTypeMetadata2 + 48)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v31 = *(v28 + 2);
  v32 = *(v28 + 3);
  v33 = *(v28 + 4);
  v34 = v28[40];

  sub_21B23A9F4(v32, v33, v34);
  v35 = *(v28 + 8);
  v36 = v28[88];
  v37 = v50;
  *v50 = *(v28 + 3);
  *(v37 + 2) = v35;
  *(v37 + 24) = *(v28 + 72);
  *(v37 + 40) = v36;
  return (*(v24 + 8))(v27, v26);
}

uint64_t sub_21B303CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_21B303A04(a1, a2);
}

void sub_21B303CF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3[3];
  v5 = v3[4];
  sub_21B302460(a1, a2, v3[5], v3[6], v3[2], a3);
}

uint64_t sub_21B303D04(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_21B303D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = sub_21B303E18(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
  result = (*(*(a7 - 8) + 8))(a1, a7);
  *a9 = v16;
  a9[1] = a2;
  a9[2] = a3;
  return result;
}

uint64_t sub_21B303E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a7;
  (*(a10 + 24))(v69, a7, a10);
  v68[3] = v69[0];
  v68[4] = v69[1];
  v68[5] = v69[2];
  v31 = a8;
  DataFrame.subscript.getter(v68, a2, a3, a8, a8);

  v14 = v68[0];
  v15 = v68[1];
  v16 = v68[2];
  (*(a10 + 32))(&v63, v11, a10);
  v17 = v65;
  v18 = v66;
  LOBYTE(v11) = v67;
  sub_21B254074(v65, v66, v67);

  sub_21B23A9F4(v17, v18, v11);
  v60 = v14;
  v61 = v15;
  v62 = v16;
  v19 = type metadata accessor for Column();
  sub_21B28B2B8(v17, v18, v11, v19, &v56);
  sub_21B23A9F4(v17, v18, v11);

  v52 = v56;
  v53 = v57;
  v54 = v58;
  v55 = v59;
  v20 = type metadata accessor for DiscontiguousColumnSlice();
  DiscontiguousColumnSlice.map<A>(_:)(a4, a5, v20, a6, &v70);

  sub_21B23A9F4(v54, *(&v54 + 1), v55);
  v63 = v70;
  v64 = v71;
  v21 = type metadata accessor for Column();
  WitnessTable = swift_getWitnessTable();
  sub_21B34B474();
  v23 = swift_getWitnessTable();
  v24 = sub_21B2966F4(v21, WitnessTable, v23);

  v63 = v24;
  v46 = a6;
  v47 = a7;
  v48 = v31;
  v49 = a9;
  v50 = a10;
  v51 = a1;
  v38 = a6;
  v39 = a7;
  v40 = v31;
  v41 = a9;
  v42 = a10;
  v43 = sub_21B3058AC;
  v44 = &v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  swift_getTupleTypeMetadata2();
  v25 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = swift_getWitnessTable();
  v29 = sub_21B2FCC28(sub_21B3058E4, v37, v25, TupleTypeMetadata2, MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v28);

  return v29;
}

uint64_t sub_21B3041DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = sub_21B34B474();
  (*(*(v18 - 8) + 16))(a1, a3, v18);
  (*(a12 + 24))(v36, a9, a12);
  v19 = v36[0];
  v20 = v36[1];
  v21 = v36[2];
  if (!*(v36[0] + 16))
  {

    goto LABEL_6;
  }

  v32 = a4;
  v22 = a6;
  sub_21B233A74(v36[0] + 32, v33);
  v23 = v34;
  v24 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v25 = *(v24 + 8);
  v26 = *(v25 + 48);

  v27 = v26(v23, v25);
  result = sub_21B233960(v33);
  if ((v27 & 0x8000000000000000) == 0)
  {
    a6 = v22;
    a4 = v32;
    if (v27)
    {
      v29 = 0;
LABEL_7:
      sub_21B254074(0, v27, v29);

      sub_21B23A9F4(0, v27, v29);
      result = sub_21B248CCC(a4, a5, a6, 0, v27, v29);
      *a2 = v19;
      *(a2 + 8) = v20;
      *(a2 + 16) = v21;
      *(a2 + 24) = result;
      *(a2 + 32) = v30;
      *(a2 + 40) = v31;
      return result;
    }

LABEL_6:
    v27 = 0;
    v29 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B3043C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  sub_21B34B474();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  v6 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, v7, v8, v9);
}

uint64_t RowGrouping.init<A>(frame:columnName:timeUnit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v46 = a6;
  v47 = a3;
  v44 = a5;
  v45 = a1;
  v40 = a4;
  v48 = a2;
  v49 = a7;
  v43 = *(a5 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](a1);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B34A8A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21B34A8B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  v41 = &v38 - v19;
  sub_21B34A894();
  v21 = *(v15 + 16);
  v39 = v14;
  v21(v18, v20, v14);
  v22 = *(v11 + 16);
  v23 = a4;
  v24 = v10;
  v38 = v10;
  v22(v13, v23, v10);
  v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v26 = (v16 + *(v11 + 80) + v25) & ~*(v11 + 80);
  v27 = swift_allocObject();
  (*(v15 + 32))(v27 + v25, v18, v14);
  (*(v11 + 32))(v27 + v26, v13, v24);
  v29 = v42;
  v28 = v43;
  v30 = v44;
  v31 = v45;
  (*(v43 + 16))(v42, v45, v44);
  v51 = sub_21B305540;
  v52 = v27;
  v32 = sub_21B34A834();
  v33 = v47;
  v34 = v48;
  v46 = sub_21B303E18(v29, v48, v47, sub_21B305614, v50, MEMORY[0x277D83B88], v30, v32, MEMORY[0x277D83B98], v46);
  v35 = *(v28 + 8);
  v35(v29, v30);
  (*(v11 + 8))(v40, v38);
  v35(v31, v30);
  (*(v15 + 8))(v41, v39);

  v37 = v49;
  *v49 = v46;
  v37[1] = v34;
  v37[2] = v33;
  return result;
}

uint64_t sub_21B304860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v5 = sub_21B34A5C4();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_21B34A834();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B2615FC(a1, v12, &qword_27CD7E100, &unk_21B352A30);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21B261664(v12, &qword_27CD7E100, &unk_21B352A30);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F3E8, &qword_21B356C08);
    v19 = sub_21B34A8A4();
    v20 = *(v19 - 8);
    v21 = *(v20 + 72);
    v22 = *(v20 + 80);
    v27 = v5;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21B351EA0;
    (*(v20 + 16))(v24 + v23, a3, v19);
    sub_21B308194(v24);
    swift_setDeallocating();
    (*(v20 + 8))(v24 + v23, v19);
    swift_deallocClassInstance();
    sub_21B34A884();

    v25 = sub_21B34A5B4();
    (*(v29 + 8))(v8, v27);
    (*(v14 + 8))(v17, v13);
    return v25;
  }
}

uint64_t sub_21B304BF4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *v2;
  v4 = *(a1 + 16);
  sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return a2(v3, TupleTypeMetadata2);
}

Swift::Int __swiftcall RowGrouping.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall RowGrouping.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

__n128 RowGrouping.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v20 - v11;
  v13 = *v4;
  sub_21B34B094();
  v14 = &v12[*(TupleTypeMetadata2 + 48)];
  v15 = *v14;
  v21 = *(v14 + 1);
  v16 = *(v14 + 4);
  v17 = v14[40];
  v18 = *(*(v8 - 8) + 32);
  v20 = v15;
  v18(a1, v12, v8);
  result = v21;
  *a2 = v20;
  *(a2 + 16) = result;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_21B304DB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RowGrouping.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_21B304DE0(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  v10 = sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_21B305008(v8, *a2, a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  v18 = v14 + *(TupleTypeMetadata2 + 48);
  v19 = *v17;
  v20 = v17[1];
  v21 = v17[2];
  v22 = v17[3];
  v23 = v17[4];
  LOBYTE(v17) = *(v17 + 40);
  *v18 = v19;
  *(v18 + 8) = v20;
  *(v18 + 16) = v21;
  *(v18 + 24) = v22;
  *(v18 + 32) = v23;
  *(v18 + 40) = v17;

  sub_21B254074(v22, v23, v17);
  return sub_21B304F90;
}

void sub_21B304F90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_21B305008(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v8 = *(TupleTypeMetadata2 - 8);
  a1[1] = v8;
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  RowGrouping.subscript.getter(v9, v9 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_21B2854A4;
}

uint64_t sub_21B305110()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

__n128 sub_21B30517C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[0];
  *a1 = *v1;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = 0;
  return result;
}

uint64_t sub_21B305190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B3051E4()
{
  swift_getWitnessTable();
  v1 = sub_21B2DBAB0();
  v2 = *v0;
  v3 = v0[2];

  return v1;
}

uint64_t sub_21B305254(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21B3052A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v9 = *v4;
    v10 = *v4 + 8 * a3 - 8;
    v11 = result - a3;
LABEL_4:
    v12 = *(v9 + 8 * v7);
    v13 = v11;
    v14 = v10;
    while (1)
    {
      v18 = v12;
      v17 = *v14;
      result = a4(&v18, &v17);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v15 = *v14;
        v12 = v14[1];
        *v14 = v12;
        v14[1] = v15;
        --v14;
        if (!__CFADD__(v13++, 1))
        {
          continue;
        }
      }

      ++v7;
      v10 += 8;
      --v11;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

double sub_21B3053B0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[4];
  v5 = v2[6];
  v6 = v2[7];
  v7 = v5(*a1, a1[1]);
  return sub_21B265ED0(v7, v8, v4, a2);
}

unint64_t sub_21B305404()
{
  result = qword_27CD7F358;
  if (!qword_27CD7F358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E840, &qword_21B352A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F358);
  }

  return result;
}

uint64_t sub_21B305468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_21B3020C8(a1, *(v2 + 40), a2);
}

uint64_t sub_21B30548C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_21B30229C(a1, v1[6]);
}

uint64_t sub_21B3054B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_21B302704(a1, *(v1 + 32)) & 1;
}

uint64_t sub_21B3054D8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 40);
  return sub_21B302958(a1, a2, a3, a4, *(v4 + 32));
}

uint64_t sub_21B3054F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  return sub_21B302A74(a1, *(v3 + 32), a2, a3);
}

uint64_t sub_21B305540(uint64_t a1)
{
  v3 = *(sub_21B34A8B4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21B34A8A4() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21B304860(a1, v1 + v4, v7);
}

uint64_t sub_21B305614@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21B30564C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B3057A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B3057F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_21B300850(a1, v2[2], a2);
}

uint64_t sub_21B3058E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  return sub_21B3043C0(a1, *(v2 + 56), a2);
}

uint64_t sub_21B30591C(char *__src, char *__dst, char *a3, char *a4, int a5, int a6, uint64_t a7, uint64_t (*a8)(char *, char *), uint64_t a9)
{
  v10 = v9;
  v11 = a4;
  v12 = a3;
  v13 = __src;
  v14 = __dst - __src;
  v15 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v15 = __dst - __src;
  }

  v16 = v15 >> 3;
  v17 = a3 - __dst;
  v18 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v18 = a3 - __dst;
  }

  v19 = v18 >> 3;
  if (v16 < v18 >> 3)
  {
    if (a4 != __src || &__src[8 * v16] <= a4)
    {
      memmove(a4, __src, 8 * v16);
    }

    v82 = (v11 + 8 * v16);
    if (v14 >= 8 && __dst < v12)
    {
      v21 = __dst;
      do
      {
        v22 = *v21;
        if ((*v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_109;
        }

        v23 = v21;
        v24 = *v11;
        swift_beginAccess();
        v25 = *(a7 + 16);
        if (!v25)
        {
          goto LABEL_108;
        }

        v26 = v25[1];
        if (v22 >= v26)
        {
          goto LABEL_109;
        }

        v27 = v25 + 8;
        if ((*(v25 + (v22 >> 3) + 64) >> (v22 & 7)))
        {
          v28 = *v25 + 7;
          if (__OFADD__(*v25, 7))
          {
            __break(1u);
            goto LABEL_104;
          }

          if (v28 < 0)
          {
            v28 = *v25 + 14;
          }

          v29 = v28 >> 3;
          v31 = v29 - 1;
          v30 = v29 < 1;
          v32 = v29 + 62;
          if (!v30)
          {
            v32 = v31;
          }

          v33 = *(v27 + v22 + (v32 & 0xFFFFFFFFFFFFFFC0) + 64);
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v33 = 2;
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_109;
          }
        }

        if (v24 >= v26)
        {
          goto LABEL_109;
        }

        if ((*(v27 + (v24 >> 3)) >> (v24 & 7)))
        {
          v34 = *v25;
          v35 = __OFADD__(v34, 7);
          v36 = v34 + 7;
          if (v35)
          {
            goto LABEL_106;
          }

          if (v33 == 2)
          {
            goto LABEL_32;
          }

          v37 = v36 / 8;
          v38 = v37 - 1;
          v30 = v37 < 1;
          v39 = v37 + 62;
          if (!v30)
          {
            v39 = v38;
          }

          v40 = *(v27 + v24 + (v39 & 0xFFFFFFFFFFFFFFC0) + 64);
          v84 = v33;
          v83 = v40;
          v41 = a8(&v84, &v83);
          if (v9)
          {
            v73 = &v82[-v11 + 7];
            if (&v82[-v11] >= 0)
            {
              v73 = &v82[-v11];
            }

            if (v13 < v11 || v13 >= v11 + (v73 & 0xFFFFFFFFFFFFFFF8) || v13 != v11)
            {
              v69 = 8 * (v73 >> 3);
              v70 = v13;
              goto LABEL_86;
            }

            goto LABEL_88;
          }

          if ((v41 & 1) == 0)
          {
LABEL_32:
            v42 = v11;
            v43 = v13 == v11;
            v11 += 8;
            v21 = v23;
            if (v43)
            {
              goto LABEL_34;
            }

LABEL_33:
            *v13 = *v42;
            goto LABEL_34;
          }
        }

        else if (v33 == 2)
        {
          goto LABEL_32;
        }

        v42 = v23;
        v21 = v23 + 8;
        if (v13 != v23)
        {
          goto LABEL_33;
        }

LABEL_34:
        v13 += 8;
      }

      while (v11 < v82 && v21 < v12);
    }

    v44 = v13;
LABEL_80:
    v68 = &v82[-v11 + 7];
    if (&v82[-v11] >= 0)
    {
      v68 = &v82[-v11];
    }

    if (v44 < v11 || v44 >= v11 + (v68 & 0xFFFFFFFFFFFFFFF8) || v44 != v11)
    {
      v69 = 8 * (v68 >> 3);
      v70 = v44;
LABEL_86:
      v71 = v11;
LABEL_87:
      memmove(v70, v71, v69);
    }

    goto LABEL_88;
  }

  v44 = __dst;
  if (a4 != __dst || &__dst[8 * v19] <= a4)
  {
    memmove(a4, __dst, 8 * v19);
  }

  v82 = (v11 + 8 * v19);
  if (v17 < 8 || v44 <= v13)
  {
    goto LABEL_80;
  }

  __srca = v11;
  v45 = -v11;
  v76 = -v11;
LABEL_46:
  v78 = v10;
  __dsta = v44;
  v46 = v44 - 8;
  v47 = v82;
  v48 = &v82[v45];
  v49 = v12;
  while (1)
  {
    v51 = *(v47 - 1);
    v47 -= 8;
    v50 = v51;
    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_109;
    }

    v52 = *v46;
    swift_beginAccess();
    v53 = *(a7 + 16);
    if (!v53)
    {
      goto LABEL_107;
    }

    v54 = v53[1];
    if (v50 >= v54)
    {
      goto LABEL_109;
    }

    v55 = v53 + 8;
    if ((*(v53 + (v50 >> 3) + 64) >> (v50 & 7)))
    {
      v56 = *v53 + 7;
      if (__OFADD__(*v53, 7))
      {
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        result = sub_21B34B824();
        __break(1u);
        return result;
      }

      if (v56 < 0)
      {
        v56 = *v53 + 14;
      }

      v57 = v56 >> 3;
      v58 = v57 - 1;
      v30 = v57 < 1;
      v59 = v57 + 62;
      if (!v30)
      {
        v59 = v58;
      }

      v60 = *(v55 + v50 + (v59 & 0xFFFFFFFFFFFFFFC0) + 64);
      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v60 = 2;
      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_109;
      }
    }

    if (v52 >= v54)
    {
      goto LABEL_109;
    }

    if ((*(v55 + (v52 >> 3)) >> (v52 & 7)))
    {
      break;
    }

    v12 = v49 - 8;
    if (v60 != 2)
    {
LABEL_72:
      if (v49 != __dsta)
      {
        *v12 = *v46;
      }

      v10 = v78;
      if (v82 <= __srca || (v44 = v46, v45 = v76, v46 <= v13))
      {
        v44 = v46;
LABEL_79:
        v11 = __srca;
        goto LABEL_80;
      }

      goto LABEL_46;
    }

LABEL_70:
    if (v82 != v49)
    {
      *v12 = *v47;
    }

    v48 -= 8;
    v82 = v47;
    v49 = v12;
    if (v47 <= __srca)
    {
      v82 = v47;
      v44 = __dsta;
      goto LABEL_79;
    }
  }

  v61 = *v53;
  v35 = __OFADD__(v61, 7);
  v62 = v61 + 7;
  if (v35)
  {
    goto LABEL_105;
  }

  v12 = v49 - 8;
  if (v60 == 2)
  {
    goto LABEL_70;
  }

  v63 = v62 / 8;
  v64 = v63 - 1;
  v30 = v63 < 1;
  v65 = v63 + 62;
  if (!v30)
  {
    v65 = v64;
  }

  v66 = *(v55 + v52 + (v65 & 0xFFFFFFFFFFFFFFC0) + 64);
  v84 = v60;
  v83 = v66;
  v67 = a8(&v84, &v83);
  if (!v78)
  {
    if (v67)
    {
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  if (v48 >= 0)
  {
    v74 = v48;
  }

  else
  {
    v74 = v48 + 7;
  }

  v75 = v74 >> 3;
  v70 = __dsta;
  v71 = __srca;
  if (__dsta < __srca || __dsta >= &__srca[v74 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(__dsta, __srca, 8 * v75);
  }

  else if (__dsta != __srca)
  {
    v69 = 8 * v75;
    goto LABEL_87;
  }

LABEL_88:

  return 1;
}

uint64_t sub_21B305EF4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, char *), uint64_t a9)
{
  v10 = v9;
  v141 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v15 = 0;
    v132 = a6;
    v133 = MEMORY[0x277D84F90];
    v138 = a7;
    v124 = a4;
LABEL_5:
    v16 = v15;
    v17 = v15 + 1;
    if (v15 + 1 >= v13)
    {
      v39 = v133;
      goto LABEL_49;
    }

    v18 = *a3;
    v19 = sub_21B2FF264(*(*a3 + 8 * v17), *(*a3 + 8 * v15), a5, a6, a7, a8);
    if (v9)
    {
      goto LABEL_145;
    }

    v20 = v19;
    v17 = v16 + 2;
    if (v16 + 2 >= v13)
    {
      v39 = v133;
      if (v19)
      {
LABEL_36:
        if (v17 < v16)
        {
          goto LABEL_168;
        }

LABEL_37:
        if (v16 < v17)
        {
          v40 = v17 - 1;
          v41 = v16;
          while (1)
          {
            if (v41 != v40)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_175;
              }

              v42 = *(v43 + 8 * v41);
              *(v43 + 8 * v41) = *(v43 + 8 * v40);
              *(v43 + 8 * v40) = v42;
            }

            v29 = ++v41 < v40--;
            if (!v29)
            {
              goto LABEL_49;
            }
          }
        }
      }

      goto LABEL_49;
    }

    v21 = (v18 + 8 * v16 + 16);
    while (1)
    {
      v22 = *v21;
      if ((*v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_178;
      }

      v23 = *(v21 - 1);
      swift_beginAccess();
      v24 = *(a7 + 16);
      if (!v24)
      {
        goto LABEL_174;
      }

      v25 = v24[1];
      if (v22 >= v25)
      {
        goto LABEL_178;
      }

      v26 = v24 + 8;
      if ((*(v24 + (v22 >> 3) + 64) >> (v22 & 7)))
      {
        v27 = *v24 + 7;
        if (__OFADD__(*v24, 7))
        {
          goto LABEL_163;
        }

        if (v27 < 0)
        {
          v27 = *v24 + 14;
        }

        v28 = v27 >> 3;
        v30 = v28 - 1;
        v29 = v28 < 1;
        v31 = v28 + 62;
        if (!v29)
        {
          v31 = v30;
        }

        v32 = *(v26 + v22 + (v31 & 0xFFFFFFFFFFFFFFC0) + 64);
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_178;
        }
      }

      else
      {
        v32 = 2;
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_178;
        }
      }

      if (v23 >= v25)
      {
        goto LABEL_178;
      }

      if ((*(v26 + (v23 >> 3)) >> (v23 & 7)))
      {
        break;
      }

      if (v32 == 2)
      {
        goto LABEL_9;
      }

      if ((v20 & 1) == 0)
      {
        v39 = v133;
        goto LABEL_49;
      }

LABEL_10:
      ++v21;
      if (v13 == ++v17)
      {
        v44 = v20;
        v17 = v13;
LABEL_48:
        v39 = v133;
        if (v44)
        {
          goto LABEL_36;
        }

LABEL_49:
        v45 = a3[1];
        if (v17 >= v45)
        {
          goto LABEL_57;
        }

        if (__OFSUB__(v17, v16))
        {
          goto LABEL_167;
        }

        if (v17 - v16 >= v124)
        {
LABEL_57:
          if (v17 < v16)
          {
            goto LABEL_166;
          }

          goto LABEL_58;
        }

        v46 = v16 + v124;
        if (__OFADD__(v16, v124))
        {
          goto LABEL_169;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 >= v16)
        {
          if (v17 == v46)
          {
            goto LABEL_57;
          }

          v99 = *a3;
          v100 = (*a3 + 8 * v17 - 8);
          v129 = v46;
          v101 = v16 - v17;
          do
          {
            v127 = v17;
            v102 = *(v99 + 8 * v17);
            v103 = v101;
            __src = v100;
            do
            {
              if ((v102 & 0x8000000000000000) != 0)
              {
                goto LABEL_178;
              }

              v104 = *v100;
              swift_beginAccess();
              v105 = *(v138 + 16);
              if (!v105)
              {
                goto LABEL_172;
              }

              v106 = v105[1];
              if (v102 >= v106)
              {
                goto LABEL_178;
              }

              v107 = v105 + 8;
              if ((*(v105 + (v102 >> 3) + 64) >> (v102 & 7)))
              {
                v108 = *v105 + 7;
                if (__OFADD__(*v105, 7))
                {
                  goto LABEL_151;
                }

                if (v108 < 0)
                {
                  v108 = *v105 + 14;
                }

                v109 = v108 >> 3;
                v110 = v109 - 1;
                v29 = v109 < 1;
                v111 = v109 + 62;
                if (!v29)
                {
                  v111 = v110;
                }

                v112 = *(v107 + v102 + (v111 & 0xFFFFFFFFFFFFFFC0) + 64);
                if ((v104 & 0x8000000000000000) != 0)
                {
                  goto LABEL_178;
                }
              }

              else
              {
                v112 = 2;
                if ((v104 & 0x8000000000000000) != 0)
                {
                  goto LABEL_178;
                }
              }

              if (v104 >= v106)
              {
                goto LABEL_178;
              }

              if ((*(v107 + (v104 >> 3)) >> (v104 & 7)))
              {
                v113 = *v105;
                v63 = __OFADD__(v113, 7);
                v114 = v113 + 7;
                if (v63)
                {
                  goto LABEL_152;
                }

                if (v112 == 2)
                {
                  break;
                }

                v115 = v114 / 8;
                v116 = v115 - 1;
                v29 = v115 < 1;
                v117 = v115 + 62;
                if (!v29)
                {
                  v117 = v116;
                }

                v118 = *(v107 + v104 + (v117 & 0xFFFFFFFFFFFFFFC0) + 64);
                v140 = v112;
                v139 = v118;
                v119 = a8(&v140, &v139);
                if (v9)
                {
                  goto LABEL_145;
                }

                if ((v119 & 1) == 0)
                {
                  break;
                }
              }

              else if (v112 == 2)
              {
                break;
              }

              if (!v99)
              {
                goto LABEL_173;
              }

              v120 = *v100;
              v102 = *(v100 + 1);
              *v100 = v102;
              *(v100 + 1) = v120;
              v100 -= 8;
            }

            while (!__CFADD__(v103++, 1));
            v17 = v127 + 1;
            v100 = __src + 8;
            --v101;
          }

          while (v127 + 1 != v129);
          v17 = v129;
          v39 = v133;
          if (v129 < v16)
          {
            goto LABEL_166;
          }

LABEL_58:
          v126 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_21B2356AC(0, *(v39 + 2) + 1, 1, v39);
          }

          v48 = *(v39 + 2);
          v47 = *(v39 + 3);
          v49 = v48 + 1;
          if (v48 >= v47 >> 1)
          {
            v39 = sub_21B2356AC((v47 > 1), v48 + 1, 1, v39);
          }

          *(v39 + 2) = v49;
          v50 = v39 + 32;
          v51 = &v39[16 * v48 + 32];
          *v51 = v16;
          *(v51 + 1) = v17;
          v141 = v39;
          v130 = *a1;
          if (!*a1)
          {
            goto LABEL_176;
          }

          v133 = v39;
          if (!v48)
          {
LABEL_4:
            v13 = a3[1];
            v15 = v126;
            a6 = v132;
            a7 = v138;
            if (v126 >= v13)
            {
              goto LABEL_139;
            }

            goto LABEL_5;
          }

          v128 = v39 + 32;
          while (2)
          {
            v52 = v49 - 1;
            if (v49 >= 4)
            {
              v57 = &v50[16 * v49];
              v58 = *(v57 - 8);
              v59 = *(v57 - 7);
              v63 = __OFSUB__(v59, v58);
              v60 = v59 - v58;
              if (v63)
              {
                goto LABEL_153;
              }

              v62 = *(v57 - 6);
              v61 = *(v57 - 5);
              v63 = __OFSUB__(v61, v62);
              v55 = v61 - v62;
              v56 = v63;
              if (v63)
              {
                goto LABEL_154;
              }

              v64 = &v39[16 * v49];
              v66 = *v64;
              v65 = *(v64 + 1);
              v63 = __OFSUB__(v65, v66);
              v67 = v65 - v66;
              if (v63)
              {
                goto LABEL_156;
              }

              v63 = __OFADD__(v55, v67);
              v68 = v55 + v67;
              if (v63)
              {
                goto LABEL_159;
              }

              if (v68 >= v60)
              {
                v86 = &v50[16 * v52];
                v88 = *v86;
                v87 = *(v86 + 1);
                v63 = __OFSUB__(v87, v88);
                v89 = v87 - v88;
                if (v63)
                {
                  goto LABEL_165;
                }

                if (v55 < v89)
                {
                  v52 = v49 - 2;
                }
              }

              else
              {
LABEL_78:
                if (v56)
                {
                  goto LABEL_155;
                }

                v69 = &v39[16 * v49];
                v71 = *v69;
                v70 = *(v69 + 1);
                v72 = __OFSUB__(v70, v71);
                v73 = v70 - v71;
                v74 = v72;
                if (v72)
                {
                  goto LABEL_158;
                }

                v75 = &v50[16 * v52];
                v77 = *v75;
                v76 = *(v75 + 1);
                v63 = __OFSUB__(v76, v77);
                v78 = v76 - v77;
                if (v63)
                {
                  goto LABEL_161;
                }

                if (__OFADD__(v73, v78))
                {
                  goto LABEL_162;
                }

                if (v73 + v78 < v55)
                {
                  goto LABEL_92;
                }

                if (v55 < v78)
                {
                  v52 = v49 - 2;
                }
              }
            }

            else
            {
              if (v49 == 3)
              {
                v53 = *(v39 + 4);
                v54 = *(v39 + 5);
                v63 = __OFSUB__(v54, v53);
                v55 = v54 - v53;
                v56 = v63;
                goto LABEL_78;
              }

              v79 = &v39[16 * v49];
              v81 = *v79;
              v80 = *(v79 + 1);
              v63 = __OFSUB__(v80, v81);
              v73 = v80 - v81;
              v74 = v63;
LABEL_92:
              if (v74)
              {
                goto LABEL_157;
              }

              v82 = &v50[16 * v52];
              v84 = *v82;
              v83 = *(v82 + 1);
              v63 = __OFSUB__(v83, v84);
              v85 = v83 - v84;
              if (v63)
              {
                goto LABEL_160;
              }

              if (v85 < v73)
              {
                goto LABEL_3;
              }
            }

            if (v52 - 1 >= v49)
            {
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
              break;
            }

            v90 = *a3;
            if (!*a3)
            {
              goto LABEL_171;
            }

            v91 = &v50[16 * v52 - 16];
            v92 = *v91;
            v93 = v52;
            v94 = &v50[16 * v52];
            v95 = *(v94 + 1);
            __srca = (v90 + 8 * *v91);
            v96 = (v90 + 8 * *v94);
            v97 = (v90 + 8 * v95);

            sub_21B30591C(__srca, v96, v97, v130, a5, v132, v138, a8, a9);
            if (v9)
            {
              v141 = v133;
              goto LABEL_145;
            }

            v39 = v133;
            if (v95 < v92)
            {
              goto LABEL_148;
            }

            v98 = *(v133 + 2);
            if (v93 > v98)
            {
              goto LABEL_149;
            }

            *v91 = v92;
            *(v91 + 1) = v95;
            if (v93 >= v98)
            {
              goto LABEL_150;
            }

            v49 = v98 - 1;
            memmove(v94, v94 + 16, 16 * (v98 - 1 - v93));
            *(v133 + 2) = v98 - 1;
            v50 = v128;
            if (v98 <= 2)
            {
LABEL_3:
              v141 = v39;
              goto LABEL_4;
            }

            continue;
          }
        }

        __break(1u);
LABEL_171:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_176:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_177:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_178:
        result = sub_21B34B824();
        __break(1u);
        return result;
      }
    }

    v33 = *v24;
    v63 = __OFADD__(v33, 7);
    v34 = v33 + 7;
    if (v63)
    {
      goto LABEL_164;
    }

    if (v32 != 2)
    {
      v35 = v34 / 8;
      v36 = v35 - 1;
      v29 = v35 < 1;
      v37 = v35 + 62;
      if (!v29)
      {
        v37 = v36;
      }

      v38 = *(v26 + v23 + (v37 & 0xFFFFFFFFFFFFFFC0) + 64);
      v140 = v32;
      v139 = v38;
      if ((v20 ^ a8(&v140, &v139)))
      {
        v44 = v20;
        goto LABEL_48;
      }

      goto LABEL_10;
    }

LABEL_9:
    if (v20)
    {
      v39 = v133;
      if (v17 < v16)
      {
        goto LABEL_168;
      }

      goto LABEL_37;
    }

    goto LABEL_10;
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_139:
  v122 = *a1;
  if (!*a1)
  {
    goto LABEL_177;
  }

  sub_21B3070AC(&v141, v122, a3, a5, a6, a7, a8, a9, sub_21B30591C);
  if (v10)
  {

LABEL_145:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B3068B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *, char *))
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v35 = v13;
    v36 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v15 = *v12;
      result = swift_beginAccess();
      v16 = *(a7 + 16);
      if (!v16)
      {
        goto LABEL_34;
      }

      v17 = v16[1];
      if (v14 >= v17)
      {
        break;
      }

      v18 = v16 + 8;
      if ((*(v16 + (v14 >> 3) + 64) >> (v14 & 7)))
      {
        v19 = *v16 + 7;
        if (__OFADD__(*v16, 7))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }

        if (v19 < 0)
        {
          v19 = *v16 + 14;
        }

        v20 = v19 >> 3;
        v22 = v20 - 1;
        v21 = v20 < 1;
        v23 = v20 + 62;
        if (!v21)
        {
          v23 = v22;
        }

        v24 = *(v18 + v14 + (v23 & 0xFFFFFFFFFFFFFFC0) + 64);
        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        v24 = 2;
        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v15 >= v17)
      {
        break;
      }

      if ((*(v18 + (v15 >> 3)) >> (v15 & 7)))
      {
        v25 = *v16;
        v26 = __OFADD__(v25, 7);
        v27 = v25 + 7;
        if (v26)
        {
          goto LABEL_33;
        }

        if (v24 == 2)
        {
          goto LABEL_4;
        }

        v28 = v27 / 8;
        v29 = v28 - 1;
        v21 = v28 < 1;
        v30 = v28 + 62;
        if (!v21)
        {
          v30 = v29;
        }

        v31 = *(v18 + v15 + (v30 & 0xFFFFFFFFFFFFFFC0) + 64);
        v39 = v24;
        v38 = v31;
        result = a8(&v39, &v38);
        if (v8)
        {
          return result;
        }

        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v24 == 2)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_35;
      }

      v32 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v32;
      --v12;
      if (__CFADD__(v13++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v36 + 1;
        v13 = v35 - 1;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B306AEC(char *__dst, char *__src, char *a3, char *a4, int a5, int a6, uint64_t a7, uint64_t (*a8)(uint64_t *, uint64_t *), uint64_t a9)
{
  v10 = v9;
  v11 = a4;
  v12 = a3;
  v13 = __src;
  v14 = __dst;
  v15 = __src - __dst;
  v16 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v16 = __src - __dst;
  }

  v17 = v16 >> 3;
  v18 = a3 - __src;
  v19 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v19 = a3 - __src;
  }

  v20 = v19 >> 3;
  if (v17 < v19 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v17] <= a4)
    {
      memmove(a4, __dst, 8 * v17);
      v13 = __src;
    }

    v81 = (v11 + 8 * v17);
    if (v15 < 8)
    {
      goto LABEL_10;
    }

    while (1)
    {
      if (v13 >= v12)
      {
        goto LABEL_10;
      }

      v24 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }

      v25 = v13;
      v26 = *v11;
      swift_beginAccess();
      v27 = *(a7 + 16);
      if (!v27)
      {
        goto LABEL_104;
      }

      v28 = v27[1];
      if (v24 >= v28)
      {
        goto LABEL_105;
      }

      v29 = v27 + 8;
      v30 = *(v27 + (v24 >> 3) + 64) & (1 << (v24 & 7));
      if (v30)
      {
        v31 = *v27 + 7;
        if (__OFADD__(*v27, 7))
        {
          __break(1u);
          goto LABEL_100;
        }

        if (v31 < 0)
        {
          v31 = *v27 + 14;
        }

        v32 = v31 >> 3;
        v34 = v32 - 1;
        v33 = v32 < 1;
        v35 = v32 + 62;
        if (!v33)
        {
          v35 = v34;
        }

        v36 = *(&v29[v24 + 8] + (v35 & 0xFFFFFFFFFFFFFFC0));
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v36 = 0;
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_105;
        }
      }

      if (v26 >= v28)
      {
        goto LABEL_105;
      }

      if ((*(v29 + (v26 >> 3)) >> (v26 & 7)))
      {
        v37 = *v27;
        v38 = __OFADD__(v37, 7);
        v39 = v37 + 7;
        if (v38)
        {
          goto LABEL_102;
        }

        if (v30)
        {
          v40 = v39 / 8;
          v41 = v40 - 1;
          v33 = v40 < 1;
          v42 = v40 + 62;
          if (!v33)
          {
            v42 = v41;
          }

          v43 = *(&v29[v26 + 8] + (v42 & 0xFFFFFFFFFFFFFFC0));
          v83 = v36;
          v82 = v43;
          v44 = a8(&v83, &v82);
          if (v9)
          {
            v73 = &v81[-v11 + 7];
            if (&v81[-v11] >= 0)
            {
              v73 = &v81[-v11];
            }

            if (v14 < v11 || v14 >= v11 + (v73 & 0xFFFFFFFFFFFFFFF8) || v14 != v11)
            {
              v70 = 8 * (v73 >> 3);
              v71 = v14;
              goto LABEL_83;
            }

            goto LABEL_84;
          }

          if (v44)
          {
LABEL_37:
            v22 = v25;
            v13 = v25 + 8;
            if (v14 == v25)
            {
              goto LABEL_13;
            }

LABEL_12:
            *v14 = *v22;
            goto LABEL_13;
          }
        }
      }

      else if (v30)
      {
        goto LABEL_37;
      }

      v22 = v11;
      v23 = v14 == v11;
      v11 += 8;
      v13 = v25;
      if (!v23)
      {
        goto LABEL_12;
      }

LABEL_13:
      v14 += 8;
      if (v11 >= v81)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v20] <= a4)
  {
    memmove(a4, __src, 8 * v20);
    v13 = __src;
  }

  v81 = (v11 + 8 * v20);
  if (v18 < 8 || v13 <= v14)
  {
    goto LABEL_77;
  }

  v46 = -v11;
  v76 = v14;
  while (2)
  {
    v78 = v10;
    __dsta = v13;
    v14 = v13 - 8;
    v47 = v81;
    v48 = &v81[v46];
    v49 = v12;
    while (1)
    {
      v51 = *(v47 - 1);
      v47 -= 8;
      v50 = v51;
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }

      v52 = *v14;
      swift_beginAccess();
      v53 = *(a7 + 16);
      if (!v53)
      {
        goto LABEL_103;
      }

      v54 = v53[1];
      if (v50 >= v54)
      {
        goto LABEL_105;
      }

      v55 = v53 + 8;
      v56 = *(v53 + (v50 >> 3) + 64) & (1 << (v50 & 7));
      if (v56)
      {
        v57 = *v53 + 7;
        if (__OFADD__(*v53, 7))
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          result = sub_21B34B824();
          __break(1u);
          return result;
        }

        if (v57 < 0)
        {
          v57 = *v53 + 14;
        }

        v58 = v57 >> 3;
        v59 = v58 - 1;
        v33 = v58 < 1;
        v60 = v58 + 62;
        if (!v33)
        {
          v60 = v59;
        }

        v61 = *(&v55[v50 + 8] + (v60 & 0xFFFFFFFFFFFFFFC0));
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v61 = 0;
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_105;
        }
      }

      if (v52 >= v54)
      {
        goto LABEL_105;
      }

      if (((*(v55 + (v52 >> 3)) >> (v52 & 7)) & 1) == 0)
      {
        break;
      }

      v62 = *v53;
      v38 = __OFADD__(v62, 7);
      v63 = v62 + 7;
      if (v38)
      {
        goto LABEL_101;
      }

      v12 = v49 - 8;
      if (v56)
      {
        v64 = v63 / 8;
        v65 = v64 - 1;
        v33 = v64 < 1;
        v66 = v64 + 62;
        if (!v33)
        {
          v66 = v65;
        }

        v67 = *(&v55[v52 + 8] + (v66 & 0xFFFFFFFFFFFFFFC0));
        v83 = v61;
        v82 = v67;
        v68 = a8(&v83, &v82);
        if (v78)
        {
          if (v48 >= 0)
          {
            v74 = v48;
          }

          else
          {
            v74 = v48 + 7;
          }

          v75 = v74 >> 3;
          v71 = __dsta;
          if (__dsta < v11 || __dsta >= v11 + (v74 & 0xFFFFFFFFFFFFFFF8))
          {
            memmove(__dsta, v11, 8 * v75);
            goto LABEL_84;
          }

          if (__dsta == v11)
          {
            goto LABEL_84;
          }

          v70 = 8 * v75;
          goto LABEL_83;
        }

        if (v68)
        {
          goto LABEL_71;
        }
      }

LABEL_69:
      if (v81 != v49)
      {
        *v12 = *v47;
      }

      v48 -= 8;
      v81 = v47;
      v49 = v12;
      if (v47 <= v11)
      {
        v81 = v47;
        v13 = __dsta;
        goto LABEL_77;
      }
    }

    v12 = v49 - 8;
    if (!v56)
    {
      goto LABEL_69;
    }

LABEL_71:
    if (v49 != __dsta)
    {
      *v12 = *v14;
    }

    v10 = v78;
    if (v81 > v11)
    {
      v13 = v14;
      v46 = -v11;
      if (v14 > v76)
      {
        continue;
      }
    }

    break;
  }

LABEL_10:
  v13 = v14;
LABEL_77:
  v69 = &v81[-v11 + 7];
  if (&v81[-v11] >= 0)
  {
    v69 = &v81[-v11];
  }

  if (v13 < v11 || v13 >= v11 + (v69 & 0xFFFFFFFFFFFFFFF8) || v13 != v11)
  {
    v70 = 8 * (v69 >> 3);
    v71 = v13;
LABEL_83:
    memmove(v71, v11, v70);
  }

LABEL_84:

  return 1;
}

uint64_t sub_21B3070AC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v9;
  v12 = a1;
  v13 = *a1;

  v30 = a6;

  v32 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v32 = sub_21B23A330(v32);
  }

  v24 = v12;
  *v12 = v32;
  v15 = (v32 + 16);
  v14 = *(v32 + 2);
  if (v14 < 2)
  {
LABEL_9:

    *v24 = v32;
    return 1;
  }

  else
  {
    while (1)
    {
      v16 = *a3;
      if (!*a3)
      {
        break;
      }

      v17 = &v32[16 * v14];
      v12 = *v17;
      v18 = &v15[2 * v14];
      v19 = v18[1];
      v34 = v16 + 8 * *v17;
      v33 = v16 + 8 * *v18;
      v20 = v16 + 8 * v19;

      a9(v34, v33, v20, a2, a4, a5, v30, a7, a8);
      if (v10)
      {
        *v24 = v32;

        return 1;
      }

      if (v19 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v21 = *v15;
      if (v14 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v17 = v12;
      *(v17 + 1) = v19;
      v22 = v21 - v14;
      if (v21 < v14)
      {
        goto LABEL_14;
      }

      v14 = v21 - 1;
      memmove(v18, v18 + 2, 16 * v22);
      *v15 = v14;
      if (v14 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v24 = v32;
    __break(1u);
  }

  return result;
}

uint64_t sub_21B3072AC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *, uint64_t *), uint64_t a9)
{
  v10 = v9;
  v142 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v14 = 0;
    v133 = a6;
    v134 = MEMORY[0x277D84F90];
    v139 = a7;
    while (1)
    {
      v15 = v14;
      v16 = v14 + 1;
      if (v14 + 1 >= v13)
      {
        v38 = v134;
LABEL_35:
        v39 = a4;
        goto LABEL_48;
      }

      v17 = *a3;
      v18 = sub_21B2FF3BC(*(*a3 + 8 * v16), *(*a3 + 8 * v14), a5, a6, a7, a8);
      if (v9)
      {
        goto LABEL_146;
      }

      v19 = v18;
      v16 = v15 + 2;
      if (v15 + 2 >= v13)
      {
        v39 = a4;
        v38 = v134;
        if ((v18 & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_37:
        if (v16 < v15)
        {
          goto LABEL_171;
        }

        goto LABEL_38;
      }

      v130 = v15;
      v20 = (v17 + 8 * v15 + 16);
      do
      {
        v21 = *v20;
        if ((*v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_179;
        }

        v22 = *(v20 - 1);
        swift_beginAccess();
        v23 = *(a7 + 16);
        if (!v23)
        {
          goto LABEL_175;
        }

        v24 = v23[1];
        if (v21 >= v24)
        {
          goto LABEL_179;
        }

        v25 = v23 + 8;
        v26 = *(v23 + (v21 >> 3) + 64) & (1 << (v21 & 7));
        if (v26)
        {
          v27 = *v23 + 7;
          if (__OFADD__(*v23, 7))
          {
            goto LABEL_164;
          }

          if (v27 < 0)
          {
            v27 = *v23 + 14;
          }

          v28 = v27 >> 3;
          v30 = v28 - 1;
          v29 = v28 < 1;
          v31 = v28 + 62;
          if (!v29)
          {
            v31 = v30;
          }

          v32 = *(&v25[v21 + 8] + (v31 & 0xFFFFFFFFFFFFFFC0));
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_179;
          }
        }

        else
        {
          v32 = 0;
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_179;
          }
        }

        if (v22 >= v24)
        {
          goto LABEL_179;
        }

        if ((*(v25 + (v22 >> 3)) >> (v22 & 7)))
        {
          v33 = *v23;
          v63 = __OFADD__(v33, 7);
          v34 = v33 + 7;
          if (v63)
          {
            goto LABEL_165;
          }

          if (v26)
          {
            v35 = v34 / 8;
            v36 = v35 - 1;
            v29 = v35 < 1;
            v37 = v35 + 62;
            if (!v29)
            {
              v37 = v36;
            }

            v140 = *(&v25[v22 + 8] + (v37 & 0xFFFFFFFFFFFFFFC0));
            v141 = v32;
            if ((v19 ^ a8(&v141, &v140)))
            {
              v44 = v19;
              goto LABEL_47;
            }

            goto LABEL_10;
          }
        }

        else if (v26)
        {
          if ((v19 & 1) == 0)
          {
            v38 = v134;
            v39 = a4;
            v15 = v130;
            goto LABEL_48;
          }

          goto LABEL_10;
        }

        if (v19)
        {
          v38 = v134;
          v39 = a4;
          v15 = v130;
          if (v16 < v130)
          {
            goto LABEL_171;
          }

LABEL_38:
          if (v15 < v16)
          {
            v40 = v16 - 1;
            v41 = v15;
            while (1)
            {
              if (v41 != v40)
              {
                v43 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v42 = *(v43 + 8 * v41);
                *(v43 + 8 * v41) = *(v43 + 8 * v40);
                *(v43 + 8 * v40) = v42;
              }

              v29 = ++v41 < v40--;
              if (!v29)
              {
                goto LABEL_35;
              }
            }
          }

          goto LABEL_48;
        }

LABEL_10:
        ++v20;
        ++v16;
      }

      while (v13 != v16);
      v44 = v19;
      v16 = v13;
LABEL_47:
      v39 = a4;
      v15 = v130;
      v38 = v134;
      if (v44)
      {
        goto LABEL_37;
      }

LABEL_48:
      v45 = a3[1];
      if (v16 >= v45)
      {
        goto LABEL_56;
      }

      if (__OFSUB__(v16, v15))
      {
        goto LABEL_168;
      }

      if (v16 - v15 >= v39)
      {
LABEL_56:
        if (v16 < v15)
        {
          goto LABEL_167;
        }

        goto LABEL_57;
      }

      v46 = v15 + v39;
      if (__OFADD__(v15, v39))
      {
        goto LABEL_169;
      }

      if (v46 >= v45)
      {
        v46 = a3[1];
      }

      if (v46 < v15)
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_177:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_178:

        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_179:
        result = sub_21B34B824();
        __break(1u);
        return result;
      }

      if (v16 == v46)
      {
        goto LABEL_56;
      }

      v99 = *a3;
      v100 = (*a3 + 8 * v16 - 8);
      v129 = v46;
      v101 = v15 - v16;
      do
      {
        v127 = v16;
        v102 = *(v99 + 8 * v16);
        v103 = v101;
        __dst = v100;
        do
        {
          if ((v102 & 0x8000000000000000) != 0)
          {
            goto LABEL_179;
          }

          v104 = *v100;
          swift_beginAccess();
          v105 = *(v139 + 16);
          if (!v105)
          {
            goto LABEL_173;
          }

          v106 = v105[1];
          if (v102 >= v106)
          {
            goto LABEL_179;
          }

          v107 = v105 + 8;
          v108 = *(v105 + (v102 >> 3) + 64) & (1 << (v102 & 7));
          if (v108)
          {
            v109 = *v105 + 7;
            if (__OFADD__(*v105, 7))
            {
              goto LABEL_152;
            }

            if (v109 < 0)
            {
              v109 = *v105 + 14;
            }

            v110 = v109 >> 3;
            v111 = v110 - 1;
            v29 = v110 < 1;
            v112 = v110 + 62;
            if (!v29)
            {
              v112 = v111;
            }

            v113 = *(&v107[v102 + 8] + (v112 & 0xFFFFFFFFFFFFFFC0));
            if ((v104 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }
          }

          else
          {
            v113 = 0;
            if ((v104 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }
          }

          if (v104 >= v106)
          {
            goto LABEL_179;
          }

          if ((*(v107 + (v104 >> 3)) >> (v104 & 7)))
          {
            v114 = *v105;
            v63 = __OFADD__(v114, 7);
            v115 = v114 + 7;
            if (v63)
            {
              goto LABEL_153;
            }

            if (!v108)
            {
              break;
            }

            v116 = v115 / 8;
            v117 = v116 - 1;
            v29 = v116 < 1;
            v118 = v116 + 62;
            if (!v29)
            {
              v118 = v117;
            }

            v140 = *(&v107[v104 + 8] + (v118 & 0xFFFFFFFFFFFFFFC0));
            v141 = v113;
            v119 = a8(&v141, &v140);
            if (v9)
            {
              goto LABEL_146;
            }

            if ((v119 & 1) == 0)
            {
              break;
            }
          }

          else if (!v108)
          {
            break;
          }

          if (!v99)
          {
            goto LABEL_174;
          }

          v120 = *v100;
          v102 = *(v100 + 1);
          *v100 = v102;
          *(v100 + 1) = v120;
          v100 -= 8;
        }

        while (!__CFADD__(v103++, 1));
        v16 = v127 + 1;
        v100 = __dst + 8;
        --v101;
      }

      while (v127 + 1 != v129);
      v16 = v129;
      v38 = v134;
      if (v129 < v15)
      {
        goto LABEL_167;
      }

LABEL_57:
      v126 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_21B2356AC(0, *(v38 + 2) + 1, 1, v38);
      }

      v48 = *(v38 + 2);
      v47 = *(v38 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v38 = sub_21B2356AC((v47 > 1), v48 + 1, 1, v38);
      }

      *(v38 + 2) = v49;
      v50 = v38 + 32;
      v51 = &v38[16 * v48 + 32];
      *v51 = v15;
      *(v51 + 1) = v16;
      v142 = v38;
      v131 = *a1;
      if (!*a1)
      {
        goto LABEL_177;
      }

      v134 = v38;
      if (v48)
      {
        v128 = v38 + 32;
        while (1)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v38 + 4);
            v54 = *(v38 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_77:
            if (v56)
            {
              goto LABEL_156;
            }

            v69 = &v38[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_159;
            }

            v75 = &v50[16 * v52];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_163;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          v79 = &v38[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_91:
          if (v74)
          {
            goto LABEL_158;
          }

          v82 = &v50[16 * v52];
          v84 = *v82;
          v83 = *(v82 + 1);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_161;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_98:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          v90 = *a3;
          if (!*a3)
          {
            goto LABEL_172;
          }

          v91 = &v50[16 * v52 - 16];
          v92 = *v91;
          v93 = v52;
          v94 = &v50[16 * v52];
          v95 = *(v94 + 1);
          __dsta = (v90 + 8 * *v91);
          v96 = (v90 + 8 * *v94);
          v97 = (v90 + 8 * v95);

          sub_21B306AEC(__dsta, v96, v97, v131, a5, v133, v139, a8, a9);
          if (v9)
          {
            v142 = v134;
            goto LABEL_146;
          }

          v38 = v134;
          if (v95 < v92)
          {
            goto LABEL_149;
          }

          v98 = *(v134 + 2);
          if (v93 > v98)
          {
            goto LABEL_150;
          }

          *v91 = v92;
          *(v91 + 1) = v95;
          if (v93 >= v98)
          {
            goto LABEL_151;
          }

          v49 = v98 - 1;
          memmove(v94, v94 + 16, 16 * (v98 - 1 - v93));
          *(v134 + 2) = v98 - 1;
          v50 = v128;
          if (v98 <= 2)
          {
LABEL_3:
            v142 = v38;
            goto LABEL_4;
          }
        }

        v57 = &v50[16 * v49];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_154;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_155;
        }

        v64 = &v38[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_157;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_160;
        }

        if (v68 >= v60)
        {
          v86 = &v50[16 * v52];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_166;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_77;
      }

LABEL_4:
      v13 = a3[1];
      v14 = v126;
      a6 = v133;
      a7 = v139;
      if (v126 >= v13)
      {
        goto LABEL_140;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_140:
  v122 = *a1;
  if (!*a1)
  {
    goto LABEL_178;
  }

  sub_21B3070AC(&v142, v122, a3, a5, a6, a7, a8, a9, sub_21B306AEC);
  if (v10)
  {

LABEL_146:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B307C70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v36 = v13;
    v37 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v15 = *v12;
      result = swift_beginAccess();
      v16 = *(a7 + 16);
      if (!v16)
      {
        goto LABEL_34;
      }

      v17 = v16[1];
      if (v14 >= v17)
      {
        break;
      }

      v18 = v16 + 8;
      v19 = *(v16 + (v14 >> 3) + 64) & (1 << (v14 & 7));
      if (v19)
      {
        v20 = *v16 + 7;
        if (__OFADD__(*v16, 7))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }

        if (v20 < 0)
        {
          v20 = *v16 + 14;
        }

        v21 = v20 >> 3;
        v23 = v21 - 1;
        v22 = v21 < 1;
        v24 = v21 + 62;
        if (!v22)
        {
          v24 = v23;
        }

        v25 = *(&v18[v14 + 8] + (v24 & 0xFFFFFFFFFFFFFFC0));
        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        v25 = 0;
        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v15 >= v17)
      {
        break;
      }

      if ((*(v18 + (v15 >> 3)) >> (v15 & 7)))
      {
        v26 = *v16;
        v27 = __OFADD__(v26, 7);
        v28 = v26 + 7;
        if (v27)
        {
          goto LABEL_33;
        }

        if (!v19)
        {
          goto LABEL_4;
        }

        v29 = v28 / 8;
        v30 = v29 - 1;
        v22 = v29 < 1;
        v31 = v29 + 62;
        if (!v22)
        {
          v31 = v30;
        }

        v32 = *(&v18[v15 + 8] + (v31 & 0xFFFFFFFFFFFFFFC0));
        v40 = v25;
        v39 = v32;
        result = a8(&v40, &v39);
        if (v8)
        {
          return result;
        }

        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (!v19)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_35;
      }

      v33 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v33;
      --v12;
      if (__CFADD__(v13++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v37 + 1;
        v13 = v36 - 1;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B307EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_21B34B914();
  if (result < v14)
  {
    if (v14 >= -1)
    {
      v16 = result;
      v17 = v14 / 2;
      if (v14 <= 1)
      {
        v18 = MEMORY[0x277D84F90];
      }

      else
      {
        v18 = sub_21B34AFE4();
        *(v18 + 16) = v17;
      }

      v21[0] = v18 + 32;
      v21[1] = v17;

      a7(v21, v22, a1, v16, a2, a3, a4, a5, a6);

      *(v18 + 16) = 0;

      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v14 < 0)
  {
    goto LABEL_12;
  }

  if (v14)
  {

    a8(0, v14, 1, a1, a2, a3, a4, a5, a6);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21B308084(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v19 = a8;
  v15 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_21B33EA0C(v15);
  }

  v16 = *(v15 + 2);
  v18[0] = v15 + 32;
  v18[1] = v16;

  sub_21B307EA8(v18, a2, a3, a4, a5, a6, a7, v19);

  *a1 = v15;

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21B308194(uint64_t a1)
{
  v2 = sub_21B34A8A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F3F0, &qword_21B356C10);
    v10 = sub_21B34B5F4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_21B30848C(&qword_27CD7F3F8);
      v18 = sub_21B34AAA4();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_21B30848C(qword_27CD7F400);
          v25 = sub_21B34AC54();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21B30848C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21B34A8A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NumericSummary.totalCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t (*NumericSummary.median.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_14;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*NumericSummary.firstQuartile.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_14;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t (*NumericSummary.thirdQuartile.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_14;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t (*NumericSummary.mean.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_14;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t (*NumericSummary.standardDeviation.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_14;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t (*NumericSummary.min.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_14;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t (*NumericSummary.max.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_14;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t NumericSummary.init()@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for NumericSummary();
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 16);
  v6 = a2 + v4[13];
  sub_21B34AA54();
  v7 = a2 + v4[14];
  sub_21B34AA54();
  v8 = a2 + v4[15];
  sub_21B34AA54();
  v9 = a2 + v4[16];
  sub_21B34AA54();
  v10 = a2 + v4[10];
  sub_21B34AA54();
  v11 = a2 + v4[11];
  sub_21B34AA54();
  v12 = a2 + v4[12];
  return sub_21B34AA54();
}

uint64_t NumericSummary.init(someCount:noneCount:mean:standardDeviation:min:max:median:firstQuartile:thirdQuartile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v18 = type metadata accessor for NumericSummary();
  v21 = *(*(a11 - 8) + 32);
  v21(&a9[v18[13]], a3, a11);
  v21(&a9[v18[14]], a4, a11);
  v21(&a9[v18[15]], a5, a11);
  v21(&a9[v18[16]], a6, a11);
  v21(&a9[v18[10]], a7, a11);
  v21(&a9[v18[11]], a8, a11);
  v19 = &a9[v18[12]];

  return (v21)(v19, a10, a11);
}

uint64_t NumericSummary.debugDescription.getter(uint64_t a1)
{
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34DA40);
  v14 = *v1;
  v3 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v3);

  MEMORY[0x21CEED5E0](0x43656E6F6E20200ALL, 0xEE00203A746E756FLL);
  v15 = v1[1];
  v4 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v4);

  MEMORY[0x21CEED5E0](0x3A6E61656D20200ALL, 0xE900000000000020);
  v5 = *(a1 + 52);
  v6 = *(a1 + 16);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x642D64747320200ALL, 0xEC000000203A7665);
  v7 = *(a1 + 56);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x203A6E696D20200ALL, 0xE800000000000000);
  v8 = *(a1 + 60);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x203A78616D20200ALL, 0xE800000000000000);
  v9 = *(a1 + 64);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x203A25353220200ALL, 0xE800000000000000);
  v10 = *(a1 + 44);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x616964656D20200ALL, 0xEB00000000203A6ELL);
  v11 = *(a1 + 40);
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](0x203A25353720200ALL, 0xE800000000000000);
  v12 = *(a1 + 48);
  sub_21B34B9C4();
  return 0;
}

uint64_t sub_21B308E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v119 = a6;
  v107 = a2;
  v118 = a1;
  v106 = a7;
  v116 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v104[1] = v104 - v11;
  v112 = a5;
  v141 = *(a5 + 16);
  v12 = *(*(v141 + 16) + 8);
  v111 = *(v12 + 16);
  v110 = swift_getAssociatedTypeWitness();
  v13 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v109 = v104 - v14;
  v15 = sub_21B34B474();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v139 = v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v104 - v20;
  v117 = a4;
  v120 = *(a4 - 8);
  v22 = *(v120 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_getAssociatedTypeWitness();
  v124 = *(v25 - 8);
  v26 = *(v124 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v134 = v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v131 = v104 - v30;
  v125 = *(a3 - 8);
  v31 = v125[8];
  v32 = MEMORY[0x28223BE20](v29);
  v115 = v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v113 = v104 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v114 = v104 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v122 = v104 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v135 = v104 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v123 = v104 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v133 = v104 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = v104 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = v104 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = v104 - v53;
  MEMORY[0x28223BE20](v52);
  v128 = v12;
  v55 = *(v12 + 8);
  v132 = v104 - v56;
  sub_21B34B864();
  v130 = v54;
  sub_21B34AA54();
  v129 = v51;
  sub_21B34AA54();
  v57 = *(v120 + 16);
  v120 += 16;
  v108 = v57;
  v57(v24, v118, v117);
  v58 = v24;
  v59 = v131;
  sub_21B34AEC4();
  v60 = v125;
  v61 = v59;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_21B34B4D4();
  v136 = v60[6];
  WitnessTable = v60 + 6;
  v62 = v136(v21, 1, a3);
  v63 = v123;
  v64 = v124;
  v65 = 0;
  v140 = v25;
  if (v62 != 1)
  {
    v104[0] = v58;
    v66 = v60;
    v67 = 0;
    v68 = *(v66 + 32);
    v66 += 32;
    v126 = v68;
    v69 = (v66 - 8);
    v121 = (v66 - 24);
    v127 = v66;
    v70 = (v66 + 8);
    v71 = v130;
    v68(v48, v21, a3);
    while (1)
    {
      result = sub_21B34B854();
      v74 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (sub_21B34AA64() & 1) != 0 || (v75 = *(*(v141 + 24) + 8), (sub_21B34AB94()))
      {
        (*v69)(v71, v48, a3);
      }

      v76 = v129;
      if (sub_21B34AA64() & 1) != 0 || (v77 = *(*(v141 + 24) + 8), (sub_21B34AB84()))
      {
        (*v70)(v76, v48, a3);
      }

      else
      {
        (*v121)(v48, a3);
      }

      sub_21B34B4D4();
      v72 = v136(v21, 1, a3);
      ++v67;
      v71 = v130;
      if (v72 == 1)
      {
        v64 = v124;
        v60 = v125;
        v63 = v123;
        v65 = v74;
        v25 = v140;
        v58 = v104[0];
        v61 = v131;
        goto LABEL_14;
      }

      v126(v48, v21, a3);
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_14:
  v78 = v63;
  v126 = *(v64 + 8);
  (v126)(v61, v25);
  v127 = v65;
  v124 = v64 + 8;
  if (v65 < 1)
  {
    sub_21B34AA54();
  }

  else
  {
    sub_21B34AA84();
    sub_21B34AA44();
    (v60[1])(v78, a3);
  }

  sub_21B34B864();
  v108(v58, v118, v117);
  sub_21B34AEC4();
  v79 = v139;
  sub_21B34B4D4();
  v80 = v79;
  v81 = v136(v79, 1, a3);
  v82 = v122;
  v83 = v114;
  v84 = v113;
  if (v81 != 1)
  {
    v131 = v125[4];
    v85 = (v125 + 1);
    do
    {
      (v131)(v78, v80, a3);
      sub_21B34B844();
      sub_21B34B844();
      sub_21B34B144();
      v86 = *v85;
      (*v85)(v84, a3);
      v86(v83, a3);
      sub_21B34B854();
      v86(v82, a3);
      v86(v78, a3);
      sub_21B34B4D4();
      v80 = v139;
    }

    while (v136(v139, 1, a3) != 1);
  }

  (v126)(v134, v140);
  swift_getAssociatedConformanceWitness();
  sub_21B34BA24();
  sub_21B34B9E4();
  v87 = *(*(v141 + 24) + 8);
  v88 = sub_21B34AB84();
  v89 = v125 + 1;
  v90 = v125[1];
  v90(v78, a3);
  v125 = v89;
  v140 = v90;
  if ((v88 & 1) == 0)
  {
    v92 = sub_21B34AA54();
    goto LABEL_24;
  }

  result = v127 - 1;
  if (!__OFSUB__(v127, 1))
  {
    v91 = v122;
    sub_21B34AA84();
    sub_21B34AA44();
    v90(v91, a3);
    sub_21B34AA34();
    v92 = (v90)(v78, a3);
LABEL_24:
    MEMORY[0x28223BE20](v92);
    v93 = v112;
    v142 = sub_21B34AEE4();
    v94 = sub_21B34B054();
    swift_getWitnessTable();
    v95 = sub_21B34AF54();

    v141 = v95;
    v142 = v95;
    v139 = swift_getAssociatedConformanceWitness();
    sub_21B34BA14();
    v96 = v122;
    sub_21B34B994();
    WitnessTable = swift_getWitnessTable();
    AssociatedConformanceWitness = v94;
    sub_21B309D08(v96, v94, WitnessTable, v93, v123);
    v97 = v140;
    v140(v96, a3);
    v142 = v95;
    sub_21B34BA14();
    v98 = v114;
    sub_21B34B994();
    v99 = v96;
    v100 = v94;
    v101 = WitnessTable;
    v102 = v112;
    sub_21B309D08(v98, v100, WitnessTable, v112, v99);
    v97(v98, a3);
    v142 = v141;
    sub_21B34BA14();
    v103 = v113;
    sub_21B34B994();
    sub_21B309D08(v103, AssociatedConformanceWitness, v101, v102, v98);
    v97(v103, a3);
    v97(v135, a3);
    v97(v132, a3);

    return NumericSummary.init(someCount:noneCount:mean:standardDeviation:min:max:median:firstQuartile:thirdQuartile:)(v127, v107, v133, v115, v130, v129, v122, v123, v106, v98, a3);
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21B309D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a5;
  v9 = sub_21B34B9A4();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(*(a3 + 8) + 8);
  v12 = *(v74 + 8);
  v75 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v61 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v60 = &v58 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v65 = &v58 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v70 = &v58 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v73 = &v58 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v68 = &v58 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v58 - v28;
  v30 = *(a4 + 8);
  v31 = swift_getAssociatedTypeWitness();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  swift_getAssociatedConformanceWitness();
  sub_21B34BA14();
  sub_21B34B994();
  v67 = a4;
  v71 = *(a4 + 16);
  v33 = *(*(v71 + 24) + 8);
  v76 = a1;
  LOBYTE(a2) = sub_21B34ABA4();
  v66 = v14;
  v36 = *(v14 + 8);
  v35 = v14 + 8;
  v34 = v36;
  v36(v29, AssociatedTypeWitness);
  if (a2)
  {
    sub_21B34BA14();
    sub_21B34B994();
    v37 = sub_21B34ABB4();
    v34(v29, AssociatedTypeWitness);
    if (v37)
    {
      v69 = v34;
      if (sub_21B34B214())
      {
        return sub_21B34AA54();
      }

      if (__OFSUB__(sub_21B34B1D4(), 1))
      {
        __break(1u);
      }

      else
      {
        v39 = v71;
        sub_21B34AA84();
        v40 = v68;
        v58 = *(*(v39 + 16) + 8);
        sub_21B34B144();
        v76 = v35;
        v69(v29, AssociatedTypeWitness);
        v41 = *MEMORY[0x277D84660];
        v42 = v63;
        v59 = *(v63 + 104);
        v43 = v62;
        v44 = v64;
        v59(v62, v41, v64);
        sub_21B34AA74();
        v63 = *(v42 + 8);
        (v63)(v43, v44);
        sub_21B34A9C4();
        v59(v43, *MEMORY[0x277D84668], v44);
        sub_21B34AA74();
        (v63)(v43, v44);
        v45 = v70;
        sub_21B34A9C4();
        v46 = v73;
        v47 = *(*(v39 + 8) + 8);
        if (sub_21B34AC54())
        {
          sub_21B30AF44();
          sub_21B34B7E4();
          if ((v78 & 1) == 0)
          {
            v79 = v77;
            v48 = sub_21B34B314();
            (*(v66 + 16))(v72);
            v48(&v77, 0);
            v49 = v69;
            v69(v45, AssociatedTypeWitness);
            v49(v46, AssociatedTypeWitness);
            return (v49)(v40, AssociatedTypeWitness);
          }
        }

        else
        {
          v64 = sub_21B30AF44();
          sub_21B34B7E4();
          if ((v78 & 1) == 0)
          {
            v79 = v77;
            v50 = sub_21B34B314();
            v66 = *(v66 + 16);
            (v66)(v29);
            v50(&v77, 0);
            v51 = v60;
            v71 = *(v58 + 8);
            sub_21B34B844();
            sub_21B34B144();
            v52 = v69;
            v69(v51, AssociatedTypeWitness);
            v52(v29, AssociatedTypeWitness);
            sub_21B34B7E4();
            if ((v78 & 1) == 0)
            {
              v79 = v77;
              v53 = sub_21B34B314();
              (v66)(v29);
              v53(&v77, 0);
              v54 = v73;
              sub_21B34B844();
              v55 = v61;
              sub_21B34B144();
              v52(v51, AssociatedTypeWitness);
              v52(v29, AssociatedTypeWitness);
              v56 = v65;
              sub_21B34B834();
              v52(v55, AssociatedTypeWitness);
              v52(v56, AssociatedTypeWitness);
              v52(v70, AssociatedTypeWitness);
              v52(v54, AssociatedTypeWitness);
              return (v52)(v68, AssociatedTypeWitness);
            }
          }
        }

        v77 = 0;
        v78 = 0xE000000000000000;
        sub_21B34B634();
        v57 = sub_21B34BD24();
        MEMORY[0x21CEED5E0](v57);

        MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34DAE0);
        MEMORY[0x21CEED5E0](7630409, 0xE300000000000000);
        MEMORY[0x21CEED5E0](0xD00000000000002ELL, 0x800000021B34DB00);
      }
    }
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t static NumericSummary.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v5 = type metadata accessor for NumericSummary();
  v6 = v5[10];
  v7 = *(*(*(a4 + 16) + 8) + 8);
  if ((sub_21B34AC54() & 1) == 0)
  {
    return 0;
  }

  v8 = v5[11];
  if ((sub_21B34AC54() & 1) == 0)
  {
    return 0;
  }

  v9 = v5[12];
  if ((sub_21B34AC54() & 1) == 0)
  {
    return 0;
  }

  v10 = v5[13];
  if ((sub_21B34AC54() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[14];
  if ((sub_21B34AC54() & 1) == 0)
  {
    return 0;
  }

  v12 = v5[15];
  if ((sub_21B34AC54() & 1) == 0)
  {
    return 0;
  }

  v13 = v5[16];
  return sub_21B34AC54() & 1;
}

uint64_t NumericSummary.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x21CEEE3B0](*v2);
  MEMORY[0x21CEEE3B0](v2[1]);
  v5 = *(a2 + 16);
  v6 = *(*(*(a2 + 24) + 16) + 8);
  v7 = v2 + *(a2 + 40);
  sub_21B34AAB4();
  v8 = v3 + *(a2 + 44);
  sub_21B34AAB4();
  v9 = v3 + *(a2 + 48);
  sub_21B34AAB4();
  v10 = v3 + *(a2 + 52);
  sub_21B34AAB4();
  v11 = v3 + *(a2 + 56);
  sub_21B34AAB4();
  v12 = v3 + *(a2 + 60);
  sub_21B34AAB4();
  v13 = v3 + *(a2 + 64);
  return sub_21B34AAB4();
}

uint64_t NumericSummary.hashValue.getter(uint64_t a1)
{
  sub_21B34BBC4();
  NumericSummary.hash(into:)(v3, a1);
  return sub_21B34BC24();
}

uint64_t sub_21B30A988(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  NumericSummary.hash(into:)(v4, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B30AA00(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B30AA94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v6) + v7;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
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

  return v5 + (v9 | v13) + 1;
}

void sub_21B30AC30(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v8 + 16) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v9;
  v11 = a3 >= v7;
  v12 = a3 - v7;
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

  if (v7 < a2)
  {
    v14 = ~v7 + a2;
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
LABEL_39:
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
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
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

      goto LABEL_28;
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

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v19 = *(v6 + 56);
  v20 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v19(v20);
}

uint64_t sub_21B30AE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

unint64_t sub_21B30AF44()
{
  result = qword_27CD7F488;
  if (!qword_27CD7F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F488);
  }

  return result;
}

uint64_t DataFrame.Rows.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = a1;
}

uint64_t DataFrame.Rows.subscript.setter(void *a1, uint64_t a2)
{
  v20 = *a1;
  v3 = *(*a1 + 16);
  v4 = *v2;
  if (v3 != *(*v2 + 2))
  {
LABEL_15:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v5 = v2;
  v6 = a1[1];
  v7 = a1[2];
  if (v3)
  {
    v8 = a1[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_13;
    }

    while (v3 <= *(v20 + 16))
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        sub_21B233A74(v20 + v9 + 32, v22);
        if (v10 >= *(v4 + 2))
        {
          break;
        }

        ++v10;
        v11 = v23;
        v12 = v24;
        v13 = __swift_project_boxed_opaque_existential_1(v22, v23);
        v21[3] = v11;
        v21[4] = *(v12 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
        (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v13, v11);
        v15 = *&v4[v9 + 56];
        v16 = *&v4[v9 + 64];
        __swift_mutable_project_boxed_opaque_existential_1(&v4[v9 + 32], v15);
        (*(v16 + 72))(a2, v8, v21, v15, v16);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        sub_21B233960(v22);
        *v5 = v4;
        v9 += 40;
        if (v3 == v10)
        {
        }
      }

      __break(1u);
LABEL_13:
      v4 = sub_21B23A2F4(v4);
    }

    __break(1u);
    goto LABEL_15;
  }

  v18 = a1[2];
}

uint64_t DataFrame.Rows.startIndex.getter()
{
  result = *(v0 + 24);
  if (*(v0 + 40))
  {
    v2 = *(v0 + 32);
    if (*(v0 + 40) == 1 && *(result + 16))
    {
      return *(result + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v4)
      {
        return 0;
      }

      else
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t DataFrame.Rows.endIndex.getter()
{
  sub_21B2A6400(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  if (v2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

Swift::Int sub_21B30B2A8(Swift::Int result, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v3 = 0;
    do
    {
      --v3;
      result = DataFrame.Rows.index(before:)(result);
    }

    while (v3 > v2);
  }

  else if (a2)
  {
    do
    {
      result = DataFrame.Rows.index(after:)(result);
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Int sub_21B30B2FC(Swift::Int result, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2 < 0)
  {
    v5 = 0;
    while (result != a3)
    {
      --v5;
      result = DataFrame.Rows.index(before:)(result);
      if (v5 <= v4)
      {
        return result;
      }
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    while (result != a3)
    {
      result = DataFrame.Rows.index(after:)(result);
      if (!--v4)
      {
        return result;
      }
    }
  }

  return 0;
}

Swift::Int sub_21B30B388(Swift::Int result, Swift::Int a2)
{
  if (result < a2)
  {
    for (i = 0; ; ++i)
    {
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      result = DataFrame.Rows.index(after:)(result);
      if (result == a2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < result)
  {
    v4 = 0;
    while (!__OFSUB__(v4--, 1))
    {
      result = DataFrame.Rows.index(before:)(result);
      if (result == a2)
      {
        return v4;
      }
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t DataFrame.Row.base.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t DataFrame.Row.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 3);
  v7 = *v2;
  v8 = *(v2 + 2);
  DataFrame.subscript.getter(a1);
  v5 = type metadata accessor for Column();
  Column.subscript.getter(v4, v5, a2);
}

uint64_t DataFrame.Row.subscript.setter(uint64_t a1, unint64_t a2)
{
  sub_21B30E918(a1, a2);
  v3 = sub_21B34B474();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

{
  v3 = v2;
  v6 = *(v2 + 24);
  result = sub_21B2832C0(a1, v13);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v3 + 16) > a2)
  {
    sub_21B233A74(*v3 + 40 * a2 + 32, v10);
    v8 = v11;
    v9 = v12;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    (*(*(v9 + 8) + 136))(v6, v13, v8);
    sub_21B28EEB4(v13);
    sub_21B239CC0(a2, v10);
    sub_21B28EEB4(a1);
    return sub_21B233960(v10);
  }

  __break(1u);
  return result;
}

void (*DataFrame.Row.subscript.modify(void *a1, unint64_t a2, uint64_t a3, uint64_t a4))(unint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = sub_21B34B474();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  v17 = *v4;
  v18 = *(v4 + 2);
  v19 = *(v4 + 3);
  DataFrame.Row.subscript.getter(a2, v15);
  return sub_21B30B6C8;
}

void sub_21B30B6C8(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_21B30E918(v3, v10);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    sub_21B30E918((*a1)[7], v10);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DataFrame.Row.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(v5 + 2);
  v8 = *(v5 + 3);
  v12 = *v5;
  v13 = v7;
  DataFrame.subscript.getter(&v11, a1, a2, a3, a4);
  v9 = type metadata accessor for Column();
  Column.subscript.getter(v8, v9, a5);
}

uint64_t DataFrame.Row.subscript.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_21B30E9D8(a1, a2, a3, a4, a5);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*DataFrame.Row.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_21B34B474();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  v19 = *v5;
  v20 = *(v5 + 2);
  v21 = *(v5 + 3);
  DataFrame.Row.subscript.getter(a2, a3, a4, a5, v17);
  return sub_21B30BA4C;
}

void sub_21B30BA4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);

    sub_21B30E9D8(v3, v11, v10, v9, v8);
    v12 = *(v6 + 8);
    v12(v3, v5);
    v12(v4, v5);
  }

  else
  {
    v13 = (*a1)[1];

    sub_21B30E9D8(v4, v11, v10, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DataFrame.Row.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  v11 = *v2;
  v12 = v3;
  DataFrame.subscript.getter(a1, a2);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(*(v6 + 8) + 128))(v4, v5);
  return sub_21B233960(v8);
}

uint64_t sub_21B30BC04(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *a2;
  v4 = a2[1];
  v12 = *a1;
  v13 = v2;
  DataFrame.subscript.getter(v5, v4);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(*(v7 + 8) + 128))(v3, v6);
  return sub_21B233960(v9);
}

uint64_t sub_21B30BCA0(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_21B2832C0(a1, v16);
  v6 = *(a2 + 3);
  sub_21B2832C0(v16, v15);
  v10 = *a2;
  v11 = *(a2 + 2);

  DataFrame.subscript.getter(v4, v5);
  v7 = v13;
  v8 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  (*(*(v8 + 8) + 136))(v6, v15, v7);
  sub_21B28EEB4(v15);
  DataFrame.subscript.setter(v12, v4, v5);
  return sub_21B28EEB4(v16);
}

uint64_t DataFrame.Row.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 3);
  sub_21B2832C0(a1, v16);
  v11 = *v3;
  v12 = *(v3 + 2);
  DataFrame.subscript.getter(a2, a3);
  v8 = v14;
  v9 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  (*(*(v9 + 8) + 136))(v7, v16, v8);
  sub_21B28EEB4(v16);
  DataFrame.subscript.setter(v13, a2, a3);
  return sub_21B28EEB4(a1);
}

void (*DataFrame.Row.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xA8uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[18] = a3;
  v7[19] = v3;
  v7[17] = a2;
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *v3;
  v7[20] = v10;
  DataFrame.subscript.getter(a2, a3);
  v12 = v8[3];
  v13 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v12);
  (*(*(v13 + 8) + 128))(v10, v12);
  sub_21B233960(v8);
  return sub_21B30BF50;
}

void sub_21B30BF50(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[19];
    v4 = v2[20];
    v6 = v2[17];
    v5 = v2[18];
    sub_21B2832C0((v2 + 5), (v2 + 9));
    sub_21B2832C0((v2 + 9), (v2 + 13));
    v15 = *v3;
    v17 = *(v3 + 2);
    DataFrame.subscript.getter(v6, v5);
    v7 = v2[3];
    v8 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v2, v7);
    (*(*(v8 + 8) + 136))(v4, v2 + 13, v7);
    sub_21B28EEB4((v2 + 13));

    DataFrame.subscript.setter(v2, v6, v5);
    sub_21B28EEB4((v2 + 9));
  }

  else
  {
    v10 = v2[19];
    v9 = v2[20];
    v12 = v2[17];
    v11 = v2[18];
    sub_21B2832C0((v2 + 5), (v2 + 9));
    v16 = *v10;
    v18 = *(v10 + 2);
    DataFrame.subscript.getter(v12, v11);
    v13 = v2[3];
    v14 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v2, v13);
    (*(*(v14 + 8) + 136))(v9, v2 + 9, v13);
    sub_21B28EEB4((v2 + 9));

    DataFrame.subscript.setter(v2, v12, v11);
  }

  sub_21B28EEB4((v2 + 5));

  free(v2);
}

uint64_t DataFrame.Row.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v16 = *v2;
  v17 = v6;
  v10 = v5;
  v11 = v4;

  DataFrame.subscript.getter(&v10);

  v10 = v13;
  v11 = v14;
  v12 = v15;
  v8 = type metadata accessor for Column();
  Column.subscript.getter(v7, v8, a2);
}

uint64_t sub_21B30C1B0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *a2;
  v9 = a2[1];
  v12 = *a1;
  v13 = v6;
  v14 = v7;
  v11[0] = v8;
  v11[1] = v9;

  DataFrame.Row.subscript.getter(v11, a4);
}

uint64_t DataFrame.Row.subscript.setter(uint64_t a1, uint64_t *a2)
{
  sub_21B30EAA4(a1, a2);
  v3 = sub_21B34B474();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void (*DataFrame.Row.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = sub_21B34B474();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v15 = *a2;
  v16 = a2[1];
  v9[5] = v13;
  v9[6] = v15;
  v9[7] = v16;
  v17 = *(v3 + 2);
  v18 = *(v3 + 3);
  v21 = *v3;
  v22 = v17;
  v23 = v18;
  v20[0] = v15;
  v20[1] = v16;
  swift_bridgeObjectRetain_n();
  DataFrame.Row.subscript.getter(v20, v14);

  return sub_21B30C408;
}

void sub_21B30C408(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[6];
  v3 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    v12 = v4;
    v13 = v3;
    sub_21B30EAA4(v5, &v12);
    v11 = *(v8 + 8);
    v11(v5, v7);
    v11(v6, v7);
  }

  else
  {
    v12 = (*a1)[6];
    v13 = v3;
    sub_21B30EAA4(v6, &v12);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v2);
}

Swift::Int __swiftcall DataFrame.Rows.index(after:)(Swift::Int after)
{
  v3 = 0;
  result = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = (result + 32);
  if (!*(v1 + 40))
  {
    goto LABEL_6;
  }

LABEL_2:
  if (v6 != 1)
  {
    goto LABEL_25;
  }

  v8 = *(result + 16);
  if (v3 == v8)
  {
    goto LABEL_25;
  }

  if (v3 < v8)
  {
    v10 = *v7;
    v9 = v7[1];
    while (v10 > after || v9 <= after)
    {
      if (*(v1 + 40))
      {
        if (v3 >= *(result + 16))
        {
          goto LABEL_29;
        }
      }

      else if (v3)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      ++v3;
      v7 += 2;
      if (*(v1 + 40))
      {
        goto LABEL_2;
      }

LABEL_6:
      if (v3 == 1)
      {
        goto LABEL_25;
      }

      v10 = *(v1 + 24);
      v9 = *(v1 + 32);
      if (v3)
      {
        goto LABEL_31;
      }
    }

    if (*(v1 + 40))
    {
      v11 = *(result + 16);
      if (v3 >= v11)
      {
        goto LABEL_32;
      }

      v12 = after + 1;
      if (v12 < *v7 || v12 >= v7[1])
      {
        if (v3 + 1 >= v11)
        {
          goto LABEL_25;
        }

        return v7[2];
      }

      return v12;
    }

    if (v3)
    {
      goto LABEL_33;
    }

    v12 = after + 1;
    if (v12 >= result && v12 < v5)
    {
      return v12;
    }

LABEL_25:
    sub_21B2A6400(result, v5, v6);
    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

Swift::Int __swiftcall DataFrame.Rows.index(before:)(Swift::Int before)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v4;
  if (*(v1 + 40))
  {
    if (v5 == 1 && *(v4 + 16))
    {
      v6 = *(v4 + 32);
    }

    else
    {
      sub_21B2A6400(*(v1 + 24), *(v1 + 32), *(v1 + 40));
      if (v7)
      {
        if (before <= 0)
        {
          goto LABEL_54;
        }

        goto LABEL_9;
      }
    }
  }

  if (v6 >= before)
  {
    goto LABEL_54;
  }

LABEL_9:
  sub_21B2A6400(v4, v3, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!before)
  {
LABEL_35:
    sub_21B2A6400(v4, v3, v5);
    if ((v18 & 1) == 0)
    {
      result = v17 - 1;
      if (!__OFSUB__(v17, 1))
      {
        return result;
      }

      __break(1u);
LABEL_39:
      if (!v10)
      {
        if (v4 == before)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_41:
        result = before - 1;
        if (!__OFSUB__(before, 1))
        {
          return result;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_11:
  v10 = 0;
  v11 = (v4 + 40);
  if (!v5)
  {
LABEL_12:
    v12 = v3;
    if (v10)
    {
      goto LABEL_44;
    }

    if (v4 <= before)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  while (1)
  {
    if (v5 != 1)
    {
      goto LABEL_54;
    }

    v13 = *(v4 + 16);
    if (v10 == v13)
    {
      goto LABEL_54;
    }

    if (v10 >= v13)
    {
      goto LABEL_46;
    }

    v12 = *v11;
    if (*(v11 - 1) <= before)
    {
LABEL_19:
      if (v12 > before)
      {
        if (!v5)
        {
          goto LABEL_39;
        }

        v14 = *(v4 + 16);
        if (v10 >= v14)
        {
          goto LABEL_48;
        }

        if (*(v11 - 1) != before)
        {
          goto LABEL_41;
        }

        if (!v10)
        {
          goto LABEL_50;
        }

        if (v10 - 1 >= v14)
        {
          goto LABEL_51;
        }

        v15 = *(v11 - 2);
        result = v15 - 1;
        if (!__OFSUB__(v15, 1))
        {
          return result;
        }

        __break(1u);
LABEL_34:
        if (v8 == before)
        {
          goto LABEL_35;
        }

        goto LABEL_11;
      }
    }

LABEL_20:
    if (v5)
    {
      if (v10 >= *(v4 + 16))
      {
        break;
      }

      goto LABEL_24;
    }

    if (v10)
    {
      break;
    }

LABEL_24:
    ++v10;
    v11 += 2;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  if (v10 != 1)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_54:
  result = sub_21B34B824();
  __break(1u);
  return result;
}