void storeEnumTagSinglePayload for _TaskValueModifier2(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for TaskPriority() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((*(v10 + 64) + ((v12 + 16 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v18 = 0;
    v19 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v12 + 16 + ((((v11 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v14 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v14)
      {
        v22 = *(v25 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v23 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          v24 = *(v10 + 56);

          v24((v12 + 16 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          v23[1] = (a2 - 1);
        }
      }

      return;
    }
  }

  if (((*(v10 + 64) + ((v12 + 16 + ((((v11 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + ((v12 + 16 + ((((v11 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v14 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA13_TaskModifierVGAaBHPxAaBHD1__AfA0cG0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t))
{
  a2(255);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzSQRd__r__lAA15ModifiedContentVyxAA18_TaskValueModifierVyqd__GGAaBHPxAaBHD1__AgA0cH0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t *initializeBufferWithCopyOfBuffer for _TaskValueModifier2.InnerModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((v11 + ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = *(v6 + 80);
  v14 = ((v13 + 8) & ~v13) + v7;
  v15 = v13 | 7 | v10;
  if (v15 == 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v12 + (v13 | 7)) & ~(v13 | 7)) + 8 <= 0x18)
  {
    v20 = v8;
    v42 = v13 + 8;
    v43 = v14 + 7;
    v39 = *(v6 + 84);
    v41 = ~v13;
    __n = ((v13 + 8) & ~v13) + v7;
    v36 = *(v6 + 16);
    v36(a1, a2, v5);
    v44 = a1;
    v38 = a1 + 7;
    v21 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v21[1] = v22[1];
    v40 = v5;
    v23 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v23;
    v25 = *(v9 + 16);

    swift_unknownObjectRetain();
    v25(v24 + 1, v23 + 1, v20);
    v26 = ((v24 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v23 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v28 = v27[1];
    *v26 = *v27;
    v26[1] = v28;
    v29 = (&v38[v12] & 0xFFFFFFFFFFFFFFF8);
    v30 = ((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);

    if (v39 < 0)
    {
      v33 = v41;
      v34 = v42;
      v32 = v40;
      v19 = v44;
      if ((*(v6 + 48))((v30 + v42) & v41))
      {
LABEL_14:
        memcpy(v29, v30, __n);
LABEL_17:
        *((v29 + v43) & 0xFFFFFFFFFFFFFFF8) = *((v30 + v43) & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_18;
      }
    }

    else
    {
      v31 = *v30;
      if (*v30 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      v32 = v40;
      v33 = v41;
      v34 = v42;
      v19 = v44;
      if (v31 != -1)
      {
        goto LABEL_14;
      }
    }

    *v29 = *v30;

    v36(((v29 + v34) & v33), ((v30 + v34) & v33), v32);
    goto LABEL_17;
  }

  v18 = *a2;
  *a1 = *a2;
  v19 = (v18 + ((v15 + 16) & ~v15));
LABEL_18:

  return v19;
}

uint64_t destroy for _TaskValueModifier2.InnerModifier(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 8);
  v6(a1, v3);
  v7 = *(v4 + 64) + 7;

  swift_unknownObjectRelease();
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = v9 + 8;
  v11 = *(v9 + 80);
  (*(v9 + 8))((v11 + 16 + ((((v7 + a1) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11, v8);
  v12 = *(v10 + 56) + 7;

  v13 = (v12 + ((v11 + 16 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + 80);
  v15 = ((a1 + (v14 | 7) + v13 + 16) & ~(v14 | 7));
  v16 = ~v14;
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    if ((*(v5 + 48))((v15 + v14 + 8) & v16))
    {
      goto LABEL_8;
    }

LABEL_7:

    v6((v15 + v14 + 8) & v16, v3);
    goto LABEL_8;
  }

  v17 = *v15;
  if (*v15 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if (v17 == -1)
  {
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t initializeWithCopy for _TaskValueModifier2.InnerModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v37 = v6;
  v39 = v5;
  v35 = *(v6 + 16);
  v35();
  v38 = *(v6 + 64);
  v7 = ((v38 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v38 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v14 = v12 + 16;
  v15 = *(v12 + 80);
  v16 = (v9 + v15 + 16) & ~v15;
  v17 = (v10 + v15 + 16) & ~v15;

  swift_unknownObjectRetain();
  v13(v16, v17, v11);
  v18 = *(v14 + 48) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;
  v22 = a1;
  v23 = *(v6 + 80);
  v24 = ((v18 + ((v15 + 16 + ((((v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + (v23 | 7) + 16;
  v25 = ((v24 + a1) & ~(v23 | 7));
  v26 = ((v24 + a2) & ~(v23 | 7));
  v27 = *(v37 + 84);
  v28 = ~v23;
  v29 = v23 + 8;
  v30 = (v23 + 8) & ~v23;

  if ((v27 & 0x80000000) != 0)
  {
    v33 = v39;
    v32 = (*(v37 + 48))((v26 + v29) & v28, v27, v39);
  }

  else
  {
    v31 = *v26;
    if (*v26 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 + 1;
    v33 = v39;
  }

  if (v32)
  {
    memcpy(v25, v26, v30 + v38);
  }

  else
  {
    *v25 = *v26;

    (v35)((v25 + v29) & v28, (v26 + v29) & v28, v33);
  }

  *((v25 + v30 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v26 + v30 + v38 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v22;
}

unint64_t assignWithCopy for _TaskValueModifier2.InnerModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v41 = v6;
  v38 = *(v6 + 24);
  v38(a1, a2, v5);
  v39 = *(v6 + 64);
  v7 = ((v39 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v39 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v9[1] = v11;
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v9 + v15 + 16) & ~v15;
  v17 = (v10 + v15 + 16) & ~v15;
  (*(v13 + 24))(v16, v17, v12);
  v18 = *(v14 + 40) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  v22 = *(v41 + 80);
  v23 = ((v18 + ((v15 + 16 + ((((v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + (v22 | 7) + 16;
  v40 = a1;
  v24 = ((v23 + a1) & ~(v22 | 7));
  v25 = ((v23 + a2) & ~(v22 | 7));
  v26 = *(v41 + 84);
  v27 = ~v22;
  v28 = v22 + 8;
  v29 = (v22 + 8) & ~v22;
  v30 = v29 + v39;
  if ((v26 & 0x80000000) != 0)
  {
    v33 = v29 + v39;
    v34 = *(v41 + 48);
    v35 = v34((v24 + v28) & v27, *(v41 + 84), v5);
    v32 = v34((v25 + v28) & v27, v26, v5);
    v30 = v33;
    if (!v35)
    {
LABEL_5:
      if (!v32)
      {
        *v24 = *v25;

        v38((v24 + v28) & v27, (v25 + v28) & v27, v5);
        goto LABEL_12;
      }

      (*(v41 + 8))((v24 + v28) & v27, v5);
      goto LABEL_9;
    }
  }

  else
  {
    v31 = *v25;
    if (*v25 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 + 1;
    if (*v24 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v32)
  {
    *v24 = *v25;
    v36 = *(v41 + 16);

    v36((v24 + v28) & v27, (v25 + v28) & v27, v5);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v24, v25, v30);
LABEL_12:
  *((v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v25 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v40;
}

unint64_t initializeWithTake for _TaskValueModifier2.InnerModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v30 = *(v6 + 32);
  v30(a1, a2, v5);
  v31 = *(v6 + 64);
  v8 = ((v31 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v31 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = v13 + 32;
  v15 = *(v13 + 80);
  v16 = (v10 + v15 + 16) & ~v15;
  v17 = (v11 + v15 + 16) & ~v15;
  (*(v13 + 32))(v16, v17, v12);
  v18 = *(v14 + 32) + 7;
  *((v18 + v16) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  v19 = *(v7 + 80);
  v20 = ((v18 + ((v15 + 16 + ((((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + (v19 | 7) + 16;
  v21 = ((v20 + a1) & ~(v19 | 7));
  v22 = ((v20 + a2) & ~(v19 | 7));
  v23 = ~v19;
  v24 = v19 + 8;
  v25 = (v19 + 8) & ~v19;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    v27 = (*(v7 + 48))((v22 + v24) & v23);
  }

  else
  {
    v26 = *v22;
    if (*v22 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    v27 = v26 + 1;
  }

  v28 = v25 + v31;
  if (v27)
  {
    memcpy(v21, v22, v28);
  }

  else
  {
    *v21 = *v22;
    v30((v21 + v24) & v23, (v22 + v24) & v23, v5);
  }

  *((v21 + v28 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unint64_t assignWithTake for _TaskValueModifier2.InnerModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v36 = v6;
  v35 = *(v6 + 40);
  v35(a1, a2, v5);
  v7 = *(v6 + 64);
  v8 = ((v7 + 7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v8[1] = v9[1];

  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  swift_unknownObjectRelease();
  v10[1] = v12;
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = v14 + 40;
  v16 = *(v14 + 80);
  v17 = (v10 + v16 + 16) & ~v16;
  v18 = (v11 + v16 + 16) & ~v16;
  (*(v14 + 40))(v17, v18, v13);
  v19 = *(v15 + 24) + 7;
  *((v19 + v17) & 0xFFFFFFFFFFFFFFF8) = *((v19 + v18) & 0xFFFFFFFFFFFFFFF8);

  v20 = a1;
  v21 = *(v36 + 80);
  v22 = ((v19 + ((v16 + 16 + ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + (v21 | 7) + 16;
  v23 = ((v22 + a1) & ~(v21 | 7));
  v24 = ((v22 + a2) & ~(v21 | 7));
  v25 = *(v36 + 84);
  v26 = ~v21;
  v27 = v21 + 8;
  v28 = ((v21 + 8) & ~v21) + v7;
  if ((v25 & 0x80000000) != 0)
  {
    v34 = ((v21 + 8) & ~v21) + v7;
    v31 = *(v36 + 48);
    v32 = v31((v23 + v27) & v26, v25, v5);
    v30 = v31((v24 + v27) & v26, v25, v5);
    v28 = v34;
    if (!v32)
    {
LABEL_5:
      if (!v30)
      {
        *v23 = *v24;

        v35((v23 + v27) & v26, (v24 + v27) & v26, v5);
        goto LABEL_12;
      }

      (*(v36 + 8))((v23 + v27) & v26, v5);
      goto LABEL_9;
    }
  }

  else
  {
    v29 = *v24;
    if (*v24 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v29) = -1;
    }

    v30 = v29 + 1;
    if (*v23 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v30)
  {
    *v23 = *v24;
    (*(v36 + 32))((v23 + v27) & v26, (v24 + v27) & v26, v5);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v23, v24, v28);
LABEL_12:
  *((v23 + v28 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v24 + v28 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v20;
}

uint64_t getEnumTagSinglePayload for _TaskValueModifier2.InnerModifier(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = type metadata accessor for TaskPriority();
  v10 = *(v9 - 8);
  v11 = *(v6 + 64);
  v12 = *(v10 + 80);
  if (*(v10 + 84) <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v8 - 1 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v8 - 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v6;
  v16 = *(v6 + 80);
  v17 = v16 | 7;
  v18 = v16 + 8;
  v19 = ((*(*(v9 - 8) + 64) + ((v12 + 16 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + (v16 | 7) + 16;
  if (v14 >= a2)
  {
    goto LABEL_26;
  }

  v20 = ((v11 + 7 + (v18 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + (v19 & ~v17) + 8;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v14 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= 1)
  {
    v15 = v6;
    if (!v24)
    {
      goto LABEL_26;
    }

    v25 = *(a1 + v20);
    if (!v25)
    {
      goto LABEL_26;
    }

LABEL_48:
    v33 = v25 - 1;
    if (v21)
    {
      v33 = 0;
      v34 = *a1;
    }

    else
    {
      v34 = 0;
    }

    return v14 + (v34 | v33) + 1;
  }

  if (v24 == 2)
  {
    v25 = *(a1 + v20);
  }

  else
  {
    v25 = *(a1 + v20);
  }

  v15 = v6;
  if (v25)
  {
    goto LABEL_48;
  }

LABEL_26:
  if (v8 - 1 <= v13)
  {
    if (v7 == v13)
    {
      v30 = *(v15 + 48);

      return v30(a1, v7, v5);
    }

    else
    {
      v31 = (a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
      if ((v13 & 0x80000000) != 0)
      {
        v35 = *(v10 + 48);

        return v35((v12 + 16 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v12);
      }

      else
      {
        v32 = *(v31 + 8);
        if (v32 >= 0xFFFFFFFF)
        {
          LODWORD(v32) = -1;
        }

        return (v32 + 1);
      }
    }
  }

  else
  {
    v26 = ((a1 + v19) & ~v17);
    if ((v7 & 0x80000000) != 0)
    {
      v28 = (*(v15 + 48))((v26 + v18) & ~v16, v7, v5);
    }

    else
    {
      v27 = *v26;
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v28 = v27 + 1;
    }

    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for _TaskValueModifier2.InnerModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v40 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for TaskPriority() - 8);
  v12 = *(v8 + 64);
  v13 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = v10 - 1;
  if (v10 - 1 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v10 - 1;
  }

  v17 = ((*(v11 + 64) + ((v13 + 16 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = *(v8 + 80);
  v19 = ((v18 + 8) & ~v18) + v12;
  v20 = v17 + (v18 | 7);
  v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + (v20 & ~(v18 | 7)) + 8;
  if (v16 >= a3)
  {
    v24 = 0;
    v25 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (((v19 + 7) & 0xFFFFFFF8) + (v20 & ~(v18 | 7)) == -8)
    {
      v26 = v25;
    }

    else
    {
      v26 = 1;
    }

    if (((v19 + 7) & 0xFFFFFFF8) + (v20 & ~(v18 | 7)) != -8)
    {
      v27 = ~v16 + a2;
      bzero(a1, v21);
      *a1 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *&a1[v21] = v26;
      }

      else
      {
        *&a1[v21] = v26;
      }
    }

    else if (v24)
    {
      a1[v21] = v26;
    }

    return;
  }

  if (((v19 + 7) & 0xFFFFFFF8) + (v20 & ~(v18 | 7)) == -8)
  {
    v22 = a3 - v16 + 1;
  }

  else
  {
    v22 = 2;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = a2 - v16;
  if (a2 > v16)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v21] = 0;
  }

  else if (v24)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v15 > v14)
  {
    a1 = (&a1[v20] & ~(v18 | 7));
    if (v15 < a2)
    {
      v28 = (v19 + 7) & 0xFFFFFFF8;
      v29 = (v28 + 8);
      if (v28 != -8)
      {
        v30 = a2 - v10;
        v31 = a1;
LABEL_48:
        bzero(v31, v29);
        *a1 = v30;
        return;
      }

      return;
    }

    if (a2 >= v10)
    {
      if (v19 <= 3)
      {
        v35 = ~(-1 << (8 * v19));
      }

      else
      {
        v35 = -1;
      }

      if (v19)
      {
        v36 = v35 & (a2 - v10);
        if (v19 <= 3)
        {
          v37 = v19;
        }

        else
        {
          v37 = 4;
        }

        bzero(a1, v19);
        if (v37 > 2)
        {
          if (v37 == 3)
          {
            *a1 = v36;
            a1[2] = BYTE2(v36);
          }

          else
          {
            *a1 = v36;
          }
        }

        else if (v37 == 1)
        {
          *a1 = v36;
        }

        else
        {
          *a1 = v36;
        }
      }

      return;
    }

    v32 = (a2 + 1);
    if ((v9 & 0x80000000) == 0)
    {
      if ((v32 & 0x80000000) != 0)
      {
        *a1 = (a2 - 0x7FFFFFFF);
      }

      else
      {
        *a1 = a2;
      }

      return;
    }

    v33 = *(v40 + 56);
    v34 = &a1[v18 + 8] & ~v18;
LABEL_73:

    v33(v34, v32, v9, v7);
    return;
  }

  if (v14 >= a2)
  {
    if (v9 != v14)
    {
      v38 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) != 0)
      {
        v39 = *(v11 + 56);

        v39((v13 + 16 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v38 = a2 & 0x7FFFFFFF;
        v38[1] = 0;
      }

      else
      {
        v38[1] = (a2 - 1);
      }

      return;
    }

    v33 = *(v40 + 56);
    v34 = a1;
    v32 = a2;
    goto LABEL_73;
  }

  if (v17)
  {
    v30 = ~v14 + a2;
    v31 = a1;
    v29 = v17;
    goto LABEL_48;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for _TaskModifier2.InnerModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v20 = *a2;
    *a1 = *a2;
    v3 = v20 + ((v4 + 16) & ~v4);
  }

  else
  {
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = *(a2 + 1);
    v8 = type metadata accessor for _TaskModifier2(0);
    v9 = *(v8 + 24);
    v10 = type metadata accessor for TaskPriority();
    v11 = *(*(v10 - 8) + 16);

    swift_unknownObjectRetain();
    v11(v3 + v9, a2 + v9, v10);
    v12 = *(v8 + 28);
    v13 = (v3 + v12);
    v14 = (a2 + v12);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
    v16 = *(a3 + 20);
    v17 = (v3 + v16);
    v18 = (a2 + v16);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
  }

  return v3;
}

uint64_t destroy for _TaskModifier2.InnerModifier(uint64_t a1)
{

  swift_unknownObjectRelease();
  v2 = *(type metadata accessor for _TaskModifier2(0) + 24);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

uint64_t initializeWithCopy for _TaskModifier2.InnerModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = type metadata accessor for _TaskModifier2(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 16);

  swift_unknownObjectRetain();
  v10(a1 + v8, a2 + v8, v9);
  v11 = *(v7 + 28);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = *(a3 + 20);
  v16 = (a1 + v15);
  v17 = (a2 + v15);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;

  return a1;
}

char *assignWithCopy for _TaskModifier2.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 3) = v6;
  v7 = type metadata accessor for _TaskModifier2(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  v10 = *(v7 + 28);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v13;

  v14 = *(a3 + 20);
  v15 = &a1[v14];
  v16 = &a2[v14];
  *&a1[v14] = *&a2[v14];

  *(v15 + 1) = *(v16 + 1);

  return a1;
}

char *initializeWithTake for _TaskModifier2.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for _TaskModifier2(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  *&a1[*(v7 + 28)] = *&a2[*(v7 + 28)];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for _TaskModifier2.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  swift_unknownObjectRelease();
  *(a1 + 3) = v7;
  v8 = type metadata accessor for _TaskModifier2(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 40))(&a1[v9], &a2[v9], v10);
  *&a1[*(v8 + 28)] = *&a2[*(v8 + 28)];

  v11 = *(a3 + 20);
  v12 = &a1[v11];
  v13 = &a2[v11];
  *&a1[v11] = *v13;

  *(v12 + 1) = *(v13 + 1);

  return a1;
}

uint64_t type metadata completion function for _TaskValueModifier2.InnerModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  result = a4(319, v6, v7);
  if (v9 <= 0x3F)
  {
    a5(255, v6, v7);
    type metadata accessor for Optional();
    result = type metadata accessor for State();
    if (v10 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _TaskValueModifier.InnerModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = ((v9 + ((v8 + 16) & ~v8) + v12) & ~v12) + v13;
  v15 = ((v12 + 8) & ~v12) + v13;
  v16 = *a2;
  if ((v12 | v8) <= 7 && ((*(v11 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((v14 + (v12 | 7)) & ~(v12 | 7)) + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18)
  {
    __n = ((v12 + 8) & ~v12) + v13;
    v30 = v10;
    v33 = v15 + 7;
    v31 = a2;
    v32 = *(v11 + 84);
    v19 = a2[1];
    *a1 = v16;
    a1[1] = v19;
    v20 = (a1 + v8 + 16) & ~v8;
    v21 = (a2 + v8 + 16) & ~v8;
    v22 = *(v7 + 16);

    v22(v20, v21, v6);
    v23 = v21 + v9 + v12;
    v24 = *(v11 + 16);
    v24((v20 + v9 + v12) & ~v12, v23 & ~v12, v30);
    v25 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v31 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v32 < 0)
    {
      if ((*(v11 + 48))(v26 + 1))
      {
LABEL_14:
        memcpy(v25, v26, __n);
LABEL_17:
        *((v25 + v33) & 0xFFFFFFFFFFFFFFF8) = *((v26 + v33) & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_18;
      }
    }

    else
    {
      v27 = *v26;
      if (*v26 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      if (v27 != -1)
      {
        goto LABEL_14;
      }
    }

    *v25 = *v26;

    v24((v25 + 1), (v26 + 1), v30);
    goto LABEL_17;
  }

  *a1 = v16;
  a1 = (v16 + (((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)));
LABEL_18:

  return a1;
}

_OWORD *initializeWithTake for _TaskValueModifier.InnerModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (a2 + v9 + 16) & ~v9;
  (*(v7 + 32))((a1 + v9 + 16) & ~v9, v10, v6);
  v11 = *(v8 + 32);
  v12 = *(*(a3 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v31 = ~v14;
  v32 = *(a3 + 16);
  v29 = *(v12 + 32);
  v29((v11 + v14 + ((a1 + v9 + 16) & ~v9)) & ~v14, (v11 + v14 + v10) & ~v14);
  v16 = *(v12 + 64);
  v17 = a1;
  v18 = v16 + (v14 | 7) + ((v15 + ((v9 + 16) & ~v9)) & ~v14);
  v19 = ((a1 + v18) & ~(v14 | 7));
  v20 = ((a2 + v18) & ~(v14 | 7));
  v21 = v14 + 8;
  v22 = (v14 + 8) & ~v14;
  if ((*(v13 + 84) & 0x80000000) == 0)
  {
    v23 = *v20;
    if (*v20 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    v24 = ~v14;
    v25 = v32;
    v26 = v22 + v16;
    if (v23 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v19 = *v20;
    (v29)((v19 + v21) & v24, (v20 + v21) & v24, v25);
    goto LABEL_8;
  }

  v25 = v32;
  v27 = (*(v13 + 48))((v20 + v21) & v31);
  v24 = v31;
  v26 = v22 + v16;
  if (!v27)
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v19, v20, v26);
LABEL_8:
  *((v19 + v26 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v17;
}

_OWORD *assignWithTake for _TaskValueModifier.InnerModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (a2 + v9 + 16) & ~v9;
  (*(v7 + 40))((a1 + v9 + 16) & ~v9, v10, v6);
  v11 = *(v8 + 24);
  v12 = *(*(a3 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v16 = ~v14;
  v34 = *(a3 + 16);
  v30 = *(v12 + 40);
  v30((v11 + v14 + ((a1 + v9 + 16) & ~v9)) & ~v14, (v11 + v14 + v10) & ~v14);
  v17 = *(v12 + 64);
  v18 = v17 + (v14 | 7) + ((v15 + ((v9 + 16) & ~v9)) & ~v14);
  v35 = a1;
  v19 = ((a1 + v18) & ~(v14 | 7));
  v20 = ((a2 + v18) & ~(v14 | 7));
  v21 = *(v12 + 84);
  v22 = v14 + 8;
  v23 = ((v14 + 8) & ~v14) + v17;
  v31 = v13;
  v32 = ~v14;
  if ((v21 & 0x80000000) != 0)
  {
    v27 = *(v13 + 48);
    v26 = v34;
    v28 = v27((v19 + v22) & v16, v21, v34);
    v25 = v27((v20 + v22) & v16, v21, v34);
    if (!v28)
    {
LABEL_5:
      if (!v25)
      {
        *v19 = *v20;

        (v30)((v19 + v22) & v32, (v20 + v22) & v32, v26);
        goto LABEL_12;
      }

      (*(v31 + 8))((v19 + v22) & v32, v26);
      goto LABEL_9;
    }
  }

  else
  {
    v24 = *v20;
    if (*v20 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v24) = -1;
    }

    v25 = v24 + 1;
    v26 = v34;
    if (*v19 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v25)
  {
    *v19 = *v20;
    (*(v31 + 32))((v19 + v22) & v32, (v20 + v22) & v32, v26);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v19, v20, v23);
LABEL_12:
  *((v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v20 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);

  return v35;
}

uint64_t getEnumTagSinglePayload for _TaskValueModifier.InnerModifier(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (v8 <= v10)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v7 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v9 + 84);
  }

  v18 = v17 - 1;
  if (v17 - 1 <= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17 - 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v13 | 7;
  v21 = v13 + 8;
  v22 = ((v12 + ((v11 + 16) & ~v11) + v13) & ~v13) + v14 + (v13 | 7);
  if (v19 >= a2)
  {
    goto LABEL_36;
  }

  v23 = ((v14 + (v21 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + (v22 & ~v20) + 8;
  v24 = a2 - v19;
  v25 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = v24 + 1;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = *(a1 + v23);
      if (!v29)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v29 = *(a1 + v23);
      if (!v29)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v31 = v29 - 1;
    if (v25)
    {
      v31 = 0;
      v32 = *a1;
    }

    else
    {
      v32 = 0;
    }

    return v19 + (v32 | v31) + 1;
  }

  if (v28)
  {
    v29 = *(a1 + v23);
    if (v29)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  v33 = ~v13;
  if (v18 <= v16)
  {
    if ((v15 & 0x80000000) != 0)
    {
      if (v8 == v16)
      {
        v38 = *(v7 + 48);

        return v38((a1 + v11 + 16) & ~v11, v8, v6);
      }

      else
      {
        v39 = *(v9 + 48);

        return v39((((a1 + v11 + 16) & ~v11) + v12 + v13) & v33);
      }
    }

    else
    {
      v37 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v37) = -1;
      }

      return (v37 + 1);
    }
  }

  else
  {
    v34 = ((a1 + v22) & ~v20);
    if ((v10 & 0x80000000) != 0)
    {
      v36 = (*(v9 + 48))((v34 + v21) & v33);
    }

    else
    {
      v35 = *v34;
      if (v35 >= 0xFFFFFFFF)
      {
        LODWORD(v35) = -1;
      }

      v36 = v35 + 1;
    }

    if (v36 >= 2)
    {
      return v36 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for _TaskValueModifier.InnerModifier(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  if (v10 <= v12)
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = *(v9 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = *(v11 + 84);
  }

  v20 = v19 - 1;
  if (v19 - 1 <= v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19 - 1;
  }

  v22 = ((v14 + ((v13 + 16) & ~v13) + v15) & ~v15) + v16;
  v23 = ((v15 + 8) & ~v15) + v16;
  v24 = v22 + (v15 | 7);
  v25 = ((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + (v24 & ~(v15 | 7)) + 8;
  if (((v23 + 7) & 0xFFFFFFF8) + (v24 & ~(v15 | 7)) == -8)
  {
    v26 = a3 - v21 + 1;
  }

  else
  {
    v26 = 2;
  }

  if (v26 >= 0x10000)
  {
    v27 = 4;
  }

  else
  {
    v27 = 2;
  }

  if (v26 < 0x100)
  {
    v27 = 1;
  }

  if (v26 >= 2)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v21 < a3)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = a2 - v21;
  if (a2 > v21)
  {
    if (((v23 + 7) & 0xFFFFFFF8) + (v24 & ~(v15 | 7)) != -8)
    {
      v30 = 1;
      bzero(a1, ((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + (v24 & ~(v15 | 7)) + 8);
      *a1 = ~v21 + a2;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        *(a1 + v25) = v30;
      }

      else
      {
        *(a1 + v25) = v30;
      }
    }

    else if (v29)
    {
      *(a1 + v25) = v30;
    }

    return;
  }

  if (v29 <= 1)
  {
    if (v29)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v29 == 2)
  {
    *(a1 + v25) = 0;
    goto LABEL_41;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  v31 = ~v15;
  if (v20 > v18)
  {
    a1 = ((a1 + v24) & ~(v15 | 7));
    if (v20 < a2)
    {
      v32 = (v23 + 7) & 0xFFFFFFF8;
      if (v32 == -8)
      {
        return;
      }

      v33 = a2 - v19;
      bzero(a1, (v32 + 8));
LABEL_79:
      *a1 = v33;
      return;
    }

    if (a2 < v19)
    {
      v36 = (a2 + 1);
      if ((v12 & 0x80000000) == 0)
      {
        if ((v36 & 0x80000000) != 0)
        {
          v37 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          v37 = a2;
        }

LABEL_91:
        *a1 = v37;
        return;
      }

      v40 = *(v11 + 56);
      v41 = (a1 + v15 + 8) & v31;
      goto LABEL_87;
    }

    if (v23 <= 3)
    {
      v38 = ~(-1 << (8 * v23));
    }

    else
    {
      v38 = -1;
    }

    if (!v23)
    {
      return;
    }

    v33 = v38 & (a2 - v19);
    if (v23 <= 3)
    {
      v35 = v23;
    }

    else
    {
      v35 = 4;
    }

    bzero(a1, v23);
    if (v35 <= 2)
    {
      if (v35 != 1)
      {
        goto LABEL_76;
      }

      goto LABEL_56;
    }

    goto LABEL_77;
  }

  if (v18 < a2)
  {
    if (v22 <= 3)
    {
      v34 = ~(-1 << (8 * v22));
    }

    else
    {
      v34 = -1;
    }

    if (!v22)
    {
      return;
    }

    v33 = v34 & (~v18 + a2);
    if (v22 <= 3)
    {
      v35 = v22;
    }

    else
    {
      v35 = 4;
    }

    bzero(a1, v22);
    if (v35 <= 2)
    {
      if (v35 != 1)
      {
LABEL_76:
        *a1 = v33;
        return;
      }

LABEL_56:
      *a1 = v33;
      return;
    }

LABEL_77:
    if (v35 == 3)
    {
      *a1 = v33;
      *(a1 + 2) = BYTE2(v33);
      return;
    }

    goto LABEL_79;
  }

  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
      return;
    }

    v37 = (a2 - 1);
    goto LABEL_91;
  }

  if (v10 != v18)
  {
    v40 = *(v11 + 56);
    v41 = (((a1 + v13 + 16) & ~v13) + v14 + v15) & v31;
    v36 = a2;
LABEL_87:

    v40(v41, v36);
    return;
  }

  v39 = *(v9 + 56);

  v39((a1 + v13 + 16) & ~v13, a2, v10, v8);
}

uint64_t type metadata completion function for _TaskValueModifier2.InnerModifier.TaskState()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _TaskValueModifier2.InnerModifier.TaskState(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v10 = a2 + v6 + 8;
    v11 = *(v5 + 16);

    v11((v3 + v6 + 8) & ~v6, v10 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t destroy for _TaskValueModifier2.InnerModifier.TaskState(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for _TaskValueModifier2.InnerModifier.TaskState(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(*(v4 - 8) + 80);
  v7 = a2 + v6 + 8;

  v5((a1 + v6 + 8) & ~v6, v7 & ~v6, v4);
  return a1;
}

void *assignWithCopy for _TaskValueModifier2.InnerModifier.TaskState(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void *assignWithTake for _TaskValueModifier2.InnerModifier.TaskState(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 40))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _TaskValueModifier2.InnerModifier.TaskState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
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

void storeEnumTagSinglePayload for _TaskValueModifier2.InnerModifier.TaskState(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v21 = &a1[v9 + 8] & ~v9;

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

char *initializeBufferWithCopyOfBuffer for _TaskModifier.InnerModifier(char *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    *a1 = v5;
    v3 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v7 = a2[1];
    *a1 = v5;
    *(a1 + 1) = v7;
    v9 = *(type metadata accessor for _TaskModifier(0) + 20);
    v10 = type metadata accessor for TaskPriority();
    v11 = *(*(v10 - 8) + 16);

    v11(&v3[v9], a2 + v9, v10);
    v12 = *(a3 + 20);
    v13 = &v3[v12];
    v14 = (a2 + v12);
    v15 = v14[1];
    *v13 = *v14;
    *(v13 + 1) = v15;
  }

  return v3;
}

char *initializeWithTake for _TaskModifier.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for _TaskModifier(0) + 20);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for _TaskModifier.InnerModifier(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(type metadata accessor for _TaskModifier(0) + 20);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 20);
  v9 = &a1[v8];
  v10 = &a2[v8];
  *&a1[v8] = *v10;

  *(v9 + 1) = *(v10 + 1);

  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_25Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata completion function for _TaskModifier2.InnerModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with take of _TaskModifier2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t objectdestroy_55Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for _TaskValueModifier.InnerModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  v4 = type metadata accessor for _TaskValueModifier();
  v5 = *(v4 + 36);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = *(v4 + 40);
  v8 = *(*(v1 - 8) + 8);
  v8(v3 + v7, v1);
  v9 = v3 + v2[11];
  v10 = type metadata accessor for _TaskValueModifier.InnerModifier.TaskState();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v8(v9 + *(v10 + 36), v1);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t specialized State.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(a2 + 28)))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t objectdestroy_74Tm()
{
  v1 = *(type metadata accessor for _TaskModifier2.InnerModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for _TaskModifier2(0) + 24);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async () -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return thunk for @escaping @callee_guaranteed @async () -> ()(a1, v4);
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed @async () -> (@out A)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #2 in _TaskValueModifier.InnerModifier.body(content:)(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, double))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(a1(0, v6, v7) - 8);
  return closure #2 in _TaskValueModifier.InnerModifier.body(content:)(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a2, a3, a2);
}

uint64_t objectdestroy_90Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for _TaskValueModifier2.InnerModifier() - 8);
  v10 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v3 = *(*(v1 - 8) + 8);
  v3(v0 + v10, v1);
  v4 = type metadata accessor for _TaskValueModifier2();

  swift_unknownObjectRelease();
  v5 = *(v4 + 44);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 8))(v0 + v10 + v5, v6);

  v7 = v0 + v10 + v2[11];
  v8 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v3(v7 + *(v8 + 36), v1);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t specialized _TaskValueModifier.InnerModifier.taskState.setter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, void))
{
  v4 = v3 + *(a2 + 36);
  a3(255, *(a2 + 16), *(a2 + 24));
  type metadata accessor for Optional();
  result = type metadata accessor for State();
  if (*(v4 + *(result + 28)))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t _sytIeAgHr_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return _sytIeAgHr_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return closure #1 in closure #1 in _TaskValueModifier.InnerModifier.body(content:)(a1, v4, v5, v6);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(a1, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<_TaskModifier2.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier2.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier2.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<_TaskModifier2.InnerModifier>, _AppearanceActionModifier>, type metadata accessor for _ViewModifier_Content<_TaskModifier2.InnerModifier>);
    lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _ViewModifier_Content<_TaskModifier2.InnerModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<_TaskModifier2.InnerModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<_TaskModifier2.InnerModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<_TaskModifier.InnerModifier>, _AppearanceActionModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for _ViewModifier_Content<_TaskModifier2.InnerModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<_TaskModifier2.InnerModifier>)
  {
    type metadata accessor for _TaskModifier2.InnerModifier(255);
    lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier2.InnerModifier and conformance _TaskModifier2.InnerModifier, type metadata accessor for _TaskModifier2.InnerModifier);
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<_TaskModifier2.InnerModifier>);
    }
  }
}

uint64_t get_witness_table_SQRzl7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0VyAA010_TaskValueF0V05InnerF033_293A0AF83C78DECE53AFAAF3EDCBA9D4LLVyx_GGAA017_AppearanceActionF0VGAA01_hR9Modifier2VyxGGANGAA0E0HPAsaUHPAoaUHPAlaUHPyHC_AnA0eF0HPyHCHC_AraVHPyHCHC_AnaVHPyHCHCTm(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ValueActionModifier2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t View.navigationTransitionStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(&v8, a3, a5);
  if (v11)
  {
    v5 = v8;
    v14 = v9;
    v6 = v12;
    v15 = v10;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v14 = 0uLL;
    v15 = 0;
  }

  v13 = v5;
  v16 = v11;
  v17 = v6;
  View.preference<A>(key:value:)();
  return _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(&v13, type metadata accessor for _NavigationTransitionOutputs?);
}

double AutomaticNavigationTransitionStyle._outputs.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t static NavigationTransitionStyle<>.zoom<A>(sourceID:in:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = _convertToAnyHashable<A>(_:)();
  *a2 = a1;
  return result;
}

void type metadata accessor for (namespace: Namespace.ID, sourceID: AnyHashable)()
{
  if (!lazy cache variable for type metadata for (namespace: Namespace.ID, sourceID: AnyHashable))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (namespace: Namespace.ID, sourceID: AnyHashable));
    }
  }
}

uint64_t assignWithTake for _NavigationTransitionStyleOutputs(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    if (*(a2 + 32))
    {
      *result = *a2;
      v3 = result;
      __swift_destroy_boxed_opaque_existential_1(result + 8);
      *(v3 + 8) = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 40) = *(a2 + 40);
    }

    else
    {
      v3 = result;
      _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(result, type metadata accessor for (namespace: Namespace.ID, sourceID: AnyHashable));
      v5 = *(a2 + 16);
      *v3 = *a2;
      *(v3 + 16) = v5;
      *(v3 + 32) = *(a2 + 32);
    }

    return v3;
  }

  else
  {
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
    *(result + 32) = *(a2 + 32);
  }

  return result;
}

uint64_t initializeWithCopy for ZoomNavigationTransitionStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  (**(v3 - 8))(a1 + 8, a2 + 8);
  return a1;
}

void *assignWithCopy for ZoomNavigationTransitionStyle(void *a1, void *a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1);
  return a1;
}

uint64_t assignWithTake for ZoomNavigationTransitionStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t destroy for _NavigationTransitionStyleOutputs.Content(uint64_t result)
{
  if (*(result + 32) >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(result + 8);
  }

  return result;
}

__n128 assignWithCopy for _NavigationTransitionStyleOutputs.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*(a1 + 32) < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      v8 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v8;
      *a1 = result;
    }

    else
    {
      *a1 = *a2;
      v4 = *(a2 + 32);
      *(a1 + 32) = v4;
      *(a1 + 40) = *(a2 + 40);
      (**(v4 - 8))(a1 + 8, a2 + 8);
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
    result = *a2;
    v7 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v7;
    *a1 = result;
  }

  else
  {
    *a1 = *a2;
    __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  }

  return result;
}

_OWORD *assignWithTake for _NavigationTransitionStyleOutputs.Content(_OWORD *result, uint64_t a2)
{
  if (*(result + 4) < 0xFFFFFFFFuLL)
  {
    v4 = *(a2 + 16);
    *result = *a2;
    result[1] = v4;
    result[2] = *(a2 + 32);
  }

  else
  {
    if (*(a2 + 32) < 0xFFFFFFFFuLL)
    {
      v3 = result;
      __swift_destroy_boxed_opaque_existential_1(result + 8);
      v5 = *(a2 + 16);
      *v3 = *a2;
      v3[1] = v5;
      v3[2] = *(a2 + 32);
    }

    else
    {
      *result = *a2;
      v3 = result;
      __swift_destroy_boxed_opaque_existential_1(result + 8);
      *(v3 + 8) = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 5) = *(a2 + 40);
    }

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _NavigationTransitionStyleOutputs.Content(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _NavigationTransitionStyleOutputs.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _NavigationTransitionStyleOutputs.Content(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double destructiveInjectEnumTag for _NavigationTransitionStyleOutputs.Content(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 32) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for Color.ProviderTag.SwiftUIPlatformTag()
{
  result = type metadata singleton initialization cache for Color.ProviderTag.SwiftUIPlatformTag;
  if (!type metadata singleton initialization cache for Color.ProviderTag.SwiftUIPlatformTag)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.encode(to:)(void *a1, int a2)
{
  v21 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys, &unk_1EFFB04B8, MEMORY[0x1E69E6F58]);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys, &unk_1EFFB0498, v3);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFFB0478, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21)
  {
    v23 = 1;
    lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys()
{
  if (*v0)
  {
    return 0x69446E69616C705FLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000018CD44F20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x69446E69616C705FLL && a2 == 0xED00007265646976)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t Color.ProviderTag.SwiftUIPlatformTag.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Color.ProviderTag.SwiftUIPlatformTag.init(from:)(a1);
  return v2;
}

uint64_t Color.ProviderTag.SwiftUIPlatformTag.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *(v1 + 16) = v6;

    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t Color.ProviderTag.SwiftUIPlatformTag.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = *(v1 + 16);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

ValueMetadata *Color.ProviderTag.SwiftUIPlatformTag.type.getter()
{
  if (*(v0 + 16))
  {
    v1 = &type metadata for PlainDividerShapeStyle;
    lazy protocol witness table accessor for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle();
  }

  else
  {
    v1 = &type metadata for EmphasizedGroupBackgroundColorProvider;
    lazy protocol witness table accessor for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider();
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider()
{
  result = lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider;
  if (!lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizedGroupBackgroundColorProvider and conformance EmphasizedGroupBackgroundColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle()
{
  result = lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle;
  if (!lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle;
  if (!lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle;
  if (!lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle;
  if (!lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainDividerShapeStyle and conformance PlainDividerShapeStyle);
  }

  return result;
}

uint64_t specialized Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys, &unk_1EFFB04B8, MEMORY[0x1E69E6F48]);
  v28 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - v4;
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys, &unk_1EFFB0498, v2);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFFB0478, v2);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v6;
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v33 = a1;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v34 = v17;
  v35 = v17 + 32;
  v36 = 0;
  v37 = v18;
  v19 = specialized Collection<>.popFirst()();
  if (v19 == 2 || v36 != v37 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v24 = &type metadata for Color.ProviderTag.SwiftUIPlatformTag.ProviderTag;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v32 + 8))(v12, v10);
    swift_unknownObjectRelease();
    a1 = v33;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v19;
  if (v19)
  {
    v38 = 1;
    lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v16 + 8))(v14, v28);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v15 + 8))(v8, v27);
  }

  (*(v21 + 8))(v12, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v20 & 1;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._emphasizedGroupCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Color.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<Color.ProviderTag.SwiftUIPlatformTag.ProviderTag._plainDividerCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance BorderedButtonStyle_CarCatalyst@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = type metadata accessor for BorderedButton_CarCatalyst();
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, a2 + *(v7 + 24));
  *a2 = v5;
  *(a2 + 8) = v6;
  v8 = a2 + *(v7 + 28);
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
}

uint64_t type metadata accessor for BorderedButton_CarCatalyst()
{
  result = type metadata singleton initialization cache for BorderedButton_CarCatalyst;
  if (!type metadata singleton initialization cache for BorderedButton_CarCatalyst)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for BorderedButton_CarCatalyst(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) == 0)
  {
    v7 = a1;
    *(a1 + 8) = *(a2 + 8);
    v8 = *(a3 + 24);
    v9 = a1 + v8;
    v10 = a2 + v8;
    *(a1 + v8) = *(a2 + v8);
    v11 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
    v12 = v9 + v11;
    v13 = v10 + v11;
    type metadata accessor for ButtonAction();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v29 = *v13;
      v30 = *(v13 + 8);
      v31 = *(v13 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*v13, v30, v31);
      *v12 = v29;
      *(v12 + 8) = v30;
      *(v12 + 16) = v31;
      v32 = *(v13 + 40);
      v33 = *(v13 + 24);
      *(v12 + 24) = v33;
      *(v12 + 40) = v32;
      v34 = v33;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v15 = *v13;
        v16 = *(v13 + 8);
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        v42 = *(v13 + 34);
        v19 = *(v13 + 32);
        outlined copy of Environment<OpenURLAction>.Content(*v13, v16, v18, v17, v19, v42);
        *v12 = v15;
        *(v12 + 8) = v16;
        *(v12 + 16) = v18;
        *(v12 + 24) = v17;
        *(v12 + 32) = v19;
        *(v12 + 34) = v42;
        v20 = *(v13 + 40);
        v21 = *(v13 + 48);
        v22 = *(v13 + 56);
        v23 = *(v13 + 64);
        v43 = *(v13 + 74);
        LOWORD(v18) = *(v13 + 72);
        outlined copy of Environment<OpenURLAction>.Content(v20, v21, v22, v23, v18, v43);
        *(v12 + 40) = v20;
        *(v12 + 48) = v21;
        *(v12 + 56) = v22;
        *(v12 + 64) = v23;
        *(v12 + 72) = v18;
        *(v12 + 74) = v43;
        v24 = *(type metadata accessor for LinkDestination() + 24);
        v25 = v12 + v24;
        v26 = v13 + v24;
        v27 = type metadata accessor for URL();
        (*(*(v27 - 8) + 16))(v25, v26, v27);
        v28 = type metadata accessor for LinkDestination.Configuration();
        *(v25 + *(v28 + 20)) = *(v26 + *(v28 + 20));
LABEL_9:
        swift_storeEnumTagMultiPayload();
        v36 = *(a3 + 28);
        v37 = v7 + v36;
        v38 = (a2 + v36);
        v39 = *v38;
        v40 = *(v38 + 8);
        outlined copy of Environment<Bool>.Content(*v38, v40);
        *v37 = v39;
        *(v37 + 8) = v40;
        return v7;
      }

      v35 = *(v13 + 8);
      *v12 = *v13;
      *(v12 + 8) = v35;
    }

    goto LABEL_9;
  }

  v7 = v4 + ((v3 + 16) & ~v3);

  return v7;
}

uint64_t destroy for BorderedButton_CarCatalyst(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 24);
  v5 = v4 + *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
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
  v9 = (a1 + *(a2 + 28));
  v10 = *v9;
  v11 = *(v9 + 8);

  return outlined consume of Environment<Bool>.Content(v10, v11);
}

uint64_t initializeWithCopy for BorderedButton_CarCatalyst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v10 = v7 + v9;
  v11 = v8 + v9;
  type metadata accessor for ButtonAction();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v28 = *v11;
    v29 = *(v11 + 8);
    v30 = *(v11 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v11, v29, v30);
    *v10 = v28;
    *(v10 + 8) = v29;
    *(v10 + 16) = v30;
    v31 = *(v11 + 40);
    v32 = *(v11 + 24);
    *(v10 + 24) = v32;
    *(v10 + 40) = v31;
    v33 = v32;
LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v34 = *(v11 + 8);
    *v10 = *v11;
    *(v10 + 8) = v34;
    goto LABEL_6;
  }

  v41 = v3;
  v13 = *v11;
  v14 = *(v11 + 8);
  v16 = *(v11 + 16);
  v15 = *(v11 + 24);
  v17 = *(v11 + 34);
  v18 = *(v11 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*v11, v14, v16, v15, v18, v17);
  *v10 = v13;
  *(v10 + 8) = v14;
  *(v10 + 16) = v16;
  *(v10 + 24) = v15;
  *(v10 + 32) = v18;
  *(v10 + 34) = v17;
  v19 = *(v11 + 40);
  v20 = *(v11 + 48);
  v21 = *(v11 + 56);
  v22 = *(v11 + 64);
  LOBYTE(v14) = *(v11 + 74);
  LOWORD(v16) = *(v11 + 72);
  outlined copy of Environment<OpenURLAction>.Content(v19, v20, v21, v22, v16, v14);
  *(v10 + 40) = v19;
  *(v10 + 48) = v20;
  *(v10 + 56) = v21;
  *(v10 + 64) = v22;
  *(v10 + 72) = v16;
  *(v10 + 74) = v14;
  v3 = v41;
  v23 = *(type metadata accessor for LinkDestination() + 24);
  v24 = v10 + v23;
  v25 = v11 + v23;
  v26 = type metadata accessor for URL();
  (*(*(v26 - 8) + 16))(v24, v25, v26);
  v27 = type metadata accessor for LinkDestination.Configuration();
  *(v24 + *(v27 + 20)) = *(v25 + *(v27 + 20));
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v35 = *(v3 + 28);
  v36 = a1 + v35;
  v37 = (a2 + v35);
  v38 = *v37;
  v39 = *(v37 + 8);
  outlined copy of Environment<Bool>.Content(*v37, v39);
  *v36 = v38;
  *(v36 + 8) = v39;
  return a1;
}

uint64_t assignWithCopy for BorderedButton_CarCatalyst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v10 = *(v9 + 24);
    v11 = v7 + v10;
    v12 = v8 + v10;
    outlined destroy of ButtonAction(v11, type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v29 = *v12;
      v30 = *(v12 + 8);
      v31 = *(v12 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*v12, v30, v31);
      *v11 = v29;
      *(v11 + 8) = v30;
      *(v11 + 16) = v31;
      v32 = *(v12 + 24);
      *(v11 + 24) = v32;
      v33 = *(v12 + 40);
      *(v11 + 32) = *(v12 + 32);
      *(v11 + 40) = v33;
      v34 = v32;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v44 = a3;
        v14 = *v12;
        v15 = *(v12 + 8);
        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        v18 = *(v12 + 34);
        v19 = *(v12 + 32);
        outlined copy of Environment<OpenURLAction>.Content(*v12, v15, v17, v16, v19, v18);
        *v11 = v14;
        *(v11 + 8) = v15;
        *(v11 + 16) = v17;
        *(v11 + 24) = v16;
        *(v11 + 32) = v19;
        *(v11 + 34) = v18;
        v20 = *(v12 + 40);
        v21 = *(v12 + 48);
        v22 = *(v12 + 56);
        v23 = *(v12 + 64);
        LOBYTE(v15) = *(v12 + 74);
        LOWORD(v17) = *(v12 + 72);
        outlined copy of Environment<OpenURLAction>.Content(v20, v21, v22, v23, v17, v15);
        *(v11 + 40) = v20;
        *(v11 + 48) = v21;
        *(v11 + 56) = v22;
        *(v11 + 64) = v23;
        *(v11 + 72) = v17;
        *(v11 + 74) = v15;
        a3 = v44;
        v24 = *(type metadata accessor for LinkDestination() + 24);
        v25 = v11 + v24;
        v26 = v12 + v24;
        v27 = type metadata accessor for URL();
        (*(*(v27 - 8) + 16))(v25, v26, v27);
        v28 = type metadata accessor for LinkDestination.Configuration();
        *(v25 + *(v28 + 20)) = *(v26 + *(v28 + 20));
LABEL_8:
        swift_storeEnumTagMultiPayload();
        goto LABEL_9;
      }

      v35 = *(v12 + 8);
      *v11 = *v12;
      *(v11 + 8) = v35;
    }

    goto LABEL_8;
  }

LABEL_9:
  v36 = *(a3 + 28);
  v37 = (a1 + v36);
  v38 = (a2 + v36);
  v39 = *v38;
  v40 = *(v38 + 8);
  outlined copy of Environment<Bool>.Content(*v38, v40);
  v41 = *v37;
  v42 = *(v37 + 8);
  *v37 = v39;
  *(v37 + 8) = v40;
  outlined consume of Environment<Bool>.Content(v41, v42);
  return a1;
}

uint64_t initializeWithTake for BorderedButton_CarCatalyst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v10 = (v7 + v9);
  v11 = (v8 + v9);
  v12 = type metadata accessor for ButtonAction();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v13;
    *(v10 + 31) = *(v11 + 31);
    *(v10 + 40) = *(v11 + 40);
    *(v10 + 56) = *(v11 + 56);
    *(v10 + 71) = *(v11 + 71);
    v14 = *(type metadata accessor for LinkDestination() + 24);
    v15 = &v10[v14];
    v16 = &v11[v14];
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 32))(v15, v16, v17);
    v18 = type metadata accessor for LinkDestination.Configuration();
    v15[*(v18 + 20)] = v16[*(v18 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  v19 = *(a3 + 28);
  v20 = a1 + v19;
  v21 = a2 + v19;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  return a1;
}

uint64_t assignWithTake for BorderedButton_CarCatalyst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v10 = *(v9 + 24);
    v11 = (v7 + v10);
    v12 = (v8 + v10);
    outlined destroy of ButtonAction(v11, type metadata accessor for ButtonAction);
    v13 = type metadata accessor for ButtonAction();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *(v12 + 1);
      *v11 = *v12;
      *(v11 + 1) = v14;
      *(v11 + 31) = *(v12 + 31);
      *(v11 + 40) = *(v12 + 40);
      *(v11 + 56) = *(v12 + 56);
      *(v11 + 71) = *(v12 + 71);
      v15 = *(type metadata accessor for LinkDestination() + 24);
      v16 = &v11[v15];
      v17 = &v12[v15];
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 32))(v16, v17, v18);
      v19 = type metadata accessor for LinkDestination.Configuration();
      v16[*(v19 + 20)] = v17[*(v19 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v11, v12, *(*(v13 - 8) + 64));
    }
  }

  v20 = *(a3 + 28);
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  v23 = *v22;
  LOBYTE(v22) = *(v22 + 8);
  v24 = *v21;
  v25 = *(v21 + 8);
  *v21 = v23;
  *(v21 + 8) = v22;
  outlined consume of Environment<Bool>.Content(v24, v25);
  return a1;
}

uint64_t type metadata completion function for BorderedButton_CarCatalyst()
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for _UnaryViewAdaptor<BorderedButton_CarCatalyst>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<BorderedButton_CarCatalyst>)
  {
    type metadata accessor for BorderedButton_CarCatalyst();
    lazy protocol witness table accessor for type _UnaryViewAdaptor<BorderedButton_CarCatalyst> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type BorderedButton_CarCatalyst and conformance BorderedButton_CarCatalyst, type metadata accessor for BorderedButton_CarCatalyst);
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<BorderedButton_CarCatalyst>);
    }
  }
}

void BorderedButton_CarCatalyst.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v21 = type metadata accessor for UIButton.Configuration();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(type metadata accessor for BorderedButton_CarCatalyst() + 24);
  v15 = *(v2 + v14);
  outlined init with copy of PrimitiveButtonStyleConfiguration(v2 + v14, v9);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(v9, v17 + v16);
  v25 = 1;
  v24 = 1;
  v23 = 1;
  LOBYTE(v26[0]) = v15;
  v26[1] = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  v26[2] = v17;
  LOWORD(v26[3]) = 0;
  *(&v26[3] + 4) = 0;
  BYTE4(v26[4]) = 1;
  *(&v26[4] + 5) = 514;
  v26[5] = 0;
  LOWORD(v26[6]) = 1;
  memset(&v26[7], 0, 24);
  LOBYTE(v26[10]) = 1;
  closure #1 in BorderedButton_CarCatalyst.body.getter(&v26[11]);
  if (*(v2 + 8) == 1)
  {
    static UIButton.Configuration.borderedProminent()();
  }

  else
  {
    static UIButton.Configuration.bordered()();
  }

  (*(v3 + 32))(&v13[*(v11 + 36)], v5, v21);
  memcpy(v13, v26, 0x129uLL);
  v18 = v22;
  outlined init with take of ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(v13, v22);
  type metadata accessor for ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout>();
  *(v18 + *(v19 + 36)) = 257;
}

uint64_t closure #1 in BorderedButton_CarCatalyst.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BorderedButton_CarCatalyst();
  KeyPath = swift_getKeyPath();
  v4 = 1;
  v5 = static Edge.Set.all.getter();
  v6 = xmmword_18CD8ADD0;
  v7 = xmmword_18CD8ADD0;
  v8 = 0;
  specialized View.toolbarButtonLabel()(a1);
  return outlined destroy of ButtonAction(&KeyPath, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>);
}

void type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>()
{
  if (!lazy cache variable for type metadata for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>)
  {
    type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for UIKitButton();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>)
  {
    type metadata accessor for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>);
    }
  }
}

void type metadata accessor for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>()
{
  if (!lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>)
  {
    v0 = type metadata accessor for InterfaceIdiomPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>();
    lazy protocol witness table accessor for type _UnaryViewAdaptor<BorderedButton_CarCatalyst> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, type metadata accessor for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(0, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout>)
  {
    type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout>();
    lazy protocol witness table accessor for type ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier>, type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, type metadata accessor for UIKitSystemButtonConfigurationModifier);
    lazy protocol witness table accessor for type _UnaryViewAdaptor<BorderedButton_CarCatalyst> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance UIKitButton<A>, type metadata accessor for UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitButton<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, _PaddingLayout, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, UIKitSystemButtonConfigurationModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for HoverEffectResponder()
{
  result = type metadata singleton initialization cache for HoverEffectResponder;
  if (!type metadata singleton initialization cache for HoverEffectResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static PointerHoverEffectModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v56 = a1[2];
  v57 = v5;
  v58 = a1[4];
  v59 = *(a1 + 20);
  v6 = a1[1];
  v54 = *a1;
  v55 = v6;
  v24 = *(a1 + 6);
  v25 = *(a1 + 14);
  *&v37 = *(a1 + 6);
  DWORD2(v37) = *(a1 + 14);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    UniqueID.init()();
    v7 = v37;
    closure #1 in static PointerHoverEffectModifier._makeView(modifier:inputs:body:)(&v54, v37, a2);
    v8 = v21;
    v9 = v22;
    *&v37 = v21;
    DWORD2(v37) = v22;
    result = PreferencesOutputs.subscript.getter();
    if ((result & 0x100000000) != 0)
    {
LABEL_5:
      *a3 = v8;
      *(a3 + 8) = v9;
      *(a3 + 12) = v23;
      return result;
    }

    v11 = result;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v19 = AGGraphCreateOffsetAttribute2();

    v18 = _ViewOutputs.viewResponders()();

    v17 = _ViewInputs.animatedPosition()();
    *v39 = v56;
    *&v39[16] = v57;
    *&v39[32] = v58;
    *&v39[48] = v59;
    v37 = v54;
    v38 = v55;
    swift_beginAccess();
    v12 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v53 = v59;
    v48 = v54;
    v49 = v55;
    v13 = _ViewInputs.containerPosition.getter();
    v14 = AGGraphCreateOffsetAttribute2();
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v42 = v54;
    v43 = v55;
    v15 = _ViewInputs.isEnabled.getter();
    result = AGSubgraphGetCurrent();
    if (result)
    {
      *&v39[40] = v56;
      *&v39[56] = v57;
      *&v39[72] = v58;
      *&v39[88] = v59;
      *&v39[8] = v54;
      *&v39[24] = v55;
      *&v37 = __PAIR64__(v19, OffsetAttribute2);
      *(&v37 + 1) = __PAIR64__(v17, v18);
      *&v38 = __PAIR64__(v12, HIDWORD(v57));
      *(&v38 + 1) = __PAIR64__(v14, v13);
      *v39 = v15;
      *&v39[4] = v11;
      *&v40 = v7;
      *(&v40 + 1) = result;
      v34 = *&v39[80];
      v35 = v40;
      v30 = *&v39[16];
      v31 = *&v39[32];
      v32 = *&v39[48];
      v33 = *&v39[64];
      v27 = v37;
      v41 = 0;
      v36 = 0;
      v28 = v38;
      v29 = *v39;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      outlined init with copy of _ViewInputs(&v54, v26);
      type metadata accessor for [ViewResponder](0);
      lazy protocol witness table accessor for type HoverEffectResponderFilter and conformance HoverEffectResponderFilter();
      Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of HoverEffectResponderFilter(&v37);
      LOBYTE(v27) = 0;
      v16 = PreferencesOutputs.subscript.setter();
      *&v27 = v24;
      DWORD2(v27) = v25;
      MEMORY[0x1EEE9AC00](v16);
      outlined init with copy of PreferencesInputs(&v24, v26);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

      v8 = v21;
      v9 = v22;
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    *v39 = v56;
    *&v39[16] = v57;
    *&v39[32] = v58;
    *&v39[48] = v59;
    v37 = v54;
    v38 = v55;
    return (a2)();
  }

  return result;
}

uint64_t closure #1 in static PointerHoverEffectModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v21 = *(a1 + 32);
  v22 = v5;
  v23 = *(a1 + 64);
  v7 = *(a1 + 16);
  v19 = *a1;
  v20 = v7;
  v9 = *(a1 + 48);
  v8 = *(a1 + 64);
  v31 = v21;
  v32 = v9;
  v33 = v8;
  v24 = *(a1 + 80);
  v10 = *(a1 + 60);
  v34 = *(a1 + 80);
  v29 = v19;
  v30 = v6;
  outlined init with copy of _ViewInputs(a1, v27);
  *&v29 = __PAIR64__(_ViewInputs.position.getter(), v10);
  *(&v29 + 1) = a2;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UIViewSnapshotResponder.Transform and conformance UIViewSnapshotResponder.Transform();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.transform.setter();
  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v23;
  v26 = v24;
  v25[0] = v19;
  v25[1] = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v13 = v19;
  v14 = v20;
  v11 = outlined init with copy of _ViewInputs(v25, &v29);
  a3(v11, &v13);
  v27[2] = v15;
  v27[3] = v16;
  v27[4] = v17;
  v28 = v18;
  v27[0] = v13;
  v27[1] = v14;
  outlined destroy of _ViewInputs(v27);
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v34 = v24;
  v29 = v19;
  v30 = v20;
  return outlined destroy of _ViewInputs(&v29);
}

uint64_t HoverEffectResponderFilter.responder.getter()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = *(v0 + 136);
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v4 = *(v0 + 88);
    v14 = *(v0 + 72);
    v15 = v4;
    v16 = *(v0 + 104);
    v17 = *(v0 + 120);
    v5 = *(v0 + 56);
    v12 = *(v0 + 40);
    v13 = v5;
    v6 = *(v0 + 128);
    type metadata accessor for HoverEffectResponder();
    v7 = swift_allocObject();
    *(v7 + 296) = 3;
    *(v7 + 300) = 0;
    *(v7 + 304) = 1;
    *(v7 + 224) = 0u;
    *(v7 + 240) = 0u;
    *(v7 + 256) = 0;
    *(v7 + 264) = 1;
    *(v7 + 272) = 0;
    *(v7 + 268) = 0;
    *(v7 + 280) = 0;
    *(v7 + 288) = 0;
    *(v7 + 216) = v6;
    outlined init with copy of _ViewInputs(&v12, v10);
    *(v7 + 268) = AGCreateWeakAttribute();
    v10[2] = v14;
    v10[3] = v15;
    v10[4] = v16;
    v11 = v17;
    v10[0] = v12;
    v10[1] = v13;
    v8 = v0;
    v1 = DefaultLayoutViewResponder.init(inputs:)();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    *(v8 + 144) = v1;
  }

  return v1;
}

uint64_t HoverEffectResponderFilter.updateValue()()
{
  v39 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v2 = v1;
  v3 = *Value;
  v4 = Value[1];
  v5 = AGGraphGetValue();
  v7 = v6;
  v34 = v5[1];
  v35 = *v5;
  if (((v2 | v6) & 1) != 0 || (type metadata accessor for [ViewResponder](0), !AGGraphGetOutputValue()))
  {
    v8 = HoverEffectResponderFilter.responder.getter();
    v38 = v34;
    v37 = v35;
    *(v8 + 224) = MEMORY[0x18D00B390]();
    *(v8 + 232) = v9;

    v10 = HoverEffectResponderFilter.responder.getter();
    *(v10 + 240) = v3;
    *(v10 + 248) = v4;

    v11 = HoverEffectResponderFilter.responder.getter();
    *(v11 + 256) = AGCreateWeakAttribute();
  }

  v12 = HoverEffectResponderFilter.responder.getter();
  *(v12 + 264) = *AGGraphGetValue();

  v13 = HoverEffectResponderFilter.responder.getter();
  *(v13 + 304) = *AGGraphGetValue();

  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *v14;
  v18 = AGGraphGetValue();
  v20 = v19;
  v21 = *v18;
  *(HoverEffectResponderFilter.responder.getter() + 300) = v21;

  *(HoverEffectResponderFilter.responder.getter() + 296) = v17;

  HoverEffectResponderFilter.responder.getter();
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v22)
  {

    MultiViewResponder.children.setter();
  }

  v23 = HoverEffectResponderFilter.responder.getter();
  v24 = AGGraphGetValue();
  v25 = v4 - v24[1];
  *(v23 + 280) = v3 - *v24;
  *(v23 + 288) = v25;

  if (AGGraphGetOutputValue() && ((v20 & 1) != 0 || (v16 & 1) != 0 || (v7 & 1) != 0 || (v2 & 1) != 0))
  {
    v26 = HoverEffectResponderFilter.responder.getter();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v28 = *(v26 + 24);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v30 = type metadata accessor for PointerHost();
      (*(v28 + 16))(v36, v30, v30, ObjectType, v28);
      swift_unknownObjectRelease();
      if (v36[0])
      {
        v31 = v36[1];
        LOBYTE(v36[0]) = 17;
        *(swift_allocObject() + 24) = v31;
        swift_unknownObjectWeakInit();

        static Update.enqueueAction(reason:_:)();

        swift_unknownObjectRelease();
      }
    }
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18CD69590;
    *(v33 + 32) = HoverEffectResponderFilter.responder.getter();
    v36[0] = v33;
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t closure #1 in HoverEffectResponderFilter.updateValue()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(1, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t HoverEffectResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type HoverEffectResponderFilter and conformance HoverEffectResponderFilter()
{
  result = lazy protocol witness table cache variable for type HoverEffectResponderFilter and conformance HoverEffectResponderFilter;
  if (!lazy protocol witness table cache variable for type HoverEffectResponderFilter and conformance HoverEffectResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffectResponderFilter and conformance HoverEffectResponderFilter);
  }

  return result;
}

unint64_t type metadata accessor for PointerHost()
{
  result = lazy cache variable for type metadata for PointerHost;
  if (!lazy cache variable for type metadata for PointerHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PointerHost);
  }

  return result;
}

uint64_t destroy for HoverEffectResponderFilter(uint64_t a1)
{
}

uint64_t initializeWithCopy for HoverEffectResponderFilter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v4;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for HoverEffectResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v4 = *(a2 + 136);
  v5 = *(a1 + 136);
  *(a1 + 136) = v4;
  v6 = v4;

  *(a1 + 144) = *(a2 + 144);

  return a1;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for HoverEffectResponderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t getEnumTagSinglePayload for HoverEffectResponderFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverEffectResponderFilter(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized GesturePhase.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v19 = a2;
  v20 = a1;
  type metadata accessor for (DragGesture.Value, DragGesture.Value)();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E697DE58];
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  outlined init with copy of RotateGesture.Value?(v4, &v19 - v13, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of (DragGesture.Value, DragGesture.Value)(v14, v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
      v20(v10);
      outlined destroy of DragGesture.Value(v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    }

    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
  }

  else if (EnumCaseMultiPayload)
  {
    outlined init with take of (DragGesture.Value, DragGesture.Value)(v14, v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v20(v10);
    outlined destroy of DragGesture.Value(v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
  }

  else
  {
    if ((*(v8 + 48))(v14, 1, v7) == 1)
    {
      v16 = type metadata accessor for RotateGesture.Value();
      (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
      type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
      swift_storeEnumTagMultiPayload();
      return outlined destroy of RotateGesture.Value?(v14, &lazy cache variable for type metadata for (DragGesture.Value, DragGesture.Value)?, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E69E6720]);
    }

    outlined init with take of (DragGesture.Value, DragGesture.Value)(v14, v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v20(v10);
    outlined destroy of DragGesture.Value(v10, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v18 = type metadata accessor for RotateGesture.Value();
    (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t specialized VelocitySampler.addSample(_:time:)(double a1, double a2, double a3)
{
  if (*(v3 + 104))
  {
    goto LABEL_2;
  }

  v4 = *(v3 + 96);
  if (v4 > a3)
  {
    _StringGuts.grow(_:)(18);
    MEMORY[0x18D00C9B0](0x2064696C61766E49, 0xEF20656C706D6173);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    _StringGuts.grow(_:)(27);
    MEMORY[0x18D00C9B0](0x6D69742068746977, 0xEA00000000002065);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](0x207473616C203E20, 0xED000020656D6974);
    _print_unlocked<A, B>(_:_:)();

    MEMORY[0x18D00C9B0](0, 0xE000000000000000);

    MEMORY[0x18D009810](0, 0xE000000000000000);
  }

  if (a3 - v4 >= 2.22044605e-16)
  {
LABEL_2:
    *(v3 + 96) = a3;
    *(v3 + 104) = 0;
    if (*(v3 + 88))
    {
      if (*(v3 + 56))
      {
        if (*(v3 + 24))
        {
LABEL_5:
          *v3 = a1;
          *(v3 + 8) = a2;
          *(v3 + 16) = a3;
          *(v3 + 24) = 0;
          return result;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v6 = *(v3 + 48);
      v7 = *(v3 + 56);
      *v3 = *(v3 + 32);
      *(v3 + 16) = v6;
      *(v3 + 24) = v7;
      v8 = *(v3 + 80);
      *(v3 + 32) = *(v3 + 64);
      *(v3 + 48) = v8;
      *(v3 + 56) = 0;
    }

LABEL_9:
    *(v3 + 64) = a1;
    *(v3 + 72) = a2;
    *(v3 + 80) = a3;
    *(v3 + 88) = 0;
    return result;
  }

  if ((*(v3 + 88) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v3 + 56))
  {
    goto LABEL_5;
  }

LABEL_13:
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 56) = 0;
  return result;
}

uint64_t specialized VelocitySampler.addSample(_:time:)(double a1, double a2)
{
  if (*(v2 + 80))
  {
    goto LABEL_2;
  }

  v4 = *(v2 + 72);
  if (v4 > a2)
  {
    _StringGuts.grow(_:)(18);
    MEMORY[0x18D00C9B0](0x2064696C61766E49, 0xEF20656C706D6173);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    _StringGuts.grow(_:)(27);
    MEMORY[0x18D00C9B0](0x6D69742068746977, 0xEA00000000002065);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](0x207473616C203E20, 0xED000020656D6974);
    _print_unlocked<A, B>(_:_:)();

    MEMORY[0x18D00C9B0](0, 0xE000000000000000);

    MEMORY[0x18D009810](0, 0xE000000000000000);
  }

  if (a2 - v4 >= 2.22044605e-16)
  {
LABEL_2:
    *(v2 + 72) = a2;
    *(v2 + 80) = 0;
    v3 = *(v2 + 40);
    if (*(v2 + 64))
    {
      if (*(v2 + 40))
      {
        if (*(v2 + 16))
        {
LABEL_5:
          *v2 = a1;
          *(v2 + 8) = a2;
          *(v2 + 16) = 0;
          return result;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *v2 = *(v2 + 24);
      *(v2 + 16) = v3;
      *(v2 + 24) = *(v2 + 48);
      *(v2 + 40) = 0;
    }

LABEL_9:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
    *(v2 + 64) = 0;
    return result;
  }

  if ((*(v2 + 64) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v2 + 40))
  {
    goto LABEL_5;
  }

LABEL_13:
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  *(v2 + 40) = 0;
  return result;
}

{
  if (*(v2 + 80))
  {
    goto LABEL_2;
  }

  v4 = *(v2 + 72);
  if (v4 > a2)
  {
    _StringGuts.grow(_:)(18);
    MEMORY[0x18D00C9B0](0x2064696C61766E49, 0xEF20656C706D6173);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](32, 0xE100000000000000);
    _StringGuts.grow(_:)(27);
    MEMORY[0x18D00C9B0](0x6D69742068746977, 0xEA00000000002065);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](0x207473616C203E20, 0xED000020656D6974);
    _print_unlocked<A, B>(_:_:)();

    MEMORY[0x18D00C9B0](0, 0xE000000000000000);

    MEMORY[0x18D009810](0, 0xE000000000000000);
  }

  if (a2 - v4 >= 2.22044605e-16)
  {
LABEL_2:
    *(v2 + 72) = a2;
    *(v2 + 80) = 0;
    v3 = *(v2 + 40);
    if (*(v2 + 64))
    {
      if (*(v2 + 40))
      {
        if (*(v2 + 16))
        {
LABEL_5:
          *v2 = a1;
          *(v2 + 8) = a2;
          *(v2 + 16) = 0;
          return result;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *v2 = *(v2 + 24);
      *(v2 + 16) = v3;
      *(v2 + 24) = *(v2 + 48);
      *(v2 + 40) = 0;
    }

LABEL_9:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
    *(v2 + 64) = 0;
    return result;
  }

  if ((*(v2 + 64) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v2 + 40))
  {
    goto LABEL_5;
  }

LABEL_13:
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  *(v2 + 40) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type RotationGesture and conformance RotationGesture()
{
  result = lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture;
  if (!lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture;
  if (!lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RotationGesture and conformance RotationGesture);
  }

  return result;
}

__n128 RotationGesture.internalBody.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for RotateGesture.Value();
  MapGesture.init(_:)();
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

double specialized implicit closure #1 in RotationGesture.internalBody.getter@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + *(type metadata accessor for RotateGesture.Value() + 20));
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for RotateGesture.Value()
{
  result = type metadata singleton initialization cache for RotateGesture.Value;
  if (!type metadata singleton initialization cache for RotateGesture.Value)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 protocol witness for PubliclyPrimitiveGesture.internalBody.getter in conformance RotationGesture@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for RotateGesture.Value();
  MapGesture.init(_:)();
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t RotateGesture.Value.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RotateGesture.Value.time.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RotateGesture.Value.rotation.setter(double a1)
{
  result = type metadata accessor for RotateGesture.Value();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t RotateGesture.Value.velocity.setter(double a1)
{
  result = type metadata accessor for RotateGesture.Value();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t RotateGesture.Value.startAnchor.setter(double a1, double a2)
{
  result = type metadata accessor for RotateGesture.Value();
  v6 = (v2 + *(result + 28));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t RotateGesture.Value.startLocation.setter(double a1, double a2)
{
  result = type metadata accessor for RotateGesture.Value();
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t static RotateGesture._makeGesture(gesture:inputs:)()
{
  _GestureInputs.size.getter();
  _GestureInputs.position.getter();
  _GestureInputs.transform.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>>();
  lazy protocol witness table accessor for type RotateGesture.Child and conformance RotateGesture.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>>);
  return static Gesture.makeDebuggableGesture(gesture:inputs:)();
}

__n128 RotateGesture.Child.value.getter@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  v5 = HIDWORD(a1);
  v6 = HIDWORD(a2);
  v7 = *AGGraphGetValue();
  type metadata accessor for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>(0, &lazy cache variable for type metadata for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>.Value, MEMORY[0x1E697F810]);
  type metadata accessor for RotateGesture.Value();
  MapGesture.init(_:)();
  result = v9;
  a3->n128_u64[0] = v7;
  a3->n128_u32[2] = v5;
  a3->n128_u32[3] = v6;
  a3[1].n128_u32[0] = v3;
  a3[1].n128_u64[1] = v7;
  a3[2].n128_u32[0] = v5;
  a3[2].n128_u32[1] = v6;
  a3[2].n128_u32[2] = v3;
  a3[3] = v9;
  a3[4].n128_u64[0] = 2;
  a3[4].n128_u8[8] = 0;
  return result;
}

uint64_t closure #1 in RotateGesture.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for RotateGesture.Value?, type metadata accessor for RotateGesture.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  outlined init with copy of RotateGesture.Value?(a1, &v15 - v9, &lazy cache variable for type metadata for RotateGesture.Value?, type metadata accessor for RotateGesture.Value, v4);
  v11 = type metadata accessor for RotateGesture.Value();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v10, 1, v11) != 1)
  {
    return outlined init with take of (DragGesture.Value, DragGesture.Value)(v10, a2, type metadata accessor for RotateGesture.Value);
  }

  type metadata accessor for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>(0, &lazy cache variable for type metadata for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>.Value, MEMORY[0x1E697F810]);
  outlined init with copy of RotateGesture.Value?(a1 + *(v13 + 52), v7, &lazy cache variable for type metadata for RotateGesture.Value?, type metadata accessor for RotateGesture.Value, MEMORY[0x1E69E6720]);
  result = (v12)(v7, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    outlined init with take of (DragGesture.Value, DragGesture.Value)(v7, a2, type metadata accessor for RotateGesture.Value);
    result = (v12)(v10, 1, v11);
    if (result != 1)
    {
      return outlined destroy of RotateGesture.Value?(v10, &lazy cache variable for type metadata for RotateGesture.Value?, type metadata accessor for RotateGesture.Value, MEMORY[0x1E69E6720]);
    }
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance RotateGesture.Child@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 57) = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void protocol witness for GestureStateProtocol.init() in conformance TransformBasedRotationGesture.StateType(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0x3FE8000000000000;
}

uint64_t closure #1 in TransformBasedRotationGesture.body.getter@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *a2;
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  v9 = *(a2 + 88);
  if ((*a1 & 1) == 0)
  {
    if (*(a2 + 88) > 1u)
    {
      if (v9 == 2)
      {
LABEL_7:
        v10 = a3;
        v11 = a2;
        v12 = a1;
        specialized VelocitySampler.addSample(_:time:)((v7 * 128.0 + v8 * 128.0) * 0.0078125 * 128.0, *a2);
        a1 = v12;
        a2 = v11;
        a3 = v10;
      }
    }

    else
    {
      if (!*(a2 + 88))
      {
        if (v5 == 1)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      if (a1[2])
      {
        a1[1] = v7;
        *(a1 + 16) = 0;
      }

      else
      {
        v13 = a1[1];
        v14 = (v7 * 128.0 + v8 * 128.0) * 0.0078125;
        v16 = a3;
        v17 = a2;
        v18 = a1;
        specialized VelocitySampler.addSample(_:time:)(v14 * 128.0, *a2);
        a1 = v18;
        a2 = v17;
        a3 = v16;
        if (vabdd_f64(v14, v13) > a4)
        {
          *v18 = 1;
        }
      }
    }
  }

LABEL_12:
  v19 = *(a1 + 5);
  v30[4] = *(a1 + 4);
  v30[5] = v19;
  v30[6] = *(a1 + 6);
  v31 = *(a1 + 14);
  v20 = *(a1 + 1);
  v30[0] = *a1;
  v30[1] = v20;
  v21 = *(a1 + 3);
  v30[2] = *(a1 + 2);
  v30[3] = v21;
  *v23 = v4;
  v23[1] = v6;
  v23[2] = v5;
  v24 = *(a2 + 24);
  v25 = *(a2 + 40);
  v26 = *(a2 + 56);
  v27 = v7;
  v28 = v8;
  v29 = v9;
  return TransformBasedRotationGesture.phase(state:childPhase:)(v30, v23, a3);
}

uint64_t TransformBasedRotationGesture.phase(state:childPhase:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 80);
  v46[4] = *(a1 + 64);
  v46[5] = v4;
  v46[6] = *(a1 + 96);
  v47 = *(a1 + 112);
  v5 = *(a1 + 16);
  v46[0] = *a1;
  v46[1] = v5;
  v6 = *(a1 + 48);
  v46[2] = *(a1 + 32);
  v46[3] = v6;
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v12 = a2[4];
  v11 = a2[5];
  v14 = a2[6];
  v13 = a2[7];
  v16 = a2[8];
  v15 = a2[9];
  v17 = a2[10];
  v18 = *(a2 + 88);
  if (v18 == 3 && !(v8 | v7 | v10 | v9 | v12 | v11 | v14 | v13 | v16 | v15 | v17))
  {
    goto LABEL_14;
  }

  if (v46[0])
  {
    if (v18 <= 1)
    {
      if (v18)
      {
        *&v22 = v7;
        *(&v22 + 1) = v8;
        *&v23 = v10;
        *(&v23 + 1) = v9;
        *&v24 = v12;
        *(&v24 + 1) = v11;
        *&v25 = v14;
        *(&v25 + 1) = v13;
        *&v26 = v16;
        *(&v26 + 1) = v15;
        v27 = v17;
        v28 = v7;
        v29 = v8;
        v30 = v10;
        v31 = v9;
        v32 = v12;
        v33 = v11;
        v34 = v14;
        v35 = v13;
        v36 = v16;
        v37 = v15;
        v38 = v17;
        v39 = 1;
        outlined init with copy of TransformEvent(&v28, &v40);
        closure #1 in TransformBasedRotationGesture.phase(state:childPhase:)(&v22, v46, a3);
        v42 = v24;
        v43 = v25;
        v44 = v26;
        v45 = v27;
        v40 = v22;
        v41 = v23;
        outlined destroy of TransformEvent(&v40);
        type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
        return swift_storeEnumTagMultiPayload();
      }

      if (v10 != 1)
      {
        *&v22 = v7;
        *(&v22 + 1) = v8;
        *&v23 = v10;
        *(&v23 + 1) = v9;
        *&v24 = v12;
        *(&v24 + 1) = v11;
        *&v25 = v14;
        *(&v25 + 1) = v13;
        *&v26 = v16;
        *(&v26 + 1) = v15;
        v27 = v17;
        v28 = v7;
        v29 = v8;
        v30 = v10;
        v31 = v9;
        v32 = v12;
        v33 = v11;
        v34 = v14;
        v35 = v13;
        v36 = v16;
        v37 = v15;
        v38 = v17;
        v39 = 0;
        outlined init with copy of TransformEvent?(&v28, &v40);
        closure #1 in TransformBasedRotationGesture.phase(state:childPhase:)(&v22, v46, a3);
        v42 = v24;
        v43 = v25;
        v44 = v26;
        v45 = v27;
        v40 = v22;
        v41 = v23;
        outlined destroy of TransformEvent(&v40);
        v19 = type metadata accessor for RotateGesture.Value();
        (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
        type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_11;
    }

    if (v18 == 2)
    {
      *&v22 = v7;
      *(&v22 + 1) = v8;
      *&v23 = v10;
      *(&v23 + 1) = v9;
      *&v24 = v12;
      *(&v24 + 1) = v11;
      *&v25 = v14;
      *(&v25 + 1) = v13;
      *&v26 = v16;
      *(&v26 + 1) = v15;
      v27 = v17;
      v28 = v7;
      v29 = v8;
      v30 = v10;
      v31 = v9;
      v32 = v12;
      v33 = v11;
      v34 = v14;
      v35 = v13;
      v36 = v16;
      v37 = v15;
      v38 = v17;
      v39 = 2;
      outlined init with copy of TransformEvent(&v28, &v40);
      closure #1 in TransformBasedRotationGesture.phase(state:childPhase:)(&v22, v46, a3);
      v42 = v24;
      v43 = v25;
      v44 = v26;
      v45 = v27;
      v40 = v22;
      v41 = v23;
      outlined destroy of TransformEvent(&v40);
      type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_14:
    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
    goto LABEL_15;
  }

  if (v18 == 2 || v18 == 3 && !(v8 | v7 | v10 | v9 | v12 | v11 | v14 | v13 | v16 | v15 | v17))
  {
    goto LABEL_14;
  }

LABEL_11:
  v20 = type metadata accessor for RotateGesture.Value();
  (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
LABEL_15:

  return swift_storeEnumTagMultiPayload();
}

int *closure #1 in TransformBasedRotationGesture.phase(state:childPhase:)@<X0>(double *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[9];
  v11 = a1[10];
  v12 = TransformGestureAnchorHelper.startPoints(_:)(a1[3], a1[4]);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = Date.init(timeIntervalSinceReferenceDate:)();
  if (*(a2 + 16))
  {
    __break(1u);
  }

  else
  {
    v20 = 0.0;
    if ((*(a2 + 40) & 1) == 0 && (*(a2 + 64) & 1) == 0)
    {
      v21 = *(a2 + 48);
      v22 = *(a2 + 56);
      v20 = (v21 - *(a2 + 24)) * (1.0 / (v22 - *(a2 + 32)));
      if ((*(a2 + 88) & 1) == 0)
      {
        v20 = (*(a2 + 72) - v21) * (1.0 / (*(a2 + 80) - v22)) + *(a2 + 112) * (v20 - (*(a2 + 72) - v21) * (1.0 / (*(a2 + 80) - v22)));
      }
    }

    v23 = ((v10 * 128.0 + v11 * 128.0) * 0.0078125 * 128.0 - *(a2 + 8) * 128.0) * 0.0078125;
    v24 = v20 * 0.0078125;
    (*(v7 + 32))(a3, v9, v6);
    result = type metadata accessor for RotateGesture.Value();
    *(a3 + result[5]) = v23;
    *(a3 + result[6]) = v24;
    v25 = (a3 + result[7]);
    *v25 = v12;
    *(v25 + 1) = v14;
    v26 = (a3 + result[8]);
    *v26 = v16;
    v26[1] = v18;
  }

  return result;
}

double protocol witness for Gesture.body.getter in conformance TransformBasedRotationGesture@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 4);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *a1 = 1;
  v5 = swift_allocObject();
  result = *(v1 + 1);
  *(v5 + 16) = v3;
  *(v5 + 24) = result;
  *(v5 + 32) = v4;
  *(a1 + 56) = partial apply for closure #1 in TransformBasedRotationGesture.body.getter;
  *(a1 + 64) = v5;
  return result;
}

double protocol witness for GestureStateProtocol.init() in conformance TouchBasedRotationGesture.StateType@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0x3FE8000000000000;
  *(a1 + 136) = 0;
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 144) = 1;
  return result;
}

uint64_t TouchBasedRotationGesture.body.getter@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  v18 = 0u;
  v8 = HIDWORD(a1);
  v19 = 0u;
  v17 = 0x3FF0000000000000;
  v20 = 0;
  v21 = 3842;
  outlined init with copy of DragGesture(&v17, v13);
  outlined init with copy of DragGesture(&v17, v15);
  v9 = v13[1];
  *a3 = v13[0];
  *(a3 + 16) = v9;
  *(a3 + 32) = v13[2];
  *(a3 + 48) = v14;
  v10 = v15[1];
  *(a3 + 56) = v15[0];
  *(a3 + 72) = v10;
  *(a3 + 88) = v15[2];
  *(a3 + 104) = v16;
  type metadata accessor for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>();
  type metadata accessor for (DragGesture.Value, DragGesture.Value)();
  MapGesture.init(_:)();
  outlined destroy of DragGesture(&v17);
  *(a3 + 112) = v12;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = v5;
  *(result + 28) = v8;
  *(result + 32) = a2;
  *(a3 + 128) = partial apply for closure #2 in TouchBasedRotationGesture.body.getter;
  *(a3 + 136) = result;
  return result;
}

uint64_t closure #1 in TouchBasedRotationGesture.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (DragGesture.Value, DragGesture.Value)();
  v8 = *(v7 + 48);
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1, a2, type metadata accessor for DragGesture.Value);
  type metadata accessor for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>();
  outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(a1 + *(v9 + 44), v6, type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>);
  return outlined init with take of (DragGesture.Value, DragGesture.Value)(v6, a2 + v8, type metadata accessor for DragGesture.Value);
}

uint64_t TouchBasedRotationGesture.phase(state:childPhase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v114 = a4;
  v113 = a3;
  v126 = a1;
  v129 = a5;
  v128 = type metadata accessor for Date();
  v124 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v122 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v106 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v106 - v12;
  v13 = MEMORY[0x1E697DE58];
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), MEMORY[0x1E697DE58]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v106 - v15;
  type metadata accessor for (DragGesture.Value, DragGesture.Value)();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v125 = &v106 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v106 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v106 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v106 - v29;
  v115 = a2;
  outlined init with copy of RotateGesture.Value?(a2, v16, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    v109 = a6;
    outlined init with take of (DragGesture.Value, DragGesture.Value)(v16, v30, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v30, v27, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v32 = *(v18 + 48);
    v33 = type metadata accessor for DragGesture.Value(0);
    v34 = &v27[*(v33 + 24)];
    v35 = *v34;
    v36 = v34[1];
    outlined destroy of DragGesture.Value(v27, type metadata accessor for DragGesture.Value);
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v30, v24, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v37 = &v24[*(v18 + 48)];
    v38 = (v37 + *(v33 + 24));
    v39 = *v38;
    v40 = v38[1];
    outlined destroy of DragGesture.Value(v37, type metadata accessor for DragGesture.Value);
    v123 = v24;
    outlined destroy of DragGesture.Value(v24, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(&v27[v32], type metadata accessor for DragGesture.Value);
    v41 = v39;
    v42 = v40;
    v43 = v35;
    v44 = v36;
    if ((*(v126 + 144) & 1) == 0)
    {
      v41 = *(v126 + 128);
      v42 = *(v126 + 136);
      v43 = *(v126 + 112);
      v44 = *(v126 + 120);
    }

    v106 = v43;
    v107 = v42;
    v108 = v41;
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v30, v27, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v45 = *(v18 + 48);
    v46 = &v27[*(v33 + 20)];
    *&v47 = *v46;
    v119 = v47;
    *&v47 = *(v46 + 1);
    v118 = v47;
    outlined destroy of DragGesture.Value(v27, type metadata accessor for DragGesture.Value);
    v48 = v123;
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v30, v123, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v49 = v48 + *(v18 + 48);
    v111 = v33;
    v50 = (v49 + *(v33 + 20));
    *&v51 = *v50;
    v117 = v51;
    *&v51 = v50[1];
    v116 = v51;
    outlined destroy of DragGesture.Value(v49, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v48, type metadata accessor for DragGesture.Value);
    v110 = v27;
    outlined destroy of DragGesture.Value(&v27[v45], type metadata accessor for DragGesture.Value);
    v52 = v125;
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v30, v125, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v53 = v124;
    v54 = *(v124 + 16);
    v55 = v121;
    v56 = v128;
    v54(v121, v52, v128);
    outlined destroy of DragGesture.Value(v52, type metadata accessor for DragGesture.Value);
    v112 = v30;
    v57 = v120;
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v30, v120, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v58 = *(v18 + 48);
    v59 = v122;
    v54(v122, v57 + v58, v56);
    outlined destroy of DragGesture.Value(v57 + v58, type metadata accessor for DragGesture.Value);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    v60 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v61 = *(v53 + 8);
    v62 = (v60 & 1) == 0;
    if (v60)
    {
      v63 = v55;
    }

    else
    {
      v63 = v59;
    }

    if (v62)
    {
      v64 = v55;
    }

    else
    {
      v64 = v59;
    }

    v122 = *(v53 + 8);
    v61(v63, v56);
    (*(v53 + 32))(v127, v64, v56);
    v124 = v18;
    v65 = *(v18 + 48);
    outlined destroy of DragGesture.Value(v57, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v125 + v65, type metadata accessor for DragGesture.Value);
    Date.timeIntervalSinceReferenceDate.getter();
    v67 = v66;
    static Semantics.v6.getter();
    v68 = isLinkedOnOrAfter(_:)();
    v69 = *&v118 - *&v116;
    v70 = *&v119 - *&v117;
    if (v68)
    {
      v71 = (v44 - v107) / (v106 - v108);
      v72 = v69 / v70;
      v73 = v71 * (v69 / v70);
      v74 = v126;
      if (v73 == -1.0)
      {
        v75 = v123;
        v76 = v112;
        if (v72 >= v71)
        {
          v83 = v71 < v72;
          v77 = -1.57079633;
          if (!v83)
          {
            v77 = 0.0;
          }
        }

        else
        {
          v77 = 1.57079633;
        }
      }

      else
      {
        v77 = -atan((v71 - v72) / (v73 + 1.0));
        v75 = v123;
        v76 = v112;
      }

      v82 = (v77 * 128.0 + *(v74 + 104) * 128.0) * 0.0078125;
      *(v74 + 104) = v82;
    }

    else
    {
      v81 = atan2(v36 - v40, v35 - v39);
      v82 = atan2(v69, v70) - v81;
      v74 = v126;
      *(v126 + 104) = v82;
      v75 = v123;
      v76 = v112;
    }

    *&v84 = v119;
    *(&v84 + 1) = v118;
    *&v85 = v117;
    *(&v85 + 1) = v116;
    *(v74 + 112) = v84;
    *(v74 + 128) = v85;
    *(v74 + 144) = 0;
    specialized VelocitySampler.addSample(_:time:)(v82 * 128.0, v67);
    if ((*v74 & 1) == 0)
    {
      if (fabs(v82) < v109)
      {
        outlined destroy of DragGesture.Value(v76, type metadata accessor for (DragGesture.Value, DragGesture.Value));
        v86 = type metadata accessor for RotateGesture.Value();
        (*(*(v86 - 8) + 56))(v129, 1, 1, v86);
        type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
        swift_storeEnumTagMultiPayload();
        v87 = v127;
        return (v122)(v87, v128);
      }

      *v74 = 1;
    }

    v88 = v110;
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v76, v110, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v89 = v74;
    v90 = v124;
    v91 = *(v124 + 48);
    v92 = v111;
    v93 = *(v88 + *(v111 + 24));
    outlined destroy of DragGesture.Value(v88, type metadata accessor for DragGesture.Value);
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v76, v75, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v94 = v75 + *(v90 + 48);
    v95 = *(v94 + *(v92 + 24));
    outlined destroy of DragGesture.Value(v94, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v75, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v88 + v91, type metadata accessor for DragGesture.Value);
    outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(v76, v88, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v96 = *(v90 + 48);
    v97 = *(v88 + *(v92 + 24) + 8);
    outlined destroy of DragGesture.Value(v88, type metadata accessor for DragGesture.Value);
    outlined init with take of (DragGesture.Value, DragGesture.Value)(v76, v75, type metadata accessor for (DragGesture.Value, DragGesture.Value));
    v98 = v75 + *(v90 + 48);
    v99 = *(v98 + *(v92 + 24) + 8);
    outlined destroy of DragGesture.Value(v98, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v75, type metadata accessor for DragGesture.Value);
    outlined destroy of DragGesture.Value(v88 + v96, type metadata accessor for DragGesture.Value);
    TransformGestureAnchorHelper.startPoints(_:)((v93 + v95) * 0.5, (v97 + v99) * 0.5);
    v101 = MEMORY[0x1EEE9AC00](v100);
    v102 = v127;
    *(&v106 - 6) = v127;
    *(&v106 - 5) = v89;
    *(&v106 - 4) = v101;
    *(&v106 - 3) = v103;
    *(&v106 - 2) = v104;
    *(&v106 - 1) = v105;
    specialized GesturePhase.map<A>(_:)(partial apply for closure #1 in TouchBasedRotationGesture.phase(state:childPhase:), (&v106 - 8), v129);
    v87 = v102;
    return (v122)(v87, v128);
  }

  if (EnumCaseMultiPayload)
  {
    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v78 = type metadata accessor for RotateGesture.Value();
    (*(*(v78 - 8) + 56))(v129, 1, 1, v78);
    v79 = MEMORY[0x1E697DE58];
    type metadata accessor for CategoryGesture<RotateGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697DE58]);
    swift_storeEnumTagMultiPayload();
    return outlined destroy of RotateGesture.Value?(v16, &lazy cache variable for type metadata for GesturePhase<(DragGesture.Value, DragGesture.Value)>, type metadata accessor for (DragGesture.Value, DragGesture.Value), v79);
  }
}

int *closure #1 in TouchBasedRotationGesture.phase(state:childPhase:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = *(a2 + 104);
  v20 = 0.0;
  if ((*(a2 + 24) & 1) == 0 && (*(a2 + 48) & 1) == 0)
  {
    v22 = *(a2 + 32);
    v21 = *(a2 + 40);
    v20 = (v22 - *(a2 + 8)) * (1.0 / (v21 - *(a2 + 16)));
    if ((*(a2 + 72) & 1) == 0)
    {
      v20 = (*(a2 + 56) - v22) * (1.0 / (*(a2 + 64) - v21)) + *(a2 + 96) * (v20 - (*(a2 + 56) - v22) * (1.0 / (*(a2 + 64) - v21)));
    }
  }

  v23 = v20 * 0.0078125;
  (*(v15 + 32))(a3, v18, v14);
  result = type metadata accessor for RotateGesture.Value();
  *(a3 + result[5]) = v19;
  *(a3 + result[6]) = v23;
  v25 = (a3 + result[7]);
  *v25 = a4;
  v25[1] = a5;
  v26 = (a3 + result[8]);
  *v26 = a6;
  v26[1] = a7;
  return result;
}

BOOL specialized static RotateGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RotateGesture.Value();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = v4;
  if ((static UnitPoint.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 32);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  v11 = v7 == *v9;
  return v8 == v10 && v11;
}

void type metadata accessor for ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>>)
  {
    type metadata accessor for CategoryGesture<RotateGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697E628]);
    type metadata accessor for _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>();
    lazy protocol witness table accessor for type CategoryGesture<RotateGesture.Value> and conformance CategoryGesture<A>();
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value> and conformance _MapGesture<A, B>, type metadata accessor for _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<RotateGesture.Value>, _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>>);
    }
  }
}

void type metadata accessor for _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>()
{
  if (!lazy cache variable for type metadata for _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>)
  {
    type metadata accessor for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>(255, &lazy cache variable for type metadata for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, MEMORY[0x1E697F818]);
    type metadata accessor for RotateGesture.Value();
    lazy protocol witness table accessor for type SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture> and conformance SimultaneousGesture<A, B>();
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, RotateGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransformBasedRotationGesture and conformance TransformBasedRotationGesture()
{
  result = lazy protocol witness table cache variable for type TransformBasedRotationGesture and conformance TransformBasedRotationGesture;
  if (!lazy protocol witness table cache variable for type TransformBasedRotationGesture and conformance TransformBasedRotationGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformBasedRotationGesture and conformance TransformBasedRotationGesture);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TouchBasedRotationGesture and conformance TouchBasedRotationGesture()
{
  result = lazy protocol witness table cache variable for type TouchBasedRotationGesture and conformance TouchBasedRotationGesture;
  if (!lazy protocol witness table cache variable for type TouchBasedRotationGesture and conformance TouchBasedRotationGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TouchBasedRotationGesture and conformance TouchBasedRotationGesture);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture> and conformance SimultaneousGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture> and conformance SimultaneousGesture<A, B>;
  if (!lazy protocol witness table cache variable for type SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture> and conformance SimultaneousGesture<A, B>)
  {
    type metadata accessor for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>(255, &lazy cache variable for type metadata for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>, MEMORY[0x1E697F818]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture> and conformance SimultaneousGesture<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CategoryGesture<RotateGesture.Value> and conformance CategoryGesture<A>()
{
  result = lazy protocol witness table cache variable for type CategoryGesture<RotateGesture.Value> and conformance CategoryGesture<A>;
  if (!lazy protocol witness table cache variable for type CategoryGesture<RotateGesture.Value> and conformance CategoryGesture<A>)
  {
    type metadata accessor for CategoryGesture<RotateGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<RotateGesture.Value>, type metadata accessor for RotateGesture.Value, MEMORY[0x1E697E628]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CategoryGesture<RotateGesture.Value> and conformance CategoryGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RotateGesture.Child and conformance RotateGesture.Child()
{
  result = lazy protocol witness table cache variable for type RotateGesture.Child and conformance RotateGesture.Child;
  if (!lazy protocol witness table cache variable for type RotateGesture.Child and conformance RotateGesture.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RotateGesture.Child and conformance RotateGesture.Child);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RotateGesture.Value(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    v9 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + v9) = *(a2 + v9);
  }

  return a1;
}

uint64_t initializeWithCopy for RotateGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t assignWithCopy for RotateGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v7 = a3[7];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = a3[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  *v11 = *v12;
  v11[1] = v12[1];
  return a1;
}

uint64_t initializeWithTake for RotateGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t assignWithTake for RotateGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t type metadata completion function for RotateGesture.Value()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for _MapGesture<RotateGesture, Angle>()
{
  if (!lazy cache variable for type metadata for _MapGesture<RotateGesture, Angle>)
  {
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<RotateGesture, Angle>);
    }
  }
}

uint64_t outlined init with copy of TransformEvent?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TransformEvent?(0, &lazy cache variable for type metadata for TransformEvent?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>()
{
  if (!lazy cache variable for type metadata for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>)
  {
    type metadata accessor for DragGesture.Value(255);
    type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>();
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type Tuple<DragGesture.Value, EmptyTuple> and conformance Tuple<A, B>, type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>);
    v0 = type metadata accessor for Tuple();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Tuple<DragGesture.Value, Tuple<DragGesture.Value, EmptyTuple>>);
    }
  }
}

void type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>()
{
  if (!lazy cache variable for type metadata for Tuple<DragGesture.Value, EmptyTuple>)
  {
    type metadata accessor for DragGesture.Value(255);
    v0 = type metadata accessor for Tuple();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Tuple<DragGesture.Value, EmptyTuple>);
    }
  }
}

void type metadata accessor for (DragGesture.Value, DragGesture.Value)()
{
  if (!lazy cache variable for type metadata for (DragGesture.Value, DragGesture.Value))
  {
    type metadata accessor for DragGesture.Value(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DragGesture.Value, DragGesture.Value));
    }
  }
}

uint64_t outlined init with copy of RotateGesture.Value?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined init with copy of Tuple<DragGesture.Value, EmptyTuple>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DragGesture.Value(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of RotateGesture.Value?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for CategoryGesture<RotateGesture.Value>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for AnimatablePair<CGFloat, CGFloat>()
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v0 = type metadata accessor for AnimatablePair();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimatablePair<CGFloat, CGFloat>);
    }
  }
}

void type metadata accessor for SimultaneousGesture<TransformBasedRotationGesture, TouchBasedRotationGesture>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TransformBasedRotationGesture;
    v8[1] = &type metadata for TouchBasedRotationGesture;
    v8[2] = lazy protocol witness table accessor for type TransformBasedRotationGesture and conformance TransformBasedRotationGesture();
    v8[3] = lazy protocol witness table accessor for type TouchBasedRotationGesture and conformance TouchBasedRotationGesture();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for CategoryGesture<RotateGesture.Value>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with take of (DragGesture.Value, DragGesture.Value)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for TransformBasedRotationGesture.StateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[120])
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

uint64_t storeEnumTagSinglePayload for TransformBasedRotationGesture.StateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TouchBasedRotationGesture.StateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[145])
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

uint64_t storeEnumTagSinglePayload for TouchBasedRotationGesture.StateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifierGesture<StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>>)
  {
    type metadata accessor for StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>();
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>();
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>()
{
  if (!lazy cache variable for type metadata for StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>)
  {
    type metadata accessor for RotateGesture.Value();
    lazy protocol witness table accessor for type TransformBasedRotationGesture.StateType and conformance TransformBasedRotationGesture.StateType();
    v0 = type metadata accessor for StateContainerGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateContainerGesture<TransformBasedRotationGesture.StateType, TransformEvent, RotateGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransformBasedRotationGesture.StateType and conformance TransformBasedRotationGesture.StateType()
{
  result = lazy protocol witness table cache variable for type TransformBasedRotationGesture.StateType and conformance TransformBasedRotationGesture.StateType;
  if (!lazy protocol witness table cache variable for type TransformBasedRotationGesture.StateType and conformance TransformBasedRotationGesture.StateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformBasedRotationGesture.StateType and conformance TransformBasedRotationGesture.StateType);
  }

  return result;
}

void type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>)
  {
    type metadata accessor for TransformEvent?(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<TransformEvent>, MEMORY[0x1E697FE18]);
    type metadata accessor for EventListener<TransformEvent>();
    lazy protocol witness table accessor for type CoordinateSpaceGesture<TransformEvent> and conformance CoordinateSpaceGesture<A>();
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<TransformEvent> and conformance EventListener<A>, type metadata accessor for EventListener<TransformEvent>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<TransformEvent>, EventListener<TransformEvent>>);
    }
  }
}

void type metadata accessor for TransformEvent?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for TransformEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for EventListener<TransformEvent>()
{
  if (!lazy cache variable for type metadata for EventListener<TransformEvent>)
  {
    lazy protocol witness table accessor for type TransformEvent and conformance TransformEvent();
    v0 = type metadata accessor for EventListener();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EventListener<TransformEvent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransformEvent and conformance TransformEvent()
{
  result = lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent;
  if (!lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent;
  if (!lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformEvent and conformance TransformEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CoordinateSpaceGesture<TransformEvent> and conformance CoordinateSpaceGesture<A>()
{
  result = lazy protocol witness table cache variable for type CoordinateSpaceGesture<TransformEvent> and conformance CoordinateSpaceGesture<A>;
  if (!lazy protocol witness table cache variable for type CoordinateSpaceGesture<TransformEvent> and conformance CoordinateSpaceGesture<A>)
  {
    type metadata accessor for TransformEvent?(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<TransformEvent>, MEMORY[0x1E697FE18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpaceGesture<TransformEvent> and conformance CoordinateSpaceGesture<A>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>)
  {
    type metadata accessor for StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>();
    type metadata accessor for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>();
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>, type metadata accessor for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>, _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>()
{
  if (!lazy cache variable for type metadata for StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>)
  {
    type metadata accessor for (DragGesture.Value, DragGesture.Value)();
    type metadata accessor for RotateGesture.Value();
    lazy protocol witness table accessor for type TouchBasedRotationGesture.StateType and conformance TouchBasedRotationGesture.StateType();
    v0 = type metadata accessor for StateContainerGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateContainerGesture<TouchBasedRotationGesture.StateType, (DragGesture.Value, DragGesture.Value), RotateGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TouchBasedRotationGesture.StateType and conformance TouchBasedRotationGesture.StateType()
{
  result = lazy protocol witness table cache variable for type TouchBasedRotationGesture.StateType and conformance TouchBasedRotationGesture.StateType;
  if (!lazy protocol witness table cache variable for type TouchBasedRotationGesture.StateType and conformance TouchBasedRotationGesture.StateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TouchBasedRotationGesture.StateType and conformance TouchBasedRotationGesture.StateType);
  }

  return result;
}

void type metadata accessor for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>()
{
  if (!lazy cache variable for type metadata for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>)
  {
    type metadata accessor for TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>();
    type metadata accessor for (DragGesture.Value, DragGesture.Value)();
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>> and conformance TupleGesture<A, B>, type metadata accessor for TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>);
    v0 = type metadata accessor for _MapGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)>);
    }
  }
}

void type metadata accessor for TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>()
{
  if (!lazy cache variable for type metadata for TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>)
  {
    type metadata accessor for TupleGesture<DragGesture, EmptyTupleGesture>();
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type TupleGesture<DragGesture, EmptyTupleGesture> and conformance TupleGesture<A, B>, type metadata accessor for TupleGesture<DragGesture, EmptyTupleGesture>);
    lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(&lazy protocol witness table cache variable for type Tuple<DragGesture.Value, EmptyTuple> and conformance Tuple<A, B>, type metadata accessor for Tuple<DragGesture.Value, EmptyTuple>);
    v0 = type metadata accessor for TupleGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>);
    }
  }
}

void type metadata accessor for TupleGesture<DragGesture, EmptyTupleGesture>()
{
  if (!lazy cache variable for type metadata for TupleGesture<DragGesture, EmptyTupleGesture>)
  {
    v0 = type metadata accessor for TupleGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleGesture<DragGesture, EmptyTupleGesture>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _MapGesture<TupleGesture<DragGesture, TupleGesture<DragGesture, EmptyTupleGesture>>, (DragGesture.Value, DragGesture.Value)> and conformance _MapGesture<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TextField.init<A>(_:format:prompt:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = a2;
  v30 = a8;
  v32 = a7;
  v33 = a6;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v37 = a1;
  v31 = a9;
  v28 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(v41, a1, a2, a11, a13);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v39[2] = v41[2];
  v39[3] = v41[3];
  v40[0] = v42[0];
  *(v40 + 12) = *(v42 + 12);
  v39[0] = v41[0];
  v39[1] = v41[1];
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  outlined init with copy of TextFieldState(v41, &v38);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(v39, v18, v20, v22, v24, 0, v35, v36, v31, v34, v33, 0, v17, v32);
  outlined destroy of TextFieldState(v41);
  (*(*(a11 - 8) + 8))(v29, a11);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v26 = type metadata accessor for Binding();
  return (*(*(v26 - 8) + 8))(v37, v26);
}

{
  v29 = a2;
  v30 = a8;
  v32 = a7;
  v33 = a6;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v37 = a1;
  v31 = a9;
  v28 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(v41, a1, a2, a11, a13);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v39[2] = v41[2];
  v39[3] = v41[3];
  v40[0] = v42[0];
  *(v40 + 12) = *(v42 + 12);
  v39[0] = v41[0];
  v39[1] = v41[1];
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  outlined init with copy of TextFieldState(v41, &v38);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(v39, v18, v20, v22, v24, 0, v35, v36, v31, v34, v33, 0, v17, v32);
  outlined destroy of TextFieldState(v41);
  (*(*(a11 - 8) + 8))(v29, a11);
  swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for Binding();
  return (*(*(v26 - 8) + 8))(v37, v26);
}

uint64_t TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v50 = a8;
  v45 = a6;
  v46 = a5;
  v47 = a3;
  v48 = a4;
  v44 = a9;
  v42 = a16;
  v41 = a14;
  v40 = a13;
  v43 = a12;
  v49 = a11;
  v51 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (a7 && v51)
  {
    v23 = v50;
    outlined copy of AppIntentExecutor?(a7);
    v24 = v51;
    v25 = v49;
    outlined copy of AppIntentExecutor?(v51);
    v22 = a7;
  }

  v26 = static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(v55, a1, a2, v22, v23, v24, v25, a15);
  v36 = v27;
  v37 = a7;
  v28 = v26;
  v38 = a15;
  v39 = a1;
  v30 = v29;
  v32 = v31;
  v53[2] = v55[2];
  v53[3] = v55[3];
  v54[0] = v56[0];
  *(v54 + 12) = *(v56 + 12);
  v53[0] = v55[0];
  v53[1] = v55[1];
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
  outlined init with copy of TextFieldState(v55, &v52);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(v53, v28, v36, v30, v32, 0, v47, v48, v44, v46, v45, 0, v21, v43);
  outlined consume of TextFieldState.FormatActions?(v22);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v51);
  outlined destroy of TextFieldState(v55);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v37);
  v34 = type metadata accessor for Binding();
  return (*(*(v34 - 8) + 8))(v39, v34);
}

uint64_t TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void (*a14)(uint64_t))
{
  v19 = type metadata accessor for TextField();
  v20 = (a9 + v19[12]);
  v21 = v19[14];
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  *v33 = *(a1 + 76);
  v23 = a1[3];
  v24 = a9 + v19[13];
  *(v24 + 64) = a1[4];
  *(v24 + 80) = *&v33[4];
  v25 = a1[1];
  v32 = a1[2];
  *v24 = *a1;
  *(v24 + 16) = v25;
  *(v24 + 32) = v32;
  *(v24 + 48) = v23;
  *(v24 + 96) = 0;
  *(v24 + 108) = 0;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *v20 = a7;
  v20[1] = a8;
  v20[2] = a10;
  v20[3] = a11;
  *(a9 + v19[11]) = a12 & 1;

  outlined copy of Text?(a7, a8, a10, a11);
  v26 = outlined assign with copy of Binding<TextSelection?>?(a13, a9 + v21);
  a14(v26);
  outlined consume of Text?(a7, a8, a10, a11);

  return outlined destroy of ResolvedTextFieldStyle(a13, type metadata accessor for Binding<TextSelection?>?);
}

uint64_t static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v29 = a2;
  v9 = *(a4 - 8);
  v30 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OptionalFormatInputToString();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v26 = *(v9 + 16);
  v26(v11, a3, a4, v14);
  v28 = a5;
  OptionalFormatInputToString.init(format:)(v11, a4, a5);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  (*(v13 + 8))(v16, v12);
  v17 = v32;
  v29 = v33;
  v18 = v34;
  v19 = v35;
  (v26)(v11, v27, a4);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 16) = a4;
  *(v21 + 24) = v22;
  (*(v9 + 32))(v21 + v20, v11, a4);
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 1;
  *(a1 + 89) = 2;
  *(a1 + 91) = 0;
  v32 = v17;
  v33 = v29;
  v34 = v18;
  v35 = v19;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v31);
  v23 = v31[1];
  *a1 = v31[0];
  *(a1 + 8) = v23;
  *(a1 + 16) = protocol witness for static PreferenceKey._isReadableByHost.getter in conformance AccessibilityLargeContentViewTree.Key;
  *(a1 + 24) = 0;
  *(a1 + 32) = partial apply for closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:);
  *(a1 + 40) = v21;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return v17;
}

{
  v51 = a3;
  v53 = a2;
  swift_getAssociatedTypeWitness();
  v52 = type metadata accessor for Binding();
  v49 = *(v52 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v38 - v8;
  v54 = *(a4 - 8);
  v9 = v54;
  v46 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v41 = a5;
  v15 = type metadata accessor for FormatInputToString();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  v20 = *(v9 + 16);
  v21 = v51;
  v20(v14, v51, a4, v17);
  v39 = v20;
  FormatInputToString.init(format:)(v14, a4, a5);
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  (*(v16 + 8))(v19, v15);
  v44 = v57;
  v45 = v56;
  v42 = v59;
  v43 = v58;
  (v20)(v14, v21, a4);
  v22 = v54;
  v23 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v24 = v23 + v46;
  v25 = swift_allocObject();
  v46 = v25;
  v26 = v41;
  *(v25 + 16) = a4;
  *(v25 + 24) = v26;
  v27 = *(v22 + 32);
  v54 = v22 + 32;
  v40 = v27;
  v27(v25 + v23, v14, a4);
  v28 = v47;
  v39(v47, v51, a4);
  v29 = v48;
  v30 = v49;
  v31 = v52;
  (*(v49 + 16))(v48, v53, v52);
  v32 = (v24 + *(v30 + 80)) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = a4;
  *(v33 + 24) = v26;
  v40(v33 + v23, v28, a4);
  (*(v30 + 32))(v33 + v32, v29, v31);
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 1;
  *(a1 + 89) = 2;
  *(a1 + 91) = 0;
  v34 = v45;
  v56 = v45;
  v57 = v44;
  v58 = v43;
  v59 = v42;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v55);
  v35 = v55[1];
  *a1 = v55[0];
  *(a1 + 8) = v35;
  v36 = v46;
  *(a1 + 16) = partial apply for closure #1 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:);
  *(a1 + 24) = v36;
  *(a1 + 32) = partial apply for closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:);
  *(a1 + 40) = v33;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return v34;
}

uint64_t static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a6;
  v37 = a7;
  v34 = a4;
  v35 = a5;
  v33 = a8;
  v11 = type metadata accessor for Binding();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  type metadata accessor for AnyToFormattedString();
  v16 = a3;
  v38[0] = AnyToFormattedString.__allocating_init(_:)(v16);
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();

  v17 = v41;
  v18 = v43;
  v31 = v42;
  v32 = v40;
  (*(v12 + 16))(v15, a2, v11);
  v19 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v33;
  (*(v12 + 32))(v20 + v19, v15, v11);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v39 = 1;
  v21 = v32;
  v40 = v32;
  v41 = v17;
  v42 = v31;
  v43 = v18;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  v23 = v22;
  v24 = v16;
  MEMORY[0x18D00ACC0](v38, v23);
  v25 = v38[1];
  v26 = v39;
  *a1 = v38[0];
  *(a1 + 8) = v25;
  *(a1 + 16) = closure #1 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:);
  *(a1 + 24) = 0;
  *(a1 + 32) = partial apply for closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:);
  *(a1 + 40) = v20;
  v27 = v34;
  v28 = v35;
  *(a1 + 48) = v34;
  *(a1 + 56) = v28;
  v29 = v37;
  *(a1 + 64) = v36;
  *(a1 + 72) = v29;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = v26;
  *(a1 + 89) = 2;
  *(a1 + 91) = 0;
  outlined copy of TextFieldState.FormatActions?(v27);
  return v21;
}

uint64_t protocol witness for Projection.get(base:) in conformance TextFieldStateTextProjection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v16[0] = v5;
  v16[1] = v4;
  v16[2] = v7;
  v16[3] = v6;
  v8 = *(a1 + 5);
  v19 = *(a1 + 4);
  v20[0] = v8;
  *(v20 + 12) = *(a1 + 92);
  v9 = *(a1 + 3);
  v17 = *(a1 + 2);
  v18 = v9;
  if (v5 == v7 && v4 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of Binding<TextSelection?>(v16, v15, type metadata accessor for (String, TextFieldState));

    *a2 = v7;
    *(a2 + 8) = v6;
    v11 = *(a1 + 5);
    *(a2 + 48) = *(a1 + 4);
    *(a2 + 64) = v11;
    *(a2 + 76) = *(a1 + 92);
    v12 = *(a1 + 3);
    *(a2 + 16) = *(a1 + 2);
    *(a2 + 32) = v12;
  }

  else
  {
    outlined init with copy of Binding<TextSelection?>(v16, v15, type metadata accessor for (String, TextFieldState));

    v13 = *(a1 + 5);
    *(a2 + 48) = *(a1 + 4);
    *(a2 + 64) = v13;
    *(a2 + 76) = *(a1 + 92);
    v14 = *(a1 + 3);
    *(a2 + 16) = *(a1 + 2);
    *(a2 + 32) = v14;

    *a2 = v5;
    *(a2 + 8) = v4;
  }

  return result;
}

double protocol witness for Projection.set(base:newValue:) in conformance TextFieldStateTextProjection(_OWORD *a1, __int128 *a2)
{
  v3 = a2[1];
  v17 = *a2;
  v18 = v3;
  v4 = a2[3];
  v19 = a2[2];
  v20 = v4;
  *v21 = a2[4];
  *&v21[12] = *(a2 + 76);
  v5 = v17;
  if (v18)
  {
    v6 = *(&v18 + 1);
    v7 = swift_allocObject();
    *(v7 + 16) = v18;
    *(v7 + 24) = v6;

    v8 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
  }

  else
  {
    v8 = protocol witness for static StatefulRule.initialValue.getter in conformance LimitedAvailabilityTableColumnContent<A, B>.IndirectOutputs;
  }

  v15[0] = v5;

  (v8)(v14, v15);

  if ((v14[0] & 1) != 0 || v21[16] == 1)
  {

    *a1 = v5;
  }

  else
  {
  }

  v9 = a1[4];
  v15[2] = a1[3];
  v15[3] = v9;
  v16[0] = a1[5];
  *(v16 + 12) = *(a1 + 92);
  v10 = a1[2];
  v15[0] = a1[1];
  v15[1] = v10;
  outlined init with copy of TextFieldState(&v17, v14);
  outlined destroy of TextFieldState(v15);
  v11 = v20;
  a1[3] = v19;
  a1[4] = v11;
  a1[5] = *v21;
  *(a1 + 92) = *&v21[12];
  result = *&v17;
  v13 = v18;
  a1[1] = v17;
  a1[2] = v13;
  return result;
}

uint64_t closure #1 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v12 - v4;
  v6 = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  dispatch thunk of ParseableFormatStyle.parseStrategy.getter();
  v15 = v13;
  v16 = v14;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ParseStrategy.parse(_:)();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  (*(*(v6 - 8) + 56))(v10, 0, 1, v6);
  (*(v8 + 8))(v10, v7);
  return 1;
}

uint64_t closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[3] = a4;
  v22 = a1;
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v21 - v9;
  v25 = *(a6 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v21[1] = *(v12 - 8);
  v21[2] = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v21 - v18;
  v26 = a3;
  dispatch thunk of ParseableFormatStyle.parseStrategy.getter();
  v27 = v22;
  v28 = v23;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ParseStrategy.parse(_:)();
  (*(v24 + 8))(v10, AssociatedTypeWitness);
  (*(v15 + 56))(v14, 0, 1, v11);
  (*(v15 + 32))(v19, v14, v11);
  dispatch thunk of FormatStyle.format(_:)();
  (*(v15 + 8))(v19, v11);
  return v27;
}

uint64_t closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v20 - v9;
  v20[1] = *(a5 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v20[3] = *(v12 - 8);
  v20[4] = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v20 - v17;
  v20[2] = a3;
  dispatch thunk of ParseableFormatStyle.parseStrategy.getter();
  v23 = v21;
  v24 = v22;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ParseStrategy.parse(_:)();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  (*(v15 + 56))(v14, 0, 1, v11);
  (*(v15 + 32))(v18, v14, v11);
  dispatch thunk of FormatStyle.format(_:)();
  (*(v15 + 8))(v18, v11);
  return v23;
}

uint64_t closure #1 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)()
{
  static Semantics.v3.getter();

  return isLinkedOnOrAfter(_:)();
}

uint64_t closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v12);
  type metadata accessor for AnyToFormattedString();
  static AnyToFormattedString.applyFormatting(to:string:formatter:)(v11, a1, a2, a4);
  v13 = [a4 stringForObjectValue_];
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v14 = 0;
  }

  (*(v9 + 8))(v11, a5);
  return v14;
}

uint64_t TextField<>.init(_:text:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v35 = a5;
  v36 = a7;
  v41 = a4;
  v40 = a3;
  v38 = a1;
  v39 = a2;
  v37 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 1;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v42);
  v18 = v42[0];
  v19 = v42[1];
  HIDWORD(v34) = v47;
  type metadata accessor for Binding<TextSelection?>(0);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v22(v17, 1, 1, v20);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v24 = *(v23 + 56);
  v22((a9 + v24), 1, 1, v21);
  LOBYTE(v43) = 0;
  *(a9 + 112) = v18;
  *(a9 + 120) = v19;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = BYTE4(v34);
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v25 = v36;
  *a9 = v35;
  *(a9 + 8) = a6;
  *(a9 + 16) = v25;
  *(a9 + 24) = a8;
  *(a9 + 32) = 0;
  LOBYTE(v25) = v37 & 1;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 72) = v25;

  outlined assign with copy of Binding<TextSelection?>?(v17, a9 + v24);
  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  result = outlined destroy of ResolvedTextFieldStyle(v17, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v26;
  *(a9 + 48) = v28;
  *(a9 + 56) = v30 & 1;
  *(a9 + 64) = v32;
  return result;
}

uint64_t TextField.init(text:prompt:axis:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __int128 a11)
{
  v22 = a8;
  v23 = a7;
  v24 = a5;
  v25 = a6;
  v21 = a11;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 1;
  *&v26 = a1;
  *(&v26 + 1) = a2;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v36);
  v26 = v36;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v32 = 0;
  v33 = v37;
  v34 = 2;
  v35 = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  return TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(&v26, a1, a2, a3, a4, 0, v24, v25, a9, v23, v22, a10 & 1, v18, v21);
}

uint64_t TextField<>.init(_:text:prompt:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v54 = a4;
  v55 = a5;
  v53 = a3;
  v51 = a1;
  v52 = a2;
  v50 = a14;
  v48 = a12;
  v49 = a13;
  v47 = a11;
  v45 = a7;
  v46 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v21;
  v61 = 1;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v56);
  v22 = v56[0];
  v23 = v56[1];
  v24 = v61;
  type metadata accessor for Binding<TextSelection?>(0);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v27(v21, 1, 1, v25);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v29 = *(v28 + 56);
  v27((a9 + v29), 1, 1, v26);
  LOBYTE(v57) = 0;
  *(a9 + 112) = v22;
  *(a9 + 120) = v23;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v24;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  *a9 = v55;
  *(a9 + 8) = a6;
  v43[2] = a6;
  *(a9 + 16) = v45;
  *(a9 + 24) = a8;
  v43[1] = a8;
  *(a9 + 32) = 0;
  v31 = v46;
  v30 = v47;
  *(a9 + 80) = v46;
  *(a9 + 88) = v30;
  LOBYTE(a6) = v48;
  v32 = v49;
  *(a9 + 96) = v48;
  *(a9 + 104) = v32;
  *(a9 + 72) = v50 & 1;

  v33 = v32;
  outlined copy of Text?(v31, v30, a6, v32);
  v34 = a9 + v29;
  v35 = v44;
  outlined assign with copy of Binding<TextSelection?>?(v44, v34);
  v36 = Text.init(_:tableName:bundle:comment:)();
  v38 = v37;
  LOBYTE(v22) = v39;
  v41 = v40;
  outlined consume of Text?(v31, v30, a6, v33);

  result = outlined destroy of ResolvedTextFieldStyle(v35, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v36;
  *(a9 + 48) = v38;
  *(a9 + 56) = v22 & 1;
  *(a9 + 64) = v41;
  return result;
}

uint64_t TextField<>.init<A>(_:text:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a7;
  v34 = a8;
  v31 = a6;
  v29 = a2;
  v30 = a4;
  v32 = a1;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v35);
  v18 = v35[0];
  v17 = v35[1];
  HIDWORD(v28) = v40;
  type metadata accessor for Binding<TextSelection?>(0);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v21(v16, 1, 1, v19);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v23 = *(v22 + 56);
  v21((a9 + v23), 1, 1, v20);
  LOBYTE(v36) = 0;
  *(a9 + 112) = v18;
  *(a9 + 120) = v17;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = BYTE4(v28);
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v24 = v30;
  *a9 = v29;
  *(a9 + 8) = a3;
  *(a9 + 16) = v24;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  LOBYTE(v24) = v31 & 1;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 72) = v24;

  outlined assign with copy of Binding<TextSelection?>?(v16, a9 + v23);
  v25 = v32;
  v26 = v33;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v32, a9 + 40);

  outlined destroy of ResolvedTextFieldStyle(v16, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v26 - 8) + 8))(v25, v26);
}

uint64_t TextField<>.init<A>(_:text:prompt:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v47 = a7;
  v48 = a8;
  v46 = a6;
  v51 = a1;
  v52 = a2;
  v49 = a12;
  v50 = a13;
  v45 = a11;
  v43 = a4;
  v44 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v20;
  v58 = 1;
  v54 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v53);
  v21 = v53[0];
  v22 = v53[1];
  v23 = v58;
  type metadata accessor for Binding<TextSelection?>(0);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v26(v20, 1, 1, v24);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v28 = *(v27 + 56);
  v26((a9 + v28), 1, 1, v25);
  LOBYTE(v54) = 0;
  *(a9 + 112) = v21;
  *(a9 + 120) = v22;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v23;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  *a9 = v52;
  *(a9 + 8) = a3;
  v29 = v44;
  *(a9 + 16) = v43;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  v31 = v46;
  v30 = v47;
  *(a9 + 80) = v46;
  *(a9 + 88) = v30;
  LOBYTE(v25) = v48;
  *(a9 + 96) = v48;
  *(a9 + 104) = v29;
  *(a9 + 72) = v45 & 1;

  v32 = v31;
  v33 = v31;
  v34 = v30;
  v35 = v30;
  LOBYTE(v30) = v25;
  outlined copy of Text?(v32, v34, v25, v29);
  v36 = a9 + v28;
  v37 = v42;
  outlined assign with copy of Binding<TextSelection?>?(v42, v36);
  v38 = v51;
  v39 = v49;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v51, a9 + 40);
  outlined consume of Text?(v33, v35, v30, v29);

  outlined destroy of ResolvedTextFieldStyle(v37, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v39 - 8) + 8))(v38, v39);
}

uint64_t TextField<>.init(_:text:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a4;
  v54 = a5;
  v52 = a3;
  v50 = a1;
  v51 = a2;
  v48 = a12;
  v49 = a13;
  v47 = a11;
  v45 = a7;
  v46 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v20;
  v60 = 1;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v55);
  v21 = v55[0];
  v22 = v55[1];
  v23 = v60;
  type metadata accessor for Binding<TextSelection?>(0);
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v26(v20, 1, 1, v24);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v28 = *(v27 + 56);
  v26((a9 + v28), 1, 1, v25);
  LOBYTE(v56) = 0;
  *(a9 + 112) = v21;
  *(a9 + 120) = v22;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v23;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  *a9 = v54;
  *(a9 + 8) = a6;
  v43[0] = a8;
  v43[1] = a6;
  v29 = v46;
  *(a9 + 16) = v45;
  *(a9 + 24) = a8;
  *(a9 + 32) = 0;
  v31 = v47;
  v30 = v48;
  *(a9 + 80) = v29;
  *(a9 + 88) = v31;
  v32 = v49;
  *(a9 + 96) = v30;
  *(a9 + 104) = v32;
  *(a9 + 72) = 0;

  v33 = v32;
  outlined copy of Text?(v29, v31, v30, v32);
  v34 = a9 + v28;
  v35 = v44;
  outlined assign with copy of Binding<TextSelection?>?(v44, v34);
  v36 = Text.init(_:tableName:bundle:comment:)();
  v38 = v37;
  LOBYTE(v22) = v39;
  v41 = v40;
  outlined consume of Text?(v29, v31, v30, v33);

  result = outlined destroy of ResolvedTextFieldStyle(v35, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v36;
  *(a9 + 48) = v38;
  *(a9 + 56) = v22 & 1;
  *(a9 + 64) = v41;
  return result;
}

uint64_t TextField.init(text:prompt:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  v22 = a7;
  v23 = a5;
  v24 = a6;
  v21 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 1;
  *&v25 = a1;
  *(&v25 + 1) = a2;
  *&v26 = a3;
  *(&v26 + 1) = a4;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v35);
  v25 = v35;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v31 = 0;
  v32 = v36;
  v33 = 2;
  v34 = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  return TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(&v25, a1, a2, a3, a4, 0, v23, v24, a9, v22, a8, 0, v18, v21);
}

uint64_t TextField<>.init<A>(_:text:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a7;
  v45 = a8;
  v41 = a4;
  v47 = a12;
  v48 = a1;
  v46 = a11;
  v42 = a10;
  v43 = a6;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v19;
  v54 = 1;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v49);
  v20 = v49[0];
  v21 = v49[1];
  v39 = v54;
  type metadata accessor for Binding<TextSelection?>(0);
  v23 = v22;
  v24 = *(*(v22 - 8) + 56);
  v24(v19, 1, 1, v22);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v26 = *(v25 + 56);
  v24((a9 + v26), 1, 1, v23);
  LOBYTE(v50) = 0;
  *(a9 + 112) = v20;
  *(a9 + 120) = v21;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v39;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v38[1] = a2;
  *a9 = a2;
  *(a9 + 8) = a3;
  v27 = v42;
  *(a9 + 16) = v41;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  v29 = v43;
  v28 = v44;
  *(a9 + 80) = v43;
  *(a9 + 88) = v28;
  LOBYTE(v24) = v45;
  *(a9 + 96) = v45;
  *(a9 + 104) = v27;
  *(a9 + 72) = 0;

  v30 = v29;
  v31 = v29;
  v32 = v28;
  LOBYTE(v29) = v24;
  outlined copy of Text?(v30, v28, v24, v27);
  v33 = a9 + v26;
  v34 = v40;
  outlined assign with copy of Binding<TextSelection?>?(v40, v33);
  v35 = v48;
  v36 = v46;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v48, a9 + 40);
  outlined consume of Text?(v31, v32, v29, v27);

  outlined destroy of ResolvedTextFieldStyle(v34, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v36 - 8) + 8))(v35, v36);
}

uint64_t TextField<>.init(_:text:selection:prompt:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{
  v57 = a5;
  v58 = a6;
  v56 = a4;
  v55 = a3;
  v53 = a1;
  v54 = a2;
  v51 = a15;
  v49 = a13;
  v50 = a14;
  v48 = a12;
  v46 = a7;
  v47 = a11;
  v52 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = 1;
  v60 = a5;
  v61 = a6;
  v62 = a7;
  v63 = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v59);
  v24 = v59[0];
  v23 = v59[1];
  v25 = v64;
  outlined init with copy of Binding<TextSelection?>(a10, v22, type metadata accessor for Binding<TextSelection?>);
  type metadata accessor for Binding<TextSelection?>(0);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = v22;
  v45 = v22;
  v28(v22, 0, 1, v26);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v31 = *(v30 + 56);
  v28((a9 + v31), 1, 1, v27);
  LOBYTE(v60) = 0;
  *(a9 + 112) = v24;
  *(a9 + 120) = v23;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v25;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v32 = v58;
  *a9 = v57;
  *(a9 + 8) = v32;
  v33 = v47;
  *(a9 + 16) = v46;
  *(a9 + 24) = a8;
  *(a9 + 32) = 0;
  v35 = v48;
  v34 = v49;
  *(a9 + 80) = v33;
  *(a9 + 88) = v35;
  v36 = v50;
  *(a9 + 96) = v34;
  *(a9 + 104) = v36;
  *(a9 + 72) = v51 & 1;

  outlined copy of Text?(v33, v35, v34, v36);
  outlined assign with copy of Binding<TextSelection?>?(v29, a9 + v31);
  v37 = Text.init(_:tableName:bundle:comment:)();
  v39 = v38;
  LOBYTE(a8) = v40;
  v42 = v41;
  outlined consume of Text?(v33, v35, v34, v36);

  outlined destroy of ResolvedTextFieldStyle(v52, type metadata accessor for Binding<TextSelection?>);
  result = outlined destroy of ResolvedTextFieldStyle(v45, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v37;
  *(a9 + 48) = v39;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = v42;
  return result;
}

{
  v53 = a4;
  v52 = a3;
  v50 = a1;
  v51 = a2;
  v49 = a15;
  v47 = a13;
  v48 = a14;
  v46 = a12;
  v54 = a10;
  v55 = a5;
  v44 = a7;
  v45 = a11;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v22;
  v61 = 1;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v56);
  v23 = v56[0];
  v24 = v56[1];
  v25 = v61;
  type metadata accessor for Binding<TextSelection?>(0);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v28(v22, 1, 1, v26);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v30 = *(v29 + 56);
  v28((a9 + v30), 1, 1, v27);
  LOBYTE(v57) = 0;
  *(a9 + 112) = v23;
  *(a9 + 120) = v24;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v25;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  *a9 = v55;
  *(a9 + 8) = a6;
  v42[1] = a6;
  *(a9 + 16) = v44;
  *(a9 + 24) = a8;
  v42[0] = a8;
  *(a9 + 32) = 0;
  v31 = v45;
  v32 = v46;
  *(a9 + 80) = v45;
  *(a9 + 88) = v32;
  LOBYTE(v23) = v47;
  v33 = v48;
  *(a9 + 96) = v47;
  *(a9 + 104) = v33;
  *(a9 + 72) = v49 & 1;

  outlined copy of Text?(v31, v32, v23, v33);
  v34 = v43;
  outlined assign with copy of Binding<TextSelection?>?(v43, a9 + v30);
  v35 = Text.init(_:tableName:bundle:comment:)();
  v37 = v36;
  LOBYTE(a8) = v38;
  v40 = v39;
  outlined consume of Text?(v31, v32, v23, v33);

  outlined destroy of ResolvedTextFieldStyle(v54, type metadata accessor for Binding<TextSelection>);
  result = outlined destroy of ResolvedTextFieldStyle(v34, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v35;
  *(a9 + 48) = v37;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = v40;
  return result;
}

uint64_t TextField<>.init<A>(_:text:selection:prompt:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v49 = a7;
  v50 = a8;
  v51 = a13;
  v52 = a14;
  v53 = a1;
  v48 = a12;
  v46 = a11;
  v47 = a6;
  v44 = a4;
  v45 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v22;
  v59 = 1;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v54);
  v24 = v54[0];
  v23 = v54[1];
  v42 = v59;
  outlined init with copy of Binding<TextSelection?>(a6, v22, type metadata accessor for Binding<TextSelection?>);
  type metadata accessor for Binding<TextSelection?>(0);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v27(v22, 0, 1, v25);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v29 = *(v28 + 56);
  v27((a9 + v29), 1, 1, v26);
  LOBYTE(v55) = 0;
  *(a9 + 112) = v24;
  *(a9 + 120) = v23;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v42;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v41[1] = a2;
  *a9 = a2;
  *(a9 + 8) = a3;
  v30 = v45;
  *(a9 + 16) = v44;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  v32 = v49;
  v31 = v50;
  *(a9 + 80) = v49;
  *(a9 + 88) = v31;
  v33 = v46;
  *(a9 + 96) = v30;
  *(a9 + 104) = v33;
  *(a9 + 72) = v48 & 1;

  v34 = v32;
  v35 = v31;
  outlined copy of Text?(v32, v31, v30, v33);
  v36 = a9 + v29;
  v37 = v43;
  outlined assign with copy of Binding<TextSelection?>?(v43, v36);
  v38 = v53;
  v39 = v51;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v53, a9 + 40);
  outlined consume of Text?(v34, v35, v30, v33);

  outlined destroy of ResolvedTextFieldStyle(v47, type metadata accessor for Binding<TextSelection?>);
  outlined destroy of ResolvedTextFieldStyle(v37, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v39 - 8) + 8))(v38, v39);
}

{
  v47 = a7;
  v48 = a8;
  v52 = a6;
  v53 = a2;
  v49 = a13;
  v50 = a14;
  v51 = a1;
  v46 = a12;
  v45 = a11;
  v43 = a4;
  v44 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v21;
  v59 = 1;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v54);
  v22 = v54[0];
  v23 = v54[1];
  v24 = v59;
  type metadata accessor for Binding<TextSelection?>(0);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v27(v21, 1, 1, v25);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v29 = *(v28 + 56);
  v27((a9 + v29), 1, 1, v26);
  LOBYTE(v55) = 0;
  *(a9 + 112) = v22;
  *(a9 + 120) = v23;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0;
  *(a9 + 196) = 0;
  *(a9 + 200) = v24;
  *(a9 + 201) = 2;
  *(a9 + 203) = 0;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  *a9 = v53;
  *(a9 + 8) = a3;
  v30 = v44;
  *(a9 + 16) = v43;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  v32 = v47;
  v31 = v48;
  *(a9 + 80) = v47;
  *(a9 + 88) = v31;
  v33 = v45;
  *(a9 + 96) = v30;
  *(a9 + 104) = v33;
  *(a9 + 72) = v46 & 1;

  v34 = v32;
  v35 = v32;
  v36 = v31;
  outlined copy of Text?(v34, v31, v30, v33);
  v37 = a9 + v29;
  v38 = v42;
  outlined assign with copy of Binding<TextSelection?>?(v42, v37);
  v39 = v51;
  v40 = v49;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v51, a9 + 40);
  outlined consume of Text?(v35, v36, v30, v33);

  outlined destroy of ResolvedTextFieldStyle(v52, type metadata accessor for Binding<TextSelection>);
  outlined destroy of ResolvedTextFieldStyle(v38, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v40 - 8) + 8))(v39, v40);
}

uint64_t TextField.init(text:selection:prompt:axis:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12)
{
  v25 = a8;
  v26 = a6;
  v27 = a7;
  v24 = a9;
  v23 = a10;
  v22 = a12;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 1;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  *&v29 = a3;
  *(&v29 + 1) = a4;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v38);
  v28 = v38;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  v34 = 0;
  v35 = v39;
  v36 = 2;
  v37 = 0;
  outlined init with copy of Binding<TextSelection?>(a5, v19, type metadata accessor for Binding<TextSelection?>);
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(&v28, a1, a2, a3, a4, 0, v26, v27, v24, v25, v23, a11 & 1, v19, v22);
  return outlined destroy of ResolvedTextFieldStyle(a5, type metadata accessor for Binding<TextSelection?>);
}

{
  v23 = a8;
  v24 = a6;
  v25 = a7;
  v26 = a5;
  v22 = a9;
  v21 = a12;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 1;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  *&v28 = a3;
  *(&v28 + 1) = a4;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v37);
  v27 = v37;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v33 = 0;
  v34 = v38;
  v35 = 2;
  v36 = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  TextField.init(initialState:text:isSecure:prompt:axis:selection:label:)(&v27, a1, a2, a3, a4, 0, v24, v25, v22, v23, a10, a11 & 1, v18, v21);
  return outlined destroy of ResolvedTextFieldStyle(v26, type metadata accessor for Binding<TextSelection>);
}

uint64_t TextField<>.init(_:text:onEditingChanged:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v47 = a5;
  v48 = a7;
  v46 = a6;
  v54 = a4;
  v53 = a3;
  v51 = a1;
  v52 = a2;
  v44 = a12;
  v50 = a13;
  v43 = a10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v20;
  v55[0] = 1;
  *&v62 = a5;
  *(&v62 + 1) = a6;
  *&v63 = a7;
  *(&v63 + 1) = a8;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  v22 = v21;
  v49 = a11;

  MEMORY[0x18D00ACC0](&v56, v22);
  v57 = 0u;
  v58 = 0u;
  *&v59 = v43;
  *(&v59 + 1) = a11;
  *v60 = v44;
  *&v60[8] = a13;
  v60[16] = 0;
  *&v60[17] = v62;
  v60[19] = BYTE2(v62);
  *&v60[20] = 0;
  v60[24] = v55[0];
  *&v60[25] = 2;
  v60[27] = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v25(v20, 1, 1, v23);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v27 = *(v26 + 56);
  v25((a9 + v27), 1, 1, v24);
  v28 = v59;
  v65 = v59;
  v66[0] = *v60;
  *(v66 + 12) = *&v60[12];
  v30 = v56;
  v29 = v57;
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v61 = 0;
  *(a9 + 144) = v58;
  *(a9 + 160) = v28;
  *(a9 + 112) = v30;
  *(a9 + 128) = v29;
  v31 = v66[1];
  *(a9 + 176) = v66[0];
  *(a9 + 192) = v31;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v32 = v46;
  *a9 = v47;
  *(a9 + 8) = v32;
  *(a9 + 16) = v48;
  *(a9 + 24) = a8;
  *(a9 + 32) = 0;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  outlined init with copy of TextFieldState(&v56, v55);

  v33 = a9 + v27;
  v34 = v45;
  outlined assign with copy of Binding<TextSelection?>?(v45, v33);
  v35 = Text.init(_:tableName:bundle:comment:)();
  v37 = v36;
  LOBYTE(v32) = v38;
  v40 = v39;
  outlined destroy of TextFieldState(&v56);

  result = outlined destroy of ResolvedTextFieldStyle(v34, type metadata accessor for Binding<TextSelection?>?);
  *(a9 + 40) = v35;
  *(a9 + 48) = v37;
  *(a9 + 56) = v32 & 1;
  *(a9 + 64) = v40;
  return result;
}

uint64_t TextField<>.init(_:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a5;
  v41 = a4;
  v45 = a1;
  v11 = type metadata accessor for LocalizedStringResource();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v42 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = 1;
  *&v53 = a2;
  *(&v53 + 1) = a3;
  *&v54 = a4;
  *(&v54 + 1) = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v47);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  memset(v51, 0, 17);
  *&v51[17] = v53;
  v51[19] = BYTE2(v53);
  *&v51[20] = 0;
  v51[24] = v46[0];
  *&v51[25] = 2;
  v51[27] = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v38 = v15;
  v18(v15, 1, 1, v16);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v20 = *(v19 + 56);
  v18((a6 + v20), 1, 1, v17);
  v21 = v50;
  v56 = v50;
  *v57 = *v51;
  *&v57[12] = *&v51[12];
  v23 = v47;
  v22 = v48;
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v52 = 0;
  *(a6 + 144) = v49;
  *(a6 + 160) = v21;
  *(a6 + 112) = v23;
  *(a6 + 128) = v22;
  v24 = *&v57[16];
  *(a6 + 176) = *v57;
  *(a6 + 192) = v24;
  *(a6 + 208) = 0;
  *(a6 + 220) = 0;
  v39 = a2;
  *a6 = a2;
  *(a6 + 8) = a3;
  v37[1] = a3;
  v25 = v40;
  *(a6 + 16) = v41;
  *(a6 + 24) = v25;
  *(a6 + 32) = 0;
  *(a6 + 72) = 0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  outlined init with copy of TextFieldState(&v47, v46);

  outlined assign with copy of Binding<TextSelection?>?(v15, a6 + v20);
  v26 = v43;
  v28 = v44;
  v27 = v45;
  (*(v43 + 16))(v42, v45, v44);
  v29 = Text.init(_:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  outlined destroy of TextFieldState(&v47);

  (*(v26 + 8))(v27, v28);
  result = outlined destroy of ResolvedTextFieldStyle(v38, type metadata accessor for Binding<TextSelection?>?);
  *(a6 + 40) = v29;
  *(a6 + 48) = v31;
  *(a6 + 56) = v33 & 1;
  *(a6 + 64) = v35;
  return result;
}

uint64_t TextField<>.init<A>(_:text:onEditingChanged:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = a8;
  v39 = a7;
  v37 = a6;
  v40 = a2;
  v41 = a4;
  v45 = a1;
  v44 = a12;
  v43 = a11;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = 1;
  *&v53 = a2;
  *(&v53 + 1) = a3;
  *&v54 = a4;
  *(&v54 + 1) = a5;
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  v22 = v21;

  v42 = a10;

  MEMORY[0x18D00ACC0](&v47, v22);
  v48 = 0u;
  v49 = 0u;
  *&v50 = v37;
  *(&v50 + 1) = a7;
  *v51 = v38;
  *&v51[8] = a10;
  v51[16] = 0;
  *&v51[17] = v53;
  v51[19] = BYTE2(v53);
  *&v51[20] = 0;
  v51[24] = v46[0];
  *&v51[25] = 2;
  v51[27] = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v25(v20, 1, 1, v23);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v27 = *(v26 + 56);
  v25((a9 + v27), 1, 1, v24);
  v28 = v50;
  v56 = v50;
  *v57 = *v51;
  *&v57[12] = *&v51[12];
  v30 = v47;
  v29 = v48;
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v52 = 0;
  *(a9 + 144) = v49;
  *(a9 + 160) = v28;
  *(a9 + 112) = v30;
  *(a9 + 128) = v29;
  v31 = *&v57[16];
  *(a9 + 176) = *v57;
  *(a9 + 192) = v31;
  *(a9 + 208) = 0;
  *(a9 + 220) = 0;
  v32 = v41;
  *a9 = v40;
  *(a9 + 8) = a3;
  *(a9 + 16) = v32;
  *(a9 + 24) = a5;
  *(a9 + 32) = 0;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  outlined init with copy of TextFieldState(&v47, v46);

  outlined assign with copy of Binding<TextSelection?>?(v20, a9 + v27);
  v33 = v45;
  v34 = v43;
  closure #1 in TextField<>.init<A>(_:text:axis:)(v45, a9 + 40);

  outlined destroy of TextFieldState(&v47);
  outlined destroy of ResolvedTextFieldStyle(v20, type metadata accessor for Binding<TextSelection?>?);
  return (*(*(v34 - 8) + 8))(v33, v34);
}

uint64_t closure #1 in TextField<>.init<A>(_:text:axis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TextField(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 & 0xF8 | 7;
  if (*(v10 + 64) <= 0x10uLL)
  {
    v13 = 16;
  }

  else
  {
    v13 = *(v10 + 64);
  }

  v14 = (((v11 & 0xF8) + 23) & ~v12) + v13 + 2;
  v15 = v12 | v7;
  v16 = (v11 | v7) & 0x100000;
  v17 = ((-110 - v12 - ((((((v7 + 33) & ~v7) + v8) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) | v12) - v14;
  v18 = *a2;
  *a1 = *a2;
  if (v15 == 7 && v16 == 0 && v17 >= 0xFFFFFFFFFFFFFFE7)
  {
    v64 = v13 + 2;
    __n = v14;
    v62 = v10;
    v63 = v9;
    v21 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v21;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    v22 = a2 + v7;
    v23 = (a1 + v7 + 33) & ~v7;
    v24 = (v22 + 33) & ~v7;
    v25 = *(v6 + 16);

    v25(v23, v24, v5);
    *(v23 + v8) = *(v24 + v8);
    v26 = (v23 + v8) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v24 + v8) & 0xFFFFFFFFFFFFFFF8;
    if (*(v27 + 32) < 0xFFFFFFFFuLL)
    {
      v31 = *(v27 + 8);
      *(v26 + 24) = *(v27 + 24);
      *(v26 + 8) = v31;
    }

    else
    {
      v28 = *(v27 + 8);
      v29 = *(v27 + 16);
      v30 = *(v27 + 24);
      outlined copy of Text.Storage(v28, v29, v30);
      *(v26 + 8) = v28;
      *(v26 + 16) = v29;
      *(v26 + 24) = v30;
      *(v26 + 32) = *(v27 + 32);
    }

    v32 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v27 + 47) & 0xFFFFFFFFFFFFFFF8;
    v34 = *(v33 + 108);
    v35 = v13;
    if (v34 >= 2)
    {
      v34 = *v33 + 2;
    }

    if (v34 == 1)
    {
      *v32 = *v33;
      *(v32 + 8) = *(v33 + 8);
      *(v32 + 16) = *(v33 + 16);
      *(v32 + 24) = *(v33 + 24);
      v36 = *(v33 + 32);

      if (v36)
      {
        v37 = *(v33 + 40);
        *(v32 + 32) = v36;
        *(v32 + 40) = v37;
        v38 = *(v33 + 56);
        *(v32 + 48) = *(v33 + 48);
        *(v32 + 56) = v38;
      }

      else
      {
        v42 = *(v33 + 48);
        *(v32 + 32) = *(v33 + 32);
        *(v32 + 48) = v42;
      }

      v43 = *(v33 + 64);
      if (v43)
      {
        v44 = *(v33 + 72);
        *(v32 + 64) = v43;
        *(v32 + 72) = v44;
        v45 = *(v33 + 88);
        *(v32 + 80) = *(v33 + 80);
        *(v32 + 88) = v45;
      }

      else
      {
        v50 = *(v33 + 80);
        *(v32 + 64) = *(v33 + 64);
        *(v32 + 80) = v50;
      }

      *(v32 + 96) = *(v33 + 96);
      v51 = *(v33 + 100);
      *(v32 + 104) = *(v33 + 104);
      *(v32 + 100) = v51;
      *(v32 + 105) = *(v33 + 105);
      *(v32 + 106) = *(v33 + 106);
      *(v32 + 107) = *(v33 + 107);
      *(v32 + 108) = 1;
    }

    else
    {
      *v32 = *v33;
      *(v32 + 8) = *(v33 + 8);
      v39 = *(v33 + 16);

      if (v39)
      {
        v40 = *(v33 + 24);
        *(v32 + 16) = v39;
        *(v32 + 24) = v40;
        v41 = *(v33 + 40);
        *(v32 + 32) = *(v33 + 32);
        *(v32 + 40) = v41;
      }

      else
      {
        v46 = *(v33 + 32);
        *(v32 + 16) = *(v33 + 16);
        *(v32 + 32) = v46;
      }

      v47 = *(v33 + 48);
      if (v47)
      {
        v48 = *(v33 + 56);
        *(v32 + 48) = v47;
        *(v32 + 56) = v48;
        v49 = *(v33 + 72);
        *(v32 + 64) = *(v33 + 64);
        *(v32 + 72) = v49;
      }

      else
      {
        v52 = *(v33 + 64);
        *(v32 + 48) = *(v33 + 48);
        *(v32 + 64) = v52;
      }

      *(v32 + 80) = *(v33 + 80);
      v53 = *(v33 + 84);
      *(v32 + 88) = *(v33 + 88);
      *(v32 + 84) = v53;
      *(v32 + 89) = *(v33 + 89);
      *(v32 + 90) = *(v33 + 90);
      *(v32 + 91) = *(v33 + 91);
      *(v32 + 96) = *(v33 + 96);
      *(v32 + 108) = 0;
    }

    v54 = ((v32 + 116) & 0xFFFFFFFFFFFFFFF8);
    v55 = ((v33 + 116) & 0xFFFFFFFFFFFFFFF8);
    v56 = ((v55 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (*v56 < 0xFFFFFFFFuLL)
    {
      memcpy(v54, v55, __n);
    }

    else
    {
      *v54 = *v55;
      *((v54 + 15) & 0xFFFFFFFFFFFFFFF8) = *v56;
      v57 = ((v54 + 23) & 0xFFFFFFFFFFFFFFF8);
      v58 = ((v55 + 23) & 0xFFFFFFFFFFFFFFF8);
      v59 = *(v58 + v35);

      if (v59 > 1)
      {
        memcpy(v57, v58, v64);
      }

      else
      {
        if (v59 == 1)
        {
          (*(v62 + 16))(v57, v58, v63);
          v60 = 1;
        }

        else
        {
          v60 = 0;
          *v57 = *v58;
        }

        *(v57 + v35) = v60;
        *(v57 + v35 + 1) = *(v58 + v35 + 1);
      }
    }
  }

  else
  {
    a1 = v18 + ((v15 + 16) & ~v15);
  }

  return a1;
}

uint64_t initializeWithTake for TextField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (v7 + 33 + a1) & ~v7;
  v9 = (v7 + 33 + a2) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32);
  v11 = v10 + v8;
  v12 = v10 + v9;
  *v11 = *v12;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 &= 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  *(v11 + 24) = *(v12 + 24);
  *(v11 + 8) = v13;
  v14 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 108);
  if (v16 >= 2)
  {
    v16 = *v15 + 2;
  }

  if (v16 == 1)
  {
    v17 = *v15;
    v18 = *(v15 + 32);
    *(v14 + 16) = *(v15 + 16);
    *(v14 + 32) = v18;
    *v14 = v17;
    v19 = *(v15 + 48);
    v20 = *(v15 + 64);
    v21 = *(v15 + 80);
    *(v14 + 92) = *(v15 + 92);
  }

  else
  {
    LOBYTE(v16) = 0;
    v22 = *v15;
    v23 = *(v15 + 32);
    *(v14 + 16) = *(v15 + 16);
    *(v14 + 32) = v23;
    *v14 = v22;
    v19 = *(v15 + 48);
    v20 = *(v15 + 64);
    v21 = *(v15 + 80);
    *(v14 + 96) = *(v15 + 96);
  }

  *(v14 + 64) = v20;
  *(v14 + 80) = v21;
  *(v14 + 48) = v19;
  *(v14 + 108) = v16;
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v25 = *(v24 - 8);
  v26 = *(v25 + 80) & 0xF8 | 7;
  v27 = ~v26;
  v28 = ((v14 + v26 + 109) & ~v26);
  v29 = ((v15 + v26 + 109) & ~v26);
  if (*(v25 + 64) <= 0x10uLL)
  {
    v30 = 16;
  }

  else
  {
    v30 = *(v25 + 64);
  }

  v31 = v30 + 2;
  v32 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v32 < 0xFFFFFFFFuLL)
  {
    v31 += (v26 + 16) & v27;
    v38 = ((v14 + v26 + 109) & ~v26);
LABEL_16:
    memcpy(v38, v29, v31);
    return a1;
  }

  *v28 = *v29;
  v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v32;
  v34 = v26 + 8;
  v35 = ((v33 + v34) & v27);
  v36 = ((v32 + v34) & v27);
  v37 = *(v36 + v30);
  if (v37 > 1)
  {
    v38 = v35;
    v29 = ((v32 + v34) & v27);
    goto LABEL_16;
  }

  if (v37 == 1)
  {
    (*(v25 + 32))(v35, (v32 + v34) & v27, v24);
    v39 = 1;
  }

  else
  {
    v39 = 0;
    *v35 = *v36;
  }

  *(v35 + v30) = v39;
  *(v35 + v30 + 1) = *(v36 + v30 + 1);
  return a1;
}

uint64_t assignWithTake for TextField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v9 + 33 + a1) & ~v9;
  v11 = (v9 + 33 + a2) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24);
  v13 = v12 + v10;
  v14 = v12 + v11;
  *v13 = *v14;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  if (*((v13 & 0xFFFFFFFFFFFFFFF8) + 32) >= 0xFFFFFFFFuLL)
  {
    if (*(v16 + 32) >= 0xFFFFFFFFuLL)
    {
      v17 = *(v16 + 24);
      v18 = *(v15 + 8);
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);
      *(v15 + 8) = *(v16 + 8);
      *(v15 + 24) = v17;
      outlined consume of Text.Storage(v18, v19, v20);
      *(v15 + 32) = *(v16 + 32);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*(v15 + 8), *(v15 + 16), *(v15 + 24));
  }

  v21 = *(v16 + 8);
  *(v15 + 24) = *(v16 + 24);
  *(v15 + 8) = v21;
LABEL_6:
  v22 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  if (v22 == v23)
  {
    goto LABEL_26;
  }

  v24 = *(v22 + 108);
  if (v24 >= 2)
  {
    v24 = *v22 + 2;
  }

  if (v24 == 1)
  {

    if (*(v22 + 32))
    {
    }

    if (!*(v22 + 64))
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (*(v22 + 16))
    {
    }

    if (!*(v22 + 48))
    {
      goto LABEL_19;
    }
  }

LABEL_19:

LABEL_20:
  v25 = *(v23 + 108);
  if (v25 >= 2)
  {
    v25 = *v23 + 2;
  }

  if (v25 == 1)
  {
    v26 = *v23;
    v27 = *(v23 + 32);
    *(v22 + 16) = *(v23 + 16);
    *(v22 + 32) = v27;
    *v22 = v26;
    v28 = *(v23 + 48);
    v29 = *(v23 + 64);
    v30 = *(v23 + 80);
    *(v22 + 92) = *(v23 + 92);
  }

  else
  {
    LOBYTE(v25) = 0;
    v31 = *v23;
    v32 = *(v23 + 32);
    *(v22 + 16) = *(v23 + 16);
    *(v22 + 32) = v32;
    *v22 = v31;
    v28 = *(v23 + 48);
    v29 = *(v23 + 64);
    v30 = *(v23 + 80);
    *(v22 + 96) = *(v23 + 96);
  }

  *(v22 + 64) = v29;
  *(v22 + 80) = v30;
  *(v22 + 48) = v28;
  *(v22 + 108) = v25;
LABEL_26:
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v34 = *(v33 - 8);
  v35 = *(v34 + 80) & 0xF8;
  v36 = v35 | 7;
  v37 = ~(v35 | 7);
  v38 = ((v22 + (v35 | 7) + 109) & v37);
  v39 = ((v23 + (v35 | 7) + 109) & v37);
  if (*(v34 + 64) <= 0x10uLL)
  {
    v40 = 16;
  }

  else
  {
    v40 = *(v34 + 64);
  }

  v41 = (v35 + 23) & ~v36;
  v42 = v40 + 1;
  v43 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  v44 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  v45 = *v44;
  if (*v43 >= 0xFFFFFFFFuLL)
  {
    v59 = v33;
    v60 = *(v33 - 8);
    if (v45 >= 0xFFFFFFFF)
    {
      *v38 = *v39;

      *v43 = *v44;

      v46 = ((v43 + v36 + 8) & v37);
      v47 = ((v44 + v36 + 8) & v37);
      v48 = v46[v40];
      v49 = v47[v40];
      if (v48 > 1)
      {
        if (v49 <= 1)
        {
          if (v49 == 1)
          {
            (*(v60 + 32))((v43 + v36 + 8) & v37, (v44 + v36 + 8) & v37, v59);
LABEL_68:
            v57 = 1;
LABEL_70:
            v46[v40] = v57;
            goto LABEL_71;
          }

LABEL_69:
          v57 = 0;
          *v46 = *v47;
          goto LABEL_70;
        }
      }

      else
      {
        v50 = v60;
        if (v49 <= 1)
        {
          if (v46 == v47)
          {
LABEL_71:
            v46[v40 + 1] = v47[v40 + 1];
            return a1;
          }

          if (v48 == 1)
          {
            (*(v60 + 8))((v43 + v36 + 8) & v37, v59);
            v49 = v47[v40];
            v51 = v49 - 2;
            if (v49 < 2)
            {
              v50 = v60;
              goto LABEL_66;
            }

            if (v40 <= 3)
            {
              v52 = v40;
            }

            else
            {
              v52 = 4;
            }

            if (v52 <= 1)
            {
              v50 = v60;
              if (!v52)
              {
                goto LABEL_66;
              }

              v53 = *v47;
            }

            else
            {
              if (v52 == 2)
              {
                v53 = *v47;
              }

              else if (v52 == 3)
              {
                v53 = *v47 | (*(((v44 + v36 + 8) & v37) + 2) << 16);
              }

              else
              {
                v53 = *v47;
              }

              v50 = v60;
            }

            v56 = (v53 | (v51 << (8 * v40))) + 2;
            v49 = v53 + 2;
            if (v40 < 4)
            {
              v49 = v56;
            }
          }

LABEL_66:
          if (v49 == 1)
          {
            (*(v50 + 32))((v43 + v36 + 8) & v37, (v44 + v36 + 8) & v37, v59);
            goto LABEL_68;
          }

          goto LABEL_69;
        }

        if (v48 == 1)
        {
          (*(v60 + 8))((v43 + v36 + 8) & v37, v59);
        }
      }

      goto LABEL_56;
    }

    if (*(((v43 + v36 + 8) & v37) + v40) == 1)
    {
      (*(v60 + 8))();
    }

    goto LABEL_50;
  }

  if (v45 < 0xFFFFFFFF)
  {
LABEL_50:
    memcpy(v38, v39, v41 + v40 + 2);
    return a1;
  }

  *v38 = *v39;
  *v43 = *v44;
  v46 = ((v43 + v36 + 8) & v37);
  v47 = ((v44 + v36 + 8) & v37);
  v54 = v47[v40];
  if (v54 > 1)
  {
LABEL_56:
    memcpy(v46, v47, v40 + 2);
    return a1;
  }

  if (v54 == 1)
  {
    (*(v34 + 32))((v43 + v36 + 8) & v37, (v44 + v36 + 8) & v37, v33);
    v42 = v40 + 1;
    v55 = 1;
  }

  else
  {
    v55 = 0;
    *v46 = *v47;
  }

  v46[v40] = v55;
  v46[v42] = v47[v42];
  return a1;
}

uint64_t getEnumTagSinglePayload for TextField(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v10 = *(v9 - 8);
  v11 = *(v6 + 80);
  v12 = *(v10 + 80);
  v13 = *(v10 + 64);
  if (v13 <= 0x10)
  {
    v13 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v14 = -(((-17 - (v12 & 0xF8 | 7)) | v12 & 0xF8 | 7) - v13 + ((((((-34 - v11) | v11) - *(v6 + 64)) | 7) - (v12 & 0xF8 | 7) - 152) | v12 & 0xF8 | 7));
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v8 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v18 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v21 = *(v6 + 48);

        return v21((a1 + v11 + 33) & ~v11, v7, v5);
      }

      else
      {
        v20 = *(a1 + 1);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_28;
  }

LABEL_17:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v8 + (v14 | v19) + 1;
}

void storeEnumTagSinglePayload for TextField(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v12 + 80) & 0xF8 | 7;
  v15 = *(v12 + 64);
  if (v15 <= 0x10)
  {
    v15 = 16;
  }

  v16 = -(((-17 - v14) | v14) - v15 + ((((((-34 - v13) | v13) - *(v8 + 64)) | 7) - v14 - 152) | v14));
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
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

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
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
LABEL_48:
              if (v17 == 2)
              {
                *(a1 + v16) = v19;
              }

              else
              {
                *(a1 + v16) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v22;
        *(a1 + 2) = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v17)
    {
      *(a1 + v16) = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v16) = 0;
  }

  else if (v17)
  {
    *(a1 + v16) = 0;
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
  if ((v9 & 0x80000000) != 0)
  {
    v23 = *(v24 + 56);

    v23((a1 + v13 + 33) & ~v13, a2, v9, v7);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t assignWithCopy for TextFieldState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = (a1 + 16);
  v6 = (a2 + 16);
  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v5)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;

      v8 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v8;
    }

    else
    {
      outlined destroy of TextFieldState.FormatActions(a1 + 16);
      v11 = *(a2 + 32);
      *v4 = *v6;
      *(a1 + 32) = v11;
    }
  }

  else if (v5)
  {
    v9 = *(a2 + 24);
    *(a1 + 16) = v5;
    *(a1 + 24) = v9;
    v10 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v10;
  }

  else
  {
    v12 = *(a2 + 32);
    *v4 = *v6;
    *(a1 + 32) = v12;
  }

  v13 = (a1 + 48);
  v15 = (a2 + 48);
  v14 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v14)
    {
      v16 = *(a2 + 56);
      *(a1 + 48) = v14;
      *(a1 + 56) = v16;

      v17 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v17;
    }

    else
    {
      outlined destroy of TextFieldState.FormatActions(a1 + 48);
      v20 = *(a2 + 64);
      *v13 = *v15;
      *(a1 + 64) = v20;
    }
  }

  else if (v14)
  {
    v18 = *(a2 + 56);
    *(a1 + 48) = v14;
    *(a1 + 56) = v18;
    v19 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v19;
  }

  else
  {
    v21 = *(a2 + 64);
    *v13 = *v15;
    *(a1 + 64) = v21;
  }

  *(a1 + 80) = *(a2 + 80);
  v22 = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 84) = v22;
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 91) = *(a2 + 91);
  return a1;
}