uint64_t sub_23B3A4598()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 52));
}

void OUTLINED_FUNCTION_205_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 256) = v1;
  *(v2 - 248) = v3;
}

uint64_t sub_23B3A461C(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;
  }

  else
  {
    v3 = sub_23B3A4A40();
    if (v3)
    {
      v1 = v3;
      *a1 = v3;
    }

    else
    {
      v1 = MEMORY[0x277D84F98];
      *a1 = MEMORY[0x277D84F98];
    }
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_23B50D834();
}

uint64_t OUTLINED_FUNCTION_5_5(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F1C50(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_5_11()
{

  return sub_23B50D674();
}

void OUTLINED_FUNCTION_5_16(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_5_18()
{

  return sub_23B50D6D4();
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return sub_23B50D0E4();
}

void OUTLINED_FUNCTION_5_20()
{

  JUMPOUT(0x23EE9D460);
}

uint64_t OUTLINED_FUNCTION_5_22()
{
  result = v0;
  v3 = *(v1 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_28()
{
  v2 = *(v0 - 2520);

  return sub_23B50D674();
}

void OUTLINED_FUNCTION_5_29()
{
  v4 = v0[32] & 0xFFFFFFFFFFFFFFFELL;
  v1 = v0[33] & 0xFFFFFFFFFFFFFFFELL;
  v2 = v0[34] & 0xFFFFFFFFFFFFFFFELL;
  v3 = v0[35] & 0xFFFFFFFFFFFFFFFELL;
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return sub_23B50D1C4();
}

uint64_t OUTLINED_FUNCTION_5_33()
{

  return type metadata accessor for WeatherServiceFetchOptions();
}

void OUTLINED_FUNCTION_5_34()
{
  *(v0 - 232) = 0;
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
}

uint64_t sub_23B3A4A08()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 56));
}

uint64_t sub_23B3A4A40()
{
  v0 = sub_23B50D044();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D6C988], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AC0, &qword_23B519F10);
  sub_23B50D054();
  (*(v1 + 8))(v4, v0);
  return v6[1];
}

void sub_23B3A4B70(void *a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133548, &unk_23B519F90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v43 - v5;
  v7 = sub_23B50C3C4();
  v8 = *(v7 - 8);
  v50 = v7;
  v51 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23B3A528C();
  if (!v12)
  {
    if (qword_280B43440 != -1)
    {
LABEL_27:
      swift_once();
    }

    v17 = sub_23B50CDF4();
    __swift_project_value_buffer(v17, qword_280B4E9D8);
    v18 = sub_23B50CDD4();
    v19 = sub_23B50D4B4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23B38D000, v18, v19, "no store AQI scale database is setup - returning nil", v20, 2u);
      MEMORY[0x23EE9E260](v20, -1, -1);
    }

    v16 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = *(v12 + 16);
  sub_23B50CF14();
  v15 = sub_23B50CEE4();
  if (v1)
  {

    v16 = 0;
LABEL_23:
    *v44 = v16;
    return;
  }

  v21 = v15;
  v43[0] = v13;
  v43[1] = 0;

  v46 = v51 + 32;
  v16 = MEMORY[0x277D84F98];
  v45 = v51 + 40;
  v22 = *(v21 + 16);
  v48 = v6;
  v49 = v22;
  v23 = (v21 + 48);
  v47 = v21;
  while (1)
  {
    if (v49 == v2)
    {

      goto LABEL_23;
    }

    if (v2 >= *(v21 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v24 = *(v23 - 2);
    v25 = *(v23 - 1);
    v26 = *v23;

    v54 = v25;

    v55 = v24;
    sub_23B50CF54();
    v27 = v57;
    if (!v57)
    {
      break;
    }

    v52 = v23;
    v53 = v2;
    v28 = v56;
    sub_23B50CF54();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133550, &qword_23B517AC8);
    if (__swift_getEnumTagSinglePayload(v6, 1, v29) == 1)
    {
      goto LABEL_29;
    }

    v30 = v11;
    sub_23B50CEC4();
    (*(*(v29 - 8) + 8))(v6, v29);
    swift_isUniquelyReferenced_nonNull_native();
    v58 = v16;
    v31 = sub_23B3A7084(v28, v27);
    if (__OFADD__(v16[2], (v32 & 1) == 0))
    {
      goto LABEL_25;
    }

    v33 = v31;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AE0, &qword_23B519F80);
    if (sub_23B50D624())
    {
      v35 = sub_23B3A7084(v28, v27);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_30;
      }

      v33 = v35;
    }

    if (v34)
    {

      v16 = v58;
      v37 = v58[7] + *(v51 + 72) * v33;
      v11 = v30;
      (*(v51 + 40))(v37, v30, v50);
    }

    else
    {
      v16 = v58;
      v58[(v33 >> 6) + 8] |= 1 << v33;
      v38 = (v16[6] + 16 * v33);
      *v38 = v28;
      v38[1] = v27;
      v39 = v16[7] + *(v51 + 72) * v33;
      v11 = v30;
      (*(v51 + 32))(v39, v30, v50);

      v40 = v16[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_26;
      }

      v16[2] = v42;
    }

    v23 = v52 + 3;
    v2 = v53 + 1;
    v21 = v47;
    v6 = v48;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_23B50D864();
  __break(1u);
}

unint64_t OUTLINED_FUNCTION_24_6()
{
  *(v0 + 12) = 2081;

  return sub_23B3A3BC8();
}

uint64_t OUTLINED_FUNCTION_24_10()
{
  v2 = *(v0 - 88);

  return sub_23B50D964();
}

uint64_t OUTLINED_FUNCTION_24_11@<X0>(uint64_t a1@<X8>)
{

  return sub_23B39E56C(v2 + a1, v4, v3, v1);
}

void OUTLINED_FUNCTION_24_14(int a1@<W8>)
{
  *(v1 - 232) = a1;
  *(v1 - 224) = a1;
  *(v1 - 216) = a1;
  *(v1 - 208) = a1;
}

uint64_t OUTLINED_FUNCTION_66_0()
{

  return type metadata accessor for DayWeather();
}

void OUTLINED_FUNCTION_58()
{
  *(v0 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  v3 = *v1;
  result = v0;
  v5 = *(v2 - 152);
  return result;
}

uint64_t sub_23B3A528C()
{
  v1 = *(v0 + 32);
  sub_23B50B014();
  return v3;
}

uint64_t sub_23B3A52DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50B654();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3A5344@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

void *sub_23B3A5398()
{
  v0 = sub_23B50CFB4();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  MEMORY[0x28223BE20](v0);
  v29 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23B50CFD4();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v28 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23B50CFA4();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23B50D024();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_23B50CE84();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_23B50D014();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = sub_23B50D034();
  if (qword_280B43210 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, qword_280B4E9B8);
  (*(v18 + 16))(v21, v22, v17);
  sub_23B50CE74();
  *v14 = 32;
  (*(v11 + 104))(v14, *MEMORY[0x277D6C978], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277D6C940], v26);
  (*(v3 + 104))(v28, *MEMORY[0x277D6C958], v27);
  (*(v30 + 104))(v29, *MEMORY[0x277D6C948], v31);
  v32 = 1;
  v23 = sub_23B50CFC4();
  type metadata accessor for AQIScaleStore();
  swift_allocObject();
  return sub_23B3A5A60(v23);
}

uint64_t sub_23B3A582C(uint64_t a1)
{
  v2 = sub_23B50B654();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B3A58AC()
{
  v0 = sub_23B50CDF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23B50D014();
  __swift_allocate_value_buffer(v5, qword_280B4E9B8);
  __swift_project_value_buffer(v5, qword_280B4E9B8);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280B4E9D8);
  (*(v1 + 16))(v4, v6, v0);
  sub_23B50CFF4();
  return (*(v1 + 8))(v4, v0);
}

void *sub_23B3A5A60(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  if (a1)
  {
    sub_23B3A5C1C();
    v5 = sub_23B50CFE4();
    if (v2)
    {

      OUTLINED_FUNCTION_0_51();
    }

    else
    {
      v1[2] = v5;

      sub_23B50CF24();

      sub_23B50CF74();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_51();
    return 0;
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_68_3()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_112()
{

  return sub_23B50D834();
}

uint64_t OUTLINED_FUNCTION_112_0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = **(v0 + 80);
  *(v0 + 48) = *(v0 + 152);
  *(v0 + 64) = *(v0 + 168);
  return 0;
}

unint64_t sub_23B3A5C1C()
{
  result = qword_280B43200;
  if (!qword_280B43200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43200);
  }

  return result;
}

void OUTLINED_FUNCTION_78_0()
{
  *(v5 - 192) = v4;
  *(v5 - 184) = v3;
  *(v5 - 176) = v0;
  *(v5 - 168) = v2;
  *(v5 - 160) = v1;
}

uint64_t OUTLINED_FUNCTION_78_1()
{
  result = *(v0 - 256);
  v3 = *(v1 - 344);
  return result;
}

__n128 OUTLINED_FUNCTION_78_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 184);
  v4 = *(v2 + 192);
  result = *(v2 + 168);
  v6 = *(v2 + 152);
  v7 = *(v2 + 160);
  return result;
}

size_t sub_23B3A5CB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23B3A5DB8()
{
  result = qword_280B431E0;
  if (!qword_280B431E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431E0);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_26_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_26_4()
{
  v2 = *(v0 + 8);
  result = *(v1 - 224);
  v4 = *(v1 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_26_8(uint64_t a1)
{

  return sub_23B398890(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return sub_23B4338F4(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_10@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_23B3C2510(v3, v4 + a3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_26_11()
{
  *(v0 - 83) = 771;
  *(v0 - 81) = 3;

  return type metadata accessor for HistoricalComparisons();
}

void OUTLINED_FUNCTION_26_12(uint64_t a1@<X8>)
{
  *(v4 - 112) = a1;
  *(v4 - 104) = v1;
  *(v4 - 96) = v2;
  *(v4 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_26_15()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_26_17()
{
  v2 = *(v0 - 112);

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_26_19()
{

  return sub_23B50D7F4();
}

unint64_t sub_23B3A6058()
{
  result = qword_280B431D0;
  if (!qword_280B431D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_101_1()
{

  return swift_task_alloc();
}

uint64_t sub_23B3A60F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_23B50BAE4();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_23B3A61A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D68, &qword_23B515158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_255(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *(v13 - 144);

  sub_23B3AFEEC(v12, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_255_0()
{
}

unint64_t sub_23B3A624C()
{
  result = qword_280B431D8;
  if (!qword_280B431D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431D8);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_15_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_4()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_7(void *a1)
{
  *v1 = a1;
  *a1 = v2;

  return sub_23B50AB34();
}

uint64_t OUTLINED_FUNCTION_15_15()
{

  return sub_23B3CE510(v2 - 128, v2 - 208, v1, v0);
}

uint64_t OUTLINED_FUNCTION_15_17()
{

  return type metadata accessor for WeatherChange();
}

uint64_t OUTLINED_FUNCTION_15_18@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_15_21()
{
  v2 = *(v0 - 104);

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return sub_23B50AAF4();
}

uint64_t OUTLINED_FUNCTION_44_5@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 112) = a1;
  *(v4 - 104) = v1;
  *(v4 - 96) = v2;
  *(v4 - 88) = v3;
  return 255;
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return sub_23B396CA4();
}

void OUTLINED_FUNCTION_44_7(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 112) = v4;
  *(v2 - 104) = v3;
}

unint64_t sub_23B3A6574()
{
  result = qword_280B431F0;
  if (!qword_280B431F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_30_0@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, unint64_t a2)
{

  return sub_23B391F1C(a1, a2, (v2 - 72));
}

uint64_t OUTLINED_FUNCTION_30_5()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_45_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_8()
{
  v2 = *(v0 - 104);

  return sub_23B50D974();
}

void OUTLINED_FUNCTION_30_9(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_30_12()
{
  result = v0;
  v4 = *(v1 - 168);
  v3 = *(v1 - 160);
  return result;
}

__n128 OUTLINED_FUNCTION_30_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v9 + *(v10 + 24)) = v11;
  result = a9;
  *(v9 + *(v10 + 28)) = a9;
  return result;
}

unint64_t sub_23B3A672C()
{
  result = qword_280B431F8;
  if (!qword_280B431F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_155_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_155_1()
{
  v2 = v0[47];
  result = v0[48];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[35];
  v10 = v0[36];
  v11 = v0[31];
  v12 = v0[32];
  return result;
}

unint64_t sub_23B3A67D4()
{
  result = qword_280B431E8;
  if (!qword_280B431E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431E8);
  }

  return result;
}

uint64_t sub_23B3A6828()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0[2] + OBJC_IVAR____TtC10WeatherKit14WeatherService_airQualityScaleService);
  return sub_23B3A3C34(v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return type metadata accessor for WeatherQuery();
}

uint64_t sub_23B3A68D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334B8, &qword_23B517A88);
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C0, &qword_23B517A90);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C8, &unk_23B51DB60);
  v16 = OUTLINED_FUNCTION_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_12_13();
  MEMORY[0x28223BE20](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D0, &qword_23B517A98);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_7_1(v27);
  swift_allocObject();
  OUTLINED_FUNCTION_6_11();
  v28 = sub_23B50CF44();
  sub_23B50AD14();
  v29 = *MEMORY[0x277D6C920];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E0, &qword_23B517AA0);
  OUTLINED_FUNCTION_6(v30);
  v32 = *(v31 + 104);
  v32(v14, v29, v30);
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v30);
  sub_23B50AD14();
  v32(v11, v29, v30);
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v30);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
  OUTLINED_FUNCTION_7_1(v39);
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334F0, &qword_23B517AA8);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334F8, &qword_23B517AB0);
  OUTLINED_FUNCTION_7_1(v47);
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  return v28;
}

uint64_t OUTLINED_FUNCTION_128_0()
{
  result = *(v0 - 256);
  v3 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_128_1()
{
  result = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v9 = v0[32];
  v10 = v0[33];
  v11 = v0[31];
  v12 = v0[28];
  return result;
}

uint64_t OUTLINED_FUNCTION_131_1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = result;
  v6[3] = a2;
  return result;
}

uint64_t sub_23B3A6C5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3A68D8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_23B50D134();
}

double OUTLINED_FUNCTION_13_0@<D0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[30];
  v4 = v2[27];
  v5 = v2[23];
  v6 = v2[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_45_8()
{

  return sub_23B50D134();
}

void OUTLINED_FUNCTION_13_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_13_11()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 112);

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1)
{
  *(v1 + *(a1 + 32)) = 0;

  return sub_23B50AD24();
}

void OUTLINED_FUNCTION_13_15(uint64_t a1@<X8>)
{
  *(v4 - 120) = a1;
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
}

uint64_t OUTLINED_FUNCTION_13_19()
{

  return sub_23B50D764();
}

void OUTLINED_FUNCTION_13_20()
{
  v3 = v0 + *(v1 + 36);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v2;
  v4 = v0 + *(v1 + 40);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_13_22()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_13_23@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_26()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 2, v1);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_74_2()
{
  v4[22] = v0;
  v4[23] = v1;
  v4[24] = v2;
  v4[25] = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 400);

  return sub_23B391F1C(a1, a2, (v3 - 72));
}

uint64_t OUTLINED_FUNCTION_49_4()
{
  v2 = *(v0 - 376);

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return MEMORY[0x2822009F8]();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_23B3A7084(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23B50D8C4();
  sub_23B50D1C4();
  v6 = sub_23B50D914();

  return sub_23B3AE2A4(a1, a2, v6);
}

uint64_t sub_23B3A7108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v40 = a1;
  v41 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v39 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v39 - v13;
  v15 = sub_23B50AD24();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50AD14();
  sub_23B50ABD4();
  v21 = v20;
  (*(v16 + 8))(v19, v15);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v22 = sub_23B50CDF4();
  __swift_project_value_buffer(v22, qword_280B4E9D8);
  v23 = a4;
  v24 = sub_23B50CDD4();
  v25 = sub_23B50D4C4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39[1] = v5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v42 = v23;
    v43 = v28;
    *v27 = 141558531;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    sub_23B3A3BC8();
    v29 = v23;
    v30 = sub_23B50D1A4();
    v32 = sub_23B391F1C(v30, v31, &v43);

    *(v27 + 14) = v32;
    *(v27 + 22) = 2050;
    *(v27 + 24) = v21;
    _os_log_impl(&dword_23B38D000, v24, v25, "Got response for fetch of AQI scale; location=%{private,mask.hash}s, duration=%{public}f", v27, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x23EE9E260](v28, -1, -1);
    MEMORY[0x23EE9E260](v27, -1, -1);
  }

  v33 = sub_23B50C3C4();
  (*(*(v33 - 8) + 16))(v14, v40, v33);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v33);
  v34 = *(v7 + 48);
  *v10 = v41;
  sub_23B3AEA68(v14, v10 + v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D78, &qword_23B515168);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();

  return sub_23B50B094();
}

uint64_t OUTLINED_FUNCTION_48_2()
{
  v2 = *(*(v1 - 344) + 8);
  result = v0;
  v4 = *(v1 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_5()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return type metadata accessor for DayPartForecast();
}

uint64_t sub_23B3A754C(char **a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v125 = a3;
  v11 = 8 * a8;
  v106 = a6;
  v105 = a7;
  v114 = a2;
  v112 = a4;
  v113 = a1;
  if (a8 == 1)
  {
    v12 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    for (i = 0; a8 != i; ++i)
    {
      *(&(&v100)[i] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)) = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v15 = sub_23B50D954();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v124 = &v100;
  v104 = v17;
  v103 = v18;
  v102 = &v100 - v19;
  v109 = a9;
  if (a8 == 1)
  {
    v20 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v21 = type metadata accessor for WeatherQuery();
  }

  else
  {
    MEMORY[0x28223BE20](v17);
    for (j = 0; a8 != j; ++j)
    {
      v23 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      *(&(&v100)[j] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for WeatherQuery();
    }

    v21 = swift_getTupleTypeMetadata();
  }

  v123 = &v100;
  v126 = v21;
  v107 = *(v21 - 8);
  v24 = *(v107 + 64);
  MEMORY[0x28223BE20](v21);
  v129 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = &v100;
  v110 = TupleTypeMetadata;
  v101 = *(TupleTypeMetadata - 8);
  v26 = *(v101 + 64);
  MEMORY[0x28223BE20](v27);
  v100 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = &v100;
  MEMORY[0x28223BE20](v29);
  v108 = &v100 - v30;
  v31 = type metadata accessor for WeatherProductsContainer();
  v120 = &v100;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v127 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  v119 = &v100;
  v111 = v34;
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v37 = (&v100 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  v118 = &v100;
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38 - 8);
  v128 = &v100 - v40;
  v41 = sub_23B50AD24();
  v117 = &v100;
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v100 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = &v100;
  MEMORY[0x28223BE20](v46);
  v47 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a8)
  {
    v48 = (v126 + 32);
    v49 = (&v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v50 = a8;
    do
    {
      if (a8 == 1)
      {
        v51 = 0;
      }

      else
      {
        v51 = *v48;
      }

      *v49++ = a5 + v51;
      v48 += 4;
      --v50;
    }

    while (v50);
  }

  sub_23B50AD14();
  sub_23B50ABD4();
  v53 = v52;
  (*(v42 + 8))(v45, v41);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v54 = sub_23B50CDF4();
  v55 = __swift_project_value_buffer(v54, qword_280B4E9D8);
  v56 = v112;
  v125 = v55;
  v57 = sub_23B50CDD4();
  v58 = sub_23B50D4C4();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = v11;
    v61 = swift_slowAlloc();
    *v59 = 141558531;
    *(v59 + 4) = 1752392040;
    *(v59 + 12) = 2113;
    *(v59 + 14) = v56;
    *v61 = v56;
    *(v59 + 22) = 2050;
    *(v59 + 24) = v53;
    v62 = v56;
    _os_log_impl(&dword_23B38D000, v57, v58, "Got response for fetch of weather data + corresponding AQI scale; location=%{private,mask.hash}@, duration=%{public}f", v59, 0x20u);
    sub_23B398890(v61, &qword_27E132D80, &qword_23B5192E0);
    v63 = v61;
    v11 = v60;
    MEMORY[0x23EE9E260](v63, -1, -1);
    MEMORY[0x23EE9E260](v59, -1, -1);
  }

  sub_23B3A23E0();
  v64 = *v37;
  v65 = *(v111 + 48);
  v66 = v128;
  sub_23B3AF918();
  v67 = v127;
  v68 = v115;
  sub_23B3A8A0C(v64, v56, v66, v127);
  if (v68)
  {
    sub_23B398890(v66, &qword_27E131EA8, &qword_23B5194F0);
  }

  else
  {
    v114 = v56;

    v113 = &v100;
    MEMORY[0x28223BE20](v70);
    v72 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v115 = 0;
    if (a8)
    {
      v73 = 0;
      v74 = (v110 + 32);
      v75 = v108;
      do
      {
        if (a8 == 1)
        {
          v76 = 0;
        }

        else
        {
          v76 = *v74;
        }

        *&v72[8 * v73++] = &v75[v76];
        v74 += 4;
      }

      while (a8 != v73);
      MEMORY[0x28223BE20](v71);
      v77 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v78 = 0;
      v79 = v109 & 0xFFFFFFFFFFFFFFFELL;
      v80 = (v126 + 32);
      do
      {
        if (a8 == 1)
        {
          v81 = 0;
        }

        else
        {
          v81 = *v80;
        }

        v82 = *(v79 + 8 * v78);
        v83 = &v129[v81];
        v84 = *&v47[8 * v78];
        v85 = type metadata accessor for WeatherQuery();
        (*(*(v85 - 8) + 16))(v83, v84, v85);
        *&v77[8 * v78++] = v83;
        v80 += 4;
      }

      while (a8 != v78);
      v67 = v127;
      v66 = v128;
    }

    else
    {
      v77 = &v130;
    }

    v86 = v114;
    type metadata accessor for WeatherService();
    v87 = v115;
    sub_23B3CE19C(v77, v67, a8, v109, v72);
    v88 = v110;
    if (v87)
    {
      sub_23B3A24BC(v67, type metadata accessor for WeatherProductsContainer);
      sub_23B398890(v66, &qword_27E131EA8, &qword_23B5194F0);
      return (*(v107 + 8))(v129, v126);
    }

    else
    {
      (*(v107 + 8))(v129, v126);
      v89 = v86;
      v90 = sub_23B50CDD4();
      v91 = sub_23B50D4C4();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 141558275;
        *(v92 + 4) = 1752392040;
        *(v92 + 12) = 2113;
        *(v92 + 14) = v89;
        *v93 = v89;
        v94 = v89;
        _os_log_impl(&dword_23B38D000, v90, v91, "Successfully created product tuple; location=%{private,mask.hash}@", v92, 0x16u);
        sub_23B398890(v93, &qword_27E132D80, &qword_23B5192E0);
        MEMORY[0x23EE9E260](v93, -1, -1);
        MEMORY[0x23EE9E260](v92, -1, -1);
      }

      v95 = v101;
      v96 = v100;
      v97 = v108;
      (*(v101 + 16))(v100, v108, v88);
      v98 = v102;
      sub_23B3CE3F4(v96, v88, v102);
      v99 = *(v95 + 8);
      v99(v96, v88);
      v106(v98);
      (*(v103 + 8))(v98, v104);
      sub_23B3A24BC(v67, type metadata accessor for WeatherProductsContainer);
      sub_23B398890(v128, &qword_27E131EA8, &qword_23B5194F0);
      return (v99)(v97, v88);
    }
  }
}

uint64_t type metadata accessor for WeatherProductsContainer()
{
  result = qword_280B44B60;
  if (!qword_280B44B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3A81C0()
{
  sub_23B3A85F8(319, qword_280B44EC0, type metadata accessor for CurrentWeather);
  if (v0 <= 0x3F)
  {
    sub_23B3A85F8(319, qword_280B44DD8, type metadata accessor for InstantWeather);
    if (v1 <= 0x3F)
    {
      sub_23B398060(319, &qword_280B43428, &unk_27E131F78);
      if (v2 <= 0x3F)
      {
        sub_23B398060(319, &qword_280B43628, &unk_27E131CA0);
        if (v3 <= 0x3F)
        {
          sub_23B398060(319, &qword_280B43630, &qword_27E131CA8);
          if (v4 <= 0x3F)
          {
            sub_23B3A85F8(319, qword_280B43D48, type metadata accessor for PeriodicForecasts);
            if (v5 <= 0x3F)
            {
              sub_23B398060(319, &qword_280B43638, &qword_27E131CB0);
              if (v6 <= 0x3F)
              {
                sub_23B3A85F8(319, qword_280B44448, type metadata accessor for AirQuality);
                if (v7 <= 0x3F)
                {
                  sub_23B3A85F8(319, qword_280B44640, type metadata accessor for WeatherChanges);
                  if (v8 <= 0x3F)
                  {
                    sub_23B398060(319, &qword_280B43420, &unk_27E131EB8);
                    if (v9 <= 0x3F)
                    {
                      sub_23B3976E0(319, &qword_280B44CB8);
                      if (v10 <= 0x3F)
                      {
                        sub_23B3976E0(319, &qword_280B44CC0);
                        if (v11 <= 0x3F)
                        {
                          sub_23B398060(319, qword_280B43640, &unk_27E131EC0);
                          if (v12 <= 0x3F)
                          {
                            sub_23B3976E0(319, &qword_280B43888);
                            if (v13 <= 0x3F)
                            {
                              sub_23B3A85F8(319, qword_280B44300, type metadata accessor for TideEvents);
                              if (v14 <= 0x3F)
                              {
                                sub_23B3A85F8(319, qword_280B43A38, type metadata accessor for HistoricalComparisons);
                                if (v15 <= 0x3F)
                                {
                                  sub_23B3976E0(319, qword_280B43E28);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_23B3A85F8(319, qword_280B441B0, type metadata accessor for LocationInfo);
                                    if (v17 <= 0x3F)
                                    {
                                      swift_cvw_initStructMetadataWithLayoutString();
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_184()
{
  result = *(v0 - 256);
  v2 = *(v0 - 320);
  return result;
}

__n128 *OUTLINED_FUNCTION_184_1(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  return result;
}

void sub_23B3A85A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_77();
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B3A85F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B50D504();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for InstantWeather()
{
  result = qword_280B44E58;
  if (!qword_280B44E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_198_0()
{

  return sub_23B50B084();
}

uint64_t OUTLINED_FUNCTION_198_1@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return type metadata accessor for WeatherQuery();
}

uint64_t sub_23B3A86E4()
{
  v0 = sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_23B392468(319, &qword_280B45308, &qword_280B433A8, 0x277CCAE40);
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_23B392468(319, &qword_280B452F0, &qword_280B43398, 0x277CCAE38);
      if (v6 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
        v0 = v7;
        if (v8 <= 0x3F)
        {
          v0 = type metadata accessor for Wind();
          if (v9 <= 0x3F)
          {
            v0 = type metadata accessor for WeatherMetadata();
            if (v10 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t type metadata accessor for LocationInfo()
{
  result = qword_280B441F8;
  if (!qword_280B441F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3A8938()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B39B084();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_116()
{
  result = v0;
  v3 = *(v1 - 360);
  return result;
}

void *OUTLINED_FUNCTION_116_1()
{
  v4 = *(v1 + 112);

  return memcpy(v2, v4, v0);
}

uint64_t sub_23B3A8A0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v324 = a3;
  v325 = a2;
  v327 = a1;
  v7 = type metadata accessor for WeatherAlert();
  v8 = OUTLINED_FUNCTION_28_0(v7);
  v314[0] = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338A8, &qword_23B519358);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v17);
  v297 = type metadata accessor for PeriodicForecasts();
  v18 = OUTLINED_FUNCTION_6(v297);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200);
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v26);
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
  OUTLINED_FUNCTION_6(v298);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210);
  OUTLINED_FUNCTION_3(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_52();
  v323 = v35;
  OUTLINED_FUNCTION_24_0();
  v299 = type metadata accessor for TideEvents();
  v36 = OUTLINED_FUNCTION_6(v299);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA0, &qword_23B50F1B0);
  OUTLINED_FUNCTION_3(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v44);
  v301 = type metadata accessor for LocationInfo();
  v45 = OUTLINED_FUNCTION_6(v301);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  OUTLINED_FUNCTION_3(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v53);
  v302 = type metadata accessor for HistoricalComparisons();
  v54 = OUTLINED_FUNCTION_6(v302);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_52();
  v322 = v62;
  OUTLINED_FUNCTION_24_0();
  v306 = type metadata accessor for WeatherChanges();
  v63 = OUTLINED_FUNCTION_6(v306);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v71);
  v72 = type metadata accessor for AirQuality();
  v73 = OUTLINED_FUNCTION_6(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  OUTLINED_FUNCTION_3(v77);
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_52();
  v321 = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_6(v82);
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  OUTLINED_FUNCTION_3(v87);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_29_8(v91, v286);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_6(v92);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v97);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_6(v102);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v106);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  OUTLINED_FUNCTION_3(v107);
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v111);
  v112 = type metadata accessor for CurrentWeather();
  v113 = OUTLINED_FUNCTION_6(v112);
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v116);
  OUTLINED_FUNCTION_1();
  v329 = v117;
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v117);
  v121 = type metadata accessor for WeatherProductsContainer();
  v122 = v121[5];
  type metadata accessor for InstantWeather();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
  *(a4 + v121[6]) = 0;
  v127 = OUTLINED_FUNCTION_11_14(v121[7]);
  v316 = v102;
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v102);
  v130 = OUTLINED_FUNCTION_11_14(v121[8]);
  v315 = v92;
  __swift_storeEnumTagSinglePayload(v130, v131, v132, v92);
  v133 = OUTLINED_FUNCTION_11_14(v121[9]);
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v297);
  v136 = OUTLINED_FUNCTION_11_14(v121[10]);
  v310 = v82;
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v82);
  v139 = OUTLINED_FUNCTION_11_14(v121[11]);
  v305 = v72;
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v72);
  v142 = OUTLINED_FUNCTION_11_14(v121[12]);
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v306);
  OUTLINED_FUNCTION_145_0(v121[13]);
  *(a4 + v145) = 0;
  v293 = v121[14];
  v146 = a4 + v293;
  *(v146 + 2) = 0;
  *v146 = 4;
  v294 = v121[15];
  *(a4 + v294) = 4;
  v295 = v121[16];
  *(a4 + v295) = 4;
  v296 = v121[17];
  *(a4 + v296) = 4;
  v147 = OUTLINED_FUNCTION_11_14(v121[18]);
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v298);
  v292 = v121[19];
  *(a4 + v292) = 0;
  v150 = OUTLINED_FUNCTION_11_14(v121[20]);
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v299);
  v153 = OUTLINED_FUNCTION_11_14(v121[21]);
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v302);
  v289 = v121[22];
  *(a4 + v289) = 0;
  v156 = v121[23];
  v330 = a4;
  v157 = OUTLINED_FUNCTION_11_14(v156);
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v301);
  v160 = 0;
  v328 = 0;
  v326 = *(v327 + 16);
  v317 = OBJC_IVAR____TtC10WeatherKit14WeatherService_shouldShowSimulatedAlert;
  v312 = xmmword_23B50ED30;
  while (1)
  {
    if (v326 == v160)
    {
      v282 = v330;
      v333[0] = *(v330 + v294);
      LOBYTE(v338) = *(v330 + v295);
      v332 = *(v330 + v296);
      result = sub_23B3CDD50(v333, &v338, &v332, v328, v330 + v300, &v336);
      v284 = v336;
      v285 = v282 + v293;
      *(v285 + 2) = BYTE2(v336);
      *v285 = v284;
      return result;
    }

    v161 = sub_23B50B654();
    OUTLINED_FUNCTION_28_0(v161);
    v164 = v4;
    sub_23B3AA378((v327 + ((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v163 + 72) * v160), v325, v324, &v336);
    if (v5)
    {
      return sub_23B3A24BC(v330, type metadata accessor for WeatherProductsContainer);
    }

    v331 = v160;
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v335)
    {
      v165 = v318;
      v166 = v329;
      v167 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v165, v167 ^ 1u, 1, v166);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v165, 1, v166);
      v170 = v322;
      v169 = v323;
      v172 = v320;
      v171 = v321;
      v173 = v319;
      if (EnumTagSinglePayload != 1)
      {
        sub_23B3B0A98();
        sub_23B398890(v330, &qword_27E131C98, &unk_23B50ED60);
        sub_23B3B0A98();
        OUTLINED_FUNCTION_73();
        __swift_storeEnumTagSinglePayload(v174, v175, v176, v329);
        v4 = v164;
        v177 = v331;
        goto LABEL_64;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
      v165 = v318;
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v178, v179, v180, v329);
      v170 = v322;
      v169 = v323;
      v172 = v320;
      v171 = v321;
      v173 = v319;
    }

    sub_23B398890(v165, &qword_27E131C98, &unk_23B50ED60);
    sub_23B3A23E0();
    if (v335)
    {
      v181 = v316;
      v182 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v173, v182 ^ 1u, 1, v181);
      if (__swift_getEnumTagSinglePayload(v173, 1, v181) != 1)
      {
        sub_23B3AF918();
        sub_23B398890(v330 + v308, &qword_27E131C90, &unk_23B514EC0);
        OUTLINED_FUNCTION_306();
        OUTLINED_FUNCTION_73();
        v186 = &v340;
LABEL_27:
        __swift_storeEnumTagSinglePayload(v183, v184, v185, *(v186 - 32));
        v4 = v164;
        v177 = v331;
        goto LABEL_64;
      }
    }

    else
    {
      sub_23B398890(v333, &qword_27E133080, &unk_23B519370);
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v187, v188, v189, v316);
    }

    v190 = v173;
    v191 = v311;
    sub_23B398890(v190, &qword_27E131C90, &unk_23B514EC0);
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v335)
    {
      v192 = v315;
      v193 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v172, v193 ^ 1u, 1, v192);
      v194 = OUTLINED_FUNCTION_172_0();
      if (__swift_getEnumTagSinglePayload(v194, v195, v192) != 1)
      {
        sub_23B3AF918();
        sub_23B398890(v330 + v303, &qword_27E131C88, &unk_23B50ED50);
        OUTLINED_FUNCTION_306();
        OUTLINED_FUNCTION_73();
        v186 = &v339;
        goto LABEL_27;
      }
    }

    else
    {
      sub_23B398890(v333, &qword_27E133080, &unk_23B519370);
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v196, v197, v198, v315);
    }

    sub_23B398890(v172, &qword_27E131C88, &unk_23B50ED50);
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v335)
    {
      v199 = v310;
      swift_dynamicCast();
      v200 = OUTLINED_FUNCTION_219_0();
      __swift_storeEnumTagSinglePayload(v200, v201, v202, v199);
      v203 = OUTLINED_FUNCTION_152();
      if (__swift_getEnumTagSinglePayload(v203, v204, v199) != 1)
      {
        sub_23B3AF918();
        v205 = OUTLINED_FUNCTION_157_0(&v329);
        sub_23B398890(v205, &qword_27E131C80, &qword_23B50ED48);
        OUTLINED_FUNCTION_306();
        OUTLINED_FUNCTION_73();
        v209 = &v337;
        goto LABEL_61;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v210, v211, v212, v310);
    }

    sub_23B398890(v171, &qword_27E131C80, &qword_23B50ED48);
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v335)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
      OUTLINED_FUNCTION_296();
      if (swift_dynamicCast())
      {
        v213 = v338;

        *(v330 + v314[1]) = v213;
        v328 = v213;
        goto LABEL_62;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
    }

    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v335)
    {
      v214 = v304;
      v215 = OUTLINED_FUNCTION_155_0(v334);
      OUTLINED_FUNCTION_18_13(v214, v215 ^ 1u);
      OUTLINED_FUNCTION_4_20(v214);
      if (!v216)
      {
        sub_23B3B0A98();
        v217 = OUTLINED_FUNCTION_157_0(&v327);
        sub_23B398890(v217, &qword_27E131C78, &qword_23B50ED40);
        OUTLINED_FUNCTION_206_0();
        OUTLINED_FUNCTION_73();
        v186 = v334;
        goto LABEL_27;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
      v214 = v304;
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v218, v219, v220, v305);
    }

    sub_23B398890(v214, &qword_27E131C78, &qword_23B50ED40);
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v335)
    {
      v221 = OUTLINED_FUNCTION_155_0(&v335);
      OUTLINED_FUNCTION_18_13(v170, v221 ^ 1u);
      OUTLINED_FUNCTION_4_20(v170);
      if (!v216)
      {
        sub_23B3B0A98();
        v222 = OUTLINED_FUNCTION_157_0(&v317);
        sub_23B398890(v222, &qword_27E131EF0, &unk_23B50F220);
        OUTLINED_FUNCTION_206_0();
        OUTLINED_FUNCTION_73();
        v209 = &v335;
        goto LABEL_61;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v223, v224, v225, v306);
    }

    sub_23B398890(v170, &qword_27E131EF0, &unk_23B50F220);
    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (v335)
    {
      OUTLINED_FUNCTION_296();
      if (swift_dynamicCast())
      {
        v226 = v338;
        v227 = v330;
        v228 = &v316;
        goto LABEL_48;
      }
    }

    else
    {
      OUTLINED_FUNCTION_70_2();
    }

    OUTLINED_FUNCTION_14_21();
    sub_23B3A23E0();
    if (!v335)
    {
      OUTLINED_FUNCTION_70_2();
LABEL_41:
      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v335)
      {
        v231 = OUTLINED_FUNCTION_155_0(&v331);
        OUTLINED_FUNCTION_18_13(v191, v231 ^ 1u);
        OUTLINED_FUNCTION_4_20(v191);
        if (!v216)
        {
          sub_23B3B0A98();
          v232 = OUTLINED_FUNCTION_157_0(v314);
          sub_23B398890(v232, &qword_27E131E88, &unk_23B519360);
          OUTLINED_FUNCTION_206_0();
          OUTLINED_FUNCTION_73();
          v209 = &v331;
          goto LABEL_61;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
        OUTLINED_FUNCTION_1();
        __swift_storeEnumTagSinglePayload(v233, v234, v235, v302);
      }

      sub_23B398890(v191, &qword_27E131E88, &unk_23B519360);
      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v335)
      {
        OUTLINED_FUNCTION_296();
        if (swift_dynamicCast())
        {
          v226 = v338;
          v227 = v330;
          v228 = &v312;
LABEL_48:
          v236 = *(v228 - 32);
          v237 = *(v227 + v236);

          *(v227 + v236) = v226;
LABEL_62:
          v4 = v164;
LABEL_63:
          v177 = v331;
          goto LABEL_64;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
      }

      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v335)
      {
        OUTLINED_FUNCTION_222_0(&v315);
        v238 = v301;
        swift_dynamicCast();
        v239 = OUTLINED_FUNCTION_219_0();
        __swift_storeEnumTagSinglePayload(v239, v240, v241, v238);
        v242 = OUTLINED_FUNCTION_152();
        if (__swift_getEnumTagSinglePayload(v242, v243, v238) != 1)
        {
          sub_23B3B0A98();
          v244 = OUTLINED_FUNCTION_157_0(v309);
          sub_23B398890(v244, &qword_27E131EA0, &qword_23B50F1B0);
          sub_23B3B0A98();
          OUTLINED_FUNCTION_73();
          v209 = &v328;
LABEL_61:
          __swift_storeEnumTagSinglePayload(v206, v207, v208, *(v209 - 32));
          goto LABEL_62;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
        OUTLINED_FUNCTION_222_0(&v315);
        OUTLINED_FUNCTION_1();
        __swift_storeEnumTagSinglePayload(v245, v246, v247, v301);
      }

      sub_23B398890(v171, &qword_27E131EA0, &qword_23B50F1B0);
      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v335)
      {
        v248 = OUTLINED_FUNCTION_155_0(&v326);
        OUTLINED_FUNCTION_18_13(v169, v248 ^ 1u);
        OUTLINED_FUNCTION_4_20(v169);
        if (!v216)
        {
          sub_23B3B0A98();
          v249 = OUTLINED_FUNCTION_157_0(v307);
          sub_23B398890(v249, &qword_27E131EE0, &qword_23B50F210);
          OUTLINED_FUNCTION_206_0();
          OUTLINED_FUNCTION_73();
          v209 = &v326;
          goto LABEL_61;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
        OUTLINED_FUNCTION_1();
        __swift_storeEnumTagSinglePayload(v250, v251, v252, v299);
      }

      sub_23B398890(v169, &qword_27E131EE0, &qword_23B50F210);
      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v335)
      {
        v253 = v290;
        v254 = OUTLINED_FUNCTION_155_0(&v325);
        OUTLINED_FUNCTION_18_13(v253, v254 ^ 1u);
        OUTLINED_FUNCTION_4_20(v253);
        if (!v216)
        {
          sub_23B3AF918();
          v255 = OUTLINED_FUNCTION_157_0(&v305);
          sub_23B398890(v255, &qword_27E131ED0, &qword_23B50F200);
          OUTLINED_FUNCTION_306();
          OUTLINED_FUNCTION_73();
          v209 = &v325;
          goto LABEL_61;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
        v253 = v290;
        OUTLINED_FUNCTION_1();
        __swift_storeEnumTagSinglePayload(v265, v266, v267, v298);
      }

      sub_23B398890(v253, &qword_27E131ED0, &qword_23B50F200);
      OUTLINED_FUNCTION_14_21();
      sub_23B3A23E0();
      if (v335)
      {
        OUTLINED_FUNCTION_222_0(&v313);
        v268 = v297;
        swift_dynamicCast();
        v269 = OUTLINED_FUNCTION_219_0();
        __swift_storeEnumTagSinglePayload(v269, v270, v271, v268);
        v272 = OUTLINED_FUNCTION_152();
        v4 = v164;
        if (__swift_getEnumTagSinglePayload(v272, v273, v268) != 1)
        {
          sub_23B3B0A98();
          sub_23B398890(v330 + v288, &qword_27E1338A8, &qword_23B519358);
          sub_23B3B0A98();
          OUTLINED_FUNCTION_73();
          __swift_storeEnumTagSinglePayload(v274, v275, v276, v297);
          goto LABEL_63;
        }
      }

      else
      {
        OUTLINED_FUNCTION_70_2();
        OUTLINED_FUNCTION_1();
        __swift_storeEnumTagSinglePayload(v277, v278, v279, v297);
        v4 = v164;
      }

      sub_23B398890(v291, &qword_27E1338A8, &qword_23B519358);
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_296();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v229 = v338;
    v230 = BYTE1(v338);
    v4 = v164;
    v177 = v331;
    switch(BYTE2(v338))
    {
      case 2:
        OUTLINED_FUNCTION_255_0();
        goto LABEL_71;
      case 3:
        OUTLINED_FUNCTION_13_3();
        break;
      default:
        break;
    }

    v287 = v229;
    v262 = OUTLINED_FUNCTION_60_2();

    if (v262)
    {
LABEL_71:
      v263 = v330;
      v264 = &v322;
    }

    else
    {
      switch(v230)
      {
        case 2:
          OUTLINED_FUNCTION_255_0();
          goto LABEL_82;
        case 3:
          OUTLINED_FUNCTION_13_3();
          break;
        default:
          break;
      }

      v280 = OUTLINED_FUNCTION_60_2();

      if (v280)
      {
LABEL_82:
        v263 = v330;
        v264 = &v321;
      }

      else
      {
        switch(v287)
        {
          case 2:
            OUTLINED_FUNCTION_255_0();
            goto LABEL_86;
          default:
            v281 = OUTLINED_FUNCTION_60_2();

            if ((v281 & 1) == 0)
            {
              goto LABEL_64;
            }

LABEL_86:
            v263 = v330;
            v264 = &v320;
            break;
        }
      }
    }

    *(v263 + *(v264 - 32)) = 2;
LABEL_64:
    OUTLINED_FUNCTION_207();
    if (*(v4 + v256) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E131CB8, &qword_23B50ED80);
      v257 = *(v314[0] + 72);
      v258 = (*(v314[0] + 80) + 32) & ~*(v314[0] + 80);
      v259 = swift_allocObject();
      *(v259 + 16) = v312;
      sub_23B4DAB18(v313);
      v260 = v330;
      sub_23B3B0A98();
      sub_23B398890(&v336, &qword_27E133080, &unk_23B519370);

      OUTLINED_FUNCTION_228_0();
      *(v260 + v261) = v259;
      v328 = v259;
    }

    else
    {
      sub_23B398890(&v336, &qword_27E133080, &unk_23B519370);
    }

    v160 = v177 + 1;
  }
}

void sub_23B3AA378(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v842 = a4;
  v840 = a2;
  v794 = a3;
  v841 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E80, &unk_23B510220);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v825 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v804 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E90, &unk_23B5101F0);
  OUTLINED_FUNCTION_3(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  v824 = v19;
  OUTLINED_FUNCTION_24_0();
  v822 = sub_23B50BA44();
  v20 = OUTLINED_FUNCTION_5(v822);
  v808 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_0();
  v815 = v24;
  OUTLINED_FUNCTION_24_0();
  v823 = sub_23B50BA14();
  v25 = OUTLINED_FUNCTION_5(v823);
  v809 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  v817 = v29;
  OUTLINED_FUNCTION_24_0();
  v821 = sub_23B50BBD4();
  v30 = OUTLINED_FUNCTION_5(v821);
  v807 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v814 = v34;
  OUTLINED_FUNCTION_24_0();
  v820 = sub_23B50CB04();
  v35 = OUTLINED_FUNCTION_5(v820);
  v806 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  v813 = v39;
  OUTLINED_FUNCTION_24_0();
  v819 = sub_23B50C2C4();
  v40 = OUTLINED_FUNCTION_5(v819);
  v805 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v812 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E98, &unk_23B5101B0);
  OUTLINED_FUNCTION_3(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v48);
  v50 = &v793 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA0, &qword_23B50F1B0);
  OUTLINED_FUNCTION_3(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_52();
  v802 = v55;
  OUTLINED_FUNCTION_24_0();
  v56 = sub_23B50C054();
  v57 = OUTLINED_FUNCTION_5(v56);
  v800 = v58;
  v801 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_27();
  v63 = (v62 - v61);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  v796 = v68;
  OUTLINED_FUNCTION_24_0();
  v827 = sub_23B50C694();
  v69 = OUTLINED_FUNCTION_5(v827);
  v811 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_0();
  v826 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_52();
  v793 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  OUTLINED_FUNCTION_3(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  v84 = &v793 - v83;
  v798 = sub_23B50C3C4();
  v85 = OUTLINED_FUNCTION_5(v798);
  v795 = v86;
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_6_0();
  v797 = v89;
  OUTLINED_FUNCTION_24_0();
  v810 = sub_23B50CCA4();
  v90 = OUTLINED_FUNCTION_5(v810);
  v803 = v91;
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v90);
  v95 = &v793 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v98 = (&v793 - v97);
  v818 = sub_23B50BAE4();
  v99 = OUTLINED_FUNCTION_5(v818);
  v799 = v100;
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_6_0();
  v816 = v103;
  OUTLINED_FUNCTION_24_0();
  v104 = sub_23B50C794();
  v105 = OUTLINED_FUNCTION_5(v104);
  v837 = v106;
  v838 = v105;
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_6_0();
  v830 = v109;
  OUTLINED_FUNCTION_24_0();
  v110 = sub_23B50C284();
  v111 = OUTLINED_FUNCTION_5(v110);
  v835 = v112;
  v836 = v111;
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_6_0();
  v829 = v115;
  OUTLINED_FUNCTION_24_0();
  v116 = sub_23B50C094();
  v117 = OUTLINED_FUNCTION_5(v116);
  v833 = v118;
  v834 = v117;
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_6_0();
  v828 = v121;
  OUTLINED_FUNCTION_24_0();
  v122 = sub_23B50B4B4();
  v123 = OUTLINED_FUNCTION_5(v122);
  v831 = v124;
  v832 = v123;
  v126 = *(v125 + 64);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_6_0();
  v128 = v127;
  OUTLINED_FUNCTION_24_0();
  v129 = sub_23B50B654();
  v130 = OUTLINED_FUNCTION_6(v129);
  v132 = *(v131 + 64);
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_27();
  v135 = (v134 - v133);
  sub_23B3A52DC(v841, v134 - v133);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v224 = *(v831 + 32);
      v225 = v128;
      v226 = OUTLINED_FUNCTION_68();
      v227(v226);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v228 = sub_23B50CDF4();
      v229 = OUTLINED_FUNCTION_37_0(v228, qword_280B4E9D8);
      v230 = OUTLINED_FUNCTION_56();
      v231 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v231))
      {
        OUTLINED_FUNCTION_46_0();
        v232 = OUTLINED_FUNCTION_27_1();
        v841 = v63;
        v233 = v232;
        v844 = v232;
        OUTLINED_FUNCTION_4_7(7.2225e-34);
        [v50 coordinate];
        v234 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v234, v235);
        OUTLINED_FUNCTION_23_1();

        *(v84 + 14) = v95;

        OUTLINED_FUNCTION_13_2(&dword_23B38D000, v236, v237, "Successfully built current weather; location=%{private,mask.hash}s");
        __swift_destroy_boxed_opaque_existential_1(v233);
        v63 = v841;
        v225 = v128;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_14_3();
      }

      else
      {
      }

      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_66(OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      v410 = type metadata accessor for CurrentWeather();
      OUTLINED_FUNCTION_53(v410);
      sub_23B3B0BD4(v225, v50, v411, v412, v413, v414, v415, v416, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802, SWORD2(v802), SBYTE6(v802), HIBYTE(v802), v803, v804, v805, v806, v807, v808, v809, v810, v811, v812);
      if (v84)
      {
        __swift_deallocate_boxed_opaque_existential_0(v98);
        v417 = v50;
        OUTLINED_FUNCTION_57_0();
        v418 = v230;
        OUTLINED_FUNCTION_61();
        v419 = sub_23B50CDD4();
        v420 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_26_1(v420))
        {
          OUTLINED_FUNCTION_42_0();
          v421 = OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_45_2(v421);
          OUTLINED_FUNCTION_2_7(7.2226e-34);
          [v98 coordinate];
          v422 = sub_23B50D4D4();
          v843 = v225;
          OUTLINED_FUNCTION_47(v422, v423);
          OUTLINED_FUNCTION_43_0();
          *(v63 + 14) = v225;

          OUTLINED_FUNCTION_39_0();
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          v425 = *(v424 + 64);
          MEMORY[0x28223BE20](v426);
          v428 = OUTLINED_FUNCTION_3_2(v427, v793);
          v429(v428);
          v430 = OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_30_1(v430, v431);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v432, v433, v434, v435, v436, 0x20u);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_16_1();

          sub_23B3E3D54();
          v437 = OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_9_1(v437, v438);

          v368 = *(v831 + 8);
          v369 = v843;
        }

        else
        {

          sub_23B3E3D54();
          v525 = OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_9_1(v525, v526);

          v368 = *(v831 + 8);
          v369 = v225;
        }

        v520 = v832;
        goto LABEL_199;
      }

      (*(v831 + 8))(v225, v832);
      return;
    case 2u:
      v193 = *(v833 + 32);
      v194 = OUTLINED_FUNCTION_68();
      v195(v194);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v196 = sub_23B50CDF4();
      v197 = OUTLINED_FUNCTION_37_0(v196, qword_280B4E9D8);
      v198 = OUTLINED_FUNCTION_56();
      v199 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v199))
      {
        OUTLINED_FUNCTION_46_0();
        v200 = OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_34_2(v200);
        OUTLINED_FUNCTION_4_7(7.2225e-34);
        [v50 coordinate];
        v201 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v201, v202);
        OUTLINED_FUNCTION_23_1();

        *(v84 + 14) = v95;

        OUTLINED_FUNCTION_13_2(&dword_23B38D000, v203, v204, "Successfully built daily forecast; location=%{private,mask.hash}s");
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_14_3();
      }

      else
      {
      }

      OUTLINED_FUNCTION_69();
      v344 = *(v343 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
      OUTLINED_FUNCTION_53(v345);
      OUTLINED_FUNCTION_65_1();
      sub_23B3B36A0();
      if (!v4)
      {
        goto LABEL_138;
      }

      __swift_deallocate_boxed_opaque_existential_0(v98);
      v346 = v50;
      OUTLINED_FUNCTION_57_0();
      v347 = v344;
      v348 = v4;
      v349 = sub_23B50CDD4();
      v350 = sub_23B50D4B4();
      if (OUTLINED_FUNCTION_15_2(v350))
      {
        OUTLINED_FUNCTION_42_0();
        v843 = OUTLINED_FUNCTION_22_0();
        v844 = v843;
        *v63 = 136446723;
        swift_getErrorValue();
        OUTLINED_FUNCTION_7_4();
        v352 = *(v351 + 64);
        MEMORY[0x28223BE20](v353);
        OUTLINED_FUNCTION_27();
        v355 = OUTLINED_FUNCTION_12_3(v354);
        v356(v355);
        v357 = OUTLINED_FUNCTION_71_0();
        sub_23B391F1C(v357, v358, &v844);
        OUTLINED_FUNCTION_43_0();
        *(v63 + 4) = v129;

        *(v63 + 6) = 2160;
        *(v63 + 14) = 1752392040;
        *(v63 + 11) = 2081;
        [v347 coordinate];
        v359 = sub_23B50D4D4();
        OUTLINED_FUNCTION_47(v359, v360);
        OUTLINED_FUNCTION_43_0();
        v63[3] = v129;

        OUTLINED_FUNCTION_25_1();
        _os_log_impl(v361, v362, v363, v364, v365, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20_1();
        OUTLINED_FUNCTION_16_1();

        sub_23B3E3D54();
        v366 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_9_1(v366, v367);

        v368 = *(v833 + 8);
        v369 = v828;
      }

      else
      {

        sub_23B3E3D54();
        v521 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_9_1(v521, v522);

        v369 = OUTLINED_FUNCTION_67_0();
      }

      v520 = v834;
      goto LABEL_199;
    case 3u:
      v205 = *(v835 + 32);
      v206 = OUTLINED_FUNCTION_68();
      v207(v206);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v208 = sub_23B50CDF4();
      v209 = OUTLINED_FUNCTION_37_0(v208, qword_280B4E9D8);
      v210 = OUTLINED_FUNCTION_56();
      v211 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v211))
      {
        OUTLINED_FUNCTION_46_0();
        v212 = OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_34_2(v212);
        OUTLINED_FUNCTION_4_7(7.2225e-34);
        [v50 coordinate];
        v213 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v213, v214);
        OUTLINED_FUNCTION_23_1();

        *(v84 + 14) = v95;

        OUTLINED_FUNCTION_13_2(&dword_23B38D000, v215, v216, "Successfully built hourly forecast; location=%{private,mask.hash}s");
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_14_3();
      }

      else
      {
      }

      OUTLINED_FUNCTION_69();
      v371 = *(v370 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
      OUTLINED_FUNCTION_53(v372);
      v373 = OUTLINED_FUNCTION_65_1();
      sub_23B3CCABC(v373);
      if (!v4)
      {
        goto LABEL_138;
      }

      __swift_deallocate_boxed_opaque_existential_0(v98);
      v374 = v50;
      OUTLINED_FUNCTION_57_0();
      v375 = v371;
      OUTLINED_FUNCTION_61();
      v376 = sub_23B50CDD4();
      v377 = sub_23B50D4B4();
      if (OUTLINED_FUNCTION_26_1(v377))
      {
        OUTLINED_FUNCTION_42_0();
        v378 = OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_45_2(v378);
        OUTLINED_FUNCTION_2_7(7.2226e-34);
        [v98 coordinate];
        v379 = sub_23B50D4D4();
        OUTLINED_FUNCTION_47(v379, v380);
        OUTLINED_FUNCTION_43_0();
        *(v63 + 14) = v129;

        OUTLINED_FUNCTION_39_0();
        swift_getErrorValue();
        OUTLINED_FUNCTION_7_4();
        v382 = *(v381 + 64);
        MEMORY[0x28223BE20](v383);
        v385 = OUTLINED_FUNCTION_3_2(v384, v793);
        v386(v385);
        v387 = OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_30_1(v387, v388);
        OUTLINED_FUNCTION_59_0();
        OUTLINED_FUNCTION_58();

        OUTLINED_FUNCTION_11_1();
        _os_log_impl(v389, v390, v391, v392, v393, 0x20u);
        OUTLINED_FUNCTION_31_0();
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_16_1();

        sub_23B3E3D54();
        v394 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_9_1(v394, v395);

        v368 = *(v835 + 8);
        v369 = v829;
      }

      else
      {

        sub_23B3E3D54();
        v523 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_9_1(v523, v524);

        v369 = OUTLINED_FUNCTION_67_0();
      }

      v520 = v836;
      goto LABEL_199;
    case 4u:
      v167 = OUTLINED_FUNCTION_44_0();
      v168 = v827;
      OUTLINED_FUNCTION_51(v167, v169, v827);
      if (v139)
      {
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v170 = sub_23B50CDF4();
        v171 = OUTLINED_FUNCTION_29_2(v170, qword_280B4E9D8);
        v172 = sub_23B50CDD4();
        v173 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_15_2(v173))
        {
          OUTLINED_FUNCTION_46_0();
          v174 = OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_28_2(v174);
          OUTLINED_FUNCTION_1_2(7.2225e-34);
          [v171 coordinate];
          v175 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v175, v176);
          OUTLINED_FUNCTION_43_0();
          *(v50 + 14) = v129;

          OUTLINED_FUNCTION_10_1();
          _os_log_impl(v177, v178, v179, v180, v181, 0x16u);
          OUTLINED_FUNCTION_21_3();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
        }

        v529 = v842;
        v842[3] = &type metadata for WeatherAvailability;
        v530 = 770;
        goto LABEL_162;
      }

      (*(v811 + 32))(v826, v135, v168);
      v301 = v843;
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v302 = sub_23B50CDF4();
      __swift_project_value_buffer(v302, qword_280B4E9D8);
      v303 = v840;
      v304 = sub_23B50CDD4();
      v305 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v305))
      {
        v306 = OUTLINED_FUNCTION_46_0();
        v307 = OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_34_2(v307);
        OUTLINED_FUNCTION_2_7(7.2225e-34);
        [v303 coordinate];
        v308 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v308, v309);
        OUTLINED_FUNCTION_23_1();

        *(v306 + 14) = v95;
        v301 = v843;

        OUTLINED_FUNCTION_25_1();
        _os_log_impl(v310, v311, v312, v313, v314, 0x16u);
        OUTLINED_FUNCTION_19_1();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_16_1();
      }

      else
      {
      }

      v402 = v842;
      v567 = v796;
      v568 = *(v839 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      sub_23B3BAD74(v826, v569, v570, v571, v572, v573, v574, v575, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802, v803, v804);
      if (v301)
      {
        v576 = v303;
        v577 = v301;
        v578 = v576;
        v579 = v301;
        v580 = sub_23B50CDD4();
        v581 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_15_2(v581))
        {
          v582 = OUTLINED_FUNCTION_42_0();
          v583 = swift_slowAlloc();
          OUTLINED_FUNCTION_28_2(v583);
          OUTLINED_FUNCTION_1_2(7.2226e-34);
          [v578 coordinate];
          v584 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v584, v585);
          v843 = 0;
          OUTLINED_FUNCTION_23_1();

          *(v582 + 14) = 0;

          *(v582 + 22) = 2082;
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          v587 = *(v586 + 64);
          MEMORY[0x28223BE20](v588);
          OUTLINED_FUNCTION_27();
          v590 = OUTLINED_FUNCTION_12_3(v589);
          v591(v590);
          v592 = OUTLINED_FUNCTION_71_0();
          OUTLINED_FUNCTION_49_0(v592, v593);
          OUTLINED_FUNCTION_43_0();
          *(v582 + 24) = v301;

          OUTLINED_FUNCTION_10_1();
          _os_log_impl(v594, v595, v596, v597, v598, 0x20u);
          OUTLINED_FUNCTION_63_0();
          v402 = v842;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
        }

        v738 = OUTLINED_FUNCTION_55_0();
        v740(v738, v739);
        goto LABEL_220;
      }

      v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
      OUTLINED_FUNCTION_51(v567, 1, v717);
      if (!v139)
      {
        v402[3] = v717;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v402);
        sub_23B3E3DA8(v567, boxed_opaque_existential_0, &qword_27E131CA0, &qword_23B5101A0);
        v750 = OUTLINED_FUNCTION_55_0();
        v751(v750);
        return;
      }

      v718 = OUTLINED_FUNCTION_55_0();
      v719(v718);
      v720 = &qword_27E131C90;
      v721 = &unk_23B514EC0;
      v722 = v567;
      goto LABEL_217;
    case 5u:
      v238 = *(v837 + 32);
      v239 = v830;
      v240 = OUTLINED_FUNCTION_68();
      v241(v240);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v242 = sub_23B50CDF4();
      v243 = OUTLINED_FUNCTION_37_0(v242, qword_280B4E9D8);
      v244 = OUTLINED_FUNCTION_56();
      v245 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v245))
      {
        OUTLINED_FUNCTION_46_0();
        v246 = OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_34_2(v246);
        OUTLINED_FUNCTION_4_7(7.2225e-34);
        [v50 coordinate];
        v247 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v247, v248);
        OUTLINED_FUNCTION_23_1();

        *(v84 + 14) = v95;

        OUTLINED_FUNCTION_13_2(&dword_23B38D000, v249, v250, "Successfully built periodic forecast; location=%{private,mask.hash}s");
        OUTLINED_FUNCTION_19_1();
        v239 = v830;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_14_3();
      }

      else
      {
      }

      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_66(OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      v439 = type metadata accessor for PeriodicForecasts();
      OUTLINED_FUNCTION_53(v439);
      sub_23B3F20B4(v239, v440, v441, v442, v443, v444, v445, v446, v793, v794);
      if (v84)
      {
        __swift_deallocate_boxed_opaque_existential_0(v98);
        v447 = v50;
        OUTLINED_FUNCTION_57_0();
        v448 = v244;
        OUTLINED_FUNCTION_61();
        v449 = sub_23B50CDD4();
        v450 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_26_1(v450))
        {
          OUTLINED_FUNCTION_42_0();
          v451 = OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_45_2(v451);
          OUTLINED_FUNCTION_2_7(7.2226e-34);
          [v98 coordinate];
          v452 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v452, v453);
          OUTLINED_FUNCTION_43_0();
          *(v63 + 14) = v129;

          OUTLINED_FUNCTION_39_0();
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          v455 = *(v454 + 64);
          MEMORY[0x28223BE20](v456);
          v458 = OUTLINED_FUNCTION_3_2(v457, v793);
          v459(v458);
          v460 = OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_30_1(v460, v461);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v462, v463, v464, v465, v466, 0x20u);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_16_1();

          sub_23B3E3D54();
          v467 = OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_9_1(v467, v468);

          v368 = *(v837 + 8);
          v369 = v830;
        }

        else
        {

          sub_23B3E3D54();
          v527 = OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_9_1(v527, v528);

          v369 = OUTLINED_FUNCTION_67_0();
        }

        v520 = v838;
      }

      else
      {
LABEL_138:
        v369 = OUTLINED_FUNCTION_67_0();
      }

      goto LABEL_199;
    case 6u:
      v264 = v825;
      sub_23B3E3DA8(v135, v825, &qword_27E131E80, &unk_23B510220);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v265 = sub_23B50CDF4();
      v266 = OUTLINED_FUNCTION_29_2(v265, qword_280B4E9D8);
      v267 = sub_23B50CDD4();
      v268 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_15_2(v268))
      {
        OUTLINED_FUNCTION_46_0();
        v269 = OUTLINED_FUNCTION_18_1();
        OUTLINED_FUNCTION_28_2(v269);
        OUTLINED_FUNCTION_1_2(7.2225e-34);
        [v266 coordinate];
        v270 = sub_23B50D4D4();
        OUTLINED_FUNCTION_47(v270, v271);
        OUTLINED_FUNCTION_43_0();
        *(v264 + 14) = v129;

        OUTLINED_FUNCTION_10_1();
        _os_log_impl(v272, v273, v274, v275, v276, 0x16u);
        OUTLINED_FUNCTION_21_3();
        v264 = v825;
        OUTLINED_FUNCTION_38();
      }

      else
      {
      }

      v469 = v842;
      v478 = *(v839 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      sub_23B3F43B0();
      v479 = v844;
      if (v844)
      {
        v469[3] = &type metadata for HistoricalFacts;
        *v469 = v479;
        v475 = &qword_27E131E80;
        v476 = &unk_23B510220;
        v477 = v264;
        goto LABEL_120;
      }

      v472 = &qword_27E131E80;
      v473 = &unk_23B510220;
      goto LABEL_140;
    case 7u:
      v218 = v800;
      v217 = v801;
      (*(v800 + 32))(v63, v135, v801);
      v219 = *(v839 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      (*(v218 + 16))(v50, v63, v217);
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v217);
      v220 = v802;
      sub_23B3F23E4();
      sub_23B398890(v50, &qword_27E131E98, &unk_23B5101B0);
      v221 = type metadata accessor for LocationInfo();
      OUTLINED_FUNCTION_51(v220, 1, v221);
      if (!v139)
      {
        v396 = v842;
        v842[3] = v221;
        v397 = __swift_allocate_boxed_opaque_existential_0(v396);
        sub_23B3CE55C(v220, v397, type metadata accessor for LocationInfo);
        (*(v218 + 8))(v63, v217);
        return;
      }

      (*(v218 + 8))(v63, v217);
      sub_23B398890(v220, &qword_27E131EA0, &qword_23B50F1B0);
      v222 = 0uLL;
      v223 = v842;
      goto LABEL_73;
    case 8u:
      v281 = OUTLINED_FUNCTION_44_0();
      v183 = v819;
      OUTLINED_FUNCTION_51(v281, v282, v819);
      if (!v139)
      {
        v494 = *(v805 + 32);
        v495 = v812;
        v496 = OUTLINED_FUNCTION_36_0();
        v497(v496);
        v498 = v843;
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v499 = sub_23B50CDF4();
        v500 = OUTLINED_FUNCTION_37_0(v499, qword_280B4E9D8);
        v501 = OUTLINED_FUNCTION_56();
        v502 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_17_0(v502))
        {
          OUTLINED_FUNCTION_46_0();
          v503 = OUTLINED_FUNCTION_27_1();
          OUTLINED_FUNCTION_34_2(v503);
          OUTLINED_FUNCTION_4_7(7.2225e-34);
          [v50 coordinate];
          v504 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v504, v505);
          OUTLINED_FUNCTION_23_1();

          *(v84 + 14) = v495;
          v495 = v812;
          v498 = v843;

          OUTLINED_FUNCTION_13_2(&dword_23B38D000, v506, v507, "Successfully built marine hourly forecast; location=%{private,mask.hash}s");
          OUTLINED_FUNCTION_19_1();
          v183 = v819;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_14_3();
        }

        else
        {
        }

        v684 = *(v839 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
        v685 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
        OUTLINED_FUNCTION_62(v685);
        v686 = OUTLINED_FUNCTION_54();
        sub_23B3F26B0(v686, v687, v688, v689, v690, v691, v692, v693, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806);
        v369 = OUTLINED_FUNCTION_70();
        if (!v4)
        {
          v723 = v805;
          goto LABEL_198;
        }

        __swift_deallocate_boxed_opaque_existential_0(v84);
        v694 = v50;
        OUTLINED_FUNCTION_57_0();
        v695 = v684;
        OUTLINED_FUNCTION_61();
        v696 = sub_23B50CDD4();
        v697 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_26_1(v697))
        {
          OUTLINED_FUNCTION_42_0();
          v698 = OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_45_2(v698);
          OUTLINED_FUNCTION_2_7(7.2226e-34);
          [v98 coordinate];
          v699 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v699, v700);
          OUTLINED_FUNCTION_43_0();
          *(v63 + 14) = v498;

          OUTLINED_FUNCTION_39_0();
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          v702 = *(v701 + 64);
          MEMORY[0x28223BE20](v703);
          v705 = OUTLINED_FUNCTION_3_2(v704, v793);
          v706(v705);
          v707 = OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_30_1(v707, v708);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v709, v710, v711, v712, v713, 0x20u);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_16_1();

          sub_23B3E3D54();
          v714 = OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_9_1(v714, v715);

          (*(v805 + 8))(v812, v819);
          return;
        }

        sub_23B3E3D54();
        v747 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_9_1(v747, v748);

        v368 = *(v805 + 8);
        v369 = v812;
        goto LABEL_207;
      }

      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v283 = sub_23B50CDF4();
      v186 = OUTLINED_FUNCTION_29_2(v283, qword_280B4E9D8);
      v187 = sub_23B50CDD4();
      v284 = sub_23B50D4C4();
      if (!OUTLINED_FUNCTION_15_2(v284))
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    case 9u:
      v189 = OUTLINED_FUNCTION_44_0();
      v183 = v820;
      OUTLINED_FUNCTION_51(v189, v190, v820);
      if (!v139)
      {
        v329 = *(v806 + 32);
        v330 = v813;
        v331 = OUTLINED_FUNCTION_36_0();
        v332(v331);
        v333 = v843;
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v334 = sub_23B50CDF4();
        v335 = OUTLINED_FUNCTION_37_0(v334, qword_280B4E9D8);
        v336 = OUTLINED_FUNCTION_56();
        v337 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_17_0(v337))
        {
          OUTLINED_FUNCTION_46_0();
          v338 = OUTLINED_FUNCTION_27_1();
          OUTLINED_FUNCTION_34_2(v338);
          OUTLINED_FUNCTION_4_7(7.2225e-34);
          [v50 coordinate];
          v339 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v339, v340);
          OUTLINED_FUNCTION_23_1();

          *(v84 + 14) = v330;
          v330 = v813;
          v333 = v843;

          OUTLINED_FUNCTION_13_2(&dword_23B38D000, v341, v342, "Successfully built news; location=%{private,mask.hash}s");
          OUTLINED_FUNCTION_19_1();
          v183 = v820;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_14_3();
        }

        else
        {
        }

        v622 = *(v839 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
        v623 = v842;
        v842[3] = &type metadata for News;
        sub_23B3F2D10(v330, v624, v625, v626, v627, v628, v629, v630, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802, v803, v804);
        v369 = OUTLINED_FUNCTION_70();
        if (!v333)
        {
          v723 = v806;
          goto LABEL_198;
        }

        __swift_deallocate_boxed_opaque_existential_0(v623);
        v631 = v50;
        OUTLINED_FUNCTION_57_0();
        v632 = v622;
        OUTLINED_FUNCTION_61();
        v633 = sub_23B50CDD4();
        v634 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_26_1(v634))
        {
          OUTLINED_FUNCTION_42_0();
          v635 = OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_45_2(v635);
          OUTLINED_FUNCTION_2_7(7.2226e-34);
          [v98 coordinate];
          v636 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v636, v637);
          OUTLINED_FUNCTION_43_0();
          *(v63 + 14) = v333;

          OUTLINED_FUNCTION_39_0();
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          v639 = *(v638 + 64);
          MEMORY[0x28223BE20](v640);
          v642 = OUTLINED_FUNCTION_3_2(v641, v793);
          v643(v642);
          v644 = OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_30_1(v644, v645);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v646, v647, v648, v649, v650, 0x20u);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_16_1();

          sub_23B3E3D54();
          v651 = OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_9_1(v651, v652);

          (*(v806 + 8))(v813, v820);
          return;
        }

        sub_23B3E3D54();
        v743 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_9_1(v743, v744);

        v368 = *(v806 + 8);
        v369 = v813;
        goto LABEL_207;
      }

      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v191 = sub_23B50CDF4();
      v186 = OUTLINED_FUNCTION_29_2(v191, qword_280B4E9D8);
      v187 = sub_23B50CDD4();
      v192 = sub_23B50D4C4();
      if (!OUTLINED_FUNCTION_15_2(v192))
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    case 0xAu:
      v277 = OUTLINED_FUNCTION_44_0();
      v183 = v821;
      OUTLINED_FUNCTION_51(v277, v278, v821);
      if (!v139)
      {
        v480 = *(v807 + 32);
        v481 = v814;
        v482 = OUTLINED_FUNCTION_36_0();
        v483(v482);
        v484 = v843;
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v485 = sub_23B50CDF4();
        v486 = OUTLINED_FUNCTION_37_0(v485, qword_280B4E9D8);
        v487 = OUTLINED_FUNCTION_56();
        v488 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_17_0(v488))
        {
          OUTLINED_FUNCTION_46_0();
          v489 = OUTLINED_FUNCTION_27_1();
          OUTLINED_FUNCTION_34_2(v489);
          OUTLINED_FUNCTION_4_7(7.2225e-34);
          [v50 coordinate];
          v490 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v490, v491);
          OUTLINED_FUNCTION_23_1();

          *(v84 + 14) = v481;
          v481 = v814;
          v484 = v843;

          OUTLINED_FUNCTION_13_2(&dword_23B38D000, v492, v493, "Successfully built tides; location=%{private,mask.hash}s");
          OUTLINED_FUNCTION_19_1();
          v183 = v821;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_14_3();
        }

        else
        {
        }

        OUTLINED_FUNCTION_66(OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
        v653 = type metadata accessor for TideEvents();
        OUTLINED_FUNCTION_62(v653);
        v654 = OUTLINED_FUNCTION_54();
        sub_23B3F3A54(v654, v655, v656, v657, v658, v659, v660, v661, v793, v794, v795, v796, v797, v798, v799, v800, v801, v802, v803, v804, v805, v806);
        v369 = OUTLINED_FUNCTION_70();
        if (!v4)
        {
          v723 = v807;
          goto LABEL_198;
        }

        __swift_deallocate_boxed_opaque_existential_0(v84);
        v662 = v50;
        OUTLINED_FUNCTION_57_0();
        v663 = v487;
        OUTLINED_FUNCTION_61();
        v664 = sub_23B50CDD4();
        v665 = sub_23B50D4B4();
        if (OUTLINED_FUNCTION_26_1(v665))
        {
          OUTLINED_FUNCTION_42_0();
          v666 = OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_45_2(v666);
          OUTLINED_FUNCTION_2_7(7.2226e-34);
          [v98 coordinate];
          v667 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v667, v668);
          OUTLINED_FUNCTION_43_0();
          *(v63 + 14) = v484;

          OUTLINED_FUNCTION_39_0();
          swift_getErrorValue();
          OUTLINED_FUNCTION_7_4();
          v670 = *(v669 + 64);
          MEMORY[0x28223BE20](v671);
          v673 = OUTLINED_FUNCTION_3_2(v672, v793);
          v674(v673);
          v675 = OUTLINED_FUNCTION_60_0();
          OUTLINED_FUNCTION_30_1(v675, v676);
          OUTLINED_FUNCTION_59_0();
          OUTLINED_FUNCTION_58();

          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v677, v678, v679, v680, v681, 0x20u);
          OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_16_1();

          sub_23B3E3D54();
          v682 = OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_9_1(v682, v683);

          (*(v807 + 8))(v814, v821);
          return;
        }

        sub_23B3E3D54();
        v745 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_9_1(v745, v746);

        v368 = *(v807 + 8);
        v369 = v814;
        goto LABEL_207;
      }

      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v279 = sub_23B50CDF4();
      v186 = OUTLINED_FUNCTION_29_2(v279, qword_280B4E9D8);
      v187 = sub_23B50CDD4();
      v280 = sub_23B50D4C4();
      if (!OUTLINED_FUNCTION_15_2(v280))
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    case 0xBu:
      v152 = OUTLINED_FUNCTION_44_0();
      v153 = v823;
      OUTLINED_FUNCTION_51(v152, v154, v823);
      if (v139)
      {
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v155 = sub_23B50CDF4();
        v156 = OUTLINED_FUNCTION_29_2(v155, qword_280B4E9D8);
        v157 = sub_23B50CDD4();
        v158 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_15_2(v158))
        {
          OUTLINED_FUNCTION_46_0();
          v159 = OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_28_2(v159);
          OUTLINED_FUNCTION_1_2(7.2225e-34);
          [v156 coordinate];
          v160 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v160, v161);
          OUTLINED_FUNCTION_43_0();
          *(v50 + 14) = v153;

          OUTLINED_FUNCTION_10_1();
          _os_log_impl(v162, v163, v164, v165, v166, 0x16u);
          OUTLINED_FUNCTION_21_3();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
        }

        v529 = v842;
        v842[3] = &type metadata for WeatherAvailability;
        v530 = 515;
LABEL_162:
        *v529 = v530;
        v566 = 3;
        goto LABEL_177;
      }

      v293 = v817;
      (*(v809 + 32))(v817, v135, v153);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v294 = sub_23B50CDF4();
      v295 = OUTLINED_FUNCTION_29_2(v294, qword_280B4E9D8);
      v841 = v135;
      v296 = sub_23B50CDD4();
      v297 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_17_0(v297))
      {
        OUTLINED_FUNCTION_46_0();
        v298 = OUTLINED_FUNCTION_18_1();
        v844 = v298;
        OUTLINED_FUNCTION_1_2(7.2225e-34);
        [v295 coordinate];
        v299 = sub_23B50D4D4();
        v63 = OUTLINED_FUNCTION_47(v299, v300);

        *(v293 + 14) = v63;

        _os_log_impl(&dword_23B38D000, v296, v98, "Successfully built weather alerts; location=%{private,mask.hash}s", v293, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v298);
        v153 = v823;
        OUTLINED_FUNCTION_38();
        v293 = v817;
        OUTLINED_FUNCTION_38();
      }

      else
      {
      }

      v402 = v842;
      v531 = v810;
      sub_23B50BA04();
      sub_23B50CC64();
      OUTLINED_FUNCTION_64_0();
      v532(v95, v531);
      v533 = v839;
      if (v63 != 2 && (v95 & 1) != 0)
      {
        v534 = sub_23B50CDD4();
        v535 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_26_1(v535))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_11_1();
          _os_log_impl(v536, v537, v538, v539, v540, 2u);
          OUTLINED_FUNCTION_16_1();
        }

        v293 = v817;
      }

      v541 = *(v533 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      v542 = v843;
      v543 = sub_23B3F42E0();
      if (!v542)
      {
        v716 = v543;
        v402[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
        *v402 = v716;
        (*(v809 + 8))(v293, v153);
        return;
      }

      v544 = v295;
      v545 = v542;
      v546 = v544;
      v547 = v542;
      v548 = sub_23B50CDD4();
      v549 = sub_23B50D4B4();
      if (OUTLINED_FUNCTION_15_2(v549))
      {
        OUTLINED_FUNCTION_42_0();
        v550 = OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_28_2(v550);
        OUTLINED_FUNCTION_2_7(7.2226e-34);
        [v546 coordinate];
        v551 = sub_23B50D4D4();
        OUTLINED_FUNCTION_50(v551, v552);
        v843 = 0;
        OUTLINED_FUNCTION_23_1();

        *(v293 + 14) = 0;

        OUTLINED_FUNCTION_39_0();
        swift_getErrorValue();
        OUTLINED_FUNCTION_7_4();
        v554 = *(v553 + 64);
        MEMORY[0x28223BE20](v555);
        OUTLINED_FUNCTION_27();
        v557 = OUTLINED_FUNCTION_12_3(v556);
        v558(v557);
        v559 = OUTLINED_FUNCTION_71_0();
        OUTLINED_FUNCTION_49_0(v559, v560);
        OUTLINED_FUNCTION_43_0();
        *(v293 + 24) = v153;

        OUTLINED_FUNCTION_25_1();
        _os_log_impl(v561, v562, v563, v564, v565, 0x20u);
        OUTLINED_FUNCTION_63_0();
        v402 = v842;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_16_1();

        (*(v809 + 8))(v817, v823);
      }

      else
      {

        (*(v809 + 8))(v817, v153);
      }

      goto LABEL_220;
    case 0xCu:
      v182 = OUTLINED_FUNCTION_44_0();
      v183 = v822;
      OUTLINED_FUNCTION_51(v182, v184, v822);
      if (v139)
      {
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v185 = sub_23B50CDF4();
        v186 = OUTLINED_FUNCTION_29_2(v185, qword_280B4E9D8);
        v187 = sub_23B50CDD4();
        v188 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_15_2(v188))
        {
LABEL_70:
          OUTLINED_FUNCTION_46_0();
          v285 = OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_28_2(v285);
          OUTLINED_FUNCTION_1_2(7.2225e-34);
          [v186 coordinate];
          v286 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v286, v287);
          OUTLINED_FUNCTION_43_0();
          *(v50 + 14) = v129;

          OUTLINED_FUNCTION_10_1();
          _os_log_impl(v288, v289, v290, v291, v292, 0x16u);
          OUTLINED_FUNCTION_21_3();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
LABEL_71:
        }

        v223 = v842;
        v222 = 0uLL;
LABEL_73:
        *v223 = v222;
        *(v223 + 1) = v222;
      }

      else
      {
        v315 = *(v808 + 32);
        v316 = v815;
        v317 = OUTLINED_FUNCTION_36_0();
        v318(v317);
        v319 = v843;
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v320 = sub_23B50CDF4();
        v321 = OUTLINED_FUNCTION_37_0(v320, qword_280B4E9D8);
        v322 = OUTLINED_FUNCTION_56();
        v323 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_17_0(v323))
        {
          OUTLINED_FUNCTION_46_0();
          v324 = OUTLINED_FUNCTION_27_1();
          OUTLINED_FUNCTION_34_2(v324);
          OUTLINED_FUNCTION_4_7(7.2225e-34);
          [v50 coordinate];
          v325 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v325, v326);
          OUTLINED_FUNCTION_23_1();

          *(v84 + 14) = v316;
          v316 = v815;
          v319 = v843;

          OUTLINED_FUNCTION_13_2(&dword_23B38D000, v327, v328, "Successfully built weather change; location=%{private,mask.hash}s");
          OUTLINED_FUNCTION_19_1();
          v183 = v822;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_14_3();
        }

        else
        {
        }

        OUTLINED_FUNCTION_66(OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
        v599 = type metadata accessor for WeatherChanges();
        OUTLINED_FUNCTION_62(v599);
        OUTLINED_FUNCTION_54();
        sub_23B3AF598();
        v369 = OUTLINED_FUNCTION_70();
        if (v4)
        {
          __swift_deallocate_boxed_opaque_existential_0(v84);
          v600 = v50;
          OUTLINED_FUNCTION_57_0();
          v601 = v322;
          OUTLINED_FUNCTION_61();
          v602 = sub_23B50CDD4();
          v603 = sub_23B50D4B4();
          if (OUTLINED_FUNCTION_26_1(v603))
          {
            OUTLINED_FUNCTION_42_0();
            v604 = OUTLINED_FUNCTION_22_0();
            OUTLINED_FUNCTION_45_2(v604);
            OUTLINED_FUNCTION_2_7(7.2226e-34);
            [v98 coordinate];
            v605 = sub_23B50D4D4();
            OUTLINED_FUNCTION_47(v605, v606);
            OUTLINED_FUNCTION_43_0();
            *(v63 + 14) = v319;

            OUTLINED_FUNCTION_39_0();
            swift_getErrorValue();
            OUTLINED_FUNCTION_7_4();
            v608 = *(v607 + 64);
            MEMORY[0x28223BE20](v609);
            v611 = OUTLINED_FUNCTION_3_2(v610, v793);
            v612(v611);
            v613 = OUTLINED_FUNCTION_60_0();
            OUTLINED_FUNCTION_30_1(v613, v614);
            OUTLINED_FUNCTION_59_0();
            OUTLINED_FUNCTION_58();

            OUTLINED_FUNCTION_11_1();
            _os_log_impl(v615, v616, v617, v618, v619, 0x20u);
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_14_3();
            OUTLINED_FUNCTION_16_1();

            sub_23B3E3D54();
            v620 = OUTLINED_FUNCTION_48_0();
            OUTLINED_FUNCTION_9_1(v620, v621);

            (*(v808 + 8))(v815, v822);
            return;
          }

          sub_23B3E3D54();
          v741 = OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_9_1(v741, v742);

          v368 = *(v808 + 8);
          v369 = v815;
LABEL_207:
          v520 = v183;
        }

        else
        {
          v723 = v808;
LABEL_198:
          v368 = *(v723 + 8);
          v520 = v183;
        }

LABEL_199:
        v368(v369, v520);
      }

      return;
    case 0xDu:
      v251 = v824;
      sub_23B3E3DA8(v135, v824, &qword_27E131E90, &unk_23B5101F0);
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v252 = sub_23B50CDF4();
      v253 = OUTLINED_FUNCTION_29_2(v252, qword_280B4E9D8);
      v254 = sub_23B50CDD4();
      v255 = sub_23B50D4C4();
      if (OUTLINED_FUNCTION_15_2(v255))
      {
        OUTLINED_FUNCTION_46_0();
        v256 = OUTLINED_FUNCTION_18_1();
        OUTLINED_FUNCTION_28_2(v256);
        OUTLINED_FUNCTION_1_2(7.2225e-34);
        [v253 coordinate];
        v257 = sub_23B50D4D4();
        OUTLINED_FUNCTION_47(v257, v258);
        OUTLINED_FUNCTION_43_0();
        *(v50 + 14) = v129;

        OUTLINED_FUNCTION_10_1();
        _os_log_impl(v259, v260, v261, v262, v263, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v251);
        v251 = v824;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_20_1();
      }

      else
      {
      }

      v469 = v842;
      v264 = v804;
      v470 = *(v839 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
      sub_23B3BFA24();
      v471 = type metadata accessor for HistoricalComparisons();
      OUTLINED_FUNCTION_51(v264, 1, v471);
      if (v139)
      {
        sub_23B398890(v251, &qword_27E131E90, &unk_23B5101F0);
        v472 = &qword_27E131E88;
        v473 = &unk_23B519360;
LABEL_140:
        sub_23B398890(v264, v472, v473);
        *v469 = 0u;
        *(v469 + 1) = 0u;
      }

      else
      {
        v469[3] = v471;
        v474 = __swift_allocate_boxed_opaque_existential_0(v469);
        sub_23B3CE55C(v264, v474, type metadata accessor for HistoricalComparisons);
        v475 = &qword_27E131E90;
        v476 = &unk_23B5101F0;
        v477 = v251;
LABEL_120:
        sub_23B398890(v477, v475, v476);
      }

      return;
    default:
      v136 = OUTLINED_FUNCTION_44_0();
      v137 = v818;
      OUTLINED_FUNCTION_51(v136, v138, v818);
      if (v139)
      {
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v140 = sub_23B50CDF4();
        v141 = OUTLINED_FUNCTION_29_2(v140, qword_280B4E9D8);
        v142 = sub_23B50CDD4();
        v143 = sub_23B50D4C4();
        if (OUTLINED_FUNCTION_15_2(v143))
        {
          OUTLINED_FUNCTION_46_0();
          v144 = OUTLINED_FUNCTION_18_1();
          OUTLINED_FUNCTION_28_2(v144);
          OUTLINED_FUNCTION_1_2(7.2225e-34);
          [v141 coordinate];
          v145 = sub_23B50D4D4();
          OUTLINED_FUNCTION_47(v145, v146);
          OUTLINED_FUNCTION_43_0();
          *(v50 + 14) = v129;

          OUTLINED_FUNCTION_10_1();
          _os_log_impl(v147, v148, v149, v150, v151, 0x16u);
          OUTLINED_FUNCTION_21_3();
          OUTLINED_FUNCTION_20_1();
        }

        else
        {
        }

        v529 = v842;
        v842[3] = &type metadata for WeatherAvailability;
        *v529 = 771;
        v566 = 2;
LABEL_177:
        *(v529 + 2) = v566;
      }

      else
      {
        v398 = v799;
        v399 = v816;
        (*(v799 + 32))(v816, v135, v137);
        sub_23B50BAD4();
        sub_23B50CC64();
        OUTLINED_FUNCTION_64_0();
        v400(v98, v810);
        v401 = v843;
        if (v399 != 2 && (v98 & 1) != 0)
        {
          v402 = v842;
          if (qword_280B43440 != -1)
          {
            OUTLINED_FUNCTION_0_1();
          }

          v403 = sub_23B50CDF4();
          __swift_project_value_buffer(v403, qword_280B4E9D8);
          v404 = sub_23B50CDD4();
          v405 = sub_23B50D4C4();
          if (os_log_type_enabled(v404, v405))
          {
            v406 = swift_slowAlloc();
            *v406 = 0;
            _os_log_impl(&dword_23B38D000, v404, v405, "Air quality data temporarily unavailable", v406, 2u);
            OUTLINED_FUNCTION_20_1();
          }

          v407 = OUTLINED_FUNCTION_32_0();
          goto LABEL_219;
        }

        sub_23B3C5D7C(v794, v84);
        v508 = v798;
        OUTLINED_FUNCTION_51(v84, 1, v798);
        if (v139)
        {
          sub_23B398890(v84, &qword_27E131EA8, &qword_23B5194F0);
          if (qword_280B43440 != -1)
          {
            OUTLINED_FUNCTION_0_1();
          }

          v509 = sub_23B50CDF4();
          v510 = OUTLINED_FUNCTION_29_2(v509, qword_280B4E9D8);
          v511 = sub_23B50CDD4();
          v512 = sub_23B50D4B4();
          if (OUTLINED_FUNCTION_15_2(v512))
          {
            OUTLINED_FUNCTION_46_0();
            v841 = OUTLINED_FUNCTION_18_1();
            v844 = v841;
            OUTLINED_FUNCTION_1_2(7.2225e-34);
            [v510 coordinate];
            v513 = sub_23B50D4D4();
            OUTLINED_FUNCTION_47(v513, v514);
            OUTLINED_FUNCTION_43_0();
            *(v50 + 14) = v398;

            OUTLINED_FUNCTION_10_1();
            _os_log_impl(v515, v516, v517, v518, v519, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v841);
            OUTLINED_FUNCTION_16_1();
            OUTLINED_FUNCTION_20_1();

            (*(v398 + 8))(v816, v818);
          }

          else
          {

            v752 = OUTLINED_FUNCTION_32_0();
            v753(v752);
          }

          v402 = v842;
          goto LABEL_220;
        }

        (*(v795 + 32))(v797, v84, v508);
        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v724 = sub_23B50CDF4();
        v725 = OUTLINED_FUNCTION_37_0(v724, qword_280B4E9D8);
        v726 = sub_23B50CDD4();
        v727 = sub_23B50D4C4();
        v728 = OUTLINED_FUNCTION_17_0(v727);
        v841 = v399;
        if (v728)
        {
          v729 = OUTLINED_FUNCTION_46_0();
          v730 = OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_34_2(v730);
          OUTLINED_FUNCTION_2_7(7.2225e-34);
          [v725 coordinate];
          v731 = sub_23B50D4D4();
          OUTLINED_FUNCTION_50(v731, v732);
          OUTLINED_FUNCTION_23_1();
          v398 = v799;

          *(v729 + 14) = v401;
          v401 = v843;

          OUTLINED_FUNCTION_25_1();
          _os_log_impl(v733, v734, v735, v736, v737, 0x16u);
          OUTLINED_FUNCTION_19_1();
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_16_1();
        }

        else
        {
        }

        v402 = v842;
        v754 = *(v839 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);
        v755 = v793;
        sub_23B3B5B7C();
        if (v401)
        {
          v756 = v725;
          v757 = v401;
          v758 = v756;
          v759 = v401;
          v760 = sub_23B50CDD4();
          v761 = sub_23B50D4B4();
          if (OUTLINED_FUNCTION_15_2(v761))
          {
            v762 = OUTLINED_FUNCTION_42_0();
            v763 = swift_slowAlloc();
            OUTLINED_FUNCTION_28_2(v763);
            OUTLINED_FUNCTION_1_2(7.2226e-34);
            [v758 coordinate];
            v764 = sub_23B50D4D4();
            OUTLINED_FUNCTION_50(v764, v765);
            v843 = 0;
            OUTLINED_FUNCTION_23_1();

            *(v762 + 14) = 0;

            *(v762 + 22) = 2082;
            swift_getErrorValue();
            OUTLINED_FUNCTION_7_4();
            v767 = *(v766 + 64);
            MEMORY[0x28223BE20](v768);
            OUTLINED_FUNCTION_27();
            v770 = OUTLINED_FUNCTION_12_3(v769);
            v771(v770);
            v772 = OUTLINED_FUNCTION_71_0();
            OUTLINED_FUNCTION_49_0(v772, v773);
            OUTLINED_FUNCTION_43_0();
            *(v762 + 24) = v398;

            OUTLINED_FUNCTION_10_1();
            _os_log_impl(v774, v775, v776, v777, v778, 0x20u);
            OUTLINED_FUNCTION_63_0();
            v402 = v842;
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_20_1();

            v779 = OUTLINED_FUNCTION_35_1();
            v780(v779);
            (*(v799 + 8))(v816, v818);
LABEL_220:
            *v402 = 0u;
            *(v402 + 1) = 0u;
            return;
          }

          v786 = OUTLINED_FUNCTION_35_1();
          v787(v786);
          v409 = *(v398 + 8);
          v407 = v816;
          v408 = v818;
LABEL_219:
          v409(v407, v408);
          goto LABEL_220;
        }

        v781 = type metadata accessor for AirQuality();
        OUTLINED_FUNCTION_51(v755, 1, v781);
        if (v139)
        {
          v782 = OUTLINED_FUNCTION_35_1();
          v783(v782);
          v784 = OUTLINED_FUNCTION_32_0();
          v785(v784);
          v720 = &qword_27E131C78;
          v721 = &qword_23B50ED40;
          v722 = v755;
LABEL_217:
          sub_23B398890(v722, v720, v721);
          *v402 = 0u;
          *(v402 + 1) = 0u;
        }

        else
        {
          v402[3] = v781;
          v788 = __swift_allocate_boxed_opaque_existential_0(v402);
          sub_23B3CE55C(v755, v788, type metadata accessor for AirQuality);
          v789 = OUTLINED_FUNCTION_35_1();
          v790(v789);
          v791 = OUTLINED_FUNCTION_32_0();
          v792(v791);
        }
      }

      return;
  }
}

uint64_t OUTLINED_FUNCTION_250_1()
{
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return swift_getTupleTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return sub_23B50D834();
}

uint64_t OUTLINED_FUNCTION_46_7()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_19_3(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F054C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_19_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 72) = a2;
  *(v3 - 104) = a1;
  result = 0;
  *(v3 - 120) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1)
{
  *(v1 - 104) = a1;
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return sub_23B398890(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_19_10()
{

  return sub_23B43EBE4();
}

uint64_t OUTLINED_FUNCTION_19_12()
{
  v2 = MEMORY[0x277D7ABF8];

  return sub_23B48712C(v0, v2);
}

uint64_t OUTLINED_FUNCTION_19_13()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 160);
  return result;
}

void OUTLINED_FUNCTION_19_14(uint64_t a1@<X8>)
{
  *(a1 + 16) = 2;
  v3 = v1 + *(v2 + 40);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_19_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_18@<X0>(char a1@<W8>)
{
  *(v1 - 80) = a1;

  return sub_23B50D7A4();
}

uint64_t OUTLINED_FUNCTION_19_20()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_19_21@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 248);
  v5 = *(v1 - 192);
  v6 = *(v1 - 184);

  return sub_23B50D734();
}

void OUTLINED_FUNCTION_254(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_254_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_254_1()
{

  return swift_task_alloc();
}

void sub_23B3ADF24(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  sub_23B39D980(a5);
  if (a3)
  {
    v10 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = *a1++;
      v14 = type metadata accessor for WeatherQuery();
      v22[1] = v22;
      OUTLINED_FUNCTION_5(v14);
      v16 = v15;
      v18 = *(v17 + 64);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v19);
      v21 = v22 - v20;
      (*(v16 + 16))(v22 - v20, v13, v14);
      sub_23B39EEA0(v21, a2, a5, v11);
      (*(v16 + 8))(v21, v14);
      --a3;
    }

    while (a3);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3AE080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void OUTLINED_FUNCTION_253(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = *(v2 - 392);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t OUTLINED_FUNCTION_253_0()
{

  return sub_23B50AA24();
}

uint64_t OUTLINED_FUNCTION_253_1()
{

  return swift_task_alloc();
}

__n128 OUTLINED_FUNCTION_229_0()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 208);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  return *(v0 + 88);
}

uint64_t sub_23B3AE1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AD24();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

__n128 OUTLINED_FUNCTION_151_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v10 + 184) = a1;
  *(a1 + 16) = v12;
  result = a9;
  *(a1 + 24) = a9;
  *(a1 + 40) = v13;
  *(a1 + 48) = v11;
  *(a1 + 56) = v9;
  return result;
}

unint64_t sub_23B3AE2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_23B50D834() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_23B3AE358(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_23B50AD24() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_21_5();
  return sub_23B3A7108(a1, a2, v2 + v10, *(v2 + v8), *(v2 + v9));
}

uint64_t OUTLINED_FUNCTION_41_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[7];
  v5 = v2[8];
  v7 = v2[5];
  v6 = v2[6];
  return v3;
}

uint64_t OUTLINED_FUNCTION_41_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_5@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = v1;
  *(v2 - 136) = a1;

  return type metadata accessor for WeatherMetadata();
}

uint64_t OUTLINED_FUNCTION_41_6@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_23B39E56C(v5 + a3, v4 + v3, a1, a2);
}

void OUTLINED_FUNCTION_21_3()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return sub_23B398890(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_21_8(uint64_t a1)
{

  return sub_23B398890(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return sub_23B50D824();
}

uint64_t OUTLINED_FUNCTION_21_12()
{

  return sub_23B398890(v2 - 208, v1, v0);
}

void OUTLINED_FUNCTION_21_13()
{
  v2 = (v0 + v1[14]);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + v1[15]) = 0;
  *(v0 + v1[16]) = 0;
  v3 = v0 + v1[17];
}

void OUTLINED_FUNCTION_21_14(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_21_15()
{

  return sub_23B50D794();
}

void sub_23B3AE65C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23B3AE984(0, *(v1 + 16) + 1, 1, v1);
    *v0 = v3;
  }
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v4 = *(v2 - 184) + a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_10()
{
  result = *(v0 - 416);
  v2 = *(v0 - 312);
  v3 = *(v0 - 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = *a4;
  v7 = *(a4 + 8);

  return type metadata accessor for MinuteSummary();
}

uint64_t OUTLINED_FUNCTION_23_12()
{
  v3 = *(v0 - 104);
  v2 = *(v0 - 96);
  v4 = *(v0 - 112);

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_23_16()
{

  return sub_23B50D0E4();
}

id OUTLINED_FUNCTION_29_2(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
  v3 = *(v2 + 376);

  return v3;
}

double OUTLINED_FUNCTION_29_3@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v4 = *(*(v2 - 184) + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_23B50D1C4();
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return sub_23B50D6D4();
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return type metadata accessor for Weather();
}

void OUTLINED_FUNCTION_29_10(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_29_13()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 184);

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_29_14()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 192);
  v4 = *(v0 - 128);

  return sub_23B50D734();
}

void sub_23B3AE984(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_18();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A10, &unk_23B5268C8);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[v9] <= v13)
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }
}

uint64_t sub_23B3AEA68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23B3AEAD8(uint64_t a1)
{
  v2 = *(*v1 + 3);
  if (a1 + 1 > (v2 >> 1))
  {
    sub_23B3AE984(v2 > 1, a1 + 1, 1, *v1);
    *v1 = v3;
  }
}

id OUTLINED_FUNCTION_37_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
  v3 = *(v2 + 376);

  return v3;
}

uint64_t OUTLINED_FUNCTION_37_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 248);
  v5 = *(v1 - 240);

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_37_10()
{
  __swift_storeEnumTagSinglePayload(v1 + *(v0 + 44), 1, 1, v3);
  v4 = v1 + *(v0 + 48);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_37_11@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_23B50C204();
}

uint64_t OUTLINED_FUNCTION_37_12()
{

  return sub_23B50D134();
}

uint64_t sub_23B3AECA0(char **a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_23B50AD24();
  v8 = OUTLINED_FUNCTION_28_0(v7);
  v10 = *(v9 + 80);
  v12 = *(v11 + 64);
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_230_0((v6 & 0xFFFFFFFFFFFFFFFELL));
    TupleTypeMetadata = type metadata accessor for WeatherQuery();
  }

  else
  {
    v26 = a2;
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_27();
    v16 = v15 - v14;
    for (i = 0; v5 != i; ++i)
    {
      v18 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
      *(v16 + 8 * i) = type metadata accessor for WeatherQuery();
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a2 = v26;
  }

  OUTLINED_FUNCTION_28_0(TupleTypeMetadata);
  v21 = (v20 + *(v19 + 80) + 8) & ~*(v19 + 80);
  v23 = v2 + ((*(v22 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_23B3A754C(a1, a2, v2 + v24, *(v2 + v20), v2 + v21, *v23, *(v23 + 8), v5, v6);
}

uint64_t *OUTLINED_FUNCTION_53(uint64_t a1)
{
  v3 = *(v1 + 392);
  v3[3] = a1;

  return __swift_allocate_boxed_opaque_existential_0(v3);
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_23B3BAB5C();
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return swift_once();
}

uint64_t sub_23B3AEEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherServiceOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_23B50D184();
}

uint64_t OUTLINED_FUNCTION_71_1()
{

  return sub_23B3F04F8();
}

double OUTLINED_FUNCTION_28_3@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v4 = *(v2 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return type metadata accessor for WatchWeather();
}

uint64_t OUTLINED_FUNCTION_28_7()
{
  v1 = *(*(v0 - 456) + 8);
  result = *(v0 - 640);
  v3 = *(v0 - 632);
  return result;
}

void OUTLINED_FUNCTION_28_10()
{
  v5 = *(v1 + 8 * v0);
  v6 = *(v2 + 8 * v0);
  v7 = *(v3 + 8 * v0);
  v8 = *(v4 + 8 * v0);
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  v3 = *(v0 - 168);
  v2 = *(v0 - 160);
  v4 = *(v0 - 136);

  return sub_23B50D734();
}

void OUTLINED_FUNCTION_20_1()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return sub_23B50D7F4();
}

BOOL OUTLINED_FUNCTION_20_7()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_20_9()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_20_11()
{

  return type metadata accessor for WeatherStatisticsModel();
}

void OUTLINED_FUNCTION_20_12()
{

  JUMPOUT(0x23EE9D460);
}

uint64_t OUTLINED_FUNCTION_20_14(int *a1)
{
  v8 = (v6 + a1[14]);
  *v8 = v5;
  v8[1] = v4;
  *(v6 + a1[15]) = v3;
  *(v6 + a1[16]) = v2;
  v9 = v6 + a1[13];

  return sub_23B3CA20C(v1, v9);
}

void OUTLINED_FUNCTION_20_15()
{
  v2 = (v0 + *(v1 + 40));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_20_18()
{
  v2 = *(v0 - 96);

  return sub_23B50D6D4();
}

BOOL sub_23B3AF288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3;
    v7 = sub_23B50B624();
    v9 = v8;
    if (v7 == sub_23B50B624() && v9 == v10)
    {

      return v4 != 0;
    }

    v12 = sub_23B50D834();

    ++v3;
  }

  while ((v12 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_23B3AF34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23B3AF3B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  result = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 253)
    {
      *(a1 + a4[9] + 16) = a2 + 2;
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[11];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F50, &qword_23B50F288);
      v16 = a4[12];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t OUTLINED_FUNCTION_63_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  v1 = *(v0[18] + 8);
  result = v0[33];
  v3 = v0[34];
  return result;
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_55_2()
{
  result = *(v0 - 256);
  v3 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return sub_23B4FB78C();
}

void sub_23B3AF598()
{
  OUTLINED_FUNCTION_107();
  v3 = v2;
  v55 = v4;
  v5 = sub_23B50CCA4();
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v58 = v9;
  OUTLINED_FUNCTION_24_0();
  v10 = type metadata accessor for WeatherMetadata();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v57 = v14;
  OUTLINED_FUNCTION_24_0();
  v15 = type metadata accessor for WeatherChange();
  v16 = OUTLINED_FUNCTION_28_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  v59 = sub_23B50C354();
  v19 = OUTLINED_FUNCTION_5(v59);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_106_0();
  v24 = sub_23B50BA24();
  v25 = 0;
  v60 = *(v24 + 16);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v60 == v25)
    {

      v42 = v58;
      sub_23B50BA34();
      sub_23B3AFEEC(v58, v43, v44, v45, v46, v47, v48, v49, v55, v57, v58, v3);
      if (v0)
      {
        OUTLINED_FUNCTION_234();
        v50(v42);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_234();
      v53(v42);
      *v56 = v26;
      v54 = *(type metadata accessor for WeatherChanges() + 20);
      OUTLINED_FUNCTION_1_5();
      sub_23B3B0608();
LABEL_14:
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_105();
      return;
    }

    if (v25 >= *(v24 + 16))
    {
      break;
    }

    v27 = *(v21 + 80);
    OUTLINED_FUNCTION_52_0();
    (*(v21 + 16))(v1, v24 + v28 + *(v21 + 72) * v25, v59);
    sub_23B3F7260();
    if (v0)
    {
      v51 = OUTLINED_FUNCTION_237();
      v52(v51);

LABEL_13:

      goto LABEL_14;
    }

    v29 = OUTLINED_FUNCTION_237();
    v30(v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = *(v26 + 16);
      v36 = OUTLINED_FUNCTION_126();
      sub_23B4F58CC(v36, v37, v38, v26);
      v26 = v39;
    }

    v32 = *(v26 + 16);
    v31 = *(v26 + 24);
    if (v32 >= v31 >> 1)
    {
      v40 = OUTLINED_FUNCTION_70_1(v31);
      sub_23B4F58CC(v40, v32 + 1, 1, v26);
      v26 = v41;
    }

    *(v26 + 16) = v32 + 1;
    OUTLINED_FUNCTION_23_3();
    v34 = *(v33 + 72);
    sub_23B3B0608();
    ++v25;
  }

  __break(1u);
}

uint64_t sub_23B3AF918()
{
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_265(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_65();
  v10(v9);
  return v0;
}

uint64_t sub_23B3AF994(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23B50AD24();
  result = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[11] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[12];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[14];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
        v21 = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[15];
        }

        else
        {
          v23 = type metadata accessor for PrecipitationAmount();
          v24 = OUTLINED_FUNCTION_8_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[17];
          }

          else
          {
            v26 = type metadata accessor for PrecipitationAmountByType();
            v27 = OUTLINED_FUNCTION_8_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[19];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
              v30 = OUTLINED_FUNCTION_8_0(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = v30;
                v16 = a4[29];
              }

              else
              {
                v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
                v33 = OUTLINED_FUNCTION_8_0(v32);
                if (*(v34 + 84) == a3)
                {
                  v11 = v33;
                  v16 = a4[32];
                }

                else
                {
                  v35 = type metadata accessor for Wind();
                  v36 = OUTLINED_FUNCTION_8_0(v35);
                  if (*(v37 + 84) == a3)
                  {
                    v11 = v36;
                    v16 = a4[33];
                  }

                  else
                  {
                    v11 = type metadata accessor for WeatherMetadata();
                    v16 = a4[34];
                  }
                }
              }
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_23B3AFCB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23B50AD24();
  result = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[10] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[11];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[13];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
        v21 = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[14];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
          v24 = OUTLINED_FUNCTION_8_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[22];
          }

          else
          {
            v26 = type metadata accessor for Wind();
            v27 = OUTLINED_FUNCTION_8_0(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[23];
            }

            else
            {
              v11 = type metadata accessor for WeatherMetadata();
              v16 = a4[24];
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_23B3AFEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_201();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_117();
  v21 = sub_23B50AD24();
  v22 = OUTLINED_FUNCTION_5(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_49();
  sub_23B50CC84();
  sub_23B50CC14();
  sub_23B50CC74();
  sub_23B50CC94();
  sub_23B50AB34();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_229();
  sub_23B3B00E4(0, 0, v32);
  sub_23B398890(v15, &qword_27E131FC0, &qword_23B515170);
  if (v13)
  {
    v33 = *(v24 + 8);
    v33(v14, v21);
    v33(v16, v21);
  }

  else
  {
    v34 = *(type metadata accessor for WeatherMetadata() + 32);
    *(v12 + v34) = 0;
    v35 = *(v24 + 32);
    v35(v12, v16, v21);
    v36 = OUTLINED_FUNCTION_224();
    (v35)(v36);
    OUTLINED_FUNCTION_223();
    v37 = *(v12 + v34);

    *(v12 + v34) = a12;
  }

  OUTLINED_FUNCTION_158();
}

uint64_t sub_23B3B00E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v32 = a1;
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v30[2] = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v30 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v30 - v19;
  v21 = a2;
  if (!a2)
  {
    result = sub_23B50CC44();
    if (!v21)
    {
      v29 = 0;
      goto LABEL_8;
    }

    v32 = result;
  }

  v30[0] = v21;

  sub_23B3C4944(v20);
  sub_23B50CC34();
  v30[1] = v3;
  if (v23)
  {
    sub_23B50AB04();
  }

  else
  {
    v24 = sub_23B50AB34();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v24);
  }

  sub_23B3B81F8();
  sub_23B3B81F8();
  sub_23B3B81F8();
  sub_23B3B81F8();
  v25 = type metadata accessor for WeatherAttribution.Storage();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_23B3C4BA8();
  v29 = v28;
  sub_23B398890(v11, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(v14, &qword_27E131FC0, &qword_23B515170);
  sub_23B398890(v17, &qword_27E131FC0, &qword_23B515170);
  result = sub_23B398890(v20, &qword_27E131FC0, &qword_23B515170);
LABEL_8:
  *v31 = v29;
  return result;
}

uint64_t type metadata accessor for WeatherAttribution.Storage()
{
  result = qword_280B43330;
  if (!qword_280B43330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B3B03F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WeatherMetadata();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_23B3B0498()
{
  v0 = sub_23B50AB34();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23B39AA44();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void *sub_23B3B0588(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMetadata();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3B0608()
{
  OUTLINED_FUNCTION_220();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return v0;
}

uint64_t sub_23B3B0660()
{
  v1 = OUTLINED_FUNCTION_67();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t sub_23B3B06B0(uint64_t a1)
{

  if (!sub_23B3AF288(5, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3AE984(0, *(a1 + 16) + 1, 1, a1);
      a1 = v9;
    }

    v3 = *(a1 + 16);
    v2 = *(a1 + 24);
    if (v3 >= v2 >> 1)
    {
      sub_23B3AE984(v2 > 1, v3 + 1, 1, a1);
      a1 = v10;
    }

    *(a1 + 16) = v3 + 1;
    *(a1 + v3 + 32) = 5;
  }

  if (!sub_23B3AF288(10, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3AE984(0, *(a1 + 16) + 1, 1, a1);
      a1 = v11;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    if (v5 >= v4 >> 1)
    {
      sub_23B3AE984(v4 > 1, v5 + 1, 1, a1);
      a1 = v12;
    }

    *(a1 + 16) = v5 + 1;
    *(a1 + v5 + 32) = 10;
  }

  if (!sub_23B3AF288(0, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3AE984(0, *(a1 + 16) + 1, 1, a1);
      a1 = v13;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_23B3AE984(v6 > 1, v7 + 1, 1, a1);
      a1 = v14;
    }

    *(a1 + 16) = v7 + 1;
    *(a1 + v7 + 32) = 0;
  }

  return a1;
}

BOOL OUTLINED_FUNCTION_113(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_113_1(__n128 a1)
{
  v4 = *(v2 + 120);
  v3[2].n128_u64[0] = v1;
  v3[1] = a1;
}

uint64_t sub_23B3B089C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for WeatherMetadata();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t OUTLINED_FUNCTION_186()
{

  return sub_23B3B7EA8();
}

void *sub_23B3B09B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMetadata();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3B0A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23B3B0A98()
{
  OUTLINED_FUNCTION_220();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return v0;
}

uint64_t sub_23B3B0B00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AD24();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23B3B0BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_140();
  a30 = v36;
  a31 = v37;
  v39 = v38;
  OUTLINED_FUNCTION_155(v40);
  v41 = type metadata accessor for WeatherMetadata();
  v42 = OUTLINED_FUNCTION_3(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v45);
  v46 = type metadata accessor for Wind();
  v47 = OUTLINED_FUNCTION_3(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2_0(v51, &v337);
  v320 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v56);
  v57 = type metadata accessor for PrecipitationAmount();
  v58 = OUTLINED_FUNCTION_3(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132150, &qword_23B5100E0);
  OUTLINED_FUNCTION_3(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v67);
  v68 = sub_23B50C0E4();
  v69 = OUTLINED_FUNCTION_2_0(v68, &a14);
  v327 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2_0(v74, &a24);
  v333 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2_0(v80, &a22);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_52();
  v340 = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v86 = OUTLINED_FUNCTION_2_0(v85, &a26);
  v335 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132160, &qword_23B510100);
  OUTLINED_FUNCTION_3(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v97);
  v98 = type metadata accessor for PrecipitationAmountByType();
  v99 = OUTLINED_FUNCTION_3(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_43_2(v108, v109, v110, v111, v112, v113, v114, v115, v301);
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_5_1();
  v342 = v117;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_5_1();
  v343 = v119;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_5_1();
  v344 = v121;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_5_1();
  v345 = v123;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_76();
  v346 = v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  v127 = OUTLINED_FUNCTION_3(v126);
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_5_1();
  v347 = v132;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_76();
  v348 = v134;
  OUTLINED_FUNCTION_24_0();
  v135 = sub_23B50CCA4();
  v136 = OUTLINED_FUNCTION_5(v135);
  v138 = v137;
  v140 = *(v139 + 64);
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_49();
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v142);
  v144 = *(v143 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_153();
  v146 = sub_23B50AD24();
  v147 = OUTLINED_FUNCTION_5(v146);
  v149 = v148;
  v151 = *(v150 + 64);
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_188_0();
  sub_23B50B414();
  v153 = OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_51(v153, v154, v146);
  v317 = v135;
  if (v155)
  {
    sub_23B50B474();
    sub_23B50CC84();
    (*(v138 + 8))(v35, v135);
    v156 = OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_51(v156, v157, v146);
    v158 = v149;
    if (!v155)
    {
      sub_23B398890(v34, &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    (*(v149 + 32))(v33, v34, v146);
    v158 = v149;
  }

  OUTLINED_FUNCTION_98();
  sub_23B3CC400(v39, v159);
  OUTLINED_FUNCTION_97();
  sub_23B3CC400(v39, v160);
  v161 = sub_23B50B3E4();
  sub_23B50B324();
  sub_23B3B250C(v161, v346);

  v162 = sub_23B50B3F4();
  sub_23B50B334();
  sub_23B3B250C(v162, v345);

  v163 = sub_23B50B404();
  sub_23B50B354();
  sub_23B3B250C(v163, v344);

  v164 = sub_23B50B3B4();
  sub_23B50B374();
  sub_23B3B250C(v164, v343);

  v165 = sub_23B50B3C4();
  sub_23B50B384();
  sub_23B3B250C(v165, v342);

  v166 = sub_23B50B3D4();
  sub_23B50B394();
  sub_23B3B250C(v166, v341);

  v331 = v146;
  (*(v158 + 16))(v338, v33, v146);
  sub_23B50B224();
  v168 = v167;
  sub_23B50B2B4();
  v170 = v169;
  sub_23B50B2C4();
  v172 = v171;
  sub_23B50B2F4();
  v310 = v173;
  sub_23B50B2B4();
  v307 = v174;
  sub_23B50B2C4();
  v176 = v175;
  sub_23B50B2F4();
  v178 = v177;
  OUTLINED_FUNCTION_239(&a9);
  sub_23B50B254();
  v179 = sub_23B50C064();
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v179);
  sub_23B3B8890(&a21);
  sub_23B398890(v149, &qword_27E132160, &qword_23B510100);
  a18 = a21;
  sub_23B50B254();
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v183, v184, v185, v179);
  v186 = sub_23B50B454();
  sub_23B3B99FC(v149, v186 & 1, v187, v188, v189, v190, v191, v192, v302, v305, v307, v310, v313, v314, v316, v138, v317, v319, v320, v321);
  sub_23B398890(v149, &qword_27E132160, &qword_23B510100);
  v193 = sub_23B50B2E4();
  OUTLINED_FUNCTION_72(v193);
  v325 = objc_opt_self();
  v194 = [v325 celsius];
  v195 = OUTLINED_FUNCTION_128();
  sub_23B3924C0(v195, v196, v197);
  OUTLINED_FUNCTION_204();
  sub_23B50A9B4();
  sub_23B50B464();
  v199 = v198;
  sub_23B50B364();
  sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
  static NSUnitSpeed.wk_millimetersPerHour.getter();
  sub_23B50A9B4();
  v200 = sub_23B50B484();
  OUTLINED_FUNCTION_72(v200);
  v201 = [objc_opt_self() millibars];
  v202 = OUTLINED_FUNCTION_128();
  sub_23B3924C0(v202, v203, v204);
  OUTLINED_FUNCTION_114(&a27);
  sub_23B50A9B4();
  OUTLINED_FUNCTION_239(&a11);
  sub_23B50B264();
  v205 = OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_51(v205, v206, v328);
  if (v155)
  {
    v207 = *MEMORY[0x277D7AF08];
    v208 = v327[13];
    v209 = OUTLINED_FUNCTION_199();
    v210(v209);
    v211 = OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_51(v211, v212, v328);
    if (!v155)
    {
      sub_23B398890(v149, &qword_27E132150, &qword_23B5100E0);
    }
  }

  else
  {
    v213 = v327[4];
    OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_231();
    v214();
  }

  sub_23B3CC508(v179, &a20);
  if (v32)
  {
    OUTLINED_FUNCTION_187();
    v215 = v327[1];
    v216 = OUTLINED_FUNCTION_138();
    v217(v216);
    OUTLINED_FUNCTION_56_1(&a23);
    v218(v33, v334);
    OUTLINED_FUNCTION_56_1(&a18);
    v219 = OUTLINED_FUNCTION_184();
    v220(v219);
    OUTLINED_FUNCTION_56_1(&a25);
    v221 = OUTLINED_FUNCTION_228();
    v222(v221);
    v223 = *(v158 + 8);
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_226_0(v224);
    v223();
    OUTLINED_FUNCTION_34_3();
    sub_23B3C7314(v341, v225);
    sub_23B3C7314(v342, v328);
    sub_23B3C7314(v343, v328);
    sub_23B3C7314(v344, v328);
    sub_23B3C7314(v345, v328);
    sub_23B3C7314(v346, v328);
    OUTLINED_FUNCTION_81_0();
    sub_23B398890(v226, v227, v228);
    OUTLINED_FUNCTION_81_0();
    sub_23B398890(v229, v230, v231);
    v232 = OUTLINED_FUNCTION_143();
    (v223)(v232, v327 + 1);
  }

  else
  {
    v326 = v170;
    v330 = v158;
    v233 = v327[1];
    v234 = OUTLINED_FUNCTION_138();
    v235(v234);
    v329 = a20;
    sub_23B50B324();
    sub_23B50B334();
    sub_23B50B354();
    sub_23B50B374();
    sub_23B50B384();
    sub_23B50B394();
    OUTLINED_FUNCTION_194(&v352);
    sub_23B50B284();
    sub_23B50B294();
    sub_23B50B2A4();
    sub_23B50B304();
    sub_23B50B314();
    sub_23B50B344();
    OUTLINED_FUNCTION_194(&v351);
    sub_23B3BABAC();
    OUTLINED_FUNCTION_134(&v350);
    sub_23B3BABAC();
    OUTLINED_FUNCTION_226_0(v349);
    sub_23B3BABAC();
    OUTLINED_FUNCTION_130(&v348);
    sub_23B3BABAC();
    OUTLINED_FUNCTION_86();
    sub_23B3BABAC();
    sub_23B3BABAC();
    sub_23B50B3A4();
    sub_23B3C3CA0(v236, 0, &v350);
    v237 = v350;
    HIDWORD(v303) = sub_23B50B454();
    sub_23B50B244();
    v238 = [v325 celsius];
    OUTLINED_FUNCTION_150();
    sub_23B50A9B4();
    v239 = sub_23B50B2D4();
    v240 = [v325 celsius];
    OUTLINED_FUNCTION_144(&v344);
    sub_23B50A9B4();
    OUTLINED_FUNCTION_130(&v343);
    sub_23B3B81F8();
    sub_23B3B81F8();
    v241 = sub_23B50B444();
    sub_23B3C1284(v241, 0, v349);
    v242 = v349[0];
    sub_23B50B234();
    v243 = [objc_opt_self() meters];
    v244 = OUTLINED_FUNCTION_128();
    sub_23B3924C0(v244, v245, v246);
    OUTLINED_FUNCTION_239(&v338);
    sub_23B50A9B4();
    sub_23B50B4A4();
    sub_23B50B274();
    sub_23B50B494();
    OUTLINED_FUNCTION_235(&v339);
    sub_23B3B32C4();
    OUTLINED_FUNCTION_163(&v332);
    sub_23B50B474();
    sub_23B3AFEEC(v242, v247, v248, v249, v250, v251, v252, v253, v303, v172, v308, v311);
    v254 = OUTLINED_FUNCTION_161();
    v324 = v309 / v254;
    v255 = v176 / v254;
    v256 = v178 / v254;
    v257 = OUTLINED_FUNCTION_161();
    v258 = v168 / v257;
    v259 = v326 / v257;
    v260 = v306 / v257;
    v261 = v312 / v257;
    OUTLINED_FUNCTION_56_1(&v333);
    v263 = v199 / v262;
    v264(v242, v318);
    OUTLINED_FUNCTION_34_3();
    sub_23B3C7314(v341, v265);
    sub_23B3C7314(v342, v31);
    sub_23B3C7314(v343, v31);
    sub_23B3C7314(v344, v31);
    sub_23B3C7314(v345, v31);
    sub_23B3C7314(v346, v31);
    sub_23B398890(v347, &qword_27E132168, &qword_23B510108);
    sub_23B398890(v348, &qword_27E132168, &qword_23B510108);
    (*(v158 + 8))(v33, v331);
    v266 = type metadata accessor for CurrentWeather();
    v267 = v266[29];
    OUTLINED_FUNCTION_1();
    v268 = v336;
    __swift_storeEnumTagSinglePayload(v269, v270, v271, v336);
    v348 = v266[30];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v272, v273, v274, v268);
    (*(v330 + 32))(v315, v338, v331);
    *(v315 + v266[5]) = v258;
    *(v315 + v266[6]) = v259;
    *(v315 + v266[7]) = v260;
    *(v315 + v266[8]) = v261;
    v275 = (v315 + v266[9]);
    *v275 = v324;
    v275[1] = v255;
    v275[2] = v256;
    *(v315 + v266[10]) = a18;
    OUTLINED_FUNCTION_253((v315 + v266[11]));
    v276 = *(v335 + 32);
    v277 = v315 + v266[12];
    OUTLINED_FUNCTION_252(&a29);
    v276();
    *(v315 + v266[13]) = v263;
    v278 = v266[14];
    OUTLINED_FUNCTION_157();
    v280(v315 + v279, v340, v332);
    v281 = v266[15];
    OUTLINED_FUNCTION_157();
    v283(v315 + v282, v337, v334);
    *(v315 + v266[16]) = v329;
    v284 = v315 + v266[17];
    sub_23B3B0608();
    v285 = v266[18];
    OUTLINED_FUNCTION_132();
    sub_23B3B0608();
    v286 = v315 + v266[19];
    sub_23B3B0608();
    v287 = v266[20];
    OUTLINED_FUNCTION_131();
    sub_23B3B0608();
    v288 = v266[21];
    OUTLINED_FUNCTION_164();
    sub_23B3B0608();
    v289 = v315 + v266[22];
    sub_23B3B0608();
    v290 = v315 + v266[23];
    sub_23B3B0608();
    v291 = v315 + v266[24];
    sub_23B3B0608();
    v292 = (v315 + v266[25]);
    *v292 = v237;
    OUTLINED_FUNCTION_179(v292);
    *(v315 + v266[26]) = v304 & 1;
    v293 = v315 + v266[27];
    OUTLINED_FUNCTION_252(&v341);
    v276();
    v294 = v315 + v266[28];
    OUTLINED_FUNCTION_252(&v344);
    v276();
    sub_23B3B7EA8();
    sub_23B3B7EA8();
    v295 = (v315 + v266[31]);
    *v295 = v242;
    OUTLINED_FUNCTION_179(v295);
    v296 = v266[32];
    OUTLINED_FUNCTION_157();
    v298(v315 + v297, v323, v322);
    v299 = v266[33];
    OUTLINED_FUNCTION_15_3();
    sub_23B3B0608();
    v300 = v266[34];
    OUTLINED_FUNCTION_1_5();
    sub_23B3B0608();
  }

  OUTLINED_FUNCTION_139();
}

uint64_t sub_23B3B250C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_155(a2);
  v166 = sub_23B50C7C4();
  v7 = OUTLINED_FUNCTION_5(v166);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_64_1();
  v10 = sub_23B50C944();
  v11 = OUTLINED_FUNCTION_5(v10);
  v168 = v12;
  v169 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_120();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v16 = OUTLINED_FUNCTION_5(v15);
  v159 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12();
  v162 = v20;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_1();
  v157 = v23;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_43_2(v25, v26, v27, v28, v29, v30, v31, v32, v148);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_1();
  v155 = v34;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_1();
  v158 = v39;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_190();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_80_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_123();
  v167 = objc_opt_self();
  v44 = [v167 millimeters];
  v45 = OUTLINED_FUNCTION_154();
  sub_23B3924C0(v45, v46, v47);
  sub_23B50A9B4();
  v48 = v159[2];
  OUTLINED_FUNCTION_104();
  v48();
  v160 = v5;
  OUTLINED_FUNCTION_104();
  v48();
  v152 = v2;
  OUTLINED_FUNCTION_104();
  v48();
  OUTLINED_FUNCTION_104();
  v48();
  OUTLINED_FUNCTION_104();
  v48();
  OUTLINED_FUNCTION_104();
  v48();
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_104();
  v48();
  OUTLINED_FUNCTION_104();
  v48();
  OUTLINED_FUNCTION_104();
  v48();
  OUTLINED_FUNCTION_104();
  v48();
  v49 = [v167 millimeters];
  OUTLINED_FUNCTION_247();
  sub_23B50A9B4();
  v50 = *(a1 + 16);
  if (v50)
  {
    v165 = *(v168 + 16);
    v51 = *(v168 + 80);
    OUTLINED_FUNCTION_52_0();
    v54 = v53 + v52;
    v164 = *(v55 + 56);
    v161 = (v159 + 4);
    while (1)
    {
      v165(v6, v54, v169);
      sub_23B50C924();
      sub_23B50C934();
      sub_23B50C7B4();
      v56 = sub_23B50D194();
      v58 = v57;

      v59 = v56 == 1818845544 && v58 == 0xE400000000000000;
      if (v59 || (OUTLINED_FUNCTION_112() & 1) != 0)
      {
        break;
      }

      v70 = v56 == 0x646578696DLL && v58 == 0xE500000000000000;
      if (v70 || (OUTLINED_FUNCTION_112() & 1) != 0)
      {

        v71 = [v167 millimeters];
        OUTLINED_FUNCTION_150();
        sub_23B50A9B4();
        v72 = OUTLINED_FUNCTION_58_0();
        v73(v72);
        v74 = OUTLINED_FUNCTION_61_0();
        v75(v74);
        OUTLINED_FUNCTION_178();
        v66 = v160;
        goto LABEL_9;
      }

      v76 = v56 == 0x7469706963657270 && v58 == 0xED00006E6F697461;
      if (v76 || (OUTLINED_FUNCTION_112() & 1) != 0)
      {

LABEL_25:
        v77 = OUTLINED_FUNCTION_58_0();
        v78(v77);
        v79 = OUTLINED_FUNCTION_61_0();
        v80(v79);
        goto LABEL_11;
      }

      v81 = v56 == 1852399986 && v58 == 0xE400000000000000;
      if (v81 || (OUTLINED_FUNCTION_112() & 1) != 0)
      {

        v82 = [v167 millimeters];
        sub_23B50A9B4();
        v83 = OUTLINED_FUNCTION_58_0();
        v84(v83);
        v85 = OUTLINED_FUNCTION_61_0();
        v86(v85);
        OUTLINED_FUNCTION_178();
        v88 = v152;
      }

      else
      {
        v90 = v56 == 0x7465656C73 && v58 == 0xE500000000000000;
        if (!v90 && (OUTLINED_FUNCTION_112() & 1) == 0)
        {
          if (v56 == 2003791475 && v58 == 0xE400000000000000)
          {

LABEL_46:
            sub_23B50C904();
            v103 = v102;
            sub_23B50C914();
            v105 = v104;
            sub_23B50C8F4();
            v107 = v106;
            if (v105 < v103)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
              v108 = swift_allocObject();
              OUTLINED_FUNCTION_246(v108);
              v109 = MEMORY[0x277D839F8];
              *(v110 + 56) = MEMORY[0x277D839F8];
              v111 = MEMORY[0x277D83A80];
              *(v110 + 64) = MEMORY[0x277D83A80];
              *(v110 + 32) = v105;
              *(v110 + 96) = v109;
              *(v110 + 104) = v111;
              *(v110 + 72) = v103;
              MEMORY[0x23EE9B270]("Expected snowfall amount is less than the minimum; expected=%d, minimum=%d", v149, v150);

              v105 = v103;
            }

            if (v107 < v105)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
              v112 = swift_allocObject();
              OUTLINED_FUNCTION_246(v112);
              v113 = MEMORY[0x277D839F8];
              *(v114 + 56) = MEMORY[0x277D839F8];
              v115 = MEMORY[0x277D83A80];
              *(v114 + 64) = MEMORY[0x277D83A80];
              *(v114 + 32) = v107;
              *(v114 + 96) = v113;
              *(v114 + 104) = v115;
              *(v114 + 72) = v105;
              MEMORY[0x23EE9B270]("Maximum snowfall amount is less than the expected amount; maximum=%d, expected=%d", v149, v150);
            }

            v116 = [v167 millimeters];
            sub_23B50A9B4();
            v150 = v159[1];
            v117 = OUTLINED_FUNCTION_36();
            v118(v117);
            v149 = *v161;
            v119 = OUTLINED_FUNCTION_18_0();
            v120(v119);
            v121 = [v167 millimeters];
            sub_23B50A9B4();
            v122 = OUTLINED_FUNCTION_36();
            v150(v122);
            v149(v153, v162, v15);
            v123 = [v167 millimeters];
            sub_23B50A9B4();
            v124 = OUTLINED_FUNCTION_116();
            v125(v124);
            v149(v154, v162, v15);
            v126 = [v167 millimeters];
            sub_23B50A9B4();
            v127 = OUTLINED_FUNCTION_36();
            v150(v127);
            v149(v155, v162, v15);
            v128 = [v167 millimeters];
            sub_23B50A9B4();
            v129 = OUTLINED_FUNCTION_116();
            v130(v129);
            v149(v156, v162, v15);
            v131 = [v167 millimeters];
            OUTLINED_FUNCTION_150();
            sub_23B50A9B4();
            v132 = OUTLINED_FUNCTION_58_0();
            v133(v132);
            v134 = OUTLINED_FUNCTION_61_0();
            v135(v134);
            v136 = OUTLINED_FUNCTION_116();
            v137(v136);
            v138 = OUTLINED_FUNCTION_18_0();
            (v149)(v138);
            goto LABEL_11;
          }

          v97 = OUTLINED_FUNCTION_112();

          if (v97)
          {
            goto LABEL_46;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
          v98 = swift_allocObject();
          *(v98 + 16) = xmmword_23B50ED30;
          v99 = sub_23B50C7B4();
          v101 = v100;
          *(v98 + 56) = MEMORY[0x277D837D0];
          *(v98 + 64) = sub_23B3FD2D0();
          *(v98 + 32) = v99;
          *(v98 + 40) = v101;
          MEMORY[0x23EE9B270]("Encountered an unknown precipitation type; type=%@", 50, 2, v98);

          goto LABEL_25;
        }

        v91 = [v167 millimeters];
        sub_23B50A9B4();
        v92 = OUTLINED_FUNCTION_58_0();
        v93(v92);
        v94 = OUTLINED_FUNCTION_61_0();
        v95(v94);
        OUTLINED_FUNCTION_178();
        v88 = v158;
      }

      v87(v88, v15);
      v89 = *v161;
      v68 = OUTLINED_FUNCTION_65();
LABEL_10:
      v69(v68);
LABEL_11:
      v54 += v164;
      if (!--v50)
      {
        goto LABEL_51;
      }
    }

    v60 = [v167 millimeters];
    OUTLINED_FUNCTION_150();
    sub_23B50A9B4();
    v61 = OUTLINED_FUNCTION_58_0();
    v62(v61);
    v63 = OUTLINED_FUNCTION_61_0();
    v64(v63);
    OUTLINED_FUNCTION_178();
    v66 = v4;
LABEL_9:
    v65(v66, v15);
    v67 = *v161;
    v68 = OUTLINED_FUNCTION_146();
    goto LABEL_10;
  }

LABEL_51:
  (v159[1])(v3, v15);
  v139 = type metadata accessor for PrecipitationAmountByType();
  v140 = v151 + v139[9];
  v141 = v159[4];
  OUTLINED_FUNCTION_213(&v172);
  v141();
  v142 = type metadata accessor for SnowfallAmount();
  v143 = v140 + v142[5];
  OUTLINED_FUNCTION_213(&v173);
  v141();
  v144 = v140 + v142[6];
  OUTLINED_FUNCTION_213(&v174);
  v141();
  (v141)(v140 + v142[7], v155, v15);
  (v141)(v140 + v142[8], v156, v15);
  (v141)(v140 + v142[9], v157, v15);
  (v141)(v151, v4, v15);
  (v141)(v151 + v139[5], v160, v15);
  v145 = v151 + v139[6];
  OUTLINED_FUNCTION_213(&v170);
  v141();
  (v141)(v151 + v139[7], v158, v15);
  v146 = v151 + v139[8];
  OUTLINED_FUNCTION_213(&v171);
  return (v141)();
}

void sub_23B3B32C4()
{
  OUTLINED_FUNCTION_159();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_127();
  if (v7)
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v14 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v14, qword_280B4E9D8);
    v15 = sub_23B50CDD4();
    v16 = sub_23B50D4B4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_66_1();
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Missing required field; field=windSpeed";
    goto LABEL_11;
  }

  if ((v5 & 1) == 0)
  {
    sub_23B3B35B4();
    v32 = v22;
    v23 = [objc_opt_self() degrees];
    v24 = type metadata accessor for Wind();
    v25 = v24[5];
    sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
    sub_23B50A9B4();
    [objc_opt_self() kilometersPerHour];
    v26 = v24[6];
    sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
    sub_23B50A9B4();
    sub_23B3C23EC(v3, v1 & 1);
    v27 = v24[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    *v9 = v32;
    sub_23B3B7EA8();
    goto LABEL_14;
  }

  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v19 = sub_23B50CDF4();
  OUTLINED_FUNCTION_88(v19, qword_280B4E9D8);
  v15 = sub_23B50CDD4();
  v16 = sub_23B50D4B4();
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_66_1();
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Missing required field; field=windDirection";
LABEL_11:
    _os_log_impl(&dword_23B38D000, v15, v16, v18, v17, 2u);
    OUTLINED_FUNCTION_57_1();
    MEMORY[0x23EE9E260]();
  }

LABEL_12:

  sub_23B3E3D54();
  v20 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_55_1(v20, v21);
LABEL_14:
  OUTLINED_FUNCTION_158();
}

void sub_23B3B35B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_174();
  v5 = [objc_opt_self() degrees];
  v6 = OUTLINED_FUNCTION_128();
  sub_23B3924C0(v6, v7, v8);
  OUTLINED_FUNCTION_150();
  sub_23B50A9B4();
  sub_23B3C1F7C(v0);
}

void sub_23B3B36A0()
{
  OUTLINED_FUNCTION_107();
  v3 = v0;
  v5 = v4;
  v34 = v6;
  v7 = sub_23B50CCA4();
  v8 = OUTLINED_FUNCTION_5(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_64_1();
  v13 = type metadata accessor for WeatherMetadata();
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  sub_23B50C074();
  sub_23B3B3908();
  v18 = v17;

  if (!v1)
  {
    sub_23B50C084();
    sub_23B3AFEEC(v2, v19, v20, v21, v22, v23, v24, v25, v32, v33, v3, v5);
    v26 = *(v10 + 8);
    v27 = OUTLINED_FUNCTION_68_1();
    v28(v27);
    *v34 = v18;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    v30 = v29[13];
    OUTLINED_FUNCTION_1_5();
    sub_23B3B0608();
    v31 = (v34 + v29[14]);
    *v31 = 0;
    v31[1] = 0;
    *(v34 + v29[15]) = 0;
    *(v34 + v29[16]) = 0;
    OUTLINED_FUNCTION_121(v34 + v29[17]);
  }

  OUTLINED_FUNCTION_105();
}

void OUTLINED_FUNCTION_192()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_192_1()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

void OUTLINED_FUNCTION_297(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 232) = v1;
  *(v2 - 224) = v3;
}

void sub_23B3B3908()
{
  OUTLINED_FUNCTION_107();
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9(0);
  OUTLINED_FUNCTION_28_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_232();
  v16 = *(v8 + 16);
  if (v16)
  {
    v28 = MEMORY[0x277D84F90];
    v5(0, v16, 0);
    v17 = v3(0);
    OUTLINED_FUNCTION_28_0(v17);
    v19 = v8 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v25 = *(v20 + 72);
    while (1)
    {
      v26(v19, &v27);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v22 = *(v28 + 16);
      v21 = *(v28 + 24);
      if (v22 >= v21 >> 1)
      {
        v5(v21 > 1, v22 + 1, 1);
      }

      *(v28 + 16) = v22 + 1;
      v23 = *(v12 + 80);
      OUTLINED_FUNCTION_52_0();
      v24 = *(v12 + 72);
      sub_23B3B0608();
      v19 += v25;
      if (!--v16)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_105();
}

void sub_23B3B3AEC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_18();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_228()
{
  result = *(v0 - 264);
  v2 = *(v0 - 288);
  return result;
}

void sub_23B3B3D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_140();
  a30 = v36;
  a31 = v37;
  v323 = v31;
  v317 = v38;
  v40 = v39;
  v304 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132050, &qword_23B510140);
  OUTLINED_FUNCTION_3(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v46);
  v302 = type metadata accessor for DayPartForecast();
  v47 = OUTLINED_FUNCTION_6(v302);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v53 = OUTLINED_FUNCTION_2_0(v52, &v333);
  v311 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v59);
  v60 = type metadata accessor for Wind();
  v61 = OUTLINED_FUNCTION_3(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v64);
  v65 = type metadata accessor for MoonEvents();
  v66 = OUTLINED_FUNCTION_3(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v69);
  v70 = type metadata accessor for SunEvents();
  v71 = OUTLINED_FUNCTION_3(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v74);
  v75 = type metadata accessor for PrecipitationAmountByType();
  v76 = OUTLINED_FUNCTION_3(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v81 = OUTLINED_FUNCTION_2_0(v80, &a15);
  v316 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132190, &qword_23B510148);
  OUTLINED_FUNCTION_3(v87);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v93 = OUTLINED_FUNCTION_3(v92);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_12();
  v329 = v96;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_76();
  v332 = v98;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v99 = OUTLINED_FUNCTION_5(v326);
  v322 = v100;
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_12_0();
  v105 = (v103 - v104);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_76();
  v333 = v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132160, &qword_23B510100);
  OUTLINED_FUNCTION_3(v108);
  v110 = *(v109 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v112);
  v113 = sub_23B50AD24();
  v114 = OUTLINED_FUNCTION_2_0(v113, &a29);
  v325 = v115;
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_6_0();
  v331 = v118;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  v120 = OUTLINED_FUNCTION_3(v119);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_76();
  v334 = v124;
  OUTLINED_FUNCTION_24_0();
  v125 = sub_23B50BE14();
  v126 = OUTLINED_FUNCTION_2_0(v125, &a14);
  v314 = v127;
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_76();
  v327 = v131;
  OUTLINED_FUNCTION_24_0();
  v132 = sub_23B50C594();
  v133 = OUTLINED_FUNCTION_5(v132);
  v135 = v134;
  v137 = *(v136 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_62_0();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132198, &qword_23B510150);
  v141 = OUTLINED_FUNCTION_3(v140);
  v143 = *(v142 + 64);
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_189();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_180();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v132);
  sub_23B50BBE4();
  v151 = OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_51(v151, v152, v132);
  v330 = v105;
  v328 = v40;
  if (v153)
  {
    sub_23B398890(v32, &qword_27E132198, &qword_23B510150);
    sub_23B50BBF4();
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v132);
    sub_23B3B7EA8();
  }

  else
  {
    EnumTagSinglePayload = *(v135 + 32);
    EnumTagSinglePayload(v35, v32, v132);
    sub_23B398890(v34, &qword_27E132198, &qword_23B510150);
    v157 = OUTLINED_FUNCTION_243();
    (EnumTagSinglePayload)(v157);
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v132);
  }

  sub_23B3924C0(0, &qword_280B43370, 0x277CCA8D8);
  if (sub_23B50D4F4())
  {
    OUTLINED_FUNCTION_86();
    sub_23B3B81F8();
    v161 = OUTLINED_FUNCTION_142();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v161, v162, v132);
    OUTLINED_FUNCTION_81_0();
    sub_23B398890(v163, v164, v165);
    if (EnumTagSinglePayload == 1)
    {
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v166 = sub_23B50CDF4();
      OUTLINED_FUNCTION_88(v166, qword_280B4E9D8);
      v167 = *(v314 + 16);
      v167(v327, v328);
      v168 = v317;
      v169 = sub_23B50CDD4();
      v170 = sub_23B50D4B4();

      if (os_log_type_enabled(v169, v170))
      {
        OUTLINED_FUNCTION_135();
        v171 = swift_slowAlloc();
        v333 = v169;
        v172 = v327;
        v173 = v171;
        v334 = swift_slowAlloc();
        v336[0] = v334;
        *v173 = 136315651;
        LODWORD(v332) = v170;
        v174 = OUTLINED_FUNCTION_146();
        (v167)(v174);
        v175 = sub_23B50D184();
        v177 = v176;
        (*(v314 + 8))(v172);
        v178 = sub_23B391F1C(v175, v177, v336);

        *(v173 + 4) = v178;
        *(v173 + 12) = 2160;
        *(v173 + 14) = 1752392040;
        *(v173 + 22) = 2081;
        v335 = v168;
        sub_23B3924C0(0, &qword_280B433B8, 0x277CE41F8);
        v179 = v168;
        v180 = sub_23B50D1A4();
        v182 = sub_23B391F1C(v180, v181, v336);

        *(v173 + 24) = v182;
        v183 = v333;
        _os_log_impl(&dword_23B38D000, v333, v332, "Missing day part forecast; dayWeather=%s; location=%{private,mask.hash}s", v173, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_57_1();
        MEMORY[0x23EE9E260]();
        OUTLINED_FUNCTION_57_1();
        MEMORY[0x23EE9E260]();
      }

      else
      {

        (*(v314 + 8))(v327);
      }

      sub_23B3E3D54();
      v224 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_69_1(v224, v225);
      goto LABEL_15;
    }
  }

  v327 = v34;
  sub_23B3B8280(v334);
  sub_23B50BC94();
  OUTLINED_FUNCTION_114(&a25);
  sub_23B50BC84();
  sub_23B3B8890(&v335);
  v184 = OUTLINED_FUNCTION_119();
  sub_23B398890(v184, v185, &qword_23B510100);
  v315 = v335;
  sub_23B50BC84();
  sub_23B3B99FC(EnumTagSinglePayload, 1, v186, v187, v188, v189, v190, v191, v294, v295, v297, v298, v299, v300, v301, v302, v304, v306, v308, v310);
  v313 = v192;
  v318 = v193;
  v194 = OUTLINED_FUNCTION_119();
  sub_23B398890(v194, v195, &qword_23B510100);
  sub_23B50BCF4();
  v196 = objc_opt_self();
  v197 = [v196 celsius];
  v198 = OUTLINED_FUNCTION_154();
  v201 = sub_23B3924C0(v198, v199, v200);
  OUTLINED_FUNCTION_222();
  sub_23B50A9B4();
  sub_23B50BD54();
  sub_23B50BD04();
  v202 = [v196 celsius];
  sub_23B50A9B4();
  sub_23B50BD64();
  sub_23B50BC24();
  sub_23B50BC34();
  v204 = v203;
  sub_23B50BC24();
  sub_23B50BC34();
  OUTLINED_FUNCTION_196(&a26);
  sub_23B50BD34();
  sub_23B3BC884();
  if (v323)
  {

    sub_23B398890(v201, &qword_27E132190, &qword_23B510148);
    OUTLINED_FUNCTION_86();
    sub_23B398890(v205, v206, v207);
    v208 = OUTLINED_FUNCTION_170();
    v329(v208);
    OUTLINED_FUNCTION_86();
    sub_23B398890(v209, v210, v211);
    (v329)(v333, v330);
    v212 = OUTLINED_FUNCTION_18_4();
    v213(v212);
    sub_23B398890(v334, &qword_27E132048, &qword_23B510110);
    v34 = v327;
LABEL_15:
    sub_23B398890(v34, &qword_27E132198, &qword_23B510150);
    goto LABEL_16;
  }

  a18 = v204;
  sub_23B398890(v201, &qword_27E132190, &qword_23B510148);
  v214 = a21;
  sub_23B50BD84();
  v216 = v215;
  sub_23B50BD74();
  v217 = objc_opt_self();
  [v217 millimeters];
  v218 = OUTLINED_FUNCTION_154();
  sub_23B3924C0(v218, v219, v220);
  sub_23B50A9B4();
  sub_23B50BCD4();
  v221 = [v217 millimeters];
  OUTLINED_FUNCTION_114(&a18);
  sub_23B50A9B4();
  v222 = sub_23B50BDA4();
  sub_23B50BD74();
  OUTLINED_FUNCTION_163(&a22);
  sub_23B3B250C(v222, v223);

  OUTLINED_FUNCTION_196(&a17);
  sub_23B3BF6B8();
  v320 = v214;
  sub_23B3B58EC();
  v226 = sub_23B50BC14();
  sub_23B3C1284(v226, 0, v336);
  v296 = v336[0];
  v227 = sub_23B50BCB4();
  v228 = OUTLINED_FUNCTION_72(v227);
  if (v153)
  {
    v229 = v228;
  }

  else
  {
    v229 = 0.0;
  }

  v230 = sub_23B50BCC4();
  v231 = OUTLINED_FUNCTION_72(v230);
  if (v153)
  {
    v232 = v231;
  }

  else
  {
    v232 = 0.0;
  }

  v233 = sub_23B50BCB4();
  v234 = OUTLINED_FUNCTION_72(v233);
  if (v153)
  {
    v235 = v234;
  }

  else
  {
    v235 = 0.0;
  }

  v236 = sub_23B50BCC4();
  v237 = OUTLINED_FUNCTION_72(v236);
  if (v153)
  {
    v238 = v237;
  }

  else
  {
    v238 = 0.0;
  }

  sub_23B50BC64();
  if (!__swift_getEnumTagSinglePayload(v327, 1, v132))
  {
    sub_23B50C494();
  }

  sub_23B50BD24();
  sub_23B3B32C4();
  sub_23B3B81F8();
  v239 = sub_23B50BD24();
  OUTLINED_FUNCTION_72(v239);
  v240 = objc_opt_self();
  [v240 kilometersPerHour];
  v241 = sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
  sub_23B50A9B4();
  v242 = sub_23B50BC64();
  v243 = [v240 kilometersPerHour];
  OUTLINED_FUNCTION_144(v336);
  sub_23B50A9B4();
  v244 = sub_23B50BC74();
  v245 = [v240 kilometersPerHour];
  OUTLINED_FUNCTION_163(&v335);
  sub_23B50A9B4();
  OUTLINED_FUNCTION_114(&v330);
  sub_23B50BBF4();
  OUTLINED_FUNCTION_235(&v334);
  sub_23B3C2F64(v246);
  (*(v135 + 8))(v241, v132);
  OUTLINED_FUNCTION_114(&v328);
  sub_23B50BC04();
  OUTLINED_FUNCTION_235(&v329);
  sub_23B3C2F64(v247);
  v248 = OUTLINED_FUNCTION_242();
  v249(v248);
  sub_23B50BBE4();
  sub_23B3C3FB8(v309);
  v323 = 0;
  OUTLINED_FUNCTION_219(&a25);
  if (v153)
  {
    v252 = v250;
  }

  else
  {
    v252 = 0.0;
  }

  if (a18)
  {
    v253 = 0.0;
  }

  else
  {
    v253 = v251;
  }

  OUTLINED_FUNCTION_219(&v321);
  if (v153)
  {
    v256 = v254;
  }

  else
  {
    v256 = v255;
  }

  OUTLINED_FUNCTION_219(&v320);
  if (v153)
  {
    v259 = v257;
  }

  else
  {
    v259 = v258;
  }

  v319 = v259;
  v260 = v216 / OUTLINED_FUNCTION_161();
  sub_23B398890(v307, &qword_27E132198, &qword_23B510150);
  sub_23B398890(v334, &qword_27E132048, &qword_23B510110);
  v261 = type metadata accessor for DayWeather();
  v262 = v261[8];
  OUTLINED_FUNCTION_1();
  v263 = v324;
  __swift_storeEnumTagSinglePayload(v264, v265, v266, v324);
  v267 = v261[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v268, v269, v270, v263);
  v328 = v261[29];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v271, v272, v273, v312);
  v334 = v261[35];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v274, v275, v276, v303);
  (*(v325 + 32))(v305, v331, v263);
  *(v305 + v261[5]) = v315;
  v277 = (v305 + v261[6]);
  *v277 = v313;
  v277[1] = v318;
  v278 = *(v322 + 32);
  v279 = v326;
  v278(v305 + v261[7], v333, v326);
  sub_23B3B7EA8();
  v278(v305 + v261[9], v330, v279);
  sub_23B3B7EA8();
  *(v305 + v261[11]) = 0;
  *(v305 + v261[12]) = v252;
  *(v305 + v261[13]) = v253;
  *(v305 + v261[14]) = v256;
  *(v305 + v261[15]) = v319;
  v280 = v261[22];
  OUTLINED_FUNCTION_108_0();
  sub_23B3B0608();
  *(v305 + v261[16]) = v320;
  *(v305 + v261[17]) = v260;
  v281 = v261[18];
  v282 = *(v316 + 32);
  OUTLINED_FUNCTION_197();
  v282();
  v283 = v305 + v261[19];
  OUTLINED_FUNCTION_252(&a18);
  v282();
  v284 = v261[20];
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_101();
  sub_23B3B0608();
  v285 = v261[21];
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_145();
  sub_23B3B0608();
  v286 = (v305 + v261[23]);
  *v286 = v296;
  OUTLINED_FUNCTION_179(v286);
  v287 = v261[28];
  OUTLINED_FUNCTION_15_3();
  sub_23B3B0608();
  OUTLINED_FUNCTION_132();
  sub_23B3B7EA8();
  v288 = v305 + v261[33];
  sub_23B3B0608();
  v289 = v305 + v261[34];
  sub_23B3B0608();
  sub_23B3B7EA8();
  *(v305 + v261[24]) = v229;
  *(v305 + v261[25]) = v232;
  *(v305 + v261[26]) = v235;
  *(v305 + v261[27]) = v238;
  v290 = *(v311 + 32);
  v291 = v305 + v261[30];
  OUTLINED_FUNCTION_156(&v337);
  v290();
  v292 = v305 + v261[31];
  OUTLINED_FUNCTION_156(v336);
  v290();
  v293 = v305 + v261[32];
  OUTLINED_FUNCTION_156(&v335);
  v290();
  sub_23B398890(v327, &qword_27E132198, &qword_23B510150);
LABEL_16:
  OUTLINED_FUNCTION_139();
}

void sub_23B3B58EC()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_201();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_180();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_188_0();
  v8 = OUTLINED_FUNCTION_203();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_120();
  sub_23B50BDF4();
  v14 = sub_23B3C0338();
  sub_23B398890(v2, &qword_27E1321A0, &unk_23B510158);
  if (!v1)
  {
    sub_23B50BDE4();
    sub_23B50BDC4();
    v15 = type metadata accessor for MoonEvents();
    v16 = *(v15 + 20);
    v17 = sub_23B50AD24();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = *(v15 + 24);
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
    *v0 = v14;
    sub_23B3B7EA8();
    sub_23B3B7EA8();
  }

  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_105();
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  v2 = *(v0 - 128);

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_70_2()
{

  return sub_23B398890(v2 - 152, v0, v1);
}

void OUTLINED_FUNCTION_83_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *(v13 - 96);

  sub_23B3AFEEC(v12, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void OUTLINED_FUNCTION_83_1()
{
  v4 = *v0;
  v5 = *v1;
  v6 = **(v3 - 136);
  v7 = *v2;
}

uint64_t OUTLINED_FUNCTION_304()
{
  v2 = *(v0 - 112);

  return sub_23B50AE24();
}

void sub_23B3B5B7C()
{
  OUTLINED_FUNCTION_107();
  v144 = v5;
  v7 = v6;
  v136 = type metadata accessor for WeatherMetadata();
  v8 = OUTLINED_FUNCTION_6(v136);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v138 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321A8, &qword_23B510168);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52();
  v141 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321B0, &unk_23B510170);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_52();
  v139 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_3(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_52();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_3(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_52();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_64_1();
  v147 = sub_23B50AB34();
  v34 = OUTLINED_FUNCTION_5(v147);
  v145 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12();
  v143 = v38;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_76();
  v146 = v40;
  OUTLINED_FUNCTION_24_0();
  v148 = sub_23B50CCA4();
  v41 = OUTLINED_FUNCTION_5(v148);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12();
  v137 = v46;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_80_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_185();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_125();
  v50 = sub_23B50BAC4();
  if (!v51)
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v61 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v61, qword_280B4E9D8);
    v55 = sub_23B50CDD4();
    v62 = sub_23B50D4B4();
    if (!OUTLINED_FUNCTION_113(v62))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_66_1();
    v63 = swift_slowAlloc();
    OUTLINED_FUNCTION_162(v63);
    v60 = "Missing required field; field=AirQuality.scale";
    goto LABEL_25;
  }

  v135 = v50;
  v156 = v51;
  v52 = sub_23B50BAB4();
  if (v53)
  {

    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v54 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v54, qword_280B4E9D8);
    v55 = sub_23B50CDD4();
    v56 = sub_23B50D4B4();
    if (!OUTLINED_FUNCTION_113(v56))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_66_1();
    v57 = swift_slowAlloc();
    OUTLINED_FUNCTION_162(v57);
    v60 = "Missing required field; field=AirQuality.index";
LABEL_25:
    OUTLINED_FUNCTION_254(&dword_23B38D000, v58, v59, v60);
    OUTLINED_FUNCTION_57_1();
    MEMORY[0x23EE9E260]();
LABEL_26:

    sub_23B3E3D54();
    v75 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_69_1(v75, v76);
    goto LABEL_27;
  }

  v134 = v52;
  v64 = sub_23B50BA74();
  if (v65)
  {

    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v66 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v66, qword_280B4E9D8);
    v55 = sub_23B50CDD4();
    v67 = sub_23B50D4B4();
    if (!OUTLINED_FUNCTION_113(v67))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_66_1();
    v68 = swift_slowAlloc();
    OUTLINED_FUNCTION_162(v68);
    v60 = "Missing required field; field=AirQuality.categoryIndex";
    goto LABEL_25;
  }

  v132 = v64;
  sub_23B50BAD4();
  sub_23B50CC54();
  v70 = v69;
  v130 = *(v43 + 8);
  v131 = v43 + 8;
  v130(v1, v148);
  if (!v70)
  {

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_138();
  sub_23B50AB04();

  OUTLINED_FUNCTION_51(v2, 1, v147);
  if (v71)
  {

    sub_23B398890(v2, &qword_27E131FC0, &qword_23B515170);
LABEL_21:
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v72 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v72, qword_280B4E9D8);
    v55 = sub_23B50CDD4();
    v73 = sub_23B50D4B4();
    if (!OUTLINED_FUNCTION_113(v73))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_66_1();
    v74 = swift_slowAlloc();
    OUTLINED_FUNCTION_162(v74);
    v60 = "Missing required field; field=AirQuality.learnMoreURL";
    goto LABEL_25;
  }

  v125 = *(v145 + 32);
  v125(v146, v2, v147);
  sub_23B50BA64();
  sub_23B3C5F4C();
  if (v0)
  {
    (*(v145 + 8))(v146, v147);
  }

  else
  {
    v78 = v77;

    sub_23B3B6E0C(v144, v135, v156, v79, v80, v81, v82, v83, v125, v7);
    memcpy(v154, v155, sizeof(v154));
    v84 = sub_23B50BAA4();
    sub_23B3B7C7C(v84, v85, v152);

    v86 = v152[0];
    v87 = v154[13];
    sub_23B3C8520(v154, v152);
    sub_23B3C8744(v87, v132, v153);
    sub_23B3C8B4C(v154);
    memcpy(v152, v153, 0x58uLL);
    v133 = sub_23B50BA84();
    sub_23B50BAD4();
    sub_23B3C8BA0();
    v130(v4, v148);
    (*(v145 + 16))(v143, v146, v147);
    sub_23B50BA94();
    v88 = sub_23B50C0D4();
    OUTLINED_FUNCTION_21_0(v139);
    if (v71)
    {
      sub_23B398890(v139, &qword_27E1321B0, &unk_23B510170);
      v89 = 0;
      v91 = 0;
    }

    else
    {
      v89 = sub_23B50C0C4();
      v91 = v90;
      v92 = *(*(v88 - 8) + 8);
      v93 = OUTLINED_FUNCTION_209();
      v94(v93);
    }

    sub_23B3C8D30(v89, v91, v78);

    sub_23B50BAD4();
    sub_23B50CC24();
    v95 = v130;
    v130(v3, v148);
    sub_23B3C9254(v149);
    sub_23B398890(v141, &qword_27E1321A8, &qword_23B510168);
    v142 = v149[0];
    v96 = v151;
    v140 = v150;
    sub_23B50BAD4();
    sub_23B3AFEEC(v137, v97, v98, v99, v100, v101, v102, v103, v126, v128, v130, v131);
    v95(v137, v148);
    (*(v145 + 8))(v146, v147);
    v104 = type metadata accessor for AirQuality();
    v105 = v104[11];
    type metadata accessor for ProviderAttribution();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
    v110 = v104[14];
    type metadata accessor for AirPollutant();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
    v115 = (v129 + v104[6]);
    *v115 = v135;
    v115[1] = v156;
    memcpy((v129 + v104[7]), v154, 0x78uLL);
    *(v129 + v104[8]) = v134;
    memcpy((v129 + v104[9]), v152, 0x58uLL);
    *(v129 + v104[10]) = v133 & 1;
    sub_23B3B7EA8();
    v127(v129 + v104[12], v143, v147);
    *(v129 + v104[13]) = v78;
    sub_23B3B7EA8();
    *(v129 + v104[15]) = v86;
    v116 = v129 + v104[16];
    *v116 = v142;
    *(v116 + 8) = v140;
    *(v116 + 16) = v96;
    v117 = v104[17];
    sub_23B3BABAC();
    v118 = sub_23B50AD24();
    OUTLINED_FUNCTION_6(v118);
    v120 = *(v119 + 16);
    v121 = OUTLINED_FUNCTION_175();
    v120(v121);
    (v120)(v129 + v104[5], v138 + *(v136 + 20), v118);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v104);
  }

LABEL_27:
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B3B672C@<X0>(char *a1@<X8>)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329F8, &unk_23B513D30) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13();
  v5 = sub_23B50ADC4();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  sub_23B3B6C10();
  v6 = sub_23B50D514();
  v8 = v7;
  sub_23B3B6DA4(v1);

  v9 = v6 == 0x352E324D50 && v8 == 0xE500000000000000;
  if (v9 || (OUTLINED_FUNCTION_9_8() & 1) != 0 || (v6 == 892489040 ? (v10 = v8 == 0xE400000000000000) : (v10 = 0), v10 || (OUTLINED_FUNCTION_9_8() & 1) != 0 || (v6 == 0x355F324D50 ? (v11 = v8 == 0xE500000000000000) : (v11 = 0), v11 || (OUTLINED_FUNCTION_9_8() & 1) != 0)))
  {

    v13 = 0;
  }

  else
  {
    v14 = v6 == 808537424 && v8 == 0xE400000000000000;
    if (v14 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
    {

      v13 = 1;
    }

    else
    {
      v15 = v6 == 13135 && v8 == 0xE200000000000000;
      if (v15 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
      {

        v13 = 2;
      }

      else
      {
        v16 = v6 == 0x454E4F5A4FLL && v8 == 0xE500000000000000;
        if (v16 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
        {

          v13 = 3;
        }

        else
        {
          v17 = v6 == 20302 && v8 == 0xE200000000000000;
          if (v17 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
          {

            v13 = 4;
          }

          else
          {
            v18 = v6 == 3297102 && v8 == 0xE300000000000000;
            if (v18 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
            {

              v13 = 5;
            }

            else
            {
              v19 = v6 == 5787470 && v8 == 0xE300000000000000;
              if (v19 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
              {

                v13 = 6;
              }

              else
              {
                v20 = v6 == 3297107 && v8 == 0xE300000000000000;
                if (v20 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
                {

                  v13 = 7;
                }

                else
                {
                  v21 = v6 == 20291 && v8 == 0xE200000000000000;
                  if (v21 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
                  {

                    v13 = 8;
                  }

                  else
                  {
                    v22 = v6 == 1128811854 && v8 == 0xE400000000000000;
                    if (v22 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
                    {

                      v13 = 9;
                    }

                    else
                    {
                      v23 = v6 == 0x5343484D4ELL && v8 == 0xE500000000000000;
                      if (v23 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
                      {

                        v13 = 10;
                      }

                      else
                      {
                        v24 = v6 == 3360846 && v8 == 0xE300000000000000;
                        if (v24 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
                        {

                          v13 = 11;
                        }

                        else
                        {
                          v25 = v6 == 910702147 && v8 == 0xE400000000000000;
                          if (v25 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
                          {

                            v13 = 12;
                          }

                          else
                          {
                            v26 = v6 == 5460564 && v8 == 0xE300000000000000;
                            if (v26 || (OUTLINED_FUNCTION_9_8() & 1) != 0)
                            {

                              v13 = 13;
                            }

                            else
                            {
                              v27 = v6 == 0x6C69617641746F6ELL && v8 == 0xEC000000656C6261;
                              if (!v27 && (OUTLINED_FUNCTION_9_8() & 1) == 0 && (v6 != 0x494156415F544F4ELL || v8 != 0xED0000454C42414CLL))
                              {
                                OUTLINED_FUNCTION_9_8();
                              }

                              v13 = 14;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *a1 = v13;
  return result;
}

unint64_t sub_23B3B6C10()
{
  result = qword_280B43118;
  if (!qword_280B43118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43118);
  }

  return result;
}

uint64_t sub_23B3B6DA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329F8, &unk_23B513D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23B3B6E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107();
  v118 = v13;
  v116 = v14;
  v117 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321B8, &qword_23B510188);
  OUTLINED_FUNCTION_3(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_127();
  v20 = sub_23B50CA44();
  v21 = OUTLINED_FUNCTION_5(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321C0, &qword_23B510190);
  OUTLINED_FUNCTION_3(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_64_1();
  v121 = sub_23B50C9B4();
  v30 = OUTLINED_FUNCTION_5(v121);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v120 = v35;
  v36 = sub_23B50C364();
  if (!v37)
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v47 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v47, qword_280B4E9D8);
    v44 = sub_23B50CDD4();
    sub_23B50D4B4();
    v48 = OUTLINED_FUNCTION_26_2();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v38 = v37;
  v115 = v36;
  v119 = v32;
  v39 = sub_23B50C374();
  if (!v40)
  {

    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v50 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v50, qword_280B4E9D8);
    v44 = sub_23B50CDD4();
    sub_23B50D4B4();
    v51 = OUTLINED_FUNCTION_26_2();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v41 = v40;
  v113 = v39;
  v114 = v23;
  sub_23B50C3A4();
  OUTLINED_FUNCTION_51(v12, 1, v121);
  if (!v42)
  {
    (*(v119 + 32))();
    v63 = sub_23B50C9A4();
    if (v63 == 2)
    {

      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_8();
        swift_once();
      }

      v64 = sub_23B50CDF4();
      OUTLINED_FUNCTION_88(v64, qword_280B4E9D8);
      v65 = sub_23B50CDD4();
      sub_23B50D4B4();
      v66 = OUTLINED_FUNCTION_26_2();
      if (!os_log_type_enabled(v66, v67))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v68 = v63;
      v112 = sub_23B50C984();
      if (v112)
      {
        v69 = sub_23B50C974();
        if (v69)
        {
          v70 = v69;
          sub_23B50C994();
          v71 = OUTLINED_FUNCTION_137();
          OUTLINED_FUNCTION_51(v71, v72, v20);
          if (!v42)
          {
            v92 = *(v114 + 32);
            v93 = OUTLINED_FUNCTION_209();
            v94(v93);
            v110 = sub_23B50C394();
            v111 = v95;
            v96 = sub_23B50C384();
            v98 = v97;
            v99 = sub_23B3C74C0(v112);
            if (!v10)
            {
              v108 = v100;
              v109 = v99;

              v101 = sub_23B3B7620(v70);

              sub_23B3C7E64();
              v105 = *(v114 + 8);
              v106 = OUTLINED_FUNCTION_210();
              v107(v106);
              (*(v119 + 8))(v120, v121);
              *v117 = v116;
              *(v117 + 8) = v118;
              *(v117 + 16) = v115;
              *(v117 + 24) = v38;
              *(v117 + 32) = v110;
              *(v117 + 40) = v111;
              *(v117 + 48) = v96;
              *(v117 + 56) = v98;
              *(v117 + 64) = v113;
              *(v117 + 72) = v41;
              *(v117 + 80) = v68 & 1;
              *(v117 + 88) = v109;
              *(v117 + 96) = v108;
              *(v117 + 104) = v101;
              *(v117 + 112) = a10;

              goto LABEL_18;
            }

            v102 = *(v114 + 8);
            v103 = OUTLINED_FUNCTION_210();
            v104(v103);
            goto LABEL_41;
          }

          sub_23B398890(v11, &qword_27E1321B8, &qword_23B510188);
          if (qword_280B43440 != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v73 = sub_23B50CDF4();
          OUTLINED_FUNCTION_88(v73, qword_280B4E9D8);
          v65 = sub_23B50CDD4();
          sub_23B50D4B4();
          v74 = OUTLINED_FUNCTION_26_2();
          if (!os_log_type_enabled(v74, v75))
          {
LABEL_40:

            sub_23B3E3D54();
            v90 = OUTLINED_FUNCTION_48_0();
            OUTLINED_FUNCTION_69_1(v90, v91);
LABEL_41:
            (*(v119 + 8))(v120, v121);
            goto LABEL_18;
          }
        }

        else
        {

          if (qword_280B43440 != -1)
          {
            OUTLINED_FUNCTION_0_8();
            swift_once();
          }

          v79 = sub_23B50CDF4();
          OUTLINED_FUNCTION_88(v79, qword_280B4E9D8);
          v65 = sub_23B50CDD4();
          sub_23B50D4B4();
          v80 = OUTLINED_FUNCTION_26_2();
          if (!os_log_type_enabled(v80, v81))
          {
            goto LABEL_40;
          }
        }
      }

      else
      {

        if (qword_280B43440 != -1)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v76 = sub_23B50CDF4();
        OUTLINED_FUNCTION_88(v76, qword_280B4E9D8);
        v65 = sub_23B50CDD4();
        sub_23B50D4B4();
        v77 = OUTLINED_FUNCTION_26_2();
        if (!os_log_type_enabled(v77, v78))
        {
          goto LABEL_40;
        }
      }
    }

    OUTLINED_FUNCTION_66_1();
    v82 = swift_slowAlloc();
    OUTLINED_FUNCTION_74_0(v82);
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v83, v84, v85, v86, v87, v88);
    v89 = OUTLINED_FUNCTION_35_2();
    MEMORY[0x23EE9E260](v89);
    goto LABEL_40;
  }

  sub_23B398890(v12, &qword_27E1321C0, &qword_23B510190);
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_8();
    swift_once();
  }

  v43 = sub_23B50CDF4();
  OUTLINED_FUNCTION_88(v43, qword_280B4E9D8);
  v44 = sub_23B50CDD4();
  sub_23B50D4B4();
  v45 = OUTLINED_FUNCTION_26_2();
  if (os_log_type_enabled(v45, v46))
  {
LABEL_16:
    OUTLINED_FUNCTION_66_1();
    v53 = swift_slowAlloc();
    OUTLINED_FUNCTION_74_0(v53);
    OUTLINED_FUNCTION_20_4();
    _os_log_impl(v54, v55, v56, v57, v58, v59);
    v60 = OUTLINED_FUNCTION_35_2();
    MEMORY[0x23EE9E260](v60);
  }

LABEL_17:

  sub_23B3E3D54();
  v61 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_69_1(v61, v62);
LABEL_18:
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B3B7620(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v2;
    v6 = OUTLINED_FUNCTION_65_2(MEMORY[0x277D84F90]);
    sub_23B3B78B8(v6, v3, 0);
    v1 = v34;
    v7 = sub_23B50CA24();
    OUTLINED_FUNCTION_28_0(v7);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v10 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_68_1();
      sub_23B3C7A20(v12, v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      memcpy(v32, __src, sizeof(v32));
      v34 = v1;
      v15 = *(v1 + 16);
      v14 = *(v1 + 24);
      if (v15 >= v14 >> 1)
      {
        v16 = OUTLINED_FUNCTION_30_3(v14);
        sub_23B3B78B8(v16, v15 + 1, 1);
        v1 = v34;
      }

      *(v1 + 16) = v15 + 1;
      memcpy((v1 + 88 * v15 + 32), v32, 0x58uLL);
      v9 += v11;
      if (!--v3)
      {
        return v1;
      }
    }
  }

  else
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v17 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v17, qword_280B4E9D8);
    v18 = sub_23B50CDD4();
    sub_23B50D4B4();
    v19 = OUTLINED_FUNCTION_26_2();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_66_1();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v21);
      OUTLINED_FUNCTION_20_4();
      _os_log_impl(v22, v23, v24, v25, v26, v27);
      v28 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v28);
    }

    sub_23B3E3D54();
    v29 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_55_1(v29, v30);
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_132_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 104);
  v5 = *(v2 + 72);
  return v3;
}

void OUTLINED_FUNCTION_132_1()
{
  v1 = v0[20] & 0xFFFFFFFFFFFFFFFELL;
  v2 = v0[21] & 0xFFFFFFFFFFFFFFFELL;
  v3 = v0[22] & 0xFFFFFFFFFFFFFFFELL;
  v4 = v0[23] & 0xFFFFFFFFFFFFFFFELL;
}

uint64_t OUTLINED_FUNCTION_149@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

__n128 OUTLINED_FUNCTION_149_1()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 360);
  v4 = *(v0 + 232);
  return *(v0 + 216);
}

uint64_t sub_23B3B78B8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_23B3B7990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, unint64_t a2)
{

  return sub_23B391F1C(a1, a2, (v2 - 72));
}

uint64_t OUTLINED_FUNCTION_18@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_50_4()
{
  result = type metadata accessor for HistoricalFact(0);
  v1 = *(result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_6()
{
  result = v0;
  v4 = *(v1 - 192);
  v3 = *(v1 - 184);
  return result;
}

uint64_t sub_23B3B7990(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FD8, &qword_23B50F6E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        sub_23B4F5A34((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_193()
{

  return sub_23B50D524();
}

__n128 OUTLINED_FUNCTION_137_0()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_23B3B7B20(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FD0, &qword_23B50F6D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_23B4F5A5C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_23B3B7C7C(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v13 = sub_23B50CDF4();
    __swift_project_value_buffer(v13, qword_280B4E9D8);
    v8 = sub_23B50CDD4();
    v14 = sub_23B50D4C4();
    if (!os_log_type_enabled(v8, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23B38D000, v8, v14, "air quality previous day comparison missing", v15, 2u);
    v12 = v15;
    goto LABEL_11;
  }

  sub_23B3B7F34(a1, a2, &v17);
  v6 = v17;
  if (v17 == 6)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v7 = sub_23B50CDF4();
    __swift_project_value_buffer(v7, qword_280B4E9D8);

    v8 = sub_23B50CDD4();
    v9 = sub_23B50D4B4();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_23B391F1C(a1, a2, &v16);
    _os_log_impl(&dword_23B38D000, v8, v9, "unrecognized air quality previous day comparison: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23EE9E260](v11, -1, -1);
    v12 = v10;
LABEL_11:
    MEMORY[0x23EE9E260](v12, -1, -1);
LABEL_12:

    v6 = 5;
  }

  *a3 = v6;
}

uint64_t sub_23B3B7EA8()
{
  OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t sub_23B3B7F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73726F576863756DLL && a2 == 0xE900000000000065;
  if (v6 || (OUTLINED_FUNCTION_9_8() & 1) != 0 || (a1 == 0x524F575F4843554DLL ? (v7 = a2 == 0xEA00000000004553) : (v7 = 0), v7 || (OUTLINED_FUNCTION_9_8() & 1) != 0))
  {

    v9 = 0;
  }

  else
  {
    v10 = a1 == 0x6573726F77 && a2 == 0xE500000000000000;
    if (v10 || (OUTLINED_FUNCTION_9_8() & 1) != 0 || (a1 == 0x4553524F57 ? (v11 = a2 == 0xE500000000000000) : (v11 = 0), v11 || (OUTLINED_FUNCTION_9_8() & 1) != 0))
    {

      v9 = 1;
    }

    else
    {
      v12 = a1 == 1701667187 && a2 == 0xE400000000000000;
      if (v12 || (OUTLINED_FUNCTION_9_8() & 1) != 0 || (a1 == 1162690899 ? (v13 = a2 == 0xE400000000000000) : (v13 = 0), v13 || (OUTLINED_FUNCTION_9_8() & 1) != 0))
      {

        v9 = 2;
      }

      else
      {
        v14 = a1 == 0x726574746562 && a2 == 0xE600000000000000;
        if (v14 || (OUTLINED_FUNCTION_9_8() & 1) != 0 || (a1 == 0x524554544542 ? (v15 = a2 == 0xE600000000000000) : (v15 = 0), v15 || (OUTLINED_FUNCTION_9_8() & 1) != 0))
        {

          v9 = 3;
        }

        else
        {
          v16 = a1 == 0x747465426863756DLL && a2 == 0xEA00000000007265;
          if (v16 || (OUTLINED_FUNCTION_9_8() & 1) != 0 || (a1 == 0x5445425F4843554DLL ? (v17 = a2 == 0xEB00000000524554) : (v17 = 0), v17 || (OUTLINED_FUNCTION_9_8() & 1) != 0))
          {

            v9 = 4;
          }

          else
          {
            v18 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
            if (v18 || (OUTLINED_FUNCTION_9_8() & 1) != 0 || (a1 == 0x4E574F4E4B4E55 ? (v19 = a2 == 0xE700000000000000) : (v19 = 0), v19))
            {

              v9 = 5;
            }

            else
            {
              v20 = OUTLINED_FUNCTION_9_8();

              if (v20)
              {
                v9 = 5;
              }

              else
              {
                v9 = 6;
              }
            }
          }
        }
      }
    }
  }

  *a3 = v9;
  return result;
}

uint64_t sub_23B3B81F8()
{
  OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

void OUTLINED_FUNCTION_119_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_106_1()
{

  return swift_once();
}

uint64_t sub_23B3B8280@<X0>(uint64_t a1@<X8>)
{
  sub_23B50BC74();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [objc_opt_self() kilometersPerHour];
    sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
    sub_23B50A9B4();
    v3 = 0;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);

  return __swift_storeEnumTagSinglePayload(a1, v3, 1, v5);
}

uint64_t sub_23B3B8350@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E0, &qword_23B5101A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_23B50C5F4();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_23B50AD24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23B50C664();
  sub_23B50C144();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {

    sub_23B398890(v13, &qword_27E131E18, &unk_23B50F710);
LABEL_5:
    v22 = *MEMORY[0x277D7B078];
    v23 = sub_23B50C7C4();
    return (*(*(v23 - 8) + 104))(v28, v22, v23);
  }

  v20 = (*(v15 + 32))(v18, v13, v14);
  MEMORY[0x28223BE20](v20);
  v21 = v27;
  *(&v26 - 2) = v18;
  *(&v26 - 1) = v21;
  sub_23B3B86E8(sub_23B3FD3E4, v19, v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_23B398890(v5, &qword_27E1321E0, &qword_23B5101A8);
    (*(v15 + 8))(v18, v14);
    goto LABEL_5;
  }

  v25 = v26;
  (*(v26 + 32))(v9, v5, v6);
  sub_23B50C5D4();
  (*(v25 + 8))(v9, v6);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_23B3B86E8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_23B50C5F4();
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v13 = v12 - v11;
  v14 = 0;
  v15 = *(a2 + 16);
  v16 = (v8 + 8);
  while (1)
  {
    if (v15 == v14)
    {
      v18 = 1;
      v19 = a3;
      return __swift_storeEnumTagSinglePayload(v19, v18, 1, v5);
    }

    (*(v8 + 16))(v13, a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v5);
    v17 = a1(v13);
    if (v3)
    {
      return (*v16)(v13, v5);
    }

    if (v17)
    {
      break;
    }

    (*v16)(v13, v5);
    ++v14;
  }

  v19 = a3;
  (*(v8 + 32))(a3, v13, v5);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v5);
}

void sub_23B3B8890(char *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_195();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_250();
  v9 = sub_23B50C064();
  v10 = OUTLINED_FUNCTION_5(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  v17 = (v16 - v15);
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v9) == 1)
  {
    sub_23B398890(v1, &qword_27E132160, &qword_23B510100);
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v18 = sub_23B50CDF4();
    __swift_project_value_buffer(v18, qword_280B4E9D8);
    v19 = sub_23B50CDD4();
    v20 = sub_23B50D4B4();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_66_1();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v21);
      _os_log_impl(&dword_23B38D000, v19, v20, "Received a nil condition code", v17, 2u);
      v22 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v22);
    }

    v23 = 4;
  }

  else
  {
    v24 = *(v12 + 32);
    v25 = OUTLINED_FUNCTION_36();
    v26(v25);
    sub_23B3B9284(v17, &v27);
    (*(v12 + 8))(v17, v9);
    v23 = v27;
  }

  *a1 = v23;
}

uint64_t OUTLINED_FUNCTION_218_0(uint64_t result)
{
  *(v1 - 144) = result;
  v2 = *(v1 - 216);
  v3 = *(v1 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_218_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 320);
  return *(v2 + 328);
}

uint64_t sub_23B3B8AE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_5_32();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_6(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_1_47();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_1_47();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_23B3B8B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a2;
  v57 = a3;
  v4 = sub_23B50C154();
  v64 = *(v4 - 8);
  v5 = *(v64 + 8);
  MEMORY[0x28223BE20](v4);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10);
  v58 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132190, &qword_23B510148);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v56 - v19;
  v21 = sub_23B50AD24();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v56 - v27;
  sub_23B50C144();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_23B398890(v20, &qword_27E131E18, &unk_23B50F710);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v29 = sub_23B50CDF4();
    __swift_project_value_buffer(v29, qword_280B4E9D8);
    v30 = v64;
    v31 = *(v64 + 2);
    v31(v9, a1, v4);
    v32 = sub_23B50CDD4();
    v33 = sub_23B50D4B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v65 = v63;
      *v34 = 136446210;
      v31(v61, v9, v4);
      v35 = sub_23B50D184();
      v37 = v36;
      (*(v30 + 1))(v9, v4);
      v38 = sub_23B391F1C(v35, v37, &v65);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_23B38D000, v32, v33, "Missing minute weather start time, minute=%{public}s", v34, 0xCu);
      v39 = v63;
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x23EE9E260](v39, -1, -1);
      MEMORY[0x23EE9E260](v34, -1, -1);
    }

    else
    {

      (*(v30 + 1))(v9, v4);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v44 = 1;
    return swift_willThrow();
  }

  else
  {
    v40 = v20;
    v41 = *(v22 + 32);
    v41(v28, v40, v21);
    (*(v22 + 16))(v25, v28, v21);
    v42 = sub_23B50C7C4();
    (*(*(v42 - 8) + 16))(v16, v62, v42);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v42);
    v43 = v63;
    sub_23B3BC884();
    if (v43)
    {
      sub_23B398890(v16, &qword_27E132190, &qword_23B510148);
      v49 = *(v22 + 8);
      v49(v25, v21);
      return (v49)(v28, v21);
    }

    else
    {
      v64 = v41;
      sub_23B398890(v16, &qword_27E132190, &qword_23B510148);
      LODWORD(v63) = v67;
      sub_23B50C114();
      v46 = v45;
      sub_23B50C124();
      sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
      static NSUnitSpeed.wk_millimetersPerHour.getter();
      v47 = v58;
      sub_23B50A9B4();
      sub_23B50C134();
      sub_23B3C3CA0(v48, 0, &v65);
      (*(v22 + 8))(v28, v21);
      v51 = v65;
      v52 = v66;
      v53 = v57;
      v64(v57, v25, v21);
      v54 = type metadata accessor for MinuteWeather();
      v53[v54[5]] = v63;
      *&v53[v54[6]] = v46 / 100.0;
      result = (*(v59 + 32))(&v53[v54[7]], v47, v60);
      v55 = &v53[v54[8]];
      *v55 = v51;
      v55[8] = v52;
    }
  }

  return result;
}

void sub_23B3B9284(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23B50C064();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = *(v5 + 16);
  v16(&v32 - v14, a1, v4, v13);
  v17 = (*(v5 + 88))(v15, v4);
  if (v17 == *MEMORY[0x277D7AE70])
  {
LABEL_2:
    v18 = 4;
LABEL_3:
    *a2 = v18;
    return;
  }

  if (v17 == *MEMORY[0x277D7AEB8])
  {
    *a2 = 0;
  }

  else
  {
    if (v17 == *MEMORY[0x277D7ADD8])
    {
      v18 = 1;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7ADE0])
    {
      v18 = 2;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE98])
    {
      v18 = 3;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AEA0])
    {
      v18 = 5;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AEB0])
    {
      v18 = 6;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AEC0])
    {
      v18 = 7;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE78])
    {
      v18 = 8;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE30])
    {
      v18 = 9;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7ADF8])
    {
      v18 = 10;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AEA8])
    {
      v18 = 11;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE50])
    {
      v18 = 12;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE58])
    {
      v18 = 13;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AEC8])
    {
      v18 = 14;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AED0])
    {
      v18 = 15;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE48])
    {
      v18 = 16;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AED8])
    {
      v18 = 17;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE38])
    {
      v18 = 18;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7ADE8])
    {
      v18 = 19;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE00])
    {
      v18 = 20;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE10])
    {
      v18 = 21;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE60])
    {
      v18 = 22;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE40])
    {
      v18 = 23;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE80])
    {
      v18 = 24;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE88])
    {
      v18 = 25;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE68])
    {
      v18 = 26;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE18])
    {
      v18 = 27;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7ADF0])
    {
      v18 = 28;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7ADD0])
    {
      v18 = 29;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE20])
    {
      v18 = 30;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE28])
    {
      v18 = 31;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE90])
    {
      v18 = 32;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AEE0])
    {
      v18 = 33;
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x277D7AE08])
    {
      if (qword_280B43440 != -1)
      {
        swift_once();
      }

      v19 = sub_23B50CDF4();
      __swift_project_value_buffer(v19, qword_280B4E9D8);
      v20 = sub_23B50CDD4();
      v21 = sub_23B50D4B4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_23B38D000, v20, v21, "Unexpected condition code; condition=notAvailable", v22, 2u);
        MEMORY[0x23EE9E260](v22, -1, -1);
      }

      goto LABEL_2;
    }

    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v23 = sub_23B50CDF4();
    __swift_project_value_buffer(v23, qword_280B4E9D8);
    (v16)(v11, a1, v4);
    v24 = sub_23B50CDD4();
    v34 = sub_23B50D4B4();
    if (os_log_type_enabled(v24, v34))
    {
      v25 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v25 = 136446210;
      (v16)(v8, v11, v4);
      v32 = sub_23B50D184();
      v27 = v26;
      v28 = *(v5 + 8);
      v28(v11, v4);
      v29 = sub_23B391F1C(v32, v27, &v35);

      *(v25 + 4) = v29;
      v30 = v25;
      _os_log_impl(&dword_23B38D000, v24, v34, "Unknown default; condition=%{public}s", v25, 0xCu);
      v31 = v33;
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x23EE9E260](v31, -1, -1);
      MEMORY[0x23EE9E260](v30, -1, -1);
    }

    else
    {

      v28 = *(v5 + 8);
      v28(v11, v4);
    }

    *a2 = 4;
    v28(v15, v4);
  }
}

void sub_23B3B99FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v25;
  a20 = v26;
  LODWORD(v143) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132160, &qword_23B510100);
  OUTLINED_FUNCTION_3(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_64_1();
  v32 = sub_23B50C064();
  v33 = OUTLINED_FUNCTION_5(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_55(v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_124();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_125();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_188_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_62_0();
  v47 = v46;
  sub_23B3B81F8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v47) == 1)
  {
    sub_23B398890(v23, &qword_27E132160, &qword_23B510100);
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    OUTLINED_FUNCTION_33_1();
    v48 = sub_23B50CDF4();
    __swift_project_value_buffer(v48, qword_280B4E9D8);
    v49 = sub_23B50CDD4();
    sub_23B50D4B4();
    v50 = OUTLINED_FUNCTION_26_2();
    if (os_log_type_enabled(v50, v51))
    {
      OUTLINED_FUNCTION_66_1();
      v52 = swift_slowAlloc();
      OUTLINED_FUNCTION_74_0(v52);
      OUTLINED_FUNCTION_20_4();
      _os_log_impl(v53, v54, v55, v56, v57, v58);
      v59 = OUTLINED_FUNCTION_35_2();
      MEMORY[0x23EE9E260](v59);
    }

    goto LABEL_29;
  }

  v60 = *(v35 + 32);
  (v60)(v24, v23, v47);
  v138 = *(v35 + 16);
  v138(v22, v24, v47);
  v61 = (*(v35 + 88))(v22, v47);
  if (v61 == *MEMORY[0x277D7AE70])
  {
    OUTLINED_FUNCTION_219(&a18);
    v62 = *(v35 + 8);
    v63 = v24;
    v64 = v47;
LABEL_9:
    v62(v63, v64);
    goto LABEL_29;
  }

  v139 = v24;
  v137 = v47;
  if (v61 == *MEMORY[0x277D7AEB8])
  {
LABEL_46:
    OUTLINED_FUNCTION_33_1();
    v77 = OUTLINED_FUNCTION_7_9();
    v78(v77);
    goto LABEL_29;
  }

  if (v61 == *MEMORY[0x277D7ADD8] || v61 == *MEMORY[0x277D7ADE0] || v61 == *MEMORY[0x277D7AE98] || v61 == *MEMORY[0x277D7AEA0] || v61 == *MEMORY[0x277D7AEB0])
  {
LABEL_16:
    v65 = OUTLINED_FUNCTION_14_5();
    v66(v65);
    goto LABEL_29;
  }

  if (v61 == *MEMORY[0x277D7AEC0])
  {
    OUTLINED_FUNCTION_244();
    v67 = OUTLINED_FUNCTION_14_5();
    v68(v67);
    goto LABEL_29;
  }

  if (v61 == *MEMORY[0x277D7AE78])
  {
    goto LABEL_28;
  }

  if (v61 == *MEMORY[0x277D7AE30] || v61 == *MEMORY[0x277D7ADF8])
  {
    OUTLINED_FUNCTION_33_1();
    v69 = OUTLINED_FUNCTION_14_5();
    v70(v69);
    goto LABEL_29;
  }

  if (v61 == *MEMORY[0x277D7AEA8])
  {
    goto LABEL_16;
  }

  if (v61 == *MEMORY[0x277D7AE50])
  {
LABEL_28:
    v71 = OUTLINED_FUNCTION_14_5();
    v72(v71);
    OUTLINED_FUNCTION_33_1();
    goto LABEL_29;
  }

  v135[1] = v21;
  v73 = v142;
  v135[3] = v37;
  v136 = v20;
  v135[2] = v22;
  v74 = v141;
  if (v61 == *MEMORY[0x277D7AE58])
  {
LABEL_31:
    v63 = OUTLINED_FUNCTION_7_9();
    goto LABEL_9;
  }

  if (v61 == *MEMORY[0x277D7AEC8])
  {
LABEL_33:
    v75 = OUTLINED_FUNCTION_7_9();
    v76(v75);
    OUTLINED_FUNCTION_33_1();
    goto LABEL_29;
  }

  if (v61 == *MEMORY[0x277D7AED0])
  {
    goto LABEL_46;
  }

  if (v61 == *MEMORY[0x277D7AE48])
  {
    goto LABEL_31;
  }

  if (v61 == *MEMORY[0x277D7AED8])
  {
    goto LABEL_58;
  }

  if (v61 == *MEMORY[0x277D7AE38] || v61 == *MEMORY[0x277D7ADE8])
  {
    goto LABEL_31;
  }

  if (v61 == *MEMORY[0x277D7AE00])
  {
    goto LABEL_58;
  }

  if (v61 == *MEMORY[0x277D7AE10])
  {
    goto LABEL_31;
  }

  if (v61 == *MEMORY[0x277D7AE60])
  {
    goto LABEL_33;
  }

  if (v61 == *MEMORY[0x277D7AE40])
  {
    goto LABEL_31;
  }

  if (v61 == *MEMORY[0x277D7AE80])
  {
    goto LABEL_46;
  }

  if (v61 == *MEMORY[0x277D7AE88])
  {
    goto LABEL_31;
  }

  if (v61 == *MEMORY[0x277D7AE68])
  {
    goto LABEL_52;
  }

  if (v61 == *MEMORY[0x277D7AE18])
  {
    goto LABEL_46;
  }

  if (v61 == *MEMORY[0x277D7ADF0])
  {
LABEL_52:
    OUTLINED_FUNCTION_244();
    v79 = OUTLINED_FUNCTION_7_9();
    v80(v79);
    goto LABEL_29;
  }

  if (v61 == *MEMORY[0x277D7ADD0] || v61 == *MEMORY[0x277D7AE20])
  {
    goto LABEL_46;
  }

  if (v61 == *MEMORY[0x277D7AE28] || v61 == *MEMORY[0x277D7AE90])
  {
LABEL_58:
    v81 = OUTLINED_FUNCTION_7_9();
    v82(v81);
    goto LABEL_29;
  }

  if (v61 == *MEMORY[0x277D7AEE0])
  {
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_33_1();
  if (v83 == *MEMORY[0x277D7AE08])
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v84 = sub_23B50CDF4();
    __swift_project_value_buffer(v84, qword_280B4E9D8);
    OUTLINED_FUNCTION_166();
    v86 = *(v85 - 256);
    v86();
    OUTLINED_FUNCTION_101();
    OUTLINED_FUNCTION_151();
    v86();
    v87 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v88 = swift_allocObject();
    OUTLINED_FUNCTION_151();
    v60();
    v89 = sub_23B50CDD4();
    OUTLINED_FUNCTION_205(v89);
    v90 = sub_23B50D4B4();
    v91 = OUTLINED_FUNCTION_257();
    *(v91 + 16) = 34;
    v92 = OUTLINED_FUNCTION_257();
    *(v92 + 16) = 8;
    OUTLINED_FUNCTION_148();
    v93 = swift_allocObject();
    *(v93 + 16) = sub_23B3FD4D0;
    *(v93 + 24) = v88;
    OUTLINED_FUNCTION_148();
    v94 = swift_allocObject();
    *(v94 + 16) = sub_23B3FD4D4;
    *(v94 + 24) = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132178, &qword_23B510120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B510090;
    *(inited + 32) = sub_23B3FD4D8;
    *(inited + 40) = v91;
    *(inited + 48) = sub_23B3FD4D8;
    *(inited + 56) = v92;
    *(inited + 64) = sub_23B3FD4CC;
    *(inited + 72) = v94;
    swift_setDeallocating();
    sub_23B3FD184();
    LODWORD(v142) = v90;
    v96 = OUTLINED_FUNCTION_236();
    if (os_log_type_enabled(v96, v97))
    {
      OUTLINED_FUNCTION_173();
      v98 = swift_slowAlloc();
      OUTLINED_FUNCTION_135();
      v140 = swift_slowAlloc();
      v144 = v140;
      *v98 = 136446210;
      OUTLINED_FUNCTION_130(&a11);
      OUTLINED_FUNCTION_198();
      v99();
      sub_23B50D184();
      OUTLINED_FUNCTION_115();
      (inited)(v94, v91);
      v100 = OUTLINED_FUNCTION_202();
      v103 = sub_23B391F1C(v100, v101, v102);

      *(v98 + 4) = v103;
      OUTLINED_FUNCTION_134(&a18);
      _os_log_impl(v104, v105, v106, v107, v98, 0xCu);
      v108 = OUTLINED_FUNCTION_227(&a15);
      __swift_destroy_boxed_opaque_existential_1(v108);
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
    }

    else
    {
      OUTLINED_FUNCTION_204();

      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_101();
      OUTLINED_FUNCTION_197();
      (inited)();
    }

    OUTLINED_FUNCTION_197();
  }

  else
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v109 = sub_23B50CDF4();
    __swift_project_value_buffer(v109, qword_280B4E9D8);
    OUTLINED_FUNCTION_166();
    v111 = *(v110 - 256);
    v111();
    (v111)(v140, v73, v21);
    v112 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v113 = swift_allocObject();
    v114 = OUTLINED_FUNCTION_205(v113);
    (v60)(v114 + v112, v73, v21);
    v115 = sub_23B50CDD4();
    v116 = sub_23B50D4B4();
    v117 = OUTLINED_FUNCTION_257();
    *(v117 + 16) = 34;
    v118 = OUTLINED_FUNCTION_257();
    *(v118 + 16) = 8;
    OUTLINED_FUNCTION_148();
    v119 = swift_allocObject();
    v120 = v143;
    *(v119 + 16) = sub_23B3FD1E4;
    *(v119 + 24) = v120;
    OUTLINED_FUNCTION_148();
    v121 = swift_allocObject();
    *(v121 + 16) = sub_23B3FD1F0;
    *(v121 + 24) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132178, &qword_23B510120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B510090;
    *(inited + 32) = sub_23B3FD1E8;
    *(inited + 40) = v117;
    *(inited + 48) = sub_23B3FD4D8;
    *(inited + 56) = v118;
    *(inited + 64) = sub_23B3FD1F8;
    *(inited + 72) = v121;
    swift_setDeallocating();
    sub_23B3FD184();
    LODWORD(v142) = v116;
    v143 = v115;
    if (os_log_type_enabled(v115, v116))
    {
      OUTLINED_FUNCTION_173();
      v122 = swift_slowAlloc();
      OUTLINED_FUNCTION_135();
      v136 = swift_slowAlloc();
      v144 = v136;
      *v122 = 136446210;
      OUTLINED_FUNCTION_130(&a15);
      OUTLINED_FUNCTION_198();
      v123();
      sub_23B50D184();
      OUTLINED_FUNCTION_115();
      (inited)(v121, v117);
      v124 = OUTLINED_FUNCTION_202();
      v127 = sub_23B391F1C(v124, v125, v126);

      *(v122 + 4) = v127;
      OUTLINED_FUNCTION_134(&a18);
      _os_log_impl(v128, v129, v130, v131, v122, 0xCu);
      v132 = OUTLINED_FUNCTION_227(&a11);
      __swift_destroy_boxed_opaque_existential_1(v132);
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
      OUTLINED_FUNCTION_57_1();
      MEMORY[0x23EE9E260]();
    }

    else
    {
      OUTLINED_FUNCTION_204();

      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_197();
      (inited)();
    }

    OUTLINED_FUNCTION_169(&a12);
    (inited)();
    OUTLINED_FUNCTION_145();
  }

  (inited)();
LABEL_29:
  OUTLINED_FUNCTION_20();
}