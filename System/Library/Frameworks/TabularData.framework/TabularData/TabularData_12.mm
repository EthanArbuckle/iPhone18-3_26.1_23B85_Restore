Swift::Int __swiftcall DiscontiguousColumnSlice.index(before:)(Swift::Int before)
{
  v3 = v1;
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + 40);
  if (DiscontiguousColumnSlice.startIndex.getter(v1) >= before)
  {
    goto LABEL_32;
  }

  if (DiscontiguousColumnSlice.endIndex.getter(v3) == before)
  {
    sub_21B2A6400(v7, v9, v10);
    if (v12)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = v11 - 1;
    if (!__OFSUB__(v11, 1))
    {
      return result;
    }

    __break(1u);
  }

  v14 = sub_21B2D4178(before, v7, v9, v10);
  if (v15)
  {
LABEL_32:
    while (1)
    {
LABEL_28:
      sub_21B34B824();
      __break(1u);
    }
  }

  if (!v10)
  {
    if (v14)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v7 != before)
    {
      return before - 1;
    }

    __break(1u);
  }

  if (v10 != 1)
  {
    goto LABEL_28;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v16 = *(v7 + 16);
  if (v14 >= v16)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v7 + 32 + 16 * v14) != before)
  {
    return before - 1;
  }

  if (!v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 - 1 >= v16)
  {
    goto LABEL_25;
  }

  v17 = *(v7 + 32 + 16 * (v14 - 1) + 8);
  result = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
    return before - 1;
  }

  return result;
}

uint64_t DiscontiguousColumnSlice.missingCount.getter(uint64_t a1)
{
  v3 = v1[2];
  v15 = *v1;
  v16 = v1[1];
  v17 = *(v1 + 3);
  v18 = *(v1 + 40);
  swift_getWitnessTable();
  sub_21B34B2E4();
  v20[0] = v11;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  v4 = sub_21B34AAF4();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v21, v20, v4);
  sub_21B34AAC4();
  v21[0] = v11;
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = v14;
  (*(v5 + 8))(v21, v4);
  v6 = 0;
  while (1)
  {
    sub_21B34AAD4();
    if (v19 == v11)
    {
      break;
    }

    sub_21B34AAE4();
    v7 = *(a1 + 16);
    v8 = sub_21B32A318(v19, v3);
    v9 = __OFADD__(v6, v8);
    v6 += v8;
    if (v9)
    {
      __break(1u);
      break;
    }
  }

  sub_21B23A9F4(*(&v12 + 1), v13, SBYTE8(v13));
  return v6;
}

void *sub_21B2D5590@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a2;
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = *(a1 + 3);
  v12 = *(a1 + 40);
  v7 = type metadata accessor for DiscontiguousColumnSlice();
  return DiscontiguousColumnSlice.subscript.getter(v6, v7, a4);
}

void (*DiscontiguousColumnSlice.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v11 = sub_21B34B474();
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  v16 = *v3;
  v17 = *(v3 + 1);
  v18 = *(v3 + 3);
  v19 = *(v3 + 40);
  DiscontiguousColumnSlice.subscript.getter(a2, a3, v14);
  return sub_21B2D5760;
}

void sub_21B2D5760(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_21B2D8534(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_21B2D8534((*a1)[6], v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t DiscontiguousColumnSlice.subscript.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = *v4;
  v5 = v4[3];
  v6 = v4[4];
  v7 = a1 == a2;
  if (a1 == a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  if (a1 == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v4 + 40);
  sub_21B254074(v4[3], v4[4], v10);
  v11 = 2 * v7;
  v12 = sub_21B248CCC(v8, v9, 2 * v7, v5, v6, v10);
  v14 = v13;
  v16 = v15;
  sub_21B23A9F4(v8, v9, v11);
  v21 = *(v4 + 1);
  sub_21B2D5A98(v12, v14, v16, a3, a4);

  return sub_21B23A9F4(v12, v14, v16);
}

double sub_21B2D5958@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v16 = *a1;
  v17 = *(a1 + 1);
  v18 = *(a1 + 3);
  v19 = v6;
  v9 = type metadata accessor for DiscontiguousColumnSlice();
  DiscontiguousColumnSlice.subscript.getter(v7, v8, v9, &v12);
  v10 = v15;
  *a4 = v12;
  *(a4 + 8) = v13;
  result = *&v14;
  *(a4 + 24) = v14;
  *(a4 + 40) = v10;
  return result;
}

uint64_t sub_21B2D59F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v13 = v9;

  sub_21B254074(v7, v8, v9);
  v10 = type metadata accessor for DiscontiguousColumnSlice();
  return sub_21B2D868C(v12, v10);
}

__n128 sub_21B2D5A98@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  v12 = v5[3];
  v13 = v5[4];
  v14 = *(v5 + 40);
  sub_21B254074(v12, v13, v14);
  v15 = sub_21B248CCC(a1, a2, a3, v12, v13, v14);
  v17 = v16;
  LOBYTE(a1) = v18;
  v30 = v11;
  v31 = *(v5 + 1);
  v24[0] = v15;
  v24[1] = v16;
  v25 = v18;
  v19 = *(a4 + 16);
  v20 = type metadata accessor for Column();
  WitnessTable = swift_getWitnessTable();
  sub_21B283B30(v24, v20, WitnessTable, &v26);
  sub_21B23A9F4(v15, v17, a1);
  v22 = v29;
  *a5 = v26;
  result = v28;
  *(a5 + 8) = v27;
  *(a5 + 24) = result;
  *(a5 + 40) = v22;
  return result;
}

void (*DiscontiguousColumnSlice.subscript.modify(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  *a1 = v9;
  *(v9 + 48) = a4;
  *(v9 + 56) = v4;
  v11 = *v4;
  v12 = *(v4 + 1);
  v13 = *(v4 + 3);
  v14 = *(v4 + 40);
  DiscontiguousColumnSlice.subscript.getter(a2, a3, a4, v9);
  return sub_21B2D5C7C;
}

void sub_21B2D5C7C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(v2 + 40);
  v10 = v2[6];
  v9 = v2[7];
  v16[0] = v4;
  v16[1] = v3;
  v16[2] = v6;
  v16[3] = v5;
  v16[4] = v7;
  v17 = v8;
  if (a2)
  {

    sub_21B254074(v5, v7, v8);
    sub_21B2D868C(v16, v10);
    v11 = v2[1];
    v12 = v2[2];
    v13 = v2[3];
    v14 = v2[4];
    v15 = *(v2 + 40);

    sub_21B23A9F4(v13, v14, v15);
  }

  else
  {
    sub_21B2D868C(v16, v10);
  }

  free(v2);
}

uint64_t DiscontiguousColumnSlice.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  sub_21B34AF64();
  return DiscontiguousColumnSlice.subscript.getter(v5, v6, a1, a2);
}

double sub_21B2D5DFC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 24);
  v7 = *(v5 - 16);
  v8 = *(v5 - 8);
  v9 = *(a1 + 40);
  v17 = *a1;
  v18 = *(a1 + 1);
  v19 = *(a1 + 3);
  v20 = v9;
  v10 = type metadata accessor for DiscontiguousColumnSlice();
  DiscontiguousColumnSlice.subscript.getter(v10, &v13);
  v11 = v16;
  *a4 = v13;
  *(a4 + 8) = v14;
  result = *&v15;
  *(a4 + 24) = v15;
  *(a4 + 40) = v11;
  return result;
}

uint64_t sub_21B2D5EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v15[0] = *a1;
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v16 = v12;

  sub_21B254074(v10, v11, v12);
  v13 = type metadata accessor for DiscontiguousColumnSlice();
  return sub_21B2D8B60(v15, a3, v13);
}

uint64_t DiscontiguousColumnSlice.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B2D8B60(a1, a2, a3);
  v6 = *(*(a4 - 8) + 8);

  return v6(a2, a4);
}

{
  return sub_21B2D8CC0(a1, a4);
}

void (*DiscontiguousColumnSlice.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *a1, char a2)
{
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x60uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[8] = a5;
  v11[9] = v5;
  v11[6] = a3;
  v11[7] = a4;
  v13 = *(a4 - 8);
  v14 = v13;
  v11[10] = v13;
  if (v10)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(v13 + 64));
  }

  *(v12 + 88) = v15;
  (*(v14 + 16))();
  DiscontiguousColumnSlice.subscript.getter(a3, v12);
  return sub_21B2D60FC;
}

void sub_21B2D60FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v8 = *(*a1 + 48);
  v7 = *(*a1 + 56);
  if (a2)
  {
    v9 = *(v2 + 8);
    v10 = *(v2 + 16);
    v11 = *(v2 + 24);
    v12 = *(v2 + 32);
    v18[0] = *v2;
    v18[1] = v9;
    v18[2] = v10;
    v18[3] = v11;
    v18[4] = v12;
    v19 = *(v2 + 40);

    sub_21B254074(v11, v12, v19);
    sub_21B2D8B60(v18, v3, v8);
    (*(v4 + 8))(v3, v7);
    v13 = *(v2 + 8);
    v14 = *(v2 + 16);
    v15 = *(v2 + 24);
    v16 = *(v2 + 32);
    v17 = *(v2 + 40);

    sub_21B23A9F4(v15, v16, v17);
  }

  else
  {
    sub_21B2D8B60(*a1, v3, v8);
    (*(v4 + 8))(v3, v7);
  }

  free(v3);

  free(v2);
}

uint64_t DiscontiguousColumnSlice.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  DiscontiguousColumnSlice.startIndex.getter(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0D0, &qword_21B351970);
  sub_21B2D8C5C();
  return DiscontiguousColumnSlice.subscript.getter(a1, a2);
}

void (*DiscontiguousColumnSlice.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  *a1 = v7;
  *(v7 + 48) = a4;
  *(v7 + 56) = v4;
  DiscontiguousColumnSlice.subscript.getter(a4, v7);
  return sub_21B2D6338;
}

void sub_21B2D6338(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = v2[4];
    v13[0] = *v2;
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = v7;
    v13[4] = v8;
    v14 = *(v2 + 40);

    sub_21B254074(v7, v8, v14);
    sub_21B2D8CC0(v13, v4);
    v9 = v2[1];
    v10 = v2[2];
    v11 = v2[3];
    v12 = v2[4];
    LOBYTE(v7) = *(v2 + 40);

    sub_21B23A9F4(v11, v12, v7);
  }

  else
  {
    sub_21B2D8CC0(*a1, v4);
  }

  free(v2);
}

Swift::Int sub_21B2D6414@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DiscontiguousColumnSlice.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_21B2D6440(Swift::Int *a1)
{
  result = DiscontiguousColumnSlice.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21B2D646C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_21B2D8534(a1, *a2, a3);
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*sub_21B2D64E8(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = DiscontiguousColumnSlice.subscript.modify(v6, *a2, a3);
  return sub_21B28EF30;
}

void (*sub_21B2D6578(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = DiscontiguousColumnSlice.subscript.modify(v6, *a2, *(a2 + 8), a3);
  return sub_21B28EF30;
}

uint64_t sub_21B2D6680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DiscontiguousColumnSlice.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B2D66A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DiscontiguousColumnSlice.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_21B2D66D0(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B2D6758(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B2D6758(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  v7 = sub_21B34B474();
  *a1 = v7;
  v8 = *(v7 - 8);
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
  DiscontiguousColumnSlice.subscript.getter(a2, a3, v9);
  return sub_21B2854A4;
}

uint64_t sub_21B2D6840()
{
  swift_getWitnessTable();

  return sub_21B34AB54();
}

uint64_t sub_21B2D68BC()
{
  swift_getWitnessTable();

  return sub_21B34AB44();
}

uint64_t sub_21B2D6940()
{
  swift_getWitnessTable();

  return sub_21B34AB64();
}

Swift::Int sub_21B2D69AC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DiscontiguousColumnSlice.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_21B2D69D8(Swift::Int *a1)
{
  result = DiscontiguousColumnSlice.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21B2D6A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  *a2 = *v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v2 + 40);
  *(a2 + 40) = v9;

  sub_21B254074(v7, v8, v9);
  v10 = DiscontiguousColumnSlice.startIndex.getter(a1);

  result = sub_21B23A9F4(v7, v8, v9);
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_21B2D6AB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B2D6B04()
{
  swift_getWitnessTable();
  v1 = sub_21B2DBAB0();
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  sub_21B23A9F4(v4, v5, v6);
  return v1;
}

uint64_t static DiscontiguousColumnSlice<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v69 = *(a3 - 8);
  v7 = *(v69 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v63 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v61 - v10;
  v11 = sub_21B34B474();
  v68 = *(v11 - 8);
  v12 = *(v68 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v61 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v78 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v80 = &v61 - v19;
  v67 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = sub_21B34B474();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v75 = &v61 - v24;
  v25 = *a1;
  v26 = *(a1 + 1);
  v27 = a1[3];
  v28 = a1[4];
  v29 = *(a1 + 40);
  v30 = *a2;
  v71 = *(a2 + 1);
  v72 = v26;
  v31 = a2[3];
  v70 = a2[4];
  v32 = *(a2 + 40);
  v79 = a3;
  v76 = type metadata accessor for DiscontiguousColumnSlice();
  if (v25 != v30 || (vmovn_s64(vceqq_s64(v72, v71)).u8[0] & 1) == 0)
  {
    v33 = sub_21B34B9F4();
    result = 0;
    if ((v33 & 1) == 0)
    {
      return result;
    }
  }

  v73 = TupleTypeMetadata2;
  *(v88 + 8) = v72;
  *&v88[0] = v25;
  *(&v88[1] + 1) = v27;
  *&v89 = v28;
  BYTE8(v89) = v29;
  v93 = v71;
  v92 = v30;
  v94 = v31;
  v95 = v70;
  v96 = v32;
  v35 = v76;
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v89 = v83;
  v90 = v84;
  v91[0] = v85[0];
  *(v91 + 9) = *(v85 + 9);
  v37 = v73;
  v88[0] = v81;
  v88[1] = v82;
  v92 = v35;
  v93.i64[0] = v35;
  v93.i64[1] = WitnessTable;
  v94 = WitnessTable;
  v72.i64[0] = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v38 = v67;
  v70 = (v68 + 32);
  v71.i64[0] = v37 - 8;
  v39 = (v69 + 48);
  v65 = (v68 + 16);
  v61 = (v69 + 32);
  v62 = (v69 + 8);
  v69 = v68 + 8;
  v40 = v78;
  while (1)
  {
    *&v81 = v76;
    *(&v81 + 1) = v76;
    *&v82 = v72.i64[0];
    *(&v82 + 1) = v72.i64[0];
    v42 = sub_21B34B664();
    v43 = v75;
    sub_21B34B654();
    if ((*(*(v37 - 8) + 48))(v43, 1, v37) == 1)
    {
      v85[0] = v101;
      v85[1] = v102;
      v86 = v103;
      v87 = v104;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      v84 = v100;
      (*(*(v42 - 8) + 8))(&v81, v42);
      return 1;
    }

    v68 = v42;
    v44 = *(v37 + 48);
    v45 = *v70;
    v46 = v80;
    (*v70)(v80, v43, v38);
    v45(v40, &v43[v44], v38);
    v47 = v79;
    v48 = *v39;
    v49 = v74;
    if ((*v39)(v46, 1, v79) == 1 && v48(v40, 1, v47) == 1)
    {
      goto LABEL_5;
    }

    v50 = v38;
    v51 = *v65;
    (*v65)(v49, v80, v50);
    if (v48(v49, 1, v47) == 1)
    {
      v85[0] = v101;
      v85[1] = v102;
      v86 = v103;
      v87 = v104;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      v84 = v100;
      (*(*(v68 - 8) + 8))(&v81);
      v60 = *v69;
      (*v69)(v49, v50);
      goto LABEL_16;
    }

    v52 = *v61;
    v53 = v66;
    (*v61)(v66, v49, v79);
    v54 = v77;
    v51(v77, v78, v50);
    v55 = v79;
    if (v48(v54, 1, v79) == 1)
    {
      break;
    }

    v56 = v63;
    v52(v63, v77, v55);
    v57 = sub_21B34AC54();
    v58 = *v62;
    (*v62)(v56, v55);
    v58(v53, v55);
    v38 = v67;
    v40 = v78;
    if ((v57 & 1) == 0)
    {
      v85[0] = v101;
      v85[1] = v102;
      v86 = v103;
      v87 = v104;
      v81 = v97;
      v82 = v98;
      v83 = v99;
      v84 = v100;
      (*(*(v68 - 8) + 8))(&v81);
      v59 = *v69;
      (*v69)(v80, v38);
      v59(v40, v38);
      return 0;
    }

LABEL_5:
    v41 = *v69;
    (*v69)(v80, v38);
    v41(v40, v38);
    v37 = v73;
  }

  (*v62)(v53, v55);
  v85[0] = v101;
  v85[1] = v102;
  v86 = v103;
  v87 = v104;
  v81 = v97;
  v82 = v98;
  v83 = v99;
  v84 = v100;
  (*(*(v68 - 8) + 8))(&v81);
  v60 = *v69;
  v50 = v67;
  (*v69)(v77, v67);
LABEL_16:
  v60(v80, v50);
  v60(v78, v50);
  return 0;
}

uint64_t DiscontiguousColumnSlice<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v23 = *(a2 + 16);
  v3 = sub_21B34B474();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v12 = *(v2 + 40);

  sub_21B34AD94();

  *&v24 = v7;
  *(&v24 + 1) = v8;
  v25 = v10;
  v26 = v9;
  v27 = v11;
  v28 = v12;
  v29 = v7;
  v30 = v8;
  v31 = v10;
  v32 = v9;
  v33 = v11;
  v34 = v12;

  sub_21B254074(v9, v11, v12);

  sub_21B254074(v9, v11, v12);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v13 = type metadata accessor for _DiscontiguousSlice();
  sub_21B2841AC(v13, &v35);
  v14 = v27;
  v23 = v26;
  v22 = v28;

  sub_21B23A9F4(v23, v14, v22);
  sub_21B2844B4(v13, &v24);
  if ((sub_21B283ED0(&v35, &v24) & 1) == 0)
  {
    v15 = (v21 + 8);
    do
    {
      sub_21B284B54(v13, v6);
      v24 = v35;
      sub_21B28469C(&v24, v13, &v35);
      sub_21B34B484();
      (*v15)(v6, v3);
      sub_21B2844B4(v13, &v24);
    }

    while ((sub_21B283ED0(&v35, &v24) & 1) == 0);
  }

  v16 = v32;
  v17 = v33;
  v18 = v34;

  return sub_21B23A9F4(v16, v17, v18);
}

void DiscontiguousColumnSlice<A>.distinct()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  WitnessTable = a2;
  v4 = *(a1 + 16);
  v44[0] = a3;
  v44[1] = v4;
  v5 = sub_21B34B474();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v50 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v49 = v44 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v44 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_21B34B474();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (v44 - v16);
  v19 = *(v3 + 8);
  *&v45 = *v3;
  v18 = v45;
  *(&v45 + 1) = v19;
  v20 = *(v3 + 24);
  v46 = *(v3 + 16);
  v53 = v20;
  v21 = *(v3 + 32);
  v22 = *(v3 + 40);
  LODWORD(v52) = v22;
  v91 = WitnessTable;
  WitnessTable = swift_getWitnessTable();
  v92 = sub_21B34A994();
  v88 = 0;
  v89 = 0;
  v90 = 2;
  v73 = v18;
  v74 = v19;
  v23 = v46;
  v75 = v46;
  v76 = v20;
  v77 = v21;
  v78 = v22;
  v24 = v54;
  swift_getWitnessTable();
  sub_21B34B2E4();
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v66 = v82;
  v68[2] = v45;
  v69 = v23;
  v70 = v53;
  v71 = v21;
  v72 = v52;
  v25 = v24;
  v26 = sub_21B34AAF4();
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  sub_21B34BA54();
  v93[0] = v63;
  v93[1] = v64;
  v93[2] = v65;
  v93[3] = v66;
  (*(*(v26 - 8) + 8))(v93, v26);
  v67 = v60;
  v68[0] = v61[0];
  *(v68 + 9) = *(v61 + 9);
  v63 = v56;
  v64 = v57;
  v65 = v58;
  v66 = v59;
  *&v79 = v26;
  *(&v79 + 1) = v25;
  *&v80 = v27;
  *(&v80 + 1) = v28;
  sub_21B34B674();
  sub_21B34B644();
  v52 = (v51 + 32);
  v53 = TupleTypeMetadata2 - 8;
  v47 = (v51 + 16);
  v48 = v28;
  v51 += 8;
  while (1)
  {
    while (1)
    {
      *&v56 = v26;
      *(&v56 + 1) = v54;
      *&v57 = v27;
      *(&v57 + 1) = v28;
      v29 = sub_21B34B664();
      sub_21B34B654();
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
      {
        v61[1] = v85;
        v61[2] = v86;
        v62 = v87;
        v58 = v81;
        v59 = v82;
        v60 = v83;
        v61[0] = v84;
        v56 = v79;
        v57 = v80;
        (*(*(v29 - 8) + 8))(&v56, v29);

        v63 = v45;
        *&v64 = v46;
        v41 = v88;
        v42 = v89;
        v43 = v90;

        sub_21B2D3D88(&v63, v41, v42, v43, v44[0]);
        return;
      }

      v30 = *v17;
      (*v52)(v12, v17 + *(TupleTypeMetadata2 + 48), v5);
      if ((sub_21B34B114() & 1) == 0)
      {
        break;
      }

      (*v51)(v12, v5);
    }

    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 < v30)
    {
      goto LABEL_10;
    }

    sub_21B28DFBC(v30, v31);
    (*v47)(v50, v12, v5);
    sub_21B34B124();
    v32 = v27;
    v33 = v17;
    v34 = v5;
    v35 = v12;
    v36 = TupleTypeMetadata2;
    v37 = v26;
    v38 = v49;
    sub_21B34B104();
    v39 = *v51;
    v40 = v38;
    v26 = v37;
    TupleTypeMetadata2 = v36;
    v12 = v35;
    v5 = v34;
    v17 = v33;
    v27 = v32;
    v28 = v48;
    (*v51)(v40, v5);
    v39(v12, v5);
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t DiscontiguousColumnSlice<A>.hashValue.getter(uint64_t a1)
{
  v3 = *(v1 + 40);
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 3);
  v9 = v3;
  sub_21B34BBC4();
  DiscontiguousColumnSlice<A>.hash(into:)(v5, a1);
  return sub_21B34BC24();
}

uint64_t sub_21B2D7CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  DiscontiguousColumnSlice<A>.hash(into:)(v6, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2D7D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v16[1] = *v3;
  v17 = *(v3 + 8);
  v12 = type metadata accessor for Column();
  Column.subscript.getter(a1, v12, v11);
  v13 = *(v6 - 8);
  if ((*(v13 + 48))(v11, 1, v6) == 1)
  {
    result = (*(v8 + 8))(v11, v7);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v13 + 32))(boxed_opaque_existential_1, v11, v6);
  }

  return result;
}

uint64_t sub_21B2D7EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_21B2832C0(a2, &v14);
  if (v15)
  {
    sub_21B261720(&v14, v16);
    sub_21B2616C4(v16, &v14);
    swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v10, 0, 1, v5);
    v11 = type metadata accessor for Column();
    sub_21B28E8DC(v10, a1, v11);
    (*(v7 + 8))(v10, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    sub_21B28EEB4(&v14);
    (*(*(v5 - 8) + 56))(v10, 1, 1, v5);
    v13 = type metadata accessor for Column();
    sub_21B28E8DC(v10, a1, v13);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_21B2D80B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *v4;
  v8 = v4[3];
  v9 = v4[4];
  v10 = a1 == a2;
  if (a1 == a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  if (a1 == a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  v13 = *(v4 + 40);
  sub_21B254074(v4[3], v4[4], v13);
  v14 = 2 * v10;
  v15 = sub_21B248CCC(v11, v12, v14, v8, v9, v13);
  v17 = v16;
  v19 = v18;
  sub_21B23A9F4(v11, v12, v14);
  v24 = *(v4 + 1);
  a4[3] = a3;
  a4[4] = &off_282CAB618;
  v20 = swift_allocObject();
  *a4 = v20;
  v21 = *(a3 + 16);
  v22 = type metadata accessor for Column();
  sub_21B28B2B8(v15, v17, v19, v22, v20 + 16);

  return sub_21B23A9F4(v15, v17, v19);
}

uint64_t sub_21B2D81E0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = a1 == a2;
  if (a1 == a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1;
  }

  if (a1 == a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v12 = *(v4 + 40);
  sub_21B254074(*(v4 + 24), *(v4 + 32), v12);
  v13 = 2 * v9;
  v14 = sub_21B248CCC(v10, v11, v13, v7, v8, v12);
  v16 = v15;
  v18 = v17;
  sub_21B23A9F4(v10, v11, v13);
  sub_21B233A10(a3, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
  swift_dynamicCast();
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v19 = *(a4 + 16);
  v20 = type metadata accessor for Column();
  return sub_21B28B360(&v22, v14, v16, v18, v20);
}

uint64_t sub_21B2D8304@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = *v5;
  v12 = v5[3];
  v13 = v5[4];
  v14 = *(v5 + 40);
  sub_21B254074(v12, v13, v14);
  v15 = sub_21B248CCC(a1, a2, a3, v12, v13, v14);
  v17 = v16;
  v19 = v18;
  v24 = *(v5 + 1);
  a5[3] = a4;
  a5[4] = &off_282CAB618;
  v20 = swift_allocObject();
  *a5 = v20;
  v21 = *(a4 + 16);
  v22 = type metadata accessor for Column();
  sub_21B28B2B8(v15, v17, v19, v22, v20 + 16);

  return sub_21B23A9F4(v15, v17, v19);
}

uint64_t sub_21B2D8418@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v14[0] = v5;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v15 = v10;
  v11 = *(a1 + 16);
  a2[3] = type metadata accessor for Column();
  a2[4] = &off_282CAA128;
  swift_bridgeObjectRetain_n();

  sub_21B254074(v8, v9, v10);
  WitnessTable = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(v5, v6, v14, v11, a1, WitnessTable, a2);
}

void *sub_21B2D8534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_21B2D3BE8(a2, *(v3 + 24), *(v3 + 32), *(v3 + 40)))
  {
    v7 = *(a3 + 16);
    v8 = type metadata accessor for Column();

    return sub_21B28E8DC(a1, a2, v8);
  }

  else
  {
    sub_21B34B634();

    v10 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v10);

    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2D868C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v40 = sub_21B34B474();
  v35 = *(v40 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v40);
  v36 = &v34 - v8;
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[3];
  v45 = a1[2];
  v42 = a1[4];
  v12 = *(a1 + 40);
  v13 = *(v3 + 40);
  *&v82[0] = *v3;
  *(v82 + 8) = *(v3 + 1);
  *(&v82[1] + 8) = *(v3 + 3);
  BYTE8(v82[2]) = v13;
  v14 = DiscontiguousColumnSlice.count.getter(a2);
  v38 = v10;
  *&v46 = v10;
  *(&v46 + 1) = v9;
  v43 = v9;
  v44 = v11;
  v15 = v45;
  *&v47 = v45;
  *(&v47 + 1) = v11;
  v16 = v12;
  v17 = v42;
  *&v48 = v42;
  BYTE8(v48) = v16;
  if (v14 == DiscontiguousColumnSlice.count.getter(a2))
  {
    v18 = *(v3 + 40);
    v78 = *v3;
    v79 = *(v3 + 1);
    v41 = v3;
    v80 = *(v3 + 3);
    v81 = v18;
    swift_getWitnessTable();
    sub_21B34B2E4();
    v56 = v82[0];
    v57 = v82[1];
    v58 = v82[2];
    v59 = v83;
    v72 = v38;
    v73 = v43;
    v74 = v15;
    v19 = v44;
    v75 = v44;
    v76 = v17;
    v77 = v16;
    sub_21B34B2E4();
    v64 = v68;
    v65 = v69;
    v66 = v70;
    v67 = v71;
    v37 = a2;
    v20 = sub_21B34AAF4();
    WitnessTable = swift_getWitnessTable();
    sub_21B34BA54();
    v90[0] = v64;
    v90[1] = v65;
    v90[2] = v66;
    v90[3] = v67;
    v22 = *(*(v20 - 8) + 8);
    v22(v90, v20);
    v91[0] = v56;
    v91[1] = v57;
    v91[2] = v58;
    v91[3] = v59;
    v22(v91, v20);
    v60 = v50;
    v61 = v51;
    v62 = v52;
    v63 = v53;
    v56 = v46;
    v57 = v47;
    v58 = v48;
    v59 = v49;
    *&v82[0] = v20;
    *(&v82[0] + 1) = v20;
    *&v82[1] = WitnessTable;
    *(&v82[1] + 1) = WitnessTable;
    sub_21B34B674();
    sub_21B34B644();
    *&v46 = v20;
    *(&v46 + 1) = v20;
    *&v47 = WitnessTable;
    *(&v47 + 1) = WitnessTable;
    v34 = WitnessTable;
    v23 = sub_21B34B664();
    sub_21B34B654();
    if (v57)
    {
      v24 = v19;
      v25 = v17;
    }

    else
    {
      v26 = *(&v56 + 1);
      v27 = v56;
      v39 = v16;
      v28 = v36;
      v29 = (v35 + 8);
      v30 = v37;
      v31 = v38;
      v32 = v34;
      do
      {
        *&v46 = v31;
        *(&v46 + 1) = v43;
        *&v47 = v45;
        *(&v47 + 1) = v44;
        *&v48 = v42;
        BYTE8(v48) = v39;
        DiscontiguousColumnSlice.subscript.getter(v26, v30, v28);
        sub_21B2D8534(v28, v27, v30);
        (*v29)(v28, v40);
        *&v46 = v20;
        *(&v46 + 1) = v20;
        *&v47 = v32;
        *(&v47 + 1) = v32;
        v23 = sub_21B34B664();
        sub_21B34B654();
        v26 = *(&v56 + 1);
        v27 = v56;
      }

      while (v57 != 1);
      v24 = v44;
      v25 = v42;
      LOBYTE(v16) = v39;
    }

    v52 = v86;
    v53 = v87;
    v54 = v88;
    v55 = v89;
    v48 = v82[2];
    v49 = v83;
    v50 = v84;
    v51 = v85;
    v46 = v82[0];
    v47 = v82[1];
    (*(*(v23 - 8) + 8))(&v46, v23);

    return sub_21B23A9F4(v24, v25, v16);
  }

  else
  {
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2D8B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_21B34AF64();
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10[0] = *a1;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v8;
  LOBYTE(a1) = *(a1 + 40);
  v11 = a1;

  sub_21B254074(v7, v8, a1);
  sub_21B2D868C(v10, a3);

  return sub_21B23A9F4(v7, v8, a1);
}

unint64_t sub_21B2D8C5C()
{
  result = qword_27CD7EE68[0];
  if (!qword_27CD7EE68[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E0D0, &qword_21B351970);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD7EE68);
  }

  return result;
}

uint64_t sub_21B2D8CC0(uint64_t a1, uint64_t a2)
{
  v4 = DiscontiguousColumnSlice.startIndex.getter(a2);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v11[0] = *a1;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  LOBYTE(a1) = *(a1 + 40);
  v12 = a1;
  v10 = v4;

  sub_21B254074(v7, v8, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0D0, &qword_21B351970);
  sub_21B2D8C5C();
  sub_21B2D8B60(v11, &v10, a2);

  return sub_21B23A9F4(v7, v8, a1);
}

uint64_t sub_21B2D8DBC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B2D8DF8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B2D8F34()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B2D8F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21B2D8FB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2D9010(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for _RangeSetStorage._Storage();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B2D90B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = sub_21B34B424();
  if (v4 <= 0x3F)
  {
    result = sub_21B34B054();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B2D91CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for _RangeSetStorage._Storage();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  (*(v13 + 16))(&v17 - v11, v4, v9);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v15 = sub_21B34B424();
    result = (*(*(v15 - 8) + 32))(a3, v12, v15);
    if (!a1)
    {
      return result;
    }

    __break(1u);
  }

  if (result == 1)
  {
    v16 = *v12;
    sub_21B34B424();
    sub_21B34B094();
  }

  else
  {
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

void (*sub_21B2D9394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = *(a4 + 8);
  v13 = sub_21B34BB44();
  v11[3] = v13;
  v14 = *(v13 - 8);
  v11[4] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = sub_21B34B424();
  v11[7] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v11[8] = v19;
  if (v9)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v11[9] = v21;
  (*(v20 + 16))();
  sub_21B2D9760(a2, a3, a4, v17);
  return sub_21B2D95B8;
}

void sub_21B2D95B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v14 = (*a1)[7];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    sub_21B34B934();
    v12 = *(v4 + 8);
    v12(v3, v8);
    (*(v6 + 8))(v5, v14);
    v12(v7, v8);
  }

  else
  {
    v13 = v2[3];
    swift_getWitnessTable();
    sub_21B34B934();
    (*(v6 + 8))(v5, v14);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_21B2D9760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a1;
  v50 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v44 = *(AssociatedTypeWitness - 8);
  v14 = *(v44 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  swift_getAssociatedConformanceWitness();
  v47 = sub_21B34B424();
  v45 = *(v47 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v22 = &v39 - v21;
  sub_21B34B1B4();
  v51 = v4;
  v48 = v6;
  v49 = a2;
  sub_21B34B234();
  result = sub_21B34ABB4();
  if (result)
  {
    v24 = v44;
    v25 = *(v44 + 32);
    v25(v13, v19, AssociatedTypeWitness);
    v26 = TupleTypeMetadata2;
    v25(&v13[*(TupleTypeMetadata2 + 48)], v17, AssociatedTypeWitness);
    v27 = v25;
    v28 = v46;
    v29 = v42;
    (*(v46 + 16))(v42, v13, v26);
    v40 = *(v26 + 48);
    v27(v22, v29, AssociatedTypeWitness);
    v41 = v27;
    v30 = *(v24 + 8);
    v30(&v29[v40], AssociatedTypeWitness);
    (*(v28 + 32))(v29, v13, v26);
    v31 = v47;
    v27(&v22[*(v47 + 36)], &v29[*(v26 + 48)], AssociatedTypeWitness);
    v30(v29, AssociatedTypeWitness);
    v32 = v51;
    v33 = v52;
    v34 = v49;
    sub_21B34B1C4();
    v35 = v45;
    (*(v45 + 8))(v22, v31);
    v36 = sub_21B34BB44();
    v37 = v50;
    (*(*(v34 - 8) + 16))(&v50[*(v36 + 40)], v32, v34);
    (*(v35 + 16))(v22, v33, v31);
    v38 = v41;
    v41(v37, v22, AssociatedTypeWitness);
    return v38(&v37[*(v36 + 36)], &v22[*(v31 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2D9BF0()
{
  type metadata accessor for _RangeSetStorage._Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B2D9C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B34B424();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for _RangeSetStorage._Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B2D9CD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for _RangeSetStorage._Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B2D9D24(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for _RangeSetStorage._Storage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v15 - v8);
  (*(v6 + 16))(&v15 - v8, v2, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v11 = EnumCaseMultiPayload;
    result = 0;
    if (v11 == 1)
    {
      v13 = *v9;
      sub_21B34B424();
      v14 = sub_21B34B004();

      return v14;
    }
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return 1;
  }

  return result;
}

uint64_t sub_21B2D9E68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for _RangeSetStorage._Storage();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v22 - v12);
  (*(v10 + 16))(&v22 - v12, v4, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (!a2)
    {
      v15 = *(v10 + 8);
      v15(v4, v9);
      v16 = sub_21B34B424();
      (*(*(v16 - 8) + 32))(v4, a1, v16);
      swift_storeEnumTagMultiPayload();
      return v15(v13, v9);
    }

    __break(1u);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_8:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v23 = *v13;
  v18 = *(v10 + 8);
  v18(v4, v9);
  swift_storeEnumTagMultiPayload();
  v19 = sub_21B34B424();
  v20 = sub_21B34B054();
  sub_21B34AFC4();
  v21 = v23;
  sub_21B305254(a2, v23);
  (*(*(v19 - 8) + 40))(v21 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)) + *(*(v19 - 8) + 72) * a2, a1, v19);
  nullsub_14(v20);
  v18(v4, v9);
  *v4 = v23;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B2DA140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v67 = a6;
  v65 = a3;
  v62 = a2;
  v63 = a1;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  v66 = sub_21B34B424();
  v11 = *(v66 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v66);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v61 - v17;
  v68 = a5;
  v19 = *(a5 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for _RangeSetStorage._Storage();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v30 = (&v61 - v29);
  v31 = *(v24 + 16);
  v64 = v7;
  v31(&v61 - v29, v7, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v69 = *v30;
      v33 = *(v24 + 8);
      v34 = v64;
      v33(v64, v23);
      swift_storeEnumTagMultiPayload();
      (*(v19 + 16))(v22, v65, v68);
      sub_21B34B054();
      sub_21B34AFB4();
      v33(v34, v23);
      *v34 = v69;
      return swift_storeEnumTagMultiPayload();
    }

    v43 = v65;
    v44 = v67;
    v45 = v68;
    result = sub_21B34B214();
    if ((result & 1) == 0)
    {
      (*(v19 + 16))(v22, v43, v45);
      v46 = *(v44 + 8);
      *v28 = sub_21B34B084();
LABEL_15:
      swift_storeEnumTagMultiPayload();
      return (*(v24 + 40))(v64, v28, v23);
    }
  }

  else
  {
    v36 = v11;
    v37 = *(v11 + 32);
    v61 = v18;
    v38 = v18;
    v39 = v66;
    v37(v38, v30, v66);
    v40 = v65;
    v41 = v67;
    v42 = sub_21B34B214();
    if (v63 != v62)
    {
      if (v42)
      {
        (*(v36 + 8))(v61, v39);
        (*(v24 + 8))(v64, v23);
        return swift_storeEnumTagMultiPayload();
      }

      (*(v19 + 16))(v22, v40, v68);
      v56 = *(v41 + 8);
      v57 = sub_21B34B084();
      (*(v36 + 8))(v61, v39);
      *v28 = v57;
      goto LABEL_15;
    }

    if ((v42 & 1) == 0)
    {
      v47 = v36;
      if (v63)
      {
        sub_21B34B954();
        v48 = *(v36 + 72);
        v49 = *(v36 + 80);
        swift_allocObject();
        v50 = v39;
        v51 = sub_21B34AF94();
        (*(v47 + 16))(v52, v61, v50);
        v70 = v51;
        v53 = sub_21B34B054();
        nullsub_14(v53);
        (*(v19 + 16))(v22, v40, v68);
        v54 = *(v41 + 8);
        v39 = v50;
        v55 = v61;
        sub_21B34B014();
      }

      else
      {
        (*(v19 + 16))(v22, v40, v68);
        v58 = *(v41 + 8);
        v70 = sub_21B34B084();
        v59 = *(v36 + 16);
        v55 = v61;
        v59(v15, v61, v39);
        sub_21B34B054();
        sub_21B34B024();
      }

      (*(v47 + 8))(v55, v39);
      v60 = v64;
      (*(v24 + 8))(v64, v23);
      *v60 = v70;
      return swift_storeEnumTagMultiPayload();
    }

    return (*(v36 + 8))(v61, v39);
  }

  return result;
}

uint64_t sub_21B2DA730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _RangeSetStorage._Storage();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = TupleTypeMetadata2 - 8;
  v11 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = (v44 - v12);
  v44[1] = a3;
  v44[2] = a4;
  v14 = sub_21B34B424();
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v44[0] = v44 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v44 - v21;
  v23 = (v13 + *(v10 + 56));
  v24 = *(v8 - 8);
  v25 = *(v24 + 16);
  v25(v13, a1, v8);
  v25(v23, a2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v34 = swift_getEnumCaseMultiPayload();
      if (!v34)
      {
        (*(v24 + 8))(v23, v8);
        v30 = 0;
        return v30 & 1;
      }

      if (v34 != 1)
      {
        v30 = 1;
        return v30 & 1;
      }

      v27 = *v23;
      goto LABEL_12;
    }

    v27 = *v13;
    v28 = swift_getEnumCaseMultiPayload();
    if (v28)
    {
      if (v28 == 1)
      {
        v29 = *v23;
        swift_getWitnessTable();
        v30 = sub_21B34B074();

LABEL_13:

        return v30 & 1;
      }

LABEL_12:
      v47 = v27;
      sub_21B34B054();
      swift_getWitnessTable();
      v30 = sub_21B34B2B4();
      goto LABEL_13;
    }

    v13 = v23;
    v32 = v45;
  }

  else
  {
    v31 = swift_getEnumCaseMultiPayload();
    if (!v31)
    {
      v39 = v45;
      v38 = v46;
      v40 = *(v45 + 32);
      v41 = v44[0];
      v40(v44[0], v13, v46);
      v40(v18, v23, v38);
      v30 = sub_21B34B3F4();
      v42 = *(v39 + 8);
      v42(v18, v38);
      v42(v41, v38);
      return v30 & 1;
    }

    v32 = v45;
    if (v31 != 1)
    {
      (*(v45 + 8))(v13, v46);
      v30 = 0;
      return v30 & 1;
    }

    v33 = *v23;
  }

  v35 = v46;
  (*(v32 + 32))(v22, v13, v46);
  if (sub_21B34B004() == 1)
  {
    v36 = v44[0];
    sub_21B34B094();

    v30 = sub_21B34B3F4();
    v37 = *(v32 + 8);
    v37(v36, v35);
    v37(v22, v35);
  }

  else
  {
    (*(v32 + 8))(v22, v35);

    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_21B2DABCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = sub_21B34B424();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  swift_getWitnessTable();
  v13 = sub_21B34B7D4();
  v21 = *(v13 - 8);
  v14 = *(v21 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  (*(*(a2 - 8) + 16))(&v21 - v15, v3, a2);
  v22 = v13;
  v17 = *(v13 + 36);
  *&v16[v17] = 0;
  if (sub_21B2D9D24(a2))
  {
    v18 = 0;
    do
    {
      sub_21B2D91CC(v18, a2, v12);
      v24 = v18;
      swift_getWitnessTable();
      sub_21B34B164();
      MEMORY[0x21CEEDC10](a1, v8, v23);
      (*(v9 + 8))(v12, v8);
      v19 = sub_21B2D9D24(a2);
      v18 = *&v16[v17];
    }

    while (v18 != v19);
  }

  return (*(v21 + 8))(v16, v22);
}

uint64_t sub_21B2DAE38(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  sub_21B2DABCC(v5, a1, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2DAEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  sub_21B2DABCC(v6, a2, v4);
  return sub_21B34BC24();
}

void (*sub_21B2DAEFC(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  v8[1] = a3;
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = sub_21B34B424();
  v9[2] = v12;
  v13 = *(v12 - 8);
  v9[3] = v13;
  v14 = *(v13 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v9[5] = v16;
  v9[6] = v17;
  sub_21B2D91CC(v17, a3, v16);
  return sub_21B2DB020;
}

void sub_21B2DB020(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[4];
  if (a2)
  {
    v6 = v2[2];
    v7 = v2[3];
    v8 = *v2;
    v9 = v2[1];
    (*(v7 + 16))((*a1)[4], v3, v6);
    sub_21B2D9E68(v5, v4, v9);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    v10 = *v2;
    sub_21B2D9E68((*a1)[5], v4, v2[1]);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_21B2DB0EC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_21B2DBAB4(a1, &v7, a3, a4);
  swift_getWitnessTable();
  v5 = sub_21B34BB44();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

void (*sub_21B2DB18C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_21B2D9394(v8, a2, a3, a4);
  return sub_21B2444C0;
}

uint64_t sub_21B2DB29C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_21B2DB324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21B2D9D24(a1);
  *a2 = result;
  return result;
}

void (*sub_21B2DB34C(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B2DB3D4(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B2DB3D4(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = sub_21B34B424();
  *a1 = v8;
  v9 = *(v8 - 8);
  a1[1] = v9;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  sub_21B2D91CC(a2, a3, v10);
  return sub_21B2854A4;
}

uint64_t sub_21B2DB4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_21B2D9760(a1, a2, WitnessTable, a3);
}

uint64_t sub_21B2DB514()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

uint64_t sub_21B2DB598()
{
  swift_getWitnessTable();

  return sub_21B34B164();
}

uint64_t sub_21B2DB620(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_21B2DB698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_21B34B7D4();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21B2DB724(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B2DB778(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_21B2DBAB0();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_21B2DB804(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_21B2D9BF0();
}

uint64_t sub_21B2DB810(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B2DA140(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_21B2DBAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  sub_21B34BB44();
  swift_getWitnessTable();

  return sub_21B34B934();
}

uint64_t static Column.+= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBB8C);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBC20);
}

BOOL sub_21B2DBBF8(Swift::Int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_21B2DC690(a1, *(v1 + 48));
}

uint64_t static Column.-= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBCBC);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBD28);
}

uint64_t static Column.*= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBD94);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBE00);
}

uint64_t static Column./= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBE6C);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DBED8);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DBF44, sub_21B2DC300);
}

{
  return sub_21B2DC36C(a1, a2, a3, a4, a5, a6, sub_21B2DF5B4, sub_21B2DCD28);
}

uint64_t sub_21B2DBF60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, char *, uint64_t, uint64_t))
{
  v38 = a8;
  v36 = a6;
  v34 = a3;
  v32 = a4;
  v40 = *(a4 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](a1);
  v33 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v12;
  v35 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  v27[0] = *(v41 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = v27 - v15;
  result = sub_21B34B004();
  if (result)
  {
    v18 = 0;
    v19 = *(TupleTypeMetadata2 + 48);
    v30 = a2;
    v31 = (v41 + 16);
    v28 = *a1;
    v29 = v19;
    v27[3] = AssociatedTypeWitness - 8;
    v27[4] = v40 + 16;
    v27[2] = v40 + 8;
    do
    {
      v20 = sub_21B34AFF4();
      sub_21B34AFA4();
      if (v20)
      {
        result = (*(v41 + 16))(v16, a2 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v18, TupleTypeMetadata2);
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_21B34B684();
        if (v27[0] != 8)
        {
          __break(1u);
          return result;
        }

        v42[0] = result;
        (*v31)(v16, v42, TupleTypeMetadata2);
        result = swift_unknownObjectRelease();
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v43 = *v16;
      v22 = v29;
      v23 = sub_21B34B314();
      v24 = v40;
      v25 = v32;
      v26 = v33;
      (*(v40 + 16))(v33);
      v23(v42, 0);
      (*(*(AssociatedTypeWitness - 8) + 8))(&v16[v22]);
      a2 = v30;
      v38(v28 + *(v24 + 72) * v43, v26, v25, v36);
      (*(v24 + 8))(v26, v25);
      result = sub_21B34B004();
      ++v18;
    }

    while (v21 != result);
  }

  return result;
}

uint64_t sub_21B2DC36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *))
{
  v31 = a8;
  v30 = a7;
  v29 = a5;
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v13 = *(v27 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E978, &qword_21B353910);
  v26[2] = v16;
  v17 = sub_21B2A85CC();
  v26[1] = v17;
  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  v46 = v16;
  *&v47 = AssociatedTypeWitness;
  *(&v47 + 1) = v17;
  v48 = v18;
  v19 = sub_21B34B674();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v26[0] = a1;
  v46 = *a1;
  v47 = *(a1 + 8);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34B194();
  v44 = v45;
  v21 = v28;
  sub_21B34B204();
  sub_21B34BA54();
  (*(v27 + 8))(v15, AssociatedTypeWitness);
  v39 = a3;
  v40 = a4;
  v22 = v29;
  v41 = v29;
  v42 = a6;
  v43 = v26[0];
  swift_getWitnessTable();
  v23 = sub_21B34AF24();
  v33 = a3;
  v34 = a4;
  v35 = v22;
  v36 = a6;
  v37 = v23;
  v38 = v21;
  v24 = type metadata accessor for PackedOptionalsArray();
  sub_21B32ABE8(v31, v32, v24);
}

BOOL sub_21B2DC690(Swift::Int *a1, uint64_t *a2)
{
  v2 = a2[2];
  v6 = *a2;
  v7 = a2[1];
  v3 = *a1;
  type metadata accessor for Column();
  v4 = Column.isNil(at:)(v3);

  return !v4;
}

uint64_t sub_21B2DC728(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, char *, uint64_t, uint64_t))
{
  v43 = a8;
  v42 = a6;
  v45 = a1;
  v63 = a4;
  v12 = sub_21B34B474();
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v61 = a7;
  v62 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v22 = &v37 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  v38 = *(v57 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v66 = &v37 - v24;
  result = sub_21B34B004();
  if (result)
  {
    v26 = 0;
    v27 = *(TupleTypeMetadata2 + 48);
    v53 = (v19 + 32);
    v54 = v27;
    v55 = (v64 + 16);
    v56 = (v57 + 16);
    v51 = (v64 + 8);
    v52 = v63 - 8;
    v47 = (v19 + 8);
    v49 = v17;
    v41 = a3;
    v50 = a2;
    v40 = v12;
    v48 = TupleTypeMetadata2;
    v60 = v22;
    v39 = AssociatedTypeWitness;
    while (1)
    {
      v29 = sub_21B34AFF4();
      sub_21B34AFA4();
      if (v29)
      {
        result = (*(v57 + 16))(v66, a2 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v26, TupleTypeMetadata2);
      }

      else
      {
        result = sub_21B34B684();
        if (v38 != 8)
        {
          goto LABEL_16;
        }

        v65[0] = result;
        (*v56)(v66, v65, TupleTypeMetadata2);
        result = swift_unknownObjectRelease();
      }

      v30 = v55;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v64 = v26 + 1;
      v58 = *v66;
      (*v53)(v22, &v66[v54], AssociatedTypeWitness);
      v31 = sub_21B34B314();
      v59 = *v30;
      v59(v17);
      v31(v65, 0);
      v32 = *(v63 - 8);
      v33 = *(v32 + 48);
      if ((v33)(v17, 1) == 1)
      {
        v28 = v60;
        (*v47)(v60, AssociatedTypeWitness);
        (*v51)(v17, v12);
        a2 = v50;
        v22 = v28;
      }

      else
      {
        (*v51)(v17, v12);
        v34 = *v45;
        v35 = v63;
        v46 = sub_21B34B314();
        v36 = v44;
        v59(v44);
        v46(v65, 0);
        result = v33(v36, 1, v35);
        if (result == 1)
        {
          goto LABEL_15;
        }

        v43(v34 + *(v32 + 72) * v58, v36, v35, v42);
        v22 = v60;
        AssociatedTypeWitness = v39;
        (*v47)(v60, v39);
        (*(v32 + 8))(v36, v35);
        a2 = v50;
        v12 = v40;
      }

      TupleTypeMetadata2 = v48;
      result = sub_21B34B004();
      ++v26;
      v17 = v49;
      if (v64 == result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t static ColumnSlice.+= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DCE40(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D0]);
}

{
  return sub_21B2DD6A4(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D0]);
}

uint64_t static ColumnSlice.-= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DCE40(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D8]);
}

{
  return sub_21B2DD6A4(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D8]);
}

uint64_t static ColumnSlice.*= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DCE40(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83C20]);
}

{
  return sub_21B2DD6A4(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83C20]);
}

uint64_t static ColumnSlice./= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DCE40(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83F50]);
}

{
  return sub_21B2DD6A4(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83F50]);
}

{
  return sub_21B2DCE40(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83558]);
}

{
  return sub_21B2DD6A4(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83558]);
}

uint64_t sub_21B2DCE40(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *, uint64_t, uint64_t))
{
  v74 = a7;
  v73 = a5;
  v81 = a2;
  v72 = sub_21B34B474();
  v62 = *(v72 - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x28223BE20](v72);
  v76 = &v60 - v13;
  v61 = *(a3 - 8);
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v12);
  v75 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v65 = &v60 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_21B34B474();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v80 = (&v60 - v22);
  v23 = swift_getAssociatedTypeWitness();
  v85 = *(v23 - 8);
  v24 = *(v85 + 8);
  MEMORY[0x28223BE20](v23);
  v84 = &v60 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E978, &qword_21B353910);
  v27 = sub_21B2A85CC();
  v28 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v90 = v26;
  *(&v90 + 1) = v23;
  v71 = v26;
  v29 = v23;
  v67 = v23;
  v82 = v27;
  v91 = v27;
  *&v92 = v28;
  v30 = v28;
  v70 = v28;
  v83 = sub_21B34B674();
  v31 = *(*(v83 - 1) + 64);
  MEMORY[0x28223BE20](v83);
  v66 = (&v60 - v32);
  *&v90 = v26;
  *(&v90 + 1) = v29;
  v91 = v27;
  *&v92 = v30;
  v33 = sub_21B34B664();
  v63 = *(v33 - 8);
  v34 = *(v63 + 64);
  MEMORY[0x28223BE20](v33);
  v86 = &v60 - v35;
  v36 = *(a1 + 2);
  v90 = *a1;
  v91 = v36;
  v92 = *(a1 + 24);
  v77 = a3;
  v87 = type metadata accessor for ColumnSlice();
  swift_getWitnessTable();
  sub_21B34B194();
  v88 = v89;
  v37 = v84;
  v38 = v80;
  v78 = a4;
  v79 = a6;
  v39 = v65;
  v40 = AssociatedTypeWitness;
  sub_21B34B204();
  v41 = v67;
  sub_21B34BA54();
  (*(v85 + 1))(v37, v41);
  sub_21B34B644();
  sub_21B34B654();
  v42 = *(TupleTypeMetadata2 - 8);
  v43 = *(v42 + 48);
  v84 = (v42 + 48);
  v85 = v43;
  if (v43(v38, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v63 + 8))(v86, v33);
  }

  v46 = *(v16 + 32);
  v45 = v16 + 32;
  v83 = v46;
  v71 = (v61 + 16);
  v70 = (v61 + 48);
  v67 = (v61 + 8);
  v66 = (v62 + 8);
  v82 = (v45 - 24);
  v69 = v33;
  v68 = TupleTypeMetadata2;
  while (1)
  {
    v47 = *v38;
    v83(v39, v38 + *(TupleTypeMetadata2 + 48), v40);
    v49 = *(a1 + 2);
    v48 = *(a1 + 3);
    v50 = *(a1 + 4);
    v90 = *a1;
    v91 = v49;
    *&v92 = v48;
    *(&v92 + 1) = v50;

    LOBYTE(v50) = ColumnSlice.isNil(at:)(v47);

    if ((v50 & 1) == 0)
    {
      break;
    }

LABEL_4:
    (*v82)(v39, v40);
    sub_21B34B654();
    if (v85(v38, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v63 + 8))(v86, v33);
    }
  }

  v51 = v45;
  v52 = v40;
  v53 = v39;
  v54 = sub_21B34B314();
  v55 = v75;
  v56 = v77;
  (*v71)(v75);
  v54(&v90, 0);
  v57 = *(a1 + 2);
  v90 = *a1;
  v91 = v57;
  v92 = *(a1 + 24);
  v58 = v76;
  v59 = v87;
  ColumnSlice.subscript.getter(v47, v87);
  result = (*v70)(v58, 1, v56);
  if (result != 1)
  {
    v74(v58, v55, v56, v73);
    (*v67)(v55, v56);
    sub_21B29318C(v58, v47, v59);
    (*v66)(v58, v72);
    v40 = v52;
    v45 = v51;
    v39 = v53;
    TupleTypeMetadata2 = v68;
    v38 = v80;
    v33 = v69;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2DD6A4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, char *, uint64_t, uint64_t))
{
  v66 = a7;
  v65 = a5;
  v78 = a2;
  v86 = sub_21B34B474();
  v82 = *(v86 - 8);
  v11 = *(v82 + 64);
  v12 = MEMORY[0x28223BE20](v86);
  v68 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v62 - v15;
  MEMORY[0x28223BE20](v14);
  v70 = &v62 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = *(AssociatedTypeWitness - 8);
  v17 = *(v89 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v63 = &v62 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_21B34B474();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v62 - v21);
  v80 = a6;
  v79 = a4;
  v23 = swift_getAssociatedTypeWitness();
  v90 = *(v23 - 8);
  v24 = *(v90 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E978, &qword_21B353910);
  v28 = sub_21B2A85CC();
  v29 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v94 = v27;
  *(&v94 + 1) = v23;
  v84 = v27;
  v85 = v29;
  v95 = v28;
  *&v96 = v29;
  v87 = v28;
  v30 = v29;
  v88 = sub_21B34B674();
  v31 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  *&v94 = v27;
  *(&v94 + 1) = v23;
  v95 = v28;
  *&v96 = v30;
  v32 = sub_21B34B664();
  v62 = *(v32 - 8);
  v33 = *(v62 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v62 - v34;
  v36 = *(a1 + 2);
  v94 = *a1;
  v95 = v36;
  v96 = *(a1 + 24);
  v77 = a3;
  v37 = type metadata accessor for ColumnSlice();
  swift_getWitnessTable();
  sub_21B34B194();
  v92 = v93;
  v38 = v63;
  sub_21B34B204();
  sub_21B34BA54();
  v39 = v23;
  v40 = TupleTypeMetadata2;
  (*(v90 + 8))(v26, v39);
  sub_21B34B644();
  v87 = v35;
  v88 = v32;
  sub_21B34B654();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v84 = v41 + 48;
  v85 = v42;
  if (v42(v22, 1, v40) == 1)
  {
    return (*(v62 + 8))(v87, v88);
  }

  v83 = *(v89 + 32);
  v76 = (v82 + 16);
  v67 = v77 - 8;
  v74 = (v82 + 8);
  v89 += 32;
  v82 = v89 - 24;
  v75 = v37;
  while (1)
  {
    v44 = *v22;
    v83(v38, v22 + *(v40 + 48), AssociatedTypeWitness);
    v46 = *(a1 + 2);
    v45 = *(a1 + 3);
    v47 = *(a1 + 4);
    v94 = *a1;
    v95 = v46;
    *&v96 = v45;
    *(&v96 + 1) = v47;

    v90 = v44;
    LOBYTE(v47) = ColumnSlice.isNil(at:)(v44);

    if ((v47 & 1) == 0)
    {
      v48 = sub_21B34B314();
      v49 = a1;
      v50 = v70;
      v51 = v86;
      v73 = *v76;
      v73(v70);
      v48(&v94, 0);
      v72 = *(v77 - 8);
      v81 = *(v72 + 48);
      LODWORD(v48) = v81(v50, 1);
      v52 = v50;
      a1 = v49;
      v71 = *v74;
      v71(v52, v51);
      if (v48 != 1)
      {
        break;
      }
    }

    (*v82)(v38, AssociatedTypeWitness);
LABEL_5:
    sub_21B34B654();
    if (v85(v22, 1, v40) == 1)
    {
      return (*(v62 + 8))(v87, v88);
    }
  }

  v53 = sub_21B34B314();
  v54 = v69;
  v73(v69);
  v53(&v94, 0);
  v55 = v77;
  result = (v81)(v54, 1, v77);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v56 = *(v49 + 2);
  v94 = *v49;
  v95 = v56;
  v96 = *(v49 + 24);
  v57 = v68;
  v58 = v90;
  v59 = v75;
  ColumnSlice.subscript.getter(v90, v75);
  result = (v81)(v57, 1, v55);
  if (result != 1)
  {
    v60 = v68;
    v61 = v69;
    v66(v68, v69, v55, v65);
    sub_21B29318C(v60, v58, v59);
    v71(v60, v86);
    (*v82)(v38, AssociatedTypeWitness);
    (*(v72 + 8))(v61, v55);
    goto LABEL_5;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t static DiscontiguousColumnSlice.+= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DE098(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D0]);
}

{
  return sub_21B2DEAB8(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D0]);
}

uint64_t static DiscontiguousColumnSlice.-= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DE098(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D8]);
}

{
  return sub_21B2DEAB8(a1, a2, a3, a4, a5, a6, MEMORY[0x277D843D8]);
}

uint64_t static DiscontiguousColumnSlice.*= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DE098(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83C20]);
}

{
  return sub_21B2DEAB8(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83C20]);
}

uint64_t static DiscontiguousColumnSlice./= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_21B2DE098(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83F50]);
}

{
  return sub_21B2DEAB8(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83F50]);
}

{
  return sub_21B2DE098(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83558]);
}

{
  return sub_21B2DEAB8(a1, a2, a3, a4, a5, a6, MEMORY[0x277D83558]);
}

uint64_t sub_21B2DE098(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *, uint64_t, uint64_t))
{
  v67 = a7;
  v66 = a5;
  v73 = a2;
  v65 = sub_21B34B474();
  v61 = *(v65 - 8);
  v11 = *(v61 + 64);
  v12 = MEMORY[0x28223BE20](v65);
  v69 = &v59 - v13;
  v62 = *(a3 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v12);
  v68 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v17 = *(v84 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v83 = &v59 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_21B34B474();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v81 = (&v59 - v21);
  v22 = swift_getAssociatedTypeWitness();
  v87 = *(v22 - 8);
  v23 = *(v87 + 64);
  MEMORY[0x28223BE20](v22);
  v86 = &v59 - v24;
  v70 = a3;
  v88 = type metadata accessor for DiscontiguousColumnSlice();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_21B34AAF4();
  v26 = swift_getWitnessTable();
  v27 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v99 = v25;
  *(&v99 + 1) = v22;
  v74 = v22;
  *&v100 = v26;
  *(&v100 + 1) = v27;
  v78 = v26;
  v80 = sub_21B34B674();
  v28 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v76 = (&v59 - v29);
  *&v99 = v25;
  *(&v99 + 1) = v22;
  *&v100 = v26;
  *(&v100 + 1) = v27;
  v85 = sub_21B34B664();
  v60 = *(v85 - 8);
  v30 = *(v60 + 64);
  MEMORY[0x28223BE20](v85);
  v32 = &v59 - v31;
  v33 = *(a1 + 40);
  v95 = *a1;
  v96 = *(a1 + 1);
  v97 = *(a1 + 3);
  v98 = v33;
  sub_21B34B2E4();
  v89 = *v93;
  v90 = *&v93[16];
  v91 = *&v93[32];
  v92 = v94;
  v34 = v86;
  v71 = a4;
  v72 = a6;
  v35 = v83;
  v36 = v81;
  sub_21B34B204();
  v37 = v34;
  v38 = v74;
  v39 = TupleTypeMetadata2;
  sub_21B34BA54();
  (*(v87 + 8))(v37, v38);
  v99 = v89;
  v100 = v90;
  v101 = v91;
  v102 = v92;
  (*(*(v25 - 8) + 8))(&v99, v25);
  sub_21B34B644();
  v80 = v32;
  sub_21B34B654();
  v40 = *(v39 - 8);
  WitnessTable = *(v40 + 48);
  v78 = v40 + 48;
  if (WitnessTable(v36, 1, v39) == 1)
  {
    return (*(v60 + 8))(v80, v85);
  }

  v76 = *(v84 + 32);
  v64 = (v62 + 16);
  v63 = (v62 + 48);
  v62 += 8;
  v61 += 8;
  v84 += 32;
  v74 = (v84 - 24);
  v77 = a1;
  v75 = AssociatedTypeWitness;
  while (1)
  {
    v42 = *v36;
    v76(v35, v36 + *(v39 + 48), AssociatedTypeWitness);
    v43 = a1[1];
    v45 = a1[2];
    v44 = a1[3];
    v46 = a1[4];
    v47 = *(a1 + 40);
    *v93 = *a1;
    *&v93[8] = v43;
    *&v93[16] = v45;
    *&v93[24] = v44;
    *&v93[32] = v46;
    v93[40] = v47;
    v86 = v42;
    v48 = DiscontiguousColumnSlice.isNil(at:)(v42);
    v49 = *&v93[24];
    v87 = *&v93[32];
    v50 = v93[40];

    v51 = v47;
    v35 = v83;
    sub_21B254074(v44, v46, v51);

    v52 = v49;
    a1 = v77;
    sub_21B23A9F4(v52, v87, v50);
    if (!v48)
    {
      break;
    }

LABEL_4:
    AssociatedTypeWitness = v75;
    (*v74)(v35, v75);
    v36 = v81;
    sub_21B34B654();
    v39 = TupleTypeMetadata2;
    if (WitnessTable(v36, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v60 + 8))(v80, v85);
    }
  }

  v53 = sub_21B34B314();
  v54 = v68;
  v55 = v70;
  (*v64)(v68);
  v53(v93, 0);
  v56 = *(a1 + 40);
  *v93 = *a1;
  *&v93[8] = *(a1 + 1);
  *&v93[24] = *(a1 + 3);
  v93[40] = v56;
  v57 = v69;
  v58 = v86;
  DiscontiguousColumnSlice.subscript.getter(v86, v88, v69);
  result = (*v63)(v57, 1, v55);
  if (result != 1)
  {
    v67(v57, v54, v55, v66);
    (*v62)(v54, v55);
    sub_21B2D8534(v57, v58, v88);
    (*v61)(v57, v65);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2DEAB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *, uint64_t, uint64_t))
{
  v71 = a7;
  v70 = a5;
  v79 = a2;
  v87 = sub_21B34B474();
  v82 = *(v87 - 8);
  v11 = *(v82 + 64);
  v12 = MEMORY[0x28223BE20](v87);
  v72 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v75 = &v68 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = *(AssociatedTypeWitness - 8);
  v17 = *(v94 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v93 = &v68 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_21B34B474();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v90 = (&v68 - v21);
  v81 = a6;
  v80 = a4;
  v22 = swift_getAssociatedTypeWitness();
  v95 = *(v22 - 8);
  v23 = *(v95 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v68 - v24;
  v78 = a3;
  v26 = type metadata accessor for DiscontiguousColumnSlice();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_21B34AAF4();
  v28 = swift_getWitnessTable();
  v29 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v108 = v27;
  *(&v108 + 1) = v22;
  *&v109 = v28;
  *(&v109 + 1) = v29;
  v97 = sub_21B34B674();
  v30 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v88 = &v68 - v31;
  *&v108 = v27;
  *(&v108 + 1) = v22;
  *&v109 = v28;
  *(&v109 + 1) = v29;
  v32 = sub_21B34B664();
  v69 = *(v32 - 8);
  v33 = *(v69 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v68 - v34;
  v36 = *(a1 + 40);
  v104 = *a1;
  v105 = *(a1 + 1);
  v106 = *(a1 + 3);
  v107 = v36;
  sub_21B34B2E4();
  v98 = *v102;
  v99 = *&v102[16];
  v100 = *&v102[32];
  v101 = v103;
  sub_21B34B204();
  sub_21B34BA54();
  (*(v95 + 8))(v25, v22);
  v108 = v98;
  v109 = v99;
  v110 = v100;
  v111 = v101;
  v37 = v93;
  v38 = v90;
  v39 = TupleTypeMetadata2;
  (*(*(v27 - 8) + 8))(&v108, v27);
  sub_21B34B644();
  WitnessTable = v32;
  v40 = AssociatedTypeWitness;
  v88 = v35;
  sub_21B34B654();
  v41 = *(v39 - 8);
  v86 = *(v41 + 48);
  v85 = v41 + 48;
  if (v86(v38, 1, v39) == 1)
  {
    return (*(v69 + 8))(v88, WitnessTable);
  }

  v84 = *(v94 + 32);
  v77 = (v82 + 16);
  v73 = v78 - 8;
  v76 = (v82 + 8);
  v94 += 32;
  v82 = v94 - 24;
  v83 = a1;
  v96 = v26;
  while (1)
  {
    v43 = *v38;
    v84(v37, v38 + *(v39 + 48), v40);
    v44 = a1[1];
    v46 = a1[2];
    v45 = a1[3];
    v47 = a1[4];
    v48 = *(a1 + 40);
    *v102 = *a1;
    *&v102[8] = v44;
    *&v102[16] = v46;
    *&v102[24] = v45;
    *&v102[32] = v47;
    v102[40] = v48;
    v95 = v43;
    LODWORD(v97) = DiscontiguousColumnSlice.isNil(at:)(v43);
    v49 = *&v102[24];
    v50 = *&v102[32];
    v51 = v102[40];

    sub_21B254074(v45, v47, v48);

    v37 = v93;
    sub_21B23A9F4(v49, v50, v51);
    if ((v97 & 1) == 0)
    {
      v52 = sub_21B34B314();
      v53 = *v77;
      v54 = v75;
      v55 = v87;
      (*v77)(v75);
      v52(v102, 0);
      v56 = *(v78 - 8);
      v57 = *(v56 + 48);
      LODWORD(v52) = v57(v54, 1);
      v58 = *v76;
      (*v76)(v54, v55);
      if (v52 != 1)
      {
        break;
      }
    }

    v40 = AssociatedTypeWitness;
    (*v82)(v37, AssociatedTypeWitness);
    a1 = v83;
LABEL_5:
    v38 = v90;
    sub_21B34B654();
    v39 = TupleTypeMetadata2;
    if (v86(v38, 1, TupleTypeMetadata2) == 1)
    {
      return (*(v69 + 8))(v88, WitnessTable);
    }
  }

  v97 = v58;
  v59 = sub_21B34B314();
  v60 = v74;
  v53(v74);
  v59(v102, 0);
  v61 = v78;
  result = (v57)(v60, 1, v78);
  if (result == 1)
  {
    goto LABEL_12;
  }

  a1 = v83;
  v62 = *(v83 + 40);
  *v102 = *v83;
  *&v102[8] = *(v83 + 1);
  *&v102[24] = *(v83 + 3);
  v102[40] = v62;
  v63 = v72;
  v64 = v95;
  v65 = v96;
  DiscontiguousColumnSlice.subscript.getter(v95, v96, v72);
  result = (v57)(v63, 1, v61);
  v66 = AssociatedTypeWitness;
  if (result != 1)
  {
    v67 = v74;
    v71(v63, v74, v61, v70);
    sub_21B2D8534(v63, v64, v65);
    (v97)(v63, v87);
    (*v82)(v37, v66);
    (*(v56 + 8))(v67, v61);
    v40 = v66;
    goto LABEL_5;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_21B2DF5D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v5 = a2;
  v6 = result;
  v30 = *(a3 + 16);
  if (v30 >= v3)
  {
    v7 = a2 - result;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  v33 = MEMORY[0x277D84F90];
  result = sub_21B254348(0, v7 & ~(v7 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_41;
  }

  v28 = v6;
  v29 = v7;
  v26 = a3;
  if (v7)
  {
    if (v5 < v6)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v8 = (a3 + 40);
    v9 = v30;
    v10 = v6;
    v11 = v7;
    v31 = v5;
    while (v5 != v10)
    {
      if (v10 >= v5)
      {
        goto LABEL_34;
      }

      if (!v9)
      {
        goto LABEL_35;
      }

      v13 = *(v8 - 1);
      v12 = *v8;
      v15 = *(v33 + 16);
      v14 = *(v33 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_21B254348((v14 > 1), v15 + 1, 1);
      }

      *(v33 + 16) = v15 + 1;
      v16 = v33 + 32 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      *(v16 + 48) = v10;
      *(v16 + 56) = 7;
      v8 += 2;
      --v9;
      ++v10;
      --v11;
      v5 = v31;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = v6;
LABEL_17:
  if (v10 == v5)
  {
    return v33;
  }

  v17 = v28;
  if (v5 >= v28)
  {
    v18 = 0;
    v27 = v10 - v5;
    if (v10 <= v5)
    {
      v19 = v5;
    }

    else
    {
      v19 = v10;
    }

    v32 = v19 - v10;
    v20 = (v26 + 16 * v29 + 40);
    while (v10 >= v17)
    {
      if (v32 == v18)
      {
        goto LABEL_37;
      }

      if (v30 - v29 == v18)
      {
        return v33;
      }

      if (v29 + v18 >= v30)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v29 + v18, 1))
      {
        goto LABEL_39;
      }

      v22 = *(v20 - 1);
      v21 = *v20;
      v23 = *(v33 + 16);
      v24 = *(v33 + 24);

      if (v23 >= v24 >> 1)
      {
        result = sub_21B254348((v24 > 1), v23 + 1, 1);
      }

      *(v33 + 16) = v23 + 1;
      v25 = v33 + 32 * v23;
      *(v25 + 32) = v22;
      *(v25 + 40) = v21;
      *(v25 + 48) = v10 + v18;
      *(v25 + 56) = 7;
      ++v18;
      v20 += 2;
      v17 = v28;
      if (!(v27 + v18))
      {
        return v33;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t DataFrame.init(contentsOfJSONFile:columns:types:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a4;

  v11 = sub_21B34A6E4();
  if (v5)
  {
    v13 = sub_21B34A6D4();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  else
  {
    v22 = v12;
    v23 = v11;
    v15 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v15 setFormatOptions_];
    v16 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v16 setFormatOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E460, &qword_21B352890);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21B352080;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v17 + 32) = sub_21B2E0908;
    *(v17 + 40) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v17 + 48) = sub_21B2E0908;
    *(v17 + 56) = v19;
    v26 = v17;
    DataFrame.init(jsonData:columns:types:options:)(v23, v22, a2, a3, &v26, &v24);
    v20 = sub_21B34A6D4();
    result = (*(*(v20 - 8) + 8))(a1, v20);
    v21 = v25;
    *a5 = v24;
    *(a5 + 16) = v21;
  }

  return result;
}

uint64_t DataFrame.init(jsonData:columns:types:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v11 = *a5;
  v12 = objc_opt_self();
  v13 = sub_21B34A724();
  *&v41 = 0;
  v14 = [v12 JSONObjectWithData:v13 options:0 error:&v41];

  if (!v14)
  {
    v17 = v41;

    sub_21B34A654();

LABEL_7:
    swift_willThrow();
    result = sub_21B234324(a1, a2);
    goto LABEL_21;
  }

  v15 = v41;
  sub_21B34B554();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EFF0, &qword_21B355BB8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_21B2735F8();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
    *(v18 + 64) = 3;
    goto LABEL_7;
  }

  v16 = sub_21B2E1348(v40);
  if (v6)
  {

    sub_21B234324(a1, a2);
  }

  else
  {
    v38 = v40;
    v19 = sub_21B2E1470(v16, a3);

    v20 = *(v19 + 16);
    if (v20)
    {
      v35 = v11;
      v36 = a1;
      v37 = a2;
      v21 = 0;
      for (i = 0; i != v20; ++i)
      {
        if (i >= *(v19 + 16))
        {
          __break(1u);
LABEL_23:
          __break(1u);
        }

        v23 = *(v19 + v21 + 32);
        v24 = *(v19 + v21 + 40);
        v25 = *(v19 + v21 + 48);
        v26 = *(a4 + 16);

        if (v26)
        {
          v27 = sub_21B24B534(v23, v24);
          if (v28)
          {
            v29 = *(*(a4 + 56) + v27);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_21B23A394(v19);
            }

            if (i >= *(v19 + 16))
            {
              goto LABEL_23;
            }

            v30 = v19 + v21;
            v31 = *(v19 + v21 + 40);
            *(v30 + 32) = v23;
            *(v30 + 40) = v24;
            *(v30 + 48) = v25;
            *(v30 + 56) = v29;
          }
        }

        v21 += 32;
      }

      a1 = v36;
      a2 = v37;
      v11 = v35;
    }

    else
    {
    }

    v40 = v11;
    sub_21B2DFE18(v38, v19, &v40, &v41);

    sub_21B234324(a1, a2);

    v34 = v42;
    *a6 = v41;
    *(a6 + 16) = v34;
  }

LABEL_21:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21B2DFE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_51:
    v10 = v9[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_64:
      v9 = sub_21B23A380(v9);
    }

    v46 = (v9 + 4);
    v47 = -v10;
    v48 = -1;
    v49 = (v9 + 4);
    while (v47 + v48 != -1)
    {
      if (++v48 >= v9[2])
      {
        __break(1u);
        goto LABEL_61;
      }

      v50 = v49 + 40;
      v51 = *(v49 + 24);
      v52 = *(v49 + 32);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v49, v51);
      v53 = v68;
      (*(v52 + 24))(a1, v51, v52);
      v49 = v50;
      v68 = v53;
      if (v53)
      {
      }
    }

    *&v63 = MEMORY[0x277D84F90];
    *(&v63 + 1) = MEMORY[0x277D84F90];
    v64 = sub_21B25DC2C(MEMORY[0x277D84F90]);
    for (i = v9[2]; i; --i)
    {
      sub_21B233A10(v46, &v65);
      v55 = v66;
      v56 = v67;
      __swift_project_boxed_opaque_existential_1(&v65, v66);
      (v56[2])(v62, v55, v56);
      DataFrame.append(column:)(v62);
      sub_21B233960(v62);
      __swift_destroy_boxed_opaque_existential_1Tm(&v65);
      v46 += 40;
    }

    v57 = v64;
    *a4 = v63;
    *(a4 + 16) = v57;
    return result;
  }

  v61 = *a3;
  *&v63 = MEMORY[0x277D84F90];
  sub_21B254368(0, v5, 0);
  v8 = (a2 + 56);
  v9 = v63;
  v58 = a1;
  a1 = *(a1 + 16);
  v60 = a1;
  while (1)
  {
    v11 = *(v8 - 3);
    v10 = *(v8 - 2);
    v12 = *v8;
    if (v12 <= 3)
    {
      break;
    }

    if (*v8 > 5u)
    {
      if (v12 != 6)
      {
        v66 = &type metadata for InferringJSONColumnProcessor;
        v67 = &off_282CAB2A0;
        v28 = swift_allocObject();
        *&v65 = v28;
        swift_bridgeObjectRetain_n();

        sub_21B233050(v6);
        v30 = v29;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7B0, &qword_21B352730);
        *(v28 + 48) = 0;
        *(v28 + 56) = 0xE000000000000000;
        *(v28 + 64) = v30;
        *(v28 + 72) = v31;
        *(v28 + 16) = v61;
        *(v28 + 24) = v61;
        *(v28 + 32) = 0;
        *(v28 + 40) = 1;
        *(v28 + 80) = &off_282CAA128;
        *(v28 + 88) = v11;
        *(v28 + 96) = v10;

        v32 = sub_21B25DFE0(v6);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          v33 = *(v32 + 24);
          sub_21B2AFD1C(*(v32 + 16), 0, v62);
          v34 = *(v32 + 24);
          sub_21B2B0954(*(v32 + 16));
          *(v32 + 16) = *v62;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
          v44 = swift_allocObject();
          swift_beginAccess();
          v45 = *(v32 + 24);
          sub_21B2AEFEC(*(v32 + 16), 0, v62);
          *(v44 + 16) = *v62;

          v32 = v44;
          v6 = MEMORY[0x277D84F90];
        }

        a1 = v60;
        *(v28 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
        *(v28 + 136) = &off_282CAA128;

        *(v28 + 104) = v11;
        *(v28 + 112) = v10;
        *(v28 + 120) = v32;
        goto LABEL_42;
      }

      v66 = &type metadata for ObjectJSONColumnProcessor;
      v67 = &off_282CA9B28;
      v13 = swift_allocObject();
      *&v65 = v13;
      v13[2] = v11;
      v13[3] = v10;
      swift_bridgeObjectRetain_n();
      v15 = sub_21B26117C(v6);
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C0, &qword_21B355BC0);
        v35 = swift_allocObject();
        swift_beginAccess();
        sub_21B2B4360(v62, *(v15 + 16), *(v15 + 24), a1);
        goto LABEL_40;
      }

      swift_beginAccess();
      sub_21B2B4364(v62, *(v15 + 16), *(v15 + 24), a1);
      sub_21B2B0D10(*(v15 + 16), *(v15 + 24));
    }

    else if (v12 == 4)
    {
      v66 = &type metadata for StringJSONColumnProcessor;
      v67 = &off_282CA9AB0;
      v13 = swift_allocObject();
      *&v65 = v13;
      v13[2] = v11;
      v13[3] = v10;
      swift_bridgeObjectRetain_n();
      v15 = sub_21B25DFE0(v6);
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
        v35 = swift_allocObject();
        swift_beginAccess();
        v37 = *(v15 + 24);
        sub_21B2AEFEC(*(v15 + 16), a1, v62);
        goto LABEL_40;
      }

      swift_beginAccess();
      v18 = *(v15 + 24);
      sub_21B2AFD1C(*(v15 + 16), a1, v62);
      v19 = *(v15 + 24);
      sub_21B2B0954(*(v15 + 16));
    }

    else
    {
      v66 = &type metadata for ArrayJSONColumnProcessor;
      v67 = &off_282CA9B00;
      v13 = swift_allocObject();
      *&v65 = v13;
      v13[2] = v11;
      v13[3] = v10;
      swift_bridgeObjectRetain_n();
      v15 = sub_21B260F5C(v6);
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
        v35 = swift_allocObject();
        swift_beginAccess();
        sub_21B2B4360(v62, *(v15 + 16), *(v15 + 24), a1);
        goto LABEL_40;
      }

      swift_beginAccess();
      sub_21B2B4364(v62, *(v15 + 16), *(v15 + 24), a1);
      sub_21B2B0C0C(*(v15 + 16), *(v15 + 24));
    }

    *(v15 + 16) = *v62;
LABEL_29:

LABEL_41:
    v13[4] = v11;
    v13[5] = v10;
    v13[6] = v15;
LABEL_42:
    *&v63 = v9;
    v41 = v9[2];
    v40 = v9[3];
    if (v41 >= v40 >> 1)
    {
      sub_21B254368((v40 > 1), v41 + 1, 1);
      v9 = v63;
    }

    v8 += 32;
    v9[2] = v41 + 1;
    sub_21B234878(&v65, &v9[5 * v41 + 4]);
    if (!--v5)
    {
      a1 = v58;
      goto LABEL_51;
    }
  }

  if (*v8 > 1u)
  {
    if (v12 != 2)
    {
      v66 = &type metadata for DateJSONColumnProcessor;
      v67 = &off_282CA9AD8;
      v24 = swift_allocObject();
      *&v65 = v24;
      *(v24 + 16) = v11;
      *(v24 + 24) = v10;
      *(v24 + 32) = v61;
      *(v24 + 40) = 0;
      *(v24 + 48) = 1;
      swift_bridgeObjectRetain_n();

      v25 = sub_21B260568(v6);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        swift_beginAccess();
        v26 = *(v25 + 24);
        a1 = v60;
        sub_21B2AFF0C(*(v25 + 16), v60, v62);
        v27 = *(v25 + 24);
        sub_21B2B0A2C(*(v25 + 16));
        *(v25 + 16) = *v62;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
        v42 = swift_allocObject();
        swift_beginAccess();
        v43 = *(v25 + 24);
        a1 = v60;
        sub_21B2AF188(*(v25 + 16), v60, v62);
        *(v42 + 16) = *v62;

        v25 = v42;
        v6 = MEMORY[0x277D84F90];
      }

      *(v24 + 56) = v11;
      *(v24 + 64) = v10;
      *(v24 + 72) = v25;
      goto LABEL_42;
    }

    v66 = &type metadata for DoubleJSONColumnProcessor;
    v67 = &off_282CA9A88;
    v13 = swift_allocObject();
    *&v65 = v13;
    v13[2] = v11;
    v13[3] = v10;
    swift_bridgeObjectRetain_n();
    sub_21B25E224(v6);
    v15 = v20;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
      v35 = swift_allocObject();
      swift_beginAccess();
      v38 = *(v15 + 24);
      sub_21B2AEE64(*(v15 + 16), a1, v62);
      goto LABEL_40;
    }

    swift_beginAccess();
    v21 = *(v15 + 24);
    sub_21B235334(*(v15 + 16), a1, v62);
    result = *(v15 + 16);
    if (!result)
    {
      goto LABEL_66;
    }

    if ((*(result + 8) & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_25;
  }

  if (*v8)
  {
    v66 = &type metadata for BooleanJSONColumnProcessor;
    v67 = &off_282CA9A60;
    v13 = swift_allocObject();
    *&v65 = v13;
    v13[2] = v11;
    v13[3] = v10;
    swift_bridgeObjectRetain_n();
    sub_21B260114(v6);
    v15 = v22;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A8, &unk_21B354C90);
      v35 = swift_allocObject();
      swift_beginAccess();
      v39 = *(v15 + 24);
      sub_21B2AF39C(*(v15 + 16), a1, v62);
      goto LABEL_40;
    }

    swift_beginAccess();
    v23 = *(v15 + 24);
    sub_21B2B0190(*(v15 + 16), a1, v62);
    result = *(v15 + 16);
    if (!result)
    {
      goto LABEL_67;
    }

    if ((*(result + 8) & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_25;
  }

  v66 = &type metadata for IntegerJSONColumnProcessor;
  v67 = &off_282CA9A38;
  v13 = swift_allocObject();
  *&v65 = v13;
  v13[2] = v11;
  v13[3] = v10;
  swift_bridgeObjectRetain_n();
  sub_21B234EF8(v6);
  v15 = v14;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
    v35 = swift_allocObject();
    swift_beginAccess();
    v36 = *(v15 + 24);
    sub_21B2AECDC(*(v15 + 16), a1, v62);
LABEL_40:
    *(v35 + 16) = *v62;

    v15 = v35;
    v6 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  swift_beginAccess();
  v16 = *(v15 + 24);
  sub_21B235334(*(v15 + 16), a1, v62);
  result = *(v15 + 16);
  if (result)
  {
    if ((*(result + 8) & 0x8000000000000000) != 0)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_25:
    MEMORY[0x21CEEEA30]();
    *(v15 + 16) = *v62;
    goto LABEL_29;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_21B2E0910(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B33EA48(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21B2E097C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21B2E097C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B34B914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21B34AFE4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21B2E0B44(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21B2E0A74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B2E0A74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_21B34B9F4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B2E0B44(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_21B23A330(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_21B2E1120((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_21B34B9F4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_21B34B9F4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B2356AC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_21B2356AC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_21B2E1120((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21B23A330(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_21B2327F4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_21B34B9F4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_21B2E1120(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_21B34B9F4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_21B34B9F4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

char *sub_21B2E1348(uint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  v12 = MEMORY[0x277D84FA0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;

      sub_21B24028C(v6);
      --v3;
    }

    while (v3);
    v2 = v12;
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = sub_21B26432C(*(v2 + 16), 0);
    v9 = sub_21B26589C(&v11, v8 + 4, v7, v2);

    sub_21B26139C();
    if (v9 == v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_9:
  v11 = v8;
  sub_21B2E0910(&v11);
  if (v1)
  {
    MEMORY[0x21CEEE840](v1);

    __break(1u);
  }

  else
  {

    return v11;
  }

  return result;
}

uint64_t sub_21B2E1470(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_21B2DF5D0(0, *(a1 + 16), a1);
  }

  v4 = *(a2 + 16);
  v5 = sub_21B24A9A4(0, v4, 0, MEMORY[0x277D84F90]);
  if (v4)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v18 = (a1 + 40);
    v19 = a2 + 32;
    do
    {
      if (v7)
      {
        v11 = 0;
        v12 = v18;
        v13 = (v19 + 16 * v6);
        v14 = *v13;
        v15 = v13[1];
        while (1)
        {
          v16 = *(v12 - 1) == v14 && *v12 == v15;
          if (v16 || (sub_21B34B9F4() & 1) != 0)
          {
            break;
          }

          ++v11;
          v12 += 2;
          if (v7 == v11)
          {
            goto LABEL_7;
          }
        }

        v8 = *(v5 + 2);
        v9 = *(v5 + 3);

        if (v8 >= v9 >> 1)
        {
          v5 = sub_21B24A9A4((v9 > 1), v8 + 1, 1, v5);
        }

        *(v5 + 2) = v8 + 1;
        v10 = &v5[32 * v8];
        *(v10 + 4) = v14;
        *(v10 + 5) = v15;
        *(v10 + 6) = v11;
        v10[56] = 7;
      }

LABEL_7:
      ++v6;
    }

    while (v6 != v4);
  }

  return v5;
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_21B2E1618(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_21B34AEB4();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2E1664()
{
  v0 = sub_21B34AEB4();
  v4 = sub_21B2E16E4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21B2E16E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21B34AD84();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_21B34B4B4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_21B2E183C(v9, 0);
  v12 = sub_21B2E18B0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_21B34AD84();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_21B34B6F4();
LABEL_4:

  return sub_21B34AD84();
}

void *sub_21B2E183C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3F8, &qword_21B351CF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_21B2E18B0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21B2E1AD0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21B34AE54();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21B34B6F4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21B2E1AD0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21B34AE24();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21B2E1AD0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21B34AE64();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CEED610](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_21B2E1B4C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_21B34ADC4();
    v13[0] = sub_21B34AE94();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

unsigned __int8 *sub_21B2E1C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_21B2E34B8();

  result = sub_21B34AEA4();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_21B2E1664();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21B34B6F4();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21B2E21E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_21B34B6F4();
  }

  result = sub_21B2E230C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_21B2E22B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B34B9F4() & 1;
  }
}

uint64_t sub_21B2E230C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_21B2E1AD0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_21B34AE44();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_21B2E1AD0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_21B2E1AD0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_21B34AE44();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_21B2E2778(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_21B34B924() & 1;
  }
}

uint64_t sub_21B2E27F0(uint64_t a1, unint64_t a2)
{
  v34 = 46;
  v35 = 0xE100000000000000;
  v33 = &v34;
  v4 = sub_21B2E1B4C(sub_21B2E349C, v32, a1, a2);
  if (v5)
  {
    return 0;
  }

  v6 = v4;
  v34 = 58;
  v35 = 0xE100000000000000;
  MEMORY[0x28223BE20](v4);
  v31[2] = &v34;
  v7 = sub_21B2E1B4C(sub_21B2E352C, v31, a1, a2);
  if (v8)
  {
    return 0;
  }

  v9 = v7 >> 14;
  if (v7 >> 14 < v6 >> 14)
  {
    __break(1u);
LABEL_15:

    return 0;
  }

  v10 = sub_21B34AEB4();
  v14 = sub_21B2E2778(v10, v11, v12, v13, 0x786469732ELL, 0xE500000000000000);

  if ((v14 & 1) == 0 || v9 >= sub_21B34ADC4() >> 14)
  {
    return 0;
  }

  v15 = sub_21B34ADB4();
  v16 = sub_21B2E1618(v15, a1, a2);
  v20 = v19;
  if (!((v16 ^ v17) >> 14))
  {
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v17;
  v23 = v18;
  sub_21B2E21E8(v16, v17, v18, v19, 10);
  if ((v24 & 0x100) != 0)
  {
    sub_21B2E1C50(v21, v22, v23, v20, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
LABEL_13:
      v29 = sub_21B34AEB4();
      v30 = MEMORY[0x21CEED540](v29);

      return v30;
    }
  }

  else
  {
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  return 0;
}

char *sub_21B2E2A48(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v5 = sub_21B30FB6C(a1, a2);
  if (v2)
  {
    MEMORY[0x21CEEE850](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
    if (swift_dynamicCast())
    {
      MEMORY[0x21CEEE840](v2);
      sub_21B239564();
      swift_allocError();
      *v6 = 0xD00000000000001ALL;
      *(v6 + 8) = 0x800000021B34D2B0;
      *(v6 + 16) = 0;
      swift_willThrow();
    }

    sub_21B234324(a1, v3);
    MEMORY[0x21CEEE840](v2);
    return v3;
  }

  v81 = v5;
  v83 = *(v5 + 16);
  v7 = (v5 + 48);
  v8 = v83 + 1;
  do
  {
    if (!--v8)
    {

      sub_21B239564();
      swift_allocError();
      *v27 = 0xD00000000000002DLL;
      *(v27 + 8) = 0x800000021B34D4A0;
      *(v27 + 16) = 0;
      swift_willThrow();
      v28 = a1;
LABEL_32:
      v30 = v3;
LABEL_41:
      sub_21B234324(v28, v30);
      return v3;
    }

    v9 = *v7;
    if (*(v7 - 2) == 0x656D61726673 && *(v7 - 1) == 0xE600000000000000)
    {
      break;
    }

    v7 += 3;
  }

  while ((sub_21B34B9F4() & 1) == 0);
  v11 = (v81 + 48);
  v12 = v83 + 1;
  do
  {
    if (!--v12)
    {

      sub_21B239564();
      swift_allocError();
      *v29 = 0xD000000000000033;
      *(v29 + 8) = 0x800000021B34D460;
      *(v29 + 16) = 0;
      swift_willThrow();
      v28 = a1;
      goto LABEL_32;
    }

    v13 = *v11;
    if (*(v11 - 2) == 0x6E5F6E6D756C6F63 && *(v11 - 1) == 0xEC00000073656D61)
    {
      break;
    }

    v11 += 3;
  }

  while ((sub_21B34B9F4() & 1) == 0);
  v80 = v3;
  v15 = (v81 + 48);
  v3 = v83 + 1;
  do
  {
    if (!--v3)
    {

      v24 = 0x800000021B34D420;
      sub_21B239564();
      swift_allocError();
      v26 = 0xD000000000000033;
LABEL_39:
      *v25 = v26;
      *(v25 + 8) = v24;
      *(v25 + 16) = 0;
LABEL_40:
      swift_willThrow();
      v30 = v80;
      v28 = a1;
      goto LABEL_41;
    }

    v84 = *v15;
    if (*(v15 - 2) == 0x665F6E6D756C6F63 && *(v15 - 1) == 0xEC00000073656C69)
    {
      break;
    }

    v15 += 3;
  }

  while ((sub_21B34B9F4() & 1) == 0);

  if (!*(v9 + 16) || (v17 = sub_21B24B534(0x756C6F635F6D756ELL, 0xEB00000000736E6DLL), (v18 & 1) == 0) || (v19 = (*(v9 + 56) + 16 * v17), v20 = *v19, v21 = v19[1], , v22 = sub_21B33F63C(v20, v21), (v23 & 1) != 0))
  {

    v24 = 0x800000021B34D2D0;
    sub_21B239564();
    swift_allocError();
    v26 = 0xD00000000000002ELL;
    goto LABEL_39;
  }

  if (!*(v9 + 16) || (v31 = v22, v32 = sub_21B24B534(0x73776F726ELL, 0xE500000000000000), (v33 & 1) == 0) || (v34 = (*(v9 + 56) + 16 * v32), v35 = *v34, v36 = v34[1], , v37 = sub_21B33F63C(v35, v36), (v38 & 1) != 0))
  {

    v39 = "SFrame index is missing the number of rows.";
    goto LABEL_38;
  }

  if (!*(v9 + 16) || (v3 = v37, v41 = sub_21B24B534(0x6E6F6973726576, 0xE700000000000000), (v42 & 1) == 0))
  {

    v39 = "SFrame index is missing the version number.";
LABEL_38:
    v24 = (v39 - 32) | 0x8000000000000000;
    sub_21B239564();
    swift_allocError();
    v26 = 0xD00000000000002BLL;
    goto LABEL_39;
  }

  v76 = v31;
  v43 = (*(v9 + 56) + 16 * v41);
  v44 = *v43;
  v45 = v43[1];

  if ((v44 != 48 || v45 != 0xE100000000000000) && (sub_21B34B9F4() & 1) == 0)
  {

    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000021, 0x800000021B34D360);
    MEMORY[0x21CEED5E0](v44, v45);

    MEMORY[0x21CEED5E0](0xD000000000000010, 0x800000021B34D390);
    sub_21B239564();
    swift_allocError();
    *v70 = 0;
    *(v70 + 8) = 0xE000000000000000;
    *(v70 + 16) = 1;
    goto LABEL_40;
  }

  result = sub_21B24AC38(0, v31 & ~(v31 >> 63), 0, MEMORY[0x277D84F90]);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v82 = result;
    if (v31)
    {
      v46 = 0;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EFF8, &qword_21B355C08);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_21B351EA0;
        *(v47 + 56) = MEMORY[0x277D83B88];
        *(v47 + 64) = MEMORY[0x277D83C10];
        *(v47 + 32) = v46;
        v48 = sub_21B34ACC4();
        v50 = v48;
        v51 = v49;
        if (!*(v13 + 16))
        {
          break;
        }

        v52 = sub_21B24B534(v48, v49);
        if ((v53 & 1) == 0)
        {
          break;
        }

        if (!*(v84 + 16))
        {
          v71 = v50;

LABEL_66:
          v72 = v80;

          sub_21B34B634();

          MEMORY[0x21CEED5E0](v71, v51);

          MEMORY[0x21CEED5E0](39, 0xE100000000000000);
          v73 = 0xD000000000000019;
          v74 = 0x800000021B34D3D0;
          goto LABEL_69;
        }

        v54 = (*(v13 + 56) + 16 * v52);
        v78 = *v54;
        v79 = v54[1];

        v55 = sub_21B24B534(v50, v51);
        if ((v56 & 1) == 0)
        {
          v71 = v50;

          goto LABEL_66;
        }

        v57 = v55;

        v58 = (*(v84 + 56) + 16 * v57);
        v60 = *v58;
        v59 = v58[1];

        v61 = sub_21B2E27F0(v60, v59);
        v77 = v63;
        if (!v62)
        {

          sub_21B34B634();

          v85 = 0xD000000000000021;
          v86 = 0x800000021B34D3F0;
          MEMORY[0x21CEED5E0](v60, v59);
          goto LABEL_68;
        }

        v64 = v61;
        v65 = v62;

        v66 = v82;
        v68 = *(v82 + 2);
        v67 = *(v82 + 3);
        if (v68 >= v67 >> 1)
        {
          v66 = sub_21B24AC38((v67 > 1), v68 + 1, 1, v82);
        }

        ++v46;
        *(v66 + 2) = v68 + 1;
        v82 = v66;
        v69 = &v66[40 * v68];
        *(v69 + 4) = v78;
        *(v69 + 5) = v79;
        *(v69 + 6) = v64;
        *(v69 + 7) = v65;
        *(v69 + 8) = v77;
        if (v76 == v46)
        {
          goto LABEL_61;
        }
      }

      sub_21B34B634();

      v85 = 0xD000000000000019;
      v86 = 0x800000021B34D3B0;
      MEMORY[0x21CEED5E0](v50, v51);
LABEL_68:

      MEMORY[0x21CEED5E0](39, 0xE100000000000000);
      v73 = v85;
      v74 = v86;
      v72 = v80;
LABEL_69:
      sub_21B239564();
      swift_allocError();
      *v75 = v73;
      *(v75 + 8) = v74;
      *(v75 + 16) = 0;
      swift_willThrow();
      sub_21B234324(a1, v72);
    }

    else
    {
LABEL_61:

      sub_21B234324(a1, v80);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_21B2E34B8()
{
  result = qword_27CD7F000[0];
  if (!qword_27CD7F000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD7F000);
  }

  return result;
}

uint64_t sub_21B2E3550(void *a1)
{
  v1 = a1[2];
  v3 = a1[4];
  v2 = a1[5];
  result = type metadata accessor for HashJoin.JoinItem();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for HashJoin.JoinItem();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B2E3614(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v8 + 80) & 0xF8 | 7;
  v13 = ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 16;
  v14 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_23;
  }

  v15 = ((((((*(*(v7 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v13 & ~v12) + 17;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = (v14 + ~(-1 << v16)) >> v16;
    if (v19 > 0xFFFE)
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFE)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (!v19)
    {
LABEL_23:
      if (v9 > v6)
      {
        return (*(v8 + 48))(&a1[v13] & ~v12, v9, v7);
      }

      if (v5 >= 0x7FFFFFFF)
      {
        return (*(v4 + 48))();
      }

      v22 = *((&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_23;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v11 + (v21 | v20) + 1;
}

double sub_21B2E3820(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  if (v7 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v8 - 8);
  v12 = *(v9 + 84);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (v12 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v12;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = v14 & 0xF8 | 7;
  v20 = v18 + v19;
  v21 = ((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v22 = (((v18 + v19) & ~v19) + v21) | 1;
  v23 = a3 >= v17;
  v24 = a3 - v17;
  if (v24 != 0 && v23)
  {
    if (v22 <= 3)
    {
      v29 = (v24 + ~(-1 << (8 * v22))) >> (8 * v22);
      if (v29 > 0xFFFE)
      {
        v25 = 4;
      }

      else
      {
        if (v29 < 0xFF)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29)
        {
          v25 = v30;
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  if (v17 >= a2)
  {
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        *&a1[v22] = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if (v12 <= v10)
        {
          if (v10 >= a2)
          {
            if (v7 < 0x7FFFFFFF)
            {
              v37 = &a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8;
              if ((a2 & 0x80000000) != 0)
              {
                result = 0.0;
                *(v37 + 8) = 0u;
                *(v37 + 24) = 0u;
                *v37 = a2 & 0x7FFFFFFF;
              }

              else
              {
                *(v37 + 24) = a2 - 1;
              }
            }

            else
            {
              v36 = *(v6 + 56);

              v36(a1);
            }

            return result;
          }

          if (((((((v13 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
          {
            return result;
          }

          v32 = ~v10 + a2;
          v31 = a1;
          v33 = ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v31 = (&a1[v20] & ~v19);
          if (v16 >= a2)
          {
            v35 = *(v11 + 56);

            v35(v31);
            return result;
          }

          if (!v21)
          {
            return result;
          }

          v32 = ~v16 + a2;
          a1 = (&a1[v20] & ~v19);
          v33 = v21;
        }

        bzero(v31, v33);
        *a1 = v32;
        return result;
      }

      *&a1[v22] = 0;
    }

    else if (v25)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  v26 = ~v17 + a2;
  if (v22 < 4)
  {
    v28 = (v26 >> (8 * v22)) + 1;
    bzero(a1, v22);
    if (v22 == 1)
    {
      *a1 = v26;
      if (v25 <= 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v34 = v26 & ~(-1 << (8 * v22));
      *a1 = v34;
      a1[2] = BYTE2(v34);
      if (v25 <= 1)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    bzero(a1, v22);
    *a1 = v26;
    v28 = 1;
    if (v25 <= 1)
    {
LABEL_46:
      if (v25)
      {
        a1[v22] = v28;
      }

      return result;
    }
  }

  if (v25 == 2)
  {
    *&a1[v22] = v28;
  }

  else
  {
    *&a1[v22] = v28;
  }

  return result;
}

unint64_t sub_21B2E3BD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_21B2E3FA4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B2E3C78(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
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

double sub_21B2E3DC4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 32) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
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
        v20 = &a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v20 + 8) = 0u;
          *(v20 + 24) = 0u;
          *v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 24) = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

unint64_t sub_21B2E3FA4()
{
  result = qword_27CD7F108;
  if (!qword_27CD7F108)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CD7F108);
  }

  return result;
}

uint64_t sub_21B2E4008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  v34 = a5;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v32 = a7;
  v33 = a6;
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v12);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v20;
  v22 = v20[1];
  v24 = *v23;
  v29 = v23[1];
  v30 = v21;
  v26 = *v25;
  (*(v16 + 16))(v19);
  (*(v10 + 16))(v14, a2, a4);
  v35 = v26;
  sub_21B2E4200(v19, v14, v30, v22, v24, v29, a3, v34, a4, v33, v32);
  (*(v10 + 8))(a2, a4);
  return (*(v16 + 8))(v31, a3);
}

uint64_t sub_21B2E4200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v49 = a5;
  v55 = a2;
  v47 = a8;
  v51 = *(a9 - 8);
  v15 = *(v51 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v50 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *v24;
  v25 = *(a10 + 24);
  v54 = v21;
  v25(&v56, v26, a10);
  v61 = v56;
  v62 = v57;
  v27._countAndFlagsBits = a3;
  v52 = a4;
  v27._object = a4;
  v63 = DataFrame.indexOfColumn(_:)(v27);
  value = v63.value;
  is_nil = v63.is_nil;

  if (is_nil)
  {
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000011, 0x800000021B34D4F0);
    MEMORY[0x21CEED5E0](a3, v52);
    MEMORY[0x21CEED5E0](0xD000000000000027, 0x800000021B34D510);
  }

  else
  {
    (*(a11 + 24))(&v56, a9, a11);
    v61 = v56;
    v62 = v57;
    v29._countAndFlagsBits = v49;
    v53 = a6;
    v29._object = a6;
    v64 = DataFrame.indexOfColumn(_:)(v29);
    v45 = v64.value;
    v30 = v64.is_nil;

    if (v30)
    {
      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000011, 0x800000021B34D4F0);
      MEMORY[0x21CEED5E0](v49, v53);
      MEMORY[0x21CEED5E0](0xD000000000000028, 0x800000021B34D540);
    }

    else
    {
      (*(v19 + 16))(v23, v54, a7);
      v31 = v47;
      sub_21B2E4750(v23, value, 1952867692, 0xE400000000000000, a7, v47, a11, a10);
      v32 = v50;
      v33 = v51;
      (*(v51 + 16))(v50, v55, a9);
      *&v56 = a7;
      *(&v56 + 1) = a9;
      v57 = a10;
      v58 = a11;
      v34 = type metadata accessor for HashJoin();
      v35 = v31 + *(v34 + 52);
      sub_21B2E4750(v32, v45, 0x7468676972, 0xE500000000000000, a9, v35, a11, a11);
      *(v31 + *(v34 + 56)) = v48;
      *&v56 = a7;
      *(&v56 + 1) = a9;
      v57 = a7;
      v58 = a10;
      v59 = a11;
      v60 = a10;
      v36 = (v31 + *(type metadata accessor for HashJoin.JoinItem() + 68));
      v37 = v36[3];
      v38 = v36[4];
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v39 = (*(v38 + 40))(v37, v38);
      *&v56 = a7;
      *(&v56 + 1) = a9;
      v57 = a9;
      v58 = a10;
      v59 = a11;
      v60 = a11;
      v40 = (v35 + *(type metadata accessor for HashJoin.JoinItem() + 68));
      v41 = v40[3];
      v42 = v40[4];
      __swift_project_boxed_opaque_existential_1(v40, v41);
      if (v39 == (*(v42 + 40))(v41, v42))
      {

        (*(v33 + 8))(v55, a9);
        return (*(v19 + 8))(v54, a7);
      }
    }
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2E4750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v12 = *(a5 - 8);
  (*(v12 + 16))(a6, a1, a5);
  v13 = type metadata accessor for HashJoin.JoinItem();
  *(a6 + v13[18]) = a2;
  (*(a8 + 56))(a5, a8);
  v14 = (a6 + v13[17]);
  v14[3] = swift_getAssociatedTypeWitness();
  v14[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v14);
  sub_21B34B094();

  result = (*(v12 + 8))(a1, a5);
  v16 = (a6 + v13[19]);
  *v16 = a3;
  v16[1] = a4;
  return result;
}

void sub_21B2E4900(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(v2 + *(a1 + 56)) > 1u)
  {
    if (*(v2 + *(a1 + 56)) == 2)
    {
      v14 = sub_21B2E594C;
      v15 = sub_21B2E5FBC;
    }

    else
    {
      v14 = sub_21B2E64AC;
      v15 = sub_21B2E70D8;
    }

    v16 = v15;
    goto LABEL_12;
  }

  if (!*(v2 + *(a1 + 56)))
  {
    v17 = a2;
    v3 = a1;
    (*(*(a1 + 32) + 32))(&v22, *(a1 + 16));
    v4 = v23;
    v5 = v24;
    v6 = v25;
    v7 = sub_21B2FB1D4(v23, v24, v25);

    sub_21B23A9F4(v4, v5, v6);
    v8 = v3;
    v9 = v2 + *(v3 + 52);
    (*(*(v3 + 40) + 32))(&v18, *(v3 + 24));
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = sub_21B2FB1D4(v19, v20, v21);

    sub_21B23A9F4(v10, v11, v12);
    if (v13 < v7)
    {
      a2 = v17;
      a1 = v8;
      goto LABEL_5;
    }

    v14 = sub_21B2E594C;
    v16 = sub_21B2E5FBC;
    a1 = v8;
LABEL_12:
    sub_21B2E4C88(a1, v14, v16);
    return;
  }

LABEL_5:

  sub_21B2E4B20(a1, a2);
}

void sub_21B2E4B20(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2 + *(a1 + 52);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  v6 = (v5 + *(type metadata accessor for HashJoin.JoinItem() + 68));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 40))(v7, v8);
  if (swift_dynamicCastMetatype())
  {
    v9 = MEMORY[0x277D83B88];
    v10 = MEMORY[0x277D83B98];
  }

  else if (swift_dynamicCastMetatype())
  {
    v9 = MEMORY[0x277D837D0];
    v10 = MEMORY[0x277D837E0];
  }

  else if (swift_dynamicCastMetatype())
  {
    v9 = MEMORY[0x277D839F8];
    v10 = MEMORY[0x277D83A18];
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      sub_21B2E5460(a1, a2);
      return;
    }

    v9 = MEMORY[0x277D839B0];
    v10 = MEMORY[0x277D839C0];
  }

  sub_21B2E4DF8(a1, v9, v10, a2);
}

uint64_t sub_21B2E4C88(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a3)(uint64_t))
{
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v7 = (v3 + *(type metadata accessor for HashJoin.JoinItem() + 68));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 40))(v8, v9);
  if (swift_dynamicCastMetatype())
  {
    v10 = MEMORY[0x277D83B88];
    v11 = MEMORY[0x277D83B98];
  }

  else if (swift_dynamicCastMetatype())
  {
    v10 = MEMORY[0x277D837D0];
    v11 = MEMORY[0x277D837E0];
  }

  else if (swift_dynamicCastMetatype())
  {
    v10 = MEMORY[0x277D839F8];
    v11 = MEMORY[0x277D83A18];
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      return a3(a1);
    }

    v10 = MEMORY[0x277D839B0];
    v11 = MEMORY[0x277D839C0];
  }

  return a2(v10, a1, v10, v11);
}

double sub_21B2E4DF8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v68 = a3;
  v61 = a4;
  v65 = sub_21B34B474();
  v62 = *(v65 - 8);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x28223BE20](v65);
  v67 = &v60 - v9;
  v63 = *(a2 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v8);
  v73 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 52);
  v13 = *(a1 + 40);
  v14 = *(v13 + 32);
  v69 = a1;
  v70 = v4;
  v15 = *(a1 + 24);
  v77 = v12;
  v78 = v15;
  v14(&v92);
  v76 = v92;
  v17 = v93;
  v16 = v94;
  v18 = v95;
  v19 = v96;
  v20 = v94;
  if (v96)
  {
    if (v96 == 1 && *(v94 + 16))
    {
      v20 = *(v94 + 32);
    }

    else
    {
      sub_21B2A6400(v94, v95, v96);
      if (v22)
      {
        v20 = 0;
      }

      else
      {
        v20 = v21;
      }
    }
  }

  sub_21B2A6400(v16, v18, v19);
  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v87 = v76;
  *&v88 = v17;
  *(&v88 + 1) = v16;
  *&v89 = v18;
  BYTE8(v89) = v19;
  *&v90 = v20;
  *(&v90 + 1) = v25;
  v26 = v69[2];
  v27 = v69;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v29 = v27[4];
  v30 = sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10);
  v31 = v70;
  v32 = v78;
  v66 = sub_21B2E8990(v70 + v77, v33, &v87, v26, v78, v78, a2, v28, v29, v13, v13, v68, v30);
  v91[0] = v87;
  v91[1] = v88;
  v91[2] = v89;
  v91[3] = v90;
  sub_21B261664(v91, &qword_27CD7E510, &unk_21B351F10);
  (*(v29 + 24))(&v79, v26, v29);
  v34 = v79;
  v35 = v80;
  v36 = v81;
  *&v87 = v26;
  *(&v87 + 1) = v32;
  *&v88 = v26;
  *(&v88 + 1) = v29;
  *&v76 = v26;
  *&v89 = v13;
  *(&v89 + 1) = v29;
  v37 = *(v31 + *(type metadata accessor for HashJoin.JoinItem() + 72));
  *&v87 = v34;
  *(&v87 + 1) = v35;
  *&v88 = v36;
  DataFrame.subscript.getter(v37);

  v72 = v85;
  v77 = v86;
  v78 = *(&v85 + 1);
  v75 = *(v29 + 32);
  v75(&v87, v26, v29);
  v38 = *(&v88 + 1);
  v39 = v89;
  LOBYTE(v26) = BYTE8(v89);
  v74 = sub_21B2FB1D4(*(&v88 + 1), v89, SBYTE8(v89));

  sub_21B23A9F4(v38, v39, v26);
  sub_21B2E7A64(v74, v69, &v85);
  v75(&v87, v76, v29);
  v75 = *(&v87 + 1);
  *&v76 = v87;
  v40 = *(&v88 + 1);
  v74 = v88;
  v41 = v89;
  v42 = BYTE8(v89);
  v43 = *(&v88 + 1);
  v44 = v67;
  if (BYTE8(v89))
  {
    if (BYTE8(v89) == 1 && *(*(&v88 + 1) + 16))
    {
      v43 = *(*(&v88 + 1) + 32);
    }

    else
    {
      sub_21B2A6400(*(&v88 + 1), v89, BYTE8(v89));
      if (v46)
      {
        v43 = 0;
      }

      else
      {
        v43 = v45;
      }
    }
  }

  sub_21B2A6400(v40, v41, v42);
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  v71 = v49;
  if (v43 != v49)
  {
    v53 = v63;
    v54 = (v63 + 48);
    v63 += 8;
    v64 = (v53 + 32);
    v62 += 8;
    do
    {
      v79 = v76;
      v80 = v75;
      v81 = v74;
      v82 = v40;
      v56 = v41;
      v83 = v41;
      v57 = v42;
      v84 = v42;
      v58 = DataFrame.Rows.index(after:)(v43);
      v79 = v72;
      v80 = v78;
      v81 = v77;
      v59 = type metadata accessor for Column();
      Column.subscript.getter(v43, v59, v44);
      if ((*v54)(v44, 1, a2) == 1)
      {
        (*v62)(v44, v65);
      }

      else
      {
        (*v64)(v73, v44, a2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
        sub_21B34AA14();
        if (v79)
        {
          sub_21B2E811C(v43, v79, &v85, v69);
        }

        else if ((*(v70 + *(v69 + 14)) | 2) == 3)
        {
          sub_21B2E8194(v43, &v85, v69);
        }

        (*v63)(v73, a2);
        v44 = v67;
      }

      v43 = v58;
      v55 = v58 == v71;
      v42 = v57;
      v41 = v56;
    }

    while (!v55);
  }

  sub_21B23A9F4(v40, v41, v42);
  v50 = v86;
  result = *&v85;
  v52 = v61;
  *v61 = v85;
  *(v52 + 2) = v50;
  return result;
}

uint64_t sub_21B2E5460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 52);
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  (*(v3 + 32))(&v76, v4, v3);
  v48 = v76;
  v6 = v77;
  v5 = v78;
  v7 = v79;
  v8 = v80;
  v9 = v78;
  if (v80)
  {
    if (v80 == 1 && *(v78 + 16))
    {
      v9 = *(v78 + 32);
    }

    else
    {
      sub_21B2A6400(v78, v79, v80);
      if (v11)
      {
        v9 = 0;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  sub_21B2A6400(v5, v7, v8);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v69 = v48;
  v70 = v6;
  v71 = v5;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v75 = v14;
  v15 = *(a1 + 16);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v17 = *(a1 + 32);
  sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10);
  v43 = sub_21B2E9AE4(v45 + v2, v15, v4, v4, v16, v17, v3, v3);
  sub_21B261664(&v69, &qword_27CD7E510, &unk_21B351F10);
  (*(v17 + 24))(&v54, v15, v17);
  v18 = v54;
  v60 = v15;
  v61 = v4;
  v62 = v15;
  v63 = v17;
  v64 = v3;
  v65 = v17;
  result = type metadata accessor for HashJoin.JoinItem();
  v20 = *(v45 + *(result + 72));
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v20 < *(v18 + 16))
  {
    sub_21B233A74(v18 + 40 * v20 + 32, v66);

    v46 = v15;
    v49 = *(v17 + 32);
    v49(&v60, v15, v17);
    v21 = v63;
    v22 = v64;
    v23 = v65;
    v24 = sub_21B2FB1D4(v63, v64, v65);

    sub_21B23A9F4(v21, v22, v23);
    sub_21B2E7A64(v24, a1, &v58);
    v49(&v60, v46, v17);
    v47 = v61;
    v50 = v60;
    v25 = v62;
    v26 = v63;
    v27 = v64;
    v28 = v65;
    v29 = v63;
    if (v65)
    {
      if (v65 == 1 && *(v63 + 16))
      {
        v29 = *(v63 + 32);
      }

      else
      {
        sub_21B2A6400(v63, v64, v65);
        if (v31)
        {
          v29 = 0;
        }

        else
        {
          v29 = v30;
        }
      }
    }

    sub_21B2A6400(v26, v27, v28);
    if (v33)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32;
    }

    if (v29 == v34)
    {
LABEL_24:

      sub_21B23A9F4(v26, v27, v28);
      result = sub_21B233960(v66);
      v35 = v59;
      *a2 = v58;
      *(a2 + 16) = v35;
      return result;
    }

    while (1)
    {
      *&v54 = v50;
      *(&v54 + 1) = v47;
      *&v55 = v25;
      *(&v55 + 1) = v26;
      v56 = v27;
      v57 = v28;
      v36 = DataFrame.Rows.index(after:)(v29);
      v37 = v67;
      v38 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      (*(*(v38 + 8) + 128))(&v54, v29, v37);
      if (*(&v55 + 1))
      {
        if (swift_dynamicCast())
        {
          if (*(&v52 + 1))
          {
            v54 = v51;
            v55 = v52;
            v56 = v53;
            if (*(v43 + 16) && (v39 = sub_21B24B560(&v54), (v40 & 1) != 0))
            {
              v41 = *(*(v43 + 56) + 8 * v39);

              sub_21B2E811C(v29, v41, &v58, a1);
            }

            else if ((*(v45 + *(a1 + 56)) | 2) == 3)
            {
              sub_21B2E8194(v29, &v58, a1);
            }

            sub_21B260E14(&v54);
            goto LABEL_27;
          }
        }

        else
        {
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
        }
      }

      else
      {
        sub_21B261664(&v54, &qword_27CD7E0F8, &unk_21B3557C0);
        v51 = 0u;
        v52 = 0u;
        v53 = 0;
      }

      sub_21B261664(&v51, &qword_27CD7E200, &unk_21B352050);
LABEL_27:
      v29 = v36;
      if (v36 == v34)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
  return result;
}

double sub_21B2E594C@<D0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v66 = a3;
  v59 = a4;
  v63 = sub_21B34B474();
  v60 = *(v63 - 8);
  v7 = *(v60 + 64);
  v8 = MEMORY[0x28223BE20](v63);
  v10 = &v59 - v9;
  v61 = *(a2 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  v14 = *(v13 + 32);
  v67 = a1;
  v68 = v4;
  v76 = a1[2];
  v14(&v90);
  v75 = v90;
  v16 = v91;
  v15 = v92;
  v17 = v93;
  v18 = v94;
  v19 = v92;
  if (v94)
  {
    if (v94 == 1 && *(v92 + 16))
    {
      v19 = *(v92 + 32);
    }

    else
    {
      sub_21B2A6400(v92, v93, v94);
      if (v21)
      {
        v19 = 0;
      }

      else
      {
        v19 = v20;
      }
    }
  }

  v65 = v10;
  sub_21B2A6400(v15, v17, v18);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v85 = v75;
  *&v86 = v16;
  *(&v86 + 1) = v15;
  *&v87 = v17;
  BYTE8(v87) = v18;
  *&v88 = v19;
  *(&v88 + 1) = v24;
  v25 = v67[3];
  v26 = v67;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v28 = v26[5];
  v29 = sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10);
  v30 = v68;
  v31 = v76;
  v64 = sub_21B2E8990(v68, v32, &v85, v76, v25, v76, a2, v27, v13, v28, v13, v66, v29);
  v89[0] = v85;
  v89[1] = v86;
  v89[2] = v87;
  v89[3] = v88;
  sub_21B261664(v89, &qword_27CD7E510, &unk_21B351F10);
  v74 = v30 + *(v26 + 13);
  (*(v28 + 24))(&v77, v25, v28);
  v34 = v77;
  v33 = v78;
  v35 = v79;
  *&v85 = v31;
  *(&v85 + 1) = v25;
  *&v86 = v25;
  *(&v86 + 1) = v13;
  v73 = v25;
  *&v87 = v28;
  *(&v87 + 1) = v28;
  v36 = *(v74 + *(type metadata accessor for HashJoin.JoinItem() + 72));
  *&v85 = v34;
  *(&v85 + 1) = v33;
  *&v86 = v35;
  DataFrame.subscript.getter(v36);

  v76 = *(&v83 + 1);
  v70 = v83;
  *&v75 = v84;
  v72 = *(v28 + 32);
  v72(&v85, v25, v28);
  v37 = *(&v86 + 1);
  v38 = v87;
  LOBYTE(v31) = BYTE8(v87);
  v69 = sub_21B2FB1D4(*(&v86 + 1), v87, SBYTE8(v87));

  sub_21B23A9F4(v37, v38, v31);
  sub_21B2E7A64(v69, v67, &v83);
  v72(&v85, v73, v28);
  v73 = *(&v85 + 1);
  v74 = v85;
  v39 = *(&v86 + 1);
  v72 = v86;
  v40 = v87;
  v41 = BYTE8(v87);
  v42 = *(&v86 + 1);
  if (BYTE8(v87))
  {
    if (BYTE8(v87) == 1 && *(*(&v86 + 1) + 16))
    {
      v42 = *(*(&v86 + 1) + 32);
    }

    else
    {
      sub_21B2A6400(*(&v86 + 1), v87, BYTE8(v87));
      if (v44)
      {
        v42 = 0;
      }

      else
      {
        v42 = v43;
      }
    }
  }

  sub_21B2A6400(v39, v40, v41);
  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  v69 = v47;
  v48 = v65;
  if (v42 != v47)
  {
    v52 = v61;
    v53 = (v61 + 48);
    v61 += 8;
    v62 = (v52 + 32);
    v60 += 8;
    do
    {
      v77 = v74;
      v78 = v73;
      v79 = v72;
      v80 = v39;
      v55 = v40;
      v81 = v40;
      v56 = v41;
      v82 = v41;
      v57 = DataFrame.Rows.index(after:)(v42);
      v77 = v70;
      v78 = v76;
      v79 = v75;
      v58 = type metadata accessor for Column();
      Column.subscript.getter(v42, v58, v48);
      if ((*v53)(v48, 1, a2) == 1)
      {
        (*v60)(v48, v63);
      }

      else
      {
        (*v62)(v71, v48, a2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
        sub_21B34AA14();
        if (v77)
        {
          sub_21B2E8474(v77, v42, &v83, v67);
        }

        else if ((*(v68 + *(v67 + 14)) & 0xFE) == 2)
        {
          sub_21B2E84E0(v42, &v83, v67);
        }

        (*v61)(v71, a2);
        v48 = v65;
      }

      v42 = v57;
      v54 = v57 == v69;
      v41 = v56;
      v40 = v55;
    }

    while (!v54);
  }

  sub_21B23A9F4(v39, v40, v41);
  v49 = v84;
  result = *&v83;
  v51 = v59;
  *v59 = v83;
  *(v51 + 2) = v49;
  return result;
}

uint64_t sub_21B2E5FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  (*(v3 + 32))(&v78, v4, v3);
  v50 = v78;
  v6 = v79;
  v5 = v80;
  v7 = v81;
  v8 = v82;
  v9 = v80;
  if (v82)
  {
    if (v82 == 1 && *(v80 + 16))
    {
      v9 = *(v80 + 32);
    }

    else
    {
      sub_21B2A6400(v80, v81, v82);
      if (v11)
      {
        v9 = 0;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  sub_21B2A6400(v5, v7, v8);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v71 = v50;
  v72 = v6;
  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v77 = v14;
  v15 = *(a1 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v17 = *(a1 + 40);
  sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10);
  v45 = sub_21B2E9AE4(v47, v4, v15, v4, v16, v3, v17, v3);
  sub_21B261664(&v71, &qword_27CD7E510, &unk_21B351F10);
  v18 = v47 + *(a1 + 52);
  (*(v17 + 24))(&v56, v15, v17);
  v19 = v56;
  v62 = v4;
  v63 = v15;
  v64 = v15;
  v65 = v3;
  v66 = v17;
  v67 = v17;
  result = type metadata accessor for HashJoin.JoinItem();
  v21 = *(v18 + *(result + 72));
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *(v19 + 16))
  {
    v44 = a2;
    sub_21B233A74(v19 + 40 * v21 + 32, v68);

    v51 = *(v17 + 32);
    v51(&v62, v15, v17);
    v22 = v65;
    v23 = v66;
    v24 = v67;
    v48 = v15;
    v25 = sub_21B2FB1D4(v65, v66, v67);

    sub_21B23A9F4(v22, v23, v24);
    sub_21B2E7A64(v25, a1, &v60);
    v51(&v62, v48, v17);
    v49 = v63;
    v52 = v62;
    v26 = v64;
    v27 = v65;
    v28 = v66;
    v29 = v67;
    v30 = v65;
    if (v67)
    {
      if (v67 == 1 && *(v65 + 16))
      {
        v30 = *(v65 + 32);
      }

      else
      {
        sub_21B2A6400(v65, v66, v67);
        if (v32)
        {
          v30 = 0;
        }

        else
        {
          v30 = v31;
        }
      }
    }

    sub_21B2A6400(v27, v28, v29);
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v33;
    }

    if (v30 == v35)
    {
LABEL_24:

      sub_21B23A9F4(v27, v28, v29);
      result = sub_21B233960(v68);
      v36 = v61;
      *v44 = v60;
      *(v44 + 16) = v36;
      return result;
    }

    while (1)
    {
      *&v56 = v52;
      *(&v56 + 1) = v49;
      *&v57 = v26;
      *(&v57 + 1) = v27;
      v58 = v28;
      v59 = v29;
      v37 = DataFrame.Rows.index(after:)(v30);
      v38 = v69;
      v39 = v70;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      (*(*(v39 + 8) + 128))(&v56, v30, v38);
      if (*(&v57 + 1))
      {
        if (swift_dynamicCast())
        {
          if (*(&v54 + 1))
          {
            v56 = v53;
            v57 = v54;
            v58 = v55;
            if (*(v45 + 16) && (v40 = sub_21B24B560(&v56), (v41 & 1) != 0))
            {
              v42 = *(*(v45 + 56) + 8 * v40);

              sub_21B2E8474(v43, v30, &v60, a1);
            }

            else if ((*(v47 + *(a1 + 56)) & 0xFE) == 2)
            {
              sub_21B2E84E0(v30, &v60, a1);
            }

            sub_21B260E14(&v56);
            goto LABEL_27;
          }
        }

        else
        {
          v55 = 0;
          v53 = 0u;
          v54 = 0u;
        }
      }

      else
      {
        sub_21B261664(&v56, &qword_27CD7E0F8, &unk_21B3557C0);
        v53 = 0u;
        v54 = 0u;
        v55 = 0;
      }

      sub_21B261664(&v53, &qword_27CD7E200, &unk_21B352050);
LABEL_27:
      v30 = v37;
      if (v37 == v35)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2E64AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v141 = a3;
  v115 = a4;
  v136 = sub_21B34B474();
  v119 = *(v136 - 8);
  v7 = *(v119 + 64);
  v8 = MEMORY[0x28223BE20](v136);
  v140 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v131 = &v115 - v11;
  v146 = a2;
  v118 = *(a2 - 8);
  v12 = *(v118 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v139 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = &v115 - v15;
  v16 = *(a1 + 32);
  v17 = *(v16 + 32);
  v18 = *(a1 + 16);
  v145 = v4;
  v124 = v18;
  v125 = v16;
  v120 = v17;
  v121 = v16 + 32;
  (v17)(&v182);
  v19 = *(&v183 + 1);
  v20 = v184;
  v21 = v185;
  *&v143 = sub_21B2FB1D4(*(&v183 + 1), v184, v185);

  sub_21B23A9F4(v19, v20, v21);
  v144 = a1;
  v126 = v4 + *(a1 + 52);
  v22 = *(a1 + 40);
  v142 = *(v22 + 32);
  v23 = *(a1 + 24);
  v142(&v170, v23, v22);
  v138 = v170;
  v24 = *(&v171 + 1);
  v25 = v172;
  v26 = BYTE8(v172);
  v27 = sub_21B2FB1D4(*(&v171 + 1), v172, SBYTE8(v172));

  v28 = v25;
  v29 = v142;
  sub_21B23A9F4(v24, v28, v26);
  if (v27 <= v143)
  {
    v30 = v143;
  }

  else
  {
    v30 = v27;
  }

  sub_21B2E7A64(v30, v144, &v180);
  v122 = v23;
  v123 = v22;
  v29(&v170, v23, v22);
  v143 = v170;
  v31 = v171;
  v32 = v172;
  v33 = BYTE8(v172);
  v34 = *(&v171 + 1);
  if (BYTE8(v172))
  {
    if (BYTE8(v172) == 1 && *(*(&v171 + 1) + 16))
    {
      v34 = *(*(&v171 + 1) + 32);
    }

    else
    {
      sub_21B2A6400(*(&v171 + 1), v172, BYTE8(v172));
      if (v36)
      {
        v34 = 0;
      }

      else
      {
        v34 = v35;
      }
    }
  }

  sub_21B2A6400(*(&v31 + 1), v32, v33);
  v182 = v143;
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  v183 = v31;
  v184 = v32;
  v185 = v33;
  v186 = v34;
  v187 = v39;
  v179 = sub_21B23B6C4(&v182);
  v29(&v174, v122, v123);
  v143 = v174;
  v41 = v175;
  v40 = v176;
  v42 = v177;
  v43 = v178;
  v44 = v176;
  if (v178)
  {
    if (v178 == 1 && *(v176 + 16))
    {
      v44 = *(v176 + 32);
    }

    else
    {
      sub_21B2A6400(v176, v177, v178);
      if (v46)
      {
        v44 = 0;
      }

      else
      {
        v44 = v45;
      }
    }
  }

  sub_21B2A6400(v40, v42, v43);
  v166 = v143;
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  *&v167 = v41;
  *(&v167 + 1) = v40;
  *&v168 = v42;
  BYTE8(v168) = v43;
  *&v169 = v44;
  *(&v169 + 1) = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v116 = sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10);
  v51 = v123;
  v52 = v125;
  v53 = v124;
  v54 = v122;
  v117 = v50;
  v130 = sub_21B2E8990(v126, v55, &v166, v124, v122, v122, v146, v50, v125, v123, v123, v141, v116);
  v170 = v166;
  v171 = v167;
  v172 = v168;
  v173 = v169;
  sub_21B261664(&v170, &qword_27CD7E510, &unk_21B351F10);
  v56 = v145;
  (*(v52 + 24))(&v151, v53, v52);
  v58 = *(&v151 + 1);
  v57 = v151;
  v59 = v152;
  *&v166 = v53;
  *(&v166 + 1) = v54;
  *&v167 = v53;
  *(&v167 + 1) = v52;
  *&v168 = v51;
  *(&v168 + 1) = v52;
  v60 = *(v56 + *(type metadata accessor for HashJoin.JoinItem() + 72));
  v166 = __PAIR128__(v58, v57);
  *&v167 = v59;
  DataFrame.subscript.getter(v60);

  v135 = v161;
  v133 = v160;
  v134 = v162;
  v120(&v160, v53, v52);
  v142 = v161;
  *&v143 = v160;
  v61 = v163;
  v138 = v162;
  v62 = v164;
  v63 = v165;
  v64 = v163;
  v65 = v131;
  if (v165)
  {
    if (v165 == 1 && *(v163 + 16))
    {
      v64 = *(v163 + 32);
    }

    else
    {
      sub_21B2A6400(v163, v164, v165);
      if (v67)
      {
        v64 = 0;
      }

      else
      {
        v64 = v66;
      }
    }
  }

  sub_21B2A6400(v61, v62, v63);
  if (v69)
  {
    v70 = 0;
  }

  else
  {
    v70 = v68;
  }

  v132 = v70;
  if (v64 != v70)
  {
    v76 = (v118 + 48);
    v128 = (v118 + 8);
    v129 = (v118 + 32);
    v127 = (v119 + 8);
    do
    {
      *&v166 = v143;
      *(&v166 + 1) = v142;
      *&v167 = v138;
      *(&v167 + 1) = v61;
      v77 = v62;
      *&v168 = v62;
      v78 = v63;
      BYTE8(v168) = v63;
      v79 = DataFrame.Rows.index(after:)(v64);
      *&v166 = v133;
      *(&v166 + 1) = v135;
      *&v167 = v134;
      v80 = v146;
      v81 = type metadata accessor for Column();
      Column.subscript.getter(v64, v81, v65);
      if ((*v76)(v65, 1, v80) == 1)
      {
        (*v127)(v65, v136);
      }

      else
      {
        (*v129)(v137, v65, v80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
        sub_21B34AA14();
        v82 = v166;
        if (v166)
        {
          sub_21B2E811C(v64, v166, &v180, v144);
          if (*(v179 + 16))
          {
            v83 = *(v82 + 16);
            if (v83)
            {
              v84 = 32;
              do
              {
                sub_21B2644EC(*(v82 + v84));
                v84 += 8;
                --v83;
              }

              while (v83);
            }
          }
        }

        else if ((*(v145 + *(v144 + 14)) | 2) == 3)
        {
          sub_21B2E8194(v64, &v180, v144);
        }

        (*v128)(v137, v146);
        v65 = v131;
      }

      v64 = v79;
      v63 = v78;
      v62 = v77;
    }

    while (v79 != v132);
  }

  sub_21B23A9F4(v61, v62, v63);
  v120(&v155, v124, v125);
  v143 = v155;
  v72 = v156;
  v71 = v157;
  v73 = v158;
  v74 = v159;
  v75 = v157;
  if (v159)
  {
    if (v159 == 1 && *(v157 + 16))
    {
      v75 = *(v157 + 32);
    }

    else
    {
      sub_21B2A6400(v157, v158, v159);
      if (v86)
      {
        v75 = 0;
      }

      else
      {
        v75 = v85;
      }
    }
  }

  sub_21B2A6400(v71, v73, v74);
  v151 = v143;
  if (v88)
  {
    v89 = 0;
  }

  else
  {
    v89 = v87;
  }

  *&v152 = v72;
  *(&v152 + 1) = v71;
  *&v153 = v73;
  BYTE8(v153) = v74;
  *&v154 = v75;
  *(&v154 + 1) = v89;
  v90 = v125;
  v91 = v123;
  v92 = v146;
  v93 = v124;
  v94 = v122;
  v133 = sub_21B2E8990(v145, v87, &v151, v124, v122, v124, v146, v117, v125, v123, v125, v141, v116);
  v166 = v151;
  v167 = v152;
  v168 = v153;
  v169 = v154;
  sub_21B261664(&v166, &qword_27CD7E510, &unk_21B351F10);
  v95 = v126;
  (*(v91 + 24))(v150, v94, v91);
  v96 = v150[0];
  v97 = v150[1];
  v98 = v150[2];
  *&v151 = v93;
  *(&v151 + 1) = v94;
  *&v152 = v94;
  *(&v152 + 1) = v90;
  *&v153 = v91;
  *(&v153 + 1) = v91;
  v99 = *(v95 + *(type metadata accessor for HashJoin.JoinItem() + 72));
  *&v151 = v96;
  *(&v151 + 1) = v97;
  *&v152 = v98;
  DataFrame.subscript.getter(v99);

  v138 = v147;
  v142 = v149;
  *&v143 = v148;
  v100 = v179;
  v101 = *(v179 + 16);
  if (v101)
  {
    v102 = sub_21B2642A8(*(v179 + 16), 0);
    v103 = sub_21B26566C(&v151, v102 + 4, v101, v100);

    sub_21B26139C();
    if (v103 != v101)
    {
      __break(1u);
      MEMORY[0x21CEEE840](v102);

      __break(1u);
      return result;
    }

    v92 = v146;
  }

  else
  {
    v102 = MEMORY[0x277D84F90];
  }

  *&v151 = v102;
  sub_21B264924(&v151);

  v131 = v151;
  v104 = *(v151 + 16);
  if (v104)
  {
    v105 = (v131 + 32);
    v137 = type metadata accessor for Column();
    v106 = (v118 + 48);
    v132 = (v118 + 32);
    v107 = (v118 + 8);
    v108 = (v119 + 8);
    do
    {
      while (1)
      {
        v110 = *v105++;
        v109 = v110;
        *&v151 = v138;
        *(&v151 + 1) = v143;
        *&v152 = v142;
        v111 = v140;
        Column.subscript.getter(v110, v137, v140);
        if ((*v106)(v111, 1, v92) != 1)
        {
          break;
        }

        (*v108)(v111, v136);
        if (!--v104)
        {
          goto LABEL_71;
        }
      }

      (*v132)(v139, v111, v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
      sub_21B34AA14();
      if (v151)
      {
        sub_21B2E8474(v151, v109, &v180, v144);
      }

      else if ((*(v145 + *(v144 + 14)) & 0xFE) == 2)
      {
        sub_21B2E84E0(v109, &v180, v144);
      }

      v92 = v146;
      (*v107)(v139, v146);
      --v104;
    }

    while (v104);
  }

LABEL_71:

  v113 = v181;
  v114 = v115;
  *v115 = v180;
  *(v114 + 2) = v113;
  return result;
}

uint64_t sub_21B2E70D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = *(a1 + 16);
  v78 = (*(a1 + 32) + 32);
  v79 = *(a1 + 32);
  v77 = *v78;
  (*v78)(&v126);
  v4 = v128;
  v5 = v129;
  v6 = v130;
  v89 = sub_21B2FB1D4(v128, v129, v130);

  sub_21B23A9F4(v4, v5, v6);
  v7 = *(a1 + 40);
  v87 = *(v7 + 32);
  v80 = *(a1 + 24);
  v81 = v2 + *(a1 + 52);
  v87(&v111);
  v8 = v113;
  v9 = v114;
  v10 = v115;
  v11 = sub_21B2FB1D4(v113, v114, v115);

  sub_21B23A9F4(v8, v9, v10);
  if (v11 <= v89)
  {
    v12 = v89;
  }

  else
  {
    v12 = v11;
  }

  v83 = a1;
  sub_21B2E7A64(v12, a1, &v124);
  (v87)(&v111, v80, v7);
  v90 = v111;
  v14 = v112;
  v13 = v113;
  v15 = v114;
  v16 = v115;
  v17 = v113;
  if (v115)
  {
    if (v115 == 1 && *(v113 + 16))
    {
      v17 = *(v113 + 32);
    }

    else
    {
      sub_21B2A6400(v113, v114, v115);
      if (v19)
      {
        v17 = 0;
      }

      else
      {
        v17 = v18;
      }
    }
  }

  sub_21B2A6400(v13, v15, v16);
  v126 = v90;
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v127 = v14;
  v128 = v13;
  v129 = v15;
  v130 = v16;
  v131 = v17;
  v132 = v22;
  v85 = sub_21B23B6C4(&v126);
  v123 = v85;
  (v87)(&v118, v80, v7);
  v91 = v118;
  v24 = v119;
  v23 = v120;
  v25 = v121;
  v26 = v122;
  v27 = v120;
  if (v122)
  {
    if (v122 == 1 && *(v120 + 16))
    {
      v27 = *(v120 + 32);
    }

    else
    {
      sub_21B2A6400(v120, v121, v122);
      if (v29)
      {
        v27 = 0;
      }

      else
      {
        v27 = v28;
      }
    }
  }

  sub_21B2A6400(v23, v25, v26);
  v111 = v91;
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  v112 = v24;
  v113 = v23;
  v114 = v25;
  v115 = v26;
  v116 = v27;
  v117 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10);
  v34 = v79;
  v84 = sub_21B2E9AE4(v81, v82, v80, v80, v33, v79, v7, v7);
  sub_21B261664(&v111, &qword_27CD7E510, &unk_21B351F10);
  (*(v34 + 24))(v100, v82, v34);
  v35 = v100[0];
  *&v104 = v82;
  *(&v104 + 1) = v80;
  *&v105 = v82;
  *(&v105 + 1) = v79;
  v106 = v7;
  v107 = v79;
  result = type metadata accessor for HashJoin.JoinItem();
  v37 = *(v86 + *(result + 72));
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_81;
  }

  if (v37 >= *(v35 + 16))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v76 = v7;
  sub_21B233A74(v35 + 40 * v37 + 32, v108);

  (v77)(v100, v82, v79);
  v88 = v100[1];
  v92 = v100[0];
  v39 = v100[2];
  v38 = v101;
  v40 = v102;
  v41 = v103;
  v42 = v101;
  if (v103)
  {
    if (v103 == 1 && *(v101 + 16))
    {
      v42 = *(v101 + 32);
    }

    else
    {
      sub_21B2A6400(v101, v102, v103);
      if (v44)
      {
        v42 = 0;
      }

      else
      {
        v42 = v43;
      }
    }
  }

  sub_21B2A6400(v38, v40, v41);
  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  if (v42 == v47)
  {

    goto LABEL_56;
  }

  do
  {
    *&v104 = v92;
    *(&v104 + 1) = v88;
    *&v105 = v39;
    *(&v105 + 1) = v38;
    v106 = v40;
    LOBYTE(v107) = v41;
    v48 = DataFrame.Rows.index(after:)(v42);
    v49 = v109;
    v50 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    (*(*(v50 + 8) + 128))(&v104, v42, v49);
    if (!*(&v105 + 1))
    {
      sub_21B261664(&v104, &qword_27CD7E0F8, &unk_21B3557C0);
      v97 = 0u;
      v98 = 0u;
      v99 = 0;
LABEL_39:
      sub_21B261664(&v97, &qword_27CD7E200, &unk_21B352050);
      goto LABEL_40;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v99 = 0;
      v97 = 0u;
      v98 = 0u;
      goto LABEL_39;
    }

    if (!*(&v98 + 1))
    {
      goto LABEL_39;
    }

    v104 = v97;
    v105 = v98;
    v106 = v99;
    if (*(v84 + 16) && (v51 = sub_21B24B560(&v104), (v52 & 1) != 0))
    {
      v53 = *(*(v84 + 56) + 8 * v51);

      sub_21B2E811C(v42, v53, &v124, v83);
      if (*(v123 + 16))
      {
        v54 = *(v53 + 16);
        if (v54)
        {
          v55 = 32;
          do
          {
            sub_21B2644EC(*(v53 + v55));
            v55 += 8;
            --v54;
          }

          while (v54);
        }
      }
    }

    else if ((*(v86 + *(v83 + 56)) | 2) == 3)
    {
      sub_21B2E8194(v42, &v124, v83);
    }

    sub_21B260E14(&v104);
LABEL_40:
    v42 = v48;
  }

  while (v48 != v47);

  v85 = v123;
  v34 = v79;
LABEL_56:

  sub_21B23A9F4(v38, v40, v41);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F110, &qword_21B355CB0);
  sub_21B278F78(&qword_27CD7F118, &qword_27CD7F110, &qword_21B355CB0);
  v57 = sub_21B2E9AE4(v86, v82, v80, v82, v56, v34, v76, v34);
  (*(v76 + 24))(&v97, v80, v76);
  v58 = v97;
  *&v104 = v82;
  *(&v104 + 1) = v80;
  *&v105 = v80;
  *(&v105 + 1) = v34;
  v106 = v76;
  v107 = v76;
  result = type metadata accessor for HashJoin.JoinItem();
  v59 = *(v81 + *(result + 72));
  if ((v59 & 0x8000000000000000) != 0)
  {
    goto LABEL_83;
  }

  if (v59 < *(v58 + 16))
  {
    sub_21B233A74(v58 + 40 * v59 + 32, &v104);

    v60 = 0;
    v61 = 1 << *(v85 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v85 + 56);
    v64 = (v61 + 63) >> 6;
    if (!v63)
    {
LABEL_64:
      while (1)
      {
        v65 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        if (v65 >= v64)
        {

          sub_21B233960(&v104);
          result = sub_21B233960(v108);
          v74 = v125;
          *a2 = v124;
          *(a2 + 16) = v74;
          return result;
        }

        v63 = *(v85 + 56 + 8 * v65);
        ++v60;
        if (v63)
        {
          v60 = v65;
          goto LABEL_68;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

LABEL_68:
    while (1)
    {
      v66 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      v67 = *(*(v85 + 48) + ((v60 << 9) | (8 * v66)));
      v69 = *(&v105 + 1);
      v68 = v106;
      __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
      (*(*(v68 + 8) + 128))(v93, v67, v69);
      if (!v93[3])
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        v96 = 0;
        v94 = 0u;
        v95 = 0u;
LABEL_63:
        result = sub_21B261664(&v94, &qword_27CD7E200, &unk_21B352050);
        if (!v63)
        {
          goto LABEL_64;
        }

        continue;
      }

      if (!*(&v95 + 1))
      {
        goto LABEL_63;
      }

      v97 = v94;
      v98 = v95;
      v99 = v96;
      if (*(v57 + 16) && (v70 = sub_21B24B560(&v97), (v71 & 1) != 0))
      {
        v72 = *(*(v57 + 56) + 8 * v70);

        sub_21B2E8474(v73, v67, &v124, v83);
      }

      else if ((*(v86 + *(v83 + 56)) & 0xFE) == 2)
      {
        sub_21B2E84E0(v67, &v124, v83);
      }

      result = sub_21B260E14(&v97);
      if (!v63)
      {
        goto LABEL_64;
      }
    }

    sub_21B261664(v93, &qword_27CD7E0F8, &unk_21B3557C0);
    v94 = 0u;
    v95 = 0u;
    v96 = 0;
    goto LABEL_63;
  }

LABEL_84:
  __break(1u);
  return result;
}