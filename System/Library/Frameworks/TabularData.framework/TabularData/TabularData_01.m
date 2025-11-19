Swift::Int_optional __swiftcall DataFrame.indexOfColumn(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v37 = v4;
  if (!*(v5 + 16) || (a1._countAndFlagsBits = sub_21B24B5D0(a1._countAndFlagsBits, a1._object, MEMORY[0x277D83758], sub_21B24FDE4), (a1._object & 1) == 0))
  {
    v35 = v5;
    v6 = 0;
    v7 = v37 + 56;
    v8 = -*(v37 + 16);
    v36 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v6 + 1;
      v10 = (v7 + 32 * v6);
      while (1)
      {
        if (v8 + v9 == 1)
        {
          v21 = *(v36 + 16);
          if (v21)
          {
            v38 = MEMORY[0x277D84F90];
            sub_21B231F10(0, v21, 0);
            v22 = v38;
            v23 = (v36 + 56);
            do
            {
              v24 = *(v23 - 1);
              v25 = *v23;
              v26 = *(v38 + 16);
              v27 = *(v38 + 24);

              if (v26 >= v27 >> 1)
              {
                sub_21B231F10((v27 > 1), v26 + 1, 1);
              }

              *(v38 + 16) = v26 + 1;
              v28 = v38 + 16 * v26;
              *(v28 + 32) = v24;
              *(v28 + 40) = v25;
              v23 += 4;
              --v21;
            }

            while (v21);

            v29 = *(v38 + 16);
            if (v29)
            {
LABEL_26:
              v31 = *(v22 + 32);
              v30 = *(v22 + 40);

              if (v29 == 1 && *(v35 + 16))
              {
                v32 = sub_21B24B5D0(v31, v30, MEMORY[0x277D83758], sub_21B24FDE4);
                v34 = v33;

                if (v34)
                {
                  LOBYTE(a1._object) = 0;
                  a1._countAndFlagsBits = *(*(v35 + 56) + 8 * v32);
                  return *&a1._countAndFlagsBits;
                }

                goto LABEL_33;
              }
            }
          }

          else
          {

            v22 = MEMORY[0x277D84F90];
            v29 = *(MEMORY[0x277D84F90] + 16);
            if (v29)
            {
              goto LABEL_26;
            }
          }

LABEL_33:
          a1._countAndFlagsBits = 0;
          LOBYTE(a1._object) = 1;
          return *&a1._countAndFlagsBits;
        }

        v6 = v9;
        if ((v9 - 1) >= *(v37 + 16))
        {
          __break(1u);
          return *&a1._countAndFlagsBits;
        }

        v12 = *(v10 - 3);
        v11 = *(v10 - 2);
        v13 = *(v10 - 1);
        v14 = *v10;
        if (v12 == countAndFlagsBits && v11 == object)
        {
          break;
        }

        ++v9;
        v10 += 4;
        a1._countAndFlagsBits = sub_21B34B9F4();
        if (a1._countAndFlagsBits)
        {
          goto LABEL_15;
        }
      }

      v12 = countAndFlagsBits;
LABEL_15:

      v16 = v36;
      a1._countAndFlagsBits = swift_isUniquelyReferenced_nonNull_native();
      if ((a1._countAndFlagsBits & 1) == 0)
      {
        a1._countAndFlagsBits = sub_21B254054(0, *(v36 + 16) + 1, 1);
        v16 = v36;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        a1._countAndFlagsBits = sub_21B254054((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
        v16 = v36;
      }

      *(v16 + 16) = v19;
      v36 = v16;
      v20 = (v16 + 32 * v18);
      v20[4] = v12;
      v20[5] = v11;
      v20[6] = v13;
      v20[7] = v14;
      v7 = v37 + 56;
    }
  }

  LOBYTE(a1._object) = 0;
  a1._countAndFlagsBits = *(*(v5 + 56) + 8 * a1._countAndFlagsBits);
  return *&a1._countAndFlagsBits;
}

uint64_t sub_21B23B2EC(void *a1)
{
  v4 = *v1;
  if (*(*v1 + 2))
  {
    sub_21B233A74((v4 + 32), v25);
    v6 = v26;
    v5 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v7 = (*(*(v5 + 8) + 48))(v6);
    sub_21B233960(v25);
  }

  else
  {
    v7 = 0;
  }

  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v10 = (*(*(v8 + 8) + 48))(v9);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  result = (*(*(v11 + 8) + 48))(v12);
  if (v10 >= v7)
  {
    if (v7 < result)
    {
      v2 = *(v4 + 2);
      if (v2)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_13;
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
    v14 = __OFSUB__(v7, result);
    v7 -= result;
    if (v14)
    {
      goto LABEL_28;
    }

    if (v7 < 0)
    {
      while (1)
      {
        __break(1u);
LABEL_30:
        v4 = sub_21B23A2F4(v4);
LABEL_13:
        v17 = 0;
        while (v17 != v2)
        {
          v19 = a1[3];
          v18 = a1[4];
          __swift_project_boxed_opaque_existential_1(a1, v19);
          result = (*(*(v18 + 8) + 48))(v19);
          v20 = result - v7;
          if (__OFSUB__(result, v7))
          {
            goto LABEL_25;
          }

          if (v17 >= *(v4 + 2))
          {
            goto LABEL_26;
          }

          if (v20 < 0)
          {
            goto LABEL_27;
          }

          if (v20)
          {
            v21 = &v4[40 * v17 + 32];
            do
            {
              v22 = *(v21 + 24);
              v23 = *(v21 + 32);
              __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
              result = (*(v23 + 16))(v22, v23);
              --v20;
            }

            while (v20);
          }

          ++v17;
          *v24 = v4;
          if (v17 == v2)
          {
            return result;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }
    }

    for (; v7; --v7)
    {
      v15 = a1[3];
      v16 = a1[4];
      __swift_mutable_project_boxed_opaque_existential_1(a1, v15);
      result = (*(v16 + 16))(v15, v16);
    }
  }

  return result;
}

uint64_t sub_21B23B550@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(*(v3 + 8) + 8))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21B23B5A8(uint64_t a1)
{
  result = MEMORY[0x21CEED8D0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_21B233D18(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B23B6C4(uint64_t a1)
{
  v2 = sub_21B248FC4();
  v3 = MEMORY[0x21CEED8D0](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v17 = v3;
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = a1 + 48;
  v10 = *(a1 + 48);
  v11 = *(v12 + 8);
  if (v10 != v11)
  {
    do
    {
      v15[0] = v4;
      v15[1] = v5;
      v15[2] = v7;
      v15[3] = v6;
      v15[4] = v8;
      v16 = v9;
      v13 = DataFrame.Rows.index(after:)(v10);
      sub_21B254588(v15, v10);
      v10 = v13;
    }

    while (v13 != v11);
    v3 = v17;
  }

  sub_21B23A9F4(v6, v8, v9);
  return v3;
}

Swift::Void __swiftcall DataFrame.removeAlias(_:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  if (v3)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v6 = 0;
    v7 = (v2 + 40);
    do
    {
      v8 = v6 + 1;
      v9 = *(v7 - 1) == countAndFlagsBits && *v7 == object;
      if (v9 || (sub_21B34B9F4() & 1) != 0)
      {
        sub_21B248A60(v6, v6 + 1);
      }

      v7 += 4;
      ++v6;
    }

    while (v3 != v8);
  }

  sub_21B23DD58(0, 0, 2);

  sub_21B23A9F4(0, 0, 2);
}

uint64_t DataFrame.rows.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  if (!*(*v1 + 16))
  {
    v13 = *v1;

    goto LABEL_6;
  }

  sub_21B233A74(v3 + 32, v14);
  v6 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v8 = *(v7 + 8);
  v9 = *(v8 + 48);

  v10 = v9(v6, v8);
  result = sub_21B233960(v14);
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      v12 = 0;
LABEL_7:
      *a1 = v3;
      *(a1 + 8) = v4;
      *(a1 + 16) = v5;
      *(a1 + 24) = 0;
      *(a1 + 32) = v10;
      *(a1 + 40) = v12;
      return result;
    }

LABEL_6:
    v10 = 0;
    v12 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B23B9BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  result = sub_21B2A32B8();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = result;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_21B23BA34(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

__n128 DataFrame.rows.setter(__n128 *a1)
{
  v3 = v1->n128_u64[0];
  v4 = v1->n128_i64[1];
  v5 = v1[1].n128_i64[0];

  v6 = a1[1].n128_u64[0];
  sub_21B23A9F4(a1[1].n128_i64[1], a1[2].n128_i64[0], a1[2].n128_i8[8]);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v6;
  return result;
}

void (*DataFrame.rows.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  if (!*(*v1 + 16))
  {
    goto LABEL_7;
  }

  sub_21B233A74(v5 + 32, v3 + 48);
  v8 = *(v4 + 72);
  v9 = *(v4 + 80);
  __swift_project_boxed_opaque_existential_1((v4 + 48), v8);
  v10 = *(v9 + 8);
  v11 = *(v10 + 48);

  v12 = v11(v8, v10);
  sub_21B233960(v4 + 48);
  if (v12 < 0)
  {
    __break(1u);
LABEL_7:

    goto LABEL_8;
  }

  if (v12)
  {
    v13 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v12 = 0;
  v13 = 2;
LABEL_9:
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = 0;
  *(v4 + 32) = v12;
  *(v4 + 40) = v13;
  return sub_21B23BC54;
}

void sub_21B23BC54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[11];
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = *(*a1 + 40);
  v10 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  v18 = **a1;
  if (a2)
  {

    sub_21B254074(v6, v7, v8);

    sub_21B23A9F4(v6, v7, v8);
    *v3 = v18;
    v3[1] = v4;
    v3[2] = v5;
    v12 = *v2;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];
    v16 = v2[4];
    v17 = *(v2 + 40);

    sub_21B23A9F4(v15, v16, v17);
  }

  else
  {

    sub_21B23A9F4(v6, v7, v8);
    *v3 = v18;
    v3[1] = v4;
    v3[2] = v5;
  }

  free(v2);
}

uint64_t DataFrame.shape.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (!*(*v0 + 16))
  {
    v11 = *v0;

    goto LABEL_6;
  }

  sub_21B233A74(v1 + 32, v14);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v6 = *(v5 + 8);
  v7 = *(v6 + 48);

  v8 = v7(v4, v6);
  result = sub_21B233960(v14);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      v10 = 0;
LABEL_7:
      v12 = sub_21B2FB1D4(0, v8, v10);

      sub_21B23A9F4(0, v8, v10);
      v13 = *(v1 + 16);
      return v12;
    }

LABEL_6:
    v8 = 0;
    v10 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

TabularData::DataFrame __swiftcall DataFrame.init()()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  *v0 = MEMORY[0x277D84F90];
  v0[1] = v2;
  v3 = sub_21B25DC2C(v2);
  v1[2] = v3;
  result.columnIndicesByName._rawValue = v5;
  result.aliases._rawValue = v4;
  result.columns._rawValue = v3;
  return result;
}

uint64_t sub_21B23BEF8@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v69 = MEMORY[0x277D84F90];
  sub_21B254034(0, v3, 0);
  v4 = v69;
  if (v3)
  {
    v5 = *(v2 + 16);
    v6 = v2 + 32;
    v7 = v3;
    do
    {
      if (!v5)
      {
        goto LABEL_39;
      }

      sub_21B233A74(v6, &v65);
      v8 = v67;
      __swift_project_boxed_opaque_existential_1(&v65, v67);
      v9 = (*(*(*(&v8 + 1) + 8) + 48))(v8);
      sub_21B233960(&v65);
      v69 = v4;
      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        sub_21B254034((v10 > 1), v11 + 1, 1);
        v4 = v69;
      }

      v4[2] = v11 + 1;
      v4[v11 + 4] = v9;
      v6 += 40;
      --v5;
      --v7;
    }

    while (v7);
  }

  v12 = *(v2 + 16);
  if (v3 != v12)
  {
    v51 = v2 + 40 * v3 + 32;
    do
    {
      if (v3 >= v12)
      {
        goto LABEL_40;
      }

      sub_21B233A74(v51, &v65);
      v52 = v67;
      __swift_project_boxed_opaque_existential_1(&v65, v67);
      v53 = (*(*(*(&v52 + 1) + 8) + 48))(v52);
      sub_21B233960(&v65);
      v69 = v4;
      v55 = v4[2];
      v54 = v4[3];
      if (v55 >= v54 >> 1)
      {
        sub_21B254034((v54 > 1), v55 + 1, 1);
        v4 = v69;
      }

      ++v3;
      v4[2] = v55 + 1;
      v4[v55 + 4] = v53;
      v12 = *(v2 + 16);
      v51 += 40;
    }

    while (v3 != v12);
  }

  v14 = sub_21B25EF30(v13);

  v15 = *(v14 + 16);

  if (v15 <= 1)
  {

    sub_21B31703C(MEMORY[0x277D84FA0], 0x2EuLL, 0xE100000000000000, &v69);
    v16 = MEMORY[0x277D84F90];
    v17 = sub_21B25DC2C(MEMORY[0x277D84F90]);
    v18 = 0;
    v19 = v2 + 32;
    v58 = v3;
    v59 = v2;
    while (1)
    {
      if (v3 == v18)
      {

        *a2 = v16;
        a2[1] = MEMORY[0x277D84F90];
        a2[2] = v17;
        return result;
      }

      if (v18 >= *(v2 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        sub_21B34BA84();
        __break(1u);
        break;
      }

      sub_21B233A74(v19, &v66);
      v62 = v66;
      v63 = v67;
      v20 = v68;
      v64 = v68;
      v21 = *(&v67 + 1);
      __swift_project_boxed_opaque_existential_1(&v62, *(&v67 + 1));
      v22 = (*(v20[1] + 8))(v21);
      v24 = sub_21B233B78(v22, v23);
      v26 = v25;

      v27 = *(&v63 + 1);
      v4 = v64;
      __swift_mutable_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      (*(v4[1] + 16))(v24, v26, v27);
      sub_21B233A74(&v62, v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_21B249C94(0, *(v16 + 2) + 1, 1, v16, &qword_27CD7E4E8, &qword_21B351DA0);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_21B249C94((v28 > 1), v29 + 1, 1, v16, &qword_27CD7E4E8, &qword_21B351DA0);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[40 * v29];
      v31 = v60[0];
      v32 = v60[1];
      *(v30 + 8) = v61;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v33 = *(&v63 + 1);
      v34 = v64;
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      v35 = (*(v34[1] + 8))(v33);
      v37 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v60[0] = v17;
      v40 = sub_21B24B5D0(v35, v37, MEMORY[0x277D83758], sub_21B24FDE4);
      v41 = *(v17 + 2);
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        goto LABEL_37;
      }

      v4 = v39;
      if (*(v17 + 3) >= v43)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v39 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_21B25201C();
          if ((v4 & 1) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        sub_21B24BE68(v43, isUniquelyReferenced_nonNull_native);
        v44 = sub_21B24B5D0(v35, v37, MEMORY[0x277D83758], sub_21B24FDE4);
        if ((v4 & 1) != (v45 & 1))
        {
          goto LABEL_42;
        }

        v40 = v44;
        if ((v4 & 1) == 0)
        {
LABEL_25:
          v17 = *&v60[0];
          *(*&v60[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
          v46 = (*(v17 + 6) + 16 * v40);
          *v46 = v35;
          v46[1] = v37;
          *(*(v17 + 7) + 8 * v40) = v18;
          v47 = *(v17 + 2);
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_41;
          }

          *(v17 + 2) = v49;
          goto LABEL_11;
        }
      }

      v17 = *&v60[0];
      *(*(*&v60[0] + 56) + 8 * v40) = v18;
LABEL_11:
      sub_21B233960(&v62);
      ++v18;
      v19 += 40;
      v3 = v58;
      v2 = v59;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }
    }
  }

  v65 = 0;
  *&v66 = 0xE000000000000000;
  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000047, 0x800000021B34C3C0);
  v56 = MEMORY[0x21CEED760](v4, MEMORY[0x277D83B88]);
  MEMORY[0x21CEED5E0](v56);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.init<A>(columns:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E0D0, &qword_21B351970);
  *&v71 = a2;
  *(&v71 + 1) = sub_21B25DD98();
  *&v72 = a3;
  v60 = sub_21B34B674();
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v63 = v70;
  *&v71 = a2;
  *&v72 = a3;
  v9 = sub_21B34B664();
  v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v64 = a1;
  isUniquelyReferenced_nonNull_native = sub_21B23CCA8(sub_21B23CC48, 0, a2, MEMORY[0x277D83B88], MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v13);

  v16 = sub_21B25EF30(v15);

  v17 = *(v16 + 16);

  if (v17 >= 2)
  {
LABEL_24:
    v70 = 0;
    *&v71 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000047, 0x800000021B34C3C0);
    v57 = MEMORY[0x21CEED760](isUniquelyReferenced_nonNull_native, MEMORY[0x277D83B88]);
    MEMORY[0x21CEED5E0](v57);

    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v59 = a4;

  sub_21B31703C(MEMORY[0x277D84FA0], 0x2EuLL, 0xE100000000000000, &v74);
  v18 = MEMORY[0x277D84F90];
  v19 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v70 = 0;
  isUniquelyReferenced_nonNull_native = v64;
  sub_21B34BA54();
  sub_21B34B644();
  v20 = v12;
  sub_21B34B654();
  if (*(&v72 + 1))
  {
    v21 = MEMORY[0x277D84F90];
    v63 = a2;
    v62 = v9;
    v61 = v12;
    while (1)
    {
      v22 = v18;
      v23 = isUniquelyReferenced_nonNull_native;
      v64 = v70;
      v67 = v71;
      v68 = v72;
      v24 = v73;
      v69 = v73;
      v25 = *(&v72 + 1);
      __swift_project_boxed_opaque_existential_1(&v67, *(&v72 + 1));
      v26 = (*(*(v24 + 8) + 8))(v25);
      v28 = sub_21B233B78(v26, v27);
      v30 = v29;

      v31 = *(&v68 + 1);
      v32 = v69;
      __swift_mutable_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
      (*(*(v32 + 8) + 16))(v28, v30, v31);
      sub_21B233A74(&v67, v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_21B249C94(0, *(v21 + 2) + 1, 1, v21, &qword_27CD7E4E8, &qword_21B351DA0);
      }

      v34 = *(v21 + 2);
      v33 = *(v21 + 3);
      if (v34 >= v33 >> 1)
      {
        v21 = sub_21B249C94((v33 > 1), v34 + 1, 1, v21, &qword_27CD7E4E8, &qword_21B351DA0);
      }

      *(v21 + 2) = v34 + 1;
      v35 = &v21[40 * v34];
      v36 = v65[0];
      v37 = v65[1];
      *(v35 + 8) = v66;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v38 = *(&v68 + 1);
      v39 = v69;
      __swift_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
      v40 = (*(*(v39 + 8) + 8))(v38);
      v42 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v65[0] = v19;
      v44 = sub_21B24B5D0(v40, v42, MEMORY[0x277D83758], sub_21B24FDE4);
      v45 = *(v19 + 2);
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        break;
      }

      v48 = v43;
      if (*(v19 + 3) >= v47)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21B25201C();
        }
      }

      else
      {
        sub_21B24BE68(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_21B24B5D0(v40, v42, MEMORY[0x277D83758], sub_21B24FDE4);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_23;
        }

        v44 = v49;
      }

      isUniquelyReferenced_nonNull_native = v23;
      v18 = v22;
      if (v48)
      {

        v19 = *&v65[0];
        *(*(*&v65[0] + 56) + 8 * v44) = v64;
      }

      else
      {
        v19 = *&v65[0];
        *(*&v65[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
        v51 = (*(v19 + 6) + 16 * v44);
        *v51 = v40;
        v51[1] = v42;
        *(*(v19 + 7) + 8 * v44) = v64;
        v52 = *(v19 + 2);
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_22;
        }

        *(v19 + 2) = v54;
      }

      sub_21B233960(&v67);
      v9 = v62;
      v20 = v61;
      sub_21B34B654();
      a2 = v63;
      if (!*(&v72 + 1))
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    sub_21B34BA84();
    __break(1u);
    goto LABEL_24;
  }

  v21 = v18;
LABEL_20:
  (*(*(a2 - 1) + 8))(isUniquelyReferenced_nonNull_native, a2);
  (*(v58 + 8))(v20, v9);

  v56 = v59;
  *v59 = v21;
  v56[1] = v18;
  v56[2] = v19;
  return result;
}

uint64_t sub_21B23CC48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(*(v3 + 8) + 48))(v4);
  *a2 = result;
  return result;
}

uint64_t sub_21B23CCA8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_21B34B474();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_21B34AED4();
  v70 = sub_21B34B774();
  v65 = sub_21B34B784();
  sub_21B34B744();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_21B34AEC4();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_21B34B4D4();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_21B34B764();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_21B34B4D4();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_21B34B764();
      sub_21B34B4D4();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t DataFrame.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v29 = *a1;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v22 = v6;
  v33 = v6;
  v34 = v7;
  v8 = DataFrame.Slice.columns.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v20 = v5;
    v21 = v3;
    v28 = MEMORY[0x277D84F90];
    sub_21B254088(0, v9, 0);
    v10 = v28;
    v11 = v8 + 32;
    do
    {
      sub_21B25EFA4(v11, v23);
      v13 = v24;
      v12 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v12 + 16))(v26, v13, v12);
      sub_21B25F000(v23);
      v28 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21B254088((v14 > 1), v15 + 1, 1);
        v10 = v28;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 40 * v15;
      v17 = v26[0];
      v18 = v26[1];
      *(v16 + 64) = v27;
      *(v16 + 32) = v17;
      *(v16 + 48) = v18;
      v11 += 40;
      --v9;
    }

    while (v9);

    v3 = v21;
    v5 = v20;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  result = sub_21B23A9F4(v5, v22, v7);
  *a2 = v10;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_21B23D53C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_21B34B574();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_21B25FCFC(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t DataFrame.columnNames(forAlias:)(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(v2 + 8);
  v7 = *(v6 + 16);
  v32 = v6;
  v8 = v6 + 56;
  v9 = -v7;
  v30 = v8;
  v31 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = v5 + 1;
  v11 = (v8 + 32 * v5);
  while (v9 + v10 != 1)
  {
    v5 = v10;
    if ((v10 - 1) >= *(v32 + 16))
    {
      __break(1u);
      return result;
    }

    v13 = *(v11 - 3);
    v12 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    if (v13 == v4 && v12 == a2)
    {
      v13 = v4;
LABEL_12:

      v17 = v31;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B254054(0, *(v31 + 16) + 1, 1);
        v17 = v31;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        result = sub_21B254054((v18 > 1), v19 + 1, 1);
        v20 = v19 + 1;
        v17 = v31;
      }

      *(v17 + 16) = v20;
      v31 = v17;
      v21 = (v17 + 32 * v19);
      v21[4] = v13;
      v21[5] = v12;
      v21[6] = v14;
      v21[7] = v15;
      v8 = v30;
      goto LABEL_2;
    }

    ++v10;
    v11 += 4;
    result = sub_21B34B9F4();
    if (result)
    {
      goto LABEL_12;
    }
  }

  v22 = *(v31 + 16);
  if (v22)
  {
    v33 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v22, 0);
    v23 = v33;
    v24 = (v31 + 56);
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;
      v27 = *(v33 + 16);
      v28 = *(v33 + 24);

      if (v27 >= v28 >> 1)
      {
        sub_21B231F10((v28 > 1), v27 + 1, 1);
      }

      *(v33 + 16) = v27 + 1;
      v29 = v33 + 16 * v27;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v24 += 4;
      --v22;
    }

    while (v22);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v23;
}

uint64_t DataFrame.containsColumn<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ColumnID();
  v5 = sub_21B233AD0();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  v18 = DataFrame.indexOfColumn(_:)(v8);
  value = v18.value;
  is_nil = v18.is_nil;

  if (is_nil)
  {
    return 0;
  }

  if ((value & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (value >= *(*v3 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_21B233A74(*v3 + 40 * value + 32, v15);
  v13 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v14 = (*(*(v12 + 8) + 80))(v13);
  sub_21B233960(v15);
  return v14 == a2;
}

Swift::Void __swiftcall DataFrame.addAlias(_:forColumn:)(Swift::String _, Swift::String forColumn)
{
  v3 = v2;
  object = forColumn._object;
  countAndFlagsBits = forColumn._countAndFlagsBits;
  if (*(*(v2 + 16) + 16) && (v6 = _._object, v7 = _._countAndFlagsBits, sub_21B24B5D0(forColumn._countAndFlagsBits, forColumn._object, MEMORY[0x277D83758], sub_21B24FDE4), (v8 & 1) != 0))
  {
    v9 = *(v2 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_21B249A10(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_21B249A10((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    v12 = &v9[4 * v11];
    v12[4] = v7;
    v12[5] = v6;
    v12[6] = countAndFlagsBits;
    v12[7] = object;
    *(v3 + 8) = v9;
  }

  else
  {
    sub_21B34B634();

    MEMORY[0x21CEED5E0](countAndFlagsBits, object);
    MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
    sub_21B34B824();
    __break(1u);
  }
}

uint64_t sub_21B23DB68(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v30 = a2;
  v4 = *(v2 + 3);
  v5 = *(v2 + 4);
  v6 = *(v2 + 40);
  v7 = v2[1];
  v28 = *v2;
  v29[0] = v7;
  *(v29 + 9) = *(v2 + 25);
  v8 = v4;
  if (v6)
  {
    if (v6 == 1 && *(v4 + 16))
    {
      v8 = *(v4 + 32);
    }

    else
    {
      sub_21B2A6400(v4, v5, v6);
      if (v10)
      {
        v8 = 0;
      }

      else
      {
        v8 = v9;
      }
    }
  }

  sub_21B2A6400(v4, v5, v6);
  if ((v12 & 1) == 0)
  {
    if (v8 != v11)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

LABEL_10:
  v25 = 0;
  v26 = 0;
  v27 = 2;
  v13 = v4;
  if (v6)
  {
    if (v6 == 1 && *(v4 + 16))
    {
      v13 = *(v4 + 32);
    }

    else
    {
      sub_21B2A6400(v4, v5, v6);
      if (v16)
      {
        v13 = 0;
      }

      else
      {
        v13 = v15;
      }
    }
  }

  while (1)
  {
    do
    {
      v17 = v13;
      sub_21B2A6400(v4, v5, v6);
      if (v19)
      {
        if (!v13)
        {
          return v25;
        }
      }

      else if (v13 == v18)
      {
        return v25;
      }

      v13 = DataFrame.Rows.index(after:)(v13);
      v22 = v28;
      v23 = *&v29[0];
      v24 = v17;

      v20 = a1(&v22);

      if (v3)
      {
        return sub_21B23A9F4(v25, v26, v27);
      }
    }

    while ((v20 & 1) == 0);
    if (v13 < v17)
    {
      break;
    }

    sub_21B248A60(v17, v13);
  }

  __break(1u);
  return result;
}

void *sub_21B23DD58(void *result, uint64_t a2, char a3)
{
  v5 = result;
  v6 = result;
  v7 = a2;
  if (a3)
  {
    if (a3 != 1 || !result[2])
    {
      return result;
    }

    v6 = result[4];
    v7 = result[5];
    sub_21B254074(result, a2, 1);
  }

  sub_21B248BBC(1, v5, a2, a3, &v56);
  v8 = v56;
  v9 = *v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_66;
  }

  for (i = v9; ; i = sub_21B23A31C(v9))
  {
    v53 = i;
    if (v8 == v57)
    {
      break;
    }

    if (v57 <= v8)
    {
      v26 = v8;
    }

    else
    {
      v26 = v57;
    }

    v48 = v57;
    v49 = v26;
    v46 = v58;
    v45 = v58;
    v44 = v58 + 32;
    while (v8 != v49)
    {
      if (v59)
      {
        if (v59 != 1)
        {
          goto LABEL_68;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        v27 = *(v45 + 16);
        if (v8 >= v27)
        {
          goto LABEL_64;
        }

        v28 = *(v44 + 16 * v8);
      }

      else
      {
        if (v8)
        {
          goto LABEL_62;
        }

        v27 = 1;
        v28 = v46;
      }

      v50 = *(&v28 + 1);
      if (v8 >= v27)
      {
        goto LABEL_57;
      }

      v29 = v28;
      if (v7 != v28)
      {
        if (v7 >= v28)
        {
          goto LABEL_65;
        }

        v47 = v8;
        v51 = 32 * v6;
        v52 = 32 * v7;
        v8 = i;
        while (1)
        {
          if (v6 != v7)
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v30 = i[2];
            if (v6 >= v30)
            {
              goto LABEL_51;
            }

            if (v7 >= v30)
            {
              goto LABEL_52;
            }

            v55 = v6;
            v6 = v29;
            v31 = (v8 + v51);
            v33 = *(v8 + v51 + 32);
            v32 = *(v8 + v51 + 40);
            v34 = *(v8 + v51 + 48);
            v9 = *(v8 + v51 + 56);
            v35 = (v8 + v52);
            v36 = *(v8 + v52 + 40);
            v37 = *(v8 + v52 + 48);
            v38 = *(v8 + v52 + 56);
            v31[4] = *(v8 + v52 + 32);
            v31[5] = v36;
            v31[6] = v37;
            v31[7] = v38;
            v39 = i[2];

            if (v7 >= v39)
            {
              goto LABEL_53;
            }

            v40 = v35[5];
            v41 = v35[7];
            v35[4] = v33;
            v35[5] = v32;
            v35[6] = v34;
            v35[7] = v9;

            v29 = v6;
            i = v53;
            v6 = v55;
          }

          v42 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          ++v7;
          v8 += 32;
          ++v6;
          if (v29 == v7)
          {
            v6 = v42;
            v8 = v47;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        break;
      }

LABEL_27:
      ++v8;
      v7 = v50;
      if (v8 == v48)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

LABEL_8:
  sub_21B261664(&v56, &qword_27CD7E4F0, qword_21B351DA8);
  v11 = v53;
  *v43 = v53;
  v12 = v53[2];
  if (v7 != v12)
  {
    v13 = 4 * v7;
    v14 = 4 * v6;
    do
    {
      if (v6 != v7)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        if (v6 >= v12)
        {
          goto LABEL_59;
        }

        if (v7 >= v12)
        {
          goto LABEL_60;
        }

        v15 = &v11[v14];
        v9 = v11[v14 + 4];
        v8 = v11[v14 + 5];
        v16 = v11[v14 + 6];
        v17 = v11[v14 + 7];
        v18 = v7;
        v7 = &v11[v13];
        v19 = v11[v13 + 5];
        v20 = v11[v13 + 6];
        v21 = v11[v13 + 7];
        v15[4] = v11[v13 + 4];
        v15[5] = v19;
        v15[6] = v20;
        v15[7] = v21;
        v54 = v11[2];

        if (v18 >= v54)
        {
          goto LABEL_61;
        }

        v22 = *(v7 + 40);
        v23 = *(v7 + 56);
        *(v7 + 32) = v9;
        *(v7 + 40) = v8;
        *(v7 + 48) = v16;
        *(v7 + 56) = v17;

        v11 = v53;
        v7 = v18;
      }

      v24 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_54;
      }

      v25 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_55;
      }

      ++v7;
      v12 = v11[2];
      v13 += 4;
      v14 += 4;
      ++v6;
    }

    while (v25 != v12);
    *v43 = v11;
    v7 = v11[2];
    v6 = v24;
  }

  if (v7 >= v6)
  {
    return sub_21B22EF78(v6, v7, sub_21B249A10, sub_21B25DF10);
  }

  __break(1u);
LABEL_68:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.append<A>(column:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v1 = type metadata accessor for Column();
  Column.eraseToAnyColumn()(v1, v5);
  DataFrame.append(column:)(v5);
  return sub_21B233960(v5);
}

uint64_t DataFrame.append(column:)(uint64_t a1)
{
  v2 = v1;
  sub_21B233A74(a1, v53);
  sub_21B23B2EC(v53);
  v4 = *v1;
  v3 = v1[1];
  v5 = v2[2];
  *&v50 = v4;
  *(&v50 + 1) = v3;
  *&v51 = v5;
  v6 = v54;
  v7 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v8 = *(v7 + 8);
  v9 = *(v8 + 8);

  v10._countAndFlagsBits = v9(v6, v8);
  v56 = DataFrame.indexOfColumn(_:)(v10);
  LOBYTE(v3) = v56.is_nil;

  if ((v3 & 1) == 0)
  {
    v11 = *(v4 + 2);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v49 = MEMORY[0x277D84F90];
      sub_21B231F10(0, v11, 0);
      v12 = v49;
      v13 = (v4 + 32);
      do
      {
        sub_21B233A74(v13, &v50);
        v15 = *(&v51 + 1);
        v14 = v52;
        __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        v16 = (*(*(v14 + 8) + 8))(v15);
        v18 = v17;
        sub_21B233960(&v50);
        v20 = *(v49 + 16);
        v19 = *(v49 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_21B231F10((v19 > 1), v20 + 1, 1);
        }

        *(v49 + 16) = v20 + 1;
        v21 = v49 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v13 += 40;
        --v11;
      }

      while (v11);
    }

    v22 = sub_21B25DE78(v12);

    sub_21B31703C(v22, 0x2EuLL, 0xE100000000000000, &v50);
    v24 = v54;
    v23 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v25 = (*(*(v23 + 8) + 8))(v24);
    v27 = sub_21B233B78(v25, v26);
    v29 = v28;

    v30 = v54;
    v31 = v55;
    __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
    (*(*(v31 + 8) + 16))(v27, v29, v30);
  }

  v33 = v54;
  v32 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v34._countAndFlagsBits = (*(*(v32 + 8) + 8))(v33);
  DataFrame.removeAlias(_:)(v34);

  v36 = v54;
  v35 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v37 = (*(*(v35 + 8) + 8))(v36);
  v39 = v38;
  v40 = *(v4 + 2);
  v41 = v2[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v50 = v2[2];
  sub_21B23A60C(v40, v37, v39, isUniquelyReferenced_nonNull_native);

  v2[2] = v50;
  sub_21B233A74(v53, &v50);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_21B249C94(0, *(v4 + 2) + 1, 1, v4, &qword_27CD7E4E8, &qword_21B351DA0);
  }

  v44 = *(v4 + 2);
  v43 = *(v4 + 3);
  if (v44 >= v43 >> 1)
  {
    v4 = sub_21B249C94((v43 > 1), v44 + 1, 1, v4, &qword_27CD7E4E8, &qword_21B351DA0);
  }

  *(v4 + 2) = v44 + 1;
  v45 = &v4[40 * v44];
  v46 = v50;
  v47 = v51;
  *(v45 + 8) = v52;
  *(v45 + 2) = v46;
  *(v45 + 3) = v47;
  *v2 = v4;
  return sub_21B233960(v53);
}

uint64_t DataFrame.insert<A>(column:at:)(uint64_t *a1, int64_t a2)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v3 = type metadata accessor for Column();
  Column.eraseToAnyColumn()(v3, v7);
  DataFrame.insert(column:at:)(v7, a2);
  return sub_21B233960(v7);
}

uint64_t DataFrame.insert(column:at:)(uint64_t a1, int64_t a2)
{
  v3 = v2;
  sub_21B233A74(a1, v60);
  sub_21B23B2EC(v60);
  v6 = *v2;
  v5 = v2[1];
  v7 = v3[2];
  v57[0] = v6;
  v57[1] = v5;
  v57[2] = v7;
  v9 = v61;
  v8 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v10 = *(v8 + 8);
  v11 = *(v10 + 8);

  v12._countAndFlagsBits = v11(v9, v10);
  v63 = DataFrame.indexOfColumn(_:)(v12);
  LOBYTE(v5) = v63.is_nil;

  if ((v5 & 1) == 0)
  {
    v13 = *(v6 + 16);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v55 = a2;
      v56 = MEMORY[0x277D84F90];
      sub_21B231F10(0, v13, 0);
      v14 = v56;
      v15 = v6 + 32;
      do
      {
        sub_21B233A74(v15, v57);
        v17 = v58;
        v16 = v59;
        __swift_project_boxed_opaque_existential_1(v57, v58);
        v18 = (*(*(v16 + 8) + 8))(v17);
        v20 = v19;
        sub_21B233960(v57);
        v22 = *(v56 + 16);
        v21 = *(v56 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_21B231F10((v21 > 1), v22 + 1, 1);
        }

        *(v56 + 16) = v22 + 1;
        v23 = v56 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v15 += 40;
        --v13;
      }

      while (v13);
      a2 = v55;
    }

    v24 = sub_21B25DE78(v14);

    sub_21B31703C(v24, 0x2EuLL, 0xE100000000000000, v57);
    v26 = v61;
    v25 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v27 = (*(*(v25 + 8) + 8))(v26);
    v29 = sub_21B233B78(v27, v28);
    v31 = v30;

    v33 = v61;
    v32 = v62;
    __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
    (*(*(v32 + 8) + 16))(v29, v31, v33);
  }

  v35 = v61;
  v34 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v36._countAndFlagsBits = (*(*(v34 + 8) + 8))(v35);
  DataFrame.removeAlias(_:)(v36);

  if (*(v6 + 16) < a2)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (a2 < 0)
  {
LABEL_26:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v37 = MEMORY[0x277D84F90];
  sub_21B233A74(v60, v57);
  sub_21B249770(a2, a2, v57);
  v38 = *v3;
  v39 = *(*v3 + 16);
  if (v39)
  {
    sub_21B231F10(0, v39, 0);
    v40 = v38 + 32;
    do
    {
      sub_21B233A74(v40, v57);
      v42 = v58;
      v41 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v43 = (*(*(v41 + 8) + 8))(v42);
      v45 = v44;
      sub_21B233960(v57);
      v47 = *(v37 + 16);
      v46 = *(v37 + 24);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        sub_21B231F10((v46 > 1), v47 + 1, 1);
      }

      *(v37 + 16) = v48;
      v49 = v37 + 16 * v47;
      *(v49 + 32) = v43;
      *(v49 + 40) = v45;
      v40 += 40;
      --v39;
    }

    while (v39);
    v39 = *(v38 + 16);
  }

  else
  {
    v48 = *(v37 + 16);
  }

  if (v39 >= v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = v39;
  }

  if (v50)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0E8, &qword_21B351978);
    v51 = sub_21B34B894();
  }

  else
  {
    v51 = MEMORY[0x277D84F98];
  }

  v57[0] = v51;

  sub_21B25C8CC(v52, 0, v39, 1, v57);

  v53 = v57[0];
  sub_21B233960(v60);

  v3[2] = v53;
  return result;
}

uint64_t DataFrame.removeColumn<A>(_:)(uint64_t *a1)
{
  DataFrame.removeColumn(_:)(*a1, a1[1], v2);
  sub_21B3338E8();
  return sub_21B233960(v2);
}

uint64_t DataFrame.removeColumn(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = v3[1];
  v9 = v3[2];
  v36 = *v3;
  v37 = v8;
  v38 = v9;

  v10 = sub_21B23AC94(a1, a2);

  sub_21B23EE18(v10, a3);
  v11 = *(v8 + 16);
  v12 = 2;
  if (v11)
  {
    v13 = 0;
    v36 = 0;
    v37 = 0;
    v14 = (v8 + 56);
    LOBYTE(v38) = 2;
    do
    {
      v15 = v13 + 1;
      v16 = *(v14 - 1) == a1 && *v14 == a2;
      if (v16 || (sub_21B34B9F4() & 1) != 0)
      {
        sub_21B248A60(v13, v13 + 1);
      }

      v14 += 4;
      ++v13;
    }

    while (v11 != v15);
    v17 = v36;
    v18 = v37;
    v12 = v38;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  sub_21B23DD58(v17, v18, v12);
  sub_21B23A9F4(v17, v18, v12);
  v19 = *v4;
  v20 = *(*v4 + 16);
  if (v20)
  {
    v41 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v20, 0);
    v21 = v41;
    v22 = v19 + 32;
    do
    {
      sub_21B233A74(v22, &v36);
      v24 = v39;
      v23 = v40;
      __swift_project_boxed_opaque_existential_1(&v36, v39);
      v25 = (*(*(v23 + 8) + 8))(v24);
      v27 = v26;
      sub_21B233960(&v36);
      v41 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_21B231F10((v28 > 1), v29 + 1, 1);
        v21 = v41;
      }

      *(v21 + 16) = v30;
      v31 = v21 + 16 * v29;
      *(v31 + 32) = v25;
      *(v31 + 40) = v27;
      v22 += 40;
      --v20;
    }

    while (v20);
    v20 = *(v19 + 16);
  }

  else
  {
    v30 = *(MEMORY[0x277D84F90] + 16);
  }

  if (v20 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v20;
  }

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0E8, &qword_21B351978);
    v33 = sub_21B34B894();
  }

  else
  {
    v33 = MEMORY[0x277D84F98];
  }

  v36 = v33;

  sub_21B25C8CC(v34, 0, v20, 1, &v36);

  v4[2] = v36;
  return result;
}

uint64_t sub_21B23EE18@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21B23A2F4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    result = memmove((v9 + 32), (v9 + 72), 40 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t DataFrame.transformColumn<A, B>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return DataFrame.transformColumn<A, B>(_:_:)(*a1, a1[1], a2, a3, a4, a5);
}

{
  return DataFrame.transformColumn<A, B>(_:_:)(*a1, a1[1], a2, a3, a4, a5);
}

uint64_t DataFrame.transformColumn<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = v6[1];
  v13 = v6[2];
  *&v22 = *v6;
  v11 = v22;
  *(&v22 + 1) = v12;
  v23 = v13;

  v14 = sub_21B23AC94(a1, a2);

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= *(v22 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    result = sub_21B23A2F4(v11);
    v11 = result;
    goto LABEL_6;
  }

  sub_21B233A74(v22 + 40 * v14 + 32, v20);
  sub_21B234878(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
  v15 = type metadata accessor for Column();
  swift_dynamicCast();
  v24 = type metadata accessor for Column();
  v25 = &off_282CAA128;
  v16 = v26;
  Column.map<A>(_:)(a3, a4, v15, a6, &v22);

  if (v16)
  {
    return __swift_deallocate_boxed_opaque_existential_1(&v22);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (v14 >= *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    v18 = v11 + 40 * v14;
    __swift_destroy_boxed_opaque_existential_1Tm((v18 + 32));
    result = sub_21B234878(&v22, v18 + 32);
    *v6 = v11;
  }

  return result;
}

{
  v8 = v7;
  v35 = a4;
  v24 = a3;
  v14 = v6[1];
  v15 = v6[2];
  *&v31 = *v6;
  v13 = v31;
  *(&v31 + 1) = v14;
  v32 = v15;

  v16 = sub_21B23AC94(a1, a2);

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 >= *(v31 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = sub_21B23A2F4(v13);
    v13 = result;
    goto LABEL_6;
  }

  v23 = v6;
  sub_21B233A74(v31 + 40 * v16 + 32, v29);
  sub_21B234878(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
  v17 = type metadata accessor for Column();
  v18 = swift_dynamicCast();
  v25 = v27;
  v26 = v28;
  MEMORY[0x28223BE20](v18);
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = v24;
  v22[5] = v35;
  v33 = type metadata accessor for Column();
  v34 = &off_282CAA128;
  Column.map<A>(_:)(sub_21B25FDA0, v22, v17, a6, &v31);

  if (v8)
  {
    return __swift_deallocate_boxed_opaque_existential_1(&v31);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v20 = v23;
  if (v16 >= *(v13 + 16))
  {
    __break(1u);
  }

  else
  {
    v21 = v13 + 40 * v16;
    __swift_destroy_boxed_opaque_existential_1Tm((v21 + 32));
    result = sub_21B234878(&v31, v21 + 32);
    *v20 = v13;
  }

  return result;
}

uint64_t sub_21B23F350@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a3;
  v21 = a2;
  v22 = a6;
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    (*(v10 + 8))(v14, v9);
    return (*(*(a5 - 8) + 56))(v22, 1, 1, a5);
  }

  else
  {
    (*(v15 + 32))(v18, v14, a4);
    v21(v18);
    return (*(v15 + 8))(v18, a4);
  }
}

uint64_t *DataFrame.append(row:)(uint64_t *result)
{
  v2 = *result;
  v3 = *(*result + 16);
  v4 = *v1;
  if (v3 != *(*v1 + 2))
  {
LABEL_12:
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
    v18[0] = *(v2 + 16);
    v16 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v16);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    v18[0] = *(v4 + 2);
    v17 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v17);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if (v3)
  {
    v5 = v1;
    v6 = result[3];
    v7 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_10;
    }

    while (v3 <= *(v2 + 16))
    {
      v8 = 0;
      v2 += 32;
      for (i = (v4 + 32); ; i += 40)
      {
        sub_21B233A74(v2, v19);
        if (v8 >= *(v4 + 2))
        {
          break;
        }

        ++v8;
        v10 = v20;
        v11 = v21;
        v12 = __swift_project_boxed_opaque_existential_1(v19, v20);
        v18[3] = v10;
        v18[4] = *(v11 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
        (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
        v14 = *(i + 24);
        v15 = *(i + 32);
        __swift_mutable_project_boxed_opaque_existential_1(i, v14);
        (*(v15 + 56))(v6, v18, v14, v15);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        result = sub_21B233960(v19);
        *v5 = v4;
        v2 += 40;
        if (v3 == v8)
        {
          return result;
        }
      }

      __break(1u);
LABEL_10:
      v4 = sub_21B23A2F4(v4);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t DataFrame.append(row:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  if (v2 == *(*v1 + 2))
  {
    if (v2)
    {
      v4 = result;
      v5 = *v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v6 = 0;
        v7 = v4 + 32;
        for (i = (v3 + 32); ; i += 40)
        {
          sub_21B2615FC(v7, v15, &qword_27CD7E0F8, &unk_21B3557C0);
          if (v6 >= *(v3 + 2))
          {
            break;
          }

          ++v6;
          v4 = v2;
          v9 = *(i + 24);
          v10 = *(i + 32);
          __swift_mutable_project_boxed_opaque_existential_1(i, v9);
          v11 = v9;
          v2 = v4;
          (*(v10 + 24))(v15, v11, v10);
          result = sub_21B261664(v15, &qword_27CD7E0F8, &unk_21B3557C0);
          *v14 = v3;
          v7 += 32;
          if (v4 == v6)
          {
            return result;
          }
        }

        __break(1u);
LABEL_9:
        v3 = sub_21B23A2F4(v3);
      }
    }
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
    v16 = v2;
    v12 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v12);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    v16 = *(v3 + 2);
    v13 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v13);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DataFrame.append(valuesByColumn:)(Swift::OpaquePointer valuesByColumn)
{
  v2 = *(valuesByColumn._rawValue + 2);
  v3 = *v1;
  if (v2 != *(*v1 + 2))
  {
LABEL_59:
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C450);
    *&v83 = *(valuesByColumn._rawValue + 2);
    v72 = MEMORY[0x277D83B88];
    v73 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v73);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    *&v83 = *(v3 + 2);
    v74 = sub_21B34B944();
    v70 = v75;
    MEMORY[0x21CEED5E0](v74);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    while (1)
    {
      sub_21B34B824();
      __break(1u);
LABEL_61:

      *&v85 = 0;
      *(&v85 + 1) = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000029, 0x800000021B34C490);
      MEMORY[0x21CEED5E0](v70, v72);
      MEMORY[0x21CEED5E0](0xD000000000000025, 0x800000021B34C4C0);
    }
  }

  v4 = v1;
  v5 = MEMORY[0x277D84F90];
  if (v2)
  {
    *&v83 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v2, 0);
    v5 = v83;
    v6 = v3;
    v7 = (v3 + 32);
    do
    {
      sub_21B233A74(v7, &v85);
      v9 = *(&v86 + 1);
      v8 = v87;
      __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      v10 = (*(*(v8 + 8) + 8))(v9);
      v12 = v11;
      sub_21B233960(&v85);
      *&v83 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B231F10((v13 > 1), v14 + 1, 1);
        v5 = v83;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v7 += 40;
      --v2;
    }

    while (v2);
    v3 = v6;
  }

  v16 = sub_21B25DE78(v5);

  v88 = v16;
  v17 = v4[1];
  v18 = *(v17 + 2);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    *&v85 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v18, 0);
    v19 = v85;
    v20 = (v17 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      *&v85 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);

      if (v24 >= v23 >> 1)
      {
        sub_21B231F10((v23 > 1), v24 + 1, 1);
        v19 = v85;
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v20 += 4;
      --v18;
    }

    while (v18);
  }

  sub_21B25FE24(v19);

  v26 = v88;
  rawValue = valuesByColumn._rawValue;

  v76 = v26;
  if ((sub_21B240390(v28, v26) & 1) == 0)
  {
LABEL_54:

    v68 = sub_21B23B5A8(v67);
    if (*(v76 + 16) <= *(v68 + 16) >> 3)
    {
      *&v85 = v68;
      sub_21B25D08C(v76);
      v69 = v85;
    }

    else
    {
      v69 = sub_21B25D1B8(v76, v68);
    }

    v70 = sub_21B23D53C(v69);
    v72 = v71;

    if (v72)
    {
      goto LABEL_61;
    }

    __break(1u);
    goto LABEL_59;
  }

  v80 = *(v3 + 2);
  if (v80)
  {
    v29 = 0;
    v30 = 0;
    v77 = v4;
    do
    {
      if (v29 >= *(v3 + 2))
      {
        goto LABEL_50;
      }

      sub_21B233A74(&v3[40 * v29 + 32], &v85);
      v36 = *(&v86 + 1);
      v35 = v87;
      __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      v37 = (*(*(v35 + 8) + 8))(v36);
      v39 = v38;
      sub_21B233960(&v85);
      if (rawValue[2])
      {
        v40 = sub_21B24B5D0(v37, v39, MEMORY[0x277D83758], sub_21B24FDE4);
        v42 = v41;

        if (v42)
        {
          sub_21B2615FC(rawValue[7] + 32 * v40, v82, &qword_27CD7E0F8, &unk_21B3557C0);
          v83 = v82[0];
          v84 = v82[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_21B23A2F4(v3);
          }

          if (v29 < *(v3 + 2))
          {
            v43 = &v3[40 * v29];
            v44 = *(v43 + 7);
            v45 = *(v43 + 8);
            __swift_mutable_project_boxed_opaque_existential_1((v43 + 32), v44);
            (*(v45 + 24))(&v83, v44, v45);
            v34 = &v83;
            goto LABEL_17;
          }

          goto LABEL_52;
        }
      }

      else
      {
      }

      v47 = sub_21B25FAA4(v46, v4, v29);
      v81 = v30;

      v48 = *(v47 + 16);
      if (v48)
      {
        v79 = v3;
        *&v85 = MEMORY[0x277D84F90];
        sub_21B231F10(0, v48, 0);
        v49 = v85;
        v50 = (v47 + 40);
        do
        {
          v51 = *(v50 - 1);
          v52 = *v50;
          *&v85 = v49;
          v54 = *(v49 + 16);
          v53 = *(v49 + 24);

          if (v54 >= v53 >> 1)
          {
            sub_21B231F10((v53 > 1), v54 + 1, 1);
            v49 = v85;
          }

          *(v49 + 16) = v54 + 1;
          v55 = v49 + 16 * v54;
          *(v55 + 32) = v51;
          *(v55 + 40) = v52;
          v50 += 4;
          --v48;
        }

        while (v48);

        v56 = v79;
      }

      else
      {
        v56 = v3;

        v49 = MEMORY[0x277D84F90];
      }

      v3 = *(v49 + 16);
      rawValue = valuesByColumn._rawValue;
      if (!v3)
      {
LABEL_44:

        v3 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_21B23A2F4(v56);
        }

        v4 = v77;
        v30 = v81;
        if (v29 < *(v3 + 2))
        {
          v64 = &v3[40 * v29];
          v65 = *(v64 + 7);
          v66 = *(v64 + 8);
          __swift_mutable_project_boxed_opaque_existential_1((v64 + 32), v65);
          (*(v66 + 16))(v65, v66);
          goto LABEL_18;
        }

        goto LABEL_51;
      }

      v57 = 0;
      v58 = (v49 + 40);
      while (1)
      {
        if (v57 >= *(v49 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if (*(valuesByColumn._rawValue + 2))
        {
          v59 = *(v58 - 1);
          v60 = *v58;

          v61 = sub_21B24B5D0(v59, v60, MEMORY[0x277D83758], sub_21B24FDE4);
          v63 = v62;

          if (v63)
          {
            break;
          }
        }

        ++v57;
        v58 += 2;
        if (v3 == v57)
        {
          goto LABEL_44;
        }
      }

      sub_21B2615FC(*(valuesByColumn._rawValue + 7) + 32 * v61, &v83, &qword_27CD7E0F8, &unk_21B3557C0);
      v85 = v83;
      v86 = v84;
      v3 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_21B23A2F4(v56);
      }

      v4 = v77;
      v30 = v81;
      if (v29 >= *(v3 + 2))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v31 = &v3[40 * v29];
      v32 = *(v31 + 7);
      v33 = *(v31 + 8);
      __swift_mutable_project_boxed_opaque_existential_1((v31 + 32), v32);
      (*(v33 + 24))(&v85, v32, v33);
      v34 = &v85;
LABEL_17:
      sub_21B261664(v34, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_18:
      *v4 = v3;
      ++v29;
    }

    while (v29 != v80);
  }
}

uint64_t sub_21B24028C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_21B233D18(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_21B240390(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v21 = result;
  while (v7)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_23;
    }

LABEL_8:
    v10 = (*(result + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v10;
    v11 = v10[1];
    v13 = *(a2 + 40);
    sub_21B34BBC4();

    sub_21B34AD94();
    v14 = sub_21B34BC24();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
LABEL_22:

      goto LABEL_23;
    }

    v7 &= v7 - 1;
    v17 = ~v15;
    while (1)
    {
      v18 = (*(a2 + 48) + 16 * v16);
      v19 = *v18 == v12 && v18[1] == v11;
      if (v19 || (sub_21B34B9F4() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = v21;
  }

  do
  {
    v20 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v20);
    ++v3;
  }

  while (!v7);
  v3 = v20;
  if (*(a2 + 16))
  {
    goto LABEL_8;
  }

LABEL_23:

  return 0;
}

Swift::Void __swiftcall DataFrame.appendEmptyRow()()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = *v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v4 = 0;
      v5 = (v1 + 32);
      while (v4 < *(v1 + 2))
      {
        ++v4;
        v6 = *(v5 + 24);
        v7 = *(v5 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
        (*(v7 + 16))(v6, v7);
        *v0 = v1;
        v5 += 40;
        if (v2 == v4)
        {
          return;
        }
      }

      __break(1u);
LABEL_8:
      v1 = sub_21B23A2F4(v1);
    }
  }
}

uint64_t *DataFrame.insert(row:at:)(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = *v2;
  if (v4 != *(*v2 + 2))
  {
LABEL_12:
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34C4F0);
    v20[0] = *(v3 + 16);
    v17 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v17);

    MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34C470);
    v20[0] = *(v5 + 2);
    v18 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v18);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if (v4)
  {
    v6 = v2;
    v7 = result[3];
    v8 = *v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_10;
    }

    while (v4 <= *(v3 + 16))
    {
      v9 = 0;
      v3 += 32;
      for (i = (v5 + 32); ; i += 40)
      {
        sub_21B233A74(v3, v21);
        if (v9 >= *(v5 + 2))
        {
          break;
        }

        ++v9;
        v11 = v22;
        v12 = v23;
        v13 = __swift_project_boxed_opaque_existential_1(v21, v22);
        v20[3] = v11;
        v20[4] = *(v12 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
        (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v13, v11);
        v15 = *(i + 24);
        v16 = *(i + 32);
        __swift_mutable_project_boxed_opaque_existential_1(i, v15);
        (*(v16 + 64))(v7, v20, a2, v15, v16);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        result = sub_21B233960(v21);
        *v6 = v5;
        v3 += 40;
        if (v4 == v9)
        {
          return result;
        }
      }

      __break(1u);
LABEL_10:
      v5 = sub_21B23A2F4(v5);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

Swift::Void __swiftcall DataFrame.removeRow(at:)(Swift::Int at)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    v5 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v6 = 0;
      v7 = (v2 + 32);
      while (v6 < *(v2 + 2))
      {
        ++v6;
        v8 = *(v7 + 24);
        v9 = *(v7 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
        (*(v9 + 80))(at, v8, v9);
        *v1 = v2;
        v7 += 40;
        if (v3 == v6)
        {
          return;
        }
      }

      __break(1u);
LABEL_8:
      v2 = sub_21B23A2F4(v2);
    }
  }
}

uint64_t sub_21B240988@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a1;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  if (!*(*v3 + 16))
  {
    v18 = *v3;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    goto LABEL_6;
  }

  sub_21B233A74(v7 + 32, v25);
  v11 = v26;
  v12 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v13 = *(v12 + 8);
  v14 = *(v13 + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v15 = v14(v11, v13);
  result = sub_21B233960(v25);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v4 = a2;
    v5 = a1;
    if (v15)
    {
      v17 = 0;
LABEL_7:
      sub_21B254074(0, v15, v17);

      sub_21B23A9F4(0, v15, v17);
      v19 = v4(v5, 0, v15, v17);
      v21 = v20;
      v23 = v22;
      result = sub_21B23A9F4(0, v15, v17);
      *a3 = v7;
      *(a3 + 8) = v8;
      *(a3 + 16) = v9;
      *(a3 + 24) = v19;
      *(a3 + 32) = v21;
      *(a3 + 40) = v23;
      return result;
    }

LABEL_6:
    v15 = 0;
    v17 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B240B24(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    goto LABEL_5;
  }

  LOBYTE(v4) = a4;
  v6 = a2;
  if (a4 != 1)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v7 = a2[2];
  if (!v7)
  {
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_7:
  v9 = 0;
  v10 = v7 - 1;
  v11 = &v6[2 * v7 + 3];
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4)
    {
      if (v10 >= v6[2])
      {
        goto LABEL_36;
      }
    }

    else if (v10 >= 1)
    {
LABEL_36:
      while (1)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        sub_21B23A9F4(v6, a3, v4);
LABEL_30:
        v26[0] = 0;
        v26[1] = 0;
        v27 = 2;
        v22 = *(v8 + 2);
        if (!v22)
        {
          break;
        }

        v6 = &v8[16 * v22 + 24];
        while (v22 <= *(v8 + 2))
        {
          --v22;
          v4 = v26;
          sub_21B28DFBC(*(v6 - 1), *v6);
          v6 -= 2;
          if (!v22)
          {

            return v26[0];
          }
        }

        __break(1u);
      }

      goto LABEL_42;
    }

    if (v4)
    {
      break;
    }

    v12 = v6;
    v13 = a3;
    if (v10)
    {
      goto LABEL_41;
    }

LABEL_16:
    v14 = v13 - v12;
    if (__OFSUB__(v13, v12))
    {
      goto LABEL_37;
    }

    v15 = v9 + v14;
    if (__OFADD__(v9, v14))
    {
      goto LABEL_38;
    }

    if (v15 > a1)
    {
      if (__OFSUB__(a1, v9))
      {
        __break(1u);
      }

      else
      {
        v5 = sub_21B24985C(a1 - v9, v12, v13);
        v12 = v18;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_27:
          v20 = *(v8 + 2);
          v19 = *(v8 + 3);
          if (v20 >= v19 >> 1)
          {
            v8 = sub_21B2356AC((v19 > 1), v20 + 1, 1, v8);
          }

          sub_21B23A9F4(v6, a3, v4);
          *(v8 + 2) = v20 + 1;
          v21 = &v8[16 * v20];
          *(v21 + 4) = v5;
          *(v21 + 5) = v12;
          goto LABEL_30;
        }
      }

      v8 = sub_21B2356AC(0, *(v8 + 2) + 1, 1, v8);
      goto LABEL_27;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_21B2356AC(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v5 >= v16 >> 1)
    {
      v8 = sub_21B2356AC((v16 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v5 + 1;
    v17 = &v8[16 * v5];
    *(v17 + 4) = v12;
    *(v17 + 5) = v13;
    --v10;
    v11 -= 2;
    v9 = v15;
    if (v10 == -1)
    {
      goto LABEL_39;
    }
  }

  if (v10 < v6[2])
  {
    v12 = *(v11 - 1);
    v13 = *v11;
    goto LABEL_16;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:

  return 0;
}

Swift::Void __swiftcall DataFrame.append(rowsOf:)(TabularData::DataFrame rowsOf)
{
  v4 = *v2;
  v5 = *(*v2 + 2);
  v30 = *rowsOf.columns._rawValue;
  if (v5 != *(*rowsOf.columns._rawValue + 16))
  {
    while (1)
    {
LABEL_24:
      sub_21B34B824();
      __break(1u);
LABEL_25:
      sub_21B233A74(v3, &v34);
      v23 = v36;
      v22 = v37;
      __swift_project_boxed_opaque_existential_1(&v34, v36);
      v24 = (*(*(v22 + 8) + 8))(v23);
      v3 = v25;
      sub_21B233960(&v34);
      MEMORY[0x21CEED5E0](v24, v3);

      MEMORY[0x21CEED5E0](0x2720646E612027, 0xE700000000000000);
      sub_21B233A74(v1, &v34);
      v26 = v36;
      v27 = v37;
      __swift_project_boxed_opaque_existential_1(&v34, v36);
      v1 = (*(*(v27 + 8) + 8))(v26);
      v29 = v28;
      sub_21B233960(&v34);
      MEMORY[0x21CEED5E0](v1, v29);

      MEMORY[0x21CEED5E0](2240039, 0xE300000000000000);
    }
  }

  v6 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

  for (*v2 = v4; v5; *v6 = v4)
  {
    v7 = 0;
    v3 = (v4 + 32);
    v1 = v30 + 32;
    while (v7 < *(v4 + 2))
    {
      sub_21B233A74(v3, &v34);
      v9 = v36;
      v8 = v37;
      __swift_project_boxed_opaque_existential_1(&v34, v36);
      v10 = (*(*(v8 + 8) + 8))(v9);
      v12 = v11;
      sub_21B233960(&v34);
      if (v7 >= *(v30 + 16))
      {
        goto LABEL_18;
      }

      sub_21B233A74(v1, v31);
      v14 = v32;
      v13 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v15 = (*(*(v13 + 8) + 8))(v14);
      v17 = v16;
      sub_21B233960(v31);
      if (v10 == v15 && v12 == v17)
      {
      }

      else
      {
        v19 = sub_21B34B9F4();

        if ((v19 & 1) == 0)
        {
          v34 = 0;
          v35 = 0xE000000000000000;
          sub_21B34B634();
          v31[0] = v34;
          v31[1] = v35;
          MEMORY[0x21CEED5E0](0xD000000000000032, 0x800000021B34C550);
          if (v7 < *(v4 + 2))
          {
            goto LABEL_25;
          }

          __break(1u);
          goto LABEL_24;
        }
      }

      if (v7 >= *(v4 + 2))
      {
        goto LABEL_19;
      }

      ++v7;
      sub_21B233A74(v1, &v34);
      v20 = *(v3 + 24);
      v21 = *(v3 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v3, v20);
      (*(v21 + 40))(&v34, v20, v21);
      sub_21B233960(&v34);
      *v6 = v4;
      v1 += 40;
      v3 += 40;
      if (v5 == v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v4 = sub_21B23A2F4(v4);
  }
}

Swift::Void __swiftcall DataFrame.append(_:)(TabularData::DataFrame a1)
{
  v2 = v1;
  v3 = *a1.columns._rawValue;
  v4 = *(a1.columns._rawValue + 1);
  v60 = *(a1.columns._rawValue + 2);
  v5 = MEMORY[0x277D84FA0];
  v72 = MEMORY[0x277D84FA0];
  v62 = *(v3 + 2);
  if (!v62)
  {
LABEL_16:
    if (!*(v5 + 16))
    {
      goto LABEL_39;
    }

    if (*(v3 + 2))
    {
      sub_21B233A74((v3 + 32), v69);
      v28 = v70;
      v27 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v29 = *(v27 + 8);
      v2 = (v29 + 48);
      v30 = *(v29 + 48);

      v6 = (v30)(v28, v29);
      sub_21B233960(v69);
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_49;
      }

      v2 = v63;
      if (v6)
      {
        v31 = 0;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v6 = 0;
    v31 = 2;
LABEL_23:
    v32 = sub_21B2FB1D4(0, v6, v31);

    sub_21B23A9F4(0, v6, v31);
    v30 = *v2;
    v6 = *(*v2 + 2);
    if (v6)
    {
      v33 = *v2;
      v63 = v32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v34 = 0;
        *v2 = v30;
        v35 = v5 + 56;
        v62 = v6;
        while (v34 != v6)
        {
          v36 = v5;
          if (*(v5 + 16) && (v37 = *(v5 + 40), v38 = sub_21B34BBB4(), v39 = -1 << *(v5 + 32), v40 = v38 & ~v39, ((*(v35 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
          {
            v41 = ~v39;
            while (*(*(v5 + 48) + 8 * v40) != v34)
            {
              v40 = (v40 + 1) & v41;
              if (((*(v35 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
LABEL_33:
            if ((v63 & 0x8000000000000000) != 0)
            {
              goto LABEL_46;
            }

            if (v63)
            {
              v3 = &v30[40 * v34 + 32];
              v42 = v63;
              while (v34 < *(v30 + 2))
              {
                v43 = *(v3 + 3);
                v44 = *(v3 + 4);
                v6 = __swift_mutable_project_boxed_opaque_existential_1(v3, v43);
                (*(v44 + 16))(v43, v44);
                *v2 = v30;
                if (!--v42)
                {
                  goto LABEL_26;
                }
              }

              __break(1u);
              goto LABEL_41;
            }
          }

LABEL_26:
          ++v34;
          v6 = v62;
          v5 = v36;
          if (v34 == v62)
          {
            goto LABEL_39;
          }
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_49:
      v30 = sub_21B23A2F4(v30);
      goto LABEL_25;
    }

LABEL_39:

    return;
  }

  v6 = *v1;
  v7 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_47:
    v6 = sub_21B23A2F4(v6);
  }

  v8 = 0;
  *v2 = v6;
  v9 = (v3 + 32);
  v61 = v3;
  while (1)
  {
    if (v8 >= *(v3 + 2))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    sub_21B233A74(v9, v69);
    v14 = *v2;
    v13 = v2[1];
    v15 = v2[2];
    v66[0] = *v2;
    v66[1] = v13;
    v66[2] = v15;
    v17 = v70;
    v16 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v3 = *(v16 + 8);
    v18 = *(v3 + 1);

    v19._countAndFlagsBits = v18(v17, v3);
    v2 = v63;
    *&v20 = DataFrame.indexOfColumn(_:)(v19);
    v21 = v20;
    v6 = *(&v20 + 1);

    if ((v6 & 1) == 0)
    {
      break;
    }

LABEL_5:
    ++v8;
    sub_21B233960(v69);
    v9 += 40;
    v3 = v61;
    if (v62 == v8)
    {
      v5 = v72;
      goto LABEL_16;
    }
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  if (v21 >= *(v14 + 2))
  {
    goto LABEL_43;
  }

  sub_21B233A74(&v14[40 * v21 + 32], v66);
  v23 = v67;
  v22 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v24 = (*(*(v22 + 8) + 80))(v23);
  v26 = v70;
  v25 = v71;
  v6 = __swift_project_boxed_opaque_existential_1(v69, v70);
  if (v24 == (*(*(v25 + 8) + 80))(v26))
  {
    v2 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_21B23A2F4(v14);
    }

    if (v21 >= *(v14 + 2))
    {
      goto LABEL_44;
    }

    v10 = &v14[40 * v21];
    v11 = *(v10 + 7);
    v12 = *(v10 + 8);
    __swift_mutable_project_boxed_opaque_existential_1((v10 + 32), v11);
    (*(v12 + 40))(v69, v11, v12);
    *v63 = v14;
    v6 = &v72;
    sub_21B254588(&v64, v21);
    sub_21B233960(v66);
    goto LABEL_5;
  }

  v64 = 0;
  v65 = 0xE000000000000000;
  sub_21B34B634();

  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021B34C5B0;
  v45 = v67;
  v46 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v47 = (*(*(v46 + 8) + 8))(v45);
  MEMORY[0x21CEED5E0](v47);

  MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
  v48 = v64;
  v49 = v65;
  v64 = 0xD000000000000018;
  v65 = 0x800000021B34C590;
  MEMORY[0x21CEED5E0](v48, v49);

  v51 = v64;
  v50 = v65;
  v53 = v67;
  v52 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  (*(*(v52 + 8) + 80))(v53);
  v64 = sub_21B34BD24();
  v65 = v54;
  MEMORY[0x21CEED5E0](0x202E737620, 0xE500000000000000);
  v56 = v70;
  v55 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  (*(*(v55 + 8) + 80))(v56);
  v57 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v57);

  v58 = v64;
  v59 = v65;
  v64 = v51;
  v65 = v50;

  MEMORY[0x21CEED5E0](v58, v59);

  sub_21B34B824();
  __break(1u);
}

uint64_t sub_21B24185C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_21B34BBC4();
  sub_21B2615FC(a1, &v20, &qword_27CD7E200, &unk_21B352050);
  if (*(&v21 + 1))
  {
    v18[0] = v20;
    v18[1] = v21;
    v19 = v22;
    sub_21B34BBE4();
    sub_21B34B5C4();
    sub_21B260E14(v18);
  }

  else
  {
    sub_21B34BBE4();
  }

  v6 = sub_21B34BC24();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    sub_21B2615FC(*(a2 + 48) + 40 * v8, &v20, &qword_27CD7E200, &unk_21B352050);
    sub_21B2615FC(&v20, v13, &qword_27CD7E200, &unk_21B352050);
    sub_21B2615FC(a1, &v15, &qword_27CD7E200, &unk_21B352050);
    if (!v14)
    {
      break;
    }

    sub_21B2615FC(v13, v18, &qword_27CD7E200, &unk_21B352050);
    if (!*(&v16 + 1))
    {
      sub_21B261664(&v20, &qword_27CD7E200, &unk_21B352050);
      sub_21B260E14(v18);
      goto LABEL_9;
    }

    v11[0] = v15;
    v11[1] = v16;
    v12 = v17;
    v10 = MEMORY[0x21CEEDD80](v18, v11);
    sub_21B260E14(v11);
    sub_21B261664(&v20, &qword_27CD7E200, &unk_21B352050);
    sub_21B260E14(v18);
    sub_21B261664(v13, &qword_27CD7E200, &unk_21B352050);
    if (v10)
    {
      return 1;
    }

LABEL_10:
    v8 = (v8 + 1) & v9;
    if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  sub_21B261664(&v20, &qword_27CD7E200, &unk_21B352050);
  if (*(&v16 + 1))
  {
LABEL_9:
    sub_21B261664(v13, &qword_27CD7E208, &qword_21B351B20);
    goto LABEL_10;
  }

  sub_21B261664(v13, &qword_27CD7E200, &unk_21B352050);
  return 1;
}

uint64_t sub_21B241ACC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v99 = *MEMORY[0x277D85DE8];
  if (!*(a3 + 16))
  {
    goto LABEL_154;
  }

  v6 = *(a3 + 40);
  sub_21B34BBC4();
  v7 = a2 >> 60;
  sub_21B34BBE4();
  if (a2 >> 60 != 15)
  {
    sub_21B34A744();
  }

  v8 = sub_21B34BC24();
  v9 = -1 << *(a3 + 32);
  v10 = v8 & ~v9;
  if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_154:
    result = 0;
    goto LABEL_155;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v90 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v88 = v14;
  v91 = a2 >> 62;
  v86 = (a1 >> 32) - a1;
  v87 = a1 >> 32;
  v89 = v11;
  while (1)
  {
    v15 = (*(a3 + 48) + 16 * v10);
    v17 = *v15;
    v16 = v15[1];
    if (v16 >> 60 == 15)
    {
      if (v7 > 0xE)
      {
        sub_21B260DAC(v17, v16);
        sub_21B260DAC(a1, a2);
        goto LABEL_157;
      }

LABEL_19:
      sub_21B260DAC(v17, v16);
      sub_21B260DAC(a1, a2);
      sub_21B260C58(v17, v16);
      v18 = a1;
      v19 = a2;
      goto LABEL_20;
    }

    if (v7 > 0xE)
    {
      goto LABEL_19;
    }

    v20 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v21 = 0;
      }

      else
      {
        v21 = v16 == 0xC000000000000000;
      }

      v23 = !v21 || a2 >> 62 != 3;
      if (((v23 | v90) & 1) == 0)
      {
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260C58(0, 0xC000000000000000);
        v17 = 0;
        goto LABEL_157;
      }

LABEL_42:
      v24 = 0;
      goto LABEL_43;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_42;
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_161;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_162;
      }

      v24 = v24;
    }

    else
    {
      v24 = BYTE6(v16);
    }

LABEL_43:
    if (v91 > 1)
    {
      if (v91 != 2)
      {
        if (!v24)
        {
LABEL_156:
          sub_21B260DAC(v17, v16);
          sub_21B260DAC(a1, a2);
          sub_21B260C58(a1, a2);
          goto LABEL_157;
        }

LABEL_61:
        sub_21B260DAC(v17, v16);
        sub_21B260DAC(a1, a2);
        sub_21B260C58(a1, a2);
        v18 = v17;
        v19 = v16;
LABEL_20:
        sub_21B260C58(v18, v19);
        goto LABEL_21;
      }

      v30 = *(a1 + 16);
      v29 = *(a1 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v27)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v28 = BYTE6(a2);
      if (v91)
      {
        v28 = HIDWORD(a1) - a1;
        if (v88)
        {
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
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
        }
      }
    }

    if (v24 != v28)
    {
      goto LABEL_61;
    }

    if (v24 < 1)
    {
      goto LABEL_156;
    }

    if (v20 > 1)
    {
      break;
    }

    if (v20)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_163;
      }

      sub_21B260DAC(v17, v16);
      sub_21B260DAC(v17, v16);
      sub_21B260DAC(a1, a2);
      v40 = sub_21B34A574();
      if (v40)
      {
        v41 = v40;
        v42 = sub_21B34A594();
        if (__OFSUB__(v17, v42))
        {
          goto LABEL_165;
        }

        v83 = (v17 - v42 + v41);
      }

      else
      {
        v83 = 0;
      }

      v7 = a2 >> 60;
      sub_21B34A584();
      v11 = v89;
      if (v91 == 2)
      {
        v70 = *(a1 + 16);
        v81 = *(a1 + 24);
        v49 = sub_21B34A574();
        if (v49)
        {
          v71 = sub_21B34A594();
          if (__OFSUB__(v70, v71))
          {
            goto LABEL_179;
          }

          v49 += v70 - v71;
        }

        v27 = __OFSUB__(v81, v70);
        v72 = v81 - v70;
        if (v27)
        {
          goto LABEL_175;
        }

        v73 = sub_21B34A584();
        if (v73 >= v72)
        {
          v52 = v72;
        }

        else
        {
          v52 = v73;
        }

        v53 = v83;
        if (!v83)
        {
          goto LABEL_186;
        }

        v7 = a2 >> 60;
        if (!v49)
        {
          goto LABEL_185;
        }
      }

      else
      {
        if (v91 != 1)
        {
          v69 = v83;
          *__s1 = a1;
          *&__s1[8] = a2;
          __s1[10] = BYTE2(a2);
          __s1[11] = BYTE3(a2);
          __s1[12] = BYTE4(a2);
          __s1[13] = BYTE5(a2);
          if (!v83)
          {
            goto LABEL_189;
          }

          goto LABEL_138;
        }

        if (v87 < a1)
        {
          goto LABEL_174;
        }

        v49 = sub_21B34A574();
        if (v49)
        {
          v54 = sub_21B34A594();
          if (__OFSUB__(a1, v54))
          {
            goto LABEL_181;
          }

          v49 += a1 - v54;
        }

        v55 = sub_21B34A584();
        v52 = (a1 >> 32) - a1;
        if (v55 < v86)
        {
          v52 = v55;
        }

        v53 = v83;
        if (!v83)
        {
          goto LABEL_192;
        }

        if (!v49)
        {
          goto LABEL_191;
        }
      }

      goto LABEL_134;
    }

    *__s1 = v17;
    *&__s1[8] = v16;
    __s1[10] = BYTE2(v16);
    __s1[11] = BYTE3(v16);
    __s1[12] = BYTE4(v16);
    __s1[13] = BYTE5(v16);
    if (!v91)
    {
      goto LABEL_77;
    }

    if (v91 == 1)
    {
      if (v87 < a1)
      {
        goto LABEL_167;
      }

      sub_21B260DAC(v17, v16);
      sub_21B260DAC(v17, v16);
      sub_21B260DAC(a1, a2);
      v31 = sub_21B34A574();
      if (!v31)
      {
        goto LABEL_193;
      }

      v32 = v31;
      v33 = sub_21B34A594();
      if (__OFSUB__(a1, v33))
      {
        goto LABEL_171;
      }

      v34 = (a1 - v33 + v32);
      result = sub_21B34A584();
      if (!v34)
      {
        goto LABEL_194;
      }

      goto LABEL_109;
    }

    v79 = *(a1 + 24);
    v85 = *(a1 + 16);
    sub_21B260DAC(v17, v16);
    sub_21B260DAC(v17, v16);
    sub_21B260DAC(a1, a2);
    v43 = sub_21B34A574();
    if (v43)
    {
      v56 = sub_21B34A594();
      v57 = v85;
      if (__OFSUB__(v85, v56))
      {
        goto LABEL_177;
      }

      v43 = &v85[v43 - v56];
    }

    else
    {
      v57 = v85;
    }

    v74 = v79 - v57;
    if (__OFSUB__(v79, v57))
    {
      goto LABEL_170;
    }

    v75 = sub_21B34A584();
    if (!v43)
    {
      goto LABEL_190;
    }

LABEL_148:
    if (v75 >= v74)
    {
      v76 = v74;
    }

    else
    {
      v76 = v75;
    }

    v62 = memcmp(__s1, v43, v76);
    sub_21B260C58(v17, v16);
    sub_21B260C58(a1, a2);
    sub_21B260C58(v17, v16);
    v7 = a2 >> 60;
LABEL_152:
    v11 = v89;
    if (!v62)
    {
      goto LABEL_158;
    }

LABEL_21:
    v10 = (v10 + 1) & v11;
    if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_154;
    }
  }

  if (v20 != 2)
  {
    *&__s1[6] = 0;
    *__s1 = 0;
    if (!v91)
    {
LABEL_77:
      __s2 = a1;
      v93 = a2;
      v94 = BYTE2(a2);
      v95 = BYTE3(a2);
      v96 = BYTE4(a2);
      v97 = BYTE5(a2);
      sub_21B260DAC(v17, v16);
      sub_21B260DAC(a1, a2);
      v46 = memcmp(__s1, &__s2, BYTE6(a2));
      v47 = a1;
      v48 = a2;
      goto LABEL_139;
    }

    if (v91 != 2)
    {
      if (v87 < a1)
      {
        goto LABEL_166;
      }

      sub_21B260DAC(v17, v16);
      sub_21B260DAC(v17, v16);
      sub_21B260DAC(a1, a2);
      v58 = sub_21B34A574();
      if (!v58)
      {
        goto LABEL_195;
      }

      v59 = v58;
      v60 = sub_21B34A594();
      if (__OFSUB__(a1, v60))
      {
        goto LABEL_172;
      }

      v34 = (a1 - v60 + v59);
      result = sub_21B34A584();
      if (!v34)
      {
        goto LABEL_196;
      }

LABEL_109:
      if (result >= v86)
      {
        v61 = (a1 >> 32) - a1;
      }

      else
      {
        v61 = result;
      }

      v62 = memcmp(__s1, v34, v61);
      sub_21B260C58(v17, v16);
      v63 = a1;
      v64 = a2;
LABEL_136:
      sub_21B260C58(v63, v64);
      sub_21B260C58(v17, v16);
      goto LABEL_152;
    }

    v78 = *(a1 + 24);
    v84 = *(a1 + 16);
    sub_21B260DAC(v17, v16);
    sub_21B260DAC(v17, v16);
    sub_21B260DAC(a1, a2);
    v43 = sub_21B34A574();
    if (v43)
    {
      v44 = sub_21B34A594();
      v45 = v84;
      if (__OFSUB__(v84, v44))
      {
        goto LABEL_176;
      }

      v43 = &v84[v43 - v44];
    }

    else
    {
      v45 = v84;
    }

    v74 = v78 - v45;
    if (__OFSUB__(v78, v45))
    {
      goto LABEL_168;
    }

    v75 = sub_21B34A584();
    if (!v43)
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      sub_21B34A584();
LABEL_194:
      __break(1u);
LABEL_195:
      result = sub_21B34A584();
LABEL_196:
      __break(1u);
      return result;
    }

    goto LABEL_148;
  }

  v36 = *(v17 + 16);
  sub_21B260DAC(v17, v16);
  sub_21B260DAC(v17, v16);
  sub_21B260DAC(a1, a2);
  v37 = sub_21B34A574();
  if (v37)
  {
    v38 = v37;
    v39 = sub_21B34A594();
    if (__OFSUB__(v36, v39))
    {
      goto LABEL_164;
    }

    v82 = (v36 - v39 + v38);
  }

  else
  {
    v82 = 0;
  }

  v7 = a2 >> 60;
  sub_21B34A584();
  v11 = v89;
  if (v91 != 2)
  {
    if (v91 == 1)
    {
      if (v87 < a1)
      {
        goto LABEL_169;
      }

      v49 = sub_21B34A574();
      if (v49)
      {
        v50 = sub_21B34A594();
        if (__OFSUB__(a1, v50))
        {
          goto LABEL_180;
        }

        v49 += a1 - v50;
      }

      v51 = sub_21B34A584();
      v52 = (a1 >> 32) - a1;
      if (v51 < v86)
      {
        v52 = v51;
      }

      v53 = v82;
      if (!v82)
      {
        goto LABEL_184;
      }

      if (!v49)
      {
        goto LABEL_183;
      }

      goto LABEL_134;
    }

    v69 = v82;
    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v82)
    {
      goto LABEL_182;
    }

LABEL_138:
    v46 = memcmp(v69, __s1, BYTE6(a2));
    sub_21B260C58(a1, a2);
    v47 = v17;
    v48 = v16;
LABEL_139:
    sub_21B260C58(v47, v48);
    sub_21B260C58(v17, v16);
    if (!v46)
    {
      goto LABEL_158;
    }

    goto LABEL_21;
  }

  v65 = *(a1 + 16);
  v80 = *(a1 + 24);
  v49 = sub_21B34A574();
  if (v49)
  {
    v66 = sub_21B34A594();
    if (__OFSUB__(v65, v66))
    {
      goto LABEL_178;
    }

    v49 += v65 - v66;
  }

  v27 = __OFSUB__(v80, v65);
  v67 = v80 - v65;
  if (v27)
  {
    goto LABEL_173;
  }

  v68 = sub_21B34A584();
  if (v68 >= v67)
  {
    v52 = v67;
  }

  else
  {
    v52 = v68;
  }

  v53 = v82;
  if (!v82)
  {
    goto LABEL_188;
  }

  v7 = a2 >> 60;
  if (!v49)
  {
    goto LABEL_187;
  }

LABEL_134:
  if (v53 != v49)
  {
    v62 = memcmp(v53, v49, v52);
    sub_21B260C58(a1, a2);
    v63 = v17;
    v64 = v16;
    goto LABEL_136;
  }

  sub_21B260C58(a1, a2);
  sub_21B260C58(v17, v16);
LABEL_157:
  sub_21B260C58(v17, v16);
LABEL_158:
  result = 1;
LABEL_155:
  v77 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DataFrame.append(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v78 = MEMORY[0x277D84FA0];
  v74[0] = v3;
  v74[1] = v4;
  v74[2] = v6;
  v75 = v5;
  v76 = v7;
  v77 = v8;
  v9 = DataFrame.Slice.columns.getter();
  v67 = *(v9 + 16);
  if (v67)
  {
    v10 = v9;
    v11 = *v1;
    v63 = v7;
    v64 = v5;
    v62 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84FA0];
    if (!*(MEMORY[0x277D84FA0] + 16))
    {
    }

LABEL_17:
    v10 = sub_21B2FB1D4(v5, v7, v8);

    sub_21B254074(v5, v7, v8);

    sub_21B23A9F4(v5, v7, v8);
    v32 = *v2;
    v33 = *(*v2 + 2);
    if (!v33)
    {
    }

    v34 = *v2;
    v67 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_21B23A2F4(v32);
    }

    v35 = 0;
    *v2 = v32;
    v36 = v11 + 56;
    v64 = v32 + 32;
    v66 = v33;
    while (v35 != v33)
    {
      v37 = v11;
      if (*(v11 + 16) && (v38 = *(v11 + 40), v39 = sub_21B34BBB4(), v40 = -1 << *(v11 + 32), v41 = v39 & ~v40, ((*(v36 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0))
      {
        v42 = ~v40;
        while (*(*(v11 + 48) + 8 * v41) != v35)
        {
          v41 = (v41 + 1) & v42;
          if (((*(v36 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        if (v67 < 0)
        {
          goto LABEL_41;
        }

        if (v67)
        {
          v43 = &v64[40 * v35];
          v10 = v67;
          while (v35 < *(v32 + 2))
          {
            v44 = *(v43 + 24);
            v45 = *(v43 + 32);
            v11 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
            (*(v45 + 16))(v44, v45);
            *v2 = v32;
            if (!--v10)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_36;
        }
      }

LABEL_21:
      ++v35;
      v33 = v66;
      v11 = v37;
      if (v35 == v66)
      {
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  v11 = sub_21B23A2F4(v11);
LABEL_3:
  v12 = 0;
  *v2 = v11;
  v13 = v10;
  v14 = v10 + 32;
  v68 = v2;
  v65 = v10;
  do
  {
    if (v12 >= *(v13 + 16))
    {
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

    sub_21B25EFA4(v14, v74);
    v16 = *v2;
    v15 = v2[1];
    v17 = v2[2];
    v71[0] = *v2;
    v71[1] = v15;
    v71[2] = v17;
    v19 = v75;
    v18 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    v10 = *(v18 + 8);
    v20 = *(v10 + 8);

    v21._countAndFlagsBits = v20(v19, v10);
    v2 = v68;
    *&v22 = DataFrame.indexOfColumn(_:)(v21);
    v23 = v22;
    v11 = *(&v22 + 1);

    if ((v11 & 1) == 0)
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v23 >= *(v16 + 2))
      {
        goto LABEL_38;
      }

      sub_21B233A74(&v16[40 * v23 + 32], v71);
      v25 = v72;
      v24 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v26 = (*(*(v24 + 8) + 80))(v25);
      v28 = v75;
      v27 = v76;
      v11 = __swift_project_boxed_opaque_existential_1(v74, v75);
      if (v26 != (*(*(v27 + 8) + 80))(v28))
      {

        v69 = 0;
        v70 = 0xE000000000000000;
        sub_21B34B634();

        v69 = 0xD00000000000001CLL;
        v70 = 0x800000021B34C5B0;
        v47 = v72;
        v48 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        v49 = (*(*(v48 + 8) + 8))(v47);
        MEMORY[0x21CEED5E0](v49);

        MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
        v50 = v69;
        v51 = v70;
        v69 = 0xD000000000000018;
        v70 = 0x800000021B34C590;
        MEMORY[0x21CEED5E0](v50, v51);

        v53 = v69;
        v52 = v70;
        v55 = v72;
        v54 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        (*(*(v54 + 8) + 80))(v55);
        v69 = sub_21B34BD24();
        v70 = v56;
        MEMORY[0x21CEED5E0](0x202E737620, 0xE500000000000000);
        v58 = v75;
        v57 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        (*(*(v57 + 8) + 80))(v58);
        v59 = sub_21B34BD24();
        MEMORY[0x21CEED5E0](v59);

        v60 = v69;
        v61 = v70;
        v69 = v53;
        v70 = v52;

        MEMORY[0x21CEED5E0](v60, v61);

        result = sub_21B34B824();
        __break(1u);
        return result;
      }

      v2 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_21B23A2F4(v16);
      }

      if (v23 >= *(v16 + 2))
      {
        goto LABEL_39;
      }

      v29 = &v16[40 * v23];
      v30 = *(v29 + 7);
      v31 = *(v29 + 8);
      __swift_mutable_project_boxed_opaque_existential_1((v29 + 32), v30);
      (*(v31 + 48))(v74, v30, v31);
      *v68 = v16;
      v11 = &v78;
      sub_21B254588(&v69, v23);
      sub_21B233960(v71);
    }

    ++v12;
    sub_21B25F000(v74);
    v14 += 40;
    v13 = v65;
  }

  while (v67 != v12);

  v11 = v78;
  v7 = v63;
  v5 = v64;
  v8 = v62;
  if (*(v78 + 16))
  {
    goto LABEL_17;
  }
}

uint64_t DataFrame.filter<A>(on:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *v7;
  v10 = v7[1];
  v12 = v7[2];
  DataFrame.subscript.getter(&v37, a1, a2, a3, a6);
  v34[0] = v37;
  v34[1] = v38;
  v34[2] = v39;
  v13 = type metadata accessor for Column();
  WitnessTable = swift_getWitnessTable();
  v15 = v40;
  sub_21B2D2874(a4, a5, v13, WitnessTable, &v37);
  if (v15)
  {
  }

  v40 = v10;
  v17 = v37;
  v32 = v38;
  v18 = v39;
  if (!*(v11 + 16))
  {
    swift_bridgeObjectRetain_n();
    v23 = v40;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
LABEL_8:
    v22 = 0;
    v24 = 2;
    goto LABEL_9;
  }

  sub_21B233A74(v11 + 32, v34);
  v19 = v35;
  v20 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v21 = *(v20 + 8);
  v31 = *(v21 + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v22 = v31(v19, v21);
  result = sub_21B233960(v34);
  if (v22 < 0)
  {
    __break(1u);
    return result;
  }

  v23 = v40;
  if (!v22)
  {
    goto LABEL_8;
  }

  v24 = 0;
LABEL_9:
  sub_21B254074(0, v22, v24);

  sub_21B23A9F4(0, v22, v24);
  v40 = v11;
  v25 = sub_21B248CCC(v17, v32, v18, 0, v22, v24);
  v26 = v23;
  v28 = v27;
  v30 = v29;

  result = sub_21B23A9F4(v17, v32, v18);
  *a7 = v40;
  *(a7 + 8) = v26;
  *(a7 + 16) = v12;
  *(a7 + 24) = v25;
  *(a7 + 32) = v28;
  *(a7 + 40) = v30;
  return result;
}

uint64_t DataFrame.filter<A>(on:_:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  v41[0] = *a1;
  v41[1] = v7;

  DataFrame.subscript.getter(v41);

  v38[0] = v42;
  v38[1] = v43;
  v38[2] = v44;
  v11 = type metadata accessor for Column();
  WitnessTable = swift_getWitnessTable();
  v13 = v45;
  sub_21B2D2874(a2, a3, v11, WitnessTable, &v42);
  if (v13)
  {
  }

  v36 = v10;
  v45 = v8;
  v15 = v42;
  v16 = v43;
  v17 = v44;
  if (!*(v9 + 16))
  {
    swift_bridgeObjectRetain_n();
    v27 = v45;
    swift_bridgeObjectRetain_n();
    v25 = v36;
    swift_bridgeObjectRetain_n();
    v23 = a4;
    v24 = v27;
LABEL_8:
    v22 = 0;
    v26 = 2;
    goto LABEL_9;
  }

  sub_21B233A74(v9 + 32, v38);
  v18 = v39;
  v19 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v20 = *(v19 + 8);
  v21 = *(v20 + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v22 = v21(v18, v20);
  result = sub_21B233960(v38);
  v23 = a4;
  if (v22 < 0)
  {
    __break(1u);
    return result;
  }

  v24 = v45;
  v25 = v36;
  if (!v22)
  {
    goto LABEL_8;
  }

  v26 = 0;
LABEL_9:
  sub_21B254074(0, v22, v26);

  sub_21B23A9F4(0, v22, v26);
  v45 = sub_21B248CCC(v15, v16, v17, 0, v22, v26);
  v29 = v28;
  v30 = v24;
  v31 = v9;
  v32 = v25;
  v34 = v33;

  result = sub_21B23A9F4(v15, v16, v17);
  *v23 = v31;
  *(v23 + 8) = v30;
  v35 = v45;
  *(v23 + 16) = v32;
  *(v23 + 24) = v35;
  *(v23 + 32) = v29;
  *(v23 + 40) = v34;
  return result;
}

uint64_t DataFrame.subscript.getter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 2);
  v7 = *v1;
  v8 = *v1;
  v9 = v4;
  v5._countAndFlagsBits = v2;
  v5._object = v3;
  v10 = DataFrame.indexOfColumn(_:)(v5);
  if (!v10.is_nil)
  {
    if (v10.value < 0)
    {
      __break(1u);
    }

    else if (v10.value < *(v7 + 16))
    {
      sub_21B233A74(v7 + 40 * v10.value + 32, &v8);
      sub_21B3338E8();
      return sub_21B233960(&v8);
    }

    __break(1u);
  }

  sub_21B34B634();

  MEMORY[0x21CEED5E0](v2, v3);
  MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.filter(_:)@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  v6 = a1;
  v51 = a3;
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  if (*(*v3 + 16))
  {
    v10 = v4;
    sub_21B233A74(v8 + 32, v46);
    v11 = v9;
    v12 = v7;
    v14 = v47;
    v13 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v15 = *(v13 + 8);
    v16 = *(v15 + 48);

    v17 = v12;
    v9 = v11;

    v18 = v16(v14, v15);
    result = sub_21B233960(v46);
    if (v18 < 0)
    {
      __break(1u);
      goto LABEL_17;
    }

    v4 = v10;
    v7 = v17;
    v6 = a1;
    v5 = a2;
    if (v18)
    {
      v20 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v21 = *v3;
  }

  v18 = 0;
  v20 = 2;
LABEL_7:
  v49[0] = v8;
  v49[1] = v7;
  v49[2] = v9;
  v49[3] = 0;
  v49[4] = v18;
  v50 = v20;
  v22 = sub_21B23DB68(v6, v5);
  v24 = v23;
  v26 = v25;
  result = sub_21B25FE94(v49);
  if (v4)
  {
    return result;
  }

  v27 = v26;
  if (!*(v8 + 16))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    goto LABEL_13;
  }

  v42 = v22;
  sub_21B233A74(v8 + 32, v46);
  v28 = v9;
  v29 = v7;
  v31 = v47;
  v30 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v32 = *(v30 + 8);
  v33 = *(v32 + 48);
  swift_bridgeObjectRetain_n();
  v43 = v29;
  v9 = v28;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v34 = v33(v31, v32);
  result = sub_21B233960(v46);
  if (v34 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v22 = v42;
  v7 = v43;
  if (!v34)
  {
LABEL_13:
    v34 = 0;
    v35 = 2;
    goto LABEL_14;
  }

  v35 = 0;
LABEL_14:
  sub_21B254074(0, v34, v35);

  sub_21B23A9F4(0, v34, v35);
  v36 = sub_21B248CCC(v22, v24, v27, 0, v34, v35);
  v38 = v37;
  v40 = v39;
  result = sub_21B23A9F4(v22, v24, v27);
  v41 = v51;
  *v51 = v8;
  v41[1] = v7;
  v41[2] = v9;
  v41[3] = v36;
  v41[4] = v38;
  *(v41 + 40) = v40;
  return result;
}

uint64_t DataFrame.selecting<A>(columnNames:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = *v4;
  v7 = *(v4 + 2);
  return DataFrame.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_21B24377C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v46 = a2 + 32;
    v8 = (a1 + 40);
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      v50 = a2;
      v51 = a3;
      v52 = a4;

      v12._countAndFlagsBits = v10;
      v12._object = v11;
      v58 = DataFrame.indexOfColumn(_:)(v12);
      if (v58.is_nil)
      {
        goto LABEL_37;
      }

      if (v58.value < 0)
      {
        break;
      }

      if (v58.value >= *(a2 + 16))
      {
        goto LABEL_36;
      }

      v13 = a3;
      sub_21B233A74(v46 + 40 * v58.value, &v50);
      v15 = v53;
      v14 = v54;
      __swift_mutable_project_boxed_opaque_existential_1(&v50, v53);
      (*(*(v14 + 8) + 16))(v10, v11, v15);
      sub_21B233A74(&v50, &v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21B249C94(0, *(v9 + 2) + 1, 1, v9, &qword_27CD7E4E8, &qword_21B351DA0);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      a3 = v13;
      if (v17 >= v16 >> 1)
      {
        v9 = sub_21B249C94((v16 > 1), v17 + 1, 1, v9, &qword_27CD7E4E8, &qword_21B351DA0);
      }

      *(v9 + 2) = v17 + 1;
      v18 = &v9[40 * v17];
      v19 = v55;
      v20 = v56;
      *(v18 + 8) = v57;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      sub_21B233960(&v50);
      v8 += 2;
      if (!--v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_21B34B634();

    v50 = 0xD00000000000001ALL;
    v51 = 0x800000021B34C410;
    MEMORY[0x21CEED5E0](v10, v11);
    MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
    goto LABEL_39;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_13:
  sub_21B23BEF8(v9, &v55);

  v22 = sub_21B25DE78(v21);

  v23 = *(a3 + 16);
  if (!v23)
  {
LABEL_34:

    v44 = v56;
    *a5 = v55;
    *(a5 + 16) = v44;
    return result;
  }

  v24 = 0;
  v25 = a3 + 32;
  v26 = v22 + 56;
  v47 = a3 + 32;
  while (1)
  {
    if (!*(v22 + 16))
    {
      goto LABEL_16;
    }

    v27 = (v25 + 32 * v24);
    v28 = v27[1];
    v49 = *v27;
    v30 = v27[2];
    v29 = v27[3];
    v31 = *(v22 + 40);
    sub_21B34BBC4();

    sub_21B34AD94();
    v32 = sub_21B34BC24();
    v33 = -1 << *(v22 + 32);
    v34 = v32 & ~v33;
    if ((*(v26 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
    {
      break;
    }

LABEL_15:

LABEL_16:
    if (++v24 == v23)
    {
      goto LABEL_34;
    }
  }

  v35 = ~v33;
  while (1)
  {
    v36 = (*(v22 + 48) + 16 * v34);
    v37 = *v36 == v30 && v36[1] == v29;
    if (v37 || (sub_21B34B9F4() & 1) != 0)
    {
      break;
    }

    v34 = (v34 + 1) & v35;
    if (((*(v26 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (*(v56 + 16))
  {
    sub_21B24B5D0(v30, v29, MEMORY[0x277D83758], sub_21B24FDE4);
    if (v38)
    {
      v39 = *(&v55 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_21B249A10(0, v39[2] + 1, 1, v39);
      }

      v41 = v39[2];
      v40 = v39[3];
      if (v41 >= v40 >> 1)
      {
        v39 = sub_21B249A10((v40 > 1), v41 + 1, 1, v39);
      }

      v39[2] = v41 + 1;
      v42 = &v39[4 * v41];
      v25 = v47;
      v42[4] = v49;
      v42[5] = v28;
      v42[6] = v30;
      v42[7] = v29;
      *(&v55 + 1) = v39;
      goto LABEL_16;
    }
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  sub_21B34B634();

  v50 = 0xD00000000000001ALL;
  v51 = 0x800000021B34C410;
  MEMORY[0x21CEED5E0](v30, v29);
  MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
LABEL_39:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DataFrame.subscript.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = a1;
  v50 = a4;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v50 - v14;
  v16 = *v4;
  v60 = *(v4 + 8);
  v17 = *(v8 + 16);
  v55 = v7;
  v54 = v8 + 16;
  v51 = v17;
  v17(v11, v7, a2);
  v53 = v11;
  sub_21B34AEC4();
  v56 = a2;
  v57 = a3;
  swift_getAssociatedConformanceWitness();
  v58 = v15;
  v59 = AssociatedTypeWitness;
  sub_21B34B4D4();
  v18 = v65;
  if (v65)
  {
    v7 = v64;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      v64 = v16;
      v65 = v60;
      v20._countAndFlagsBits = v7;
      v20._object = v18;
      v68 = DataFrame.indexOfColumn(_:)(v20);
      if (v68.is_nil)
      {
        break;
      }

      if (v68.value < 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v68.value >= *(v16 + 16))
      {
        goto LABEL_37;
      }

      sub_21B233A74(v16 + 32 + 40 * v68.value, &v64);
      v21 = v66;
      v22 = v67;
      __swift_mutable_project_boxed_opaque_existential_1(&v64, v66);
      (*(*(v22 + 8) + 16))(v7, v18, v21);
      sub_21B233A74(&v64, &v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_21B249C94(0, *(v19 + 2) + 1, 1, v19, &qword_27CD7E4E8, &qword_21B351DA0);
      }

      v24 = *(v19 + 2);
      v23 = *(v19 + 3);
      if (v24 >= v23 >> 1)
      {
        v19 = sub_21B249C94((v23 > 1), v24 + 1, 1, v19, &qword_27CD7E4E8, &qword_21B351DA0);
      }

      *(v19 + 2) = v24 + 1;
      v25 = &v19[40 * v24];
      v26 = v61;
      v27 = v62;
      *(v25 + 8) = v63;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      sub_21B233960(&v64);
      sub_21B34B4D4();
      v7 = v64;
      v18 = v65;
      if (!v65)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
LABEL_13:
    (*(v52 + 8))(v58, v59);
    sub_21B23BEF8(v19, &v61);
    v18 = v56;
    v51(v53, v55, v56);
    v28 = sub_21B34B134();
    v29 = v28;
    v30 = v60;
    v31 = *(v60 + 16);
    if (!v31)
    {
LABEL_35:

      v48 = v62;
      v49 = v50;
      *v50 = v61;
      *(v49 + 2) = v48;
      return result;
    }

    v32 = 0;
    v58 = *(v60 + 16);
    v59 = v60 + 32;
    v33 = v28 + 56;
    while (v32 < *(v30 + 16))
    {
      if (*(v29 + 16))
      {
        v34 = (v59 + 32 * v32);
        v35 = v34[1];
        *&v60 = *v34;
        v7 = v34[2];
        v36 = v34[3];
        v37 = *(v29 + 40);
        sub_21B34BBC4();

        sub_21B34AD94();
        v38 = sub_21B34BC24();
        v39 = -1 << *(v29 + 32);
        v18 = v38 & ~v39;
        if ((*(v33 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v40 = ~v39;
          while (1)
          {
            v41 = (*(v29 + 48) + 16 * v18);
            v42 = *v41 == v7 && v41[1] == v36;
            if (v42 || (sub_21B34B9F4() & 1) != 0)
            {
              break;
            }

            v18 = (v18 + 1) & v40;
            if (((*(v33 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          if (!*(v62 + 16) || (sub_21B24B5D0(v7, v36, MEMORY[0x277D83758], sub_21B24FDE4), (v43 & 1) == 0))
          {
            v64 = 0;
            *&v65 = 0xE000000000000000;
            sub_21B34B634();

            v64 = 0xD00000000000001ALL;
            *&v65 = 0x800000021B34C410;
            MEMORY[0x21CEED5E0](v7, v36);
            MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
            goto LABEL_41;
          }

          v18 = *(&v61 + 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_21B249A10(0, *(v18 + 16) + 1, 1, v18);
          }

          v45 = *(v18 + 16);
          v44 = *(v18 + 24);
          if (v45 >= v44 >> 1)
          {
            v18 = sub_21B249A10((v44 > 1), v45 + 1, 1, v18);
          }

          *(v18 + 16) = v45 + 1;
          v46 = (v18 + 32 * v45);
          v46[4] = v60;
          v46[5] = v35;
          v46[6] = v7;
          v46[7] = v36;
          *(&v61 + 1) = v18;
          v31 = v58;
        }

        else
        {
LABEL_15:
        }
      }

      if (++v32 == v31)
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    __break(1u);
  }

  v64 = 0;
  *&v65 = 0xE000000000000000;
  sub_21B34B634();

  v64 = 0xD00000000000001ALL;
  *&v65 = 0x800000021B34C410;
  MEMORY[0x21CEED5E0](v7, v18);
  MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34C380);
LABEL_41:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B244378@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];

  result = sub_21B2A32B8();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = result;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return result;
}

__n128 sub_21B2443F0(__n128 *a1)
{
  v3 = v1->n128_u64[0];
  v4 = v1->n128_i64[1];
  v5 = v1[1].n128_i64[0];

  v6 = a1[1].n128_u64[0];
  sub_21B23A9F4(a1[1].n128_i64[1], a1[2].n128_i64[0], a1[2].n128_i8[8]);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v6;
  return result;
}

void (*sub_21B244450(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DataFrame.rows.modify(v2);
  return sub_21B2444C0;
}

void sub_21B2444C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_21B244510()
{
  v1 = *v0;
  v10 = v0[1];
  v11 = v0[2];

  v2 = sub_21B2A32B8();
  v4 = v3;
  v6 = v5;
  v7 = sub_21B2FB1D4(v2, v3, v5);

  sub_21B23A9F4(v2, v4, v6);
  v8 = *(v1 + 16);
  return v7;
}

unint64_t DataFrame.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 2);
  result = sub_21B23AC94(a1, a2);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v7 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = v7 + 40 * result + 32;

  return sub_21B233A74(v6, a3);
}

unint64_t sub_21B244640@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  result = sub_21B23AC94(*a2, a2[1]);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v6 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = v6 + 40 * result + 32;

  return sub_21B233A74(v5, a3);
}

uint64_t sub_21B2446C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_21B233A74(a1, v11);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];

  v6 = sub_21B23AC94(v4, v5);

  sub_21B239CC0(v6, v11);
  return sub_21B233960(v11);
}

uint64_t DataFrame.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];

  v7 = sub_21B23AC94(a2, a3);

  sub_21B239CC0(v7, a1);

  return sub_21B233960(a1);
}

unint64_t DataFrame.subscript.modify(void *a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  v10 = *v3;
  v11 = *(v3 + 2);
  result = sub_21B23AC94(a2, a3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v10 + 16))
  {
    sub_21B233A74(v10 + 40 * result + 32, v8);
    return sub_21B24492C;
  }

  __break(1u);
  return result;
}

void sub_21B24492C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  if (a2)
  {
    sub_21B233A74(*a1, v2 + 40);
    v8 = *v3;
    v10 = v3[1];
    v12 = v3[2];

    v6 = sub_21B23AC94(v5, v4);

    sub_21B239CC0(v6, v2 + 40);
    sub_21B233960(v2 + 40);
  }

  else
  {
    v9 = *v3;
    v11 = v3[1];
    v13 = v3[2];

    v7 = sub_21B23AC94(v5, v4);

    sub_21B239CC0(v7, v2);
  }

  sub_21B233960(v2);

  free(v2);
}

uint64_t sub_21B244BB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_21B233A74(a1, v6);

  return DataFrame.subscript.setter(v6, v3, v4);
}

uint64_t DataFrame.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = v3[1];
  v9 = v3[2];
  v18 = *v3;
  v19 = v8;
  v20 = v9;

  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v24 = DataFrame.indexOfColumn(_:)(v10);
  is_nil = v24.is_nil;

  if (is_nil)
  {
    sub_21B233A74(a1, &v18);
    v12 = v21;
    v13 = v22;
    __swift_mutable_project_boxed_opaque_existential_1(&v18, v21);
    (*(*(v13 + 8) + 16))(a2, a3, v12);
    DataFrame.append(column:)(&v18);
    sub_21B233960(a1);
    return sub_21B233960(&v18);
  }

  else
  {
    v15 = v4[1];
    v16 = v4[2];
    v18 = *v4;
    v19 = v15;
    v20 = v16;

    v17 = sub_21B23AC94(a2, a3);

    sub_21B239CC0(v17, a1);

    return sub_21B233960(a1);
  }
}

void (*DataFrame.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  v9 = *v3;
  v10 = *(v3 + 2);
  DataFrame.subscript.getter(a2, a3);
  return sub_21B244E58;
}

void sub_21B244E58(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  if (a2)
  {
    sub_21B233A74(*a1, v2 + 40);

    DataFrame.subscript.setter(v2 + 40, v5, v4);
    sub_21B233960(v2);
  }

  else
  {

    DataFrame.subscript.setter(v2, v5, v4);
  }

  free(v2);
}

unint64_t DataFrame.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v1 + 16) > result)
  {
    sub_21B233A74(*v1 + 40 * result + 32, v2);
    sub_21B3338E8();
    return sub_21B233960(v2);
  }

  __break(1u);
  return result;
}

uint64_t DataFrame.subscript.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = v5[1];
  v12 = v5[2];
  v24 = *v5;
  *&v25 = v11;
  *(&v25 + 1) = v12;

  v13._countAndFlagsBits = a2;
  v13._object = a3;
  v28 = DataFrame.indexOfColumn(_:)(v13);
  is_nil = v28.is_nil;

  if (is_nil)
  {
    v26 = a1;
    sub_21B34B474();
    v15 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    Column.init<A>(name:contents:)(a2, a3, &v26, a5, v15, WitnessTable, &v24);
    v26 = v24;
    v27 = v25;
    DataFrame.append<A>(column:)(&v26);
  }

  else
  {
    v24 = a1;
    sub_21B34B474();
    v18 = sub_21B34B054();

    v19 = swift_getWitnessTable();
    Column.init<A>(name:contents:)(a2, a3, &v24, a5, v18, v19, &v26);
    v20 = type metadata accessor for Column();
    Column.eraseToAnyColumn()(v20, &v24);

    v21 = v6[1];
    v22 = v6[2];
    v26 = *v6;
    *&v27 = v21;
    *(&v27 + 1) = v22;

    v23 = sub_21B23AC94(a2, a3);

    sub_21B239CC0(v23, &v24);
    return sub_21B233960(&v24);
  }
}

void (*DataFrame.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x30uLL);
  }

  *a1 = v11;
  v11[4] = a5;
  v11[5] = v5;
  v11[2] = a3;
  v11[3] = a4;
  v11[1] = a2;
  v13 = *v5;
  v14 = *(v5 + 2);
  *v11 = DataFrame.subscript.getter(a2, a3);
  return sub_21B245408;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x40uLL);
  }

  *a1 = v11;
  v11[6] = a5;
  v11[7] = v5;
  v11[4] = a3;
  v11[5] = a4;
  v11[3] = a2;
  v14 = *v5;
  v15 = *(v5 + 2);
  DataFrame.subscript.getter(v11, a2, a3, v12, a5);
  return sub_21B245748;
}

void sub_21B245408(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[2];
  v5 = **a1;

  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[1];
  if (a2)
  {

    DataFrame.subscript.setter(v10, v9, v4, v11, v8);
    v12 = *v3;
  }

  else
  {
    DataFrame.subscript.setter(v5, v3[1], v4, v6, v3[4]);
  }

  free(v3);
}

uint64_t DataFrame.subscript.setter(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = v3[1];
  v11 = v3[2];
  v20 = *v3;
  v21 = v10;
  v22 = v11;

  v12._countAndFlagsBits = a2;
  v12._object = a3;
  v24 = DataFrame.indexOfColumn(_:)(v12);
  is_nil = v24.is_nil;

  if (is_nil)
  {

    v20 = a2;
    v21 = a3;
    v22 = v9;

    DataFrame.append<A>(column:)(&v20);
  }

  else
  {
    v15 = type metadata accessor for Column();
    Column.eraseToAnyColumn()(v15, &v20);

    v17 = *v4;
    v18 = v4[1];
    v19 = v4[2];

    v16 = sub_21B23AC94(a2, a3);

    sub_21B239CC0(v16, &v20);
    return sub_21B233960(&v20);
  }
}

void sub_21B245748(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[6];
  v4 = (*a1)[7];
  v7 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[2];
  v11[0] = **a1;
  v11[1] = v3;
  v11[2] = v8;
  if (a2)
  {

    DataFrame.subscript.setter(v11, v7, v6);
    v9 = v2[1];
    v10 = v2[2];
  }

  else
  {

    DataFrame.subscript.setter(v11, v7, v6);
  }

  free(v2);
}

double sub_21B24581C@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *(a1 + 2);
  v7 = *a2;
  v8 = a2[1];
  v12 = *a1;
  v13 = v6;
  v10[0] = v7;
  v10[1] = v8;

  DataFrame.subscript.getter(v10);

  *a4 = v10[2];
  result = *&v11;
  *(a4 + 8) = v11;
  return result;
}

uint64_t sub_21B2458A0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v6 = *a3;
  v5 = a3[1];
  v7 = a1[1];
  v8 = a1[2];
  v11[0] = *a1;
  v11[1] = v7;
  v11[2] = v8;
  v10[0] = v6;
  v10[1] = v5;

  return DataFrame.subscript.setter(v11, v10);
}

uint64_t DataFrame.subscript.setter(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = a1[1];
  v15 = *a1;
  v5 = a1[2];
  v7 = *a2;
  v6 = a2[1];
  v8 = v2[1];
  v9 = v2[2];
  v19 = *v2;
  v20 = v8;
  v21 = v9;

  v10._countAndFlagsBits = v7;
  v10._object = v6;
  v23 = DataFrame.indexOfColumn(_:)(v10);
  is_nil = v23.is_nil;

  if (is_nil)
  {

    v19 = v7;
    v20 = v6;
    v21 = v5;

    DataFrame.append<A>(column:)(&v19);
  }

  else
  {
    v13 = type metadata accessor for Column();
    Column.eraseToAnyColumn()(v13, &v19);

    v16 = *v3;
    v17 = v3[1];
    v18 = v3[2];

    v14 = sub_21B23AC94(v7, v6);

    sub_21B239CC0(v14, &v19);
    return sub_21B233960(&v19);
  }
}

void (*DataFrame.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
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
  v7[3] = a3;
  v7[4] = v3;
  v8 = *a2;
  v9 = a2[1];
  v7[5] = v8;
  v7[6] = v9;
  v10 = *(v3 + 2);
  v13 = *v3;
  v14 = v10;
  v12[0] = v8;
  v12[1] = v9;
  swift_bridgeObjectRetain_n();
  DataFrame.subscript.getter(v12);

  return sub_21B245BCC;
}

void sub_21B245BCC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = v2[5];
  v5 = v2[6];
  v8 = v2[3];
  v7 = v2[4];
  v9 = v2[2];
  v12[0] = v4;
  v12[1] = v3;
  v12[2] = v9;
  v13[0] = v6;
  v13[1] = v5;
  if (a2)
  {

    DataFrame.subscript.setter(v12, v13);
    v10 = v2[1];
    v11 = v2[2];
  }

  else
  {
    DataFrame.subscript.setter(v12, v13);
  }

  free(v2);
}

unint64_t DataFrame.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    return sub_21B233A74(*v2 + 40 * result + 32, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B245CAC@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    return sub_21B233A74(*result + 40 * v3 + 32, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B245CE0(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  sub_21B233A74(a1, v5);
  sub_21B239CC0(v3, v5);
  return sub_21B233960(v5);
}

uint64_t DataFrame.subscript.setter(uint64_t a1, unint64_t a2)
{
  sub_21B239CC0(a2, a1);

  return sub_21B233960(a1);
}

void (*DataFrame.subscript.modify(void (**a1)(uint64_t *a1, char a2), unint64_t a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x60uLL);
  }

  *a1 = result;
  *(result + 10) = a2;
  *(result + 11) = v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > a2)
  {
    sub_21B233A74(*v2 + 40 * a2 + 32, result);
    return sub_21B245E0C;
  }

  __break(1u);
  return result;
}

void sub_21B245E0C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[10];
    v3 = v2[11];
    sub_21B233A74(*a1, (v2 + 5));
    sub_21B239CC0(v4, (v2 + 5));
    sub_21B233960((v2 + 5));
  }

  else
  {
    v5 = v2[11];
    sub_21B239CC0(v2[10], v2);
  }

  sub_21B233960(v2);

  free(v2);
}

uint64_t DataFrame.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v3 = type metadata accessor for Column();
  Column.eraseToAnyColumn()(v3, v8);

  sub_21B239CC0(a2, v8);
  return sub_21B233960(v8);
}

void (*DataFrame.subscript.modify(void *a1, unint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  *a1 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v11 = *v4;
  v12 = *(v4 + 2);
  DataFrame.subscript.getter(a2);
  return sub_21B245FC8;
}

void sub_21B245FC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = v2[5];
  v5 = v2[6];
  v8 = v2[2];
  v7 = v2[3];
  v11[0] = v4;
  v11[1] = v3;
  v11[2] = v8;
  if (a2)
  {

    DataFrame.subscript.setter(v11, v7);
    v9 = v2[1];
    v10 = v2[2];
  }

  else
  {
    DataFrame.subscript.setter(v11, v7);
  }

  free(v2);
}

uint64_t DataFrame.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  if (!*(*v2 + 16))
  {
    v16 = *v2;

    goto LABEL_6;
  }

  sub_21B233A74(v5 + 32, v17);
  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v10 = *(v9 + 8);
  v11 = *(v10 + 48);

  v12 = v11(v8, v10);
  result = sub_21B233960(v17);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v12;
    if (v12)
    {
      v15 = 0;
LABEL_7:
      result = sub_21B23A9F4(0, v14, v15);
      *a2 = v5;
      a2[1] = v6;
      a2[2] = v7;
      a2[3] = a1;
      return result;
    }

LABEL_6:
    v14 = 0;
    v15 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B24617C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;

  v8 = sub_21B2A32B8();
  result = sub_21B23A9F4(v8, v9, v10);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

uint64_t sub_21B2461F4(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8[0] = *a1;
  v8[1] = v4;
  v8[2] = v6;
  v8[3] = v5;

  return DataFrame.subscript.setter(v8, v3);
}

uint64_t DataFrame.subscript.setter(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  v29 = a1[2];
  v30 = a1[1];
  v6 = *v3;
  v5 = v3[1];
  v32 = v5;
  v31 = v3[2];
  if (*(*v3 + 2))
  {
    v7 = *a1;
    v8 = a1[3];
    sub_21B233A74((v6 + 32), v35);
    v10 = v36;
    v9 = v37;
    v11 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v12 = *(v9 + 8);
    v13 = *(v12 + 48);

    v14 = v13(v10, v12);
    sub_21B233960(v35);
    if (v14 < 0)
    {
      goto LABEL_16;
    }

    v5 = *(v6 + 2);
    if (v7[2] != v5)
    {
      goto LABEL_19;
    }

    v11 = v7;
    if (v5)
    {
      v27 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_17;
      }

      while (v5 <= v11[2])
      {
        v28 = v14;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          sub_21B233A74(&v11[v15 / 8 + 4], v35);
          if (v16 >= *(v6 + 2))
          {
            break;
          }

          ++v16;
          v17 = v36;
          v18 = v37;
          v19 = __swift_project_boxed_opaque_existential_1(v35, v36);
          v34[3] = v17;
          v34[4] = *(v18 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
          (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
          v14 = *&v6[v15 + 56];
          v21 = *&v6[v15 + 64];
          __swift_mutable_project_boxed_opaque_existential_1(&v6[v15 + 32], v14);
          (*(v21 + 72))(a2, v8, v34, v14, v21);
          v11 = v7;
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          sub_21B233960(v35);
          v15 += 40;
          if (v5 == v16)
          {

            v3 = v27;
            v14 = v28;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v6 = sub_21B23A2F4(v6);
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {

    if (v4[2])
    {
LABEL_19:
      result = sub_21B34B824();
      __break(1u);
      return result;
    }

    v14 = 0;
  }

LABEL_14:
  v22 = v3;
  v23 = *v3;
  v24 = v3[1];
  v25 = v22[2];

  result = sub_21B23A9F4(0, v14, 2 * (v14 == 0));
  *v22 = v6;
  v22[1] = v32;
  v22[2] = v31;
  return result;
}

void (*DataFrame.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 112) = a2;
  *(v5 + 120) = v2;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  if (!*(*v2 + 16))
  {
    v18 = *v2;

    goto LABEL_9;
  }

  sub_21B233A74(v7 + 32, v5);
  v10 = v6[3];
  v11 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v10);
  v12 = *(v11 + 8);
  v13 = *(v12 + 48);

  v14 = v13(v10, v12);
  result = sub_21B233960(v6);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = v14;
    if (v14)
    {
      v17 = 0;
LABEL_10:
      sub_21B23A9F4(0, v16, v17);
      v6[10] = v7;
      v6[11] = v8;
      v6[12] = v9;
      v6[13] = a2;
      return sub_21B2466B8;
    }

LABEL_9:
    v16 = 0;
    v17 = 2;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_21B2466B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[15];
  v4 = (*a1)[12];
  v54 = (*a1)[11];
  v5 = (*a1)[13];
  v55 = v5;
  v56 = (*a1)[10];
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = *(*v3 + 2);
  if ((a2 & 1) == 0)
  {
    v52 = (*a1)[12];
    v53 = v7;
    if (v9)
    {
      sub_21B233A74((v6 + 32), v2);
      v18 = v2[3];
      v17 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v18);
      v19 = *(v17 + 8);
      v20 = *(v19 + 48);
      v13 = v19 + 48;

      v15 = v20(v18, v19);
      sub_21B233960(v2);
      if (v15 < 0)
      {
        goto LABEL_40;
      }

      if (v15)
      {
        v21 = 0;
LABEL_22:
        v13 = *(v56 + 16);
        if (v13 != *(v6 + 2))
        {
          goto LABEL_45;
        }

        if (v13)
        {
          v49 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_25;
        }

LABEL_33:

        v43 = v2[15];
        v44 = *v43;
        v45 = v43[1];
        v46 = v43[2];

        sub_21B23A9F4(0, v15, v21);
        *v43 = v6;
        v43[1] = v7;
        v43[2] = v8;
        goto LABEL_34;
      }
    }

    else
    {
    }

    v15 = 0;
    v21 = 2;
    goto LABEL_22;
  }

  if (v9)
  {
    sub_21B233A74((v6 + 32), v2);
    v11 = v2[3];
    v10 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v11);
    v12 = *(v10 + 8);
    v14 = *(v12 + 48);
    v13 = v12 + 48;

    v15 = v14(v11, v12);
    sub_21B233960(v2);
    if (v15 < 0)
    {
      goto LABEL_39;
    }

    if (v15)
    {
      v16 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v15 = 0;
  v16 = 2;
LABEL_12:
  v13 = *(v56 + 16);
  if (v13 != *(v6 + 2))
  {
    goto LABEL_45;
  }

  if (!v13)
  {

LABEL_31:

    v36 = v2[15];
    v37 = *v36;
    v38 = v36[1];
    v39 = v36[2];

    sub_21B23A9F4(0, v15, v16);
    *v36 = v6;
    v36[1] = v7;
    v36[2] = v8;
    v40 = v2[10];
    v41 = v2[11];
    v42 = v2[12];

LABEL_34:

    free(v2);
    return;
  }

  v49 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_41;
  }

  while (v13 <= *(v56 + 16))
  {
    v47 = v15;
    v53 = v7;
    v50 = v8;
    v15 = 0;
    v22 = 0;
    while (1)
    {
      sub_21B233A74(v56 + v15 + 32, v2);
      if (v22 >= *(v6 + 2))
      {
        break;
      }

      v23 = v2[14];
      ++v22;
      v8 = &v6[v15];
      v24 = v2[3];
      v7 = v2[4];
      v25 = __swift_project_boxed_opaque_existential_1(v2, v24);
      v2[8] = v24;
      v2[9] = *(v7 + 1);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 5);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v25, v24);
      v27 = *&v6[v15 + 56];
      v28 = *&v6[v15 + 64];
      __swift_mutable_project_boxed_opaque_existential_1((v8 + 32), *(v8 + 7));
      (*(v28 + 72))(v23, v55, v2 + 5, v27, v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v2 + 5);
      sub_21B233960(v2);
      v15 += 40;
      if (v13 == v22)
      {

        v8 = v50;
        v7 = v53;
        v15 = v47;
        v16 = v49;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v6 = sub_21B23A2F4(v6);
  }

  __break(1u);
LABEL_43:
  v6 = sub_21B23A2F4(v6);
LABEL_25:
  if (v13 <= *(v56 + 16))
  {
    v48 = v15;
    v51 = v8;
    v15 = 0;
    v29 = 0;
    while (1)
    {
      sub_21B233A74(v56 + v15 + 32, v2);
      if (v29 >= *(v6 + 2))
      {
        goto LABEL_38;
      }

      v30 = v2[14];
      ++v29;
      v7 = &v6[v15];
      v31 = v2[3];
      v8 = v2[4];
      v32 = __swift_project_boxed_opaque_existential_1(v2, v31);
      v2[8] = v31;
      v2[9] = *(v8 + 1);
      v33 = __swift_allocate_boxed_opaque_existential_1(v2 + 5);
      (*(*(v31 - 8) + 16))(v33, v32, v31);
      v34 = *&v6[v15 + 56];
      v35 = *&v6[v15 + 64];
      __swift_mutable_project_boxed_opaque_existential_1((v7 + 32), *(v7 + 7));
      (*(v35 + 72))(v30, v55, v2 + 5, v34, v35);
      __swift_destroy_boxed_opaque_existential_1Tm(v2 + 5);
      sub_21B233960(v2);
      v15 += 40;
      if (v13 == v29)
      {

        v8 = v51;
        v7 = v53;
        v15 = v48;
        v21 = v49;
        goto LABEL_33;
      }
    }
  }

  __break(1u);
LABEL_45:
  sub_21B34B824();
  __break(1u);
}

uint64_t DataFrame.subscript.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  if (!*(*v4 + 16))
  {
    v17 = *v4;

LABEL_7:
    sub_21B2A6400(0, 0, 2);
    v19 = v18;
    v21 = v20;

    sub_21B23A9F4(0, 0, 2);
    if (v21)
    {
      v16 = 0;
    }

    else
    {
      v16 = v19;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  sub_21B233A74(v7 + 32, v55);
  v11 = v56;
  v10 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v12 = *(v10 + 8);
  v13 = *(v12 + 48);

  v14 = v13(v11, v12);
  result = sub_21B233960(v55);
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  sub_21B23A9F4(0, v14, 0);
  v16 = 0;
  if (!*(v7 + 16))
  {
LABEL_5:

    goto LABEL_14;
  }

LABEL_11:
  v50 = a3;
  sub_21B233A74(v7 + 32, v55);
  v23 = v56;
  v22 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v24 = *(v22 + 8);
  v25 = *(v24 + 48);

  v26 = v25(v23, v24);
  result = sub_21B233960(v55);
  if (v26 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  a3 = v50;
  if (v26)
  {
    v27 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v26 = 0;
  v27 = 2;
LABEL_15:
  sub_21B2A6400(0, v26, v27);
  v29 = v28;
  v31 = v30;

  result = sub_21B23A9F4(0, v26, v27);
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v29;
  }

  if (v32 < v16)
  {
    goto LABEL_28;
  }

  v33 = sub_21B288DA4(a1, v16, v32, a2, a3);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  if (!*(v7 + 16))
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    goto LABEL_24;
  }

  v52 = v33;
  v54 = a4;
  sub_21B233A74(v7 + 32, v55);
  v39 = v56;
  v40 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v41 = *(v40 + 8);
  v42 = *(v41 + 48);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v43 = v42(v39, v41);
  result = sub_21B233960(v55);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v34 = v52;
    a4 = v54;
    if (v43)
    {
      v44 = 0;
LABEL_25:
      sub_21B254074(0, v43, v44);

      sub_21B23A9F4(0, v43, v44);
      v45 = sub_21B248CCC(v34, v36, v38, 0, v43, v44);
      v47 = v46;
      v49 = v48;
      result = sub_21B23A9F4(v34, v36, v38);
      *a4 = v7;
      *(a4 + 8) = v8;
      *(a4 + 16) = v9;
      *(a4 + 24) = v45;
      *(a4 + 32) = v47;
      *(a4 + 40) = v49;
      return result;
    }

LABEL_24:
    v43 = 0;
    v44 = 2;
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_21B2470A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 40)
  {
    sub_21B2615FC(v3, v10, &qword_27CD7E200, &unk_21B352050);
    sub_21B2615FC(i, &v12, &qword_27CD7E200, &unk_21B352050);
    if (v11)
    {
      break;
    }

    if (*(&v13 + 1))
    {
      goto LABEL_14;
    }

    sub_21B261664(v10, &qword_27CD7E200, &unk_21B352050);
LABEL_5:
    v3 += 40;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_21B2615FC(v10, v9, &qword_27CD7E200, &unk_21B352050);
  if (*(&v13 + 1))
  {
    v7[0] = v12;
    v7[1] = v13;
    v8 = v14;
    v5 = MEMORY[0x21CEEDD80](v9, v7);
    sub_21B260E14(v7);
    sub_21B260E14(v9);
    sub_21B261664(v10, &qword_27CD7E200, &unk_21B352050);
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_21B260E14(v9);
LABEL_14:
  sub_21B261664(v10, &qword_27CD7E208, &qword_21B351B20);
  return 0;
}

uint64_t sub_21B247250(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t (*a4)(_BYTE *, _BYTE *), void (*a5)(_BYTE *))
{
  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    if (!v5 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v9 = a1 + 32;
      v10 = a2 + 32;
      do
      {
        a3(v9, v14);
        a3(v10, v13);
        v11 = a4(v14, v13);
        a5(v13);
        a5(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v9 += 40;
        v10 += 40;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_21B247340(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t DataFrame.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x21CEEE3B0](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 32;
    do
    {
      sub_21B233A74(v6, v7);
      AnyColumn.hash(into:)(a1);
      result = sub_21B233960(v7);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t DataFrame.hashValue.getter()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_21B233A74(v3, v5);
      AnyColumn.hash(into:)(v6);
      sub_21B233960(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_21B34BC24();
}

uint64_t sub_21B2474A4()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_21B233A74(v3, v5);
      AnyColumn.hash(into:)(v6);
      sub_21B233960(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_21B34BC24();
}

unint64_t DataFrame.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, int64x2_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v112 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v112 - v13;
  v15 = MEMORY[0x277D84F90];
  result = sub_21B25DC2C(MEMORY[0x277D84F90]);
  v133.i64[0] = v15;
  v133.i64[1] = v15;
  v134 = result;
  v122 = *(a1 + 16);
  if (!v122)
  {
    v111 = result;

    v110 = vdupq_n_s64(v15);
LABEL_177:
    *a2 = v110;
    a2[1].i64[0] = v111;
    return result;
  }

  v113 = v12;
  v117 = v9;
  v115 = v5;
  v114 = v4;
  v119 = a2;
  v17 = 0;
  v121 = a1 + 32;
  v118 = xmmword_21B351960;
  v120 = a1;
  v116 = v14;
LABEL_3:
  if (v17 >= *(a1 + 16))
  {
    goto LABEL_180;
  }

  v18 = (v121 + 24 * v17);
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[2];
  v22 = *(v21 + 16);
  v124 = v17;
  v125 = v19;
  v123 = v20;
  if (!v22)
  {

LABEL_27:
    v32 = *(v21 + 16);
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v126 = MEMORY[0x277D84F90];

      sub_21B254168(0, v32, 0);
      v33 = v126;
      v34 = v21 + 32;
      do
      {
        sub_21B2615FC(v34, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
        v131 = v127;
        v132 = v128;
        if (*(&v128 + 1))
        {
          v35 = swift_dynamicCast();
          if (v35)
          {
            BYTE8(v130) = 0;
            v36 = v130;
          }

          else
          {
            v36 = 0;
            *&v130 = 0;
            BYTE8(v130) = 1;
          }

          v37 = v35 ^ 1;
        }

        else
        {
          sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
          v36 = 0;
          *&v130 = 0;
          v37 = 1;
          BYTE8(v130) = 1;
        }

        v126 = v33;
        v39 = *(v33 + 16);
        v38 = *(v33 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_21B254168((v38 > 1), v39 + 1, 1);
          v33 = v126;
        }

        *(v33 + 16) = v39 + 1;
        v40 = v33 + 16 * v39;
        *(v40 + 32) = v36;
        *(v40 + 40) = v37;
        v34 += 32;
        --v32;
      }

      while (v32);

      v41 = v125;
    }

    else
    {

      v41 = v125;
    }

    sub_21B234EF8(v33);
    v43 = v42;

    v44 = &qword_27CD7E170;
    v45 = &unk_21B3526E0;
    goto LABEL_88;
  }

  v23 = v21 + 32;

  v24 = 0;
  v25 = v21 + 32;
  while (v24 < *(v21 + 16))
  {
    sub_21B2615FC(v25, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
    sub_21B2615FC(&v127, &v131, &qword_27CD7E0F8, &unk_21B3557C0);
    if (*(&v132 + 1))
    {
      if (swift_dynamicCast())
      {
        result = sub_21B261664(&v127, &qword_27CD7E0F8, &unk_21B3557C0);
        goto LABEL_7;
      }
    }

    else
    {
      sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
    }

    v131 = v127;
    v132 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E108, &qword_21B351980);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      v26 = *(v21 + 16);
      if (!v26)
      {
LABEL_51:
        v50 = *(v21 + 16);
        v51 = MEMORY[0x277D84F90];
        if (v50)
        {
          v126 = MEMORY[0x277D84F90];

          sub_21B254148(0, v50, 0);
          v51 = v126;
          do
          {
            sub_21B2615FC(v23, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
            v131 = v127;
            v132 = v128;
            if (*(&v128 + 1))
            {
              v52 = swift_dynamicCast();
              if (v52)
              {
                BYTE8(v130) = 0;
                v53 = v130;
              }

              else
              {
                v53 = 0;
                *&v130 = 0;
                BYTE8(v130) = 1;
              }

              v54 = v52 ^ 1;
            }

            else
            {
              sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
              v53 = 0;
              *&v130 = 0;
              v54 = 1;
              BYTE8(v130) = 1;
            }

            v126 = v51;
            v56 = *(v51 + 16);
            v55 = *(v51 + 24);
            if (v56 >= v55 >> 1)
            {
              sub_21B254148((v55 > 1), v56 + 1, 1);
              v51 = v126;
            }

            *(v51 + 16) = v56 + 1;
            v57 = v51 + 16 * v56;
            *(v57 + 32) = v53;
            *(v57 + 40) = v54;
            v23 += 32;
            --v50;
          }

          while (v50);

          v41 = v125;
        }

        else
        {

          v41 = v125;
        }

        sub_21B25E224(v51);
        v43 = v58;

        v44 = &qword_27CD7E168;
        v45 = &unk_21B3526C0;
        goto LABEL_88;
      }

      v27 = 0;
      v28 = v21 + 32;
      while (2)
      {
        if (v27 >= *(v21 + 16))
        {
          goto LABEL_179;
        }

        sub_21B2615FC(v28, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v127, &v131, &qword_27CD7E0F8, &unk_21B3557C0);
        if (!*(&v132 + 1))
        {
          sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
          break;
        }

        if (swift_dynamicCast())
        {
          result = sub_21B261664(&v127, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_17:
          ++v27;
          v28 += 32;
          if (v26 == v27)
          {
            goto LABEL_51;
          }

          continue;
        }

        break;
      }

      v131 = v127;
      v132 = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E110, &qword_21B351988);
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_17;
      }

      v29 = *(v21 + 16);
      if (!v29)
      {
LABEL_74:
        v59 = *(v21 + 16);
        v60 = MEMORY[0x277D84F90];
        if (v59)
        {
          *&v130 = MEMORY[0x277D84F90];

          sub_21B254128(0, v59, 0);
          v60 = v130;
          do
          {
            sub_21B2615FC(v23, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
            v131 = v127;
            v132 = v128;
            if (*(&v128 + 1))
            {
              v61 = swift_dynamicCast();
              if (v61)
              {
                BYTE4(v126) = 0;
                v62 = v126;
              }

              else
              {
                v62 = 0;
                LODWORD(v126) = 0;
                BYTE4(v126) = 1;
              }

              v63 = v61 ^ 1;
            }

            else
            {
              sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
              v62 = 0;
              LODWORD(v126) = 0;
              v63 = 1;
              BYTE4(v126) = 1;
            }

            *&v130 = v60;
            v65 = *(v60 + 16);
            v64 = *(v60 + 24);
            if (v65 >= v64 >> 1)
            {
              sub_21B254128((v64 > 1), v65 + 1, 1);
              v60 = v130;
            }

            *(v60 + 16) = v65 + 1;
            v66 = v60 + 8 * v65;
            *(v66 + 32) = v62;
            *(v66 + 36) = v63;
            v23 += 32;
            --v59;
          }

          while (v59);

          v41 = v125;
        }

        else
        {

          v41 = v125;
        }

        sub_21B25FEE8(v60);
        v43 = v67;

        v44 = &qword_27CD7E160;
        v45 = &unk_21B352A10;
LABEL_88:
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
        v129 = &off_282CAA128;
        *&v127 = v123;
LABEL_89:
        *(&v127 + 1) = v41;
        *&v128 = v43;
        *(&v128 + 1) = v68;
        goto LABEL_90;
      }

      v30 = 0;
      v31 = v21 + 32;
      while (2)
      {
        if (v30 >= *(v21 + 16))
        {
          goto LABEL_181;
        }

        sub_21B2615FC(v31, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v127, &v131, &qword_27CD7E0F8, &unk_21B3557C0);
        if (!*(&v132 + 1))
        {
          sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
          break;
        }

        if (swift_dynamicCast())
        {
          result = sub_21B261664(&v127, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_42:
          ++v30;
          v31 += 32;
          if (v29 == v30)
          {
            goto LABEL_74;
          }

          continue;
        }

        break;
      }

      v131 = v127;
      v132 = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E118, &qword_21B351990);
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_42;
      }

      v46 = *(v21 + 16);
      v47 = MEMORY[0x277D84F90];
      if (!v46)
      {
LABEL_92:
        v69 = *(v21 + 16);
        if (!v69)
        {
          v70 = v20;
          v71 = v47;

          v41 = v125;
LABEL_104:
          v43 = sub_21B25DFE0(v71);

          v75 = &qword_27CD7E158;
          v76 = &unk_21B3526B0;
          goto LABEL_174;
        }

        v70 = v20;
        v126 = v47;

        sub_21B254108(0, v69, 0);
        v71 = v126;
        while (2)
        {
          sub_21B2615FC(v23, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
          v131 = v127;
          v132 = v128;
          if (*(&v128 + 1))
          {
            if (swift_dynamicCast())
            {
              v72 = v130;
              goto LABEL_99;
            }
          }

          else
          {
            sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
          }

          v72 = 0uLL;
          v130 = 0u;
LABEL_99:
          v126 = v71;
          v74 = *(v71 + 16);
          v73 = *(v71 + 24);
          if (v74 >= v73 >> 1)
          {
            v112 = v72;
            sub_21B254108((v73 > 1), v74 + 1, 1);
            v72 = v112;
            v71 = v126;
          }

          *(v71 + 16) = v74 + 1;
          *(v71 + 16 * v74 + 32) = v72;
          v23 += 32;
          if (!--v69)
          {

            v41 = v125;

            goto LABEL_104;
          }

          continue;
        }
      }

      v48 = 0;
      v49 = v21 + 32;
      while (1)
      {
        if (v48 >= *(v21 + 16))
        {
          goto LABEL_182;
        }

        sub_21B2615FC(v49, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v127, &v131, &qword_27CD7E0F8, &unk_21B3557C0);
        if (!*(&v132 + 1))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_72;
        }

        result = sub_21B261664(&v127, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_66:
        ++v48;
        v49 += 32;
        v47 = MEMORY[0x277D84F90];
        if (v46 == v48)
        {
          goto LABEL_92;
        }
      }

      sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_72:
      v131 = v127;
      v132 = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E120, &qword_21B351998);
      result = swift_dynamicCast();
      if (result)
      {

        goto LABEL_66;
      }

      v77 = *(v21 + 16);
      if (!v77)
      {
LABEL_126:
        v83 = *(v21 + 16);
        if (v83)
        {
          v70 = v20;
          *&v130 = MEMORY[0x277D84F90];

          sub_21B2540E8(0, v83, 0);
          v84 = v130;
          while (1)
          {
            sub_21B2615FC(v23, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
            v131 = v127;
            v132 = v128;
            if (!*(&v128 + 1))
            {
              break;
            }

            if (!swift_dynamicCast())
            {
              goto LABEL_132;
            }

            v85 = v126;
LABEL_133:
            *&v130 = v84;
            v87 = *(v84 + 16);
            v86 = *(v84 + 24);
            if (v87 >= v86 >> 1)
            {
              sub_21B2540E8((v86 > 1), v87 + 1, 1);
              v84 = v130;
            }

            *(v84 + 16) = v87 + 1;
            *(v84 + v87 + 32) = v85;
            v23 += 32;
            if (!--v83)
            {

              v41 = v125;

              goto LABEL_138;
            }
          }

          sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_132:
          v85 = 2;
          LOBYTE(v126) = 2;
          goto LABEL_133;
        }

        v70 = v20;

        v84 = MEMORY[0x277D84F90];
        v41 = v125;
LABEL_138:
        sub_21B260114(v84);
        v43 = v88;

        v75 = &qword_27CD7E150;
        v76 = &unk_21B3526D0;
LABEL_174:
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(v75, v76);
        v129 = &off_282CAA128;
        *&v127 = v70;
        goto LABEL_89;
      }

      v78 = 0;
      v79 = v21 + 32;
      while (1)
      {
        if (v78 >= *(v21 + 16))
        {
          goto LABEL_183;
        }

        sub_21B2615FC(v79, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v127, &v131, &qword_27CD7E0F8, &unk_21B3557C0);
        if (!*(&v132 + 1))
        {
          break;
        }

        if (!swift_dynamicCast())
        {
          goto LABEL_114;
        }

        result = sub_21B261664(&v127, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_108:
        ++v78;
        v79 += 32;
        if (v77 == v78)
        {
          goto LABEL_126;
        }
      }

      sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_114:
      v131 = v127;
      v132 = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E128, &qword_21B3519A0);
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_108;
      }

      v80 = *(v21 + 16);
      if (!v80)
      {
LABEL_139:
        v89 = *(v21 + 16);
        if (v89)
        {
          v70 = v20;
          v126 = MEMORY[0x277D84F90];

          sub_21B2540C8(0, v89, 0);
          v90 = v126;
          while (1)
          {
            sub_21B2615FC(v23, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
            v131 = v127;
            v132 = v128;
            if (!*(&v128 + 1))
            {
              break;
            }

            if (!swift_dynamicCast())
            {
              goto LABEL_145;
            }

            v91 = v130;
LABEL_146:
            v126 = v90;
            v93 = *(v90 + 16);
            v92 = *(v90 + 24);
            if (v93 >= v92 >> 1)
            {
              v112 = v91;
              sub_21B2540C8((v92 > 1), v93 + 1, 1);
              v91 = v112;
              v90 = v126;
            }

            *(v90 + 16) = v93 + 1;
            *(v90 + 16 * v93 + 32) = v91;
            v23 += 32;
            if (!--v89)
            {

              v41 = v125;

              goto LABEL_151;
            }
          }

          sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_145:
          v91 = v118;
          v130 = v118;
          goto LABEL_146;
        }

        v70 = v20;

        v90 = MEMORY[0x277D84F90];
        v41 = v125;
LABEL_151:
        v43 = sub_21B26032C(v90);

        v75 = &qword_27CD7E148;
        v76 = &unk_21B352A20;
        goto LABEL_174;
      }

      v81 = 0;
      v82 = v21 + 32;
      while (1)
      {
        if (v81 >= *(v21 + 16))
        {
          goto LABEL_184;
        }

        sub_21B2615FC(v82, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v127, &v131, &qword_27CD7E0F8, &unk_21B3557C0);
        if (!*(&v132 + 1))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_124;
        }

        sub_21B234324(v130, *(&v130 + 1));
        result = sub_21B261664(&v127, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_118:
        ++v81;
        v82 += 32;
        if (v80 == v81)
        {
          goto LABEL_139;
        }
      }

      sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
LABEL_124:
      v131 = v127;
      v132 = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E130, &qword_21B3519A8);
      result = swift_dynamicCast();
      if (result)
      {
        result = sub_21B260C58(v130, *(&v130 + 1));
        goto LABEL_118;
      }

      *&v112 = *(v21 + 16);
      if (!v112)
      {
LABEL_163:
        v101 = *(v21 + 16);
        if (v101)
        {
          v70 = v20;
          *&v130 = MEMORY[0x277D84F90];

          sub_21B2540A8(0, v101, 0);
          v102 = v130;
          do
          {
            sub_21B2615FC(v23, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
            v131 = v127;
            v132 = v128;
            if (*(&v128 + 1))
            {
              v103 = sub_21B34A834();
              v104 = v117;
              v105 = swift_dynamicCast();
              (*(*(v103 - 8) + 56))(v104, v105 ^ 1u, 1, v103);
            }

            else
            {
              sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
              v106 = sub_21B34A834();
              (*(*(v106 - 8) + 56))(v117, 1, 1, v106);
            }

            *&v130 = v102;
            v108 = *(v102 + 16);
            v107 = *(v102 + 24);
            if (v108 >= v107 >> 1)
            {
              sub_21B2540A8(v107 > 1, v108 + 1, 1);
              v102 = v130;
            }

            *(v102 + 16) = v108 + 1;
            sub_21B260BE8(v117, v102 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v108);
            v23 += 32;
            --v101;
          }

          while (v101);

          v41 = v125;
        }

        else
        {
          v70 = v20;

          v102 = MEMORY[0x277D84F90];
          v41 = v125;
        }

        v43 = sub_21B260568(v102);

        v75 = &qword_27CD7E140;
        v76 = &unk_21B3526A0;
        goto LABEL_174;
      }

      v94 = 0;
      v95 = v21 + 32;
      while (2)
      {
        if (v94 >= *(v21 + 16))
        {
          goto LABEL_185;
        }

        sub_21B2615FC(v95, &v127, &qword_27CD7E0F8, &unk_21B3557C0);
        sub_21B2615FC(&v127, &v131, &qword_27CD7E0F8, &unk_21B3557C0);
        if (*(&v132 + 1))
        {
          v97 = sub_21B34A834();
          v98 = v116;
          v99 = swift_dynamicCast();
          (*(*(v97 - 8) + 56))(v98, v99 ^ 1u, 1, v97);
        }

        else
        {
          sub_21B261664(&v131, &qword_27CD7E0F8, &unk_21B3557C0);
          v97 = sub_21B34A834();
          v98 = v116;
          (*(*(v97 - 8) + 56))(v116, 1, 1, v97);
        }

        sub_21B34A834();
        if (!(*(*(v97 - 8) + 48))(v98, 1, v97))
        {
          sub_21B261664(&v127, &qword_27CD7E0F8, &unk_21B3557C0);
          v96 = v116;
          goto LABEL_155;
        }

        v131 = v127;
        v132 = v128;
        v100 = v113;
        if (swift_dynamicCast())
        {
          sub_21B261664(v100, &qword_27CD7E100, &unk_21B352A30);
          v96 = v116;
LABEL_155:
          ++v94;
          result = sub_21B261664(v96, &qword_27CD7E100, &unk_21B352A30);
          v95 += 32;
          v20 = v123;
          if (v112 == v94)
          {
            goto LABEL_163;
          }

          continue;
        }

        break;
      }

      sub_21B261664(v116, &qword_27CD7E100, &unk_21B352A30);
      v109 = sub_21B260990(v21);

      *(&v128 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E138, &qword_21B3519B0);
      v129 = &off_282CAA128;
      *&v127 = v123;
      *(&v127 + 1) = v125;
      *&v128 = v109;
LABEL_90:
      DataFrame.append(column:)(&v127);
      result = sub_21B233960(&v127);
      a1 = v120;
      v17 = v124 + 1;
      if (v124 + 1 == v122)
      {

        v110 = v133;
        v111 = v134;
        a2 = v119;
        goto LABEL_177;
      }

      goto LABEL_3;
    }

LABEL_7:
    ++v24;
    v25 += 32;
    if (v22 == v24)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

unint64_t sub_21B248A60(unint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  if (!*(v2 + 16))
  {
LABEL_4:
    result = sub_21B2A6400(*v2, v2[1], *(v2 + 16));
    if (v9)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v4 == a2 || v8 > v4)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (!v7)
    {
LABEL_13:
      result = sub_21B2A6400(v5, v6, v7);
      if (v11)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      if (v10 != v4)
      {
        if (v7)
        {
          v14 = *(v5 + 16);
LABEL_27:
          v15 = v14;
          goto LABEL_28;
        }

LABEL_26:
        v14 = 1;
        goto LABEL_27;
      }

      if (!v7)
      {
        v13 = 0;
        if (v5 <= a2)
        {
          goto LABEL_18;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = *(v5 + 16);
      if (v12)
      {
        v13 = v12 - 1;
        v5 = *(v5 + 16 * (v12 - 1) + 32);
        if (v5 <= a2)
        {
LABEL_18:

          return sub_21B24967C(v5, a2, v13);
        }

        goto LABEL_25;
      }

      goto LABEL_32;
    }

    goto LABEL_12;
  }

  if (v7 == 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (result != a2)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  if (result == a2)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_12:
  if (*(v5 + 16))
  {
    goto LABEL_13;
  }

LABEL_21:
  v14 = 0;
  v15 = 0;
LABEL_28:

  return sub_21B28E6D0(v14, v15, v4, a2);
}

int64_t sub_21B248BBC@<X0>(int64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  result = sub_21B334FF8(0, result, v9, a2, a3, a4);
  if (v10)
  {
    if (a4 == 2)
    {
LABEL_19:
      result = 0;
      v11 = 0;
      goto LABEL_24;
    }

    if (a4 != 1)
    {
      result = 1;
      v11 = 1;
      goto LABEL_24;
    }

    result = *(a2 + 16);
LABEL_16:
    v11 = *(a2 + 16);
    if (v11 >= result)
    {
      if (result < 0)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_24:
      *a5 = result;
      *(a5 + 8) = v11;
      *(a5 + 16) = a2;
      *(a5 + 24) = a3;
      *(a5 + 32) = a4;
      return result;
    }

    goto LABEL_27;
  }

  if (!a4)
  {
    if (result <= 1)
    {
      v11 = 1;
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if (a4 != 2)
  {
    goto LABEL_16;
  }

  if (result <= 0)
  {
    v11 = 0;
    if (result < 0)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

char *sub_21B248CCC(char *result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = 0;
  v8 = 0;
  v31 = a4 + 32;
  v9 = result + 40;
  v10 = MEMORY[0x277D84F90];
  v39 = result;
  v34 = result + 40;
  while (1)
  {
    if (a6)
    {
      if (a6 == 1)
      {
        v11 = *(a4 + 16);
        if (v8 != v11)
        {
          if (v8 >= v11)
          {
            goto LABEL_65;
          }

          v12 = (v31 + 16 * v8);
          v14 = *v12;
          v13 = v12[1];
          goto LABEL_11;
        }

        sub_21B23A9F4(a4, a5, 1);
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

LABEL_56:
      sub_21B249474(v10, 0, 1u);
      return v10;
    }

    if (v8 == 1)
    {
      goto LABEL_56;
    }

    if (v8)
    {
      goto LABEL_66;
    }

    v14 = a4;
    v13 = a5;
LABEL_11:
    v15 = &v9[16 * v7];
    v16 = v7;
    v37 = v8 + 1;
    v17 = a3;
    if (!a3)
    {
      while (v16 < 1)
      {
        v18 = a2;
        if (v16)
        {
          goto LABEL_59;
        }

LABEL_18:
        if (v14 < v18)
        {
          break;
        }

        ++v16;
        v15 += 2;
        v17 = a3;
        if (a3)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_21;
    }

LABEL_12:
    if (v17 != 1)
    {
      goto LABEL_22;
    }

    if (v16 < *(result + 2))
    {
      break;
    }

LABEL_21:
    v7 = v16;
LABEL_22:
    if (v14 <= result)
    {
      v19 = result;
    }

    else
    {
      v19 = v14;
    }

    v38 = v19;
    v20 = &v9[16 * v7];
    v32 = v7;
    v33 = v10;
    for (i = a3; !a3; i = a3)
    {
      v22 = result;
      if (v7)
      {
        goto LABEL_2;
      }

LABEL_31:
      if (v22 >= v13)
      {
        goto LABEL_2;
      }

      if (a3)
      {
        if (v7 >= *(result + 2))
        {
          goto LABEL_60;
        }

        v23 = *v20;
        if (v14 <= *(v20 - 1))
        {
          v24 = *(v20 - 1);
        }

        else
        {
          v24 = v14;
        }
      }

      else
      {
        v24 = v38;
        v23 = a2;
        if (v7)
        {
          goto LABEL_63;
        }
      }

      if (v13 >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = v13;
      }

      if (v25 < v24)
      {
        __break(1u);
        goto LABEL_58;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_21B2356AC(0, *(v10 + 2) + 1, 1, v10);
      }

      v27 = *(v10 + 2);
      v26 = *(v10 + 3);
      if (v27 >= v26 >> 1)
      {
        v10 = sub_21B2356AC((v26 > 1), v27 + 1, 1, v10);
      }

      *(v10 + 2) = v27 + 1;
      v28 = &v10[16 * v27];
      *(v28 + 4) = v24;
      *(v28 + 5) = v25;
      if (a3)
      {
        result = v39;
        if (v7 >= *(v39 + 2))
        {
          goto LABEL_61;
        }

        v29 = *v20;
      }

      else
      {
        result = v39;
        v29 = a2;
        if (v7)
        {
          goto LABEL_64;
        }
      }

      if (v29 >= v13)
      {
        goto LABEL_2;
      }

      ++v7;
      v20 += 2;
    }

    if (i == 1)
    {
      if (v7 < *(result + 2))
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          v22 = *(v20 - 1);
          goto LABEL_31;
        }

        goto LABEL_62;
      }

LABEL_2:
      v8 = v37;
      v9 = v34;
    }

    else
    {
      v8 = v37;
      v10 = v33;
      v9 = v34;
      v7 = v32;
    }
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = *v15;
    goto LABEL_18;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

Swift::Int sub_21B248FC4()
{
  result = *(v0 + 6);
  v2 = *(v0 + 7);
  if (result < v2)
  {
    for (i = 0; ; ++i)
    {
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v6 = *v0;
      *v8 = v0[1];
      *&v8[9] = *(v0 + 25);
      result = DataFrame.Rows.index(after:)(result);
      if (result == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v2 < result)
  {
    v4 = 0;
    while (!__OFSUB__(v4--, 1))
    {
      v7 = *v0;
      *v9 = v0[1];
      *&v9[9] = *(v0 + 25);
      result = DataFrame.Rows.index(before:)(result);
      if (result == v2)
      {
        return v4;
      }
    }

    goto LABEL_14;
  }

  return 0;
}

void sub_21B249084(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(*(sub_21B34A834() - 8) + 72);
  v12 = v11 * a1;
  if ((v11 * a1) >> 64 != (v11 * a1) >> 63)
  {
    goto LABEL_14;
  }

  v13 = v10 & 0xFFFFFFFFFFFFFFC0;
  v14 = (v10 & 0xFFFFFFFFFFFFFFC0) + 128;
  v15 = v14 + v12;
  if (__OFADD__(v14, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = swift_slowAlloc();
  v16[1] = 0;
  v16[2] = 0;
  *v16 = a1;
  if (v2 < -1015)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v17 = v16;
  if (v13 != -64)
  {
    bzero(v16 + 8, v13 + 64);
  }

  *a2 = v17;
  a2[1] = v17 + v15;
}

void sub_21B249160(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  if ((a1 - 0x800000000000000) >> 60 != 15)
  {
    goto LABEL_13;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFC0;
  v11 = (v9 & 0xFFFFFFFFFFFFFFC0) + 128;
  v12 = v11 + 16 * a1;
  if (__OFADD__(v11, 16 * a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = swift_slowAlloc();
  v13[1] = 0;
  v13[2] = 0;
  *v13 = a1;
  if (v2 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  if (v10 != -64)
  {
    bzero(v13 + 8, v10 + 64);
  }

  *a2 = v14;
  a2[1] = v14 + v12;
}

void sub_21B249224(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  if ((a1 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_13;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFC0;
  v11 = (v9 & 0xFFFFFFFFFFFFFFC0) + 128;
  v12 = v11 + 4 * a1;
  if (__OFADD__(v11, 4 * a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = swift_slowAlloc();
  v13[1] = 0;
  v13[2] = 0;
  *v13 = a1;
  if (v2 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  if (v10 != -64)
  {
    bzero(v13 + 8, v10 + 64);
  }

  *a2 = v14;
  a2[1] = v14 + v12;
}

void sub_21B2492E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  v10 = 24 * a1;
  if ((a1 * 24) >> 64 != (24 * a1) >> 63)
  {
    goto LABEL_13;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFC0;
  v12 = (v9 & 0xFFFFFFFFFFFFFFC0) + 128;
  v13 = v12 + v10;
  if (__OFADD__(v12, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = swift_slowAlloc();
  v14[1] = 0;
  v14[2] = 0;
  *v14 = a1;
  if (v2 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v15 = v14;
  if (v11 != -64)
  {
    bzero(v14 + 8, v11 + 64);
  }

  *a2 = v15;
  a2[1] = v15 + v13;
}

void sub_21B2493B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 7;
  if (__OFADD__(a1, 7))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a1 + 14;
  if (v2 >= 0)
  {
    v5 = a1 + 7;
  }

  v6 = v5 >> 3;
  v8 = v6 - 1;
  v7 = v6 < 1;
  v9 = v6 + 62;
  if (!v7)
  {
    v9 = v8;
  }

  if ((a1 - 0x400000000000000) >> 59 != 31)
  {
    goto LABEL_13;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFC0;
  v11 = (v9 & 0xFFFFFFFFFFFFFFC0) + 128;
  v12 = v11 + 32 * a1;
  if (__OFADD__(v11, 32 * a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = swift_slowAlloc();
  v13[1] = 0;
  v13[2] = 0;
  *v13 = a1;
  if (v2 < -1015)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  if (v10 != -64)
  {
    bzero(v13 + 8, v10 + 64);
  }

  *a2 = v14;
  a2[1] = v14 + v12;
}

uint64_t sub_21B249474(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = a3;
  sub_21B248BBC(1, a1, a2, a3, &v22);
  v7 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v22;
  if (v23 <= v22)
  {
    v11 = v22;
  }

  else
  {
    v11 = v23;
  }

  if (v6 == 2)
  {
LABEL_5:
    sub_21B254074(a1, a2, a3);
    sub_21B254074(a1, a2, a3);
    sub_21B23A9F4(a1, a2, a3);

    return sub_21B23A9F4(v7, v8, v9);
  }

  else
  {
    v13 = 0;
    v14 = (a1 + 40);
    v15 = (v24 + 16 * v22 + 40);
    while (1)
    {
      if (a3)
      {
        v16 = *(a1 + 16);
        if (v13 == v16)
        {
          goto LABEL_5;
        }

        if (v13 >= v16)
        {
          goto LABEL_32;
        }

        v17 = *(v14 - 1);
        v18 = *v14;
      }

      else
      {
        if (v13 == 1)
        {
          goto LABEL_5;
        }

        if (v13)
        {
          goto LABEL_36;
        }

        v17 = a1;
        v18 = a2;
      }

      if (v23 == v10)
      {
        goto LABEL_5;
      }

      if (v11 == v10)
      {
        break;
      }

      if (v26)
      {
        if (v26 != 1)
        {
          goto LABEL_37;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        v19 = *(v24 + 16);
        if (v10 >= v19)
        {
          goto LABEL_35;
        }

        v20 = *(v15 - 1);
        v21 = *v15;
      }

      else
      {
        if (v10)
        {
          goto LABEL_34;
        }

        v19 = 1;
        v20 = v24;
        v21 = v25;
      }

      if (v10 >= v19)
      {
        goto LABEL_31;
      }

      if (v18 < v20 && v17 != v18)
      {
        ++v10;
        v14 += 2;
        v15 += 2;
        ++v13;
        if (v20 != v21)
        {
          continue;
        }
      }

      __break(1u);
      __break(1u);
      break;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B24967C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v6 = result;
  v7 = *(v3 + 16);
  if (!*(v3 + 16))
  {
    if (!a3)
    {
LABEL_9:
      *v3 = v6;
      *(v3 + 8) = a2;
      *(v3 + 16) = v7;
      return result;
    }

    __break(1u);
  }

  if (v7 == 1)
  {
    v8 = *v3;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = sub_21B23A330(v8);
      v8 = result;
      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (*(v8 + 16) > a3)
        {
          v9 = v8 + 16 * a3;
          *(v9 + 32) = v6;
          *(v9 + 40) = a2;
          v6 = v8;
          a2 = 0;
          goto LABEL_9;
        }

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  result = sub_21B34B824();
  __break(1u);
  return result;
}

unint64_t sub_21B249770(unint64_t result, uint64_t a2, uint64_t a3)
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

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_21B249C94(isUniquelyReferenced_nonNull_native, v15, 1, v5, &qword_27CD7E4E8, &qword_21B351DA0);
    *v3 = v5;
  }

  result = sub_21B25CF84(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_21B24985C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = a2 - a3;
  if (__OFSUB__(a2, a3))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
LABEL_8:
    if (a2 <= a3)
    {
      return a2;
    }

    goto LABEL_12;
  }

  v5 = a3 - result;
  if (!__OFADD__(a3, v4))
  {
    if (v5 < a2)
    {
      goto LABEL_14;
    }

    a2 = a3 - result;
    if (v5 > a3)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}