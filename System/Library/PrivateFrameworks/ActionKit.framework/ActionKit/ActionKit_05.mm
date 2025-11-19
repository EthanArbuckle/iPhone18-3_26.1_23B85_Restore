uint64_t sub_23DEAE2B8(int64_t a1)
{
  v3 = sub_23E1FBBDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;
    sub_23E1FB7CC();
    v15 = sub_23E1FE50C();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      do
      {
        v21 = v10;
        v22 = v42 * v12;
        v39(v8, *(v9 + 48) + v42 * v12, v3);
        v23 = v9;
        v24 = v19;
        v25 = v23;
        v26 = *(v23 + 40);
        sub_23DEAEFA8(&qword_27E32CD30, 255, MEMORY[0x277CFC118]);
        v27 = sub_23E1FDADC();
        (*v20)(v8, v3);
        v28 = v27 & v24;
        v19 = v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v9 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v9 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v22 + v42;
        if (v42 * a1 < v22 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v21;
      }

      while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v36 = *(v9 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v38;
    ++*(v9 + 36);
  }

  return result;
}

void sub_23DEAE5B0(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  sub_23DEAE814(v4, v5);
  if (v2)
  {

    return;
  }

  if (v7)
  {
    sub_23DE4D8B0(v4);
LABEL_5:

    return;
  }

  v8 = v6;
  v26 = a1;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? sub_23E1FE6AC() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_5;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EF04DD0](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      v27 = v11;
      sub_23DEAC324(&v27, v5);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x23EF04DD0](v8, v4);
            v16 = MEMORY[0x23EF04DD0](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_45;
            }

            v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v17)
            {
              goto LABEL_46;
            }

            if (v9 >= v17)
            {
              goto LABEL_47;
            }

            v18 = *(v4 + 32 + 8 * v9);
            v15 = *(v4 + 32 + 8 * v8);
            v16 = v18;
          }

          v19 = v16;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = sub_23DF31CF4(v4);
            v20 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

          if ((v4 & 0x8000000000000000) != 0 || v20)
          {
            v4 = sub_23DF31CF4(v4);
            v21 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_39:
              __break(1u);

              return;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v9 >= *(v21 + 16))
          {
            goto LABEL_44;
          }

          v23 = v21 + 8 * v9;
          v24 = *(v23 + 32);
          *(v23 + 32) = v15;

          *v26 = v4;
        }

        v25 = __OFADD__(v8++, 1);
        if (v25)
        {
          goto LABEL_43;
        }
      }

      v25 = __OFADD__(v9++, 1);
      if (v25)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
}

void sub_23DEAE814(uint64_t a1, void *a2)
{
  v5 = sub_23DE4D8B0(a1);
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
LABEL_14:

      return;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v7 = MEMORY[0x23EF04DD0](v6, a1);
LABEL_6:
    v8 = v7;
    v12 = v7;
    sub_23DEAC324(&v12, a2);
    if (v2)
    {

      return;
    }

    v10 = v9;

    if (v10)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(a1 + 8 * v6 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_23DEAE918(void *a1)
{
  v2 = [a1 list];

  if (!v2)
  {
    return 0;
  }

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v3 = sub_23E1FDDEC();

  return v3;
}

uint64_t sub_23DEAE990(void *a1)
{
  v2 = [a1 automationType];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FDC1C();

  return v3;
}

unint64_t sub_23DEAEBEC()
{
  result = qword_27E32CD20;
  if (!qword_27E32CD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32C358, &qword_23E224150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CD20);
  }

  return result;
}

uint64_t sub_23DEAECA4()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE47040;
  v6 = OUTLINED_FUNCTION_50();

  return v7(v6);
}

uint64_t sub_23DEAED50()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23DE47040;

  return sub_23DEAD110(v3, v4, v5, v6);
}

uint64_t sub_23DEAEE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v5 = a2;
  v9 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v6 = v4 + 4;
  sub_23DE38DA8(0, &qword_27E32CD60, 0x277D7C0B8);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v3, v8);
  v8 = v3 - v8;
  if (v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v7 = v9 >> 62;
  if (!(v9 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_23E1FE6AC();
LABEL_6:
  if (__OFSUB__(result, v5))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_23DF31CF0(&v6[v5]);
  if (v7)
  {
    result = sub_23E1FE6AC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v8))
  {
    goto LABEL_18;
  }

  v4[2] = result + v8;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_23DEAEF4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_49();
  v9(v8);
  return a2;
}

uint64_t sub_23DEAEFA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_12()
{
  result = v0[137];
  v2 = v0[136];
  v3 = v0[133];
  v4 = v0[132];
  v5 = v0[131];
  v6 = v0[128];
  v7 = v0[127];
  v8 = v0[124];
  v9 = v0[123];
  v10 = v0[120];
  v11 = v0[119];
  v12 = v0[116];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1)
{
  *(a1 + 8) = sub_23DEA13CC;
  v2 = v1[136];
  v3 = v1[112];
  return v1[124];
}

uint64_t OUTLINED_FUNCTION_3_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_8()
{
  v1 = *(*(v0 - 416) + 8);
  result = *(v0 - 424);
  v3 = *(v0 - 368);
  return result;
}

void OUTLINED_FUNCTION_5_5()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[128];
  v5 = v0[127];
  v6 = v0[124];
  v7 = v0[123];
}

uint64_t OUTLINED_FUNCTION_7_5()
{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[118];
  __swift_storeEnumTagSinglePayload(v0[116], 0, 1, v0[117]);
  v4 = *(v3 + 32);
  return v1;
}

uint64_t OUTLINED_FUNCTION_8_3()
{
  v1[168] = v0;
  v2 = v1[136];
  v3 = v1[115];
  v4 = v1[113];
  v5 = *(v1[114] + 16);
  return v1[124];
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  v1 = v0[117];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[113];
  v5 = *(v0[118] + 96);
  return v0[119];
}

uint64_t OUTLINED_FUNCTION_11_3()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
  v3 = v1[94];
  __swift_project_boxed_opaque_existential_0(v1 + 90, v1[93]);

  return sub_23E1FBA4C();
}

uint64_t OUTLINED_FUNCTION_12_5()
{
  v1 = v0[138];
  result = v0[120];
  v3 = v0[119];
  v4 = v0[117];
  v5 = *(v0[118] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_3()
{
  v3 = *(v1 + 80);
  v4 = *(v2 + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  v1 = v0[59];
  __swift_project_boxed_opaque_existential_0(v0 + 55, v0[58]);

  return sub_23E1FBD6C();
}

uint64_t OUTLINED_FUNCTION_25_1(uint64_t result)
{
  *(result + 8) = sub_23DEA0560;
  v2 = *(v1 + 896);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v20[166] = v21;
  v20[165] = a1;
  v23 = v20[117];
  v24 = v20[116];

  sub_23DEA77EC(a1, (v20 + 55), (v20 + 90), a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_35_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  v1 = *(v0 - 216);
  v2 = *(*(v0 - 208) + 8);
  return *(v0 - 144);
}

int *OUTLINED_FUNCTION_38_3(int *result)
{
  v2 = result[12];
  v3 = result[16];
  *(v1 - 280) = result[20];
  return result;
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_42_2()
{
  v2 = v0[94];
  v3 = v0[93];

  return __swift_project_boxed_opaque_existential_0(v0 + 90, v3);
}

uint64_t OUTLINED_FUNCTION_55_2()
{
  result = v0;
  v3 = *(v1 - 320);
  return result;
}

void OUTLINED_FUNCTION_56_2(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 + *(a1 + 64));
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = sub_23DEA1010;
  v10 = *(v9 + 1088);
  v11 = *(v9 + 896);
  return a9;
}

uint64_t OUTLINED_FUNCTION_68_2(uint64_t result)
{
  *(result + 8) = sub_23DEA5FAC;
  v2 = *(v1 + 384);
  v3 = *(v1 + 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_2(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, v1);

  return sub_23E1FBA4C();
}

void OUTLINED_FUNCTION_73_1(uint64_t a1@<X8>)
{
  v1[12] = sub_23DEA2740;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_79_0()
{
  v3 = *(v0 + 920);
}

uint64_t OUTLINED_FUNCTION_80_0()
{
  v2 = v0[167];
  v3 = v0[166];
  v4 = v0[165];

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_84_0()
{
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[31];
}

uint64_t OUTLINED_FUNCTION_88_1()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 440));

  return __swift_destroy_boxed_opaque_existential_0((v0 + 720));
}

uint64_t OUTLINED_FUNCTION_93_1()
{
  v1 = *(*(v0 - 440) + 96);
  result = *(v0 - 472);
  v3 = *(v0 - 448);
  return result;
}

void *OUTLINED_FUNCTION_96_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = v2[4];
  v4 = v2[3];

  return __swift_project_boxed_opaque_existential_0(v2, v4);
}

uint64_t OUTLINED_FUNCTION_103_0(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, v1);

  return sub_23E1FBA4C();
}

uint64_t OUTLINED_FUNCTION_104_0()
{

  return sub_23E1FDBDC();
}

void OUTLINED_FUNCTION_105_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_117(uint64_t a1, uint64_t a2)
{
  *(v2 + 1304) = a2;
  v5 = *(v3 + 8);
  return v4;
}

BOOL OUTLINED_FUNCTION_118(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_119_0@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_125()
{
  v2 = v0[120];
  v3 = v0[119];
  v5 = v0[116];
  v6 = v0[115];
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return sub_23E1FE48C();
}

void OUTLINED_FUNCTION_148_0()
{
  v2 = *(v0 - 152);

  sub_23DEA55FC();
}

id OUTLINED_FUNCTION_149_0(id a1)
{
  *(v1 + 1336) = a1;
  *(v1 + 872) = a1;

  return a1;
}

uint64_t OUTLINED_FUNCTION_165_0(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_167_0()
{
  result = *(v0 - 432);
  v2 = *(v0 - 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_178_0()
{
  result = *(v0 - 488);
  v2 = *(v0 - 480);
  return result;
}

void OUTLINED_FUNCTION_183(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_184_0()
{
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[31];
}

id OUTLINED_FUNCTION_185_0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_186_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_187_0()
{

  return MEMORY[0x2821665E8]();
}

uint64_t OUTLINED_FUNCTION_188_0()
{
  v2 = *(v0 - 184);

  return MEMORY[0x282166638]();
}

uint64_t OUTLINED_FUNCTION_189_0()
{
  v2 = v0[60];
  v3 = v0[48];
  v4 = v0[43];
  v5 = v0[24];
}

uint64_t OUTLINED_FUNCTION_190_0()
{

  return sub_23E1FBC1C();
}

uint64_t OUTLINED_FUNCTION_191_0()
{
  v2 = *(v0 - 360);
}

uint64_t OUTLINED_FUNCTION_192()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_195_0()
{

  return swift_beginAccess();
}

id sub_23DEAFCF8()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E226720;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E2534E0;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v77 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v76 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = v19;
  v21 = sub_23E1FDABC();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 144) = v73;
  *(inited + 120) = v21;
  *(inited + 152) = sub_23E1FDBDC();
  v22 = MEMORY[0x277D839B0];
  *(inited + 160) = 1;
  v23 = *MEMORY[0x277D7CB20];
  *(inited + 184) = v22;
  *(inited + 192) = v23;
  *(inited + 200) = 1;
  v24 = *MEMORY[0x277D7CC18];
  *(inited + 224) = v22;
  *(inited + 232) = v24;
  v72 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v25 = swift_initStackObject();
  v75 = xmmword_23E222340;
  *(v25 + 16) = xmmword_23E222340;
  v26 = *MEMORY[0x277D7CC30];
  *(v25 + 32) = *MEMORY[0x277D7CC30];
  v27 = v23;
  v28 = v24;
  v29 = v26;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v30 = v3;
  v31 = [v77 bundleURL];
  v71[1] = v7;
  v71[2] = v30;
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v25 + 64) = v76;
  *(v25 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v34 = sub_23E1FDABC();
  v35 = v72;
  *(inited + 240) = sub_23DF3BE54(v34);
  v36 = *MEMORY[0x277D7CB28];
  *(inited + 264) = v35;
  *(inited + 272) = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 280) = &unk_285024108;
  v38 = *MEMORY[0x277D7CB50];
  *(inited + 304) = v37;
  *(inited + 312) = v38;
  v39 = v37;
  v72 = v37;
  *(inited + 320) = 0x736F746F6850;
  *(inited + 328) = 0xE600000000000000;
  v40 = *MEMORY[0x277D7CCC0];
  v41 = MEMORY[0x277D837D0];
  *(inited + 344) = MEMORY[0x277D837D0];
  *(inited + 352) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_23E222350;
  *(v42 + 32) = 0x656C7069746C754DLL;
  *(v42 + 40) = 0xE800000000000000;
  *(v42 + 48) = 1;
  v43 = MEMORY[0x277D839B0];
  *(v42 + 72) = MEMORY[0x277D839B0];
  strcpy((v42 + 80), "ParameterKey");
  *(v42 + 93) = 0;
  *(v42 + 94) = -5120;
  *(v42 + 96) = 0x736F746F6870;
  *(v42 + 104) = 0xE600000000000000;
  *(v42 + 120) = v41;
  *(v42 + 128) = 0x6465726975716552;
  *(v42 + 136) = 0xE800000000000000;
  *(v42 + 144) = 1;
  *(v42 + 168) = v43;
  *(v42 + 176) = 0x7365707954;
  v44 = v43;
  *(v42 + 216) = v39;
  *(v42 + 184) = 0xE500000000000000;
  *(v42 + 192) = &unk_285024138;
  v45 = v36;
  v46 = v38;
  v47 = v40;
  v48 = sub_23E1FDABC();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 360) = v48;
  v50 = *MEMORY[0x277D7CCC8];
  *(inited + 384) = v49;
  *(inited + 392) = v50;
  *(inited + 424) = v44;
  *(inited + 400) = 0;
  v51 = v50;
  *(inited + 432) = sub_23E1FDBDC();
  *(inited + 440) = 0xD000000000000054;
  *(inited + 448) = 0x800000023E2535B0;
  v52 = *MEMORY[0x277D7CB90];
  *(inited + 464) = v41;
  *(inited + 472) = v52;
  v53 = v52;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v54 = [v77 bundleURL];
  sub_23E1FBF9C();

  v55 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 480) = v56;
  v57 = *MEMORY[0x277D7CDD0];
  *(inited + 504) = v76;
  *(inited + 512) = v57;
  v58 = v57;
  v59 = MEMORY[0x277D837D0];
  v60 = sub_23E1FDABC();
  *(inited + 544) = v73;
  *(inited + 520) = v60;
  *(inited + 552) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v61 = swift_initStackObject();
  *(v61 + 16) = v75;
  *(v61 + 32) = 0x736F746F6870;
  *(v61 + 40) = 0xE600000000000000;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v62 = swift_allocObject();
  *(v62 + 16) = v75;
  v63 = *MEMORY[0x277D7CDF8];
  *(v62 + 64) = v59;
  *(v62 + 32) = v63;
  *(v62 + 40) = 0xD000000000000019;
  *(v62 + 48) = 0x800000023E24F180;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v64 = v63;
  v65 = sub_23E1FDABC();
  *(v61 + 48) = sub_23DF3BE9C(v65);
  v66 = sub_23E1FDABC();
  *(inited + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  *(inited + 560) = v66;
  v67 = *MEMORY[0x277D7CF20];
  *(inited + 592) = *MEMORY[0x277D7CF20];
  *(inited + 624) = v72;
  *(inited + 600) = &unk_2850241A8;
  v68 = v67;
  *(inited + 632) = sub_23E1FDBDC();
  *(inited + 664) = v59;
  *(inited + 640) = 0xD000000000000017;
  *(inited + 648) = 0x800000023E24DC80;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v69 = sub_23E1FDABC();
  return sub_23DF3BF9C(v69);
}

id sub_23DEB070C()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23E1FC1DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D7CB18];
  *(inited + 16) = xmmword_23E224420;
  v6 = *v5;
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = v6;
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E2536A0;
  v8 = *MEMORY[0x277D7CB80];
  v9 = v7;
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v10 = v6;
  v11 = v8;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = v9;
  *(inited + 144) = v9;
  *(inited + 120) = 1954047316;
  *(inited + 128) = 0xE400000000000000;
  v19 = v17;
  *(inited + 152) = sub_23E1FDBDC();
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 160) = 1;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 200) = 0xD000000000000057;
  *(inited + 208) = 0x800000023E253700;
  v20 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v9;
  *(inited + 232) = v20;
  v21 = v20;
  v22 = sub_23E1FDABC();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 264) = v39;
  *(inited + 240) = v22;
  *(inited + 272) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222370;
  *(v23 + 32) = 0x646E4970756F7267;
  *(v23 + 40) = 0xEA00000000007865;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222340;
  v25 = *MEMORY[0x277D7CE70];
  *(v24 + 64) = v18;
  *(v24 + 32) = v25;
  strcpy((v24 + 40), "WFGroupIndex");
  *(v24 + 53) = 0;
  *(v24 + 54) = -5120;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0);
  v26 = v25;
  v27 = sub_23E1FDABC();
  *(v23 + 48) = sub_23DF3BE9C(v27);
  *(v23 + 56) = 1701869940;
  *(v23 + 64) = 0xE400000000000000;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_23E222370;
  v29 = *MEMORY[0x277D7CE58];
  *(v28 + 32) = *MEMORY[0x277D7CE58];
  v30 = v29;
  *(v28 + 40) = sub_23E1FDABC();
  *(v28 + 64) = v39;
  *(v28 + 72) = v26;
  *(v28 + 104) = v18;
  strcpy((v28 + 80), "WFGetGroupType");
  *(v28 + 95) = -18;
  v31 = sub_23E1FDABC();
  *(v23 + 72) = sub_23DF3BE9C(v31);
  v32 = sub_23E1FDABC();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  v34 = MEMORY[0x277D7CB78];
  *(inited + 280) = v32;
  v35 = *v34;
  *(inited + 304) = v33;
  *(inited + 312) = v35;
  *(inited + 344) = MEMORY[0x277D839B0];
  *(inited + 320) = 1;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key);
  v36 = v35;
  v37 = sub_23E1FDABC();
  return sub_23DF3BF9C(v37);
}

id sub_23DEB0D88()
{
  v119 = sub_23E1FD89C();
  v116 = *(v119 - 8);
  v0 = *(v116 + 64);
  MEMORY[0x28223BE20](v119);
  v118 = &v108 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23E1FBFBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E1FC1DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v11 = *MEMORY[0x277D7CB18];
  v12 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x800000023E253790;
  v13 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = v11;
  v15 = v13;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v122 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v121 = v20;
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  v115 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222340;
  v23 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v24 = v21;
  v25 = v23;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v26 = v9;
  v27 = [v122 bundleURL];
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v29 = v26;
  sub_23DE477A0();
  *(v22 + 64) = v121;
  *(v22 + 40) = v30;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v31 = sub_23E1FDABC();
  v32 = v115;
  *(inited + 120) = sub_23DF3BE54(v31);
  v33 = *MEMORY[0x277D7CB50];
  *(inited + 144) = v32;
  *(inited + 152) = v33;
  *(inited + 160) = 0x657061706C6C6157;
  *(inited + 168) = 0xE900000000000072;
  v34 = *MEMORY[0x277D7CB90];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v34;
  v35 = v33;
  v36 = v34;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v37 = v122;
  v38 = [v122 bundleURL];
  v110 = v5;
  sub_23E1FBF9C();

  v39 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 200) = v40;
  v41 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v121;
  *(inited + 232) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_23E222380;
  *(v42 + 32) = 0x75736F6C63736944;
  *(v42 + 40) = 0xEF6C6576654C6572;
  *(v42 + 48) = 0x63696C627550;
  *(v42 + 56) = 0xE600000000000000;
  *(v42 + 72) = MEMORY[0x277D837D0];
  *(v42 + 80) = 0x614E74757074754FLL;
  *(v42 + 88) = 0xEA0000000000656DLL;
  v43 = v41;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v111 = v29;
  sub_23E1FC14C();
  v44 = [v37 bundleURL];
  sub_23E1FBF9C();

  v45 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v42 + 96) = v46;
  *(v42 + 120) = v121;
  *(v42 + 128) = 0x7365707954;
  *(v42 + 136) = 0xE500000000000000;
  *(v42 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v42 + 144) = &unk_285024278;
  v47 = MEMORY[0x277D837D0];
  v48 = sub_23E1FDABC();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 240) = v48;
  v50 = *MEMORY[0x277D7CBA0];
  *(inited + 264) = v49;
  *(inited + 272) = v50;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_23E2235B0;
  v114 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v51 = swift_initStackObject();
  v52 = MEMORY[0x277D7CDF8];
  *(v51 + 16) = xmmword_23E224710;
  v53 = *v52;
  *(v51 + 32) = *v52;
  *(v51 + 40) = 0xD000000000000016;
  *(v51 + 48) = 0x800000023E24FDA0;
  v54 = *MEMORY[0x277D7CE00];
  v55 = v47;
  *(v51 + 64) = v47;
  *(v51 + 72) = v54;
  *(v51 + 80) = 7105601;
  *(v51 + 88) = 0xE300000000000000;
  v56 = *MEMORY[0x277D7CE38];
  *(v51 + 104) = v55;
  *(v51 + 112) = v56;
  v109 = swift_allocObject();
  v112 = xmmword_23E2246F0;
  *(v109 + 16) = xmmword_23E2246F0;
  v57 = v50;
  v58 = v53;
  v59 = v54;
  v60 = v56;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v120 = inited;
  v61 = v122;
  v62 = [v122 bundleURL];
  sub_23E1FBF9C();

  v63 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v64 = v109;
  *(v109 + 32) = v65;
  sub_23E1FDCBC();
  v108 = v66;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v67 = [v61 bundleURL];
  sub_23E1FBF9C();

  v68 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v64 + 40) = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v51 + 120) = v64;
  v71 = *MEMORY[0x277D7CE70];
  *(v51 + 144) = v70;
  *(v51 + 152) = v71;
  strcpy((v51 + 160), "WFPosterType");
  *(v51 + 173) = 0;
  *(v51 + 174) = -5120;
  v72 = *MEMORY[0x277D7CE80];
  *(v51 + 184) = MEMORY[0x277D837D0];
  *(v51 + 192) = v72;
  v73 = v71;
  v74 = v72;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v75 = v122;
  v76 = [v122 bundleURL];
  sub_23E1FBF9C();

  v77 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v51 + 224) = v121;
  *(v51 + 200) = v78;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v79 = sub_23E1FDABC();
  v80 = sub_23DF3BE9C(v79);
  v81 = v115;
  *(v115 + 32) = v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v83 = v120;
  v120[35] = v81;
  v84 = *MEMORY[0x277D7CB98];
  v83[38] = v82;
  v83[39] = v84;
  v121 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v85 = swift_allocObject();
  *(v85 + 16) = v112;
  v86 = v84;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v87 = [v75 bundleURL];
  sub_23E1FBF9C();

  v88 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v90 = v89;
  v91 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v85 + 32) = sub_23DF34C40(0xD000000000000011, 0x800000023E253930, v90);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v92 = [v122 bundleURL];
  sub_23E1FBF9C();

  v93 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v95 = v94;
  v96 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v85 + 40) = sub_23DF34C40(0xD000000000000015, 0x800000023E253970, v95);
  v97 = v121;
  v98 = sub_23DF333E0();
  v99 = v120;
  v120[40] = v98;
  v100 = *MEMORY[0x277D7CF20];
  v99[43] = v97;
  v99[44] = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_23E222370;
  *(v101 + 56) = MEMORY[0x277D837D0];
  *(v101 + 32) = 0xD000000000000025;
  *(v101 + 40) = 0x800000023E252930;
  (*(v116 + 104))(v118, *MEMORY[0x277D732F8], v119);
  v102 = sub_23E1FC85C();
  v103 = objc_allocWithZone(v102);
  v104 = v100;
  v105 = sub_23E1FC84C();
  *(v101 + 88) = v102;
  *(v101 + 64) = v105;
  v99[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v99[45] = v101;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v106 = sub_23E1FDABC();
  return sub_23DF3BF9C(v106);
}

uint64_t sub_23DEB1C74()
{
  v0 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v0, qword_27E32CE10);
  __swift_project_value_buffer(v0, qword_27E32CE10);
  return sub_23E1FB8DC();
}

uint64_t static MusicItem.typeDisplayRepresentation.modify()
{
  if (qword_27E32B910 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FB8FC();
  __swift_project_value_buffer(v0, qword_27E32CE10);
  OUTLINED_FUNCTION_17_0();
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DEB1DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B910, MEMORY[0x277CBA3A0], qword_27E32CE10);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DEB1E78(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B910, MEMORY[0x277CBA3A0], qword_27E32CE10);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t MusicItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23E1FB7BC();
  return OUTLINED_FUNCTION_49();
}

uint64_t MusicItem.encodedParameters.getter()
{
  v1 = (v0 + *(type metadata accessor for MusicItem() + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_49();
  sub_23DE48FA8(v4, v5);
  return OUTLINED_FUNCTION_49();
}

uint64_t type metadata accessor for MusicItem()
{
  result = qword_280DAF418;
  if (!qword_280DAF418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicItem.displayRepresentation.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v11);
  v12 = sub_23E1FBF0C();
  v13 = OUTLINED_FUNCTION_12(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  v16 = sub_23E1FDBAC();
  v17 = OUTLINED_FUNCTION_25(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  sub_23E1FDB7C();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  v22 = OUTLINED_FUNCTION_9_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  v25 = *(type metadata accessor for MusicItem() + 24);
  v26 = sub_23E1FB75C();
  OUTLINED_FUNCTION_12(v26);
  (*(v27 + 16))(v7, v1 + v25, v26);
  OUTLINED_FUNCTION_12_6();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  return sub_23E1FB76C();
}

uint64_t sub_23DEB21D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51[8] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for MusicItem();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v10 = (v9 - v8);
  v11 = a1;
  v12 = sub_23DEB4C08(v11);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = [v11 icon];
    v49 = a2;
    if (v16 && (sub_23DEE1304(v16), v17 >> 60 != 15))
    {
      v23 = v10 + *(v4 + 24);
      sub_23E1FB73C();
    }

    else
    {
      v18 = v10 + *(v4 + 24);
      sub_23E1FB74C();
    }

    v24 = [v11 uniqueIdentifier];
    v25 = sub_23E1FDC1C();
    v27 = v26;

    *v10 = v25;
    v10[1] = v27;
    v10[2] = v14;
    v10[3] = v15;
    v28 = [v11 intent];
    v29 = [objc_allocWithZone(MEMORY[0x277D7C638]) initWithIntent_];

    v50 = v29;
    v30 = [objc_allocWithZone(MEMORY[0x277D7C640]) initWithValue_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2F8, &qword_23E226D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    strcpy((inited + 32), "WFMediaItems");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = [v30 serializedRepresentation];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C300, &unk_23E224090);
    OUTLINED_FUNCTION_16_6();
    sub_23E1FDABC();
    v32 = objc_opt_self();
    OUTLINED_FUNCTION_16_6();
    v33 = sub_23E1FDA9C();

    v51[0] = 0;
    v34 = [v32 archivedDataWithRootObject:v33 requiringSecureCoding:1 error:v51];

    v35 = v51[0];
    if (v34)
    {
      v36 = sub_23E1FBFDC();
      v38 = v37;

      v39 = (v10 + *(v4 + 28));
      *v39 = v36;
      v39[1] = v38;
      sub_23DEB3574(v10, v49);
      OUTLINED_FUNCTION_12_6();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
      result = sub_23DEB35D8(v10);
    }

    else
    {
      v44 = v35;
      sub_23E1FBECC();

      swift_willThrow();

      v45 = *(v4 + 24);
      v46 = sub_23E1FB75C();
      OUTLINED_FUNCTION_12(v46);
      result = (*(v47 + 8))(v10 + v45);
    }
  }

  else
  {

    v19 = OUTLINED_FUNCTION_9_4();
    result = __swift_storeEnumTagSinglePayload(v19, v20, v21, v4);
  }

  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23DEB2598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23DE4D8A8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23DEB2660@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DEB2688(uint64_t a1)
{
  v2 = sub_23DEB4C78(&qword_280DAEE48, type metadata accessor for MusicItem);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DEB2704(uint64_t a1)
{
  v2 = sub_23DEB4C78(&qword_280DAE430, type metadata accessor for MusicItem);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23DEB27A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE4D8D0;

  return EmptyMusicQuery.entities(for:)();
}

uint64_t sub_23DEB282C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_23DEB4490();
  *v6 = v2;
  v6[1] = sub_23DE4D8A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_23DEB28E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23DE47040;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_23DEB2994()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E1FC1DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_23E1FDBCC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v9, qword_27E32CE28);
  __swift_project_value_buffer(v9, qword_27E32CE28);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t static PlayMusicTopHitAction.title.modify()
{
  if (qword_27E32B918 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  __swift_project_value_buffer(v0, qword_27E32CE28);
  OUTLINED_FUNCTION_17_0();
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DEB2C74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B918, MEMORY[0x277CC9130], qword_27E32CE28);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DEB2D24(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B918, MEMORY[0x277CC9130], qword_27E32CE28);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static PlayMusicTopHitAction.attributionBundleIdentifier.getter()
{
  OUTLINED_FUNCTION_29_0();
  v0 = qword_27E32CE40;
  sub_23E1FB7BC();
  return v0;
}

uint64_t static PlayMusicTopHitAction.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  qword_27E32CE40 = a1;
  qword_27E32CE48 = a2;
}

uint64_t sub_23DEB2EC4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_27E32CE48;
  *a1 = qword_27E32CE40;
  a1[1] = v2;
  return sub_23E1FB7BC();
}

uint64_t sub_23DEB2F14(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27E32CE40 = v2;
  qword_27E32CE48 = v1;
  sub_23E1FB7BC();
}

uint64_t sub_23DEB2F78()
{
  v0 = sub_23E1FC7FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_23E1FC81C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v11 = *MEMORY[0x277D7CB68];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v11;
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x800000023E2539D0;
  type metadata accessor for Key(0);
  sub_23DEB4C78(&qword_280DAEDE0, type metadata accessor for Key);
  v12 = v11;
  sub_23E1FDABC();
  (*(v1 + 104))(v4, *MEMORY[0x277D7BF40], v0);
  v13 = objc_allocWithZone(sub_23E1FC83C());
  result = sub_23E1FC80C();
  qword_280DAF2F0 = result;
  return result;
}

uint64_t *sub_23DEB31B8()
{
  if (qword_280DAF2E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  return &qword_280DAF2F0;
}

id static PlayMusicTopHitAction.shortcutsMetadata.getter()
{
  if (qword_280DAF2E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  OUTLINED_FUNCTION_29_0();
  v0 = qword_280DAF2F0;

  return v0;
}

void static PlayMusicTopHitAction.shortcutsMetadata.setter(uint64_t a1)
{
  if (qword_280DAF2E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  swift_beginAccess();
  v2 = qword_280DAF2F0;
  qword_280DAF2F0 = a1;
}

uint64_t static PlayMusicTopHitAction.shortcutsMetadata.modify()
{
  if (qword_280DAF2E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  OUTLINED_FUNCTION_17_0();
  return OUTLINED_FUNCTION_28_0();
}

id sub_23DEB3334@<X0>(void *a1@<X8>)
{
  sub_23DEB31B8();
  swift_beginAccess();
  v2 = qword_280DAF2F0;
  *a1 = qword_280DAF2F0;

  return v2;
}

void sub_23DEB3394(id *a1)
{
  v1 = *a1;
  sub_23DEB31B8();
  swift_beginAccess();
  v2 = qword_280DAF2F0;
  qword_280DAF2F0 = v1;
}

uint64_t sub_23DEB3448(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for MusicItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DEB3574(a1, v7);
  v9[1] = *a2;
  sub_23E1FB7CC();
  PlayMusicTopHitAction.music.setter(v7);
}

uint64_t PlayMusicTopHitAction.music.setter(uint64_t a1)
{
  v3 = type metadata accessor for MusicItem();
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = *v1;
  sub_23DEB3574(a1, v9 - v8);
  sub_23E1FB5EC();
  return sub_23DEB35D8(a1);
}

uint64_t sub_23DEB3574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DEB35D8(uint64_t a1)
{
  v2 = type metadata accessor for MusicItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*PlayMusicTopHitAction.music.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_23E1FB5CC();
  return sub_23DE4ABC8;
}

uint64_t PlayMusicTopHitAction.init()@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v1 = sub_23E1FB84C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v8 = OUTLINED_FUNCTION_25(v7);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CE50, &qword_23E226740);
  OUTLINED_FUNCTION_25(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  v26 = sub_23E1FBF0C();
  v27 = OUTLINED_FUNCTION_12(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CE58, &qword_23E226748);
  sub_23E1FBEDC();
  sub_23E1FBEDC();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  v30 = type metadata accessor for MusicItem();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v30);
  v31 = sub_23E1FB51C();
  v32 = OUTLINED_FUNCTION_9_4();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v31);
  (*(v2 + 104))(v6, *MEMORY[0x277CBA308], v1);
  OUTLINED_FUNCTION_1_13();
  sub_23DEB4C78(v35, v36);
  result = sub_23E1FB61C();
  *v39 = result;
  return result;
}

uint64_t sub_23DEB39F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE47040;

  return PlayMusicTopHitAction.perform()(a1);
}

uint64_t sub_23DEB3A94(uint64_t a1)
{
  v2 = sub_23DEB47C0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t SuggestedMusicOptionsProvider.fetchResults()()
{
  OUTLINED_FUNCTION_23();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CE50, &qword_23E226740);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64) + 15;
  v0[19] = swift_task_alloc();
  v4 = type metadata accessor for MusicItem();
  v0[20] = v4;
  v5 = *(v4 - 8);
  v0[21] = v5;
  v6 = *(v5 + 64) + 15;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DEB3BD0, 0, 0);
}

uint64_t sub_23DEB3BD0()
{
  sub_23DEB40B8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = *MEMORY[0x277D7A548];
  v0[24] = *MEMORY[0x277D7A548];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DEB3D1C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C230, &qword_23E2239F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DE4B7DC;
  v0[13] = &block_descriptor_7;
  v0[14] = v3;
  [ObjCClassFromMetadata disambiguationEntriesForCollection:v2 limit:10 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DEB3D1C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 200) = v4;
  if (v4)
  {
    v5 = sub_23DE4B754;
  }

  else
  {
    v5 = sub_23DEB3E24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

char *sub_23DEB3E24()
{
  v1 = *(v0 + 144);

  sub_23E1FDF0C();
  v2 = sub_23DE4B898(v1);

  if (v2)
  {
    v3 = *(v0 + 168);
    result = sub_23DE4D8B0(v2);
    v5 = result;
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v5 == v6)
      {

        goto LABEL_18;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23EF04DD0](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        result = *(v2 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_23DEB21D0(result, *(v0 + 152));
      v9 = *(v0 + 152);
      if (__swift_getEnumTagSinglePayload(v9, 1, *(v0 + 160)) == 1)
      {
        result = sub_23DEB4248(v9);
        ++v6;
      }

      else
      {
        v29 = v3;
        v11 = *(v0 + 176);
        v10 = *(v0 + 184);
        sub_23DEB42B0(v9, v10);
        sub_23DEB42B0(v10, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = *(v7 + 16);
          OUTLINED_FUNCTION_12_6();
          sub_23DE4CB18(v15, v16, v17, v18);
          v7 = v19;
        }

        v3 = v29;
        v12 = *(v7 + 16);
        if (v12 >= *(v7 + 24) >> 1)
        {
          OUTLINED_FUNCTION_12_6();
          sub_23DE4CB18(v20, v21, v22, v23);
          v7 = v24;
        }

        v13 = *(v0 + 176);
        *(v7 + 16) = v12 + 1;
        result = sub_23DEB42B0(v13, v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v12);
        v6 = v8;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_18:
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 152);

    v28 = *(v0 + 8);

    return v28(v7);
  }

  return result;
}

unint64_t sub_23DEB40B8()
{
  result = qword_280DAE2F8;
  if (!qword_280DAE2F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DAE2F8);
  }

  return result;
}

uint64_t sub_23DEB4118()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23DE4D8B4;

  return SuggestedMusicOptionsProvider.fetchResults()();
}

uint64_t sub_23DEB41A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4BE7C;

  return sub_23DEC05E8();
}

uint64_t sub_23DEB4248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CE50, &qword_23E226740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DEB42B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DEB4314(uint64_t a1)
{
  result = sub_23DEB4C78(&qword_280DAE430, type metadata accessor for MusicItem);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DEB4490()
{
  result = qword_280DAE4C0;
  if (!qword_280DAE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE4C0);
  }

  return result;
}

unint64_t sub_23DEB45BC()
{
  result = qword_280DAF040;
  if (!qword_280DAF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF040);
  }

  return result;
}

unint64_t sub_23DEB4614()
{
  result = qword_280DAF038;
  if (!qword_280DAF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF038);
  }

  return result;
}

unint64_t sub_23DEB46B4()
{
  result = qword_280DAF050[0];
  if (!qword_280DAF050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DAF050);
  }

  return result;
}

unint64_t sub_23DEB4708()
{
  result = qword_280DAE3E8;
  if (!qword_280DAE3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E32CE70, qword_23E226A10);
    sub_23DEB4C78(&unk_280DAEE78, type metadata accessor for MusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE3E8);
  }

  return result;
}

unint64_t sub_23DEB47C0()
{
  result = qword_280DAF2C8;
  if (!qword_280DAF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2C8);
  }

  return result;
}

unint64_t sub_23DEB4818()
{
  result = qword_280DAF2C0;
  if (!qword_280DAF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2C0);
  }

  return result;
}

unint64_t sub_23DEB4870()
{
  result = qword_280DAF2D8;
  if (!qword_280DAF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2D8);
  }

  return result;
}

unint64_t sub_23DEB49BC(uint64_t a1)
{
  result = sub_23DEB49E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DEB49E4()
{
  result = qword_27E32CE90;
  if (!qword_27E32CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CE90);
  }

  return result;
}

unint64_t sub_23DEB4A3C()
{
  result = qword_280DAE458;
  if (!qword_280DAE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE458);
  }

  return result;
}

uint64_t sub_23DEB4AB8()
{
  result = sub_23E1FB75C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_23DEB4B5C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_23DEB4C08(void *a1)
{
  v2 = [a1 subtitle];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FDC1C();

  return v3;
}

uint64_t sub_23DEB4C78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_once();
}

id sub_23DEB4D90()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23E1FC1DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224420;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x800000023E253A30;
  v9 = *MEMORY[0x277D7CB10];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDABC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 80) = v12;
  v14 = *MEMORY[0x277D7CB80];
  *(inited + 104) = v13;
  *(inited + 112) = v14;
  v15 = v14;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v72 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v71 = v20;
  *(inited + 120) = v19;
  v21 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  v69 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222340;
  v23 = v5;
  v24 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v25 = v21;
  v26 = v24;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v27 = [v72 bundleURL];
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v29 = v23;
  sub_23DE477A0();
  v30 = v71;
  *(v22 + 64) = v71;
  *(v22 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v32 = sub_23E1FDABC();
  v33 = v69;
  *(inited + 160) = sub_23DF3BE54(v32);
  v34 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v33;
  *(inited + 192) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 200) = &unk_2850242E8;
  v36 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v35;
  *(inited + 232) = v36;
  v37 = v34;
  v38 = v36;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v68[1] = v29;
  sub_23E1FC14C();
  v39 = [v72 bundleURL];
  sub_23E1FBF9C();

  v40 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 240) = v41;
  v42 = *MEMORY[0x277D7CBA0];
  *(inited + 264) = v30;
  *(inited + 272) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_23E2235B0;
  v68[2] = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_23E222380;
  v44 = *MEMORY[0x277D7CDF8];
  *(v43 + 32) = *MEMORY[0x277D7CDF8];
  *(v43 + 40) = 0xD000000000000014;
  *(v43 + 48) = 0x800000023E24EAF0;
  v45 = *MEMORY[0x277D7CE70];
  v46 = MEMORY[0x277D837D0];
  *(v43 + 64) = MEMORY[0x277D837D0];
  *(v43 + 72) = v45;
  *(v43 + 80) = 0xD000000000000019;
  *(v43 + 88) = 0x800000023E253AE0;
  v47 = *MEMORY[0x277D7CE80];
  *(v43 + 104) = v46;
  *(v43 + 112) = v47;
  v48 = v42;
  v49 = v44;
  v50 = v45;
  v51 = v47;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v52 = [v72 bundleURL];
  sub_23E1FBF9C();

  v53 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v43 + 144) = v71;
  *(v43 + 120) = v54;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v55 = sub_23E1FDABC();
  v56 = sub_23DF3BE9C(v55);
  v57 = v69;
  *(v69 + 32) = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 280) = v57;
  v59 = *MEMORY[0x277D7CB98];
  *(inited + 304) = v58;
  *(inited + 312) = v59;
  v60 = v59;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v61 = [v72 bundleURL];
  sub_23E1FBF9C();

  v62 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v64 = v63;
  v65 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  *(inited + 344) = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 320) = v65;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v66 = sub_23E1FDABC();
  return sub_23DF3BF9C(v66);
}

uint64_t sub_23DEB5660(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_23E1FBE6C();
  v2[7] = v3;
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  v2[8] = OUTLINED_FUNCTION_42();
  v6 = sub_23E1FBE7C();
  v2[9] = v6;
  OUTLINED_FUNCTION_8(v6);
  v2[10] = v7;
  v9 = *(v8 + 64);
  v2[11] = OUTLINED_FUNCTION_42();
  v10 = sub_23E1FD11C();
  v2[12] = v10;
  OUTLINED_FUNCTION_8(v10);
  v2[13] = v11;
  v13 = *(v12 + 64);
  v2[14] = OUTLINED_FUNCTION_42();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEA8, &qword_23E226D90);
  OUTLINED_FUNCTION_25(v14);
  v16 = *(v15 + 64);
  v2[15] = OUTLINED_FUNCTION_42();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEB0, &qword_23E226D98);
  v2[16] = v17;
  OUTLINED_FUNCTION_25(v17);
  v19 = *(v18 + 64);
  v2[17] = OUTLINED_FUNCTION_42();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEB8, &qword_23E226DA0);
  v2[18] = v20;
  OUTLINED_FUNCTION_8(v20);
  v2[19] = v21;
  v23 = *(v22 + 64);
  v2[20] = OUTLINED_FUNCTION_42();
  v24 = sub_23E1FD03C();
  v2[21] = v24;
  OUTLINED_FUNCTION_8(v24);
  v2[22] = v25;
  v27 = *(v26 + 64);
  v2[23] = OUTLINED_FUNCTION_42();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEC0, &qword_23E226DA8);
  OUTLINED_FUNCTION_25(v28);
  v30 = *(v29 + 64);
  v2[24] = OUTLINED_FUNCTION_42();
  v31 = sub_23E1FD17C();
  v2[25] = v31;
  OUTLINED_FUNCTION_8(v31);
  v2[26] = v32;
  v34 = *(v33 + 64);
  v2[27] = OUTLINED_FUNCTION_42();
  v35 = sub_23E1FDEFC();
  OUTLINED_FUNCTION_25(v35);
  v37 = *(v36 + 64);
  v2[28] = OUTLINED_FUNCTION_42();
  v38 = sub_23E1FD19C();
  v2[29] = v38;
  OUTLINED_FUNCTION_8(v38);
  v2[30] = v39;
  v41 = *(v40 + 64);
  v2[31] = OUTLINED_FUNCTION_42();
  v42 = sub_23E1FBFBC();
  v2[32] = v42;
  OUTLINED_FUNCTION_8(v42);
  v2[33] = v43;
  v45 = *(v44 + 64);
  v2[34] = OUTLINED_FUNCTION_42();
  v46 = sub_23E1FC1DC();
  OUTLINED_FUNCTION_25(v46);
  v48 = *(v47 + 64);
  v2[35] = OUTLINED_FUNCTION_42();

  return MEMORY[0x2822009F8](sub_23DEB59D0, 0, 0);
}

uint64_t sub_23DEB59D0()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v32 = v0[32];
  v4 = v0[5];
  sub_23E1FD14C();
  sub_23E1FC19C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEC8, &qword_23E226DB0);
  v5 = sub_23E1FD0EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23E222340;
  (*(v6 + 104))(v9 + v8, *MEMORY[0x277CDC998], v5);
  sub_23DF20F38();
  v10 = sub_23E1FD12C();
  v0[36] = v10;
  (*(v3 + 16))(v2, v4, v32);
  v11 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v12 = sub_23DEB6838(v2);
  v0[37] = v12;
  v13 = v12;
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[28];
  v33 = v0[29];
  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[24];
  v20 = v0[25];
  sub_23E1FDEDC();
  (*(v18 + 104))(v17, *MEMORY[0x277CDCA58], v20);
  sub_23E1FD18C();
  sub_23E1FD1AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CED0, &qword_23E226DB8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23E222340;
  v22 = sub_23DEB6984(&qword_27E32CED8, MEMORY[0x277CDC9F0]);
  *(v21 + 32) = v10;
  *(v21 + 40) = v22;
  (*(v15 + 16))(v19, v14, v33);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v33);
  v23 = sub_23E1FD1CC();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = v13;
  sub_23E1FB7CC();
  v27 = sub_23E1FD1BC();
  v28 = *(MEMORY[0x277CDCA08] + 4);
  v29 = swift_task_alloc();
  v0[38] = v29;
  *v29 = v0;
  v29[1] = sub_23DEB5DF8;
  v30 = v0[24];

  return MEMORY[0x28212BBA0](v26, v21, v30, v27, 1, 0, 0);
}

uint64_t sub_23DEB5DF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_23DEB65EC;
  }

  else
  {
    v5 = sub_23DEB5F0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23DEB5F0C()
{
  v1 = *(v0 + 296);
  v2 = [v1 processingFormat];
  [v2 sampleRate];
  v4 = v3;

  v5 = [v1 length];
  v6 = v5 / v4;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x282200310](v5);
  }

  v7 = v5;
  v8 = *(v0 + 184);
  [*(v0 + 48) setTotalUnitCount_];
  v9 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v10 = sub_23E1FD02C();
  v11 = sub_23E1FE1AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218496;
    *(v12 + 4) = v4;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v7;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v6;
    _os_log_impl(&dword_23DE30000, v10, v11, "Transcribing audio file with sample rate: %f, number of samples: %lld, duration (secs): %f", v12, 0x20u);
    MEMORY[0x23EF074C0](v12, -1, -1);
  }

  v13 = *(v0 + 288);
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  v17 = *(v0 + 160);
  v16 = *(v0 + 168);
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);

  (*(v15 + 8))(v14, v16);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  sub_23E1FD13C();
  *(v0 + 328) = swift_getOpaqueTypeConformance2();
  sub_23E1FDF3C();
  v20 = *(v0 + 328);
  v21 = *(v0 + 144);
  v22 = *(v0 + 128);
  swift_getAssociatedConformanceWitness();
  v23 = *(MEMORY[0x277D856D8] + 4);
  v24 = swift_task_alloc();
  *(v0 + 336) = v24;
  *v24 = v0;
  v5 = OUTLINED_FUNCTION_1_14(v24);

  return MEMORY[0x282200310](v5);
}

uint64_t sub_23DEB617C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 24);

    v5 = sub_23DEB66FC;
  }

  else
  {
    v5 = sub_23DEB6294;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23DEB6294()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    (*(*(v0 + 104) + 32))(*(v0 + 112), v1, v2);
    if ((sub_23E1FD15C() & 1) == 0)
    {
      goto LABEL_10;
    }

    v16 = *(v0 + 112);
    MEMORY[0x23EF038E0]();
    v17 = sub_23E1FE35C();
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v19 = *(v0 + 112);
        v21 = *(v0 + 80);
        v20 = *(v0 + 88);
        v23 = *(v0 + 64);
        v22 = *(v0 + 72);
        v24 = *(v0 + 56);
        [*(v0 + 48) setCompletedUnitCount_];
        sub_23E1FD10C();
        sub_23E1FBE5C();
        (*(v21 + 8))(v20, v22);
        sub_23DEB6984(&qword_27E32CEE0, MEMORY[0x277CC8B30]);
        v25 = sub_23E1FDD6C();
        MEMORY[0x23EF044F0](v25);

LABEL_10:
        (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
        v26 = *(v0 + 328);
        v27 = *(v0 + 144);
        v28 = *(v0 + 128);
        swift_getAssociatedConformanceWitness();
        v29 = *(MEMORY[0x277D856D8] + 4);
        v30 = swift_task_alloc();
        *(v0 + 336) = v30;
        *v30 = v0;
        v17 = OUTLINED_FUNCTION_1_14();

        return MEMORY[0x282200310](v17);
      }

LABEL_15:
      __break(1u);
      return MEMORY[0x282200310](v17);
    }

    __break(1u);
    goto LABEL_15;
  }

  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v31 = *(v0 + 280);
  v32 = *(v0 + 272);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v8 = *(v0 + 232);
  v33 = *(v0 + 224);
  v34 = *(v0 + 216);
  v35 = *(v0 + 192);
  v36 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  v37 = *(v0 + 136);
  v38 = *(v0 + 112);
  v39 = *(v0 + 88);
  v40 = *(v0 + 64);

  (*(v9 + 8))(v10, v11);
  (*(v6 + 8))(v7, v8);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);

  v14 = *(v0 + 8);

  return v14(v12, v13);
}

uint64_t sub_23DEB65EC()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];

  (*(v4 + 8))(v3, v5);
  v6 = v0[40];
  OUTLINED_FUNCTION_2_12();

  v7 = v0[1];

  return v7();
}

uint64_t sub_23DEB66FC()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = v0[4];
  OUTLINED_FUNCTION_2_12();

  v11 = v0[1];

  return v11();
}

id sub_23DEB6838(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23E1FBF6C();
  v14[0] = 0;
  v5 = [v2 initForReading:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_23E1FBFBC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_23E1FBECC();

    swift_willThrow();
    v11 = sub_23E1FBFBC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_23DEB6984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{
  *(a1 + 8) = sub_23DEB617C;
  v2 = v1[20];
  v3 = v1[18];
  return v1[15];
}

uint64_t OUTLINED_FUNCTION_2_12()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[14];
  v13 = v0[11];
  v14 = v0[8];
}

id sub_23DEB6A7C()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23E1FC1DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E253BA0;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v66 = qword_280DAE278;
  v10 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v11 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v13 = v12;
  v65 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v13;
  v14 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v65;
  *(inited + 112) = v14;
  v63 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_23E222340;
  v16 = *MEMORY[0x277D7CC30];
  *(v15 + 32) = *MEMORY[0x277D7CC30];
  v17 = v14;
  v18 = v16;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v19 = [v66 bundleURL];
  sub_23E1FBF9C();

  v20 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v15 + 64) = v65;
  *(v15 + 40) = v21;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v22 = sub_23E1FDABC();
  *(inited + 120) = sub_23DF3BE54(v22);
  v23 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v63;
  *(inited + 152) = v23;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v24 = MEMORY[0x277D7CB48];
  *(inited + 160) = &unk_285024318;
  v25 = *v24;
  *(inited + 184) = v64;
  *(inited + 192) = v25;
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v26 = *MEMORY[0x277D7CB60];
  v27 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v26;
  v28 = MEMORY[0x277D7CB58];
  strcpy((inited + 240), "clipboard.fill");
  *(inited + 255) = -18;
  v29 = *v28;
  *(inited + 264) = v27;
  *(inited + 272) = v29;
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  v30 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v27;
  *(inited + 312) = v30;
  v31 = v23;
  v32 = v25;
  v33 = v26;
  v34 = v29;
  v35 = v30;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v36 = [v66 bundleURL];
  sub_23E1FBF9C();

  v37 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 320) = v38;
  v39 = *MEMORY[0x277D7CDD0];
  *(inited + 344) = v65;
  *(inited + 352) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_23E222380;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x277D839B0];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  *(v40 + 80) = 0x614E74757074754FLL;
  *(v40 + 88) = 0xEA0000000000656DLL;
  v42 = v39;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v43 = [v66 bundleURL];
  sub_23E1FBF9C();

  v44 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v40 + 96) = v45;
  *(v40 + 120) = v65;
  *(v40 + 128) = 0x7365707954;
  *(v40 + 168) = v64;
  *(v40 + 136) = 0xE500000000000000;
  *(v40 + 144) = &unk_285024348;
  v46 = sub_23E1FDABC();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 360) = v46;
  v48 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v47;
  *(inited + 392) = v48;
  v49 = v48;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v50 = [v66 bundleURL];
  sub_23E1FBF9C();

  v51 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v53 = v52;
  v54 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v55 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 400) = v54;
  v56 = *MEMORY[0x277D7CF20];
  *(inited + 424) = v55;
  *(inited + 432) = v56;
  v57 = MEMORY[0x277D7CBB8];
  *(inited + 440) = &unk_285024378;
  v58 = *v57;
  *(inited + 464) = v64;
  *(inited + 472) = v58;
  *(inited + 504) = MEMORY[0x277D839B0];
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key);
  v59 = v56;
  v60 = v58;
  v61 = sub_23E1FDABC();
  return sub_23DF3BF9C(v61);
}

id sub_23DEB736C()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x800000023E253D00;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v94 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v93 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = v19;
  v21 = sub_23E1FDABC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v21;
  v23 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v22;
  *(inited + 152) = v23;
  v90 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222340;
  v25 = v7;
  v26 = *MEMORY[0x277D7CC30];
  *(v24 + 32) = *MEMORY[0x277D7CC30];
  v27 = v23;
  v28 = v26;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v86[1] = v25;
  sub_23E1FC14C();
  v29 = [v94 bundleURL];
  sub_23E1FBF9C();

  v30 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v31 = v93;
  *(v24 + 64) = v93;
  *(v24 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v33 = sub_23E1FDABC();
  v34 = v90;
  *(inited + 160) = sub_23DF3BE54(v33);
  v35 = *MEMORY[0x277D7CCC0];
  *(inited + 184) = v34;
  *(inited + 192) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v36 = swift_initStackObject();
  v87 = xmmword_23E222350;
  *(v36 + 16) = xmmword_23E222350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x277D839B0];
  *(v36 + 48) = 0;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x746E6576454657;
  *(v36 + 104) = 0xE700000000000000;
  *(v36 + 120) = MEMORY[0x277D837D0];
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v36 + 216) = v90;
  *(v36 + 192) = &unk_2850243E8;
  v38 = v35;
  v39 = sub_23E1FDABC();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 200) = v39;
  v41 = *MEMORY[0x277D7CCC8];
  *(inited + 224) = v40;
  *(inited + 232) = v41;
  *(inited + 240) = 1;
  v42 = *MEMORY[0x277D7CB88];
  *(inited + 264) = v37;
  *(inited + 272) = v42;
  *(inited + 280) = 1;
  v43 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v37;
  *(inited + 312) = v43;
  v44 = v41;
  v45 = v42;
  v46 = v43;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v47 = [v94 bundleURL];
  v92 = v3;
  sub_23E1FBF9C();

  v48 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 320) = v49;
  v50 = *MEMORY[0x277D7CBA0];
  *(inited + 344) = v31;
  *(inited + 352) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_23E2235B0;
  v88 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v51 = swift_initStackObject();
  *(v51 + 16) = v87;
  v52 = *MEMORY[0x277D7CDF8];
  *(v51 + 32) = *MEMORY[0x277D7CDF8];
  *(v51 + 40) = 0xD000000000000019;
  *(v51 + 48) = 0x800000023E24F180;
  v53 = *MEMORY[0x277D7CE70];
  v54 = MEMORY[0x277D837D0];
  *(v51 + 64) = MEMORY[0x277D837D0];
  *(v51 + 72) = v53;
  *(v51 + 80) = 0x746E6576454657;
  *(v51 + 88) = 0xE700000000000000;
  v55 = *MEMORY[0x277D7CE80];
  *(v51 + 104) = v54;
  *(v51 + 112) = v55;
  v56 = v50;
  v57 = v52;
  v58 = v53;
  v59 = v55;
  *&v87 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v60 = v94;
  v61 = [v94 bundleURL];
  sub_23E1FBF9C();

  v62 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v51 + 120) = v63;
  v64 = *MEMORY[0x277D7CEA8];
  v65 = v93;
  *(v51 + 144) = v93;
  *(v51 + 152) = v64;
  v66 = v64;
  *&v87 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v67 = [v60 bundleURL];
  sub_23E1FBF9C();

  v68 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v51 + 184) = v65;
  *(v51 + 160) = v69;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v70 = sub_23E1FDABC();
  v71 = sub_23DF3BE9C(v70);
  v72 = v89;
  *(v89 + 32) = v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 360) = v72;
  v74 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v73;
  *(inited + 392) = v74;
  v75 = v74;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v76 = [v94 bundleURL];
  sub_23E1FBF9C();

  v77 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v79 = v78;
  v80 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v81 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 400) = v80;
  v82 = *MEMORY[0x277D7CF20];
  *(inited + 424) = v81;
  *(inited + 432) = v82;
  *(inited + 464) = v90;
  *(inited + 440) = &unk_285024438;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v83 = v82;
  v84 = sub_23E1FDABC();
  return sub_23DF3BF9C(v84);
}

void static ControlCenterOperation.typeDisplayRepresentation.getter()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_7();
  v5 = sub_23E1FBEEC();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v11 = sub_23E1FC1DC();
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = OUTLINED_FUNCTION_11_4();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_9_5();
  v19 = sub_23E1FBF0C();
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v8 + 104))(v0, *MEMORY[0x277CC9110], v5);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

void static ControlCenterOperation.caseDisplayRepresentations.getter()
{
  OUTLINED_FUNCTION_90();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_7(v4, v59[0]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  v65 = v59 - v9;
  v10 = sub_23E1FBEEC();
  v68 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v16 = sub_23E1FC1DC();
  v17 = OUTLINED_FUNCTION_25(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  v20 = OUTLINED_FUNCTION_11_4();
  v21 = OUTLINED_FUNCTION_25(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v26 = v25 - v24;
  v67 = sub_23E1FBF0C();
  v27 = OUTLINED_FUNCTION_12(v67);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEE8, &qword_23E226DC0);
  v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CEF0, &qword_23E226DC8) - 8);
  v31 = *v30;
  v69 = *(*v30 + 72);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  v66 = v33;
  *(v33 + 16) = xmmword_23E222380;
  v34 = (v33 + v32);
  v64 = v30[14];
  *v34 = 0;
  v59[1] = v26;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v35 = *MEMORY[0x277CC9110];
  v70 = *(v11 + 104);
  v71 = v11 + 104;
  v60 = v15;
  v63 = v35;
  v70(v15, v35, v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  v36 = v67;
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v67);
  v61 = sub_23E1FB75C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v62 = v34;
  OUTLINED_FUNCTION_12_7();
  v64 = v30[14];
  v34[v69] = 1;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v44 = v60;
  v70(v60, v35, v68);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v36);
  OUTLINED_FUNCTION_18_0();
  v48 = v61;
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v61);
  OUTLINED_FUNCTION_12_7();
  v52 = v30[14];
  v62[2 * v69] = 2;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v70(v44, v63, v68);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v67);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v48);
  OUTLINED_FUNCTION_12_7();
  sub_23E1FB77C();
  sub_23DEB8554();
  sub_23E1FDABC();
  OUTLINED_FUNCTION_76();
}

unint64_t sub_23DEB8554()
{
  result = qword_280DAE908;
  if (!qword_280DAE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE908);
  }

  return result;
}

ActionKit::ControlCenterOperation_optional __swiftcall ControlCenterOperation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E1FE6EC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ControlCenterOperation.rawValue.getter()
{
  v1 = 1701079400;
  if (*v0 != 1)
  {
    v1 = 0x656C67676F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2003789939;
  }
}

unint64_t sub_23DEB8668()
{
  result = qword_280DAE900;
  if (!qword_280DAE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE900);
  }

  return result;
}

uint64_t sub_23DEB86E0@<X0>(uint64_t *a1@<X8>)
{
  result = ControlCenterOperation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23DEB8760()
{
  result = qword_280DAE940;
  if (!qword_280DAE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE940);
  }

  return result;
}

unint64_t sub_23DEB87B8()
{
  result = qword_280DAE918;
  if (!qword_280DAE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE918);
  }

  return result;
}

unint64_t sub_23DEB8810()
{
  result = qword_280DAE8F8;
  if (!qword_280DAE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE8F8);
  }

  return result;
}

unint64_t sub_23DEB8868()
{
  result = qword_280DAE928;
  if (!qword_280DAE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE928);
  }

  return result;
}

unint64_t sub_23DEB88BC()
{
  result = qword_280DAE920;
  if (!qword_280DAE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE920);
  }

  return result;
}

unint64_t sub_23DEB8910()
{
  result = qword_280DAE938;
  if (!qword_280DAE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE938);
  }

  return result;
}

unint64_t sub_23DEB8968()
{
  result = qword_280DAE930;
  if (!qword_280DAE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE930);
  }

  return result;
}

unint64_t sub_23DEB8A10()
{
  result = qword_27E32CF08;
  if (!qword_27E32CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CF08);
  }

  return result;
}

uint64_t sub_23DEB8A64(uint64_t a1)
{
  v2 = sub_23DEB8A10();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DEB8AB4()
{
  result = qword_280DAE910;
  if (!qword_280DAE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE910);
  }

  return result;
}

unint64_t sub_23DEB8B0C()
{
  result = qword_280DAE8F0;
  if (!qword_280DAE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE8F0);
  }

  return result;
}

uint64_t sub_23DEB8B68(uint64_t a1)
{
  v2 = sub_23DEB8968();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DEB8BB8()
{
  result = qword_280DAEA70;
  if (!qword_280DAEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA70);
  }

  return result;
}

unint64_t sub_23DEB8C10()
{
  result = qword_280DAEA80;
  if (!qword_280DAEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA80);
  }

  return result;
}

uint64_t sub_23DEB8C9C()
{
  v0 = sub_23E1FBEEC();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = sub_23E1FC1DC();
  v10 = OUTLINED_FUNCTION_25(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v13 = sub_23E1FDBCC();
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v3 + 104))(v8, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

void sub_23DEB8E14()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_7();
  v7 = sub_23E1FBEEC();
  v8 = OUTLINED_FUNCTION_6_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v13 = sub_23E1FC1DC();
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  v17 = OUTLINED_FUNCTION_11_4();
  v18 = OUTLINED_FUNCTION_25(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_9_5();
  v21 = sub_23E1FBF0C();
  v22 = OUTLINED_FUNCTION_12(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v10 + 104))(v0, *MEMORY[0x277CC9110], v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  sub_23E1FB69C();
  v28 = sub_23E1FB67C();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v28);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DEB9034()
{
  v1 = sub_23E1FC7FC();
  v2 = OUTLINED_FUNCTION_6_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_7();
  sub_23E1FC82C();
  v14 = sub_23E1FC81C();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v14);
  (*(v4 + 104))(v9, *MEMORY[0x277D7BF40], v1);
  type metadata accessor for Key(0);
  sub_23DEBA1DC(&qword_280DAEDE0, type metadata accessor for Key);
  sub_23E1FDABC();
  v15 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DEB91FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF30, &qword_23E227218);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF38, &qword_23E227220);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_7();
  sub_23DEBA170();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF40, &qword_23E227250);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FB7DC();
}

uint64_t sub_23DEB9388()
{
  OUTLINED_FUNCTION_23();
  v0[19] = v1;
  v0[20] = v2;
  v3 = sub_23E1FD03C();
  v0[21] = v3;
  v4 = *(v3 - 8);
  v0[22] = v4;
  v5 = *(v4 + 64) + 15;
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DEB9444, 0, 0);
}

uint64_t sub_23DEB9444()
{
  v1 = *(v0 + 160);
  sub_23E1FB5DC();
  v2 = *(v0 + 208);
  v3 = [objc_opt_self() sharedInstance];
  *(v0 + 192) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 209;
  *(v0 + 24) = sub_23DEB959C;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1C0, &unk_23E227208);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23DECD2D0;
  *(v0 + 104) = &block_descriptor_8;
  *(v0 + 112) = v4;
  [v3 handleControlCenterOperationType:v2 + 1 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23DEB959C()
{
  OUTLINED_FUNCTION_23();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_23DEB971C;
  }

  else
  {
    v3 = sub_23DEB96A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DEB96A8()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);

  sub_23E1FB54C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23DEB971C()
{
  v31 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  swift_willThrow();

  v5 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  sub_23E1FB7CC();
  v6 = v2;
  v7 = sub_23E1FD02C();
  v8 = sub_23E1FE1BC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 176);
    v29 = *(v0 + 184);
    v11 = *(v0 + 160);
    v12 = *(v0 + 168);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30[0] = v14;
    *v13 = 136315394;
    sub_23E1FB5DC();
    *(v0 + 211) = *(v0 + 210);
    v15 = sub_23E1FDC7C();
    v17 = sub_23DE56B40(v15, v16, v30);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v0 + 144) = v9;
    v18 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
    v19 = sub_23E1FDC7C();
    v21 = sub_23DE56B40(v19, v20, v30);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_23DE30000, v7, v8, "Error running Control Center operation %s %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF074C0](v14, -1, -1);
    MEMORY[0x23EF074C0](v13, -1, -1);

    (*(v10 + 8))(v29, v12);
  }

  else
  {
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v24 = *(v0 + 168);

    (*(v23 + 8))(v22, v24);
  }

  v25 = *(v0 + 200);
  v26 = *(v0 + 184);
  sub_23E1FB3FC();
  sub_23DEBA1DC(&qword_27E32CF28, MEMORY[0x277CB9BB0]);
  swift_allocError();
  sub_23E1FB3EC();
  swift_willThrow();

  v27 = *(v0 + 8);

  return v27();
}

void sub_23DEB99F4()
{
  OUTLINED_FUNCTION_90();
  v1 = sub_23E1FB84C();
  v2 = OUTLINED_FUNCTION_6_0(v1);
  v50 = v3;
  v51 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v49 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v9 = OUTLINED_FUNCTION_25(v8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v48[3] = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48[2] = v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_7(v19, v48[0]);
  v20 = sub_23E1FBEEC();
  v21 = OUTLINED_FUNCTION_6_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_9_5();
  v26 = sub_23E1FC1DC();
  v27 = OUTLINED_FUNCTION_25(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  v30 = sub_23E1FDBCC();
  v31 = OUTLINED_FUNCTION_25(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15();
  v34 = sub_23E1FBF0C();
  v35 = OUTLINED_FUNCTION_12(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15();
  v48[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF20, &qword_23E2271F8);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v38 = *MEMORY[0x277CC9110];
  v39 = *(v23 + 104);
  v39(v0, v38, v20);
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v39(v0, v38, v20);
  v40 = v48[1];
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v34);
  v52 = 0;
  v41 = sub_23E1FB51C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v41);
  (*(v50 + 104))(v49, *MEMORY[0x277CBA308], v51);
  sub_23DEB8A10();
  sub_23E1FB60C();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DEB9E04()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DEB9EA4;

  return sub_23DEB9388();
}

uint64_t sub_23DEB9EA4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23DEB9FC0(uint64_t a1)
{
  v2 = sub_23DEBA170();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t getEnumTagSinglePayload for ControlCenterOperation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ControlCenterOperation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23DEBA170()
{
  result = qword_280DAEA78;
  if (!qword_280DAEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA78);
  }

  return result;
}

uint64_t sub_23DEBA1DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_23E1FDBCC();
}

uint64_t OUTLINED_FUNCTION_12_7()
{

  return sub_23E1FB76C();
}

id sub_23DEBA2CC()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v132 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v147 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E24EED0;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = inited;
  v11 = v7;
  v12 = v9;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v154 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v152 = v17;
  v10[10] = v16;
  v18 = *MEMORY[0x277D7CB10];
  v10[13] = v17;
  v10[14] = v18;
  v19 = v18;
  v20 = sub_23E1FDABC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v153 = v10;
  v10[15] = v20;
  v22 = *MEMORY[0x277D7CC18];
  v10[18] = v21;
  v10[19] = v22;
  v150 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  v151 = xmmword_23E222370;
  *(v23 + 16) = xmmword_23E222370;
  v24 = *MEMORY[0x277D7CC10];
  *(v23 + 32) = *MEMORY[0x277D7CC10];
  v25 = v22;
  v26 = v24;
  sub_23E1FDCBC();
  v149 = v27;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v28 = v154;
  v29 = [v154 bundleURL];
  sub_23E1FBF9C();

  v30 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v23 + 40) = v31;
  v32 = *MEMORY[0x277D7CC30];
  v33 = v152;
  *(v23 + 64) = v152;
  *(v23 + 72) = v32;
  v34 = v32;
  sub_23E1FDCBC();
  v149 = v35;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v36 = [v28 bundleURL];
  sub_23E1FBF9C();

  v37 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v23 + 104) = v33;
  *(v23 + 80) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v39 = sub_23E1FDABC();
  v40 = v150;
  v41 = sub_23DF3BE54(v39);
  v42 = MEMORY[0x277D7CCC8];
  v43 = v153;
  v153[20] = v41;
  v44 = *v42;
  v43[23] = v40;
  v43[24] = v44;
  v45 = MEMORY[0x277D839B0];
  *(v43 + 200) = 0;
  v46 = *MEMORY[0x277D7CB90];
  v43[28] = v45;
  v43[29] = v46;
  v47 = v44;
  v48 = v46;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v49 = v154;
  v50 = [v154 bundleURL];
  v148 = v3;
  sub_23E1FBF9C();

  v51 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v53 = v152;
  v52 = v153;
  v153[30] = v54;
  v55 = *MEMORY[0x277D7CDD0];
  v52[33] = v53;
  v52[34] = v55;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v56 = swift_initStackObject();
  v146 = xmmword_23E222380;
  *(v56 + 16) = xmmword_23E222380;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  *(v56 + 48) = 1;
  *(v56 + 72) = MEMORY[0x277D839B0];
  *(v56 + 80) = 0x614E74757074754FLL;
  *(v56 + 88) = 0xEA0000000000656DLL;
  v57 = v55;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v58 = [v49 bundleURL];
  sub_23E1FBF9C();

  v59 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v56 + 96) = v60;
  *(v56 + 120) = v53;
  *(v56 + 128) = 0x7365707954;
  v61 = MEMORY[0x277D837D0];
  *(v56 + 136) = 0xE500000000000000;
  *(v56 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v56 + 144) = &unk_285024538;
  v62 = sub_23E1FDABC();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v145 = v63;
  v64 = v153;
  v153[35] = v62;
  v65 = *MEMORY[0x277D7CBA0];
  v64[38] = v63;
  v64[39] = v65;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v150 = swift_allocObject();
  v136 = xmmword_23E2246F0;
  *(v150 + 16) = xmmword_23E2246F0;
  v149 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v66 = swift_initStackObject();
  v134 = xmmword_23E224710;
  *(v66 + 16) = xmmword_23E224710;
  v67 = *MEMORY[0x277D7CDF8];
  *(v66 + 64) = v61;
  *(v66 + 32) = v67;
  *(v66 + 40) = 0xD000000000000013;
  *(v66 + 48) = 0x800000023E254230;
  v133 = v67;
  v68 = v65;
  v69 = sub_23E1FDBDC();
  *(v66 + 104) = v61;
  *(v66 + 72) = v69;
  strcpy((v66 + 80), "HundredMeters");
  *(v66 + 94) = -4864;
  v143 = 0xD000000000000018;
  *(v66 + 112) = sub_23E1FDBDC();
  *(v66 + 120) = 1;
  v70 = *MEMORY[0x277D7CE70];
  *(v66 + 144) = MEMORY[0x277D839B0];
  *(v66 + 152) = v70;
  v142 = 0x800000023E254290;
  *(v66 + 160) = 0xD000000000000017;
  *(v66 + 168) = 0x800000023E254290;
  v71 = *MEMORY[0x277D7CE80];
  *(v66 + 184) = v61;
  *(v66 + 192) = v71;
  v72 = v70;
  v73 = v71;
  v140 = v72;
  v141 = v73;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v74 = [v154 bundleURL];
  sub_23E1FBF9C();

  v75 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v66 + 224) = v152;
  *(v66 + 200) = v76;
  _s3__C3KeyVMa_0(0);
  v139 = v77;
  v138 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v78 = sub_23E1FDABC();
  v79 = sub_23DF3BE9C(v78);
  *(v150 + 32) = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = v134;
  *(v80 + 32) = v133;
  *(v80 + 40) = 0xD000000000000016;
  v81 = MEMORY[0x277D7CE00];
  *(v80 + 48) = 0x800000023E24FDA0;
  v82 = *v81;
  *(v80 + 64) = v61;
  *(v80 + 72) = v82;
  *(v80 + 80) = 0x796C696144;
  *(v80 + 88) = 0xE500000000000000;
  v83 = *MEMORY[0x277D7CE38];
  *(v80 + 104) = v61;
  *(v80 + 112) = v83;
  v137 = swift_allocObject();
  *(v137 + 16) = v136;
  v84 = v82;
  v85 = v83;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v86 = v154;
  v87 = [v154 bundleURL];
  sub_23E1FBF9C();

  v88 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v89 = v137;
  *(v137 + 32) = v90;
  *&v136 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v91 = [v86 bundleURL];
  sub_23E1FBF9C();

  v92 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v89 + 40) = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v80 + 120) = v89;
  v95 = v140;
  *(v80 + 144) = v94;
  *(v80 + 152) = v95;
  *(v80 + 160) = 0xD000000000000015;
  *(v80 + 168) = 0x800000023E24EEB0;
  v96 = v141;
  *(v80 + 184) = MEMORY[0x277D837D0];
  *(v80 + 192) = v96;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v97 = [v86 bundleURL];
  sub_23E1FBF9C();

  v98 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v80 + 224) = v152;
  *(v80 + 200) = v99;
  v100 = sub_23E1FDABC();
  v101 = sub_23DF3BE9C(v100);
  v102 = v150;
  *(v150 + 40) = v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v104 = v153;
  v153[40] = v102;
  v105 = *MEMORY[0x277D7CB98];
  v104[43] = v103;
  v104[44] = v105;
  v106 = v105;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v107 = [v154 bundleURL];
  sub_23E1FBF9C();

  v108 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v110 = v109;
  v111 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v112 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v104[45] = v111;
  v113 = *MEMORY[0x277D7CF20];
  v104[48] = v112;
  v104[49] = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v114 = swift_allocObject();
  *(v114 + 16) = v151;
  v115 = swift_allocObject();
  *(v115 + 16) = v151;
  *(v115 + 32) = 0xD000000000000011;
  *(v115 + 40) = 0x800000023E254400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_23E222340;
  v117 = swift_allocObject();
  *(v117 + 16) = v146;
  strcpy((v117 + 32), "WFParameterKey");
  *(v117 + 47) = -18;
  v118 = v142;
  *(v117 + 48) = 0xD000000000000017;
  *(v117 + 56) = v118;
  v119 = MEMORY[0x277D837D0];
  *(v117 + 72) = MEMORY[0x277D837D0];
  *(v117 + 80) = 0xD000000000000010;
  *(v117 + 88) = 0x800000023E24D710;
  v120 = v113;
  v121 = sub_23E1FDABC();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF48, &qword_23E227258);
  *(v117 + 96) = v121;
  *(v117 + 120) = v122;
  *(v117 + 128) = 0x72756F7365524657;
  *(v117 + 168) = v119;
  *(v117 + 136) = 0xEF7373616C436563;
  *(v117 + 144) = 0xD00000000000001BLL;
  *(v117 + 152) = 0x800000023E24D730;
  *(v116 + 32) = sub_23E1FDABC();
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v115 + 48) = v116;
  *(v115 + 72) = v123;
  *(v115 + 80) = 0x72756F7365524657;
  *(v115 + 120) = v119;
  v124 = v143;
  *(v115 + 88) = 0xEF7373616C436563;
  *(v115 + 96) = v124;
  *(v115 + 104) = 0x800000023E254420;
  *(v114 + 32) = sub_23E1FDABC();
  *(v114 + 88) = v119;
  *(v114 + 56) = v145;
  *(v114 + 64) = 0xD00000000000001CLL;
  *(v114 + 72) = 0x800000023E24D7B0;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v126 = MEMORY[0x277D7CB78];
  v127 = v153;
  v153[50] = v114;
  v128 = *v126;
  v127[53] = v125;
  v127[54] = v128;
  v127[58] = MEMORY[0x277D839B0];
  *(v127 + 440) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v129 = v128;
  v130 = sub_23E1FDABC();
  return sub_23DF3BF9C(v130);
}

void *sub_23DEBB498()
{
  v1 = OBJC_IVAR____TtC9ActionKit13WeatherAction_mapItemForTesting;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23DEBB4E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ActionKit13WeatherAction_mapItemForTesting;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_23DEBB59C()
{
  v0 = *MEMORY[0x277CCA5B8];
  v1 = sub_23E1FDC1C();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v5 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v6;
  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v7 = qword_280DAE278;
  v8 = sub_23E1FDBDC();
  v9 = sub_23E1FDBDC();

  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = sub_23E1FDC1C();
  v13 = v12;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  v14 = sub_23E1FDABC();
  v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_23DE56A08(v1, v3, 22, v14);
}

uint64_t sub_23DEBB734()
{
  OUTLINED_FUNCTION_23();
  v1[6] = v2;
  v1[7] = v0;
  v1[8] = sub_23E1FDECC();
  v1[9] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_23DEBB7CC, v4, v3);
}

uint64_t sub_23DEBB7CC()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC9ActionKit13WeatherAction_mapItemForTesting;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[9];
    v5 = v3;

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    sub_23DE38DA8(0, &qword_27E32C360, 0x277CFC2E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_23E2235B0;
    *(v11 + 32) = v10;
    v12 = v10;
    v13 = sub_23DE56610();
    v0[12] = v13;
    v14 = sub_23E1FDEBC();
    v0[13] = v14;
    v15 = swift_task_alloc();
    v0[14] = v15;
    *(v15 + 16) = v13;
    *(v15 + 24) = v9;
    v16 = *(MEMORY[0x277D85A40] + 4);
    v17 = swift_task_alloc();
    v0[15] = v17;
    v18 = sub_23DE38DA8(0, &qword_27E32CF90, 0x277CD4E80);
    *v17 = v0;
    v17[1] = sub_23DEBB9D8;
    v19 = MEMORY[0x277D85700];

    return MEMORY[0x2822008A0](v0 + 5, v14, v19, 0xD000000000000022, 0x800000023E254590, sub_23DEBEC94, v15, v18);
  }
}

uint64_t sub_23DEBB9D8()
{
  OUTLINED_FUNCTION_23();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v7 = v6;
  v2[16] = v0;

  if (v0)
  {
    v8 = v2[10];
    v9 = v2[11];
    v10 = sub_23DEBBB60;
  }

  else
  {
    v11 = v2[13];
    v12 = v2[14];

    v8 = v2[10];
    v9 = v2[11];
    v10 = sub_23DEBBAF0;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_23DEBBAF0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 72);

  v2 = *(v0 + 40);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23DEBBB60()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  OUTLINED_FUNCTION_19();
  v6 = v0[16];

  return v5();
}

id sub_23DEBBBE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_44_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C660, &qword_23E2246A0);
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_59();
  v19 = (v17 - v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v210 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v210 - v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_68_0();
  v253 = v29;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_94_0();
  v255 = v33;
  v236 = sub_23E1FC08C();
  v34 = OUTLINED_FUNCTION_12(v236);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_44_2(v37);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF60, &qword_23E2272A8);
  v38 = OUTLINED_FUNCTION_6_0(v222);
  v249 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_44_2(&v210 - v42);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF68, &qword_23E2272B0);
  v43 = OUTLINED_FUNCTION_6_0(v215);
  v245 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_44_2(&v210 - v47);
  v248 = sub_23E1FC5FC();
  v48 = OUTLINED_FUNCTION_6_0(v248);
  v235 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_44_2(v52);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  v53 = OUTLINED_FUNCTION_6_0(v261);
  v233 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_44_2(v58);
  v244 = sub_23E1FC5CC();
  v59 = OUTLINED_FUNCTION_6_0(v244);
  v254 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_9_3();
  v259 = v63;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CF78, &qword_23E2272B8);
  v64 = OUTLINED_FUNCTION_12(v257);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_68_0();
  v256 = v68;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_94_0();
  v258 = v70;
  v234 = sub_23E1FC61C();
  v71 = OUTLINED_FUNCTION_6_0(v234);
  v232 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_44_2(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C690, &unk_23E224330);
  v77 = OUTLINED_FUNCTION_25(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_59();
  v251 = v80 - v81;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_68_0();
  v250 = v83;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v84);
  v86 = &v210 - v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF88, &qword_23E2272C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v252 = a1;
  sub_23DEBEC34(a1, v86, &qword_27E32C690, &unk_23E224330);
  v88 = sub_23E1FC5AC();
  v89 = 1;
  OUTLINED_FUNCTION_18_8();
  if (v90)
  {
    sub_23DE481FC(v86, &qword_27E32C690, &unk_23E224330);
    *(inited + 32) = 0;
    *(inited + 40) = 1;

    v91 = MEMORY[0x277D84F90];
  }

  else
  {
    v92 = sub_23E1FC59C();
    OUTLINED_FUNCTION_1_5();
    (*(v93 + 8))(v86, v88);
    *(inited + 32) = v92;
    *(inited + 40) = 0;

    sub_23DE4CE68(0, 1, 1, MEMORY[0x277D84F90]);
    v91 = v94;
    v89 = *(v94 + 16);
    v95 = *(v94 + 24);
    if (v89 >= v95 >> 1)
    {
      sub_23DE4CE68(v95 > 1, v89 + 1, 1, v94);
      v91 = v209;
    }

    *(v91 + 16) = v89 + 1;
    *(v91 + 8 * v89 + 32) = v92;
  }

  v96 = *(v91 + 16);
  v247 = v19;
  v246 = v23;
  v260 = v2;
  v242 = v26;
  v226 = MEMORY[0x277D84F90];
  if (v96)
  {
    v97 = v10;
    v262 = MEMORY[0x277D84F90];
    sub_23E1FE63C();
    v23 = 32;
    v89 = &off_278C24000;
    do
    {
      v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_23E1FE61C();
      v98 = *(v262 + 16);
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
      v23 += 8;
      --v96;
    }

    while (v96);

    v99 = v262;
    v10 = v97;
    OUTLINED_FUNCTION_24_3();
    v2 = v260;
  }

  else
  {

    v99 = MEMORY[0x277D84F90];
  }

  v100 = sub_23DE4D8B0(v99);
  v101 = v253;
  v102 = v255;
  if (v100)
  {
    v103 = OUTLINED_FUNCTION_23_3();
    sub_23DE59014(v103, v104, v105);
    if (v89)
    {
      goto LABEL_72;
    }

    v106 = v99[4];
LABEL_15:
    v221 = v106;
    v107 = v252;
  }

  else
  {

    v221 = 0;
    v107 = v252;
  }

  v108 = v250;
  sub_23DEBEC34(v107, v250, &qword_27E32C690, &unk_23E224330);
  OUTLINED_FUNCTION_18_8();
  if (v90)
  {
    sub_23DE481FC(v108, &qword_27E32C690, &unk_23E224330);
    v220 = 0;
    v219 = 0;
  }

  else
  {
    v109 = v231;
    sub_23E1FC58C();
    OUTLINED_FUNCTION_1_5();
    (*(v110 + 8))(v108, v88);
    v220 = sub_23E1FC60C();
    v219 = v111;
    (*(v232 + 8))(v109, v234);
  }

  v99 = v251;
  sub_23DEBEC34(v107, v251, &qword_27E32C690, &unk_23E224330);
  OUTLINED_FUNCTION_18_8();
  if (!v90)
  {
    v211 = v10;
    v112 = sub_23E1FC57C();
    OUTLINED_FUNCTION_1_5();
    (*(v113 + 8))(v99, v88);
    v262 = MEMORY[0x277D84F90];
    v114 = (v112 + 64);
    v115 = 1 << *(v112 + 32);
    v116 = -1;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    v101 = v116 & *(v112 + 64);
    v10 = ((v115 + 63) >> 6);
    v234 = v254 + 16;
    v232 = v254 + 32;
    v231 = v235 + 88;
    v230 = *MEMORY[0x277CE3778];
    v218 = *MEMORY[0x277CE3770];
    v229 = (v254 + 8);
    v214 = v235 + 8;
    v225 = v235 + 96;
    v213 = v245 + 32;
    v212 = v245 + 8;
    v217 = v249 + 32;
    v216 = v249 + 8;
    v224 = v233 + 2;
    v223 = v233 + 1;
    v245 = v112;
    sub_23E1FB7BC();
    v23 = 0;
    OUTLINED_FUNCTION_21_5();
    v88 = v244;
    v235 = v112 + 64;
    v233 = v10;
    while (1)
    {
      while (1)
      {
        if (!v101)
        {
          v102 = v255;
          while (1)
          {
            v117 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v117 >= v10)
            {

              v10 = v211;
              OUTLINED_FUNCTION_24_3();
              v101 = v253;
              goto LABEL_43;
            }

            v101 = v114[v117];
            ++v23;
            if (v101)
            {
              v19 = v99;
              v23 = v117;
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_72:
          v106 = MEMORY[0x23EF04DD0](0, v99);
          goto LABEL_15;
        }

        v19 = v99;
LABEL_33:
        v118 = __clz(__rbit64(v101));
        v101 &= v101 - 1;
        v119 = v118 | (v23 << 6);
        v120 = (*(v245 + 48) + 16 * v119);
        v122 = *v120;
        v121 = v120[1];
        v114 = v254;
        v123 = v257;
        v124 = v258;
        (*(v254 + 16))(&v258[*(v257 + 48)], *(v245 + 56) + *(v254 + 72) * v119, v88);
        *v124 = v122;
        v124[1] = v121;
        v125 = v124;
        v10 = v256;
        sub_23DEBEC34(v125, v256, &unk_27E32CF78, &qword_23E2272B8);
        v126 = v10[1];
        sub_23E1FB7BC();

        (v114[4])(v259, v10 + *(v123 + 48), v88);
        sub_23E1FC5BC();
        v127 = OUTLINED_FUNCTION_4_10(&v262);
        v99 = v19;
        v129 = v128(v127, v19);
        if (v129 != v230)
        {
          break;
        }

        v130 = OUTLINED_FUNCTION_4_10(&v255);
        v131(v130, v19);
        OUTLINED_FUNCTION_5_6(&v246);
        v132 = OUTLINED_FUNCTION_35_0();
        v133(v132);
        sub_23E1FBDCC();
        sub_23E1FBDAC();
        sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
        OUTLINED_FUNCTION_17_7();
        v134 = &v245;
LABEL_37:
        OUTLINED_FUNCTION_5_6(v134);
        v139 = OUTLINED_FUNCTION_35_0();
        v140(v139);
        v114 = v258;
        v141 = v256;
        sub_23DEBEC34(v258, v256, &unk_27E32CF78, &qword_23E2272B8);
        v142 = v141[1];
        v250 = *v141;
        v249 = v142;
        v143 = v257;
        v252 = *(v257 + 48);
        v10 = v227;
        sub_23DEBEC34(v114, v227, &unk_27E32CF78, &qword_23E2272B8);
        v144 = *v10;
        v145 = v10[1];
        v251 = *(v143 + 48);
        OUTLINED_FUNCTION_5_6(&v254);
        v146 = v228;
        v147 = v123;
        v148 = v261;
        v149(v228, v147, v261);
        v150 = objc_allocWithZone(WFWeatherAirQualityPollutant);
        v19 = sub_23DEBE878(v250, v249, v144, v145, v146);
        v151 = OUTLINED_FUNCTION_4_10(&v253);
        v152(v151, v148);
        v99 = *v229;
        v88 = v244;
        (*v229)(v259, v244);
        sub_23DE481FC(v114, &unk_27E32CF78, &qword_23E2272B8);
        (v99)(v10 + v251, v88);
        (v99)(v141 + v252, v88);
        v2 = v260;
        OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_25_2();
        if (v19)
        {
          MEMORY[0x23EF045A0]();
          if (*((v262 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v262 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23E1FDE0C();
          }

          sub_23E1FDE3C();
          v226 = v262;
          v99 = v248;
        }
      }

      if (v129 == v218)
      {
        v135 = OUTLINED_FUNCTION_4_10(&v255);
        v136(v135, v19);
        OUTLINED_FUNCTION_5_6(&v242);
        v137 = OUTLINED_FUNCTION_35_0();
        v138(v137);
        sub_23E1FBDCC();
        sub_23E1FBDAC();
        sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
        OUTLINED_FUNCTION_17_7();
        v134 = &v241;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_5_6(&v260);
      v153(v259, v88);
      sub_23DE481FC(v258, &unk_27E32CF78, &qword_23E2272B8);
      v154 = OUTLINED_FUNCTION_4_10(&v243);
      v155(v154, v19);
      v2 = v260;
      OUTLINED_FUNCTION_25_2();
    }
  }

  sub_23DE481FC(v99, &qword_27E32C690, &unk_23E224330);
  v226 = 0;
LABEL_43:
  v156 = [v2 date];
  sub_23E1FC05C();

  v258 = [v2 location];
  v157 = [v2 temperature];
  v158 = v239;
  if (v157)
  {
    v159 = v157;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v160 = 0;
  }

  else
  {
    v160 = 1;
  }

  v161 = v241;
  v162 = 1;
  OUTLINED_FUNCTION_15_8(v102, v160);
  v163 = [v2 highTemperature];
  if (v163)
  {
    v164 = v163;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    v165 = v238;
    sub_23E1FBD9C();

    v162 = 0;
  }

  else
  {
    v165 = v238;
  }

  v166 = 1;
  OUTLINED_FUNCTION_15_8(v165, v162);
  v167 = [v2 lowTemperature];
  if (v167)
  {
    v168 = v167;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v166 = 0;
  }

  v169 = 1;
  OUTLINED_FUNCTION_15_8(v158, v166);
  v170 = [v2 feelsLikeTemperature];
  if (v170)
  {
    v171 = v170;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v169 = 0;
  }

  v172 = 1;
  OUTLINED_FUNCTION_15_8(v101, v169);
  v259 = sub_23DEBE960(v2);
  v174 = v173;
  v175 = [v2 visibility];
  if (v175)
  {
    v176 = v175;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    v177 = v240;
    sub_23E1FBD9C();

    v172 = 0;
  }

  else
  {
    v177 = v240;
  }

  v178 = 1;
  OUTLINED_FUNCTION_15_8(v177, v172);
  v179 = [v2 dewpoint];
  if (v179)
  {
    v180 = v179;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v178 = 0;
  }

  v181 = v238;
  v182 = 1;
  OUTLINED_FUNCTION_15_8(v161, v178);
  v183 = [v2 humidity];
  v184 = [v2 pressure];
  if (v184)
  {
    v185 = v184;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    v186 = v242;
    sub_23E1FBD9C();

    v182 = 0;
  }

  else
  {
    v186 = v242;
  }

  v187 = 1;
  OUTLINED_FUNCTION_15_8(v186, v182);
  v188 = [v2 precipitationAmount];
  if (v188)
  {
    v189 = v188;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v187 = 0;
  }

  v190 = v241;
  v191 = 1;
  OUTLINED_FUNCTION_15_8(v23, v187);
  v192 = v260;
  v193 = [v260 precipitationChance];
  v194 = [v192 windSpeed];
  if (v194)
  {
    v195 = v194;
    sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
    sub_23E1FBD9C();

    v191 = 0;
  }

  v196 = 1;
  OUTLINED_FUNCTION_15_8(v19, v191);
  v197 = v260;
  v198 = [v260 windDirection];
  v199 = [v197 uvIndex];
  v200 = [v197 sunriseTime];
  if (v200)
  {
    v201 = v200;
    v202 = v243;
    sub_23E1FC05C();

    v203 = v202;
    v196 = 0;
  }

  else
  {
    v203 = v243;
  }

  v204 = 1;
  __swift_storeEnumTagSinglePayload(v203, v196, 1, v236);
  v205 = [v260 sunsetTime];
  if (v205)
  {
    v206 = v205;
    sub_23E1FC05C();

    v204 = 0;
  }

  __swift_storeEnumTagSinglePayload(v10, v204, 1, v236);
  v207 = objc_allocWithZone(WFWeatherData);
  return sub_23DE6B050(v237, v258, 0, 0, v255, v181, v239, v253, v259, v174, v240, v190, v183, v242, v246, v193, v247, v198, v199, v243, v10, v221, v220, v219, v226);
}

void sub_23DEBD16C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_23DEBB4E4(v2);
}

uint64_t sub_23DEBD19C()
{
  OUTLINED_FUNCTION_23();
  v1[12] = v2;
  v1[13] = v0;
  sub_23E1FDECC();
  v1[14] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v1[15] = v4;
  v1[16] = v3;

  return MEMORY[0x2822009F8](sub_23DEBD230, v4, v3);
}

uint64_t sub_23DEBD230()
{
  v1 = v0[13];
  sub_23DE38DA8(0, &qword_27E32C360, 0x277CFC2E0);
  v2 = sub_23E1FE3FC();
  v3 = v2;
  v0[17] = v2;
  if (v2)
  {
    v4 = [v2 items];
    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    v5 = sub_23E1FDDEC();

    if (sub_23DE4D8B0(v5))
    {
      v6 = OUTLINED_FUNCTION_23_3();
      sub_23DE59014(v6, v7, v8);
      if (v3)
      {
        v9 = MEMORY[0x23EF04DD0](0, v5);
      }

      else
      {
        v9 = *(v5 + 32);
      }

      v0[18] = v9;

      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_23DEBD57C;
      v11 = v0[13];

      return sub_23DEBB734();
    }

    v14 = v0[14];
  }

  else
  {
    v13 = v0[14];
  }

  v15 = *MEMORY[0x277D7CB30];
  v16 = sub_23E1FDC1C();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v20 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v21;
  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v22 = qword_280DAE278;
  v23 = sub_23E1FDBDC();
  v24 = sub_23E1FDBDC();

  v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

  v26 = sub_23E1FDC1C();
  v28 = v27;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v26;
  *(inited + 56) = v28;
  v29 = sub_23E1FDABC();
  v30 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_23DE56A08(v16, v18, 5, v29);
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v31();
}

uint64_t sub_23DEBD57C()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = v2[19];
  v6 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v7 = v6;
  *(v9 + 160) = v8;
  *(v9 + 168) = v0;

  v10 = v2[16];
  v11 = v2[15];
  if (v0)
  {
    v12 = sub_23DEBDA80;
  }

  else
  {
    v12 = sub_23DEBD6B4;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_23DEBD6B4()
{
  v1 = [*(v0 + 160) placemark];
  v2 = [v1 location];
  *(v0 + 176) = v2;

  if (v2)
  {
    v3 = *(v0 + 104);
    v4 = [*(v0 + 144) attributionSet];
    v5 = [v4 derivedDisclosureLevel];

    v6 = *((*MEMORY[0x277D85000] & *v3) + 0x70);
    v17 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_23DEBD8C8;
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);

    return v17(v9, v2, v5);
  }

  else
  {
    v12 = *(v0 + 160);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 112);

    sub_23DEBB59C();
    swift_willThrow();

    OUTLINED_FUNCTION_19();

    return v16();
  }
}

uint64_t sub_23DEBD8C8()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = v2[23];
  *v4 = *v1;
  *(v3 + 192) = v0;

  v6 = v2[16];
  v7 = v2[15];
  if (v0)
  {
    v8 = sub_23DEBDAE8;
  }

  else
  {
    v8 = sub_23DEBD9FC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DEBD9FC()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DEBDA80()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];

  v4 = v0[21];
  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DEBDAE8()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[22];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];

  v6 = v0[24];
  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_23DEBDBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEBDC8C, v5, v4);
}

uint64_t sub_23DEBDC8C()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23DEBDD4C;
  v8 = v0[4];
  v9 = v0[2];

  return sub_23DEBD19C();
}

uint64_t sub_23DEBDD4C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[6];
  if (v2)
  {
    v11 = sub_23E1FBEBC();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v12 = v9[1];

  return v12();
}

uint64_t sub_23DEBDEE4()
{
  OUTLINED_FUNCTION_23();
  sub_23E1FDECC();
  sub_23E1FDEBC();
  v1 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEBDF70, v1, v0);
}

void sub_23DEBDFEC(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF98, &qword_23E2272C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [a3 localizedName];
  if (!v11)
  {
    sub_23E1FDC1C();
    v11 = sub_23E1FDBDC();
  }

  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_23DEBEC9C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DEBE4C4;
  aBlock[3] = &block_descriptor_9;
  v14 = _Block_copy(aBlock);
  v15 = a3;

  WFGetMapItemFromContentCollection(a2, v11, v14);
  _Block_release(v14);
}

uint64_t sub_23DEBE1EC(void *a1, void *a2)
{
  v4 = sub_23E1FC26C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CFA0, &unk_23E2272D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  if (a1)
  {
    v13 = a1;
    v14 = [v13 placemark];
    v15 = [v14 location];

    if (v15)
    {

      v16 = [v13 timeZone];
      if (v16)
      {
        v17 = v16;
        sub_23E1FC25C();

        (*(v5 + 32))(v12, v8, v4);
        __swift_storeEnumTagSinglePayload(v12, 0, 1, v4);
        sub_23DE481FC(v12, &unk_27E32CFA0, &unk_23E2272D0);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v12, 1, 1, v4);
        sub_23DE481FC(v12, &unk_27E32CFA0, &unk_23E2272D0);
        v21 = [objc_opt_self() localTimeZone];
        sub_23E1FC25C();

        v22 = sub_23E1FC24C();
        (*(v5 + 8))(v8, v4);
        [v13 setTimeZone_];
      }

      v24 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF98, &qword_23E2272C8);
      return sub_23E1FDE8C();
    }
  }

  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = sub_23DEBB59C();
  }

  v24 = v18;
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF98, &qword_23E2272C8);
  return sub_23E1FDE7C();
}

void sub_23DEBE4C4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_23E1FB7CC();
  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id WeatherAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id WeatherAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC9ActionKit13WeatherAction_mapItemForTesting] = 0;
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for WeatherAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id WeatherAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherAction.init()()
{
  *&v0[OBJC_IVAR____TtC9ActionKit13WeatherAction_mapItemForTesting] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WeatherAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23DEBE878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = sub_23E1FDBDC();

  v9 = sub_23E1FDBDC();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  v11 = sub_23E1FBD8C();
  v12 = [v6 initWithLocalizedName:v8 localizedDescription:v9 concentration:v11];

  (*(*(v10 - 8) + 8))(a5, v10);
  return v12;
}

uint64_t sub_23DEBE960(void *a1)
{
  v1 = [a1 localizedConditionString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E1FDC1C();

  return v3;
}

uint64_t sub_23DEBEA9C()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DEBEB4C;

  return sub_23DEBDBF0(v2, v3, v4);
}

uint64_t sub_23DEBEB4C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_23DEBEC34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23DEBEC9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF98, &qword_23E2272C8);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = OUTLINED_FUNCTION_35_0();

  return sub_23DEBE1EC(v5, v6);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 168);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

uint64_t OUTLINED_FUNCTION_17_7()
{
  v2 = *(v0 - 448);

  return sub_23E1FBDBC();
}

uint64_t sub_23DEBEE14()
{
  OUTLINED_FUNCTION_23();
  v1 = type metadata accessor for PodcastItem();
  OUTLINED_FUNCTION_28_3(v1);
  *(v0 + 280) = v2;
  v4 = *(v3 + 64);
  *(v0 + 288) = OUTLINED_FUNCTION_42();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_88_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_87_1(v6);

  return SuggestedPodcastsOptionsProvider.fetchResults()();
}

uint64_t sub_23DEBEEE0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 296);
  *v2 = *v0;
  OUTLINED_FUNCTION_81_1(v5);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEBEFD8()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_36_3();
  v2 = objc_opt_self();
  *(v0 + 320) = v2;
  OUTLINED_FUNCTION_74_3([v2 standardClient]);
  v3 = sub_23E1FDBDC();
  OUTLINED_FUNCTION_33_3(v3);
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_60_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  OUTLINED_FUNCTION_2_13(v5);
  OUTLINED_FUNCTION_72_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_3_7();
  v6 = OUTLINED_FUNCTION_43_2();
  [v6 v7];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23DEBF0F0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEBF1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_80_1();

  OUTLINED_FUNCTION_59_2();
  v16 = v14[38];
  if (v12)
  {
    if (*(v16 + 16))
    {
      OUTLINED_FUNCTION_56_3();
      OUTLINED_FUNCTION_38_4(v17);
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_83_2(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_31_3([v13 standardClient]);
      v22 = OUTLINED_FUNCTION_51_1(v21);
      v23 = OUTLINED_FUNCTION_77_1(v22);
      OUTLINED_FUNCTION_27_4(v23);
      v14[10] = v14;
      v14[11] = sub_23DEBF334;
      OUTLINED_FUNCTION_67_1();
      v14[33] = v15;
      OUTLINED_FUNCTION_0_16();
      v14[27] = 1107296256;
      v25 = OUTLINED_FUNCTION_4_11(v24, &block_descriptor_110);
      OUTLINED_FUNCTION_21_6(v25, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_182();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v16);
  }

  else
  {
    v27 = v14[36];

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_182();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }
}

uint64_t sub_23DEBF334()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 408) = v4;
  if (v4)
  {
    v5 = *(v1 + 304);
  }

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEBF434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_49_3();
  sub_23DEC5818(v19, v20);

  v21 = OUTLINED_FUNCTION_10_7();
  if (v22)
  {
    v23 = v15[36];

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_182();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_73_2(v21);
    if (v33)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_57_2();
      OUTLINED_FUNCTION_8_4(v35, v36);
      OUTLINED_FUNCTION_48_3();
      sub_23DEC57BC(v37, v17, v38);
      v39 = OUTLINED_FUNCTION_31_3([v14 standardClient]);
      v40 = OUTLINED_FUNCTION_51_1(v39);
      v41 = OUTLINED_FUNCTION_77_1(v40);
      OUTLINED_FUNCTION_27_4(v41);
      v15[10] = v15;
      v15[11] = sub_23DEBF334;
      OUTLINED_FUNCTION_67_1();
      v15[33] = v18;
      OUTLINED_FUNCTION_0_16();
      v15[27] = 1107296256;
      v43 = OUTLINED_FUNCTION_4_11(v42, &block_descriptor_110);
      OUTLINED_FUNCTION_21_6(v43, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_182();
    }

    return MEMORY[0x282200938](v34);
  }
}

uint64_t sub_23DEBF590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_30_3();

  OUTLINED_FUNCTION_49_3();
  sub_23DEC5818(v10, v15);

  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_90_2();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_23DEBF614()
{
  OUTLINED_FUNCTION_23();
  v1 = type metadata accessor for ShortcutsContact();
  OUTLINED_FUNCTION_28_3(v1);
  *(v0 + 280) = v2;
  v4 = *(v3 + 64);
  *(v0 + 288) = OUTLINED_FUNCTION_42();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_88_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_87_1(v6);

  return FavoritesOptionsProvider.fetchResults()();
}

uint64_t sub_23DEBF6E0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 296);
  *v2 = *v0;
  OUTLINED_FUNCTION_81_1(v5);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEBF7D8()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_36_3();
  v2 = objc_opt_self();
  *(v0 + 320) = v2;
  OUTLINED_FUNCTION_74_3([v2 standardClient]);
  v3 = sub_23E1FDBDC();
  OUTLINED_FUNCTION_33_3(v3);
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_60_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  OUTLINED_FUNCTION_2_13(v5);
  OUTLINED_FUNCTION_72_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_3_7();
  v6 = OUTLINED_FUNCTION_43_2();
  [v6 v7];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23DEBF8F0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEBF9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_80_1();

  OUTLINED_FUNCTION_59_2();
  v18 = v16[38];
  if (v14)
  {
    if (*(v18 + 16))
    {
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_38_4(v19);
      OUTLINED_FUNCTION_6_8();
      OUTLINED_FUNCTION_83_2(v20, v21, v22);
      OUTLINED_FUNCTION_22_4([v15 standardClient]);
      v24 = (v17 + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = sub_23E1FBFCC();
      v28 = OUTLINED_FUNCTION_51_1(v27);
      OUTLINED_FUNCTION_55_3(v28);
      v29 = sub_23E1FDBDC();
      OUTLINED_FUNCTION_25_3(v29);
      v31 = *(v17 + v30);
      OUTLINED_FUNCTION_54_2();
      v16[10] = v16;
      v16[11] = sub_23DEBFB58;
      OUTLINED_FUNCTION_67_1();
      v16[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v16[27] = 1107296256;
      v33 = OUTLINED_FUNCTION_1_15(v32, &block_descriptor_102);
      OUTLINED_FUNCTION_40_3(v33, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v18);
  }

  else
  {
    v35 = v16[36];

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DEBFB58()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 408) = v4;
  if (v4)
  {
    v5 = *(v1 + 304);
  }

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEBFC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_13_4();
  sub_23DEC5818(v19, v20);

  v21 = OUTLINED_FUNCTION_10_7();
  if (v22)
  {
    v23 = v17[36];

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_73_2(v21);
    if (v33)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_8_4(v35, v36);
      OUTLINED_FUNCTION_6_8();
      sub_23DEC57BC(v37, v18, v38);
      OUTLINED_FUNCTION_22_4([v16 standardClient]);
      v40 = &v18[v39];
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = sub_23E1FBFCC();
      v44 = OUTLINED_FUNCTION_78_2(v43);
      OUTLINED_FUNCTION_55_3(v44);
      v45 = sub_23E1FDBDC();
      OUTLINED_FUNCTION_25_3(v45);
      v47 = *&v18[v46];
      OUTLINED_FUNCTION_54_2();
      v17[10] = v17;
      v17[11] = sub_23DEBFB58;
      OUTLINED_FUNCTION_67_1();
      v17[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v17[27] = 1107296256;
      v49 = OUTLINED_FUNCTION_1_15(v48, &block_descriptor_102);
      OUTLINED_FUNCTION_41_3(v49, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    return MEMORY[0x282200938](v34);
  }
}

uint64_t sub_23DEBFDD8()
{
  OUTLINED_FUNCTION_23();
  v1 = type metadata accessor for ShortcutsContact();
  OUTLINED_FUNCTION_28_3(v1);
  *(v0 + 280) = v2;
  v4 = *(v3 + 64);
  *(v0 + 288) = OUTLINED_FUNCTION_42();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_88_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_87_1(v6);

  return RecentsOptionsProvider.fetchResults()();
}

uint64_t sub_23DEBFEA4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 296);
  *v2 = *v0;
  OUTLINED_FUNCTION_81_1(v5);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEBFF9C()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_36_3();
  v2 = objc_opt_self();
  *(v0 + 320) = v2;
  OUTLINED_FUNCTION_74_3([v2 standardClient]);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_33_3(v3);
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_60_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  OUTLINED_FUNCTION_2_13(v5);
  OUTLINED_FUNCTION_72_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_3_7();
  v6 = OUTLINED_FUNCTION_43_2();
  [v6 v7];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23DEC009C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEC0198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_80_1();

  OUTLINED_FUNCTION_59_2();
  v18 = v16[38];
  if (v14)
  {
    if (*(v18 + 16))
    {
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_38_4(v19);
      OUTLINED_FUNCTION_6_8();
      OUTLINED_FUNCTION_83_2(v20, v21, v22);
      OUTLINED_FUNCTION_22_4([v15 standardClient]);
      v24 = (v17 + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = sub_23E1FBFCC();
      v16[49] = OUTLINED_FUNCTION_51_1(v27);
      v28 = OUTLINED_FUNCTION_24_4();
      OUTLINED_FUNCTION_25_3(v28);
      v30 = *(v17 + v29);
      OUTLINED_FUNCTION_54_2();
      v16[10] = v16;
      v16[11] = sub_23DEC02F4;
      OUTLINED_FUNCTION_67_1();
      v16[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v16[27] = 1107296256;
      v32 = OUTLINED_FUNCTION_1_15(v31, &block_descriptor_94);
      OUTLINED_FUNCTION_40_3(v32, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v18);
  }

  else
  {
    v34 = v16[36];

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DEC02F4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 408) = v4;
  if (v4)
  {
    v5 = *(v1 + 304);
  }

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEC03F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_13_4();
  sub_23DEC5818(v19, v20);

  v21 = OUTLINED_FUNCTION_10_7();
  if (v22)
  {
    v23 = v17[36];

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_73_2(v21);
    if (v33)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_8_4(v35, v36);
      OUTLINED_FUNCTION_6_8();
      sub_23DEC57BC(v37, v18, v38);
      OUTLINED_FUNCTION_22_4([v16 standardClient]);
      v40 = &v18[v39];
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = sub_23E1FBFCC();
      v17[49] = OUTLINED_FUNCTION_78_2(v43);
      v44 = OUTLINED_FUNCTION_24_4();
      OUTLINED_FUNCTION_25_3(v44);
      v46 = *&v18[v45];
      OUTLINED_FUNCTION_54_2();
      v17[10] = v17;
      v17[11] = sub_23DEC02F4;
      OUTLINED_FUNCTION_67_1();
      v17[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v17[27] = 1107296256;
      v48 = OUTLINED_FUNCTION_1_15(v47, &block_descriptor_94);
      OUTLINED_FUNCTION_41_3(v48, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    return MEMORY[0x282200938](v34);
  }
}

uint64_t sub_23DEC0564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_30_3();

  OUTLINED_FUNCTION_13_4();
  sub_23DEC5818(v10, v15);

  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_90_2();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_23DEC05E8()
{
  OUTLINED_FUNCTION_23();
  v1 = type metadata accessor for MusicItem();
  OUTLINED_FUNCTION_28_3(v1);
  *(v0 + 280) = v2;
  v4 = *(v3 + 64);
  *(v0 + 288) = OUTLINED_FUNCTION_42();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_88_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_87_1(v6);

  return SuggestedMusicOptionsProvider.fetchResults()();
}

uint64_t sub_23DEC06B4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 296);
  *v2 = *v0;
  OUTLINED_FUNCTION_81_1(v5);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEC07AC()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_36_3();
  v2 = objc_opt_self();
  *(v0 + 320) = v2;
  OUTLINED_FUNCTION_74_3([v2 standardClient]);
  v3 = OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_33_3(v3);
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_60_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  OUTLINED_FUNCTION_2_13(v5);
  OUTLINED_FUNCTION_72_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_3_7();
  v6 = OUTLINED_FUNCTION_43_2();
  [v6 v7];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23DEC08AC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEC09A8()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DEC0A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_80_1();

  OUTLINED_FUNCTION_59_2();
  v16 = v14[38];
  if (v12)
  {
    if (*(v16 + 16))
    {
      OUTLINED_FUNCTION_56_3();
      OUTLINED_FUNCTION_38_4(v17);
      OUTLINED_FUNCTION_45_2();
      OUTLINED_FUNCTION_83_2(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_31_3([v13 standardClient]);
      v14[49] = OUTLINED_FUNCTION_51_1(v21);
      v22 = OUTLINED_FUNCTION_23_4();
      OUTLINED_FUNCTION_27_4(v22);
      v14[10] = v14;
      v14[11] = sub_23DEC0BD4;
      OUTLINED_FUNCTION_67_1();
      v14[33] = v15;
      OUTLINED_FUNCTION_0_16();
      v14[27] = 1107296256;
      v24 = OUTLINED_FUNCTION_4_11(v23, &block_descriptor_86);
      OUTLINED_FUNCTION_21_6(v24, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_182();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v16);
  }

  else
  {
    v26 = v14[36];

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_182();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_23DEC0B48()
{
  OUTLINED_FUNCTION_33_0();
  v1 = v0[44];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  swift_willThrow();

  v5 = v0[44];
  v6 = v0[36];

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_23DEC0BD4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 408) = v4;
  if (v4)
  {
    v5 = *(v1 + 304);
  }

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEC0CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_46_2();
  sub_23DEC5818(v19, v20);

  v21 = OUTLINED_FUNCTION_10_7();
  if (v22)
  {
    v23 = v15[36];

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_182();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_73_2(v21);
    if (v33)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_57_2();
      OUTLINED_FUNCTION_8_4(v35, v36);
      OUTLINED_FUNCTION_45_2();
      sub_23DEC57BC(v37, v17, v38);
      v39 = OUTLINED_FUNCTION_31_3([v14 standardClient]);
      v15[49] = OUTLINED_FUNCTION_51_1(v39);
      v40 = OUTLINED_FUNCTION_23_4();
      OUTLINED_FUNCTION_27_4(v40);
      v15[10] = v15;
      v15[11] = sub_23DEC0BD4;
      OUTLINED_FUNCTION_67_1();
      v15[33] = v18;
      OUTLINED_FUNCTION_0_16();
      v15[27] = 1107296256;
      v42 = OUTLINED_FUNCTION_4_11(v41, &block_descriptor_86);
      OUTLINED_FUNCTION_21_6(v42, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_182();
    }

    return MEMORY[0x282200938](v34);
  }
}

uint64_t sub_23DEC0E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_30_3();

  OUTLINED_FUNCTION_46_2();
  sub_23DEC5818(v10, v15);

  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_90_2();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_23DEC0EB0()
{
  v1 = type metadata accessor for ShortcutsFaceTimeContact();
  v0[34] = v1;
  v2 = *(v1 - 8);
  v0[35] = v2;
  v3 = *(v2 + 64) + 15;
  v0[36] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_23DEC0F98;

  return FaceTimeRecentsOptionsProvider.fetchResults()();
}

uint64_t sub_23DEC0F98()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 296);
  *v2 = *v0;
  OUTLINED_FUNCTION_81_1(v5);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEC1090()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_36_3();
  v2 = objc_opt_self();
  *(v0 + 320) = v2;
  OUTLINED_FUNCTION_74_3([v2 standardClient]);
  v3 = sub_23E1FDBDC();
  OUTLINED_FUNCTION_33_3(v3);
  *(v0 + 16) = v4;
  OUTLINED_FUNCTION_60_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  OUTLINED_FUNCTION_2_13(v5);
  OUTLINED_FUNCTION_72_1(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_3_7();
  v6 = OUTLINED_FUNCTION_43_2();
  [v6 v7];

  return MEMORY[0x282200938](v1);
}

uint64_t sub_23DEC11A8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEC12A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_80_1();

  OUTLINED_FUNCTION_59_2();
  v18 = v16[38];
  if (v14)
  {
    if (*(v18 + 16))
    {
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_38_4(v19);
      OUTLINED_FUNCTION_11_5();
      OUTLINED_FUNCTION_83_2(v20, v21, v22);
      OUTLINED_FUNCTION_22_4([v15 standardClient]);
      v24 = (v17 + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = sub_23E1FBFCC();
      v28 = OUTLINED_FUNCTION_51_1(v27);
      OUTLINED_FUNCTION_55_3(v28);
      v29 = sub_23E1FDBDC();
      OUTLINED_FUNCTION_25_3(v29);
      v31 = *(v17 + v30);
      OUTLINED_FUNCTION_54_2();
      v16[10] = v16;
      v16[11] = sub_23DEC1410;
      OUTLINED_FUNCTION_67_1();
      v16[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v16[27] = 1107296256;
      v33 = OUTLINED_FUNCTION_1_15(v32, &block_descriptor_60);
      OUTLINED_FUNCTION_40_3(v33, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v18);
  }

  else
  {
    v35 = v16[36];

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DEC1410()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 408) = v4;
  if (v4)
  {
    v5 = *(v1 + 304);
  }

  OUTLINED_FUNCTION_35_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEC1510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_44_3();
  sub_23DEC5818(v19, v20);

  v21 = OUTLINED_FUNCTION_10_7();
  if (v22)
  {
    v23 = v17[36];

    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_72_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_73_2(v21);
    if (v33)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_8_4(v35, v36);
      OUTLINED_FUNCTION_11_5();
      sub_23DEC57BC(v37, v18, v38);
      OUTLINED_FUNCTION_22_4([v16 standardClient]);
      v40 = &v18[v39];
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = sub_23E1FBFCC();
      v44 = OUTLINED_FUNCTION_78_2(v43);
      OUTLINED_FUNCTION_55_3(v44);
      v45 = sub_23E1FDBDC();
      OUTLINED_FUNCTION_25_3(v45);
      v47 = *&v18[v46];
      OUTLINED_FUNCTION_54_2();
      v17[10] = v17;
      v17[11] = sub_23DEC1410;
      OUTLINED_FUNCTION_67_1();
      v17[33] = a10;
      OUTLINED_FUNCTION_0_16();
      v17[27] = 1107296256;
      v49 = OUTLINED_FUNCTION_1_15(v48, &block_descriptor_60);
      OUTLINED_FUNCTION_41_3(v49, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
      OUTLINED_FUNCTION_72_0();
    }

    return MEMORY[0x282200938](v34);
  }
}

uint64_t sub_23DEC1690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_30_3();

  OUTLINED_FUNCTION_44_3();
  sub_23DEC5818(v10, v15);

  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_90_2();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_23DEC173C()
{
  v0 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v0, qword_27E32CFB0);
  __swift_project_value_buffer(v0, qword_27E32CFB0);
  return sub_23E1FB8DC();
}

uint64_t static ShortcutsFaceTimeContact.typeDisplayRepresentation.modify()
{
  if (qword_27E32B928 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FB8FC();
  __swift_project_value_buffer(v0, qword_27E32CFB0);
  OUTLINED_FUNCTION_17_0();
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DEC1894@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DEC3AF0(&qword_27E32B928, MEMORY[0x277CBA3A0], qword_27E32CFB0);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DEC1944(uint64_t a1)
{
  v2 = sub_23DEC3AF0(&qword_27E32B928, MEMORY[0x277CBA3A0], qword_27E32CFB0);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t ShortcutsFaceTimeContact.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23E1FB7BC();
  return OUTLINED_FUNCTION_49();
}

uint64_t type metadata accessor for ShortcutsFaceTimeContact()
{
  result = qword_280DAF480;
  if (!qword_280DAF480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShortcutsFaceTimeContact.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v10);
  v11 = sub_23E1FBF0C();
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = sub_23E1FDBAC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  v19 = type metadata accessor for ShortcutsFaceTimeContact();
  v20 = (v0 + *(v19 + 24));
  v21 = *v20;
  v22 = v20[1];
  sub_23E1FDB7C();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v11);
  sub_23DE491B4(v0 + *(v19 + 20), v6);
  return sub_23E1FB76C();
}

uint64_t ShortcutsFaceTimeContact.encodedParameters.getter()
{
  v1 = (v0 + *(type metadata accessor for ShortcutsFaceTimeContact() + 32));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_49();
  sub_23DE48FA8(v4, v5);
  return OUTLINED_FUNCTION_49();
}

void sub_23DEC1C94(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a2;
  v65[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D0, &unk_23E225500);
  v6 = OUTLINED_FUNCTION_25(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = sub_23E1FB70C();
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v24 = a1;
  v25 = [v24 uniqueIdentifier];
  v26 = sub_23E1FDC1C();
  v28 = v27;

  *a3 = v26;
  a3[1] = v28;
  v61 = v28;
  v29 = [v24 person];
  v30 = [v29 image];

  if (v30)
  {
    v31 = v30;
    sub_23E1FB6FC();
    sub_23E1FB6EC();

    v32 = sub_23E1FB75C();
    v33 = 0;
  }

  else
  {
    v32 = sub_23E1FB75C();
    v33 = 1;
  }

  v34 = 1;
  __swift_storeEnumTagSinglePayload(v23, v33, 1, v32);
  v35 = type metadata accessor for ShortcutsFaceTimeContact();
  v60 = v35[5];
  sub_23DE900C0(v23, a3 + v60, &qword_27E32C208, &unk_23E2239B0);
  v36 = [v24 person];
  v37 = [v36 nameComponents];

  if (v37)
  {
    sub_23E1FBE9C();

    v34 = 0;
  }

  v38 = sub_23E1FBEAC();
  __swift_storeEnumTagSinglePayload(v11, v34, 1, v38);
  sub_23DE900C0(v11, v13, &qword_27E32C8D0, &unk_23E225500);
  if (__swift_getEnumTagSinglePayload(v13, 1, v38))
  {
    sub_23DE481FC(v13, &qword_27E32C8D0, &unk_23E225500);
LABEL_8:
    v39 = [v24 person];
    v40 = [v39 displayName];

    v41 = sub_23E1FDC1C();
    v43 = v42;

    goto LABEL_9;
  }

  v41 = sub_23E1FBE8C();
  v43 = v55;
  sub_23DE481FC(v13, &qword_27E32C8D0, &unk_23E225500);
  if (!v43)
  {
    goto LABEL_8;
  }

  v56 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v56 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {

    goto LABEL_8;
  }

LABEL_9:
  v44 = (a3 + v35[6]);
  *v44 = v41;
  v44[1] = v43;
  *(a3 + v35[7]) = v62;
  v65[0] = sub_23E1FDABC();
  v45 = sub_23DEC5988(v24);
  if (v45)
  {
    v46 = v63;
    sub_23DE8D35C(v45, v65);
    v63 = v46;
  }

  v47 = objc_opt_self();
  v48 = sub_23E1FDA9C();
  v64 = 0;
  v49 = [v47 archivedDataWithRootObject:v48 requiringSecureCoding:1 error:&v64];

  v50 = v64;
  if (v49)
  {
    v51 = sub_23E1FBFDC();
    v53 = v52;

    v54 = (a3 + v35[8]);
    *v54 = v51;
    v54[1] = v53;
  }

  else
  {
    v57 = v50;
    sub_23E1FBECC();

    swift_willThrow();

    sub_23DE481FC(a3 + v60, &qword_27E32C208, &unk_23E2239B0);
  }

  v58 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23DEC21BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23DEC2280;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23DEC2280()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DEC2368@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsFaceTimeContact.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DEC2390(uint64_t a1)
{
  v2 = sub_23DEC558C(&qword_280DAEEF8, type metadata accessor for ShortcutsFaceTimeContact);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DEC240C(uint64_t a1)
{
  v2 = sub_23DEC558C(&qword_280DAE468, type metadata accessor for ShortcutsFaceTimeContact);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23DEC24A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DEC5B04;

  return EmptyFaceTimeContactQuery.entities(for:)();
}

uint64_t sub_23DEC2534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23DEC5A8C;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_23DEC25E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23DEC26A8;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_23DEC26A8()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_23DEC279C(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_23DEC4DCC();
  *v6 = v2;
  v6[1] = sub_23DEC5A8C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_23DEC2850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23DEC5A8C;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_23DEC2904()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_23E1FC1DC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_23E1FDBCC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v7, qword_27E32CFC8);
  __swift_project_value_buffer(v7, qword_27E32CFC8);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t static StartFaceTimeCallTopHitAction.title.modify()
{
  if (qword_27E32B930 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  __swift_project_value_buffer(v0, qword_27E32CFC8);
  OUTLINED_FUNCTION_17_0();
  return OUTLINED_FUNCTION_28_0();
}

void (*StartFaceTimeCallTopHitAction.faceTimeContact.modify())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *(v0 + 32) = OUTLINED_FUNCTION_79_1(v1);
  return sub_23DEC2CC8;
}

uint64_t sub_23DEC2D0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DEC2280;

  return StartFaceTimeCallTopHitAction.perform()(a1);
}

uint64_t sub_23DEC2DA4(uint64_t a1)
{
  v2 = sub_23DEC50FC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23DEC2DE0()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E1FC1DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_23E1FDBCC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v9, qword_27E32CFF0);
  __swift_project_value_buffer(v9, qword_27E32CFF0);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t static StartFaceTimeVideoCallTopHitAction.title.modify()
{
  if (qword_27E32B938 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  __swift_project_value_buffer(v0, qword_27E32CFF0);
  OUTLINED_FUNCTION_17_0();
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DEC30C0()
{
  OUTLINED_FUNCTION_5_7();
  sub_23DEC3AF0(v0, v1, v2);
  OUTLINED_FUNCTION_66_2();
  v3 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_49();
  return v7(v6);
}

uint64_t sub_23DEC3130()
{
  OUTLINED_FUNCTION_5_7();
  sub_23DEC3AF0(v2, v0, v1);
  OUTLINED_FUNCTION_91_2();
  v3 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_54();
  v7(v6);
  return swift_endAccess();
}

uint64_t _s9ActionKit023StartFaceTimeCallTopHitA0V17shortcutsMetadata08WorkflowB0018AppIntentShortcutsJ0CvgZ_0()
{
  v0 = sub_23E1FC7FC();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v12);
  sub_23E1FC81C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v18 = *MEMORY[0x277D7CB68];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v18;
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x800000023E254600;
  type metadata accessor for Key(0);
  sub_23DEC558C(&qword_280DAEDE0, type metadata accessor for Key);
  v19 = v18;
  sub_23E1FDABC();
  (*(v3 + 104))(v8, *MEMORY[0x277D7BF40], v0);
  v20 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t _s9ActionKit023StartFaceTimeCallTopHitA0V04faceE7ContactAA09ShortcutsdeJ0Vvs_0(uint64_t a1)
{
  v3 = type metadata accessor for ShortcutsFaceTimeContact();
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = *v1;
  sub_23DEC57BC(a1, v9 - v8, type metadata accessor for ShortcutsFaceTimeContact);
  sub_23E1FB5EC();
  return sub_23DEC5818(a1, type metadata accessor for ShortcutsFaceTimeContact);
}

void (*StartFaceTimeVideoCallTopHitAction.faceTimeContact.modify())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *(v0 + 32) = OUTLINED_FUNCTION_79_1(v1);
  return sub_23DEC5AD8;
}

uint64_t _s9ActionKit023StartFaceTimeCallTopHitA0VACycfC_0@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v1 = sub_23E1FB84C();
  v2 = OUTLINED_FUNCTION_6_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v11 = OUTLINED_FUNCTION_25(v10);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D040, &qword_23E2272F0);
  OUTLINED_FUNCTION_25(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  v25 = sub_23E1FBF0C();
  v26 = OUTLINED_FUNCTION_12(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D048, &qword_23E2272F8);
  sub_23E1FBEDC();
  sub_23E1FBEDC();
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
  type metadata accessor for ShortcutsFaceTimeContact();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = sub_23E1FB51C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
  (*(v4 + 104))(v9, *MEMORY[0x277CBA308], v1);
  OUTLINED_FUNCTION_12_8();
  sub_23DEC558C(v40, v41);
  result = sub_23E1FB61C();
  *v44 = result;
  return result;
}

uint64_t sub_23DEC3830(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DEC5A8C;

  return StartFaceTimeVideoCallTopHitAction.perform()(a1);
}

uint64_t sub_23DEC38C8(uint64_t a1)
{
  v2 = sub_23DEC5238();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23DEC3904()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E1FC1DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_23E1FDBCC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v9, qword_27E32D018);
  __swift_project_value_buffer(v9, qword_27E32D018);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t sub_23DEC3AF0(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return __swift_project_value_buffer(v5, a3);
}

uint64_t sub_23DEC3B84(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);
  __swift_project_value_buffer(v5, a3);
  OUTLINED_FUNCTION_66_2();
  v6 = *(*(v5 - 8) + 16);
  v7 = OUTLINED_FUNCTION_49();
  return v8(v7);
}

uint64_t sub_23DEC3C58(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = a3(0);
  __swift_project_value_buffer(v7, a4);
  OUTLINED_FUNCTION_91_2();
  v8 = *(v7 - 8);
  v9 = *(v8 + 24);
  v10 = OUTLINED_FUNCTION_54();
  v11(v10);
  swift_endAccess();
  return (*(v8 + 8))(a1, v7);
}

uint64_t static StartFaceTimeAudioCallTopHitAction.title.modify()
{
  if (qword_27E32B940 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  __swift_project_value_buffer(v0, qword_27E32D018);
  OUTLINED_FUNCTION_17_0();
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DEC3DBC(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_66_2();
  v4 = *v2;
  v5 = *a2;
  sub_23E1FB7BC();
  return OUTLINED_FUNCTION_54();
}

uint64_t sub_23DEC3E08(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_23DEC3EB0@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
  return sub_23E1FB7BC();
}

uint64_t sub_23DEC3F0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
  sub_23E1FB7BC();
}

uint64_t sub_23DEC3F7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = type metadata accessor for ShortcutsFaceTimeContact();
  v9 = OUTLINED_FUNCTION_25(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_11_5();
  sub_23DEC57BC(a1, v14, v15);
  v17 = *a2;
  sub_23E1FB7CC();
  a5(v14);
}

void (*StartFaceTimeAudioCallTopHitAction.faceTimeContact.modify())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *(v0 + 32) = OUTLINED_FUNCTION_79_1(v1);
  return sub_23DEC5AD8;
}

uint64_t sub_23DEC4090(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DEC5A8C;

  return StartFaceTimeAudioCallTopHitAction.perform()(a1);
}

uint64_t sub_23DEC4128(uint64_t a1)
{
  v2 = sub_23DEC5374();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t FaceTimeRecentsOptionsProvider.fetchResults()()
{
  OUTLINED_FUNCTION_23();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D040, &qword_23E2272F0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  v0[20] = OUTLINED_FUNCTION_42();
  v4 = type metadata accessor for ShortcutsFaceTimeContact();
  v0[21] = v4;
  v5 = *(v4 - 8);
  v0[22] = v5;
  v6 = *(v5 + 64) + 15;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DEC4270()
{
  OUTLINED_FUNCTION_33_0();
  v1 = [objc_allocWithZone(WFCallUtilities) init];
  v0[25] = v1;
  sub_23E1FDF0C();
  v0[26] = 0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DEC4418;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C890, &qword_23E224DF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DE8EBB4;
  v0[13] = &block_descriptor_10;
  v0[14] = v2;
  [v1 getRecentsCallWithTelephony:0 limit:10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DEC4418()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEC4934(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DEC5ABC;

  return FaceTimeRecentsOptionsProvider.fetchResults()();
}

uint64_t sub_23DEC49C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DEC4A68;

  return sub_23DEC0EB0();
}

uint64_t sub_23DEC4A68(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  OUTLINED_FUNCTION_0_3();
  *v10 = v9;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v11 = *(v9 + 8);

  return v11();
}

id sub_23DEC4B6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = [v5 initWithPerson:a1 type:a2 callTypeSerializedRepresentation:a3 personSerializedRepresentation:a4 namedQueryInfo:a5];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_23DEC4BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsFaceTimeContact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DEC4C50(uint64_t a1)
{
  result = sub_23DEC558C(&qword_280DAE468, type metadata accessor for ShortcutsFaceTimeContact);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DEC4DCC()
{
  result = qword_280DAE460;
  if (!qword_280DAE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE460);
  }

  return result;
}

unint64_t sub_23DEC4EF8()
{
  result = qword_280DAEEA0;
  if (!qword_280DAEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEEA0);
  }

  return result;
}

unint64_t sub_23DEC4F50()
{
  result = qword_280DAEE98;
  if (!qword_280DAEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEE98);
  }

  return result;
}

unint64_t sub_23DEC4FF0()
{
  result = qword_280DAEEA8[0];
  if (!qword_280DAEEA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DAEEA8);
  }

  return result;
}

unint64_t sub_23DEC5044()
{
  result = qword_280DAE3F0;
  if (!qword_280DAE3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D060, qword_23E2275D0);
    sub_23DEC558C(&qword_280DAEF18, type metadata accessor for ShortcutsFaceTimeContact);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE3F0);
  }

  return result;
}

unint64_t sub_23DEC50FC()
{
  result = qword_280DAF150;
  if (!qword_280DAF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF150);
  }

  return result;
}

unint64_t sub_23DEC5154()
{
  result = qword_280DAF148;
  if (!qword_280DAF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF148);
  }

  return result;
}

unint64_t sub_23DEC51AC()
{
  result = qword_280DAF158;
  if (!qword_280DAF158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF158);
  }

  return result;
}

unint64_t sub_23DEC5238()
{
  result = qword_280DAF108;
  if (!qword_280DAF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF108);
  }

  return result;
}

unint64_t sub_23DEC5290()
{
  result = qword_280DAF100;
  if (!qword_280DAF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF100);
  }

  return result;
}

unint64_t sub_23DEC52E8()
{
  result = qword_280DAF110;
  if (!qword_280DAF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF110);
  }

  return result;
}

unint64_t sub_23DEC5374()
{
  result = qword_280DAF120;
  if (!qword_280DAF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF120);
  }

  return result;
}

unint64_t sub_23DEC53CC()
{
  result = qword_280DAF118;
  if (!qword_280DAF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF118);
  }

  return result;
}

unint64_t sub_23DEC5424()
{
  result = qword_280DAF128;
  if (!qword_280DAF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF128);
  }

  return result;
}

uint64_t sub_23DEC558C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23DEC55D4(uint64_t a1)
{
  result = sub_23DEC55FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DEC55FC()
{
  result = qword_27E32D078;
  if (!qword_27E32D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D078);
  }

  return result;
}

unint64_t sub_23DEC5654()
{
  result = qword_280DAE450;
  if (!qword_280DAE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE450);
  }

  return result;
}

_BYTE *sub_23DEC5710(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_23DEC57BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_49();
  v8(v7);
  return a2;
}

uint64_t sub_23DEC5818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23DEC5870(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_53_1(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10 = sub_23E1FD3AC();
  OUTLINED_FUNCTION_12(v10);
  result = (*(v11 + 32))(v9 + *(v11 + 72) * a1, a4);
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

unint64_t sub_23DEC58F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_23DEC5940(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_53_1(a1, a2, a3, a4, a5);
  result = sub_23DE36CA4(v8, (*(v7 + 56) + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_23DEC5988(void *a1)
{
  v2 = [a1 parameters];

  if (!v2)
  {
    return 0;
  }

  sub_23DEC59F0();
  v3 = sub_23E1FDDEC();

  return v3;
}

unint64_t sub_23DEC59F0()
{
  result = qword_280DAE300;
  if (!qword_280DAE300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DAE300);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_15@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[28] = sub_23DEDB89C;
  v2[29] = a2;
  v2[30] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t result)
{
  v1[43] = result;
  v1[25] = result;
  v1[18] = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_3_7()
{
  v1[20] = sub_23DEDB89C;
  v1[21] = v0;
  v1[22] = v2;
}

uint64_t OUTLINED_FUNCTION_4_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[28] = sub_23DEDB89C;
  v2[29] = a2;
  v2[30] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7()
{
  v1 = v0[45];
  ++v0[46];
  return v0[38];
}

void OUTLINED_FUNCTION_15_9()
{
  v5 = v0[43];
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
}

void OUTLINED_FUNCTION_16_7()
{
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[43];
}

id OUTLINED_FUNCTION_21_6(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t result)
{
  *(v1 + 376) = result;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_25_3(uint64_t result)
{
  *(v1 + 400) = result;
  v3 = *(v2 + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1)
{
  *(v1 + 272) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_30_3()
{
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  v7 = v0[38];
  v8 = v0[36];

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1)
{
  *(v1 + 376) = a1;
  v5 = (v3 + *(v2 + 28));
  v6 = *v5;
  v7 = v5[1];

  return sub_23E1FBFCC();
}

uint64_t OUTLINED_FUNCTION_34_1()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  return v0[36];
}

id OUTLINED_FUNCTION_40_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_41_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1)
{
  *(v1 + 384) = a1;
  v4 = *v2;
  v5 = v2[1];

  return sub_23E1FDBDC();
}

unint64_t OUTLINED_FUNCTION_53_1(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void OUTLINED_FUNCTION_56_3()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[34];
}

void OUTLINED_FUNCTION_57_2()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[34];
}

uint64_t OUTLINED_FUNCTION_59_2()
{
  *(v1 + 360) = *(v0 + 16);
  *(v1 + 368) = 0;

  return sub_23E1FB7BC();
}

uint64_t OUTLINED_FUNCTION_60_1()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_66_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_67_1()
{

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{
  *(v1 + 392) = a1;

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_78_2(uint64_t a1)
{
  *(v1 + 384) = a1;
  v4 = *v2;
  v5 = v2[1];

  return sub_23E1FDBDC();
}

uint64_t OUTLINED_FUNCTION_79_1(uint64_t a1)
{
  *v1 = a1;
  v4 = *v2;

  return sub_23E1FB5CC();
}

void OUTLINED_FUNCTION_80_1()
{
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[38];
}

uint64_t OUTLINED_FUNCTION_81_1(uint64_t a1)
{
  *(v1 + 304) = a1;
  *(v1 + 312) = v2;
}

uint64_t OUTLINED_FUNCTION_83_2@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a1 + a3;

  return sub_23DEC57BC(v5, v3, a2);
}

uint64_t OUTLINED_FUNCTION_91_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_93_2()
{
  v2 = *(v0 + 408);
  v3 = *(v0 + 288);
}

uint64_t sub_23DEC6194(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 64) = a1;
  return MEMORY[0x2822009F8](sub_23DEC61B8, 0, 0);
}

uint64_t sub_23DEC61B8()
{
  OUTLINED_FUNCTION_4();
  v1 = [*(v0 + 24) CGImage];
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D088, &qword_23E227D18);
    *v5 = v0;
    v5[1] = sub_23DEC6314;
    OUTLINED_FUNCTION_22();

    return MEMORY[0x2822008A0](v6, v7, v8, 0xD000000000000023, v9, v10, v3, v11);
  }

  else
  {
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_23DEC6314()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DEC6418()
{
  OUTLINED_FUNCTION_23();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23DEC647C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_19();
  v3 = *(v0 + 56);

  return v2();
}

void sub_23DEC64E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D090, &qword_23E227D20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  aBlock[4] = sub_23DEC806C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DEBE4C4;
  aBlock[3] = &block_descriptor_11;
  v9 = _Block_copy(aBlock);

  vk_cgImageRemoveBackgroundWithDownsizing();
  _Block_release(v9);
}

void sub_23DEC6694(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D090, &qword_23E227D20);
    sub_23E1FDE7C();
  }

  else if (a1)
  {
    v4 = objc_opt_self();
    v5 = a1;
    [v4 imageWithCGImage_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D090, &qword_23E227D20);
    sub_23E1FDE8C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D090, &qword_23E227D20);
    sub_23E1FDE8C();
  }
}

uint64_t sub_23DEC67A4()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D098, &qword_23E227D28);
  *v4 = v0;
  v4[1] = sub_23DEC68A4;
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822008A0](v5, v6, v7, 0xD000000000000017, v8, v9, v2, v10);
}

uint64_t sub_23DEC68A4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_23DEC69C4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E32D0A0, &unk_23E227D30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_23DEC819C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DEC6DB0;
  aBlock[3] = &block_descriptor_18;
  v11 = _Block_copy(aBlock);

  sub_23DE38DA8(0, &qword_27E32C2B0, 0x277D79FC8);
  [a2 getObjectRepresentations:v11 forClass:swift_getObjCClassFromMetadata()];
  _Block_release(v11);
}

void sub_23DEC6B94(uint64_t a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E32D0A0, &unk_23E227D30);
    sub_23E1FDE7C();
    return;
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  v5 = sub_23DE4BC20(a1);
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  if (!a2 || (v7 = sub_23DE4BB0C(a2)) == 0)
  {

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E32D0A0, &unk_23E227D30);
    sub_23E1FDE8C();
    return;
  }

  v8 = v7;
  v9 = 0;
  v23 = sub_23DE4D8B0(v6);
  v10 = (v8 + 40);
  v11 = MEMORY[0x277D84F90];
  for (i = v8; ; v8 = i)
  {
    if (v23 == v9)
    {

      goto LABEL_21;
    }

    if ((v6 & 0xC000000000000001) == 0)
    {
      break;
    }

    v12 = MEMORY[0x23EF04DD0](v9, v6);
LABEL_12:
    v13 = v12;
    v14 = *(v8 + 16);
    if (v9 == v14)
    {

      goto LABEL_21;
    }

    if (v9 >= v14)
    {
      goto LABEL_25;
    }

    v15 = *(v10 - 1);
    v16 = *v10;
    sub_23E1FB7BC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = *(v11 + 16);
      sub_23DE4D1EC();
      v11 = v20;
    }

    v17 = *(v11 + 16);
    if (v17 >= *(v11 + 24) >> 1)
    {
      sub_23DE4D1EC();
      v11 = v21;
    }

    *(v11 + 16) = v17 + 1;
    v18 = (v11 + 24 * v17);
    v18[4] = v13;
    v18[5] = v15;
    v18[6] = v16;
    v10 += 2;
    ++v9;
  }

  if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v6 + 8 * v9 + 32);
    goto LABEL_12;
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_23DEC6DB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_23E1FDDEC();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_23E1FDDEC();
  }

LABEL_4:
  sub_23E1FB7CC();
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_23DEC6E74()
{
  sub_23DE38DA8(0, &qword_27E32C7C0, 0x277CCABB0);
  v0 = sub_23E1FE3FC();
  result = 2;
  if (v0)
  {
    v2 = 2;
    MEMORY[0x23EF04640](v0, &v2);

    return v2;
  }

  return result;
}

uint64_t sub_23DEC6F48()
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](0);
  return sub_23E1FE87C();
}

uint64_t sub_23DEC6F98()
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](0);
  return sub_23E1FE87C();
}

uint64_t sub_23DEC7044()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ImageRemoveBackgroundAction();
  v1 = objc_msgSendSuper2(&v7, sel_disabledOnPlatforms);
  type metadata accessor for WFExecutionPlatform(0);
  v2 = sub_23E1FDDEC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C560, &unk_23E2290D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v4 = *MEMORY[0x277D7CC80];
  *(inited + 32) = *MEMORY[0x277D7CC80];
  v5 = v4;
  sub_23DE571A8(inited);
  return v2;
}

id sub_23DEC7100(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13[3] = &type metadata for VisualIntelligenceFeatureFlags;
  v13[4] = sub_23DEC8230();
  v7 = sub_23E1FCA4C();
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (v7)
  {
    v8 = sub_23E1FDBDC();

    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
      v9 = sub_23E1FDA9C();
    }

    else
    {
      v9 = 0;
    }

    v12.receiver = v4;
    v12.super_class = type metadata accessor for ImageRemoveBackgroundAction();
    v10 = objc_msgSendSuper2(&v12, sel_initWithIdentifier_definition_serializedParameters_, v8, a3, v9);

    if (v10)
    {
    }
  }

  else
  {

    type metadata accessor for ImageRemoveBackgroundAction();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

uint64_t sub_23DEC72EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_23E1FDECC();
  v2[4] = sub_23E1FDEBC();
  v4 = sub_23E1FDE6C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_23DEC7384, v4, v3);
}

uint64_t sub_23DEC7384()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 24);
  result = sub_23DEC6E74();
  *(v0 + 144) = result;
  if (result == 2)
  {
    __break(1u);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_23DEC744C;
    v4 = *(v0 + 16);

    return sub_23DEC6784();
  }

  return result;
}

uint64_t sub_23DEC744C()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = v2[7];
  v6 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v7 = v6;
  *(v9 + 64) = v8;
  *(v9 + 72) = v0;

  v10 = v2[6];
  v11 = v2[5];
  if (v0)
  {
    v12 = sub_23DEC7A40;
  }

  else
  {
    v12 = sub_23DEC7584;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

void *sub_23DEC7584()
{
  OUTLINED_FUNCTION_4();
  result = *(v0 + 64);
  v2 = result[2];
  *(v0 + 80) = v2;
  *(v0 + 88) = 0;
  if (v2)
  {
    if (result[2])
    {
      v3 = result[4];
      *(v0 + 96) = v3;
      *(v0 + 104) = result[5];
      *(v0 + 112) = result[6];
      v4 = *(v0 + 144);
      v5 = v3;
      sub_23E1FB7BC();
      v6 = swift_task_alloc();
      *(v0 + 120) = v6;
      *v6 = v0;
      v7 = OUTLINED_FUNCTION_0_17(v6);

      return sub_23DEC6194(v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *(v0 + 32);

    OUTLINED_FUNCTION_19();

    return v9();
  }

  return result;
}

uint64_t sub_23DEC768C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;
  v3[17] = v0;

  if (v0)
  {
    v8 = v3[8];

    v9 = v3[5];
    v10 = v3[6];
    v11 = sub_23DEC7A9C;
  }

  else
  {
    v9 = v3[5];
    v10 = v3[6];
    v11 = sub_23DEC779C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

char *sub_23DEC779C()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    v4 = sub_23E1FDBDC();
    sub_23E1FDCBC();
    if (qword_280DAE1D8 != -1)
    {
      swift_once();
    }

    v5 = qword_280DAE278;
    v6 = sub_23E1FDBDC();
    v7 = sub_23E1FDBDC();

    v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

    if (!v8)
    {
      sub_23E1FDC1C();
      v8 = sub_23E1FDBDC();
    }

    v9 = *(v0 + 24);
    v10 = [v4 wf:v8 filenameTruncatedToMaximumLengthWithFormat:?];

    v11 = sub_23E1FDC1C();
    v13 = v12;

    result = [v9 output];
    if (!result)
    {
      goto LABEL_17;
    }

    v15 = result;
    v16 = v1;
    sub_23DEC7FE4(v16, v11, v13, v15);
  }

  v17 = *(v0 + 112);

  v18 = *(v0 + 80);
  v19 = *(v0 + 88) + 1;
  *(v0 + 88) = v19;
  result = *(v0 + 64);
  if (v19 == v18)
  {
    v20 = *(v0 + 32);

    OUTLINED_FUNCTION_19();

    return v21();
  }

  if (v19 >= *(result + 2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v22 = &result[24 * v19];
  v23 = *(v22 + 4);
  *(v0 + 96) = v23;
  *(v0 + 104) = *(v22 + 5);
  *(v0 + 112) = *(v22 + 6);
  v24 = *(v0 + 144);
  v25 = v23;
  sub_23E1FB7BC();
  v26 = swift_task_alloc();
  *(v0 + 120) = v26;
  *v26 = v0;
  v27 = OUTLINED_FUNCTION_0_17();

  return sub_23DEC6194(v27);
}

uint64_t sub_23DEC7A40()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DEC7A9C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 112);

  v2 = *(v0 + 136);
  v3 = *(v0 + 32);

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_23DEC7BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEC7C60, v5, v4);
}

uint64_t sub_23DEC7C60()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23DEC7D20;
  v8 = v0[4];
  v9 = v0[2];

  return sub_23DEC72EC(v9);
}

uint64_t sub_23DEC7D20()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[6];
  if (v2)
  {
    v11 = sub_23E1FBEBC();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v12 = v9[1];

  return v12();
}

id sub_23DEC7ED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageRemoveBackgroundAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DEC7F34()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE47040;

  return sub_23DEC7BC4(v2, v3, v4);
}

void sub_23DEC7FE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_23E1FDBDC();

  [a4 addObject:a1 named:v6];
}

void sub_23DEC8060(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_23DEC64E0(a1);
}

void sub_23DEC806C(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D090, &qword_23E227D20) - 8) + 80);

  sub_23DEC6694(a1, a2);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

uint64_t objectdestroy_9Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void sub_23DEC819C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E32D0A0, &unk_23E227D30) - 8) + 80);

  sub_23DEC6B94(a1, a2, a3);
}

unint64_t sub_23DEC8230()
{
  result = qword_280DAEE90;
  if (!qword_280DAEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEE90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisualIntelligenceFeatureFlags(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_23DEC8340(uint64_t a1)
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

uint64_t sub_23DEC83B8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_23DEC84F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}