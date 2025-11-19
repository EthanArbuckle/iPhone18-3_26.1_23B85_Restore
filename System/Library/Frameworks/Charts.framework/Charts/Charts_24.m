void *sub_1AAE7887C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>, uint64_t a8)
{
  v49 = a4;
  v50 = a5;
  v45 = a1;
  v46 = a2;
  v51 = a7;
  v10 = *(*a5 + *MEMORY[0x1E69E77B0]);
  v52 = a8;
  v11 = type metadata accessor for PlottableProjection();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v40 - v12;
  v13 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v48 = a6;
  v17 = type metadata accessor for PlottableValue();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v40 - v19;
  v47 = &v40 - v19;
  v21 = *(v13 + 16);
  v22 = v45;
  v21(v16, v45, v10, v18);
  v42 = v13 + 16;
  v23 = v41;
  (*(v43 + 16))(v41, v46, v44);
  sub_1AAF30D00(v16, v23, a6, v10, v52, v20);
  (v21)(v16, v22, v10);
  v24 = *(a3 + 64);
  v25 = *(a3 + 96);
  v54[5] = *(a3 + 80);
  v54[6] = v25;
  v26 = *(a3 + 16);
  v54[0] = *a3;
  v27 = *(a3 + 32);
  v28 = *(a3 + 48);
  v54[1] = v26;
  v54[2] = v27;
  LOBYTE(v54[7]) = *(a3 + 112);
  v54[3] = v28;
  v54[4] = v24;
  v29 = type metadata accessor for MarkDimensions();
  v30 = *(*(v29 - 8) + 16);
  v30(v53, a3, v29);
  v46 = sub_1AAF312D4(v16, v54, v10);
  LODWORD(v44) = v31;
  (v21)(v16, v22, v10);
  v32 = *(v49 + 64);
  v33 = *(v49 + 96);
  v54[5] = *(v49 + 80);
  v54[6] = v33;
  v34 = *(v49 + 16);
  v54[0] = *v49;
  v35 = *(v49 + 32);
  v36 = *(v49 + 48);
  v54[1] = v34;
  v54[2] = v35;
  LOBYTE(v54[7]) = *(v49 + 112);
  v54[3] = v36;
  v54[4] = v32;
  (v30)(v53);
  v37 = sub_1AAF312D4(v16, v54, v10);
  LODWORD(v20) = v38;
  swift_getAtKeyPath();
  SectorMark.init<A>(angle:innerRadius:outerRadius:angularInset:)(v47, v46, v44, v37, v20, v53[0], 0, v48, v54, v52);
  return memcpy(v51, v54, 0x149uLL);
}

void *sub_1AAE78C20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for PlottableProjection() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  return sub_1AAE7887C(a1, v2 + v8, v2 + ((v8 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8), v2 + ((v8 + *(v7 + 64) + 127) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v8 + *(v7 + 64) + 247) & 0xFFFFFFFFFFFFFFF8)), v5, a2, v6);
}

uint64_t VectorizedSectorPlotContent.body.getter()
{
  v1 = type metadata accessor for Vectorizer();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - v3;
  sub_1AACE0800(v0, v1, &off_1EE75E640);
  sub_1AACE0800(v4, v1, &off_1EE75E640);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1AAE78E78(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE78ECC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1AAE78F68()
{
  sub_1AAE842D8(319, &qword_1ED9B4438, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AAE796C4();
    if (v1 <= 0x3F)
    {
      sub_1AAF90774();
      if (v2 <= 0x3F)
      {
        swift_getTupleTypeMetadata2();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PlottableProjection();
          if (v4 <= 0x3F)
          {
            swift_getTupleTypeMetadata2();
            if (v5 <= 0x3F)
            {
              type metadata accessor for MarkDimensions();
              swift_getTupleTypeMetadata2();
              if (v6 <= 0x3F)
              {
                swift_getTupleTypeMetadata2();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1AAE790E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = *(sub_1AAF8CB94() - 8);
  v8 = *(v7 + 80);
  v9 = *(sub_1AAF8CBA4() - 8);
  v10 = *(v9 + 80);
  v11 = v8 | v10 | v6;
  v12 = v11 | 7;
  v13 = (v11 + 32) & ~(v11 | 7);
  v14 = *(v5 + 64);
  if (((v14 + v6) & ~v6) + v14 > v14)
  {
    v14 += (v14 + v6) & ~v6;
  }

  v15 = ((*(v7 + 64) + v10 + ((v8 + 8) & ~v8)) & ~v10) + *(v9 + 64);
  if (v14 > v15)
  {
    v15 = v14;
  }

  if (v15 <= 0x10)
  {
    v15 = 16;
  }

  v16 = v15 + v13;
  if (v16 + 1 > ((v16 + 1 + v12) & ~v12) + v16 + 1)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = ((v16 + 1 + v12) & ~v12) + v16 + 1;
  }

  v18 = (v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v17 <= v18 + 113)
  {
    v17 = v18 + 113;
  }

  v19 = v18 + 49;
  if (v17 > v19)
  {
    v19 = v17;
  }

  v20 = 25;
  if (v19 > 0x19)
  {
    v20 = v19;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_38;
  }

  v21 = v20 + 1;
  v22 = 8 * (v20 + 1);
  if ((v20 + 1) <= 3)
  {
    v25 = ((a2 + ~(-1 << v22) - 248) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    if (v25 < 2)
    {
LABEL_38:
      v27 = *(a1 + v20);
      if (v27 >= 8)
      {
        return (v27 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_38;
  }

LABEL_27:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v21) = *a1;
      }
    }

    else if (v21 == 1)
    {
      LODWORD(v21) = *a1;
    }

    else
    {
      LODWORD(v21) = *a1;
    }
  }

  return (v21 | v26) + 249;
}

void sub_1AAE79388(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 80);
  v9 = *(sub_1AAF8CB94() - 8);
  v10 = *(v9 + 80);
  v11 = *(sub_1AAF8CBA4() - 8);
  v12 = *(v11 + 80);
  v13 = v10 | v12 | v8;
  v14 = v13 | 7;
  v15 = (v13 + 32) & ~(v13 | 7);
  v16 = *(v7 + 64);
  if (((v16 + v8) & ~v8) + v16 > v16)
  {
    v16 += (v16 + v8) & ~v8;
  }

  v17 = ((*(v9 + 64) + v12 + ((v10 + 8) & ~v10)) & ~v12) + *(v11 + 64);
  if (v16 > v17)
  {
    v17 = v16;
  }

  if (v17 <= 0x10)
  {
    v17 = 16;
  }

  v18 = v17 + v15;
  if (v18 + 1 > ((v18 + 1 + v14) & ~v14) + v18 + 1)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = ((v18 + 1 + v14) & ~v14) + v18 + 1;
  }

  v20 = (v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v19 <= v20 + 113)
  {
    v19 = v20 + 113;
  }

  v21 = v20 + 49;
  if (v19 > v21)
  {
    v21 = v19;
  }

  if (v21 <= 0x19)
  {
    v21 = 25;
  }

  v22 = v21 + 1;
  if (a3 < 0xF9)
  {
    v23 = 0;
  }

  else if (v22 <= 3)
  {
    v26 = ((a3 + ~(-1 << (8 * v22)) - 248) >> (8 * v22)) + 1;
    if (HIWORD(v26))
    {
      v23 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (a2 > 0xF8)
  {
    v24 = a2 - 249;
    if (v22 >= 4)
    {
      bzero(a1, v21 + 1);
      *a1 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v25 = (v24 >> (8 * v22)) + 1;
    if (v21 != -1)
    {
      v28 = v24 & ~(-1 << (8 * v22));
      bzero(a1, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *a1 = v28;
          if (v23 > 1)
          {
LABEL_52:
            if (v23 == 2)
            {
              *&a1[v22] = v25;
            }

            else
            {
              *&a1[v22] = v25;
            }

            return;
          }
        }

        else
        {
          *a1 = v24;
          if (v23 > 1)
          {
            goto LABEL_52;
          }
        }

LABEL_49:
        if (v23)
        {
          a1[v22] = v25;
        }

        return;
      }

      *a1 = v28;
      a1[2] = BYTE2(v28);
    }

    if (v23 > 1)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      a1[v21] = -a2;
      return;
    }

LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (v23 == 2)
  {
    *&a1[v22] = 0;
    goto LABEL_37;
  }

  *&a1[v22] = 0;
  if (a2)
  {
    goto LABEL_38;
  }
}

void sub_1AAE796C4()
{
  if (!qword_1EB4261C8)
  {
    sub_1AAE842D8(255, &qword_1ED9B4438, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB4261C8);
    }
  }
}

uint64_t sub_1AAE79744(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AAE79798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

__n128 sub_1AAE79820(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1AAE7984C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE798A0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1AAE79934(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64) & 0xFFFFFFFFFFFFFF8;
  v3 = *(a1 + 136) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  *(a1 + 48) = vandq_s8(*(a1 + 48), xmmword_1AAF92DB0);
  *(a1 + 64) = v2;
  result = vandq_s8(*(a1 + 120), xmmword_1AAF92DC0);
  *(a1 + 120) = result;
  *(a1 + 136) = v3;
  return result;
}

uint64_t sub_1AAE7998C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE799EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AAF8CA64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = *a1;
  v46 = *(a1 + 8);
  v47 = v18;
  v45 = *(a1 + 16);
  v48 = *(a1 + 24);
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  sub_1AAE7B790(a1 + *(v19 + 36), v17, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage, sub_1AACD6DF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1AACD6E60();
    v21 = *(v20 + 48);
    v22 = v5[4];
    v42 = v14;
    v22(v14, v17, v4);
    v41 = v12;
    v22(v12, &v17[v21], v4);
    v23 = v5[2];
    v24 = v43;
    v23(v43, v14, v4);
    v25 = v44;
    v23(v44, v12, v4);
    v27 = v46;
    v26 = v47;
    v28 = v45;
    sub_1AACD7304(v47, v46, v45);

    sub_1AAF8C854();
    v30 = v29;
    sub_1AAF8C854();
    v32 = v31;
    sub_1AAE838F8(a1);
    v33 = v5[1];
    v33(v25, v4);
    v34 = v24;
    v35 = v26;
    v33(v34, v4);
    v33(v41, v4);
    result = (v33)(v42, v4);
    v37 = -127;
  }

  else
  {
    (v5[4])(v14, v17, v4);
    (v5[2])(v12, v14, v4);
    v27 = v46;
    v35 = v47;
    v28 = v45;
    sub_1AACD7304(v47, v46, v45);

    sub_1AAF8C854();
    v30 = v38;
    sub_1AAE838F8(a1);
    v39 = v5[1];
    v39(v12, v4);
    result = (v39)(v14, v4);
    v37 = 1;
    v32 = 0;
  }

  *a2 = v35;
  *(a2 + 8) = v27;
  *(a2 + 16) = v28;
  *(a2 + 24) = v48;
  *(a2 + 32) = v30;
  *(a2 + 40) = v32;
  *(a2 + 48) = v37;
  *(a2 + 56) = v4;
  *(a2 + 64) = &protocol witness table for Date;
  return result;
}

uint64_t sub_1AAE79E0C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1AAF8FE74();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1AAF8F754();
  v63 = sub_1AAF90224();
  v58 = sub_1AAF90234();
  sub_1AAF901D4();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1AAF8F744();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1AAF8FE94();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1AAF90214();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1AAF8FE94();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1AAF90214();
      sub_1AAF8FE94();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_1AAE7A500()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AAF90694();
  if (v3 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AACDC020(v5, v1, v2, v3 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    sub_1AAE86E08(v5, v1, v2, v3);
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AAE7A58C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (v5 < 0)
  {
    MEMORY[0x1AC5992C0](1);

    return sub_1AACDC020(a1, v3, v4, v5 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);

    return sub_1AAE86E08(a1, v3, v4, v5);
  }
}

uint64_t sub_1AAE7A634()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AAF90694();
  if (v3 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AACDC020(v5, v1, v2, v3 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    sub_1AAE86E08(v5, v1, v2, v3);
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AAE7A6D8@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v112 = a2;
  v114 = a1;
  v109 = a6;
  sub_1AACD57C4();
  v90 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v84 - v12;
  sub_1AACD6C54();
  v93 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v84 - v16;
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  v86 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v92 = (&v84 - v18);
  v19 = sub_1AAF8CA64();
  v107 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v84 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v95 = &v84 - v23;
  sub_1AACD6D40(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v84 - v25;
  v106 = sub_1AAF8C6F4();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v98 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1AAF8CBA4();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1AAF8CB94();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v84 - v34;
  v36 = type metadata accessor for PlottableProjection.Storage();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v84 - v38;
  v113 = a3;
  v111 = a5;
  v40 = type metadata accessor for PlottableProjection();
  (*(v37 + 16))(v39, v114 + *(v40 + 44), v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v108 = v40;
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v50 = v110;
      (*(v110 + 4))(v32, v39, a4);
      v42 = v114;
      v51 = v111;
      static PlottableValue.value(_:_:)(*v114, v114[1], *(v114 + 16), v114[3], a4, v35);
      sub_1AACD6F84(v35, a4, v51, &v116);
      (*(*(v113 - 8) + 8))(v112);
      (*(v50 + 1))(v32, a4);
      goto LABEL_10;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v42 = v114;
      v43 = *v114;
      v44 = v114[1];
      v45 = *(v114 + 16);
      v46 = v114[3];
      v47 = v112;
      swift_getAtKeyPath();
      v48 = v44;
      v49 = v111;
      static PlottableValue.value(_:_:)(v43, v48, v45, v46, a4, v35);
      (*(v110 + 1))(v32, a4);
      sub_1AACD6F84(v35, a4, v49, &v116);

      (*(*(v113 - 8) + 8))(v47);
LABEL_10:
      result = (*(*(v108 - 8) + 8))(v42);
      v78 = v120;
      v79 = v118;
      v115 = v117 & 1;
      v80 = v117 & 1;
      v81 = v109;
      *v109 = v116;
      *(v81 + 16) = v80;
      *(v81 + 3) = v79;
      v81[2] = v119;
      *(v81 + 48) = v78;
      *(v81 + 56) = v121;
      return result;
    }

    v85 = v26;
    if (EnumCaseMultiPayload != 4)
    {
      v83 = *(v37 + 8);
      a4 = v36;
      goto LABEL_15;
    }

    v52 = *v39;
    sub_1AAF90774();
    v53 = v102;
    v54 = v104;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v56 = *(TupleTypeMetadata3 + 64);
    (*(v100 + 32))(v99, &v39[*(TupleTypeMetadata3 + 48)], v53);
    (*(v103 + 32))(v101, &v39[v56], v54);
    v84 = v52;
    swift_getAtKeyPath();
    (*(v111 + 24))(a4);
    (*(v110 + 1))(v32, a4);
    v39 = v97;
    swift_dynamicCast();
    v57 = v85;
    sub_1AAF8CAD4();
    AssociatedTypeWitness = *(v107 + 8);
    AssociatedTypeWitness(v39, v19);
    v58 = v105;
    a4 = v106;
    if ((*(v105 + 48))(v57, 1, v106) != 1)
    {
      (*(v58 + 32))(v98, v57, a4);
      v59 = v114[1];
      v95 = *v114;
      v85 = v59;
      LODWORD(v111) = *(v114 + 16);
      v60 = v114[3];
      sub_1AAF8C6E4();
      v61 = v39;
      v39 = v94;
      sub_1AAF8C6D4();
      sub_1AACECB5C(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
      if (sub_1AAF8F584())
      {
        v110 = v60;
        v62 = *(v107 + 32);
        v63 = v88;
        v62(v88, v61, v19);
        v64 = v90;
        v62((v63 + *(v90 + 48)), v39, v19);
        v65 = v89;
        sub_1AAE8432C(v63, v89, sub_1AACD57C4);
        v66 = *(v64 + 48);
        v67 = v87;
        v62(v87, v65, v19);
        v68 = AssociatedTypeWitness;
        AssociatedTypeWitness((v65 + v66), v19);
        sub_1AACD58FC(v63, v65, sub_1AACD57C4);
        v69 = v93;
        v62((v67 + *(v93 + 36)), (v65 + *(v64 + 48)), v19);
        v68(v65, v19);
        v70 = v91;
        sub_1AACD58FC(v67, v91, sub_1AACD6C54);
        v71 = v92;
        v72 = v95;
        v73 = v85;
        *v92 = v95;
        *(v71 + 8) = v73;
        *(v71 + 16) = v111;
        *(v71 + 24) = v110;
        v74 = v71 + *(v86 + 36);
        sub_1AACD6E60();
        v76 = *(v75 + 48);
        v62(v74, v70, v19);
        v62((v74 + v76), (v70 + *(v69 + 36)), v19);
        sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
        swift_storeEnumTagMultiPayload();
        sub_1AACD7304(v72, v73, v111);

        sub_1AAE799EC(v71, &v116);

        (*(*(v113 - 8) + 8))(v112);
        (*(v105 + 8))(v98, v106);
        (*(v103 + 8))(v101, v104);
        (*(v100 + 8))(v99, v102);
        v42 = v114;
        goto LABEL_10;
      }

      __break(1u);
    }

    __break(1u);
  }

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(v110 + 1);
  v83(&v39[*(TupleTypeMetadata2 + 48)], a4);
LABEL_15:
  v83(v39, a4);
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAE7B510()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1AAF90694();
  if (v3 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AACDC020(v5, v1, v2, v3 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    sub_1AAE86E08(v5, v1, v2, v3);
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AAE7B59C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v5 < 0)
  {
    MEMORY[0x1AC5992C0](1);

    return sub_1AACDC020(a1, v3, v4, v5 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);

    return sub_1AAE86E08(a1, v3, v4, v5);
  }
}

uint64_t sub_1AAE7B644()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1AAF90694();
  if (v3 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AACDC020(v5, v1, v2, v3 & 1);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    sub_1AAE86E08(v5, v1, v2, v3);
  }

  return sub_1AAF906F4();
}

unint64_t sub_1AAE7B73C()
{
  result = qword_1EB4261D0;
  if (!qword_1EB4261D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4261D0);
  }

  return result;
}

uint64_t sub_1AAE7B790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAE7B800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v136 = a2;
  v137 = a1;
  v132 = a6;
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  v118 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v111 = (&v108 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v110 = (&v108 - v14);
  v129 = sub_1AAF8CA64();
  v117 = *(v129 - 1);
  MEMORY[0x1EEE9AC00](v129);
  v116 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v113 = &v108 - v16;
  sub_1AACD6D40(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v115 = &v108 - v18;
  v19 = sub_1AAF8C6F4();
  v125 = *(v19 - 8);
  v126 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1AAF8CBA4();
  v123 = *(v21 - 8);
  v124 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1AAF8CB94();
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PlottableValue();
  v130 = *(v24 - 8);
  v131 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v127 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v108 - v27;
  v135 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v108 - v33;
  v35 = type metadata accessor for PlottableProjection.Storage();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v108 - v37);
  v133 = a5;
  v134 = a3;
  v39 = type metadata accessor for PlottableProjection();
  (*(v36 + 16))(v38, v137 + *(v39 + 44), v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v89 = *(swift_getTupleTypeMetadata2() + 48);
      v112 = v39;
      v90 = *(v135 + 32);
      v90(v34, v38, a4);
      v90(v31, (v38 + v89), a4);
      v91 = *v137;
      v92 = *(v137 + 8);
      LOBYTE(v89) = *(v137 + 16);
      v93 = *(v137 + 24);
      v94 = v28;
      v95 = *v137;
      v129 = v28;
      v96 = v133;
      static PlottableValue.value(_:_:)(v95, v92, v89, v93, a4, v94);
      v97 = v127;
      static PlottableValue.value(_:_:)(v91, v92, v89, v93, a4, v127);
      v98 = v129;
      v99 = sub_1AAE83D50(v129, v97, a4, v96, &v138);
      v100 = v131;
      v101 = *(v130 + 8);
      v101(v97, v131, v99);
      (v101)(v98, v100);
      (*(*(v134 - 8) + 8))(v136);
      v102 = *(v135 + 8);
      v102(v31, a4);
      v102(v34, a4);
      goto LABEL_12;
    }

    v53 = v135;
    (*(v135 + 32))(v34, v38, a4);
    v54 = v137;
    v55 = v133;
    static PlottableValue.value(_:_:)(*v137, *(v137 + 8), *(v137 + 16), *(v137 + 24), a4, v28);
    v56 = sub_1AAE83B9C(v28, a4, v55, &v138);
    (*(v130 + 8))(v28, v131, v56);
    (*(*(v134 - 8) + 8))(v136);
    (*(v53 + 8))(v34, a4);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v129 = *v38;
    v54 = v137;
    v57 = *v137;
    v58 = *(v137 + 8);
    v59 = *(v137 + 16);
    v60 = *(v137 + 24);
    swift_getAtKeyPath();
    v61 = v57;
    v62 = v133;
    static PlottableValue.value(_:_:)(v61, v58, v59, v60, a4, v28);
    (*(v135 + 8))(v34, a4);
    v63 = sub_1AAE83B9C(v28, a4, v62, &v138);
    (*(v130 + 8))(v28, v131, v63);

    (*(*(v134 - 8) + 8))(v136);
LABEL_8:
    result = (*(*(v39 - 8) + 8))(v54, v39);
LABEL_13:
    v103 = v132;
    v104 = v145;
    v132[6] = v144;
    v103[7] = v104;
    v103[8] = v146;
    v105 = v141;
    v103[2] = v140;
    v103[3] = v105;
    v106 = v143;
    v103[4] = v142;
    v103[5] = v106;
    v107 = v139;
    *v103 = v138;
    v103[1] = v107;
    return result;
  }

  v112 = v39;
  if (EnumCaseMultiPayload == 3)
  {
    v128 = *v38;
    v42 = *(v137 + 8);
    v126 = *v137;
    v41 = v126;
    v43 = *(v137 + 16);
    LODWORD(v125) = v43;
    v44 = *(v137 + 24);
    swift_getAtKeyPath();
    v45 = v28;
    v129 = v28;
    v46 = v133;
    static PlottableValue.value(_:_:)(v41, v42, v43, v44, a4, v45);
    v47 = *(v135 + 8);
    v47(v34, a4);
    swift_getAtKeyPath();
    v48 = v127;
    static PlottableValue.value(_:_:)(v126, v42, v125, v44, a4, v127);
    v47(v34, a4);
    v49 = v129;
    v50 = sub_1AAE83D50(v129, v48, a4, v46, &v138);
    v51 = v131;
    v52 = *(v130 + 8);
    v52(v48, v131, v50);
    (v52)(v49, v51);

    (*(*(v134 - 8) + 8))(v136);
LABEL_12:
    result = (*(*(v112 - 8) + 8))(v137, v112);
    goto LABEL_13;
  }

  v65 = *v38;
  sub_1AAF90774();
  v66 = v122;
  v67 = v124;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v69 = *(TupleTypeMetadata3 + 64);
  (*(v120 + 32))(v119, v38 + *(TupleTypeMetadata3 + 48), v66);
  (*(v123 + 32))(v121, v38 + v69, v67);
  v131 = v65;
  swift_getAtKeyPath();
  (*(v133 + 24))(a4);
  (*(v135 + 8))(v34, a4);
  v70 = v116;
  v71 = v129;
  swift_dynamicCast();
  v72 = v115;
  sub_1AAF8CAD4();
  v73 = v117;
  (*(v117 + 8))(v70, v71);
  v74 = v125;
  result = (*(v125 + 48))(v72, 1, v126);
  if (result != 1)
  {
    (*(v74 + 32))();
    v75 = *v137;
    v76 = *(v137 + 8);
    v77 = *(v137 + 16);
    v133 = *(v137 + 24);
    v78 = v133;
    sub_1AAF8C6E4();
    v79 = v110;
    *v110 = v75;
    *(v79 + 8) = v76;
    *(v79 + 16) = v77;
    *(v79 + 24) = v78;
    v80 = *(v118 + 36);
    v135 = *(v73 + 32);
    (v135)(v79 + v80, v70, v129);
    sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
    swift_storeEnumTagMultiPayload();
    v81 = v75;
    v82 = v75;
    v83 = v76;
    v84 = v76;
    LOBYTE(v76) = v77;
    sub_1AACD7304(v82, v84, v77);
    v85 = v133;

    sub_1AAF8C6D4();
    v86 = v111;
    *v111 = v81;
    *(v86 + 8) = v83;
    *(v86 + 16) = v76;
    *(v86 + 24) = v85;
    (v135)(v86 + *(v118 + 36), v70, v129);
    swift_storeEnumTagMultiPayload();
    v87 = v109;
    sub_1AAE7B790(v79, v109, qword_1ED9B13F0, type metadata accessor for PlottableValue, sub_1AACD6DF8);
    sub_1AACD7304(v81, v83, v76);

    sub_1AAE799EC(v87, &v147);
    sub_1AAE7B790(v86, v87, qword_1ED9B13F0, type metadata accessor for PlottableValue, sub_1AACD6DF8);
    sub_1AAE799EC(v87, v152);

    (*(*(v134 - 8) + 8))(v136);
    sub_1AAE838F8(v86);
    sub_1AAE838F8(v79);
    (*(v125 + 8))(v128, v126);
    (*(v123 + 8))(v121, v124);
    (*(v120 + 8))(v119, v122);
    v156 = v149;
    v157 = v150;
    v154 = v147;
    v155 = v148;
    *(&v158[2] + 8) = v152[2];
    *(&v158[3] + 8) = v152[3];
    *&v158[0] = v151;
    *(&v158[4] + 1) = v153;
    *(v158 + 8) = v152[0];
    *(&v158[1] + 8) = v152[1];
    v165 = v158[2];
    v166 = v158[3];
    v167 = v158[4];
    v161 = v149;
    v162 = v150;
    v163 = v158[0];
    v164 = v158[1];
    v159 = v147;
    v160 = v148;
    v88 = sub_1AAE52954(&v159);
    result = (*(*(v112 - 8) + 8))(v137, v88);
    v144 = v165;
    v145 = v166;
    v146 = v167;
    v140 = v161;
    v141 = v162;
    v142 = v163;
    v143 = v164;
    v138 = v159;
    v139 = v160;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE7C71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v98 = a3;
  v101 = a2;
  v95 = a7;
  v92 = type metadata accessor for PlottableValue();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v83 - v13;
  v93 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v83 - v17;
  v18 = type metadata accessor for PlottableProjection.Storage();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v83 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = TupleTypeMetadata2 - 8;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v30 = &v83 - v29;
  v94 = a4;
  v88 = a5;
  v90 = a6;
  v87 = type metadata accessor for PlottableProjection();
  v31 = *(v87 + 44);
  v32 = &v30[*(v28 + 56)];
  v96 = v19;
  v33 = *(v19 + 16);
  v34 = a1;
  v33(v30, a1 + v31, v18);
  v33(v32, v101 + v31, v18);
  v100 = v30;
  v99 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v86 = a1;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33(v21, v100, v99);
      v50 = *v21;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v84 = *v32;
        v52 = *a1;
        v51 = *(a1 + 8);
        v53 = *(a1 + 16);
        v54 = *(a1 + 24);
        v55 = v85;
        swift_getAtKeyPath();
        v56 = v88;
        v83 = v50;
        v57 = v90;
        static PlottableValue.value(_:_:)(v52, v51, v53, v54, v88, v97);
        v93 = *(v93 + 8);
        (v93)(v55, v56);
        v43 = v101;
        v58 = *v101;
        v59 = *(v101 + 8);
        LOBYTE(v54) = *(v101 + 16);
        v60 = *(v101 + 24);
        swift_getAtKeyPath();
        v61 = v89;
        static PlottableValue.value(_:_:)(v58, v59, v54, v60, v56, v89);
        (v93)(v55, v56);
        v62 = v97;
        v63 = sub_1AAE83D50(v97, v61, v56, v57, v102);
        v64 = *(v91 + 8);
        v65 = v92;
        v64(v61, v92, v63);
        (v64)(v62, v65);

        (*(*(v94 - 8) + 8))(v98);
        goto LABEL_8;
      }
    }

    else if (EnumCaseMultiPayload == 3 && swift_getEnumCaseMultiPayload() == 3)
    {
      v78 = *(v96 + 8);
      v78(v32, v99);
      v78(v100, v99);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v33(v83, v100, v99);
    v74 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v75 = *(v93 + 8);
      v76 = v88;
      v75(&v32[v74], v88);
      v75(v32, v76);
      v77 = v83;
      v75(&v83[v74], v76);
      v75(v77, v76);
      (*(v96 + 8))(v100, v99);
    }

    else
    {
      v79 = *(v93 + 8);
      v80 = v83;
      v81 = &v83[v74];
      v82 = v88;
      v79(v81, v88);
      v79(v80, v82);
    }
  }

  else
  {
    v33(v26, v100, v99);
    if (!swift_getEnumCaseMultiPayload())
    {
      v36 = v93;
      v37 = *(v93 + 32);
      v38 = v85;
      v39 = v88;
      v37(v85, v26, v88);
      v40 = v84;
      v37(v84, v32, v39);
      v41 = v97;
      v42 = v90;
      static PlottableValue.value(_:_:)(*v34, *(v34 + 8), *(v34 + 16), *(v34 + 24), v39, v97);
      v43 = v101;
      v44 = v89;
      static PlottableValue.value(_:_:)(*v101, *(v101 + 8), *(v101 + 16), *(v101 + 24), v39, v89);
      v45 = sub_1AAE83D50(v41, v44, v39, v42, v102);
      v46 = *(v91 + 8);
      v47 = v44;
      v48 = v92;
      v46(v47, v92, v45);
      (v46)(v41, v48);
      (*(*(v94 - 8) + 8))(v98);
      v49 = *(v36 + 8);
      v49(v40, v39);
      v49(v38, v39);
LABEL_8:
      v66 = v87;
      v67 = *(*(v87 - 8) + 8);
      v67(v43, v87);
      v67(v86, v66);
      result = (*(v96 + 8))(v100, v99);
      v69 = v102[7];
      v70 = v95;
      v95[6] = v102[6];
      v70[7] = v69;
      v70[8] = v102[8];
      v71 = v102[3];
      v70[2] = v102[2];
      v70[3] = v71;
      v72 = v102[5];
      v70[4] = v102[4];
      v70[5] = v72;
      v73 = v102[1];
      *v70 = v102[0];
      v70[1] = v73;
      return result;
    }

    (*(v93 + 8))(v26, v88);
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAE7D160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v155 = a7;
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  v137 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v130 = (&v127 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v129 = (&v127 - v18);
  v145 = sub_1AAF8CA64();
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v135 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v132 = &v127 - v20;
  sub_1AACD6D40(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v134 = &v127 - v22;
  v146 = sub_1AAF8C6F4();
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v151 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1AAF8CBA4();
  v142 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v140 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1AAF8CB94();
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v138 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PlottableValue();
  v153 = *(v26 - 8);
  v154 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v150 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v156 = &v127 - v29;
  v159 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v149 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v157 = &v127 - v33;
  v34 = a4;
  v35 = type metadata accessor for PlottableProjection.Storage();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v127 - v37);
  v39 = *(a2 + 96);
  v192 = *(a2 + 80);
  v193 = v39;
  v40 = *(a2 + 64);
  v194 = *(a2 + 112);
  v41 = *(a2 + 16);
  v191[0] = *a2;
  v191[1] = v41;
  v42 = *(a2 + 48);
  v191[2] = *(a2 + 32);
  v191[3] = v42;
  v191[4] = v40;
  v43 = v193;
  v160 = a3;
  if (v193 == 255)
  {
    v147 = 0;
    LODWORD(v148) = 3;
  }

  else
  {
    LODWORD(v148) = LOBYTE(v191[0]);
    if (LOBYTE(v191[0]) == 3)
    {
      goto LABEL_20;
    }

    v44 = a1;
    v45 = *(&v192 + 1);
    sub_1AAE64F50(*(&v192 + 1), v193 & 1);
    v46 = sub_1AAF31474(v160, v45, v43 & 1);
    v47 = type metadata accessor for MarkDimensions.Storage();
    (*(*(v47 - 8) + 8))(v191 + 8, v47);
    v147 = *&v46;
    a1 = v44;
  }

  v48 = type metadata accessor for PlottableProjection();
  (*(v36 + 16))(v38, a1 + *(v48 + 44), v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v50 = v158;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v152 = v34;
      v105 = type metadata accessor for MarkDimensions();
      (*(*(v105 - 8) + 8))(v191, v105);
      v106 = *(swift_getTupleTypeMetadata2() + 48);
      v107 = a6;
      v108 = *(v159 + 32);
      v109 = v157;
      v108(v157, v38, a5);
      v108(v149, (v38 + v106), a5);
      v136 = a1;
      v110 = *a1;
      v111 = *(a1 + 8);
      v112 = *(v136 + 16);
      v131 = v48;
      v113 = *(v136 + 24);
      v114 = v156;
      static PlottableValue.value(_:_:)(v110, v111, v112, v113, a5, v156);
      v115 = v150;
      v116 = v112;
      v117 = v149;
      static PlottableValue.value(_:_:)(v110, v111, v116, v113, a5, v150);
      v118 = sub_1AAE83D50(v114, v115, a5, v107, &v161);
      v119 = v154;
      v120 = *(v153 + 8);
      v120(v115, v154, v118);
      (v120)(v114, v119);
      (*(*(v152 - 8) + 8))(v160);
      v121 = *(v159 + 8);
      v121(v117, a5);
      v121(v109, a5);
      goto LABEL_16;
    }

    v66 = type metadata accessor for MarkDimensions();
    (*(*(v66 - 8) + 8))(v191, v66);
    v67 = v159;
    v68 = v157;
    (*(v159 + 32))(v157, v38, a5);
    v69 = v156;
    static PlottableValue.value(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a5, v156);
    v70 = sub_1AAE83EF8(v69, v147, v148, a5, a6, &v161);
    (*(v153 + 8))(v69, v154, v70);
    (*(*(v34 - 8) + 8))(v160, v34);
    (*(v67 + 8))(v68, a5);
    v71 = *(*(v48 - 8) + 8);
    v72 = a1;
LABEL_12:
    v81 = v48;
LABEL_17:
    result = v71(v72, v81);
    goto LABEL_18;
  }

  v152 = v34;
  if (EnumCaseMultiPayload == 2)
  {
    v73 = type metadata accessor for MarkDimensions();
    (*(*(v73 - 8) + 8))(v191, v73);
    v158 = *v38;
    v74 = a1;
    v75 = *a1;
    v151 = *(v74 + 8);
    v76 = *(v74 + 16);
    v77 = *(v74 + 24);
    v78 = v157;
    swift_getAtKeyPath();
    v79 = v156;
    static PlottableValue.value(_:_:)(v75, v151, v76, v77, a5, v156);
    (*(v159 + 8))(v78, a5);
    v80 = sub_1AAE83EF8(v79, v147, v148, a5, a6, &v161);
    (*(v153 + 8))(v79, v154, v80);

    (*(*(v152 - 8) + 8))(v160);
    v71 = *(*(v48 - 8) + 8);
    v72 = v74;
    goto LABEL_12;
  }

  v131 = v48;
  v136 = a1;
  if (EnumCaseMultiPayload == 3)
  {
    v51 = type metadata accessor for MarkDimensions();
    (*(*(v51 - 8) + 8))(v191, v51);
    v52 = v38[1];
    v158 = *v38;
    v151 = v52;
    v53 = a6;
    v55 = *a1;
    v54 = *(a1 + 8);
    v56 = *(a1 + 16);
    v57 = *(a1 + 24);
    v148 = v55;
    v149 = v57;
    v58 = v157;
    swift_getAtKeyPath();
    static PlottableValue.value(_:_:)(v55, v54, v56, v57, a5, v156);
    v59 = *(v159 + 8);
    v59(v58, a5);
    swift_getAtKeyPath();
    v60 = v150;
    v61 = v53;
    static PlottableValue.value(_:_:)(v148, v54, v56, v149, a5, v150);
    v59(v58, a5);
    v62 = v156;
    v63 = sub_1AAE83D50(v156, v60, a5, v61, &v161);
    v64 = v154;
    v65 = *(v153 + 8);
    v65(v60, v154, v63);
    (v65)(v62, v64);

    (*(*(v152 - 8) + 8))(v160);
LABEL_16:
    v81 = v131;
    v71 = *(*(v131 - 8) + 8);
    v72 = v136;
    goto LABEL_17;
  }

  v82 = *v38;
  sub_1AAF90774();
  v83 = v141;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v85 = *(TupleTypeMetadata3 + 64);
  (*(v139 + 32))(v138, v38 + *(TupleTypeMetadata3 + 48), v83);
  (*(v142 + 32))(v140, v38 + v85, v50);
  v86 = v157;
  v156 = v82;
  swift_getAtKeyPath();
  (*(a6 + 24))(a5, a6);
  (*(v159 + 8))(v86, a5);
  v87 = v135;
  v88 = v145;
  swift_dynamicCast();
  v89 = v134;
  sub_1AAF8CAD4();
  (*(v143 + 8))(v87, v88);
  v90 = v144;
  if ((*(v144 + 48))(v89, 1, v146) != 1)
  {
    v91 = type metadata accessor for MarkDimensions();
    (*(*(v91 - 8) + 8))(v191, v91);
    (*(v90 + 32))();
    v92 = *v136;
    v93 = *(v136 + 8);
    v94 = *(v136 + 16);
    v95 = *(v136 + 24);
    sub_1AAF8C6E4();
    v96 = v129;
    *v129 = v92;
    *(v96 + 8) = v93;
    *(v96 + 16) = v94;
    *(v96 + 24) = v95;
    v97 = *(v137 + 36);
    v159 = *(v143 + 32);
    v98 = v145;
    (v159)(v96 + v97, v87, v145);
    sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
    v153 = v99;
    swift_storeEnumTagMultiPayload();
    v157 = v93;
    LODWORD(v154) = v94;
    sub_1AACD7304(v92, v93, v94);

    sub_1AAF8C6D4();
    v100 = v98;
    v101 = v130;
    *v130 = v92;
    *(v101 + 8) = v93;
    *(v101 + 16) = v94;
    *(v101 + 24) = v95;
    (v159)(v101 + *(v137 + 36), v87, v100);
    swift_storeEnumTagMultiPayload();
    v102 = v128;
    sub_1AAE7B790(v96, v128, qword_1ED9B13F0, type metadata accessor for PlottableValue, sub_1AACD6DF8);
    sub_1AACD7304(v92, v157, v154);

    sub_1AAE799EC(v102, &v170);
    sub_1AAE7B790(v101, v102, qword_1ED9B13F0, type metadata accessor for PlottableValue, sub_1AACD6DF8);
    sub_1AAE799EC(v102, v175);

    (*(*(v152 - 8) + 8))(v160);
    sub_1AAE838F8(v101);
    sub_1AAE838F8(v96);
    (*(v144 + 8))(v151, v146);
    (*(v142 + 8))(v140, v158);
    (*(v139 + 8))(v138, v141);
    v179 = v172;
    v180 = v173;
    v177 = v170;
    v178 = v171;
    *(&v181[2] + 8) = v175[2];
    *(&v181[3] + 8) = v175[3];
    *&v181[0] = v174;
    *(&v181[4] + 1) = v176;
    *(v181 + 8) = v175[0];
    *(&v181[1] + 8) = v175[1];
    v188 = v181[2];
    v189 = v181[3];
    v190 = v181[4];
    v184 = v172;
    v185 = v173;
    v186 = v181[0];
    v187 = v181[1];
    v182 = v170;
    v183 = v171;
    v103 = sub_1AAE52954(&v182);
    result = (*(*(v131 - 8) + 8))(v136, v103);
    v167 = v188;
    v168 = v189;
    v169 = v190;
    v163 = v184;
    v164 = v185;
    v165 = v186;
    v166 = v187;
    v161 = v182;
    v162 = v183;
LABEL_18:
    v122 = v155;
    v123 = v168;
    v155[6] = v167;
    v122[7] = v123;
    v122[8] = v169;
    v124 = v164;
    v122[2] = v163;
    v122[3] = v124;
    v125 = v166;
    v122[4] = v165;
    v122[5] = v125;
    v126 = v162;
    *v122 = v161;
    v122[1] = v126;
    return result;
  }

  __break(1u);
LABEL_20:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

__n128 sub_1AAE7E33C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a2;
  v83 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlottableProjection();
  v79 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v72 - v21;
  v76 = a4;
  v77 = a5;
  v22 = type metadata accessor for BoundingSectionSpecification();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v72 - v25;
  v27 = *(v23 + 16);
  v80 = a1;
  v27(&v72 - v25, a1, v22, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v74 = v12;
      if (EnumCaseMultiPayload == 6)
      {
        type metadata accessor for MarkDimensions();
        v40 = &v26[*(swift_getTupleTypeMetadata2() + 48)];
        v41 = *(v40 + 5);
        v84[4] = *(v40 + 4);
        v84[5] = v41;
        v84[6] = *(v40 + 6);
        v85 = v40[112];
        v42 = *(v40 + 1);
        v84[0] = *v40;
        v84[1] = v42;
        v43 = *(v40 + 3);
        v84[2] = *(v40 + 2);
        v84[3] = v43;
        v44 = v79;
        v45 = v82;
        (*(v79 + 32))(v82, v26, v12);
        v46 = v78;
        (*(v44 + 16))(v78, v45, v12);
        v47 = v83;
        v48 = v75;
        v49 = v81;
        (*(v83 + 16))(v75, v81, a3);
        sub_1AAE7D160(v46, v84, v48, a3, v76, v77, &v86);
        (*(v47 + 8))(v49, a3);
        (*(v23 + 8))(v80, v22);
        (*(v44 + 8))(v82, v74);
        goto LABEL_19;
      }

      v61 = &v26[*(swift_getTupleTypeMetadata2() + 48)];
      v62 = *(v61 + 4);
      v63 = *(v61 + 5);
      v64 = v61[48];
      sub_1AAD0E818(*(v61 + 1), *(v61 + 2), v61[24]);
      sub_1AADB2F88(v62, v63, v64);
      v30 = v79;
      v65 = v82;
      (*(v79 + 32))(v82, v26, v12);
      v66 = v78;
      (*(v30 + 16))(v78, v65, v12);
      v34 = v83;
      v67 = v75;
      v36 = v81;
      (*(v83 + 16))(v75, v81, a3);
      v37 = v66;
      v38 = v67;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v53 = v12;
        v72 = *(swift_getTupleTypeMetadata2() + 48);
        v73 = v23;
        v54 = *(v79 + 32);
        v54(v82, v26, v12);
        v54(v78, &v26[v72], v12);
        v55 = *(v79 + 16);
        v55(v17, v82, v53);
        v55(v14, v78, v53);
        v56 = v75;
        v57 = v81;
        (*(v83 + 16))(v75, v81, a3);
        sub_1AAE7C71C(v17, v14, v56, a3, v76, v77, &v86);
        (*(v83 + 8))(v57, a3);
        (*(v73 + 8))(v80, v22);
        v58 = *(v79 + 8);
        v58(v78, v53);
        v58(v82, v53);
        goto LABEL_19;
      }

      v30 = v79;
      v31 = *(v79 + 32);
      v32 = v82;
      v74 = v12;
      v31(v82, v26, v12);
      v33 = v78;
      (*(v30 + 16))(v78, v32, v12);
      v34 = v83;
      v35 = v75;
      v36 = v81;
      (*(v83 + 16))(v75, v81, a3);
      v37 = v33;
      v38 = v35;
    }

    sub_1AAE7B800(v37, v38, a3, v76, v77, &v86);
    (*(v34 + 8))(v36, a3);
    (*(v23 + 8))(v80, v22);
    (*(v30 + 8))(v82, v74);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v39 = v81;
      swift_getAtKeyPath();
      *&v96 = v95;
      BYTE8(v96) = 0;
      sub_1AAD59F90(&v96);
      v92 = v102;
      v93 = v103;
      v94 = v104;
      v88 = v98;
      v89 = v99;
      v90 = v100;
      v91 = v101;
      v86 = v96;
      v87 = v97;

      (*(v83 + 8))(v39, a3);
    }

    else
    {
      v59 = v83;
      v60 = v81;
      sub_1AAE83CB0(&v86);

      (*(v59 + 8))(v60, a3);
    }

    (*(v23 + 8))(v80, v22);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v83 + 8))(v81, a3);
      (*(v23 + 8))(v80, v22);
      v50 = v26[8];
      v51 = *(v26 + 2);
      v52 = v26[24];
      *&v96 = *v26;
      BYTE8(v96) = v50;
      v97.n128_u64[0] = v51;
      v97.n128_u8[8] = v52;
      sub_1AAE52D28(&v96);
    }

    else
    {
      (*(v83 + 8))(v81, a3);
      (*(v23 + 8))(v80, v22);
      v29 = v26[8];
      *&v96 = *v26;
      BYTE8(v96) = v29;
      sub_1AAD59F90(&v96);
    }

    v92 = v102;
    v93 = v103;
    v94 = v104;
    v88 = v98;
    v89 = v99;
    v90 = v100;
    v91 = v101;
    v86 = v96;
    v87 = v97;
  }

LABEL_19:
  v68 = v93;
  *(a6 + 96) = v92;
  *(a6 + 112) = v68;
  *(a6 + 128) = v94;
  v69 = v89;
  *(a6 + 32) = v88;
  *(a6 + 48) = v69;
  v70 = v91;
  *(a6 + 64) = v90;
  *(a6 + 80) = v70;
  result = v87;
  *a6 = v86;
  *(a6 + 16) = result;
  return result;
}

uint64_t sub_1AAE7EC08(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v534.i64[0] = a1;
  v22 = *a2;
  v580 = a2[1];
  v579 = v22;
  v23 = a2[2];
  v24 = a2[3];
  *(v584 + 9) = *(a2 + 89);
  v25 = a2[4];
  v26 = a2[5];
  v530 = a2;
  v584[0] = v26;
  v583 = v25;
  v581 = v23;
  v582 = v24;
  v28 = a3[2];
  v27 = a3[3];
  v29 = a3[4];
  v30 = type metadata accessor for PlottableProjection.Storage();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v522 = v484 - v31;
  sub_1AAE8402C();
  v33 = v32;
  v524 = a5;
  v34 = *(*(a5 + 8) + 8);
  v35 = *(v34 + 8);
  v36 = sub_1AACECB5C(&qword_1EB4261E8, sub_1AAE8402C);
  *&v545[0] = a4;
  v484[5] = v36;
  v484[6] = v33;
  *(&v545[0] + 1) = v33;
  *&v545[1] = v35;
  *(&v545[1] + 1) = v36;
  v37 = sub_1AAF90104();
  v492 = *(v37 - 8);
  v493 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v489 = v484 - v38;
  sub_1AACD6D40(255, &qword_1EB4261F0, sub_1AAE8412C, MEMORY[0x1E69E62F8]);
  v40 = v39;
  v41 = sub_1AAE84188();
  *&v545[0] = a4;
  v484[3] = v41;
  v484[4] = v40;
  *(&v545[0] + 1) = v40;
  *&v545[1] = v35;
  *(&v545[1] + 1) = v41;
  v42 = sub_1AAF90104();
  v486 = *(v42 - 8);
  v487 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v485 = v484 - v43;
  v44 = sub_1AAF8CBA4();
  v510 = *(v44 - 8);
  v511 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v495 = v484 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v506 = v484 - v47;
  v48 = sub_1AAF8CB94();
  v508 = *(v48 - 8);
  v509 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v494 = v484 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v505 = v484 - v51;
  v523 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v497 = v484 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v496 = v484 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v500 = v484 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v504 = v484 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v503 = v484 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v502 = v484 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v499 = v484 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v498 = v484 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v501 = v484 - v69;
  sub_1AAE842D8(255, &qword_1ED9B2A88, MEMORY[0x1E69E62F8]);
  v71 = v70;
  v72 = sub_1AAE840B8();
  *&v545[0] = a4;
  v484[1] = v72;
  v484[2] = v71;
  *(&v545[0] + 1) = v71;
  v507 = v35;
  *&v545[1] = v35;
  *(&v545[1] + 1) = v72;
  v73 = sub_1AAF90104();
  v490 = *(v73 - 8);
  v491 = v73;
  MEMORY[0x1EEE9AC00](v73);
  v488 = v484 - v74;
  v528 = v30;
  v526 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v520 = (v484 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v77);
  v484[0] = v484 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v81 = v484 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v84 = (v484 - v83);
  MEMORY[0x1EEE9AC00](v85);
  v517 = (v484 - v86);
  MEMORY[0x1EEE9AC00](v87);
  v89 = (v484 - v88);
  v519 = v28;
  v527 = v27;
  v529 = v29;
  v90 = type metadata accessor for PlottableProjection();
  v91 = *(v90 - 8);
  v531 = v90;
  v532 = v91;
  MEMORY[0x1EEE9AC00](v90);
  v513 = v484 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v515 = v484 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v516 = v484 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v518 = v484 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v514 = v484 - v100;
  v101 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v102);
  v104 = v484 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v525 = a4;
  v521 = v34;
  v105 = sub_1AAF8FB84();
  v106 = MEMORY[0x1E69E7CC0];
  if (v105)
  {
    return v106;
  }

  (*(v101 + 16))(v104, COERCE_DOUBLE(*&v533), a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v131 = *v104;
      if (EnumCaseMultiPayload == 2)
      {
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v132 = v525;
        v484[-8] = v527;
        v484[-7] = v132;
        v133 = v524;
        v484[-6] = v529;
        v484[-5] = v133;
        *&v484[-4] = v131;
        *&v484[-3] = a6;
        v482 = *&a7;
        v483 = a8;
        sub_1AAE8412C();
        v106 = sub_1AACB00E0(sub_1AAE8428C, &v484[-10], v132, v134, MEMORY[0x1E69E73E0], v521, MEMORY[0x1E69E7410], v135);
      }

      else
      {
        v183 = *(v104 + 1);
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v184 = v525;
        v484[-10] = v527;
        v484[-9] = v184;
        v185 = v524;
        v484[-8] = v529;
        v484[-7] = v185;
        *&v484[-6] = v131;
        *&v484[-5] = a6;
        *&v484[-4] = a7;
        *&v484[-3] = a8;
        v482 = v183;
        sub_1AAE8412C();
        v106 = sub_1AACB00E0(sub_1AAE84210, &v484[-12], v184, v186, MEMORY[0x1E69E73E0], v521, MEMORY[0x1E69E7410], v187);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v152 = *v104;
      if (v104[8])
      {
        v152 = a11;
      }

      v153 = v152 + a7;
      if (v104[24])
      {
        v154 = a12;
      }

      else
      {
        v154 = *(v104 + 2);
      }

      v155 = v154 + a8;
      sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1AAF92AB0;
      *(v106 + 32) = v153;
      *(v106 + 40) = v155;
    }

    else
    {
      if (v104[8])
      {
        v109 = (a11 + a12) * 0.5;
      }

      else
      {
        v109 = *v104;
      }

      v208 = v109 + a6;
      sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1AAF92AB0;
      *(v106 + 32) = v208;
      *(v106 + 40) = v208;
    }

    return v106;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v136 = v519;
      *&v137 = COERCE_DOUBLE(type metadata accessor for MarkDimensions());
      v138 = v531;
      v139 = &v104[*(swift_getTupleTypeMetadata2() + 48)];
      v140 = *(v139 + 5);
      v545[4] = *(v139 + 4);
      v545[5] = v140;
      v545[6] = *(v139 + 6);
      v546 = v139[112];
      v141 = *(v139 + 1);
      v545[0] = *v139;
      v545[1] = v141;
      v142 = *(v139 + 3);
      v545[2] = *(v139 + 2);
      v545[3] = v142;
      v143 = v514;
      (*(v532 + 32))(v514, v104, v138);
      v144 = v530;
      v145 = *(v530 + 104);
      v146 = v523;
      if (v145 != 255)
      {
        v147 = v530[5];
        v553 = v530[4];
        v554 = v147;
        v555 = *(v530 + 12);
        v148 = v530[3];
        v551 = v530[2];
        v552 = v148;
        v149 = v530[1];
        v549 = *v530;
        v550 = v149;
        (*(v526 + 16))(v89, &v143[*(v138 + 44)], v528);
        v150 = swift_getEnumCaseMultiPayload();
        v533 = *&v137;
        if (v150 <= 1)
        {
          if (v150)
          {
            v330 = v527;
            v331 = *(swift_getTupleTypeMetadata2() + 48);
            v332 = *(v146 + 32);
            v332(v498, v89, v330);
            v333 = (v332)(v499, v89 + v331, v330);
            if (v145)
            {
              LODWORD(v483) = 0;
              v481 = 397;
              goto LABEL_201;
            }

            v557[3] = v553;
            v557[4] = v554;
            *&v557[5] = v555;
            v556 = v549;
            v557[0] = v550;
            v557[2] = v552;
            v557[1] = v551;
            if (LOBYTE(v545[6]) == 255)
            {
              sub_1AAE6433C(&v574);
            }

            else
            {
              v576 = *(&v545[2] + 8);
              v577 = *(&v545[3] + 8);
              v578[0] = *(&v545[4] + 8);
              *&v578[1] = *(&v545[5] + 1);
              v574 = *(v545 + 8);
              v575 = *(&v545[1] + 8);
              BYTE8(v578[1]) = v545[6];
            }

            v528 = v484;
            v537 = v576;
            v538[0] = v577;
            v538[1] = v578[0];
            *(&v538[1] + 9) = *(v578 + 9);
            v535 = v574;
            v536 = v575;
            MEMORY[0x1EEE9AC00](v333);
            v395 = v527;
            v484[-12] = v136;
            v484[-11] = v395;
            v396 = v524;
            v397 = v525;
            v398 = v529;
            v484[-10] = v525;
            v484[-9] = v398;
            v484[-8] = v396;
            v484[-7] = &v535;
            v400 = v498;
            v399 = v499;
            v484[-6] = &v556;
            v484[-5] = v400;
            v484[-4] = v399;
            *&v484[-3] = a7;
            v482 = *&a8;
            sub_1AAE8432C(v144, &v547, sub_1AACCF364);
            sub_1AAE8432C(v144, &v547, sub_1AACCF364);
            v401 = type metadata accessor for MarkDimensions.Storage();
            (*(*(v401 - 8) + 16))(&v547, v545 + 8, v401);
            sub_1AAE8412C();
            v404 = sub_1AACB00E0(sub_1AAE84394, &v484[-14], v397, v402, MEMORY[0x1E69E73E0], v521, MEMORY[0x1E69E7410], v403);
            v405 = type metadata accessor for MappedCoefficients();
            (*(*(v405 - 8) + 8))(&v574, v405);
            sub_1AAE52094(v144);
            sub_1AAE52094(v144);
            (*(*(*&v533 - 8) + 8))(v545);
            (*(v532 + 8))(v514, v531);
            v406 = *(v523 + 8);
            v406(v399, v395);
            v406(v400, v395);
            return v404;
          }

          else
          {
            (*(v146 + 32))(v501, v89, v527);
            if (v145)
            {
              v557[3] = v553;
              v557[4] = v554;
              *&v557[5] = v555;
              v556 = v549;
              v557[0] = v550;
              v557[2] = v552;
              v557[1] = v551;
              if (LOBYTE(v545[6]) == 255)
              {
                sub_1AAE6433C(&v540);
              }

              else
              {
                v542 = *(&v545[2] + 8);
                v543 = *(&v545[3] + 8);
                v544[0] = *(&v545[4] + 8);
                *&v544[1] = *(&v545[5] + 1);
                v540 = *(v545 + 8);
                v541 = *(&v545[1] + 8);
                BYTE8(v544[1]) = v545[6];
              }

              v576 = v542;
              v577 = v543;
              v578[0] = v544[0];
              *(v578 + 9) = *(v544 + 9);
              v574 = v540;
              v575 = v541;
              v538[1] = v557[3];
              v538[2] = v557[4];
              v539 = *&v557[5];
              v535 = v556;
              v536 = v557[0];
              v537 = v557[1];
              v538[0] = v557[2];
              sub_1AAE8432C(v144, &v547, sub_1AACCF364);
              sub_1AAE8432C(v144, &v547, sub_1AACCF364);
              v441 = type metadata accessor for MarkDimensions.Storage();
              (*(*(v441 - 8) + 16))(&v547, v545 + 8, v441);
              sub_1AAE28BBC(0, qword_1ED9B40B8);
              v442 = v501;
              v443 = v527;
              v444 = v529;
              v445 = sub_1AAF3C35C(v501);
              v528 = v484;
              v446 = MEMORY[0x1EEE9AC00](v445);
              v484[-12] = v136;
              v484[-11] = v443;
              v447 = v524;
              v448 = v525;
              v484[-10] = v525;
              v484[-9] = v444;
              v484[-8] = v447;
              v484[-7] = &v556;
              v484[-6] = &v574;
              *&v484[-5] = v446;
              *&v484[-4] = a7;
              *&v484[-3] = a9;
              v482 = *&a10;
              v483 = a8;
              sub_1AAE8412C();
              v106 = sub_1AACB00E0(sub_1AAE844E8, &v484[-14], v448, v449, MEMORY[0x1E69E73E0], v521, MEMORY[0x1E69E7410], v450);
              sub_1AAE52094(v144);
              v451 = type metadata accessor for MappedCoefficients();
              (*(*(v451 - 8) + 8))(&v540, v451);
            }

            else
            {
              if (LOBYTE(v545[6]) == 255)
              {
                sub_1AAE642DC(&v574);
              }

              else
              {
                v576 = *(&v545[2] + 8);
                v577 = *(&v545[3] + 8);
                v578[0] = *(&v545[4] + 8);
                *&v578[1] = *(&v545[5] + 1);
                v574 = *(v545 + 8);
                v575 = *(&v545[1] + 8);
                BYTE8(v578[1]) = v545[6];
              }

              v537 = v576;
              v538[0] = v577;
              v538[1] = v578[0];
              *(&v538[1] + 9) = *(v578 + 9);
              v535 = v574;
              v536 = v575;
              v557[3] = v553;
              v557[4] = v554;
              *&v557[5] = v555;
              v556 = v549;
              v557[0] = v550;
              v557[2] = v552;
              v557[1] = v551;
              sub_1AAE8432C(v144, &v547, sub_1AACCF364);
              v452 = type metadata accessor for MarkDimensions.Storage();
              (*(*(v452 - 8) + 16))(&v547, v545 + 8, v452);
              sub_1AAE28BBC(0, &qword_1ED9B4070);
              v442 = v501;
              v443 = v527;
              v453 = v529;
              v455 = sub_1AAF3CCD4(v501, v454, v527, v529);
              v528 = v484;
              v456 = MEMORY[0x1EEE9AC00](v455);
              v484[-10] = v136;
              v484[-9] = v443;
              v457 = v524;
              v458 = v525;
              v484[-8] = v525;
              v484[-7] = v453;
              v484[-6] = v457;
              v484[-5] = &v535;
              *&v484[-4] = v456;
              *&v484[-3] = a7;
              v482 = *&a8;
              sub_1AAE8412C();
              v106 = sub_1AACB00E0(sub_1AAE8459C, &v484[-12], v458, v459, MEMORY[0x1E69E73E0], v521, MEMORY[0x1E69E7410], v460);
              v461 = type metadata accessor for MappedCoefficients();
              (*(*(v461 - 8) + 8))(&v574, v461);
            }

            sub_1AAE52094(v144);
            (*(*(*&v533 - 8) + 8))(v545);
            (*(v146 + 8))(v442, v443);
            (*(v532 + 8))(v514, v138);
          }

          return v106;
        }

        if (v150 == 2)
        {
          v296 = *v89;
          v528 = *v89;
          if (v145)
          {
            v557[3] = v553;
            v557[4] = v554;
            *&v557[5] = v555;
            v556 = v549;
            v557[0] = v550;
            v557[2] = v552;
            v557[1] = v551;
            if (LOBYTE(v545[6]) == 255)
            {
              sub_1AAE6433C(&v540);
            }

            else
            {
              v542 = *(&v545[2] + 8);
              v543 = *(&v545[3] + 8);
              v544[0] = *(&v545[4] + 8);
              *&v544[1] = *(&v545[5] + 1);
              v540 = *(v545 + 8);
              v541 = *(&v545[1] + 8);
              BYTE8(v544[1]) = v545[6];
            }

            v576 = v542;
            v577 = v543;
            v578[0] = v544[0];
            *(v578 + 9) = *(v544 + 9);
            v574 = v540;
            v575 = v541;
            v538[1] = v557[3];
            v538[2] = v557[4];
            v539 = *&v557[5];
            v535 = v556;
            v536 = v557[0];
            v537 = v557[1];
            v538[0] = v557[2];
            sub_1AAE8432C(v144, &v547, sub_1AACCF364);
            sub_1AAE8432C(v144, &v547, sub_1AACCF364);
            v407 = type metadata accessor for MarkDimensions.Storage();
            (*(*(v407 - 8) + 16))(&v547, v545 + 8, v407);
            sub_1AAE28BBC(0, qword_1ED9B40B8);
            v408 = v525;
            v409 = v529;
            v410 = v136;
            v411 = v524;
            *&v547 = sub_1AAF3CB18(v534.i64[0], v296, v412, v525, v529, v524);
            v413 = v488;
            sub_1AAF90584();

            MEMORY[0x1EEE9AC00](v414);
            v415 = v527;
            v484[-12] = v410;
            v484[-11] = v415;
            v484[-10] = v408;
            v484[-9] = v409;
            v484[-8] = v411;
            v484[-7] = &v556;
            v484[-6] = &v574;
            *&v484[-5] = a7;
            *&v484[-4] = a9;
            *&v484[-3] = a10;
            MEMORY[0x1EEE9AC00](v416);
            v484[-8] = v410;
            v484[-7] = v417;
            v484[-6] = v408;
            v484[-5] = v409;
            v484[-4] = v411;
            v484[-3] = sub_1AAE84624;
            v482 = v418;
            sub_1AAE8412C();
            v420 = v419;
            v421 = v491;
            WitnessTable = swift_getWitnessTable();
            v106 = sub_1AAE79E0C(sub_1AAE846C0, &v484[-10], v421, v420, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v423);

            sub_1AAE52094(v144);
            v424 = type metadata accessor for MappedCoefficients();
            (*(*(v424 - 8) + 8))(&v540, v424);
          }

          else
          {
            if (LOBYTE(v545[6]) == 255)
            {
              sub_1AAE642DC(&v574);
            }

            else
            {
              v576 = *(&v545[2] + 8);
              v577 = *(&v545[3] + 8);
              v578[0] = *(&v545[4] + 8);
              *&v578[1] = *(&v545[5] + 1);
              v574 = *(v545 + 8);
              v575 = *(&v545[1] + 8);
              BYTE8(v578[1]) = v545[6];
            }

            v537 = v576;
            v538[0] = v577;
            v538[1] = v578[0];
            *(&v538[1] + 9) = *(v578 + 9);
            v535 = v574;
            v536 = v575;
            v557[3] = v553;
            v557[4] = v554;
            *&v557[5] = v555;
            v556 = v549;
            v557[0] = v550;
            v557[2] = v552;
            v557[1] = v551;
            sub_1AAE8432C(v144, &v547, sub_1AACCF364);
            v425 = type metadata accessor for MarkDimensions.Storage();
            (*(*(v425 - 8) + 16))(&v547, v545 + 8, v425);
            sub_1AAE28BBC(0, &qword_1ED9B4070);
            v426 = v525;
            v427 = v529;
            v428 = v136;
            v429 = v524;
            *&v547 = sub_1AAF3C45C(v534.i64[0], v296, v430, v525, v529, v524);
            v413 = v488;
            sub_1AAF90584();

            MEMORY[0x1EEE9AC00](v431);
            v432 = v527;
            v484[-8] = v428;
            v484[-7] = v432;
            v484[-6] = v426;
            v484[-5] = v427;
            v484[-4] = v429;
            v484[-3] = &v535;
            v483 = a8;
            MEMORY[0x1EEE9AC00](v433);
            v484[-8] = v428;
            v484[-7] = v434;
            v484[-6] = v426;
            v484[-5] = v427;
            v484[-4] = v429;
            v484[-3] = sub_1AAE846D8;
            v482 = v435;
            sub_1AAE8412C();
            v437 = v436;
            v421 = v491;
            v438 = swift_getWitnessTable();
            v106 = sub_1AAE79E0C(sub_1AAE847D8, &v484[-10], v421, v437, MEMORY[0x1E69E73E0], v438, MEMORY[0x1E69E7410], v439);
            v440 = type metadata accessor for MappedCoefficients();
            (*(*(v440 - 8) + 8))(&v574, v440);
          }

          (*(*(*&v533 - 8) + 8))(v545);
          sub_1AAE52094(v144);
          (*(v490 + 8))(v413, v421);
          (*(v532 + 8))(v143, v531);
          return v106;
        }

        if (v150 == 3)
        {
          if (v145)
          {
            LODWORD(v483) = 0;
            v481 = 383;
            goto LABEL_201;
          }

          v151 = *v89;
          v528 = v89[1];
          v557[3] = v553;
          v557[4] = v554;
          *&v557[5] = v555;
          v556 = v549;
          v557[0] = v550;
          v557[2] = v552;
          v557[1] = v551;
          if (LOBYTE(v545[6]) == 255)
          {
            sub_1AAE6433C(&v540);
          }

          else
          {
            v542 = *(&v545[2] + 8);
            v543 = *(&v545[3] + 8);
            v544[0] = *(&v545[4] + 8);
            *&v544[1] = *(&v545[5] + 1);
            v540 = *(v545 + 8);
            v541 = *(&v545[1] + 8);
            BYTE8(v544[1]) = v545[6];
          }

          v576 = v542;
          v577 = v543;
          v578[0] = v544[0];
          *(v578 + 9) = *(v544 + 9);
          v574 = v540;
          v575 = v541;
          v538[1] = v553;
          v538[2] = v554;
          v539 = v555;
          v535 = v549;
          v536 = v550;
          v537 = v551;
          v538[0] = v552;
          sub_1AAE8432C(v144, &v547, sub_1AACCF364);
          v354 = type metadata accessor for MarkDimensions.Storage();
          (*(*(v354 - 8) + 16))(&v547, v545 + 8, v354);
          sub_1AAE28BBC(0, &qword_1ED9B4070);
          v356 = v355;
          v357 = v534.i64[0];
          v358 = v151;
          v526 = v151;
          v360 = v524;
          v359 = v525;
          v361 = v136;
          v362 = v529;
          v363 = sub_1AAF3C45C(v534.i64[0], v358, v355, v525, v529, v524);
          v548[3] = v557[3];
          v548[4] = v557[4];
          *&v548[5] = *&v557[5];
          v547 = v556;
          v548[0] = v557[0];
          v548[1] = v557[1];
          v548[2] = v557[2];
          v364 = sub_1AAF3C45C(v357, v528, v356, v359, v362, v360);
          *&v547 = v363;
          *(&v547 + 1) = v364;
          v365 = v489;
          sub_1AAF90584();

          MEMORY[0x1EEE9AC00](v366);
          v367 = v527;
          v484[-8] = v361;
          v484[-7] = v367;
          v484[-6] = v359;
          v484[-5] = v362;
          v484[-4] = v360;
          v484[-3] = &v574;
          v483 = a8;
          MEMORY[0x1EEE9AC00](v368);
          v484[-8] = v361;
          v484[-7] = v369;
          v484[-6] = v359;
          v484[-5] = v362;
          v484[-4] = v360;
          v484[-3] = sub_1AAE847BC;
          v482 = v370;
          sub_1AAE8412C();
          v372 = v371;
          v373 = v493;
          v374 = swift_getWitnessTable();
          v106 = sub_1AAE79E0C(sub_1AAE843D8, &v484[-10], v373, v372, MEMORY[0x1E69E73E0], v374, MEMORY[0x1E69E7410], v375);
          v376 = type metadata accessor for MappedCoefficients();
          (*(*(v376 - 8) + 8))(&v540, v376);

          sub_1AAE52094(v144);
          (*(*(*&v533 - 8) + 8))(v545);
          (*(v492 + 8))(v365, v373);
          (*(v532 + 8))(v514, v531);
          return v106;
        }

        v528 = *v89;
        sub_1AAF90774();
        v315 = v509;
        v316 = v511;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v318 = *(TupleTypeMetadata3 + 64);
        (*(v508 + 32))(v505, v89 + *(TupleTypeMetadata3 + 48), v315);
        (*(v510 + 32))(v506, v89 + v318, v316);
        if ((v145 & 1) == 0)
        {
          if (LOBYTE(v545[6]) == 255)
          {
            sub_1AAE6433C(&v574);
          }

          else
          {
            v576 = *(&v545[2] + 8);
            v577 = *(&v545[3] + 8);
            v578[0] = *(&v545[4] + 8);
            *&v578[1] = *(&v545[5] + 1);
            v574 = *(v545 + 8);
            v575 = *(&v545[1] + 8);
            BYTE8(v578[1]) = v545[6];
          }

          v537 = v576;
          v538[0] = v577;
          v538[1] = v578[0];
          *(&v538[1] + 9) = *(v578 + 9);
          v535 = v574;
          v536 = v575;
          v557[3] = v553;
          v557[4] = v554;
          *&v557[5] = v555;
          v556 = v549;
          v557[0] = v550;
          v557[2] = v552;
          v557[1] = v551;
          sub_1AAE8432C(v144, &v547, sub_1AACCF364);
          v377 = type metadata accessor for MarkDimensions.Storage();
          (*(*(v377 - 8) + 16))(&v547, v545 + 8, v377);
          sub_1AAE28BBC(0, &qword_1ED9B4070);
          v378 = v529;
          v379 = v525;
          v380 = v136;
          v381 = v524;
          *&v547 = sub_1AAF3CD40(v534.i64[0], v528, v505, v506, v382, v525, v529, v524);
          v383 = v485;
          sub_1AAF90584();

          MEMORY[0x1EEE9AC00](v384);
          v385 = v527;
          v484[-8] = v380;
          v484[-7] = v385;
          v484[-6] = v379;
          v484[-5] = v378;
          v484[-4] = v381;
          v484[-3] = &v535;
          v483 = a8;
          MEMORY[0x1EEE9AC00](v386);
          v484[-8] = v380;
          v484[-7] = v387;
          v484[-6] = v379;
          v484[-5] = v378;
          v484[-4] = v381;
          v484[-3] = sub_1AAE843F0;
          v482 = v388;
          sub_1AAE8412C();
          v390 = v389;
          v391 = v487;
          v392 = swift_getWitnessTable();
          v106 = sub_1AAE79E0C(sub_1AAE847C0, &v484[-10], v391, v390, MEMORY[0x1E69E73E0], v392, MEMORY[0x1E69E7410], v393);
          v394 = type metadata accessor for MappedCoefficients();
          (*(*(v394 - 8) + 8))(&v574, v394);

          sub_1AAE52094(v144);
          (*(*(*&v533 - 8) + 8))(v545);
          (*(v486 + 8))(v383, v391);
          (*(v510 + 8))(v506, v511);
          (*(v508 + 8))(v505, v509);
          (*(v532 + 8))(v514, v531);
          return v106;
        }

        LODWORD(v483) = 0;
        v470 = 369;
        goto LABEL_193;
      }

      LODWORD(v483) = 0;
      v462 = 308;
    }

    else
    {
      v188 = v531;
      v189 = &v104[*(swift_getTupleTypeMetadata2() + 48)];
      v190 = *(v189 + 4);
      v191 = *(v189 + 5);
      v192 = v189[48];
      sub_1AAD0E818(*(v189 + 1), *(v189 + 2), v189[24]);
      sub_1AADB2F88(v190, v191, v192);
      v193 = v518;
      (*(v532 + 32))(v518, v104, v188);
      v194 = v530;
      v195 = *(v530 + 104);
      v196 = v527;
      v197 = v523;
      if (v195 != 255)
      {
        v199 = *v530;
        v198 = *(v530 + 1);
        v200 = v530[4];
        v560 = v530[3];
        v561 = v200;
        v562 = v530[5];
        v563 = *(v530 + 12);
        v201 = v530[2];
        v558 = v530[1];
        v559 = v201;
        (*(v526 + 16))(v517, &v193[*(v188 + 44)], v528);
        v202 = swift_getEnumCaseMultiPayload();
        if (v202 > 1)
        {
          if (v202 == 2)
          {
            v239 = v518;
            if ((v195 & 1) == 0)
            {
              v240 = *v517;
              *&v556 = 0;
              v545[4] = v583;
              v545[5] = v584[0];
              *(&v545[5] + 9) = *(v584 + 9);
              v545[0] = v579;
              v545[1] = v580;
              v545[2] = v581;
              v545[3] = v582;
              sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
              v199(&v547, &v556);
              v241 = v547;
              *&v547 = v199;
              *(&v547 + 1) = v198;
              v548[2] = v560;
              v548[3] = v561;
              v548[4] = v562;
              *&v548[5] = v563;
              v548[0] = v558;
              v548[1] = v559;
              sub_1AAE28BBC(0, &qword_1ED9B4070);
              v243 = sub_1AAF3C45C(v534.i64[0], v240, v242, v525, v529, v524);
              v244 = *(v243 + 16);
              if (v244)
              {
                *&v547 = MEMORY[0x1E69E7CC0];
                sub_1AAD41468(0, v244, 0);
                v106 = v547;
                v245 = *(v547 + 16);
                v246 = 16 * v245;
                v247 = 32;
                do
                {
                  v248 = *(v243 + v247);
                  *&v547 = v106;
                  v249 = *(v106 + 24);
                  v250 = v245 + 1;
                  if (v245 >= v249 >> 1)
                  {
                    sub_1AAD41468((v249 > 1), v245 + 1, 1);
                    v106 = v547;
                  }

                  *(v106 + 16) = v250;
                  v251 = v106 + v246;
                  *(v251 + 32) = v241;
                  *(v251 + 40) = v248;
                  v246 += 16;
                  v247 += 8;
                  v245 = v250;
                  --v244;
                }

                while (v244);

                sub_1AAE52094(v530);
                (*(v532 + 8))(v239, v188);
                return v106;
              }

              sub_1AAE52094(v194);
              (*(v532 + 8))(v239, v188);
              return MEMORY[0x1E69E7CC0];
            }

            LODWORD(v483) = 0;
            v470 = 409;
LABEL_193:
            v482 = v470;
            goto LABEL_194;
          }

          if (v202 == 3)
          {
            v545[4] = v583;
            v545[5] = v584[0];
            *(&v545[5] + 9) = *(v584 + 9);
            v545[0] = v579;
            v545[1] = v580;
            v545[2] = v581;
            v545[3] = v582;
            sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
            (*(v526 + 8))(v517, v528);
          }

          else
          {
            v476 = v517;
            v545[4] = v583;
            v545[5] = v584[0];
            *(&v545[5] + 9) = *(v584 + 9);
            v545[0] = v579;
            v545[1] = v580;
            v545[2] = v581;
            v545[3] = v582;
            sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);

            sub_1AAF90774();
            v477 = v509;
            v478 = v511;
            v479 = swift_getTupleTypeMetadata3();
            v480 = *(v479 + 48);
            (*(v510 + 8))(v476 + *(v479 + 64), v478);
            (*(v508 + 8))(v476 + v480, v477);
          }
        }

        else
        {
          if (!v202)
          {
            v203 = v502;
            (*(v197 + 32))(v502, v517, v196);
            v204 = v518;
            if ((v195 & 1) == 0)
            {
              *&v556 = 0;
              v545[4] = v583;
              v545[5] = v584[0];
              *(&v545[5] + 9) = *(v584 + 9);
              v545[0] = v579;
              v545[1] = v580;
              v545[2] = v581;
              v545[3] = v582;
              sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
              v199(&v547, &v556);
              v205 = v547;
              *&v547 = v199;
              *(&v547 + 1) = v198;
              v548[2] = v560;
              v548[3] = v561;
              v548[4] = v562;
              *&v548[5] = v563;
              v548[0] = v558;
              v548[1] = v559;
              sub_1AAE28BBC(0, &qword_1ED9B4070);
              sub_1AAF3CCD4(v203, v206, v196, v529);
              v207 = v556;
              sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
              v106 = swift_allocObject();
              *(v106 + 16) = xmmword_1AAF92AB0;
              *(v106 + 32) = v205;
              *(v106 + 40) = v207;
              sub_1AAE52094(v194);
              (*(v197 + 8))(v203, v196);
              (*(v532 + 8))(v204, v188);
              return v106;
            }

            LODWORD(v483) = 0;
            v470 = 418;
            goto LABEL_193;
          }

          v467 = *(swift_getTupleTypeMetadata2() + 48);
          v545[4] = v583;
          v545[5] = v584[0];
          *(&v545[5] + 9) = *(v584 + 9);
          v545[0] = v579;
          v545[1] = v580;
          v545[2] = v581;
          v545[3] = v582;
          sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
          v468 = *(v197 + 8);
          v469 = v517;
          v468(v517 + v467, v196);
          v468(v469, v196);
        }

        LODWORD(v483) = 0;
        v470 = 421;
        goto LABEL_193;
      }

      LODWORD(v483) = 0;
      v462 = 401;
    }

    v482 = v462;
    goto LABEL_194;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v156 = v531;
    v157 = *(swift_getTupleTypeMetadata2() + 48);
    v158 = *(v532 + 32);
    v159 = v516;
    v158(v516, v104, v156);
    v160 = &v104[v157];
    v161 = v515;
    v158(v515, v160, v156);
    LODWORD(v520) = *(v530 + 104);
    if (v520 == 255)
    {
      LODWORD(v483) = 0;
      v482 = 424;
      goto LABEL_194;
    }

    v533 = *(v530 + 2);
    LODWORD(v521) = *(v530 + 24);
    v568 = *v530;
    v162 = *(v530 + 57);
    *(v567 + 15) = *(v530 + 88);
    v163 = *(v530 + 73);
    v566 = v162;
    v567[0] = v163;
    v164 = *(v530 + 25);
    v565 = *(v530 + 41);
    v564 = v164;
    v165 = *(v156 + 44);
    v166 = *(v526 + 16);
    v167 = &v159[v165];
    v168 = &v522[*(TupleTypeMetadata2 + 48)];
    v169 = v528;
    v166(v522, v167, v528);
    v166(v168, &v161[v165], v169);
    v170 = swift_getEnumCaseMultiPayload();
    if (v170 <= 1)
    {
      if (!v170)
      {
        v166(v81, v522, v528);
        v171 = swift_getEnumCaseMultiPayload();
        v172 = v531;
        v173 = v527;
        v174 = v168;
        v175 = v503;
        v176 = v504;
        if (!v171)
        {
          v177 = *(v523 + 32);
          v177(v503, v81, v527);
          v177(v176, v174, v173);
          if (v520)
          {
            v574 = v568;
            v178 = v521;
            LOBYTE(v540) = v521;
            v537 = v566;
            v538[0] = v567[0];
            *(v538 + 15) = *(v567 + 15);
            v535 = v564;
            v536 = v565;
            sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
            v179 = swift_allocObject();
            *(v179 + 16) = xmmword_1AAF92AB0;
            v556 = v568;
            v180 = v533;
            *v557 = v533;
            BYTE8(v557[0]) = v178;
            *(&v557[1] + 9) = v565;
            *(&v557[2] + 9) = v566;
            *(&v557[3] + 9) = v567[0];
            *(&v557[4] + 8) = *(v567 + 15);
            *(v557 + 9) = v564;
            v545[0] = v579;
            v545[1] = v580;
            *(&v545[5] + 9) = *(v584 + 9);
            v545[4] = v583;
            v545[5] = v584[0];
            v545[2] = v581;
            v545[3] = v582;
            sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
            sub_1AAE28BBC(0, qword_1ED9B40B8);
            sub_1AAF3C35C(v175);
            *(v179 + 32) = *&v547 + a7 + a9;
            v547 = v574;
            *v548 = v180;
            BYTE8(v548[0]) = v540;
            *(&v548[1] + 9) = v536;
            *(&v548[2] + 9) = v537;
            *(&v548[3] + 9) = v538[0];
            *(&v548[4] + 8) = *(v538 + 15);
            *(v548 + 9) = v535;
            sub_1AAF3C35C(v176);
            v181 = v180;
            if (v540)
            {
              v181 = 0.0;
            }

            v182 = v179;
            *(v179 + 40) = *&v556 + v181 + a8 - a10;
          }

          else
          {
            v574 = v568;
            v537 = v566;
            v538[0] = v567[0];
            *(v538 + 15) = *(v567 + 15);
            v535 = v564;
            v536 = v565;
            sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
            v258 = swift_allocObject();
            *(v258 + 16) = xmmword_1AAF92AB0;
            v556 = v568;
            v259 = v533;
            *v557 = v533;
            v260 = v521;
            BYTE8(v557[0]) = v521;
            *(&v557[1] + 9) = v565;
            *(&v557[2] + 9) = v566;
            *(&v557[3] + 9) = v567[0];
            *(&v557[4] + 8) = *(v567 + 15);
            *(v557 + 9) = v564;
            v545[0] = v579;
            v545[1] = v580;
            *(&v545[5] + 9) = *(v584 + 9);
            v545[4] = v583;
            v545[5] = v584[0];
            v545[2] = v581;
            v545[3] = v582;
            sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
            sub_1AAE28BBC(0, &qword_1ED9B4070);
            v262 = v261;
            v263 = v529;
            sub_1AAF3CCD4(v175, v261, v173, v529);
            v547 = v574;
            *v548 = v259;
            BYTE8(v548[0]) = v260;
            v172 = v531;
            *(&v548[1] + 9) = v536;
            *(&v548[2] + 9) = v537;
            *(&v548[3] + 9) = v538[0];
            *(&v548[4] + 8) = *(v538 + 15);
            *(v548 + 9) = v535;
            v182 = v258;
            sub_1AAF3CCD4(v176, v262, v173, v263);
          }

          sub_1AAE52094(v530);
          v264 = v175;
          v266 = v515;
          v265 = v516;
          v267 = *(v523 + 8);
          v267(v176, v173);
          v267(v264, v173);
          v268 = *(v532 + 8);
          v268(v266, v172);
          v269 = v265;
          v270 = v172;
          goto LABEL_142;
        }

        v545[4] = v583;
        v545[5] = v584[0];
        *(&v545[5] + 9) = *(v584 + 9);
        v545[0] = v579;
        v545[1] = v580;
        v545[2] = v581;
        v545[3] = v582;
        sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
        (*(v523 + 8))(v81, v173);
        goto LABEL_190;
      }

      v166(v484[0], v522, v528);
      v463 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v545[4] = v583;
        v545[5] = v584[0];
        *(&v545[5] + 9) = *(v584 + 9);
        v545[0] = v579;
        v545[1] = v580;
        v545[2] = v581;
        v545[3] = v582;
        sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
        v464 = *(v523 + 8);
        v465 = v527;
        v464(v168 + v463, v527);
        v464(v168, v465);
        v466 = v484[0];
        v464((v484[0] + v463), v465);
        v464(v466, v465);
        (*(v526 + 8))(v522, v528);
LABEL_183:
        LODWORD(v483) = 0;
        v482 = 444;
        goto LABEL_194;
      }

      v545[4] = v583;
      v545[5] = v584[0];
      *(&v545[5] + 9) = *(v584 + 9);
      v545[0] = v579;
      v545[1] = v580;
      v545[2] = v581;
      v545[3] = v582;
      sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      v472 = *(v523 + 8);
      v473 = v484[0];
      v474 = v484[0] + v463;
      v475 = v527;
      v472(v474, v527);
      v472(v473, v475);
      goto LABEL_190;
    }

    if (v170 != 2)
    {
      if (v170 == 3 && swift_getEnumCaseMultiPayload() == 3)
      {
        v545[4] = v583;
        v545[5] = v584[0];
        *(&v545[5] + 9) = *(v584 + 9);
        v545[0] = v579;
        v545[1] = v580;
        v545[2] = v581;
        v545[3] = v582;
        sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
        v471 = *(v526 + 8);
        v471(v168, v528);
        v471(v522, v528);
        goto LABEL_183;
      }

      v545[4] = v583;
      v545[5] = v584[0];
      *(&v545[5] + 9) = *(v584 + 9);
      v545[0] = v579;
      v545[1] = v580;
      v545[2] = v581;
      v545[3] = v582;
      sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
LABEL_190:
      LODWORD(v483) = 0;
      v470 = 446;
      goto LABEL_193;
    }

    v166(v84, v522, v528);
    v209 = *v84;
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v545[4] = v583;
      v545[5] = v584[0];
      *(&v545[5] + 9) = *(v584 + 9);
      v545[0] = v579;
      v545[1] = v580;
      v545[2] = v581;
      v545[3] = v582;
      sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);

      goto LABEL_190;
    }

    v210 = *v168;
    v211 = v533;
    v527 = v209;
    if (v520)
    {
      v537 = v566;
      v538[0] = v567[0];
      *(v538 + 15) = *(v567 + 15);
      v535 = v564;
      v536 = v565;
      v574 = v568;
      v556 = v568;
      LOBYTE(v540) = v521;
      *v557 = v533;
      BYTE8(v557[0]) = v521;
      *(&v557[1] + 9) = v565;
      *(&v557[2] + 9) = v566;
      *(&v557[3] + 9) = v567[0];
      *(&v557[4] + 8) = *(v567 + 15);
      *(v557 + 9) = v564;
      v545[0] = v579;
      v545[1] = v580;
      *(&v545[5] + 9) = *(v584 + 9);
      v545[4] = v583;
      v545[5] = v584[0];
      v545[2] = v581;
      v545[3] = v582;
      sub_1AAE8432C(v530, &v547, sub_1AACCF364);
      sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      sub_1AAE28BBC(0, qword_1ED9B40B8);
      v213 = v212;
      v214 = v534.i64[0];
      v215 = v209;
      v217 = v524;
      v216 = v525;
      v218 = v529;
      v219 = sub_1AAF3CB18(v534.i64[0], v215, v212, v525, v529, v524);
      v547 = v574;
      *(&v548[1] + 9) = v536;
      *(&v548[2] + 9) = v537;
      *(&v548[3] + 9) = v538[0];
      *(&v548[4] + 8) = *(v538 + 15);
      *v548 = v211;
      BYTE8(v548[0]) = v540;
      *(v548 + 9) = v535;
      v521 = v210;
      v220 = sub_1AAF3CB18(v214, v210, v213, v216, v218, v217);
      v221 = v220;
      v529 = v484;
      v222 = *(v219 + 16);
      v223 = *(v220 + 16);
      if (v223 >= v222)
      {
        v224 = *(v219 + 16);
      }

      else
      {
        v224 = *(v220 + 16);
      }

      *&v547 = MEMORY[0x1E69E7CC0];
      sub_1AAD41468(0, v224, 0);
      v225 = v547;
      v523 = v219;
      v534.i64[0] = v221;
      if (v224)
      {
        v226 = (v219 + 32);
        v227 = (v221 + 32);
        if (v540)
        {
          v228 = 0.0;
        }

        else
        {
          v228 = v533;
        }

        v229 = v224;
        v230 = v222;
        v231 = v223;
        v232 = v222;
        v233 = v223;
        while (v230)
        {
          if (!v231)
          {
            goto LABEL_165;
          }

          v234 = *v226;
          v235 = *v227;
          *&v547 = v225;
          v237 = *(v225 + 16);
          v236 = *(v225 + 24);
          if (v237 >= v236 >> 1)
          {
            v524 = v233;
            v525 = v232;
            sub_1AAD41468((v236 > 1), v237 + 1, 1);
            v233 = v524;
            v232 = v525;
            v225 = v547;
          }

          *(v225 + 16) = v237 + 1;
          v238 = v225 + 16 * v237;
          --v231;
          *(v238 + 32) = v234 + a7 + a9;
          *(v238 + 40) = v228 + v235 + a8 - a10;
          --v230;
          ++v227;
          ++v226;
          if (!--v229)
          {
            goto LABEL_130;
          }
        }

        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      v232 = v222;
      v233 = v223;
LABEL_130:
      v343 = v531;
      if (v232 > v233)
      {
        v344 = v523;
        v345 = v534.i64[0] + 32;
        if (v540)
        {
          v346 = 0.0;
        }

        else
        {
          v346 = v533;
        }

        while (v224 < v232)
        {
          v347 = v224 + 1;
          if (__OFADD__(v224, 1))
          {
            goto LABEL_168;
          }

          if (v233 != v224)
          {
            if (v224 >= v233)
            {
              goto LABEL_169;
            }

            v348 = *(v344 + 32 + 8 * v224);
            v349 = *(v345 + 8 * v224);
            *&v547 = v225;
            v351 = *(v225 + 16);
            v350 = *(v225 + 24);
            if (v351 >= v350 >> 1)
            {
              v524 = v233;
              v525 = v232;
              sub_1AAD41468((v350 > 1), v351 + 1, 1);
              v233 = v524;
              v232 = v525;
              v225 = v547;
            }

            *(v225 + 16) = v351 + 1;
            v352 = v225 + 16 * v351;
            *(v352 + 32) = v348 + a7 + a9;
            *(v352 + 40) = v349 + v346 + a8 - a10;
            ++v224;
            if (v347 != v232)
            {
              continue;
            }
          }

          goto LABEL_141;
        }

LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        LODWORD(v483) = 0;
        v482 = 449;
        goto LABEL_194;
      }

LABEL_141:
      v182 = v225;

      v353 = v530;
      sub_1AAE52094(v530);

      sub_1AAE52094(v353);
      v268 = *(v532 + 8);
      v268(v515, v343);
      v269 = v516;
      v270 = v343;
    }

    else
    {
      v537 = v566;
      v538[0] = v567[0];
      *(v538 + 15) = *(v567 + 15);
      v535 = v564;
      v536 = v565;
      v574 = v568;
      v556 = v568;
      *v557 = v533;
      BYTE8(v557[0]) = v521;
      *(&v557[1] + 9) = v565;
      *(&v557[2] + 9) = v566;
      *(&v557[3] + 9) = v567[0];
      *(&v557[4] + 8) = *(v567 + 15);
      *(v557 + 9) = v564;
      v545[0] = v579;
      v545[1] = v580;
      *(&v545[5] + 9) = *(v584 + 9);
      v545[4] = v583;
      v545[5] = v584[0];
      v545[2] = v581;
      v545[3] = v582;
      sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      sub_1AAE28BBC(0, &qword_1ED9B4070);
      v272 = v271;
      v273 = v211;
      v274 = v534.i64[0];
      v275 = v209;
      v276 = v525;
      v277 = v529;
      v278 = v210;
      v279 = v524;
      v280 = sub_1AAF3C45C(v534.i64[0], v275, v271, v525, v529, v524);
      v547 = v574;
      *(&v548[1] + 9) = v536;
      *(&v548[2] + 9) = v537;
      *(&v548[3] + 9) = v538[0];
      *(&v548[4] + 8) = *(v538 + 15);
      *v548 = v273;
      BYTE8(v548[0]) = v521;
      *(v548 + 9) = v535;
      v281 = sub_1AAF3C45C(v274, v278, v272, v276, v277, v279);
      v182 = sub_1AAF2F80C(v280, v281);

      sub_1AAE52094(v530);
      v282 = v531;
      v268 = *(v532 + 8);
      v268(v515, v531);
      v269 = v516;
      v270 = v282;
    }

LABEL_142:
    v268(v269, v270);
    (*(v526 + 8))(v522, v528);
    return v182;
  }

  v110 = v531;
  v111 = v513;
  (*(v532 + 32))(v513, v104, v531);
  v112 = v530;
  v113 = *(v530 + 104);
  if (v113 == 255)
  {
    goto LABEL_170;
  }

  v114 = *(v530 + 2);
  LODWORD(v533) = *(v530 + 24);
  v573 = *v530;
  v115 = *(v530 + 73);
  v571 = *(v530 + 57);
  v572[0] = v115;
  *(v572 + 15) = *(v530 + 88);
  v116 = *(v530 + 25);
  v570 = *(v530 + 41);
  v569 = v116;
  (*(v526 + 16))(v520, &v111[*(v110 + 44)], v528);
  v117 = swift_getEnumCaseMultiPayload();
  if (v117 <= 1)
  {
    if (v117)
    {
      v319 = v527;
      v320 = *(swift_getTupleTypeMetadata2() + 48);
      v321 = *(v523 + 32);
      v322 = v520;
      v321(v496, v520, v319);
      v321(v497, (v322 + v320), v319);
      if (v113)
      {
        LODWORD(v483) = 0;
        v481 = 481;
        goto LABEL_201;
      }

      v574 = v573;
      v537 = v571;
      v538[0] = v572[0];
      *(v538 + 15) = *(v572 + 15);
      v535 = v569;
      v536 = v570;
      sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
      v323 = swift_allocObject();
      *(v323 + 16) = xmmword_1AAF92AB0;
      v556 = v573;
      *v557 = v114;
      BYTE8(v557[0]) = LOBYTE(v533);
      *(&v557[1] + 9) = v570;
      *(&v557[2] + 9) = v571;
      *(&v557[3] + 9) = v572[0];
      *(&v557[4] + 8) = *(v572 + 15);
      *(v557 + 9) = v569;
      v545[0] = v579;
      v545[1] = v580;
      *(&v545[5] + 9) = *(v584 + 9);
      v545[4] = v583;
      v545[5] = v584[0];
      v545[2] = v581;
      v545[3] = v582;
      sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      sub_1AAE28BBC(0, &qword_1ED9B4070);
      v325 = v324;
      v326 = v496;
      v327 = v529;
      sub_1AAF3CCD4(v496, v324, v319, v529);
      v547 = v574;
      *v548 = v114;
      BYTE8(v548[0]) = LOBYTE(v533);
      *(&v548[1] + 9) = v536;
      *(&v548[2] + 9) = v537;
      *(&v548[3] + 9) = v538[0];
      *(&v548[4] + 8) = *(v538 + 15);
      *(v548 + 9) = v535;
      v328 = v497;
      sub_1AAF3CCD4(v497, v325, v319, v327);
      sub_1AAE52094(v112);
      v329 = *(v523 + 8);
      v329(v328, v319);
      v329(v326, v319);
      v106 = v323;
    }

    else
    {
      v252 = v523;
      v253 = v527;
      (*(v523 + 32))(v500, v520, v527);
      if (v113)
      {
        v556 = v573;
        LOBYTE(v535) = LOBYTE(v533);
        *v557 = v114;
        BYTE8(v557[0]) = LOBYTE(v533);
        *(&v557[1] + 9) = v570;
        *(&v557[2] + 9) = v571;
        *(&v557[3] + 9) = v572[0];
        *(&v557[4] + 8) = *(v572 + 15);
        *(v557 + 9) = v569;
        v545[0] = v579;
        v545[1] = v580;
        *(&v545[5] + 9) = *(v584 + 9);
        v545[4] = v583;
        v545[5] = v584[0];
        v545[2] = v581;
        v545[3] = v582;
        sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
        sub_1AAE28BBC(0, qword_1ED9B40B8);
        v254 = v500;
        sub_1AAF3C35C(v500);
        v255 = *&v547;
        sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
        v256 = swift_allocObject();
        v106 = v256;
        *(v256 + 16) = xmmword_1AAF92AB0;
        v257 = v114;
        if (v535)
        {
          v257 = 0.0;
        }

        *(v256 + 32) = v255 + a7 + a9;
        *(v256 + 40) = v255 + v257 + a8 - a10;
      }

      else
      {
        v556 = v573;
        *v557 = v114;
        BYTE8(v557[0]) = LOBYTE(v533);
        *(&v557[1] + 9) = v570;
        *(&v557[2] + 9) = v571;
        *(&v557[3] + 9) = v572[0];
        *(&v557[4] + 8) = *(v572 + 15);
        *(v557 + 9) = v569;
        v545[0] = v579;
        v545[1] = v580;
        *(&v545[5] + 9) = *(v584 + 9);
        v545[4] = v583;
        v545[5] = v584[0];
        v545[2] = v581;
        v545[3] = v582;
        sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
        sub_1AAE28BBC(0, &qword_1ED9B4070);
        v254 = v500;
        sub_1AAF3CCD4(v500, v341, v253, v529);
        v342 = v547;
        sub_1AACD6D40(0, &qword_1EB423018, sub_1AAE8412C, MEMORY[0x1E69E6F90]);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1AAF92AB0;
        *(v106 + 32) = v342;
        *(v106 + 40) = v342;
      }

      sub_1AAE52094(v112);
      (*(v252 + 8))(v254, v253);
    }

    (*(v532 + 8))(v111, v531);
    return v106;
  }

  if (v117 == 2)
  {
    v283 = *v520;
    if (v113)
    {
      v556 = v573;
      LOBYTE(v535) = LOBYTE(v533);
      *v557 = v114;
      BYTE8(v557[0]) = LOBYTE(v533);
      *(&v557[1] + 9) = v570;
      *(&v557[2] + 9) = v571;
      *(&v557[3] + 9) = v572[0];
      *(&v557[4] + 8) = *(v572 + 15);
      *(v557 + 9) = v569;
      v545[0] = v579;
      v545[1] = v580;
      *(&v545[5] + 9) = *(v584 + 9);
      v545[4] = v583;
      v545[5] = v584[0];
      v545[2] = v581;
      v545[3] = v582;
      sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      sub_1AAE28BBC(0, qword_1ED9B40B8);
      v285 = sub_1AAF3CB18(v534.i64[0], v283, v284, v525, v529, v524);
      v286 = *(v285 + 16);
      if (v286)
      {
        *&v547 = MEMORY[0x1E69E7CC0];
        sub_1AAD41468(0, v286, 0);
        v106 = v547;
        if (v535)
        {
          v287 = 0.0;
        }

        else
        {
          v287 = v114;
        }

        v288 = *(v547 + 16);
        v289 = 16 * v288;
        v290 = 32;
        v291 = v531;
        do
        {
          v292 = *(v285 + v290);
          *&v547 = v106;
          v293 = *(v106 + 24);
          v294 = v288 + 1;
          if (v288 >= v293 >> 1)
          {
            sub_1AAD41468((v293 > 1), v288 + 1, 1);
            v106 = v547;
          }

          *(v106 + 16) = v294;
          v295 = v106 + v289;
          *(v295 + 32) = v292 + a7 + a9;
          *(v295 + 40) = v287 + v292 + a8 - a10;
          v289 += 16;
          v290 += 8;
          v288 = v294;
          --v286;
        }

        while (v286);

LABEL_153:
        sub_1AAE52094(v530);
        (*(v532 + 8))(v513, v291);
        return v106;
      }
    }

    else
    {
      v556 = v573;
      *v557 = v114;
      BYTE8(v557[0]) = LOBYTE(v533);
      *(&v557[1] + 9) = v570;
      *(&v557[2] + 9) = v571;
      *(&v557[3] + 9) = v572[0];
      *(&v557[4] + 8) = *(v572 + 15);
      *(v557 + 9) = v569;
      v545[0] = v579;
      v545[1] = v580;
      *(&v545[5] + 9) = *(v584 + 9);
      v545[4] = v583;
      v545[5] = v584[0];
      v545[2] = v581;
      v545[3] = v582;
      sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
      sub_1AAE28BBC(0, &qword_1ED9B4070);
      v335 = sub_1AAF3C45C(v534.i64[0], v283, v334, v525, v529, v524);
      v336 = *(v335 + 16);
      if (v336)
      {
        *&v547 = MEMORY[0x1E69E7CC0];
        sub_1AAD41468(0, v336, 0);
        v106 = v547;
        v338 = *(v547 + 16);
        v339 = 32;
        v291 = v531;
        do
        {
          v337.i64[0] = *(v335 + v339);
          *&v547 = v106;
          v340 = *(v106 + 24);
          if (v338 >= v340 >> 1)
          {
            v534 = v337;
            sub_1AAD41468((v340 > 1), v338 + 1, 1);
            v337.i64[0] = v534.i64[0];
            v106 = v547;
          }

          *(v106 + 16) = v338 + 1;
          v337 = vdupq_lane_s64(v337.i64[0], 0);
          *(v106 + 16 * v338 + 32) = v337;
          v339 += 8;
          ++v338;
          --v336;
        }

        while (v336);

        goto LABEL_153;
      }
    }

    sub_1AAE52094(v530);
LABEL_147:
    (*(v532 + 8))(v513, v531);
    return MEMORY[0x1E69E7CC0];
  }

  if (v117 == 3)
  {
    if (v113)
    {
      while (1)
      {
        LODWORD(v483) = 0;
        v481 = 465;
LABEL_201:
        v482 = v481;
LABEL_194:
        sub_1AAF902C4();
        __break(1u);
      }
    }

    v537 = v571;
    v538[0] = v572[0];
    *(v538 + 15) = *(v572 + 15);
    v535 = v569;
    v536 = v570;
    v574 = v573;
    v556 = v573;
    v118 = v520[1];
    v527 = *v520;
    v119 = v527;
    v528 = v118;
    *v557 = v114;
    v120 = LOBYTE(v533);
    BYTE8(v557[0]) = LOBYTE(v533);
    *(&v557[1] + 9) = v570;
    *(&v557[2] + 9) = v571;
    *(&v557[3] + 9) = v572[0];
    *(&v557[4] + 8) = *(v572 + 15);
    *(v557 + 9) = v569;
    v545[0] = v579;
    v545[1] = v580;
    *(&v545[5] + 9) = *(v584 + 9);
    v545[4] = v583;
    v545[5] = v584[0];
    v545[2] = v581;
    v545[3] = v582;
    sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
    sub_1AAE28BBC(0, &qword_1ED9B4070);
    v122 = v121;
    v123 = v534.i64[0];
    v124 = v119;
    v125 = v114;
    v127 = v524;
    v126 = v525;
    v128 = v529;
    v129 = sub_1AAF3C45C(v534.i64[0], v124, v121, v525, v529, v524);
    v547 = v574;
    *(&v548[1] + 9) = v536;
    *(&v548[2] + 9) = v537;
    *(&v548[3] + 9) = v538[0];
    *(&v548[4] + 8) = *(v538 + 15);
    *v548 = v125;
    BYTE8(v548[0]) = v120;
    *(v548 + 9) = v535;
    v130 = sub_1AAF3C45C(v123, v528, v122, v126, v128, v127);
    v106 = sub_1AAF2F80C(v129, v130);

    sub_1AAE52094(v530);
    (*(v532 + 8))(v513, v531);
    return v106;
  }

  v297 = v520;
  v528 = *v520;
  sub_1AAF90774();
  v298 = v509;
  v299 = v511;
  v300 = swift_getTupleTypeMetadata3();
  v301 = *(v300 + 64);
  v302 = v494;
  (*(v508 + 32))(v494, v297 + *(v300 + 48), v298);
  v303 = v297 + v301;
  v304 = v495;
  (*(v510 + 32))(v495, v303, v299);
  if (v113)
  {
    LODWORD(v483) = 0;
    v470 = 491;
    goto LABEL_193;
  }

  v556 = v573;
  *v557 = v114;
  BYTE8(v557[0]) = LOBYTE(v533);
  *(&v557[1] + 9) = v570;
  *(&v557[2] + 9) = v571;
  *(&v557[3] + 9) = v572[0];
  *(&v557[4] + 8) = *(v572 + 15);
  *(v557 + 9) = v569;
  v545[0] = v579;
  v545[1] = v580;
  *(&v545[5] + 9) = *(v584 + 9);
  v545[4] = v583;
  v545[5] = v584[0];
  v545[2] = v581;
  v545[3] = v582;
  sub_1AAE7B790(v545, &v547, &qword_1ED9B3E38, type metadata accessor for AnyConcreteScale, sub_1AAE842D8);
  sub_1AAE28BBC(0, &qword_1ED9B4070);
  v306 = sub_1AAF3CD40(v534.i64[0], v528, v302, v304, v305, v525, v529, v524);
  v307 = *(v306 + 16);
  if (!v307)
  {

    sub_1AAE52094(v530);
    (*(v510 + 8))(v304, v511);
    (*(v508 + 8))(v302, v509);
    goto LABEL_147;
  }

  *&v547 = MEMORY[0x1E69E7CC0];
  sub_1AAD41468(0, v307, 0);
  v308 = 0;
  v106 = v547;
  v309 = (v306 + 40);
  v310 = v531;
  do
  {
    if (v308 >= *(v306 + 16))
    {
      goto LABEL_166;
    }

    v311 = *(v309 - 1);
    v312 = *v309;
    *&v547 = v106;
    v314 = *(v106 + 16);
    v313 = *(v106 + 24);
    if (v314 >= v313 >> 1)
    {
      sub_1AAD41468((v313 > 1), v314 + 1, 1);
      v106 = v547;
    }

    ++v308;
    *(v106 + 16) = v314 + 1;
    *(v106 + 16 * v314 + 32) = vdupq_lane_s64(COERCE__INT64((v311 + v312) * 0.5), 0);
    v309 += 2;
  }

  while (v307 != v308);

  sub_1AAE52094(v530);
  (*(v510 + 8))(v495, v511);
  (*(v508 + 8))(v494, v509);
  (*(v532 + 8))(v513, v310);
  return v106;
}

double sub_1AAE837A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, double *a5@<X8>, double a6@<D0>, double a7@<D1>, uint64_t a8)
{
  sub_1AAE28BBC(0, &qword_1ED9B4070);
  v16 = v15;
  sub_1AAF3CCD4(a2, v15, a4, a8);
  sub_1AAF3CCD4(a3, v16, a4, a8);
  type metadata accessor for MappedCoefficients();
  result = sub_1AAE643A8(a1, v20, v19) + a6;
  *a5 = result;
  a5[1] = v18 + a7;
  return result;
}

uint64_t sub_1AAE838F8(uint64_t a1)
{
  sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE83970(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 < 0)
  {
    if (a6 < 0)
    {
      if (a3)
      {
        if ((a6 & 1) != 0 && *&a1 == *&a4 && *&a2 == *&a5)
        {
          return 1;
        }
      }

      else if ((a6 & 1) == 0 && *&a1 == *&a4 && *&a2 == *&a5)
      {
        return 1;
      }
    }
  }

  else if ((a6 & 0x80) == 0)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1 && *&a1 == *&a4)
        {
          return 1;
        }
      }

      else if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        if (sub_1AAF904F4())
        {
          return 1;
        }
      }
    }

    else if (!a6 && *&a1 == *&a4)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1AAE83A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, double a20, double a21, char a22)
{
  if ((sub_1AAF8EA14() & 1) == 0)
  {
    return 0;
  }

  if (a7 < 0)
  {
    if (a22 < 0)
    {
      if (a7)
      {
        if ((a22 & 1) == 0)
        {
          return 0;
        }
      }

      else if (a22)
      {
        return 0;
      }

      return *&a5 == a20 && *&a6 == a21;
    }

    return 0;
  }

  if (a22 < 0)
  {
    return 0;
  }

  if (!a7)
  {
    if (!a22)
    {
      return *&a5 == a20;
    }

    return 0;
  }

  if (a7 != 1)
  {
    return a22 == 2 && (a5 == *&a20 && a6 == *&a21 || (sub_1AAF904F4() & 1) != 0);
  }

  if (a22 != 1)
  {
    return 0;
  }

  return *&a5 == a20;
}

__n128 sub_1AAE83B9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PlottableValue();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  (*(v12 + 16))(v17 - v10, a1, v9);
  sub_1AACD6F84(v11, a2, a3, v17);
  sub_1AAE4637C(v17);
  v13 = v17[7];
  *(a4 + 96) = v17[6];
  *(a4 + 112) = v13;
  *(a4 + 128) = v17[8];
  v14 = v17[3];
  *(a4 + 32) = v17[2];
  *(a4 + 48) = v14;
  v15 = v17[5];
  *(a4 + 64) = v17[4];
  *(a4 + 80) = v15;
  result = v17[1];
  *a4 = v17[0];
  *(a4 + 16) = result;
  return result;
}

__n128 sub_1AAE83CB0@<Q0>(uint64_t a1@<X8>)
{
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  *&v8 = v7;
  BYTE8(v8) = 0;
  v9.n128_u64[0] = v6;
  v9.n128_u8[8] = 0;
  sub_1AAE52D28(&v8);
  v2 = v15;
  *(a1 + 96) = v14;
  *(a1 + 112) = v2;
  *(a1 + 128) = v16;
  v3 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v3;
  v4 = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v4;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1AAE83D50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a2;
  v9 = type metadata accessor for PlottableValue();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = *(v10 + 16);
  v14(&v19 - v12, a1, v9, v11);
  sub_1AACD6F84(v13, a3, a4, &v20);
  (v14)(v13, v19, v9);
  sub_1AACD6F84(v13, a3, a4, v29 + 8);
  *&v29[0] = v24;
  v27 = v22;
  v28 = v23;
  v25 = v20;
  v26 = v21;
  v36 = v29[2];
  v37 = v29[3];
  v38 = v29[4];
  v32 = v22;
  v33 = v23;
  v30 = v20;
  v31 = v21;
  v34 = v29[0];
  v35 = v29[1];
  sub_1AAE52954(&v30);
  v15 = v37;
  *(a5 + 96) = v36;
  *(a5 + 112) = v15;
  *(a5 + 128) = v38;
  v16 = v33;
  *(a5 + 32) = v32;
  *(a5 + 48) = v16;
  v17 = v35;
  *(a5 + 64) = v34;
  *(a5 + 80) = v17;
  result = v31;
  *a5 = v30;
  *(a5 + 16) = result;
  return result;
}

__n128 sub_1AAE83EF8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for PlottableValue();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  (*(v16 + 16))(v21 - v14, a1, v13);
  sub_1AACD6F84(v15, a4, a5, v21);
  *(&v22 + 1) = a2;
  LOBYTE(v23) = a3;
  sub_1AACD7CA8(v21);
  v17 = v25;
  *(a6 + 96) = v24;
  *(a6 + 112) = v17;
  *(a6 + 128) = v26;
  v18 = v21[3];
  *(a6 + 32) = v21[2];
  *(a6 + 48) = v18;
  v19 = v23;
  *(a6 + 64) = v22;
  *(a6 + 80) = v19;
  result = v21[1];
  *a6 = v21[0];
  *(a6 + 16) = result;
  return result;
}

void sub_1AAE8402C()
{
  if (!qword_1EB4261D8)
  {
    sub_1AAE842D8(255, &qword_1ED9B2A88, MEMORY[0x1E69E62F8]);
    sub_1AAE840B8();
    v0 = sub_1AAF90104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4261D8);
    }
  }
}

unint64_t sub_1AAE840B8()
{
  result = qword_1EB4261E0;
  if (!qword_1EB4261E0)
  {
    sub_1AAE842D8(255, &qword_1ED9B2A88, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4261E0);
  }

  return result;
}

void sub_1AAE8412C()
{
  if (!qword_1EB423020)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB423020);
    }
  }
}

unint64_t sub_1AAE84188()
{
  result = qword_1EB4261F8[0];
  if (!qword_1EB4261F8[0])
  {
    sub_1AACD6D40(255, &qword_1EB4261F0, sub_1AAE8412C, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4261F8);
  }

  return result;
}

double sub_1AAE84210@<D0>(double *a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  result = v4 + v6;
  *a1 = v3 + v6;
  a1[1] = v4 + v6;
  return result;
}

double sub_1AAE8428C@<D0>(double *a1@<X8>)
{
  v3 = *(v1 + 56);
  swift_getAtKeyPath();
  result = v3 + v5;
  *a1 = v3 + v5;
  a1[1] = v3 + v5;
  return result;
}

void sub_1AAE842D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7DE0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AAE8432C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1AAE843F4(uint64_t a1, double a2, double a3)
{
  v7 = *(v3 + 64);
  type metadata accessor for MappedCoefficients();
  return v7 + sub_1AAE643A8(a1, a2, a3);
}

void sub_1AAE84468(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  sub_1AAE8412C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a2 = v5(a1, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8));
  *(a2 + 8) = v7;
}

double sub_1AAE844E8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v5 = *(v2 + 56);
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  v9 = *(v2 + 96);
  v10 = *(v2 + 104);
  v11 = *(v5 + 16);
  if (*(v5 + 24))
  {
    v11 = 0.0;
  }

  v12 = v6 + v11;
  type metadata accessor for MappedCoefficients();
  result = v8 + v7 + sub_1AAE643A8(a1, v6, v12);
  *a2 = result;
  a2[1] = v10 + v14 - v9;
  return result;
}

double sub_1AAE8459C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[10];
  type metadata accessor for MappedCoefficients();
  result = v6 + sub_1AAE643A8(a1, v5, v5);
  *a2 = result;
  a2[1] = v7 + v9;
  return result;
}

double sub_1AAE84624(uint64_t a1, double a2)
{
  v5 = *(v2 + 56);
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  v8 = *(v5 + 16);
  if (*(v5 + 24))
  {
    v8 = 0.0;
  }

  v9 = v8 + a2;
  type metadata accessor for MappedCoefficients();
  return v7 + v6 + sub_1AAE643A8(a1, a2, v9);
}

double sub_1AAE846D8(uint64_t a1, double a2)
{
  v5 = *(v2 + 64);
  type metadata accessor for MappedCoefficients();
  return v5 + sub_1AAE643A8(a1, a2, a2);
}

void sub_1AAE84748(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a2 = v5(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *(a2 + 8) = v7;
}

BOOL sub_1AAE84878(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    if (a3)
    {
      v6 = 0;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (a6 == 1)
  {
    if (a3 != 1)
    {
      v6 = 1;
LABEL_15:
      v7 = v6 < a3;
      return (v7 & 1) == 0;
    }

LABEL_11:
    v7 = *&a4 != *&a1 && *&a4 < *&a1;
    return (v7 & 1) == 0;
  }

  if (a3 != 2)
  {
    v6 = 2;
    goto LABEL_15;
  }

  if (a4 == a1 && a5 == a2)
  {
    v7 = 0;
  }

  else if (sub_1AAF904F4())
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1AAF904F4();
  }

  return (v7 & 1) == 0;
}

BOOL sub_1AAE84974(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (!a3)
  {
    if (a6)
    {
      v6 = 0;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (a3 == 1)
  {
    if (a6 != 1)
    {
      v6 = 1;
LABEL_15:
      v7 = v6 < a6;
      return (v7 & 1) == 0;
    }

LABEL_11:
    v7 = *&a1 != *&a4 && *&a1 < *&a4;
    return (v7 & 1) == 0;
  }

  if (a6 != 2)
  {
    v6 = 2;
    goto LABEL_15;
  }

  if (a1 == a4 && a2 == a5)
  {
    v7 = 0;
  }

  else if (sub_1AAF904F4())
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1AAF904F4();
  }

  return (v7 & 1) == 0;
}

uint64_t sub_1AAE84A68(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    if (a3)
    {
      v6 = 0;
      return v6 < a3;
    }

    return *&a4 != *&a1 && *&a4 < *&a1;
  }

  if (a6 == 1)
  {
    if (a3 != 1)
    {
      v6 = 1;
      return v6 < a3;
    }

    return *&a4 != *&a1 && *&a4 < *&a1;
  }

  if (a3 != 2)
  {
    v6 = 2;
    return v6 < a3;
  }

  if (a4 == a1 && a5 == a2 || (sub_1AAF904F4() & 1) != 0)
  {
    return 0;
  }

  return sub_1AAF904F4();
}

uint64_t sub_1AAE84B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  v6 = v12;
  if (v12 == 14)
  {
    v7 = type metadata accessor for CategoryValueBindingBox();
  }

  else
  {
    v7 = type metadata accessor for NumberValueBindingBox();
  }

  v8 = v6 != 14;
  *(a2 + 24) = v7;
  *(a2 + 32) = swift_getWitnessTable();
  v9 = sub_1AACB2508(a2);
  v10 = sub_1AAF8EF74();
  result = (*(*(v10 - 8) + 32))(v9, a1, v10);
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_1AAE84CD4()
{
  sub_1AAE8A0B4(v0, v10);
  if (v11)
  {
    sub_1AACBB198(v10, v7);
    v1 = v8;
    v2 = v9;
    sub_1AACBB42C(v7, v8);
    v3 = (*(v2 + 16))(v1, v2);
  }

  else
  {
    sub_1AACBB198(v10, v7);
    v4 = v8;
    v5 = v9;
    sub_1AACBB42C(v7, v8);
    v3 = (*(v5 + 16))(v4, v5);
  }

  sub_1AACB634C(v7);
  return v3;
}

uint64_t sub_1AAE84DC0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  sub_1AAE89AD4(v4, v20);
  if ((v21 & 1) == 0)
  {
    sub_1AACBB198(v20, v17);
    if (a3 != 255)
    {
      if (a3 == 2)
      {
        v10 = v18;
        v11 = v19;
        sub_1AACBB42C(v17, v18);
        (*(v11 + 24))(a1, a2, v10, v11);
        return sub_1AACB634C(v17);
      }

      sub_1AAE2CC54(a1, a2, a3);
    }

    v14 = v18;
    v15 = v19;
    sub_1AACBB42C(v17, v18);
    (*(v15 + 24))(0, 0, v14, v15);
    return sub_1AACB634C(v17);
  }

  sub_1AACBB198(v20, v17);
  if (a3 == 255)
  {
LABEL_9:
    v12 = v18;
    v13 = v19;
    sub_1AACBB42C(v17, v18);
    (*(v13 + 24))(0, 1, v12, v13);
    return sub_1AACB634C(v17);
  }

  if (a3)
  {
    sub_1AAE2CC54(a1, a2, a3);
    goto LABEL_9;
  }

  v8 = v18;
  v9 = v19;
  sub_1AACBB42C(v17, v18);
  (*(v9 + 24))(a1, 0, v8, v9);
  return sub_1AACB634C(v17);
}

void *sub_1AAE84F4C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = v6;
  sub_1AAE89C44(v7, v21);
  sub_1AACBB198(v21, v22);
  if (a3 == 255)
  {
    goto LABEL_7;
  }

  if (a3)
  {
    sub_1AAE2CC54(a1, a2, a3);
    goto LABEL_7;
  }

  if (a6)
  {
    if (a6 == 255)
    {
LABEL_8:
      v14 = v23;
      v15 = v24;
      sub_1AACBB42C(v22, v23);
      (*(v15 + 24))(0, 0, 1, v14, v15);
      return sub_1AACB634C(v22);
    }

LABEL_7:
    sub_1AAE2CC54(a4, a5, a6);
    goto LABEL_8;
  }

  v17 = v23;
  v18 = v24;
  result = sub_1AACBB42C(v22, v23);
  if (*&a4 >= *&a1)
  {
    v19 = *&a1;
  }

  else
  {
    v19 = *&a4;
  }

  if (*&a1 > *&a4)
  {
    v20 = *&a1;
  }

  else
  {
    v20 = *&a4;
  }

  if (v19 <= v20)
  {
    (*(v18 + 24))(COERCE_DOUBLE(*&v19), COERCE_DOUBLE(*&v20), 0, v17, v18);
    return sub_1AACB634C(v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE85094(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_1AAE8A0B4(v4, v19);
  v20 = a1;
  v21 = a2;
  v22 = a3;
  if (v19[40])
  {
    sub_1AAE8A0B4(v19, v18);
    if (!a3)
    {
      v8 = *&a1;
      sub_1AACBB198(v18, v15);
      v9 = v16;
      v10 = v17;
      sub_1AACBB42C(v15, v16);
      (*(v10 + 24))(v9, v10, v8);
      sub_1AACB634C(v15);
      return sub_1AAE04B10(v19);
    }
  }

  else
  {
    sub_1AAE8A0B4(v19, v18);
    if (a3 == 2)
    {
      sub_1AACBB198(v18, v15);
      v11 = v16;
      v12 = v17;
      sub_1AACBB42C(v15, v16);
      v13 = *(v12 + 24);

      v13(a1, a2, v11, v12);
      sub_1AACB634C(v15);
      sub_1AACCA728(a1, a2, 2);
      return sub_1AAE04B10(v19);
    }
  }

  sub_1AACB634C(v18);
  return sub_1AAE89C7C(v19, &qword_1EB426328);
}

uint64_t PrimitivePlottableProtocol.init(primitivePlottable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

void sub_1AAE85308(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1AAF8CA64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  if (v9 == a1)
  {
    v11 = v9;
    sub_1AAF8C844();
    if (v8 == *(*(a1 - 8) + 64))
    {
      (*(*(a1 - 8) + 16))(a2, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
      (*(v7 + 8))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      return;
    }
  }

  else
  {
    v13 = a3;
    if (*(*(a1 - 8) + 64) == 8)
    {
      (*(*(a1 - 8) + 16))(a2, &v13, a1, v10);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_1AAE854D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v37, AssociatedTypeWitness, AssociatedConformanceWitness);
  switch(v37)
  {
    case 1:
      v10 = sub_1AAE8AD04();
      v11 = swift_allocObject();
      v29 = MEMORY[0x1E69E7290];
      v11[2] = a3;
      v11[3] = v29;
      v13 = &protocol witness table for Int16;
      goto LABEL_18;
    case 2:
      v10 = sub_1AAE8ACB0();
      v11 = swift_allocObject();
      v26 = MEMORY[0x1E69E72F0];
      v11[2] = a3;
      v11[3] = v26;
      v13 = &protocol witness table for Int32;
      goto LABEL_18;
    case 3:
      v10 = sub_1AAE8AC5C();
      v11 = swift_allocObject();
      v27 = MEMORY[0x1E69E7360];
      v11[2] = a3;
      v11[3] = v27;
      v13 = &protocol witness table for Int64;
      goto LABEL_18;
    case 4:
      v10 = sub_1AADF24EC();
      v11 = swift_allocObject();
      v22 = MEMORY[0x1E69E6530];
      v11[2] = a3;
      v11[3] = v22;
      v13 = &protocol witness table for Int;
      goto LABEL_18;
    case 5:
      v10 = sub_1AAE8AC08();
      v11 = swift_allocObject();
      v30 = MEMORY[0x1E69E7508];
      v11[2] = a3;
      v11[3] = v30;
      v13 = &protocol witness table for UInt8;
      goto LABEL_18;
    case 6:
      v10 = sub_1AAE8ABB4();
      v11 = swift_allocObject();
      v32 = MEMORY[0x1E69E75F8];
      v11[2] = a3;
      v11[3] = v32;
      v13 = &protocol witness table for UInt16;
      goto LABEL_18;
    case 7:
      v10 = sub_1AAE8AB60();
      v11 = swift_allocObject();
      v28 = MEMORY[0x1E69E7668];
      v11[2] = a3;
      v11[3] = v28;
      v13 = &protocol witness table for UInt32;
      goto LABEL_18;
    case 8:
      v10 = sub_1AAE8AB0C();
      v11 = swift_allocObject();
      v34 = MEMORY[0x1E69E76D8];
      v11[2] = a3;
      v11[3] = v34;
      v13 = &protocol witness table for UInt64;
      goto LABEL_18;
    case 9:
      v10 = sub_1AAE8AAB8();
      v11 = swift_allocObject();
      v25 = MEMORY[0x1E69E6810];
      v11[2] = a3;
      v11[3] = v25;
      v13 = &protocol witness table for UInt;
      goto LABEL_18;
    case 10:
      v18 = sub_1AAE8AA64();
      v19 = swift_allocObject();
      v33 = MEMORY[0x1E69E7788];
      v19[2] = a3;
      v19[3] = v33;
      v21 = &protocol witness table for Float16;
      goto LABEL_16;
    case 11:
      v18 = sub_1AAE8AA10();
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E6448];
      v19[2] = a3;
      v19[3] = v20;
      v21 = &protocol witness table for Float;
LABEL_16:
      v19[4] = a4;
      v19[5] = v21;
      v19[6] = v18;
      v19[7] = a1;
      v16 = v19 + 8;
      v17 = sub_1AAE8AEC0;
      break;
    case 12:
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E63B0];
      v23[2] = a3;
      v23[3] = v24;
      v23[4] = a4;
      v23[5] = &protocol witness table for Double;
      v23[6] = a1;
      v16 = v23 + 7;
      v17 = sub_1AAE8B038;
      break;
    case 13:
      v31 = swift_allocObject();
      v31[2] = a3;
      v31[3] = a4;
      v31[4] = a1;
      v16 = v31 + 5;
      v17 = sub_1AAE8AA04;
      break;
    case 14:
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E6158];
      v14[2] = a3;
      v14[3] = v15;
      v14[4] = a4;
      v14[5] = &protocol witness table for String;
      v14[6] = a1;
      v16 = v14 + 7;
      v17 = sub_1AAE8B038;
      break;
    default:
      v10 = sub_1AAE8AD58();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E7230];
      v11[2] = a3;
      v11[3] = v12;
      v13 = &protocol witness table for Int8;
LABEL_18:
      v11[4] = a4;
      v11[5] = v13;
      v11[6] = v10;
      v11[7] = a1;
      v16 = v11 + 8;
      v17 = sub_1AAE8ADAC;
      break;
  }

  v35 = v17;
  *v16 = a2;

  return v35;
}

uint64_t sub_1AAE859A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9[1] = round(*v7);
  sub_1AAD46810();
  sub_1AAF8FF14();
  result = swift_getAssociatedTypeWitness();
  if (v6 == *(*(result - 8) + 64))
  {
    (*(*(result - 8) + 16))(a3, v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), result);
    return (*(v5 + 8))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAE85B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, a2, v7);
  if (sub_1AAF8FEF4() < 65)
  {
    v11 = sub_1AAF8FF04();
    v12 = sub_1AAF8FEE4();
    result = (*(v5 + 8))(v7, a2);
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    sub_1AAD46810();
    sub_1AADF2540();
    sub_1AAF8F364();
    result = (*(v5 + 8))(v7, a2);
    v10 = *&v13[1];
  }

  *a3 = v10;
  return result;
}

uint64_t sub_1AAE85D08(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, char *), uint64_t a10, void (*a11)(char *, char *))
{
  v47 = a1;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = a8;
  sub_1AAE8C594(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v17 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1AAE8AE18();
  v47 = sub_1AACB00E0(a9, v41, v17, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v40 = a4;
  sub_1AAF8F914();
  swift_getWitnessTable();
  v21 = sub_1AAF8F764();

  v22 = a2(v21);

  v47 = v22;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v23 = sub_1AAF8F914();
  WitnessTable = swift_getWitnessTable();
  v26 = sub_1AACB00E0(a11, v29, v23, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);

  return v26;
}

uint64_t sub_1AAE85F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1AAF8F374();
  result = swift_getAssociatedTypeWitness();
  if (v6 == *(*(result - 8) + 64))
  {
    (*(*(result - 8) + 16))(a3, &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), result);
    return (*(v5 + 8))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAE86078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v14 - v10;
  (*(v12 + 16))(v14 - v10, a1, v9);
  return (*(a5 + 32))(v11, a3, a5);
}

uint64_t sub_1AAE86190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, a3, v5);
  sub_1AAD46810();
  return sub_1AAF8F354();
}

uint64_t sub_1AAE8628C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a1;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v11 = sub_1AAF8F914();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v38 = sub_1AACB00E0(sub_1AAE8B048, v33, v11, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a4;
  sub_1AAF8F914();
  swift_getWitnessTable();
  v15 = sub_1AAF8F764();

  v16 = a2(v15);

  v38 = v16;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v17 = sub_1AAF8F914();
  v18 = swift_getWitnessTable();
  v20 = sub_1AACB00E0(sub_1AAE8B090, v23, v17, a5, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);

  return v20;
}

uint64_t sub_1AAE86490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = swift_getAssociatedTypeWitness();
  if (*(*(a2 - 8) + 64) == *(*(result - 8) + 64))
  {
    return (*(*(result - 8) + 16))(a3, a1, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE8656C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v24 = a4;
  v25 = a5;
  sub_1AAE8C594(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v9 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AAE8AE18();
  v12 = MEMORY[0x1E69E73E0];
  v13 = MEMORY[0x1E69E7410];
  v26 = sub_1AACB00E0(sub_1AAE8B110, v23, v9, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v14);
  v22[6] = a4;
  v22[7] = a5;
  v22[8] = a4;
  sub_1AAF8F914();
  swift_getWitnessTable();
  v15 = sub_1AAF8F764();

  v16 = a2(v15);

  v26 = v16;
  v22[2] = a4;
  v22[3] = a5;
  v17 = sub_1AAF8F914();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1AACB00E0(sub_1AAE8C63C, v22, v17, MEMORY[0x1E69E63B0], v12, WitnessTable, v13, v19);

  return v20;
}

void sub_1AAE86770(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AAE85308(AssociatedTypeWitness, a2, v3);
}

uint64_t sub_1AAE867D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v13 - v9;
  (*(v11 + 16))(v13 - v9, a1, v8);
  return (*(a4 + 32))(v10, a3, a4);
}

uint64_t Plottable<>.init(primitivePlottable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  v15[0] = a1;
  v15[1] = a2;
  sub_1AAF8F804();
  v12 = *(a3 - 8);
  if ((*(v12 + 48))(v11, 1, a3))
  {
    (*(v9 + 8))(v11, v8);
    v13 = 1;
  }

  else
  {
    (*(v12 + 32))(a4, v11, a3);
    v13 = 0;
  }

  return (*(v12 + 56))(a4, v13, 1, a3);
}

uint64_t sub_1AAE86AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(*(AssociatedTypeWitness - 8) + 56);

    return v5(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    sub_1AAD46810();
    sub_1AAF8FF14();
    v7 = swift_getAssociatedTypeWitness();
    if (swift_dynamicCast())
    {
      v8 = a2;
      v9 = 0;
    }

    else
    {
      v8 = a2;
      v9 = 1;
    }

    return (*(*(v7 - 8) + 56))(v8, v9, 1, v7);
  }
}

uint64_t sub_1AAE86C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(*(AssociatedTypeWitness - 8) + 56);

    return v5(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    sub_1AAF8F374();
    v7 = swift_getAssociatedTypeWitness();
    if (swift_dynamicCast())
    {
      v8 = a2;
      v9 = 0;
    }

    else
    {
      v8 = a2;
      v9 = 1;
    }

    return (*(*(v7 - 8) + 56))(v8, v9, 1, v7);
  }
}

uint64_t sub_1AAE86E08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x1AC5992C0](v5);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x1AC5992F0](v6);
  }

  MEMORY[0x1AC5992C0](2);

  return sub_1AAF8F6C4();
}

uint64_t sub_1AAE86E98()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AAF90694();
  sub_1AAE86E08(v5, v1, v2, v3);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE86F00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AAF90694();
  sub_1AAE86E08(v5, v1, v2, v3);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE86FB8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return v3 == v4;
    }

    return 0;
  }

  if (*(a1 + 16) != 1)
  {
    if (v5 == 2)
    {
      v6 = *(a1 + 8);
      if (*&v3 != *&v4 || v6 != *(a2 + 8))
      {
        return sub_1AAF904F4();
      }

      return 1;
    }

    return 0;
  }

  if (v5 != 1)
  {
    return 0;
  }

  return v3 == v4;
}

uint64_t sub_1AAE87034()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AAF90694();
  sub_1AACDC020(v5, v1, v2, v3);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE8709C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AAF90694();
  sub_1AACDC020(v5, v1, v2, v3);
  return sub_1AAF906F4();
}

BOOL sub_1AAE870F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return 0;
}

double sub_1AAE87140@<D0>(double *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E7230], &v4);
  result = v4;
  *a1 = result;
  return result;
}

double sub_1AAE871D0@<D0>(double *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E7290], &v5);
  v3.i16[0] = v5;
  result = vmovl_s16(v3).i32[0];
  *a1 = result;
  return result;
}

double sub_1AAE87268@<D0>(double *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E72F0], &v4);
  result = v4;
  *a1 = result;
  return result;
}

double sub_1AAE872FC@<D0>(uint64_t a1@<X4>, double *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, a1, &v6);
  result = v6;
  *a2 = v6;
  return result;
}

double sub_1AAE87394@<D0>(double *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E7508], &v5);
  LOBYTE(v3) = v5;
  result = v3;
  *a1 = result;
  return result;
}

double sub_1AAE87424@<D0>(double *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E75F8], &v5);
  LOWORD(v3) = v5;
  result = v3;
  *a1 = result;
  return result;
}

double sub_1AAE874B4@<D0>(double *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E7668], &v5);
  LODWORD(v3) = v5;
  result = v3;
  *a1 = result;
  return result;
}

double sub_1AAE87544@<D0>(uint64_t a1@<X4>, double *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, a1, &v6);
  result = v6;
  *a2 = v6;
  return result;
}

double sub_1AAE875DC@<D0>(double *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E7788], &v9);
  _H0 = v9;
  __asm { FCVT            D0, H0 }

  *a1 = result;
  return result;
}

double sub_1AAE8766C@<D0>(double *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1AACB09D0(AssociatedTypeWitness, MEMORY[0x1E69E6448], &v4);
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1AAE876FC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v5)
  {
    if (v5 == 1)
    {
      if (v7 != 1)
      {
        return 0;
      }

      return sub_1AAD79E08(v4, v6);
    }

    if (v7 == 2)
    {
      return sub_1AAD79E64(v4, v6);
    }
  }

  else if (!v7)
  {
    return sub_1AAD79E08(v4, v6);
  }

  return 0;
}

uint64_t sub_1AAE87748(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AAF8EF74();
  MEMORY[0x1AC597B70](v6);
  v7 = sub_1AACD78B0(v5, v2, *(a1 + 24));
  v9 = v8;
  v11 = v10;
  (*(v3 + 8))(v5, v2, v7);
  if (v11 >= 2)
  {
    return v9;
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAE87888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1AAF8FE74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  sub_1AACFB938(a1, a2, 2, v6, *(a3 + 24), v10);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v17, v10, v6);
  (*(v11 + 16))(v14, v17, v6);
  sub_1AAF8EF74();
  sub_1AAF8EF64();
  return (*(v11 + 8))(v17, v6);
}

uint64_t sub_1AAE87AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AAF8EF74();
  MEMORY[0x1AC597B70](v6);
  v7 = sub_1AACD78B0(v5, v2, *(a1 + 24));
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2, v7);
  if (v13 > 1)
  {
    sub_1AACCA728(v9, v11, 2);
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAE87C44(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  v5 = sub_1AAF8FE74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - v14;
  sub_1AACFB938(*&a2, 0, 0, v4, *(a1 + 24), v8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v9 + 32))(v15, v8, v4);
  (*(v9 + 16))(v12, v15, v4);
  sub_1AAF8EF74();
  sub_1AAF8EF64();
  return (*(v9 + 8))(v15, v4);
}

uint64_t sub_1AAE87E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1AAF8EF74();
  v12 = a2;
  v13 = 3;
  sub_1AACBC418(a1, a5, &v10, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v8);
  return v14;
}

uint64_t sub_1AAE87F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v16 = a1;
  v17 = a2;
  v10 = *(a3 + 24);
  v14 = v6;
  v15 = v10;
  sub_1AAE8C594(0, &qword_1ED9B2A98, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1AAE29A94(sub_1AAE8C52C, v13, MEMORY[0x1E69E73E0], v6, v11, v9);

  sub_1AAF8EF74();
  return sub_1AAF8EF64();
}

uint64_t sub_1AAE880B0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v16 = a1;
  v17 = a2 & 1;
  v10 = *(a3 + 24);
  v14 = v6;
  v15 = v10;
  sub_1AAE8C594(0, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  sub_1AAE29A94(sub_1AAE8C4F0, v13, MEMORY[0x1E69E73E0], v6, v11, v9);
  sub_1AAF8EF74();
  return sub_1AAF8EF64();
}

uint64_t sub_1AAE881E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AAF8FE74();
  v11 = sub_1AAF8EF74();
  v12 = a2;
  v13 = 3;
  sub_1AACBC418(a1, a5, &v10, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v8);
  return v14;
}

uint64_t sub_1AAE8827C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AAF8FE74();
  v4 = sub_1AAF8EF74();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1AAE882FC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = a4[2];
  v9 = a4[4];
  v10 = sub_1AAF8F5D4();
  v11 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  v21 = a1;
  v22 = a2;
  v23 = a3 & 1;
  v14 = a4[3];
  v18 = v8;
  v19 = v14;
  v20 = v9;
  sub_1AACECC70(0, &qword_1EB425A80, sub_1AAE8C498, MEMORY[0x1E69E6720]);
  sub_1AAE29A94(sub_1AAE8C474, v17, MEMORY[0x1E69E73E0], v10, v15, v13);
  sub_1AAF8EF74();
  return sub_1AAF8EF64();
}

uint64_t sub_1AAE88468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a5;
  v61 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  v55 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v51 - v11;
  v12 = sub_1AAF8FE74();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v51 - v27;
  v29 = *a1;
  v60 = a1[1];
  v30 = a3;
  sub_1AACFB938(v29, 0, 0, a2, a3, v17);
  v31 = *(v18 + 48);
  if (v31(v17, 1, a2) == 1)
  {
LABEL_6:
    (*(v51 + 8))(v17, v52);
    __break(1u);
    goto LABEL_7;
  }

  v62 = v18;
  v33 = *(v18 + 32);
  v32 = (v18 + 32);
  v34 = v17;
  v17 = v33;
  (v33)(v28, v34, a2);
  sub_1AACFB938(v60, 0, 0, a2, v30, v14);
  if (v31(v14, 1, a2) != 1)
  {
    (v17)(v25, v14, a2);
    v35 = v58;
    sub_1AAF90574();
    v36 = v59;
    sub_1AAF90564();
    v14 = sub_1AAF8F584();
    v37 = v25;
    v38 = v62 + 8;
    v39 = *(v62 + 8);
    v39(v37, a2);
    v62 = v38;
    v60 = v39;
    v39(v28, a2);
    if (v14)
    {
      v40 = v35;
      v41 = v53;
      (v17)(v53, v40, a2);
      v42 = v55;
      (v17)(&v41[*(v55 + 48)], v36, a2);
      v43 = v54;
      v44 = v56;
      (*(v54 + 16))(v56, v41, v42);
      v45 = *(v42 + 48);
      v46 = v57;
      (v17)(v57, v44, a2);
      v58 = v32;
      v59 = v17;
      v47 = v60;
      v60(&v44[v45], a2);
      (*(v43 + 32))(v44, v41, v42);
      v48 = *(v42 + 48);
      v49 = sub_1AAF8F5D4();
      (v59)(v46 + *(v49 + 36), &v44[v48], a2);
      v47(v44, a2);
      return (*(*(v49 - 8) + 56))(v46, 0, 1, v49);
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  result = (*(v51 + 8))(v14, v52);
  __break(1u);
  return result;
}

uint64_t sub_1AAE889B0(uint64_t a1, uint64_t a2)
{
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  v7 = sub_1AAF8EF74();
  v8 = a2;
  v9 = 3;
  sub_1AACBC418(a1, sub_1AAE8C668, &v6, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v4);
  return v10;
}

uint64_t sub_1AAE88A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  v4 = sub_1AAF8EF74();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1AAE88B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v6 = v10;
  if (v10 == 14)
  {
    v7 = type metadata accessor for CategoryOptionalValueBindingBox();
  }

  else
  {
    v7 = type metadata accessor for NumberOptionalValueBindingBox();
  }

  *(a2 + 24) = v7;
  *(a2 + 32) = swift_getWitnessTable();
  v8 = sub_1AACB2508(a2);
  result = sub_1AAE8827C(a1, v8);
  *(a2 + 40) = v6 != 14;
  return result;
}

uint64_t sub_1AAE88C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  v6 = v9 != 13;
  *(a2 + 24) = type metadata accessor for NumberOptionalRangeBindingBox();
  *(a2 + 32) = swift_getWitnessTable();
  v7 = sub_1AACB2508(a2);
  result = sub_1AAE88A60(a1, v7);
  *(a2 + 40) = v6;
  return result;
}

uint64_t (*sub_1AAE88E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{

  v9 = sub_1AAE854D4(a2, a3, a4, a5);

  return v9;
}

void *sub_1AAE890B0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

__int16 sub_1AAE890EC@<H0>(__int16 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

float sub_1AAE89110@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double NSDecimal.primitivePlottable.getter(uint64_t a1, uint64_t a2, int a3)
{
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

void sub_1AAE89218(void *a1@<X8>)
{
  v6 = *v1;
  LODWORD(v7) = *(v1 + 4);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  [v3 doubleValue];
  v5 = v4;

  *a1 = v5;
}

uint64_t sub_1AAE89290@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = MEMORY[0x1AC598A70](*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 20) = 0;
  return result;
}

Swift::Int_optional __swiftcall Int.init(primitivePlottable:)(Swift::Int primitivePlottable)
{
  v1 = 0;
  result.value = primitivePlottable;
  result.is_nil = v1;
  return result;
}

Swift::Int16_optional __swiftcall Int16.init(primitivePlottable:)(Swift::Int16 primitivePlottable)
{
  *&primitivePlottable = primitivePlottable;
  result.value = primitivePlottable;
  return result;
}

Swift::UInt8_optional __swiftcall UInt8.init(primitivePlottable:)(Swift::UInt8 primitivePlottable)
{
  *&primitivePlottable = primitivePlottable;
  result.value = primitivePlottable;
  return result;
}

uint64_t sub_1AAE894A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAE8950C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1AAE8959C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1AAE896B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AAE896C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1AAE8970C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAE89760()
{
  result = qword_1ED9B1B08;
  if (!qword_1ED9B1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1B08);
  }

  return result;
}

unint64_t sub_1AAE897B8()
{
  result = qword_1EB426300;
  if (!qword_1EB426300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426300);
  }

  return result;
}

uint64_t sub_1AAE8980C(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_1AAE8A0B4(a1, v9);
  sub_1AAE8A0B4(a2, v10);
  if ((v9[40] & 1) == 0)
  {
    sub_1AAE8A0B4(v9, v8);
    if ((v11 & 1) == 0)
    {
      sub_1AACBB198(v8, v7);
      sub_1AACBB198(v10, v6);
      v3 = &unk_1EB426348;
      goto LABEL_7;
    }

LABEL_5:
    sub_1AACB634C(v8);
    sub_1AAE89C7C(v9, &qword_1EB426338);
    return 0;
  }

  sub_1AAE8A0B4(v9, v8);
  if (v11 != 1)
  {
    goto LABEL_5;
  }

  sub_1AACBB198(v8, v7);
  sub_1AACBB198(v10, v6);
  v3 = &unk_1EB426340;
LABEL_7:
  sub_1AAD45E1C(0, v3);
  v5 = AGCompareValues();
  sub_1AACB634C(v6);
  sub_1AACB634C(v7);
  sub_1AAE04B10(v9);
  return v5;
}

uint64_t sub_1AAE89970(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_1AAE89AD4(a1, v9);
  sub_1AAE89AD4(a2, v10);
  if ((v9[40] & 1) == 0)
  {
    sub_1AAE89AD4(v9, v8);
    if ((v11 & 1) == 0)
    {
      sub_1AACBB198(v8, v7);
      sub_1AACBB198(v10, v6);
      v3 = &unk_1EB426310;
      goto LABEL_7;
    }

LABEL_5:
    sub_1AACB634C(v8);
    sub_1AAE89C7C(v9, &qword_1EB426308);
    return 0;
  }

  sub_1AAE89AD4(v9, v8);
  if (v11 != 1)
  {
    goto LABEL_5;
  }

  sub_1AACBB198(v8, v7);
  sub_1AACBB198(v10, v6);
  v3 = &qword_1EB424280;
LABEL_7:
  sub_1AAD45E1C(0, v3);
  v5 = AGCompareValues();
  sub_1AACB634C(v6);
  sub_1AACB634C(v7);
  sub_1AAD9E1BC(v9);
  return v5;
}

uint64_t sub_1AAE89B0C(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  sub_1AAE89C44(a1, v8);
  sub_1AAE89C44(a2, v9);
  if (v8[40])
  {
    sub_1AAE89C44(v8, v7);
    if (v10 != 1)
    {
LABEL_3:
      sub_1AACB634C(v7);
      sub_1AAE89C7C(v8, &qword_1EB426318);
      return 0;
    }
  }

  else
  {
    sub_1AAE89C44(v8, v7);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  sub_1AACBB198(v7, v6);
  sub_1AACBB198(v9, v5);
  sub_1AAD45E1C(0, &qword_1EB426320);
  v4 = AGCompareValues();
  sub_1AACB634C(v5);
  sub_1AACB634C(v6);
  sub_1AAE2CD54(v8);
  return v4;
}

uint64_t sub_1AAE89C7C(uint64_t a1, unint64_t *a2)
{
  sub_1AACC9AC0(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAE89CD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        v10 = swift_allocObject();
        *(v10 + 16) = a1;
        *(v10 + 24) = a2;
        v11 = swift_allocObject();
        *(v11 + 16) = a4;
        *(v11 + 24) = a5;
        sub_1AAE8A120(0, &qword_1ED9B0C80, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
        sub_1AADC6904(a1, a2, 1u);
        v12 = a4;
        v13 = a5;
        v14 = 1;
LABEL_9:
        sub_1AADC6904(v12, v13, v14);
        v23 = AGCompareValues();

        return v23;
      }
    }

    else if (a6 == 2)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      *(v21 + 24) = a2;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1AAE8A120(0, &qword_1EB426330, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
      sub_1AADC6904(a1, a2, 2u);
      v12 = a4;
      v13 = a5;
      v14 = 2;
      goto LABEL_9;
    }
  }

  else if (!a6)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    sub_1AAE8A120(0, &qword_1ED9B0C80, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
    sub_1AADC6904(a1, a2, 0);
    v12 = a4;
    v13 = a5;
    v14 = 0;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1AAE89FBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (!a3)
  {
    if (a6)
    {
      v6 = 0;
      return v6 < a6;
    }

    return *&a1 != *&a4 && *&a1 < *&a4;
  }

  if (a3 == 1)
  {
    if (a6 != 1)
    {
      v6 = 1;
      return v6 < a6;
    }

    return *&a1 != *&a4 && *&a1 < *&a4;
  }

  if (a6 != 2)
  {
    v6 = 2;
    return v6 < a6;
  }

  if (a1 == a4 && a2 == a5 || (sub_1AAF904F4() & 1) != 0)
  {
    return 0;
  }

  return sub_1AAF904F4();
}

uint64_t sub_1AAE8A0EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AAE8A120(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    sub_1AAE8C594(255, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1AAE8A194(uint64_t a1)
{
  sub_1AACECC70(0, &qword_1ED9B2738, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE8A220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v42 = a2;
  v43 = a3;
  v7 = MEMORY[0x1E69E6720];
  sub_1AACECC70(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v39 - v9;
  v10 = sub_1AAF8C6F4();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACECC70(0, &qword_1ED9B2738, MEMORY[0x1E6969530], v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_1AAF8CA64();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v39 - v22;
  v23 = *(a4 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v39 - v28;
  (*(v47 + 24))(v48, v27);
  (*(v23 + 16))(&v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v29, a4);
  v48 = a4;
  v30 = swift_dynamicCast();
  v31 = *(v16 + 56);
  if (v30)
  {
    v31(v14, 0, 1, v15);
    (*(v16 + 32))(v46, v14, v15);
    v32 = v41;
    sub_1AAF8CAD4();
    v34 = v44;
    v33 = v45;
    result = (*(v44 + 48))(v32, 1, v45);
    if (result != 1)
    {
      v36 = v40;
      (*(v34 + 32))(v40, v32, v33);
      sub_1AAF8C6E4();
      sub_1AAF8C854();
      v37 = *(v16 + 8);
      v37(v20, v15);
      v38 = v39;
      sub_1AAF8C6D4();
      sub_1AAF8C854();
      v37(v38, v15);
      (*(v34 + 8))(v36, v33);
      v37(v46, v15);
      return (*(v23 + 8))(v29, v48);
    }
  }

  else
  {
    v31(v14, 1, 1, v15);
    result = sub_1AAE8A194(v14);
    if (v24 == 8)
    {
      return (*(v23 + 8))(v29, v48);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AAE8A740()
{
  if (!qword_1EB4235F0)
  {
    sub_1AAD580CC();
    v0 = sub_1AAF90634();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4235F0);
    }
  }
}

unint64_t sub_1AAE8AA10()
{
  result = qword_1EB426360;
  if (!qword_1EB426360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426360);
  }

  return result;
}

unint64_t sub_1AAE8AA64()
{
  result = qword_1EB426368;
  if (!qword_1EB426368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426368);
  }

  return result;
}

unint64_t sub_1AAE8AAB8()
{
  result = qword_1EB426370;
  if (!qword_1EB426370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426370);
  }

  return result;
}

unint64_t sub_1AAE8AB0C()
{
  result = qword_1EB426378;
  if (!qword_1EB426378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426378);
  }

  return result;
}

unint64_t sub_1AAE8AB60()
{
  result = qword_1EB426380;
  if (!qword_1EB426380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426380);
  }

  return result;
}

unint64_t sub_1AAE8ABB4()
{
  result = qword_1EB426388;
  if (!qword_1EB426388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426388);
  }

  return result;
}

unint64_t sub_1AAE8AC08()
{
  result = qword_1EB426390;
  if (!qword_1EB426390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426390);
  }

  return result;
}

unint64_t sub_1AAE8AC5C()
{
  result = qword_1EB426398;
  if (!qword_1EB426398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426398);
  }

  return result;
}

unint64_t sub_1AAE8ACB0()
{
  result = qword_1EB4263A0;
  if (!qword_1EB4263A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4263A0);
  }

  return result;
}

unint64_t sub_1AAE8AD04()
{
  result = qword_1EB4263A8;
  if (!qword_1EB4263A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4263A8);
  }

  return result;
}

unint64_t sub_1AAE8AD58()
{
  result = qword_1EB4263B0;
  if (!qword_1EB4263B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4263B0);
  }

  return result;
}

unint64_t sub_1AAE8AE18()
{
  result = qword_1EB4263B8[0];
  if (!qword_1EB4263B8[0])
  {
    sub_1AAE8C594(255, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4263B8);
  }

  return result;
}

uint64_t sub_1AAE8B090@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1AACB09D0(AssociatedTypeWitness, v3, a1);
}

uint64_t sub_1AAE8B180()
{
  result = sub_1AAF8EF74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE8B1F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
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

void sub_1AAE8B37C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
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

uint64_t sub_1AAE8B5D4()
{
  sub_1AAF8FE74();
  result = sub_1AAF8EF74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE8B650(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1AAE8B810(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v23 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v27 = *(v7 + 56);
      v28 = a2 + 1;

      v27((v21 + v11 + 8) & ~v11, v28);
    }

    else
    {
      if (v12 <= 3)
      {
        v24 = ~(-1 << (8 * v12));
      }

      else
      {
        v24 = -1;
      }

      if (v12)
      {
        v25 = v24 & (~v9 + a2);
        if (v12 <= 3)
        {
          v26 = v12;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v12);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *v21 = v22;
  }
}

uint64_t sub_1AAE8BB0C()
{
  sub_1AAF8F5D4();
  sub_1AAF8FE74();
  result = sub_1AAF8EF74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE8BB98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
  v10 = *(v4 + 64);
  if (v6)
  {
    v11 = *(v4 + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_31;
  }

  v13 = v11 + ((v10 + v9) & ~v9) + ((v9 + 16) & ~v9);
  v14 = 8 * v13;
  if (v13 > 3)
  {
    goto LABEL_13;
  }

  v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
  if (HIWORD(v16))
  {
    v15 = *(a1 + v13);
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_31:
    v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) == 0)
    {
      v19 = *v18;
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    if (v6)
    {
      v21 = (*(v5 + 48))((v18 + v9 + 8) & ~v9);
      v22 = v21 != 0;
      result = (v21 - 1);
      if (result != 0 && v22)
      {
        return result;
      }
    }

    return 0;
  }

  if (v16 > 0xFF)
  {
    v15 = *(a1 + v13);
    if (*(a1 + v13))
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  if (v16 < 2)
  {
    goto LABEL_31;
  }

LABEL_13:
  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_31;
  }

LABEL_20:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
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

  return v8 + (v13 | v17) + 1;
}

void sub_1AAE8BD60(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = ((*(*(*(a4 + 16) - 8) + 64) + v11) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  if (v8)
  {
    v13 = ((*(*(*(a4 + 16) - 8) + 64) + v11) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = v13 + ((v11 + 16) & ~v11);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_24:
    if (v10 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
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
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_24;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_25:
    v19 = ~v10 + a2;
    if (v14 >= 4)
    {
      bzero(a1, v13 + ((v11 + 16) & ~v11));
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_27;
      }

      goto LABEL_64;
    }

    v20 = (v19 >> (8 * v14)) + 1;
    if (v14)
    {
      v23 = v19 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v23;
          if (v6 > 1)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *a1 = v19;
          if (v6 > 1)
          {
LABEL_27:
            if (v6 == 2)
            {
              *&a1[v14] = v20;
            }

            else
            {
              *&a1[v14] = v20;
            }

            return;
          }
        }

LABEL_64:
        if (v6)
        {
          a1[v14] = v20;
        }

        return;
      }

      *a1 = v23;
      a1[2] = BYTE2(v23);
    }

    if (v6 > 1)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

LABEL_13:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v14] = 0;
  }

  else if (v6)
  {
    a1[v14] = 0;
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
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *v21 = v22;
    return;
  }

  v24 = ((v21 + v11 + 8) & ~v11);
  if (v9 >= a2)
  {
    if (a2 >= v8)
    {
      if (v12 <= 3)
      {
        v30 = ~(-1 << (8 * v12));
      }

      else
      {
        v30 = -1;
      }

      if (v12)
      {
        v26 = v30 & (a2 - v8);
        if (v12 <= 3)
        {
          v27 = v12;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v12);
        if (v27 <= 2)
        {
          if (v27 == 1)
          {
            goto LABEL_56;
          }

          goto LABEL_78;
        }

LABEL_79:
        if (v27 == 3)
        {
          *v24 = v26;
          v24[2] = BYTE2(v26);
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v28 = *(v7 + 56);
      v29 = a2 + 1;

      v28((v21 + v11 + 8) & ~v11, v29);
    }
  }

  else
  {
    if (v13 <= 3)
    {
      v25 = ~(-1 << (8 * v13));
    }

    else
    {
      v25 = -1;
    }

    if (v13)
    {
      v26 = v25 & (~v9 + a2);
      if (v13 <= 3)
      {
        v27 = v13;
      }

      else
      {
        v27 = 4;
      }

      bzero(v24, v13);
      if (v27 <= 2)
      {
        if (v27 == 1)
        {
LABEL_56:
          *v24 = v26;
          return;
        }

LABEL_78:
        *v24 = v26;
        return;
      }

      goto LABEL_79;
    }
  }
}

uint64_t getEnumTagSinglePayload for PlottableHints(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlottableHints(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyPrimitivePlottableRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AnyPrimitivePlottableRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1AAE8C2F4()
{
  result = qword_1EB4266C0;
  if (!qword_1EB4266C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4266C0);
  }

  return result;
}

uint64_t sub_1AAE8C348(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE8C384(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE8C3C0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE8C3FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE8C438(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1AAE8C498()
{
  if (!qword_1EB423600)
  {
    v0 = sub_1AAF8F5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423600);
    }
  }
}

uint64_t sub_1AAE8C52C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a1;
  v7 = a1[1];

  return sub_1AACFB938(v6, v7, 2, v5, v4, a2);
}

void sub_1AAE8C594(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAE8C6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[3];
  v10 = v3[4];
  v11 = sub_1AACBB42C(v3, v9);
  return sub_1AAE91D80(v7, v11, a1, a2, v7, v9, a3, v8, v10);
}

uint64_t sub_1AAE8C744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  v9 = a7 + *(type metadata accessor for PlottableValue() + 36);
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = *(*(a6 - 8) + 32);
  v11(v9, a5, a6);
  v12 = sub_1AAF8FCA4();
  v11(v9 + v10, a5 + *(v12 + 36), a6);
  type metadata accessor for PlottableValue.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t static PlottableValue.value<>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1AAF8FCA4();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-v16];
  (*(v18 + 16))(&v20[-v16], a5, v15);
  sub_1AAE8C744(a1, a2, a3 & 1, a4, v17, a6, a7);
  sub_1AACD7304(a1, a2, a3 & 1);
}

uint64_t sub_1AAE8C998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for PlottableProjection();
  a4[3] = v8;
  a4[4] = swift_getWitnessTable();
  v9 = sub_1AACB2508(a4);
  result = (*(*(v8 - 8) + 32))(v9, a1, v8);
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1AAE8CA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for PlottableValue.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  (*(v10 + 16))(&v14 - v8, v2 + *(a1 + 36), v6, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  v11 = *(swift_getTupleTypeMetadata2() + 48);
  v12 = *(v5 - 8);
  (*(v12 + 32))(a2, v9, v5);
  return (*(v12 + 8))(&v9[v11], v5);
}

uint64_t static PlottableValue.value(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v17, v12);
  sub_1AACD6EC4(a1, a2, a3 & 1, a4, v14, a5, a6);
  sub_1AACD7304(a1, a2, a3 & 1);
}

uint64_t static PlottableValue.value<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v11);
  v14 = sub_1AAF8EA64();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v7 + 16))(v9, a2, a3);
  return sub_1AACD6EC4(v14, v16, v18 & 1, v20, v9, a3, a4);
}

uint64_t static PlottableValue.value<>(_:_:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v19 = a4;
  v20 = a3;
  v6 = sub_1AAF8FCA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;

  v10 = sub_1AAF8EA44();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v7 + 16))(v9, a1, v6);
  return sub_1AAE8C744(v10, v12, v14 & 1, v16, v9, a2, v19);
}

uint64_t static PlottableValue.value<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v27 = a5;
  v10 = sub_1AAF8FCA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4, v15);
  v18 = sub_1AAF8EA64();
  v20 = v19;
  LOBYTE(a4) = v21;
  v23 = v22;
  (*(v11 + 16))(v13, a2, v10);
  return sub_1AAE8C744(v18, v20, a4 & 1, v23, v13, a3, v26);
}

uint64_t sub_1AAE8D1FC(uint64_t a1)
{
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PlottableValue.value<>(_:_:unit:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v72 = a6;
  v73 = a5;
  v74 = a4;
  v65 = a3;
  v67 = a1;
  v68 = a2;
  v66 = a8;
  sub_1AACD57C4();
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v57 - v12;
  v70 = sub_1AAF8CA64();
  v60 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v57 - v15;
  sub_1AACD6C54();
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v57 - v19;
  sub_1AACD6DA4(0, &qword_1ED9B1678, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v57 - v21;
  v23 = sub_1AAF8C6F4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v57 - v28;
  v30 = sub_1AAF8CBA4();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD5668(a7, v29);
  v34 = *(v31 + 48);
  if (v34(v29, 1, v30) == 1)
  {
    sub_1AAF8CB34();
    if (v34(v29, 1, v30) != 1)
    {
      sub_1AAE8D1FC(v29);
    }
  }

  else
  {
    (*(v31 + 32))(v33, v29, v30);
  }

  sub_1AAF8CAD4();
  result = (*(v24 + 48))(v22, 1, v23);
  v36 = v71;
  if (result != 1)
  {
    (*(v24 + 32))(v26, v22, v23);
    v37 = v69;
    sub_1AAF8C6E4();
    sub_1AAF8C6D4();
    sub_1AACD6CE8();
    v38 = v70;
    v39 = sub_1AAF8F584();
    (*(v24 + 8))(v26, v23);
    result = (*(v31 + 8))(v33, v30);
    if (v39)
    {
      v41 = v59;
      v40 = v60;
      v42 = *(v60 + 32);
      v42(v59, v37, v38);
      v43 = v64;
      v42((v41 + *(v64 + 48)), v36, v38);
      v44 = v63;
      sub_1AACD56E8(v41, v63);
      v45 = *(v43 + 48);
      v46 = v58;
      v42(v58, v44, v38);
      v47 = *(v40 + 8);
      v47(v44 + v45, v38);
      sub_1AACD58FC(v41, v44, sub_1AACD57C4);
      v48 = v62;
      v42((v46 + *(v62 + 36)), (v44 + *(v43 + 48)), v38);
      v47(v44, v38);
      v49 = v61;
      sub_1AACD58FC(v46, v61, sub_1AACD6C54);
      v50 = v66;
      v51 = v67;
      v52 = v68;
      *v66 = v67;
      v50[1] = v52;
      LOBYTE(v45) = v65 & 1;
      *(v50 + 16) = v65 & 1;
      v50[3] = v74;
      sub_1AACD6DF8(0, qword_1ED9B13F0, type metadata accessor for PlottableValue);
      v54 = v50 + *(v53 + 36);
      sub_1AACD6E60();
      v56 = *(v55 + 48);
      v42(v54, v49, v38);
      v42(&v54[v56], (v49 + *(v48 + 36)), v38);
      sub_1AACD6DF8(0, &qword_1ED9B0BE8, type metadata accessor for PlottableValue.Storage);
      swift_storeEnumTagMultiPayload();
      sub_1AACD7304(v51, v52, v45);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static PlottableValue.value<A>(_:_:unit:calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a5;
  v61 = a6;
  v65 = a3;
  v66 = a2;
  v58 = a7;
  v59 = a1;
  sub_1AACD57C4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v50 - v12;
  v64 = sub_1AAF8CA64();
  v54 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v50 - v15;
  sub_1AACD6C54();
  v57 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD6DA4(0, &qword_1ED9B1678, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v50 - v19;
  v67 = sub_1AAF8C6F4();
  v21 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v50 - v25;
  v27 = sub_1AAF8CBA4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD5668(a4, v26);
  v31 = *(v28 + 48);
  v32 = v31(v26, 1, v27);
  v51 = v28;
  v52 = v27;
  if (v32 == 1)
  {
    sub_1AAF8CB34();
    v33 = v30;
    if (v31(v26, 1, v27) != 1)
    {
      sub_1AAE8D1FC(v26);
    }
  }

  else
  {
    (*(v28 + 32))(v30, v26, v27);
    v33 = v30;
  }

  sub_1AAF8CAD4();
  v34 = v21;
  v35 = v67;
  result = (*(v21 + 6))(v20, 1, v67);
  if (result != 1)
  {
    v37 = *(v21 + 4);
    v38 = v23;
    v37(v23, v20, v35);
    v39 = v62;
    sub_1AAF8C6E4();
    v40 = v63;
    sub_1AAF8C6D4();
    v41 = sub_1AACD6CE8();
    v42 = v64;
    result = sub_1AAF8F584();
    if (result)
    {
      v65 = v41;
      v66 = v38;
      v43 = v54;
      v44 = v55;
      v45 = *(v54 + 32);
      v45(v55, v39, v42);
      v45((v44 + *(v9 + 48)), v40, v42);
      v46 = v56;
      sub_1AACD56E8(v44, v56);
      v62 = v34;
      v63 = v33;
      v47 = *(v9 + 48);
      v48 = v53;
      v45(v53, v46, v42);
      v49 = *(v43 + 8);
      v49(v46 + v47, v42);
      sub_1AACD58FC(v44, v46, sub_1AACD57C4);
      v45((v48 + *(v57 + 36)), (v46 + *(v9 + 48)), v42);
      v49(v46, v42);
      static PlottableValue.value<A>(_:_:)(v59, v48, v42, v60, &protocol witness table for Date, v58);
      sub_1AAE8DF20(v48);
      (*(v62 + 1))(v66, v67);
      return (*(v51 + 8))(v63, v52);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE8DF20(uint64_t a1)
{
  sub_1AACD6C54();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE8DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  v10 = type metadata accessor for PlottableProjection();
  (*(*(a6 - 8) + 32))(a7 + *(v10 + 44), a5, a6);
  type metadata accessor for PlottableProjection.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AAE8E048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v41 = a8;
  v44 = a5;
  v39 = a4;
  v38 = a3;
  v36 = a1;
  v37 = a2;
  sub_1AACD6DA4(0, &qword_1ED9B1678, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_1AAF8C6F4();
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v33 - v19;
  v21 = sub_1AAF8CBA4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a7;
  sub_1AACD5668(a7, v20);
  v25 = *(v22 + 48);
  v26 = v25(v20, 1, v21);
  v35 = v21;
  if (v26 == 1)
  {
    sub_1AAF8CB34();
    if (v25(v20, 1, v21) != 1)
    {
      sub_1AAE8D1FC(v20);
    }
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
  }

  v34 = a6;
  sub_1AAF8CAD4();
  v27 = v42;
  v28 = v43;
  result = (*(v42 + 48))(v14, 1, v43);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v27 + 32))(v17, v14, v28);
    v30 = v37;
    *a9 = v36;
    *(a9 + 8) = v30;
    *(a9 + 16) = v38 & 1;
    *(a9 + 24) = v39;
    v31 = sub_1AAF8CA64();
    type metadata accessor for PlottableProjection();
    sub_1AACD6E60();
    sub_1AAF8C6E4();
    sub_1AAF8C6D4();
    sub_1AAE8D1FC(v40);
    v32 = sub_1AAF8CB94();
    (*(*(v32 - 8) + 8))(v34, v32);
    (*(*(v31 - 8) + 8))(v44, v31);
    (*(v27 + 8))(v17, v28);
    (*(v22 + 8))(v24, v35);
    type metadata accessor for PlottableProjection.Storage();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1AAE8E47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a4;
  v11 = a8 + *(type metadata accessor for PlottableProjection() + 44);
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  v13 = *(*(a7 - 8) + 32);
  v13(v11, a5, a7);
  v13(v11 + v12, a6, a7);
  type metadata accessor for PlottableProjection.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AAE8E594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + *(type metadata accessor for PlottableProjection() + 44)) = a5;
  type metadata accessor for PlottableProjection.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AAE8E660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a6;
  v33 = a8;
  v31 = a4;
  v30 = a3;
  v28 = *a5;
  v29 = a2;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_1AAF8CBA4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD5668(a7, v15);
  v20 = *(v17 + 48);
  if (v20(v15, 1, v16) == 1)
  {
    sub_1AAF8CB34();
    sub_1AAE8D1FC(a7);
    if (v20(v15, 1, v16) != 1)
    {
      sub_1AAE8D1FC(v15);
    }
  }

  else
  {
    sub_1AAE8D1FC(a7);
    (*(v17 + 32))(v19, v15, v16);
  }

  v21 = v29;
  *a9 = a1;
  *(a9 + 8) = v21;
  *(a9 + 16) = v30 & 1;
  *(a9 + 24) = v31;
  v22 = (a9 + *(type metadata accessor for PlottableProjection() + 44));
  sub_1AAF90774();
  v23 = sub_1AAF8CB94();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = *(TupleTypeMetadata3 + 48);
  v26 = *(TupleTypeMetadata3 + 64);
  *v22 = a5;
  (*(*(v23 - 8) + 32))(&v22[v25], v32, v23);
  (*(v17 + 32))(&v22[v26], v19, v16);
  type metadata accessor for PlottableProjection.Storage();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AAE8E960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  v9 = (a7 + *(type metadata accessor for PlottableProjection() + 44));
  *v9 = a5;
  v9[1] = a6;
  type metadata accessor for PlottableProjection.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AAE8EA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v3, a1);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, a1);
}

uint64_t static PlottableProjection.value(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1AAE8E594(a1, a2, a3 & 1, a4, a5, a6);
  sub_1AACD7304(a1, a2, a3 & 1);
}

uint64_t static PlottableProjection.value<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = sub_1AAF8EA64();
  sub_1AAE8E594(v8, v10, v9 & 1, v11, a2, a3);
}

uint64_t static PlottableProjection.value(_:_:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{

  v4 = sub_1AAF8EA44();
  sub_1AAE8E594(v4, v6, v5 & 1, v7, a1, a2);
}

uint64_t static PlottableProjection.value<>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1AAE8E960(a1, a2, a3 & 1, a4, a5, a6, a7);
  sub_1AACD7304(a1, a2, a3 & 1);
}

uint64_t static PlottableProjection.value<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = sub_1AAF8EA64();
  sub_1AAE8E960(v10, v12, v11 & 1, v13, a2, a3, a4);
}

uint64_t static PlottableProjection.value<>(_:_:_:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  v6 = sub_1AAF8EA44();
  sub_1AAE8E960(v6, v8, v7 & 1, v9, a1, a2, a3);
}

uint64_t static PlottableProjection<>.value(_:_:unit:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26[0] = a8;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v26 - v18;
  v20 = sub_1AAF8CB94();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, a6, v21);
  sub_1AACD5668(a7, v19);
  sub_1AACD7304(a1, a2, a3 & 1);

  return sub_1AAE8E660(a1, a2, a3 & 1, a4, a5, v23, v19, v26[0], a9);
}

uint64_t static PlottableProjection<>.value<A>(_:_:unit:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a7;
  v31 = a6;
  v29 = a4;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_1AAF8CB94();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5, v19);
  v22 = sub_1AAF8EA64();
  v24 = v23;
  LOBYTE(a5) = v25;
  v27 = v26;
  (*(v15 + 16))(v17, a3, v14);
  sub_1AACD5668(v29, v13);

  return sub_1AAE8E660(v22, v24, a5 & 1, v27, a2, v17, v13, v31, v30);
}

uint64_t static PlottableProjection<>.value(_:_:unit:calendar:)@<X0>(uint64_t *a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v23 = a5;
  v24 = a4;
  v22 = a3;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1AAF8CB94();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_1AAF8EA44();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v11 + 16))(v13, a2, v10);
  sub_1AACD5668(v22, v9);

  return sub_1AAE8E660(v14, v16, v18 & 1, v20, a1, v13, v9, v24, v23);
}

uint64_t static PlottableProjection.value(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, v17, v12);
  sub_1AAE8DF7C(a1, a2, a3 & 1, a4, v14, a5, a6);
  sub_1AACD7304(a1, a2, a3 & 1);
}

uint64_t static PlottableProjection.value<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v23[0] = a4;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v15 = sub_1AAF8EA64();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v8 + 16))(v10, a2, a3);
  return sub_1AAE8DF7C(v15, v17, v19 & 1, v21, v10, a3, a5);
}

uint64_t static PlottableProjection.value(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v19 = a4;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_1AAF8EA44();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v8 + 16))(v10, a2, a3);
  return sub_1AAE8DF7C(v11, v13, v15 & 1, v17, v10, a3, a5);
}

uint64_t static PlottableProjection.value<>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25 = a8;
  v26 = a6;
  v24 = a5;
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  v20 = *(v13 + 16);
  v20(&v24 - v18, v21, v22, v17);
  (v20)(v15, v24, a7);
  sub_1AAE8E47C(a1, a2, a3 & 1, a4, v19, v15, a7, v25);
  sub_1AACD7304(a1, a2, a3 & 1);
}

uint64_t static PlottableProjection.value<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v31 = a6;
  v32 = a4;
  v29 = a3;
  v30 = a7;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v19 = sub_1AAF8EA64();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *(v9 + 16);
  v26(v14, a2, a5);
  v26(v11, v29, a5);
  return sub_1AAE8E47C(v19, v21, v23 & 1, v25, v14, v11, a5, v30);
}

uint64_t static PlottableProjection.value<>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v25 = a6;
  v26 = a4;
  v23 = a2;
  v24 = a3;
  v7 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;

  v13 = sub_1AAF8EA44();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v7 + 16);
  v20(v12, v23, a5);
  v20(v9, v24, a5);
  return sub_1AAE8E47C(v13, v15, v17 & 1, v19, v12, v9, a5, v25);
}

uint64_t static PlottableProjection<>.value(_:_:unit:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a9;
  v31 = a8;
  v28 = a6;
  v29 = a7;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_1AAF8CB94();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1AAF8CA64();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, a5, v22);
  (*(v18 + 16))(v20, v28, v17);
  sub_1AACD5668(v29, v16);
  sub_1AACD7304(a1, a2, a3 & 1);

  return sub_1AAE8E048(a1, a2, a3 & 1, a4, v24, v20, v16, v31, v30);
}

uint64_t static PlottableProjection<>.value<A>(_:_:unit:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a7;
  v36 = a5;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  v31 = sub_1AAF8CB94();
  v12 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AAF8CA64();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  (*(v22 + 16))(&v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a6, v20);
  v23 = sub_1AAF8EA64();
  v25 = v24;
  LOBYTE(a6) = v26;
  v28 = v27;
  (*(v16 + 16))(v18, v32, v15);
  (*(v12 + 16))(v14, v33, v31);
  sub_1AACD5668(v34, v11);
  return sub_1AAE8E048(v23, v25, a6 & 1, v28, v18, v14, v11, v36, v35);
}

uint64_t static PlottableProjection<>.value(_:_:unit:calendar:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v28 = a5;
  v29 = a4;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  sub_1AACD6DA4(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v24 = sub_1AAF8CB94();
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8CA64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_1AAF8EA44();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v12 + 16))(v14, v25, v11);
  (*(v8 + 16))(v10, v26, v24);
  sub_1AACD5668(v27, v7);
  return sub_1AAE8E048(v15, v17, v19 & 1, v21, v14, v10, v7, v29, v28);
}

uint64_t sub_1AAE905F8(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  v6 = ((v4 + v5) & ~v5) + v4;
  if (v6 <= v4)
  {
    v6 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v9 = ((v5 + 32) & ~v5) + v6 + 1;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_10;
  }

  v12 = (a2 - 0x7FFFFFFF + ~(-1 << v10)) >> v10;
  if (v12 > 0xFFFE)
  {
    v11 = *(a1 + v9);
    if (!v11)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if (v12 <= 0xFE)
  {
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = *(a1 + v9);
    if (!*(a1 + v9))
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
LABEL_5:
    v7 = *(a1 + 3);
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    return (v7 + 1);
  }

LABEL_19:
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

  return (v9 | v13) ^ 0x80000000;
}

unsigned int *sub_1AAE90758(unsigned int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (((v5 + v6) & ~v6) + v5 > v5)
  {
    v5 += (v5 + v6) & ~v6;
  }

  v7 = ((v6 + 32) & ~v6) + v5 + 1;
  if ((a3 & 0x80000000) == 0)
  {
    v8 = 0;
    if (a2 < 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_33:
        *(result + 3) = (a2 - 1);
        return result;
      }

      *(result + v7) = 0;
    }

    else if (v8)
    {
      *(result + v7) = 0;
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

    goto LABEL_33;
  }

  if (v7 <= 3)
  {
    v9 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v7))) >> (8 * v7);
    if (v9 > 0xFFFE)
    {
      v8 = 4;
      if (a2 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }

    if (v9 < 0xFF)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v8 = 1;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_17:
  v11 = a2 & 0x7FFFFFFF;
  if (v7 >= 4)
  {
    v12 = result;
    bzero(result, v7);
    result = v12;
    *v12 = v11;
    v13 = 1;
    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v13 = (v11 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_38:
    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v14 = a2;
  v15 = a2 & ~(-1 << (8 * v7));
  v16 = result;
  bzero(result, v7);
  result = v16;
  if (v7 == 3)
  {
    *v16 = v15;
    *(v16 + 2) = BYTE2(v15);
    goto LABEL_38;
  }

  if (v7 == 2)
  {
    *v16 = v15;
    if (v8 > 1)
    {
LABEL_42:
      if (v8 == 2)
      {
        *(result + v7) = v13;
      }

      else
      {
        *(result + v7) = v13;
      }

      return result;
    }
  }

  else
  {
    *v16 = v14;
    if (v8 > 1)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  if (v8)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1AAE90960()
{
  result = type metadata accessor for PlottableProjection.Storage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE909E4(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (((v6 + v7) & ~v7) + v6 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = ((v6 + v7) & ~v7) + v6;
  }

  v9 = *(sub_1AAF8CB94() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1AAF8CBA4() - 8);
  v13 = *(v12 + 80);
  v14 = ((((v10 + 8) & ~v10) + v11 + v13) & ~v13) + *(v12 + 64);
  if (v8 > v14)
  {
    v14 = v8;
  }

  if (v14 <= 0x10)
  {
    v14 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v17 = v14 + (((v10 | v13 | v7) & 0xF8 ^ 0x1F8) & ((v10 | v13 | v7) + 32)) + 1;
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_15;
  }

  v20 = (a2 - 0x7FFFFFFF + ~(-1 << v18)) >> v18;
  if (v20 > 0xFFFE)
  {
    v19 = *(a1 + v17);
    if (!v19)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  if (v20 <= 0xFE)
  {
    if (!v20)
    {
      goto LABEL_10;
    }

LABEL_15:
    v19 = *(a1 + v17);
    if (!*(a1 + v17))
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
LABEL_10:
    v15 = *(a1 + 3);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

LABEL_24:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return (v17 | v21) ^ 0x80000000;
}