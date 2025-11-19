uint64_t sub_21B30C88C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
}

uint64_t sub_21B30C8E0(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8[0] = *a1;
  v8[1] = v4;
  v8[2] = v6;
  v8[3] = v5;

  return DataFrame.Rows.subscript.setter(v8, v3);
}

void (*DataFrame.Rows.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = a2;
  *(v5 + 40) = v2;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = a2;

  return sub_21B30C9EC;
}

void sub_21B30C9EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v11[0] = **a1;
  v11[1] = v3;
  v11[2] = v5;
  v11[3] = v4;
  if (a2)
  {

    DataFrame.Rows.subscript.setter(v11, v7);
    v8 = *v2;
    v9 = v2[1];
    v10 = v2[2];
  }

  else
  {
    DataFrame.Rows.subscript.setter(v11, v7);
  }

  free(v2);
}

uint64_t DataFrame.Rows.subscript.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
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

  v13 = *(v3 + 40);

  sub_21B254074(v8, v9, v13);
  v14 = 2 * v10;
  v15 = sub_21B248CCC(v11, v12, v14, v8, v9, v13);
  v17 = v16;
  v19 = v18;
  result = sub_21B23A9F4(v11, v12, v14);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v15;
  *(a3 + 32) = v17;
  *(a3 + 40) = v19;
  return result;
}

uint64_t sub_21B30CB78@<X0>(uint64_t *a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a2[1];
  v10 = *a2 == v9;
  if (*a2 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a2;
  }

  if (*a2 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2[1];
  }

  v13 = *(a1 + 40);
  v14 = *a1;

  sub_21B254074(v7, v8, v13);
  v15 = 2 * v10;
  v16 = sub_21B248CCC(v11, v12, v15, v7, v8, v13);
  v18 = v17;
  v20 = v19;
  result = sub_21B23A9F4(v11, v12, v15);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v16;
  *(a3 + 32) = v18;
  *(a3 + 40) = v20;
  return result;
}

uint64_t sub_21B30CC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11[0] = *a1;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v12 = v9;

  sub_21B254074(v7, v8, v9);
  return DataFrame.Rows.subscript.setter(v11, v3, v4);
}

uint64_t DataFrame.Rows.subscript.setter(uint64_t *a1, char *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v33 = a1[3];
  v35 = a1[4];
  v34 = *(a1 + 40);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = a2 == a3;
  if (a2 == a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

  if (a2 == a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = *(v3 + 40);
  sub_21B254074(*(v3 + 24), *(v3 + 32), v12);
  v13 = 2 * v9;
  v36 = sub_21B248CCC(v10, v11, v13, v7, v8, v12);
  v37 = v14;
  v38 = v15;
  v16 = v13;
  v17 = v34;
  v18 = v35;
  sub_21B23A9F4(v10, v11, v16);
  v19 = v33;
  if (v34)
  {
    if (v34 == 1 && *(v33 + 16))
    {
      v19 = *(v33 + 32);
    }

    else
    {
      sub_21B2A6400(v33, v35, v34);
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

  sub_21B2A6400(v33, v35, v34);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  if (v19 == v24)
  {
    v25 = v36;
    v26 = v37;
    v27 = v38;
  }

  else
  {

    sub_21B254074(v33, v35, v34);
    do
    {
      v39 = v4;
      v40 = v5;
      v41 = v6;
      v42 = v33;
      v29 = v18;
      v43 = v18;
      v30 = v17;
      v44 = v17;
      v31 = DataFrame.Rows.index(after:)(v19);
      if (sub_21B2D3BE8(v19, v36, v37, v38))
      {
        v39 = v4;
        v40 = v5;
        v41 = v6;
        v42 = v19;

        DataFrame.Rows.subscript.setter(&v39, v19);
      }

      v19 = v31;
      v28 = v31 == v24;
      v17 = v30;
      v18 = v29;
    }

    while (!v28);
    sub_21B23A9F4(v36, v37, v38);

    v25 = v33;
    v26 = v29;
    v27 = v17;
  }

  sub_21B23A9F4(v25, v26, v27);

  return sub_21B23A9F4(v33, v18, v17);
}

void (*DataFrame.Rows.subscript.modify(void *a1, char *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[3];
  v13 = v3[4];
  v14 = a2 == a3;
  if (a2 == a3)
  {
    a2 = 0;
    a3 = 0;
  }

  v15 = *(v3 + 40);

  sub_21B254074(v12, v13, v15);
  v16 = 2 * v14;
  v17 = sub_21B248CCC(a2, a3, v16, v12, v13, v15);
  v19 = v18;
  v21 = v20;
  sub_21B23A9F4(a2, a3, v16);
  *v8 = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v17;
  v8[4] = v19;
  *(v8 + 40) = v21;
  return sub_21B30D074;
}

void sub_21B30D074(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = *(*a1 + 40);
  v9 = (*a1)[7];
  v8 = (*a1)[8];
  v10 = (*a1)[6];
  v17[0] = **a1;
  v17[1] = v3;
  v17[2] = v5;
  v17[3] = v4;
  v17[4] = v6;
  v18 = v7;
  if (a2)
  {

    sub_21B254074(v4, v6, v7);
    DataFrame.Rows.subscript.setter(v17, v10, v9);
    v11 = *v2;
    v12 = v2[1];
    v13 = v2[2];
    v14 = v2[3];
    v15 = v2[4];
    v16 = *(v2 + 40);

    sub_21B23A9F4(v14, v15, v16);
  }

  else
  {
    DataFrame.Rows.subscript.setter(v17, v10, v9);
  }

  free(v2);
}

Swift::Int sub_21B30D188@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DataFrame.Rows.index(before:)(*a1);
  *a2 = result;
  return result;
}

void (*sub_21B30D1D4(uint64_t **a1, uint64_t *a2))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = DataFrame.Rows.subscript.modify(v4, *a2);
  return sub_21B28EF30;
}

void (*sub_21B30D258(void *a1, uint64_t a2))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = DataFrame.Rows.subscript.modify(v4, *a2, *(a2 + 8));
  return sub_21B28EF30;
}

uint64_t sub_21B30D2D0@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21B33834C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21B30D308@<X0>(uint64_t *a1@<X8>)
{
  result = DataFrame.Rows.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21B30D330@<X0>(void *a1@<X8>)
{
  result = sub_21B2A6400(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  *a1 = v6;
  return result;
}

uint64_t (*sub_21B30D368(void *a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v4;

  return sub_21B30D3D8;
}

uint64_t sub_21B30D3D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
}

uint64_t sub_21B30D420@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *a1 == v4;
  if (*a1 == v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  if (*a1 == v4)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1[1];
  }

  v13 = *(v2 + 40);

  sub_21B254074(v8, v9, v13);
  v14 = 2 * v10;
  v15 = sub_21B248CCC(v11, v12, v14, v8, v9, v13);
  v17 = v16;
  v19 = v18;
  result = sub_21B23A9F4(v11, v12, v14);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  return result;
}

uint64_t sub_21B30D4F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = DataFrame.Rows.startIndex.getter();
  sub_21B2A6400(v3, v4, v5);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *(a1 + 56) = v8;

  return sub_21B254074(v3, v4, v5);
}

BOOL sub_21B30D5C4()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 40);
  v9 = *v0;
  v10 = *(v0 + 2);
  v4 = DataFrame.Rows.startIndex.getter();
  sub_21B2A6400(v1, v2, v3);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v4 == v7;
}

Swift::Int sub_21B30D63C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  *v9 = v4[1];
  *&v9[9] = *(v4 + 25);
  result = sub_21B30B2FC(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

Swift::Int sub_21B30D690@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = DataFrame.Rows.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B30D6D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  v8 = *(v4 + 2);
  v9 = *(v4 + 24);
  v10 = *(v4 + 40);
  result = a4(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_21B30D730@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v3 = DataFrame.Rows.startIndex.getter();

  sub_21B254074(v7, v8, v9);

  result = sub_21B23A9F4(v7, v8, v9);
  *(a1 + 48) = v3;
  return result;
}

uint64_t sub_21B30D800()
{
  v1 = *(v0 + 25);
  v2 = v0[1];
  v14 = *v0;
  *v15 = v2;
  *&v15[9] = v1;
  v3 = sub_21B2FB1D4(*&v15[8], v1 >> 56, SHIBYTE(v1));
  if (!v3)
  {
    sub_21B25FE94(&v14);
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_21B264218(v3, 0);
  v6 = sub_21B2652CC(v12, v5 + 4, v4);
  v7 = v12[3];
  v8 = v12[4];
  v9 = v13;
  sub_21B30F420(&v14, v11);

  result = sub_21B23A9F4(v7, v8, v9);
  if (v6 == v4)
  {
    sub_21B25FE94(&v14);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B30D8FC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *v3;
  *v6 = v3[1];
  *&v6[9] = *(v3 + 25);
  return sub_21B2652CC(a1, a2, a3);
}

Swift::Int __swiftcall DataFrame.Row.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t DataFrame.Row.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *v1;
    if (*(*v1 + 16) > result)
    {
      v3 = v1[3];
      sub_21B233A74(v2 + 40 * result + 32, v6);
      v4 = v7;
      v5 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(*(v5 + 8) + 128))(v3, v4);
      return sub_21B233960(v6);
    }
  }

  __break(1u);
  return result;
}

void *sub_21B30D9F8(void *result, unint64_t *a2)
{
  v2 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *(*result + 16))
  {
    v3 = result[3];
    sub_21B233A74(*result + 40 * v2 + 32, v6);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(*(v5 + 8) + 128))(v3, v4);
    return sub_21B233960(v6);
  }

  __break(1u);
  return result;
}

void (*DataFrame.Row.subscript.modify(void (**a1)(uint64_t a1, char a2), unint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x58uLL);
  }

  v6 = result;
  *a1 = result;
  *(result + 9) = a2;
  *(result + 10) = v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    if (*(*v2 + 16) > a2)
    {
      v8 = v2[3];
      sub_21B233A74(v7 + 40 * a2 + 32, result);
      v9 = *(v6 + 3);
      v10 = *(v6 + 4);
      __swift_project_boxed_opaque_existential_1(v6, v9);
      (*(*(v10 + 8) + 128))(v8, v9);
      sub_21B233960(v6);
      return sub_21B30DC78;
    }
  }

  __break(1u);
  return result;
}

void sub_21B30DC78(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *a1 + 40;
  if (a2)
  {
    sub_21B2832C0(v5, v2);
    DataFrame.Row.subscript.setter(v2, v4);
    sub_21B28EEB4(v2 + 40);
  }

  else
  {
    DataFrame.Row.subscript.setter(v5, v4);
  }

  free(v2);
}

uint64_t DataFrame.Row.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  a3[2] = *v3;
  a3[3] = v4;
  a3[4] = v6;
  a3[5] = v5;
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_21B30DD44@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  *a3 = *a2;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 32) = v6;
  *(a3 + 40) = v5;
}

uint64_t sub_21B30DD9C(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = *(a1 + 4);
  v3 = *(a1 + 5);
  v6 = *a1;
  v7 = v1;
  v8 = v2;
  v9 = v4;
  v10 = v3;

  return _s11TabularData0B5FrameV3RowVys5SliceVyAEGSnySiGcis_0(&v6);
}

void (*DataFrame.Row.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  *a1 = v7;
  v7[6] = v3;
  v8 = v3[1];
  v10 = v3[2];
  v9 = v3[3];
  v7[2] = *v3;
  v7[3] = v8;
  v7[4] = v10;
  v7[5] = v9;
  *v7 = a2;
  v7[1] = a3;

  return sub_21B30DEBC;
}

void sub_21B30DEBC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = v2[6];
  v13[0] = v4;
  v13[1] = v3;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v8;
  v13[5] = v7;
  if (a2)
  {

    _s11TabularData0B5FrameV3RowVys5SliceVyAEGSnySiGcis_0(v13);
    v10 = v2[2];
    v11 = v2[3];
    v12 = v2[4];
  }

  else
  {
    _s11TabularData0B5FrameV3RowVys5SliceVyAEGSnySiGcis_0(v13);
  }

  free(v2);
}

void (*sub_21B30DF78(uint64_t *a1, unint64_t *a2))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = DataFrame.Row.subscript.modify(v4, *a2);
  return sub_21B28EF30;
}

void (*sub_21B30DFF4(void *a1, uint64_t *a2))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = DataFrame.Row.subscript.modify(v4, *a2, a2[1]);
  return sub_21B28A810;
}

unint64_t sub_21B30E06C@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_21B338564(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void (*sub_21B30E0B4(void (**a1)(void **a1), unint64_t *a2))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x48uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *v2;
    if (v7 < *(*v2 + 16))
    {
      v9 = v2[3];
      sub_21B233A74(v8 + 40 * v7 + 32, result);
      v10 = *(v6 + 3);
      v11 = *(v6 + 4);
      __swift_project_boxed_opaque_existential_1(v6, v10);
      (*(*(v11 + 8) + 128))(v9, v10);
      sub_21B233960(v6);
      return sub_21B30E1A8;
    }
  }

  __break(1u);
  return result;
}

void sub_21B30E1A8(void **a1)
{
  v1 = *a1;
  sub_21B28EEB4(*a1 + 40);

  free(v1);
}

uint64_t sub_21B30E1E4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  *(a2 + 16) = *v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v4;
  *a2 = *a1;
}

void sub_21B30E244(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_21B30E268@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_21B30E294@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  result = sub_21B334E8C(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v10 & 1;
  return result;
}

unint64_t *sub_21B30E2D4(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

__n128 sub_21B30E2FC@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u64[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u64[0] = 0;
  return result;
}

void *sub_21B30E314()
{
  v1 = sub_21B263CEC(*v0, v0[1], v0[2], v0[3]);

  return v1;
}

uint64_t DataFrame.Row.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v15 = a1;
    v5 = v1[3];
    v22 = MEMORY[0x277D84F90];
    sub_21B253FF4(0, v3, 0);
    v4 = v22;
    v6 = v2 + 32;
    do
    {
      sub_21B233A74(v6, &v19);
      v7 = *(&v20 + 1);
      v8 = v21;
      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      (*(*(v8 + 8) + 128))(&v17, v5, v7);
      sub_21B233960(&v19);
      v16[0] = v17;
      v16[1] = v18;
      if (*(&v18 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v21 = 0;
          v19 = 0u;
          v20 = 0u;
        }
      }

      else
      {
        sub_21B28EEB4(v16);
        v19 = 0u;
        v20 = 0u;
        v21 = 0;
      }

      v22 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21B253FF4((v9 > 1), v10 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 40 * v10;
      v12 = v19;
      v13 = v20;
      *(v11 + 64) = v21;
      *(v11 + 32) = v12;
      *(v11 + 48) = v13;
      v6 += 40;
      --v3;
    }

    while (v3);
    a1 = v15;
  }

  sub_21B2F1184(a1, v4);
}

uint64_t DataFrame.Row.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21B34BBC4();
  DataFrame.Row.hash(into:)(v4);
  return sub_21B34BC24();
}

uint64_t sub_21B30E574()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21B34BBC4();
  DataFrame.Row.hash(into:)(v4);
  return sub_21B34BC24();
}

uint64_t sub_21B30E5CC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_21B34BBC4();
  DataFrame.Row.hash(into:)(v4);
  return sub_21B34BC24();
}

uint64_t _s11TabularData0B5FrameV3RowV2eeoiySbAE_AEtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[3];
  v5 = *(*a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v28 = *a2;
    v7 = a1[3];
    v36 = MEMORY[0x277D84F90];
    sub_21B253FF4(0, v5, 0);
    v6 = v36;
    v8 = v2 + 32;
    do
    {
      sub_21B233A74(v8, &v33);
      v9 = *(&v34 + 1);
      v10 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      (*(*(v10 + 8) + 128))(&v31, v7, v9);
      sub_21B233960(&v33);
      v29 = v31;
      v30 = v32;
      if (*(&v32 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v35 = 0;
          v33 = 0u;
          v34 = 0u;
        }
      }

      else
      {
        sub_21B28EEB4(&v29);
        v33 = 0u;
        v34 = 0u;
        v35 = 0;
      }

      v36 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21B253FF4((v11 > 1), v12 + 1, 1);
        v6 = v36;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 40 * v12;
      v14 = v33;
      v15 = v34;
      *(v13 + 64) = v35;
      *(v13 + 32) = v14;
      *(v13 + 48) = v15;
      v8 += 40;
      --v5;
    }

    while (v5);
    v3 = v28;
  }

  v16 = *(v3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v36 = MEMORY[0x277D84F90];
    sub_21B253FF4(0, v16, 0);
    v17 = v36;
    v18 = v3 + 32;
    do
    {
      sub_21B233A74(v18, &v33);
      v19 = *(&v34 + 1);
      v20 = v35;
      __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
      (*(*(v20 + 8) + 128))(&v31, v4, v19);
      sub_21B233960(&v33);
      v29 = v31;
      v30 = v32;
      if (*(&v32 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v35 = 0;
          v33 = 0u;
          v34 = 0u;
        }
      }

      else
      {
        sub_21B28EEB4(&v29);
        v33 = 0u;
        v34 = 0u;
        v35 = 0;
      }

      v36 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_21B253FF4((v21 > 1), v22 + 1, 1);
        v17 = v36;
      }

      *(v17 + 16) = v22 + 1;
      v23 = v17 + 40 * v22;
      v24 = v33;
      v25 = v34;
      *(v23 + 64) = v35;
      *(v23 + 32) = v24;
      *(v23 + 48) = v25;
      v18 += 40;
      --v16;
    }

    while (v16);
  }

  v26 = sub_21B2470A0(v6, v17);

  return v26 & 1;
}

uint64_t sub_21B30E918(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *v9 = *v2;
  DataFrame.subscript.getter(a2);
  v7 = type metadata accessor for Column();
  sub_21B28E8DC(a1, v6, v7);
  *v9 = v10;
  *&v9[8] = v11;
  return DataFrame.subscript.setter(v9, a2);
}

uint64_t sub_21B30E9D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  *v13 = *v5;
  DataFrame.subscript.getter(&v14, a2, a3, a4, a5);
  v11 = type metadata accessor for Column();
  sub_21B28E8DC(a1, v10, v11);
  *v13 = v14;
  *&v13[8] = v15;
  return DataFrame.subscript.setter(v13, a2, a3);
}

uint64_t sub_21B30EAA4(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *v12 = *v2;
  *&v12[16] = v6;
  v10 = v5;
  v11 = v4;

  DataFrame.subscript.getter(&v10);

  v8 = type metadata accessor for Column();
  sub_21B28E8DC(a1, v7, v8);
  v11 = v4;
  *v12 = v13;
  *&v12[8] = v14;
  v10 = v5;
  return DataFrame.subscript.setter(v12, &v10);
}

uint64_t _s11TabularData0B5FrameV3RowVys5SliceVyAEGSnySiGcis_0(void *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v16[0] = *a1;
  v16[1] = v1;
  v16[2] = v3;
  v17 = v2;
  v18 = v4;
  v19 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F4D0, &qword_21B356F30);
  result = sub_21B34BB14();
  v7 = v15;
  if (v15 == *(&v15 + 1))
  {
LABEL_13:
  }

  else
  {
    if (*(&v15 + 1) >= v15)
    {
      if (v1 <= v15)
      {
        v1 = v15;
      }

      v8 = v3 + 40 * v15 + 32;
      v9 = v15;
      while (*(&v7 + 1) != v9)
      {
        if (v7 < v12)
        {
          goto LABEL_15;
        }

        if (v1 == v9)
        {
          goto LABEL_16;
        }

        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }

        if (v9 >= *(v3 + 16))
        {
          goto LABEL_18;
        }

        sub_21B233A74(v8, v16);
        v11 = v17;
        v10 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        (*(*(v10 + 8) + 128))(&v13, v5, v11);
        result = sub_21B233960(v16);
        if (!v14)
        {
          goto LABEL_20;
        }

        sub_21B261720(&v13, &v15);
        swift_dynamicCast();
        sub_21B239CC0(v9, v16);
        result = sub_21B233960(v16);
        v8 += 40;
        if (*(&v7 + 1) == ++v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

unint64_t sub_21B30ED30()
{
  result = qword_27CD7F490;
  if (!qword_27CD7F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F490);
  }

  return result;
}

unint64_t sub_21B30ED88()
{
  result = qword_27CD7F498;
  if (!qword_27CD7F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E510, &unk_21B351F10);
    sub_21B30EE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F498);
  }

  return result;
}

unint64_t sub_21B30EE0C()
{
  result = qword_27CD7F4A0;
  if (!qword_27CD7F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4A0);
  }

  return result;
}

unint64_t sub_21B30EE68()
{
  result = qword_27CD7F4A8;
  if (!qword_27CD7F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4A8);
  }

  return result;
}

unint64_t sub_21B30EEC0()
{
  result = qword_280C83960;
  if (!qword_280C83960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C83960);
  }

  return result;
}

unint64_t sub_21B30EFA0()
{
  result = qword_27CD7F4C0;
  if (!qword_27CD7F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4C0);
  }

  return result;
}

unint64_t sub_21B30F03C()
{
  result = qword_27CD7F4D8;
  if (!qword_27CD7F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4D8);
  }

  return result;
}

unint64_t sub_21B30F090()
{
  result = qword_27CD7F4E0;
  if (!qword_27CD7F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4E0);
  }

  return result;
}

uint64_t sub_21B30F12C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F4D0, &qword_21B356F30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B30F1A4()
{
  result = qword_27CD7F4F0;
  if (!qword_27CD7F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F4F0);
  }

  return result;
}

unint64_t sub_21B30F244()
{
  result = qword_27CD7F500;
  if (!qword_27CD7F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F500);
  }

  return result;
}

unint64_t sub_21B30F324()
{
  result = qword_27CD7F520;
  if (!qword_27CD7F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F520);
  }

  return result;
}

uint64_t sub_21B30F378(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21B30F3C0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21B30F490(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    return 0;
  }

  v6 = (*a1 + v1);
  v7 = v1 + 1;
  do
  {
    v9 = *v6++;
    v8 = v9;
    v10 = (1 << v9) & 0x2000000000002400;
    if (v9 <= 0x3D && v10 != 0)
    {
      break;
    }

    if (v8 == 93)
    {
      break;
    }

    v12 = sub_21B34AD84();
    MEMORY[0x21CEED5D0](v12);

    a1[2] = v7++;
    --v3;
  }

  while (v3);
  return 0;
}

uint64_t sub_21B30F5A4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_21B30F490(a1);
  v6 = a1[1];
  v5 = a1[2];
  if (v5 < v6)
  {
    v7 = *a1;
    if (*(*a1 + v5) == 93)
    {
      a1[2] = v5 + 1;
      if (v5 + 1 != v6)
      {
        if (v5 + 1 >= v6)
        {
          goto LABEL_12;
        }

        v8 = *(v7 + v5 + 1);
        if (v8 != 10 && v8 != 13)
        {
          goto LABEL_12;
        }

        a1[2] = v5 + 2;
      }

      v10 = v4;
      sub_21B25F17C(MEMORY[0x277D84F90]);
      return v10;
    }
  }

LABEL_12:

  sub_21B30FD2C();
  swift_allocError();
  *v12 = a2;
  *(v12 + 8) = 1;
  return swift_willThrow();
}

uint64_t sub_21B30F688(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    return 0;
  }

  v6 = (*a1 + v1);
  v7 = v1 + 1;
  do
  {
    v9 = *v6++;
    v8 = v9;
    if (v9 == 10 || v8 == 13)
    {
      break;
    }

    v11 = sub_21B34AD84();
    MEMORY[0x21CEED5D0](v11);

    a1[2] = v7++;
    --v3;
  }

  while (v3);
  return 0;
}

uint64_t sub_21B30F780(uint64_t *a1, uint64_t a2)
{
  v4 = sub_21B30F490(a1);
  v6 = a1[1];
  v5 = a1[2];
  if (v5 >= v6)
  {
    goto LABEL_13;
  }

  v7 = *a1;
  if (*(*a1 + v5) != 61)
  {
    goto LABEL_13;
  }

  v8 = v4;
  a1[2] = v5 + 1;
  sub_21B30F688(a1);
  v9 = a1[2];
  if (v9 == v6)
  {
    return v8;
  }

  if (v9 < v6)
  {
    v10 = *(v7 + v9);
    if (v10 == 10 || v10 == 13)
    {
      a1[2] = v9 + 1;
      return v8;
    }
  }

LABEL_13:

  sub_21B30FD2C();
  swift_allocError();
  *v13 = a2;
  *(v13 + 8) = 2;
  return swift_willThrow();
}

uint64_t sub_21B30F880(uint64_t result, uint64_t a2)
{
  v42[0] = result;
  v42[1] = a2;
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = result;
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = 1;
  while (1)
  {
    while (1)
    {
      v7 = *(v3 + v4);
      v8 = v7 > 0x20;
      v9 = (1 << v7) & 0x100002600;
      if (v8 || v9 == 0)
      {
        break;
      }

      if (a2 == ++v4)
      {
        v43 = a2;
        goto LABEL_9;
      }
    }

    v43 = v4;
    if (v4 < a2)
    {
      v24 = *(v3 + v4);
      if (v24 == 91)
      {
        v27 = v5;
        v43 = v4 + 1;
        v5 = v6;
        v28 = sub_21B30F5A4(v42, v6);
        if (v41)
        {
          goto LABEL_38;
        }

        v31 = v28;
        v32 = v29;
        v33 = v30;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v34 = v27;
        }

        else
        {
          result = sub_21B24AD58(0, *(v27 + 16) + 1, 1, v27);
          v34 = result;
        }

        v36 = *(v34 + 16);
        v35 = *(v34 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_21B24AD58((v35 > 1), v36 + 1, 1, v34);
          v34 = result;
        }

        *(v34 + 16) = v36 + 1;
        v40 = v34;
        v37 = (v34 + 24 * v36);
        v37[4] = v31;
        v37[5] = v32;
        v37[6] = v33;
        v6 = v5;
        goto LABEL_15;
      }

      if (v24 == 59)
      {
        v25 = v4 + 1;
        v40 = v5;
        while (a2 != v25)
        {
          v26 = *(v3 + v25++);
          if (v26 == 10 || v26 == 13)
          {
            v43 = v25;
            goto LABEL_15;
          }
        }

        v43 = a2;
        goto LABEL_15;
      }
    }

LABEL_9:
    if (!*(v5 + 16))
    {

      sub_21B30FD2C();
      swift_allocError();
      *v38 = v6;
      *(v38 + 8) = 0;
      swift_willThrow();
      return v5;
    }

    v11 = sub_21B30F780(v42, v6);
    if (v41)
    {
LABEL_38:

      return v5;
    }

    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v39 = v6;
    v19 = *(v5 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (!v19)
      {
        goto LABEL_42;
      }
    }

    else
    {
      result = sub_21B23A3A8(v5);
      v5 = result;
      if (!v19)
      {
        goto LABEL_42;
      }
    }

    if (v19 > *(v5 + 16))
    {
      goto LABEL_43;
    }

    v40 = v5;
    v20 = v5 + 24 * v19;
    v21 = *(v20 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v20 + 24);
    *(v20 + 24) = 0x8000000000000000;
    sub_21B23A73C(v17, v18, v15, v16, isUniquelyReferenced_nonNull_native);

    *(v20 + 24) = v44;
    v6 = v39;
LABEL_15:
    if (__OFADD__(v6++, 1))
    {
      break;
    }

    v4 = v43;
    v5 = v40;
    if (v43 == a2)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_21B30FB6C(uint64_t result, unint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      result = MEMORY[0x277D84F90];
      goto LABEL_20;
    }

    v3 = *(result + 16);
    v4 = *(result + 24);
    v5 = sub_21B34A574();
    if (v5)
    {
      v6 = sub_21B34A594();
      if (__OFSUB__(v3, v6))
      {
        goto LABEL_24;
      }

      v5 += v3 - v6;
    }

    v7 = __OFSUB__(v4, v3);
    v8 = v4 - v3;
    if (v7)
    {
      goto LABEL_22;
    }

    result = sub_21B34A584();
    if (v5)
    {
LABEL_15:
      if (result >= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = result;
      }

      result = sub_21B30F880(v5, v13);
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v15 = result;
    v16 = a2;
    v17 = BYTE2(a2);
    v18 = BYTE3(a2);
    v19 = BYTE4(a2);
    v20 = BYTE5(a2);
    result = sub_21B30F880(&v15, BYTE6(a2));
LABEL_20:
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = result;
  v8 = (result >> 32) - result;
  if (result >> 32 < result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  v10 = sub_21B34A574();
  if (!v10)
  {
    result = sub_21B34A584();
    goto LABEL_26;
  }

  v11 = v10;
  v12 = sub_21B34A594();
  if (__OFSUB__(v9, v12))
  {
    goto LABEL_23;
  }

  v5 = v9 - v12 + v11;
  result = sub_21B34A584();
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_21B30FD2C()
{
  result = qword_27CD7F528;
  if (!qword_27CD7F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F528);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for INILoadingError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for INILoadingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t DiscontiguousColumnSlice<A>.sum()(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v6 = *v2;
  v7[0] = v3;
  *(v7 + 9) = *(v2 + 25);
  v5[2] = *(a1 + 16);
  v5[3] = a2;
  v5[4] = &v6;
  return sub_21B328CA8(sub_21B3131D4, v5, v3);
}

uint64_t DiscontiguousColumnSlice<A>.mean()(uint64_t a1, uint64_t a2)
{
  return sub_21B30FF74(a1, a2, sub_21B313CB0);
}

{
  return sub_21B315228(a1, a2, &qword_27CD7E110, &qword_21B351988, sub_21B3155BC);
}

uint64_t sub_21B30FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v7 = *v3;
  v8[0] = v4;
  *(v8 + 9) = *(v3 + 25);
  v6[2] = *(a2 + 16);
  v6[3] = a3;
  v6[4] = &v7;
  v6[5] = a1;
  return sub_21B328CA8(sub_21B316584, v6, v4);
}

uint64_t sub_21B30FF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = v3[1];
  v9 = *v3;
  v10[0] = v5;
  *(v10 + 9) = *(v3 + 25);
  v6 = v5;
  v8[2] = *(a1 + 16);
  v8[3] = a2;
  v8[4] = &v9;
  sub_21B34B474();
  return sub_21B328CA8(a3, v8, v6);
}

uint64_t Column<A>.sum()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v7[2] = *(a1 + 16);
  v7[3] = a2;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v5;
  return sub_21B328CA8(sub_21B313DB8, v7, v5);
}

uint64_t sub_21B310088@<X0>(char *a1@<X0>, void *a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a1;
  v53 = a4;
  v54 = a5;
  v6 = *(*(a4 + 16) + 8);
  v7 = *(v6 + 16);
  v59 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = v7;
  v61 = swift_getAssociatedTypeWitness();
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v62 = &v51 - v10;
  v11 = sub_21B34B474();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v51 - v14;
  v58 = a2;
  v60 = *(a2 - 1);
  v16 = v60[8];
  MEMORY[0x28223BE20](v13);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v51 = v19;
  v52 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v51 - v23;
  v55 = *(AssociatedTypeWitness - 8);
  v25 = v55[8];
  v26 = MEMORY[0x28223BE20](v22);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v51 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v51 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = *(v6 + 8);
  v66 = &v51 - v36;
  sub_21B34B864();
  v64 = v34;
  sub_21B34B864();
  (v60[2])(v18, v65, v58);
  v37 = v51;
  sub_21B34AEC4();
  swift_getAssociatedConformanceWitness();
  v65 = v24;
  sub_21B34B4D4();
  v38 = v55 + 6;
  v39 = v55[6];
  if (v39(v15, 1, AssociatedTypeWitness) != 1)
  {
    v57 = v55[4];
    v58 = v55 + 4;
    v56 = (v55 + 1);
    v59 = v39;
    v60 = v38;
    do
    {
      v57(v31, v15, AssociatedTypeWitness);
      sub_21B34B854();
      swift_getAssociatedConformanceWitness();
      sub_21B34BA24();
      v40 = v59;
      sub_21B34B9E4();
      sub_21B34B854();
      v41 = *v56;
      (*v56)(v28, AssociatedTypeWitness);
      v41(v31, AssociatedTypeWitness);
      sub_21B34B4D4();
    }

    while (v40(v15, 1, AssociatedTypeWitness) != 1);
  }

  (*(v52 + 8))(v65, v37);
  sub_21B34B864();
  v42 = *(*(v53 + 8) + 8);
  v43 = v64;
  v44 = sub_21B34AC54();
  v45 = v55;
  v46 = v55[1];
  v46(v31, AssociatedTypeWitness);
  if (v44)
  {
    v47 = 1;
    v48 = v54;
    v49 = v66;
  }

  else
  {
    v48 = v54;
    v49 = v66;
    sub_21B34AA44();
    v47 = 0;
  }

  v46(v43, AssociatedTypeWitness);
  v46(v49, AssociatedTypeWitness);
  return (v45[7])(v48, v47, 1, AssociatedTypeWitness);
}

uint64_t sub_21B3106A0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a6;
  v67 = a5;
  v85 = a1;
  v74 = *(a3 - 1);
  v9 = *(v74 + 64);
  MEMORY[0x28223BE20](a1);
  v73 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v83 = &v63 - v12;
  v13 = a4;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_21B34B474();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v63 - v22;
  v24 = *(v14 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v21);
  v76 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v75 = &v63 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v78 = &v63 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v77 = &v63 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v81 = &v63 - v35;
  MEMORY[0x28223BE20](v34);
  v82 = &v63 - v36;
  v65 = a2;
  if (a2 < 0)
  {
    result = sub_21B34B824();
    __break(1u);
  }

  else
  {
    v37 = v85;
    v38 = v13;
    v39 = v67;
    sub_21B310088(v85, a3, v38, v67, v23);
    v79 = *(v24 + 48);
    v80 = v24 + 48;
    if (v79(v23, 1, v14) == 1)
    {
      (*(v16 + 8))(v23, v15);
      return (*(v24 + 56))(v66, 1, 1, v14);
    }

    else
    {
      v70 = *(v24 + 32);
      v70(v82, v23, v14);
      v69 = *(*(v39 + 16) + 8);
      v68 = *(v69 + 8);
      sub_21B34B864();
      (*(v74 + 16))(v73, v37, a3);
      sub_21B34AEC4();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v42 = 0;
      v71 = v24 + 32;
      v72 = v20;
      v73 = AssociatedConformanceWitness;
      v74 = v24 + 8;
      v43 = -v65;
      v44 = v14;
      v45 = v77;
      while (1)
      {
        sub_21B34B4D4();
        if (v79(v20, 1, v44) == 1)
        {
          break;
        }

        v70(v45, v20, v44);
        v46 = v44;
        v47 = v75;
        sub_21B34B844();
        v48 = v76;
        sub_21B34B844();
        v85 = v43;
        v49 = v78;
        sub_21B34B144();
        v50 = v24;
        v51 = *v74;
        (*v74)(v48, v46);
        v52 = v47;
        v44 = v46;
        v51(v52, v46);
        sub_21B34B854();
        v53 = v49;
        v54 = v85;
        v51(v53, v46);
        v51(v45, v46);
        v24 = v50;
        v20 = v72;
        v43 = v54 + 1;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          break;
        }
      }

      (*(v64 + 8))(v83, AssociatedTypeWitness);
      if (v42 <= v65)
      {
        v62 = *(v24 + 8);
        v62(v81, v44);
        v62(v82, v44);
        return (*(v24 + 56))(v66, 1, 1, v44);
      }

      else
      {
        v56 = v78;
        sub_21B34AA84();
        v57 = v77;
        v58 = v81;
        sub_21B34AA44();
        v59 = v24;
        v60 = *(v24 + 8);
        v60(v56, v44);
        v61 = v66;
        sub_21B34AA34();
        v60(v57, v44);
        v60(v58, v44);
        v60(v82, v44);
        return (*(v59 + 56))(v61, 0, 1, v44);
      }
    }
  }

  return result;
}

uint64_t sub_21B310E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void (*a7)(char *, char *, uint64_t, uint64_t)@<X7>, char *a8@<X8>)
{
  v48 = a6;
  v49 = a7;
  v60 = a1;
  v13 = sub_21B34B474();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v58 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = *(*(a5 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v47 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v46 = &v42 - v24;
  v61 = v25;
  v26 = *(v25 + 56);
  v59 = a8;
  v56 = v26;
  v57 = v25 + 56;
  v26(a8, 1, 1, a5);
  v62 = a2;
  v63 = a3;
  v64 = a2;
  v65 = a3;
  v67 = a4;
  v66 = a4;
  v50 = type metadata accessor for Column();
  result = Column.count.getter(v50);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = result;
    if (result)
    {
      v29 = 0;
      v53 = (v61 + 48);
      v54 = (v14 + 16);
      v45 = v61 + 32;
      v52 = v61 + 16;
      v44 = v61 + 8;
      v30 = v14;
      v31 = (v14 + 8);
      v51 = (v30 + 32);
      v55 = result;
      v43 = v31;
      do
      {
        v64 = v62;
        v65 = v63;
        v66 = v67;
        result = Column.isNil(at:)(v29);
        if ((result & 1) == 0)
        {
          v34 = v59;
          (*v54)(v20, v59, v13);
          if ((*v53)(v20, 1, a5) == 1)
          {
            v32 = *v31;
            (*v31)(v20, v13);
            v33 = v58;
            (*(v61 + 16))(v58, v60 + *(v61 + 72) * v29, a5);
            v32(v34, v13);
          }

          else
          {
            v35 = v61;
            v36 = v46;
            (*(v61 + 32))(v46, v20, a5);
            v37 = v13;
            v38 = v20;
            v39 = v47;
            (*(v35 + 16))(v47, v60 + *(v35 + 72) * v29, a5);
            v33 = v58;
            v49(v36, v39, a5, v48);
            v40 = *(v35 + 8);
            v41 = v39;
            v20 = v38;
            v13 = v37;
            v40(v41, a5);
            v40(v36, a5);
            v31 = v43;
            (*v43)(v34, v13);
          }

          v56(v33, 0, 1, a5);
          result = (*v51)(v34, v33, v13);
          v28 = v55;
        }

        ++v29;
      }

      while (v28 != v29);
    }
  }

  return result;
}

uint64_t sub_21B3112C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t (*a7)(char *, char *, uint64_t, uint64_t)@<X7>, Swift::Int *a8@<X8>, void (*a9)(char *, char *, uint64_t, uint64_t))
{
  v57 = a7;
  v56 = a6;
  v9 = a5;
  v71 = a1;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v55 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v46 - v18;
  v59 = sub_21B34B474();
  v48 = *(v59 - 8);
  v19 = *(v48 + 64);
  v20 = MEMORY[0x28223BE20](v59);
  v70 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = *(v14 + 56);
  v58 = &v46 - v26;
  v68 = v25;
  v69 = v14 + 56;
  v25();
  v77 = a2;
  v78 = a3;
  v80 = a3;
  v76 = a4;
  v79 = a4;
  v75 = type metadata accessor for Column();
  result = Column.count.getter(v75);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v47 = a8;
    if (result)
    {
      v73 = 0;
      v28 = 0;
      v52 = a9;
      v64 = (v14 + 48);
      v65 = (v48 + 16);
      v51 = v14 + 32;
      v63 = v14 + 16;
      v50 = v14 + 8;
      v29 = (v48 + 8);
      v62 = (v48 + 32);
      v72 = 1;
      v30 = v59;
      v31 = v58;
      v66 = v24;
      v53 = a2;
      v67 = v14;
      v74 = result;
      v49 = (v48 + 8);
      do
      {
        v77 = a2;
        v78 = v80;
        v79 = v76;
        if (!Column.isNil(at:)(v28))
        {
          (*v65)(v24, v31, v30);
          if ((*v64)(v24, 1, v9) == 1)
          {
            v32 = *v29;
            (*v29)(v24, v30);
            v33 = v70;
            (*(v14 + 16))(v70, v71 + *(v14 + 72) * v28, v9);
            v32(v31, v30);
            v72 = 0;
            v73 = v28;
          }

          else
          {
            v34 = v54;
            (*(v14 + 32))(v54, v24, v9);
            v35 = *(v14 + 16);
            v60 = v71 + *(v14 + 72) * v28;
            v61 = v35;
            v36 = v9;
            v37 = v55;
            (v35)(v55);
            v38 = v56;
            v39 = v57(v37, v34, v36, v56);
            v40 = *(v67 + 8);
            v40(v37, v36);
            v41 = v73;
            if (v39)
            {
              v41 = v28;
            }

            v73 = v41;
            v72 &= v39 ^ 1;
            v61(v37, v60, v36);
            v33 = v70;
            v42 = v38;
            a2 = v53;
            v30 = v59;
            v52(v34, v37, v36, v42);
            v43 = v37;
            v9 = v36;
            v40(v43, v36);
            v44 = v34;
            v31 = v58;
            v40(v44, v36);
            v29 = v49;
            v14 = v67;
            (*v49)(v31, v30);
          }

          (v68)(v33, 0, 1, v9);
          (*v62)(v31, v33, v30);
          v24 = v66;
        }

        ++v28;
      }

      while (v74 != v28);
    }

    else
    {
      v73 = 0;
      v72 = 1;
      v30 = v59;
      v31 = v58;
    }

    result = (*(v48 + 8))(v31, v30);
    v45 = v47;
    *v47 = v73;
    *(v45 + 8) = v72 & 1;
  }

  return result;
}

uint64_t sub_21B311878@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(char *, char *, uint64_t, uint64_t)@<X5>, char *a6@<X8>)
{
  v44 = a5;
  v43 = a4;
  v59 = a1;
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v58 = v40 - v16;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v42 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v62 = v40 - v21;
  v56 = *(v17 + 56);
  v57 = v17 + 56;
  v56(a6, 1, 1, a3);
  v22 = sub_21B2FB104(*(a2 + 3), *(a2 + 4), *(a2 + 40));
  v23 = *(v22 + 16);
  if (v23)
  {
    v53 = v14;
    v54 = v9;
    v55 = a6;
    v24 = type metadata accessor for DiscontiguousColumnSlice();
    v48 = (v17 + 48);
    v49 = (v10 + 16);
    v40[2] = v17 + 32;
    v47 = v17 + 16;
    v40[1] = v17 + 8;
    v46 = (v10 + 8);
    v45 = (v10 + 32);
    v25 = 32;
    v41 = a2;
    v51 = v22;
    v52 = v17;
    v50 = v24;
    v26 = v55;
    do
    {
      v31 = *(v22 + v25);
      v32 = a2[1];
      v60 = *a2;
      v61[0] = v32;
      *(v61 + 9) = *(a2 + 25);
      if (!DiscontiguousColumnSlice.isNil(at:)(v31))
      {
        v33 = v58;
        v34 = v54;
        (*v49)(v58, v26, v54);
        if ((*v48)(v33, 1, a3) == 1)
        {
          v27 = v33;
          v28 = *v46;
          (*v46)(v27, v34);
          v29 = v59 + *(v52 + 72) * v31;
          v30 = v53;
          (*(v52 + 16))(v53, v29, a3);
          v28(v26, v34);
        }

        else
        {
          v35 = a3;
          v36 = v52;
          (*(v52 + 32))(v62, v33, v35);
          v37 = v42;
          (*(v36 + 16))(v42, v59 + *(v36 + 72) * v31, v35);
          v30 = v53;
          v44(v62, v37, v35, v43);
          v38 = *(v36 + 8);
          a3 = v35;
          a2 = v41;
          v38(v37, a3);
          v38(v62, a3);
          (*v46)(v26, v34);
        }

        v56(v30, 0, 1, a3);
        (*v45)(v26, v30, v34);
        v22 = v51;
      }

      v25 += 8;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_21B311D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(char *, char *, uint64_t, uint64_t)@<X5>, void (*a6)(char *, char *, uint64_t, uint64_t)@<X6>, Swift::Int *a7@<X8>)
{
  v57 = a6;
  v56 = a5;
  v70 = a1;
  v71 = a4;
  v7 = a3;
  v52 = a7;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v51 - v13;
  v77 = sub_21B34B474();
  v14 = *(v77 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v77);
  v68 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v73 = v9;
  v23 = 1;
  v66 = *(v9 + 56);
  v67 = v9 + 56;
  v66(&v51 - v21, 1, 1, v7);
  v24 = *(a2 + 24);
  v25 = *(a2 + 32);
  v76 = a2;
  v26 = sub_21B2FB104(v24, v25, *(a2 + 40));
  v27 = *(v26 + 16);
  v51 = v26;
  if (v27)
  {
    v28 = (v26 + 32);
    v29 = type metadata accessor for DiscontiguousColumnSlice();
    v74 = 0;
    v75 = v29;
    v63 = (v14 + 16);
    v62 = (v73 + 48);
    v54 = v73 + 32;
    v72 = v73 + 16;
    v53 = v73 + 8;
    v61 = (v14 + 8);
    v60 = (v14 + 32);
    v64 = v20;
    v65 = v14;
    do
    {
      v30 = v22;
      v31 = v28 + 1;
      v32 = *v28;
      v80 = v31;
      v33 = v76[1];
      v78 = *v76;
      *v79 = v33;
      *&v79[9] = *(v76 + 25);
      if (!DiscontiguousColumnSlice.isNil(at:)(v32))
      {
        v34 = v64;
        (*v63)(v64, v22, v77);
        if ((*v62)(v34, 1, v7) == 1)
        {
          v35 = *v61;
          v36 = v34;
          v37 = v77;
          (*v61)(v36, v77);
          v38 = v68;
          (*(v73 + 16))(v68, v70 + *(v73 + 72) * v32, v7);
          v35(v22, v37);
          v23 = 0;
          v74 = v32;
          v39 = v38;
        }

        else
        {
          v40 = v73;
          v41 = v69;
          (*(v73 + 32))(v69, v34, v7);
          v58 = v70 + *(v40 + 72) * v32;
          v59 = *(v40 + 16);
          v42 = v7;
          v43 = v55;
          v59(v55);
          v44 = v56(v43, v41, v42, v71);
          v45 = *(v73 + 8);
          v45(v43, v42);
          v46 = v74;
          if (v44)
          {
            v46 = v32;
          }

          v74 = v46;
          v23 &= v44 ^ 1;
          (v59)(v43, v58, v42);
          v39 = v68;
          v47 = v69;
          v57(v69, v43, v42, v71);
          v48 = v43;
          v7 = v42;
          v22 = v30;
          v45(v48, v7);
          v45(v47, v7);
          (*v61)(v30, v77);
        }

        v66(v39, 0, 1, v7);
        (*v60)(v22, v39, v77);
        v14 = v65;
      }

      --v27;
      v28 = v80;
    }

    while (v27);
  }

  else
  {
    v74 = 0;
  }

  result = (*(v14 + 8))(v22, v77);
  v50 = v52;
  *v52 = v74;
  *(v50 + 8) = v23 & 1;
  return result;
}

uint64_t sub_21B31230C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(_BYTE *, _BYTE *, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v47 = a5;
  v46 = a4;
  v57 = a1;
  v9 = sub_21B34B474();
  v53 = *(v9 - 8);
  v10 = *(v53 + 8);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38[-v14];
  v16 = *(*(a3 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v45 = &v38[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v44 = &v38[-v19];
  v58 = v20;
  v21 = *(v20 + 56);
  v56 = a6;
  v54 = v20 + 56;
  v21(a6, 1, 1, a3);
  v22 = a2[1];
  v61 = *a2;
  v62 = v22;
  v63 = *(a2 + 4);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v25 = v59;
  v24 = v60;
  if (v59 == v60)
  {
    return result;
  }

  if (v60 < v59)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v59 >= v60)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v64 = type metadata accessor for ColumnSlice();
  v26 = v53;
  v50 = (v58 + 48);
  v51 = (v53 + 16);
  v41 = v58 + 32;
  v49 = v58 + 16;
  v40 = v58 + 8;
  v27 = (v53 + 8);
  v48 = (v53 + 32);
  v53 = v15;
  v43 = a2;
  v42 = v21;
  v52 = v24;
  v39 = (v26 + 8);
  do
  {
    v31 = a2[1];
    v61 = *a2;
    v62 = v31;
    v63 = *(a2 + 4);
    result = ColumnSlice.isNil(at:)(v25);
    if ((result & 1) == 0)
    {
      v32 = v56;
      (*v51)(v15, v56, v9);
      if ((*v50)(v15, 1, a3) == 1)
      {
        v28 = *v27;
        (*v27)(v15, v9);
        v29 = v9;
        v30 = v55;
        (*(v58 + 16))(v55, v57 + *(v58 + 72) * v25, a3);
        v28(v32, v29);
      }

      else
      {
        v33 = v58;
        v34 = v44;
        (*(v58 + 32))(v44, v15, a3);
        v35 = v45;
        (*(v33 + 16))(v45, v57 + *(v33 + 72) * v25, a3);
        v29 = v9;
        v30 = v55;
        v47(v34, v35, a3, v46);
        v36 = *(v33 + 8);
        a2 = v43;
        v36(v35, a3);
        v37 = v34;
        v21 = v42;
        v36(v37, a3);
        v27 = v39;
        (*v39)(v32, v29);
      }

      v21(v30, 0, 1, a3);
      result = (*v48)(v32, v30, v29);
      v9 = v29;
      v24 = v52;
      v15 = v53;
    }

    ++v25;
  }

  while (v24 != v25);
  return result;
}

uint64_t sub_21B312824@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(char *, char *, uint64_t, uint64_t)@<X5>, void (*a6)(char *, char *, uint64_t, uint64_t)@<X6>, Swift::Int *a7@<X8>)
{
  v57 = a6;
  v56 = a5;
  v55 = a4;
  v7 = a3;
  v71 = a1;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v54 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v46 - v14;
  v15 = sub_21B34B474();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v70 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v21 = v10;
  v22 = *(v10 + 56);
  v73 = 1;
  v24 = &v46 - v23;
  v68 = v22;
  v69 = v10 + 56;
  v22();
  v25 = a2[1];
  v77 = *a2;
  v78 = v25;
  v79 = *(a2 + 4);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v28 = v75;
  v27 = v76;
  v47 = a7;
  if (v75 == v76)
  {
    v72 = 0;
LABEL_3:
    result = (*(v48 + 8))(v24, v15);
    v29 = v47;
    *v47 = v72;
    *(v29 + 8) = v73 & 1;
    return result;
  }

  if (v76 < v75)
  {
    __break(1u);
  }

  else if (v75 < v76)
  {
    v74 = type metadata accessor for ColumnSlice();
    v72 = 0;
    v65 = (v21 + 48);
    v66 = (v48 + 16);
    v50 = v21 + 32;
    v64 = v21 + 16;
    v49 = v21 + 8;
    v62 = (v48 + 32);
    v63 = (v48 + 8);
    v73 = 1;
    v30 = v58;
    v52 = a2;
    v51 = v15;
    v67 = v21;
    v80 = v27;
    v61 = v24;
    do
    {
      v33 = a2[1];
      v77 = *a2;
      v78 = v33;
      v79 = *(a2 + 4);
      if (!ColumnSlice.isNil(at:)(v28))
      {
        v34 = v70;
        (*v66)(v70, v24, v15);
        if ((*v65)(v34, 1, v7) == 1)
        {
          v31 = *v63;
          (*v63)(v34, v15);
          (*(v21 + 16))(v30, v71 + *(v21 + 72) * v28, v7);
          v32 = v61;
          v31(v61, v15);
          v73 = 0;
          v72 = v28;
          v24 = v32;
        }

        else
        {
          v35 = v34;
          v36 = v21;
          v37 = *(v21 + 32);
          v38 = v53;
          v37(v53, v35, v7);
          v59 = v71 + *(v36 + 72) * v28;
          v60 = *(v36 + 16);
          v39 = v7;
          v40 = v54;
          v60(v54);
          v41 = v55;
          v42 = v56(v40, v38, v39, v55);
          v43 = *(v67 + 8);
          v43(v40, v39);
          v44 = v72;
          if (v42)
          {
            v44 = v28;
          }

          v72 = v44;
          v73 &= v42 ^ 1;
          (v60)(v40, v59, v39);
          v30 = v58;
          a2 = v52;
          v57(v38, v40, v39, v41);
          v45 = v40;
          v7 = v39;
          v43(v45, v39);
          v43(v38, v39);
          v21 = v67;
          v15 = v51;
          v24 = v61;
          (*v63)(v61, v51);
        }

        (v68)(v30, 0, 1, v7);
        (*v62)(v24, v30, v15);
      }

      ++v28;
    }

    while (v80 != v28);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B312E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[4] = v14;
  v22 = v15;
  sub_21B34B864();
  v26 = a3;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v16 = type metadata accessor for Column();
  result = Column.count.getter(v16);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    if (result)
    {
      v19 = 0;
      v20[2] = v10 + 8;
      v20[3] = v10 + 16;
      do
      {
        v23 = v26;
        v24 = a4;
        v25 = a5;
        result = Column.isNil(at:)(v19);
        if ((result & 1) == 0)
        {
          (*(v10 + 16))(v13, v21 + *(v10 + 72) * v19, a6);
          sub_21B34B854();
          result = (*(v10 + 8))(v13, a6);
        }

        ++v19;
      }

      while (v18 != v19);
    }
  }

  return result;
}

uint64_t sub_21B313008(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v22 = a1;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = v10;
  v23 = v11;
  sub_21B34B864();
  v12 = sub_21B2FB104(*(a3 + 3), *(a3 + 4), *(a3 + 40));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12;
    v26 = type metadata accessor for DiscontiguousColumnSlice();
    v15 = v14;
    v21[1] = v6 + 8;
    v21[2] = v6 + 16;
    v16 = 32;
    do
    {
      v17 = v15;
      v18 = *(v15 + v16);
      v19 = a3[1];
      v24 = *a3;
      v25[0] = v19;
      *(v25 + 9) = *(a3 + 25);
      if (!DiscontiguousColumnSlice.isNil(at:)(v18))
      {
        (*(v6 + 16))(v9, v22 + *(v6 + 72) * v18, a4);
        sub_21B34B854();
        (*(v6 + 8))(v9, a4);
      }

      v16 += 8;
      --v13;
      v15 = v17;
    }

    while (v13);
  }
}

uint64_t ColumnSlice<A>.sum()(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v15[0] = *v2;
  v15[1] = v4;
  v16 = *(v2 + 4);
  v5 = v2[1];
  v12 = *v2;
  v13 = v5;
  v14 = *(v2 + 4);
  v6 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v7 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v11, v7);
  v8 = v11[2];

  v10[2] = v6;
  v10[3] = a2;
  v10[4] = v15;
  sub_21B328CA8(sub_21B314050, v10, v8);
}

uint64_t sub_21B3132E0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v18 = a1;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[2] = v10;
  v24 = v11;
  sub_21B34B864();
  v12 = a3[1];
  v21 = *a3;
  v22 = v12;
  v23 = *(a3 + 4);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v14 = v19;
  v15 = v20;
  if (v19 == v20)
  {
    return result;
  }

  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v19 >= v20)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  type metadata accessor for ColumnSlice();
  v17[1] = v6 + 16;
  do
  {
    v16 = a3[1];
    v21 = *a3;
    v22 = v16;
    v23 = *(a3 + 4);
    result = ColumnSlice.isNil(at:)(v14);
    if ((result & 1) == 0)
    {
      (*(v6 + 16))(v9, v18 + *(v6 + 72) * v14, a4);
      sub_21B34B854();
      result = (*(v6 + 8))(v9, a4);
    }

    ++v14;
  }

  while (v15 != v14);
  return result;
}

uint64_t Column<A>.mean()(uint64_t a1, uint64_t a2)
{
  return sub_21B3134FC(a1, a2, sub_21B314070);
}

{
  return sub_21B314B6C(a1, a2, &qword_27CD7E110, &qword_21B351988, sub_21B314ED4);
}

uint64_t sub_21B3134FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v9[2] = *(a1 + 16);
  v9[3] = a2;
  v9[4] = v5;
  v9[5] = v6;
  v9[6] = v7;
  sub_21B34B474();
  return sub_21B328CA8(a3, v9, v7);
}

uint64_t sub_21B313574@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = result;
    v26 = a8;
    v27 = a7;
    v25 = a6;
    if (a2)
    {
      type metadata accessor for Column();
      v12 = 0;
      v13 = MEMORY[0x277D84F90];
      v28 = a5;
      do
      {
        v29[0] = a3;
        v29[1] = a4;
        v29[2] = a5;
        result = Column.isNil(at:)(v12);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v30 = v13;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v13 + 16) + 1, 1);
            v13 = v30;
          }

          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v15 >= v14 >> 1)
          {
            result = sub_21B254034((v14 > 1), v15 + 1, 1);
            v13 = v30;
          }

          *(v13 + 16) = v15 + 1;
          *(v13 + 8 * v15 + 32) = v12;
          a5 = v28;
        }

        ++v12;
      }

      while (a2 != v12);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v29[0] = v13;
    MEMORY[0x28223BE20](result);
    v16 = v27;
    v23[2] = v25;
    v23[3] = v27;
    v23[4] = v24;
    v23[5] = a2;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v18 = sub_21B26F384();
    v20 = sub_21B2FCC28(sub_21B26F44C, v23, v17, v25, MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v19);

    v29[0] = v20;
    v21 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B310088(v29, v21, WitnessTable, v16, v26);
  }

  return result;
}

uint64_t Column<A>.standardDeviation(deltaDegreesOfFreedom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v8[2] = *(a2 + 16);
  v8[3] = a3;
  v8[4] = v4;
  v8[5] = v5;
  v8[6] = v6;
  v8[7] = a1;
  sub_21B34B474();
  return sub_21B328CA8(sub_21B31409C, v8, v6);
}

{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v8[2] = *(a2 + 16);
  v8[3] = a3;
  v8[4] = v4;
  v8[5] = v5;
  v8[6] = v6;
  v8[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
  sub_21B328CA8(sub_21B3151DC, v8, v6);
  return v8[10];
}

uint64_t sub_21B313828@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = result;
    v27 = a9;
    v28 = a6;
    v29 = a8;
    v26 = a7;
    if (a2)
    {
      type metadata accessor for Column();
      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      v30 = a5;
      do
      {
        v31[0] = a3;
        v31[1] = a4;
        v31[2] = a5;
        result = Column.isNil(at:)(v13);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v32 = v14;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v14 + 16) + 1, 1);
            v14 = v32;
          }

          v16 = *(v14 + 16);
          v15 = *(v14 + 24);
          if (v16 >= v15 >> 1)
          {
            result = sub_21B254034((v15 > 1), v16 + 1, 1);
            v14 = v32;
          }

          *(v14 + 16) = v16 + 1;
          *(v14 + 8 * v16 + 32) = v13;
          a5 = v30;
        }

        ++v13;
      }

      while (a2 != v13);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v31[0] = v14;
    MEMORY[0x28223BE20](result);
    v17 = v29;
    v24[2] = v26;
    v24[3] = v29;
    v24[4] = v25;
    v24[5] = a2;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v19 = sub_21B26F384();
    v21 = sub_21B2FCC28(sub_21B26F44C, v24, v18, v26, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);

    v31[0] = v21;
    v22 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B3106A0(v31, v28, v22, WitnessTable, v17, v27);
  }

  return result;
}

uint64_t sub_21B313A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a2;
  v29 = a6;
  v30 = a5;
  v27 = a1;
  result = sub_21B2FB104(*(a3 + 3), *(a3 + 4), *(a3 + 40));
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v12 = result + 32;
    v13 = MEMORY[0x277D84F90];
    v31 = result + 32;
    v32 = a4;
    while (v11 < *(v9 + 16))
    {
      v16 = *(v12 + 8 * v11);
      v17 = a3[1];
      v33 = *a3;
      v34[0] = v17;
      *(v34 + 9) = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice();
      result = DiscontiguousColumnSlice.isNil(at:)(v16);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v35 = v13;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v13 + 16) + 1, 1);
          v13 = v35;
        }

        v15 = *(v13 + 16);
        v14 = *(v13 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_21B254034((v14 > 1), v15 + 1, 1);
          v13 = v35;
        }

        *(v13 + 16) = v15 + 1;
        *(v13 + 8 * v15 + 32) = v16;
        v12 = v31;
        a4 = v32;
      }

      if (v10 == ++v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_12:

    *&v33 = v13;
    MEMORY[0x28223BE20](v18);
    v19 = v30;
    v26[2] = a4;
    v26[3] = v30;
    v26[4] = v27;
    v26[5] = v28;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v21 = sub_21B26F384();
    v23 = sub_21B2FCC28(sub_21B26F44C, v26, v20, a4, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);

    *&v33 = v23;
    v24 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B310088(&v33, v24, WitnessTable, v19, v29);
  }

  return result;
}

uint64_t DiscontiguousColumnSlice<A>.standardDeviation(deltaDegreesOfFreedom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v8 = *v3;
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 25);
  v5 = v4;
  v7[2] = *(a2 + 16);
  v7[3] = a3;
  v7[4] = &v8;
  v7[5] = a1;
  sub_21B34B474();
  return sub_21B328CA8(sub_21B3143A8, v7, v5);
}

{
  v4 = v3[1];
  v8 = *v3;
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 25);
  v5 = v4;
  v7[2] = *(a2 + 16);
  v7[3] = a3;
  v7[4] = &v8;
  v7[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
  sub_21B328CA8(sub_21B3158E8, v7, v5);
  return v7[8];
}

uint64_t sub_21B314150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a2;
  v31 = a4;
  v32 = a6;
  v28 = a1;
  v30 = a7;
  result = sub_21B2FB104(*(a3 + 3), *(a3 + 4), *(a3 + 40));
  v10 = result;
  v11 = *(result + 16);
  if (v11)
  {
    v12 = 0;
    v13 = result + 32;
    v14 = MEMORY[0x277D84F90];
    v33 = result + 32;
    v34 = a5;
    while (v12 < *(v10 + 16))
    {
      v17 = *(v13 + 8 * v12);
      v18 = a3[1];
      v35 = *a3;
      v36[0] = v18;
      *(v36 + 9) = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice();
      result = DiscontiguousColumnSlice.isNil(at:)(v17);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v37 = v14;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v14 + 16) + 1, 1);
          v14 = v37;
        }

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_21B254034((v15 > 1), v16 + 1, 1);
          v14 = v37;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v17;
        v13 = v33;
        a5 = v34;
      }

      if (v11 == ++v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_12:

    *&v35 = v14;
    MEMORY[0x28223BE20](v19);
    v20 = v32;
    v27[2] = a5;
    v27[3] = v32;
    v27[4] = v28;
    v27[5] = v29;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v22 = sub_21B26F384();
    v24 = sub_21B2FCC28(sub_21B26F44C, v27, v21, a5, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);

    *&v35 = v24;
    v25 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B3106A0(&v35, v31, v25, WitnessTable, v20, v30);
  }

  return result;
}

uint64_t ColumnSlice<A>.mean()(uint64_t a1, uint64_t a2)
{
  return sub_21B3143E0(a1, a2, sub_21B31476C);
}

{
  return sub_21B315930(a1, a2, &qword_27CD7E110, &qword_21B351988, sub_21B315D80);
}

uint64_t sub_21B3143E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[1];
  v17[0] = *v3;
  v17[1] = v6;
  v18 = *(v3 + 4);
  v7 = v3[1];
  v14 = *v3;
  v15 = v7;
  v16 = *(v3 + 4);
  v8 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v9 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v13, v9);
  v10 = v13[2];

  v12[2] = v8;
  v12[3] = a2;
  v12[4] = v17;
  sub_21B34B474();
  sub_21B328CA8(a3, v12, v10);
}

uint64_t sub_21B3144D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a1;
  v11 = a3[1];
  v31 = *a3;
  v32 = v11;
  v33 = *(a3 + 4);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v13 = v29;
  v14 = v30;
  v28 = a6;
  v27 = a2;
  if (v29 == v30)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_3:
    *&v34[0] = v15;
    MEMORY[0x28223BE20](result);
    v25[2] = a4;
    v25[3] = a5;
    v25[4] = v26;
    v25[5] = v27;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v17 = sub_21B26F384();
    v19 = sub_21B2FCC28(sub_21B26F44C, v25, v16, a4, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v18);

    *&v34[0] = v19;
    v20 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B310088(v34, v20, WitnessTable, a5, v28);
  }

  else
  {
    if (v30 >= v29)
    {
      v15 = MEMORY[0x277D84F90];
      while (v14 != v13)
      {
        v24 = a3[1];
        v34[0] = *a3;
        v34[1] = v24;
        v35 = *(a3 + 4);
        type metadata accessor for ColumnSlice();
        result = ColumnSlice.isNil(at:)(v13);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v36 = v15;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v15 + 16) + 1, 1);
            v15 = v36;
          }

          v23 = *(v15 + 16);
          v22 = *(v15 + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_21B254034((v22 > 1), v23 + 1, 1);
            v15 = v36;
          }

          *(v15 + 16) = v23 + 1;
          *(v15 + 8 * v23 + 32) = v13;
        }

        if (v14 == ++v13)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t ColumnSlice<A>.standardDeviation(deltaDegreesOfFreedom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  v17[0] = *v3;
  v17[1] = v6;
  v18 = *(v3 + 4);
  v7 = v3[1];
  v14 = *v3;
  v15 = v7;
  v16 = *(v3 + 4);
  v8 = *(a2 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v9 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v13, v9);
  v10 = v13[2];

  v12[2] = v8;
  v12[3] = a3;
  v12[4] = v17;
  v12[5] = a1;
  sub_21B34B474();
  sub_21B328CA8(sub_21B314B24, v12, v10);
}

{
  v6 = v3[1];
  v18[0] = *v3;
  v18[1] = v6;
  v19 = *(v3 + 4);
  v7 = v3[1];
  v14 = *v3;
  v15 = v7;
  v16 = *(v3 + 4);
  v8 = *(a2 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v9 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v13, v9);
  v10 = v13[2];

  v12[2] = v8;
  v12[3] = a3;
  v12[4] = v18;
  v12[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
  sub_21B328CA8(sub_21B31615C, v12, v10);

  return v17;
}

uint64_t sub_21B314890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a2;
  v26 = a1;
  v28 = a7;
  v11 = a3[1];
  v32 = *a3;
  v33 = v11;
  v34 = *(a3 + 4);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v13 = v30;
  v14 = v31;
  v29 = a4;
  if (v30 == v31)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_3:
    *&v35[0] = v15;
    MEMORY[0x28223BE20](result);
    v25[2] = a5;
    v25[3] = a6;
    v25[4] = v26;
    v25[5] = v27;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v17 = sub_21B26F384();
    v19 = sub_21B2FCC28(sub_21B26F36C, v25, v16, a5, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v18);

    *&v35[0] = v19;
    v20 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B3106A0(v35, v29, v20, WitnessTable, a6, v28);
  }

  else
  {
    if (v31 >= v30)
    {
      v15 = MEMORY[0x277D84F90];
      while (v14 != v13)
      {
        v24 = a3[1];
        v35[0] = *a3;
        v35[1] = v24;
        v36 = *(a3 + 4);
        type metadata accessor for ColumnSlice();
        result = ColumnSlice.isNil(at:)(v13);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v37 = v15;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v15 + 16) + 1, 1);
            v15 = v37;
          }

          v23 = *(v15 + 16);
          v22 = *(v15 + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_21B254034((v22 > 1), v23 + 1, 1);
            v15 = v37;
          }

          *(v15 + 16) = v23 + 1;
          *(v15 + 8 * v23 + 32) = v13;
        }

        if (v14 == ++v13)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B314B6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v11[2] = *(a1 + 16);
  v11[3] = a2;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_21B328CA8(a5, v11, v9);
  return v11[8];
}

uint64_t sub_21B314BE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v6 = a5;
    v8 = MEMORY[0x277D84F90];
    if (a1)
    {
      type metadata accessor for Column();
      v12 = 0;
      v34 = a4;
      do
      {
        v37 = a2;
        v38 = a3;
        v39 = a4;
        if (!Column.isNil(at:)(v12))
        {
          v40 = v8;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21B254034(0, *(v8 + 16) + 1, 1);
            v8 = v40;
          }

          v14 = *(v8 + 16);
          v13 = *(v8 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_21B254034((v13 > 1), v14 + 1, 1);
            v8 = v40;
          }

          *(v8 + 16) = v14 + 1;
          *(v8 + 8 * v14 + 32) = v12;
          a4 = v34;
          v6 = a5;
        }

        ++v12;
      }

      while (a1 != v12);
    }

    v15 = *(v8 + 16);
    if (v15)
    {
      v37 = MEMORY[0x277D84F90];
      result = sub_21B2542A8(0, v15, 0);
      v17 = 0;
      v18 = v37;
      do
      {
        if (v17 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v36 = *(v8 + 8 * v17 + 32);
        result = sub_21B31617C(&v36, v6, &v40);
        v19 = v40;
        v37 = v18;
        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_21B2542A8((v20 > 1), v21 + 1, 1);
          v6 = a5;
          v18 = v37;
        }

        ++v17;
        *(v18 + 16) = v21 + 1;
        *(v18 + 8 * v21 + 32) = v19;
      }

      while (v15 != v17);

      v22 = *(v18 + 16);
      if (!v22)
      {
        goto LABEL_21;
      }
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
      v22 = *(MEMORY[0x277D84F90] + 16);
      if (!v22)
      {
LABEL_21:

        goto LABEL_28;
      }
    }

    if (v22 == 1)
    {
      v23 = 0;
      v24 = 0.0;
      v25 = 0.0;
    }

    else
    {
      v23 = v22 & 0x7FFFFFFFFFFFFFFELL;
      v26 = (v18 + 40);
      v24 = 0.0;
      v27 = v22 & 0x7FFFFFFFFFFFFFFELL;
      v25 = 0.0;
      do
      {
        v24 = v24 + 1.0 + 1.0;
        v25 = v25 + *(v26 - 1) + *v26;
        v26 += 2;
        v27 -= 2;
      }

      while (v27);
      if (v22 == v23)
      {
LABEL_27:

        if (v24 != 0.0)
        {
          v31 = 0;
          v32 = v25 / v24;
          goto LABEL_30;
        }

LABEL_28:
        v31 = 1;
        v32 = 0.0;
LABEL_30:
        *a6 = v32;
        *(a6 + 8) = v31;
        return result;
      }
    }

    v28 = v22 - v23;
    v29 = (v18 + 8 * v23 + 32);
    do
    {
      v30 = *v29++;
      v25 = v25 + v30;
      v24 = v24 + 1.0;
      --v28;
    }

    while (v28);
    goto LABEL_27;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21B314F88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  if (a1 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v8 = MEMORY[0x277D84F90];
  if (a1)
  {
    type metadata accessor for Column();
    v12 = 0;
    v29 = a4;
    do
    {
      v32 = a2;
      v33 = a3;
      v34 = a4;
      if (!Column.isNil(at:)(v12))
      {
        v31 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21B254034(0, *(v8 + 16) + 1, 1);
          v8 = v31;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_21B254034((v13 > 1), v14 + 1, 1);
          v8 = v31;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 8 * v14 + 32) = v12;
        a4 = v29;
      }

      ++v12;
    }

    while (a1 != v12);
  }

  v15 = *(v8 + 16);
  if (v15)
  {
    v32 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v15, 0);
    v17 = 0;
    v18 = v32;
    v19 = a6;
    while (v17 < *(v8 + 16))
    {
      v30 = *(v8 + 8 * v17 + 32);
      result = sub_21B31617C(&v30, v19, &v31);
      v20 = v31;
      v32 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_21B2542A8((v21 > 1), v22 + 1, 1);
        v19 = a6;
        v18 = v32;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      *(v18 + 8 * v22 + 32) = v20;
      if (v15 == v17)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_19:
  v23 = sub_21B2F55E8(v18, a5);
  v25 = v24;

  *a7 = v23;
  *(a7 + 8) = v25 & 1;
  return result;
}

uint64_t sub_21B315228(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v7 = v5[1];
  v11 = *v5;
  v12[0] = v7;
  *(v12 + 9) = *(v5 + 25);
  v8 = v7;
  v10[2] = *(a1 + 16);
  v10[3] = a2;
  v10[4] = &v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_21B328CA8(a5, v10, v8);
  return v10[6];
}

uint64_t sub_21B3152B0@<X0>(__int128 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = sub_21B2FB104(*(a1 + 3), *(a1 + 4), *(a1 + 40));
  v6 = result;
  v7 = *(result + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = 0;
    v10 = result + 32;
    v33 = result + 32;
    v34 = *(result + 16);
    while (v9 < *(v6 + 16))
    {
      v13 = *(v10 + 8 * v9);
      v14 = a1[1];
      v36 = *a1;
      v37[0] = v14;
      *(v37 + 9) = *(a1 + 25);
      type metadata accessor for DiscontiguousColumnSlice();
      result = DiscontiguousColumnSlice.isNil(at:)(v13);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v38 = v8;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v8 + 16) + 1, 1);
          v8 = v38;
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_21B254034((v11 > 1), v12 + 1, 1);
          v8 = v38;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v13;
        v10 = v33;
        v7 = v34;
      }

      if (v7 == ++v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_11:

  v15 = *(v8 + 16);
  if (!v15)
  {

    v17 = MEMORY[0x277D84F90];
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (!v21)
    {
LABEL_21:

      goto LABEL_28;
    }

LABEL_18:
    if (v21 == 1)
    {
      v22 = 0;
      v23 = 0.0;
      v24 = 0.0;
    }

    else
    {
      v22 = v21 & 0x7FFFFFFFFFFFFFFELL;
      v25 = (v17 + 40);
      v23 = 0.0;
      v26 = v21 & 0x7FFFFFFFFFFFFFFELL;
      v24 = 0.0;
      do
      {
        v23 = v23 + 1.0 + 1.0;
        v24 = v24 + *(v25 - 1) + *v25;
        v25 += 2;
        v26 -= 2;
      }

      while (v26);
      if (v21 == v22)
      {
LABEL_27:

        if (v23 != 0.0)
        {
          v30 = 0;
          v31 = v24 / v23;
          goto LABEL_30;
        }

LABEL_28:
        v30 = 1;
        v31 = 0.0;
LABEL_30:
        *a3 = v31;
        *(a3 + 8) = v30;
        return result;
      }
    }

    v27 = v21 - v22;
    v28 = (v17 + 8 * v22 + 32);
    do
    {
      v29 = *v28++;
      v24 = v24 + v29;
      v23 = v23 + 1.0;
      --v27;
    }

    while (v27);
    goto LABEL_27;
  }

  *&v36 = MEMORY[0x277D84F90];
  result = sub_21B2542A8(0, v15, 0);
  v16 = 0;
  v17 = v36;
  while (v16 < *(v8 + 16))
  {
    v35 = *(v8 + 8 * v16 + 32);
    result = sub_21B31617C(&v35, a2, &v38);
    v18 = v38;
    *&v36 = v17;
    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_21B2542A8((v19 > 1), v20 + 1, 1);
      v17 = v36;
    }

    ++v16;
    *(v17 + 16) = v20 + 1;
    *(v17 + 8 * v20 + 32) = v18;
    if (v15 == v16)
    {

      v21 = *(v17 + 16);
      if (!v21)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21B315678@<X0>(__int128 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  result = sub_21B2FB104(*(a1 + 3), *(a1 + 4), *(a1 + 40));
  v7 = result;
  v8 = *(result + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v11 = result + 32;
    v27 = result + 32;
    v28 = *(result + 16);
    while (v10 < *(v7 + 16))
    {
      v14 = *(v11 + 8 * v10);
      v15 = a1[1];
      v31 = *a1;
      v32[0] = v15;
      *(v32 + 9) = *(a1 + 25);
      type metadata accessor for DiscontiguousColumnSlice();
      result = DiscontiguousColumnSlice.isNil(at:)(v14);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v30 = v9;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v9 + 16) + 1, 1);
          v9 = v30;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_21B254034((v12 > 1), v13 + 1, 1);
          v9 = v30;
        }

        *(v9 + 16) = v13 + 1;
        *(v9 + 8 * v13 + 32) = v14;
        v11 = v27;
        v8 = v28;
      }

      if (v8 == ++v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_11:

  v16 = *(v9 + 16);
  if (v16)
  {
    *&v31 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v16, 0);
    v17 = 0;
    v18 = v31;
    while (v17 < *(v9 + 16))
    {
      v29 = *(v9 + 8 * v17 + 32);
      result = sub_21B31617C(&v29, a3, &v30);
      v19 = v30;
      *&v31 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_21B2542A8((v20 > 1), v21 + 1, 1);
        v18 = v31;
      }

      ++v17;
      *(v18 + 16) = v21 + 1;
      *(v18 + 8 * v21 + 32) = v19;
      if (v16 == v17)
      {

        goto LABEL_19;
      }
    }

LABEL_21:
    __break(1u);
    return result;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_19:
  v22 = sub_21B2F55E8(v18, a2);
  v24 = v23;

  *a4 = v22;
  *(a4 + 8) = v24 & 1;
  return result;
}

uint64_t sub_21B315930(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v10 = v5[1];
  v22[0] = *v5;
  v22[1] = v10;
  v23 = *(v5 + 4);
  v11 = v5[1];
  v18 = *v5;
  v19 = v11;
  v20 = *(v5 + 4);
  v12 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v13 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v17, v13);
  v14 = v17[2];

  v16[2] = v12;
  v16[3] = a2;
  v16[4] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_21B328CA8(a5, v16, v14);

  return v21;
}

uint64_t sub_21B315A38@<X0>(__int128 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v33[0] = *a1;
  v33[1] = v5;
  v34 = *(a1 + 4);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v7 = v31;
  v8 = v32;
  v9 = MEMORY[0x277D84F90];
  if (v31 != v32)
  {
    if (v32 >= v31)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_13:
    v21 = *(v9 + 16);
    v20 = *(v9 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_21B254034((v20 > 1), v21 + 1, 1);
      v9 = v38;
    }

    *(v9 + 16) = v21 + 1;
    *(v9 + 8 * v21 + 32) = v7;
    while (v8 != ++v7)
    {
LABEL_17:
      if (v8 == v7)
      {
LABEL_33:
        __break(1u);
        return result;
      }

      v22 = a1[1];
      v35 = *a1;
      v36 = v22;
      v37 = *(a1 + 4);
      type metadata accessor for ColumnSlice();
      result = ColumnSlice.isNil(at:)(v7);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v38 = v9;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v9 + 16) + 1, 1);
          v9 = v38;
        }

        goto LABEL_13;
      }
    }
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    *&v35 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v10, 0);
    v11 = 0;
    v12 = v35;
    do
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v31 = *(v9 + 8 * v11 + 32);
      result = sub_21B31617C(&v31, a2, v33);
      v13 = *&v33[0];
      *&v35 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_21B2542A8((v14 > 1), v15 + 1, 1);
        v12 = v35;
      }

      ++v11;
      *(v12 + 16) = v15 + 1;
      *(v12 + 8 * v15 + 32) = v13;
    }

    while (v10 != v11);

    v16 = *(v12 + 16);
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
    v16 = *(MEMORY[0x277D84F90] + 16);
    if (!v16)
    {
LABEL_22:

      goto LABEL_29;
    }
  }

  if (v16 == 1)
  {
    v17 = 0;
    v18 = 0.0;
    v19 = 0.0;
LABEL_26:
    v25 = v16 - v17;
    v26 = (v12 + 8 * v17 + 32);
    do
    {
      v27 = *v26++;
      v19 = v19 + v27;
      v18 = v18 + 1.0;
      --v25;
    }

    while (v25);
    goto LABEL_28;
  }

  v17 = v16 & 0x7FFFFFFFFFFFFFFELL;
  v23 = (v12 + 40);
  v18 = 0.0;
  v24 = v16 & 0x7FFFFFFFFFFFFFFELL;
  v19 = 0.0;
  do
  {
    v18 = v18 + 1.0 + 1.0;
    v19 = v19 + *(v23 - 1) + *v23;
    v23 += 2;
    v24 -= 2;
  }

  while (v24);
  if (v16 != v17)
  {
    goto LABEL_26;
  }

LABEL_28:

  if (v18 != 0.0)
  {
    v28 = 0;
    v29 = v19 / v18;
    goto LABEL_31;
  }

LABEL_29:
  v28 = 1;
  v29 = 0.0;
LABEL_31:
  *a3 = v29;
  *(a3 + 8) = v28;
  return result;
}

uint64_t sub_21B315EA8@<X0>(__int128 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v28[0] = *a1;
  v28[1] = v6;
  v29 = *(a1 + 4);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v8 = v26;
  v9 = v27;
  v10 = MEMORY[0x277D84F90];
  if (v26 != v27)
  {
    if (v27 >= v26)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v18 = *(v10 + 16);
    v17 = *(v10 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_21B254034((v17 > 1), v18 + 1, 1);
      v10 = v25;
    }

    *(v10 + 16) = v18 + 1;
    *(v10 + 8 * v18 + 32) = v8;
    while (v9 != ++v8)
    {
LABEL_15:
      if (v9 == v8)
      {
        goto LABEL_22;
      }

      v19 = a1[1];
      v30 = *a1;
      v31 = v19;
      v32 = *(a1 + 4);
      type metadata accessor for ColumnSlice();
      result = ColumnSlice.isNil(at:)(v8);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v10;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v10 + 16) + 1, 1);
        }

        goto LABEL_11;
      }
    }
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    *&v30 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v11, 0);
    v12 = 0;
    v13 = v30;
    while (v12 < *(v10 + 16))
    {
      v26 = *(v10 + 8 * v12 + 32);
      result = sub_21B31617C(&v26, a3, v28);
      v14 = *&v28[0];
      *&v30 = v13;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_21B2542A8((v15 > 1), v16 + 1, 1);
        v13 = v30;
      }

      ++v12;
      *(v13 + 16) = v16 + 1;
      *(v13 + 8 * v16 + 32) = v14;
      if (v11 == v12)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
LABEL_20:
    v20 = sub_21B2F55E8(v13, a2);
    v22 = v21;

    *a4 = v20;
    *(a4 + 8) = v22 & 1;
  }

  return result;
}

uint64_t sub_21B31617C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, double *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v11 + *(v10 + 72) * *v7, v12);
  if (sub_21B34B524() < 65)
  {
    v15 = sub_21B34B534();
    v16 = sub_21B34B514();
    result = (*(v5 + 8))(v9, a2);
    if (v15)
    {
      v14 = v16;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    sub_21B2CFB44();
    sub_21B2659F4();
    sub_21B34A9B4();
    result = (*(v5 + 8))(v9, a2);
    v14 = *&v17[1];
  }

  *a3 = v14;
  return result;
}

uint64_t sub_21B316330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a2;
  v31 = a4;
  v32 = a6;
  v28 = a1;
  v30 = a7;
  result = sub_21B2FB104(*(a3 + 3), *(a3 + 4), *(a3 + 40));
  v10 = result;
  v11 = *(result + 16);
  if (v11)
  {
    v12 = 0;
    v13 = result + 32;
    v14 = MEMORY[0x277D84F90];
    v33 = result + 32;
    v34 = a5;
    while (v12 < *(v10 + 16))
    {
      v17 = *(v13 + 8 * v12);
      v18 = a3[1];
      v35 = *a3;
      v36[0] = v18;
      *(v36 + 9) = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice();
      result = DiscontiguousColumnSlice.isNil(at:)(v17);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v37 = v14;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v14 + 16) + 1, 1);
          v14 = v37;
        }

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_21B254034((v15 > 1), v16 + 1, 1);
          v14 = v37;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v17;
        v13 = v33;
        a5 = v34;
      }

      if (v11 == ++v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_12:

    *&v35 = v14;
    MEMORY[0x28223BE20](v19);
    v20 = v32;
    v27[2] = a5;
    v27[3] = v32;
    v27[4] = v28;
    v27[5] = v29;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v22 = sub_21B26F384();
    v24 = sub_21B2FCC28(sub_21B26F44C, v27, v21, a5, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);

    *&v35 = v24;
    v25 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B309D08(v31, v25, WitnessTable, v20, v30);
  }

  return result;
}

uint64_t DataFrameProtocol.writeJSON(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 1);
  v10[0] = *a2;
  v10[1] = v5;
  v11 = *(a2 + 8);
  result = DataFrameProtocol.jsonRepresentation(options:)(v10, a3, a4);
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    sub_21B34A754();
    return sub_21B234324(v8, v9);
  }

  return result;
}

uint64_t DataFrameProtocol.jsonRepresentation(options:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v115 = *MEMORY[0x277D85DE8];
  v98 = sub_21B34A834();
  v7 = *(v98 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v98);
  v96 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v97 = &v75[-v11];
  v12 = sub_21B34AD44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = *a1;
  v77 = a1[1];
  v17 = *(a1 + 2);
  v95 = *(a1 + 1);
  v94 = v17;
  v18 = *(a3 + 24);
  v86 = a3 + 24;
  v85 = v18;
  v18(v111, a2, a3);
  v19 = v111[0];

  v20 = *(v19 + 16);

  if (v20)
  {
    (*(a3 + 32))(v111, a2, a3);
    v89 = v111[0];
    v88 = v111[1];
    v12 = v112;
    v87 = v111[2];
    v20 = v114;
    v21 = v112;
    v16 = v3;
    v22 = v113;
    if (!v114)
    {
      goto LABEL_11;
    }

    if (v114 == 1 && *(v112 + 16))
    {
      v21 = *(v112 + 32);
      goto LABEL_11;
    }
  }

  else
  {
    sub_21B34AD34();
    v22 = sub_21B34AC94();
    v7 = v23;
    (*(v13 + 8))(v16, v12);
    if (v7 >> 60 != 15)
    {
LABEL_51:
      v73 = *MEMORY[0x277D85DE8];
      return v22;
    }

    __break(1u);
  }

  sub_21B2A6400(v12, v22, v20);
  if (v25)
  {
    v21 = 0;
  }

  else
  {
    v21 = v24;
  }

LABEL_11:
  v26 = v21;
  sub_21B2A6400(v12, v22, v20);
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v84 = v29;
  if (v26 == v29)
  {
LABEL_15:

    sub_21B23A9F4(v12, v22, v20);
    if (v76)
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }

    v31 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E308, &qword_21B351C20);
    v32 = sub_21B34AF74();

    v107[0] = 0;
    v33 = [v31 dataWithJSONObject:v32 options:v30 | v77 error:v107];

    v34 = v107[0];
    if (v33)
    {
      v22 = sub_21B34A734();
    }

    else
    {
      v72 = v34;
      v22 = sub_21B34A654();

      swift_willThrow();
    }

    goto LABEL_51;
  }

  v35 = v26;
  v93 = (v7 + 32);
  v92 = (v7 + 8);
  v36 = MEMORY[0x277D84F90];
  v78 = v16;
  v83 = a3;
  v82 = a2;
  v81 = v12;
  v80 = v20;
  v79 = v22;
  while (1)
  {
    v91 = v36;
    v107[0] = v89;
    v107[1] = v88;
    v107[2] = v87;
    v108 = v12;
    v109 = v22;
    v110 = v20;
    v101 = v35;
    v90 = DataFrame.Rows.index(after:)(v35);
    v85(v107, a2, a3);
    v37 = v107[0];

    v100 = v37[2];
    if (v100)
    {
      break;
    }

    v20 = MEMORY[0x277D84F98];
LABEL_44:

    v36 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_21B24AE78(0, v36[2] + 1, 1, v36);
    }

    v71 = v36[2];
    v70 = v36[3];
    if (v71 >= v70 >> 1)
    {
      v36 = sub_21B24AE78((v70 > 1), v71 + 1, 1, v36);
    }

    v36[2] = v71 + 1;
    v36[v71 + 4] = v20;
    v35 = v90;
    a3 = v83;
    a2 = v82;
    v12 = v81;
    LOBYTE(v20) = v80;
    v22 = v79;
    if (v90 == v84)
    {
      goto LABEL_15;
    }
  }

  v38 = 0;
  v39 = (v37 + 4);
  v20 = MEMORY[0x277D84F98];
  v99 = v37;
  while (1)
  {
    if (v38 >= v37[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    sub_21B233A74(v39, v107);
    v40 = v108;
    v41 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v42 = (*(*(v41 + 8) + 8))(v40);
    v44 = v43;
    v45 = v108;
    v46 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    (*(*(v46 + 8) + 128))(&v105, v101, v45);
    sub_21B2832C0(&v105, v104);
    if (v104[3])
    {
      sub_21B2832C0(v104, v103);
      v47 = v97;
      v48 = v98;
      if (swift_dynamicCast())
      {
        v49 = v96;
        (*v93)(v96, v47, v48);
        v50 = v95(v49);
        v52 = v51;
        (*v92)(v49, v48);
        sub_21B28EEB4(&v105);
        __swift_destroy_boxed_opaque_existential_1Tm(v103);
        v53 = MEMORY[0x277D837D0];
        v54 = v102;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v103);
        v52 = *(&v105 + 1);
        v50 = v105;
        v53 = *(&v106 + 1);
        v54 = v106;
      }
    }

    else
    {
      sub_21B28EEB4(&v105);
      v53 = 0;
      v54 = 0;
      v52 = 0;
      v50 = 0;
    }

    sub_21B28EEB4(v104);
    *&v105 = v50;
    *(&v105 + 1) = v52;
    v102 = v54;
    *&v106 = v54;
    *(&v106 + 1) = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = v20;
    v57 = sub_21B24B534(v42, v44);
    v58 = *(v20 + 16);
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_53;
    }

    v61 = v56;
    if (*(v20 + 24) < v60)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v56)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_21B2533CC();
      if (v61)
      {
LABEL_24:

        v20 = v104[0];
        sub_21B283330(&v105, *(v104[0] + 56) + 32 * v57);
        goto LABEL_25;
      }
    }

LABEL_39:
    v20 = v104[0];
    *(v104[0] + 8 * (v57 >> 6) + 64) |= 1 << v57;
    v64 = (*(v20 + 48) + 16 * v57);
    *v64 = v42;
    v64[1] = v44;
    v65 = (*(v20 + 56) + 32 * v57);
    v66 = v106;
    *v65 = v105;
    v65[1] = v66;
    v67 = *(v20 + 16);
    v68 = __OFADD__(v67, 1);
    v69 = v67 + 1;
    if (v68)
    {
      goto LABEL_54;
    }

    *(v20 + 16) = v69;
LABEL_25:
    ++v38;
    sub_21B233960(v107);
    v39 += 40;
    v37 = v99;
    if (v100 == v38)
    {
      goto LABEL_44;
    }
  }

  sub_21B24E148(v60, isUniquelyReferenced_nonNull_native);
  v62 = sub_21B24B534(v42, v44);
  if ((v61 & 1) == (v63 & 1))
  {
    v57 = v62;
    if (v61)
    {
      goto LABEL_24;
    }

    goto LABEL_39;
  }

  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t CSVType.hashValue.getter()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

unint64_t sub_21B316FD8()
{
  result = qword_27CD7F530;
  if (!qword_27CD7F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F530);
  }

  return result;
}

uint64_t sub_21B31703C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v98 = a2;
  v99 = a3;
  v78 = a4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F538, &qword_21B357400);
  v5 = *(v88 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F540, &qword_21B357408);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v78 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F548, &qword_21B357410);
  v16 = *(v15 - 8);
  v17 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v84 = &v78 - v18;
  v91 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v19 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  v86 = (v5 + 8);
  v83 = v16 + 56;
  v85 = (v16 + 48);
  v81 = (v16 + 32);
  v79 = (v16 + 8);
  v97 = a1;

  v25 = 0;
  v80 = v9;
  v87 = v14;
  v92 = a1 + 56;
  v93 = v15;
  v94 = v23;
  while (1)
  {
    v26 = v25;
    if (!v22)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v27 = v9;
      v25 = v26;
LABEL_11:
      v28 = (*(v97 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v22)))));
      v30 = *v28;
      v29 = v28[1];
      v22 &= v22 - 1;
      v100 = v98;
      v101 = v99;
      MEMORY[0x28223BE20](v24);
      *(&v78 - 2) = &v100;

      v31 = v29;
      v32 = v30;
      v33 = sub_21B2E1B4C(sub_21B31781C, (&v78 - 4), v30, v31);
      if ((v34 & 1) == 0)
      {
        break;
      }

      v26 = v25;
      v9 = v27;
      if (!v22)
      {
LABEL_7:
        while (1)
        {
          v25 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v25 >= v23)
          {
            v74 = v97;

            v75 = v78;
            v76 = v91;
            *v78 = v74;
            v75[1] = v76;
            v75[2] = 1;
            v77 = v99;
            v75[3] = v98;
            v75[4] = v77;
            return result;
          }

          v22 = *(v19 + 8 * v25);
          ++v26;
          if (v22)
          {
            v27 = v9;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v35 = v33;
    v36 = sub_21B34ADB4();
    v37 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v37 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v37 < v36 >> 14)
    {
      goto LABEL_32;
    }

    v89 = v35;
    v90 = v32;
    v95 = v31;
    v38 = sub_21B34AEB4();
    v39 = v88;
    v41 = v40;
    sub_21B34A904();
    sub_21B31783C();
    sub_21B34A8F4();
    if (v41 >> 14 < v38 >> 14)
    {
LABEL_33:
      __break(1u);
      break;
    }

    sub_21B34B4C4();
    v42 = v87;
    sub_21B34A914();
    v9 = v27;

    v43 = *v86;
    (*v86)(v27, v39);
    v43(v96, v39);
    v44 = v42;
    v45 = v93;
    v46 = (*v85)(v42, 1, v93);
    v19 = v92;
    v23 = v94;
    if (v46 == 1)
    {

      v24 = sub_21B3178A0(v44);
      continue;
    }

    (*v81)(v84, v44, v45);
    sub_21B34A924();
    v47 = v100;
    v48 = v101;
    v49 = v103;
    if (!((v101 ^ v100) >> 14))
    {
      break;
    }

    v50 = v102;
    v51 = sub_21B2E21E8(v100, v101, v102, v103, 10);
    if ((v52 & 0x100) != 0)
    {
      v82 = sub_21B2E1C50(v47, v48, v50, v49, 10);
      v56 = v55;

      v23 = v94;
      if (v56)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v53 = v52;
      v82 = v51;

      v23 = v94;
      if (v53)
      {
        goto LABEL_35;
      }
    }

    v57 = sub_21B34AEB4();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    v64 = MEMORY[0x21CEED540](v57, v59, v61, v63);
    v66 = v65;

    v67 = v91;
    v19 = v92;
    if (*(v91 + 16) && (v68 = sub_21B24B534(v64, v66), (v69 & 1) != 0))
    {
      v9 = v80;
      v70 = v93;
      if (*(*(v67 + 56) + 8 * v68) < v82)
      {
        v72 = v91;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v72;
        sub_21B23A60C(v82, v64, v66, isUniquelyReferenced_nonNull_native);

        v24 = (*v79)(v84, v70);
        v91 = v100;
      }

      else
      {
        (*v79)(v84, v93);
      }
    }

    else
    {
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v100 = v67;
      sub_21B23A60C(v82, v64, v66, v71);

      v24 = (*v79)(v84, v93);
      v91 = v100;
      v9 = v80;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_21B31783C()
{
  result = qword_27CD7F550;
  if (!qword_27CD7F550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F538, &qword_21B357400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F550);
  }

  return result;
}

uint64_t sub_21B3178A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F540, &qword_21B357408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B317908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  sub_21B2C1778(a1, v19 - v8);
  v10 = sub_21B34A834();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21B27DF7C(v9);
    v12 = 0xE300000000000000;
    v13 = 7104878;
  }

  else
  {
    v14 = *(type metadata accessor for FormattingOptions() + 48);
    sub_21B34A784();
    sub_21B317AA0();
    sub_21B34A824();
    (*(v11 + 8))(v9, v10);
    v13 = v19[0];
    v12 = v19[1];
  }

  v15 = sub_21B2A11F8(a2, v13, v12);
  v17 = v16;

  *a3 = v15;
  a3[1] = v17;
  return result;
}

unint64_t sub_21B317AA0()
{
  result = qword_27CD7F558;
  if (!qword_27CD7F558)
  {
    sub_21B34A784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F558);
  }

  return result;
}

double sub_21B317AFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a2;
  v23 = a3;
  v9 = sub_21B299F44(sub_21B326BDC, v21, a1);
  v18 = a2;
  v19 = a3;
  v20 = v4;

  v10 = sub_21B3256CC(v9, a1, sub_21B326C00);

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v17 = v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0C8, &qword_21B3518B0);
  v13 = sub_21B326A74();
  sub_21B3492CC(v4, sub_21B326C74, v11, sub_21B326C6C, 0, sub_21B326C54, v16, v12, v24, &type metadata for AnyHashableBuilder, a2, v13, &off_2817203A8, a3);

  result = *v24;
  v15 = v24[1];
  *a4 = v24[0];
  *(a4 + 16) = v15;
  *(a4 + 32) = v25;
  return result;
}

uint64_t DataFrameProtocol.grouped<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(*(a2 - 8) + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v13;
  v17 = v13[1];
  (*(v18 + 16))(v15, v6, a2);

  return sub_21B2FF730(v15, v16, v17, a3, a2, a5, a4, a6);
}

double DataFrameProtocol.grouped<A, B>(by:_:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v32 = a7;
  *(&v32 + 1) = a8;
  *&v31 = a4;
  *(&v31 + 1) = a5;
  v12 = *a1;
  v11 = a1[1];
  v29 = *a1;
  v14 = *a2;
  v13 = a2[1];
  v15 = *(a6 + 24);
  v15(&v46, a3, a6);
  v30 = sub_21B23AC94(v12, v11);

  v15(&v46, a3, a6);
  v44 = v46;
  v45 = v47;
  v28 = sub_21B23AC94(v14, v13);

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = v31;
  *(v16 + 40) = a6;
  *(v16 + 48) = v32;
  *(v16 + 64) = v29;
  *(v16 + 72) = v11;
  *(v16 + 80) = v14;
  *(v16 + 88) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = v31;
  *(v17 + 40) = a6;
  *(v17 + 48) = v32;
  v36 = a3;
  v37 = v31;
  v38 = a6;
  v39 = v32;
  v40 = v30;
  v41 = v28;
  v18 = sub_21B34B474();
  v19 = sub_21B34B474();
  v43 = v32;

  WitnessTable = swift_getWitnessTable();
  v42 = *(&v32 + 1);
  v21 = swift_getWitnessTable();
  *&v46 = v18;
  *(&v46 + 1) = v19;
  *&v47 = WitnessTable;
  *(&v47 + 1) = v21;
  v22 = type metadata accessor for Tuple2();
  v46 = v31;
  v47 = v32;
  v23 = type metadata accessor for ColumnBuilder2();
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  sub_21B3492CC(v33, sub_21B3243B4, v16, sub_21B3243EC, v17, sub_21B3246FC, v35, v22, &v46, v23, a3, v24, v25, a6);
  result = *&v46;
  v27 = v47;
  *a9 = v46;
  *(a9 + 16) = v27;
  *(a9 + 32) = v48;
  return result;
}

double DataFrameProtocol.grouped<A, B, C>(by:_:_:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a1;
  v15 = a1[1];
  v39 = *a1;
  v18 = *a2;
  v17 = a2[1];
  v46 = v17;
  v35 = *a2;
  v36 = *a3;
  v37 = a3[1];
  v19 = *(a8 + 24);
  v19(&v60, a4, a8);
  v64 = v60;
  v65 = v61;
  v42 = sub_21B23AC94(v16, v15);

  v44 = v12;
  v19(&v60, a4, a8);
  v64 = v60;
  v65 = v61;
  v38 = sub_21B23AC94(v18, v17);

  v19(&v60, a4, a8);
  v64 = v60;
  v65 = v61;
  v34 = sub_21B23AC94(v36, v37);

  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v20[7] = a10;
  v21 = a8;
  v20[8] = a11;
  v20[9] = a12;
  v20[10] = v39;
  v20[11] = v15;
  v20[12] = v35;
  v20[13] = v46;
  v20[14] = v36;
  v20[15] = v37;
  v40 = swift_allocObject();
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v40[6] = a8;
  v40[7] = a10;
  v40[8] = a11;
  v40[9] = a12;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v53 = a8;
  v54 = a10;
  v55 = a11;
  v56 = a12;
  v57 = v42;
  v58 = v38;
  v59 = v34;
  v22 = sub_21B34B474();
  v23 = sub_21B34B474();
  v24 = sub_21B34B474();

  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  *&v60 = v22;
  *(&v60 + 1) = v23;
  *&v61 = v24;
  *(&v61 + 1) = WitnessTable;
  v62 = v26;
  v63 = v27;
  v28 = type metadata accessor for Tuple3();
  *&v60 = a5;
  *(&v60 + 1) = a6;
  *&v61 = a7;
  *(&v61 + 1) = a10;
  v62 = a11;
  v63 = a12;
  v29 = type metadata accessor for ColumnBuilder3();
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  sub_21B3492CC(v44, sub_21B325908, v20, sub_21B325948, v40, sub_21B32597C, v48, v28, &v60, v29, v49, v30, v31, v21);
  result = *&v60;
  v33 = v61;
  *a9 = v60;
  *(a9 + 16) = v33;
  *(a9 + 32) = v62;
  return result;
}

uint64_t sub_21B3184C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D0, &qword_21B351BE8);
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v11 = sub_21B25F3A4(MEMORY[0x277D84F90]);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v54 = v0;
  v55 = v14;
  LODWORD(v14) = *(v0 + 40);
  v56 = v13;
  v57 = v14;
  if (v14)
  {
    if (v57 == 1 && *(v56 + 16))
    {
      v15 = (v56 + 32);
    }

    else
    {
      swift_beginAccess();
      v16 = *(v12 + 16);
      if (!v16)
      {
        goto LABEL_44;
      }

      v15 = (v16 + 8);
    }

    v13 = *v15;
  }

  v48 = v5;
  swift_beginAccess();
  v17 = *(v12 + 16);
  if (!v17)
  {
    goto LABEL_43;
  }

  v18 = MEMORY[0x277D84F90];
  v19 = &qword_27CD7E100;
  v50 = v10;
  v51 = v12;
  while (1)
  {
    if (v13 == *(v17 + 8))
    {
      goto LABEL_39;
    }

    if ((sub_21B2D3BE8(v13, v56, v55, v57) & 1) == 0)
    {
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_21B34B634();

      v61 = 0x6E6F697469736F70;
      v62 = 0xE900000000000020;
      v60 = v13;
      v47 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v47);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_47;
    }

    if (v13 < 0 || v13 >= *(v17 + 8))
    {
      goto LABEL_47;
    }

    v20 = *(v12 + 24);
    sub_21B2B194C(v13, *(v12 + 16), v10);
    if (!v11[2])
    {
      break;
    }

    v21 = sub_21B24B8F0(v10);
    if ((v22 & 1) == 0)
    {
      break;
    }

    v23 = *(v11[7] + 8 * v21);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v18 = sub_21B23A3D0(v18);
      if ((v23 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:

        return v18;
      }
    }

    if (v23 >= v18[2])
    {
      goto LABEL_42;
    }

    v24 = v18 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v23 + *(v53 + 48);
    sub_21B28DFBC(v13, v13 + 1);
LABEL_11:
    v13 = sub_21B2B4370(v13);
    sub_21B261664(v10, v19, &unk_21B352A30);
    v17 = *(v12 + 16);
    if (!v17)
    {
      goto LABEL_43;
    }
  }

  v25 = v18;
  v26 = v4;
  v27 = v59;
  v28 = v19;
  sub_21B2615FC(v10, v59, v19, &unk_21B352A30);
  v58 = v25;
  v29 = v25[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v11;
  v32 = sub_21B24B8F0(v27);
  v33 = v11[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (!__OFADD__(v33, v34))
  {
    v36 = v31;
    if (v11[3] < v35)
    {
      sub_21B24E748(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_21B24B8F0(v59);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_48;
      }

      v32 = v37;
      v11 = v61;
      if ((v36 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(v11[7] + 8 * v32) = v29;
      v19 = v28;
      sub_21B261664(v59, v28, &unk_21B352A30);
LABEL_33:
      v4 = v26;
      v43 = v26 + *(v53 + 48);
      v10 = v50;
      sub_21B2615FC(v50, v26, v19, &unk_21B352A30);
      *v43 = v13;
      *(v43 + 8) = v13 + 1;
      *(v43 + 16) = 0;
      v18 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_21B24AFF4(0, v18[2] + 1, 1, v18);
      }

      v45 = v18[2];
      v44 = v18[3];
      if (v45 >= v44 >> 1)
      {
        v18 = sub_21B24AFF4(v44 > 1, v45 + 1, 1, v18);
      }

      v18[2] = v45 + 1;
      sub_21B326B74(v4, v18 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v45, &qword_27CD7E2D0, &qword_21B351BE8);
      v12 = v51;
      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v11 = v61;
      if (v31)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_21B2536DC();
      v11 = v61;
      if (v36)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v11[(v32 >> 6) + 8] |= 1 << v32;
    v39 = v59;
    sub_21B2615FC(v59, v11[6] + *(v49 + 72) * v32, v28, &unk_21B352A30);
    *(v11[7] + 8 * v32) = v29;
    v19 = v28;
    sub_21B261664(v39, v28, &unk_21B352A30);
    v40 = v11[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_41;
    }

    v11[2] = v42;
    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_47:
  sub_21B34B824();
  __break(1u);
LABEL_48:
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B318B28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D0, &qword_21B351BE8);
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v50 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = sub_21B25F3A4(MEMORY[0x277D84F90]);
  v45 = *(a1 + 16);
  if (!v45)
  {

    return MEMORY[0x277D84F90];
  }

  v42 = v6;
  v14 = 0;
  v44 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v15 = MEMORY[0x277D84F90];
  v16 = &qword_27CD7E100;
  v49 = *(v7 + 72);
  v43 = v12;
  while (1)
  {
    sub_21B2615FC(v44 + v49 * v14, v12, v16, &unk_21B352A30);
    if (v13[2])
    {
      v17 = sub_21B24B8F0(v12);
      if (v18)
      {
        v19 = *(v13[7] + 8 * v17);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v15 = sub_21B23A3D0(v15);
          if ((v19 & 0x8000000000000000) != 0)
          {
LABEL_26:
            __break(1u);
LABEL_27:

            return v15;
          }
        }

        if (v19 >= v15[2])
        {
          goto LABEL_32;
        }

        v20 = v15 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v19 + *(v47 + 48);
        sub_21B28DFBC(v14, v14 + 1);
        sub_21B261664(v12, v16, &unk_21B352A30);
        ++v14;
        goto LABEL_4;
      }
    }

    v21 = v12;
    v22 = v50;
    v23 = v16;
    sub_21B2615FC(v21, v50, v16, &unk_21B352A30);
    v48 = v15;
    v24 = v15[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v13;
    v27 = sub_21B24B8F0(v22);
    v28 = v13[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v13[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21B2536DC();
      }
    }

    else
    {
      sub_21B24E748(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_21B24B8F0(v50);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

      v27 = v32;
    }

    v16 = v23;
    v13 = v51;
    if (v31)
    {
      *(v51[7] + 8 * v27) = v24;
      sub_21B261664(v50, v23, &unk_21B352A30);
    }

    else
    {
      v51[(v27 >> 6) + 8] |= 1 << v27;
      v34 = v50;
      sub_21B2615FC(v50, v13[6] + v27 * v49, v23, &unk_21B352A30);
      *(v13[7] + 8 * v27) = v24;
      sub_21B261664(v34, v23, &unk_21B352A30);
      v35 = v13[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_31;
      }

      v13[2] = v37;
    }

    v38 = &v5[*(v47 + 48)];
    v12 = v43;
    sub_21B2615FC(v43, v5, v16, &unk_21B352A30);
    *v38 = v14;
    *(v38 + 1) = v14 + 1;
    v38[16] = 0;
    v15 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_21B24AFF4(0, v15[2] + 1, 1, v15);
    }

    v40 = v15[2];
    v39 = v15[3];
    if (v40 >= v39 >> 1)
    {
      v15 = sub_21B24AFF4(v39 > 1, v40 + 1, 1, v15);
    }

    sub_21B261664(v12, v16, &unk_21B352A30);
    v15[2] = v40 + 1;
    sub_21B326B74(v5, v15 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v40, &qword_27CD7E2D0, &qword_21B351BE8);
    ++v14;
LABEL_4:
    if (v14 == v45)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B318FFC()
{
  v1 = sub_21B25F580(MEMORY[0x277D84F90]);
  v2 = *(v0 + 24);
  v40 = *(v0 + 16);
  v37 = *(v0 + 32);
  v38 = v2;
  v39 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v39 == 1 && *(v2 + 16))
    {
      v3 = (v2 + 32);
    }

    else
    {
      swift_beginAccess();
      v4 = *(v40 + 16);
      if (!v4)
      {
        goto LABEL_53;
      }

      v3 = (v4 + 8);
    }

    v2 = *v3;
  }

  swift_beginAccess();
  v5 = *(v40 + 16);
  if (!v5)
  {
    goto LABEL_52;
  }

  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v5[1])
    {
      goto LABEL_47;
    }

    if ((sub_21B2D3BE8(v2, v38, v37, v39) & 1) == 0)
    {
      sub_21B34B634();

      v36 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v36);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_56;
    }

    if (v2 < 0 || v2 >= v5[1])
    {
      goto LABEL_56;
    }

    if ((*(v5 + (v2 >> 3) + 64) >> (v2 & 7)))
    {
      break;
    }

    v14 = 0;
    v15 = 0xF000000000000000;
    if (!v1[2])
    {
      goto LABEL_30;
    }

LABEL_25:
    v16 = sub_21B24BAEC(v14, v15);
    if ((v17 & 1) == 0)
    {
      goto LABEL_30;
    }

    v18 = *(v1[7] + 8 * v16);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v6 = sub_21B23A3E4(v6);
      if ((v18 & 0x8000000000000000) != 0)
      {
LABEL_46:
        __break(1u);
LABEL_47:

        return v6;
      }
    }

    if (v18 >= v6[2])
    {
      goto LABEL_51;
    }

    sub_21B28DFBC(v2, v2 + 1);
LABEL_11:
    v2 = sub_21B2B4370(v2);
    sub_21B260C58(v14, v15);
    v5 = *(v40 + 16);
    if (!v5)
    {
      goto LABEL_52;
    }
  }

  v8 = *v5 + 7;
  if (__OFADD__(*v5, 7))
  {
    goto LABEL_49;
  }

  if (v8 < 0)
  {
    v8 = *v5 + 14;
  }

  v9 = v8 >> 3;
  v11 = v9 - 1;
  v10 = v9 < 1;
  v12 = v9 + 62;
  if (!v10)
  {
    v12 = v11;
  }

  v13 = &v5[2 * v2 + 8] + (v12 & 0xFFFFFFFFFFFFFFC0);
  v14 = *(v13 + 64);
  v15 = *(v13 + 72);
  sub_21B260DC0(v14, v15);
  if (v1[2])
  {
    goto LABEL_25;
  }

LABEL_30:
  v19 = v6[2];
  sub_21B260DAC(v14, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = sub_21B24BAEC(v14, v15);
  v23 = v1[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (!__OFADD__(v23, v24))
  {
    v26 = v21;
    if (v1[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_21B253904();
        if ((v26 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_21B24EC58(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_21B24BAEC(v14, v15);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_57;
      }

      v22 = v27;
      if ((v26 & 1) == 0)
      {
LABEL_39:
        v1[(v22 >> 6) + 8] |= 1 << v22;
        v29 = (v1[6] + 16 * v22);
        *v29 = v14;
        v29[1] = v15;
        *(v1[7] + 8 * v22) = v19;
        v30 = v1[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_50;
        }

        v1[2] = v32;
        goto LABEL_41;
      }
    }

    *(v1[7] + 8 * v22) = v19;
    sub_21B260C58(v14, v15);
LABEL_41:
    sub_21B260DAC(v14, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21B24B1E4(0, v6[2] + 1, 1, v6);
    }

    v34 = v6[2];
    v33 = v6[3];
    if (v34 >= v33 >> 1)
    {
      v6 = sub_21B24B1E4((v33 > 1), v34 + 1, 1, v6);
    }

    v6[2] = v34 + 1;
    v7 = &v6[5 * v34];
    v7[4] = v14;
    v7[5] = v15;
    v7[6] = v2;
    v7[7] = v2 + 1;
    *(v7 + 64) = 0;
    goto LABEL_11;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_56:
  sub_21B34B824();
  __break(1u);
LABEL_57:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E130, &qword_21B3519A8);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B3194F4(uint64_t a1)
{
  v2 = sub_21B25F580(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v31 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v7 = (v31 + 16 * v4);
      v8 = *v7;
      v9 = v7[1];
      v10 = v2[2];
      sub_21B260DAC(*v7, v9);
      if (!v10)
      {
        break;
      }

      v11 = sub_21B24BAEC(v8, v9);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(v2[7] + 8 * v11);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = sub_21B23A3E4(v5);
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v5;
        }
      }

      if (v13 >= v5[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);
      sub_21B260C58(v8, v9);
      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v14 = v5[2];
    sub_21B260DAC(v8, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v2;
    v16 = sub_21B24BAEC(v8, v9);
    v18 = v2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v2[3] < v21)
    {
      sub_21B24EC58(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_21B24BAEC(v8, v9);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v24 = v16;
    sub_21B253904();
    v16 = v24;
    v2 = v32;
    if ((v22 & 1) == 0)
    {
LABEL_19:
      v2[(v16 >> 6) + 8] |= 1 << v16;
      v25 = (v2[6] + 16 * v16);
      *v25 = v8;
      v25[1] = v9;
      *(v2[7] + 8 * v16) = v14;
      v26 = v2[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_31;
      }

      v2[2] = v27;
      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v16) = v14;
    sub_21B260C58(v8, v9);
LABEL_21:
    sub_21B260DAC(v8, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21B24B1E4(0, v5[2] + 1, 1, v5);
    }

    v29 = v5[2];
    v28 = v5[3];
    if (v29 >= v28 >> 1)
    {
      v5 = sub_21B24B1E4((v28 > 1), v29 + 1, 1, v5);
    }

    sub_21B260C58(v8, v9);
    v5[2] = v29 + 1;
    v6 = &v5[5 * v29];
    v6[4] = v8;
    v6[5] = v9;
    v6[6] = v4;
    v6[7] = v4 + 1;
    *(v6 + 64) = 0;
    if (++v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E130, &qword_21B3519A8);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B3197F8()
{
  v1 = sub_21B25F680(MEMORY[0x277D84F90]);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v33 = *(v0 + 32);
  v34 = v3;
  v35 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v35 == 1 && *(v3 + 16))
    {
      v4 = (v3 + 32);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 16);
      if (!v5)
      {
        goto LABEL_44;
      }

      v4 = (v5 + 8);
    }

    v3 = *v4;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == *(v6 + 8))
    {
      goto LABEL_39;
    }

    if ((sub_21B2D3BE8(v3, v34, v33, v35) & 1) == 0)
    {
      sub_21B34B634();

      v32 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v32);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_47;
    }

    if (v3 < 0)
    {
      goto LABEL_47;
    }

    v9 = *(v6 + 8);
    if (v3 >= v9)
    {
      goto LABEL_47;
    }

    v10 = *(v2 + 24);
    v11 = sub_21B2B18C4(v3, *(v2 + 16), v9);
    v12 = v11;
    if (!v1[2])
    {
      break;
    }

    v13 = sub_21B24BB88(v11);
    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = *(v1[7] + 8 * v13);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v7 = sub_21B23A3F8(v7);
      if ((v15 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:

        return v7;
      }
    }

    if (v15 >= v7[2])
    {
      goto LABEL_42;
    }

    sub_21B28DFBC(v3, v3 + 1);
LABEL_11:
    v3 = sub_21B2B4370(v3);
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  v16 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = sub_21B24BB88(v12);
  v20 = v1[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (!__OFADD__(v20, v21))
  {
    v23 = v18;
    if (v1[3] < v22)
    {
      sub_21B24EF28(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_21B24BB88(v12);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_48;
      }

      v19 = v24;
      if ((v23 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(v1[7] + 8 * v19) = v16;
LABEL_33:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B24B208(0, v7[2] + 1, 1, v7);
      }

      v30 = v7[2];
      v29 = v7[3];
      if (v30 >= v29 >> 1)
      {
        v7 = sub_21B24B208((v29 > 1), v30 + 1, 1, v7);
      }

      v7[2] = v30 + 1;
      v8 = &v7[4 * v30];
      *(v8 + 32) = v12;
      v8[5] = v3;
      v8[6] = v3 + 1;
      *(v8 + 56) = 0;
      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_21B253A6C();
      if (v23)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v1[(v19 >> 6) + 8] |= 1 << v19;
    *(v1[6] + v19) = v12;
    *(v1[7] + 8 * v19) = v16;
    v26 = v1[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_41;
    }

    v1[2] = v28;
    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_47:
  sub_21B34B824();
  __break(1u);
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E128, &qword_21B3519A0);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B319C34(uint64_t a1)
{
  v2 = sub_21B25F680(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v8 = *(v5 + v4);
      if (!v2[2])
      {
        break;
      }

      v9 = sub_21B24BB88(*(v5 + v4));
      if ((v10 & 1) == 0)
      {
        break;
      }

      v11 = *(v2[7] + 8 * v9);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v6 = sub_21B23A3F8(v6);
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v6;
        }
      }

      if (v11 >= v6[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);
      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v12 = v6[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v2;
    v14 = sub_21B24BB88(v8);
    v16 = v2[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v2[3] < v19)
    {
      sub_21B24EF28(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_21B24BB88(v8);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v22 = v14;
    sub_21B253A6C();
    v14 = v22;
    v2 = v28;
    if ((v20 & 1) == 0)
    {
LABEL_19:
      v2[(v14 >> 6) + 8] |= 1 << v14;
      *(v2[6] + v14) = v8;
      *(v2[7] + 8 * v14) = v12;
      v23 = v2[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_31;
      }

      v2[2] = v24;
      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v14) = v12;
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21B24B208(0, v6[2] + 1, 1, v6);
    }

    v26 = v6[2];
    v25 = v6[3];
    if (v26 >= v25 >> 1)
    {
      v6 = sub_21B24B208((v25 > 1), v26 + 1, 1, v6);
    }

    v6[2] = v26 + 1;
    v7 = &v6[4 * v26];
    v7[5] = v4++;
    *(v7 + 32) = v8;
    v7[6] = v4;
    *(v7 + 56) = 0;
    if (v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E128, &qword_21B3519A0);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B319ECC()
{
  v1 = sub_21B25F760(MEMORY[0x277D84F90]);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v41 = *(v0 + 32);
  v42 = v3;
  v43 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v43 == 1 && *(v3 + 16))
    {
      v4 = (v3 + 32);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 16);
      if (!v5)
      {
        goto LABEL_44;
      }

      v4 = (v5 + 8);
    }

    v3 = *v4;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = MEMORY[0x277D84F90];
  v40 = v2;
  while (1)
  {
    if (v3 == *(v6 + 8))
    {
      goto LABEL_39;
    }

    if ((sub_21B2D3BE8(v3, v42, v41, v43) & 1) == 0)
    {
      sub_21B34B634();

      v39 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v39);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_47;
    }

    if (v3 < 0)
    {
      goto LABEL_47;
    }

    v9 = *(v6 + 8);
    if (v3 >= v9)
    {
      goto LABEL_47;
    }

    v10 = *(v2 + 24);
    v11 = sub_21B2B1790(v3, *(v2 + 16), v9);
    v13 = v11;
    v14 = v12;
    if (!v1[2])
    {
      break;
    }

    v15 = sub_21B24BC14(v11, v12 & 1);
    if ((v16 & 1) == 0)
    {
      break;
    }

    v17 = *(v1[7] + 8 * v15);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v7 = sub_21B23A40C(v7);
      if ((v17 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:

        return v7;
      }
    }

    if (v17 >= v7[2])
    {
      goto LABEL_42;
    }

    sub_21B28DFBC(v3, v3 + 1);
LABEL_11:
    v3 = sub_21B2B4370(v3);
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  v18 = v7;
  v19 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v14;
  v22 = isUniquelyReferenced_nonNull_native;
  v23 = v21;
  v25 = sub_21B24BC14(v13, v21 & 1);
  v26 = v1[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (!__OFADD__(v26, v27))
  {
    v29 = v24;
    if (v1[3] < v28)
    {
      sub_21B24F1C0(v28, v22);
      v30 = sub_21B24BC14(v13, v23 & 1);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_48;
      }

      v25 = v30;
      if ((v29 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(v1[7] + 8 * v25) = v19;
LABEL_33:
      v7 = v18;
      v2 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B24B22C(0, v18[2] + 1, 1, v18);
      }

      v37 = v7[2];
      v36 = v7[3];
      if (v37 >= v36 >> 1)
      {
        v7 = sub_21B24B22C((v36 > 1), v37 + 1, 1, v7);
      }

      v7[2] = v37 + 1;
      v8 = &v7[5 * v37];
      v8[4] = v13;
      *(v8 + 40) = v23 & 1;
      v8[6] = v3;
      v8[7] = v3 + 1;
      *(v8 + 64) = 0;
      goto LABEL_11;
    }

    if (v22)
    {
      if (v24)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_21B253BB8();
      if (v29)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v1[(v25 >> 6) + 8] |= 1 << v25;
    v32 = v1[6] + 16 * v25;
    *v32 = v13;
    *(v32 + 8) = v23 & 1;
    *(v1[7] + 8 * v25) = v19;
    v33 = v1[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_41;
    }

    v1[2] = v35;
    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_47:
  sub_21B34B824();
  __break(1u);
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B31A34C(uint64_t a1)
{
  v2 = sub_21B25F760(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v30 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v7 = v30 + 16 * v4;
      v8 = *v7;
      v9 = *(v7 + 8);
      if (!v2[2])
      {
        break;
      }

      v10 = sub_21B24BC14(v8, v9);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v2[7] + 8 * v10);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = sub_21B23A40C(v5);
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v5;
        }
      }

      if (v12 >= v5[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);
      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v13 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v2;
    v15 = sub_21B24BC14(v8, v9);
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v2[3] < v20)
    {
      sub_21B24F1C0(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_21B24BC14(v8, v9);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v21 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v23 = v15;
    sub_21B253BB8();
    v15 = v23;
    v2 = v31;
    if ((v21 & 1) == 0)
    {
LABEL_19:
      v2[(v15 >> 6) + 8] |= 1 << v15;
      v24 = v2[6] + 16 * v15;
      *v24 = v8;
      *(v24 + 8) = v9;
      *(v2[7] + 8 * v15) = v13;
      v25 = v2[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_31;
      }

      v2[2] = v26;
      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v15) = v13;
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21B24B22C(0, v5[2] + 1, 1, v5);
    }

    v28 = v5[2];
    v27 = v5[3];
    if (v28 >= v27 >> 1)
    {
      v5 = sub_21B24B22C((v27 > 1), v28 + 1, 1, v5);
    }

    v5[2] = v28 + 1;
    v6 = &v5[5 * v28];
    v6[6] = v4++;
    v6[4] = v8;
    *(v6 + 40) = v9;
    v6[7] = v4;
    *(v6 + 64) = 0;
    if (v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B31A614()
{
  v1 = sub_21B25F788(MEMORY[0x277D84F90]);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v39 = *(v0 + 32);
  v40 = v3;
  v41 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v41 == 1 && *(v3 + 16))
    {
      v4 = (v3 + 32);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 16);
      if (!v5)
      {
        goto LABEL_45;
      }

      v4 = (v5 + 8);
    }

    v3 = *v4;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_44;
  }

  v7 = MEMORY[0x277D84F90];
  v38 = v2;
  while (1)
  {
    if (v3 == *(v6 + 8))
    {
      goto LABEL_40;
    }

    if ((sub_21B2D3BE8(v3, v40, v39, v41) & 1) == 0)
    {
      sub_21B34B634();

      v37 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v37);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_48;
    }

    if (v3 < 0)
    {
      goto LABEL_48;
    }

    v9 = *(v6 + 8);
    if (v3 >= v9)
    {
      goto LABEL_48;
    }

    v10 = *(v2 + 24);
    v11 = sub_21B2B1B7C(v3, *(v2 + 16), v9);
    v12 = HIDWORD(v11) & 1;
    v42 = v11;
    if (!v1[2])
    {
      break;
    }

    v13 = v11;
    v14 = sub_21B24BCA8(v11 | (v12 << 32));
    if ((v15 & 1) == 0)
    {
      goto LABEL_23;
    }

    v16 = *(v1[7] + 8 * v14);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = sub_21B23A420(v7);
      if ((v16 & 0x8000000000000000) != 0)
      {
LABEL_39:
        __break(1u);
LABEL_40:

        return v7;
      }
    }

    if (v16 >= v7[2])
    {
      goto LABEL_43;
    }

    sub_21B28DFBC(v3, v3 + 1);
LABEL_11:
    v3 = sub_21B2B4370(v3);
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_44;
    }
  }

  v13 = v11;
LABEL_23:
  v17 = v7;
  v18 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v12;
  v22 = sub_21B24BCA8(v13 | (v12 << 32));
  v23 = v1[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (!__OFADD__(v23, v24))
  {
    v26 = v21;
    if (v1[3] < v25)
    {
      sub_21B24F478(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_21B24BCA8(v13 | (v20 << 32));
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_49;
      }

      v22 = v27;
      v29 = v42;
      if ((v26 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_30:
      *(v1[7] + 8 * v22) = v18;
LABEL_34:
      v7 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B24B250(0, v17[2] + 1, 1, v17);
      }

      v35 = v7[2];
      v34 = v7[3];
      if (v35 >= v34 >> 1)
      {
        v7 = sub_21B24B250((v34 > 1), v35 + 1, 1, v7);
      }

      v7[2] = v35 + 1;
      v8 = &v7[4 * v35];
      *(v8 + 8) = v29;
      *(v8 + 36) = v20;
      v8[5] = v3;
      v8[6] = v3 + 1;
      *(v8 + 56) = 0;
      v2 = v38;
      goto LABEL_11;
    }

    v29 = v42;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v21)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_21B253BCC();
      if (v26)
      {
        goto LABEL_30;
      }
    }

LABEL_32:
    v1[(v22 >> 6) + 8] |= 1 << v22;
    v30 = v1[6] + 8 * v22;
    *v30 = v29;
    *(v30 + 4) = v20;
    *(v1[7] + 8 * v22) = v18;
    v31 = v1[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_42;
    }

    v1[2] = v33;
    goto LABEL_34;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_48:
  sub_21B34B824();
  __break(1u);
LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B31AA98(uint64_t a1)
{
  v2 = sub_21B25F788(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v30 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v7 = (v30 + 8 * v4);
      v8 = *v7;
      v9 = *(v7 + 4);
      if (!v2[2])
      {
        break;
      }

      v10 = sub_21B24BCA8(v8 | (*(v7 + 4) << 32));
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v2[7] + 8 * v10);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = sub_21B23A420(v5);
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v5;
        }
      }

      if (v12 >= v5[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);
      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v13 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v2;
    v15 = sub_21B24BCA8(v8 | (v9 << 32));
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v2[3] < v20)
    {
      sub_21B24F478(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_21B24BCA8(v8 | (v9 << 32));
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v21 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v23 = v15;
    sub_21B253BCC();
    v15 = v23;
    v2 = v31;
    if ((v21 & 1) == 0)
    {
LABEL_19:
      v2[(v15 >> 6) + 8] |= 1 << v15;
      v24 = v2[6] + 8 * v15;
      *v24 = v8;
      *(v24 + 4) = v9;
      *(v2[7] + 8 * v15) = v13;
      v25 = v2[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_31;
      }

      v2[2] = v26;
      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v15) = v13;
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21B24B250(0, v5[2] + 1, 1, v5);
    }

    v28 = v5[2];
    v27 = v5[3];
    if (v28 >= v27 >> 1)
    {
      v5 = sub_21B24B250((v27 > 1), v28 + 1, 1, v5);
    }

    v5[2] = v28 + 1;
    v6 = &v5[4 * v28];
    v6[5] = v4++;
    *(v6 + 8) = v8;
    *(v6 + 36) = v9;
    v6[6] = v4;
    *(v6 + 56) = 0;
    if (v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B31AD68()
{
  v1 = sub_21B25F888(MEMORY[0x277D84F90]);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v41 = *(v0 + 32);
  v42 = v3;
  v43 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v43 == 1 && *(v3 + 16))
    {
      v4 = (v3 + 32);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 16);
      if (!v5)
      {
        goto LABEL_44;
      }

      v4 = (v5 + 8);
    }

    v3 = *v4;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = MEMORY[0x277D84F90];
  v40 = v2;
  while (1)
  {
    if (v3 == *(v6 + 8))
    {
      goto LABEL_39;
    }

    if ((sub_21B2D3BE8(v3, v42, v41, v43) & 1) == 0)
    {
      sub_21B34B634();

      v39 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v39);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_47;
    }

    if (v3 < 0)
    {
      goto LABEL_47;
    }

    v9 = *(v6 + 8);
    if (v3 >= v9)
    {
      goto LABEL_47;
    }

    v10 = *(v2 + 24);
    v11 = sub_21B232880(v3, *(v2 + 16), v9);
    v13 = v11;
    v14 = v12;
    if (!v1[2])
    {
      break;
    }

    v15 = sub_21B24BD44(v11, v12);
    if ((v16 & 1) == 0)
    {
      break;
    }

    v17 = *(v1[7] + 8 * v15);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v7 = sub_21B23A434(v7);
      if ((v17 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:

        return v7;
      }
    }

    if (v17 >= v7[2])
    {
      goto LABEL_42;
    }

    sub_21B28DFBC(v3, v3 + 1);
LABEL_11:
    v3 = sub_21B2B4370(v3);

    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  v18 = v7;
  v19 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v13;
  v22 = isUniquelyReferenced_nonNull_native;
  v23 = v21;
  v25 = sub_21B24BD44(v21, v14);
  v26 = v1[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (!__OFADD__(v26, v27))
  {
    v29 = v24;
    if (v1[3] < v28)
    {
      sub_21B24F738(v28, v22);
      v30 = sub_21B24BD44(v23, v14);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_48;
      }

      v25 = v30;
      if ((v29 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(v1[7] + 8 * v25) = v19;
LABEL_33:

      v7 = v18;
      v2 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B24B3A8(0, v18[2] + 1, 1, v18);
      }

      v37 = v7[2];
      v36 = v7[3];
      if (v37 >= v36 >> 1)
      {
        v7 = sub_21B24B3A8((v36 > 1), v37 + 1, 1, v7);
      }

      v7[2] = v37 + 1;
      v8 = &v7[5 * v37];
      v8[4] = v23;
      v8[5] = v14;
      v8[6] = v3;
      v8[7] = v3 + 1;
      *(v8 + 64) = 0;
      goto LABEL_11;
    }

    if (v22)
    {
      if (v24)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_21B253D2C();
      if (v29)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v1[(v25 >> 6) + 8] |= 1 << v25;
    v32 = (v1[6] + 16 * v25);
    *v32 = v23;
    v32[1] = v14;
    *(v1[7] + 8 * v25) = v19;
    v33 = v1[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_41;
    }

    v1[2] = v35;

    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_47:
  sub_21B34B824();
  __break(1u);
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E120, &qword_21B351998);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B31B1F0(uint64_t a1)
{
  v2 = sub_21B25F888(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v31 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v7 = (v31 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = v2[2];

      if (!v10)
      {
        break;
      }

      v11 = sub_21B24BD44(v9, v8);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(v2[7] + 8 * v11);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = sub_21B23A434(v5);
        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v5;
        }
      }

      if (v13 >= v5[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);

      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v14 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v2;
    v16 = sub_21B24BD44(v9, v8);
    v18 = v2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v2[3] < v21)
    {
      sub_21B24F738(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_21B24BD44(v9, v8);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v24 = v16;
    sub_21B253D2C();
    v16 = v24;
    v2 = v32;
    if ((v22 & 1) == 0)
    {
LABEL_19:
      v2[(v16 >> 6) + 8] |= 1 << v16;
      v25 = (v2[6] + 16 * v16);
      *v25 = v9;
      v25[1] = v8;
      *(v2[7] + 8 * v16) = v14;
      v26 = v2[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_31;
      }

      v2[2] = v27;

      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v16) = v14;
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21B24B3A8(0, v5[2] + 1, 1, v5);
    }

    v29 = v5[2];
    v28 = v5[3];
    if (v29 >= v28 >> 1)
    {
      v5 = sub_21B24B3A8((v28 > 1), v29 + 1, 1, v5);
    }

    v5[2] = v29 + 1;
    v6 = &v5[5 * v29];
    v6[5] = v8;
    v6[6] = v4++;
    v6[4] = v9;
    v6[7] = v4;
    *(v6 + 64) = 0;
    if (v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E120, &qword_21B351998);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B31B4C4()
{
  v1 = sub_21B25F984(MEMORY[0x277D84F90]);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v41 = *(v0 + 32);
  v42 = v3;
  v43 = *(v0 + 40);
  if (*(v0 + 40))
  {
    if (v43 == 1 && *(v3 + 16))
    {
      v4 = (v3 + 32);
    }

    else
    {
      swift_beginAccess();
      v5 = *(v2 + 16);
      if (!v5)
      {
        goto LABEL_44;
      }

      v4 = (v5 + 8);
    }

    v3 = *v4;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_43;
  }

  v7 = MEMORY[0x277D84F90];
  v40 = v2;
  while (1)
  {
    if (v3 == *(v6 + 8))
    {
      goto LABEL_39;
    }

    if ((sub_21B2D3BE8(v3, v42, v41, v43) & 1) == 0)
    {
      sub_21B34B634();

      v39 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v39);

      MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
      goto LABEL_47;
    }

    if (v3 < 0)
    {
      goto LABEL_47;
    }

    v9 = *(v6 + 8);
    if (v3 >= v9)
    {
      goto LABEL_47;
    }

    v10 = *(v2 + 24);
    v11 = sub_21B2B1790(v3, *(v2 + 16), v9);
    v13 = v11;
    v14 = v12;
    if (!v1[2])
    {
      break;
    }

    v15 = sub_21B24BDD8(v11, v12 & 1);
    if ((v16 & 1) == 0)
    {
      break;
    }

    v17 = *(v1[7] + 8 * v15);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v7 = sub_21B23A448(v7);
      if ((v17 & 0x8000000000000000) != 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:

        return v7;
      }
    }

    if (v17 >= v7[2])
    {
      goto LABEL_42;
    }

    sub_21B28DFBC(v3, v3 + 1);
LABEL_11:
    v3 = sub_21B2B4370(v3);
    v6 = *(v2 + 16);
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  v18 = v7;
  v19 = v7[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v14;
  v22 = isUniquelyReferenced_nonNull_native;
  v23 = v21;
  v25 = sub_21B24BDD8(v13, v21 & 1);
  v26 = v1[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (!__OFADD__(v26, v27))
  {
    v29 = v24;
    if (v1[3] < v28)
    {
      sub_21B24F9F8(v28, v22);
      v30 = sub_21B24BDD8(v13, v23 & 1);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_48;
      }

      v25 = v30;
      if ((v29 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(v1[7] + 8 * v25) = v19;
LABEL_33:
      v7 = v18;
      v2 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B24B3CC(0, v18[2] + 1, 1, v18);
      }

      v37 = v7[2];
      v36 = v7[3];
      if (v37 >= v36 >> 1)
      {
        v7 = sub_21B24B3CC((v36 > 1), v37 + 1, 1, v7);
      }

      v7[2] = v37 + 1;
      v8 = &v7[5 * v37];
      v8[4] = v13;
      *(v8 + 40) = v23 & 1;
      v8[6] = v3;
      v8[7] = v3 + 1;
      *(v8 + 64) = 0;
      goto LABEL_11;
    }

    if (v22)
    {
      if (v24)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_21B253E90();
      if (v29)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v1[(v25 >> 6) + 8] |= 1 << v25;
    v32 = v1[6] + 16 * v25;
    *v32 = v13;
    *(v32 + 8) = v23 & 1;
    *(v1[7] + 8 * v25) = v19;
    v33 = v1[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_41;
    }

    v1[2] = v35;
    goto LABEL_33;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_47:
  sub_21B34B824();
  __break(1u);
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B31B944(uint64_t a1)
{
  v2 = sub_21B25F984(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v30 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      v7 = v30 + 16 * v4;
      v8 = *v7;
      v9 = *(v7 + 8);
      if (!v2[2])
      {
        break;
      }

      v10 = sub_21B24BDD8(v8, v9);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v2[7] + 8 * v10);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v5 = sub_21B23A448(v5);
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
LABEL_27:

          return v5;
        }
      }

      if (v12 >= v5[2])
      {
        goto LABEL_32;
      }

      sub_21B28DFBC(v4, v4 + 1);
      if (++v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v13 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v2;
    v15 = sub_21B24BDD8(v8, v9);
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v2[3] < v20)
    {
      sub_21B24F9F8(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_21B24BDD8(v8, v9);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_33;
      }

LABEL_16:
      if ((v21 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v23 = v15;
    sub_21B253E90();
    v15 = v23;
    v2 = v31;
    if ((v21 & 1) == 0)
    {
LABEL_19:
      v2[(v15 >> 6) + 8] |= 1 << v15;
      v24 = v2[6] + 16 * v15;
      *v24 = v8;
      *(v24 + 8) = v9;
      *(v2[7] + 8 * v15) = v13;
      v25 = v2[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_31;
      }

      v2[2] = v26;
      goto LABEL_21;
    }

LABEL_17:
    *(v2[7] + 8 * v15) = v13;
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21B24B3CC(0, v5[2] + 1, 1, v5);
    }

    v28 = v5[2];
    v27 = v5[3];
    if (v28 >= v27 >> 1)
    {
      v5 = sub_21B24B3CC((v27 > 1), v28 + 1, 1, v5);
    }

    v5[2] = v28 + 1;
    v6 = &v5[5 * v28];
    v6[6] = v4++;
    v6[4] = v8;
    *(v6 + 40) = v9;
    v6[7] = v4;
    *(v6 + 64) = 0;
    if (v4 == v3)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

uint64_t sub_21B31BC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EC48, &qword_21B354890);
  v81 = *(v80 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  v12 = &v72 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F5F8, &qword_21B357460);
  v77 = *(v78 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v73 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v86 = *(v15 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v72 - v17;
  *&v88 = a1;
  *(&v88 + 1) = a2;
  *&v89 = a3;

  DataFrame.subscript.getter(a4, a5);
  v87 = a3;

  v79 = *(a1 + 16);
  if (!v79)
  {

LABEL_6:
    v23 = 0;
    v25 = 2;
    goto LABEL_7;
  }

  sub_21B233A74(a1 + 32, v92);
  v19 = v93;
  v20 = v94;
  __swift_project_boxed_opaque_existential_1(v92, v93);
  v21 = *(v20 + 8);
  v22 = *(v21 + 48);

  v23 = v22(v19, v21);
  result = sub_21B233960(v92);
  if (v23 < 0)
  {
    goto LABEL_34;
  }

  if (!v23)
  {
    goto LABEL_6;
  }

  v25 = 0;
LABEL_7:
  sub_21B254074(0, v23, v25);

  sub_21B23A9F4(0, v23, v25);
  v26 = *(&v96 + 1);
  v27 = v97;
  __swift_project_boxed_opaque_existential_1(&v95, *(&v96 + 1));
  (*(*(v27 + 8) + 160))(v92, 0, v23, v25, v26);
  sub_21B23A9F4(0, v23, v25);
  sub_21B233960(&v95);
  v28 = v93;
  v29 = v94;
  __swift_project_boxed_opaque_existential_1(v92, v93);
  v30 = (*(*(v29 + 8) + 80))(v28);
  v31 = sub_21B34A834();
  if (v30 == v31)
  {
    sub_21B26EE10(&v95);
    v49 = sub_21B3184C0();
    sub_21B261664(&v95, &qword_27CD7E6E0, &qword_21B352300);
  }

  else
  {
    v32 = v31;
    v33 = a2;
    v34 = v93;
    v35 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v36 = (*(*(v35 + 8) + 48))(v34);
    v37 = MEMORY[0x277D84F90];
    if (v36)
    {
      v38 = v36;
      v84 = v12;
      v91 = MEMORY[0x277D84F90];
      sub_21B2540A8(0, v36 & ~(v36 >> 63), 0);
      v37 = v91;
      v39 = v93;
      v40 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      result = (*(*(v40 + 8) + 32))(v39);
      if (v38 < 0)
      {
        goto LABEL_35;
      }

      v41 = result;
      v85 = v32 - 8;
      do
      {
        v42 = v93;
        v43 = v94;
        __swift_project_boxed_opaque_existential_1(v92, v93);
        (*(*(v43 + 8) + 128))(&v95, v41, v42);
        v88 = v95;
        v89 = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v44 = swift_dynamicCast();
        (*(*(v32 - 8) + 56))(v18, v44 ^ 1u, 1, v32);
        v91 = v37;
        v46 = *(v37 + 16);
        v45 = *(v37 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_21B2540A8(v45 > 1, v46 + 1, 1);
          v37 = v91;
        }

        *(v37 + 16) = v46 + 1;
        sub_21B326B74(v18, v37 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v46, &qword_27CD7E100, &unk_21B352A30);
        v47 = v93;
        v48 = v94;
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v41 = (*(*(v48 + 8) + 64))(v41, v47);
        --v38;
      }

      while (v38);
      v12 = v84;
    }

    v49 = sub_21B318B28(v37);

    a2 = v33;
  }

  v50 = v73;
  v51 = sub_21B2A6F6C(v49);

  v52 = *(v51 + 16);
  if (!v52)
  {

    v54 = MEMORY[0x277D84F90];
LABEL_31:
    sub_21B25F000(v92);
    return v54;
  }

  v91 = MEMORY[0x277D84F90];
  result = sub_21B2543A8(0, v52, 0);
  v53 = 0;
  v76 = v51 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
  v54 = v91;
  v75 = v51;
  v74 = v52;
  while (v53 < *(v51 + 16))
  {
    v86 = v54;
    sub_21B2615FC(v76 + *(v81 + 72) * v53, v12, &qword_27CD7EC48, &qword_21B354890);
    v55 = &v12[*(v80 + 48)];
    v56 = *v55;
    v85 = *(v55 + 1);
    LODWORD(v84) = v55[16];
    sub_21B2615FC(v12, v50, &qword_27CD7E100, &unk_21B352A30);
    if (!v79)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
LABEL_25:
      v63 = 0;
      v64 = 2;
      goto LABEL_26;
    }

    v82 = v53;
    v57 = v56;
    v58 = v12;
    sub_21B233A74(a1 + 32, &v88);
    v59 = a2;
    v60 = *(&v89 + 1);
    v61 = v90;
    __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
    v62 = *(v61 + 8);
    v83 = *(v62 + 48);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v63 = v83(v60, v62);
    result = sub_21B233960(&v88);
    if (v63 < 0)
    {
      goto LABEL_33;
    }

    a2 = v59;
    v12 = v58;
    v50 = v73;
    v56 = v57;
    v53 = v82;
    if (!v63)
    {
      goto LABEL_25;
    }

    v64 = 0;
LABEL_26:
    v65 = v50 + *(v78 + 48);
    sub_21B254074(0, v63, v64);
    v66 = v87;

    sub_21B23A9F4(0, v63, v64);
    v67 = sub_21B248CCC(v56, v85, v84, 0, v63, v64);
    *v65 = a1;
    *(v65 + 8) = a2;
    *(v65 + 16) = v66;
    *(v65 + 24) = v67;
    *(v65 + 32) = v68;
    *(v65 + 40) = v69;
    sub_21B261664(v12, &qword_27CD7EC48, &qword_21B354890);
    v54 = v86;
    v91 = v86;
    v71 = *(v86 + 16);
    v70 = *(v86 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_21B2543A8(v70 > 1, v71 + 1, 1);
      v54 = v91;
    }

    ++v53;
    *(v54 + 16) = v71 + 1;
    result = sub_21B326B74(v50, v54 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v71, &qword_27CD7F5F8, &qword_21B357460);
    v51 = v75;
    if (v74 == v53)
    {

      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_21B31C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v77 = a1;
  *(&v77 + 1) = a2;
  *&v78 = a3;

  DataFrame.subscript.getter(a4, a5);

  v76 = a3;
  v64 = *(a1 + 16);
  if (!v64)
  {

LABEL_6:
    v14 = 0;
    v16 = 2;
    goto LABEL_7;
  }

  sub_21B233A74(a1 + 32, v82);
  v10 = v83;
  v11 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v12 = *(v11 + 8);
  v13 = *(v12 + 48);

  v14 = v13(v10, v12);
  result = sub_21B233960(v82);
  if (v14 < 0)
  {
    goto LABEL_36;
  }

  if (!v14)
  {
    goto LABEL_6;
  }

  v16 = 0;
LABEL_7:
  sub_21B254074(0, v14, v16);

  sub_21B23A9F4(0, v14, v16);
  v17 = *(&v86 + 1);
  v18 = v87;
  __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
  (*(*(v18 + 8) + 160))(v82, 0, v14, v16, v17);
  sub_21B23A9F4(0, v14, v16);
  sub_21B233960(&v85);
  v19 = v83;
  v20 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v63 = a2;
  v75 = a1;
  if ((*(*(v20 + 8) + 80))(v19) == MEMORY[0x277CC9318])
  {
    sub_21B26F088(&v85);
    v36 = sub_21B318FFC();
    sub_21B261664(&v85, &qword_27CD7E6D8, &qword_21B3522F8);
  }

  else
  {
    v21 = v83;
    v22 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v23 = (*(*(v22 + 8) + 48))(v21);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v25 = v23;
      v81 = MEMORY[0x277D84F90];
      sub_21B2540C8(0, v23 & ~(v23 >> 63), 0);
      v24 = v81;
      v26 = v83;
      v27 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      result = (*(*(v27 + 8) + 32))(v26);
      if (v25 < 0)
      {
        goto LABEL_37;
      }

      v28 = result;
      do
      {
        v29 = v83;
        v30 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        (*(*(v30 + 8) + 128))(&v85, v28, v29);
        v77 = v85;
        v78 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        if (swift_dynamicCast())
        {
          v31 = v80;
        }

        else
        {
          v31 = xmmword_21B351960;
          v80 = xmmword_21B351960;
        }

        v81 = v24;
        v33 = *(v24 + 16);
        v32 = *(v24 + 24);
        if (v33 >= v32 >> 1)
        {
          v72 = v31;
          sub_21B2540C8((v32 > 1), v33 + 1, 1);
          v31 = v72;
          v24 = v81;
        }

        *(v24 + 16) = v33 + 1;
        *(v24 + 16 * v33 + 32) = v31;
        v34 = v83;
        v35 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        v28 = (*(*(v35 + 8) + 64))(v28, v34);
        --v25;
      }

      while (v25);
    }

    v36 = sub_21B3194F4(v24);
  }

  v37 = sub_21B2A7194(v36);

  v38 = *(v37 + 16);
  if (!v38)
  {

    v40 = MEMORY[0x277D84F90];
LABEL_33:
    sub_21B25F000(v82);
    return v40;
  }

  *&v80 = MEMORY[0x277D84F90];
  result = sub_21B2543E8(0, v38, 0);
  v39 = 0;
  v40 = v80;
  v41 = (v37 + 64);
  v61 = v38;
  v62 = v37;
  while (v39 < *(v37 + 16))
  {
    v74 = v40;
    v42 = *(v41 - 4);
    v43 = *(v41 - 3);
    v45 = *(v41 - 2);
    v44 = *(v41 - 1);
    v46 = *v41;
    v73 = v42;
    v71 = *v41;
    if (!v64)
    {
      swift_bridgeObjectRetain_n();
      v48 = v63;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_21B260DAC(v42, v43);
      v49 = v45;
      v54 = v45;
      v51 = v44;
      sub_21B254074(v54, v44, v46);
      sub_21B260DAC(v42, v43);
LABEL_27:
      v52 = 0;
      v53 = 2;
      goto LABEL_28;
    }

    sub_21B233A74(v75 + 32, &v77);
    v47 = v79;
    v69 = *(&v78 + 1);
    __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
    v65 = *(v47 + 8);
    v66 = *(v65 + 48);
    swift_bridgeObjectRetain_n();
    v48 = v63;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_21B260DAC(v42, v43);
    v49 = v45;
    v50 = v45;
    v51 = v44;
    sub_21B254074(v50, v44, v46);
    sub_21B260DAC(v42, v43);
    v52 = v66(v69, v65);
    result = sub_21B233960(&v77);
    if (v52 < 0)
    {
      goto LABEL_35;
    }

    if (!v52)
    {
      goto LABEL_27;
    }

    v53 = 0;
LABEL_28:
    sub_21B254074(0, v52, v53);

    sub_21B23A9F4(0, v52, v53);
    v55 = sub_21B248CCC(v49, v51, v71, 0, v52, v53);
    v67 = v56;
    v68 = v55;
    v70 = v57;
    sub_21B260C58(v73, v43);
    result = sub_21B23A9F4(v49, v51, v71);
    v40 = v74;
    *&v80 = v74;
    v59 = *(v74 + 16);
    v58 = *(v74 + 24);
    if (v59 >= v58 >> 1)
    {
      result = sub_21B2543E8((v58 > 1), v59 + 1, 1);
      v40 = v80;
    }

    ++v39;
    *(v40 + 16) = v59 + 1;
    v60 = v40 + (v59 << 6);
    *(v60 + 32) = v73;
    *(v60 + 40) = v43;
    *(v60 + 48) = v75;
    *(v60 + 56) = v48;
    *(v60 + 64) = v76;
    *(v60 + 72) = v68;
    *(v60 + 80) = v67;
    v41 += 40;
    *(v60 + 88) = v70;
    v37 = v62;
    if (v61 == v39)
    {

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21B31CC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  *&v77 = a1;
  *(&v77 + 1) = a2;
  *&v78 = a3;

  DataFrame.subscript.getter(a4, a5);

  v76 = a2;

  v10 = a1;
  v68 = *(a1 + 16);
  if (!v68)
  {

LABEL_6:
    v15 = 0;
    v17 = 2;
    goto LABEL_7;
  }

  sub_21B233A74(a1 + 32, v82);
  v11 = v83;
  v12 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v13 = *(v12 + 8);
  v14 = *(v13 + 48);

  v15 = v14(v11, v13);
  result = sub_21B233960(v82);
  if (v15 < 0)
  {
    goto LABEL_36;
  }

  if (!v15)
  {
    goto LABEL_6;
  }

  v17 = 0;
LABEL_7:
  sub_21B254074(0, v15, v17);

  sub_21B23A9F4(0, v15, v17);
  v18 = *(&v86 + 1);
  v19 = v87;
  __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
  (*(*(v19 + 8) + 160))(v82, 0, v15, v17, v18);
  sub_21B23A9F4(0, v15, v17);
  sub_21B233960(&v85);
  v20 = v83;
  v21 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  if ((*(*(v21 + 8) + 80))(v20) == MEMORY[0x277D839B0])
  {
    sub_21B26E924(&v85);
    v37 = sub_21B3197F8();
    sub_21B261664(&v85, &qword_27CD7E6F0, &qword_21B352310);
  }

  else
  {
    v22 = v83;
    v23 = v84;
    __swift_project_boxed_opaque_existential_1(v82, v83);
    v24 = (*(*(v23 + 8) + 48))(v22);
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v26 = v24;
      v81 = MEMORY[0x277D84F90];
      sub_21B2540E8(0, v24 & ~(v24 >> 63), 0);
      v25 = v81;
      v27 = v83;
      v28 = v84;
      __swift_project_boxed_opaque_existential_1(v82, v83);
      result = (*(*(v28 + 8) + 32))(v27);
      if (v26 < 0)
      {
        goto LABEL_37;
      }

      v29 = result;
      do
      {
        v30 = v83;
        v31 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        (*(*(v31 + 8) + 128))(&v85, v29, v30);
        v77 = v85;
        v78 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        if (swift_dynamicCast())
        {
          v32 = v80;
        }

        else
        {
          v32 = 2;
        }

        v81 = v25;
        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_21B2540E8((v33 > 1), v34 + 1, 1);
          v25 = v81;
        }

        *(v25 + 16) = v34 + 1;
        *(v25 + v34 + 32) = v32;
        v35 = v83;
        v36 = v84;
        __swift_project_boxed_opaque_existential_1(v82, v83);
        v29 = (*(*(v36 + 8) + 64))(v29, v35);
        --v26;
      }

      while (v26);
    }

    v37 = sub_21B319C34(v25);
  }

  v38 = sub_21B2A72F4(v37);

  v39 = *(v38 + 16);
  if (!v39)
  {

    v41 = MEMORY[0x277D84F90];
LABEL_33:
    sub_21B25F000(v82);
    return v41;
  }

  v81 = MEMORY[0x277D84F90];
  result = sub_21B254428(0, v39, 0);
  v40 = 0;
  v41 = v81;
  v42 = (v38 + 56);
  v66 = v39;
  v67 = v38;
  while (v40 < *(v38 + 16))
  {
    v75 = v41;
    v74 = *(v42 - 24);
    v43 = *(v42 - 2);
    v44 = *(v42 - 1);
    v45 = *v42;
    v72 = v43;
    v73 = v40;
    if (!v68)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v53 = v7;
      swift_bridgeObjectRetain_n();
      v55 = v44;
      sub_21B254074(v43, v44, v45);
LABEL_27:
      v57 = 0;
      v58 = 2;
      goto LABEL_28;
    }

    v46 = v10;
    sub_21B233A74(v10 + 32, &v77);
    v70 = *(&v78 + 1);
    v47 = v45;
    v48 = v79;
    __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
    v49 = *(v48 + 8);
    v50 = v7;
    v51 = *(v49 + 48);
    v52 = v46;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v53 = v50;
    swift_bridgeObjectRetain_n();
    v54 = v43;
    v55 = v44;
    v56 = v47;
    sub_21B254074(v54, v44, v47);
    v57 = v51(v70, v49);
    result = sub_21B233960(&v77);
    if (v57 < 0)
    {
      goto LABEL_35;
    }

    v10 = v52;
    v45 = v56;
    if (!v57)
    {
      goto LABEL_27;
    }

    v58 = 0;
LABEL_28:
    sub_21B254074(0, v57, v58);

    sub_21B23A9F4(0, v57, v58);
    v71 = sub_21B248CCC(v72, v55, v45, 0, v57, v58);
    v59 = v45;
    v61 = v60;
    v69 = v62;
    result = sub_21B23A9F4(v72, v55, v59);
    v41 = v75;
    v81 = v75;
    v64 = *(v75 + 16);
    v63 = *(v75 + 24);
    if (v64 >= v63 >> 1)
    {
      result = sub_21B254428((v63 > 1), v64 + 1, 1);
      v41 = v81;
    }

    *(v41 + 16) = v64 + 1;
    v65 = v41 + 56 * v64;
    *(v65 + 32) = v74;
    v40 = v73 + 1;
    *(v65 + 40) = v10;
    *(v65 + 48) = v76;
    v7 = v53;
    *(v65 + 56) = v53;
    *(v65 + 64) = v71;
    *(v65 + 72) = v61;
    *(v65 + 80) = v69;
    v42 += 32;
    v38 = v67;
    if (v66 == v73 + 1)
    {

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21B31D344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  *&v81 = a1;
  *(&v81 + 1) = a2;
  *&v82 = a3;

  DataFrame.subscript.getter(a4, a5);

  v69 = v9;
  v70 = a3;
  v73 = *(v9 + 16);
  v74 = a2;
  if (v73)
  {
    sub_21B233A74(v9 + 32, v87);
    v10 = v88;
    v11 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v12 = *(v11 + 8);
    v13 = *(v12 + 48);

    v14 = v13(v10, v12);
    result = sub_21B233960(v87);
    if (v14 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v14 = 0;
  v16 = 2;
LABEL_7:
  sub_21B254074(0, v14, v16);

  sub_21B23A9F4(0, v14, v16);
  v17 = *(&v91 + 1);
  v18 = v92;
  __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
  (*(*(v18 + 8) + 160))(v87, 0, v14, v16, v17);
  sub_21B23A9F4(0, v14, v16);
  sub_21B233960(&v90);
  v19 = v88;
  v20 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  if ((*(*(v20 + 8) + 80))(v19) == MEMORY[0x277D839F8])
  {
    sub_21B26E6AC(&v90);
    v39 = sub_21B319ECC();
    sub_21B261664(&v90, &qword_27CD7E6F8, &qword_21B352318);
  }

  else
  {
    v21 = v88;
    v22 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v23 = (*(*(v22 + 8) + 48))(v21);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      v25 = v23;
      v86 = MEMORY[0x277D84F90];
      sub_21B254148(0, v23 & ~(v23 >> 63), 0);
      v24 = v86;
      v26 = v88;
      v27 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      result = (*(*(v27 + 8) + 32))(v26);
      if (v25 < 0)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      v28 = result;
      do
      {
        v29 = v88;
        v30 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        (*(*(v30 + 8) + 128))(&v90, v28, v29);
        v81 = v90;
        v82 = v91;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
        v31 = swift_dynamicCast();
        if (v31)
        {
          v32 = v85;
        }

        else
        {
          v32 = 0;
        }

        v86 = v24;
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        if (v34 >= v33 >> 1)
        {
          v38 = v31;
          sub_21B254148((v33 > 1), v34 + 1, 1);
          LOBYTE(v31) = v38;
          v24 = v86;
        }

        *(v24 + 16) = v34 + 1;
        v35 = v24 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v31 ^ 1;
        v36 = v88;
        v37 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v28 = (*(*(v37 + 8) + 64))(v28, v36);
        --v25;
      }

      while (v25);
    }

    v39 = sub_21B31A34C(v24);
  }

  v40 = sub_21B2A7448(v39);

  v41 = *(v40 + 16);
  v42 = v70;
  if (v41)
  {
    v85 = MEMORY[0x277D84F90];
    result = sub_21B254468(0, v41, 0);
    if (*(v40 + 16))
    {
      v43 = 0;
      v44 = v85;
      v45 = (v40 + 64);
      v71 = v41 - 1;
      v72 = v40;
      do
      {
        v78 = *(v45 - 4);
        v79 = v44;
        v80 = *(v45 - 24);
        v46 = *(v45 - 2);
        v47 = *(v45 - 1);
        v48 = *v45;
        if (v73)
        {
          sub_21B233A74(v9 + 32, &v81);
          v76 = v48;
          v49 = *(&v82 + 1);
          v50 = v83;
          __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
          v51 = *(v50 + 8);
          v75 = *(v51 + 48);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v52 = v76;
          sub_21B254074(v46, v47, v76);
          v53 = v75(v49, v51);
          result = sub_21B233960(&v81);
          if (v53 < 0)
          {
            goto LABEL_37;
          }

          v9 = v69;
          v54 = v70;
          if (v53)
          {
            v55 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v54 = v42;
          swift_bridgeObjectRetain_n();
          sub_21B254074(v46, v47, v48);
          v52 = v48;
        }

        v53 = 0;
        v55 = 2;
LABEL_28:
        sub_21B254074(0, v53, v55);

        sub_21B23A9F4(0, v53, v55);
        v56 = sub_21B248CCC(v46, v47, v52, 0, v53, v55);
        v57 = v52;
        v58 = v9;
        v59 = v56;
        v77 = v60;
        v62 = v61;
        result = sub_21B23A9F4(v46, v47, v57);
        v63 = v80;
        v84 = v80;
        LODWORD(v81) = v86;
        *(&v81 + 3) = *(&v86 + 3);
        v44 = v79;
        v85 = v79;
        v65 = *(v79 + 16);
        v64 = *(v79 + 24);
        v66 = v58;
        if (v65 >= v64 >> 1)
        {
          result = sub_21B254468((v64 > 1), v65 + 1, 1);
          v63 = v80;
          v44 = v85;
        }

        *(v44 + 16) = v65 + 1;
        v67 = v44 + (v65 << 6);
        *(v67 + 32) = v78;
        *(v67 + 40) = v63;
        v68 = *(&v81 + 3);
        *(v67 + 41) = v81;
        *(v67 + 44) = v68;
        *(v67 + 48) = v58;
        *(v67 + 56) = v74;
        *(v67 + 64) = v54;
        *(v67 + 72) = v59;
        *(v67 + 80) = v77;
        *(v67 + 88) = v62;
        if (v71 == v43)
        {

          goto LABEL_35;
        }

        v42 = v54;
        v9 = v66;
        v45 += 40;
        ++v43;
      }

      while (v43 < *(v72 + 16));
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_35:
  sub_21B25F000(v87);
  return v44;
}