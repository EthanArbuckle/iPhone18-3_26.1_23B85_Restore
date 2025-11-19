void sub_237A7A864(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  if (!a1)
  {
    *a2 = 0;
    a2[1] = 0;
    v33 = 6;
LABEL_26:
    *(v4 + 16) = v33;
    return;
  }

  v5 = a1;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_25:
    *v4 = sub_237B6A9C8(v7);
    v4[1] = 0;
    v33 = 4;
    goto LABEL_26;
  }

  v49 = MEMORY[0x277D84F90];
  sub_237AC8AB4();
  v7 = v49;
  v10 = sub_237B024B4(v5);
  v11 = 0;
  v43 = v5 + 64;
  v38 = v8;
  v39 = v6;
  v37 = v5 + 72;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
  {
    v12 = v10 >> 6;
    if ((*(v43 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v5 + 36) != v8)
    {
      goto LABEL_29;
    }

    v42 = v8;
    v40 = v9;
    v13 = (*(v5 + 48) + 16 * v10);
    v14 = *(*(v5 + 56) + 8 * v10);
    v15 = v13[1];
    *&v45 = *v13;
    *(&v45 + 1) = v15;
    v46 = 2;
    v44[3] = MEMORY[0x277D839F8];
    v44[0] = v14;
    swift_bridgeObjectRetain_n();
    sub_237AFCC90(v44, &v47);
    if (v3)
    {
      sub_2379E8CE8(v45, *(&v45 + 1), v46);

      swift_bridgeObjectRelease_n();
      return;
    }

    v41 = v11;
    v16 = v5;
    swift_bridgeObjectRelease_n();
    v17 = v45;
    v18 = v46;
    v19 = v47;
    v20 = v48;
    v49 = v7;
    v21 = *(v7 + 16);
    if (v21 >= *(v7 + 24) >> 1)
    {
      v34 = v47;
      v35 = v45;
      sub_237AC8AB4();
      v19 = v34;
      v17 = v35;
      v7 = v49;
    }

    *(v7 + 16) = v21 + 1;
    v22 = v7 + 48 * v21;
    *(v22 + 32) = v17;
    *(v22 + 48) = v18;
    *(v22 + 56) = v19;
    *(v22 + 72) = v20;
    v23 = 1 << *(v16 + 32);
    if (v10 >= v23)
    {
      goto LABEL_30;
    }

    v24 = *(v43 + 8 * v12);
    if ((v24 & (1 << v10)) == 0)
    {
      goto LABEL_31;
    }

    v5 = v16;
    if (*(v16 + 36) != v42)
    {
      goto LABEL_32;
    }

    v25 = v24 & (-2 << (v10 & 0x3F));
    if (v25)
    {
      v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v26 = v39;
      v27 = v41;
    }

    else
    {
      v28 = v12 << 6;
      v29 = v12 + 1;
      v30 = (v37 + 8 * v12);
      v26 = v39;
      v27 = v41;
      while (v29 < (v23 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          sub_2379E8FD0(v10, v42, v40 & 1);
          v23 = __clz(__rbit64(v31)) + v28;
          goto LABEL_21;
        }
      }

      sub_2379E8FD0(v10, v42, v40 & 1);
    }

LABEL_21:
    v9 = 0;
    v11 = v27 + 1;
    v10 = v23;
    v8 = v38;
    v3 = 0;
    if (v11 == v26)
    {
      v4 = a2;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_237A7AB80(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  if (!a1)
  {
    *a2 = 0;
    a2[1] = 0;
    v33 = 6;
LABEL_26:
    *(v4 + 16) = v33;
    return;
  }

  v5 = a1;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_25:
    *v4 = sub_237B6A9C8(v7);
    v4[1] = 0;
    v33 = 4;
    goto LABEL_26;
  }

  v49 = MEMORY[0x277D84F90];
  sub_237AC8AB4();
  v7 = v49;
  v10 = sub_237B024B4(v5);
  v11 = 0;
  v43 = v5 + 64;
  v38 = v8;
  v39 = v6;
  v37 = v5 + 72;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
  {
    v12 = v10 >> 6;
    if ((*(v43 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v5 + 36) != v8)
    {
      goto LABEL_29;
    }

    v42 = v8;
    v40 = v9;
    v13 = (*(v5 + 48) + 16 * v10);
    v14 = *(*(v5 + 56) + 8 * v10);
    v15 = v13[1];
    *&v45 = *v13;
    *(&v45 + 1) = v15;
    v46 = 2;
    v44[3] = MEMORY[0x277D83B88];
    v44[0] = v14;
    swift_bridgeObjectRetain_n();
    sub_237AFCC90(v44, &v47);
    if (v3)
    {
      sub_2379E8CE8(v45, *(&v45 + 1), v46);

      swift_bridgeObjectRelease_n();
      return;
    }

    v41 = v11;
    v16 = v5;
    swift_bridgeObjectRelease_n();
    v17 = v45;
    v18 = v46;
    v19 = v47;
    v20 = v48;
    v49 = v7;
    v21 = *(v7 + 16);
    if (v21 >= *(v7 + 24) >> 1)
    {
      v34 = v47;
      v35 = v45;
      sub_237AC8AB4();
      v19 = v34;
      v17 = v35;
      v7 = v49;
    }

    *(v7 + 16) = v21 + 1;
    v22 = v7 + 48 * v21;
    *(v22 + 32) = v17;
    *(v22 + 48) = v18;
    *(v22 + 56) = v19;
    *(v22 + 72) = v20;
    v23 = 1 << *(v16 + 32);
    if (v10 >= v23)
    {
      goto LABEL_30;
    }

    v24 = *(v43 + 8 * v12);
    if ((v24 & (1 << v10)) == 0)
    {
      goto LABEL_31;
    }

    v5 = v16;
    if (*(v16 + 36) != v42)
    {
      goto LABEL_32;
    }

    v25 = v24 & (-2 << (v10 & 0x3F));
    if (v25)
    {
      v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v26 = v39;
      v27 = v41;
    }

    else
    {
      v28 = v12 << 6;
      v29 = v12 + 1;
      v30 = (v37 + 8 * v12);
      v26 = v39;
      v27 = v41;
      while (v29 < (v23 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          sub_2379E8FD0(v10, v42, v40 & 1);
          v23 = __clz(__rbit64(v31)) + v28;
          goto LABEL_21;
        }
      }

      sub_2379E8FD0(v10, v42, v40 & 1);
    }

LABEL_21:
    v9 = 0;
    v11 = v27 + 1;
    v10 = v23;
    v8 = v38;
    v3 = 0;
    if (v11 == v26)
    {
      v4 = a2;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_237A7AE9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  if (a1)
  {
    v3 = a1;
    v4 = *(a1 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v50 = MEMORY[0x277D84F90];
      sub_237AC8AB4();
      v5 = v50;
      v8 = sub_237B024B4(v3);
      v9 = 0;
      v39 = v3 + 64;
      v34 = v6;
      v35 = v4;
      v33 = v3 + 72;
      while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
      {
        v10 = v8 >> 6;
        if ((*(v39 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v3 + 36) != v6)
        {
          goto LABEL_28;
        }

        v37 = v9;
        v38 = v6;
        v36 = v7;
        v11 = (*(v3 + 48) + 16 * v8);
        v12 = *v11;
        v13 = v11[1];
        sub_237A7B7A0(*(v3 + 56) + 32 * v8, v45, &qword_27DE9A998, &unk_237C0C100);
        v42[0] = v12;
        v42[1] = v13;
        v43 = v45[0];
        v44 = v45[1];
        sub_237A7B7A0(v42, v41, &qword_27DE9ADA0, &qword_237C0BF18);

        sub_237A7B21C(&v46, &v48, v41);
        if (v40)
        {
          sub_237A7B808(v41, &qword_27DE9BDC8, &qword_237C0EC68);
          sub_237A7B808(v42, &qword_27DE9ADA0, &qword_237C0BF18);

          return;
        }

        v14 = v3;
        v40 = 0;
        sub_237A7B808(v41, &qword_27DE9BDC8, &qword_237C0EC68);
        sub_237A7B808(v42, &qword_27DE9ADA0, &qword_237C0BF18);
        v15 = v46;
        v16 = v47;
        v17 = v48;
        v18 = v49;
        v50 = v5;
        v19 = *(v5 + 16);
        if (v19 >= *(v5 + 24) >> 1)
        {
          v30 = v48;
          v31 = v46;
          sub_237AC8AB4();
          v17 = v30;
          v15 = v31;
          v5 = v50;
        }

        *(v5 + 16) = v19 + 1;
        v20 = v5 + 48 * v19;
        *(v20 + 32) = v15;
        *(v20 + 48) = v16;
        *(v20 + 56) = v17;
        *(v20 + 72) = v18;
        v3 = v14;
        v21 = 1 << *(v14 + 32);
        if (v8 >= v21)
        {
          goto LABEL_29;
        }

        v22 = *(v39 + 8 * v10);
        if ((v22 & (1 << v8)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v14 + 36) != v38)
        {
          goto LABEL_31;
        }

        v23 = v22 & (-2 << (v8 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v24 = v35;
        }

        else
        {
          v25 = v10 << 6;
          v26 = v10 + 1;
          v27 = (v33 + 8 * v10);
          v24 = v35;
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_2379E8FD0(v8, v38, v36 & 1);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_21;
            }
          }

          sub_2379E8FD0(v8, v38, v36 & 1);
        }

LABEL_21:
        v7 = 0;
        v9 = v37 + 1;
        v8 = v21;
        v6 = v34;
        if (v37 + 1 == v24)
        {
          v2 = a2;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {
LABEL_25:
      *v2 = sub_237B6A9C8(v5);
      *(v2 + 8) = 0;
      *(v2 + 16) = 4;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 6;
  }
}

uint64_t sub_237A7B21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237A7B7A0(a3, &v11, &qword_27DE9BDC8, &qword_237C0EC68);
  if (*(&v11 + 1))
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    sub_237A7B7A0(&v14, &v11, &qword_27DE9ADA0, &qword_237C0BF18);

    if (*(&v13 + 1))
    {
      sub_2379DAD24(&v12, v10);
      sub_237A7B7A0(&v14, &v11, &qword_27DE9ADA0, &qword_237C0BF18);
      v6 = v11;
      *a1 = v11;
      *(a1 + 16) = 2;
      v9[3] = MEMORY[0x277D84F70] + 8;
      v9[0] = swift_allocObject();
      sub_2379FED88(v10, v9[0] + 16);
      sub_237AFCC90(v9, a2);
      if (v3)
      {
        sub_2379E8CE8(v6, *(&v6 + 1), 2);
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      sub_237A7B808(&v14, &qword_27DE9ADA0, &qword_237C0BF18);
    }

    else
    {
      sub_237A7B808(&v12, &qword_27DE9A998, &unk_237C0C100);
      v11 = v14;
      v12 = v15;
      v13 = v16;
      v8 = *(&v14 + 1);
      *a1 = v14;
      *(a1 + 8) = v8;
      *(a1 + 16) = 2;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 6;
    }

    return sub_237A7B808(&v12, &qword_27DE9A998, &unk_237C0C100);
  }

  else
  {
    result = sub_237A7B808(&v11, &qword_27DE9BDC8, &qword_237C0EC68);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 6;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 6;
  }

  return result;
}

void sub_237A7B42C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v42 = *(a1 + 16);
  for (i = (a1 + 72); ; i += 48)
  {
    if (v42 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_237C0932C();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(i - 24);
    v7 = *i;
    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *(i - 5);
    v11 = *(i - 4);
    v12 = OUTLINED_FUNCTION_31_6();
    sub_2379E9288(v12, v13, v14);
    sub_2379E9288(v9, v8, v7);
    if (v6 == 255)
    {
      goto LABEL_17;
    }

    v44 = v9;
    v45 = v8;
    v46 = v7;
    v15 = *a3;
    v16 = OUTLINED_FUNCTION_31_6();
    v20 = sub_237ACB180(v16, v17, v18);
    v21 = v15[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_20;
    }

    v24 = v19;
    if (v15[3] < v23)
    {
      break;
    }

    if (a2)
    {
      if (v19)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BDE8, &qword_237C0EC80);
      sub_237C090BC();
      if (v24)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v31 = *a3;
    *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v32 = v31[6] + 24 * v20;
    *v32 = v10;
    *(v32 + 8) = v11;
    *(v32 + 16) = v6;
    v33 = v31[7] + 24 * v20;
    *v33 = v44;
    *(v33 + 8) = v45;
    *(v33 + 16) = v46;
    v34 = v31[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_21;
    }

    v31[2] = v36;
    ++v4;
    a2 = 1;
  }

  sub_237ABF994(v23, a2 & 1);
  v25 = *a3;
  v26 = OUTLINED_FUNCTION_31_6();
  v29 = sub_237ACB180(v26, v27, v28);
  if ((v24 & 1) != (v30 & 1))
  {
    goto LABEL_22;
  }

  v20 = v29;
  if ((v24 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  OUTLINED_FUNCTION_50();
  v37 = swift_allocError();
  swift_willThrow();

  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2379E8CE8(v44, v45, v46);
    v39 = OUTLINED_FUNCTION_31_6();
    sub_2379E8CE8(v39, v40, v41);

    return;
  }

LABEL_23:
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
  sub_237C0907C();
  MEMORY[0x2383DC360](39, 0xE100000000000000);
  sub_237C090DC();
  __break(1u);
}

uint64_t sub_237A7B768()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_237A7B7A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_237A7B808(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_237A7B85C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_125();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_237A7B85C(a1, a2, a3);
}

double OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;
  return result;
}

void OUTLINED_FUNCTION_10_15(uint64_t a1@<X8>)
{
  *(v1 + 944) = a1;

  sub_237AC8A94();
}

uint64_t OUTLINED_FUNCTION_14_14()
{
  v2 = *(*(v0 - 360) + 16);

  return swift_retain_n();
}

void OUTLINED_FUNCTION_18_15(uint64_t a1@<X8>)
{
  v1[74] = a1 + 32;
  v1[72] = a1 + 16;
  v1[71] = a1 + 8;
}

uint64_t OUTLINED_FUNCTION_24_10()
{

  return sub_237C0602C();
}

uint64_t OUTLINED_FUNCTION_34_5@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  result = *(v1 - 248);
  v4 = *(v1 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_5()
{
  v2 = *(*(v0 + 88) + 8);
  result = v1;
  v4 = *(v0 + 160);
  return result;
}

double OUTLINED_FUNCTION_38_4(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

void OUTLINED_FUNCTION_42_2()
{
  if (v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  *(v3 + 16) = v2;
  v6 = v3 + 16 * v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
}

uint64_t OUTLINED_FUNCTION_44_4()
{
  v2 = *(v0 - 368);

  return sub_237C05D4C();
}

uint64_t OUTLINED_FUNCTION_45_2()
{

  return sub_237C0602C();
}

void OUTLINED_FUNCTION_46_4()
{

  sub_237AC8A94();
}

uint64_t OUTLINED_FUNCTION_55_4()
{
  *(v2 + 16) = v4;
  v6 = v2 + 24 * v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = 0;
  *(v6 + 48) = v5;
  return v0 + 872;
}

uint64_t OUTLINED_FUNCTION_58_4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = v1;
  return v3 + 872;
}

uint64_t OUTLINED_FUNCTION_66_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 248);
  v5 = *(v1 - 240);

  return sub_237C05EFC();
}

uint64_t OUTLINED_FUNCTION_67_2()
{
  v2 = *(v0 - 360);

  return swift_willThrow();
}

void OUTLINED_FUNCTION_68_1()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_69_2()
{
}

uint64_t OUTLINED_FUNCTION_70_2()
{
  v2 = *(v0 - 248);
  v3 = *(v0 - 240);

  return sub_237B6ACC0();
}

uint64_t OUTLINED_FUNCTION_71_2(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
}

uint64_t OUTLINED_FUNCTION_72_3(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_73_2()
{

  return sub_237C08BFC();
}

uint64_t OUTLINED_FUNCTION_74_2@<X0>(uint64_t a1@<X8>)
{

  return sub_237A607E0(v1, a1);
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_82_2()
{
  *(v1 - 208) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_86_1()
{
  *(v0 + 944) = v1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_87_1()
{
  v2 = *(v0 - 368);

  return sub_237C05D4C();
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return sub_237C05FEC();
}

uint64_t OUTLINED_FUNCTION_90_1()
{
  v2 = *(v0 + 616);

  return sub_237C05FEC();
}

uint64_t OUTLINED_FUNCTION_91_0(unint64_t *a1)
{

  return sub_237A7B85C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_92_1()
{
  sub_2379E8CE8(v0, *(v1 - 312), 3);
}

uint64_t Array<A>.init(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23_13(a2);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = *v5;
  if (*(v5 + 8))
  {
    sub_2379DBC9C(*v5, 1);
    OUTLINED_FUNCTION_21_12();
    return sub_237C0897C();
  }

  v10 = sub_237C084DC();
  v16 = v10;
  OUTLINED_FUNCTION_21_12();
  v11 = type metadata accessor for MLDataColumn();
  result = MLDataColumn.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v13 = result;
    if (result)
    {
      v14 = 0;
      do
      {
        v15 = v14 + 1;
        MLDataColumn.subscript.getter(v14, v11, v8);
        OUTLINED_FUNCTION_21_12();
        sub_237C089DC();
        sub_237C089AC();
        v14 = v15;
      }

      while (v13 != v15);
      sub_2379DBC9C(v9, 0);
      return v16;
    }

    else
    {
      sub_2379DBC9C(v9, 0);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t MLDataColumn.count.getter()
{
  if (v0[8])
  {
    return -1;
  }

  v2 = *(*v0 + 16);

  v3 = sub_237A2F128();
  v4 = OUTLINED_FUNCTION_88();
  sub_2379DBC9C(v4, v5);
  return v3;
}

uint64_t sub_237A7C11C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t MLDataColumn.element(at:)(uint64_t a1, uint64_t a2)
{
  if (v2[1])
  {
    v4 = 0uLL;
    v5 = 6;
  }

  else
  {
    v7 = *v2;

    sub_237A607E0(a1, &v12);
    v8 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v8, v9);
    v4 = v12;
    v5 = v13;
  }

  v12 = v4;
  v13 = v5;
  v10 = *(a2 + 16);
  return (*(*(a2 + 24) + 16))(&v12);
}

void sub_237A7C1D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  MLDataColumn.map<A>(to:)();
  sub_2379DBC9C(v3, v4);
  *a2 = v5;
  *(a2 + 8) = v6;
}

void MLDataColumn.map<A>(to:)()
{
  OUTLINED_FUNCTION_24_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_2379DBCF4(*v0, *(v0 + 8));
  MLUntypedColumn.map<A>(to:)(v4, v2, v6);
  OUTLINED_FUNCTION_25_9();

  sub_2379DBC9C(v7, v8);
}

id MLDataColumn.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

void MLDataColumn.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_15();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v11 = OUTLINED_FUNCTION_10_16(v10);
  v12(v11);
  MLUntypedColumn.init<A>(_:)();
  (*(v6 + 8))(a1, a3);
  OUTLINED_FUNCTION_16_11();
}

uint64_t MLDataColumn.init(repeating:count:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v7 = *a1;
  v8 = v5;
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_12_18();
  result = sub_237A5FDF0(&v7, a2);
  *a3 = result;
  *(a3 + 8) = 0;
  return result;
}

void MLDataColumn.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_15();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_10_16(v14);
  v16(v15);
  MLUntypedColumn.init<A>(repeating:count:)(v4, a2, a3, a4, &v17);
  (*(v10 + 8))(a1, a3);
  OUTLINED_FUNCTION_16_11();
}

void MLDataColumn.init()(uint64_t a1@<X8>)
{
  sub_2379E8AF0();
  swift_allocError();
  OUTLINED_FUNCTION_22_9(v2, 29);
  *(v3 + 48) = 1;
  *a1 = v4;
  *(a1 + 8) = 1;
}

void MLDataColumn.append(contentsOf:)()
{
  OUTLINED_FUNCTION_24_11();
  v2 = v0;
  v3 = *v0;
  if (v2[1])
  {
    v4 = 1;
  }

  else
  {
    v5 = *v1;
    if (*(v1 + 8))
    {
      v4 = 1;
      sub_2379DBCF4(*v1, 1);
      v6 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v6, v7);
      v3 = v5;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_22();
      sub_2379DBCF4(v8, v9);
      v10 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v10, v11);
      v12 = sub_237A60168(v5);
      v13 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v13, v14);
      v15 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v15, v16);
      v17 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v17, v18);
      v3 = v12;
      v4 = 0;
    }
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  OUTLINED_FUNCTION_25_9();
}

void sub_237A7C6A0(uint64_t a1)
{
  v24 = *v1;
  v25 = *(v1 + 8);
  v19 = *a1;
  LOBYTE(v21) = *(a1 + 8);
  v2 = sub_2379DBCF4(*a1, v21);
  v10 = OUTLINED_FUNCTION_20_8(v2, v3, v4, v5, v6, v7, v8, v9, v19);
  MLUntypedColumn.subscript.getter(v10);
  sub_2379DBC9C(v20, v21);
  OUTLINED_FUNCTION_18_16(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23);
}

void sub_237A7C70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = *(v6 + 8);
  v14 = swift_allocObject();
  v15 = *(a4 + 16);
  v16 = *(a4 + 24);
  v14[2] = v15;
  v14[3] = a5;
  v14[4] = v16;
  v14[5] = a6;
  v14[6] = a2;
  v14[7] = a3;
  if (v13)
  {
    v20 = v12;

    sub_2379DBCF4(v12, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {

      sub_2379DBC9C(v12, 1);
    }

    else
    {
      swift_allocError();
      *v18 = v12;
    }

    v17 = 1;
  }

  else
  {
    v19 = v12;

    sub_2379DBCF4(v12, 0);
    sub_237A7CB58(&v19, sub_237A7E4A8, v14, a5, a6, &v20);

    sub_2379DBC9C(v12, 0);
    v17 = 0;
  }

  OUTLINED_FUNCTION_11_19(v17);
}

uint64_t sub_237A7C8A4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v29 = a3;
  v26 = a6;
  v30 = a2;
  v27 = sub_237C08D2C();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v27);
  v13 = &v25 - v12;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_237C08D2C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v25 - v21;
  if (sub_237A2E988())
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, a4);
  }

  else
  {
    sub_237B70F8C(a4, v26, v22);
  }

  v30(v22);
  if (__swift_getEnumTagSinglePayload(v13, 1, a5) == 1)
  {
    (*(v9 + 8))(v13, v27);
    type metadata accessor for CMLFeatureValue();
    v23 = sub_237A2E78C();
  }

  else
  {
    (*(v14 + 32))(v17, v13, a5);
    v23 = sub_237B70DD4(a5, v28);
    (*(v14 + 8))(v17, a5);
  }

  (*(v19 + 8))(v22, v18);
  return v23;
}

uint64_t sub_237A7CB58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v9 = *a1;
  (*(a5 + 8))(&v11, a4, a5);
  result = sub_237A60CE8(a2, a3, 0, &v11);
  *a6 = result;
  return result;
}

uint64_t MLDataColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_237A7CD54(a1, a2, a3, a4, a5, &unk_284AC2AC0, sub_237A7E418);
}

{
  return sub_237A7CD54(a1, a2, a3, a4, a5, &unk_284AC2AE8, sub_237A7E430);
}

uint64_t sub_237A7CC04(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_237C08D2C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  result = __swift_getEnumTagSinglePayload(v10, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a2(v10);
    return (*(*(a4 - 8) + 8))(v10, a4);
  }

  return result;
}

uint64_t sub_237A7CD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_19_14();
  v13 = v12;
  OUTLINED_FUNCTION_0_31();
  v14 = swift_allocObject();
  v15 = *(v9 + 24);
  v14[2] = *(v9 + 16);
  v14[3] = v8;
  v14[4] = v15;
  v14[5] = v7;
  v14[6] = v13;
  v14[7] = v10;

  sub_237A7C70C(1, a7, v14, v9, v8, v7);
}

uint64_t sub_237A7CE10@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_237C08D2C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  result = __swift_getEnumTagSinglePayload(v13, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a2(v13);
    (*(*(a3 - 8) + 8))(v13, a3);
    return __swift_storeEnumTagSinglePayload(a5, 0, 1, a4);
  }

  return result;
}

void MLDataColumn.mapMissing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_237A7C70C(0, a1, a2, a3, a4, a5);
}

void MLDataColumn.fillMissing(with:)()
{
  OUTLINED_FUNCTION_8_19();
  if (v2)
  {
    v10 = v0;
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      v4 = OUTLINED_FUNCTION_3_29();
      sub_2379DBC9C(v4, v5);
    }

    else
    {
      v7 = OUTLINED_FUNCTION_9_17();
      OUTLINED_FUNCTION_15_13(v7, v8);
    }

    v6 = 1;
  }

  else
  {
    v9 = v0;
    sub_237A7D080(&v9, *(v1 + 16), *(v1 + 24), &v10);
    v6 = 0;
  }

  OUTLINED_FUNCTION_11_19(v6);
}

uint64_t sub_237A7D080@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = sub_237B70DD4(a2, a3);
  result = sub_237B11000(*(*(v6 + 16) + 16), *(v7 + 16));
  if (v4)
  {
  }

  v9 = result;
  if (result)
  {
    type metadata accessor for CMLColumn();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    type metadata accessor for _UntypedColumn();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;

    *a4 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MLDataColumn.materialize()(uint64_t a1@<X8>)
{
  v4 = *v1;
  if (*(v1 + 8))
  {
    v5 = *v1;
    swift_willThrow();
    sub_2379DBCF4(v4, 1);
  }

  else
  {
    v6 = v4[2];
    v7 = OUTLINED_FUNCTION_88();
    sub_2379DBCF4(v7, v8);
    sub_237A2F234();
    v9 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v9, v10);
    if (!v2)
    {
      *a1 = v4;
      *(a1 + 8) = 0;
      v11 = OUTLINED_FUNCTION_88();
      sub_2379DBCF4(v11, v12);
    }
  }
}

uint64_t MLDataColumn.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_21_12();
  v8 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v16 = *(v3 + 8);
  v19 = *v3;
  v20 = v16;
  MLDataColumn.element(at:)(a1, a2);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {
    (*(*(a2 + 24) + 24))(v7);
    result = __swift_getEnumTagSinglePayload(v15, 1, v7);
    if (result != 1)
    {
      return (*(v10 + 8))(v15, v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_13(v7);
    return (*(v18 + 32))(a3, v15, v7);
  }

  return result;
}

void MLDataColumn.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  MLUntypedColumn.subscript.getter(a1, a2);
  *a3 = v5;
  *(a3 + 8) = v6;
}

void MLDataColumn.subscript.getter(uint64_t a1@<X8>)
{
  v10 = *v1;
  LOBYTE(v11) = *(v1 + 8);
  if (MLDataColumn.count.getter() < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
    v3 = sub_237A365A8();
    OUTLINED_FUNCTION_20_8(v3, v4, v3, v5, v6, v7, v8, v9, 0);
    sub_237C088CC();
    MLDataColumn.subscript.getter(v10, v11, a1);
  }
}

void MLDataColumn<>.init<A>(column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_237A7DE70(a1, a2, a3, MEMORY[0x277D83B88], &protocol witness table for Int, a6, a7, a8);
}

{
  sub_237A7DE70(a1, a2, a3, MEMORY[0x277D839F8], &protocol witness table for Double, a6, a7, a8);
}

{
  sub_237A7DE70(a1, a2, a3, MEMORY[0x277D837D0], &protocol witness table for String, a6, a7, a8);
}

{
  sub_237A7DE70(a1, a2, a3, &type metadata for MLDataValue.SequenceType, &protocol witness table for MLDataValue.SequenceType, a6, a7, a8);
}

{
  sub_237A7DE70(a1, a2, a3, &type metadata for MLDataValue.DictionaryType, &protocol witness table for MLDataValue.DictionaryType, a6, a7, a8);
}

void MLDataColumn<>.sum()()
{
  OUTLINED_FUNCTION_24_11();
  if ((v0[8] & 1) == 0)
  {
    v1 = *(*v0 + 16);
    v2 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v2, v3);
    v4 = sub_237A2F250();
    if (sub_237A2E950())
    {
      sub_237B0ECCC(*(v4 + 16));

      v5 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v5, v6);
    }

    else
    {
      v7 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v7, v8);
    }
  }

  OUTLINED_FUNCTION_25_9();
}

void sub_237A7D8C0()
{
  OUTLINED_FUNCTION_24_11();
  if ((v0[8] & 1) == 0)
  {
    v2 = v1;
    v3 = *(*v0 + 16);
    v4 = OUTLINED_FUNCTION_88();
    v6 = sub_2379DBCF4(v4, v5);
    v7 = v2(v6);
    if (sub_237A2E950())
    {
      sub_237B0ECCC(*(v7 + 16));

      v8 = OUTLINED_FUNCTION_88();
      sub_2379DBC9C(v8, v9);
    }

    else
    {
      v10 = OUTLINED_FUNCTION_88();
      sub_2379DBC9C(v10, v11);
    }
  }

  OUTLINED_FUNCTION_25_9();
}

uint64_t MLDataColumn<>.std()()
{
  return sub_237A7DB5C(sub_237A2F300);
}

{
  return sub_237A7DB5C(sub_237A2F300);
}

uint64_t MLDataColumn<>.mean()()
{
  return sub_237A7DB5C(sub_237A2F2D4);
}

{
  return sub_237A7DB5C(sub_237A2F2D4);
}

uint64_t sub_237A7DA3C(uint64_t (*a1)(id))
{
  if ((v1[8] & 1) == 0)
  {
    v3 = *(*v1 + 16);
    v4 = OUTLINED_FUNCTION_88();
    v6 = sub_2379DBCF4(v4, v5);
    v7 = a1(v6);
    if (sub_237A2E96C())
    {
      v8 = *(v7 + 16);
      sub_237B0E848();
      v10 = v9;

      v11 = OUTLINED_FUNCTION_88();
      sub_2379DBC9C(v11, v12);
      return v10;
    }

    v14 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v14, v15);
  }

  return 0;
}

uint64_t sub_237A7DB5C(uint64_t (*a1)(id))
{
  result = 0;
  if ((v1[8] & 1) == 0)
  {
    v4 = *(*v1 + 16);
    v5 = OUTLINED_FUNCTION_4_26();
    v7 = sub_2379DBCF4(v5, v6);
    v8 = a1(v7);
    if (sub_237A2E96C())
    {
      v9 = *(v8 + 16);
      sub_237B0E848();
      v11 = v10;

      v12 = OUTLINED_FUNCTION_4_26();
      sub_2379DBC9C(v12, v13);
      return v11;
    }

    else
    {
      v14 = OUTLINED_FUNCTION_4_26();
      sub_2379DBC9C(v14, v15);

      return 0;
    }
  }

  return result;
}

uint64_t sub_237A7DC48()
{
  result = 0;
  if ((v0[8] & 1) == 0)
  {
    v2 = *(*v0 + 16);
    v3 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v3, v4);
    v5 = sub_237A2F300();
    if (sub_237A2E96C())
    {
      v6 = *(v5 + 16);
      sub_237B0E848();
      v8 = v7;

      v9 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v9, v10);
      return v8;
    }

    else
    {
      v11 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v11, v12);

      return 0;
    }
  }

  return result;
}

void MLDataColumn<>.init<A>(column:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237A7DD8C(a1, a2, a3, &qword_27DE9AEC8, &qword_237C0C2A0, &qword_27DE9B538);
}

{
  sub_237A7DD8C(a1, a2, a3, &qword_27DE9ACF0, &unk_237C14060, &qword_27DE9B530);
}

{
  sub_237A7DD8C(a1, a2, a3, &qword_27DE9AE60, &qword_237C0D000, &qword_27DE9B528);
}

void sub_237A7DD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  OUTLINED_FUNCTION_19_14();
  v10 = v9;
  v23 = *v11;
  v24 = *(v11 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v14 = sub_237A35F1C(a6, v7, v6);
  v21 = OUTLINED_FUNCTION_20_8(v14, v15, v16, v17, v14, v18, v19, v20, v23);
  sub_237A7C1D0(v21, v22);
  *v10 = v25;
  *(v10 + 8) = v26;
}

void sub_237A7DE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v19) = *(a1 + 8);
  v8 = OUTLINED_FUNCTION_20_8(a1, a2, a3, a4, a5, a3, a7, a8, *a1);
  sub_237A7C1D0(v8, v9);
  OUTLINED_FUNCTION_18_16(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t MLDataColumn.customMirror.getter(uint64_t a1)
{
  v3 = sub_237C0942C();
  OUTLINED_FUNCTION_3_15();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE9BE58, &unk_237C0ECD8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  v16 = *v1;
  v17 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_237C0B670;
  *(v18 + 32) = 0x746E756F63;
  *(v18 + 40) = 0xE500000000000000;
  v26 = v16;
  v27 = v17;
  v19 = MLDataColumn.count.getter();
  v20 = MEMORY[0x277D83B88];
  *(v18 + 48) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = 1701869940;
  *(v18 + 88) = 0xE400000000000000;
  v21 = *(a1 + 16);
  *(v18 + 120) = swift_getMetatypeMetadata();
  *(v18 + 96) = v21;
  v26 = a1;
  v22 = *MEMORY[0x277D84BF8];
  v23 = sub_237C0941C();
  OUTLINED_FUNCTION_23_13(v23);
  (*(v24 + 104))(v15, v22, v23);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v23);
  (*(v5 + 104))(v11, *MEMORY[0x277D84C30], v3);
  swift_getMetatypeMetadata();
  return sub_237C0943C();
}

uint64_t MLDataColumn.description.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_23_13(*(a1 + 16));
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v5 = *v1;
  if (*(v1 + 8))
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    swift_getErrorValue();
    sub_2379DBCF4(v5, 1);
    sub_237C0927C();
    v6 = v5;
    v7 = 1;
LABEL_18:
    sub_2379DBC9C(v6, v7);
    return v19;
  }

  v19 = 91;
  v20 = 0xE100000000000000;
  v17 = v5;
  LOBYTE(v18) = 0;
  v8 = OUTLINED_FUNCTION_88();
  sub_2379DBCF4(v8, v9);
  result = MLDataColumn.count.getter();
  if (result >= 10)
  {
    v11 = 10;
  }

  else
  {
    v11 = result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v16 = result;
      v12 = 0;
      do
      {
        if (v12)
        {
          MEMORY[0x2383DC360](8236, 0xE200000000000000);
        }

        sub_237A60248(&v17);
        if (v17 == 2)
        {
          OUTLINED_FUNCTION_13_15();
          v13 = sub_237C0874C();
          v17 = 34;
          v18 = 0xE100000000000000;
          MEMORY[0x2383DC360](v13);

          MEMORY[0x2383DC360](34, 0xE100000000000000);

          v14 = v17;
          v15 = v18;
        }

        else
        {
          OUTLINED_FUNCTION_13_15();
          v14 = sub_237C0874C();
        }

        MEMORY[0x2383DC360](v14, v15);
        ++v12;
      }

      while (v11 != v12);
      if (v16 >= 11)
      {
        MEMORY[0x2383DC360](0x2E2E2E202CLL, 0xE500000000000000);
      }
    }

    MEMORY[0x2383DC360](93, 0xE100000000000000);
    v6 = OUTLINED_FUNCTION_88();
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t MLDataColumn.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_31();
  v3 = MLDataColumn.description.getter(v2);
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_237A02218(v3, v5, 0);
  result = sub_237A022C0();
  a1[3] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_237A7E3E0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_237A7E460()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_10_16@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_15()
{
  *(v4 - 144) = v0;
  *(v4 - 136) = 0;

  return MLDataColumn.subscript.getter(v3, v1, v2);
}

void OUTLINED_FUNCTION_16_11()
{
  v2 = *(v1 - 72);
  *v0 = *(v1 - 80);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1)
{
  *(a1 + 16) = v1;

  return type metadata accessor for _UntypedColumn();
}

double OUTLINED_FUNCTION_22_9@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_10()
{

  return sub_237C0925C();
}

id OUTLINED_FUNCTION_27_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return v10;
}

uint64_t sub_237A7E684(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237A7E6C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v38 - v8;
  v9 = sub_237C0683C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v41 = &v38 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v43 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  OUTLINED_FUNCTION_5_22();
  MEMORY[0x2383DC360](0x74657366666F2ELL, 0xE700000000000000);
  v19 = OUTLINED_FUNCTION_3_30();

  if (!v19)
  {
    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v44 = a1;
    v45 = a2;
    v29 = "CreateML/MLDataColumn.swift";
    v30 = 0xD000000000000025;
LABEL_20:
    MEMORY[0x2383DC360](v30, v29 | 0x8000000000000000);
    v35 = v44;
    v36 = v45;
    sub_2379E8AF0();
    swift_allocError();
    *v37 = v35;
    *(v37 + 8) = v36;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 2;
    return swift_willThrow();
  }

  v40 = a3;
  OUTLINED_FUNCTION_5_22();
  MEMORY[0x2383DC360](0x656C6163732ELL, 0xE600000000000000);
  v20 = OUTLINED_FUNCTION_3_30();

  if (!v20)
  {

    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v44 = a1;
    v45 = a2;
    v29 = "d in state dictionary";
    v30 = 0xD000000000000024;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_5_22();
  MEMORY[0x2383DC360](0x676E696E6E75722ELL, 0xEC0000006E61654DLL);
  v21 = OUTLINED_FUNCTION_3_30();

  v39 = v21;
  if (!v21)
  {

    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v44 = a1;
    v45 = a2;
    OUTLINED_FUNCTION_2_31();
    v30 = v31 + 26;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_32();
  sub_237C08EDC();
  OUTLINED_FUNCTION_4_27();

  v44 = a1;
  v45 = a2;
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C19B10);
  v22 = OUTLINED_FUNCTION_3_30();

  v38 = v22;
  if (!v22)
  {

    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v44 = a1;
    v45 = a2;
    OUTLINED_FUNCTION_2_31();
    v30 = v32 + 30;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_5_22();
  MEMORY[0x2383DC360](0x75746E656D6F6D2ELL, 0xE90000000000006DLL);
  v23 = OUTLINED_FUNCTION_3_30();

  if (!v23)
  {
LABEL_17:

    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v44 = a1;
    v45 = a2;
    OUTLINED_FUNCTION_2_31();
    v30 = v33 + 23;
    goto LABEL_20;
  }

  if (*(v23 + 16) != 1)
  {

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_5_22();
  MEMORY[0x2383DC360](0x6E6F6C697370652ELL, 0xE800000000000000);
  v24 = OUTLINED_FUNCTION_3_30();

  if (!v24)
  {
LABEL_19:

    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v44 = a1;
    v45 = a2;
    OUTLINED_FUNCTION_2_31();
    v30 = v34 + 22;
    goto LABEL_20;
  }

  if (*(v24 + 16) != 1)
  {

    goto LABEL_19;
  }

  if (*(v23 + 16))
  {
    v26 = *(v23 + 32);

    sub_237C0610C();
    v27 = v46;
    OUTLINED_FUNCTION_1_29();
    sub_237B666C0(v27, v19, v18);

    sub_237A7ECA4(v27);
    OUTLINED_FUNCTION_1_29();
    sub_237B666C0(v27, v20, v43);

    result = sub_237A7ECA4(v27);
    if (*(v24 + 16))
    {
      v28 = *(v24 + 32);

      OUTLINED_FUNCTION_1_29();
      sub_237B666C0(v27, v39, v41);

      sub_237A7ECA4(v27);
      OUTLINED_FUNCTION_1_29();
      sub_237B666C0(v27, v38, v42);

      sub_237A7ECA4(v27);
      return sub_237C0695C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237A7ECA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_29()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_3_30()
{
  v3 = *(v1 - 112);
  v4 = *(v1 - 104);

  return sub_237ACDA88(v3, v4, v0);
}

uint64_t OUTLINED_FUNCTION_4_27()
{
  v2 = *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_5_22()
{
  *(v2 - 112) = v1;
  *(v2 - 104) = v0;
}

void sub_237A7ED98(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_18_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v95 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v110 = &v95 - v16;
  v17 = sub_237C0683C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v108 = v19;
  v109 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v107 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v116 = &v95 - v25;
  v26 = sub_237C0610C();
  v27 = OUTLINED_FUNCTION_0(v26);
  v112 = v28;
  v113 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_0();
  v106 = v31 - v32;
  MEMORY[0x28223BE20](v33);
  v111 = &v95 - v34;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v35 = OUTLINED_FUNCTION_1_30();

  if (!v35)
  {
    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v114 = a1;
    v115 = a2;
    OUTLINED_FUNCTION_3_31();
    v51 = v50 - 1;
LABEL_22:
    v53 = v49 | 0x8000000000000000;
LABEL_28:
    MEMORY[0x2383DC360](v51, v53);
    v55 = v114;
    v56 = v115;
    sub_2379E8AF0();
    swift_allocError();
    *v57 = v55;
    *(v57 + 8) = v56;
    *(v57 + 16) = 0u;
    *(v57 + 32) = 0u;
    *(v57 + 48) = 2;
    swift_willThrow();
    return;
  }

  v105 = v10;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x2E7468676965772ELL, 0xED00006570616873);
  v36 = OUTLINED_FUNCTION_1_30();

  if (!v36)
  {

    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v114 = a1;
    v115 = a2;
    OUTLINED_FUNCTION_3_31();
    v51 = v52 + 5;
    goto LABEL_22;
  }

  v104 = a3;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x736564697274732ELL, 0xE800000000000000);
  v37 = OUTLINED_FUNCTION_1_30();

  if (!v37)
  {
LABEL_24:

    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v114 = a1;
    v115 = a2;
    v54 = ".strides not found in state dictionary";
LABEL_27:
    v53 = (v54 - 32) | 0x8000000000000000;
    v51 = 0xD000000000000026;
    goto LABEL_28;
  }

  if (*(v37 + 16) != 2)
  {

    goto LABEL_24;
  }

  v103 = v37;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x676E69646461702ELL, 0xE800000000000000);
  v38 = OUTLINED_FUNCTION_1_30();

  if (!v38)
  {
LABEL_26:

    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v114 = a1;
    v115 = a2;
    v54 = ".padding not found in state dictionary";
    goto LABEL_27;
  }

  if (*(v38 + 16) != 2)
  {

    goto LABEL_26;
  }

  v102 = v13;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x6F6974616C69642ELL, 0xEA0000000000736ELL);
  v39 = OUTLINED_FUNCTION_1_30();

  if (!v39)
  {
LABEL_30:

    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v114 = a1;
    v115 = a2;
    OUTLINED_FUNCTION_3_31();
    v51 = v58 + 2;
    goto LABEL_22;
  }

  if (*(v39 + 16) != 2)
  {

    goto LABEL_30;
  }

  v101 = v39;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x6F4370756F72672ELL, 0xEB00000000746E75);
  v40 = OUTLINED_FUNCTION_1_30();

  if (!v40)
  {
LABEL_32:

    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v114 = a1;
    v115 = a2;
    OUTLINED_FUNCTION_3_31();
    v51 = v59 + 3;
    goto LABEL_22;
  }

  if (*(v40 + 16) != 1)
  {

    goto LABEL_32;
  }

  v99 = v40;
  v41 = *(v36 + 16);
  v100 = v38;
  if (v41)
  {
    v114 = MEMORY[0x277D84F90];
    v42 = v41;
    sub_237AC8A34();
    v43 = v42;
    v44 = 32;
    v45 = v114;
    while (1)
    {
      v46 = *(v36 + v44);
      if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v46 <= -9.22337204e18)
      {
        goto LABEL_84;
      }

      if (v46 >= 9.22337204e18)
      {
        goto LABEL_85;
      }

      v114 = v45;
      v47 = *(v45 + 16);
      v48 = v47 + 1;
      if (v47 >= *(v45 + 24) >> 1)
      {
        v97 = v43;
        v98 = v47 + 1;
        sub_237AC8A34();
        v48 = v98;
        v43 = v97;
        v45 = v114;
      }

      *(v45 + 16) = v48;
      *(v45 + 8 * v47 + 32) = v46;
      v44 += 8;
      if (!--v43)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

LABEL_33:

  v60 = v102;
  v61 = v111;
  sub_237C0611C();
  v62 = *(v112 + 16);
  v63 = v110;
  v64 = v61;
  v65 = v113;
  v97 = v112 + 16;
  v96 = v62;
  v62(v110, v64, v113);
  __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
  sub_237B666C0(v63, v35, v116);

  sub_2379F6DD8(v63, &qword_27DE9BEE0, &unk_237C12120);
  v66 = v109;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v109);
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
  v67 = OUTLINED_FUNCTION_1_30();

  v68 = v105;
  v98 = v67;
  if (v67)
  {
    OUTLINED_FUNCTION_6_23();
    MEMORY[0x2383DC360](0x68732E736169622ELL, 0xEB00000000657061);
    v69 = OUTLINED_FUNCTION_1_30();

    if (v69)
    {
      v70 = *(v69 + 16);
      if (v70)
      {
        v114 = MEMORY[0x277D84F90];
        sub_237AC8A34();
        v71 = 32;
        v72 = v114;
        while (1)
        {
          v73 = *(v69 + v71);
          if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            break;
          }

          if (v73 <= -9.22337204e18)
          {
            goto LABEL_87;
          }

          if (v73 >= 9.22337204e18)
          {
            goto LABEL_88;
          }

          v114 = v72;
          v74 = *(v72 + 16);
          if (v74 >= *(v72 + 24) >> 1)
          {
            sub_237AC8A34();
            v72 = v114;
          }

          *(v72 + 16) = v74 + 1;
          *(v72 + 8 * v74 + 32) = v73;
          v71 += 8;
          --v70;
          v68 = v105;
          if (!v70)
          {

            v60 = v102;
            v66 = v109;
            goto LABEL_46;
          }
        }

LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

LABEL_46:
      v75 = v106;
      sub_237C0611C();
      v76 = v110;
      v77 = v113;
      v96(v110, v75, v113);
      __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
      sub_237B666C0(v76, v98, v68);

      sub_2379F6DD8(v76, &qword_27DE9BEE0, &unk_237C12120);
      (*(v112 + 8))(v75, v77);
      sub_2379F6DD8(v60, &qword_27DE9B410, &qword_237C0CCC8);
      __swift_storeEnumTagSinglePayload(v68, 0, 1, v66);
      sub_237A7FAB0(v68, v60);
    }

    else
    {
    }
  }

  v78 = v108;
  (*(v108 + 16))(v107, v116, v66);
  sub_237A7FA40(v60, v68);
  if (!*(v103 + 16))
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v79 = *(v103 + 32);
  OUTLINED_FUNCTION_5_23();
  if (!(v83 ^ v84 | v82))
  {
    goto LABEL_90;
  }

  if (v79 <= -9.22337204e18)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (v79 >= 9.22337204e18)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v81 == 1)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v85 = *(v80 + 40);

  OUTLINED_FUNCTION_2_32();
  if (!(v83 ^ v84 | v82))
  {
    goto LABEL_94;
  }

  if (v85 <= -9.22337204e18)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v85 >= OUTLINED_FUNCTION_9_18())
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (!*(v100 + 16))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v86 = *(v100 + 32);
  OUTLINED_FUNCTION_5_23();
  if (!(v83 ^ v84 | v82))
  {
    goto LABEL_98;
  }

  if (v86 <= -9.22337204e18)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v86 >= 9.22337204e18)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v87 == 1)
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v88 = *(v100 + 40);

  OUTLINED_FUNCTION_2_32();
  if (!(v83 ^ v84 | v82))
  {
    goto LABEL_102;
  }

  if (v88 <= -9.22337204e18)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v88 >= OUTLINED_FUNCTION_9_18())
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (!*(v89 + 16))
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v90 = *(v89 + 32);
  OUTLINED_FUNCTION_5_23();
  if (!(v83 ^ v84 | v82))
  {
    goto LABEL_106;
  }

  if (v90 <= -9.22337204e18)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v90 >= 9.22337204e18)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v92 == 1)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v93 = *(v91 + 40);

  OUTLINED_FUNCTION_2_32();
  if (!(v83 ^ v84 | v82))
  {
    goto LABEL_110;
  }

  if (v93 <= -9.22337204e18)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v93 >= OUTLINED_FUNCTION_9_18())
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (!*(v99 + 16))
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v94 = *(v99 + 32);

  OUTLINED_FUNCTION_2_32();
  if (!(v83 ^ v84 | v82))
  {
    goto LABEL_114;
  }

  if (v94 <= -9.22337204e18)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v94 < OUTLINED_FUNCTION_9_18())
  {
    sub_237C0657C();
    sub_2379F6DD8(v60, &qword_27DE9B410, &qword_237C0CCC8);
    (*(v78 + 8))(v116, v66);
    (*(v112 + 8))(v111, v113);
    return;
  }

LABEL_116:
  __break(1u);
}

uint64_t sub_237A7FA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A7FAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_30()
{
  v3 = *(v1 - 168);
  v4 = *(v1 - 160);

  return sub_237ACDA88(v3, v4, v0);
}

uint64_t OUTLINED_FUNCTION_6_23()
{
  *(v2 - 168) = v1;
  *(v2 - 160) = v0;
}

uint64_t OUTLINED_FUNCTION_7_19()
{
  v2 = *(v0 - 160);
}

void sub_237A7FBB8(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_18_0();
  v83 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v85 = v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = v74 - v15;
  v16 = sub_237C0683C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v81 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v88 = v74 - v25;
  v26 = sub_237C0610C();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_0();
  v80 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  v87 = v74 - v35;
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v36 = OUTLINED_FUNCTION_3_32();
  v38 = sub_237ACDA88(v36, v37, a1);

  v86 = v38;
  if (!v38)
  {
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_237C08EDC();

    v89 = a2;
    v90 = a3;
    v47 = 0x8000000237C19BC0;
    v48 = 0xD000000000000025;
LABEL_15:
    MEMORY[0x2383DC360](v48, v47);
    v49 = v89;
    v50 = v90;
    sub_2379E8AF0();
    swift_allocError();
    *v51 = v49;
    *(v51 + 8) = v50;
    *(v51 + 16) = 0u;
    *(v51 + 32) = 0u;
    *(v51 + 48) = 2;
    swift_willThrow();
    return;
  }

  v91 = v26;
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x2383DC360](0x2E7468676965772ELL, 0xED00006570616873);
  v39 = OUTLINED_FUNCTION_3_32();
  v79 = a1;
  v41 = sub_237ACDA88(v39, v40, a1);

  if (!v41)
  {

    v89 = 0;
    v90 = 0xE000000000000000;
    sub_237C08EDC();

    v89 = a2;
    v90 = a3;
    v48 = 0xD00000000000002BLL;
    v47 = 0x8000000237C19BF0;
    goto LABEL_15;
  }

  v76 = v23;
  v77 = a2;
  v78 = v16;
  if (*(v41 + 16))
  {
    OUTLINED_FUNCTION_1_31(MEMORY[0x277D84F90]);
    v42 = v89;
    v43 = 0x7FEFFFFFFFFFFFFFLL;
    while (1)
    {
      v44 = *(v41 + 32);
      if ((*&v44 & 0x7FFFFFFFFFFFFFFFLL) > v43)
      {
        break;
      }

      if (v44 <= -9.22337204e18)
      {
        goto LABEL_32;
      }

      if (v44 >= 9.22337204e18)
      {
        goto LABEL_33;
      }

      v89 = v42;
      v45 = *(v42 + 16);
      if (v45 >= *(v42 + 24) >> 1)
      {
        sub_237AC8A34();
        v42 = v89;
      }

      *(v42 + 16) = v45 + 1;
      OUTLINED_FUNCTION_2_33(v44);
      if (v46)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_16:

  v52 = v85;
  v53 = v87;
  sub_237C0611C();
  v54 = v29;
  v55 = *(v29 + 16);
  v56 = v84;
  v57 = v91;
  v74[1] = v29 + 16;
  v75 = v55;
  v55(v84, v53, v91);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
  sub_237B666C0(v56, v86, v88);

  sub_2379F6DD8(v56, &qword_27DE9BEE0, &unk_237C12120);
  v58 = v78;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v78);
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
  v59 = OUTLINED_FUNCTION_3_32();
  v60 = v79;
  v62 = sub_237ACDA88(v59, v61, v79);

  v86 = v62;
  if (!v62)
  {
LABEL_30:
    v72 = v81;
    v73 = v88;
    (*(v81 + 16))(v76, v88, v58);
    sub_237A7FA40(v52, v83);
    sub_237C0633C();
    sub_2379F6DD8(v52, &qword_27DE9B410, &qword_237C0CCC8);
    (*(v72 + 8))(v73, v58);
    (*(v54 + 8))(v87, v57);
    return;
  }

  v74[0] = v54;
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x2383DC360](0x68732E736169622ELL, 0xEB00000000657061);
  v63 = OUTLINED_FUNCTION_3_32();
  v65 = sub_237ACDA88(v63, v64, v60);

  if (!v65)
  {

    v52 = v85;
    v54 = v74[0];
    goto LABEL_30;
  }

  if (!*(v65 + 16))
  {
LABEL_29:

    v69 = v83;
    v70 = v80;
    sub_237C0611C();
    v71 = v84;
    v75(v84, v70, v57);
    __swift_storeEnumTagSinglePayload(v71, 0, 1, v57);
    sub_237B666C0(v71, v86, v69);

    sub_2379F6DD8(v71, &qword_27DE9BEE0, &unk_237C12120);
    v54 = v74[0];
    (*(v74[0] + 8))(v70, v57);
    v52 = v85;
    sub_2379F6DD8(v85, &qword_27DE9B410, &qword_237C0CCC8);
    v58 = v78;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v78);
    sub_237A7FAB0(v69, v52);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1_31(MEMORY[0x277D84F90]);
  v66 = v89;
  while (1)
  {
    v67 = *(v65 + 32);
    if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v67 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v67 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    v89 = v66;
    v68 = *(v66 + 16);
    if (v68 >= *(v66 + 24) >> 1)
    {
      sub_237AC8A34();
      v66 = v89;
    }

    *(v66 + 16) = v68 + 1;
    OUTLINED_FUNCTION_2_33(v67);
    v57 = v91;
    if (v46)
    {
      goto LABEL_29;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void OUTLINED_FUNCTION_1_31(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;

  sub_237AC8A34();
}

uint64_t OUTLINED_FUNCTION_3_32()
{
  result = *(v0 - 120);
  v2 = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_24()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v1;
}

uint64_t sub_237A80418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_237C0610C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v6;
  v18 = sub_237A80A8C(a2, a3, a4, a5);
  v20 = v19;
  v36 = v21;
  v37 = v22;
  sub_237C0679C();
  sub_237A80B30();
  v23 = sub_237C08B3C();
  v38 = v18;
  if (!v23)
  {
    (*(v13 + 8))(v16, v12);
LABEL_9:
    v31 = *v6;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_32();
    sub_237B40F54();

    *v6 = v39[0];
    sub_237C067EC();
    v32 = *v6;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_32();
    sub_237B40F54();

    *v6 = v39[0];
    return result;
  }

  v24 = v23;
  v35 = v13;
  v40 = MEMORY[0x277D84F90];
  sub_237AC8B54();
  v25 = v40;
  result = sub_237C08B2C();
  if ((v24 & 0x8000000000000000) == 0)
  {
    v33[1] = v20;
    v33[2] = a1;
    v34 = v6;
    do
    {
      v27 = sub_237C08B9C();
      v29 = *v28;
      v27(v39, 0);
      v40 = v25;
      v30 = *(v25 + 16);
      if (v30 >= *(v25 + 24) >> 1)
      {
        sub_237AC8B54();
        v25 = v40;
      }

      *(v25 + 16) = v30 + 1;
      *(v25 + 8 * v30 + 32) = v29;
      sub_237C08B6C();
      --v24;
    }

    while (v24);
    (*(v35 + 8))(v16, v12);
    v6 = v34;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_237A806E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  v17 = sub_237A80A8C(a1, a2, a3, a4);
  v19 = v18;
  v22 = sub_237ACDA88(v20, v21, a5);

  if (v22 && (v23 = sub_237ACDA88(v17, v19, a5), , v23))
  {
    v24 = *(v22 + 16);
    if (v24)
    {
      v25 = 0;
      while (v24 != v25)
      {
        v26 = *(v22 + 8 * v25++ + 32);
        v27 = round(v26);
        if (v26 < 1.0 || v27 != v26)
        {
          goto LABEL_10;
        }
      }

      v46 = v23;
      v47 = a6;
      v48 = v6;
      v49 = MEMORY[0x277D84F90];
      sub_237AC8A34();
      v33 = 32;
      v34 = v49;
      do
      {
        v35 = *(v22 + v33);
        if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        if (v35 <= -9.22337204e18)
        {
          goto LABEL_31;
        }

        if (v35 >= 9.22337204e18)
        {
          goto LABEL_32;
        }

        v49 = v34;
        v36 = v34[2];
        if (v36 >= v34[3] >> 1)
        {
          sub_237AC8A34();
          v34 = v49;
        }

        v34[2] = v36 + 1;
        v34[v36 + 4] = v35;
        v33 += 8;
        --v24;
      }

      while (v24);

      v37 = v34[2];
      v38 = v46;
      if (v37)
      {
        v39 = v34 + 4;
        v40 = 1;
        v41 = v47;
        while (1)
        {
          v42 = *v39++;
          v43 = v40 * v42;
          if ((v40 * v42) >> 64 != (v40 * v42) >> 63)
          {
            goto LABEL_33;
          }

          v40 = v43;
          if (!--v37)
          {
            goto LABEL_27;
          }
        }
      }

      v43 = 1;
      v41 = v47;
LABEL_27:
      if (*(v46 + 16) == v43)
      {
        sub_237C0611C();
        v44 = sub_237C0610C();
        __swift_storeEnumTagSinglePayload(v16, 0, 1, v44);
        sub_237B666C0(v16, v38, v41);

        sub_237A7ECA4(v16);
        v30 = sub_237C0683C();
        v31 = v41;
        v32 = 0;
        goto LABEL_13;
      }

      sub_2379E8AF0();
      swift_allocError();
      sub_237A80C30();
    }

    else
    {
LABEL_10:

      v29 = sub_237B9958C(v22);

      sub_2379E8AF0();
      swift_allocError();
      sub_237A80B88(v29);
    }

    swift_willThrow();
  }

  else
  {

    v30 = sub_237C0683C();
    v31 = a6;
    v32 = 1;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  }
}

uint64_t sub_237A80A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    MEMORY[0x2383DC360](a1, a2);
    a1 = a3;
  }

  else
  {
  }

  MEMORY[0x2383DC360](0x65706168732ELL, 0xE600000000000000);
  return a1;
}

unint64_t sub_237A80B30()
{
  result = qword_27DE9BEE8;
  if (!qword_27DE9BEE8)
  {
    sub_237C0610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BEE8);
  }

  return result;
}

double sub_237A80B88(uint64_t a1)
{
  sub_237C08EDC();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3A8, &unk_237C0EF10);
  v3 = MEMORY[0x2383DC4F0](a1, v2);
  MEMORY[0x2383DC360](v3);

  return OUTLINED_FUNCTION_0_34(0xD00000000000001BLL);
}

double sub_237A80C30()
{
  sub_237C08EDC();

  v0 = sub_237C0924C();
  MEMORY[0x2383DC360](v0);

  MEMORY[0x2383DC360](0x6C6175746361202CLL, 0xE900000000000020);
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  return OUTLINED_FUNCTION_0_34(0xD00000000000001ELL);
}

double OUTLINED_FUNCTION_0_34@<D0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_237A80D58(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_237A80D94()
{
  v1 = v0[5];

  sub_2379E86D4(v0[6], v0[7]);
  sub_237A80F30(v0[8], v0[9]);
  sub_237A80F30(v0[10], v0[11]);
  return v0;
}

uint64_t sub_237A80DCC()
{
  sub_237A80D94();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_237A80E40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A80E80(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_237A80ED8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237A80EF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_237A80F30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2379E86D4(a1, a2);
  }

  return a1;
}

uint64_t sub_237A80F74(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  v5 = 1 << *(a1 + 32);
  v37 = MEMORY[0x277D84F98];
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 48) + v12);
    sub_2379FED88(*(a1 + 56) + 32 * v12, v35 + 8);
    LOBYTE(v35[0]) = v13;
    v32 = v35[0];
    v33 = v35[1];
    v34 = v36;
    sub_2379FED88(&v32 + 8, v29);
    if (swift_dynamicCast())
    {
      v14 = *&v30[0];
      v31 = v34;
      v30[0] = v32;
      v30[1] = v33;
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        sub_237AC1104(v15 + 1, 1);
        v2 = v37;
      }

      v16 = v30[0];
      v17 = *(v2 + 40);
      sub_237C093CC();
      sub_237C0878C();

      v18 = sub_237C0940C();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) != 0)
      {
        v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        do
        {
          if (++v22 == v25 && (v24 & 1) != 0)
          {
            goto LABEL_27;
          }

          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
        }

        while (v27 == -1);
        v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      }

      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + v23) = v16;
      *(*(v2 + 56) + 8 * v23) = v14;
      ++*(v2 + 16);
      __swift_destroy_boxed_opaque_existential_1(v30 + 1);
    }

    else
    {
      *&v30[0] = 0;
      BYTE8(v30[0]) = 1;
      sub_2379D9054(&v32, &qword_27DE9BFF0, &qword_237C0F240);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      JUMPOUT(0x237A813A4);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  return v2;
}

uint64_t sub_237A813D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v44 - v4;
  v6 = sub_237C05ADC();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = v44 - v11;
  v12 = MEMORY[0x277D84F98];
  v14 = a1 + 64;
  v13 = *(a1 + 64);
  v15 = 1 << *(a1 + 32);
  v62 = MEMORY[0x277D84F98];
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v45 = v10;
  v52 = (v10 + 32);
  v44[5] = 0x8000000237C16C60;
  v44[4] = 0x8000000237C16C40;
  v44[3] = 0x8000000237C16C10;
  v44[2] = 0x8000000237C16BF0;
  v44[1] = 0x8000000237C16BD0;

  v19 = 0;
  v46 = a1;
  v48 = v5;
  v47 = v18;
  while (v17)
  {
LABEL_10:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v19 << 6);
    v23 = *(*(a1 + 48) + v22);
    sub_2379FED88(*(a1 + 56) + 32 * v22, v60 + 8);
    LOBYTE(v60[0]) = v23;
    v56 = v60[0];
    v57 = v60[1];
    v58 = v61;
    sub_2379FED88(&v56 + 8, v53);
    v24 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v5, v24 ^ 1u, 1, v6);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_2379D9054(&v56, &qword_27DE9BFF0, &qword_237C0F240);
      sub_2379D9054(v5, &qword_27DE9AA18, &qword_237C0B710);
    }

    else
    {
      v25 = *v52;
      v26 = v49;
      (*v52)(v49, v5, v6);
      v54[0] = v56;
      v54[1] = v57;
      v55 = v58;
      v51 = v25;
      v25(v63, v26, v6);
      v27 = *(v12 + 16);
      if (*(v12 + 24) <= v27)
      {
        sub_237AC0CF4(v27 + 1, 1);
      }

      v28 = LOBYTE(v54[0]);
      v12 = v62;
      v29 = *(v62 + 40);
      sub_237C093CC();
      v50 = v28;
      v30 = v28;
      v5 = v48;
      v18 = v47;
      switch(v30)
      {
        case 5:
          v31 = &v57 + 8;
          goto LABEL_20;
        case 6:
          v31 = &v58;
          goto LABEL_20;
        case 7:
          v31 = &v59;
          goto LABEL_20;
        case 9:
          v31 = v60;
          goto LABEL_20;
        case 10:
          v31 = v60 + 8;
LABEL_20:
          v32 = *(v31 - 32);
          break;
        default:
          break;
      }

      sub_237C0878C();

      v33 = sub_237C0940C();
      v34 = v12 + 64;
      v35 = -1 << *(v12 + 32);
      v36 = v33 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v12 + 64 + 8 * (v36 >> 6))) != 0)
      {
        v38 = __clz(__rbit64((-1 << v36) & ~*(v12 + 64 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = 0;
        v40 = (63 - v35) >> 6;
        do
        {
          if (++v37 == v40 && (v39 & 1) != 0)
          {
            goto LABEL_33;
          }

          v41 = v37 == v40;
          if (v37 == v40)
          {
            v37 = 0;
          }

          v39 |= v41;
          v42 = *(v34 + 8 * v37);
        }

        while (v42 == -1);
        v38 = __clz(__rbit64(~v42)) + (v37 << 6);
      }

      *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      *(*(v12 + 48) + v38) = v50;
      v51((*(v12 + 56) + *(v45 + 72) * v38), v63, v6);
      ++*(v12 + 16);
      __swift_destroy_boxed_opaque_existential_1(v54 + 1);
      a1 = v46;
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      JUMPOUT(0x237A81A18);
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_10;
    }
  }

  return v12;
}

uint64_t sub_237A81A44@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = *(*(v3 + 48) + v10);
    sub_2379E8624(*(v3 + 56) + 40 * v10, v16);
    LOBYTE(v19) = v11;
    result = sub_237A1FCF0(v16, &v19 + 8);
    v13 = v21;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v13)
    {
      v15 = v1[5];
      v14 = v1[6];
      v16[0] = v19;
      v16[1] = v20;
      v17 = v13;
      v18 = *(&v21 + 1);
      v15(v16);
      return sub_2379D9054(v16, &qword_27DE9C008, &qword_237C0F248);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v13 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t MLCheckpoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237C05ADC();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t MLCheckpoint.url.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t MLCheckpoint.phase.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MLCheckpoint();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for MLCheckpoint()
{
  result = qword_27DE9BF90;
  if (!qword_27DE9BF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLCheckpoint.phase.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MLCheckpoint();
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*MLCheckpoint.phase.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLCheckpoint() + 20);
  return nullsub_1;
}

uint64_t MLCheckpoint.iteration.setter()
{
  OUTLINED_FUNCTION_46();
  result = type metadata accessor for MLCheckpoint();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*MLCheckpoint.iteration.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLCheckpoint() + 24);
  return nullsub_1;
}

uint64_t MLCheckpoint.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLCheckpoint() + 28);
  v4 = sub_237C05BFC();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MLCheckpoint.date.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLCheckpoint() + 28);
  v3 = sub_237C05BFC();
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*MLCheckpoint.date.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLCheckpoint() + 28);
  return nullsub_1;
}

uint64_t MLCheckpoint.metrics.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLCheckpoint() + 32));

  return sub_237A825E8(v1);
}

uint64_t sub_237A81F44(uint64_t *a1)
{
  v1 = *a1;

  return MLCheckpoint.metrics.setter(v2);
}

uint64_t MLCheckpoint.metrics.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEF0, &qword_237C0F050);
  v2 = sub_237C0910C();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(a1 + 48) + v13);
      sub_2379FED88(*(a1 + 56) + 32 * v13, v23);
      sub_237A830EC(v23, v22);
      __swift_destroy_boxed_opaque_existential_1(v23);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v3[6] + v13) = v14;
      sub_237A1FCF0(v22, v3[7] + 40 * v13);
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        break;
      }

      v3[2] = v17;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {

        v18 = *(type metadata accessor for MLCheckpoint() + 32);
        v19 = *(v21 + v18);

        *(v21 + v18) = v3;
        return result;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  result = __swift_destroy_boxed_opaque_existential_1(v23);
  __break(1u);
  return result;
}

void sub_237A8212C(uint64_t a1)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFC0, &qword_237C0F210);
  OUTLINED_FUNCTION_4(v81);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_28_6(v5, v69);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFC8, &qword_237C0F218);
  OUTLINED_FUNCTION_4(v79);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v78 = &v69 - v9;
  v10 = sub_237C06A4C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v82 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFD0, &qword_237C0F220);
  v18 = OUTLINED_FUNCTION_4(v76);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v75 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  v74 = &v69 - v24;
  v83 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFD8, &qword_237C0F228);
    v25 = OUTLINED_FUNCTION_26_11();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v27 = *(v83 + 64);
  v26 = v83 + 64;
  v28 = *(v83 + 32);
  OUTLINED_FUNCTION_17_13();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v72 = v82 + 16;
  v85 = v82 + 32;
  v34 = v25 + 64;

  v35 = 0;
  v70 = v26;
  v71 = v33;
  v77 = v17;
  v73 = v25;
  if (!v31)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v37 = __clz(__rbit64(v31)) | (v35 << 6);
    v38 = v82;
    v39 = v83;
    v40 = *(v83 + 48);
    v84 = *(v82 + 72);
    v41 = v74;
    (*(v82 + 16))(v74, v40 + v84 * v37, v10);
    v42 = *(*(v39 + 56) + 8 * v37);
    v44 = v75;
    v43 = v76;
    *(v41 + *(v76 + 48)) = v42;
    sub_237A85D84(v41, v44);
    v45 = *(v43 + 48);
    v46 = *(v81 + 48);
    v47 = *(v38 + 32);
    v48 = v10;
    v49 = v80;
    v47(v80, v44, v48);
    *&v86[0] = *(v44 + v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    swift_dynamicCast();
    v50 = v78;
    v51 = *(v79 + 48);
    v47(v78, v49, v48);
    v52 = (v49 + v46);
    v10 = v48;
    sub_2379DAD24(v52, &v50[v51]);
    v53 = v77;
    v47(v77, v50, v48);
    sub_2379DAD24(&v50[v51], v86);
    v54 = v73;
    v55 = *(v73 + 40);
    sub_237A85DF4(&qword_27DE9B8C8, MEMORY[0x277CC4F88]);
    sub_237C0861C();
    v56 = *(v54 + 32);
    OUTLINED_FUNCTION_30_9();
    if (((v59 << v58) & ~*(v34 + 8 * v57)) == 0)
    {
      OUTLINED_FUNCTION_7_20();
      v33 = v71;
      while (++v63 != v65 || (v64 & 1) == 0)
      {
        v66 = v63 == v65;
        if (v63 == v65)
        {
          v63 = 0;
        }

        v64 |= v66;
        if (*(v34 + 8 * v63) != -1)
        {
          OUTLINED_FUNCTION_24_12();
          v62 = v68 + (v67 << 6);
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_21_13();
    v62 = v60 | v61;
    v33 = v71;
LABEL_18:
    v31 &= v31 - 1;
    *(v34 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
    v47(*(v54 + 48) + v62 * v84, v53, v10);
    sub_2379DAD24(v86, (*(v54 + 56) + 32 * v62));
    ++*(v54 + 16);
    v26 = v70;
  }

  while (v31);
LABEL_5:
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v33)
    {

      return;
    }

    v31 = *(v26 + 8 * v36);
    ++v35;
    if (v31)
    {
      v35 = v36;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_237A825E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFE0, &qword_237C0F230);
    v2 = OUTLINED_FUNCTION_26_11();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_17_13();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_80();
  v10 = v2 + 64;

  v11 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      JUMPOUT(0x237A82948);
    }

    if (v12 >= v9)
    {
      break;
    }

    v7 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = v13 | (v11 << 6);
        v15 = *(*(a1 + 48) + v14);
        sub_2379E8624(*(a1 + 56) + 40 * v14, v34 + 8);
        LOBYTE(v34[0]) = v15;
        v33[0] = v34[0];
        v33[1] = v34[1];
        v33[2] = v34[2];
        LOBYTE(v32[0]) = v15;
        sub_237A1FCF0((v33 + 8), v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF50, &unk_237C137E0);
        swift_dynamicCast();
        v29 = v32[0];
        sub_2379DAD24((v32 + 8), v30);
        sub_2379DAD24(v30, v32);
        v16 = *(v2 + 40);
        sub_237C093CC();
        switch(v29)
        {
          case 1:
            OUTLINED_FUNCTION_13_16();
            break;
          case 2:
            OUTLINED_FUNCTION_16_12();
            break;
          case 3:
            OUTLINED_FUNCTION_25_10();
            break;
          case 4:
            OUTLINED_FUNCTION_11_20();
            break;
          case 5:
          case 7:
          case 9:
          case 10:
            OUTLINED_FUNCTION_10_17();
            break;
          case 8:
            OUTLINED_FUNCTION_14_15();
            break;
          default:
            break;
        }

        sub_237C0878C();

        sub_237C0940C();
        v17 = *(v2 + 32);
        OUTLINED_FUNCTION_30_9();
        if (((v20 << v19) & ~*(v10 + 8 * v18)) != 0)
        {
          OUTLINED_FUNCTION_21_13();
        }

        else
        {
          OUTLINED_FUNCTION_7_20();
          do
          {
            if (++v21 == v23 && (v22 & 1) != 0)
            {
              goto LABEL_29;
            }

            v24 = v21 == v23;
            if (v21 == v23)
            {
              v21 = 0;
            }

            v22 |= v24;
          }

          while (*(v10 + 8 * v21) == -1);
          OUTLINED_FUNCTION_24_12();
        }

        OUTLINED_FUNCTION_31_7();
        *(v10 + v25) |= v26;
        *(*(v2 + 48) + v27) = v29;
        sub_2379DAD24(v32, (*(v2 + 56) + 32 * v27));
        ++*(v2 + 16);
      }

      while (v7);
    }
  }

  return v2;
}

uint64_t sub_237A82974(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEF0, &qword_237C0F050);
    v2 = sub_237C0912C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (v5)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      JUMPOUT(0x237A82D5CLL);
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_12:
        v10 = __clz(__rbit64(v5)) | (v8 << 6);
        v11 = *(*(a1 + 56) + 8 * v10);
        v5 &= v5 - 1;
        LOBYTE(v25[0]) = *(*(a1 + 48) + v10);
        v26 = MEMORY[0x277D839F8];
        v27 = &protocol witness table for Double;
        *(&v25[0] + 1) = v11;
        v23 = v25[0];
        sub_237A1FCF0((v25 + 8), v24);
        sub_237A1FCF0(v24, v25);
        v12 = *(v2 + 40);
        sub_237C093CC();
        sub_237C0878C();

        v13 = sub_237C0940C();
        v14 = -1 << *(v2 + 32);
        v15 = v13 & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v19 && (v18 & 1) != 0)
            {
              goto LABEL_25;
            }

            v20 = v16 == v19;
            if (v16 == v19)
            {
              v16 = 0;
            }

            v18 |= v20;
            v21 = *(v7 + 8 * v16);
          }

          while (v21 == -1);
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
        }

        *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v2 + 48) + v17) = v23;
        sub_237A1FCF0(v25, *(v2 + 56) + 40 * v17);
        ++*(v2 + 16);
      }

      while (v5);
    }
  }

  return v2;
}

uint64_t sub_237A82D88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFE0, &qword_237C0F230);
    v2 = OUTLINED_FUNCTION_26_11();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_80();
  v7 = v2 + 64;

  v8 = 0;
  if (v5)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      JUMPOUT(0x237A830C0);
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_12:
        v10 = __clz(__rbit64(v5)) | (v8 << 6);
        v11 = *(*(a1 + 56) + 8 * v10);
        v5 &= v5 - 1;
        LOBYTE(v25[0]) = *(*(a1 + 48) + v10);
        v24 = v11;
        swift_dynamicCast();
        v22 = v25[0];
        sub_2379DAD24((v25 + 8), v23);
        sub_2379DAD24(v23, v25);
        v12 = *(v2 + 40);
        sub_237C093CC();
        switch(v22)
        {
          case 1:
            OUTLINED_FUNCTION_13_16();
            break;
          case 2:
            OUTLINED_FUNCTION_16_12();
            break;
          case 3:
            OUTLINED_FUNCTION_25_10();
            break;
          case 4:
            OUTLINED_FUNCTION_11_20();
            break;
          case 5:
          case 7:
          case 9:
          case 10:
            OUTLINED_FUNCTION_10_17();
            break;
          case 8:
            OUTLINED_FUNCTION_14_15();
            break;
          default:
            break;
        }

        sub_237C0878C();

        v13 = sub_237C0940C() & ~(-1 << *(v2 + 32));
        if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) != 0)
        {
          OUTLINED_FUNCTION_21_13();
        }

        else
        {
          OUTLINED_FUNCTION_7_20();
          do
          {
            if (++v14 == v16 && (v15 & 1) != 0)
            {
              goto LABEL_32;
            }

            v17 = v14 == v16;
            if (v14 == v16)
            {
              v14 = 0;
            }

            v15 |= v17;
          }

          while (*(v7 + 8 * v14) == -1);
          OUTLINED_FUNCTION_24_12();
        }

        OUTLINED_FUNCTION_31_7();
        *(v7 + v18) |= v19;
        *(*(v2 + 48) + v20) = v22;
        sub_2379DAD24(v25, (*(v2 + 56) + 32 * v20));
        ++*(v2 + 16);
      }

      while (v5);
    }
  }

  return v2;
}

uint64_t sub_237A830EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - v6;
  v8 = sub_237C05ADC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379FED88(a1, v22);
  v13 = MEMORY[0x277D839F8];
  result = swift_dynamicCast();
  if (result)
  {
    v15 = v23;
    a2[3] = v13;
    a2[4] = &protocol witness table for Double;
    *a2 = v15;
  }

  else
  {
    sub_2379FED88(a1, v22);
    v16 = MEMORY[0x277D83A90];
    result = swift_dynamicCast();
    if (result)
    {
      v17 = v23;
      a2[3] = v16;
      a2[4] = &protocol witness table for Float;
      *a2 = v17;
    }

    else
    {
      sub_2379FED88(a1, v22);
      v18 = MEMORY[0x277D83B88];
      result = swift_dynamicCast();
      if (result)
      {
        v19 = v23;
        a2[3] = v18;
        a2[4] = &protocol witness table for Int;
        *a2 = v19;
      }

      else
      {
        sub_2379FED88(a1, v22);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
          v20 = *(v9 + 32);
          v20(v12, v7, v8);
          a2[3] = v8;
          a2[4] = sub_237A85DF4(&qword_27DE9BFF8, MEMORY[0x277CC9260]);
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
          return (v20)(boxed_opaque_existential_0, v12, v8);
        }

        else
        {
          __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
          sub_2379D9054(v7, &qword_27DE9AA18, &qword_237C0B710);
          v22[0] = 0;
          v22[1] = 0xE000000000000000;
          sub_237C08EDC();
          MEMORY[0x2383DC360](0x2065756C6156, 0xE600000000000000);
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_237C0927C();
          MEMORY[0x2383DC360](0xD000000000000016, 0x8000000237C19E60);
          result = sub_237C090DC();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t (*MLCheckpoint.metrics.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = type metadata accessor for MLCheckpoint();
  *a1 = sub_237A825E8(*(v1 + *(v3 + 32)));
  return sub_237A834BC;
}

uint64_t sub_237A834BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return MLCheckpoint.metrics.setter(*a1);
  }

  v4 = *a1;

  MLCheckpoint.metrics.setter(v5);
}

uint64_t sub_237A83514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746172657469 && a2 == 0xE90000000000006ELL;
      if (v7 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x697274654D6C7275 && a2 == 0xEA00000000007363;
          if (v9 || (OUTLINED_FUNCTION_8_20() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = OUTLINED_FUNCTION_8_20();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_237A836C0(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6F69746172657469;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x697274654D6C7275;
      break;
    case 5:
      result = 0x7363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237A83788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237A83514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237A837BC(uint64_t a1)
{
  v2 = sub_237A84B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237A837F8(uint64_t a1)
{
  v2 = sub_237A84B00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLCheckpoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v5 = sub_237C05BFC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v71 = v7;
  v72 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v70 = v11 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEF8, &qword_237C0F058);
  OUTLINED_FUNCTION_0(v77);
  v75 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_37_4();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v76 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  v78 = &v69 - v27;
  v73 = type metadata accessor for MLCheckpoint();
  v28 = OUTLINED_FUNCTION_4(v73);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v74 = v32 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = sub_237C0945C();
  if (qword_27DE9A580 != -1)
  {
    OUTLINED_FUNCTION_66();
  }

  v35 = sub_237C0909C();
  __swift_project_value_buffer(v35, qword_27DEACD18);
  sub_237AC9B10(v34, &v79);

  if (!v80)
  {
    sub_2379D9054(&v79, &qword_27DE9A998, &unk_237C0C100);
    v66 = OUTLINED_FUNCTION_35_6();
    __swift_storeEnumTagSinglePayload(v66, v67, 1, v18);
    goto LABEL_18;
  }

  v36 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v3, v36 ^ 1u, 1, v18);
  v37 = OUTLINED_FUNCTION_35_6();
  if (__swift_getEnumTagSinglePayload(v37, v38, v18) == 1)
  {
LABEL_18:
    sub_2379D9054(v3, &qword_27DE9AA18, &qword_237C0B710);
    result = OUTLINED_FUNCTION_20_9();
    __break(1u);
    return result;
  }

  (*(v21 + 32))(v78, v3, v18);
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237A84B00();
  sub_237C0946C();
  if (v2)
  {
    v43 = *(v21 + 8);
    v44 = OUTLINED_FUNCTION_23_2();
    v45(v44);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v79) = 0;
    OUTLINED_FUNCTION_5_25();
    sub_237A85DF4(v40, v41);
    v42 = v76;
    OUTLINED_FUNCTION_18_17();
    sub_237C091BC();
    v47 = [objc_opt_self() defaultManager];
    sub_237C05A9C();
    v48 = v42;
    v49 = sub_237C086BC();

    v50 = [v47 fileExistsAtPath_];

    if (v50)
    {
      (*(v21 + 16))(v74, v48, v18);
    }

    else
    {
      sub_237C05A9C();
      sub_237C05A2C();
    }

    v81 = 1;
    sub_237A84B54();
    OUTLINED_FUNCTION_18_17();
    sub_237C091BC();
    v51 = v73;
    *(v74 + *(v73 + 20)) = v79;
    LOBYTE(v79) = 2;
    OUTLINED_FUNCTION_18_17();
    *(v74 + *(v51 + 24)) = sub_237C091AC();
    LOBYTE(v79) = 3;
    OUTLINED_FUNCTION_4_28();
    sub_237A85DF4(v52, v53);
    v54 = v72;
    OUTLINED_FUNCTION_18_17();
    sub_237C091BC();
    (*(v71 + 32))(v74 + *(v51 + 28), v70, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF20, &qword_237C0F060);
    v81 = 5;
    sub_237A85304(&qword_27DE9BF28, sub_237A84BA8);
    OUTLINED_FUNCTION_15_14();
    v55 = v79;
    if (!v79)
    {
      sub_237A84BFC();
      v55 = sub_237C085AC();
    }

    v56 = sub_237A82974(v55);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF40, &qword_237C0F068);
    v81 = 4;
    sub_237A84C50();
    v57 = OUTLINED_FUNCTION_15_14();
    v58 = v79;
    if (v79)
    {
      MEMORY[0x28223BE20](v57);
      v68 = v78;
      v59 = sub_237A85008(v58, sub_237A85000, (&v69 - 4));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF50, &unk_237C137E0);
      sub_237A84BFC();
      v59 = sub_237C085AC();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v56;
    sub_237A84D0C(v59, sub_237A84F2C, 0, isUniquelyReferenced_nonNull_native, &v79);
    v61 = *(v21 + 8);
    v61(v76, v18);
    v62 = OUTLINED_FUNCTION_2_34();
    v63(v62, v77);
    v64 = v74;
    *(v74 + *(v73 + 32)) = v79;
    v65 = OUTLINED_FUNCTION_23_2();
    (v61)(v65);
    sub_237A84F40(v64, v69);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_237A84FA4(v64);
  }
}

uint64_t sub_237A8416C()
{
  sub_237C05A9C();
  sub_237C05A2C();
}

uint64_t MLCheckpoint.encode(to:)(void *a1)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF58, &qword_237C0F070);
  OUTLINED_FUNCTION_0(v64);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_28_6(v8, v60);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_37_4();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v17);
  v71 = &v60 - v18;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_23_2();
  v20 = sub_237C0948C();
  if (qword_27DE9A580 != -1)
  {
    OUTLINED_FUNCTION_66();
  }

  v21 = sub_237C0909C();
  __swift_project_value_buffer(v21, qword_27DEACD18);
  sub_237AC9B10(v20, &v69);

  if (!v70)
  {
    sub_2379D9054(&v69, &qword_27DE9A998, &unk_237C0C100);
    v55 = OUTLINED_FUNCTION_35_6();
    __swift_storeEnumTagSinglePayload(v55, v56, 1, v11);
    goto LABEL_9;
  }

  v22 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v1, v22 ^ 1u, 1, v11);
  v23 = OUTLINED_FUNCTION_35_6();
  if (__swift_getEnumTagSinglePayload(v23, v24, v11) == 1)
  {
LABEL_9:
    sub_2379D9054(v1, &qword_27DE9AA18, &qword_237C0B710);
    result = OUTLINED_FUNCTION_20_9();
    __break(1u);
    return result;
  }

  v63 = v4;
  (*(v14 + 32))(v71, v1, v11);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237A84B00();
  sub_237C0949C();
  v26 = v14;
  v27 = v62;
  *&v69 = sub_237C05A9C();
  *(&v69 + 1) = v28;
  v67 = sub_237C05A9C();
  v68 = v29;
  v65 = 0;
  v66 = 0xE000000000000000;
  v58 = sub_2379F3408();
  v59 = v58;
  v57[0] = MEMORY[0x277D837D0];
  v57[1] = v58;
  sub_237C08D9C();

  sub_237C059BC();

  LOBYTE(v69) = 0;
  OUTLINED_FUNCTION_5_25();
  sub_237A85DF4(v30, v31);
  v32 = v61;
  sub_237C0921C();
  if (v32)
  {
    v33 = *(v26 + 8);
    v34 = OUTLINED_FUNCTION_36_5();
    v33(v34);
    v35 = OUTLINED_FUNCTION_34_6();
    v36(v35);
    return (v33)(v71, v11);
  }

  else
  {
    v38 = *(v26 + 8);
    v39 = OUTLINED_FUNCTION_36_5();
    v61 = v40;
    v40(v39);
    v41 = type metadata accessor for MLCheckpoint();
    LOBYTE(v69) = *(v27 + v41[5]);
    LOBYTE(v67) = 1;
    sub_237A852B0();
    sub_237C0921C();
    v60 = v26 + 8;
    v42 = *(v27 + v41[6]);
    LOBYTE(v69) = 2;
    sub_237C0920C();
    v43 = v41[7];
    LOBYTE(v69) = 3;
    sub_237C05BFC();
    OUTLINED_FUNCTION_4_28();
    sub_237A85DF4(v44, v45);
    sub_237C0921C();
    v62 = *(v27 + v41[8]);
    v46 = sub_237A825E8(v62);
    v47 = sub_237A80F74(v46);

    *&v69 = v47;
    LOBYTE(v67) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF20, &qword_237C0F060);
    sub_237A85304(&qword_27DE9BF78, sub_237A85388);
    OUTLINED_FUNCTION_33_6();
    sub_237C0921C();

    v48 = sub_237A825E8(v62);
    v49 = sub_237A813D0(v48);

    MEMORY[0x28223BE20](v50);
    v51 = v71;
    v58 = v71;
    v52 = sub_237A853F8(sub_237A853DC, v57, v49);

    *&v69 = v52;
    LOBYTE(v67) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF40, &qword_237C0F068);
    sub_237A856DC();
    OUTLINED_FUNCTION_33_6();
    sub_237C0921C();
    v53 = OUTLINED_FUNCTION_9_19();
    v54(v53);

    return v61(v51, v11);
  }
}

uint64_t sub_237A848F0()
{
  sub_237C05A9C();
  sub_237C05A9C();
  sub_2379F3408();
  sub_237C08D9C();

  sub_237C059BC();
}

uint64_t sub_237A849F4()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C010, &unk_237C0F250) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - v2;
  v4 = sub_237C0909C();
  __swift_allocate_value_buffer(v4, qword_27DEACD18);
  v5 = __swift_project_value_buffer(v4, qword_27DEACD18);
  sub_237C0908C();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

unint64_t sub_237A84B00()
{
  result = qword_27DE9BF00;
  if (!qword_27DE9BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF00);
  }

  return result;
}

unint64_t sub_237A84B54()
{
  result = qword_27DE9BF10;
  if (!qword_27DE9BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF10);
  }

  return result;
}

unint64_t sub_237A84BA8()
{
  result = qword_27DE9BF30;
  if (!qword_27DE9BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF30);
  }

  return result;
}

unint64_t sub_237A84BFC()
{
  result = qword_27DE9BF38;
  if (!qword_27DE9BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF38);
  }

  return result;
}

unint64_t sub_237A84C50()
{
  result = qword_27DE9BF48;
  if (!qword_27DE9BF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BF40, &qword_237C0F068);
    sub_237A84BA8();
    sub_237A85DF4(&qword_27DE9BF08, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF48);
  }

  return result;
}

uint64_t sub_237A84D0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_237AC1704(v33);
  v29 = v33[0];
  v30 = v33[1];
  v31 = v33[2];
  v32 = v34;

  while (1)
  {
    sub_237A81A44(v27);
    if (!v28)
    {
      sub_2379E925C();
    }

    v7 = v27[0];
    sub_237A1FCF0((v27 + 8), v26);
    v8 = *a5;
    v10 = sub_237ACB370(v7);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v8[3] >= v13)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C000, &unk_237C132D0);
        sub_237C090BC();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_237AC09EC(v13, a4 & 1);
      v15 = *a5;
      v16 = sub_237ACB370(v7);
      if ((v14 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v10 = v16;
      if (v14)
      {
LABEL_10:
        v18 = *a5;
        sub_2379E8624(v26, v25);
        __swift_destroy_boxed_opaque_existential_1(v26);
        v19 = (v18[7] + 40 * v10);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_237A1FCF0(v25, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v20[6] + v10) = v7;
    sub_237A1FCF0(v26, v20[7] + 40 * v10);
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v20[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237A84F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLCheckpoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A84FA4(uint64_t a1)
{
  v2 = type metadata accessor for MLCheckpoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A85008(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v35 = sub_237C05ADC();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v35);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEF0, &qword_237C0F050);
  result = sub_237C0910C();
  v8 = result;
  v9 = 0;
  v36 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = v4;
  v30 = v4 + 8;
  v31 = v4 + 16;
  v29 = result + 64;
  v32 = result;
  v17 = v4;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v21 = v18 | (v9 << 6);
      v22 = v35;
      v23 = *(v36 + 56);
      v42 = *(*(v36 + 48) + v21);
      v24 = v33;
      (*(v17 + 16))(v33, v23 + *(v17 + 72) * v21, v35);
      v40 = v22;
      v41 = sub_237A85DF4(&qword_27DE9BFF8, MEMORY[0x277CC9260]);
      __swift_allocate_boxed_opaque_existential_0(&v39);
      v37(v24);
      (*(v17 + 8))(v24, v22);
      *(v29 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v8 = v32;
      *(*(v32 + 48) + v21) = v42;
      result = sub_237A1FCF0(&v39, *(v8 + 56) + 40 * v21);
      v25 = *(v8 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v8 + 16) = v27;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v20 = *(v11 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_237A852B0()
{
  result = qword_27DE9BF68;
  if (!qword_27DE9BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF68);
  }

  return result;
}

uint64_t sub_237A85304(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BF20, &qword_237C0F060);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237A85388()
{
  result = qword_27DE9BF80;
  if (!qword_27DE9BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF80);
  }

  return result;
}

uint64_t sub_237A853F8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a2;
  v4 = sub_237C05ADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v34 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFE8, &qword_237C0F238);
  result = sub_237C0910C();
  v12 = v4;
  v13 = 0;
  v42 = a3;
  v43 = result;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v37 = v5 + 16;
  v38 = (v5 + 8);
  v36 = result + 64;
  v39 = v5;
  v34 = v15;
  v35 = (v5 + 32);
  while (1)
  {
    v21 = v44;
    if (!v19)
    {
      v23 = v13;
      while (1)
      {
        v13 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v13 >= v20)
        {
          return v43;
        }

        v24 = *(v34 + 8 * v13);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v45 = (v24 - 1) & v24;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v22 = __clz(__rbit64(v19));
    v45 = (v19 - 1) & v19;
LABEL_11:
    v25 = v22 | (v13 << 6);
    v26 = *(*(v42 + 48) + v25);
    v27 = *(v39 + 72) * v25;
    (*(v39 + 16))(v44, *(v42 + 56) + v27, v12);
    v28 = v46;
    v40(v21);
    v46 = v28;
    if (v28)
    {
      break;
    }

    (*v38)(v21, v12);
    *(v36 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v29 = v43;
    *(*(v43 + 48) + v25) = v26;
    result = (*v35)(*(v29 + 56) + v27, v9, v12);
    v30 = *(v29 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_18;
    }

    *(v29 + 16) = v32;
    v19 = v45;
  }

  (*v38)(v21, v12);
  v33 = v43;

  return v33;
}

unint64_t sub_237A856DC()
{
  result = qword_27DE9BF88;
  if (!qword_27DE9BF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BF40, &qword_237C0F068);
    sub_237A85388();
    sub_237A85DF4(&qword_27DE9BF60, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF88);
  }

  return result;
}

uint64_t sub_237A85798@<X0>(uint64_t *a1@<X8>)
{
  result = MLCheckpoint.metrics.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237A857DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C05ADC();
  v7 = OUTLINED_FUNCTION_135(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_237C05BFC();
  v12 = OUTLINED_FUNCTION_135(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 32));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_237A858DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_237C05ADC();
  v9 = OUTLINED_FUNCTION_135(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_237C05BFC();
    result = OUTLINED_FUNCTION_135(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_237A859C4()
{
  sub_237C05ADC();
  if (v0 <= 0x3F)
  {
    sub_237C05BFC();
    if (v1 <= 0x3F)
    {
      sub_237A85A78();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237A85A78()
{
  if (!qword_27DE9BFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BF50, &unk_237C137E0);
    sub_237A84BFC();
    v0 = sub_237C085DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9BFA0);
    }
  }
}

uint64_t getEnumTagSinglePayload for MLCheckpoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MLCheckpoint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x237A85C44);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237A85C80()
{
  result = qword_27DE9BFA8;
  if (!qword_27DE9BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BFA8);
  }

  return result;
}

unint64_t sub_237A85CD8()
{
  result = qword_27DE9BFB0;
  if (!qword_27DE9BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BFB0);
  }

  return result;
}

unint64_t sub_237A85D30()
{
  result = qword_27DE9BFB8;
  if (!qword_27DE9BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BFB8);
  }

  return result;
}

uint64_t sub_237A85D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFD0, &qword_237C0F220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A85DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_8_20()
{

  return sub_237C0929C();
}

uint64_t OUTLINED_FUNCTION_15_14()
{

  return sub_237C0917C();
}

uint64_t OUTLINED_FUNCTION_20_9()
{

  return sub_237C090DC();
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_237C0912C();
}

uint64_t OUTLINED_FUNCTION_37_4()
{

  return sub_237C05ADC();
}

uint64_t (*sub_237A860E0())()
{
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_237A86140()
{
  OUTLINED_FUNCTION_74();
  v36 = v2;
  v3 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v4 = _s20PersistentParametersVMa_0();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  *v5 = 0;
  *(v5 + 8) = -1;
  *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0BC00;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v7 = MEMORY[0x277D84F90];
  v35[0] = MEMORY[0x277D84F90];
  *(inited + 48) = sub_237BBDC94(sub_2379F56B8);
  *(inited + 56) = v8 & 1;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v35[0] = v7;
  *(inited + 80) = sub_237BBDC94(sub_2379F5678);
  *(inited + 88) = v9 & 1;
  OUTLINED_FUNCTION_77_2();
  *(inited + 96) = 0x5F6E6F6973736573;
  *(inited + 104) = v10;
  v35[0] = v7;
  *(inited + 112) = sub_237BBDC94(sub_2379F5698);
  *(inited + 120) = v11 & 1;
  OUTLINED_FUNCTION_23_14();
  *(inited + 128) = v12;
  *(inited + 136) = 0xE900000000000068;
  v35[0] = v7;
  *(inited + 144) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 152) = v13 & 1;
  v14 = sub_237C085AC();
  sub_237B6CB9C(v14, v35);
  if (v1)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_66_4(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
    v15 = swift_initStackObject();
    v16 = OUTLINED_FUNCTION_65_3(v15, xmmword_237C0BC00);
    v16[2].n128_u64[0] = v17;
    v16[2].n128_u64[1] = 0xE900000000000073;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_17_14();
    *(v19 - 16) = v35;
    v15[3].n128_u64[0] = sub_237BBDC94(sub_237A8D200);
    v15[3].n128_u8[8] = v20 & 1;
    OUTLINED_FUNCTION_59_4();
    v15[4].n128_u64[0] = v21;
    v15[4].n128_u64[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v22);
    OUTLINED_FUNCTION_17_14();
    *(v23 - 16) = v35;
    v15[5].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v15[5].n128_u8[8] = v24 & 1;
    OUTLINED_FUNCTION_48_7();
    v15[6].n128_u64[0] = v25;
    OUTLINED_FUNCTION_77_2();
    v15[6].n128_u64[1] = v26;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_17_14();
    *(v28 - 16) = v35;
    v15[7].n128_u64[0] = sub_237BBDC94(sub_237A8D218);
    v15[7].n128_u8[8] = v29 & 1;
    OUTLINED_FUNCTION_23_14();
    v15[8].n128_u64[0] = v30;
    v15[8].n128_u64[1] = 0xE900000000000068;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v31);
    OUTLINED_FUNCTION_17_14();
    *(v32 - 16) = v35;
    v15[9].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v15[9].n128_u8[8] = v33 & 1;
    v34 = sub_237C085AC();
    sub_237B6CB9C(v34, v35);
    OUTLINED_FUNCTION_66_4(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures);
    *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = 0;
    *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = 0;
    *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary) = MEMORY[0x277D84F98];
    sub_237A8D0EC(v36, v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    OUTLINED_FUNCTION_73();
  }
}

void sub_237A865A4()
{
  OUTLINED_FUNCTION_74();
  v404 = v1;
  v2 = v0;
  v400 = v3;
  v416 = v4;
  v405 = v5;
  v382 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  v6 = OUTLINED_FUNCTION_4(v382);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v383 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v12 = OUTLINED_FUNCTION_0(v11);
  v385 = v13;
  v386 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v387 = &v379 - v17;
  OUTLINED_FUNCTION_41_0();
  v18 = sub_237C0602C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v390 = v20;
  v391 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_0();
  v384 = v23;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  v389 = v25;
  OUTLINED_FUNCTION_41_0();
  v396 = sub_237C05DBC();
  v26 = OUTLINED_FUNCTION_0(v396);
  v392 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14_0();
  v388 = v30;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  v394 = v32;
  OUTLINED_FUNCTION_41_0();
  v401 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v33 = OUTLINED_FUNCTION_4(v401);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_0();
  v393 = v36;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  v399 = v38;
  v39 = OUTLINED_FUNCTION_41_0();
  v398 = type metadata accessor for MLHandPoseClassifier.ModelParameters(v39);
  v40 = OUTLINED_FUNCTION_4(v398);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_0();
  v45 = v44 - v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  v51 = &v379 - v50;
  v52 = v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v53 = _s20PersistentParametersVMa_0();
  v402 = v52;
  v403 = v53;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v53);
  v54 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  *v54 = 0;
  *(v54 + 8) = -1;
  *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  v397 = xmmword_237C0BC00;
  *(inited + 16) = xmmword_237C0BC00;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v56 = MEMORY[0x277D84F90];
  v414 = MEMORY[0x277D84F90];
  v409 = &v414;
  *(inited + 48) = sub_237BBDC94(sub_237A8D200);
  *(inited + 56) = v57 & 1;
  OUTLINED_FUNCTION_59_4();
  *(inited + 64) = v58;
  *(inited + 72) = v59;
  v414 = v56;
  v408 = &v414;
  *(inited + 80) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 88) = v60 & 1;
  OUTLINED_FUNCTION_48_7();
  *(inited + 96) = v61;
  OUTLINED_FUNCTION_77_2();
  *(inited + 104) = v62;
  v414 = v56;
  v407 = &v414;
  *(inited + 112) = sub_237BBDC94(sub_237A8D218);
  *(inited + 120) = v63 & 1;
  OUTLINED_FUNCTION_23_14();
  *(inited + 128) = v64;
  *(inited + 136) = 0xE900000000000068;
  v414 = v56;
  v406 = &v414;
  *(inited + 144) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 152) = v65 & 1;
  v66 = sub_237C085AC();
  v67 = v404;
  sub_237B6CB9C(v66, &v414);
  v404 = v67;
  if (!v67)
  {
    OUTLINED_FUNCTION_80_3(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
    v395 = v68;
    *(v68 + 8) = v69;
    v70 = swift_initStackObject();
    v71 = OUTLINED_FUNCTION_65_3(v70, v397);
    v71[2].n128_u64[0] = v72;
    v71[2].n128_u64[1] = 0xE900000000000073;
    OUTLINED_FUNCTION_83_3();
    MEMORY[0x28223BE20](v73);
    OUTLINED_FUNCTION_17_14();
    *(v74 - 16) = &v414;
    v70[3].n128_u64[0] = sub_237BBDC94(sub_237A8D200);
    v70[3].n128_u8[8] = v75 & 1;
    OUTLINED_FUNCTION_59_4();
    v70[4].n128_u64[0] = v76;
    v70[4].n128_u64[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_83_3();
    MEMORY[0x28223BE20](v77);
    OUTLINED_FUNCTION_17_14();
    *(v78 - 16) = &v414;
    v70[5].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v70[5].n128_u8[8] = v79 & 1;
    OUTLINED_FUNCTION_48_7();
    v70[6].n128_u64[0] = v80;
    OUTLINED_FUNCTION_77_2();
    v70[6].n128_u64[1] = v81;
    OUTLINED_FUNCTION_83_3();
    MEMORY[0x28223BE20](v82);
    OUTLINED_FUNCTION_17_14();
    *(v83 - 16) = &v414;
    v70[7].n128_u64[0] = sub_237BBDC94(sub_237A8D218);
    v70[7].n128_u8[8] = v84 & 1;
    OUTLINED_FUNCTION_23_14();
    v70[8].n128_u64[0] = v85;
    v70[8].n128_u64[1] = 0xE900000000000068;
    OUTLINED_FUNCTION_83_3();
    MEMORY[0x28223BE20](v86);
    OUTLINED_FUNCTION_17_14();
    *(v87 - 16) = &v414;
    v70[9].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v70[9].n128_u8[8] = v88 & 1;
    v89 = sub_237C085AC();
    v90 = v404;
    sub_237B6CB9C(v89, &v414);
    v404 = v90;
    if (!v90)
    {
      OUTLINED_FUNCTION_80_3(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures);
      v381 = v91;
      *(v91 + 8) = v92;
      *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = 0;
      v397.n128_u64[0] = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels;
      *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = 0;
      *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary) = MEMORY[0x277D84F98];
      v93 = v405;
      sub_237A8D148(v405, v51, type metadata accessor for MLHandPoseClassifier.DataSource);
      sub_237A8D148(v416, v45, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      v94 = v403;
      v96 = v403[6];
      v95 = v403[7];
      v97 = v403[5];
      OUTLINED_FUNCTION_14_16();
      sub_237A8D148(v45, &v51[v98], v99);
      v100 = v398;
      *&v51[v96] = *(v45 + *(v398 + 20));
      *&v51[v95] = *(v45 + *(v100 + 24));
      *&v51[v94[8]] = *(v45 + *(v100 + 28));
      OUTLINED_FUNCTION_0_36();
      sub_237A8D1A4(v45, v101);
      v102 = v94;
      v103 = v93;
      __swift_storeEnumTagSinglePayload(v51, 0, 1, v102);
      v104 = v402;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A8CBE4(v51, v104);
      swift_endAccess();
      v105 = v399;
      sub_237A8D148(v93, v399, type metadata accessor for MLHandPoseClassifier.DataSource);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v398 = v2;
        v106 = *v105;
        v107 = *(v105 + 8);
        v108 = *(v105 + 16);
        v109 = *(v105 + 24);
        v110 = *(v105 + 40);
        v393 = *(v105 + 32);
        v394 = v108;
        v396 = v110;
        v111 = *(v105 + 48);
        v112 = *(v105 + 56);
        v113 = v395;
        OUTLINED_FUNCTION_55_5();
        v114 = *v113;
        v115 = *(v113 + 8);
        *v113 = v106;
        *(v113 + 8) = v107;
        sub_2379DBCF4(v106, v107);
        v116 = v114;
        v117 = v111;
        sub_2379DBC9C(v116, v115);
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        v118 = v404;
        sub_2379E0CC4(v113, v111, v112);
        if (v118)
        {
          swift_endAccess();

          v119 = v106;
          v120 = v107;
LABEL_16:
          sub_2379DBC9C(v119, v120);
          OUTLINED_FUNCTION_2_35();
          sub_237A8D1A4(v400, v162);
          OUTLINED_FUNCTION_0_36();
          sub_237A8D1A4(v416, v163);
          OUTLINED_FUNCTION_1_33();
          sub_237A8D1A4(v405, v164);
          v2 = v398;
          goto LABEL_38;
        }

        v392 = v106;
        LODWORD(v399) = v107;
        swift_endAccess();
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        v404 = 0;
        v156 = *(v113 + 8);
        v412 = *v113;
        v155 = v412;
        v413 = v156;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        v157 = v117;
        v158 = swift_initStackObject();
        *(v158 + 16) = xmmword_237C0B680;
        v159 = v393;
        *(v158 + 32) = v394;
        *(v158 + 40) = v109;
        *(v158 + 48) = v157;
        *(v158 + 56) = v112;
        v160 = v396;
        *(v158 + 64) = v159;
        *(v158 + 72) = v160;
        sub_2379DBCF4(v155, v156);

        OUTLINED_FUNCTION_19_15();
        v161 = v404;
        sub_2379F2B84();
        v150 = v161;
        if (v161)
        {
          swift_setDeallocating();
          sub_237B9082C();
          OUTLINED_FUNCTION_92_2();
          swift_endAccess();

          v119 = v392;
          v120 = v399;
          goto LABEL_16;
        }

        swift_setDeallocating();
        sub_237B9082C();
        OUTLINED_FUNCTION_92_2();
        sub_237B6C670(v177, v178, v179, v180, v181, v182, v183, v184, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397.n128_i64[0], v397.n128_i64[1]);
        OUTLINED_FUNCTION_31_8();
        if ((*(v113 + 8) & 1) == 0)
        {
          v193 = *v113;
          v194 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v194, v195);
          sub_237B6C588();
          v196 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v196, v197);
        }

        v404 = v109;
        sub_237B6C670(v185, v186, v187, v188, v189, v190, v191, v192, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397.n128_i64[0], v397.n128_i64[1]);
        OUTLINED_FUNCTION_30_10();
        if ((*(v113 + 8) & 1) == 0)
        {
          v206 = *v113;
          v207 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v207, v208);
          sub_237B6C588();
          v209 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v209, v210);
        }

        sub_237B6C670(v198, v199, v200, v201, v202, v203, v204, v205, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397.n128_i64[0], v397.n128_i64[1]);
        sub_237B6DAB4();
        v211 = v392;
        if ((*(v113 + 8) & 1) == 0)
        {
          v212 = *v113;
          v213 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v213, v214);
          sub_237B6C588();
          v215 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v215, v216);
        }

        swift_endAccess();

        swift_beginAccess();
        sub_2379DF938(*v113, *(v113 + 8), &v412);
        swift_endAccess();
        v217 = OUTLINED_FUNCTION_84();
        sub_2379DFAE0(v217, v218, v219);
        v220 = OUTLINED_FUNCTION_84();
        sub_2379DBC9C(v220, v221);
        v170 = sub_2379DFC10(v414, v415);
        sub_2379DBC9C(v211, v399);
        v103 = v405;
        v104 = v402;
        v2 = v398;
      }

      else
      {
        OUTLINED_FUNCTION_1_33();
        sub_237A8D1A4(v105, v121);
        OUTLINED_FUNCTION_5_26();
        v122 = v393;
        sub_237A8D148(v93, v393, v123);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v125 = v404;
        if (EnumCaseMultiPayload == 5)
        {
          v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
          v127 = (v122 + v126[12]);
          v128 = *v127;
          v399 = v127[1];
          v129 = (v122 + v126[16]);
          v130 = *v129;
          v131 = v129[1];
          v379 = v128;
          v380 = v130;
          v132 = (v122 + v126[20]);
          v134 = *v132;
          v133 = v132[1];
          v135 = v392;
          v136 = v394;
          (*(v392 + 4))(v394, v122, v396);
          v137 = v389;
          sub_237C05DFC();
          v138 = sub_237C05FFC();
          (*(v390 + 8))(v137, v391);
          if (v138 == MEMORY[0x277D837D0])
          {
            v393 = v131;
            sub_237C05DEC();
            v165 = v404;
            sub_237B62FE0(v384);
            v141 = v165;
            if (v165)
            {

              OUTLINED_FUNCTION_2_35();
              sub_237A8D1A4(v400, v166);
              OUTLINED_FUNCTION_0_36();
              sub_237A8D1A4(v416, v167);
              OUTLINED_FUNCTION_1_33();
              sub_237A8D1A4(v405, v168);
              (*(v385 + 8))(v387, v386);
              (*(v135 + 8))(v136, v396);
              goto LABEL_38;
            }

            (*(v385 + 8))(v387, v386);

            v398 = v134;
            v139 = v133;
            sub_237C05E0C();
            v140 = v393;
          }

          else
          {
            v398 = v134;
            v139 = v133;
            v140 = v131;
            v141 = v404;
          }

          v142 = v388;
          v143 = v394;
          v144 = v396;
          (*(v135 + 16))(v388, v394, v396);
          sub_237A70684(v142, 0, &v414);
          if (v141)
          {

            OUTLINED_FUNCTION_2_35();
            sub_237A8D1A4(v400, v145);
            OUTLINED_FUNCTION_0_36();
            sub_237A8D1A4(v416, v146);
            OUTLINED_FUNCTION_1_33();
            sub_237A8D1A4(v405, v147);
            (*(v135 + 8))(v143, v144);
LABEL_38:
            sub_2379D9054(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9AC80, &unk_237C0F350);
            v253 = OUTLINED_FUNCTION_56_5((v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable));
            sub_2379DBC84(v253, v254);
            v255 = OUTLINED_FUNCTION_56_5((v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures));
            sub_2379DBC9C(v255, v256);
            v257 = OUTLINED_FUNCTION_56_5((v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures));
            sub_2379DBC9C(v257, v258);
            v259 = *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);

            v260 = *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);

            v261 = *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);

            type metadata accessor for HandPoseClassifierTrainingSessionDelegate();
            v262 = *(*v2 + 48);
            v263 = *(*v2 + 52);
            swift_deallocPartialClassInstance();
LABEL_39:
            OUTLINED_FUNCTION_73();
            return;
          }

          v171 = v414;
          v172 = v415;
          v173 = v395;
          OUTLINED_FUNCTION_55_5();
          v174 = *v173;
          v175 = *(v173 + 8);
          *v173 = v171;
          *(v173 + 8) = v172;
          sub_2379DBC9C(v174, v175);
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          v176 = v398;
          sub_2379E0CC4(v173, v398, v139);
          swift_endAccess();
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          v404 = 0;
          v245 = *(v173 + 8);
          v412 = *v173;
          v244 = v412;
          v413 = v245;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
          v246 = swift_initStackObject();
          *(v246 + 16) = xmmword_237C0B680;
          v247 = v380;
          v248 = v399;
          *(v246 + 32) = v379;
          *(v246 + 40) = v248;
          v398 = v176;
          *(v246 + 48) = v176;
          *(v246 + 56) = v139;
          *(v246 + 64) = v247;
          *(v246 + 72) = v140;

          sub_2379DBCF4(v244, v245);

          OUTLINED_FUNCTION_19_15();
          v249 = v404;
          sub_2379F2B84();
          if (v249)
          {
            swift_setDeallocating();
            sub_237B9082C();
            OUTLINED_FUNCTION_92_2();
            swift_endAccess();

            OUTLINED_FUNCTION_2_35();
            sub_237A8D1A4(v400, v250);
            OUTLINED_FUNCTION_0_36();
            sub_237A8D1A4(v416, v251);
            OUTLINED_FUNCTION_1_33();
            sub_237A8D1A4(v405, v252);
            (*(v392 + 1))(v394, v396);
            goto LABEL_38;
          }

          v404 = 0;
          swift_setDeallocating();
          sub_237B9082C();
          OUTLINED_FUNCTION_92_2();
          sub_237B6C670(v282, v283, v284, v285, v286, v287, v288, v289, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397.n128_i64[0], v397.n128_i64[1]);
          OUTLINED_FUNCTION_31_8();
          v298 = v396;
          if ((*(v173 + 8) & 1) == 0)
          {
            v299 = *v173;
            v300 = OUTLINED_FUNCTION_85();
            sub_2379DBCF4(v300, v301);
            sub_237B6C588();
            v302 = OUTLINED_FUNCTION_85();
            sub_2379DBC9C(v302, v303);
          }

          sub_237B6C670(v290, v291, v292, v293, v294, v295, v296, v297, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397.n128_i64[0], v397.n128_i64[1]);
          OUTLINED_FUNCTION_30_10();
          v104 = v402;
          if ((*(v173 + 8) & 1) == 0)
          {
            v312 = *v173;
            v313 = OUTLINED_FUNCTION_85();
            sub_2379DBCF4(v313, v314);
            sub_237B6C588();
            v315 = OUTLINED_FUNCTION_85();
            sub_2379DBC9C(v315, v316);
          }

          sub_237B6C670(v304, v305, v306, v307, v308, v309, v310, v311, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397.n128_i64[0], v397.n128_i64[1]);
          OUTLINED_FUNCTION_87_2();
          if ((*(v173 + 8) & 1) == 0)
          {
            v317 = *v173;
            v318 = OUTLINED_FUNCTION_85();
            sub_2379DBCF4(v318, v319);
            sub_237B6C588();
            v320 = OUTLINED_FUNCTION_85();
            sub_2379DBC9C(v320, v321);
          }

          swift_endAccess();

          swift_beginAccess();
          v322 = *v173;
          v323 = *(v173 + 8);
          OUTLINED_FUNCTION_45_3();
          sub_2379DF938(v324, v325, v326);
          swift_endAccess();
          v327 = OUTLINED_FUNCTION_84();
          sub_2379DFAE0(v327, v328, v329);
          v330 = OUTLINED_FUNCTION_84();
          sub_2379DBC9C(v330, v331);
          v170 = sub_2379DFC10(v414, v415);
          (*(v392 + 1))(v394, v298);
          v150 = v404;
          v103 = v405;
        }

        else
        {
          OUTLINED_FUNCTION_1_33();
          sub_237A8D1A4(v122, v148);
          sub_237B84894();
          v150 = v125;
          if (v125)
          {
            OUTLINED_FUNCTION_2_35();
            sub_237A8D1A4(v400, v151);
            OUTLINED_FUNCTION_0_36();
            sub_237A8D1A4(v416, v152);
            OUTLINED_FUNCTION_1_33();
            v154 = v103;
LABEL_13:
            sub_237A8D1A4(v154, v153);
            goto LABEL_38;
          }

          v169 = v149;

          v170 = sub_2379DFFEC(v169);
        }
      }

      v222 = v397.n128_u64[0];
      v223 = *(v2 + v397.n128_u64[0]);
      *(v2 + v397.n128_u64[0]) = v170;

      v224 = v403;
      if (__swift_getEnumTagSinglePayload(v104, 1, v403))
      {
        v225 = v400;
LABEL_42:
        sub_237A8D148(v225, v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
        if (*(v2 + v222))
        {
          v264 = _s8GraphCNNCMa(0);
          v265 = *(v264 + 48);
          v266 = *(v264 + 52);
          swift_allocObject();

          OUTLINED_FUNCTION_58_5();
          v272 = sub_237AED020(v267, v268, v269, v270, v271);
          OUTLINED_FUNCTION_2_35();
          sub_237A8D1A4(v225, v273);
          OUTLINED_FUNCTION_0_36();
          sub_237A8D1A4(v416, v274);
          OUTLINED_FUNCTION_1_33();
          sub_237A8D1A4(v103, v275);
          v276 = *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
          *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = v272;
        }

        else
        {
          OUTLINED_FUNCTION_68_2();
          v277 = OUTLINED_FUNCTION_6_2();
          *v278 = 0xD00000000000003DLL;
          v278[1] = 0;
          OUTLINED_FUNCTION_52(v277, v278);
          OUTLINED_FUNCTION_2_35();
          sub_237A8D1A4(v225, v279);
          OUTLINED_FUNCTION_0_36();
          sub_237A8D1A4(v416, v280);
          OUTLINED_FUNCTION_1_33();
          sub_237A8D1A4(v103, v281);
        }

        goto LABEL_39;
      }

      v226 = v224[5];
      OUTLINED_FUNCTION_14_16();
      v228 = v383;
      sub_237A8D148(v104 + v227, v383, v229);
      v230 = swift_getEnumCaseMultiPayload();
      v225 = v400;
      if (v230 == 1)
      {
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v231 = *v228;
          v232 = *(v228 + 8);
          v233 = *(v228 + 24);
          v399 = *(v228 + 16);
          v234 = *(v228 + 40);
          v401 = *(v228 + 32);
          v402 = v234;
          v403 = v233;
          v404 = v150;
          v235 = *(v228 + 48);
          v236 = *(v228 + 56);
          v237 = v381;
          OUTLINED_FUNCTION_55_5();
          v238 = *v237;
          v239 = *(v237 + 8);
          *v237 = v231;
          *(v237 + 8) = v232;
          sub_2379DBCF4(v231, v232);
          sub_2379DBC9C(v238, v239);
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          v240 = v404;
          sub_2379E0CC4(v237, v235, v236);
          if (!v240)
          {
            v395 = v231;
            LODWORD(v396) = v232;
            v398 = v2;
            swift_endAccess();
            OUTLINED_FUNCTION_59_1();
            swift_beginAccess();
            v333 = *(v237 + 8);
            v410 = *v237;
            v332 = v410;
            v411 = v333;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
            v334 = swift_initStackObject();
            v335 = v235;
            *(v334 + 16) = xmmword_237C0B680;
            v336 = v402;
            v337 = v403;
            *(v334 + 32) = v399;
            *(v334 + 40) = v337;
            v394 = v335;
            *(v334 + 48) = v335;
            *(v334 + 56) = v236;
            *(v334 + 64) = v401;
            *(v334 + 72) = v336;
            sub_2379DBCF4(v332, v333);

            OUTLINED_FUNCTION_19_15();
            sub_2379F2B84();
            v404 = 0;
            swift_setDeallocating();
            sub_237B9082C();
            sub_2379DBC9C(v410, v411);
            sub_237B6C670(v338, v339, v340, v341, v342, v343, v344, v345, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397.n128_i64[0], v397.n128_i64[1]);
            OUTLINED_FUNCTION_31_8();
            v2 = v398;
            v103 = v405;
            v354 = v395;
            if ((*(v237 + 8) & 1) == 0)
            {
              v355 = *v237;
              v356 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v356, v357);
              sub_237B6C588();
              v358 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v358, v359);
            }

            sub_237B6C670(v346, v347, v348, v349, v350, v351, v352, v353, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397.n128_i64[0], v397.n128_i64[1]);
            v399 = v236;
            OUTLINED_FUNCTION_30_10();
            if ((*(v237 + 8) & 1) == 0)
            {
              v368 = *v237;
              v369 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v369, v370);
              sub_237B6C588();
              v371 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v371, v372);
            }

            sub_237B6C670(v360, v361, v362, v363, v364, v365, v366, v367, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397.n128_i64[0], v397.n128_i64[1]);
            OUTLINED_FUNCTION_87_2();
            v373 = v396;
            if ((*(v237 + 8) & 1) == 0)
            {
              v374 = *v237;
              v375 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v375, v376);
              sub_237B6C588();
              v377 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v377, v378);
            }

            swift_endAccess();

            sub_2379DBC9C(v354, v373);
            v225 = v400;
            v222 = v397.n128_u64[0];
            goto LABEL_42;
          }

          swift_endAccess();

          sub_2379DBC9C(v231, v232);
          OUTLINED_FUNCTION_2_35();
          sub_237A8D1A4(v400, v241);
          OUTLINED_FUNCTION_0_36();
          sub_237A8D1A4(v416, v242);
          OUTLINED_FUNCTION_1_33();
          v154 = v405;
          goto LABEL_13;
        }

        v243 = type metadata accessor for MLHandPoseClassifier.DataSource;
      }

      else
      {
        v243 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData;
      }

      sub_237A8D1A4(v228, v243);
      goto LABEL_42;
    }
  }

  swift_unexpectedError();
  __break(1u);
}

void sub_237A87C24(uint64_t a1)
{
  v3 = v1;
  v4 = a1 + *(_s20PersistentParametersVMa_0() + 20);
  sub_237A99AB0(&v37, &v39);
  if (!v2)
  {
    v5 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
    if (v38 == 255)
    {
      if (v40 != 255)
      {
        v22 = v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v23 = *v22;
        *v22 = v7;
        v24 = *(v22 + 8);
        *(v22 + 8) = v8;
        sub_2379DBCF4(v7, v8 & 1);
        sub_2379DBC84(v23, v24);
        *(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
LABEL_11:
        v41 = v7;
        v42 = v8 & 1;
        sub_2379DBCF4(v7, v8 & 1);
        v28 = MLDataTable.size.getter();
        v29 = OUTLINED_FUNCTION_63_3();
        sub_2379DBC84(v29, v30);
        v31 = OUTLINED_FUNCTION_75_3();
        sub_2379DBC84(v31, v32);
        v33 = OUTLINED_FUNCTION_75_3();
        sub_2379DBC84(v33, v34);
LABEL_14:
        *(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = v28;
        return;
      }

      *(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
    }

    else
    {
      if (v40 == 255)
      {
        v25 = v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v26 = *v25;
        *v25 = v5;
        v27 = *(v25 + 8);
        *(v25 + 8) = v6;
        sub_2379DBCF4(v5, v6 & 1);
        v20 = v26;
        v21 = v27;
      }

      else
      {
        v9 = v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v10 = *v9;
        *v9 = v5;
        v11 = *(v9 + 8);
        *(v9 + 8) = v6 & 1;
        sub_2379DBCF4(v5, v6 & 1);
        v12 = OUTLINED_FUNCTION_63_3();
        sub_2379DBCDC(v12, v13);
        v14 = OUTLINED_FUNCTION_75_3();
        sub_2379DBCDC(v14, v15);
        sub_2379DBC84(v10, v11);
        v16 = sub_237A860E0();
        if (*(v17 + 8) != 255)
        {
          v41 = v7;
          v42 = v8 & 1;
          MLDataTable.append(contentsOf:)();
        }

        (v16)(&v37, 0);
        v18 = OUTLINED_FUNCTION_63_3();
        sub_2379DBC84(v18, v19);
        v20 = OUTLINED_FUNCTION_75_3();
      }

      sub_2379DBC84(v20, v21);
      v41 = v5;
      v42 = v6 & 1;
      *(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = MLDataTable.size.getter();
      if (v8 != 255)
      {
        goto LABEL_11;
      }
    }

    v35 = OUTLINED_FUNCTION_63_3();
    sub_2379DBC84(v35, v36);
    v28 = 0;
    goto LABEL_14;
  }
}

uint64_t sub_237A87E80()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_86_2();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v13, v1, &qword_27DE9AC80, &unk_237C0F350);
  if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
  {
    result = sub_2379D9054(v1, &qword_27DE9AC80, &unk_237C0F350);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_21();
    sub_237A8D0EC(v1, v12, v14);
    sub_237A87C24(v12);
    OUTLINED_FUNCTION_6_24();
    return sub_237A8D1A4(v12, v15);
  }

  return result;
}

void sub_237A87FC8()
{
  OUTLINED_FUNCTION_74();
  v125 = v1;
  v2 = v0;
  v128 = v3;
  v4 = sub_237C05ADC();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v118 = v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_138();
  v119 = v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_138();
  v121 = v12;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v124 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v16 = OUTLINED_FUNCTION_20(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_0();
  v123 = v19;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v116 - v21;
  v23 = type metadata accessor for MLCheckpoint();
  v24 = OUTLINED_FUNCTION_0(v23);
  v122 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_0();
  v129 = v28;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_138();
  v120 = v30;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  v127 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  v38 = &v116 - v37;
  v39 = _s20PersistentParametersVMa_0();
  v40 = OUTLINED_FUNCTION_4(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_0();
  v45 = v44 - v43;
  v46 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v126 = v2;
  sub_2379FC864(v2 + v46, v38, &qword_27DE9AC80, &unk_237C0F350);
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    sub_2379D9054(v38, &qword_27DE9AC80, &unk_237C0F350);
    __break(1u);
    JUMPOUT(0x237A88CC0);
  }

  OUTLINED_FUNCTION_7_21();
  sub_237A8D0EC(v38, v45, v47);
  sub_237A9A92C(v128, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
  {
    OUTLINED_FUNCTION_38_5();
    v50 = v127;
    sub_237A8D0EC(v22, v127, v51);
    v117 = *(v23 + 20);
    v52 = v23;
    switch(*(v50 + v117))
    {
      case 1:
LABEL_11:

        goto LABEL_15;
      case 2:
        OUTLINED_FUNCTION_51_4();
        break;
      case 3:
        OUTLINED_FUNCTION_158();
        break;
      case 4:
        OUTLINED_FUNCTION_20_10();
        break;
      default:
        break;
    }

    v53 = OUTLINED_FUNCTION_50_6();

    if (v53)
    {
      goto LABEL_15;
    }

    v54 = 0xEA0000000000676ELL;
    switch(*(v50 + v117))
    {
      case 1:
        break;
      case 2:
        goto LABEL_11;
      case 3:
        OUTLINED_FUNCTION_158();
        break;
      case 4:
        OUTLINED_FUNCTION_20_10();
        break;
      default:
        v54 = 0xEB0000000064657ALL;
        break;
    }

    OUTLINED_FUNCTION_57_0();
    v55 = sub_237C0929C();

    if (v55)
    {
LABEL_15:
      v56 = v125;
      sub_237A87C24(v45);
      if (v56)
      {
LABEL_46:
        OUTLINED_FUNCTION_3_34();
        sub_237A8D1A4(v50, v114);
        goto LABEL_47;
      }

      v57 = *(v50 + v117);
      v116 = 0x6974636172747865;
      switch(v57)
      {
        case 1:

          goto LABEL_23;
        case 3:
          OUTLINED_FUNCTION_158();
          break;
        case 4:
          OUTLINED_FUNCTION_20_10();
          break;
        default:
          break;
      }

      v61 = OUTLINED_FUNCTION_50_6();

      if (v61)
      {
LABEL_23:
        v63 = v124;
        OUTLINED_FUNCTION_51_4();
        sub_237C05A2C();
        LOBYTE(v148) = 1;
        v149 = 44;
        v150 = 0xE100000000000000;
        v151 = 0;
        v152 = 0xE000000000000000;
        v153 = 92;
        v154 = 0xE100000000000000;
        v155 = 1;
        v156 = 34;
        v157 = 0xE100000000000000;
        v158 = 1;
        v159 = &unk_284ABEBF0;
        v160 = 10;
        v162 = 0;
        v163 = 0;
        v161 = 0xE100000000000000;
        v164 = 1;
        v165 = 0;
        MLDataTable.init(contentsOf:options:)(v63, &v148, &v168);
        v125 = v45;
        v64 = v168;
        v65 = v169;
        v66 = v126 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
        OUTLINED_FUNCTION_55_5();
        v67 = *v66;
        v68 = *(v66 + 8);
        *v66 = v64;
        *(v66 + 8) = v65;
        sub_2379DBC9C(v67, v68);
        OUTLINED_FUNCTION_49_0();
        v69 = v121;
        sub_237C05A2C();
        LOBYTE(v130) = 1;
        v131 = 44;
        v132 = 0xE100000000000000;
        v133 = 0;
        v134 = 0xE000000000000000;
        v135 = 92;
        v136 = 0xE100000000000000;
        v137 = 1;
        v138 = 34;
        v139 = 0xE100000000000000;
        v140 = 1;
        v141 = &unk_284ABEBF0;
        v142 = 10;
        v144 = 0;
        v145 = 0;
        v143 = 0xE100000000000000;
        v146 = 1;
        v147 = 0;
        MLDataTable.init(contentsOf:options:)(v69, &v130, &v166);
        OUTLINED_FUNCTION_46_5();
        v85 = OUTLINED_FUNCTION_81_2();
        v50 = v127;
        sub_2379DBC9C(v85, v86);
        v45 = v125;
        goto LABEL_39;
      }

      v148 = v128;
      v70 = *(v128 + 16);
      if (v70)
      {
        v125 = v45;
        v71 = *(v122 + 72);
        v72 = v70 - 1;
        v73 = v128 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + v71 * (v70 - 1);
        v74 = -v71;
        while (2)
        {
          v75 = v129;
          sub_237A8D148(v73, v129, type metadata accessor for MLCheckpoint);
          switch(*(v75 + *(v52 + 20)))
          {
            case 1:

              OUTLINED_FUNCTION_3_34();
              v62 = sub_237A8D1A4(v129, v93);
              v45 = v125;
              v50 = v127;
              break;
            case 2:
              OUTLINED_FUNCTION_51_4();
              goto LABEL_29;
            case 3:
              OUTLINED_FUNCTION_158();
              goto LABEL_29;
            default:
LABEL_29:
              v76 = OUTLINED_FUNCTION_50_6();

              OUTLINED_FUNCTION_3_34();
              v62 = sub_237A8D1A4(v129, v77);
              if (v76)
              {
                goto LABEL_32;
              }

              --v72;
              v73 += v74;
              if (v72 != -1)
              {
                continue;
              }

              v72 = 0;
LABEL_32:
              v45 = v125;
              v50 = v127;
              break;
          }

          break;
        }
      }

      else
      {
        v72 = 0;
      }

      v78 = v123;
      MEMORY[0x28223BE20](v62);
      *(&v116 - 2) = &v148;
      sub_237A9D3D4(sub_237A594BC, v72, v79 & 1, v78);
      if (__swift_getEnumTagSinglePayload(v78, 1, v52) == 1)
      {
        sub_2379D9054(v78, &qword_27DE9B8E8, &qword_237C0EBF0);
        v80 = (v126 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
        OUTLINED_FUNCTION_71();
        swift_beginAccess();
        v81 = *(v80 + 8);
        v130 = *v80;
        LOBYTE(v131) = v81;
        v54 = &v130;
        if (!MLDataTable.size.getter())
        {
          OUTLINED_FUNCTION_68_2();
          v58 = OUTLINED_FUNCTION_6_2();
          v60 = 0xD000000000000028;
          goto LABEL_19;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38_5();
        v82 = v120;
        sub_237A8D0EC(v78, v120, v83);
        v84 = v119;
        OUTLINED_FUNCTION_51_4();
        sub_237C05A2C();
        LOBYTE(v148) = 1;
        v149 = 44;
        v150 = 0xE100000000000000;
        v151 = 0;
        v152 = 0xE000000000000000;
        v153 = 92;
        v154 = 0xE100000000000000;
        v155 = 1;
        v156 = 34;
        v157 = 0xE100000000000000;
        v158 = 1;
        v159 = &unk_284ABEBF0;
        v160 = 10;
        v162 = 0;
        v163 = 0;
        v161 = 0xE100000000000000;
        v164 = 1;
        v165 = 0;
        MLDataTable.init(contentsOf:options:)(v84, &v148, &v168);
        v125 = v45;
        v87 = v168;
        v88 = v169;
        v89 = v126 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
        OUTLINED_FUNCTION_46_5();
        v90 = *v89;
        v91 = *(v89 + 8);
        *v89 = v87;
        *(v89 + 8) = v88;
        sub_2379DBC9C(v90, v91);
        OUTLINED_FUNCTION_49_0();
        v92 = v118;
        sub_237C05A2C();
        LOBYTE(v130) = 1;
        v131 = 44;
        v132 = 0xE100000000000000;
        v133 = 0;
        v134 = 0xE000000000000000;
        v135 = 92;
        v136 = 0xE100000000000000;
        v137 = 1;
        v138 = 34;
        v139 = 0xE100000000000000;
        v140 = 1;
        v141 = &unk_284ABEBF0;
        v142 = 10;
        v144 = 0;
        v145 = 0;
        v143 = 0xE100000000000000;
        v146 = 1;
        v147 = 0;
        MLDataTable.init(contentsOf:options:)(v92, &v130, &v166);
        OUTLINED_FUNCTION_3_34();
        sub_237A8D1A4(v82, v94);
        OUTLINED_FUNCTION_46_5();
        v95 = OUTLINED_FUNCTION_81_2();
        sub_2379DBC9C(v95, v96);
        v45 = v125;
        v50 = v127;
      }

LABEL_39:
      switch(*(v50 + v117))
      {
        case 1:
          goto LABEL_44;
        case 2:

          goto LABEL_45;
        case 3:
          v116 = 0x697461756C617665;
          goto LABEL_44;
        case 4:
          v116 = 0x636E657265666E69;
          goto LABEL_44;
        default:
          v116 = 0x696C616974696E69;
LABEL_44:
          OUTLINED_FUNCTION_57_0();
          v97 = sub_237C0929C();

          if (v97)
          {
LABEL_45:
            v98 = v126;
            v99 = v126 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
            OUTLINED_FUNCTION_71();
            swift_beginAccess();
            v100 = *v99;
            LOBYTE(v99) = *(v99 + 8);
            sub_2379DBCF4(v100, v99);
            OUTLINED_FUNCTION_45_3();
            sub_2379DF938(v100, v99, &v166);
            sub_2379DBC9C(v100, v99);
            v101 = v166;
            LOBYTE(v100) = v167;
            sub_2379DFAE0(v166, v167, &v168);
            sub_2379DBC9C(v101, v100);
            v102 = sub_2379DFC10(v168, v169);
            v103 = *(v98 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
            *(v98 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = v102;

            v104 = _s8GraphCNNCMa(0);
            v105 = *(v104 + 48);
            v106 = *(v104 + 52);
            swift_allocObject();
            OUTLINED_FUNCTION_85();
            OUTLINED_FUNCTION_58_5();
            v112 = sub_237AED020(v107, v108, v109, v110, v111);
            v113 = *(v98 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
            *(v98 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = v112;

            sub_237AE8BE0();
            sub_237BA9BC8();
          }

          break;
      }

      goto LABEL_46;
    }

    OUTLINED_FUNCTION_68_2();
    v58 = OUTLINED_FUNCTION_6_2();
    v60 = 0xD00000000000003FLL;
LABEL_19:
    *v59 = v60;
    v59[1] = v54;
    OUTLINED_FUNCTION_52(v58, v59);
    goto LABEL_46;
  }

  sub_2379D9054(v22, &qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_68_2();
  v48 = OUTLINED_FUNCTION_6_2();
  *v49 = 0xD00000000000001DLL;
  v49[1] = v22;
  OUTLINED_FUNCTION_52(v48, v49);
LABEL_47:
  OUTLINED_FUNCTION_6_24();
  sub_237A8D1A4(v45, v115);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A88D24(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 0;
  switch(v2)
  {
    case 1:
      v4 = (v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable);
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      if (*(v4 + 8) == 255)
      {
        result = 0;
      }

      else
      {
        v6 = *v4;
        result = MLDataTable.size.getter();
      }

      break;
    case 2:
      v5 = v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters;
      result = *(v5 + *(type metadata accessor for MLTrainingSessionParameters() + 28));
      break;
    default:
      return result;
  }

  return result;
}

void sub_237A88DF8()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v11, v10, &qword_27DE9AC80, &unk_237C0F350);
  v12 = _s20PersistentParametersVMa_0();
  LODWORD(v11) = __swift_getEnumTagSinglePayload(v10, 1, v12);
  sub_2379D9054(v10, &qword_27DE9AC80, &unk_237C0F350);
  if (v11 == 1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v14 = *(v13 + 8);
  if (v14 == 255)
  {
    goto LABEL_15;
  }

  v36 = *v13;
  v15 = v36;
  v37 = v14 & 1;
  sub_2379DBCF4(v36, v14 & 1);
  MLDataTable.size.getter();
  if (v16 < 1)
  {
LABEL_12:
    OUTLINED_FUNCTION_90_2();
    goto LABEL_15;
  }

  v17 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount;
  v18 = *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount);
  v19 = *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount);
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    goto LABEL_27;
  }

  if (v20 <= v4)
  {
    OUTLINED_FUNCTION_90_2();
LABEL_15:
    OUTLINED_FUNCTION_73();
    return;
  }

  v35 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount;
  v21 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters;
  v22 = *(v21 + *(type metadata accessor for MLTrainingSessionParameters() + 20));
  v23 = __OFADD__(v4, v22);
  v24 = v4 + v22;
  v25 = v23;
  if (v18 <= v4)
  {
    if (v25)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    v20 = v18;
    if (v25)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v34 = v17;
  if (v20 >= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v20;
  }

  if (v26 < v4)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v15;
  v37 = v14 & 1;
  MLDataTable.subscript.getter(&v38, v4, v26);
  v27 = v38;
  v28 = v39;
  _s16FeatureExtractorCMa_0();
  v38 = v27;
  v39 = v28;
  sub_237BA57C4(&v38, v4, &v36);
  if (v1)
  {
    OUTLINED_FUNCTION_90_2();
    sub_2379DBC9C(v27, v28);
    goto LABEL_15;
  }

  v32 = v27;
  v33 = v28;
  v29 = v36;
  v30 = v37;
  v38 = v36;
  v39 = v37;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  MLDataTable.append(contentsOf:)();
  swift_endAccess();
  OUTLINED_FUNCTION_90_2();
  sub_2379DBC9C(v32, v33);
  sub_2379DBC9C(v29, v30);
  if (__OFSUB__(v26, v4))
  {
    goto LABEL_30;
  }

  if (!__OFADD__(*(v2 + v34), *(v2 + v35)))
  {
    goto LABEL_15;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_237A89108(_BYTE *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  result = MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  if (*a1 == 2)
  {
    v13 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379FC864(v4 + v13, v12, &qword_27DE9AC80, &unk_237C0F350);
    v14 = _s20PersistentParametersVMa_0();
    LODWORD(v13) = __swift_getEnumTagSinglePayload(v12, 1, v14);
    result = sub_2379D9054(v12, &qword_27DE9AC80, &unk_237C0F350);
    if (v13 == 1)
    {
      __break(1u);
    }

    else
    {
      v15 = v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      v16 = *v15;
      LOBYTE(v15) = *(v15 + 8);
      sub_2379DBCF4(v16, v15);
      OUTLINED_FUNCTION_45_3();
      sub_2379DF938(v16, v15, v34);
      sub_2379DBC9C(v16, v15);
      v17 = OUTLINED_FUNCTION_84();
      sub_2379DFAE0(v17, v18, v19);
      v20 = OUTLINED_FUNCTION_84();
      sub_2379DBC9C(v20, v21);
      v22 = sub_2379DFC10(v34[5], v35);
      v23 = *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
      *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = v22;

      v24 = _s8GraphCNNCMa(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_58_5();
      v32 = sub_237AED020(v27, v28, v29, v30, v31);
      v33 = *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
      *(v4 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = v32;

      sub_237BB0D90();
      if (!v3)
      {
        sub_237BA9BC8();
      }
    }
  }

  return result;
}

uint64_t sub_237A89310(uint64_t a1)
{
  v199 = sub_237C0683C();
  v3 = OUTLINED_FUNCTION_0(v199);
  v198 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v8 - v7);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C078, &qword_237C11730);
  OUTLINED_FUNCTION_0(v208);
  v213 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0(v179 - v13);
  v215 = sub_237C0617C();
  v14 = OUTLINED_FUNCTION_0(v215);
  v214 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0(v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v205 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C080, &qword_237C0F360);
  OUTLINED_FUNCTION_20(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77_0(v179 - v26);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  v27 = OUTLINED_FUNCTION_0(v212);
  v211 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v32);
  v217 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v33 = OUTLINED_FUNCTION_0(v217);
  v204 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77_0(v179 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  v219 = v38;
  OUTLINED_FUNCTION_41_0();
  v39 = _s20PersistentParametersVMa_0();
  v40 = OUTLINED_FUNCTION_4(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_0();
  v45 = v44 - v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  v51 = v179 - v50;
  v52 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v53 = OUTLINED_FUNCTION_4(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18_0();
  v58 = v56 - v57;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_58();
  v220 = v60;
  v222 = v1;
  v61 = v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters;
  result = type metadata accessor for MLTrainingSessionParameters();
  v63 = *(v61 + *(result + 20));
  if (__OFADD__(a1, v63))
  {
    __break(1u);
    goto LABEL_42;
  }

  v64 = *(v61 + *(result + 28));
  if (__OFSUB__(v64, a1))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v221 = a1;
  v200 = v64;
  v201 = &v63[a1];
  if (v63 >= v64 - a1)
  {
    v65 = (v64 - a1);
  }

  else
  {
    v65 = v63;
  }

  v227 = MEMORY[0x277D84F98];
  v66 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v67 = v222;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v67 + v66, v51, &qword_27DE9AC80, &unk_237C0F350);
  if (__swift_getEnumTagSinglePayload(v51, 1, v39))
  {
    sub_2379D9054(v51, &qword_27DE9AC80, &unk_237C0F350);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_82_3();
    *v69 = v68 + 20;
    v69[1] = 0x8000000237C19F70;
    OUTLINED_FUNCTION_52(v70, v69);
    return v51;
  }

  v196 = v65;
  sub_237A8D148(v51, v45, _s20PersistentParametersVMa_0);
  sub_2379D9054(v51, &qword_27DE9AC80, &unk_237C0F350);
  v71 = v39[5];
  OUTLINED_FUNCTION_14_16();
  sub_237A8D148(v45 + v72, v58, v73);
  v51 = *(v45 + v39[6]);
  v74 = *(v45 + v39[7]);
  v75 = *(v45 + v39[8]);
  OUTLINED_FUNCTION_6_24();
  sub_237A8D1A4(v45, v76);
  *(v58 + v52[5]) = v51;
  *(v58 + v52[6]) = v74;
  *(v58 + v52[7]) = v75;
  v77 = v220;
  sub_237A8D0EC(v58, v220, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v78 = *(v67 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
  if (!v78 || (v79 = v67, (v80 = *(v67 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels)) == 0))
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_82_3();
    *v98 = v97 + 42;
    v98[1] = 0x8000000237C19FA0;
    OUTLINED_FUNCTION_52(v99, v98);
    OUTLINED_FUNCTION_0_36();
    sub_237A8D1A4(v77, v100);
    return v51;
  }

  v81 = v52[6];
  v82 = *(v77 + v52[7]);
  v83 = *(v77 + v52[5]);
  v84 = *(v77 + v81);
  v85 = v219;
  *v219 = 0;
  v85[1] = 0;
  *(v85 + 8) = 256;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload();
  v86 = v217;
  v87 = v217[5];
  v195 = v83;
  *(v85 + v87) = v83;
  *(v85 + v86[6]) = v84;
  *(v85 + v86[7]) = 1;
  *(v85 + v86[8]) = v82;
  *(v85 + v86[10]) = 0x403E000000000000;
  v88 = (v79 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v51 = *v88;
  v89 = *(v88 + 8);
  v90 = v79 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v91 = *v90;
  v92 = *(v90 + 8);
  *&v223 = v51;
  BYTE8(v223) = v89;

  sub_2379DBCF4(v51, v89);
  sub_2379DBCF4(v91, v92);
  v217 = v80;
  v93 = v218;
  sub_2379EA98C(&v223, v80);
  if (v93)
  {
    OUTLINED_FUNCTION_91_1();

    sub_2379DBC9C(v91, v92);
    OUTLINED_FUNCTION_4_29();
    sub_237A8D1A4(v85, v95);
    OUTLINED_FUNCTION_0_36();
    sub_237A8D1A4(v77, v96);
    sub_2379DBC9C(v51, v89);
    return v51;
  }

  v193 = v51;
  v191 = v89;
  v218 = v78;
  v190 = v91;
  v194 = *(v217 + 2);
  v101 = *MEMORY[0x277D2CD40];
  v192 = v92;
  v102 = v214;
  v103 = *(v214 + 104);
  v104 = v94;
  v105 = v216;
  v106 = v215;
  v187 = v214 + 104;
  v186 = v103;
  (v103)(v216, v101, v215);
  v226 = v104;
  v107 = *(v102 + 16);
  v225 = 0;
  v223 = 0u;
  v224 = 0u;
  v108 = v207;
  v109 = v105;
  v110 = v106;
  v189 = v102 + 16;
  v188 = v107;
  v107(v207, v109, v106);
  OUTLINED_FUNCTION_37_5();
  v111 = v206;
  sub_237A8D148(v85, v206, v112);
  v113 = *(v102 + 80);
  v114 = (v113 + 16) & ~v113;
  v115 = *(v204 + 80);
  v116 = (v205 + v115 + v114) & ~v115;
  v184 = v113 | v115;
  v117 = swift_allocObject();
  v118 = *(v102 + 32);
  v185 = v114;
  v183 = v102 + 32;
  v182 = v118;
  v118(v117 + v114, v108, v110);
  OUTLINED_FUNCTION_33_7();
  *(v119 - 256) = v116;
  sub_237A8D0EC(v111, v117 + v116, v120);
  v205 = (v36 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v117 + v205) = v194;
  v121 = *(v213 + 104);
  v181 = *MEMORY[0x277D2CEC0];
  v213 += 104;
  v180 = v121;
  v121(v209);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C090, &qword_237C0F380);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  v124 = sub_2379D9224(&qword_27DE9C098, &qword_27DE9C090, &qword_237C0F380);
  sub_237A252E0();
  sub_2379D9224(&qword_27DE9B468, &qword_27DE9B420, &qword_237C0CCD8);
  v179[2] = v124;
  v179[3] = v123;
  v125 = v122;
  v126 = v210;
  sub_237C0686C();
  v127 = *(v102 + 8);
  v214 = v102 + 8;
  (v127)(v216, v215);
  v128 = v192;
  *&v223 = v190;
  BYTE8(v223) = v192;
  v129 = v190;
  sub_2379DBCF4(v190, v192);
  if (MLDataTable.size.getter())
  {
    v179[1] = v125;
    *&v223 = v129;
    BYTE8(v223) = v128;
    sub_2379EA98C(&v223, v217);
    v131 = v130;
    OUTLINED_FUNCTION_91_1();
    v132 = *MEMORY[0x277D2CD48];
    v133 = v216;
    v217 = v127;
    v134 = v215;
    v186(v216, v132);
    v226 = v131;
    v225 = 0;
    v223 = 0u;
    v224 = 0u;
    v135 = v207;
    v188(v207, v133, v134);
    OUTLINED_FUNCTION_37_5();
    v136 = v206;
    sub_237A8D148(v219, v206, v137);
    v189 = v131;
    v138 = v205;
    v139 = swift_allocObject();
    v182(v139 + v185, v135, v134);
    OUTLINED_FUNCTION_33_7();
    sub_237A8D0EC(v136, v139 + *(v140 - 256), v141);
    *(v139 + v138) = v194;
    v180(v209, v181, v208);
    OUTLINED_FUNCTION_85_2(&v222);

    v142 = v203;
    v126 = v210;
    sub_237C0686C();
    OUTLINED_FUNCTION_88_1();

    LOBYTE(v138) = v192;
    sub_2379DBC9C(v129, v192);
    sub_2379DBC9C(v129, v138);
    (v217)(v216, v134);
    v143 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_91_1();
    sub_2379DBC9C(v129, v128);
    OUTLINED_FUNCTION_88_1();
    sub_2379DBC9C(v129, v128);
    v143 = 1;
    v142 = v203;
  }

  v144 = v202;
  v145 = v212;
  (*(v211 + 32))(v202, v126, v212);
  result = __swift_storeEnumTagSinglePayload(v142, v143, 1, v145);
  v146 = v196;
  if ((v196 & 0x8000000000000000) == 0)
  {
    v147 = 0;
    v148 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary;
    v149 = v220;
    while (v146 != v147)
    {
      if (__OFADD__(v147, 1))
      {
        goto LABEL_43;
      }

      if (__OFADD__(v221, v147))
      {
        goto LABEL_44;
      }

      v150 = sub_237BA7528(v144, v142, v221 + v147);
      v151 = *(v222 + v148);
      *(v222 + v148) = v150;

      ++v147;
    }

    v152 = v222;
    v153 = *(v222 + v148);

    v154 = OUTLINED_FUNCTION_51_4();
    sub_237AC9A74(v154, 0xED000073736F6C5FLL, v153, &v223);

    if (*(&v224 + 1))
    {
      v155 = MEMORY[0x277D839F8];
      OUTLINED_FUNCTION_44_5();
      if (swift_dynamicCast())
      {
        *(&v224 + 1) = v155;
        v225 = &protocol witness table for Double;
        *&v223 = v226;
        v156 = OUTLINED_FUNCTION_76_3();
        sub_237B19FFC(v156, 0);
      }
    }

    else
    {
      sub_2379D9054(&v223, &qword_27DE9A998, &unk_237C0C100);
    }

    v157 = *(v152 + v148);

    v158 = OUTLINED_FUNCTION_49_0();
    sub_237AC9A74(v158, 0xEF73736F6C5F6E6FLL, v157, &v223);

    if (*(&v224 + 1))
    {
      v157 = MEMORY[0x277D839F8];
      OUTLINED_FUNCTION_44_5();
      if (swift_dynamicCast())
      {
        *(&v224 + 1) = v157;
        v225 = &protocol witness table for Double;
        *&v223 = v226;
        v159 = OUTLINED_FUNCTION_76_3();
        sub_237B19FFC(v159, 4);
      }
    }

    else
    {
      sub_2379D9054(&v223, &qword_27DE9A998, &unk_237C0C100);
    }

    v160 = MEMORY[0x277D839F8];
    OUTLINED_FUNCTION_89_1();
    sub_237AC9A74(0xD000000000000012, 0x8000000000000000, v157, &v223);

    if (*(&v224 + 1))
    {
      type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
      OUTLINED_FUNCTION_44_5();
      if (swift_dynamicCast())
      {
        v157 = v226;
        v161 = v160;
        v162 = v197;
        sub_237A347A4();
        sub_237A34D48(v162, v194);
        v164 = v163;
        v165 = v162;
        v160 = v161;
        (*(v198 + 8))(v165, v199);
        *(&v224 + 1) = v161;
        v225 = &protocol witness table for Double;
        *&v223 = v164;
        v166 = OUTLINED_FUNCTION_76_3();
        sub_237B19FFC(v166, 3);
      }
    }

    else
    {
      sub_2379D9054(&v223, &qword_27DE9A998, &unk_237C0C100);
    }

    OUTLINED_FUNCTION_89_1();
    sub_237AC9A74(0xD000000000000014, 0x8000000000000000, v157, &v223);

    if (*(&v224 + 1))
    {
      v167 = v160;
      type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
      OUTLINED_FUNCTION_44_5();
      v168 = swift_dynamicCast();
      v51 = v196;
      if (v168)
      {
        v169 = v197;
        sub_237A347A4();
        sub_237A34D48(v169, v194);
        v171 = v170;
        (*(v198 + 8))(v169, v199);
        *(&v224 + 1) = v167;
        v225 = &protocol witness table for Double;
        *&v223 = v171;
        v172 = OUTLINED_FUNCTION_76_3();
        sub_237B19FFC(v172, 5);
      }

      OUTLINED_FUNCTION_62_4();

      sub_2379D9054(v203, &qword_27DE9C080, &qword_237C0F360);
      OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_69_3();
      v173();
      OUTLINED_FUNCTION_4_29();
      sub_237A8D1A4(v219, v174);
      OUTLINED_FUNCTION_0_36();
      sub_237A8D1A4(v149, v175);
    }

    else
    {
      OUTLINED_FUNCTION_62_4();

      sub_2379D9054(v203, &qword_27DE9C080, &qword_237C0F360);
      OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_69_3();
      v176();
      OUTLINED_FUNCTION_4_29();
      sub_237A8D1A4(v219, v177);
      OUTLINED_FUNCTION_0_36();
      sub_237A8D1A4(v149, v178);
      sub_2379D9054(&v223, &qword_27DE9A998, &unk_237C0C100);
      v51 = v196;
    }

    OUTLINED_FUNCTION_52_6();
    return v51;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_237A8A638()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  v4 = v3;
  v5 = sub_237C05ADC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v18 = &v35 - v17;
  v19 = *v4;
  if (v19 == 2)
  {
    if (*(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model))
    {
      v22 = *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);

      sub_237B74974();
    }
  }

  else if (v19 == 1)
  {
    v88 = v16;
    v37 = v14;
    v38 = v15;
    v20 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
    OUTLINED_FUNCTION_55_5();
    v21 = *(v20 + 8);
    v59 = *v20;
    LOBYTE(v60) = v21;
    sub_2379DBCF4(v59, v21);
    sub_237C05A2C();
    MLDataTable.write(to:)(v18);
    if (v1)
    {
      (*(v88 + 8))(v18, v5);
      sub_2379DBC9C(v59, v60);
    }

    else
    {
      v36 = v20;
      v89 = *(v88 + 8);
      v89(v18, v5);
      sub_2379DBC9C(v59, v60);
      v23 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
      OUTLINED_FUNCTION_55_5();
      v24 = *(v23 + 8);
      v86 = *v23;
      v87 = v24;
      sub_2379DBCF4(v86, v24);
      sub_237C05A2C();
      MLDataTable.write(to:)(v13);
      v35 = v23;
      v89(v13, v5);
      sub_2379DBC9C(v86, v87);
      v25 = v38;
      OUTLINED_FUNCTION_51_4();
      sub_237C05A2C();
      LOBYTE(v59) = 1;
      *(&v59 + 1) = *v85;
      HIDWORD(v59) = *&v85[3];
      v60 = 44;
      v61 = 0xE100000000000000;
      v62 = 0;
      v63 = 0xE000000000000000;
      v64 = 92;
      v65 = 0xE100000000000000;
      v66 = 1;
      *v67 = *v84;
      *&v67[3] = *&v84[3];
      v68 = 34;
      v69 = 0xE100000000000000;
      v70 = 1;
      *v71 = *v83;
      *&v71[3] = *&v83[3];
      v72 = &unk_284ABEBF0;
      v73 = 10;
      v74 = 0xE100000000000000;
      v75 = 0;
      v76 = 0;
      v77 = 1;
      *v78 = *v82;
      *&v78[3] = *&v82[3];
      v79 = 0;
      MLDataTable.init(contentsOf:options:)(v25, &v59, &v80);
      v26 = v81;
      v27 = v36;
      v28 = *v36;
      v29 = *(v36 + 8);
      *v36 = v80;
      *(v27 + 8) = v26;
      sub_2379DBC9C(v28, v29);
      v30 = v37;
      OUTLINED_FUNCTION_49_0();
      sub_237C05A2C();
      v39 = 1;
      v40 = 44;
      v41 = 0xE100000000000000;
      v42 = 0;
      v43 = 0xE000000000000000;
      v44 = 92;
      v45 = 0xE100000000000000;
      v46 = 1;
      v47 = 34;
      v48 = 0xE100000000000000;
      v49 = 1;
      v50 = &unk_284ABEBF0;
      v51 = 10;
      v53 = 0;
      v54 = 0;
      v52 = 0xE100000000000000;
      v55 = 1;
      v56 = 0;
      MLDataTable.init(contentsOf:options:)(v30, &v39, &v57);
      v31 = v58;
      v32 = v35;
      v33 = *v35;
      v34 = *(v35 + 8);
      *v35 = v57;
      *(v32 + 8) = v31;
      sub_2379DBC9C(v33, v34);
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A8AAC0()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_86_2();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v15, v1, &qword_27DE9AC80, &unk_237C0F350);
  if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
  {
    sub_2379D9054(v1, &qword_27DE9AC80, &unk_237C0F350);
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2();
    *v16 = 0xD000000000000030;
    *(v16 + 8) = v0;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_7_21();
    sub_237A8D0EC(v1, v14, v17);
    sub_237A09988(v3);
    OUTLINED_FUNCTION_6_24();
    sub_237A8D1A4(v14, v18);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A8AEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v233 = sub_237C0602C();
  v27 = OUTLINED_FUNCTION_0(v233);
  v239 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v32 - v31);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C038, &qword_237C0F320);
  v33 = OUTLINED_FUNCTION_4(v237);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v37);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C040, &unk_237C14AA0);
  v38 = OUTLINED_FUNCTION_4(v236);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v43);
  v44 = sub_237C05DBC();
  v45 = OUTLINED_FUNCTION_0(v44);
  v241 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v50);
  v51 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v52 = OUTLINED_FUNCTION_4(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18_0();
  v57 = v55 - v56;
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v220 - v60;
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v220 - v63;
  MEMORY[0x28223BE20](v62);
  v66 = &v220 - v65;
  v67 = *(_s20PersistentParametersVMa_0() + 24);
  OUTLINED_FUNCTION_61_5();
  if (!v70)
  {
    *&v250 = v69;
    sub_237A20C10();
    OUTLINED_FUNCTION_67_3();
    v93 = OUTLINED_FUNCTION_32_7();
    v95 = v94;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v96 = xmmword_237C0F260;
LABEL_11:
    *(v96 + 16) = v26;
    *(v96 + 24) = v64;
    *(v96 + 32) = v93;
    *(v96 + 40) = v95;
    *(v96 + 48) = 3;
    swift_willThrow();
    goto LABEL_12;
  }

  v71 = *(v68 + 28);
  OUTLINED_FUNCTION_61_5();
  if (!v70)
  {
    v97 = 0x8000000237C19F30;
    *&v250 = v73;
    sub_237A20C10();
    OUTLINED_FUNCTION_67_3();
    v93 = OUTLINED_FUNCTION_32_7();
    v95 = v98;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_82_3();
LABEL_10:
    *v96 = v99;
    *(v96 + 8) = v97;
    goto LABEL_11;
  }

  v74 = *(v72 + 32);
  OUTLINED_FUNCTION_61_5();
  if (!v70)
  {
    v97 = 0x8000000237C19F50;
    *&v250 = v83;
    sub_237A20C10();
    OUTLINED_FUNCTION_67_3();
    v93 = OUTLINED_FUNCTION_32_7();
    v95 = v100;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_82_3();
    v99 = v101 + 2;
    goto LABEL_10;
  }

  v232 = v44;
  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(v75, v76, v77, v78, v79, v80, v81, v82, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);
  if (!v20)
  {
    v254 = BYTE8(v250);
    MLHandPoseClassifier.DataSource.imagesWithAnnotations()(v84, v85, v86, v87, v88, v89, v90, v91, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v250);
    v92 = 0;
    v229 = v250;
    HIDWORD(v230) = BYTE8(v250);
    *&v250 = v231;
    BYTE8(v250) = v254;
    v102 = &v250;
    if (MLDataTable.size.getter() >= 1)
    {
      *&v250 = v229;
      BYTE8(v250) = BYTE4(v230);
      if (MLDataTable.size.getter() >= 1)
      {
        *&v250 = v231;
        BYTE8(v250) = v254;
        sub_237A8C254(&v250);
        v103 = v229;
        *&v250 = v229;
        v104 = BYTE4(v230);
        BYTE8(v250) = BYTE4(v230);
        sub_237A8C254(&v250);
        v105 = OUTLINED_FUNCTION_37_0();
        sub_237AFE4F0(v105, v106);
        v108 = v107;

        if ((v108 & 1) == 0)
        {
          sub_2379E8AF0();
          v109 = OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_13_17(v109, v110);
        }

        sub_2379DBC9C(v103, v104);
        v111 = OUTLINED_FUNCTION_63_3();
LABEL_9:
        sub_2379DBC9C(v111, v112);
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_5_26();
    sub_237A8D148(v26, v66, v113);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v227 = 0;
      v228 = *v66;
      v102 = v66[8];
      v114 = *(v66 + 3);
      v224 = *(v66 + 2);
      v115 = *(v66 + 5);
      v225 = *(v66 + 4);
      v226 = v115;
      v116 = *(v66 + 7);

      OUTLINED_FUNCTION_5_26();
      sub_237A8D148(v24, v64, v117);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v118 = *v64;
        v119 = v64[8];
        v121 = *(v64 + 2);
        v120 = *(v64 + 3);
        v122 = *(v64 + 4);
        v123 = *(v64 + 5);
        v124 = *(v64 + 7);

        OUTLINED_FUNCTION_52_6();
        *&v250 = v125;
        LODWORD(v244) = v102;
        BYTE8(v250) = v102;
        v126 = v226;
        MLDataTable.subscript.getter();

        OUTLINED_FUNCTION_25_11();
        OUTLINED_FUNCTION_79_3();
        MLDataTable.subscript.getter();

        OUTLINED_FUNCTION_25_11();
        LOBYTE(v122) = sub_237AC762C(v126, v127);

        if (v122)
        {
          OUTLINED_FUNCTION_52_6();
          *&v250 = v128;
          BYTE8(v250) = v244;
          MLDataTable.subscript.getter();

          OUTLINED_FUNCTION_25_11();
          OUTLINED_FUNCTION_79_3();
          MLDataTable.subscript.getter();

          OUTLINED_FUNCTION_25_11();
          v130 = sub_237AC762C(v126, v129);

          if (v130)
          {
            OUTLINED_FUNCTION_12_19();
            sub_2379DBC9C(v118, v119);
            v131 = OUTLINED_FUNCTION_70_3();
            sub_2379DBC9C(v131, v244);
            goto LABEL_12;
          }
        }

        else
        {
        }

        sub_2379E8AF0();
        v189 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_13_17(v189, v190);
        sub_2379DBC9C(v118, v119);
        v191 = OUTLINED_FUNCTION_70_3();
        sub_2379DBC9C(v191, v244);
        sub_2379DBC9C(v229, SBYTE4(v230));
        v111 = v231;
        v112 = v254;
        goto LABEL_9;
      }

      v132 = OUTLINED_FUNCTION_70_3();
      sub_2379DBC9C(v132, v102);

      v92 = v227;
    }

    else
    {
      v64 = v66;
    }

    OUTLINED_FUNCTION_1_33();
    sub_237A8D1A4(v64, v133);
    OUTLINED_FUNCTION_5_26();
    sub_237A8D148(v26, v61, v134);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v227 = v92;
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v136 = &v61[v135[12]];
      v138 = *v136;
      v137 = v136[1];
      v224 = v138;
      v226 = v137;
      v139 = &v61[v135[16]];
      v140 = v139[1];
      v225 = *v139;
      v228 = v140;
      v141 = *&v61[v135[20] + 8];

      v142 = v241;
      v143 = *(v241 + 32);
      v144 = OUTLINED_FUNCTION_85_2(&a16);
      v145 = v61;
      v146 = v232;
      v143(v144, v145, v232);
      OUTLINED_FUNCTION_5_26();
      sub_237A8D148(v24, v57, v147);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v148 = (v57 + v135[12]);
        v150 = *v148;
        v149 = v148[1];
        v222 = v150;
        v223 = v149;
        v151 = (v57 + v135[16]);
        v152 = *v151;
        v153 = v151[1];
        v154 = *(v57 + v135[20] + 8);

        v155 = v240;
        v143(v240, v57, v146);
        v156 = v238;
        sub_237C05DFC();

        v157 = v236;
        v158 = v156 + *(v236 + 52);
        v159 = v155;
        sub_237C05DFC();

        v160 = v235;
        sub_2379FC864(v156, v235, &qword_27DE9C040, &unk_237C14AA0);
        v161 = v239 + 32;
        v162 = *(v239 + 32);
        v163 = OUTLINED_FUNCTION_85_2(&a11);
        v164 = v233;
        v162(v163, v160, v233);
        v165 = sub_237A8CBA0(&qword_27DE9C048);
        v166 = v243;
        sub_237C0885C();
        v167 = v160 + *(v157 + 52);
        v168 = v166;
        v239 = v161;
        v221 = v162;
        v162(v159, v167, v164);
        v169 = v237;
        v170 = (v166 + *(v237 + 52));
        v225 = v165;
        sub_237C0885C();
        v220 = *(v169 + 56);
        *(v166 + v220) = 0;
        v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C050, &unk_237C0F328);
        v171 = *(v228 + 36);
        v172 = sub_237A8CBA0(&qword_27DE9C058);
        while (1)
        {
          sub_237C08B5C();
          if (*&v168[v171] == v246)
          {
            sub_2379D9054(v238, &qword_27DE9C040, &unk_237C14AA0);
            goto LABEL_38;
          }

          v173 = sub_237C08B9C();
          v175 = OUTLINED_FUNCTION_85_1(v173, v174);
          sub_2379FC864(v175, &v248, &qword_27DE9A998, &unk_237C0C100);
          (v168)(&v246, 0);
          sub_237C08B6C();
          v176 = v164;
          OUTLINED_FUNCTION_52_6();
          v178 = *(v177 + 36);
          sub_237C08B5C();
          if (*&v170[v178] == v245[0])
          {
            break;
          }

          v179 = sub_237C08B9C();
          v181 = OUTLINED_FUNCTION_85_1(v179, v180);
          sub_2379FC864(v181, &v246, &qword_27DE9A998, &unk_237C0C100);
          (v170)(v245, 0);
          sub_237C08B6C();
          v250 = v248;
          v251 = v249;
          v252 = v246;
          v253 = v247;
          v182 = sub_237A8BFF8(&v250, &v252);
          sub_2379D9054(&v250, &qword_27DE9C060, &qword_237C0F338);
          v164 = v176;
          v168 = v243;
          if ((v182 & 1) == 0)
          {
            sub_2379D9054(v243, &qword_27DE9C038, &qword_237C0F320);
            sub_2379D9054(v238, &qword_27DE9C040, &unk_237C14AA0);

            sub_2379E8AF0();
            v183 = OUTLINED_FUNCTION_6_2();
            OUTLINED_FUNCTION_13_17(v183, v184);
            OUTLINED_FUNCTION_12_19();
            v185 = OUTLINED_FUNCTION_18_18();
            v172(v185);
            v186 = v242;
LABEL_43:
            (v172)(v186, v182);
            goto LABEL_12;
          }
        }

        sub_2379D9054(&v248, &qword_27DE9A998, &unk_237C0C100);
        sub_2379D9054(v238, &qword_27DE9C040, &unk_237C14AA0);
        v164 = v176;
        v168 = v243;
LABEL_38:
        v168[v220] = 1;
        sub_2379D9054(v168, &qword_27DE9C038, &qword_237C0F320);
        v192 = v234;
        v193 = v242;
        sub_237C05DFC();

        v194 = v236;
        v195 = v192 + *(v236 + 52);
        v196 = v240;
        sub_237C05DFC();

        v197 = v235;
        sub_2379FC864(v192, v235, &qword_27DE9C040, &unk_237C14AA0);
        v198 = OUTLINED_FUNCTION_85_2(&a11);
        v199 = v221;
        v221(v198, v197, v164);
        v200 = v244;
        sub_237C0885C();
        v199(v196, v197 + *(v194 + 52), v164);
        v201 = v237;
        v202 = &v200[*(v237 + 52)];
        sub_237C0885C();
        v243 = *(v201 + 56);
        v200[v243] = 0;
        OUTLINED_FUNCTION_52_6();
        v204 = *(v203 + 36);
        while (1)
        {
          sub_237C08B5C();
          v205 = v244;
          if (*&v244[v204] == v246)
          {
            sub_2379D9054(v234, &qword_27DE9C040, &unk_237C14AA0);
            goto LABEL_46;
          }

          v206 = sub_237C08B9C();
          v208 = OUTLINED_FUNCTION_85_1(v206, v207);
          sub_2379FC864(v208, &v248, &qword_27DE9A998, &unk_237C0C100);
          v205(&v246, 0);
          sub_237C08B6C();
          OUTLINED_FUNCTION_52_6();
          v210 = *(v209 + 36);
          v205 = v202;
          sub_237C08B5C();
          if (*&v202[v210] == v245[0])
          {
            break;
          }

          v211 = sub_237C08B9C();
          v213 = OUTLINED_FUNCTION_85_1(v211, v212);
          sub_2379FC864(v213, &v246, &qword_27DE9A998, &unk_237C0C100);
          (v202)(v245, 0);
          sub_237C08B6C();
          v250 = v248;
          v251 = v249;
          v252 = v246;
          v253 = v247;
          v182 = sub_237A8BFF8(&v250, &v252);
          sub_2379D9054(&v250, &qword_27DE9C060, &qword_237C0F338);
          v193 = v242;
          v214 = OUTLINED_FUNCTION_62_4();
          if ((v182 & 1) == 0)
          {
            sub_2379D9054(v214, &qword_27DE9C038, &qword_237C0F320);
            sub_2379D9054(v234, &qword_27DE9C040, &unk_237C14AA0);
            sub_2379E8AF0();
            v215 = OUTLINED_FUNCTION_6_2();
            OUTLINED_FUNCTION_13_17(v215, v216);
            OUTLINED_FUNCTION_12_19();
            v217 = OUTLINED_FUNCTION_18_18();
            v172(v217);
            v186 = v193;
            goto LABEL_43;
          }
        }

        sub_2379D9054(&v248, &qword_27DE9A998, &unk_237C0C100);
        sub_2379D9054(v234, &qword_27DE9C040, &unk_237C14AA0);
        v193 = v242;
LABEL_46:
        v218 = v244;
        v244[v243] = 1;
        sub_2379D9054(v218, &qword_27DE9C038, &qword_237C0F320);
        OUTLINED_FUNCTION_12_19();
        v219 = OUTLINED_FUNCTION_18_18();
        v172(v219);
        (v172)(v193, v205);
      }

      else
      {
        (*(v142 + 8))(v102, v146);
        OUTLINED_FUNCTION_12_19();
        OUTLINED_FUNCTION_70_3();

        OUTLINED_FUNCTION_1_33();
        sub_237A8D1A4(v57, v188);
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_19();
      OUTLINED_FUNCTION_1_33();
      sub_237A8D1A4(v61, v187);
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A8BFF8(uint64_t a1, uint64_t a2)
{
  sub_2379FC864(a1, v8, &qword_27DE9A998, &unk_237C0C100);
  if (v9)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    sub_2379D9054(v8, &qword_27DE9A998, &unk_237C0C100);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  sub_2379FC864(a2, v8, &qword_27DE9A998, &unk_237C0C100);
  if (v9)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    sub_2379D9054(v8, &qword_27DE9A998, &unk_237C0C100);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_2379FC864(&v16, v8, &qword_27DE9C068, &qword_237C0F340);
  sub_2379FC864(&v13, &v10, &qword_27DE9C068, &qword_237C0F340);
  if (!v9)
  {
    if (!*(&v11 + 1))
    {
      sub_2379D9054(v8, &qword_27DE9C068, &qword_237C0F340);
      v3 = 1;
      goto LABEL_16;
    }

LABEL_15:
    sub_2379D9054(v8, &qword_27DE9C070, &qword_237C0F348);
    v3 = 0;
    goto LABEL_16;
  }

  sub_2379FC864(v8, v7, &qword_27DE9C068, &qword_237C0F340);
  if (!*(&v11 + 1))
  {
    sub_2379E8F7C(v7);
    goto LABEL_15;
  }

  v5[0] = v10;
  v5[1] = v11;
  v6 = v12;
  v3 = MEMORY[0x2383DC9F0](v7, v5);
  sub_2379E8F7C(v5);
  sub_2379E8F7C(v7);
  sub_2379D9054(v8, &qword_27DE9C068, &qword_237C0F340);
LABEL_16:
  sub_2379D9054(&v13, &qword_27DE9C068, &qword_237C0F340);
  sub_2379D9054(&v16, &qword_27DE9C068, &qword_237C0F340);
  return v3 & 1;
}

uint64_t sub_237A8C254(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v68 = *a1;
  LOBYTE(v69) = v2;
  MLDataTable.subscript.getter();
  v3 = v72;
  if ((v72 & 1) != 0 || (v4 = OUTLINED_FUNCTION_47_7(), sub_2379DBCF4(v4, v5), sub_237A60248(&v73), v6 = OUTLINED_FUNCTION_47_7(), sub_2379DBC9C(v6, v7), v73 != 2))
  {
    v58 = v71;
LABEL_28:
    sub_2379DBC9C(v58, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    return sub_237C085AC();
  }

  v68 = v1;
  LOBYTE(v69) = v2;
  OUTLINED_FUNCTION_45_3();
  MLDataTable.subscript.getter();
  v3 = v72;
  if ((v72 & 1) != 0 || (v8 = OUTLINED_FUNCTION_3_22(), sub_2379DBCF4(v8, v9), sub_237A60248(&v73), v10 = OUTLINED_FUNCTION_3_22(), sub_2379DBC9C(v10, v11), v73 != 2))
  {
    v60 = OUTLINED_FUNCTION_47_7();
    sub_2379DBC9C(v60, v61);
    v58 = v71;
    goto LABEL_28;
  }

  v12 = v71[2];
  v13 = OUTLINED_FUNCTION_47_7();
  sub_2379DBCF4(v13, v14);
  v15 = sub_237A2F128();
  v16 = OUTLINED_FUNCTION_47_7();
  sub_2379DBC9C(v16, v17);
  if (v15 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v18 = 0;
  if (v15)
  {
    v19 = 0;
    v20 = MEMORY[0x277D84F98];
    v66 = v15;
    while (1)
    {
      v21 = OUTLINED_FUNCTION_3_22();
      sub_2379DBCF4(v21, v22);
      sub_237A607E0(v19, &v68);
      v23 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v23, v24);
      v26 = v68;
      v25 = v69;
      if (v70 != 2)
      {
        v27 = OUTLINED_FUNCTION_13_11();
        sub_2379E8CE8(v27, v28, v29);
        v26 = 0;
        v25 = 0xE000000000000000;
      }

      v30 = OUTLINED_FUNCTION_47_7();
      sub_2379DBCF4(v30, v31);
      sub_237A607E0(v19, &v68);
      v32 = OUTLINED_FUNCTION_47_7();
      sub_2379DBC9C(v32, v33);
      v34 = v69;
      if (v70 == 2)
      {
        v67 = v68;
      }

      else
      {
        sub_2379E8CE8(v68, v69, v70);
        v67 = 0;
        v34 = 0xE000000000000000;
      }

      sub_237A560B8(v18);
      swift_isUniquelyReferenced_nonNull_native();
      v68 = v20;
      v35 = OUTLINED_FUNCTION_13_11();
      v37 = sub_237ACAC78(v35, v36);
      if (__OFADD__(v20[2], (v38 & 1) == 0))
      {
        break;
      }

      v39 = v37;
      v40 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C030, &unk_237C14A90);
      v41 = sub_237C090AC();
      v20 = v68;
      if (v41)
      {
        v42 = OUTLINED_FUNCTION_13_11();
        v44 = sub_237ACAC78(v42, v43);
        if ((v40 & 1) != (v45 & 1))
        {
          goto LABEL_35;
        }

        v39 = v44;
      }

      if (v40)
      {
      }

      else
      {
        v20[(v39 >> 6) + 8] |= 1 << v39;
        v46 = (v20[6] + 16 * v39);
        *v46 = v26;
        v46[1] = v25;
        *(v20[7] + 8 * v39) = MEMORY[0x277D84F90];
        v47 = v20[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_33;
        }

        v20[2] = v49;
      }

      v50 = v20[7];
      v51 = *(v50 + 8 * v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + 8 * v39) = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = *(v51 + 16);
        sub_237BC0CB8();
        v51 = v56;
        *(v50 + 8 * v39) = v56;
      }

      v53 = *(v51 + 16);
      if (v53 >= *(v51 + 24) >> 1)
      {
        sub_237BC0CB8();
        v51 = v57;
        *(v50 + 8 * v39) = v57;
      }

      ++v19;
      *(v51 + 16) = v53 + 1;
      v54 = v51 + 16 * v53;
      *(v54 + 32) = v67;
      *(v54 + 40) = v34;
      v18 = sub_237A5D5F8;
      if (v66 == v19)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v20 = MEMORY[0x277D84F98];
LABEL_31:
  v62 = OUTLINED_FUNCTION_47_7();
  sub_2379DBC9C(v62, v63);
  v64 = OUTLINED_FUNCTION_3_22();
  sub_2379DBC9C(v64, v65);
  sub_237A560B8(v18);
  return v20;
}

uint64_t sub_237A8C650()
{
  OUTLINED_FUNCTION_2_35();
  sub_237A8D1A4(v0 + v1, v2);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9AC80, &unk_237C0F350);
  v3 = OUTLINED_FUNCTION_56_5((v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable));
  sub_2379DBC84(v3, v4);
  v5 = OUTLINED_FUNCTION_56_5((v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures));
  sub_2379DBC9C(v5, v6);
  v7 = OUTLINED_FUNCTION_56_5((v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures));
  sub_2379DBC9C(v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);

  v10 = *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);

  v11 = *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  return v0;
}

uint64_t sub_237A8C708()
{
  sub_237A8C650();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandPoseClassifierTrainingSessionDelegate()
{
  result = qword_27DE9C018;
  if (!qword_27DE9C018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A8C7B4()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_237A8C8BC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_237A8C8BC()
{
  if (!qword_27DE9C028)
  {
    _s20PersistentParametersVMa_0();
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9C028);
    }
  }
}

uint64_t sub_237A8C9A8()
{
  v2 = *v0;
  sub_237A88DF8();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_237A8CA5C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_237A89310(a1);
  v5 = *(v2 + 8);

  return v5(v4);
}

uint64_t sub_237A8CB30()
{
  v1 = *v0;
  sub_237A8A638();
  return v2 & 1;
}

uint64_t sub_237A8CBA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_237C0602C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237A8CBE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_237C0617C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 80);
  v11 = (v5 + v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  (*(v3 + 8))(v0 + v5, v1);
  v14 = v0 + v11;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v21 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v21);
        v23 = *(v22 + 8);
        v23(v0 + v11, v21);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        v23(v14 + v24[12], v21);
        OUTLINED_FUNCTION_105(v24[16]);

        OUTLINED_FUNCTION_105(v24[20]);

        OUTLINED_FUNCTION_105(v24[24]);

        v25 = v24[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v15 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v15);
        (*(v16 + 8))(v0 + v11);
        break;
      case 3u:
        sub_2379DBC9C(*v14, *(v14 + 8));
        v26 = *(v14 + 24);

        v27 = *(v14 + 40);

        v28 = *(v14 + 56);
        goto LABEL_10;
      case 4u:
        sub_2379DBC9C(*v14, *(v14 + 8));
        v17 = *(v14 + 24);

        v18 = *(v14 + 40);

        v19 = *(v14 + 56);

        v20 = *(v14 + 72);
        goto LABEL_10;
      case 5u:
        v29 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v29);
        (*(v30 + 8))(v0 + v11);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v31[12]);

        OUTLINED_FUNCTION_105(v31[16]);

        v25 = v31[20];
        goto LABEL_9;
      case 6u:
        v32 = sub_237C05DBC();
        OUTLINED_FUNCTION_4(v32);
        (*(v33 + 8))(v0 + v11);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_105(v34[12]);

        OUTLINED_FUNCTION_105(v34[16]);

        OUTLINED_FUNCTION_105(v34[20]);

        v25 = v34[24];
LABEL_9:
        OUTLINED_FUNCTION_105(v25);
LABEL_10:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v10 | 7);
}

uint64_t sub_237A8CFEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_237C0617C();
  OUTLINED_FUNCTION_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v7 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v16 = *(v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2379EB49C(a1, v2 + v15, v16, a2);
}

uint64_t sub_237A8D0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t sub_237A8D148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t sub_237A8D1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_12_19()
{
  sub_2379DBC9C(*(v0 - 392), *(v0 - 380));
  v1 = *(v0 - 376);
  v2 = *(v0 - 72);

  sub_2379DBC9C(v1, v2);
}

uint64_t OUTLINED_FUNCTION_13_17(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_18()
{
  v1 = *(*(v0 - 288) + 8);
  result = *(v0 - 296);
  v3 = *(v0 - 368);
  return result;
}

void OUTLINED_FUNCTION_25_11()
{
  v2 = *(v0 - 184);
  *(v0 - 224) = *(v0 - 192);
  *(v0 - 216) = v2;

  Array<A>.init(_:)(v0 - 224);
}

void OUTLINED_FUNCTION_30_10()
{

  sub_237B6DAB4();
}

void OUTLINED_FUNCTION_31_8()
{

  sub_237B6DAB4();
}

uint64_t OUTLINED_FUNCTION_32_7()
{
  *(v1 - 192) = v0;

  return sub_237C08DEC();
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_50_6()
{

  return sub_237C0929C();
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_56_5@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = *(a1 + 8);
  return result;
}

void OUTLINED_FUNCTION_66_4(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  v4 = *(v1 + 320);
  *v3 = *(v1 + 312);
  *(v3 + 8) = v4;
}

uint64_t OUTLINED_FUNCTION_67_3()
{

  return sub_237C08DEC();
}

unint64_t OUTLINED_FUNCTION_68_2()
{

  return sub_2379E8AF0();
}

uint64_t OUTLINED_FUNCTION_81_2()
{
  result = *v0;
  v4 = *(v0 + 8);
  *v0 = v1;
  *(v0 + 8) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_86_2()
{

  return _s20PersistentParametersVMa_0();
}

void OUTLINED_FUNCTION_87_2()
{

  sub_237B6DAB4();
}

void OUTLINED_FUNCTION_88_1()
{
  v2 = *(v0 - 464);
  v3 = *(v0 - 472);

  sub_2379DBC9C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_89_1()
{
  v3 = *(*(v1 - 232) + v0);
}

void OUTLINED_FUNCTION_90_2()
{

  sub_2379DBC84(v1, v0);
}

uint64_t OUTLINED_FUNCTION_91_1()
{
  v2 = *(v0 - 272);
}

void OUTLINED_FUNCTION_92_2()
{
  v2 = *(v0 + 632);
  v3 = *(v0 + 640);

  sub_2379DBC9C(v2, v3);
}

void sub_237A8D7E4(unint64_t *a1, uint64_t a2)
{
  v119 = a2;
  v90 = a1;
  v2 = sub_237C0873C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_237C0825C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v114 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = sub_237C05ADC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v89 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v89 - v27;
  v29 = type metadata accessor for MLTextClassifier.DataSource();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  sub_237A8E880(v119, v32 - v31);
  v34 = *(v18 + 32);
  v119 = v15;
  v34(v28, v33, v15);
  v35 = v115;
  sub_237A5CD94();
  if (v35)
  {
    (*(v18 + 8))(v28, v119);
    return;
  }

  v116 = v23;
  v94 = v18;
  v95 = v14;
  v109 = v6;
  v93 = v7;
  v97 = v26;
  v96 = *(v36 + 16);
  v89 = v28;
  if (v96)
  {
    OUTLINED_FUNCTION_9_20();
    v38 = v94;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B288, &qword_237C137F0);
    v38 = v94;
    v39 = *(v94 + 72);
    v40 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v23 = swift_allocObject();
    *(v23 + 1) = xmmword_237C0B660;
    (*(v38 + 16))(&v23[v40], v28, v119);
    v96 = *(v23 + 2);
    OUTLINED_FUNCTION_9_20();
  }

  v41 = 0;
  v112 = v38 + 16;
  v92 = v114 + 8;
  v106 = "are not properly constructed.";
  v42 = (v38 + 8);
  v115 = xmmword_237C0B660;
  v104 = MEMORY[0x277D84F90];
  v105 = MEMORY[0x277D84F90];
  v107 = (v38 + 8);
  v91 = v37;
LABEL_7:
  if (v41 == v96)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    *(inited + 32) = 1954047348;
    *(inited + 40) = 0xE400000000000000;
    v117 = v104;
    MEMORY[0x28223BE20](inited);
    *(&v89 - 2) = &v117;
    v71 = sub_237BBDC94(sub_2379F5678);
    v73 = v72;

    *(inited + 48) = v71;
    *(inited + 56) = v73 & 1;
    *(inited + 64) = 0x6C6562616CLL;
    *(inited + 72) = 0xE500000000000000;
    v117 = v105;
    MEMORY[0x28223BE20](v74);
    *(&v89 - 2) = &v117;
    v75 = sub_237BBDC94(sub_2379F57A0);
    v77 = v76;

    *(inited + 80) = v75;
    *(inited + 88) = v77 & 1;
    v78 = sub_237C085AC();
    sub_237B6CB9C(v78, &v117);
    v79 = v118;
    v80 = v90;
    *v90 = v117;
    *(v80 + 8) = v79;
    (*v42)(v89, v119);
    return;
  }

  if (v41 < *(v37 + 16))
  {
    v43 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v113 = *(v38 + 72);
    v111 = *(v38 + 16);
    v111(v23, v37 + v43 + v113 * v41, v119);
    v101 = sub_237C059DC();
    v45 = v44;
    sub_237C081FC();
    sub_237A5D3A4();
    v47 = v46;
    v48 = OUTLINED_FUNCTION_3_35();
    v49(v48);
    v50 = *(v47 + 16);
    if (!v50)
    {
      OUTLINED_FUNCTION_11_21();

      OUTLINED_FUNCTION_8_21();

      OUTLINED_FUNCTION_12_20();

      v117 = 0;
      v118 = 0xE000000000000000;
      sub_237C08EDC();

      v117 = 0xD000000000000019;
      v118 = 0x8000000237C1A100;
      v81 = v101;
      MEMORY[0x2383DC360](v101, v45);
      MEMORY[0x2383DC360](11815, 0xE200000000000000);
      v82 = v117;
      v83 = v118;
      sub_237C08C3C();
      sub_237BABE74(v82, v83);

      v117 = 0;
      v118 = 0xE000000000000000;
      sub_237C08EDC();

      v117 = 0xD000000000000019;
      v118 = 0x8000000237C1A100;
      MEMORY[0x2383DC360](v81, v45);

      MEMORY[0x2383DC360](11815, 0xE200000000000000);
      v84 = v117;
      v85 = v118;
      sub_2379E8AF0();
      swift_allocError();
      *v86 = v84;
      *(v86 + 8) = v85;
      *(v86 + 16) = 0u;
      *(v86 + 32) = 0u;
      *(v86 + 48) = 0;
      swift_willThrow();
      v87 = *v107;
      v88 = v119;
      (*v107)(v97, v119);
      v87(v89, v88);
      return;
    }

    v102 = 0;
    v51 = 0;
    v98 = v41 + 1;
    v108 = v50;
    v100 = v50 - 1;
    v52 = v47 + v43;
    v103 = v45;
    v110 = v47;
    v99 = v47 + v43;
    while (1)
    {
      v53 = v52 + v113 * v51;
      v54 = v51;
      if (v51 >= *(v47 + 16))
      {
        break;
      }

      ++v51;
      v111(v116, v53, v119);
      sub_237C0872C();
      v55 = sub_237C086AC();
      v57 = v56;
      OUTLINED_FUNCTION_11_21();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_22(&v120);
        v104 = v66;
      }

      v58 = *(v104 + 16);
      if (v58 >= *(v104 + 24) >> 1)
      {
        sub_237BC0CB8();
        v104 = v67;
      }

      v59 = v104;
      *(v104 + 16) = v58 + 1;
      v60 = v59 + 16 * v58;
      *(v60 + 32) = v55;
      *(v60 + 40) = v57;
      v61 = v103;

      OUTLINED_FUNCTION_8_21();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_22(&v121);
        v105 = v68;
      }

      v62 = *(v105 + 16);
      if (v62 >= *(v105 + 24) >> 1)
      {
        sub_237BC0CB8();
        v105 = v69;
      }

      v63 = *v42;
      (*v42)(v116, v119);
      v64 = v105;
      *(v105 + 16) = v62 + 1;
      v65 = v64 + 16 * v62;
      *(v65 + 32) = v101;
      *(v65 + 40) = v61;
      v102 = 1;
      v47 = v110;
      v52 = v99;
      if (v100 == v54)
      {

        v23 = v97;
        v63(v97, v119);
        v38 = v94;
        v37 = OUTLINED_FUNCTION_12_20();
        v41 = v98;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
}