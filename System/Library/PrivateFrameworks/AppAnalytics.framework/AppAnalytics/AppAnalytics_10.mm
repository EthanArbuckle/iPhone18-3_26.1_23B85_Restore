void sub_1B6A616BC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  if (v5 <= 0x3F)
  {
    sub_1B6A622CC();
    v6 = a1[5];
    swift_getAssociatedTypeWitness();
    v7 = a1[6];
    v8 = a1[7];
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    swift_getAssociatedTypeWitness();
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    swift_getAssociatedTypeWitness();
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    swift_getTupleTypeMetadata3();
    sub_1B6AB9B30();
    swift_getTupleTypeMetadata3();
    sub_1B6AB95D0();
    v10 = v9;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (v12 <= 0x3F)
    {
      MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
      sub_1B6AB9B30();
      sub_1B69AC828();
      sub_1B6ABA280();
      sub_1B6AB9740();
      swift_getTupleTypeMetadata();
      if (v13 <= 0x3F && v10 <= 0x3F)
      {
        sub_1B6A25A14();
        if (v14 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B6A619F4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[5];
  v5 = *(a3[4] - 8);
  v6 = *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v6;
  }

  v35 = v6 + ((((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = a3[6];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  v12 = a3[7];
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 80);
  v16 = v15 | 7;
  v17 = ((v8 + 8) & ~v8) + (v11 | 7) + *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v17;
  }

  v18 = (v17 + 1) & ~(v11 | 7);
  v19 = ((v11 + 8) & ~v11) + v16 + *(v10 + 64);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = (v19 + v18 + 1) & ~v16;
  v21 = ((v15 + 8) & ~v15) + *(v13 + 64) + (((v11 | v8 | v15) & 0xF8 ^ 0x1F8) & ((v11 | v8 | v15) + 8));
  if (!*(v14 + 84))
  {
    ++v21;
  }

  v22 = (v21 + v20 + 8) & 0xFFFFFFFFFFFFFFF8;
  v23 = v22 + 8;
  if (v22 + 8 <= v35)
  {
    v23 = v35;
  }

  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v24 <= v23)
  {
    v24 = v23;
  }

  v25 = 8;
  if (v24 > 8)
  {
    v25 = v24;
  }

  v26 = 250 - (1u >> (8 * v25));
  if (v25 > 3)
  {
    v26 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v26 >= a2)
  {
    goto LABEL_39;
  }

  v27 = v25 + 1;
  v28 = 8 * (v25 + 1);
  if ((v25 + 1) <= 3)
  {
    v31 = ((~(-1 << v28) + a2 - v26) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v31 < 2)
    {
LABEL_39:
      v33 = *(a1 + v25);
      if (v26 <= (v33 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v33);
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_39;
  }

LABEL_28:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 > 3)
    {
      LODWORD(v27) = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        LODWORD(v27) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v27) = *a1;
      }
    }

    else if (v27 == 1)
    {
      LODWORD(v27) = *a1;
    }

    else
    {
      LODWORD(v27) = *a1;
    }
  }

  return v26 + (v27 | v32) + 1;
}

void sub_1B6A61E2C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[5];
  v6 = *(a4[4] - 8);
  v7 = *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v37 = v7 + ((((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v6 + 80)) & ~*(v6 + 80));
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = a4[6];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 80);
  v13 = a4[7];
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = v16 | 7;
  v18 = ((v9 + 8) & ~v9) + (v12 | 7) + *(v8 + 64);
  if (!*(v8 + 84))
  {
    ++v18;
  }

  v19 = (v18 + 1) & ~(v12 | 7);
  v20 = ((v12 + 8) & ~v12) + v17 + *(v11 + 64);
  if (!*(v11 + 84))
  {
    ++v20;
  }

  v21 = (v20 + v19 + 1) & ~v17;
  v22 = ((v16 + 8) & ~v16) + *(v14 + 64) + (((v12 | v9 | v16) & 0xF8 ^ 0x1F8) & ((v12 | v9 | v16) + 8));
  if (!*(v15 + 84))
  {
    ++v22;
  }

  v23 = (v22 + v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  v24 = v23 + 8;
  if (v23 + 8 <= v37)
  {
    v24 = v37;
  }

  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v25 <= v24)
  {
    v25 = v24;
  }

  if (v25 <= 8)
  {
    v25 = 8;
  }

  v26 = 250 - (1u >> (8 * v25));
  if (v25 > 3)
  {
    v26 = 250;
  }

  v27 = v25 + 1;
  if (v26 >= a3)
  {
    v28 = 0;
  }

  else
  {
    v28 = 1;
    if (v27 <= 3)
    {
      v29 = ((~(-1 << (8 * v27)) + a3 - v26) >> (8 * v27)) + 1;
      v30 = HIWORD(v29);
      if (v29 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v29 >= 2)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      if (v30)
      {
        v28 = 4;
      }

      else
      {
        v28 = v32;
      }
    }
  }

  if (v26 >= a2)
  {
    if (v28 > 1)
    {
      if (v28 != 2)
      {
        *&a1[v27] = 0;
        if (!a2)
        {
          return;
        }

LABEL_45:
        a1[v25] = -a2;
        return;
      }

      *&a1[v27] = 0;
    }

    else if (v28)
    {
      a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  v33 = ~v26 + a2;
  if (v27 >= 4)
  {
    bzero(a1, v27);
    *a1 = v33;
    v34 = 1;
    if (v28 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v34 = (v33 >> (8 * v27)) + 1;
  if (v25 == -1)
  {
LABEL_49:
    if (v28 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v35 = v33 & ~(-1 << (8 * v27));
  bzero(a1, v27);
  if (v27 == 3)
  {
    *a1 = v35;
    a1[2] = BYTE2(v35);
    goto LABEL_49;
  }

  if (v27 == 2)
  {
    *a1 = v35;
    if (v28 > 1)
    {
LABEL_53:
      if (v28 == 2)
      {
        *&a1[v27] = v34;
      }

      else
      {
        *&a1[v27] = v34;
      }

      return;
    }
  }

  else
  {
    *a1 = v33;
    if (v28 > 1)
    {
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v28)
  {
    a1[v27] = v34;
  }
}

void sub_1B6A622CC()
{
  if (!qword_1EB95BDD0[0])
  {
    v0 = sub_1B6AB9720();
    if (!v1)
    {
      atomic_store(v0, qword_1EB95BDD0);
    }
  }
}

void sub_1B6A62350(uint64_t a1)
{
  sub_1B6A6C98C(319, qword_1EB95BE58, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 40);
    sub_1B6AB9B30();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B6A623FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 40) - 8) + 64) + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      if (v6 > 0x7FFFFFFE)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        if ((v17 + 1) >= 2)
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
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

void sub_1B6A625CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 40) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 40) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 8) & ~v11) + 1;
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
      if (v12 + ((v11 + 8) & ~v11) != -1)
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
LABEL_62:
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
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
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
  if (v9 > 0x7FFFFFFE)
  {
    v21 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;

      v25(v21, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t sub_1B6A628D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(TupleTypeMetadata3 + 48);
  v16 = *(TupleTypeMetadata3 + 64);
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  (*(*(a5 - 8) + 32))(a7 + v15, a2, a5);
  v17 = *(v13 - 8);
  (*(v17 + 16))(a7 + v16, a3, v13);
  type metadata accessor for CombineLatestStateMachine.State();
  swift_storeEnumTagMultiPayload();
  v18 = (*(*(a6 - 8) + 48))(a3, 1, a6);
  (*(v17 + 8))(a3, v13);
  result = type metadata accessor for CombineLatestStateMachine();
  if (v18 == 1)
  {
    v20 = 2;
  }

  else
  {
    v20 = 3;
  }

  *(a7 + *(result + 68)) = v20;
  return result;
}

uint64_t sub_1B6A62B00(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a1[6];
  v7 = a1[7];
  v87 = AssociatedTypeWitness;
  v9 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v86 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v94 = v3;
  v95 = v2;
  v96 = v4;
  v97 = swift_getAssociatedTypeWitness();
  v85 = v97;
  v98 = v5;
  v99 = v8;
  v100 = v7;
  v92 = v9;
  v88 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v89 = v10;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v90 = *(TupleTypeMetadata3 - 8);
  v91 = TupleTypeMetadata3;
  v12 = *(v90 + 64);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v75 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v75 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v75 - v22;
  v94 = v3;
  v95 = v2;
  v96 = v4;
  v97 = v5;
  v98 = v8;
  v99 = v7;
  v24 = type metadata accessor for CombineLatestStateMachine.State();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v75 - v27;
  (*(v25 + 16))(v75 - v27, v93, v24);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v81 = v15;
    v82 = v18;
    v83 = v21;
    v84 = v23;
    v31 = v92;
    if (!result)
    {
LABEL_13:
      v68 = sub_1B6AB9B30();
      v69 = swift_getTupleTypeMetadata3();
      v70 = *(v69 + 48);
      (*(*(v68 - 8) + 8))(&v28[*(v69 + 64)], v68);
      (*(*(v2 - 8) + 8))(&v28[v70], v2);
      (*(*(v3 - 8) + 8))(v28, v3);
      return 0;
    }

    if (result != 1)
    {
      __break(1u);
      return result;
    }

    v80 = *v28;
    sub_1B6A622CC();
    sub_1B6AB9B30();
    swift_getTupleTypeMetadata3();
    sub_1B6AB95D0();
    v32 = v91;
    v33 = swift_getTupleTypeMetadata3();
    v34 = *(v33 + 48);
    v35 = *&v28[*(v33 + 64)];

    v36 = v90;
    v37 = v84;
    (*(v90 + 32))(v84, &v28[v34], v32);
    (*(v25 + 8))(v93, v24);
    swift_storeEnumTagMultiPayload();
    v38 = *(v36 + 16);
    v39 = v83;
    v38(v83, v37, v32);
    v40 = *(v32 + 48);
    v85 = *(v32 + 64);
    v86 = *v39;
    v87 = v40;
    v41 = *(v31 - 8);
    v77 = *(v41 + 8);
    v78 = v41 + 8;
    v42 = v39;
    v43 = v31;
    v77(v42, v31);
    v44 = v82;
    v38(v82, v37, v32);
    v45 = *(v32 + 48);
    v76 = *(v32 + 64);
    v93 = *&v44[v45];
    v46 = v89;
    v47 = *(v89 - 8);
    v48 = *(v47 + 8);
    v75[1] = v47 + 8;
    v48(&v44[v45], v89);
    v49 = v81;
    v38(v81, v37, v32);
    v50 = *(v32 + 48);
    v51 = *(v32 + 64);
    v79 = *&v49[v51];
    v52 = v88;
    v53 = *(*(v88 - 8) + 8);
    v53(&v49[v51], v88);
    v48(&v49[v50], v46);
    v54 = v49;
    v55 = v77;
    v77(v54, v43);
    v53(&v44[v76], v52);
    v55(v44, v43);
    v56 = v83;
    v53(v83 + v85, v52);
    v57 = v46;
    v58 = v86;
    v48(v56 + v87, v57);
    if (v58)
    {
      v59 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      if (v61 >= v60 >> 1)
      {
        v59 = sub_1B69E36B0((v60 > 1), v61 + 1, 1, v59);
      }

      v63 = v90;
      v62 = v91;
      v64 = v84;
      v65 = v93;
      v66 = v79;
      *(v59 + 2) = v61 + 1;
      *&v59[8 * v61 + 32] = v58;
      if (!v65)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v59 = MEMORY[0x1E69E7CC0];
      v63 = v90;
      v62 = v91;
      v64 = v84;
      v65 = v93;
      v66 = v79;
      if (!v93)
      {
LABEL_21:
        if (v66)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_1B69E36B0(0, *(v59 + 2) + 1, 1, v59);
          }

          v74 = *(v59 + 2);
          v73 = *(v59 + 3);
          if (v74 >= v73 >> 1)
          {
            v59 = sub_1B69E36B0((v73 > 1), v74 + 1, 1, v59);
          }

          *(v59 + 2) = v74 + 1;
          *&v59[8 * v74 + 32] = v66;
        }

        (*(v63 + 8))(v64, v62);
        return v80;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1B69E36B0(0, *(v59 + 2) + 1, 1, v59);
    }

    v72 = *(v59 + 2);
    v71 = *(v59 + 3);
    if (v72 >= v71 >> 1)
    {
      v59 = sub_1B69E36B0((v71 > 1), v72 + 1, 1, v59);
    }

    *(v59 + 2) = v72 + 1;
    *&v59[8 * v72 + 32] = v65;
    goto LABEL_21;
  }

  if ((result - 3) < 2)
  {
    v30 = *(v25 + 8);
    v30(v28, v24);
    v30(v93, v24);
    swift_storeEnumTagMultiPayload();
    return 0;
  }

  v67 = result == 5;
  result = 0;
  if (!v67)
  {
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1B6A63368@<X0>(char *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v148 = a3;
  v142 = a1;
  v150 = a2[5];
  v4 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a2[6];
  v7 = a2[3];
  v8 = swift_getAssociatedTypeWitness();
  v9 = a2[7];
  v10 = a2[4];
  v11 = swift_getAssociatedTypeWitness();
  v129 = sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v141 = sub_1B6AB9B30();
  v127 = *(v141 - 8);
  v13 = *(v127 + 64);
  v14 = MEMORY[0x1EEE9AC00](v141);
  v134 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v135 = &v122 - v17;
  v138 = TupleTypeMetadata3;
  v137 = *(TupleTypeMetadata3 - 8);
  v18 = *(v137 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v125 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v128 = &v122 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v122 - v23;
  v152 = v4;
  v153 = v7;
  v154 = v10;
  v155 = AssociatedTypeWitness;
  v131 = AssociatedTypeWitness;
  v24 = v150;
  v156 = v150;
  v157 = v6;
  v158 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v152 = v4;
  v153 = v7;
  v154 = v10;
  v155 = v8;
  v130 = v8;
  v156 = v24;
  v157 = v6;
  v25 = v24;
  v158 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v152 = v4;
  v153 = v7;
  v154 = v10;
  v155 = v11;
  v156 = v24;
  v157 = v6;
  v158 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v140 = swift_getTupleTypeMetadata3();
  v143 = *(v140 - 8);
  v26 = v143[8];
  MEMORY[0x1EEE9AC00](v140);
  v136 = &v122 - v27;
  v28 = sub_1B6AB9B30();
  v133 = *(v28 - 8);
  v29 = *(v133 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v122 - v31;
  v132 = *(v7 - 8);
  v33 = *(v132 + 8);
  v34 = MEMORY[0x1EEE9AC00](v30);
  v36 = &v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = *(v4 - 1);
  v37 = v139[8];
  MEMORY[0x1EEE9AC00](v34);
  v39 = (&v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = v10;
  v145 = v4;
  v152 = v4;
  v153 = v7;
  v40 = v7;
  v154 = v10;
  v155 = v25;
  v146 = v9;
  v147 = v6;
  v156 = v6;
  v157 = v9;
  v41 = type metadata accessor for CombineLatestStateMachine.State();
  v42 = *(v41 - 8);
  v43 = *(v42 + 8);
  MEMORY[0x1EEE9AC00](v41);
  v45 = (&v122 - v44);
  (*(v42 + 2))(&v122 - v44, v149, v41);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v55 = v139;
    v125 = v32;
    v134 = v42;
    v56 = v143;
    if (!result)
    {
      v85 = v40;
      v86 = v145;
      v87 = swift_getTupleTypeMetadata3();
      v88 = *(v87 + 48);
      v142 = *(v87 + 64);
      v149 = v55[4];
      v123 = v39;
      v149(v39, v45, v86);
      v89 = v148;
      v143 = *(v132 + 4);
      v122 = v36;
      (v143)(v36, v45 + v88, v85);
      v90 = *(v133 + 32);
      v91 = v125;
      v90(v125, &v142[v45], v28);
      v92 = swift_getTupleTypeMetadata3();
      v93 = *(v92 + 48);
      v142 = *(v92 + 64);
      v149(v89, v123, v86);
      (v143)(v89 + v93, v122, v85);
      v90(&v142[v89], v91, v28);
      v152 = v86;
      v153 = v85;
      v154 = v144;
      v155 = v150;
      v156 = v147;
      v157 = v146;
      type metadata accessor for CombineLatestStateMachine.NextAction();
      return swift_storeEnumTagMultiPayload();
    }

    v124 = v40;
    if (result == 1)
    {
      v132 = *v45;
      sub_1B6A622CC();
      v58 = v57;
      v59 = v138;
      v60 = sub_1B6AB95D0();
      v125 = v58;
      v61 = v140;
      v62 = swift_getTupleTypeMetadata3();
      v63 = *(v62 + 48);
      v123 = v62;
      v64 = *(v45 + *(v62 + 64));
      v65 = v136;
      v133 = v56[4];
      v143 = v56 + 4;
      (v133)(v136, v45 + v63, v61);
      v151 = v64;
      v67 = v134 + 8;
      v66 = *(v134 + 1);

      v68 = v149;
      v139 = v66;
      (v66)(v149, v41);
      swift_storeEnumTagMultiPayload();
      v152 = v64;
      swift_getWitnessTable();
      v69 = v135;
      sub_1B6AB9820();
      v70 = v137;
      v71 = v59;
      if ((*(v137 + 48))(v69, 1, v59) == 1)
      {
        v138 = v60;
        v134 = v67;
        (*(v127 + 8))(v69, v141);

        v72 = *v65;
        v137 = *(v140 + 48);
        v73 = *(v65 + v137);
        v135 = *(v140 + 64);
        v74 = *&v135[v65];
        v75 = v64;
        if (v72)
        {
          v76 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v78 = *(v76 + 2);
          v77 = *(v76 + 3);
          if (v78 >= v77 >> 1)
          {
            v76 = sub_1B69E36B0((v77 > 1), v78 + 1, 1, v76);
          }

          v79 = v139;
          v80 = v73;
          *(v76 + 2) = v78 + 1;
          *&v76[8 * v78 + 32] = v72;
          v81 = v136;
          v75 = v64;
        }

        else
        {
          v81 = v65;
          v76 = MEMORY[0x1E69E7CC0];
          v79 = v139;
          v80 = v73;
        }

        v108 = v138;
        if (v80)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = sub_1B69E36B0(0, *(v76 + 2) + 1, 1, v76);
          }

          v110 = *(v76 + 2);
          v109 = *(v76 + 3);
          if (v110 >= v109 >> 1)
          {
            v76 = sub_1B69E36B0((v109 > 1), v110 + 1, 1, v76);
          }

          *(v76 + 2) = v110 + 1;
          *&v76[8 * v110 + 32] = v80;
        }

        if (v74)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = sub_1B69E36B0(0, *(v76 + 2) + 1, 1, v76);
          }

          v112 = *(v76 + 2);
          v111 = *(v76 + 3);
          if (v112 >= v111 >> 1)
          {
            v76 = sub_1B69E36B0((v111 > 1), v112 + 1, 1, v76);
          }

          v113 = v108;
          *(v76 + 2) = v112 + 1;
          *&v76[8 * v112 + 32] = v74;
        }

        else
        {
          v113 = v108;
        }

        v114 = v81;
        *v81 = 0;
        *(v81 + v137) = 0;
        *&v135[v81] = 0;
        v115 = v149;
        v116 = v79(v149, v41);
        MEMORY[0x1EEE9AC00](v116);
        strcpy(&v122 - 64, "task upstreams downstreamContinuation buffer ");
        v117 = v140;
        v152 = v125;
        v153 = v140;
        sub_1B69AC828();
        sub_1B6ABA280();
        v154 = sub_1B6AB9740();
        v155 = v113;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v119 = TupleTypeMetadata[12];
        v120 = TupleTypeMetadata[16];
        v121 = TupleTypeMetadata[20];
        *v115 = v132;
        (v133)(v115 + v119, v114, v117);
        *(v115 + v120) = v142;
        *(v115 + v121) = v75;
        swift_storeEnumTagMultiPayload();
        *v148 = v76;
        v152 = v145;
        v153 = v124;
        v154 = v144;
        v155 = v150;
        v156 = v147;
        v157 = v146;
        type metadata accessor for CombineLatestStateMachine.NextAction();
      }

      else
      {
        v100 = *(v70 + 32);
        v134 = (v70 + 32);
        v100(v126, v69, v59);

        swift_getWitnessTable();
        v101 = v70;
        v102 = v128;
        sub_1B6AB9850();
        v103 = *(v59 + 48);
        (*(*(v129 - 8) + 8))(&v102[*(v59 + 64)]);
        (*(*(v130 - 8) + 8))(&v102[v103]);
        (*(*(v131 - 8) + 8))(v102);
        (v139)(v68, v41);
        v104 = *(v123 + 12);
        v105 = *(v123 + 16);
        *v68 = v132;
        (v133)(v68 + v104, v65, v140);
        *(v68 + v105) = v151;
        swift_storeEnumTagMultiPayload();
        sub_1B69AC828();
        sub_1B6ABA280();
        sub_1B6AB9740();
        v106 = *(swift_getTupleTypeMetadata2() + 48);
        v107 = v148;
        *v148 = v142;
        v100(v107 + v106, v126, v71);
        (*(v101 + 56))(v107 + v106, 0, 1, v71);
        swift_storeEnumTagMultiPayload();
        v152 = v145;
        v153 = v124;
        v154 = v144;
        v155 = v150;
        v156 = v147;
        v157 = v146;
        type metadata accessor for CombineLatestStateMachine.NextAction();
      }

      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v151 = *v45;
        v47 = v151;
        v48 = *(v42 + 1);

        v49 = v149;
        (v48)(v149, v41);
        swift_storeEnumTagMultiPayload();
        v152 = v47;
        v50 = v138;
        sub_1B6AB95D0();
        swift_getWitnessTable();
        v51 = v134;
        sub_1B6AB9820();
        v52 = v137;
        if ((*(v137 + 48))(v51, 1, v50) == 1)
        {

          (*(v127 + 8))(v51, v141);

          (v48)(v49, v41);
          swift_storeEnumTagMultiPayload();
          v53 = v148;
          v54 = v142;
LABEL_15:
          *v53 = v54;
          v152 = v145;
          v153 = v40;
          v154 = v144;
          v155 = v150;
          v156 = v147;
          v157 = v146;
          type metadata accessor for CombineLatestStateMachine.NextAction();
          return swift_storeEnumTagMultiPayload();
        }

        v124 = v40;
        v94 = *(v52 + 32);
        v143 = v48;
        v94(v125, v51, v50);

        swift_getWitnessTable();
        v95 = v52;
        v96 = v128;
        sub_1B6AB9850();
        v97 = *(v50 + 48);
        (*(*(v129 - 8) + 8))(&v96[*(v50 + 64)]);
        (*(*(v130 - 8) + 8))(&v96[v97]);
        (*(*(v131 - 8) + 8))(v96);
        (v143)(v49, v41);
        *v49 = v151;
        swift_storeEnumTagMultiPayload();
        sub_1B69AC828();
        sub_1B6ABA280();
        sub_1B6AB9740();
        v98 = *(swift_getTupleTypeMetadata2() + 48);
        v99 = v148;
        *v148 = v142;
        v94(v99 + v98, v125, v50);
        (*(v95 + 56))(v99 + v98, 0, 1, v50);
        swift_storeEnumTagMultiPayload();
        v152 = v145;
        v153 = v124;
      }

      else
      {
        v82 = *v45;
        (*(v42 + 1))(v149, v41);
        swift_storeEnumTagMultiPayload();
        sub_1B69AC828();
        sub_1B6ABA280();
        sub_1B6AB9740();
        v83 = *(swift_getTupleTypeMetadata2() + 48);
        v84 = v148;
        *v148 = v142;
        *(v84 + v83) = v82;
        swift_storeEnumTagMultiPayload();
        v152 = v145;
        v153 = v40;
      }

      v154 = v144;
      v155 = v150;
      v156 = v147;
      v157 = v146;
      type metadata accessor for CombineLatestStateMachine.NextAction();
      return swift_storeEnumTagMultiPayload();
    }

    if (result == 5)
    {
      v54 = v142;
      v53 = v148;
      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B6A646A4(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = a1[6];
  v8 = a1[7];
  v115 = AssociatedTypeWitness;
  v9 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v114 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v124 = v3;
  v125 = v2;
  v126 = v5;
  v127 = swift_getAssociatedTypeWitness();
  v128 = v4;
  v129 = v7;
  v130 = v8;
  v119 = v10;
  v120 = v9;
  v118 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v121 = *(TupleTypeMetadata3 - 8);
  v122 = TupleTypeMetadata3;
  v12 = *(v121 + 64);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v117 = &v106 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v106 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v106 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v116 = &v106 - v24;
  v124 = v3;
  v125 = v2;
  v126 = v5;
  v127 = v4;
  v128 = v7;
  v129 = v8;
  v25 = type metadata accessor for CombineLatestStateMachine.State();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v106 - v28;
  (*(v26 + 16))(&v106 - v28, v123, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return 0xF000000000000007;
      }

      __break(1u);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v31 = *(v26 + 8);
      v31(v29, v25);
      v31(v123, v25);
      swift_storeEnumTagMultiPayload();
      return 0xF000000000000007;
    }

    (*(v26 + 8))(v29, v25);
    return 0xF000000000000007;
  }

  if (!EnumCaseMultiPayload)
  {
    v62 = sub_1B6AB9B30();
    v63 = swift_getTupleTypeMetadata3();
    v64 = *(v63 + 48);
    v65 = *(v63 + 64);
    (*(v26 + 8))(v123, v25);
    swift_storeEnumTagMultiPayload();
    (*(*(v62 - 8) + 8))(&v29[v65], v62);
    (*(*(v2 - 8) + 8))(&v29[v64], v2);
    (*(*(v3 - 8) + 8))(v29, v3);
    return 0xF000000000000007;
  }

  v113 = v23;
  if (EnumCaseMultiPayload == 1)
  {
    v112 = *v29;
    sub_1B6A622CC();
    sub_1B6AB9B30();
    swift_getTupleTypeMetadata3();
    sub_1B6AB95D0();
    v32 = v122;
    v33 = swift_getTupleTypeMetadata3();
    v34 = *(v33 + 48);
    v35 = *&v29[*(v33 + 64)];

    v36 = v121;
    v37 = v116;
    (*(v121 + 32))(v116, &v29[v34], v32);
    (*(v26 + 8))(v123, v25);
    swift_storeEnumTagMultiPayload();
    v38 = *(v36 + 16);
    v39 = v113;
    v38(v113, v37, v32);
    v114 = *(v32 + 48);
    v40 = *(v32 + 64);
    v110 = *v39;
    v111 = v40;
    v41 = *(v120 - 8);
    v108 = *(v41 + 8);
    v109 = v41 + 8;
    v108(v39);
    v38(v20, v37, v32);
    v42 = *(v32 + 48);
    v107 = *(v32 + 64);
    v115 = *&v20[v42];
    v43 = v119;
    v44 = *(*(v119 - 8) + 8);
    v44(&v20[v42], v119);
    v45 = v117;
    v38(v117, v37, v32);
    v46 = *(v32 + 48);
    v47 = *(v32 + 64);
    v123 = *&v45[v47];
    v48 = v118;
    v49 = *(*(v118 - 8) + 8);
    v49(&v45[v47], v118);
    v44(&v45[v46], v43);
    v50 = v45;
    v51 = v120;
    v52 = v108;
    (v108)(v50, v120);
    v49(v107 + v20, v48);
    v53 = v51;
    v54 = v110;
    v52(v20, v53);
    v55 = v113;
    v49(v113 + v111, v48);
    v44(v55 + v114, v43);
    if (v54)
    {
      v56 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v58 = *(v56 + 2);
      v57 = *(v56 + 3);
      if (v58 >= v57 >> 1)
      {
        v56 = sub_1B69E36B0((v57 > 1), v58 + 1, 1, v56);
      }

      v59 = v112;
      v60 = v123;
      v61 = v115;
      *(v56 + 2) = v58 + 1;
      *&v56[8 * v58 + 32] = v54;
      if (!v61)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
      v59 = v112;
      v60 = v123;
      v61 = v115;
      if (!v115)
      {
LABEL_28:
        if (v60)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_1B69E36B0(0, *(v56 + 2) + 1, 1, v56);
          }

          v101 = *(v56 + 2);
          v100 = *(v56 + 3);
          if (v101 >= v100 >> 1)
          {
            v56 = sub_1B69E36B0((v100 > 1), v101 + 1, 1, v56);
          }

          *(v56 + 2) = v101 + 1;
          *&v56[8 * v101 + 32] = v60;
        }

        (*(v121 + 8))(v116, v122);
        return v59 | 0x8000000000000000;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1B69E36B0(0, *(v56 + 2) + 1, 1, v56);
    }

    v99 = *(v56 + 2);
    v98 = *(v56 + 3);
    if (v99 >= v98 >> 1)
    {
      v56 = sub_1B69E36B0((v98 > 1), v99 + 1, 1, v56);
    }

    *(v56 + 2) = v99 + 1;
    *&v56[8 * v99 + 32] = v61;
    goto LABEL_28;
  }

  v116 = &v106;
  v112 = *v29;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  strcpy(&v106 - 64, "task upstreams downstreamContinuation buffer ");
  sub_1B6A622CC();
  v67 = v122;
  v124 = v68;
  v125 = v122;
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  v69 = v15;
  sub_1B6AB9B30();
  sub_1B69AC828();
  sub_1B6ABA280();
  v126 = sub_1B6AB9740();
  v127 = sub_1B6AB95D0();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v71 = TupleTypeMetadata[12];
  v116 = *&v29[TupleTypeMetadata[16]];
  v72 = *&v29[TupleTypeMetadata[20]];

  v73 = v121;
  (*(v121 + 32))(v69, &v29[v71], v67);
  (*(v26 + 8))(v123, v25);
  swift_storeEnumTagMultiPayload();
  v74 = *(v73 + 16);
  v75 = v113;
  v74(v113, v69, v67);
  v111 = *(v67 + 48);
  v109 = *(v67 + 64);
  v110 = *v75;
  v76 = v120;
  v77 = *(v120 - 8);
  v107 = *(v77 + 8);
  v108 = (v77 + 8);
  v107(v75, v120);
  v78 = v69;
  v74(v20, v69, v67);
  v79 = *(v67 + 48);
  v106 = *(v67 + 64);
  v114 = *&v20[v79];
  v80 = v119;
  v81 = *(*(v119 - 8) + 8);
  v81(&v20[v79], v119);
  v82 = v81;
  v83 = v117;
  v123 = v78;
  v74(v117, v78, v67);
  v84 = *(v67 + 48);
  v85 = *(v67 + 64);
  v115 = *&v83[v85];
  v86 = v118;
  v87 = *(*(v118 - 8) + 8);
  v87(&v83[v85], v118);
  v82(&v83[v84], v80);
  v88 = v83;
  v89 = v107;
  v107(v88, v76);
  v87(&v20[v106], v86);
  v89(v20, v76);
  v90 = v113;
  v87(v113 + v109, v86);
  v91 = v80;
  v92 = v110;
  v82(v90 + v111, v91);
  if (v92)
  {
    v93 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v95 = *(v93 + 2);
    v94 = *(v93 + 3);
    if (v95 >= v94 >> 1)
    {
      v93 = sub_1B69E36B0((v94 > 1), v95 + 1, 1, v93);
    }

    v97 = v114;
    v96 = v115;
    *(v93 + 2) = v95 + 1;
    *&v93[8 * v95 + 32] = v92;
    if (!v97)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v93 = MEMORY[0x1E69E7CC0];
  v97 = v114;
  v96 = v115;
  if (v114)
  {
LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = sub_1B69E36B0(0, *(v93 + 2) + 1, 1, v93);
    }

    v103 = *(v93 + 2);
    v102 = *(v93 + 3);
    if (v103 >= v102 >> 1)
    {
      v93 = sub_1B69E36B0((v102 > 1), v103 + 1, 1, v93);
    }

    *(v93 + 2) = v103 + 1;
    *&v93[8 * v103 + 32] = v97;
  }

LABEL_41:
  if (v96)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = sub_1B69E36B0(0, *(v93 + 2) + 1, 1, v93);
    }

    v105 = *(v93 + 2);
    v104 = *(v93 + 3);
    if (v105 >= v104 >> 1)
    {
      v93 = sub_1B69E36B0((v104 > 1), v105 + 1, 1, v93);
    }

    *(v93 + 2) = v105 + 1;
    *&v93[8 * v105 + 32] = v96;
  }

  (*(v121 + 8))(v123, v122);
  return v116;
}

uint64_t sub_1B6A65470(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = a2;
  v38 = a1;
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = a3[6];
  v9 = a3[7];
  v40 = AssociatedTypeWitness;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v39 = swift_getAssociatedTypeWitness();
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v44 = v4;
  v45 = v5;
  v46 = v6;
  v47 = swift_getAssociatedTypeWitness();
  v48 = v7;
  v49 = v10;
  v50 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = *(TupleTypeMetadata3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v14 = &v37 - v13;
  v44 = v4;
  v45 = v5;
  v46 = v6;
  v47 = v7;
  v48 = v10;
  v49 = v9;
  v15 = type metadata accessor for CombineLatestStateMachine.State();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = v43;
  (*(v16 + 16))(&v37 - v18);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result > 4)
    {
      if (result == 5)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    if (result == 4)
    {
      (*(v16 + 8))(v19, v15);
LABEL_9:
      sub_1B6AB9610();
      sub_1B69D026C();
      swift_allocError();
      sub_1B6AB91E0();
      return v42;
    }

    goto LABEL_19;
  }

  if (result != 1)
  {
    if (result == 2)
    {
      v22 = *v19;

      MEMORY[0x1EEE9AC00](v23);
      strcpy(&v37 - 64, "task upstreams downstreamContinuation buffer ");
      sub_1B6A622CC();
      v24 = TupleTypeMetadata3;
      v44 = v25;
      v45 = TupleTypeMetadata3;
      sub_1B6AB9B30();
      swift_getTupleTypeMetadata3();
      sub_1B6AB9B30();
      sub_1B69AC828();
      sub_1B6ABA280();
      v46 = sub_1B6AB9740();
      v47 = sub_1B6AB95D0();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v27 = *(TupleTypeMetadata + 48);
      v28 = *&v19[*(TupleTypeMetadata + 80)];

      (*(v11 + 8))(&v19[v27], v24);
      return v42;
    }

    goto LABEL_20;
  }

  v37 = *v19;
  sub_1B6A622CC();
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  sub_1B6AB95D0();
  v29 = TupleTypeMetadata3;
  v30 = swift_getTupleTypeMetadata3();
  v31 = *&v19[*(v30 + 64)];
  v32 = *(v11 + 32);
  v32(v14, &v19[*(v30 + 48)], v29);
  v33 = *(v16 + 8);
  v33(v20, v15);
  result = swift_storeEnumTagMultiPayload();
  switch(v38)
  {
    case 0:
      *v14 = v42;
LABEL_17:
      v33(v20, v15);
      v35 = *(v30 + 48);
      v36 = *(v30 + 64);
      *v20 = v37;
      v32(&v20[v35], v14, v29);
      *&v20[v36] = v31;
      swift_storeEnumTagMultiPayload();
      return 0xF00000000000000FLL;
    case 1:
      v34 = *(v29 + 48);
LABEL_16:
      *&v14[v34] = v42;
      goto LABEL_17;
    case 2:
      v34 = *(v29 + 64);
      goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B6A65A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v368 = a3;
  v369 = a2;
  v365 = a1;
  v357 = a5;
  v6 = a4[7];
  v7 = a4[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v373 = AssociatedTypeWitness;
  v374 = sub_1B6AB9B30();
  v360 = *(v374 - 8);
  v9 = *(v360 + 64);
  v10 = MEMORY[0x1EEE9AC00](v374);
  v311 = &v305 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v338 = &v305 - v13;
  v344 = *(AssociatedTypeWitness - 8);
  v14 = *(v344 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v310 = &v305 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v323 = &v305 - v17;
  v18 = a4[6];
  v19 = a4[3];
  v20 = swift_getAssociatedTypeWitness();
  v359 = *(v20 - 8);
  v21 = *(v359 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v318 = &v305 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v319 = &v305 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v316 = &v305 - v26;
  v27 = a4[5];
  v308 = a4;
  v28 = a4[2];
  v29 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v309 = *(TupleTypeMetadata3 - 8);
  v30 = *(v309 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v333 = &v305 - v31;
  v376 = sub_1B6AB9B30();
  v371 = *(v376 - 1);
  v32 = *(v371 + 64);
  v33 = MEMORY[0x1EEE9AC00](v376);
  v325 = &v305 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v330 = &v305 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v320 = &v305 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v312 = &v305 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v315 = &v305 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v317 = &v305 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v335 = &v305 - v46;
  v366 = *(v29 - 8);
  v47 = *(v366 + 64);
  v48 = MEMORY[0x1EEE9AC00](v45);
  v339 = &v305 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v322 = &v305 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v321 = (&v305 - v53);
  MEMORY[0x1EEE9AC00](v52);
  v334 = &v305 - v54;
  v55 = sub_1B6AB9B30();
  v372 = *(v55 - 8);
  v56 = *(v372 + 64);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v324 = &v305 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v329 = &v305 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v331 = (&v305 - v62);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v332 = &v305 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v314 = &v305 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v313 = &v305 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v336 = &v305 - v69;
  *&v378 = v28;
  *(&v378 + 1) = v19;
  *&v379 = v7;
  *(&v379 + 1) = v29;
  v353 = v29;
  v380 = v27;
  v381 = v18;
  v382 = v6;
  v70 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v378 = v28;
  *(&v378 + 1) = v19;
  *&v379 = v7;
  *(&v379 + 1) = v20;
  v367 = v20;
  v380 = v27;
  v381 = v18;
  v382 = v6;
  v71 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v378 = v28;
  *(&v378 + 1) = v19;
  *&v379 = v7;
  *(&v379 + 1) = v373;
  v380 = v27;
  v381 = v18;
  v382 = v6;
  v72 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v345 = v70;
  v346 = v71;
  v343 = v72;
  v370 = swift_getTupleTypeMetadata3();
  v358 = *(v370 - 8);
  v73 = *(v358 + 64);
  v74 = MEMORY[0x1EEE9AC00](v370);
  v350 = &v305 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v342 = &v305 - v76;
  v326 = v28;
  *&v77 = v28;
  v340 = v19;
  *(&v77 + 1) = v19;
  v328 = v7;
  *&v78 = v7;
  v327 = v27;
  *(&v78 + 1) = v27;
  v355 = v78;
  v378 = v77;
  v379 = v78;
  v356 = v77;
  v361 = v18;
  v380 = v18;
  v381 = v6;
  v362 = v6;
  v79 = type metadata accessor for CombineLatestStateMachine.State();
  v80 = *(v79 - 1);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v83 = (&v305 - v82);
  v84 = v376;
  v85 = v374;
  v86 = swift_getTupleTypeMetadata3();
  v354 = *(v86 - 1);
  v87 = v354[8];
  v88 = MEMORY[0x1EEE9AC00](v86);
  v337 = &v305 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x1EEE9AC00](v88);
  v341 = &v305 - v91;
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v305 - v92;
  v94 = (v372 + 16);
  v95 = *(v372 + 16);
  v96 = v365;
  v365 = v55;
  v95(&v305 - v92, v96, v55);
  v97 = *(v86 + 12);
  v98 = *(v371 + 16);
  v99 = v84;
  v100 = v80;
  v364 = (v371 + 16);
  v363 = v98;
  v98(&v93[v97], v369, v99);
  v369 = v86;
  v101 = *(v86 + 16);
  v102 = *(v360 + 16);
  v352 = v360 + 16;
  v351 = v102;
  v102(&v93[v101], v368, v85);
  (*(v100 + 16))(v83, v375, v79);
  v368 = v79;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        (v354[1])(v93, v369);
        goto LABEL_14;
      }

      goto LABEL_55;
    }

    if (EnumCaseMultiPayload == 4)
    {
      (v354[1])(v93, v369);
      (*(v100 + 8))(v83, v368);
LABEL_14:
      v378 = v356;
      v379 = v355;
      v380 = v361;
      v381 = v362;
      v133 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
      return (*(*(v133 - 8) + 56))(v357, 1, 1, v133);
    }

    goto LABEL_53;
  }

  v347 = v95;
  v348 = v94;
  if (EnumCaseMultiPayload == 1)
  {
    v350 = *v83;
    sub_1B6A622CC();
    v134 = sub_1B6AB95D0();
    v135 = v370;
    v332 = v134;
    v136 = swift_getTupleTypeMetadata3();
    v137 = *(v136 + 48);
    v340 = v136;
    v138 = *(v83 + *(v136 + 64));
    (*(v358 + 32))(v342, v83 + v137, v135);
    v377 = v138;
    v139 = *(v100 + 8);
    v307 = v100 + 8;
    v339 = v139;
    (v139)(v375, v368);
    swift_storeEnumTagMultiPayload();
    v140 = *(v369 + 48);
    v141 = *(v369 + 64);
    v142 = v341;
    v143 = v365;
    v79 = v348;
    v144 = v347;
    v347(v341, v93, v365);
    (v363)(&v140[v142], &v93[v97], v376);
    v351(&v142[v141], &v93[v101], v374);
    v145 = v353;
    v331 = *(v366 + 48);
    v146 = v331(v142, 1, v353);
    v147 = v344;
    v337 = v140;
    if (v146 == 1)
    {
      v79 = *(v359 + 48);
      v148 = (v79)(&v140[v142], 1, v367);
      v149 = v373;
      if (v148 == 1)
      {
        v150 = (*(v147 + 48))(&v142[v141], 1, v373);
        v151 = v342;
        if (v150 == 1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v152 = *(v147 + 32);
        v352 = v147 + 32;
        v351 = v152;
        v152(v323, &v142[v141], v149);
        v153 = v314;
        v347(v314, &v151[*(v345 + 76)], v365);
        if (v331(v153, 1, v353) == 1)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v154 = v370;
        v155 = v315;
        (v363)(v315, &v151[*(v370 + 48) + *(v346 + 76)], v376);
        if ((v79)(v155, 1, v367) == 1)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v156 = v338;
        v157 = v373;
        (*(v147 + 16))(v338, v323, v373);
        v364 = *(v147 + 56);
        v364(v156, 0, 1, v157);
        v158 = *(TupleTypeMetadata3 + 48);
        v363 = *(TupleTypeMetadata3 + 64);
        v159 = v333;
        (*(v366 + 32))(v333, v153, v353);
        (*(v359 + 32))(&v159[v158], v155, v367);
        v160 = v360;
        v161 = v374;
        (*(v360 + 32))(&v159[v363], v156, v374);
        sub_1B6AB95A0();
        (v354[1])(v93, v369);
        v162 = *(v154 + 64) + *(v343 + 76);
        v163 = v342;
        (*(v160 + 8))(&v342[v162], v161);
        v351(&v163[v162], v323, v157);
        v364(&v163[v162], 0, 1, v157);
        v164 = v376;
        v166 = v371;
        v165 = v372;
        v167 = v365;
      }

      else
      {
        v86 = v317;
        (v363)(v317, &v140[v142], v376);
        v195 = (*(v147 + 48))(&v142[v141], 1, v149);
        v79 = v342;
        v105 = &v383;
        if (v195 != 1)
        {
LABEL_57:
          v366 = *(v105 - 32);
          v353 = v367;
          v336 = v86;
LABEL_58:
          (*(v366 + 8))(v336, v353, v104);
          goto LABEL_59;
        }

        v196 = v359;
        v197 = v316;
        v373 = *(v359 + 32);
        v364 = (v359 + 32);
        v373();
        v198 = v313;
        v347(v313, &v79[*(v345 + 76)], v365);
        v199 = v353;
        if (v331(v198, 1, v353) == 1)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v200 = v79;
        v154 = v370;
        v363 = *(v370 + 64) + *(v343 + 76);
        v201 = *(TupleTypeMetadata3 + 48);
        v202 = *(TupleTypeMetadata3 + 64);
        v203 = v333;
        (*(v366 + 32))(v333, v198, v199);
        v204 = v367;
        (*(v196 + 16))(&v203[v201], v197, v367);
        v351(&v203[v202], &v200[v363], v374);
        sub_1B6AB95A0();
        (v354[1])(v93, v369);
        v205 = *(v154 + 48) + *(v346 + 76);
        v166 = v371;
        v206 = v376;
        (*(v371 + 8))(&v200[v205], v376);
        (v373)(&v200[v205], v197, v204);
        (*(v196 + 56))(&v200[v205], 0, 1, v204);
        v164 = v206;
        v167 = v365;
        v165 = v372;
        v163 = v200;
      }

      v187 = v375;
    }

    else
    {
      v144(v336, v142, v143);
      v168 = &v140[v142];
      v169 = *(v359 + 48);
      v170 = v169(v168, 1, v367);
      v104 = v373;
      if (v170 != 1)
      {
        goto LABEL_58;
      }

      v171 = (*(v147 + 48))(&v142[v141], 1, v373);
      v172 = v335;
      v173 = v334;
      if (v171 != 1)
      {
        goto LABEL_58;
      }

      v174 = v366;
      v373 = *(v366 + 32);
      (v373)(v334, v336, v145);
      v175 = *(v174 + 16);
      v79 = v321;
      v175(v321, v173, v145);
      v86 = v370;
      v163 = v342;
      (v363)(v172, &v342[*(v370 + 48) + *(v346 + 76)], v376);
      v176 = v367;
      v177 = v169(v172, 1, v367);
      v105 = &v383;
      v178 = v359;
      if (v177 == 1)
      {
        goto LABEL_56;
      }

      v179 = *(v86 + 16) + *(v343 + 76);
      v180 = *(TupleTypeMetadata3 + 48);
      v181 = *(TupleTypeMetadata3 + 64);
      v182 = v333;
      v183 = v79;
      v184 = v353;
      (v373)(v333, v183, v353);
      v185 = &v182[v180];
      v154 = v370;
      (*(v178 + 32))(v185, v335, v176);
      v351(&v182[v181], &v163[v179], v374);
      sub_1B6AB95A0();
      (v354[1])(v93, v369);
      v186 = *(v345 + 76);
      v165 = v372;
      v167 = v365;
      (*(v372 + 8))(&v163[v186], v365);
      (v373)(&v163[v186], v334, v184);
      (*(v366 + 56))(&v163[v186], 0, 1, v184);
      v187 = v375;
      v164 = v376;
      v166 = v371;
    }

    v207 = v341;
    (*(v166 + 8))(&v337[v341], v164);
    (*(v165 + 8))(v207, v167);
    (v339)(v187, v368);
    v208 = *(v340 + 48);
    v209 = *(v340 + 64);
    *v187 = v350;
    v210 = v358;
    (*(v358 + 16))(&v187[v208], v163, v154);
    *&v187[v209] = v377;
    swift_storeEnumTagMultiPayload();
    v378 = v356;
    v379 = v355;
    v380 = v361;
    v381 = v362;
    v211 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
    (*(*(v211 - 8) + 56))(v357, 1, 1, v211);
    return (*(v210 + 8))(v163, v154);
  }

  v105 = &v378;
  v79 = TupleTypeMetadata3;
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_54;
  }

  v106 = v100;
  v335 = *v83;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  strcpy(&v305 - 64, "task upstreams downstreamContinuation buffer ");
  sub_1B6A622CC();
  v314 = v107;
  v108 = v370;
  *&v378 = v107;
  *(&v378 + 1) = v370;
  sub_1B6AB9B30();
  sub_1B69AC828();
  v316 = sub_1B6ABA280();
  v315 = sub_1B6AB9740();
  *&v379 = v315;
  *(&v379 + 1) = sub_1B6AB95D0();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v110 = TupleTypeMetadata[12];
  v111 = *(v83 + TupleTypeMetadata[16]);
  v321 = TupleTypeMetadata;
  v112 = *(v83 + TupleTypeMetadata[20]);
  (*(v358 + 32))(v350, v83 + v110, v108);
  v336 = v112;
  *&v378 = v112;
  v113 = sub_1B6AB95D0();
  swift_getWitnessTable();
  v86 = &v378;
  v114 = sub_1B6AB9830();
  v115 = v376;
  v105 = &v366;
  v116 = v337;
  if ((v114 & 1) == 0)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v313 = v113;
  v334 = v111;
  v117 = *(v106 + 8);
  v307 = v106 + 8;
  v333 = v117;
  (v117)(v375, v368);
  swift_storeEnumTagMultiPayload();
  v118 = *(v369 + 48);
  v119 = *(v369 + 64);
  v120 = v365;
  v121 = v115;
  v122 = v347;
  v347(v116, v93, v365);
  (v363)(&v116[v118], &v93[v97], v121);
  v123 = v119;
  v351(&v116[v119], &v93[v101], v374);
  v124 = *(v366 + 48);
  v125 = v353;
  v342 = (v366 + 48);
  v341 = v124;
  if ((v124)(v116, 1, v353) == 1)
  {
    v323 = *(v359 + 48);
    v126 = (v323)(&v116[v118], 1, v367);
    v127 = v350;
    v306 = v118;
    if (v126 == 1)
    {
      v128 = v344;
      v129 = v373;
      v317 = *(v344 + 48);
      result = (v317)(&v116[v123], 1, v373);
      if (result == 1)
      {
LABEL_65:
        __break(1u);
        return result;
      }

      (v354[1])(v93, v369);
      v131 = *(v370 + 64) + *(v343 + 76);
      (*(v360 + 8))(v127 + v131, v374);
      (*(v128 + 32))(v127 + v131, &v116[v123], v129);
      (*(v128 + 56))(v127 + v131, 0, 1, v129);
      v125 = v353;
      v132 = v371;
    }

    else
    {
      v79 = v312;
      v212 = v376;
      (v363)(v312, &v116[v118], v376);
      v317 = *(v344 + 48);
      if ((v317)(&v116[v123], 1, v373) != 1)
      {
LABEL_63:
        v366 = v359;
        v353 = v367;
        v332 = v79;
LABEL_64:
        result = (*(v366 + 8))(v332, v353);
        goto LABEL_65;
      }

      (v354[1])(v93, v369);
      v132 = v371;
      v213 = *(v370 + 48) + *(v346 + 76);
      (*(v371 + 8))(v127 + v213, v212);
      v214 = v359;
      v215 = v79;
      v216 = v367;
      (*(v359 + 32))(v127 + v213, v215, v367);
      (*(v214 + 56))(v127 + v213, 0, 1, v216);
    }

    v193 = v365;
    v192 = v372;
    v190 = v345;
    v189 = v306;
  }

  else
  {
    v122(v332, v116, v120);
    v323 = *(v359 + 48);
    v188 = (v323)(&v116[v118], 1, v367);
    v127 = v350;
    if (v188 != 1)
    {
      goto LABEL_64;
    }

    v189 = v118;
    v317 = *(v344 + 48);
    if ((v317)(&v116[v123], 1, v373) != 1)
    {
      goto LABEL_64;
    }

    (v354[1])(v93, v369);
    v190 = v345;
    v191 = *(v345 + 76);
    v192 = v372;
    v193 = v365;
    (*(v372 + 8))(v127 + v191, v365);
    v194 = v366;
    (*(v366 + 32))(v127 + v191, v332, v125);
    (*(v194 + 56))(v127 + v191, 0, 1, v125);
    v132 = v371;
  }

  v218 = *(v132 + 8);
  v217 = v132 + 8;
  v219 = &v116[v189];
  v220 = v376;
  v354 = v218;
  (v218)(v219, v376);
  v221 = *(v192 + 8);
  v221(v116, v193);
  v369 = *(v190 + 76);
  v222 = v331;
  v347(v331, v127 + v369, v193);
  v223 = (v341)(v222, 1, v125);
  v372 = v192 + 8;
  v332 = v221;
  if (v223 == 1)
  {
    v224 = v190;
    v221(v222, v193);
    v225 = v330;
    v226 = v125;
    v227 = v366;
  }

  else
  {
    v371 = v217;
    v227 = v366;
    v228 = v322;
    v337 = *(v366 + 32);
    (v337)(v322, v222, v125);
    v229 = v370;
    v230 = v320;
    (v363)(v320, v127 + *(v370 + 48) + *(v346 + 76), v220);
    v231 = v359;
    v232 = v367;
    if ((v323)(v230, 1, v367) == 1)
    {
      (*(v227 + 8))(v228, v125);
      (v354)(v230, v220);
      v193 = v365;
      v224 = v345;
      v225 = v330;
      v226 = v125;
    }

    else
    {
      v233 = v344;
      v331 = *(v231 + 32);
      v331(v319, v230, v232);
      v234 = v127 + *(v229 + 64) + *(v343 + 76);
      v235 = v311;
      v236 = v127;
      v237 = v374;
      v351(v311, v234, v374);
      v238 = v233;
      v239 = v373;
      if ((v317)(v235, 1, v373) != 1)
      {
        v376 = *(v238 + 32);
        (v376)(v310, v235, v239);
        v266 = v375;
        (v333)(v375, v368);
        v267 = swift_getTupleTypeMetadata3();
        v268 = *(v267 + 48);
        v269 = *(v267 + 64);
        *v266 = v335;
        (*(v358 + 16))(&v266[v268], v236, v229);
        *&v266[v269] = v336;
        swift_storeEnumTagMultiPayload();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v271 = v357;
        v272 = v357 + *(TupleTypeMetadata2 + 48);
        *v357 = v334;
        v273 = TupleTypeMetadata3;
        v274 = *(TupleTypeMetadata3 + 48);
        v275 = *(TupleTypeMetadata3 + 64);
        (v337)(v272, v322, v353);
        v331(&v272[v274], v319, v367);
        v276 = v373;
        (v376)(&v272[v275], v310, v373);
        (*(v344 + 56))(&v272[v275], 0, 1, v276);
        (*(v309 + 56))(v272, 0, 1, v273);
        swift_storeEnumTagMultiPayload();
        v378 = v356;
        v379 = v355;
        v380 = v361;
        v381 = v362;
        v277 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
        (*(*(v277 - 8) + 56))(v271, 0, 1, v277);
        return (*(v358 + 8))(v350, v229);
      }

      (*(v231 + 8))(v319, v232);
      v227 = v366;
      v226 = v353;
      (*(v366 + 8))(v322, v353);
      (*(v360 + 8))(v235, v237);
      v193 = v365;
      v127 = v236;
      v224 = v345;
      v225 = v330;
    }
  }

  v240 = v329;
  v347(v329, v127 + v369, v193);
  v241 = (v341)(v240, 1, v226);
  v242 = v339;
  if (v241 == 1)
  {
    (v332)(v240, v193);
    v243 = v375;
  }

  else
  {
    v244 = v227;
    v371 = *(v227 + 32);
    v372 = v227 + 32;
    (v371)(v339, v240, v226);
    v245 = v226;
    v246 = v376;
    (v363)(v225, v127 + *(v370 + 48) + *(v346 + 76), v376);
    v247 = v359;
    v248 = v367;
    v249 = (v323)(v225, 1, v367);
    v250 = v225;
    v243 = v375;
    if (v249 == 1)
    {
      (*(v244 + 8))(v242, v245);
      (v354)(v250, v246);
    }

    else
    {
      v251 = *(v247 + 32);
      v252 = v318;
      v251(v318, v250, v248);
      if (*&v243[*(v308 + 17)] == 2)
      {
        (v333)(v243, v368);
        v253 = v370;
        v254 = swift_getTupleTypeMetadata3();
        v255 = *(v254 + 48);
        v256 = v344;
        v257 = *(v254 + 64);
        *v243 = v335;
        v258 = v358;
        (*(v358 + 16))(&v243[v255], v127, v253);
        *&v243[v257] = v336;
        swift_storeEnumTagMultiPayload();
        v259 = swift_getTupleTypeMetadata2();
        v260 = v357;
        v261 = v357 + *(v259 + 48);
        *v357 = v334;
        v262 = TupleTypeMetadata3;
        v263 = *(TupleTypeMetadata3 + 48);
        v264 = *(TupleTypeMetadata3 + 64);
        (v371)(v261, v339, v353);
        v251(&v261[v263], v318, v367);
        (*(v256 + 56))(&v261[v264], 1, 1, v373);
        (*(v309 + 56))(v261, 0, 1, v262);
        swift_storeEnumTagMultiPayload();
        v378 = v356;
        v379 = v355;
        v380 = v361;
        v381 = v362;
        v265 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
        (*(*(v265 - 8) + 56))(v260, 0, 1, v265);
        return (*(v258 + 8))(v350, v370);
      }

      (*(v247 + 8))(v252, v248);
      (*(v366 + 8))(v339, v245);
    }

    v193 = v365;
    v224 = v345;
  }

  v278 = v335;
  (v333)(v243, v368);
  v279 = &v243[v321[12]];
  v280 = v321[16];
  v371 = v321[20];
  v372 = v280;
  *v243 = v278;
  v281 = *(v370 + 64);
  v365 = *(v370 + 48);
  v366 = v281;
  v282 = v370;
  v283 = *v127;
  v284 = v324;
  v347(v324, v127 + v369, v193);
  v285 = *(v127 + *(v224 + 80));
  v304 = v362;
  v286 = v361;
  v303 = v361;
  v287 = v279;
  sub_1B6A6B264(v283, v284, v285, v279);
  v288 = v282;
  v289 = (v127 + *(v282 + 48));
  v369 = *v289;
  v290 = v346;
  v291 = v325;
  (v363)(v325, v289 + *(v346 + 76), v376);
  v292 = *(v289 + *(v290 + 80));
  v293 = v362;
  v303 = v286;
  v304 = v362;
  sub_1B6A6B264(v369, v291, v292, &v287[v365]);
  v294 = &v350[*(v288 + 64)];
  v295 = *v294;
  v296 = v343;
  v297 = v338;
  v351(v338, v294 + *(v343 + 76), v374);
  v298 = *(v294 + *(v296 + 80));
  v304 = v293;
  v299 = v361;
  v303 = v361;
  sub_1B6A6B264(v295, v297, v298, &v287[v366]);
  v300 = v375;
  v301 = v371;
  *&v375[v372] = v334;
  *(v300 + v301) = v336;
  swift_storeEnumTagMultiPayload();
  v378 = v356;
  v379 = v355;
  v380 = v299;
  v381 = v293;
  v302 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction();
  (*(*(v302 - 8) + 56))(v357, 1, 1, v302);
  return (*(v358 + 8))(v350, v370);
}

uint64_t sub_1B6A68528(unint64_t a1, void *a2)
{
  v157 = a1;
  v3 = a2[7];
  v4 = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v161 = sub_1B6AB9B30();
  v145 = *(v161 - 8);
  v6 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v144 = &v138 - v7;
  v8 = a2[6];
  v9 = a2[3];
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1B6AB9B30();
  v151 = *(v11 - 8);
  v152 = v11;
  v12 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v150 = &v138 - v13;
  v14 = a2[5];
  v143 = a2;
  v15 = a2[2];
  v16 = swift_getAssociatedTypeWitness();
  v149 = sub_1B6AB9B30();
  v148 = *(v149 - 8);
  v17 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v138 - v18;
  *&v164 = v15;
  *(&v164 + 1) = v9;
  *&v165 = v4;
  *(&v165 + 1) = v16;
  v159 = v16;
  v166 = v14;
  v167 = v8;
  v168 = v3;
  v19 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v164 = v15;
  *(&v164 + 1) = v9;
  *&v165 = v4;
  *(&v165 + 1) = v10;
  v160 = v10;
  v166 = v14;
  v167 = v8;
  v168 = v3;
  v20 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v164 = v15;
  *(&v164 + 1) = v9;
  *&v165 = v4;
  *(&v165 + 1) = AssociatedTypeWitness;
  v146 = AssociatedTypeWitness;
  v166 = v14;
  v167 = v8;
  v168 = v3;
  v21 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v155 = v20;
  v156 = v19;
  v153 = v21;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v22 = *(TupleTypeMetadata3 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v158 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v154 = &v138 - v26;
  *&v27 = v15;
  *(&v27 + 1) = v9;
  *&v28 = v4;
  *(&v28 + 1) = v14;
  v164 = v27;
  v165 = v28;
  v166 = v8;
  v167 = v3;
  v29 = type metadata accessor for CombineLatestStateMachine.State();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v138 - v32);
  (*(v30 + 16))(&v138 - v32, v163, v29);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result != 4)
      {
        __break(1u);
LABEL_121:
        __break(1u);
        return result;
      }

      (*(v30 + 8))(v33, v29);
      return 0xF000000000000007;
    }

    if (result == 5)
    {
      return 0xF000000000000007;
    }

    __break(1u);
    goto LABEL_13;
  }

  v142 = v22;
  if (result == 1)
  {
LABEL_13:
    v158 = *v33;
    sub_1B6A622CC();
    swift_getTupleTypeMetadata3();
    v43 = sub_1B6AB95D0();
    v54 = TupleTypeMetadata3;
    v55 = v22;
    v56 = swift_getTupleTypeMetadata3();
    v35 = *(v33 + *(v56 + 64));
    v57 = *(v55 + 32);
    v45 = v154;
    v57(v154, v33 + *(v56 + 48), v54);
    v44 = *(v30 + 8);
    v42 = v163;
    v44(v163, v29);
    v46 = swift_storeEnumTagMultiPayload();
    v58 = v45;
    v59 = v156;
    v47 = v156;
    v60 = v45;
    switch(v157)
    {
      case 0uLL:
        goto LABEL_25;
      case 1uLL:
        v61 = 48;
        v47 = v155;
LABEL_24:
        v60 = v45 + *(TupleTypeMetadata3 + v61);
LABEL_25:
        *(v60 + *(v47 + 80)) = 1;
        if (*(v45 + *(v59 + 80)) == 1)
        {
          v67 = (v45 + *(TupleTypeMetadata3 + 48));
          if (*(v67 + *(v155 + 80)) == 1)
          {
            v68 = (v45 + *(TupleTypeMetadata3 + 64));
            if (*(v68 + *(v153 + 80)) == 1)
            {
              *&v164 = v35;
              swift_getWitnessTable();
              if (sub_1B6AB9830())
              {

                v44(v163, v29);
              }

              else
              {
                v98 = v163;
                v44(v163, v29);
                *v98 = v35;
              }

              swift_storeEnumTagMultiPayload();
              v99 = *v154;
              v100 = *v67;
              v101 = *v68;
              if (*v154)
              {
                v102 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
                v104 = *(v102 + 2);
                v103 = *(v102 + 3);
                if (v104 >= v103 >> 1)
                {
                  v102 = sub_1B69E36B0((v103 > 1), v104 + 1, 1, v102);
                }

                *(v102 + 2) = v104 + 1;
                *&v102[8 * v104 + 32] = v99;
              }

              else
              {
                v102 = MEMORY[0x1E69E7CC0];
              }

              if (v100)
              {
                v112 = v102;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v112 = sub_1B69E36B0(0, *(v112 + 2) + 1, 1, v112);
                }

                v102 = v112;
                v114 = *(v112 + 2);
                v113 = *(v112 + 3);
                if (v114 >= v113 >> 1)
                {
                  v102 = sub_1B69E36B0((v113 > 1), v114 + 1, 1, v112);
                }

                *(v102 + 2) = v114 + 1;
                *&v102[8 * v114 + 32] = v100;
              }

              goto LABEL_89;
            }

            if (*&v163[*(v143 + 17)] == 2)
            {
              *&v164 = v35;
              swift_getWitnessTable();
              if (sub_1B6AB9830())
              {

                v44(v163, v29);
              }

              else
              {
                v115 = v163;
                v44(v163, v29);
                *v115 = v35;
              }

              swift_storeEnumTagMultiPayload();
              v116 = *v154;
              v117 = *v67;
              v101 = *v68;
              if (*v154)
              {
                v102 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
                v119 = *(v102 + 2);
                v118 = *(v102 + 3);
                if (v119 >= v118 >> 1)
                {
                  v102 = sub_1B69E36B0((v118 > 1), v119 + 1, 1, v102);
                }

                *(v102 + 2) = v119 + 1;
                *&v102[8 * v119 + 32] = v116;
              }

              else
              {
                v102 = MEMORY[0x1E69E7CC0];
              }

              if (v117)
              {
                v120 = v102;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v120 = sub_1B69E36B0(0, *(v120 + 2) + 1, 1, v120);
                }

                v102 = v120;
                v122 = *(v120 + 2);
                v121 = *(v120 + 3);
                if (v122 >= v121 >> 1)
                {
                  v102 = sub_1B69E36B0((v121 > 1), v122 + 1, 1, v120);
                }

                *(v102 + 2) = v122 + 1;
                *&v102[8 * v122 + 32] = v117;
                if (v101)
                {
                  goto LABEL_90;
                }

                goto LABEL_88;
              }

LABEL_89:
              if (v101)
              {
LABEL_90:
                v124 = v102;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v124 = sub_1B69E36B0(0, *(v124 + 2) + 1, 1, v124);
                }

                v125 = v124;
                v127 = *(v124 + 2);
                v126 = *(v124 + 3);
                v123 = v154;
                if (v127 >= v126 >> 1)
                {
                  v125 = sub_1B69E36B0((v126 > 1), v127 + 1, 1, v124);
                  v123 = v154;
                }

                *(v125 + 2) = v127 + 1;
                *&v125[8 * v127 + 32] = v101;
                goto LABEL_95;
              }

LABEL_88:
              v123 = v154;
LABEL_95:
              (*(v142 + 8))(v123, TupleTypeMetadata3);
              return v158;
            }
          }
        }

        v93 = v35;
        v94 = v163;
        v95 = v58;
        v44(v163, v29);
        v96 = *(v56 + 48);
        v97 = *(v56 + 64);
        *v94 = v158;
        v57(v94 + v96, v95, TupleTypeMetadata3);
        *(v94 + v97) = v93;
LABEL_67:
        swift_storeEnumTagMultiPayload();
        return 0xF000000000000007;
      case 2uLL:
        v61 = 64;
        v47 = v153;
        goto LABEL_24;
    }

    __break(1u);
    goto LABEL_119;
  }

  v36 = v159;
  v35 = v160;
  if (result != 2)
  {
    goto LABEL_121;
  }

  v154 = *v33;
  MEMORY[0x1EEE9AC00](result);
  strcpy(&v138 - 64, "task upstreams downstreamContinuation buffer ");
  sub_1B6A622CC();
  v37 = TupleTypeMetadata3;
  *&v164 = v38;
  *(&v164 + 1) = TupleTypeMetadata3;
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  sub_1B6ABA280();
  *&v165 = sub_1B6AB9740();
  *(&v165 + 1) = sub_1B6AB95D0();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v40 = TupleTypeMetadata[12];
  v41 = *(v33 + TupleTypeMetadata[16]);
  v139 = TupleTypeMetadata;
  v42 = *(v33 + TupleTypeMetadata[20]);
  v43 = v142 + 32;
  v138 = *(v142 + 32);
  v138(v158, v33 + v40, v37);
  v44 = *(v30 + 8);
  v45 = v163;
  v44(v163, v29);
  v46 = swift_storeEnumTagMultiPayload();
  v47 = v157;
  v141 = v41;
  v140 = v42;
  if (!v157)
  {
    v62 = v156;
    v42 = v158;
    v158[*(v156 + 80)] = 1;
    v63 = v148;
    v64 = v147;
    v65 = v149;
    (*(v148 + 16))(v147, &v42[*(v62 + 76)], v149);
    v53 = (*(*(v36 - 8) + 48))(v64, 1, v36);
    (*(v63 + 8))(v64, v65);
LABEL_17:
    v66 = v163;
    if (v53 == 1)
    {
      goto LABEL_18;
    }

LABEL_32:
    v76 = v141;
    if (v42[*(v156 + 80)] == 1)
    {
      v77 = &v42[*(TupleTypeMetadata3 + 48)];
      if (v77[*(v155 + 80)] == 1)
      {
        v78 = &v42[*(TupleTypeMetadata3 + 64)];
        if (v78[*(v153 + 80)] == 1)
        {

          v44(v66, v29);
          swift_storeEnumTagMultiPayload();
          v79 = *v42;
          v80 = *v77;
          v81 = *v78;
          if (*v42)
          {
            v82 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v84 = *(v82 + 2);
            v83 = *(v82 + 3);
            v85 = v142;
            if (v84 >= v83 >> 1)
            {
              v82 = sub_1B69E36B0((v83 > 1), v84 + 1, 1, v82);
            }

            *(v82 + 2) = v84 + 1;
            *&v82[8 * v84 + 32] = v79;
          }

          else
          {
            v82 = MEMORY[0x1E69E7CC0];
            v85 = v142;
          }

          if (v80)
          {
            v128 = v82;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v128 = sub_1B69E36B0(0, *(v128 + 2) + 1, 1, v128);
            }

            v82 = v128;
            v130 = *(v128 + 2);
            v129 = *(v128 + 3);
            if (v130 >= v129 >> 1)
            {
              v82 = sub_1B69E36B0((v129 > 1), v130 + 1, 1, v128);
            }

            *(v82 + 2) = v130 + 1;
            *&v82[8 * v130 + 32] = v80;
          }

          if (!v81)
          {
            goto LABEL_117;
          }

          goto LABEL_104;
        }

        if (*(v66 + *(v143 + 17)) == 2)
        {

          v44(v66, v29);
          swift_storeEnumTagMultiPayload();
          v105 = *v42;
          v106 = *v77;
          v81 = *v78;
          if (*v42)
          {
            v82 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v108 = *(v82 + 2);
            v107 = *(v82 + 3);
            v85 = v142;
            if (v108 >= v107 >> 1)
            {
              v82 = sub_1B69E36B0((v107 > 1), v108 + 1, 1, v82);
            }

            *(v82 + 2) = v108 + 1;
            *&v82[8 * v108 + 32] = v105;
          }

          else
          {
            v82 = MEMORY[0x1E69E7CC0];
            v85 = v142;
          }

          if (v106)
          {
            v135 = v82;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v135 = sub_1B69E36B0(0, *(v135 + 2) + 1, 1, v135);
            }

            v82 = v135;
            v137 = *(v135 + 2);
            v136 = *(v135 + 3);
            if (v137 >= v136 >> 1)
            {
              v82 = sub_1B69E36B0((v136 > 1), v137 + 1, 1, v135);
            }

            *(v82 + 2) = v137 + 1;
            *&v82[8 * v137 + 32] = v106;
          }

          if (!v81)
          {
            goto LABEL_117;
          }

LABEL_104:
          v131 = v82;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_1B69E36B0(0, *(v131 + 2) + 1, 1, v131);
          }

          v132 = v131;
          v134 = *(v131 + 2);
          v133 = *(v131 + 3);
          if (v134 >= v133 >> 1)
          {
            v132 = sub_1B69E36B0((v133 > 1), v134 + 1, 1, v131);
          }

          *(v132 + 2) = v134 + 1;
          *&v132[8 * v134 + 32] = v81;
LABEL_117:
          (*(v85 + 8))(v42, TupleTypeMetadata3);
          return v76 | 0x8000000000000000;
        }
      }
    }

    v44(v66, v29);
    v109 = v139[12];
    v110 = v139[16];
    v111 = v139[20];
    *v66 = v154;
    v138(v66 + v109, v42, TupleTypeMetadata3);
    *(v66 + v110) = v76;
    *(v66 + v111) = v140;
    goto LABEL_67;
  }

  if (v157 == 1)
  {
    v42 = v158;
    v48 = &v158[*(TupleTypeMetadata3 + 48)];
    v49 = v155;
    v48[*(v155 + 80)] = 1;
    v51 = v150;
    v50 = v151;
    v52 = v152;
    (*(v151 + 16))(v150, &v48[*(v49 + 76)], v152);
    v53 = (*(*(v35 - 8) + 48))(v51, 1, v35);
    (*(v50 + 8))(v51, v52);
    goto LABEL_17;
  }

  v56 = v158;
  v66 = v163;
  if (v157 != 2)
  {
LABEL_119:
    __break(1u);
LABEL_120:
    v46 = sub_1B69E36B0((v47 > 1), v45, 1, v46);
LABEL_20:
    *(v46 + 16) = v45;
    *(v46 + 8 * v29 + 32) = v43;
    if (!v35)
    {
      goto LABEL_45;
    }

LABEL_40:
    v86 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_1B69E36B0(0, *(v86 + 2) + 1, 1, v86);
    }

    v46 = v86;
    v88 = *(v86 + 2);
    v87 = *(v86 + 3);
    if (v88 >= v87 >> 1)
    {
      v46 = sub_1B69E36B0((v87 > 1), v88 + 1, 1, v86);
    }

    *(v46 + 16) = v88 + 1;
    *(v46 + 8 * v88 + 32) = v35;
    goto LABEL_45;
  }

  v69 = v161;
  v70 = &v158[*(TupleTypeMetadata3 + 64)];
  v71 = v153;
  v70[*(v153 + 80)] = 1;
  v72 = v145;
  v73 = v144;
  (*(v145 + 16))(v144, &v70[*(v71 + 76)], v69);
  v74 = (*(*(v146 - 8) + 48))(v73, 1);
  v75 = v73;
  v42 = v56;
  (*(v72 + 8))(v75, v69);
  if (v74 != 1)
  {
    goto LABEL_32;
  }

LABEL_18:

  v44(v66, v29);
  swift_storeEnumTagMultiPayload();
  v43 = *v42;
  v35 = *&v42[*(TupleTypeMetadata3 + 48)];
  v44 = *&v42[*(TupleTypeMetadata3 + 64)];
  if (*v42)
  {
    v46 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v29 = *(v46 + 16);
    v47 = *(v46 + 24);
    v45 = v29 + 1;
    v56 = v142;
    if (v29 < v47 >> 1)
    {
      goto LABEL_20;
    }

    goto LABEL_120;
  }

  v46 = MEMORY[0x1E69E7CC0];
  v56 = v142;
  if (v35)
  {
    goto LABEL_40;
  }

LABEL_45:
  if (v44)
  {
    v89 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_1B69E36B0(0, *(v89 + 2) + 1, 1, v89);
    }

    v90 = v89;
    v92 = *(v89 + 2);
    v91 = *(v89 + 3);
    if (v92 >= v91 >> 1)
    {
      v90 = sub_1B69E36B0((v91 > 1), v92 + 1, 1, v89);
    }

    *(v90 + 2) = v92 + 1;
    *&v90[8 * v92 + 32] = v44;
  }

  (*(v56 + 8))(v42, TupleTypeMetadata3);
  return v141 | 0x8000000000000000;
}

uint64_t sub_1B6A698C4(void *a1, void *a2)
{
  v127 = a1;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a2[6];
  v9 = a2[7];
  v129 = AssociatedTypeWitness;
  v10 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v128 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v134 = v3;
  v135 = v4;
  v136 = v5;
  v137 = swift_getAssociatedTypeWitness();
  v123 = v137;
  v138 = v6;
  v139 = v8;
  v140 = v9;
  v130 = v10;
  v125 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v126 = v11;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v131 = *(TupleTypeMetadata3 - 8);
  v132 = TupleTypeMetadata3;
  v13 = *(v131 + 64);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v124 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v114 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v114 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v114 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v114 - v25;
  v134 = v3;
  v135 = v4;
  v136 = v5;
  v137 = v6;
  v138 = v8;
  v139 = v9;
  v27 = type metadata accessor for CombineLatestStateMachine.State();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v114 - v30;
  (*(v28 + 16))(&v114 - v30, v133, v27);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v120 = v26;
    v121 = v18;
    v122 = v21;
    v119 = v24;
    if (result != 1)
    {
      v33 = v24;
      v35 = v132;
      v34 = v133;
      if (result != 2)
      {
        goto LABEL_46;
      }

      v120 = *v31;
      MEMORY[0x1EEE9AC00](result);
      strcpy(&v114 - 64, "task upstreams downstreamContinuation buffer ");
      sub_1B6A622CC();
      v134 = v36;
      v135 = v35;
      sub_1B6AB9B30();
      swift_getTupleTypeMetadata3();
      sub_1B6AB9B30();
      sub_1B69AC828();
      sub_1B6ABA280();
      v136 = sub_1B6AB9740();
      v137 = sub_1B6AB95D0();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v38 = TupleTypeMetadata[12];
      v118 = *&v31[TupleTypeMetadata[16]];
      v39 = *&v31[TupleTypeMetadata[20]];

      v40 = v131;
      v41 = &v31[v38];
      v42 = v124;
      (*(v131 + 32))(v124, v41, v35);
      (*(v28 + 8))(v34, v27);
      swift_storeEnumTagMultiPayload();
      v43 = v35;
      v44 = *(v40 + 16);
      v44(v33, v42, v43);
      v123 = *(v43 + 48);
      v117 = *(v43 + 64);
      v128 = *v33;
      v45 = v33;
      v46 = v130;
      v47 = *(v130 - 8);
      v115 = *(v47 + 8);
      v116 = v47 + 8;
      v115(v45, v130);
      v48 = v122;
      v44(v122, v42, v43);
      v49 = *(v43 + 48);
      v114 = *(v43 + 64);
      v129 = *&v48[v49];
      v50 = v126;
      v51 = *(*(v126 - 8) + 8);
      v51(&v48[v49], v126);
      v52 = v121;
      v44(v121, v42, v43);
      v53 = *(v43 + 48);
      v54 = *(v43 + 64);
      v133 = *&v52[v54];
      v55 = v125;
      v56 = *(*(v125 - 8) + 8);
      v56(&v52[v54], v125);
      v51(&v52[v53], v50);
      v57 = v52;
      v58 = v115;
      v115(v57, v46);
      v56(&v48[v114], v55);
      v58(v48, v46);
      v59 = v119;
      v56(&v117[v119], v55);
      v51(&v59[v123], v50);
      if (v128)
      {
        v60 = v128;
        v61 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        v64 = v127;
        if (v63 >= v62 >> 1)
        {
          v61 = sub_1B69E36B0((v62 > 1), v63 + 1, 1, v61);
        }

        v65 = v131;
        v66 = v118;
        v67 = v124;
        v68 = v133;
        v69 = v129;
        *(v61 + 2) = v63 + 1;
        *&v61[8 * v63 + 32] = v60;
        if (!v69)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v61 = MEMORY[0x1E69E7CC0];
        v64 = v127;
        v65 = v131;
        v66 = v118;
        v67 = v124;
        v68 = v133;
        v69 = v129;
        if (!v129)
        {
LABEL_37:
          if (v68)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = sub_1B69E36B0(0, *(v61 + 2) + 1, 1, v61);
            }

            v112 = *(v61 + 2);
            v111 = *(v61 + 3);
            if (v112 >= v111 >> 1)
            {
              v61 = sub_1B69E36B0((v111 > 1), v112 + 1, 1, v61);
            }

            *(v61 + 2) = v112 + 1;
            *&v61[8 * v112 + 32] = v68;
          }

          (*(v65 + 8))(v67, v132);
          v113 = v64;
          return v66;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1B69E36B0(0, *(v61 + 2) + 1, 1, v61);
      }

      v110 = *(v61 + 2);
      v109 = *(v61 + 3);
      if (v110 >= v109 >> 1)
      {
        v61 = sub_1B69E36B0((v109 > 1), v110 + 1, 1, v61);
      }

      *(v61 + 2) = v110 + 1;
      *&v61[8 * v110 + 32] = v69;
      goto LABEL_37;
    }

    v118 = *v31;
    sub_1B6A622CC();
    sub_1B6AB9B30();
    swift_getTupleTypeMetadata3();
    sub_1B6AB95D0();
    v70 = v132;
    v71 = swift_getTupleTypeMetadata3();
    v72 = *(v71 + 48);
    v73 = *&v31[*(v71 + 64)];

    v74 = v131;
    v75 = v120;
    (*(v131 + 32))(v120, &v31[v72], v70);
    v76 = v133;
    (*(v28 + 8))(v133, v27);
    v77 = v127;
    *v76 = v127;
    swift_storeEnumTagMultiPayload();
    v78 = *(v74 + 16);
    v78(v24, v75, v70);
    v79 = *(v70 + 48);
    v128 = *(v70 + 64);
    v129 = v79;
    v124 = *v24;
    v80 = v77;
    v81 = *(v130 - 8);
    v117 = *(v81 + 8);
    v123 = v81 + 8;
    (v117)(v24);
    v82 = v122;
    v78(v122, v75, v70);
    v83 = *(v70 + 48);
    v116 = *(v70 + 64);
    v133 = *&v82[v83];
    v84 = v126;
    v85 = *(*(v126 - 8) + 8);
    v85(&v82[v83], v126);
    v86 = v121;
    v78(v121, v75, v70);
    v87 = *(v70 + 48);
    v88 = *(v70 + 64);
    v127 = *&v86[v88];
    v89 = v125;
    v90 = *(*(v125 - 8) + 8);
    v90(&v86[v88], v125);
    v85(&v86[v87], v84);
    v91 = v85;
    v92 = v86;
    v93 = v130;
    v94 = v117;
    (v117)(v92, v130);
    v90(&v82[v116], v89);
    v95 = v82;
    v96 = v124;
    v94(v95, v93);
    v97 = v119;
    v90(&v119[v128], v89);
    v91(&v97[v129], v84);
    if (v96)
    {
      v98 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v100 = *(v98 + 2);
      v99 = *(v98 + 3);
      if (v100 >= v99 >> 1)
      {
        v98 = sub_1B69E36B0((v99 > 1), v100 + 1, 1, v98);
      }

      v101 = v131;
      v66 = v118;
      v102 = v120;
      v103 = v133;
      v104 = v127;
      *(v98 + 2) = v100 + 1;
      *&v98[8 * v100 + 32] = v96;
      if (!v103)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v98 = MEMORY[0x1E69E7CC0];
      v101 = v131;
      v66 = v118;
      v102 = v120;
      v103 = v133;
      v104 = v127;
      if (!v133)
      {
LABEL_24:
        if (v104)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_1B69E36B0(0, *(v98 + 2) + 1, 1, v98);
          }

          v108 = *(v98 + 2);
          v107 = *(v98 + 3);
          if (v108 >= v107 >> 1)
          {
            v98 = sub_1B69E36B0((v107 > 1), v108 + 1, 1, v98);
          }

          *(v98 + 2) = v108 + 1;
          *&v98[8 * v108 + 32] = v104;
        }

        (*(v101 + 8))(v102, v132);
        return v66;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_1B69E36B0(0, *(v98 + 2) + 1, 1, v98);
    }

    v106 = *(v98 + 2);
    v105 = *(v98 + 3);
    if (v106 >= v105 >> 1)
    {
      v98 = sub_1B69E36B0((v105 > 1), v106 + 1, 1, v98);
    }

    *(v98 + 2) = v106 + 1;
    *&v98[8 * v106 + 32] = v103;
    goto LABEL_24;
  }

  if (result <= 4)
  {
    (*(v28 + 8))(v31, v27);
    return 0xF000000000000007;
  }

  if (result == 5)
  {
    return 0xF000000000000007;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1B6A6A5E4(uint64_t *a1, uint64_t a2, void *a3)
{
  v86 = a2;
  v91 = a1;
  v4 = a3[7];
  v5 = a3[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = sub_1B6AB9B30();
  v6 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v85 = &v73 - v7;
  v8 = a3[6];
  v9 = a3[3];
  v93 = swift_getAssociatedTypeWitness();
  v10 = sub_1B6AB9B30();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v73 - v12;
  v13 = a3[5];
  v14 = a3[2];
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_1B6AB9B30();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = &v73 - v18;
  *&v19 = v14;
  *(&v19 + 1) = v9;
  *&v20 = v5;
  *(&v20 + 1) = v13;
  v101 = v19;
  v102 = v20;
  v103 = v8;
  v104 = v4;
  v21 = type metadata accessor for CombineLatestStateMachine.State();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v90 = (&v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v73 - v25;
  v87 = v27;
  (*(v27 + 16))(&v73 - v25, v94, v21);
  v88 = v21;
  v89 = v26;
  result = swift_getEnumCaseMultiPayload();
  v95 = v15;
  if (!result)
  {
    v80 = sub_1B6AB9B30();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v79 = &v73;
    v82 = *(TupleTypeMetadata3 + 48);
    v81 = *(TupleTypeMetadata3 + 64);
    MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
    v78 = &v73 - 8;
    strcpy(&v73 - 64, "task upstreams downstreamContinuation buffer ");
    sub_1B6A622CC();
    v97 = v30;
    *&v101 = v14;
    *(&v101 + 1) = v9;
    *&v102 = v5;
    *(&v102 + 1) = v15;
    v103 = v13;
    v104 = v8;
    v105 = v4;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v101 = v14;
    *(&v101 + 1) = v9;
    v31 = v93;
    *&v102 = v5;
    *(&v102 + 1) = v93;
    v103 = v13;
    v104 = v8;
    v105 = v4;
    v77 = v4;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v101 = v14;
    *(&v101 + 1) = v9;
    *&v102 = v5;
    *(&v102 + 1) = AssociatedTypeWitness;
    v103 = v13;
    v104 = v8;
    v105 = v4;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    v98 = swift_getTupleTypeMetadata3();
    swift_getTupleTypeMetadata3();
    sub_1B6AB9B30();
    sub_1B69AC828();
    sub_1B6ABA280();
    v99 = sub_1B6AB9740();
    v100 = sub_1B6AB95D0();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v76 = v90 + TupleTypeMetadata[12];
    v78 = TupleTypeMetadata[16];
    v79 = TupleTypeMetadata[20];
    *v90 = v91;
    *&v101 = v14;
    *(&v101 + 1) = v9;
    v33 = v9;
    *&v102 = v5;
    *(&v102 + 1) = v95;
    v103 = v13;
    v104 = v8;
    v34 = v77;
    v105 = v77;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v101 = v14;
    *(&v101 + 1) = v9;
    *&v102 = v5;
    *(&v102 + 1) = v31;
    v103 = v13;
    v104 = v8;
    v105 = v34;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v101 = v14;
    *(&v101 + 1) = v9;
    *&v102 = v5;
    *(&v102 + 1) = AssociatedTypeWitness;
    v103 = v13;
    v104 = v8;
    v105 = v34;
    v35 = v34;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    v36 = swift_getTupleTypeMetadata3();
    v74 = *(v36 + 48);
    v75 = *(v36 + 64);
    v37 = v83;
    (*(*(v95 - 8) + 56))(v83, 1, 1, v95);
    v71 = v8;
    v72 = v34;
    v38 = v76;
    sub_1B6A6B264(0, v37, 0, v76);
    v39 = v84;
    (*(*(v93 - 8) + 56))(v84, 1, 1, v93);
    v71 = v8;
    v72 = v35;
    v40 = v38;
    sub_1B6A6B264(0, v39, 0, &v38[v74]);
    v41 = v85;
    (*(*(AssociatedTypeWitness - 8) + 56))(v85, 1, 1, AssociatedTypeWitness);
    v71 = v8;
    v72 = v35;
    v42 = v33;
    sub_1B6A6B264(0, v41, 0, &v40[v75]);
    v43 = v90;
    *(v78 + v90) = v86;

    swift_getTupleTypeMetadata3();
    *(v79 + v43) = sub_1B6AB91D0();
    v44 = v88;
    swift_storeEnumTagMultiPayload();
    (*(v87 + 40))(v94, v43, v44);
    v45 = v89;
    (*(*(v80 - 8) + 8))(&v89[v81]);
    (*(*(v42 - 8) + 8))(&v45[v82], v42);
    return (*(*(v14 - 8) + 8))(v45, v14);
  }

  v47 = v87;
  v46 = v88;
  v48 = v9;
  v49 = v13;
  v50 = v8;
  v51 = v93;
  v52 = AssociatedTypeWitness;
  v53 = v89;
  if (result > 3)
  {
    if (result != 4)
    {
      if (result == 5)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

LABEL_10:
    result = (*(v47 + 8))(v53, v46);
    goto LABEL_12;
  }

  if (result == 1)
  {
    v64 = *v89;

    sub_1B6A622CC();
    v94 = v65;
    *&v101 = v14;
    *(&v101 + 1) = v48;
    *&v102 = v5;
    *(&v102 + 1) = v15;
    v103 = v49;
    v104 = v50;
    v105 = v4;
    v91 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v101 = v14;
    *(&v101 + 1) = v48;
    *&v102 = v5;
    *(&v102 + 1) = v51;
    v103 = v49;
    v104 = v50;
    v105 = v4;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    *&v101 = v14;
    *(&v101 + 1) = v48;
    *&v102 = v5;
    *(&v102 + 1) = v52;
    v103 = v49;
    v104 = v50;
    v105 = v4;
    type metadata accessor for CombineLatestStateMachine.State.Upstream();
    v66 = swift_getTupleTypeMetadata3();
    swift_getTupleTypeMetadata3();
    sub_1B6AB95D0();
    v67 = swift_getTupleTypeMetadata3();
    v68 = *(v67 + 48);
    v69 = v89;
    v70 = *&v89[*(v67 + 64)];

    result = (*(*(v66 - 8) + 8))(&v69[v68], v66);
    goto LABEL_12;
  }

  if (result != 2)
  {
    goto LABEL_10;
  }

  v54 = *v89;

  v94 = &v73;
  MEMORY[0x1EEE9AC00](v55);
  v91 = &v73 - 8;
  strcpy(&v73 - 64, "task upstreams downstreamContinuation buffer ");
  sub_1B6A622CC();
  v97 = v56;
  *&v101 = v14;
  *(&v101 + 1) = v48;
  *&v102 = v5;
  *(&v102 + 1) = v15;
  v57 = v49;
  v103 = v49;
  v104 = v50;
  v105 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v101 = v14;
  *(&v101 + 1) = v48;
  v73 = v48;
  *&v102 = v5;
  *(&v102 + 1) = v51;
  v103 = v49;
  v104 = v50;
  v105 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v101 = v14;
  *(&v101 + 1) = v48;
  *&v102 = v5;
  *(&v102 + 1) = v52;
  v103 = v49;
  v104 = v50;
  v105 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v98 = swift_getTupleTypeMetadata3();
  v58 = v95;
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  sub_1B6ABA280();
  v99 = sub_1B6AB9740();
  v100 = sub_1B6AB95D0();
  v59 = swift_getTupleTypeMetadata();
  v94 = *(v59 + 48);
  v60 = v89;
  v61 = *&v89[*(v59 + 80)];

  v62 = v73;
  *&v101 = v14;
  *(&v101 + 1) = v73;
  *&v102 = v5;
  *(&v102 + 1) = v58;
  v103 = v57;
  v104 = v50;
  v105 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v101 = v14;
  *(&v101 + 1) = v62;
  *&v102 = v5;
  *(&v102 + 1) = v51;
  v103 = v57;
  v104 = v50;
  v105 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  *&v101 = v14;
  *(&v101 + 1) = v62;
  *&v102 = v5;
  *(&v102 + 1) = AssociatedTypeWitness;
  v103 = v57;
  v104 = v50;
  v105 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v63 = swift_getTupleTypeMetadata3();
  result = (*(*(v63 - 8) + 8))(&v94[v60], v63);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B6A6B264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for CombineLatestStateMachine.State.Upstream();
  v8 = *(v7 + 76);
  v9 = sub_1B6AB9B30();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(v7 + 80)] = a3;
  return result;
}

uint64_t sub_1B6A6B31C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A6B3A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A6B3E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFF);
  }

  v3 = (((*(a1 + 8) >> 49) >> 14) | (2 * ((*(a1 + 8) >> 49) & 0x3800 | ((*(a1 + 8) & 7) << 8) | HIBYTE(*a1) & 0xF0 | *a1 & 0xF))) ^ 0x7FFF;
  if (v3 >= 0x7FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6A6B460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFE)
  {
    *result = a2 - 0x7FFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3FFF | ((-a2 & 0x7FFF) << 14);
      *result = (v3 | (v3 << 56)) & 0xF00000000000000FLL;
      *(result + 8) = ((v3 >> 8) | (v3 << 49)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B6A6B4DC(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF0uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_1B6A6B50C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A6B560(void *a1)
{
  v2 = a1[5];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  v4 = a1[6];
  v5 = a1[3];
  swift_getAssociatedTypeWitness();
  v6 = a1[7];
  v7 = a1[4];
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  v8 = sub_1B6ABA280();
  v10 = v9;
  sub_1B6AB9740();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v12 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    if (v10 > 0x3F)
    {
      return v8;
    }

    else
    {
      v13 = *(v8 - 8);
      swift_getTupleTypeLayout2();
      TupleTypeMetadata2 = 0;
      *(*(a1 - 1) + 84) = v15;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1B6A6B734(unsigned __int16 *a1, int a2, void *a3)
{
  v5 = a3[5];
  v6 = a3[2];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = a3[6];
  v10 = a3[3];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v11 + 84) > v8)
  {
    v8 = *(v11 + 84);
  }

  v12 = a3[7];
  v13 = a3[4];
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  v18 = (v17 | v8) == 0;
  v19 = *(v14 + 64);
  if (!v16)
  {
    ++v18;
  }

  v20 = v18 + v19 + ((((*(v7 + 64) + *(v11 + 80)) & ~*(v11 + 80)) + *(v11 + 64) + v15) & ~v15);
  if (v20 <= 8)
  {
    v20 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  v23 = ((*(v11 + 80) | *(v7 + 80)) | v15) & 0xF8 | 7u;
  v24 = v20 + ((v23 + 8) & ~v23) + 1;
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_16;
  }

  v27 = (a2 - 0x7FFFFFFF + ~(-1 << v25)) >> v25;
  if (v27 > 0xFFFE)
  {
    v26 = *(a1 + v24);
    if (!v26)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  if (v27 <= 0xFE)
  {
    if (!v27)
    {
      goto LABEL_11;
    }

LABEL_16:
    v26 = *(a1 + v24);
    if (!*(a1 + v24))
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
LABEL_11:
    v21 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v21) = -1;
    }

    return (v21 + 1);
  }

LABEL_25:
  v28 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v28 = 0;
  }

  if (v24)
  {
    if (v24 > 3)
    {
      LODWORD(v24) = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        LODWORD(v24) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v24) = *a1;
      }
    }

    else if (v24 == 1)
    {
      LODWORD(v24) = *a1;
    }

    else
    {
      LODWORD(v24) = *a1;
    }
  }

  return (v24 | v28) ^ 0x80000000;
}

void sub_1B6A6BA24(_BYTE *a1, int a2, int a3, void *a4)
{
  v5 = a4[5];
  v6 = a4[2];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = a4[6];
  v10 = a4[3];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v11 + 84) > v8)
  {
    v8 = *(v11 + 84);
  }

  v12 = a4[7];
  v13 = a4[4];
  v14 = 0;
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  v19 = (v18 | v8) == 0;
  v20 = v17 == 0;
  v21 = (((*(v7 + 64) + *(v11 + 80)) & ~*(v11 + 80)) + *(v11 + 64) + *(v15 + 80)) & ~*(v15 + 80);
  v22 = *(v15 + 64);
  v23 = ((*(v11 + 80) | *(v7 + 80)) | v16) & 0xF8 | 7u;
  v24 = (v23 + 8) & ~v23;
  if (v20)
  {
    ++v19;
  }

  v25 = v19 + v22 + v21;
  if (v25 <= 8)
  {
    v25 = 8;
  }

  v26 = v25 + v24 + 1;
  if (a3 < 0)
  {
    if (v26 <= 3)
    {
      v28 = (a3 - 0x7FFFFFFF + ~(-1 << (8 * v26))) >> (8 * v26);
      if (v28 > 0xFFFE)
      {
        v14 = 4;
      }

      else
      {
        if (v28 < 0xFF)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28)
        {
          v14 = v29;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }

    v27 = a2;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_33:
    v30 = v27 & 0x7FFFFFFF;
    if (v26 >= 4)
    {
      bzero(a1, v26);
      *a1 = v30;
      v31 = 1;
      if (v14 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v31 = (v30 >> (8 * v26)) + 1;
    if (v26)
    {
      v32 = v27 & ~(-1 << (8 * v26));
      bzero(a1, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *a1 = v32;
          if (v14 > 1)
          {
LABEL_46:
            if (v14 == 2)
            {
              *&a1[v26] = v31;
            }

            else
            {
              *&a1[v26] = v31;
            }

            return;
          }
        }

        else
        {
          *a1 = v27;
          if (v14 > 1)
          {
            goto LABEL_46;
          }
        }

LABEL_43:
        if (v14)
        {
          a1[v26] = v31;
        }

        return;
      }

      *a1 = v32;
      a1[2] = BYTE2(v32);
    }

    if (v14 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v27 = a2;
  if (a2 < 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v26] = 0;
      if (!v27)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!v27)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v14 == 2)
  {
    *&a1[v26] = 0;
    goto LABEL_19;
  }

  *&a1[v26] = 0;
  if (v27)
  {
LABEL_20:
    *a1 = (v27 - 1);
  }
}

uint64_t sub_1B6A6BD94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A6BDDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 32))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 16) >> 50) >> 13) | (2 * ((*(a1 + 16) >> 50) & 0x1C00 | ((*(a1 + 16) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6A6BE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 24) = 0;
    }
  }

  return result;
}

void *sub_1B6A6BEDC(void *result, uint64_t a2)
{
  v2 = result[2] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[2] = v2;
  return result;
}

void sub_1B6A6BF14(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  if (v5 <= 0x3F)
  {
    sub_1B6A6C928();
    if (v6 <= 0x3F)
    {
      v7 = a1[5];
      swift_getAssociatedTypeWitness();
      v8 = a1[6];
      swift_getAssociatedTypeWitness();
      v9 = a1[7];
      swift_getAssociatedTypeWitness();
      sub_1B6AB9B30();
      swift_getTupleTypeMetadata3();
      sub_1B6AB9B30();
      sub_1B69AC828();
      sub_1B6ABA280();
      sub_1B6AB9740();
      v11 = v10;
      swift_getTupleTypeMetadata2();
      if (v12 <= 0x3F && v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B6A6C0E0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[4] - 8);
  v41 = (((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v38 = *(v4 + 84);
  v40 = *(v4 + 64);
  v5 = a3[5];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v37 = *(v6 + 80);
  v7 = a3[6];
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = a3[7];
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v6 + 84);
  if (*(v8 + 84) > v13)
  {
    v13 = *(v8 + 84);
  }

  v16 = v11 + 80;
  v14 = *(v11 + 80);
  v15 = *(v16 + 4);
  v17 = v15 - 1;
  if (!v15)
  {
    v17 = 0;
  }

  v18 = v15 == 0;
  v19 = *(v12 + 64);
  if (v18)
  {
    ++v19;
  }

  v20 = v14;
  v21 = ((v9 | v37) | v14) & 0xF8 | 7u;
  v22 = (v21 + 8) & ~v21;
  v23 = v17 | v13;
  v24 = v40;
  if (!v38)
  {
    v24 = v40 + 1;
  }

  v18 = v23 == 0;
  v25 = v24 + v41;
  if (v18)
  {
    ++v19;
  }

  v26 = v19 + ((*(v8 + 64) + v20 + ((*(v6 + 64) + v9) & ~v9)) & ~v20);
  if (v26 <= 8)
  {
    v26 = 8;
  }

  v27 = v26 + v22;
  if (v25 <= v27 + 1)
  {
    v25 = v27 + 1;
  }

  if (v25 <= 8)
  {
    v28 = 8;
  }

  else
  {
    v28 = v25;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_40;
  }

  v29 = v28 + 1;
  v30 = 8 * (v28 + 1);
  if ((v28 + 1) <= 3)
  {
    v33 = ((a2 + ~(-1 << v30) - 252) >> v30) + 1;
    if (HIWORD(v33))
    {
      v31 = *(a1 + v29);
      if (!v31)
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v33 > 0xFF)
    {
      v31 = *(a1 + v29);
      if (!*(a1 + v29))
      {
        goto LABEL_40;
      }

      goto LABEL_29;
    }

    if (v33 < 2)
    {
LABEL_40:
      v35 = *(a1 + v28);
      if (v35 >= 4)
      {
        return (v35 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v31 = *(a1 + v29);
  if (!*(a1 + v29))
  {
    goto LABEL_40;
  }

LABEL_29:
  v34 = (v31 - 1) << v30;
  if (v29 > 3)
  {
    v34 = 0;
  }

  if (v29)
  {
    if (v29 > 3)
    {
      LODWORD(v29) = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        LODWORD(v29) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v29) = *a1;
      }
    }

    else if (v29 == 1)
    {
      LODWORD(v29) = *a1;
    }

    else
    {
      LODWORD(v29) = *a1;
    }
  }

  return (v29 | v34) + 253;
}

void sub_1B6A6C4C8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[5];
  v6 = *(a4[4] - 8);
  v40 = (((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v6 + 80)) & ~*(v6 + 80);
  v37 = *(v6 + 84);
  v39 = *(v6 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v36 = *(v7 + 80);
  v8 = a4[6];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80);
  v11 = a4[7];
  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v7 + 84);
  if (*(v9 + 84) > v15)
  {
    v15 = *(v9 + 84);
  }

  v18 = v13 + 80;
  v16 = *(v13 + 80);
  v17 = *(v18 + 4);
  v19 = v17 - 1;
  if (!v17)
  {
    v19 = 0;
  }

  v20 = v17 == 0;
  v21 = *(v14 + 64);
  if (v20)
  {
    ++v21;
  }

  v22 = v16;
  v23 = ((v10 | v36) | v16) & 0xF8 | 7u;
  v24 = (v23 + 8) & ~v23;
  v25 = v19 | v15;
  v26 = v39;
  if (!v37)
  {
    v26 = v39 + 1;
  }

  v20 = v25 == 0;
  v27 = v26 + v40;
  if (v20)
  {
    ++v21;
  }

  v28 = v21 + ((*(v9 + 64) + v22 + ((*(v7 + 64) + v10) & ~v10)) & ~v22);
  if (v28 <= 8)
  {
    v28 = 8;
  }

  v29 = v28 + v24;
  if (v27 <= v29 + 1)
  {
    v27 = v29 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v30 = v27 + 1;
  if (a3 >= 0xFD)
  {
    if (v30 <= 3)
    {
      v31 = ((a3 + ~(-1 << (8 * v30)) - 252) >> (8 * v30)) + 1;
      if (HIWORD(v31))
      {
        v12 = 4;
      }

      else
      {
        if (v31 < 0x100)
        {
          v32 = 1;
        }

        else
        {
          v32 = 2;
        }

        if (v31 >= 2)
        {
          v12 = v32;
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

  if (a2 > 0xFC)
  {
    v33 = a2 - 253;
    if (v30 >= 4)
    {
      bzero(a1, v27 + 1);
      *a1 = v33;
      v34 = 1;
      if (v12 > 1)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v34 = (v33 >> (8 * v30)) + 1;
    if (v27 != -1)
    {
      v35 = v33 & ~(-1 << (8 * v30));
      bzero(a1, v30);
      if (v30 != 3)
      {
        if (v30 == 2)
        {
          *a1 = v35;
          if (v12 > 1)
          {
LABEL_52:
            if (v12 == 2)
            {
              *&a1[v30] = v34;
            }

            else
            {
              *&a1[v30] = v34;
            }

            return;
          }
        }

        else
        {
          *a1 = a2 + 3;
          if (v12 > 1)
          {
            goto LABEL_52;
          }
        }

LABEL_49:
        if (v12)
        {
          a1[v30] = v34;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v12 > 1)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v30] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      a1[v27] = -a2;
      return;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v12 == 2)
  {
    *&a1[v30] = 0;
    goto LABEL_38;
  }

  *&a1[v30] = 0;
  if (a2)
  {
    goto LABEL_39;
  }
}

void sub_1B6A6C928()
{
  if (!qword_1EB95C160)
  {
    sub_1B6A6C98C(0, qword_1EB95C168, MEMORY[0x1E69E62F8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C160);
    }
  }
}

void sub_1B6A6C98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B69E83F8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6A6C9EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A6CA28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6A6CA84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1B6A6CC38()
{
  v2 = v0;
  v3 = type metadata accessor for Batch();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for BatchRepair();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *__swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
  sub_1B6A5F260();
  if (!v1)
  {
    v29 = v4;
    v30 = 0;
    v15 = *(v14 + 16);
    if (v15)
    {
      v34 = v7;
      v35 = v8;
      v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = v2;
      v38 = MEMORY[0x1E69E7CC0];
      v16 = v14;
      sub_1B69E4CAC(0, v15, 0);
      v13 = v38;
      v17 = *(v33 + 80);
      v28 = v16;
      v18 = v16 + ((v17 + 32) & ~v17);
      v32 = *(v33 + 72);
      v33 = v17;
      v31 = (v17 + 16) & ~v17;
      v19 = (v29 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v20 = v9;
        v21 = v34;
        sub_1B6A6DBDC(v18, v34);
        sub_1B6A6DBDC(v21, v12);
        v22 = v36;
        sub_1B69B5BF8(v21, v36, type metadata accessor for Batch);
        v23 = swift_allocObject();
        sub_1B69B5BF8(v22, v23 + v31, type metadata accessor for Batch);
        *(v23 + v19) = v37;
        v24 = &v12[*(v35 + 20)];
        *v24 = sub_1B6A6DC40;
        v24[1] = v23;
        v38 = v13;
        v25 = *(v13 + 16);
        v26 = *(v13 + 24);

        if (v25 >= v26 >> 1)
        {
          sub_1B69E4CAC(v26 > 1, v25 + 1, 1);
          v13 = v38;
        }

        *(v13 + 16) = v25 + 1;
        v9 = v20;
        sub_1B69B5BF8(v12, v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v25, type metadata accessor for BatchRepair);
        v18 += v32;
        --v15;
      }

      while (v15);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v13;
}

void sub_1B6A6CF6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v2;
  v16 = *(a1 + 32);
  v3 = v1[11];
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v6 = sub_1B69B3AA0(v15);
  v8 = v7;
  swift_endAccess();
  os_unfair_lock_unlock(*(v1[11] + 16));
  if (v8)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    v10 = *v9;
    v11 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
    v12 = *(*v9 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock);
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    os_unfair_lock_lock_with_options();
    sub_1B6A5DF98(v6, v8);

    os_unfair_lock_unlock(*(*(v10 + v11) + 16));
  }
}

uint64_t sub_1B6A6D058(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(a2 + 16);
    v20 = *(a2 + 24);
    result += 32;
    v17 = v4;
    do
    {
      v19 = result;
      sub_1B6982544(result, v22);
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B69990B4();
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1B6ABF500;
      *(v5 + 56) = MEMORY[0x1E69E6158];
      v6 = sub_1B698CEC0();
      *(v5 + 64) = v6;
      *(v5 + 32) = v4;
      *(v5 + 40) = v20;
      v7 = v23;
      v8 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v9 = *(v8 + 16);

      v10 = v9(v7, v8);
      *(v5 + 96) = MEMORY[0x1E69E6158];
      *(v5 + 104) = v6;
      *(v5 + 72) = v10;
      *(v5 + 80) = v11;
      sub_1B6AB9900();
      sub_1B6AB8F70();

      sub_1B6982544(a3 + 32, v21);
      v12 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      v13 = v23;
      v14 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v15 = (*(*(v14 + 8) + 8))(v13);
      v16 = *v12;
      v4 = v17;
      sub_1B6A5E87C(v15, v17, v20);

      __swift_destroy_boxed_opaque_existential_1(v21);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = v19 + 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B6A6D368(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v7 = *v3;
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;
  *(v4 + 104) = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B6A6D46C, 0, 0);
}

uint64_t sub_1B6A6D46C()
{
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v14 = v4;
  v15 = *(v0 + 40);
  v5 = *(v0 + 104);
  sub_1B69990B4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B6ABF500;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1B698CEC0();
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;

  LOBYTE(v4) = v5;
  v9 = sub_1B69F822C(v2, v1, v5);
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v9;
  *(v6 + 80) = v10;
  sub_1B6AB9900();
  sub_1B6AB8F70();

  v11 = *__swift_project_boxed_opaque_existential_1((v15 + 32), *(v15 + 56));
  sub_1B6A5FA74(v14, v3, v2, v1, v4);
  sub_1B69F8F30(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  dispatch_group_leave(*(v0 + 72));
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1B6A6D7A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  return swift_deallocClassInstance();
}

void sub_1B6A6D808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = sub_1B6AB9320();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = objc_opt_self();
  v9 = sub_1B6AB8C60();
  v32 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:&v32];

  v11 = v32;
  if (!v10)
  {
    v25 = v11;
    v26 = sub_1B6AB8A70();

    swift_willThrow();
LABEL_9:
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98F0();
    sub_1B69990B4();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B6ABD890;
    v33 = 0;
    v34 = 0xE000000000000000;
    v32 = v26;
    sub_1B697ED90(0, &qword_1EDBCBB00);
    sub_1B6AB9DF0();
    v29 = v33;
    v30 = v34;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1B698CEC0();
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    sub_1B6AB8F70();

    goto LABEL_12;
  }

  sub_1B6AB9BC0();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(&v33, v35);
  v12 = sub_1B6ABA0E0();
  v32 = 0;
  v13 = [v8 dataWithJSONObject:v12 options:3 error:&v32];
  swift_unknownObjectRelease();
  v14 = v32;
  if (!v13)
  {
    v27 = v14;
    v26 = sub_1B6AB8A70();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v33);
    goto LABEL_9;
  }

  v15 = sub_1B6AB8C80();
  v17 = v16;

  sub_1B6AB9310();
  v18 = sub_1B6AB92F0();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B69990B4();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B6ABF500;
    v23 = MEMORY[0x1E69E6158];
    *(v22 + 56) = MEMORY[0x1E69E6158];
    v24 = sub_1B698CEC0();
    *(v22 + 32) = a3;
    *(v22 + 40) = a4;
    *(v22 + 96) = v23;
    *(v22 + 104) = v24;
    *(v22 + 64) = v24;
    *(v22 + 72) = v20;
    *(v22 + 80) = v21;

    sub_1B6AB9900();
    sub_1B6AB8F70();

    sub_1B6993C94(v15, v17);
    __swift_destroy_boxed_opaque_existential_1(&v33);
LABEL_12:
    v31 = *MEMORY[0x1E69E9840];
    return;
  }

  __break(1u);
}

uint64_t sub_1B6A6DBDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Batch();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A6DC40(uint64_t a1)
{
  v3 = *(type metadata accessor for Batch() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B6A6D058(a1, v1 + v4, v5);
}

uint64_t TimestampGranularity.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65736963657270;
  v3 = 1920298856;
  v4 = 0x6574756E696DLL;
  if (v1 != 3)
  {
    v4 = 0x72657474696ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7954788;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B6A6DD70()
{
  result = qword_1EB95C1F0;
  if (!qword_1EB95C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C1F0);
  }

  return result;
}

uint64_t sub_1B6A6DDC4()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A6DE90()
{
  *v0;
  *v0;
  *v0;
  sub_1B6AB9380();
}

uint64_t sub_1B6A6DF48()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

void sub_1B6A6E01C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65736963657270;
  v5 = 0xE400000000000000;
  v6 = 1920298856;
  v7 = 0x6574756E696DLL;
  if (v2 != 3)
  {
    v7 = 0x72657474696ALL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 7954788;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1B6A6E154()
{
  result = qword_1EB95C1F8;
  if (!qword_1EB95C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C1F8);
  }

  return result;
}

id BridgedUserIDConfiguration.__allocating_init(rotationPeriod:storage:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___AAUserIDConfiguration_configuration];
  sub_1B6982544(a2 + OBJC_IVAR___AAUserIDStorage_storage, &v5[OBJC_IVAR___AAUserIDConfiguration_configuration + 8]);
  *v6 = a1;
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id BridgedUserIDConfiguration.init(rotationPeriod:storage:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___AAUserIDConfiguration_configuration];
  sub_1B6982544(a2 + OBJC_IVAR___AAUserIDStorage_storage, &v2[OBJC_IVAR___AAUserIDConfiguration_configuration + 8]);
  *v6 = a1;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id BridgedUserIDConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedUserIDConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t BridgedRotationModeType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B6A6E4E4()
{
  result = qword_1EB95C208;
  if (!qword_1EB95C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C208);
  }

  return result;
}

uint64_t sub_1B6A6E548()
{
  v1 = sub_1B6AB8E40();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6AB9160();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB9150();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - v14;
  v46 = v0;
  v16 = sub_1B6AB8DD0();
  v18 = sub_1B699F46C(v16, v17);
  v20 = v19;
  sub_1B6A6ECE4(&qword_1EB95C210, MEMORY[0x1E6966620]);
  sub_1B6AB9140();
  sub_1B6994494(v18, v20);
  sub_1B6A6EB04(v18, v20);
  sub_1B6993C94(v18, v20);
  v21 = v50;
  v22 = v51;
  sub_1B6AB9130();
  sub_1B6993C94(v18, v20);
  (*(v5 + 8))(v8, v4);
  v23 = *(v21 + 16);
  v45 = v15;
  v23(v13, v15, v22);
  sub_1B6A6ECE4(&qword_1EB95C218, MEMORY[0x1E69663E0]);
  sub_1B6AB9470();
  result = v52;
  v25 = v52[2];
  if (v25 != v53)
  {
    if (v25 <= v53)
    {
      __break(1u);
    }

    else
    {
      v27 = v25 - v53;
      if (v25 >= v53)
      {
        v28 = v25 - v53;
      }

      else
      {
        v28 = 0;
      }

      if (v28 > v25 + ~v53)
      {
        v29 = 0;
        v30 = v53 + 32;
        do
        {
          v29 = *(v52 + v30++) | (v29 << 8);
          --v27;
        }

        while (v27);

        v26 = v29 % 0x64 + 1;
        goto LABEL_11;
      }
    }

    __break(1u);
    return result;
  }

  v26 = 1;
LABEL_11:
  v32 = v47;
  v31 = v48;
  v33 = v49;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v34 = sub_1B6AB8F90();
  __swift_project_value_buffer(v34, qword_1EDBCFDA8);
  (*(v31 + 16))(v32, v46, v33);
  v35 = sub_1B6AB8F80();
  v36 = sub_1B6AB98D0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v32;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v52 = v39;
    *v38 = 134218242;
    *(v38 + 4) = v26;
    *(v38 + 12) = 2080;
    sub_1B6A6ECE4(&unk_1EB95C220, MEMORY[0x1E69695A8]);
    v40 = sub_1B6ABA080();
    v41 = v31;
    v43 = v42;
    (*(v41 + 8))(v37, v33);
    v44 = sub_1B698F63C(v40, v43, &v52);

    *(v38 + 14) = v44;
    _os_log_impl(&dword_1B697C000, v35, v36, "Sampling value: %ld for id: %s", v38, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1B8C99550](v39, -1, -1);
    MEMORY[0x1B8C99550](v38, -1, -1);
  }

  else
  {

    (*(v31 + 8))(v32, v33);
  }

  (*(v21 + 8))(v45, v51);
  return v26;
}

uint64_t sub_1B6A6EAB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = *(result + 7);
    v3 = *(result + 6) & 0xF | 0x50;
    v4 = *(result + 8) & 0x3F | 0x80;
    *a2 = *result;
    *(a2 + 4) = *(result + 4);
    *(a2 + 6) = v3;
    *(a2 + 7) = v2;
    *(a2 + 8) = v4;
    *(a2 + 9) = *(result + 9);
    *(a2 + 12) = *(result + 12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A6EB04(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1B6AB9160();
      sub_1B6A6ECE4(&qword_1EB95C210, MEMORY[0x1E6966620]);
      result = sub_1B6AB9120();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1B6A6ED2C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B6A6ECE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B6A6ED2C(uint64_t a1, uint64_t a2)
{
  result = sub_1B6AB8900();
  if (!result || (result = sub_1B6AB8930(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B6AB8920();
      sub_1B6AB9160();
      sub_1B6A6ECE4(&qword_1EB95C210, MEMORY[0x1E6966620]);
      return sub_1B6AB9120();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A6EE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B6993390(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1B69D1264(a3, v24 - v10);
  v12 = sub_1B6AB9680();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B69A716C(v11, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1B6AB9670();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B6AB95E0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B6AB9350() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1B69A716C(a3, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0]);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B69A716C(a3, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0]);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B6A6F0DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B6A6F1E0(char a1)
{
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](a1 & 1);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A6F228(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B6ABA0F0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

BOOL sub_1B6A6F29C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1B6A6F1A8(*a1, *a2);
}

uint64_t sub_1B6A6F2B4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1B6A6F1E0(*v1);
}

uint64_t sub_1B6A6F2C8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1B6A6F1B8(a1, *v2);
}

uint64_t sub_1B6A6F2DC(uint64_t a1, void *a2)
{
  sub_1B6ABA1F0();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1B6A6F1B8(v9, *v2);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A6F328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1B6A6F0DC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1B6A6F35C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1B69F3778();
  *a2 = result;
  return result;
}

uint64_t sub_1B6A6F390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B6A6F3E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1B6A6F438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1B6A6F228(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1B6A6F470@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1B69D1464();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B6A6F4A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B6A6F4FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

BOOL sub_1B6A6F550(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1B6A6F1A8(*a1, *a2);
}

uint64_t sub_1B6A6F564(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1B6A6F1E0(*v1);
}

uint64_t sub_1B6A6F574(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1B6A6F1B8(a1, *v2);
}

uint64_t sub_1B6A6F584(uint64_t a1, uint64_t a2)
{
  sub_1B6ABA1F0();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1B6A6F1B8(v7, *v2);
  return sub_1B6ABA230();
}

uint64_t sub_1B6A6F5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1B6A6F0DC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1B6A6F5FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B6A6F650(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static HeartbeatEventService.URLSessionIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EB95C230;

  return v0;
}

uint64_t static HeartbeatEventService.URLSessionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  qword_1EB95C230 = a1;
  off_1EB95C238 = a2;
}

uint64_t sub_1B6A6F7AC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB95C230 = v2;
  off_1EB95C238 = v1;
}

uint64_t sub_1B6A6F810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A6FBDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A6F838(uint64_t a1)
{
  v2 = sub_1B69A8764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A6F874(uint64_t a1)
{
  v2 = sub_1B69A8764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A6F8E8()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[22];

  sub_1B6AB98E0();
  sub_1B69990B4();
  v4 = swift_allocObject();
  v0[13] = 0;
  *(v4 + 16) = xmmword_1B6ABD890;
  v0[14] = 0xE000000000000000;
  v0[17] = v1;
  sub_1B697ED90(0, &qword_1EDBCBB00);
  sub_1B6AB9DF0();
  v5 = v0[13];
  v6 = v0[14];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B698CEC0();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1B6AB8F70();

  sub_1B6AB9CA0();
  v0[15] = 0;
  v0[16] = 0xE000000000000000;
  MEMORY[0x1B8C97BE0](0x46676E696E676953, 0xEF3D6572756C6961);
  v0[18] = v1;
  sub_1B6AB9DF0();

  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[1];

  return v9(v7, v8);
}

id _s12AppAnalytics14ViewingSessionCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B6A6FB88()
{
  result = qword_1EB95C2A0;
  if (!qword_1EB95C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C2A0);
  }

  return result;
}

uint64_t sub_1B6A6FBDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446873756C66 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B6A6FD04(void *a1, void *a2)
{
  v121 = a2;
  v130 = *MEMORY[0x1E69E9840];
  v3 = sub_1B6AB8810();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v117 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v111 - v8;
  sub_1B6993390(0, &unk_1EDBC8828, MEMORY[0x1E6969C20]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v111 - v11;
  v13 = sub_1B6AB8F30();
  v122 = *(v13 - 8);
  v123 = v13;
  v14 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B6AB8AB0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1B6AB8BB0();
  v126 = *(v124 - 8);
  v21 = *(v126 + 64);
  v22 = MEMORY[0x1EEE9AC00](v124);
  v24 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v125 = &v111 - v25;
  sub_1B6993390(0, &qword_1EDBC8840, MEMORY[0x1E6967EC8]);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v30 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v111 - v31;
  v118 = a1;
  v33 = [a1 originalRequest];
  if (v33)
  {
    v34 = v33;
    sub_1B6AB87C0();

    (*(v4 + 56))(v30, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v30, 1, 1, v3);
  }

  sub_1B6A70D10(v30, v32);
  if ((*(v4 + 48))(v32, 1, v3) == 1)
  {
    sub_1B69A716C(v32, &qword_1EDBC8840, MEMORY[0x1E6967EC8]);
LABEL_10:
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    result = sub_1B6AB8F70();
    goto LABEL_33;
  }

  v35 = sub_1B6AB87F0();
  v37 = v36;
  v38 = *(v4 + 8);
  v113 = v4 + 8;
  v112 = v38;
  v38(v32, v3);
  if (!v37)
  {
    goto LABEL_10;
  }

  sub_1B6AB8B50();
  v114 = v35;
  v115 = v37;
  v128 = v35;
  v129 = v37;
  (*(v17 + 104))(v20, *MEMORY[0x1E6968F68], v16);
  sub_1B69830D8();
  v39 = MEMORY[0x1E69E6158];
  sub_1B6AB8BA0();
  (*(v17 + 8))(v20, v16);
  v40 = v126 + 8;
  v116 = *(v126 + 8);
  v116(v24, v124);
  v41 = v121;
  if (!v121)
  {
    (*(v122 + 56))(v12, 1, 1, v123);
    sub_1B69A716C(v12, &unk_1EDBC8828, MEMORY[0x1E6969C20]);
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B69990B4();
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1B6ABD890;
    *(v48 + 56) = v39;
    *(v48 + 64) = sub_1B698CEC0();
    v49 = v115;
    *(v48 + 32) = v114;
    *(v48 + 40) = v49;
    sub_1B6AB9900();
    sub_1B6AB8F70();

    v46 = v124;
    goto LABEL_27;
  }

  v128 = v121;
  v42 = v121;
  v126 = sub_1B697ED90(0, &qword_1EDBCBB00);
  v43 = v123;
  v44 = swift_dynamicCast();
  v45 = v122;
  (*(v122 + 56))(v12, v44 ^ 1u, 1, v43);
  if ((*(v45 + 48))(v12, 1, v43) == 1)
  {
    sub_1B69A716C(v12, &unk_1EDBC8828, MEMORY[0x1E6969C20]);
    v46 = v124;
    goto LABEL_24;
  }

  (*(v45 + 32))(v120, v12, v43);
  sub_1B69A84B0(&qword_1EB95C2A8, MEMORY[0x1E6969C20]);
  v50 = sub_1B6AB8A50();
  v51 = *MEMORY[0x1E696A970];
  v52 = sub_1B6AB92E0();
  if (!*(v50 + 16))
  {

    v46 = v124;
LABEL_23:
    (*(v45 + 8))(v120, v43);
    goto LABEL_24;
  }

  v54 = sub_1B6993940(v52, v53);
  v56 = v55;

  v46 = v124;
  if ((v56 & 1) == 0)
  {

    v43 = v123;
    goto LABEL_23;
  }

  sub_1B698FE74(*(v50 + 56) + 32 * v54, &v128);

  if ((swift_dynamicCast() & 1) != 0 && !v127)
  {
    v85 = [objc_opt_self() defaultManager];
    sub_1B6AB8B70();
    v86 = sub_1B6AB92B0();

    v87 = [v85 fileExistsAtPath_];

    if (v87)
    {
      v88 = [v118 originalRequest];
      if (!v88)
      {
        v108 = v114;
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        sub_1B6AB98E0();
        sub_1B69990B4();
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_1B6ABD890;
        *(v109 + 56) = MEMORY[0x1E69E6158];
        *(v109 + 64) = sub_1B698CEC0();
        v110 = v115;
        *(v109 + 32) = v108;
        *(v109 + 40) = v110;
        sub_1B6AB8F70();

        (*(v45 + 8))(v120, v123);
        goto LABEL_27;
      }

      v89 = v117;
      v90 = v88;
      sub_1B6AB87C0();

      (*(v4 + 32))(v119, v89, v3);
      v91 = v114;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B69990B4();
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_1B6ABD890;
      *(v92 + 56) = MEMORY[0x1E69E6158];
      *(v92 + 64) = sub_1B698CEC0();
      v93 = v115;
      *(v92 + 32) = v91;
      *(v92 + 40) = v93;
      sub_1B6AB9900();
      sub_1B6AB8F70();

      v94 = v125;
      if (qword_1EDBC8248 != -1)
      {
        swift_once();
      }

      v95 = qword_1EDBC8250;
      v96 = v119;
      v97 = sub_1B6AB87A0();
      v98 = sub_1B6AB8B20();
      v99 = [v95 uploadTaskWithRequest:v97 fromFile:v98];

      [v99 resume];
      v112(v96, v3);
      (*(v45 + 8))(v120, v123);
      v100 = v94;
    }

    else
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98E0();
      sub_1B69990B4();
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_1B6ABF500;
      v102 = MEMORY[0x1E69E6158];
      *(v101 + 56) = MEMORY[0x1E69E6158];
      v103 = sub_1B698CEC0();
      *(v101 + 64) = v103;
      v104 = v115;
      *(v101 + 32) = v114;
      *(v101 + 40) = v104;
      v105 = v125;
      v106 = sub_1B6AB8B70();
      *(v101 + 96) = v102;
      *(v101 + 104) = v103;
      *(v101 + 72) = v106;
      *(v101 + 80) = v107;
      sub_1B6AB8F70();

      (*(v45 + 8))(v120, v123);
      v100 = v105;
    }

    result = (v116)(v100, v46);
    goto LABEL_33;
  }

  (*(v45 + 8))(v120, v123);
LABEL_24:
  v57 = v41;
  v58 = v41;
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B6AB98E0();
  sub_1B69990B4();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1B6ABF500;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 56) = MEMORY[0x1E69E6158];
  v61 = sub_1B698CEC0();
  *(v59 + 64) = v61;
  v62 = v115;
  *(v59 + 32) = v114;
  *(v59 + 40) = v62;
  v128 = 0;
  v129 = 0xE000000000000000;
  v127 = v58;
  sub_1B6AB9DF0();
  v63 = v128;
  v64 = v129;
  *(v59 + 96) = v60;
  *(v59 + 104) = v61;
  *(v59 + 72) = v63;
  *(v59 + 80) = v64;
  sub_1B6AB8F70();

LABEL_27:
  v126 = v40;
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B69990B4();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1B6ABD890;
  sub_1B69A84B0(&qword_1EDBC8838, MEMORY[0x1E6968FB0]);
  v66 = v125;
  v67 = sub_1B6ABA080();
  v69 = v68;
  v70 = v46;
  v71 = MEMORY[0x1E69E6158];
  *(v65 + 56) = MEMORY[0x1E69E6158];
  v72 = sub_1B698CEC0();
  *(v65 + 64) = v72;
  *(v65 + 32) = v67;
  *(v65 + 40) = v69;
  sub_1B6AB9900();
  sub_1B6AB8F70();

  v73 = v66;
  v74 = [objc_opt_self() defaultManager];
  v75 = sub_1B6AB8B20();
  v128 = 0;
  LODWORD(v69) = [v74 removeItemAtURL:v75 error:&v128];

  if (v69)
  {
    v76 = v128;
  }

  else
  {
    v77 = v128;
    v78 = sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6AB98E0();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1B6ABF500;
    v80 = sub_1B6ABA080();
    *(v79 + 56) = v71;
    *(v79 + 64) = v72;
    *(v79 + 32) = v80;
    *(v79 + 40) = v81;
    v128 = 0;
    v129 = 0xE000000000000000;
    v127 = v78;
    sub_1B697ED90(0, &qword_1EDBCBB00);
    sub_1B6AB9DF0();
    v82 = v128;
    v83 = v129;
    *(v79 + 96) = v71;
    *(v79 + 104) = v72;
    *(v79 + 72) = v82;
    *(v79 + 80) = v83;
    sub_1B6AB8F70();
  }

  result = (v116)(v73, v70);
LABEL_33:
  v84 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B6A70D10(uint64_t a1, uint64_t a2)
{
  sub_1B6993390(0, &qword_1EDBC8840, MEMORY[0x1E6967EC8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A70D90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
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

void sub_1B6A70F14(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
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

uint64_t sub_1B6A711F4()
{
  *(v1 + 16) = *v0;
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69F18A0();
  v3 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B6A71290, v3, v2);
}

uint64_t sub_1B6A71290()
{
  v1 = [*(v0 + 16) storefrontID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B6AB92E0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

AppAnalytics::SummarizedEventTrackingKind_optional __swiftcall SummarizedEventTrackingKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6AB9EF0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SummarizedEventTrackingKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265746E756F63;
  }

  else
  {
    return 0x6E61656C6F6F62;
  }
}

uint64_t sub_1B6A713CC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7265746E756F63;
  }

  else
  {
    v2 = 0x6E61656C6F6F62;
  }

  if (*a2)
  {
    v3 = 0x7265746E756F63;
  }

  else
  {
    v3 = 0x6E61656C6F6F62;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B6ABA0F0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1B6A71458()
{
  result = qword_1EB95C310;
  if (!qword_1EB95C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C310);
  }

  return result;
}

uint64_t sub_1B6A714AC()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A71524()
{
  *v0;
  sub_1B6AB9380();
}

uint64_t sub_1B6A71580()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9380();

  return sub_1B6ABA230();
}

uint64_t sub_1B6A715F4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B6AB9EF0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B6A71654(uint64_t *a1@<X8>)
{
  v2 = 0x6E61656C6F6F62;
  if (*v1)
  {
    v2 = 0x7265746E756F63;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

unint64_t sub_1B6A7174C()
{
  result = qword_1EB95C318;
  if (!qword_1EB95C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C318);
  }

  return result;
}

AppAnalytics::UserIDResetFlag __swiftcall UserIDResetFlag.init(suiteName:userDataIDsResetKey:)(Swift::String_optional suiteName, Swift::String userDataIDsResetKey)
{
  *v2 = suiteName;
  v2[1].value = userDataIDsResetKey;
  result.userDataIDsResetKey = userDataIDsResetKey;
  result.suiteName = suiteName;
  return result;
}

void sub_1B6A717AC()
{
  qword_1EB95C320 = 0;
  *algn_1EB95C328 = 0;
  qword_1EB95C330 = 0xD00000000000001CLL;
  qword_1EB95C338 = 0x80000001B6ACCC40;
}

uint64_t static UserIDResetFlag.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB95A9C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EB95C338;
  *a1 = qword_1EB95C320;
  *(a1 + 8) = *algn_1EB95C328;
  *(a1 + 24) = v1;
}

uint64_t sub_1B6A71868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B6A718B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6A71900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B6A72468;

  return sub_1B6A719AC(a2, a3, a4);
}

uint64_t sub_1B6A719AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1B6A72358();
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1B6AB9A60();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A71A9C, 0, 0);
}

uint64_t sub_1B6A71A9C()
{
  v1 = v0[9];
  v2 = v0[3];

  sub_1B6AB9A50();
  v3 = sub_1B6A723B0();
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1B6A71B5C;
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];

  return MEMORY[0x1EEE6D8C8](v7, v8, v3);
}

uint64_t sub_1B6A71B5C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1B6A72464;
  }

  else
  {
    v3 = sub_1B6A71C70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6A71C8C()
{
  v1 = *(v0 + 48);
  v2 = sub_1B6AB88D0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 40);
    (*(v0 + 32))();
    sub_1B6A72408(v1);
    v6 = sub_1B6A723B0();
    v7 = *(MEMORY[0x1E69E85A8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_1B6A71B5C;
    v9 = *(v0 + 72);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);

    return MEMORY[0x1EEE6D8C8](v10, v11, v6);
  }
}

uint64_t sub_1B6A71DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B69F1038;

  return sub_1B6A71E98(a2, a3, a4);
}

uint64_t sub_1B6A71E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1B6A72358();
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1B6AB9A60();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B6A71F88, 0, 0);
}

uint64_t sub_1B6A71F88()
{
  v1 = v0[9];
  v2 = v0[3];

  sub_1B6AB9A50();
  v3 = sub_1B6A723B0();
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1B6A72048;
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];

  return MEMORY[0x1EEE6D8C8](v7, v8, v3);
}

uint64_t sub_1B6A72048()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1B6A722D8;
  }

  else
  {
    v3 = sub_1B6A7215C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6A72178()
{
  v1 = *(v0 + 48);
  v2 = sub_1B6AB88D0();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 40);
    (*(v0 + 32))();
    sub_1B6A72408(v1);
    v6 = sub_1B6A723B0();
    v7 = *(MEMORY[0x1E69E85A8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_1B6A72048;
    v9 = *(v0 + 72);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);

    return MEMORY[0x1EEE6D8C8](v10, v11, v6);
  }
}

uint64_t sub_1B6A722D8()
{
  *(v0 + 16) = *(v0 + 88);
  sub_1B69AC828();
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_1B6A72358()
{
  if (!qword_1EB95C340)
  {
    sub_1B6AB88D0();
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C340);
    }
  }
}

unint64_t sub_1B6A723B0()
{
  result = qword_1EB95C348;
  if (!qword_1EB95C348)
  {
    sub_1B6AB9A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C348);
  }

  return result;
}

uint64_t sub_1B6A72408(uint64_t a1)
{
  sub_1B6A72358();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static OS_os_log.analytics.getter()
{
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBCCB28;

  return v1;
}

id static OS_os_log.analytics(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B6980780();

    return sub_1B6AB9B10();
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDBCCB28;

    return v3;
  }
}

uint64_t sub_1B6A725B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_1B6AB92E0();
  }

  sub_1B6980780();
  result = sub_1B6AB9B10();
  *a4 = result;
  return result;
}

uint64_t Group.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAGroup_name);
  v2 = *(v0 + OBJC_IVAR___AAGroup_name + 8);

  return v1;
}

uint64_t Group.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AAGroup_startDate;
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Group.contentType.getter()
{
  result = *(v0 + OBJC_IVAR___AAGroup_contentType);
  v2 = *(v0 + OBJC_IVAR___AAGroup_contentType + 8);
  return result;
}

id Group.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Group.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Group();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Group()
{
  result = qword_1EDBC8CE0;
  if (!qword_1EDBC8CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A72A58()
{
  result = sub_1B6AB8DB0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B6A72B3C(unsigned int *a1)
{
  v42 = a1;
  v44 = type metadata accessor for RotationMode();
  v1 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6AB8DB0();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1B6AB8EE0();
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A758A0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6AB8F20();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B6AB8E50();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1B6AB8F00();
  v38 = *(v40 - 8);
  v24 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v23, *MEMORY[0x1E6969868], v19);
  sub_1B6AB8E60();
  (*(v20 + 8))(v23, v19);
  sub_1B6AB8F10();
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_1B6AB8ED0();
    v28 = v41;
    v29 = v39;
    (*(v39 + 104))(v9, *v42, v41);
    sub_1B69E9DFC(v43, v3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B698114C();
      v31 = *(v30 + 64);
      v33 = v45;
      v32 = v46;
      v34 = v47;
      (*(v46 + 32))(v45, &v3[*(v30 + 48)], v47);
      (*(v32 + 8))(&v3[v31], v34);
    }

    else
    {
      sub_1B698103C(0);
      v33 = v45;
      v32 = v46;
      v34 = v47;
      (*(v46 + 32))(v45, &v3[*(v35 + 48)], v47);
    }

    v36 = sub_1B6AB8E40();
    (*(*(v36 - 8) + 8))(v3, v36);
    v37 = sub_1B6AB8EF0();
    (*(v32 + 8))(v33, v34);
    (*(v29 + 8))(v9, v28);
    (*(v38 + 8))(v26, v40);
    return v37;
  }

  return result;
}

uint64_t sub_1B6A73084()
{
  if (*v0)
  {
    return 0x346E6F6973726576;
  }

  else
  {
    return 0x356E6F6973726576;
  }
}

uint64_t sub_1B6A730B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x356E6F6973726576 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x346E6F6973726576 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A73194(uint64_t a1)
{
  v2 = sub_1B6A751B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A731D0(uint64_t a1)
{
  v2 = sub_1B6A751B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A7320C()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x61746F527473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B6A73268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A75600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A73290(uint64_t a1)
{
  v2 = sub_1B6A7510C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A732CC(uint64_t a1)
{
  v2 = sub_1B6A7510C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A73308()
{
  v1 = 0x63617073656D616ELL;
  v2 = 0x6F52646568636163;
  if (*v0 != 2)
  {
    v2 = 0x756F437465736572;
  }

  if (*v0)
  {
    v1 = 0x7461447472617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B6A73394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A7571C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A733C8(uint64_t a1)
{
  v2 = sub_1B6A75160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A73404(uint64_t a1)
{
  v2 = sub_1B6A75160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RotationMode.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1B6A75208(0, &qword_1EB95C360, sub_1B6A7510C, &type metadata for RotationMode.Version4CodingKeys, MEMORY[0x1E69E6F58]);
  v67 = v3;
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v55 - v5;
  sub_1B6A75208(0, &qword_1EB95C370, sub_1B6A75160, &type metadata for RotationMode.Version5CodingKeys, v2);
  v69 = v6;
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v55 - v8;
  v63 = sub_1B6AB8DB0();
  v71 = *(v63 - 8);
  v9 = *(v71 + 64);
  v10 = MEMORY[0x1EEE9AC00](v63);
  v55 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v65 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v55 - v14;
  v15 = sub_1B6AB8E40();
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v60 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - v19;
  v21 = type metadata accessor for RotationMode();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A75208(0, &qword_1EB95C380, sub_1B6A751B4, &type metadata for RotationMode.CodingKeys, v2);
  v64 = v25;
  v62 = *(v25 - 8);
  v26 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v55 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A751B4();
  sub_1B6ABA2D0();
  sub_1B69E9DFC(v59, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B698114C();
    v31 = *(v30 + 48);
    v32 = *(v30 + 64);
    (*(v70 + 32))(v60, v24, v15);
    v33 = *(v71 + 32);
    v34 = v63;
    v33(v65, &v24[v31], v63);
    v35 = &v24[v32];
    v36 = v55;
    v33(v55, v35, v34);
    v80 = 1;
    sub_1B6A7510C();
    v37 = v64;
    sub_1B6AB9FD0();
    v79 = 0;
    sub_1B6A75270(&qword_1EB95C390, MEMORY[0x1E69695A8]);
    v38 = v61;
    sub_1B6ABA040();
    v39 = v37;
    v40 = v70;
    v41 = v71;
    if (v38)
    {
      (*(v57 + 8))(v66, v67);
      v42 = *(v41 + 8);
      v42(v36, v34);
      v42(v65, v34);
      (*(v40 + 8))(v60, v15);
      return (*(v62 + 8))(v28, v39);
    }

    else
    {
      v78 = 1;
      sub_1B6A75270(&qword_1EDBCB5B0, MEMORY[0x1E6969530]);
      sub_1B6ABA040();
      v77 = 2;
      sub_1B6ABA040();
      (*(v57 + 8))(v66, v67);
      v53 = *(v41 + 8);
      v53(v36, v34);
      v53(v65, v34);
      (*(v40 + 8))(v60, v15);
      return (*(v62 + 8))(v28, v64);
    }
  }

  else
  {
    sub_1B698103C(0);
    v45 = v44[12];
    v46 = *&v24[v44[16]];
    v66 = *&v24[v44[20]];
    v67 = v46;
    v47 = v70;
    (*(v70 + 32))(v20, v24, v15);
    v48 = &v24[v45];
    v49 = v58;
    v50 = v63;
    (*(v71 + 32))(v58, v48, v63);
    v76 = 0;
    sub_1B6A75160();
    v51 = v64;
    sub_1B6AB9FD0();
    v75 = 0;
    sub_1B6A75270(&qword_1EB95C390, MEMORY[0x1E69695A8]);
    v52 = v61;
    sub_1B6ABA040();
    if (v52)
    {
      (*(v56 + 8))(v68, v69);
      (*(v71 + 8))(v49, v50);
      (*(v47 + 8))(v20, v15);
      return (*(v62 + 8))(v28, v51);
    }

    else
    {
      v61 = v20;
      v65 = v28;
      v54 = v71;
      v74 = 1;
      sub_1B6A75270(&qword_1EDBCB5B0, MEMORY[0x1E6969530]);
      sub_1B6ABA040();
      v73 = 2;
      sub_1B6ABA030();
      v72 = 3;
      sub_1B6ABA030();
      (*(v56 + 8))(v68, v69);
      (*(v54 + 8))(v58, v63);
      (*(v47 + 8))(v61, v15);
      return (*(v62 + 8))(v65, v51);
    }
  }
}

uint64_t RotationMode.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1B6A75208(0, &qword_1EB95C398, sub_1B6A7510C, &type metadata for RotationMode.Version4CodingKeys, MEMORY[0x1E69E6F48]);
  v62 = v4;
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v60 - v6;
  sub_1B6A75208(0, &qword_1EB95C3A0, sub_1B6A75160, &type metadata for RotationMode.Version5CodingKeys, v3);
  v65 = v7;
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v60 - v9;
  sub_1B6A75208(0, &qword_1EB95C3A8, sub_1B6A751B4, &type metadata for RotationMode.CodingKeys, v3);
  v11 = v10;
  v69 = *(v10 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  v15 = type metadata accessor for RotationMode();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v60 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1B6A751B4();
  v27 = v70;
  sub_1B6ABA2A0();
  if (!v27)
  {
    v61 = v24;
    v70 = v15;
    v28 = v67;
    v29 = v68;
    v30 = sub_1B6AB9FB0();
    v31 = (2 * *(v30 + 16)) | 1;
    v72 = v30;
    v73 = v30 + 32;
    v74 = 0;
    v75 = v31;
    v32 = sub_1B69F0F14();
    v33 = v14;
    if (v32 == 2 || v74 != v75 >> 1)
    {
      v37 = sub_1B6AB9D10();
      swift_allocError();
      v39 = v38;
      sub_1B69F1B9C();
      v41 = *(v40 + 48);
      *v39 = v70;
      sub_1B6AB9F20();
      sub_1B6AB9CF0();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v69 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32)
      {
        v76 = 1;
        sub_1B6A7510C();
        v34 = v28;
        sub_1B6AB9F10();
        sub_1B6AB8E40();
        v76 = 0;
        sub_1B6A75270(&qword_1EB95C3B0, MEMORY[0x1E69695A8]);
        v35 = v19;
        v36 = v62;
        sub_1B6AB9F90();
        sub_1B698114C();
        v65 = v45;
        v46 = *(v45 + 48);
        v47 = sub_1B6AB8DB0();
        v76 = 1;
        sub_1B6A75270(&qword_1EDBC8C70, MEMORY[0x1E6969530]);
        v63 = v46;
        v66 = v47;
        sub_1B6AB9F90();
        v48 = v64;
        v54 = *(v65 + 64);
        v76 = 2;
        sub_1B6AB9F90();
        (*(v48 + 8))(v34, v36);
        (*(v69 + 8))(v33, v11);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v55 = v35;
        v29 = v68;
      }

      else
      {
        v76 = 0;
        sub_1B6A75160();
        v43 = v66;
        sub_1B6AB9F10();
        v44 = sub_1B6AB8E40();
        v76 = 0;
        sub_1B6A75270(&qword_1EB95C3B0, MEMORY[0x1E69695A8]);
        v67 = v22;
        sub_1B6AB9F90();
        v62 = v44;
        v64 = v11;
        sub_1B698103C(0);
        v50 = v49;
        v51 = *(v49 + 48);
        sub_1B6AB8DB0();
        v76 = 1;
        sub_1B6A75270(&qword_1EDBC8C70, MEMORY[0x1E6969530]);
        v52 = v43;
        sub_1B6AB9F90();
        v53 = v63;
        v67 = v51;
        v76 = 2;
        v56 = v22;
        *&v22[*(v50 + 64)] = sub_1B6AB9F80();
        v76 = 3;
        v57 = sub_1B6AB9F80();
        v58 = *(v50 + 80);
        (*(v53 + 8))(v52, v65);
        (*(v69 + 8))(v14, v64);
        swift_unknownObjectRelease();
        *&v56[v58] = v57;
        swift_storeEnumTagMultiPayload();
        v55 = v56;
      }

      v59 = v61;
      sub_1B6A5B000(v55, v61);
      sub_1B6A5B000(v59, v29);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t _s12AppAnalytics12RotationModeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v88 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v89 = &v84 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v91 = &v84 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v84 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v87 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v84 - v17;
  v18 = sub_1B6AB8E40();
  v95 = *(v18 - 8);
  v19 = *(v95 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v92 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v84 - v22;
  v23 = type metadata accessor for RotationMode();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v84 - v28;
  sub_1B6A758F8();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &v34[*(v32 + 56)];
  sub_1B69E9DFC(a1, v34);
  sub_1B69E9DFC(v94, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v90 = v4;
    v94 = v14;
    sub_1B69E9DFC(v34, v27);
    sub_1B698114C();
    v37 = *(v36 + 48);
    v38 = *(v36 + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v18;
      v93 = v18;
      v40 = v95;
      (*(v95 + 32))(v92, v35, v39);
      v41 = v90;
      v42 = *(v90 + 4);
      v42(v94, &v27[v37], v3);
      v42(v91, &v27[v38], v3);
      v43 = (v35 + v37);
      v44 = v89;
      v42(v89, v43, v3);
      v45 = (v35 + v38);
      v46 = v88;
      v42(v88, v45, v3);
      v47 = v92;
      v48 = sub_1B6AB8DF0();
      v49 = *(v40 + 8);
      v50 = v27;
      v51 = v93;
      v49(v50, v93);
      if (v48)
      {
        if (sub_1B6AB8D70())
        {
          v52 = v91;
          v53 = sub_1B6AB8D70();
          v54 = *(v90 + 1);
          v54(v46, v3);
          v54(v44, v3);
          v54(v52, v3);
          v54(v94, v3);
          v49(v92, v93);
LABEL_19:
          v62 = type metadata accessor for RotationMode;
          goto LABEL_20;
        }

        v82 = *(v90 + 1);
        v82(v46, v3);
        v82(v44, v3);
        v82(v91, v3);
        v82(v94, v3);
        v78 = v47;
        v79 = v93;
      }

      else
      {
        v77 = *(v41 + 1);
        v77(v46, v3);
        v77(v44, v3);
        v77(v91, v3);
        v77(v94, v3);
        v78 = v47;
        v79 = v51;
      }

      v49(v78, v79);
      v53 = 0;
      goto LABEL_19;
    }

    v61 = *(v90 + 1);
    v61(&v27[v38], v3);
    v61(&v27[v37], v3);
    v29 = v27;
LABEL_9:
    (*(v95 + 8))(v29, v18);
    v53 = 0;
    v62 = sub_1B6A758F8;
LABEL_20:
    v81 = v62;
    goto LABEL_21;
  }

  v93 = v18;
  v94 = v3;
  sub_1B69E9DFC(v34, v29);
  sub_1B698103C(0);
  v56 = v55[12];
  v57 = v55[16];
  v58 = *&v29[v57];
  v59 = v55[20];
  v60 = *&v29[v59];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 1))(&v29[v56], v94);
    v18 = v93;
    goto LABEL_9;
  }

  v91 = v60;
  v92 = v34;
  v85 = *(v35 + v57);
  v88 = *(v35 + v59);
  v89 = v58;
  v63 = v95;
  v64 = v86;
  v65 = v93;
  (*(v95 + 32))(v86, v35, v93);
  v66 = v4;
  v67 = *(v4 + 4);
  v68 = v94;
  v67(v90, &v29[v56], v94);
  v69 = (v35 + v56);
  v70 = v87;
  v67(v87, v69, v68);
  v71 = v64;
  v72 = sub_1B6AB8DF0();
  v73 = *(v63 + 8);
  v73(v29, v65);
  if (v72)
  {
    v74 = v90;
    v75 = sub_1B6AB8D70();
    v76 = *(v66 + 1);
    v76(v70, v68);
    v76(v74, v68);
    v73(v71, v65);
    if (v91 == v88)
    {
      v53 = v75 & (v89 == v85);
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v80 = *(v66 + 1);
    v80(v70, v68);
    v80(v90, v68);
    v73(v64, v65);
    v53 = 0;
  }

  v81 = type metadata accessor for RotationMode;
  v34 = v92;
LABEL_21:
  sub_1B6A7595C(v34, v81);
  return v53 & 1;
}

unint64_t sub_1B6A7510C()
{
  result = qword_1EB95C368;
  if (!qword_1EB95C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C368);
  }

  return result;
}

unint64_t sub_1B6A75160()
{
  result = qword_1EB95C378;
  if (!qword_1EB95C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C378);
  }

  return result;
}

unint64_t sub_1B6A751B4()
{
  result = qword_1EB95C388;
  if (!qword_1EB95C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C388);
  }

  return result;
}

void sub_1B6A75208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1B6A75270(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B6A752EC()
{
  result = qword_1EB95C3B8;
  if (!qword_1EB95C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3B8);
  }

  return result;
}

unint64_t sub_1B6A75344()
{
  result = qword_1EB95C3C0;
  if (!qword_1EB95C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3C0);
  }

  return result;
}

unint64_t sub_1B6A7539C()
{
  result = qword_1EB95C3C8;
  if (!qword_1EB95C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3C8);
  }

  return result;
}

unint64_t sub_1B6A753F4()
{
  result = qword_1EB95C3D0;
  if (!qword_1EB95C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3D0);
  }

  return result;
}

unint64_t sub_1B6A7544C()
{
  result = qword_1EB95C3D8;
  if (!qword_1EB95C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3D8);
  }

  return result;
}

unint64_t sub_1B6A754A4()
{
  result = qword_1EB95C3E0;
  if (!qword_1EB95C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3E0);
  }

  return result;
}

unint64_t sub_1B6A754FC()
{
  result = qword_1EB95C3E8;
  if (!qword_1EB95C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3E8);
  }

  return result;
}

unint64_t sub_1B6A75554()
{
  result = qword_1EB95C3F0;
  if (!qword_1EB95C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3F0);
  }

  return result;
}

unint64_t sub_1B6A755AC()
{
  result = qword_1EB95C3F8;
  if (!qword_1EB95C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C3F8);
  }

  return result;
}

uint64_t sub_1B6A75600(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61746F527473616CLL && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B6A7571C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F52646568636163 && a2 == 0xEF736E6F69746174 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F437465736572 && a2 == 0xEA0000000000746ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1B6A758A0()
{
  if (!qword_1EB95AF38)
  {
    sub_1B6AB8F20();
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AF38);
    }
  }
}

void sub_1B6A758F8()
{
  if (!qword_1EB95C400)
  {
    type metadata accessor for RotationMode();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95C400);
    }
  }
}

uint64_t sub_1B6A7595C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B6A759E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1B6AB9800();
  if (!v26)
  {
    return sub_1B6AB9550();
  }

  v48 = v26;
  v52 = sub_1B6AB9DC0();
  v39 = sub_1B6AB9DD0();
  sub_1B6AB9D70();
  result = sub_1B6AB97F0();
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
      v29 = sub_1B6AB9840();
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
      sub_1B6AB9DB0();
      result = sub_1B6AB9810();
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

uint64_t sub_1B6A75E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17[8] = *v5;
  v18 = *(v5 + 8);
  sub_1B6AB8DA0();
  sub_1B6A75F24(a1, v15, a2, a3, a4, a5);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1B6A75F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v102 = a2;
  v105 = a6;
  v101 = sub_1B6AB8DB0();
  v11 = *(v101 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v101);
  v100 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v94 - v15;
  v117 = type metadata accessor for TimedData();
  v16 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v108 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a3;
  v18 = *(a3 + 16);
  v19 = type metadata accessor for SnapshotLevel();
  v107 = sub_1B6AB9B30();
  v20 = *(v107 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v114 = &v94 - v22;
  sub_1B6A77384(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v115 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Tracker.Timer(0);
  v26 = *(v113 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v106 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *v6;
  v29 = *(v6 + 1);
  v30 = *(v6 + 2);
  v122 = v29;
  v112 = a4;
  v116 = type metadata accessor for SnapshotEvent.MissingData();
  v31 = sub_1B6AB91D0();
  v144 = v31;
  v118 = v30;
  v32 = sub_1B69BB800(a1, a5);
  v33 = *(v32 + 2);
  if (!v33)
  {

    v35 = MEMORY[0x1E69E7CC0];
    return sub_1B69EDD14(v35, v31, v105);
  }

  v96 = v32;
  v97 = a5;
  v34 = (v32 + 32);
  v110 = (v26 + 56);
  v111 = v19 - 8;
  v98 = (v11 + 8);
  v99 = (v11 + 16);
  v95 = 0x80000001B6ACCCC0;
  v103 = (v20 + 8);
  v104 = (v26 + 48);
  v35 = MEMORY[0x1E69E7CC0];
  v121 = v19;
  v94 = v26;
  while (1)
  {
    v123 = v35;
    sub_1B69BE328(v34, v142);
    v36 = v142[0];
    v37 = v142[1];
    sub_1B6982544(&v143, v139);

    sub_1B69BE384(v142);
    v38 = v140;
    v39 = v141;
    __swift_project_boxed_opaque_existential_1(v139, v140);
    if ((*(v39 + 16))(v38, v39))
    {
      LOBYTE(v124) = v119;
      *(&v124 + 1) = v122;
      *&v125 = v118;
      v40 = v140;
      v41 = v141;
      __swift_project_boxed_opaque_existential_1(v139, v140);
      v42 = (*(v41 + 8))(v40, v41);
      sub_1B6A76A8C(v42, v43, &v131);

      if (*(&v131 + 1))
      {
        goto LABEL_21;
      }

      sub_1B6A773B8(&v131);
      v44 = v140;
      v45 = v141;
      __swift_project_boxed_opaque_existential_1(v139, v140);
      *&v131 = (*(v45 + 32))(v44, v45) | 0x8000000000000000;
      goto LABEL_28;
    }

    v46 = v140;
    v47 = v141;
    __swift_project_boxed_opaque_existential_1(v139, v140);
    if (((*(v47 + 24))(v46, v47) & 1) == 0)
    {
      break;
    }

LABEL_4:
    v35 = v123;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v139);
    v34 += 56;
    if (!--v33)
    {

      v31 = v144;
      return sub_1B69EDD14(v35, v31, v105);
    }
  }

  v48 = v140;
  v49 = v141;
  __swift_project_boxed_opaque_existential_1(v139, v140);
  if (((*(v49 + 40))(v117, v117, v48, v49) & 1) == 0)
  {
    goto LABEL_20;
  }

  *&v131 = v122;
  sub_1B6AB95D0();
  swift_getWitnessTable();
  v50 = v114;
  sub_1B6AB9820();
  v51 = *(v19 - 8);
  if ((*(v51 + 48))(v50, 1, v19) == 1)
  {
    (*v103)(v50, v107);
    v52 = v115;
    (*v110)(v115, 1, 1, v113);
    goto LABEL_19;
  }

  v53 = *&v50[*(v19 + 32)];
  v54 = *(v51 + 8);

  v54(v50, v19);
  v55 = sub_1B698DB14();
  if (*(v53 + 16))
  {
    v57 = sub_1B6993940(v55, v56);
    v59 = v58;

    if (v59)
    {
      sub_1B6A775FC(*(v53 + 56) + *(v94 + 72) * v57, v115, type metadata accessor for Tracker.Timer);

      v60 = 0;
      goto LABEL_18;
    }
  }

  else
  {
  }

  v60 = 1;
LABEL_18:
  v52 = v115;
  v61 = v113;
  (*v110)(v115, v60, 1, v113);
  if ((*v104)(v52, 1, v61) == 1)
  {
LABEL_19:
    sub_1B6A774E0(v52, sub_1B6A77384);
LABEL_20:
    LOBYTE(v124) = v119;
    *(&v124 + 1) = v122;
    *&v125 = v118;
    v62 = v140;
    v63 = v141;
    __swift_project_boxed_opaque_existential_1(v139, v140);
    v64 = (*(v63 + 8))(v62, v63);
    sub_1B6A76A8C(v64, v65, &v131);

    if (*(&v131 + 1))
    {
LABEL_21:
      v135 = v132[1];
      v136 = v132[2];
      v137 = v132[3];
      v138 = v132[4];
      v133 = v131;
      v134 = v132[0];
      sub_1B6A0A6D0(&v133, v132);
      *&v131 = v36;
      *(&v131 + 1) = v37;
      sub_1B6A77430(&v131, &v124);
      v35 = v123;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1B69E49A0(0, *(v35 + 2) + 1, 1, v35);
      }

      v19 = v121;
      v67 = *(v35 + 2);
      v66 = *(v35 + 3);
      v68 = v67 + 1;
      if (v67 >= v66 >> 1)
      {
        v35 = sub_1B69E49A0((v66 > 1), v67 + 1, 1, v35);
      }

      sub_1B6A7748C(&v131);
      sub_1B69A6664(&v133);
LABEL_26:
      *(v35 + 2) = v68;
      v69 = &v35[112 * v67];
      v71 = v125;
      v70 = v126;
      *(v69 + 2) = v124;
      *(v69 + 3) = v71;
      *(v69 + 4) = v70;
      v72 = v130;
      v74 = v127;
      v73 = v128;
      *(v69 + 7) = v129;
      *(v69 + 8) = v72;
      *(v69 + 5) = v74;
      *(v69 + 6) = v73;
      goto LABEL_5;
    }

    sub_1B6A773B8(&v131);
    v75 = v140;
    v76 = v141;
    __swift_project_boxed_opaque_existential_1(v139, v140);
    *&v131 = (*(v76 + 32))(v75, v76);
LABEL_28:
    sub_1B6AB95D0();
    sub_1B6AB95A0();
    v19 = v121;
    goto LABEL_4;
  }

  v77 = v52;
  v78 = v106;
  sub_1B6A77540(v77, v106);
  v79 = *v99;
  v80 = v78;
  v81 = v101;
  (*v99)(v109, v80, v101);
  v82 = v100;
  v79(v100, v102, v81);
  v83 = v108;
  v79(v108, v109, v81);
  v79((v83 + *(v117 + 20)), v82, v81);
  v84 = v109;
  sub_1B6AB8D00();
  v86 = v85;
  v87 = *v98;
  (*v98)(v82, v81);
  result = v87(v84, v81);
  v89 = v86 * 1000.0;
  if (COERCE__INT64(fabs(v86 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v89 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v89 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v90 = v117;
    v91 = v108;
    *&v108[*(v117 + 24)] = v89;
    *(&v135 + 1) = v90;
    *&v136 = sub_1B6A775A4();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v134);
    sub_1B6A775FC(v91, boxed_opaque_existential_1, type metadata accessor for TimedData);
    *&v133 = v36;
    *(&v133 + 1) = v37;
    *(&v136 + 1) = MEMORY[0x1E69E7CC0];
    LOWORD(v137) = 256;
    *(&v137 + 1) = 0xD000000000000057;
    *&v138 = v95;
    *(&v138 + 1) = 88;
    sub_1B6A0A6D0(&v133, v132);
    *&v131 = v36;
    *(&v131 + 1) = v37;
    sub_1B6A77430(&v131, &v124);

    v35 = v123;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1B69E49A0(0, *(v35 + 2) + 1, 1, v35);
    }

    v19 = v121;
    v67 = *(v35 + 2);
    v93 = *(v35 + 3);
    v68 = v67 + 1;
    if (v67 >= v93 >> 1)
    {
      v35 = sub_1B69E49A0((v93 > 1), v67 + 1, 1, v35);
    }

    sub_1B6A7748C(&v131);
    sub_1B69A6664(&v133);
    sub_1B6A774E0(v108, type metadata accessor for TimedData);
    sub_1B6A774E0(v106, type metadata accessor for Tracker.Timer);
    goto LABEL_26;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1B6A76A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *v3;
  v6 = *(v3 + 1);
  v90 = a2;
  v91 = a3;
  v89 = a1;
  if (v5)
  {
    *&v92[0] = v6;
    MEMORY[0x1EEE9AC00](a1);
    v88 = *(v7 + 16);
    type metadata accessor for SnapshotLevel();
    v8 = sub_1B6AB95D0();
    sub_1B6A77698(0, &qword_1EB95C408, sub_1B69E8850, MEMORY[0x1E69E6720]);
    v10 = v9;

    WitnessTable = swift_getWitnessTable();
    v13 = sub_1B6A759E4(sub_1B6A77664, v87, v8, v10, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

    result = v13;
    v15 = *(v13 + 16);
    if (v15)
    {
      v16 = 0;
      v17 = v13 + 32;
      v18 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v19 = *(result + 16);
        if (v16 > v19)
        {
          v19 = v16;
        }

        while (1)
        {
          if (v16 == v19)
          {
            goto LABEL_95;
          }

          v21 = v17 + 32 * v16++;
          if (*(v21 + 8))
          {
            v22 = 0;
            v23 = 0;
            v24 = *(v21 + 16);
            v25 = v24 + 64;
            v26 = 1 << *(v24 + 32);
            while (1)
            {
              v27 = *(v25 + 8 * v23);
              if (v27)
              {
                break;
              }

              ++v23;
              v22 -= 64;
              if ((v26 + 63) >> 6 == v23)
              {
                goto LABEL_8;
              }
            }

            v20 = __clz(__rbit64(v27));
            if (v20 - v26 != v22)
            {
              break;
            }
          }

LABEL_8:
          if (v16 == v15)
          {
            goto LABEL_53;
          }
        }

        if (-v22 < 0 || (v20 - v22) >= v26)
        {
          goto LABEL_108;
        }

        if (((*(v25 + 8 * (v23 & 0x3FFFFFFFFFFFFFFLL)) >> v20) & 1) == 0)
        {
          goto LABEL_109;
        }

        v28 = result;
        v29 = *(*(v24 + 56) + 8 * (v20 - v22));

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B69E4844(0, v18[2] + 1, 1, v18);
        }

        result = v28;
        v31 = v18[2];
        v30 = v18[3];
        if (v31 >= v30 >> 1)
        {
          v18 = sub_1B69E4844((v30 > 1), v31 + 1, 1, v18);
          result = v28;
        }

        v18[2] = v31 + 1;
        v18[v31 + 4] = v29;
        if (v16 == v15)
        {
          goto LABEL_53;
        }
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_53:

    v60 = v18[2];
    if (v60)
    {
      v61 = 0;
      v62 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v61 >= v18[2])
        {
          goto LABEL_96;
        }

        v63 = v18[v61 + 4];
        v64 = *(v63 + 16);
        v65 = *(v62 + 16);
        v66 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          goto LABEL_97;
        }

        v67 = v18[v61 + 4];

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v66 <= *(v62 + 24) >> 1)
        {
          if (!*(v63 + 16))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v65 <= v66)
          {
            v68 = v65 + v64;
          }

          else
          {
            v68 = v65;
          }

          result = sub_1B69E4488(result, v68, 1, v62);
          v62 = result;
          if (!*(v63 + 16))
          {
LABEL_55:

            if (v64)
            {
              goto LABEL_98;
            }

            goto LABEL_56;
          }
        }

        if ((*(v62 + 24) >> 1) - *(v62 + 16) < v64)
        {
          goto LABEL_102;
        }

        swift_arrayInitWithCopy();

        if (v64)
        {
          v69 = *(v62 + 16);
          v58 = __OFADD__(v69, v64);
          v70 = v69 + v64;
          if (v58)
          {
            goto LABEL_104;
          }

          *(v62 + 16) = v70;
        }

LABEL_56:
        if (v60 == ++v61)
        {
          goto LABEL_72;
        }
      }
    }

    v62 = MEMORY[0x1E69E7CC0];
LABEL_72:

    v71 = *(v62 + 16);
    v73 = v90;
    v72 = v91;
    v74 = v89;
    if (v71)
    {
      v75 = 0;
      v76 = v62 + 32;
      while (v75 < *(v62 + 16))
      {
        sub_1B6A0A6D0(v76, v92);
        v77 = *&v92[0] == v74 && *(&v92[0] + 1) == v73;
        if (v77 || (sub_1B6ABA0F0() & 1) != 0)
        {
          goto LABEL_93;
        }

        ++v75;
        result = sub_1B69A6664(v92);
        v76 += 96;
        if (v71 == v75)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_106;
    }

LABEL_92:

    v72[4] = 0u;
    v72[5] = 0u;
    v72[2] = 0u;
    v72[3] = 0u;
    *v72 = 0u;
    v72[1] = 0u;
    return result;
  }

  *&v92[0] = v6;
  MEMORY[0x1EEE9AC00](a1);
  v88 = *(v32 + 16);
  type metadata accessor for SnapshotLevel();
  v33 = sub_1B6AB95D0();
  sub_1B6A77698(0, qword_1EB95C410, sub_1B6A77784, MEMORY[0x1E69E6720]);
  v35 = v34;

  v36 = swift_getWitnessTable();
  v38 = sub_1B6A759E4(sub_1B6A77750, v87, v33, v35, MEMORY[0x1E69E73E0], v36, MEMORY[0x1E69E7410], v37);

  v39 = 0;
  v40 = *(v38 + 16);
  v41 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v42 = 32 * v39 + 40;
  while (1)
  {
    if (v40 == v39)
    {

      v48 = v41[2];
      if (!v48)
      {
        v50 = MEMORY[0x1E69E7CC0];
LABEL_83:

        v78 = *(v50 + 16);
        v79 = v90;
        v72 = v91;
        v80 = v89;
        if (v78)
        {
          v81 = 0;
          v82 = v50 + 32;
          while (v81 < *(v50 + 16))
          {
            sub_1B6A0A6D0(v82, v92);
            v83 = *&v92[0] == v80 && *(&v92[0] + 1) == v79;
            if (v83 || (sub_1B6ABA0F0() & 1) != 0)
            {
LABEL_93:

              v84 = v92[3];
              v72[2] = v92[2];
              v72[3] = v84;
              v85 = v92[5];
              v72[4] = v92[4];
              v72[5] = v85;
              v86 = v92[1];
              *v72 = v92[0];
              v72[1] = v86;
              return result;
            }

            ++v81;
            result = sub_1B69A6664(v92);
            v82 += 96;
            if (v78 == v81)
            {
              goto LABEL_92;
            }
          }

          goto LABEL_107;
        }

        goto LABEL_92;
      }

      v49 = 0;
      v50 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v49 >= v41[2])
        {
          goto LABEL_99;
        }

        v51 = v41[v49 + 4];
        v52 = *(v51 + 16);
        v53 = *(v50 + 16);
        v54 = v53 + v52;
        if (__OFADD__(v53, v52))
        {
          goto LABEL_100;
        }

        v55 = v41[v49 + 4];

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v54 <= *(v50 + 24) >> 1)
        {
          if (!*(v51 + 16))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v53 <= v54)
          {
            v56 = v53 + v52;
          }

          else
          {
            v56 = v53;
          }

          result = sub_1B69E4488(result, v56, 1, v50);
          v50 = result;
          if (!*(v51 + 16))
          {
LABEL_36:

            if (v52)
            {
              goto LABEL_101;
            }

            goto LABEL_37;
          }
        }

        if ((*(v50 + 24) >> 1) - *(v50 + 16) < v52)
        {
          goto LABEL_103;
        }

        swift_arrayInitWithCopy();

        if (v52)
        {
          v57 = *(v50 + 16);
          v58 = __OFADD__(v57, v52);
          v59 = v57 + v52;
          if (v58)
          {
            goto LABEL_105;
          }

          *(v50 + 16) = v59;
        }

LABEL_37:
        if (v48 == ++v49)
        {
          goto LABEL_83;
        }
      }
    }

    if (v39 >= *(v38 + 16))
    {
      break;
    }

    ++v39;
    v43 = v42 + 32;
    v44 = *(v38 + v42);
    v42 += 32;
    if (v44)
    {
      v45 = *(v38 + v43 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B69E4844(0, v41[2] + 1, 1, v41);
        v41 = result;
      }

      v47 = v41[2];
      v46 = v41[3];
      if (v47 >= v46 >> 1)
      {
        result = sub_1B69E4844((v46 > 1), v47 + 1, 1, v41);
        v41 = result;
      }

      v41[2] = v47 + 1;
      v41[v47 + 4] = v45;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
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
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
  return result;
}

double sub_1B6A7726C@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for SnapshotLevel();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v11 - v8, a1, v6);
  a2(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B6A773B8(uint64_t a1)
{
  sub_1B6A776FC(0, &qword_1EDBCB490, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B6A774E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B6A77540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tracker.Timer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B6A775A4()
{
  result = qword_1EDBCB008;
  if (!qword_1EDBCB008)
  {
    type metadata accessor for TimedData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCB008);
  }

  return result;
}

uint64_t sub_1B6A775FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B6A77698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B6A776FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AnyDataEventEntry);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B6A77784()
{
  if (!qword_1EB95AE88)
  {
    sub_1B6A776FC(255, &qword_1EB95ADB8, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for SnapshotLevel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AE88);
    }
  }
}

uint64_t sub_1B6A777F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A7785C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  if (v7 >= 3)
  {
    v8 = *a1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 >= 3)
  {
    v9 = a1[1];
  }

  else
  {
    v9 = 0;
  }

  if (v7 >= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = a1[1];
  }

  v11 = type metadata accessor for BridgedIDSessionKind();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___AAIDSessionKind_kind] = v10;
  v13 = &v12[OBJC_IVAR___AAIDSessionKind_name];
  *v13 = v8;
  v13[1] = v9;
  sub_1B6992E2C(v6, v7);
  v21.receiver = v12;
  v21.super_class = v11;
  v14 = objc_msgSendSuper2(&v21, sel_init);
  v15 = [a3 legacyComponentsForKind:v14 isDiagnosticSubmissionAllowed:a2 & 1];

  if (v15)
  {
    v16 = a4;
    sub_1B6A47A08(v15 + OBJC_IVAR___AALegacyStoredUserIDComponents_legacyStoredUserIDComponents, a4);

    v17 = 0;
  }

  else
  {
    v17 = 1;
    v16 = a4;
  }

  v18 = type metadata accessor for LegacyStoredUserIDComponents();
  return (*(*(v18 - 8) + 56))(v16, v17, 1, v18);
}