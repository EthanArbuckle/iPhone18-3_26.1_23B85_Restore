void sub_1AAE90C50(unsigned int *a1, int a2, int a3, uint64_t a4)
{
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  if (((v8 + v9) & ~v9) + v8 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = ((v8 + v9) & ~v9) + v8;
  }

  v11 = *(sub_1AAF8CB94() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1AAF8CBA4() - 8);
  v15 = *(v14 + 80);
  v16 = ((((v12 + 8) & ~v12) + v13 + v15) & ~v15) + *(v14 + 64);
  if (v10 > v16)
  {
    v16 = v10;
  }

  if (v16 <= 0x10)
  {
    v16 = 16;
  }

  v17 = v16 + (((v12 | v15 | v9) & 0xF8 ^ 0x1F8) & ((v12 | v15 | v9) + 32)) + 1;
  if ((a3 & 0x80000000) == 0)
  {
    v18 = 0;
    if (a2 < 0)
    {
      goto LABEL_22;
    }

LABEL_31:
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_38:
        *(a1 + 3) = (a2 - 1);
        return;
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

      goto LABEL_38;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (v17 <= 3)
  {
    v19 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v17))) >> (8 * v17);
    if (v19 > 0xFFFE)
    {
      v18 = 4;
      if (a2 < 0)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }

    if (v19 < 0xFF)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19)
    {
      v18 = v20;
    }

    else
    {
      v18 = 0;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v18 = 1;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

LABEL_22:
  v21 = a2 & 0x7FFFFFFF;
  if (v17 >= 4)
  {
    bzero(a1, v17);
    *a1 = v21;
    v22 = 1;
    if (v18 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v22 = (v21 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_43:
    if (v18 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v23 = a2 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v23;
    *(a1 + 2) = BYTE2(v23);
    goto LABEL_43;
  }

  if (v17 == 2)
  {
    *a1 = v23;
    if (v18 > 1)
    {
LABEL_47:
      if (v18 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = a2;
    if (v18 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v18)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t sub_1AAE90F64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1AAE90FAC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1AAE91008(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
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
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
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
    goto LABEL_25;
  }

LABEL_14:
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

void sub_1AAE91158(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AAE91348()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      result = sub_1AAF90774();
      if (v3 <= 0x3F)
      {
        result = swift_getTupleTypeMetadata2();
        if (v4 <= 0x3F)
        {
          sub_1AAF8CB94();
          sub_1AAF8CBA4();
          result = swift_getTupleTypeMetadata3();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AAE9145C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1AAF8CB94() - 8);
  v10 = (*(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1AAF8CBA4() - 8);
  v13 = ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)) + *(v12 + 64);
  if (v8 > v13)
  {
    v13 = v8;
  }

  v14 = 16;
  if (v13 > 0x10)
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_30;
  }

  v15 = v14 + 1;
  v16 = 8 * (v14 + 1);
  if ((v14 + 1) <= 3)
  {
    v19 = ((a2 + ~(-1 << v16) - 251) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v19 < 2)
    {
LABEL_30:
      v21 = *(a1 + v14);
      if (v21 >= 5)
      {
        return (v21 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_30;
  }

LABEL_19:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v15) = *a1;
      }
    }

    else if (v15 == 1)
    {
      LODWORD(v15) = *a1;
    }

    else
    {
      LODWORD(v15) = *a1;
    }
  }

  return (v15 | v20) + 252;
}

void sub_1AAE916A0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 64);
  v9 = ((v8 + *(v7 + 80)) & ~*(v7 + 80)) + v8;
  if (v9 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1AAF8CB94() - 8);
  v12 = (*(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1AAF8CBA4() - 8);
  v15 = ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)) + *(v14 + 64);
  if (v10 > v15)
  {
    v15 = v10;
  }

  if (v15 <= 0x10)
  {
    v15 = 16;
  }

  v16 = v15 + 1;
  if (a3 < 0xFC)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 + ~(-1 << (8 * v16)) - 251) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
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
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (a2 > 0xFB)
  {
    v18 = a2 - 252;
    if (v16 >= 4)
    {
      bzero(a1, v15 + 1);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v15 != -1)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
LABEL_44:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v15] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v17 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_29;
  }

  *&a1[v16] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

double sub_1AAE9195C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[3];
  v8 = v2[4];
  v9 = sub_1AACBB42C(v2, v7);
  if (sub_1AAE91A10(v5, v9, a1, v5, v7, v6, v8))
  {

    sub_1AAE92A88(v2, a2);
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

BOOL sub_1AAE91A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for PlottableProjection();
  v10 = sub_1AAF8FE74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = type metadata accessor for PlottableProjection();
  v26 = sub_1AAF8FE74();
  v15 = *(v26 - 8);
  v16 = MEMORY[0x1EEE9AC00](v26);
  v18 = &v25 - v17;
  (*(a7 + 32))(a5, a7, v16);
  if ((*(*(v9 - 8) + 48))(v13, 1, v9) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v19 = *(v14 - 8);
    (*(v19 + 56))(v18, 1, 1, v14);
  }

  else
  {
    v20 = swift_dynamicCast();
    v19 = *(v14 - 8);
    if (v20)
    {
      v21 = v18;
      v22 = 0;
    }

    else
    {
      v21 = v18;
      v22 = 1;
    }

    (*(*(v14 - 8) + 56))(v21, v22, 1, v14);
  }

  v23 = (*(v19 + 48))(v18, 1, v14) == 0;
  (*(v15 + 8))(v18, v26);
  return v23;
}

uint64_t sub_1AAE91D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a5;
  v39 = a8;
  v36 = a3;
  v37 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for PlottableProjection();
  v13 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v33 = *(*(a7 + 8) + 8);
  v34 = a7;
  v35 = a4;
  swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for PlottableProjection();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v33 - v23;
  (*(a9 + 32))(a6, a9, v22);
  result = (*(v16 + 48))(v15, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v19, v15, v12);
    v26 = swift_dynamicCast();
    MEMORY[0x1EEE9AC00](v26);
    v27 = v35;
    v28 = v38;
    *(&v33 - 8) = v35;
    *(&v33 - 7) = v28;
    v29 = v33;
    v30 = v34;
    *(&v33 - 6) = a6;
    *(&v33 - 5) = v30;
    *(&v33 - 4) = v39;
    *(&v33 - 3) = a9;
    *(&v33 - 2) = v24;
    v32 = sub_1AACB00E0(sub_1AAE922B0, (&v33 - 10), v27, &type metadata for AnyPlottableValue, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v31);
    (*(v21 + 8))(v24, v20);
    return v32;
  }

  return result;
}

__n128 sub_1AAE920D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v21 - v12;
  v14 = type metadata accessor for PlottableProjection();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v21 - v16);
  (*(v18 + 16))(&v21 - v16, a2, v15);
  (*(v11 + 16))(v13, a1, AssociatedTypeWitness);
  sub_1AAE7A6D8(v17, v13, AssociatedTypeWitness, a3, a4, v22);
  v19 = v22[3];
  *(a5 + 32) = v22[2];
  *(a5 + 48) = v19;
  *(a5 + 64) = v23;
  result = v22[1];
  *a5 = v22[0];
  *(a5 + 16) = result;
  return result;
}

uint64_t sub_1AAE922E8(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8[5];
  v14 = v8[6];
  v16 = v8[3];
  v17 = v8[4];
  v18 = sub_1AACBB42C(v8, v16);
  return sub_1AAE92388(v15, v18, a2, a1, a3, a4, a5, v15, v16, a6, a7, a8, v14, v17);
}

uint64_t sub_1AAE92388(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v66 = a3;
  v67 = a4;
  v70 = a2;
  v65 = a6;
  v59 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v58 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51[1] = v51 - v18;
  v69 = a7;
  v57 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v55 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v53 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a10;
  v51[0] = *(*(a10 + 8) + 8);
  v68 = a5;
  swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for PlottableProjection.Storage();
  v61 = *(v23 - 8);
  v62 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v51 - v24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v26 = type metadata accessor for PlottableProjection();
  v27 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = v51 - v28;
  v30 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v51 - v32;
  v60 = a8;
  v64 = a13;
  v34 = type metadata accessor for PlottableProjection();
  v63 = *(v34 - 8);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = v51 - v36;
  (*(a14 + 32))(a9, a14, v35);
  if ((*(v30 + 48))(v29, 1, v26) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v30 + 32))(v33, v29, v26);
    swift_dynamicCast();
    (*(v61 + 16))(v25, &v37[*(v34 + 44)], v62);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v39 = v56;
      v40 = v53;
      v41 = v60;
      (*(v56 + 32))(v53, v25, v60);
      (*(v64 + 24))(v41);
      v42 = v58;
      v43 = v65;
      swift_dynamicCast();
      v44 = v69;
      type metadata accessor for ConcreteScale();
      v45 = v55;
      sub_1AAF3C334();
      (*(v59 + 8))(v42, v43);
      v46 = sub_1AAF8FB34();
      v47 = sub_1AAF8A908(v45, v46, v44);
      (*(v57 + 8))(v45, v44);
      (*(v39 + 8))(v40, v41);
LABEL_6:
      (*(v63 + 8))(v37, v34);
      return v47;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v48 = *v25;
      v49 = type metadata accessor for ConcreteScale();
      v47 = sub_1AAF3CF20(v67, v48, v49, v68, a12, v64, v54);

      goto LABEL_6;
    }
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAE92AC0()
{
  sub_1AAD049BC(0, &qword_1EB4266C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AAFB2B90;
  *(v0 + 32) = sub_1AAF8EC94();
  *(v0 + 40) = sub_1AAF8ECF4();
  *(v0 + 48) = sub_1AAF8ED14();
  *(v0 + 56) = sub_1AAF8ED24();
  *(v0 + 64) = sub_1AAF8EC84();
  *(v0 + 72) = sub_1AAF8ECC4();
  result = sub_1AAF8ED34();
  *(v0 + 80) = result;
  qword_1EB432210 = v0;
  return result;
}

uint64_t sub_1AAE92B50()
{
  v0 = sub_1AAF8F044();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD049BC(0, &qword_1EB4266C8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AAF9E2B0;
  if (qword_1EB422C28 != -1)
  {
    swift_once();
  }

  *(v4 + 32) = qword_1EB432220;

  *(v4 + 40) = sub_1AAF8EC94();
  MEMORY[0x1AC597CC0](v4);
  sub_1AAF8F034();
  v5 = sub_1AAF8F054();

  result = (*(v1 + 8))(v3, v0);
  qword_1EB432218 = v5;
  return result;
}

uint64_t sub_1AAE92CC4()
{
  sub_1AAD049BC(0, &qword_1EB423040);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AAFB2B90;
  if (qword_1ED9B0BD0 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&qword_1ED9C3450, v0 + 32);
  if (qword_1ED9AE510 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&qword_1ED9C3360, v0 + 72);
  if (qword_1ED9AE4E0 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&qword_1ED9C32C0, v0 + 112);
  if (qword_1ED9AE518 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&qword_1ED9C3388, v0 + 152);
  if (qword_1ED9AE508 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&qword_1ED9C3338, v0 + 192);
  if (qword_1ED9AE4E8 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&qword_1ED9C32E8, v0 + 232);
  if (qword_1ED9AE4F8 != -1)
  {
    swift_once();
  }

  result = sub_1AAD9B194(&qword_1ED9C3310, v0 + 272);
  qword_1ED9C33B0 = v0;
  return result;
}

id sub_1AAE92EDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 accessibilityContrast];
  v11 = [a1 userInterfaceStyle];
  v12 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  if (v11 == 2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a3;
  }

  if (v11 == 2)
  {
    v14 = a4;
  }

  else
  {
    v14 = a5;
  }

  if (v10 == 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  return [v12 initWithCGColor_];
}

void sub_1AAE92F78()
{
  SRGB = CGColorCreateSRGB(0.82745098, 0.905882353, 1.0, 1.0);
  v1 = CGColorCreateSRGB(0.031372549, 0.0549019608, 0.129411765, 1.0);
  v2 = CGColorCreateSRGB(0.803921569, 0.870588235, 0.992156863, 1.0);
  v3 = CGColorCreateSRGB(0.0, 0.0431372549, 0.105882353, 1.0);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v4[5] = SRGB;
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v12[4] = sub_1AAE93480;
  v12[5] = v4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1AAE9355C;
  v12[3] = &unk_1F1FDBA30;
  v6 = _Block_copy(v12);
  v7 = v3;
  v8 = v2;
  v9 = v1;
  v10 = SRGB;
  [v5 initWithDynamicProvider_];
  _Block_release(v6);

  v11 = sub_1AAF8EC34();

  qword_1EB432220 = v11;
}

uint64_t sub_1AAE9313C()
{
  sub_1AAD049BC(0, &qword_1EB423040);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AAFB2BA0;
  if (qword_1ED9B0BD0 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&qword_1ED9C3450, v0 + 32);
  if (qword_1ED9AE508 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&qword_1ED9C3338, v0 + 72);
  if (qword_1ED9AE4E0 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&qword_1ED9C32C0, v0 + 112);
  if (qword_1ED9AE4F8 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&qword_1ED9C3310, v0 + 152);
  if (qword_1EB422C00 != -1)
  {
    swift_once();
  }

  result = sub_1AAD9B194(&qword_1EB4321E8, v0 + 192);
  qword_1EB432228 = v0;
  return result;
}

double sub_1AAE932D4()
{
  sub_1AAD049BC(0, &qword_1ED9AD6C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AAFB2BA0;
  if (qword_1ED9B2798 != -1)
  {
    swift_once();
  }

  sub_1AAF8D914();
  *(v0 + 32) = v2;
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  sub_1AAF8D914();
  *(v0 + 72) = v5;
  *(v0 + 88) = v6;
  *(v0 + 104) = v7;
  sub_1AAF8D914();
  *(v0 + 112) = v8;
  *(v0 + 128) = v9;
  *(v0 + 144) = v10;
  sub_1AAF8D914();
  *(v0 + 152) = v11;
  *(v0 + 168) = v12;
  *(v0 + 184) = v13;
  sub_1AAF8D914();
  result = *&v14;
  *(v0 + 192) = v14;
  *(v0 + 208) = v15;
  *(v0 + 224) = v16;
  qword_1EB432230 = v0;
  return result;
}

double sub_1AAE9348C()
{
  sub_1AAD049BC(0, &qword_1ED9AD6C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AAF9E2B0;
  sub_1AAF8D914();
  *(v0 + 32) = v2;
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  sub_1AAF8D914();
  result = *&v5;
  *(v0 + 72) = v5;
  *(v0 + 88) = v6;
  *(v0 + 104) = v7;
  qword_1ED9C33E8 = v0;
  return result;
}

id sub_1AAE9355C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1AAE935C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AAE93694(uint64_t result)
{
  if (*(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    v7[5] = *v1;
    MEMORY[0x1EEE9AC00](result);
    v7[2] = *(v2 + 16);
    v7[3] = v3;
    v4 = sub_1AAF8F914();
    WitnessTable = swift_getWitnessTable();
    return sub_1AACB00E0(sub_1AAE9767C, v7, v4, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
  }

  return result;
}

uint64_t sub_1AAE9377C(uint64_t result)
{
  v2 = *v1;
  if (!*(v1 + 16))
  {
    v3 = *(v1 + 8);
    v10[5] = *v1;
    MEMORY[0x1EEE9AC00](result);
    v10[2] = *(v4 + 16);
    v10[3] = v5;
    v6 = sub_1AAF8F914();

    WitnessTable = swift_getWitnessTable();
    v9 = sub_1AACB00E0(sub_1AAE976F4, v10, v6, MEMORY[0x1E697E0B8], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
    sub_1AAE96F18(v2, v3, 0);
    return v9;
  }

  if (*(v1 + 16) == 1)
  {

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE938AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = sub_1AAF8DA44();
  *a2 = result;
  return result;
}

uint64_t ClosedRange<>._makeScaleRange()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  sub_1AACAF444(v6, v6);
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  swift_allocObject();
  v9 = sub_1AAF8F854();
  v11 = v10;
  v12 = *(v7 + 16);
  v12(v10, v3, v6);
  v12(v11 + v8, v3 + *(a1 + 36), v6);
  result = sub_1AAF8F914();
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t Array._makeScaleRange()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t ArraySlice<A>._makeScaleDomain()@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  sub_1AAF8FF54();
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  v6 = sub_1AAF8F934();
  v7 = sub_1AACAF550(v6, a1, a2);
  LOBYTE(a1) = v8;

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v7;
  *(a3 + 24) = 0;
  *(a3 + 25) = a1;
  return result;
}

uint64_t ArraySlice._makeScaleRange()@<X0>(uint64_t a1@<X8>)
{
  sub_1AAF8FF54();
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  result = sub_1AAF8F934();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t Gradient._makeScaleRange()@<X0>(uint64_t a1@<X8>)
{

  result = sub_1AAF8D8B4();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1AAE93C70@<X0>(uint64_t a1@<X8>)
{

  result = sub_1AAF8D8B4();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t AnyGradient._makeScaleRange()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

uint64_t sub_1AAE93CB8@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t AutomaticScaleDomain._makeScaleDomain()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = 256;
  if (!v1[1])
  {
    v4 = 0;
  }

  *a1 = v4 | *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  v5 = v1[24];
  *(a1 + 24) = v5;
  *(a1 + 25) = 3;
  return sub_1AADC68F0(v2, v3, v5);
}

uint64_t sub_1AAE93D04@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = 256;
  if (!v1[1])
  {
    v4 = 0;
  }

  *a1 = v4 | *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  v5 = v1[24];
  *(a1 + 24) = v5;
  *(a1 + 25) = 3;
  return sub_1AADC68F0(v2, v3, v5);
}

void static ScaleDomain<>.automatic.getter(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
}

uint64_t static ScaleDomain<>.automatic(includesZero:reversed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 1) = a2 & 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = -1;
  return result;
}

uint64_t (*static ScaleDomain<>.automatic<A>(includesZero:reversed:dataType:modifyInferredDomain:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>))(uint64_t a1)
{
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a3;
  v14[5] = a4;

  result = sub_1AAE88E20(a5, sub_1AAE96EC0, v14, a5, a6);
  *a7 = a1;
  *(a7 + 1) = a2 & 1;
  *(a7 + 8) = result;
  *(a7 + 16) = v16;
  *(a7 + 24) = v17;
  return result;
}

__n128 PlotDimensionScaleRange._makeScaleRange()@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = 2;
  return result;
}

__n128 sub_1AAE93E38@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = 2;
  return result;
}

void *sub_1AAE93F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13 = *a3;
  v14 = *(a3 + 8);
  (*(a8 + 8))(&v29, a5, a8);
  v26 = v29;
  v27 = v30;
  v28 = v31;
  result = (*(*(a9 + 8) + 16))(&v23, a6);
  v16 = v23;
  if (v25)
  {
    if (v25 != 2)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    v18 = v24;
    v19 = v24;
    if (v14 == 255)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v17 = 32;
    if (v14 == 255)
    {
LABEL_6:
      v13 = 0;
      LOBYTE(v14) = -1;
      v18 = v19;
    }
  }

  sub_1AACB0818(a10, &v26, v23, v18, v17, v13, v14, a4, a7);
  sub_1AACC0710(v16, v18, v17);
  v20 = v26;
  v21 = v27;
  v22 = v28;

  return sub_1AACAF33C(v20, *(&v20 + 1), v21, v22);
}

void *sub_1AAE94098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  memset(v20, 0, sizeof(v20));
  v21 = -256;
  result = (*(*(a6 + 8) + 16))(&v17, a4);
  v13 = v17;
  if (v19)
  {
    if (v19 != 2)
    {
      __break(1u);
      return result;
    }

    v14 = 0;
    v15 = v18;
    v16 = v18;
    if (v11 == 255)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = 32;
    if (v11 == 255)
    {
LABEL_6:
      v10 = 0;
      LOBYTE(v11) = -1;
      v15 = v16;
    }
  }

  sub_1AACB0818(a7, v20, v17, v15, v14, v10, v11, a3, a5);

  return sub_1AACC0710(v13, v15, v14);
}

uint64_t View.chartForegroundStyleScale<A, B>(domain:range:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  (*(a8 + 8))(&v31, a5, a8);
  v28 = v31;
  v29 = v32;
  v30 = v33;
  (*(a9 + 16))(v26, a6, a9);
  v13 = v26[0];
  v12 = v26[1];
  v14 = v27;
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for _ScaleRangeOutputs();
  v16 = sub_1AAE9377C(v15);
  v18 = v17;
  sub_1AAE96F18(v13, v12, v14);
  if (v11 == 255)
  {
    v19 = 0;
  }

  else
  {
    v19 = v10;
  }

  sub_1AACB0818(5, &v28, v16, 0, v18, v19, v11, a4, a7);
  sub_1AADC6888(v16, 0, v18);
  v20 = v28;
  v21 = v29;
  v22 = v30;

  return sub_1AACAF33C(v20, *(&v20 + 1), v21, v22);
}

uint64_t View.chartForegroundStyleScale<A>(range:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  memset(v21, 0, sizeof(v21));
  v22 = -256;
  (*(a6 + 16))(v19, a4, a6);
  v10 = v19[0];
  v9 = v19[1];
  v11 = v20;
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for _ScaleRangeOutputs();
  v13 = sub_1AAE9377C(v12);
  v15 = v14;
  sub_1AAE96F18(v10, v9, v11);
  if (v8 == 255)
  {
    v16 = 0;
  }

  else
  {
    v16 = v7;
  }

  sub_1AACB0818(5, v21, v13, 0, v15, v16, v8, a3, a5);

  return sub_1AADC6888(v13, 0, v15);
}

uint64_t View.chartForegroundStyleScale<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a1;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v32 = a2;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  KeyPath = swift_getKeyPath();
  v12 = sub_1AAF90144();
  WitnessTable = swift_getWitnessTable();
  sub_1AACB00E0(sub_1AAE97714, v31, v12, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  v15 = sub_1AACAF550(v14, a3, a6);
  v17 = v16;
  swift_bridgeObjectRelease_n();
  v46 = 0;
  v47 = 0;
  v48 = v17 << 8;
  v44 = a1;
  v45 = v15;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v19 = sub_1AACB00E0(sub_1AAE96F34, v24, v12, MEMORY[0x1E697E0B8], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);
  sub_1AACB0818(5, &v45, v19, 0, 0x60u, 0, 255, a2, a5);

  return sub_1AACAF33C(v45, v46, v47, v48);
}

uint64_t sub_1AAE9467C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1, TupleTypeMetadata2, v7);
  v11 = sub_1AAF8DA44();
  result = (*(*(a2 - 8) + 8))(v9, a2);
  *a3 = v11;
  return result;
}

uint64_t View.chartSymbolScale<A, B>(domain:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a7 + 8))(&v26, a4, a7);
  v23 = v26;
  v24 = v27;
  v25 = v28;
  (*(a8 + 16))(v21, a5, a8);
  v12 = v21[0];
  v13 = v21[1];
  v14 = v22;
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for _ScaleRangeOutputs();
  v16 = sub_1AAE93694(v15);
  sub_1AAE96F18(v12, v13, v14);
  sub_1AACB0818(6, &v23, v16, 0, 0x80u, 0, 255, a3, a6);
  sub_1AADC6888(v16, 0, 0x80u);
  v17 = v23;
  v18 = v24;
  v19 = v25;

  return sub_1AACAF33C(v17, *(&v17 + 1), v18, v19);
}

uint64_t View.chartSymbolScale<A>(domain:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 8))(&v24, a4, a6);
  v21 = v24;
  v22 = v25;
  v23 = v26;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AAD41188(0, v9, 0);
    v10 = v20;
    v11 = a2 + 32;
    do
    {
      sub_1AACAEF68(v11, v18);
      v20 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AAD41188((v12 > 1), v13 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v13 + 1;
      v14 = v10 + 40 * v13;
      v15 = v18[0];
      v16 = v18[1];
      *(v14 + 64) = v19;
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  sub_1AACB0818(6, &v21, v10, 0, 0x80u, 0, 255, a3, a5);

  return sub_1AACAF33C(v21, *(&v21 + 1), v22, v23);
}

uint64_t View.chartSymbolScale<A>(range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  memset(v15, 0, sizeof(v15));
  v16 = -256;
  (*(a5 + 16))(v13, a3, a5);
  v7 = v13[0];
  v8 = v13[1];
  v9 = v14;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for _ScaleRangeOutputs();
  v11 = sub_1AAE93694(v10);
  sub_1AAE96F18(v7, v8, v9);
  sub_1AACB0818(6, v15, v11, 0, 0x80u, 0, 255, a2, a4);

  return sub_1AADC6888(v11, 0, 0x80u);
}

uint64_t View.chartSymbolScale(range:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v18, 0, sizeof(v18));
  v19 = -256;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1AAD41188(0, v5, 0);
    v6 = v17;
    v8 = a1 + 32;
    do
    {
      sub_1AACAEF68(v8, v15);
      v17 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1AAD41188((v9 > 1), v10 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v10 + 1;
      v11 = v6 + 40 * v10;
      v12 = v15[0];
      v13 = v15[1];
      *(v11 + 64) = v16;
      *(v11 + 32) = v12;
      *(v11 + 48) = v13;
      v8 += 40;
      --v5;
    }

    while (v5);
  }

  sub_1AACB0818(6, v18, v6, 0, 0x80u, 0, 255, a2, a3);
}

uint64_t View.chartSymbolScale<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a1;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v32 = a2;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  KeyPath = swift_getKeyPath();
  v12 = sub_1AAF90144();
  WitnessTable = swift_getWitnessTable();
  sub_1AACB00E0(sub_1AAE96F5C, v31, v12, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);

  v15 = sub_1AACAF550(v14, a3, a6);
  v17 = v16;
  swift_bridgeObjectRelease_n();
  v46 = 0;
  v47 = 0;
  v48 = v17 << 8;
  v44 = a1;
  v45 = v15;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v19 = sub_1AACB00E0(sub_1AAE96F9C, v24, v12, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v18);
  sub_1AACB0818(6, &v45, v19, 0, 0x80u, 0, 255, a2, a5);

  return sub_1AACAF33C(v45, v46, v47, v48);
}

uint64_t sub_1AAE94F98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v5 = *a2;
  v6 = MEMORY[0x1E69E77B0];
  v7 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - v13;
  (*(v8 + 16))(v17 - v13, v12);
  v15 = *(v7 + 48);
  (*(*(*(v5 + *v6 + 8) - 8) + 32))(v10, v14);
  (*(*(a3 - 8) + 32))(&v10[v15], &v14[v15], a3);
  swift_getAtKeyPath();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AAE95170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v18 - v12;
  (*(v14 + 16))(&v18 - v12, a1, TupleTypeMetadata2, v11);
  v15 = *(TupleTypeMetadata2 + 48);
  a5[3] = a3;
  a5[4] = a4;
  v16 = sub_1AACB2508(a5);
  (*(*(a3 - 8) + 32))(v16, &v13[v15], a3);
  return (*(*(a2 - 8) + 8))(v13, a2);
}

uint64_t View.chartSymbolScale<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v26 = a2;
  v27 = a4;
  v28 = a5;
  KeyPath = swift_getKeyPath();
  sub_1AAE3E670();
  v9 = sub_1AAF90144();
  WitnessTable = swift_getWitnessTable();
  sub_1AACB00E0(sub_1AAE96FC4, v25, v9, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v13 = sub_1AACAF550(v12, a3, a5);
  v15 = v14;
  swift_bridgeObjectRelease_n();
  v36 = 0;
  v37 = 0;
  v38 = v15 << 8;
  v34 = a1;
  v35 = v13;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v17 = sub_1AACB00E0(sub_1AAE96FE8, v20, v9, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);
  sub_1AACB0818(6, &v35, v17, 0, 0x80u, 0, 255, a2, a4);

  return sub_1AACAF33C(v35, v36, v37, v38);
}

uint64_t sub_1AAE954B0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1E69E77B0];
  v4 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v5 + 16))(&v14 - v10, v9);
  v12 = *(v4 + 48);
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(v7, v11);
  sub_1AACBB198(&v11[v12], &v7[v12]);
  swift_getAtKeyPath();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AAE95658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1AAE3E670();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, TupleTypeMetadata2, v7);
  sub_1AACBB198(&v9[*(TupleTypeMetadata2 + 48)], a3);
  return (*(*(a2 - 8) + 8))(v9, a2);
}

uint64_t sub_1AAE957CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), unsigned __int8 a12)
{
  v29 = a4;
  v28 = a8;
  HIDWORD(v27) = a12;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  sub_1AAEF4338(v19, a5, a10, &v33);
  v30 = v33;
  v31 = v34;
  v32 = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = a11(a2, a3, AssociatedTypeWitness, a6, a10, a9);
  v24 = v23;
  LOBYTE(a6) = v25;

  sub_1AACB0818(SBYTE4(v27), &v30, v22, v24, a6 | 0xE0, 0, 255, v29, a7);
  sub_1AADC68D8(v22, v24, a6);
  return sub_1AACAF33C(v30, *(&v30 + 1), v31, v32);
}

uint64_t sub_1AAE959DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), char a10)
{
  memset(v18, 0, sizeof(v18));
  v19 = -256;
  v12 = a9();
  v14 = v13;
  v16 = v15;

  sub_1AACB0818(a10, v18, v12, v14, v16 | 0xE0, 0, 255, a3, a6);

  return sub_1AADC68D8(v12, v14, v16);
}

void *View.chartLineStyleScale<A, B>(domain:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a7 + 8))(&v23, a4, a7);
  v20 = v23;
  v21 = v24;
  v22 = v25;
  result = (*(a8 + 16))(v18, a5, a8);
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v14 = v18[0];
    v13 = v18[1];
    sub_1AACB0818(8, &v20, v18[0], 0, 0xC0u, 0, 255, a3, a6);
    sub_1AAE96F18(v14, v13, 0);
    v15 = v20;
    v16 = v21;
    v17 = v22;

    return sub_1AACAF33C(v15, *(&v15 + 1), v16, v17);
  }

  return result;
}

uint64_t sub_1AAE95BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  (*(a5 + 8))(&v16, a3, a5);
  v13 = v16;
  v14 = v17;
  v15 = v18;
  sub_1AACB0818(a6, &v13, 0, 0, 0xFCu, 0, 255, a2, a4);
  v9 = v13;
  v10 = v14;
  v11 = v15;

  return sub_1AACAF33C(v9, *(&v9 + 1), v10, v11);
}

void *View.chartLineStyleScale<A>(range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  memset(v12, 0, sizeof(v12));
  v13 = -256;
  result = (*(a5 + 16))(v10, a3, a5);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v9 = v10[0];
    v8 = v10[1];
    sub_1AACB0818(8, v12, v10[0], 0, 0xC0u, 0, 255, a2, a4);

    return sub_1AAE96F18(v9, v8, 0);
  }

  return result;
}

uint64_t View.chartLineStyleScale<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v31 = a2;
  v32 = a4;
  v33 = a5;
  KeyPath = swift_getKeyPath();
  v9 = sub_1AAF90144();
  WitnessTable = swift_getWitnessTable();
  sub_1AACB00E0(sub_1AAE9700C, v30, v9, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v13 = sub_1AACAF550(v12, a3, a5);
  v15 = v14;
  swift_bridgeObjectRelease_n();
  v41 = 0;
  v42 = 0;
  v43 = v15 << 8;
  v39 = a1;
  v40 = v13;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = swift_getKeyPath();
  v17 = sub_1AACB00E0(sub_1AAE97030, v20, v9, MEMORY[0x1E697DD48], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);

  sub_1AACB0818(8, &v40, v17, 0, 0xC0u, 0, 255, a2, a4);

  return sub_1AACAF33C(v40, v41, v42, v43);
}

uint64_t sub_1AAE95F90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v3 = *a2;
  v4 = MEMORY[0x1E69E77B0];
  v5 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - v11;
  (*(v6 + 16))(v21 - v11, v10);
  v13 = *(v5 + 48);
  v14 = *&v12[v13];
  v15 = *&v12[v13 + 8];
  v16 = *&v12[v13 + 16];
  v17 = *&v12[v13 + 24];
  v18 = *&v12[v13 + 32];
  v19 = &v8[v13];
  (*(*(*(v3 + *v4 + 8) - 8) + 32))(v8, v12);
  *v19 = v14;
  *(v19 + 1) = v15;
  *(v19 + 2) = v16;
  *(v19 + 3) = v17;
  *(v19 + 4) = v18;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AAE96168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  (*(v7 + 16))(&v22 - v12, a1, TupleTypeMetadata2, v11);
  v14 = *(TupleTypeMetadata2 + 48);
  v15 = *&v13[v14];
  v16 = *&v13[v14 + 8];
  v17 = *&v13[v14 + 16];
  v18 = *&v13[v14 + 24];
  v19 = *&v13[v14 + 32];
  v20 = &v9[v14];
  (*(*(a4 - 8) + 32))(v9, v13, a4);
  *v20 = v15;
  *(v20 + 1) = v16;
  *(v20 + 2) = v17;
  *(v20 + 3) = v18;
  *(v20 + 4) = v19;
  swift_getAtKeyPath();
  return (*(v7 + 8))(v9, TupleTypeMetadata2);
}

void *View.chartSymbolSizeScale<A, B>(domain:range:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a3;
  v13 = *(a3 + 8);
  (*(a8 + 8))(&v28, a5, a8);
  v25 = v28;
  v26 = v29;
  v27 = v30;
  result = (*(a9 + 16))(&v22, a6, a9);
  v15 = v22;
  if (v24)
  {
    if (v24 != 2)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v17 = v23;
    v18 = v23;
    if (v13 == 255)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v16 = 32;
    if (v13 == 255)
    {
LABEL_6:
      v12 = 0;
      LOBYTE(v13) = -1;
      v17 = v18;
    }
  }

  sub_1AACB0818(7, &v25, v22, v17, v16, v12, v13, a4, a7);
  sub_1AACC0710(v15, v17, v16);
  v19 = v25;
  v20 = v26;
  v21 = v27;

  return sub_1AACAF33C(v19, *(&v19 + 1), v20, v21);
}

void *View.chartSymbolSizeScale<A>(range:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  memset(v18, 0, sizeof(v18));
  v19 = -256;
  result = (*(a6 + 16))(&v15, a4, a6);
  v11 = v15;
  if (v17)
  {
    if (v17 != 2)
    {
      __break(1u);
      return result;
    }

    v12 = 0;
    v13 = v16;
    v14 = v16;
    if (v9 == 255)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = 32;
    if (v9 == 255)
    {
LABEL_6:
      v8 = 0;
      LOBYTE(v9) = -1;
      v13 = v14;
    }
  }

  sub_1AACB0818(7, v18, v15, v13, v12, v8, v9, a3, a5);

  return sub_1AACC0710(v11, v13, v12);
}

uint64_t sub_1AAE96630(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  memset(v8, 0, sizeof(v8));
  v9 = -256;
  if (v5 == 255)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return sub_1AACB0818(a4, v8, 0, 0, 0xFCu, v6, v5, a2, a3);
}

uint64_t View.chartSymbolSizeScale<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v31 = a2;
  v32 = a4;
  v33 = a5;
  KeyPath = swift_getKeyPath();
  v9 = sub_1AAF90144();
  WitnessTable = swift_getWitnessTable();
  sub_1AACB00E0(sub_1AAE97058, v30, v9, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v13 = sub_1AACAF550(v12, a3, a5);
  v15 = v14;
  swift_bridgeObjectRelease_n();
  v41 = 0;
  v42 = 0;
  v43 = v15 << 8;
  v39 = a1;
  v40 = v13;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = swift_getKeyPath();
  v17 = sub_1AACB00E0(sub_1AAE9707C, v20, v9, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);

  sub_1AACB0818(7, &v40, v17, 0, 0x20u, 0, 255, a2, a4);

  return sub_1AACAF33C(v40, v41, v42, v43);
}

uint64_t sub_1AAE96888(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1E69E77B0];
  v4 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(v5 + 16))(&v15 - v10, v9);
  v12 = *(v4 + 48);
  v13 = *&v11[v12];
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(v7, v11);
  *&v7[v12] = v13;
  swift_getAtKeyPath();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AAE96A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v7 + 16))(&v17 - v12, a1, TupleTypeMetadata2, v11);
  v14 = *(TupleTypeMetadata2 + 48);
  v15 = *&v13[v14];
  (*(*(a4 - 8) + 32))(v9, v13, a4);
  *&v9[v14] = v15;
  swift_getAtKeyPath();
  return (*(v7 + 8))(v9, TupleTypeMetadata2);
}

uint64_t sub_1AAE96C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t), char a10)
{
  v25 = a4;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  sub_1AAEF4338(v17, a5, a8, &v29);
  v26 = v29;
  v27 = v30;
  v28 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = a9(a2, a3, AssociatedTypeWitness, a8);
  v22 = v21;
  LOBYTE(a2) = v23;

  sub_1AACB0818(a10, &v26, v20, v22, a2 | 0xE0, 0, 255, v25, a6);
  sub_1AADC68D8(v20, v22, a2);
  return sub_1AACAF33C(v26, *(&v26 + 1), v27, v28);
}

uint64_t sub_1AAE96DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), char a8)
{
  memset(v17, 0, sizeof(v17));
  v18 = -256;
  v11 = a7();
  v13 = v12;
  v15 = v14;

  sub_1AACB0818(a8, v17, v11, v13, v15 | 0xE0, 0, 255, a3, a5);

  return sub_1AADC68D8(v11, v13, v15);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AAE96EC0()
{
  v1 = *(v0 + 32);

  v1(&v2);
}

uint64_t sub_1AAE96F18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

unint64_t sub_1AAE970A4(uint64_t a1)
{
  result = sub_1AAE970CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AAE970CC()
{
  result = qword_1EB4266D0;
  if (!qword_1EB4266D0)
  {
    sub_1AACB6480(255, &qword_1EB4266D8, sub_1AAE9717C, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
    sub_1AAE971D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4266D0);
  }

  return result;
}

unint64_t sub_1AAE9717C()
{
  result = qword_1EB4266E0;
  if (!qword_1EB4266E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4266E0);
  }

  return result;
}

unint64_t sub_1AAE971D0()
{
  result = qword_1EB4266E8;
  if (!qword_1EB4266E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4266E8);
  }

  return result;
}

uint64_t sub_1AAE97224(uint64_t a1)
{
  result = sub_1AAE972E4(&qword_1EB4266F0, &qword_1ED9B2A88, MEMORY[0x1E69E62F8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE97284(uint64_t a1)
{
  result = sub_1AAE972E4(&qword_1EB4266F8, qword_1EB426700, MEMORY[0x1E69E6948]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE972E4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AACB6194(255, a2, MEMORY[0x1E69E7DE0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAE97334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 initializeWithCopy for PartialSpec.ScaleDomain(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PartialSpec.ScaleDomain(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 26))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 25);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialSpec.ScaleDomain(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAE97410()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAE97460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAE974B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AAE9751C()
{
  sub_1AAF8DF74();
  sub_1AACAA3E4();
  return swift_getWitnessTable();
}

uint64_t sub_1AAE97584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 73))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAE975D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1AAE97628()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAE9767C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  *(a2 + 24) = v6;
  v4 = sub_1AACB2508(a2);
  return (*(*(v6 - 8) + 16))(v4, a1);
}

uint64_t sub_1AAE97730()
{
  sub_1AAD9AA1C();

  return sub_1AAF8E144();
}

uint64_t sub_1AAE97778(uint64_t a1)
{
  sub_1AACBFDA4(a1, v3);
  sub_1AACBFDA4(v3, &v2);
  sub_1AAD9AA1C();
  sub_1AAF8E154();
  return sub_1AAD10630(v3);
}

double sub_1AAE977D8()
{
  qword_1ED9C3510 = 0;
  result = 0.0;
  xmmword_1ED9C34F0 = 0u;
  unk_1ED9C3500 = 0u;
  byte_1ED9C3518 = -1;
  xmmword_1ED9C3520 = 0u;
  unk_1ED9C3530 = 0u;
  qword_1ED9C3540 = 0;
  byte_1ED9C3548 = -1;
  xmmword_1ED9C3550 = 0u;
  unk_1ED9C3560 = 0u;
  qword_1ED9C3570 = 0;
  byte_1ED9C3578 = -1;
  xmmword_1ED9C3580 = 0u;
  unk_1ED9C3590 = 0u;
  qword_1ED9C35A0 = 0;
  byte_1ED9C35A8 = -1;
  xmmword_1ED9C35B0 = 0u;
  unk_1ED9C35C0 = 0u;
  qword_1ED9C35D0 = 0;
  byte_1ED9C35D8 = -1;
  xmmword_1ED9C35E0 = 0u;
  unk_1ED9C35F0 = 0u;
  qword_1ED9C3600 = 0;
  byte_1ED9C3608 = -1;
  xmmword_1ED9C3610 = 0u;
  unk_1ED9C3620 = 0u;
  qword_1ED9C3630 = 0;
  byte_1ED9C3638 = -1;
  xmmword_1ED9C3640 = 0u;
  unk_1ED9C3650 = 0u;
  qword_1ED9C3660 = 0;
  byte_1ED9C3668 = -1;
  xmmword_1ED9C3670 = 0u;
  unk_1ED9C3680 = 0u;
  unk_1ED9C368F = 0;
  return result;
}

uint64_t sub_1AAE97854@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ED9B36D8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1AACBFDA4(&xmmword_1ED9C34F0, v2);
}

uint64_t sub_1AAE978C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAE99CBC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1AAE97954(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AAE994E0(v5, v7) & 1;
}

uint64_t sub_1AAE979C0(uint64_t a1, uint64_t a2)
{
  sub_1AAF8FE74();
  v4 = sub_1AAF8EF74();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  (*(v8 + 16))(&v10[-v6], a2, v5);
  sub_1AAE88B00(v7, v10);
  result = sub_1AAE9992C(v10, a1, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  *(a1 + 418) = 1;
  return result;
}

uint64_t sub_1AAE97B10(uint64_t a1, uint64_t a2)
{
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  v4 = sub_1AAF8EF74();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  (*(v8 + 16))(&v10[-v6], a2, v5);
  sub_1AAE88C3C(v7, v10);
  result = sub_1AAE9992C(v10, a1 + 48, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding);
  *(a1 + 418) = 1;
  return result;
}

uint64_t sub_1AAE97C78(uint64_t a1, uint64_t a2)
{
  sub_1AAF8FE74();
  v4 = sub_1AAF8EF74();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  (*(v8 + 16))(&v10[-v6], a2, v5);
  sub_1AAE88B00(v7, v10);
  result = sub_1AAE9992C(v10, a1 + 96, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  *(a1 + 418) = 1;
  return result;
}

uint64_t sub_1AAE97DC8(uint64_t a1, uint64_t a2)
{
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  v4 = sub_1AAF8EF74();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  (*(v8 + 16))(&v10[-v6], a2, v5);
  sub_1AAE88C3C(v7, v10);
  result = sub_1AAE9992C(v10, a1 + 144, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding);
  *(a1 + 418) = 1;
  return result;
}

uint64_t sub_1AAE97F34(uint64_t a1, uint64_t a2)
{
  sub_1AAF8FE74();
  v4 = sub_1AAF8EF74();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  (*(v8 + 16))(&v10[-v6], a2, v5);
  sub_1AAE88B00(v7, v10);
  result = sub_1AAE9992C(v10, a1 + 288, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  *(a1 + 418) = 1;
  return result;
}

uint64_t sub_1AAE98084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v19[2] = a6;
  v19[0] = a5;
  v19[1] = a7;
  sub_1AAF8FE74();
  v11 = sub_1AAF8EF74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - v13;
  swift_getKeyPath();
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  v17 = v19[0];
  *(v16 + 4) = a4;
  *(v16 + 5) = v17;
  (*(v12 + 32))(&v16[v15], v14, v11);
  sub_1AAF8EBB4();
}

uint64_t sub_1AAE98210(uint64_t a1, uint64_t a2)
{
  sub_1AAF8FE74();
  v4 = sub_1AAF8EF74();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  (*(v8 + 16))(&v10[-v6], a2, v5);
  sub_1AAE88B00(v7, v10);
  result = sub_1AAE9992C(v10, a1 + 192, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  *(a1 + 418) = 1;
  return result;
}

uint64_t sub_1AAE98340(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  sub_1AAF8FE74();
  v8 = *(sub_1AAF8EF74() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_1AAE9841C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a8;
  v22[1] = a7;
  v23 = a5;
  v24 = a9;
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  v14 = sub_1AAF8EF74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - v16;
  swift_getKeyPath();
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = a3;
  v20 = v23;
  *(v19 + 4) = a4;
  *(v19 + 5) = v20;
  *(v19 + 6) = a6;
  (*(v15 + 32))(&v19[v18], v17, v14);
  sub_1AAF8EBB4();
}

uint64_t sub_1AAE985C0(uint64_t a1, uint64_t a2)
{
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  v4 = sub_1AAF8EF74();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  (*(v8 + 16))(&v10[-v6], a2, v5);
  sub_1AAE88C3C(v7, v10);
  result = sub_1AAE9992C(v10, a1 + 240, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding);
  *(a1 + 418) = 1;
  return result;
}

uint64_t sub_1AAE986F0()
{
  v1 = *(v0 + 24);
  v2 = sub_1AAF8F5D4();
  sub_1AAF8FE74();
  v3 = (sub_1AAF8EF74() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(*v3 + 64);

  v7 = v0 + v5 + v3[10];
  if (!(*(*(v2 - 8) + 48))(v7, 1, v2))
  {
    v8 = *(*(v1 - 8) + 8);
    v8(v7, v1);
    v8(v7 + *(v2 + 36), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1AAE9887C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  v9 = *(sub_1AAF8EF74() - 8);
  v10 = v2 + ((*(v9 + 80) + 56) & ~*(v9 + 80));

  return a2(a1, v10, v4, v5, v6, v7, v8);
}

uint64_t View.chart3DSurfaceNormalSelection(value:)(uint64_t *a1)
{
  swift_getKeyPath();
  v6 = *a1;
  v2 = swift_allocObject();
  v3 = *(a1 + 1);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  sub_1AAE98AEC(&v6, &v5);

  sub_1AAF8EBB4();
}

uint64_t sub_1AAE98A34(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = a2[3];
  v10 = a2[2];
  v6 = a2[4] & 1;
  v7 = *(a1 + 384);
  v8 = *(a1 + 392);
  v12 = *a2;
  v4 = v12;
  sub_1AAE98AEC(&v12, v11);

  result = sub_1AAE998E8(v7, v8);
  *(a1 + 384) = v4;
  *(a1 + 392) = v3;
  *(a1 + 400) = v10;
  *(a1 + 408) = v5;
  *(a1 + 416) = v6;
  *(a1 + 418) = 1;
  return result;
}

uint64_t sub_1AAE98B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAE99D10();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1AAE98C18()
{
  sub_1AACBFB48();
  sub_1AAF8E144();
  return v1;
}

uint64_t View.chartGesture<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a1;
  v22 = a6;
  v23 = a7;
  sub_1AACD21D4(255, &qword_1EB426788, &type metadata for ChartSelectionConfiguration, MEMORY[0x1E6980B20]);
  v11 = sub_1AAF8DF74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  swift_getKeyPath();
  sub_1AAF8EBB4();

  swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v16 = v21;
  v17 = v22;
  v15[4] = a5;
  v15[5] = v17;
  v15[6] = v16;
  v15[7] = a2;
  v26 = sub_1AAE99058;
  v27 = v15;
  v18 = sub_1AAE99068();
  v24 = a5;
  v25 = v18;

  swift_getWitnessTable();
  sub_1AAF8EAE4();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1AAE98E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;

  v14 = sub_1AAF8F124();
  v16 = v15;
  sub_1AAE996DC();
  sub_1AAE997E4();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = sub_1AAE99894();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.chartOverlay<A>(alignment:content:)(v14, v16, sub_1AAE996CC, v13, &type metadata for ChartPlotContent, OpaqueTypeMetadata2, v18, OpaqueTypeConformance2);

  sub_1AACCC7DC();
  sub_1AAF8E674();
  sub_1AAF8DF74();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1AAF8EF44();
}

unint64_t sub_1AAE99068()
{
  result = qword_1EB426790;
  if (!qword_1EB426790)
  {
    sub_1AACD21D4(255, &qword_1EB426788, &type metadata for ChartSelectionConfiguration, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426790);
  }

  return result;
}

uint64_t sub_1AAE990E4()
{
  sub_1AACD21D4(255, &qword_1EB426788, &type metadata for ChartSelectionConfiguration, MEMORY[0x1E6980B20]);
  sub_1AAF8DF74();
  sub_1AAE99068();
  return swift_getWitnessTable();
}

void sub_1AAE99178()
{
  if (!qword_1EB426798)
  {
    sub_1AACD21D4(255, qword_1ED9B37F8, &type metadata for ChartGestureConfiguration, MEMORY[0x1E69E6720]);
    v0 = sub_1AAF8E724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB426798);
    }
  }
}

uint64_t sub_1AAE991F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AAE9923C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v26 = a4;
  v30 = a5;
  v29 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE996DC();
  v12 = v11;
  v25 = sub_1AAE997E4();
  v31 = v12;
  v32 = a3;
  v33 = v25;
  v34 = a4;
  v27 = MEMORY[0x1E6981420];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v31 = sub_1AAF8ECE4();
  LOWORD(v32) = 256;
  BYTE2(v32) = 0;
  a2(a1);
  sub_1AAF8D8F4();
  v19 = swift_checkMetadataState();
  v21 = v25;
  v20 = v26;
  sub_1AAF8EBF4();
  (*(v29 + 8))(v10, a3);

  v31 = v19;
  v32 = a3;
  v33 = v21;
  v34 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AACE0800(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v23 = *(v28 + 8);
  v23(v15, OpaqueTypeMetadata2);
  sub_1AACE0800(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v23)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_1AAE994E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {
      sub_1AAE995A0();
      if (AGCompareValues())
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

void sub_1AAE995A0()
{
  if (!qword_1EB426350)
  {
    sub_1AAE8A70C(255);
    v0 = sub_1AAF8EF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB426350);
    }
  }
}

uint64_t sub_1AAE995F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAE99654(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AAE99654(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACD21D4(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AAE996DC()
{
  if (!qword_1EB4267B8)
  {
    sub_1AADB6858();
    sub_1AAE9977C(255, &qword_1ED9B2BF0, sub_1AACCC830, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4267B8);
    }
  }
}

void sub_1AAE9977C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AAE997E4()
{
  result = qword_1EB4267C0;
  if (!qword_1EB4267C0)
  {
    sub_1AAE996DC();
    sub_1AAE991F4(&qword_1EB424798, sub_1AADB6858);
    sub_1AACCFA24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4267C0);
  }

  return result;
}

unint64_t sub_1AAE99894()
{
  result = qword_1EB4267C8;
  if (!qword_1EB4267C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4267C8);
  }

  return result;
}

uint64_t sub_1AAE998E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1AAE9992C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACD21D4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for ChartSelectionState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ChartSelectionState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AAE99B30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1AAE99B8C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAE99BF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1AAE99C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 40) = ~a2;
    }
  }

  return result;
}

unint64_t sub_1AAE99CBC()
{
  result = qword_1EB4267D0;
  if (!qword_1EB4267D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4267D0);
  }

  return result;
}

unint64_t sub_1AAE99D10()
{
  result = qword_1EB4267D8;
  if (!qword_1EB4267D8)
  {
    sub_1AACD21D4(255, qword_1ED9B37F8, &type metadata for ChartGestureConfiguration, MEMORY[0x1E69E6720]);
    sub_1AAE99DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4267D8);
  }

  return result;
}

unint64_t sub_1AAE99DAC()
{
  result = qword_1EB4267E0;
  if (!qword_1EB4267E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4267E0);
  }

  return result;
}

uint64_t ChartContent._horizontalConnection(gradient:width:tolerance:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v13 = *(a4 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v6, v17, v14);
  if (a3)
  {
    v18 = 0.5;
  }

  else
  {
    v18 = a2;
  }

  (*(v13 + 32))(a5, v16, a4);
  v19 = type metadata accessor for _HorizontalConnection();
  *(a5 + v19[9]) = a1;
  *(a5 + v19[10]) = a6;
  *(a5 + v19[11]) = v18;
}

uint64_t sub_1AAE99F4C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE99FD0(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *sub_1AAE9A11C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
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

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
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

void sub_1AAE9A304(unint64_t a1, char **a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 60 == 4)
  {
    v25 = sub_1AAF8E244();
    v26 = *(v25 - 8);
    (*(v26 + 8))(a4, v25);
    v27 = swift_projectBox();
    sub_1AAE9C9D4(v27, v14, type metadata accessor for SgRectangle);
    v28 = *(v14 + 8);
    v35 = *(v14 + 24);
    v36 = v28;
    v29 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AAD1DAB4(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AAD1DAB4((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[32 * v31];
    v33 = v35;
    *(v32 + 2) = v36;
    *(v32 + 3) = v33;
    *a2 = v29;
    v34 = *(v14 + 5);
    if (v34 <= *(v14 + 8))
    {
      v34 = *(v14 + 8);
    }

    if (v34 <= *(v14 + 7))
    {
      v34 = *(v14 + 7);
    }

    if (v34 <= *(v14 + 6))
    {
      v34 = *(v14 + 6);
    }

    if (v34 <= *a3)
    {
      v34 = *a3;
    }

    *a3 = v34;
    (*(v26 + 16))(a4, &v14[*(v12 + 40)], v25);
    v23 = type metadata accessor for SgRectangle;
    v24 = v14;
  }

  else
  {
    if (a1 >> 60)
    {
      return;
    }

    v18 = swift_projectBox();
    sub_1AAE9C9D4(v18, v17, type metadata accessor for SgGroup);
    v19 = *(v17 + 1);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 32);
      do
      {
        v22 = *v21++;

        sub_1AAE9A304(v22, a2, a3, a4, a5, a6);

        --v20;
      }

      while (v20);
    }

    v23 = type metadata accessor for SgGroup;
    v24 = v17;
  }

  sub_1AAE9CA3C(v24, v23);
}

void sub_1AAE9A600(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *&v228 = a4;
  v226 = a1;
  v208 = a5;
  v7 = MEMORY[0x1E69E6720];
  sub_1AAD04B14(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v206 = &v186 - v9;
  v205 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v205);
  v199 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8D134();
  v224 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD04B14(0, &qword_1ED9AEE38, MEMORY[0x1E695EF00], v7);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v221 = &v186 - v15;
  v16 = sub_1AAF8D114();
  v202 = *(v16 - 8);
  v203 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v201 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE9BEE8();
  v204 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v200 = &v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE9BF48();
  v223 = v20;
  v198 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v222 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_1AAF8D164();
  v209 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v212 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v211 = &v186 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v214 = &v186 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v210 = &v186 - v28;
  v29 = sub_1AAF8E244();
  v207 = *(v29 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v186 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 8);
  LOBYTE(v248) = *a2;
  v33 = v248;
  v249 = v34;
  v35 = *(v228 + 40);
  v35(v245, v226, &v248, a3, v30);
  if (v33)
  {
    *v208 = v245[0];
  }

  else
  {
    v196 = v245[0];
    LOBYTE(v248) = v33;
    v249 = v34;
    v36 = v226;
    v37 = v228;
    (v35)(v245, v226, &v248, a3, v228);
    v38 = v245[0];
    v239 = 0.0;
    v240 = MEMORY[0x1E69E7CC0];
    v39 = *MEMORY[0x1E697F468];
    v40 = *(v207 + 104);
    v197 = v29;
    v40(v32, v39, v29);
    v195 = v38;
    v220 = v32;
    sub_1AAE9A304(v38, &v240, &v239, v32, a3, v37);
    v41 = type metadata accessor for _HorizontalConnection();
    v42 = *(v41 + 40);
    v43 = *(v41 + 44);
    v194 = v41;
    v44 = *(v36 + v42);
    v217 = *(v36 + v43);
    v227 = v44 * 0.5 + v239;
    *&v228 = v44 * 0.5;
    sub_1AAE9BADC(&v240);
    v191 = 0;
    v45 = v240;
    v46 = v240 + 56;
    v47 = *(v240 + 2);
    v48 = v47 != 0;
    swift_bridgeObjectRetain_n();
    v49 = 0;
    v218 = v48;
    v219 = v45 + 56;
    v225 = v45;
    v50 = v48;
LABEL_4:
    v51 = 32 * v49;
    v52 = &v46[32 * v48];
    while (v47 != v49)
    {
      if (v49 >= *(v45 + 2))
      {
        goto LABEL_80;
      }

      if (v47 == v50)
      {
        break;
      }

      if (v48 < v218 || v50 >= v47)
      {
        goto LABEL_81;
      }

      v54 = *&v219[v51 - 24];
      v53 = *&v219[v51 - 16];
      v56 = *&v219[v51 - 8];
      v55 = *&v219[v51];
      ++v50;
      v254.size.width = *(v52 - 1);
      v254.size.height = *v52;
      v254.origin.y = *(v52 - 2);
      *&v215 = *(v52 - 3);
      *&v254.origin.x = v215;
      height = v254.size.height;
      y = v254.origin.y;
      width = v254.size.width;
      MinX = CGRectGetMinX(v254);
      v60 = v54;
      v255.origin.x = v54;
      v61 = v53;
      v255.origin.y = v53;
      v255.size.width = v56;
      v255.size.height = v55;
      v51 += 32;
      v52 += 4;
      ++v49;
      if (MinX - CGRectGetMaxX(v255) < v217)
      {
        v193 = v60;
        v256.origin.x = v60;
        v256.origin.y = v53;
        v256.size.width = v56;
        v256.size.height = v55;
        MaxX = CGRectGetMaxX(v256);
        v63 = *&v215;
        v64 = height;
        *&v257.origin.x = v215;
        v257.origin.y = y;
        v192 = width;
        v257.size.width = width;
        v257.size.height = height;
        v65 = CGRectGetMinX(v257);
        if (v65 >= MaxX)
        {
          v65 = MaxX;
        }

        v190 = v65;
        v66 = v193;
        v258.origin.x = v193;
        v258.origin.y = v61;
        v258.size.width = v56;
        v258.size.height = v55;
        MinY = CGRectGetMinY(v258);
        v259.origin.x = v63;
        v259.origin.y = y;
        v259.size.width = v192;
        v259.size.height = v64;
        v68 = CGRectGetMinY(v259);
        if (v68 >= MinY)
        {
          v68 = MinY;
        }

        v189 = v68;
        v260.origin.x = v66;
        v260.origin.y = v61;
        v260.size.width = v56;
        v260.size.height = v55;
        v69 = CGRectGetMaxX(v260);
        v261.origin.x = v63;
        v261.origin.y = y;
        v70 = v192;
        v261.size.width = v192;
        v261.size.height = v64;
        v71 = CGRectGetMinX(v261);
        if (v69 > v71)
        {
          v71 = v69;
        }

        v188 = v71;
        v262.origin.x = v193;
        v262.origin.y = v61;
        v262.size.width = v56;
        v262.size.height = v55;
        v72 = CGRectGetMaxX(v262);
        v263.origin.x = v63;
        v263.origin.y = y;
        v263.size.width = v70;
        v263.size.height = v64;
        v73 = CGRectGetMinX(v263);
        if (v73 >= v72)
        {
          v73 = v72;
        }

        v187 = v73;
        v74 = v193;
        v264.origin.x = v193;
        v264.origin.y = v61;
        v264.size.width = v56;
        v264.size.height = v55;
        MaxY = CGRectGetMaxY(v264);
        v265.origin.x = v63;
        v265.origin.y = y;
        v265.size.width = v70;
        v76 = height;
        v265.size.height = height;
        v77 = CGRectGetMaxY(v265);
        if (MaxY > v77)
        {
          v77 = MaxY;
        }

        v186 = v77;
        v266.origin.x = v74;
        v266.origin.y = v61;
        v266.size.width = v56;
        v266.size.height = v55;
        v78 = CGRectGetMinY(v266);
        *&v267.origin.x = v215;
        v267.origin.y = y;
        v267.size.width = v70;
        v267.size.height = v76;
        v79 = CGRectGetMinY(v267);
        if (v79 >= v78)
        {
          v80 = v78;
        }

        else
        {
          v80 = v79;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v225 = sub_1AAD1DAB4(0, *(v225 + 2) + 1, 1, v225);
        }

        v46 = v219;
        v82 = *(v225 + 2);
        v81 = *(v225 + 3);
        if (v82 >= v81 >> 1)
        {
          v225 = sub_1AAD1DAB4((v81 > 1), v82 + 1, 1, v225);
        }

        v83 = v188 - v187;
        v84 = v186 - v80;
        v85 = v225;
        *(v225 + 2) = v82 + 1;
        v86 = &v85[32 * v82];
        v87 = v189;
        *(v86 + 4) = v190;
        *(v86 + 5) = v87;
        *(v86 + 6) = v83;
        *(v86 + 7) = v84;
        v48 = v50;
        goto LABEL_4;
      }
    }

    swift_unknownObjectRelease();
    v238 = MEMORY[0x1E69E7CC0];
    v88 = v225;
    v89 = *(v225 + 2);
    if (v89)
    {
      v90 = (v225 + 56);
      *&v91 = MEMORY[0x1E69E7CC0];
      v93 = v227;
      v92 = *&v228;
      do
      {
        v94 = *(v90 - 3);
        v95 = *(v90 - 2);
        v96 = *(v90 - 1);
        v97 = *v90;
        v268.origin.x = v94;
        v268.origin.y = v95;
        v268.size.width = v96;
        v268.size.height = *v90;
        v98 = CGRectGetWidth(v268);
        v269.origin.x = v94;
        v269.origin.y = v95;
        v269.size.width = v96;
        v269.size.height = v97;
        v99 = CGRectGetHeight(v269);
        if (v99 >= v98)
        {
          v99 = v98;
        }

        v100 = v92 + v99 * 0.5;
        if (v100 < v93)
        {
          v93 = v100;
        }

        v270.origin.x = v94;
        v270.origin.y = v95;
        v270.size.width = v96;
        v270.size.height = v97;
        v101 = CGRectGetMinX(v270);
        v271.origin.x = v94;
        v271.origin.y = v95;
        v271.size.width = v96;
        v271.size.height = v97;
        v102 = CGRectGetMinY(v271);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v91 = COERCE_DOUBLE(sub_1AAD69A9C(0, *(v91 + 2) + 1, 1, v91));
        }

        v104 = *(v91 + 2);
        v103 = *(v91 + 3);
        if (v104 >= v103 >> 1)
        {
          *&v91 = COERCE_DOUBLE(sub_1AAD69A9C((v103 > 1), v104 + 1, 1, v91));
        }

        v105 = *&v228;
        v106 = v102 - *&v228;
        v92 = *&v228;
        *(v91 + 2) = v104 + 1;
        v107 = &v91[24 * v104];
        v107[4] = v101 - v105;
        v107[5] = v106;
        v107[6] = v93;
        v272.origin.x = v94;
        v272.origin.y = v95;
        v272.size.width = v96;
        v272.size.height = v97;
        v108 = CGRectGetMaxX(v272);
        v273.origin.x = v94;
        v273.origin.y = v95;
        v273.size.width = v96;
        v273.size.height = v97;
        v109 = CGRectGetMinY(v273);
        v111 = *(v91 + 2);
        v110 = *(v91 + 3);
        if (v111 >= v110 >> 1)
        {
          v123 = v109;
          *&v124 = COERCE_DOUBLE(sub_1AAD69A9C((v110 > 1), v111 + 1, 1, v91));
          v109 = v123;
          v92 = *&v228;
          v91 = v124;
        }

        *(v91 + 2) = v111 + 1;
        v112 = &v91[24 * v111];
        v112[4] = v92 + v108;
        v112[5] = v109 - v92;
        v112[6] = v93;
        v274.origin.x = v94;
        v274.origin.y = v95;
        v274.size.width = v96;
        v274.size.height = v97;
        v113 = CGRectGetMinX(v274);
        v275.origin.x = v94;
        v275.origin.y = v95;
        v275.size.width = v96;
        v275.size.height = v97;
        v114 = CGRectGetMaxY(v275);
        v116 = *(v91 + 2);
        v115 = *(v91 + 3);
        if (v116 >= v115 >> 1)
        {
          v125 = v114;
          *&v126 = COERCE_DOUBLE(sub_1AAD69A9C((v115 > 1), v116 + 1, 1, v91));
          v114 = v125;
          v92 = *&v228;
          v91 = v126;
        }

        *(v91 + 2) = v116 + 1;
        v117 = &v91[24 * v116];
        v117[4] = v113 - v92;
        v117[5] = v92 + v114;
        v117[6] = v93;
        v276.origin.x = v94;
        v276.origin.y = v95;
        v276.size.width = v96;
        v276.size.height = v97;
        v118 = CGRectGetMaxX(v276);
        v277.origin.x = v94;
        v277.origin.y = v95;
        v277.size.width = v96;
        v277.size.height = v97;
        v119 = CGRectGetMaxY(v277);
        v121 = *(v91 + 2);
        v120 = *(v91 + 3);
        if (v121 >= v120 >> 1)
        {
          v127 = v119;
          *&v128 = COERCE_DOUBLE(sub_1AAD69A9C((v120 > 1), v121 + 1, 1, v91));
          v119 = v127;
          v91 = v128;
        }

        *(v91 + 2) = v121 + 1;
        v122 = &v91[24 * v121];
        v122[4] = v92 + v118;
        v122[5] = v92 + v119;
        v122[6] = v93;
        v90 += 4;
        --v89;
        v93 = v227;
      }

      while (v89);
      v238 = v91;
    }

    else
    {
      *&v91 = MEMORY[0x1E69E7CC0];
      v93 = v227;
      v92 = *&v228;
    }

    v193 = *&v91;

    sub_1AAF8D124();
    v129 = *(v88 + 2);
    if (v129)
    {
      v130 = 0;
      *&v228 = v209 + 32;
      v131 = (v209 + 8);
      v132 = (v88 + 56);
      while (v130 < *(v88 + 2))
      {
        v136 = *(v132 - 1);
        v135 = *v132;
        v137 = v92;
        v139 = *(v132 - 3);
        v138 = *(v132 - 2);
        v278.origin.x = v139;
        v278.origin.y = v138;
        v278.size.width = v136;
        v278.size.height = *v132;
        v140 = CGRectGetMinX(v278) - v137;
        v279.origin.x = v139;
        v279.origin.y = v138;
        v279.size.width = v136;
        v279.size.height = v135;
        v141 = v137 + CGRectGetMaxX(v279);
        if (v140 > v141)
        {
          goto LABEL_78;
        }

        v280.origin.x = v139;
        v280.origin.y = v138;
        v280.size.width = v136;
        v280.size.height = v135;
        v142 = CGRectGetMinY(v280) - v137;
        v281.origin.x = v139;
        v281.origin.y = v138;
        v281.size.width = v136;
        v281.size.height = v135;
        v143 = v137 + CGRectGetMaxY(v281);
        if (v142 > v143)
        {
          goto LABEL_79;
        }

        v92 = v137;
        v144 = v140 == v141 || v142 == v143;
        v93 = v227;
        if (!v144)
        {
          v145 = v212;
          sub_1AAF8D124();
          v133 = v211;
          v134 = v213;
          (*v228)(v211, v145, v213);
          sub_1AAF8D154();
          (*v131)(v133, v134);
          v88 = v225;
        }

        ++v130;
        v132 += 4;
        if (v129 == v130)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }

LABEL_59:

    (*(v209 + 32))(v210, v214, v213);
    sub_1AAF8E934();
    v146 = MEMORY[0x1E69E7CC0];
    v248 = MEMORY[0x1E69E7CC0];
    sub_1AAE9C0E4(&qword_1ED9AEE48, MEMORY[0x1E695EEE0]);
    sub_1AAD04B14(0, &qword_1ED9AD978, MEMORY[0x1E695EEE0], MEMORY[0x1E69E62F8]);
    sub_1AAE9C008();
    v147 = v201;
    v148 = v203;
    sub_1AAF8FF64();
    sub_1AAF8D144();
    (*(v202 + 8))(v147, v148);
    swift_getOpaqueTypeConformance2();
    sub_1AAF8F744();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v150 = v221;
    v219 = AssociatedConformanceWitness;
    sub_1AAF8FE94();
    v217 = *(v224 + 48);
    v218 = v224 + 48;
    if ((*&v217)(v150, 1, v11) != 1)
    {
      v172 = *(v224 + 32);
      v224 += 32;
      v215 = (v224 - 24);
      height = *&v172;
      v172(v13, v150, v11);
      while (1)
      {
        sub_1AAE9C0E4(&qword_1ED9AEE40, MEMORY[0x1E695EF00]);
        v176 = sub_1AAF8FB34();
        if (v176)
        {
          v177 = v176;
          *&v242 = v146;
          sub_1AAD41350(0, v176 & ~(v176 >> 63), 0);
          v146 = v242;
          sub_1AAF8FB24();
          if (v177 < 0)
          {
            goto LABEL_82;
          }

          do
          {
            v178 = sub_1AAF8FC84();
            v228 = *v179;
            v178(&v229, 0);
            *&v242 = v146;
            v181 = *(v146 + 16);
            v180 = *(v146 + 24);
            if (v181 >= v180 >> 1)
            {
              sub_1AAD41350((v180 > 1), v181 + 1, 1);
              v146 = v242;
            }

            *(v146 + 16) = v181 + 1;
            *(v146 + 16 * v181 + 32) = v228;
            sub_1AAF8FBB4();
            --v177;
          }

          while (v177);
        }

        v182 = sub_1AAE9BC90(1, v146);
        if (v93 > 2.22044605e-12)
        {
          v173 = v241;
          sub_1AAF0AC58(v220, v182, &v238, v241, 0.000001, v93);

          v245[1] = 0;
          v245[2] = 0;
          v245[0] = 0x3FF0000000000000;
          v245[3] = 0x3FF0000000000000;
          v245[4] = 0;
          v245[5] = 0;
          sub_1AAF8E844();
        }

        else
        {
          sub_1AAF8E934();
          v183 = *(v182 + 16);
          if (!v183)
          {
            goto LABEL_83;
          }

          sub_1AAF8E8A4();
          v184 = v183 - 1;
          if (v184)
          {

            v185 = 48;
            do
            {
              sub_1AAF8E8D4();
              v185 += 16;
              --v184;
            }

            while (v184);
          }

          sub_1AAF8E884();

          v246[0] = v229;
          v246[1] = v230;
          v247 = v231;
          v249 = 0;
          v250 = 0;
          v248 = 0x3FF0000000000000;
          v251 = 0x3FF0000000000000;
          v252 = 0;
          v253 = 0;
          v173 = v246;
          sub_1AAF8E844();
        }

        sub_1AAD12C10(v173);
        (*v215)(v13, v11);
        v174 = v221;
        sub_1AAF8FE94();
        v175 = (*&v217)(v174, 1, v11);
        v146 = MEMORY[0x1E69E7CC0];
        if (v175 == 1)
        {
          break;
        }

        (*&height)(v13, v174, v11);
      }
    }

    (*(v198 + 8))(v222, v223);

    sub_1AAF8F244();
    sub_1AAF8F254();
    sub_1AAF8DC54();
    *(&v230 + 1) = MEMORY[0x1E697E3F0];
    v231 = MEMORY[0x1E697E3E0];
    v151 = swift_allocObject();
    *&v229 = v151;
    v152 = v243;
    *(v151 + 16) = v242;
    *(v151 + 32) = v152;
    *(v151 + 48) = v244;
    v232 = 1;
    v153 = v233;
    v154 = v234;
    v155 = v235;
    v156 = v236;
    v227 = v236;
    v157 = v199;
    v158 = &v199[*(v205 + 24)];
    v159 = v237;
    sub_1AACAD248(&v229, v158);
    v160 = type metadata accessor for SgShapeStyle();
    v161 = *(v160 + 32);
    v162 = sub_1AAF8F154();
    (*(*(v162 - 8) + 56))(v158 + v161, 1, 1, v162);
    *(v158 + 41) = 1;
    *(v158 + 48) = 0u;
    *(v158 + 64) = 0u;
    *(v158 + 80) = 0;
    *(v158 + 88) = 0x3FF0000000000000;
    v163 = v158 + *(v160 + 36);
    *v163 = 0;
    *(v163 + 8) = 0;
    *v157 = 0;
    *(v157 + 8) = v153;
    *(v157 + 16) = v154;
    *(v157 + 24) = v155;
    *(v157 + 32) = v156;
    *(v157 + 40) = v159;
    *(v157 + *(v205 + 28)) = 0;
    v164 = type metadata accessor for SgGroup(0);
    *&v228 = swift_allocBox();
    v166 = v165;
    sub_1AAE12888();
    v167 = swift_allocObject();
    *(v167 + 16) = xmmword_1AAF9E2B0;
    v168 = swift_allocBox();
    v226 = type metadata accessor for SgPath;
    sub_1AAE9C9D4(v157, v169, type metadata accessor for SgPath);
    *(v167 + 32) = v168 | 0x9000000000000000;
    *(v167 + 40) = v195;
    v170 = type metadata accessor for SgClipRect(0);
    (*(*(v170 - 8) + 56))(v206, 1, 1, v170);
    v171 = *&v227;
    sub_1AAE5214C(v153, v154, v155, *&v227, v159);

    sub_1AAE9CA3C(v157, v226);
    sub_1AAD0E508(v153, v154, v155, v171, v159);
    (*(v209 + 8))(v210, v213);
    (*(v207 + 8))(v220, v197);
    *v166 = 0;
    v166[1] = v167;
    sub_1AAD0F670(v206, v166 + v164[6]);
    *(v166 + v164[7]) = 0x3FF0000000000000;
    *(v166 + v164[8]) = 0;
    *(v166 + v164[9]) = MEMORY[0x1E69E7CC0];
    *(v166 + v164[10]) = 0;
    *v208 = v228;
    sub_1AAE9C090(&v229);
  }
}

void sub_1AAE9BADC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADB8194(v2);
  }

  v3 = *(v2 + 2);
  v24[0] = (v2 + 32);
  v24[1] = v3;
  v4 = sub_1AAF90464();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 - 2);
          v14 = *(v12 - 1);
          v15 = *v12;
          v16 = *(v12 + 1);
          MidX = CGRectGetMidX(*(v12 + 16));
          v25.origin.x = v13;
          v25.origin.y = v14;
          v25.size.width = v15;
          v25.size.height = v16;
          if (MidX >= CGRectGetMidX(v25))
          {
            break;
          }

          v18 = *(v12 + 1);
          v19 = *(v12 + 2);
          v20 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v20;
          *(v12 - 1) = v18;
          *v12 = v19;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for CGRect(0);
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v22[0] = v7 + 32;
    v22[1] = v6;
    sub_1AAE9C12C(v22, v23, v24, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

uint64_t sub_1AAE9BC90(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_30;
  }

  v2 = a2;
  v3 = result;
  if (!result)
  {
    return v2;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_26:

    return v8;
  }

  v5 = 0;
  v6 = (a2 + 32);
  v7 = v4 - 1;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = *v6;
    v10 = *(v9 + 16);
    if (v10 < v3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AAD41350(0, v10 + 1, 1);
      }

      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1AAD41350((v11 > 1), v12 + 1, 1);
      }

      *(v9 + 16) = v12 + 1;
      *(v9 + 16 * v12 + 32) = v16;
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v5 >= v10)
    {
      break;
    }

    v15 = *(v9 + 16 * v5 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AAD41350(0, *(v8 + 16) + 1, 1);
    }

    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1AAD41350((v13 > 1), v14 + 1, 1);
    }

    *(v8 + 16) = v14 + 1;
    *(v8 + 16 * v14 + 32) = v15;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AADAB480(v9);
      v9 = result;
    }

    if (v5 >= *(v9 + 16))
    {
      goto LABEL_29;
    }

    *(v9 + 16 * v5++ + 32) = v16;
    if (v5 < v3)
    {
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_26;
      }

      v5 = 0;
    }

LABEL_6:
    --v7;
    ++v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

double sub_1AAE9BE90(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(*a1 + 16);
  if (v5)
  {
    for (i = *a1 + 48; vabdd_f64(a2, *(i - 16)) >= a4 || vabdd_f64(a3, *(i - 8)) >= a4; i += 24)
    {
      if (!--v5)
      {
        return a5;
      }
    }

    return *i;
  }

  return a5;
}

void sub_1AAE9BEE8()
{
  if (!qword_1ED9AEE28)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ED9AEE28);
    }
  }
}

void sub_1AAE9BF48()
{
  if (!qword_1ED9AEE30)
  {
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeMetadata2();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (!v1)
    {
      atomic_store(AssociatedTypeWitness, &qword_1ED9AEE30);
    }
  }
}

unint64_t sub_1AAE9BFE8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1AAE9C008()
{
  result = qword_1ED9AD970;
  if (!qword_1ED9AD970)
  {
    sub_1AAD04B14(255, &qword_1ED9AD978, MEMORY[0x1E695EEE0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AD970);
  }

  return result;
}

uint64_t sub_1AAE9C0E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AAE9C12C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_1AADAA0A4(v8);
    }

    v98 = *(v8 + 2);
    if (v98 >= 2)
    {
      while (*a3)
      {
        v99 = *&v8[16 * v98];
        v100 = *&v8[16 * v98 + 24];
        sub_1AAE9C770((*a3 + 32 * v99), (*a3 + 32 * *&v8[16 * v98 + 16]), (*a3 + 32 * v100), v5);
        if (v4)
        {
          goto LABEL_99;
        }

        if (v100 < v99)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AADAA0A4(v8);
        }

        if (v98 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v101 = &v8[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        sub_1AADAA018(v98 - 1);
        v98 = *(v8 + 2);
        if (v98 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v6 = v7 + 1;
    }

    else
    {
      v10 = 32 * v7;
      v5 = *a3 + 32 * v7;
      v11 = *v5;
      v12 = *(v5 + 8);
      v13 = *(v5 + 16);
      v14 = *(v5 + 24);
      MidX = CGRectGetMidX(*(*a3 + 32 * (v7 + 1)));
      v106.origin.x = v11;
      v106.origin.y = v12;
      v106.size.width = v13;
      v106.size.height = v14;
      v16 = CGRectGetMidX(v106);
      v17 = v7 + 2;
      v18 = v5 + 48;
      while (v6 != v17)
      {
        v5 = MidX < v16;
        v19 = v18 + 32;
        v20 = *(v18 - 16);
        v21 = *(v18 - 8);
        v22 = *v18;
        v23 = *(v18 + 8);
        v24 = CGRectGetMidX(*(v18 + 16));
        v107.origin.x = v20;
        v107.origin.y = v21;
        v107.size.width = v22;
        v107.size.height = v23;
        v25 = v5 ^ (v24 >= CGRectGetMidX(v107));
        ++v17;
        v18 = v19;
        if ((v25 & 1) == 0)
        {
          v6 = v17 - 1;
          break;
        }
      }

      if (MidX < v16)
      {
        if (v6 < v7)
        {
          goto LABEL_118;
        }

        if (v7 < v6)
        {
          v26 = 0;
          v27 = 32 * v6;
          v28 = v7;
          do
          {
            if (v28 != v6 + v26 - 1)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v29 = (v34 + v10);
              v30 = v34 + v27;
              v31 = *v29;
              v32 = v29[1];
              v33 = *(v30 - 16);
              *v29 = *(v30 - 32);
              v29[1] = v33;
              *(v30 - 32) = v31;
              *(v30 - 16) = v32;
            }

            ++v28;
            --v26;
            v27 -= 32;
            v10 += 32;
          }

          while (v28 < v6 + v26);
        }
      }
    }

    v35 = a3[1];
    if (v6 < v35)
    {
      if (__OFSUB__(v6, v7))
      {
        goto LABEL_117;
      }

      if (v6 - v7 < a4)
      {
        if (__OFADD__(v7, a4))
        {
          goto LABEL_119;
        }

        if (v7 + a4 >= v35)
        {
          v7 = a3[1];
        }

        else
        {
          v7 += a4;
        }

        if (v7 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v6 != v7)
        {
          break;
        }
      }
    }

    v7 = v6;
    if (v6 < v9)
    {
      goto LABEL_116;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AAD68568(0, *(v8 + 2) + 1, 1, v8);
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v8 = sub_1AAD68568((v36 > 1), v37 + 1, 1, v8);
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_48:
          if (v45)
          {
            goto LABEL_105;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_108;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_112;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_62:
        if (v63)
        {
          goto LABEL_107;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_69:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
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
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v5 = *&v8[16 * v79 + 32];
        v80 = *&v8[16 * v41 + 40];
        sub_1AAE9C770((*a3 + 32 * v5), (*a3 + 32 * *&v8[16 * v41 + 32]), (*a3 + 32 * v80), v40);
        if (v4)
        {
          goto LABEL_99;
        }

        if (v80 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AADAA0A4(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v81 = &v8[16 * v79];
        *(v81 + 4) = v5;
        *(v81 + 5) = v80;
        sub_1AADAA018(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_103;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_104;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_106;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_109;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_89;
    }
  }

  v82 = *a3;
  v83 = *a3 + 32 * v6 - 32;
  v102 = v9;
  v84 = v9 - v6;
LABEL_80:
  v85 = (v82 + 32 * v6);
  v86 = *v85;
  v87 = v85[1];
  v5 = v84;
  v88 = v83;
  while (1)
  {
    v89 = *v88;
    v90 = *(v88 + 8);
    v91 = *(&v86 + 1);
    v92 = *(&v87 + 1);
    v93 = *(v88 + 16);
    v94 = *(v88 + 24);
    v95 = CGRectGetMidX(*&v86);
    v108.origin.x = v89;
    v108.origin.y = v90;
    v108.size.width = v93;
    v108.size.height = v94;
    if (v95 >= CGRectGetMidX(v108))
    {
LABEL_79:
      ++v6;
      v83 += 32;
      --v84;
      if (v6 != v7)
      {
        goto LABEL_80;
      }

      v9 = v102;
      if (v7 < v102)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v82)
    {
      break;
    }

    v86 = *(v88 + 32);
    v87 = *(v88 + 48);
    v96 = *(v88 + 16);
    *(v88 + 32) = *v88;
    *(v88 + 48) = v96;
    *v88 = v86;
    *(v88 + 16) = v87;
    v88 -= 32;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1AAE9C770(CGRect *__dst, CGRect *__src, CGRect *a3, CGRect *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      x = v4->origin.x;
      y = v4->origin.y;
      width = v4->size.width;
      height = v4->size.height;
      MidX = CGRectGetMidX(*v6);
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      if (MidX < CGRectGetMidX(v34))
      {
        break;
      }

      p_origin = &v4->origin;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    p_origin = &v6->origin;
    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = p_origin[1];
    v7->origin = *p_origin;
    v7->size = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v23 = v6 - 1;
    --v5;
    v24 = v14;
    do
    {
      v25 = v5 + 1;
      v35.origin.x = *(v24 - 32);
      v35.origin.y = *(v24 - 24);
      v24 -= 32;
      v35.size.width = *(v24 + 16);
      v35.size.height = *(v24 + 24);
      v26 = v6[-1].origin.x;
      v27 = v6[-1].origin.y;
      v28 = v6[-1].size.width;
      v29 = v6[-1].size.height;
      v30 = CGRectGetMidX(v35);
      v36.origin.x = v26;
      v36.origin.y = v27;
      v36.size.width = v28;
      v36.size.height = v29;
      if (v30 < CGRectGetMidX(v36))
      {
        if (v25 != v6)
        {
          size = v6[-1].size;
          v5->origin = v23->origin;
          v5->size = size;
        }

        if (v14 <= v4 || (--v6, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v25 != v14)
      {
        v31 = *(v24 + 16);
        v5->origin = *v24;
        v5->size = v31;
      }

      --v5;
      v14 = v24;
    }

    while (v24 > v4);
    v14 = v24;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_1AAE9C9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE9CA3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double FunctionGraphMark.init(x:y:function:)@<D0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3)
{
  *&v15 = sub_1AAF8EA44();
  *(&v15 + 1) = v4;
  LOBYTE(v16) = v5 & 1;
  *(&v16 + 1) = v6;
  *&v17 = sub_1AAF8EA44();
  *(&v17 + 1) = v7;
  LOBYTE(v18) = v8 & 1;
  v19 = 0uLL;
  *(&v18 + 1) = v9;
  LOBYTE(v20) = 1;
  *(&v20 + 1) = a2;
  *&v21 = a3;
  sub_1AAE60934(&v15);
  v10 = v20;
  a1[4] = v19;
  a1[5] = v10;
  v11 = v22;
  a1[6] = v21;
  a1[7] = v11;
  v12 = v16;
  *a1 = v15;
  a1[1] = v12;
  result = *&v17;
  v14 = v18;
  a1[2] = v17;
  a1[3] = v14;
  return result;
}

double FunctionGraphMark.init(x:y:t:domain:function:)@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 a8)
{
  *&v25 = sub_1AAF8EA44();
  *(&v25 + 1) = v11;
  LOBYTE(v26) = v12 & 1;
  *(&v26 + 1) = v13;
  *&v27 = sub_1AAF8EA44();
  *(&v27 + 1) = v14;
  LOBYTE(v28) = v15 & 1;
  *(&v28 + 1) = v16;
  *&v29 = sub_1AAF8EA44();
  *(&v29 + 1) = v17;
  LOBYTE(v30) = v18 & 1;
  *(&v30 + 1) = v19;
  *&v31 = a2;
  *(&v31 + 1) = a3;
  v32 = a8;
  sub_1AAE60E1C(&v25);
  v20 = v30;
  a1[4] = v29;
  a1[5] = v20;
  v21 = v32;
  a1[6] = v31;
  a1[7] = v21;
  v22 = v26;
  *a1 = v25;
  a1[1] = v22;
  result = *&v27;
  v24 = v28;
  a1[2] = v27;
  a1[3] = v24;
  return result;
}

uint64_t static FunctionGraphMark._layoutChartContent(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v24 = a1[4];
  v25 = v2;
  v4 = a1[5];
  v5 = a1[7];
  v26 = a1[6];
  v27 = v5;
  v6 = a1[1];
  v21[0] = *a1;
  v21[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v22 = a1[2];
  v23 = v7;
  v17 = v24;
  v18 = v4;
  v10 = a1[7];
  v19 = v26;
  v20 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v22;
  v16 = v3;
  v12 = *a2;
  sub_1AAD58B2C(v21, v28);
  _s6Charts23FunctionLinePlotContentV012_layoutChartE0yyAC_AA01_gE12LayoutInputsVtFZ_0(&v13, &v12);
  v28[4] = v17;
  v28[5] = v18;
  v28[6] = v19;
  v28[7] = v20;
  v28[0] = v13;
  v28[1] = v14;
  v28[2] = v15;
  v28[3] = v16;
  return sub_1AAD58B88(v28);
}

uint64_t static FunctionGraphMark._renderChartContent(_:_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[5];
  v5 = a1[3];
  v29 = a1[4];
  v30 = v4;
  v6 = a1[5];
  v7 = a1[7];
  v31 = a1[6];
  v32 = v7;
  v8 = a1[1];
  v26[0] = *a1;
  v26[1] = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v27 = a1[2];
  v28 = v9;
  v22 = v29;
  v23 = v6;
  v12 = a1[7];
  v24 = v31;
  v25 = v12;
  v18 = v11;
  v19 = v10;
  v13 = *a2;
  v14 = *(a2 + 8);
  v20 = v27;
  v21 = v5;
  v16[0] = v13;
  v17 = v14;
  sub_1AAD58B2C(v26, v33);
  static FunctionLinePlotContent._renderChartContent(_:_:)(&v18, v16, a3);
  v33[4] = v22;
  v33[5] = v23;
  v33[6] = v24;
  v33[7] = v25;
  v33[0] = v18;
  v33[1] = v19;
  v33[2] = v20;
  v33[3] = v21;
  return sub_1AAD58B88(v33);
}

uint64_t sub_1AAE9CF00(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v24 = a1[4];
  v25 = v2;
  v4 = a1[5];
  v5 = a1[7];
  v26 = a1[6];
  v27 = v5;
  v6 = a1[1];
  v21[0] = *a1;
  v21[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v22 = a1[2];
  v23 = v7;
  v17 = v24;
  v18 = v4;
  v10 = a1[7];
  v19 = v26;
  v20 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v22;
  v16 = v3;
  v12 = *a2;
  sub_1AAD58B2C(v21, v28);
  _s6Charts23FunctionLinePlotContentV012_layoutChartE0yyAC_AA01_gE12LayoutInputsVtFZ_0(&v13, &v12);
  v28[4] = v17;
  v28[5] = v18;
  v28[6] = v19;
  v28[7] = v20;
  v28[0] = v13;
  v28[1] = v14;
  v28[2] = v15;
  v28[3] = v16;
  return sub_1AAD58B88(v28);
}

uint64_t sub_1AAE9CFB0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[5];
  v5 = a1[3];
  v29 = a1[4];
  v30 = v4;
  v6 = a1[5];
  v7 = a1[7];
  v31 = a1[6];
  v32 = v7;
  v8 = a1[1];
  v26[0] = *a1;
  v26[1] = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v27 = a1[2];
  v28 = v9;
  v22 = v29;
  v23 = v6;
  v12 = a1[7];
  v24 = v31;
  v25 = v12;
  v18 = v11;
  v19 = v10;
  v13 = *a2;
  v14 = *(a2 + 8);
  v20 = v27;
  v21 = v5;
  v16[0] = v13;
  v17 = v14;
  sub_1AAD58B2C(v26, v33);
  static FunctionLinePlotContent._renderChartContent(_:_:)(&v18, v16, a3);
  v33[4] = v22;
  v33[5] = v23;
  v33[6] = v24;
  v33[7] = v25;
  v33[0] = v18;
  v33[1] = v19;
  v33[2] = v20;
  v33[3] = v21;
  return sub_1AAD58B88(v33);
}

uint64_t sub_1AAE9D080()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AAF90694();
  sub_1AADB2B54(v1, v2);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE9D0DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AAF90694();
  sub_1AADB2B54(v1, v2);
  return sub_1AAF906F4();
}

uint64_t FunctionSampler.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1AADF8B78(MEMORY[0x1E69E7CC0]);
  *(v4 + 32) = 0;
  *(v4 + 40) = 100;
  *(v4 + 48) = v5;
  *(v4 + 56) = -1;
  *(v4 + 64) = -1;
  *(v4 + 72) = v6;
  *(v4 + 80) = xmmword_1AAFB4110;
  return v4;
}

uint64_t FunctionSampler.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1AADF8B78(MEMORY[0x1E69E7CC0]);
  *(v2 + 32) = 0;
  *(v2 + 40) = 100;
  *(v2 + 48) = v3;
  *(v2 + 56) = -1;
  *(v2 + 64) = -1;
  *(v2 + 72) = v4;
  *(v2 + 80) = xmmword_1AAFB4110;
  return v2;
}

void sub_1AAE9D21C()
{
  v2 = *(v0 + 16);
  sub_1AAF84DA0(v2, 0.014959965, 659.734457, *(v0 + 24), 1000);
  if (v4)
  {
    sub_1AAF8545C(v2);
    v1 = v5;
    v7 = v6;
    sub_1AAF85BB0(v2);
    if (v7)
    {
      if (v4)
      {
        sub_1AAF864AC(v2, v8);
        return;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v3 * -1.5 <= v3 * 1.5)
    {
      return;
    }

    __break(1u);
  }

  v9 = v1;
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v1 >= 0.0)
  {
    return;
  }

  __break(1u);
LABEL_10:
  v9 = v3;
  if (v3 >= 0.0)
  {
    return;
  }

  __break(1u);
LABEL_12:
  if (v9 <= v3)
  {
    v9 = v3;
  }

  if (v9 < 0.0)
  {
    __break(1u);
  }
}

uint64_t sub_1AAE9D318@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = sub_1AAE9DD1C(0, 2u, 0, 2u, a2, a3, 1.0, 0.0, 1.0, 0.0);
  v11 = sub_1AAE9EA54(v10, a2, a3);
  v12 = *(v11 + 16);
  if (!v12)
  {

    v54 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
    v53 = 1;
    goto LABEL_73;
  }

  v13 = 0;
  v14 = vdupq_n_s64(0xFFF0000000000000);
  v15 = vdupq_n_s64(0x7FF0000000000000uLL);
  while (2)
  {
    v16 = *(v11 + 32 + 8 * v13);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v17 == 1;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_3;
    }

    v20 = *(v16 + 32);
    v19 = v16 + 32;
    v21 = v20;
    v22 = 1;
    do
    {
      v23 = (v19 + 16 * v22);
      v24 = v17 - v22++;
      while (1)
      {
        v29 = v21;
        v21 = *v23;
        v30 = vsubq_f64(v29, *v23);
        if (fabs(v30.f64[0]) >= 0.00000001)
        {
          v34 = (a2 - v21.f64[0]) / v30.f64[0];
          v35 = (a3 - v21.f64[0]) / v30.f64[0];
          if (v35 >= v34)
          {
            v36 = (a3 - v21.f64[0]) / v30.f64[0];
          }

          else
          {
            v36 = (a2 - v21.f64[0]) / v30.f64[0];
          }

          if (v35 < v34)
          {
            v34 = (a3 - v21.f64[0]) / v30.f64[0];
          }

          if (v36 < 0.0 || v34 > 1.0)
          {
            goto LABEL_19;
          }

          if (v36 <= 1.0)
          {
            v38 = v36;
          }

          else
          {
            v38 = 1.0;
          }

          if (v34 < 0.0)
          {
            v34 = 0.0;
          }

          v33 = vaddq_f64(v21, vmulq_n_f64(v30, v34));
          v29 = vaddq_f64(v21, vmulq_n_f64(v30, v38));
          v32 = v33.f64[1];
          v30 = vsubq_f64(v29, v33);
          v30.f64[0] = v30.f64[1];
        }

        else
        {
          if (v21.f64[0] < a2 || v21.f64[0] > a3)
          {
            goto LABEL_19;
          }

          v32 = v23->f64[1];
          v30.f64[0] = v30.f64[1];
          v33 = *v23;
        }

        if (fabs(v30.f64[0]) >= 0.00000001)
        {
          break;
        }

        if (v32 >= a4 && v32 <= a5)
        {
          v40 = vextq_s8(v29, v29, 8uLL);
          v41 = vextq_s8(v33, v33, 8uLL);
          goto LABEL_53;
        }

LABEL_19:
        ++v23;
        ++v22;
        if (!--v24)
        {
          goto LABEL_3;
        }
      }

      v25 = (a4 - v32) / v30.f64[0];
      v26 = (a5 - v32) / v30.f64[0];
      if (v26 >= v25)
      {
        v27 = (a5 - v32) / v30.f64[0];
      }

      else
      {
        v27 = (a4 - v32) / v30.f64[0];
      }

      if (v26 < v25)
      {
        v25 = (a5 - v32) / v30.f64[0];
      }

      if (v27 < 0.0 || v25 > 1.0)
      {
        goto LABEL_19;
      }

      v42 = vsubq_f64(v29, v33);
      if (v27 > 1.0)
      {
        v27 = 1.0;
      }

      if (v25 < 0.0)
      {
        v25 = 0.0;
      }

      v43 = vzip1q_s64(v30, v42);
      v44 = vdupq_lane_s64(*&v33.f64[0], 0);
      v44.f64[0] = v32;
      v41 = vaddq_f64(v44, vmulq_n_f64(v43, v25));
      v40 = vaddq_f64(v44, vmulq_n_f64(v43, v27));
LABEL_53:
      v45 = vbslq_s8(vcgtq_f64(v15, v41), v41, v15);
      v15 = vbslq_s8(vcgtq_f64(v45, v40), v40, v45);
      v46 = vbslq_s8(vcgeq_f64(v41, v14), v41, v14);
      v14 = vbslq_s8(vcgeq_f64(v40, v46), v40, v46);
    }

    while (v24 != 1);
LABEL_3:
    if (++v13 != v12)
    {
      continue;
    }

    break;
  }

  v58 = v15;
  v59 = v14;

  v48 = vmovn_s64(vmvnq_s8(vcgeq_f64(v59, v58))).u8[0];
  v49 = v58.f64[1];
  v50 = v59.f64[1];
  v51 = v58.f64[0];
  v52 = v59.f64[0];
  if (v48)
  {
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
  }

  v53 = v58.f64[1] > v59.f64[1] || (v48 & 1) != 0;
  if (v58.f64[1] <= v59.f64[1])
  {
    v54 = v49;
  }

  else
  {
    v54 = 0.0;
  }

  if (v58.f64[1] <= v59.f64[1])
  {
    v55 = v50;
  }

  else
  {
    v55 = 0.0;
  }

  if (v58.f64[1] <= v59.f64[1])
  {
    v56 = v51;
  }

  else
  {
    v56 = 0.0;
  }

  if (v58.f64[1] <= v59.f64[1])
  {
    v57 = v52;
  }

  else
  {
    v57 = 0.0;
  }

LABEL_73:
  *a1 = v54;
  *(a1 + 8) = v55;
  *(a1 + 16) = v56;
  *(a1 + 24) = v57;
  *(a1 + 32) = v53;
  return result;
}

void *sub_1AAE9D5DC(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1AAF8F294();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1AAF8F2F4();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  os_unfair_lock_lock((v3 + 32));
  v15 = sub_1AAE9DA44((v3 + 40), v3, a1, a2);
  v17 = v16;
  v19 = v18;
  os_unfair_lock_unlock((v3 + 32));
  v20 = *(v15 + 16);
  if ((v19 & 1) == 0)
  {
    if (!v20)
    {
      goto LABEL_15;
    }

    sub_1AAF8F2D4();
    *v8 = 30;
    v25 = v35;
    (*(v35 + 104))(v8, *MEMORY[0x1E69E7F38], v6);
    sub_1AAF8F2E4();
    (*(v25 + 8))(v8, v6);
    v26 = *(v34 + 8);
    v26(v11, v9);
    v27 = sub_1AAF8F304();

    v26(v14, v9);
    if ((v27 & 1) == 0)
    {
      *(v15 + 16) = 0;

      goto LABEL_15;
    }

    if (qword_1ED9B59F0 == -1)
    {
LABEL_13:
      v28 = qword_1ED9C36C8;
      sub_1AAF8FD04();
      sub_1AAE9F794(0, &qword_1ED9AEE70, sub_1AAD6E5E0, MEMORY[0x1E69E6F90]);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1AAF92AB0;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1AAD6E644();
      *(v29 + 32) = 0xD00000000000001BLL;
      *(v29 + 40) = 0x80000001AAFCF700;
      sub_1AAF8D7B4();

      goto LABEL_15;
    }

LABEL_21:
    swift_once();
    goto LABEL_13;
  }

  if (v20)
  {

    sub_1AAF8F324();
  }

  os_unfair_lock_lock((v3 + 32));
  v21 = *(v3 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 48) = v21;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = sub_1AADB81BC(v21);
  *(v3 + 48) = v21;
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  if (v17 >= v21[2])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v21[6 * v17 + 9]) = 0;
  if (v17 != *(v3 + 56))
  {
    v23 = *(v3 + 48);
    v24 = *(v23 + 16);
    v36[0] = v23 + 32;
    v36[1] = v24;
    sub_1AADB7168(v36, v17, v3 + 40);
    *(v3 + 48) = v23;
  }

  os_unfair_lock_unlock((v3 + 32));
LABEL_15:
  os_unfair_lock_lock((v15 + 24));
  v30 = *(v15 + 32);

  os_unfair_lock_unlock((v15 + 24));
  if (!v30)
  {
    v31.n128_f64[0] = a1;
    v32.n128_f64[0] = a2;
    v30 = sub_1AAF81604(4, 7, 1, *(v3 + 16), *(v3 + 24), v31, v32);
  }

  return v30;
}

uint64_t sub_1AAE9DA44(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = a1[4];
  if (*(v8 + 16) && (v9 = sub_1AADB0B80(a3, a4), (v10 & 1) != 0) && (v11 = *(*(v8 + 56) + 8 * v9), (v11 & 0x8000000000000000) == 0))
  {
    v12 = a1[1];
    if (v11 == a1[2])
    {
      goto LABEL_7;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1[1] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v14 = v12[2];
      v18[0] = (v12 + 4);
      v18[1] = v14;
      sub_1AADB7168(v18, v11, a1);
      a1[1] = v12;
LABEL_7:
      if (v11 < v12[2])
      {
        break;
      }

      __break(1u);
LABEL_12:
      v12 = sub_1AADB81BC(v12);
      a1[1] = v12;
    }

    v15 = v12[6 * v11 + 8];
  }

  else
  {
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    *(v16 + 32) = a2;
    type metadata accessor for SamplingTask();
    swift_allocObject();
    v15 = sub_1AAE9E204(sub_1AAE9F730, v16);
    swift_unownedRelease();
    sub_1AADB7E10(v15, 1uLL, a3, a4);
  }

  return v15;
}

void *sub_1AAE9DBD8(double a1, double a2)
{
  v4 = swift_unownedRetainStrong();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);

  v7.n128_f64[0] = a1;
  v8.n128_f64[0] = a2;
  v9 = sub_1AAF81604(4, 7, 1, v5, v6, v7, v8);

  return v9;
}

void sub_1AAE9DC58(double a1, double a2)
{
  sub_1AAE9E6C8(v11, a1, a2, 1.5, 1.0);
  v2 = v13;
  if (v13)
  {
    if (v13 >= 1)
    {
      v3 = 0;
      v4 = v12;
      v6 = *&v11[4];
      v5 = *&v11[5];
      v7 = v12 ^ 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v8 = v3 + v4;
        if (__OFADD__(v3, v4))
        {
          break;
        }

        if (v7 == v3)
        {
          goto LABEL_10;
        }

        v9 = v6 + v5 * v8;
        v10 = v6 + v5 * (v8 + 1);
        if (v9 > v10)
        {
          goto LABEL_11;
        }

        ++v3;
        sub_1AAE9D5DC(v9, v10);

        if (v2 == v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
LABEL_11:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1AAE9DD1C(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, double a5, double a6, float64_t a7, float64_t a8, float64_t a9, float64_t a10)
{
  if (a2 < 2u || a1 != 0 || a4 < 2u || a3 != 0)
  {
    goto LABEL_50;
  }

  v13 = (a5 - a8) / a7;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = (a6 - a8) / a7;
  v14 = MEMORY[0x1E69E7CC0];
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v13 >= v15)
  {
    return v14;
  }

  if (v13 <= v15)
  {
    sub_1AAE9E6C8(v62, v13, v15, 1.5, 1.0);
    v61 = v14;
    v17 = v66;
    if (!v66)
    {
      return v14;
    }

    v18 = 0;
    v20 = v63;
    v19 = v64;
    v50 = v65;
    v48 = v66 & ~(v66 >> 63);
    v49 = v65 ^ 0x7FFFFFFFFFFFFFFFLL;
    v21.f64[0] = a7;
    v22.f64[0] = a8;
    v21.f64[1] = a9;
    v53 = v21;
    v22.f64[1] = a10;
    v47 = v66;
    v55 = v22;
    while (1)
    {
      v23 = v18 + v50;
      if (__OFADD__(v18, v50))
      {
        break;
      }

      if (v18 == v49)
      {
        goto LABEL_46;
      }

      v24 = v20 + v19 * v23;
      v25 = v20 + v19 * (v23 + 1);
      if (v24 > v25)
      {
        goto LABEL_47;
      }

      if (v18 == v48)
      {
        goto LABEL_48;
      }

      v26 = sub_1AAE9D5DC(v24, v25);
      v27 = v26[2];
      if (v27)
      {
        v51 = v18;
        v28 = v26;
        sub_1AAD41300(0, v27, 0);
        v29 = v28;
        v30 = 0;
        v31 = v14;
        v60 = v28 + 4;
        v56 = v27;
        v58 = v28;
        while (v30 < v29[2])
        {
          v32 = v60[v30];
          v33 = *(v32 + 16);
          if (v33)
          {
            v34 = v14;

            sub_1AAD41350(0, v33, 0);
            v35 = v14;
            v36 = v14[2];
            v37 = 32;
            v39 = v53;
            v38 = v55;
            do
            {
              v40 = *(v32 + v37);
              v41 = v35[3];
              if (v36 >= v41 >> 1)
              {
                v46 = *(v32 + v37);
                sub_1AAD41350((v41 > 1), v36 + 1, 1);
                v40 = v46;
                v39 = v53;
                v38 = v55;
              }

              v35[2] = v36 + 1;
              *&v35[2 * v36 + 4] = vaddq_f64(vmulq_f64(v40, v39), v38);
              v37 += 16;
              ++v36;
              --v33;
            }

            while (v33);

            v14 = v34;
            v27 = v56;
            v29 = v58;
          }

          else
          {
            v35 = v14;
          }

          v43 = v31[2];
          v42 = v31[3];
          if (v43 >= v42 >> 1)
          {
            v44 = v29;
            sub_1AAD41300((v42 > 1), v43 + 1, 1);
            v29 = v44;
          }

          ++v30;
          v31[2] = v43 + 1;
          v31[v43 + 4] = v35;
          if (v30 == v27)
          {

            v17 = v47;
            v18 = v51;
            goto LABEL_22;
          }
        }

        __break(1u);
        break;
      }

      v31 = v14;
LABEL_22:
      ++v18;
      sub_1AADC8E34(v31);
      if (v18 == v17)
      {
        return v61;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
LABEL_50:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAE9E098(unint64_t a1, uint64_t a2, uint64_t *a3, double a4, double a5)
{
  v8 = *(a2 + 16);
  v9 = v8;
  while (1)
  {
    if (v8 < 1)
    {
      v5 = *a3;
      result = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v5;
      if ((result & 1) == 0)
      {
        goto LABEL_13;
      }

      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    v10 = v8;
    v8 = v8 >> 1;
    v11 = v9 + ~v8;
    if (v11 >= *(a2 + 16))
    {
      break;
    }

    if (*(a2 + 32 + 16 * v11) > a5)
    {
      v8 = v10 + ~v8;
      v9 = v11;
    }
  }

  __break(1u);
LABEL_13:
  result = sub_1AADB81D0(v5);
  v5 = result;
  *a3 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (*(v5 + 16) <= a1)
  {
    goto LABEL_15;
  }

  result = v9 > 0;
  v13 = v9 - 1;
  if (v9 < 1)
  {
    v13 = 0;
  }

  v14 = v5 + 16 * a1;
  *(v14 + 32) = v13;
  *(v14 + 40) = v9 < 1;
  return result;
}

uint64_t FunctionSampler.deinit()
{

  sub_1AAE9F6D0(v0 + 40, sub_1AAE9F48C);
  return v0;
}

uint64_t FunctionSampler.__deallocating_deinit()
{

  sub_1AAE9F6D0(v0 + 40, sub_1AAE9F48C);

  return swift_deallocClassInstance();
}

uint64_t sub_1AAE9E204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1AAF8F2A4();
  MEMORY[0x1EEE9AC00](v6);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetain();

  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v2;
  aBlock[4] = sub_1AAE9F73C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AAE9E49C;
  aBlock[3] = &unk_1F1FDC458;
  _Block_copy(aBlock);
  sub_1AAE9F7F8(&qword_1EB426818, MEMORY[0x1E69E7F60]);
  sub_1AAE9F760(0);
  sub_1AAE9F7F8(&qword_1EB426828, sub_1AAE9F760);
  sub_1AAF8FF64();
  sub_1AAF8F334();
  swift_allocObject();
  v8 = sub_1AAF8F314();
  swift_unownedRelease();

  *(v3 + 16) = v8;

  return v3;
}

uint64_t sub_1AAE9E434(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = a1();
  swift_unownedRetainStrong();
  os_unfair_lock_lock((a3 + 24));

  *(a3 + 32) = v4;
  os_unfair_lock_unlock((a3 + 24));
}

uint64_t sub_1AAE9E49C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1AAE9E4E0()
{

  sub_1AAE9F6D0(v0 + 32, sub_1AAE9F600);

  return swift_deallocClassInstance();
}

unint64_t sub_1AAE9E534(unint64_t result, uint64_t a2, __n128 a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    v5 = sub_1AAD6945C(isUniquelyReferenced_nonNull_native, v13, 1, v5);
    *v3 = v5;
  }

  result = sub_1AAE9E608(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1AAE9E608(unint64_t result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 16 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = v8[a3].n128_u64;
      v12 = (v7 + 32 + 16 * a2);
      if (result != v12 || result >= v12 + 16 * v11)
      {
        v14 = a3;
        v17 = a4;
        result = memmove(result, v12, 16 * v11);
        a4 = v17;
        a3 = v14;
      }

      v15 = *(v7 + 16);
      v10 = __OFADD__(v15, v6);
      v16 = v15 + v6;
      if (!v10)
      {
        *(v7 + 16) = v16;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void sub_1AAE9E6C8(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, long double a4@<D2>, double a5@<D3>)
{
  if (a2 >= a3)
  {
    v10 = a2;
  }

  else
  {
    v10 = a3;
  }

  if (a2 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  v12 = log(v10 - v11);
  v13 = log(a4);
  v14 = pow(a4, ceil(v12 / v13)) / a5;
  v15 = v14 * -0.501129335;
  v16 = floor((v11 - v14 * -0.501129335) / v14);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = ceil((v10 - (v15 + v14 * v16)) / v14);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v18 = v17;
  if (v17 <= 1)
  {
    v18 = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = v15;
  *(a1 + 40) = v14;
  *(a1 + 48) = v16;
  *(a1 + 56) = v18;
}

void sub_1AAE9E824(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_1AAD6C2F4((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  sub_1AAD463D8();
  swift_arrayInitWithCopy();
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6[2];
  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 < 0)
  {
LABEL_13:
    __break(1u);
  }
}

unint64_t sub_1AAE9E8EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AAE9E994(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1AAD6945C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1AAE9E8EC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1AAE9EA54(uint64_t a1, double a2, double a3)
{
  v5 = a1;
  v113 = *(a1 + 16);
  if (v113)
  {
    v6 = *(a1 + 32);
    if (*(v6 + 16) && *(v6 + 32) > a3)
    {
      goto LABEL_50;
    }

    v7 = *(a1 + 32 + 8 * v113 - 8);
    v10 = *(v7 + 16);
    v8 = v7 + 16;
    v9 = v10;
    if (v10)
    {
      if (*(v8 + 16 * v9) < a2)
      {
        goto LABEL_50;
      }
    }

    sub_1AADDFD14();
    v11 = v113;
    v12 = sub_1AAF8F8A4();
    v13 = v12;
    *(v12 + 16) = v113;
    v14 = 32;
    do
    {
      v15 = v12 + v14;
      *v15 = 0;
      *(v15 + 8) = 1;
      v14 += 16;
      --v11;
    }

    while (v11);
    v16 = v113;
    *&v17 = COERCE_DOUBLE(sub_1AAF8F8A4());
    v18 = *&v17;
    *(v17 + 16) = v113;
    v19 = 32;
    do
    {
      v20 = v17 + v19;
      *v20 = 0;
      *(v20 + 8) = 1;
      v19 += 16;
      --v16;
    }

    while (v16);
    v21 = *(v5 + 2);
  }

  else
  {
    v21 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
  }

  v116 = v18;
  v115 = v5 + 32;
  v22 = v13 + 32;

  v24 = 0;
  v25 = 0;
  v114 = v5;
  if (v21 >= 1)
  {
    while (1)
    {
      v26 = v21 >> 1;
      v27 = v24 + (v21 >> 1);
      if (__OFADD__(v24, v21 >> 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }

      if (v27 >= *(v5 + 2))
      {
        goto LABEL_86;
      }

      v28 = *&v115[8 * v27];
      v29 = *(v28 + 16);
      if (v29)
      {
        break;
      }

      v5 = 0;
LABEL_26:

      if (v27 >= *(v13 + 16))
      {
        goto LABEL_87;
      }

      v34 = v22 + 16 * v27;
      *v34 = v5;
      *(v34 + 8) = 0;

      if (v5 < v29)
      {
        v21 = v21 >> 1;
      }

      else
      {
        v24 = v27 + 1;
        v21 += ~v26;
      }

      v5 = v114;
      if (v21 < 1)
      {
        goto LABEL_31;
      }
    }

    v5 = 0;
    v30 = v28 + 32;
    v31 = *(v28 + 16);
    while (1)
    {
      v32 = v31 >> 1;
      v33 = &v5[v31 >> 1];
      if (__OFADD__(v5, v31 >> 1))
      {
        break;
      }

      if (v33 >= v29)
      {
        goto LABEL_52;
      }

      if (*(v30 + 16 * v33) < a2)
      {
        v5 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        v32 = v31 + ~v32;
      }

      v31 = v32;
      if (v32 <= 0)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_31:

  if (v24 >= v113)
  {

LABEL_49:

LABEL_50:

    return MEMORY[0x1E69E7CC0];
  }

  if (v24 < 0)
  {
    goto LABEL_135;
  }

  v36 = *(v5 + 2);
  if (v36 < v24 || v36 < v113)
  {
    goto LABEL_136;
  }

  v37 = (2 * v113) | 1;
  MEMORY[0x1EEE9AC00](v35);
  v18 = COERCE_DOUBLE(v106);
  *&v106[2] = a2;
  *&v106[3] = a3;
  v106[4] = &v116;
  v27 = v114;

  v38 = v37;
  v5 = v27;
  v26 = sub_1AAF8A364(v115, v24, v38, sub_1AAE9F840);

  if (v24 >= v26)
  {
LABEL_53:

    goto LABEL_50;
  }

  if (*(v27 + 16) < v26)
  {
    goto LABEL_137;
  }

  if (v24 >= *(v13 + 16))
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v25 = v26 - 1;
  v39 = v22 + 16 * v24;
  if (*(v39 + 8))
  {
    v21 = 0;
  }

  else
  {
    v21 = *v39;
  }

  v29 = *&v116;
  if (v25 >= *(*&v116 + 16))
  {
    goto LABEL_139;
  }

  v30 = *&v116 + 16 * v25;
  if (*(v30 + 40) != 1)
  {
LABEL_54:
    v22 = *(v30 + 32);
    if (v21)
    {
      goto LABEL_44;
    }

LABEL_55:
    v43 = 0;
    v44 = 0.0;
    goto LABEL_56;
  }

  v22 = *(*&v115[8 * v25] + 16) - 1;
  if (!v21)
  {
    goto LABEL_55;
  }

LABEL_44:
  v40 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v41 = *&v115[8 * v24];
  if (v40 >= *(v41 + 16))
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v42 = v41 + 16 * v40;
  v43 = *(v42 + 32);
  v44 = *(v42 + 40);
LABEL_56:
  v46 = *&v115[8 * v25];
  v47 = *(v46 + 16);
  if (v22 == v47 - 1)
  {
    v18 = 0.0;
    v48 = 0.0;
    if (v24 != v25)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v49 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v49 >= v47)
  {
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v50 = v46 + 16 * v49;
  v18 = *(v50 + 32);
  v48 = *(v50 + 40);
  if (v24 == v25)
  {
LABEL_62:
    if (v22 < v21)
    {
      if (qword_1ED9B59F0 == -1)
      {
LABEL_64:

        goto LABEL_49;
      }

LABEL_144:
      swift_once();
      goto LABEL_64;
    }
  }

LABEL_65:
  v107 = v48;
  v108 = v44;
  v112.n128_u64[0] = v43;
  v110 = v47 - 1;
  v27 = (2 * v26) | 1;

  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v111 = v29;
  v109 = v18;
  if (isUniquelyReferenced_nonNull)
  {
    v52 = v24;
    v113 = v5;
  }

  else
  {
    sub_1AAE9E824(v115, v24, (2 * v26) | 1);
    v113 = v53;
    v115 = v54;
    v52 = v55;
    v27 = v56;
    swift_unknownObjectRelease();
  }

  if (v26 <= v52)
  {
    goto LABEL_146;
  }

  *&v18 = v27 >> 1;
  if (v25 >= v27 >> 1)
  {
    goto LABEL_146;
  }

  v57 = *(*&v115[8 * v25] + 16);
  if (v22 + 1 >= v57)
  {
    if (v27)
    {
LABEL_72:
      if (v24 < v52)
      {
        goto LABEL_147;
      }

      goto LABEL_76;
    }
  }

  else
  {
    sub_1AAE9E994(v22 + 1, v57);
    if (v27)
    {
      goto LABEL_72;
    }
  }

  sub_1AAE9E824(v115, v52, v27);
  v59 = v58;
  v115 = v60;
  v52 = v61;
  v27 = v62;
  swift_unknownObjectRelease();
  *&v18 = v27 >> 1;
  v113 = v59;
  if (v24 < v52)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

LABEL_76:
  if (v24 >= *&v18)
  {
    goto LABEL_147;
  }

  if (v21 < 0)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v5 = &v115[8 * v24];
  sub_1AAE9E994(0, v21);
  if (!*(*v5 + 16))
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (!v21)
  {
    goto LABEL_94;
  }

  v63 = *(*v5 + 32);
  v23 = v52;
  if (v63.f64[0] == v112.n128_f64[0])
  {
    goto LABEL_95;
  }

  if (vabdd_f64(v63.f64[0], v112.n128_f64[0]) <= 2.22044605e-12)
  {
LABEL_88:
    if (v27)
    {
      v112.n128_u64[0] = v27;
    }

    else
    {
      sub_1AAE9E824(v115, v23, v27);
      v5 = v72;
      v115 = v73;
      v75 = v74;
      v77 = v76;
      swift_unknownObjectRelease();
      v23 = v75;
      v112.n128_u64[0] = v77;
      *&v18 = v77 >> 1;
      v113 = v5;
    }

    if (v24 >= v23 && v24 < *&v18)
    {
      v21 = v23;
      v103 = v115;
      v5 = *&v115[8 * v24];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v103 + 8 * v24) = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_132;
      }

      goto LABEL_155;
    }

LABEL_154:
    __break(1u);
LABEL_155:
    v5 = sub_1AADB8180(v5);
    *&v115[8 * v24] = v5;
LABEL_132:
    v27 = v112.n128_u64[0];
    if (!*(v5 + 2))
    {
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v23 = v21;
    *(v5 + 4) = a2;
    if (v26 <= v21)
    {
      goto LABEL_134;
    }

    goto LABEL_96;
  }

  *&v64.f64[0] = v112.n128_u64[0];
  v64.f64[1] = v108;
  v65.n128_f64[0] = sub_1AAF8B168(a2, v63, v64);
  if (v27)
  {
    v71 = v52;
  }

  else
  {
    v112 = v65;
    sub_1AAE9E824(v115, v52, v27);
    v5 = v66;
    v115 = v67;
    v69 = v68;
    v27 = v70;
    swift_unknownObjectRelease();
    v65 = v112;
    v71 = v69;
    *&v18 = v27 >> 1;
    v113 = v5;
  }

  if (v24 < v71 || v24 >= *&v18)
  {
    __break(1u);
    goto LABEL_154;
  }

  v52 = v71;
  v5 = &v115[8 * v24];
  sub_1AAE9E534(0, 0, v65);
LABEL_94:
  v23 = v52;
LABEL_95:
  if (v26 <= v23)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

LABEL_96:
  if (v25 >= *&v18)
  {
    goto LABEL_134;
  }

  v21 = v27;
  v78 = *&v115[8 * v25];
  v27 = *(v78 + 16);
  if (!v27)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v22 == v110)
  {
    goto LABEL_117;
  }

  v22 = v27 - 1;
  v79 = *(v78 + 16 * (v27 - 1) + 32);
  if (v79.f64[0] == v109)
  {
    goto LABEL_117;
  }

  v80 = v23;
  if (vabdd_f64(v109, v79.f64[0]) > 2.22044605e-12)
  {
    v81.f64[0] = v109;
    v81.f64[1] = v107;
    v82.n128_f64[0] = sub_1AAF8B168(a3, v81, v79);
    v112 = v82;
    if ((v21 & 1) == 0)
    {
      sub_1AAE9E824(v115, v80, v21);
      v5 = v83;
      v115 = v84;
      v80 = v85;
      v87 = v86;
      swift_unknownObjectRelease();
      v21 = v87;
      *&v18 = v87 >> 1;
      v113 = v5;
    }

    if (v26 > v80 && v25 < *&v18)
    {
      v22 = v80;
      v88 = v115;
      v5 = *&v115[8 * v25];
      v89 = swift_isUniquelyReferenced_nonNull_native();
      *(v88 + 8 * v25) = v5;
      if (v89)
      {
LABEL_106:
        v91 = *(v5 + 2);
        v90 = *(v5 + 3);
        if (v91 >= v90 >> 1)
        {
          v105 = sub_1AAD6945C((v90 > 1), v91 + 1, 1, v5);
          v23 = v22;
          v5 = v105;
          *&v115[8 * v25] = v105;
        }

        else
        {
          v23 = v22;
        }

        v22 = v113;
        *(v5 + 2) = v91 + 1;
        *&v5[16 * v91 + 32] = v112;
        v27 = v21;
LABEL_118:
        if ((v27 & 1) == 0)
        {
LABEL_119:
          sub_1AAF4BFD4(v22, v115, v23, v27);
          goto LABEL_125;
        }

        v18 = *&v23;
        sub_1AAF90514();
        swift_unknownObjectRetain_n();
        v100 = swift_dynamicCastClass();
        if (!v100)
        {
          swift_unknownObjectRelease();
          v100 = MEMORY[0x1E69E7CC0];
        }

        v101 = *(v100 + 16);

        if (!__OFSUB__(v27 >> 1, *&v18))
        {
          if (v101 == (v27 >> 1) - *&v18)
          {
            v99 = swift_dynamicCastClass();
            if (!v99)
            {

              swift_unknownObjectRelease_n();
              v102 = MEMORY[0x1E69E7CC0];
              goto LABEL_126;
            }

LABEL_125:
            v102 = v99;
            swift_unknownObjectRelease();

LABEL_126:

            return v102;
          }

          goto LABEL_152;
        }

LABEL_151:
        __break(1u);
LABEL_152:
        swift_unknownObjectRelease();
        *&v23 = v18;
        goto LABEL_119;
      }

LABEL_159:
      v5 = sub_1AAD6945C(0, *(v5 + 2) + 1, 1, v5);
      *&v115[8 * v25] = v5;
      goto LABEL_106;
    }

    goto LABEL_157;
  }

  if ((v21 & 1) == 0)
  {
    sub_1AAE9E824(v115, v23, v21);
    v5 = v92;
    v115 = v93;
    v80 = v94;
    v96 = v95;
    swift_unknownObjectRelease();
    v21 = v96;
    *&v18 = v96 >> 1;
    v113 = v5;
  }

  v112.n128_u64[0] = v80;
  if (v26 <= v80 || v25 >= *&v18)
  {
    goto LABEL_158;
  }

  v97 = v115;
  v98 = *&v115[8 * v25];
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v97 + 8 * v25) = v98;
  if ((result & 1) == 0)
  {
    result = sub_1AADB8180(v98);
    v98 = result;
    *&v115[8 * v25] = result;
  }

  v23 = v112.n128_i64[0];
  if (v27 <= *(v98 + 16))
  {
    *(v98 + 16 * v22 + 32) = a3;
LABEL_117:
    v27 = v21;
    v22 = v113;
    goto LABEL_118;
  }

  __break(1u);
  return result;
}

void sub_1AAE9F48C()
{
  if (!qword_1EB4267E8)
  {
    type metadata accessor for SamplingTask();
    sub_1AAD6CB80();
    v0 = type metadata accessor for LRUCache();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4267E8);
    }
  }
}

unint64_t sub_1AAE9F67C()
{
  result = qword_1EB426810;
  if (!qword_1EB426810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426810);
  }

  return result;
}

uint64_t sub_1AAE9F6D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAE9F748(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AAE9F794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AAE9F7F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AAE9F84C()
{
  sub_1AACBE71C();
  sub_1AAF8E144();
  return v1;
}

uint64_t sub_1AAE9F898@<X0>(uint64_t a1@<X8>)
{
  sub_1AAEAF3FC();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    sub_1AACD8DD8();
    swift_beginAccess();
    v4 = *(v3 + 40);
    v5 = *(v3 + 96);
    v21 = *(v3 + 80);
    v22 = v5;
    v23 = *(v3 + 112);
    v24 = *(v3 + 128);
    v6 = *(v3 + 64);
    v19 = *(v3 + 48);
    v20 = v6;
    if (v4)
    {
      *v18 = v4;
      *&v18[40] = v21;
      *&v18[56] = v22;
      *&v18[72] = v23;
      *&v18[88] = v24;
      *&v18[8] = v19;
      *&v18[24] = v20;
      sub_1AACDACCC(v18, v17, &qword_1ED9B4060, MEMORY[0x1E69E63B0], MEMORY[0x1E697E0B8]);

      v28 = *&v18[32];
      v29 = *&v18[48];
      v30 = *&v18[64];
      v31 = *&v18[80];
      v26 = *v18;
      v27 = *&v18[16];
      v25 = 0;
LABEL_7:
      v13 = v25;
      v14 = v29;
      *(a1 + 32) = v28;
      *(a1 + 48) = v14;
      v15 = v31;
      *(a1 + 64) = v30;
      *(a1 + 80) = v15;
      v16 = v27;
      *a1 = v26;
      *(a1 + 16) = v16;
LABEL_8:
      *(a1 + 96) = v13;
      return result;
    }
  }

  else
  {
    sub_1AAEAF480();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {

      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v13 = -1;
      goto LABEL_8;
    }

    v9 = v8;
    sub_1AACD8DD8();
    swift_beginAccess();
    v10 = *(v9 + 40);
    v11 = *(v9 + 96);
    v21 = *(v9 + 80);
    v22 = v11;
    v23 = *(v9 + 112);
    v24 = *(v9 + 128);
    v12 = *(v9 + 64);
    v19 = *(v9 + 48);
    v20 = v12;
    if (v10)
    {
      *v18 = v10;
      *&v18[40] = v21;
      *&v18[56] = v22;
      *&v18[72] = v23;
      *&v18[88] = v24;
      *&v18[8] = v19;
      *&v18[24] = v20;
      sub_1AACDACCC(v18, v17, &qword_1ED9B4098, MEMORY[0x1E69E6158], MEMORY[0x1E697E0B8]);

      v28 = *&v18[32];
      v29 = *&v18[48];
      v30 = *&v18[64];
      v31 = *&v18[80];
      v26 = *v18;
      v27 = *&v18[16];
      v25 = 1;
      goto LABEL_7;
    }
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

void sub_1AAE9FB40(uint64_t a1@<X8>)
{
  sub_1AAEAF2F4();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    sub_1AACD8DD8();
    swift_beginAccess();
    v4 = *(v3 + 120);
    v32 = *(v3 + 104);
    v33 = v4;
    v5 = *(v3 + 152);
    v34 = *(v3 + 136);
    v35 = v5;
    v6 = *(v3 + 56);
    v28 = *(v3 + 40);
    v29 = v6;
    v7 = *(v3 + 88);
    v30 = *(v3 + 72);
    v31 = v7;
    memmove(&__dst, (v3 + 40), 0x80uLL);
    if (sub_1AAD00C24(&__dst) != 1)
    {
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v20 = v28;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      sub_1AACDACCC(&v20, v19, &qword_1EB426850, MEMORY[0x1E69E63B0], MEMORY[0x1E697DD48]);

      v49 = v24;
      v50 = v25;
      v51 = v26;
      v52 = v27;
      v45 = v20;
      v46 = v21;
      v47 = v22;
      v48 = v23;
      sub_1AAE39810(&v45);
LABEL_7:
      v42 = v51;
      v43 = v52;
      v44 = v53;
      v38 = v47;
      v39 = v48;
      v40 = v49;
      v41 = v50;
      __dst = v45;
      v37 = v46;
      nullsub_1(&__dst, v8);
LABEL_8:
      v15 = v43;
      *(a1 + 96) = v42;
      *(a1 + 112) = v15;
      *(a1 + 128) = v44;
      v16 = v39;
      *(a1 + 32) = v38;
      *(a1 + 48) = v16;
      v17 = v41;
      *(a1 + 64) = v40;
      *(a1 + 80) = v17;
      v18 = v37;
      *a1 = __dst;
      *(a1 + 16) = v18;
      return;
    }
  }

  else
  {
    sub_1AAEAF378();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {

      sub_1AACDB97C(&__dst);
      goto LABEL_8;
    }

    v10 = v9;
    sub_1AACD8DD8();
    swift_beginAccess();
    v11 = *(v10 + 120);
    v32 = *(v10 + 104);
    v33 = v11;
    v12 = *(v10 + 152);
    v34 = *(v10 + 136);
    v35 = v12;
    v13 = *(v10 + 56);
    v28 = *(v10 + 40);
    v29 = v13;
    v14 = *(v10 + 88);
    v30 = *(v10 + 72);
    v31 = v14;
    memmove(&__dst, (v10 + 40), 0x80uLL);
    if (sub_1AAD00C24(&__dst) != 1)
    {
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v20 = v28;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      sub_1AACDACCC(&v20, v19, &qword_1ED9B40A8, MEMORY[0x1E69E6158], MEMORY[0x1E697DD48]);

      v49 = v24;
      v50 = v25;
      v51 = v26;
      v52 = v27;
      v45 = v20;
      v46 = v21;
      v47 = v22;
      v48 = v23;
      sub_1AAD0098C(&v45);
      goto LABEL_7;
    }
  }

  sub_1AAF902C4();
  __break(1u);
}

uint64_t sub_1AAE9FE1C@<X0>(uint64_t a1@<X8>)
{
  sub_1AAEAF168();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    sub_1AAEAF1EC();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {

      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v7 = -1;
      goto LABEL_7;
    }

    v5 = v4;
    sub_1AACD8DD8();
    swift_beginAccess();
    sub_1AACDAFB0(v5 + 40, v12, sub_1AACFA148);
    if (!*&v12[0])
    {
      v3 = sub_1AACFA148;
      goto LABEL_10;
    }

LABEL_6:

    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v18 = v12[0];
    v19 = v12[1];
    v20 = v12[2];
    v21 = v12[3];
    v7 = v2 == 0;
    v17 = v2 == 0;
    v8 = v14;
    *(a1 + 64) = v13;
    *(a1 + 80) = v8;
    v9 = v25;
    *(a1 + 96) = v24;
    *(a1 + 112) = v9;
    v10 = v19;
    *a1 = v18;
    *(a1 + 16) = v10;
    v11 = v21;
    *(a1 + 32) = v20;
    *(a1 + 48) = v11;
LABEL_7:
    *(a1 + 128) = v7;
    return result;
  }

  sub_1AACD8DD8();
  swift_beginAccess();
  sub_1AACDAFB0(v2 + 40, v12, sub_1AAEAF270);
  if (*&v12[0])
  {
    goto LABEL_6;
  }

  v3 = sub_1AAEAF270;
LABEL_10:
  sub_1AACD8D78(v12, v3);
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEA001C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1AAD411E8(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1AAD411E8((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AAEA00F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v9 = result;
      v7 = *(result + 16);
      v6 = *(result + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AACEF664((v6 > 1), v7 + 1, 1);
        result = v9;
      }

      *(result + 16) = v7 + 1;
      *(result + 8 * v7 + 32) = v5;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AAEA01DC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v10 = v5;
  swift_beginAccess();
  v12 = *(v5 + 24);
  if (*(v12 + 16))
  {
    v13 = sub_1AACC9B78(a1);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 16 * v13);
      swift_endAccess();
      sub_1AAEB11A0(0, a2, a3, a4, a5);
      result = (*(*v15 + 200))(v16, v16);
      if (result)
      {
        return result;
      }

      __break(1u);
    }
  }

  swift_endAccess();

  v18 = sub_1AACC6620(a1);
  v20 = v19;

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v10 + 24);
  *(v10 + 24) = 0x8000000000000000;
  sub_1AACC6B20(v18, v20, a1, isUniquelyReferenced_nonNull_native);
  *(v10 + 24) = v24;
  swift_endAccess();
  sub_1AAEB11A0(0, a2, a3, a4, a5);
  result = (*(*v18 + 200))(v22, v22);
  if (result)
  {
    v23 = result;

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEA0404(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v4 + 16))
  {
    v5 = sub_1AACC9B78(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 16 * v5);
      swift_endAccess();
      v8 = sub_1AAD45E1C(0, &qword_1ED9B2768);
      result = (*(*v7 + 200))(v8, v8);
      if (result)
      {
        return result;
      }

      __break(1u);
    }
  }

  swift_endAccess();

  v10 = sub_1AACC6620(a1);
  v12 = v11;

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_1AACC6B20(v10, v12, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 24) = v16;
  swift_endAccess();
  v14 = sub_1AAD45E1C(0, &qword_1ED9B2768);
  result = (*(*v10 + 200))(v14, v14);
  if (result)
  {
    v15 = result;

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEA05B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AxisMarkValues.Storage(0);
  v3 = *(result + 24);
  *(a1 + *(result + 20)) = 2;
  *(a1 + v3) = 2;
  return result;
}

unint64_t sub_1AAEA061C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v27 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v5 = *a1;

  MEMORY[0x1AC598430](v6);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v7 = a1[1];

  MEMORY[0x1AC598430](v8);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v9 = a1[2];

  MEMORY[0x1AC598430](v10);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB11A0(0, &qword_1ED9B0C78, &qword_1ED9B0C80, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
  v11 = a1[3];

  MEMORY[0x1AC598430](v12);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B10D8, &type metadata for DomainOverride, MEMORY[0x1E69E6720]);
  v13 = a1[4];

  MEMORY[0x1AC598430](v14);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v15 = *v5;
  v16 = *v7;
  v17 = *v9;
  v18 = *v11;
  v19 = *v13;
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v15;
  v20[5] = v16;
  v20[6] = v17;
  v20[7] = v18;
  v20[8] = v19;
  sub_1AACC9348();
  v21 = swift_allocObject();
  v21[6] = 0;
  v21[7] = 0;
  v21[5] = 0;

  v22 = sub_1AACBD668(v27);

  v23 = swift_allocObject();
  *(v23 + 16) = sub_1AAEB0A50;
  *(v23 + 24) = v20;
  v24 = *(v22 + 48);
  *(v22 + 48) = sub_1AACD8838;
  *(v22 + 56) = v23;

  sub_1AACB4A98(v24);

  return v22;
}

unint64_t sub_1AAEA0A20(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9BB0(0, &qword_1ED9B0DC0, MEMORY[0x1E69E6370], type metadata accessor for Signal);
  v10 = swift_allocObject();
  *(v10 + 40) = 2;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;

  v11 = sub_1AACBD668(v15);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB12A8;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  *(v11 + 48) = sub_1AACD8800;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13);

  return v11;
}

unint64_t sub_1AAEA0BF0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEB03E0();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB03D4;
  *(v15 + 24) = v12;
  v16 = *(v14 + 144);
  *(v14 + 144) = sub_1AACD8800;
  *(v14 + 152) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AAEA0E30(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9AEF98, MEMORY[0x1E697E0B8], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF3FC();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0528;
  *(v15 + 24) = v12;
  v16 = *(v14 + 136);
  *(v14 + 136) = sub_1AACD8838;
  *(v14 + 144) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AAEA1098(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF3FC();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0660;
  *(v15 + 24) = v12;
  v16 = *(v14 + 136);
  *(v14 + 136) = sub_1AACD8838;
  *(v14 + 144) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AAEA12D4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1EB426940, MEMORY[0x1E697DD48], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = v24;
  v11 = *v6;
  v12 = *v8;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v11;
  v13[5] = v12;
  sub_1AAEAF2F4();
  v14 = swift_allocObject();
  sub_1AACFEB3C(v23);
  v15 = v23[5];
  *(v14 + 104) = v23[4];
  *(v14 + 120) = v15;
  v16 = v23[7];
  *(v14 + 136) = v23[6];
  *(v14 + 152) = v16;
  v17 = v23[1];
  *(v14 + 40) = v23[0];
  *(v14 + 56) = v17;
  v18 = v23[3];
  *(v14 + 72) = v23[2];
  *(v14 + 88) = v18;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  v19 = sub_1AACBD668(v10);

  v20 = swift_allocObject();
  *(v20 + 16) = sub_1AAEB06E0;
  *(v20 + 24) = v13;
  v21 = *(v19 + 168);
  *(v19 + 168) = sub_1AACD8838;
  *(v19 + 176) = v20;

  sub_1AACB4A98(v21);

  return v19;
}

unint64_t sub_1AAEA1554(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB0994();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AACC9C70();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB09EC;
  *(v15 + 24) = v12;
  v16 = *(v14 + 144);
  *(v14 + 144) = sub_1AACD8838;
  *(v14 + 152) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AAEA179C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB0914();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF168();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0u;
  *(v13 + 168) = 0u;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB096C;
  *(v15 + 24) = v12;
  v16 = *(v14 + 168);
  *(v14 + 168) = sub_1AACD8838;
  *(v14 + 176) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AAEA19E8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB0894();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = v24;
  v11 = *v6;
  v12 = *v8;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v11;
  v13[5] = v12;
  sub_1AAEAF2F4();
  v14 = swift_allocObject();
  sub_1AACFEB3C(v23);
  v15 = v23[5];
  *(v14 + 104) = v23[4];
  *(v14 + 120) = v15;
  v16 = v23[7];
  *(v14 + 136) = v23[6];
  *(v14 + 152) = v16;
  v17 = v23[1];
  *(v14 + 40) = v23[0];
  *(v14 + 56) = v17;
  v18 = v23[3];
  *(v14 + 72) = v23[2];
  *(v14 + 88) = v18;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  v19 = sub_1AACBD668(v10);

  v20 = swift_allocObject();
  *(v20 + 16) = sub_1AAEB08EC;
  *(v20 + 24) = v13;
  v21 = *(v19 + 168);
  *(v19 + 168) = sub_1AACD8838;
  *(v19 + 176) = v20;

  sub_1AACB4A98(v21);

  return v19;
}

unint64_t sub_1AAEA1C44(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAEB0814();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF3FC();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB086C;
  *(v15 + 24) = v12;
  v16 = *(v14 + 136);
  *(v14 + 136) = sub_1AACD8838;
  *(v14 + 144) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AAEA1E88(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AAEB0704();
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AAEB0798();
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v15);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB0780;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  *(v11 + 48) = sub_1AACD8838;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13);

  return v11;
}

unint64_t sub_1AAEA200C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1EB426930, MEMORY[0x1E697DB90], MEMORY[0x1E69E6720]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9BB0(0, &qword_1EB426938, MEMORY[0x1E697DB90], type metadata accessor for Signal);
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v15);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB06B0;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  *(v11 + 48) = sub_1AACD8800;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13);

  return v11;
}

unint64_t sub_1AAEA21D8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AAEB0550();
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AAEB05E4();
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v15);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB05CC;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  *(v11 + 48) = sub_1AACD8838;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13);

  return v11;
}

unint64_t sub_1AAEA235C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AAEB0460();
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9348();
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v15);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB04DC;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  *(v11 + 48) = sub_1AACD8838;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13);

  return v11;
}

unint64_t sub_1AAEA24E0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AAEB0340();
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACF3140();
  v10 = swift_allocObject();
  v10[6] = 0;
  v10[7] = 0;
  v10[5] = 0;

  v11 = sub_1AACBD668(v15);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB03BC;
  *(v12 + 24) = v9;
  v13 = *(v11 + 48);
  *(v11 + 48) = sub_1AACD8838;
  *(v11 + 56) = v12;

  sub_1AACB4A98(v13);

  return v11;
}

unint64_t sub_1AAEA2664(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF504();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0D00;
  *(v15 + 24) = v12;
  v16 = *(v14 + 144);
  *(v14 + 144) = sub_1AACD8838;
  *(v14 + 152) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AAEA28D0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEB0D48();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0D24;
  *(v15 + 24) = v12;
  v16 = *(v14 + 144);
  *(v14 + 144) = sub_1AACD8838;
  *(v14 + 152) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AAEA2B3C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9AEF98, MEMORY[0x1E697E0B8], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF480();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0DCC;
  *(v15 + 24) = v12;
  v16 = *(v14 + 136);
  *(v14 + 136) = sub_1AACD8800;
  *(v14 + 144) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AAEA2DA4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF480();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0DF4;
  *(v15 + 24) = v12;
  v16 = *(v14 + 136);
  *(v14 + 136) = sub_1AACD8838;
  *(v14 + 144) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AAEA2FE0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1EB426988, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AAEAF1EC();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0u;
  *(v13 + 168) = 0u;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AAEB0E1C;
  *(v15 + 24) = v12;
  v16 = *(v14 + 168);
  *(v14 + 168) = sub_1AACD8838;
  *(v14 + 176) = v15;

  sub_1AACB4A98(v16);

  return v14;
}