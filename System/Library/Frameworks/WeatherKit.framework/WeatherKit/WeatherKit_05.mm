void sub_23B3FBAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_32_1();
  v12 = sub_23B50B1C4();
  v13 = OUTLINED_FUNCTION_5(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_40_2(v16);
  v17 = type metadata accessor for MonthPrecipitationStatistics();
  v18 = OUTLINED_FUNCTION_28_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_24_0();
  v21 = sub_23B50CCA4();
  v22 = OUTLINED_FUNCTION_5(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_39_2(v25);
  v26 = type metadata accessor for WeatherMetadata();
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_87();
  if (*(sub_23B50B4D4() + 16))
  {
    OUTLINED_FUNCTION_78_0();
    v31 = OUTLINED_FUNCTION_19_4(v30, MEMORY[0x277D84F90]);
    sub_23B41B28C(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_8_3();
    while (1)
    {
      OUTLINED_FUNCTION_176(v34);
      if (v35)
      {
        break;
      }

      v36 = OUTLINED_FUNCTION_17_2();
      v37(v36);
      v38 = OUTLINED_FUNCTION_85_0();
      sub_23B3FBD88(v38, v39);
      if (v10)
      {
        v47 = OUTLINED_FUNCTION_84_1();
        v48(v47);

        goto LABEL_14;
      }

      v40 = OUTLINED_FUNCTION_38_2();
      v41(v40);
      OUTLINED_FUNCTION_42_2();
      if (v35)
      {
        v44 = OUTLINED_FUNCTION_24_2(v42);
        sub_23B41B28C(v44, v45, v46);
        v11 = a10;
      }

      OUTLINED_FUNCTION_10_5();
      OUTLINED_FUNCTION_214();
      OUTLINED_FUNCTION_82();
      v34 = v67;
      if (v43)
      {

        OUTLINED_FUNCTION_77_0();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = v11;

    v11 = MEMORY[0x277D84F90];
LABEL_12:
    OUTLINED_FUNCTION_76_0();
    v49 = sub_23B50B4E4();
    OUTLINED_FUNCTION_83_0(v49, v50, v51, v52, v53, v54, v55, v56, v63, v64, v65, v66);
    if (v10)
    {
      v57 = OUTLINED_FUNCTION_36_1();
      v58(v57);
LABEL_14:
    }

    else
    {
      v59 = OUTLINED_FUNCTION_36_1();
      v60(v59);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132260, &qword_23B510258);
      OUTLINED_FUNCTION_41_2(v61);
      sub_23B50B4C4();
      v62 = *(v21 + 56);
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_215();
      *v12 = v11;
    }

    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_23B3FBD88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_23B50B1C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132268, &unk_23B510260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_23B50C874();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50B1A4();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_23B398890(v14, &qword_27E132268, &unk_23B510260);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v20 = sub_23B50CDF4();
    __swift_project_value_buffer(v20, qword_280B4E9D8);
    v21 = *(v5 + 16);
    v21(v10, a1, v4);
    v22 = sub_23B50CDD4();
    v23 = sub_23B50D4B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v24 = 136315138;
      v21(v40, v10, v4);
      v25 = sub_23B50D184();
      v27 = v26;
      (*(v5 + 8))(v10, v4);
      v28 = sub_23B391F1C(v25, v27, &v42);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_23B38D000, v22, v23, "Missing month statistics' precipitation; monthStatistics=%s", v24, 0xCu);
      v29 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x23EE9E260](v29, -1, -1);
      MEMORY[0x23EE9E260](v24, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    sub_23B3E3D54();
    swift_allocError();
    *v39 = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v40 = sub_23B50B1B4();
    sub_23B50C864();
    v31 = v30;
    sub_23B50C854();
    v32 = objc_opt_self();
    v33 = [v32 millimeters];
    v34 = type metadata accessor for MonthPrecipitationStatistics();
    v35 = *(v34 + 24);
    sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
    sub_23B50A9B4();
    sub_23B50C844();
    v36 = [v32 millimeters];
    v37 = a2 + *(v34 + 28);
    sub_23B50A9B4();
    result = (*(v16 + 8))(v19, v15);
    *a2 = v40;
    a2[1] = v31;
  }

  return result;
}

uint64_t sub_23B3FC248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23B50B584();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_23B50B554();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v14 = &v34[-v13];
  sub_23B50B564();
  v15 = (*(v10 + 88))(v14, v9);
  if (v15 == *MEMORY[0x277D7ABB8] || v15 == *MEMORY[0x277D7ABB0])
  {
    v16 = [objc_opt_self() celsius];
    sub_23B3FC760(v16, a2);

    v17 = type metadata accessor for HistoricalComparison();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v17);
  }

  if (v15 == *MEMORY[0x277D7ABA8] || v15 == *MEMORY[0x277D7ABC0])
  {
    v18 = [objc_opt_self() millimeters];
    sub_23B3FCAC4(v18, a2);

    v17 = type metadata accessor for HistoricalComparison();
    goto LABEL_7;
  }

  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v20 = sub_23B50CDF4();
  __swift_project_value_buffer(v20, qword_280B4E9D8);
  (*(v5 + 16))(v8, a1, v4);
  v21 = sub_23B50CDD4();
  v22 = sub_23B50D4B4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = v21;
    v24 = v23;
    v37 = swift_slowAlloc();
    v38 = v37;
    *v24 = 136315138;
    v35 = v22;
    sub_23B50B564();
    v25 = sub_23B50D184();
    v27 = v26;
    (*(v5 + 8))(v8, v4);
    v28 = sub_23B391F1C(v25, v27, &v38);

    v29 = v24;
    *(v24 + 4) = v28;
    v30 = v36;
    v31 = v29;
    _os_log_impl(&dword_23B38D000, v36, v35, "Can't convert comparison; unknown condition provided: %s", v29, 0xCu);
    v32 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x23EE9E260](v32, -1, -1);
    MEMORY[0x23EE9E260](v31, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v33 = type metadata accessor for HistoricalComparison();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v33);
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_23B3FC760@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = sub_23B50CCC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23B50B504();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50B514();
  if ((*(v13 + 88))(v16, v12) != *MEMORY[0x277D7ABA0])
  {
    (*(v13 + 8))(v16, v12);
  }

  sub_23B50B574();
  v17 = (*(v8 + 88))(v11, v7);
  if (v17 == *MEMORY[0x277D7B180])
  {
    v18 = 0;
  }

  else
  {
    if (v17 != *MEMORY[0x277D7B190])
    {
      if (v17 != *MEMORY[0x277D7B198])
      {
        if (v17 == *MEMORY[0x277D7B188] || v17 == *MEMORY[0x277D7B1A0])
        {
          v18 = 3;
          goto LABEL_15;
        }

        (*(v8 + 8))(v11, v7);
      }

      v18 = 2;
      goto LABEL_15;
    }

    v18 = 1;
  }

LABEL_15:
  sub_23B50B534();
  sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
  v20 = v27;
  sub_23B50A9B4();
  v21 = &v6[*(v3 + 32)];
  sub_23B50B544();
  sub_23B3B81F8();
  sub_23B50B524();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  v23 = *(v22 + 28);
  v24 = v20;
  sub_23B50A9B4();
  result = sub_23B398890(v6, &qword_27E132218, &qword_23B515890);
  *(a2 + *(v22 + 32)) = v18;
  return result;
}

uint64_t sub_23B3FCAC4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = sub_23B50CCC4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23B50B504();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50B514();
  if ((*(v13 + 88))(v16, v12) != *MEMORY[0x277D7ABA0])
  {
    (*(v13 + 8))(v16, v12);
  }

  sub_23B50B574();
  v17 = (*(v8 + 88))(v11, v7);
  if (v17 == *MEMORY[0x277D7B180])
  {
    v18 = 0;
  }

  else
  {
    if (v17 != *MEMORY[0x277D7B190])
    {
      if (v17 != *MEMORY[0x277D7B198])
      {
        if (v17 == *MEMORY[0x277D7B188] || v17 == *MEMORY[0x277D7B1A0])
        {
          v18 = 3;
          goto LABEL_15;
        }

        (*(v8 + 8))(v11, v7);
      }

      v18 = 2;
      goto LABEL_15;
    }

    v18 = 1;
  }

LABEL_15:
  sub_23B50B534();
  sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
  v20 = v27;
  sub_23B50A9B4();
  v21 = &v6[*(v3 + 32)];
  sub_23B50B544();
  sub_23B3B81F8();
  sub_23B50B524();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  v23 = *(v22 + 28);
  v24 = v20;
  sub_23B50A9B4();
  result = sub_23B398890(v6, &qword_27E132228, &unk_23B511AB0);
  *(a2 + *(v22 + 32)) = v18;
  return result;
}

void sub_23B3FCE28(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_23B50C594();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v30 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DayPartForecast();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v31 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23B50C6B4();
  v13 = *(v12 + 16);
  if (v13)
  {
    v23 = a1;
    v24 = a2;
    v32 = MEMORY[0x277D84F90];
    v25 = v13;
    sub_23B41B33C(0, v13, 0);
    v14 = 0;
    v15 = v32;
    v27 = v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v26 = v6 + 16;
    v28 = (v6 + 8);
    while (v14 < *(v12 + 16))
    {
      v16 = v30;
      (*(v6 + 16))(v30, v27 + *(v6 + 72) * v14, v5);
      sub_23B3C2F64(v31);
      if (v2)
      {
        (*v28)(v16, v5);

        return;
      }

      v17 = v6;
      v18 = v5;
      (*v28)(v16, v5);
      v32 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_23B41B33C(v19 > 1, v20 + 1, 1);
        v15 = v32;
      }

      ++v14;
      *(v15 + 16) = v20 + 1;
      v21 = v15 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v22 = *(v29 + 72);
      sub_23B3B0608();
      v5 = v18;
      v6 = v17;
      if (v25 == v14)
      {

        a2 = v24;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_11:
    *a2 = sub_23B50C6A4();
    a2[1] = v15;
  }
}

uint64_t sub_23B3FD12C()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_23B3FD154()
{
  sub_23B3FD12C();
  OUTLINED_FUNCTION_148();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B3FD184()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132180, &qword_23B510128);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t objectdestroyTm()
{
  v1 = sub_23B50C064();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_23B3FD280()
{
  v0 = sub_23B50C064();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 80);
  return sub_23B3F4DF0();
}

unint64_t sub_23B3FD2D0()
{
  result = qword_280B41A50;
  if (!qword_280B41A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A50);
  }

  return result;
}

uint64_t sub_23B3FD378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPollutant();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3FD404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B3FD44C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_23B3F598C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_61_0()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_85_0()
{
  v3 = *(v1 - 96);
  v2 = *(v1 - 88);
  return v0;
}

void OUTLINED_FUNCTION_133()
{
  v1 = *(v0 - 272);
  v2 = *(v0 - 280);
  v3 = *(v0 - 288);
  v4 = *(v0 - 296);
}

uint64_t OUTLINED_FUNCTION_170()
{
  v2 = *(*(v1 - 280) + 8);
  result = v0;
  v4 = *(v1 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_187()
{
  v2 = *(v0 - 392);
}

uint64_t OUTLINED_FUNCTION_194@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_23B3CC8D4(v2);
}

void OUTLINED_FUNCTION_241()
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v0;
  *(v3 - 96) = v2;
}

__n128 OUTLINED_FUNCTION_246(__n128 *a1)
{
  result = *(v1 - 336);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_256()
{

  return sub_23B50A9B4();
}

uint64_t OUTLINED_FUNCTION_257()
{

  return swift_allocObject();
}

uint64_t NetworkConfiguration.tokenTimeoutTimeInterval.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t NetworkConfiguration.init(isRequestRacingEnabled:raceDelayDurations:shouldRetry503Errors:shouldRetryTimeOutsAndLostNetworkConnectionErrors:shouldRetryInvalidAuthorizationErrors:maxRetryCount:tokenTimeoutTimeInterval:attemptTimeoutTimeIntervals:retryBackoffDurations:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 18) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8 & 1;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23B3FD8FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23B3FD93C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_23B3FD99C()
{
  v1 = v0[3];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[11];

  return v0;
}

uint64_t sub_23B3FD9E8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);

  return v1;
}

uint64_t sub_23B3FDA1C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t static CurrentWeather.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v107 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v108 = &v96 - v9;
  v10 = type metadata accessor for PrecipitationAmount();
  v11 = OUTLINED_FUNCTION_6(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  v16 = v15 - v14;
  v17 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
  v18 = OUTLINED_FUNCTION_6(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27();
  v23 = v22 - v21;
  v24 = sub_23B50AD24();
  v25 = OUTLINED_FUNCTION_5(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_27();
  v32 = v31 - v30;
  v33 = sub_23B50AEF4();
  v34 = OUTLINED_FUNCTION_5(v33);
  v105 = v35;
  v106 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_27();
  v40 = v39 - v38;
  type metadata accessor for WeatherConditionSymbolMapper();
  swift_initStaticObject();
  sub_23B50AEE4();
  if (qword_27E131C18 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v24, qword_27E15A730);
  v109 = v24;
  v100 = v27;
  v97 = *(v27 + 16);
  v97(v32, v41, v24);
  v111 = 4;
  v42 = sub_23B50A4F4(&v111, v32, 37.323, -122.0);
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0x2E78616D2E6E7573;
  }

  v45 = 0xEC0000006C6C6966;
  if (v43)
  {
    v45 = v43;
  }

  v102 = v45;
  v103 = v44;
  CLLocationCoordinate2D.solarEvents(referenceDate:timeZone:)(v32, v23, 37.323, -122.0);
  v46 = *(v23 + *(v17 + 24));
  v101 = v46;
  sub_23B3FE414(v23, type metadata accessor for CLLocationCoordinate2D.SolarEvents);
  v47 = 5;
  if (!v46)
  {
    v47 = 0;
  }

  v104 = v47;
  v48 = objc_opt_self();
  v49 = v32;
  v98 = v32;
  v99 = v40;
  v50 = v48;
  v51 = [v48 inches];
  sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
  sub_23B50A9B4();
  v52 = OUTLINED_FUNCTION_4_11();
  v53 = v10[5];
  OUTLINED_FUNCTION_2_11();
  v54 = OUTLINED_FUNCTION_4_11();
  v55 = v10[6];
  OUTLINED_FUNCTION_2_11();
  v56 = OUTLINED_FUNCTION_4_11();
  v57 = v10[7];
  OUTLINED_FUNCTION_2_11();
  v58 = OUTLINED_FUNCTION_4_11();
  v59 = v10[8];
  OUTLINED_FUNCTION_2_11();
  v60 = OUTLINED_FUNCTION_4_11();
  v61 = v10[9];
  OUTLINED_FUNCTION_2_11();
  v97(a1, v49, v109);
  v62 = objc_opt_self();
  v63 = [v62 fahrenheit];
  v64 = type metadata accessor for CurrentWeather();
  v65 = v64[12];
  sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
  sub_23B50A9B4();
  v97 = objc_opt_self();
  v66 = [v97 milesPerHour];
  v67 = v64[14];
  v96 = sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
  sub_23B50A9B4();
  v68 = [objc_opt_self() inchesOfMercury];
  v69 = v64[15];
  sub_23B3924C0(0, &qword_280B43398, 0x277CCAE38);
  sub_23B50A9B4();
  sub_23B3FE3B0(v16, a1 + v64[17]);
  sub_23B3FE3B0(v16, a1 + v64[18]);
  static PrecipitationAmountByType.mock()(a1 + v64[19]);
  static PrecipitationAmountByType.mock()(a1 + v64[20]);
  static PrecipitationAmountByType.mock()(a1 + v64[21]);
  static PrecipitationAmountByType.mock()(a1 + v64[22]);
  static PrecipitationAmountByType.mock()(a1 + v64[23]);
  static PrecipitationAmountByType.mock()(a1 + v64[24]);
  v70 = [v62 fahrenheit];
  v71 = a1 + v64[27];
  sub_23B50A9B4();
  v72 = [v62 fahrenheit];
  v73 = a1 + v64[28];
  sub_23B50A9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v74 = v108;
  OUTLINED_FUNCTION_3_9(v108);
  OUTLINED_FUNCTION_3_9(v110);
  v75 = [v50 miles];
  v76 = a1 + v64[32];
  sub_23B50A9B4();
  v77 = [objc_opt_self() degrees];
  v78 = (a1 + v64[33]);
  v79 = type metadata accessor for Wind();
  v80 = v79[5];
  sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
  sub_23B50A9B4();
  v81 = v97;
  v82 = [v97 kilometersPerHour];
  v83 = &v78[v79[6]];
  sub_23B50A9B4();
  v84 = [v81 kilometersPerHour];
  v85 = v107;
  sub_23B50A9B4();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  __swift_storeEnumTagSinglePayload(v85, 0, 1, v86);
  v87 = v79[7];
  __swift_storeEnumTagSinglePayload(&v78[v87], 1, 1, v86);
  *v78 = 4;
  sub_23B3E7994(v85, &v78[v87], &qword_27E132048, &qword_23B510110);
  static WeatherMetadata.mock()((a1 + v64[34]));
  sub_23B3FE414(v16, type metadata accessor for PrecipitationAmount);
  (*(v100 + 8))(v98, v109);
  (*(v105 + 8))(v99, v106);
  v88 = v64[29];
  OUTLINED_FUNCTION_3_9(a1 + v88);
  v89 = v64[30];
  OUTLINED_FUNCTION_3_9(a1 + v89);
  *(a1 + v64[5]) = 0;
  *(a1 + v64[6]) = 0;
  *(a1 + v64[7]) = 0;
  *(a1 + v64[8]) = 0;
  v90 = (a1 + v64[9]);
  *v90 = 0;
  v90[1] = 0;
  v90[2] = 0;
  *(a1 + v64[10]) = 4;
  v91 = (a1 + v64[11]);
  v92 = v102;
  *v91 = v103;
  v91[1] = v92;
  *(a1 + v64[13]) = 0x3FE199999999999ALL;
  *(a1 + v64[16]) = 0;
  v93 = a1 + v64[25];
  *v93 = 0x3FD3333333333333;
  *(v93 + 8) = 0;
  LOBYTE(v62) = v101;
  *(a1 + v64[26]) = v101;
  sub_23B3E7994(v74, a1 + v88, &qword_27E132168, &qword_23B510108);
  result = sub_23B3E7994(v110, a1 + v89, &qword_27E132168, &qword_23B510108);
  v95 = a1 + v64[31];
  *v95 = v104;
  *(v95 + 8) = v62;
  return result;
}

uint64_t sub_23B3FE3B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationAmount();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3FE414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t GeocodeStore.__allocating_init()()
{
  v0 = swift_allocObject();
  GeocodeStore.init()();
  return v0;
}

uint64_t GeocodeStore.init()()
{
  v1 = sub_23B50AFF4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_27();
  sub_23B3FFF7C(&qword_280B45380, MEMORY[0x277D6CA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132298, &qword_23B519F00);
  sub_23B3F1C50(&qword_280B45370, &qword_27E132298, &qword_23B519F00);
  sub_23B50D594();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322A0, &qword_23B510448);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_23B50B024();
  return v0;
}

void sub_23B3FE61C(uint64_t *a1@<X8>)
{
  if (qword_280B43220 != -1)
  {
    swift_once();
  }

  if (qword_280B43228)
  {
    sub_23B3FFFF0();
    v2 = sub_23B50CFE4();

    sub_23B50CF24();

    sub_23B50CF74();
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t GeocodeStore.saveReverseGeocodeResult(_:for:configuredCountryCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23B50AD24();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  v15 = v14 - v13;
  v16 = type metadata accessor for ReverseGeocodeResult();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27();
  v22 = v21 - v20;
  v23 = *(v5 + 16);
  result = sub_23B50B014();
  if (v27)
  {
    sub_23B50CF04();

    sub_23B3FE9CC(a1, v22);

    sub_23B50ABB4();
    v25 = OUTLINED_FUNCTION_31();
    sub_23B4A4354(v25, v26, v22, a4, a5, v15);
    sub_23B50CED4();
  }

  return result;
}

uint64_t sub_23B3FE9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReverseGeocodeResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GeocodeStore.queryReverseGeocodeResult(for:configuredCountryCode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v110 = a3;
  v111 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322A8, &unk_23B51DBB0);
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v102 = &v97 - v14;
  v15 = sub_23B50AD24();
  v16 = OUTLINED_FUNCTION_5(v15);
  v105 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12();
  v100 = v20;
  MEMORY[0x28223BE20](v21);
  v103 = (&v97 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v24 = OUTLINED_FUNCTION_3(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12();
  v101 = v27;
  MEMORY[0x28223BE20](v28);
  v104 = &v97 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322B0, &qword_23B510450);
  v31 = OUTLINED_FUNCTION_3(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v97 - v34;
  v36 = sub_23B50CE64();
  v37 = OUTLINED_FUNCTION_5(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_27();
  v44 = (v43 - v42);
  v45 = *(v5 + 16);
  sub_23B50B014();
  if (!v112)
  {
LABEL_8:
    v62 = 1;
LABEL_9:
    v63 = type metadata accessor for ReverseGeocodeResult();
    return __swift_storeEnumTagSinglePayload(a5, v62, 1, v63);
  }

  v98 = v15;
  v97 = v6;
  v106 = v112;
  v107 = a5;
  v108 = sub_23B50CF14();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322B8, &qword_23B510458);
  v47 = swift_allocBox();
  v48 = *(v46 + 48);
  v49 = a2;
  v50 = MEMORY[0x277D837D0];
  v51 = MEMORY[0x277D6C998];
  v114 = MEMORY[0x277D837D0];
  v115 = MEMORY[0x277D6C998];
  v99 = a1;
  v112 = a1;
  v113 = v49;
  v109 = v49;

  sub_23B50CE94();
  __swift_destroy_boxed_opaque_existential_1(&v112);
  v114 = v50;
  v115 = v51;
  v52 = v110;
  v53 = v111;
  v112 = v110;
  v113 = v111;

  v54 = v108;
  sub_23B50CE94();
  __swift_destroy_boxed_opaque_existential_1(&v112);
  *v44 = v47;
  (*(v39 + 104))(v44, *MEMORY[0x277D6C830], v36);
  v55 = sub_23B50CF94();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v55);
  sub_23B50CEF4();

  sub_23B3FFF14(v35);
  (*(v39 + 8))(v44, v36);
  if (!v116)
  {
    if (qword_280B45378 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v56 = sub_23B50CDF4();
    __swift_project_value_buffer(v56, qword_280B4E9F0);

    v57 = sub_23B50CDD4();
    v58 = sub_23B50D4C4();

    v59 = os_log_type_enabled(v57, v58);
    a5 = v107;
    if (v59)
    {
      v60 = v52;
      v61 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v61 = 141558787;
      *(v61 + 4) = 1752392040;
      *(v61 + 14) = OUTLINED_FUNCTION_3_10();
      *(v61 + 22) = 2160;
      *(v61 + 24) = 1752392040;
      *(v61 + 32) = v54;
      *(v61 + 34) = sub_23B391F1C(v60, v53, &v112);
      _os_log_impl(&dword_23B38D000, v57, v58, "No reverse geocode result found for key: %{private,mask.hash}s, configuredCountryCode: %{private,mask.hash}s", v61, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    goto LABEL_8;
  }

  v111 = v116;
  v65 = v117;
  v66 = v118;
  v67 = v119;
  v68 = v104;
  sub_23B50CF54();
  v69 = v98;
  result = __swift_getEnumTagSinglePayload(v68, 1, v98);
  if (result == 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_23B50B9D4();
  v70 = v103;
  sub_23B50B994();
  v71 = sub_23B50ACA4();
  v72 = *(v105 + 8);
  v72(v70, v69);
  v110 = v72;
  v72(v68, v69);
  if (v71)
  {
    v73 = v102;
    sub_23B50CF54();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322D0, &qword_23B510460);
    result = __swift_getEnumTagSinglePayload(v73, 1, v74);
    if (result != 1)
    {
      a5 = v107;
      sub_23B50CEC4();

      v75 = *(*(v74 - 8) + 8);
      v76 = OUTLINED_FUNCTION_31();
      v77(v76);
      v62 = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  if (qword_280B45378 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v78 = sub_23B50CDF4();
  __swift_project_value_buffer(v78, qword_280B4E9F0);

  v79 = sub_23B50CDD4();
  v80 = v67;
  v81 = v66;
  v82 = sub_23B50D4C4();

  if (!os_log_type_enabled(v79, v82))
  {

    goto LABEL_21;
  }

  v103 = v79;
  v83 = swift_slowAlloc();
  v102 = swift_slowAlloc();
  v112 = v102;
  *v83 = 141559043;
  *(v83 + 4) = 1752392040;
  v84 = v65;
  *(v83 + 14) = OUTLINED_FUNCTION_3_10();
  *(v83 + 22) = 2160;
  *(v83 + 24) = 1752392040;
  *(v83 + 32) = v65;
  v116 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322C0, &qword_23B51DB90);
  sub_23B3F1C50(&qword_27E1322C8, &qword_27E1322C0, &qword_23B51DB90);
  v85 = sub_23B50D824();
  v87 = sub_23B391F1C(v85, v86, &v112);

  *(v83 + 34) = v87;
  *(v83 + 42) = 2082;
  v88 = v101;
  sub_23B50CF54();
  v89 = v98;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88, 1, v98);
  v104 = v80;

  v108 = v81;

  v109 = v84;

  if (EnumTagSinglePayload != 1)
  {
    v91 = v100;
    (*(v105 + 32))(v100, v88, v89);
    sub_23B3FFF7C(&qword_280B42B40, MEMORY[0x277CC9578]);
    v92 = sub_23B50D824();
    v94 = v93;
    (v110)(v91, v89);
    v95 = sub_23B391F1C(v92, v94, &v112);

    *(v83 + 44) = v95;
    v96 = v103;
    _os_log_impl(&dword_23B38D000, v103, v82, "ReverseGeocodeResult expired. id=%{private,mask.hash}s, result=%{private,mask.hash}s, expires=%{public}s", v83, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

LABEL_21:
    GeocodeStore.purgeExpiredReverseGeocodeResults()();

    v62 = 1;
    a5 = v107;
    goto LABEL_9;
  }

LABEL_24:
  __break(1u);
  return result;
}

Swift::Void __swiftcall GeocodeStore.purgeExpiredReverseGeocodeResults()()
{
  v1 = sub_23B50CE64();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = sub_23B50AD24();
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  v18 = v17 - v16;
  v19 = *(v0 + 16);
  sub_23B50B014();
  if (v28[0])
  {
    sub_23B50B9D4();
    sub_23B50B994();
    sub_23B50CF34();
    v28[3] = v10;
    v28[4] = MEMORY[0x277D6C828];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
    (*(v13 + 16))(boxed_opaque_existential_0, v18, v10);
    sub_23B50CEA4();
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_23B50CF84();
    (*(v4 + 8))(v9, v1);

    if (qword_280B45378 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v21 = sub_23B50CDF4();
    __swift_project_value_buffer(v21, qword_280B4E9F0);
    v22 = sub_23B50CDD4();
    v23 = sub_23B50D4C4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23B38D000, v22, v23, "Successfully purged expired reverse geocode results", v24, 2u);
      OUTLINED_FUNCTION_38();
    }

    v25 = *(v13 + 8);
    v26 = OUTLINED_FUNCTION_31();
    v27(v26);
  }
}

uint64_t GeocodeStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t GeocodeStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23B3FF8F4()
{
  v0 = sub_23B50CDF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23B50D014();
  __swift_allocate_value_buffer(v5, qword_280B4E9A0);
  __swift_project_value_buffer(v5, qword_280B4E9A0);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280B4E9D8);
  (*(v1 + 16))(v4, v6, v0);
  sub_23B50CFF4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static GeocodeStore.locationPath.getter()
{
  if (qword_280B43218 != -1)
  {
    swift_once();
  }

  v0 = sub_23B50D014();
  __swift_project_value_buffer(v0, qword_280B4E9A0);
  return sub_23B50D004();
}

uint64_t sub_23B3FFAD4()
{
  v29 = sub_23B50CFD4();
  v27 = *(v29 - 8);
  v0 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23B50CFA4();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v26 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23B50D024();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_23B50CFB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23B50CE84();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_23B50D014();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = sub_23B50D034();
  if (qword_280B43218 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_280B4E9A0);
  (*(v17 + 16))(v20, v21, v16);
  sub_23B50CE74();
  (*(v10 + 104))(v13, *MEMORY[0x277D6C950], v9);
  *v8 = 32;
  (*(v5 + 104))(v8, *MEMORY[0x277D6C978], v24);
  (*(v2 + 104))(v26, *MEMORY[0x277D6C940], v25);
  (*(v27 + 104))(v28, *MEMORY[0x277D6C958], v29);
  v30 = 0;
  result = sub_23B50CFC4();
  qword_280B43228 = result;
  return result;
}

uint64_t sub_23B3FFF14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322B0, &qword_23B510450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B3FFF7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B3FFFF0()
{
  result = qword_280B43148;
  if (!qword_280B43148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43148);
  }

  return result;
}

uint64_t AirPollutantCategory.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AirPollutantCategory.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

WeatherKit::AirPollutantCategory __swiftcall AirPollutantCategory.init(description:number:)(Swift::String description, Swift::Int number)
{
  *v2 = description;
  v2[1]._countAndFlagsBits = number;
  result.description = description;
  result.number = number;
  return result;
}

uint64_t sub_23B400108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23B4001D0(char a1)
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](a1 & 1);
  return sub_23B50D914();
}

uint64_t sub_23B400218(char a1)
{
  if (a1)
  {
    return 0x7265626D756ELL;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_23B400264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B400108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B40028C(uint64_t a1)
{
  v2 = sub_23B4004D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4002C8(uint64_t a1)
{
  v2 = sub_23B4004D0();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static AirPollutantCategory.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_23B50D834();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t AirPollutantCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322D8, &qword_23B5104A0);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v16[0] = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4004D0();
  sub_23B50D974();
  v18 = 0;
  v14 = v16[1];
  sub_23B50D7A4();
  if (!v14)
  {
    v17 = 1;
    sub_23B50D7E4();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B4004D0()
{
  result = qword_27E1322E0;
  if (!qword_27E1322E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1322E0);
  }

  return result;
}

uint64_t AirPollutantCategory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322E8, &qword_23B5104A8);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4004D0();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_23B50D6E4();
  v12 = v11;
  v13 = sub_23B50D724();
  v14 = OUTLINED_FUNCTION_0_10();
  v15(v14);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23B40070C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23B40074C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirPollutantCategory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B40087C()
{
  result = qword_27E1322F0;
  if (!qword_27E1322F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1322F0);
  }

  return result;
}

unint64_t sub_23B4008D4()
{
  result = qword_27E1322F8;
  if (!qword_27E1322F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1322F8);
  }

  return result;
}

unint64_t sub_23B40092C()
{
  result = qword_27E132300;
  if (!qword_27E132300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132300);
  }

  return result;
}

WeatherKit::ArticlePlacementLocation_optional __swiftcall ArticlePlacementLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ArticlePlacementLocation.rawValue.getter()
{
  result = 0x6B694C736C656566;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      return 0x79746964696D7568;
    case 3:
      v2 = 1852796781;
      goto LABEL_9;
    case 4:
    case 8:
      return 0xD000000000000013;
    case 5:
      v3 = 11;
      goto LABEL_12;
    case 6:
      return 0x6572757373657270;
    case 7:
      return 0x657265766573;
    case 9:
      return 0xD000000000000011;
    case 0xA:
      return 0x646E657274;
    case 0xB:
      v3 = 9;
LABEL_12:
      result = v3 | 0xD000000000000010;
      break;
    case 0xC:
      result = 0x447865646E497675;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
      v2 = 1684957559;
LABEL_9:
      result = v2 | 0x6174654400000000;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_23B400B88()
{
  result = qword_27E132308;
  if (!qword_27E132308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132308);
  }

  return result;
}

uint64_t sub_23B400C00@<X0>(uint64_t *a1@<X8>)
{
  result = ArticlePlacementLocation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ArticlePlacementLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ArticlePlacementLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B400E38()
{
  result = qword_27E132310;
  if (!qword_27E132310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132310);
  }

  return result;
}

uint64_t WeatherImportance.description.getter()
{
  if (!*v0)
  {
    if (qword_280B43260 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (*v0 != 1)
  {
    if (qword_280B43260 == -1)
    {
LABEL_8:
      OUTLINED_FUNCTION_1_6();
      goto LABEL_9;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_11();
    goto LABEL_8;
  }

  if (qword_280B43260 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

LABEL_9:
  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

WeatherKit::WeatherImportance_optional __swiftcall WeatherImportance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherImportance.rawValue.getter()
{
  v1 = 7827308;
  if (*v0 != 1)
  {
    v1 = 0x6C616D726F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1751607656;
  }
}

uint64_t sub_23B401060@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherImportance.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23B40114C()
{
  result = qword_27E132318;
  if (!qword_27E132318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132318);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherImportance(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B40127C()
{
  result = qword_27E132320;
  if (!qword_27E132320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132320);
  }

  return result;
}

uint64_t sub_23B401330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23B401400(char a1)
{
  if (a1)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_23B401444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B401330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B40146C(uint64_t a1)
{
  v2 = sub_23B401674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4014A8(uint64_t a1)
{
  v2 = sub_23B401674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Coordinate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132328, &qword_23B510920);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16[-v10];
  v13 = *v1;
  v12 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B401674();
  sub_23B50D974();
  v16[15] = 0;
  sub_23B50D7C4();
  if (!v2)
  {
    v16[14] = 1;
    sub_23B50D7C4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_23B401674()
{
  result = qword_27E132330;
  if (!qword_27E132330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132330);
  }

  return result;
}

uint64_t Coordinate.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132338, &qword_23B510928);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B401674();
  sub_23B50D964();
  if (!v2)
  {
    v21 = 0;
    sub_23B50D704();
    v15 = v14;
    v20 = 1;
    sub_23B50D704();
    v17 = v16;
    (*(v8 + 8))(v12, v5);
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Coordinate.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x23EE9DB70](*&v3);
}

uint64_t Coordinate.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B50D8C4();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x23EE9DB70](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x23EE9DB70](*&v4);
  return sub_23B50D914();
}

uint64_t sub_23B401968()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B50D8C4();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x23EE9DB70](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x23EE9DB70](*&v4);
  return sub_23B50D914();
}

unint64_t sub_23B4019E0()
{
  result = qword_27E132340;
  if (!qword_27E132340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132340);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Coordinate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B401B24()
{
  result = qword_27E132348;
  if (!qword_27E132348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132348);
  }

  return result;
}

unint64_t sub_23B401B7C()
{
  result = qword_27E132350;
  if (!qword_27E132350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132350);
  }

  return result;
}

unint64_t sub_23B401BD4()
{
  result = qword_27E132358;
  if (!qword_27E132358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132358);
  }

  return result;
}

uint64_t WDSEndpoint.init(url:portOverrideProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23B50AB34();
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 32))(a4, a1);
  result = type metadata accessor for WDSEndpoint();
  v11 = (a4 + *(result + 20));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t sub_23B401CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WDSEndpoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B401D08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B401D18(uint64_t a1)
{
  v2 = type metadata accessor for WDSEndpoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B401D74()
{
  result = qword_27E132368;
  if (!qword_27E132368)
  {
    sub_23B50AB34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132368);
  }

  return result;
}

uint64_t NextHourMinute.init(startDate:precipitationChance:precipitationIntensity:perceivedIntensity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v11);
  (*(v12 + 32))(a4, a1);
  HourMinute = type metadata accessor for NextHourMinute();
  *(a4 + HourMinute[5]) = a5;
  v14 = HourMinute[6];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v15);
  result = (*(v16 + 32))(a4 + v14, a2);
  v18 = a4 + HourMinute[7];
  *v18 = v9;
  *(v18 + 8) = v10;
  return result;
}

uint64_t type metadata accessor for NextHourMinute()
{
  result = qword_27E132398;
  if (!qword_27E132398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NextHourMinute.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t NextHourMinute.startDate.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t NextHourMinute.precipitationChance.setter(double a1)
{
  result = type metadata accessor for NextHourMinute();
  *(v1 + *(result + 20)) = a1;
  return result;
}

double (*NextHourMinute.precipitationChance.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for NextHourMinute() + 20);
  return GEOLocationCoordinate2DMake;
}

uint64_t NextHourMinute.precipitationIntensity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NextHourMinute() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t NextHourMinute.precipitationIntensity.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for NextHourMinute() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

double (*NextHourMinute.precipitationIntensity.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for NextHourMinute() + 24);
  return GEOLocationCoordinate2DMake;
}

double NextHourMinute.perceivedIntensity.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NextHourMinute() + 28);
  result = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t NextHourMinute.perceivedIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for NextHourMinute();
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

double (*NextHourMinute.perceivedIntensity.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for NextHourMinute() + 28);
  return GEOLocationCoordinate2DMake;
}

uint64_t sub_23B40227C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x800000023B528C20 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x800000023B529C20 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_23B50D834();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_23B4023E8(char a1)
{
  result = 0x7461447472617473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B40248C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B40227C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4024B4(uint64_t a1)
{
  v2 = sub_23B402D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4024F0(uint64_t a1)
{
  v2 = sub_23B402D00();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static NextHourMinute.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  HourMinute = type metadata accessor for NextHourMinute();
  if (*(a1 + *(HourMinute + 20)) != *(a2 + *(HourMinute + 20)))
  {
    return 0;
  }

  v5 = HourMinute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v6 = *(v5 + 24);
  sub_23B3E9FE0(&qword_280B42F10);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 28);
  v8 = a1 + v7;
  v9 = *(a1 + v7);
  v10 = a2 + v7;
  return v9 == *v10 && (sub_23B3E71A0(*(v8 + 8), *(v10 + 8)) & 1) != 0;
}

uint64_t NextHourMinute.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132370, &qword_23B510B60);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B402D00();
  sub_23B50D974();
  v25 = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50);
  OUTLINED_FUNCTION_5_2();
  sub_23B50D7F4();
  if (!v2)
  {
    HourMinute = type metadata accessor for NextHourMinute();
    v15 = *(v3 + HourMinute[5]);
    v24 = 1;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7C4();
    v16 = HourMinute[6];
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    sub_23B3E9FE0(&qword_280B42BE8);
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    v17 = (v3 + HourMinute[7]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    v21 = v18;
    v22 = v17;
    v20[15] = 3;
    sub_23B402D54();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t NextHourMinute.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v3 = OUTLINED_FUNCTION_5(v44);
  v42 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v40 - v7;
  v9 = sub_23B50AD24();
  v10 = OUTLINED_FUNCTION_5(v9);
  v43 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132388, &qword_23B510B68);
  v15 = OUTLINED_FUNCTION_5(v48);
  v45 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  HourMinute = type metadata accessor for NextHourMinute();
  v22 = OUTLINED_FUNCTION_6(HourMinute);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B402D00();
  v47 = v20;
  v28 = v49;
  sub_23B50D964();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v26;
  v31 = v43;
  v30 = v44;
  v55 = 0;
  sub_23B402DA8(&qword_27E132008);
  sub_23B50D734();
  v32 = *(v31 + 32);
  v49 = v9;
  v32(v29, v46);
  v54 = 1;
  sub_23B50D704();
  *(v29 + *(HourMinute + 20)) = v33;
  v53 = 2;
  sub_23B3E9FE0(&qword_27E132018);
  sub_23B50D734();
  v34 = *(HourMinute + 24);
  v46 = HourMinute;
  (*(v42 + 32))(v29 + v34, v8, v30);
  v52 = 3;
  sub_23B402DEC();
  sub_23B50D734();
  v35 = OUTLINED_FUNCTION_3_6();
  v36(v35);
  v37 = v51;
  v38 = v29 + *(v46 + 7);
  *v38 = v50;
  *(v38 + 8) = v37;
  sub_23B402E40(v29, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B402EA4(v29);
}

unint64_t sub_23B402D00()
{
  result = qword_27E132378;
  if (!qword_27E132378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132378);
  }

  return result;
}

unint64_t sub_23B402D54()
{
  result = qword_27E132380;
  if (!qword_27E132380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132380);
  }

  return result;
}

uint64_t sub_23B402DA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23B50AD24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B402DEC()
{
  result = qword_27E132390;
  if (!qword_27E132390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132390);
  }

  return result;
}

uint64_t sub_23B402E40(uint64_t a1, uint64_t a2)
{
  HourMinute = type metadata accessor for NextHourMinute();
  (*(*(HourMinute - 8) + 16))(a2, a1, HourMinute);
  return a2;
}

uint64_t sub_23B402EA4(uint64_t a1)
{
  HourMinute = type metadata accessor for NextHourMinute();
  (*(*(HourMinute - 8) + 8))(a1, HourMinute);
  return a1;
}

void sub_23B402F28()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B39A5F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NextHourMinute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B40309C()
{
  result = qword_27E1323A8;
  if (!qword_27E1323A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323A8);
  }

  return result;
}

unint64_t sub_23B4030F4()
{
  result = qword_27E1323B0;
  if (!qword_27E1323B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323B0);
  }

  return result;
}

unint64_t sub_23B40314C()
{
  result = qword_27E1323B8;
  if (!qword_27E1323B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323B8);
  }

  return result;
}

uint64_t PrecipitationAmountByType.init(hail:mixed:rainfall:sleet:precipitation:snowfallAmount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v14);
  v16 = *(v15 + 32);
  v16(a7, a1, v14);
  v17 = type metadata accessor for PrecipitationAmountByType();
  v16(a7 + v17[5], a2, v14);
  v16(a7 + v17[6], a3, v14);
  v16(a7 + v17[7], a4, v14);
  v16(a7 + v17[8], a5, v14);
  v18 = a7 + v17[9];

  return sub_23B4032D4(a6, v18);
}

uint64_t sub_23B4032D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnowfallAmount();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PrecipitationAmountByType.hail.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t PrecipitationAmountByType.hail.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t PrecipitationAmountByType.mixed.getter()
{
  v0 = *(OUTLINED_FUNCTION_12_5() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t PrecipitationAmountByType.mixed.setter()
{
  v0 = *(OUTLINED_FUNCTION_9_6() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t PrecipitationAmountByType.rainfall.getter()
{
  v0 = *(OUTLINED_FUNCTION_12_5() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t PrecipitationAmountByType.rainfall.setter()
{
  v0 = *(OUTLINED_FUNCTION_9_6() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t PrecipitationAmountByType.sleet.getter()
{
  v0 = *(OUTLINED_FUNCTION_12_5() + 28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t PrecipitationAmountByType.sleet.setter()
{
  v0 = *(OUTLINED_FUNCTION_9_6() + 28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t PrecipitationAmountByType.precipitation.setter()
{
  v0 = *(OUTLINED_FUNCTION_9_6() + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t PrecipitationAmountByType.snowfallAmount.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_6() + 36);

  return sub_23B40387C(v0, v2);
}

uint64_t sub_23B40387C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnowfallAmount();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static PrecipitationAmountByType.== infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BC0);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for PrecipitationAmountByType();
  v1 = v0[5];
  if ((OUTLINED_FUNCTION_4_2() & 1) == 0)
  {
    return 0;
  }

  v2 = v0[6];
  if ((OUTLINED_FUNCTION_4_2() & 1) == 0)
  {
    return 0;
  }

  v3 = v0[7];
  if ((OUTLINED_FUNCTION_4_2() & 1) == 0)
  {
    return 0;
  }

  v4 = v0[8];
  if ((OUTLINED_FUNCTION_4_2() & 1) == 0)
  {
    return 0;
  }

  v5 = v0[9];

  return static SnowfallAmount.== infix(_:_:)();
}

uint64_t sub_23B403A14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1818845544 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646578696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6C61666E696172 && a2 == 0xE800000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465656C73 && a2 == 0xE500000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41)
          {

            return 5;
          }

          else
          {
            v11 = sub_23B50D834();

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

uint64_t sub_23B403C04(char a1)
{
  result = 1818845544;
  switch(a1)
  {
    case 1:
      result = 0x646578696DLL;
      break;
    case 2:
      result = 0x6C6C61666E696172;
      break;
    case 3:
      result = 0x7465656C73;
      break;
    case 4:
      result = 0x7469706963657270;
      break;
    case 5:
      result = 0x6C6C6166776F6E73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B403CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B403A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B403CF0(uint64_t a1)
{
  v2 = sub_23B4047F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B403D2C(uint64_t a1)
{
  v2 = sub_23B4047F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrecipitationAmountByType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1323C0, &qword_23B510D38);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4047F4();
  sub_23B50D974();
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BD0);
  OUTLINED_FUNCTION_2_13();
  if (!v1)
  {
    v12 = type metadata accessor for PrecipitationAmountByType();
    v13 = v12[5];
    v26 = 1;
    OUTLINED_FUNCTION_2_13();
    v14 = v12[6];
    v25 = 2;
    OUTLINED_FUNCTION_2_13();
    v15 = v12[7];
    v24 = 3;
    OUTLINED_FUNCTION_2_13();
    v16 = v12[8];
    v23 = 4;
    OUTLINED_FUNCTION_2_13();
    v17 = v12[9];
    v22 = 5;
    type metadata accessor for SnowfallAmount();
    OUTLINED_FUNCTION_3_11();
    sub_23B4048EC(v18, v19);
    sub_23B50D7F4();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t PrecipitationAmountByType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = type metadata accessor for SnowfallAmount();
  v3 = OUTLINED_FUNCTION_6(v51);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v52 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v8 = OUTLINED_FUNCTION_5(v7);
  v60 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v53 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v49 - v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v56 = v49 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1323D8, &qword_23B510D40);
  v21 = OUTLINED_FUNCTION_5(v20);
  v54 = v22;
  v55 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = v49 - v25;
  v57 = type metadata accessor for PrecipitationAmountByType();
  v27 = OUTLINED_FUNCTION_6(v57);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  v61 = v30;
  v32 = a1[3];
  v31 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_23B4047F4();
  v33 = v58;
  sub_23B50D964();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v58 = v15;
  v67 = 0;
  v34 = sub_23B3E38E8(&qword_27E131E60);
  OUTLINED_FUNCTION_8_4();
  sub_23B50D734();
  v35 = v56;
  v56 = *(v60 + 32);
  (v56)(v61, v35, v7);
  v66 = 1;
  OUTLINED_FUNCTION_8_4();
  v49[1] = v34;
  sub_23B50D734();
  v36 = v57;
  v37 = v57[5];
  OUTLINED_FUNCTION_10_6();
  v38();
  v65 = 2;
  OUTLINED_FUNCTION_8_4();
  sub_23B50D734();
  v49[0] = v7;
  v39 = v36[6];
  OUTLINED_FUNCTION_10_6();
  v40();
  v64 = 3;
  OUTLINED_FUNCTION_8_4();
  sub_23B50D734();
  v41 = v36[7];
  v42 = v61;
  OUTLINED_FUNCTION_10_6();
  v43();
  v63 = 4;
  v44 = v53;
  sub_23B50D734();
  (v56)(v42 + v57[8], v44, v7);
  v62 = 5;
  OUTLINED_FUNCTION_3_11();
  sub_23B4048EC(v45, v46);
  v47 = v52;
  sub_23B50D734();
  (*(v54 + 8))(v26, v55);
  sub_23B4032D4(v47, v42 + v57[9]);
  sub_23B3CA480(v42, v50, type metadata accessor for PrecipitationAmountByType);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_23B404848(v42);
}

uint64_t PrecipitationAmountByType.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BC8);
  sub_23B50D0E4();
  v2 = type metadata accessor for PrecipitationAmountByType();
  v3 = v0 + v2[5];
  sub_23B50D0E4();
  v4 = v2[6];
  OUTLINED_FUNCTION_1_7();
  v5 = v2[7];
  OUTLINED_FUNCTION_1_7();
  v6 = v2[8];
  OUTLINED_FUNCTION_1_7();
  v7 = v1 + v2[9];
  sub_23B50D0E4();
  v8 = type metadata accessor for SnowfallAmount();
  v9 = v8[5];
  OUTLINED_FUNCTION_1_7();
  v10 = v8[6];
  OUTLINED_FUNCTION_1_7();
  v11 = v8[7];
  OUTLINED_FUNCTION_1_7();
  v12 = v8[8];
  OUTLINED_FUNCTION_1_7();
  v13 = v8[9];
  return OUTLINED_FUNCTION_1_7();
}

uint64_t PrecipitationAmountByType.hashValue.getter()
{
  sub_23B50D8C4();
  PrecipitationAmountByType.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B4047B8()
{
  sub_23B50D8C4();
  PrecipitationAmountByType.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B4047F4()
{
  result = qword_27E1323C8;
  if (!qword_27E1323C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323C8);
  }

  return result;
}

uint64_t sub_23B404848(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationAmountByType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4048EC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for PrecipitationAmountByType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B404A3C()
{
  result = qword_27E1323F0;
  if (!qword_27E1323F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323F0);
  }

  return result;
}

unint64_t sub_23B404A94()
{
  result = qword_27E1323F8;
  if (!qword_27E1323F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323F8);
  }

  return result;
}

unint64_t sub_23B404AEC()
{
  result = qword_27E132400;
  if (!qword_27E132400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132400);
  }

  return result;
}

uint64_t WeatherServiceDailyRelativeRange.RelativeTo.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_23B50D664();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_23B404BB4()
{
  result = qword_27E132408;
  if (!qword_27E132408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132408);
  }

  return result;
}

uint64_t sub_23B404C14@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WeatherServiceDailyRelativeRange.RelativeTo.init(rawValue:)(a1);
}

uint64_t getEnumTagSinglePayload for WeatherServiceDailyRelativeRange.RelativeTo(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceDailyRelativeRange.RelativeTo(_BYTE *result, int a2, int a3)
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

unint64_t sub_23B404E00()
{
  result = qword_27E132410;
  if (!qword_27E132410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132410);
  }

  return result;
}

uint64_t sub_23B404ECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23B404F90(char a1)
{
  if (a1)
  {
    return 0x79726F6765746163;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_23B404FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B404ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B404FF4(uint64_t a1)
{
  v2 = sub_23B405404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B405030(uint64_t a1)
{
  v2 = sub_23B405404();

  return MEMORY[0x2821FE720](a1, v2);
}

double ApparentPrecipitationIntensityCategory.rangeValue.getter()
{
  v1 = *v0;
  result = dbl_23B511440[v1];
  v3 = qword_23B511458[v1];
  return result;
}

WeatherKit::ApparentPrecipitationIntensityCategory_optional __swiftcall ApparentPrecipitationIntensityCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ApparentPrecipitationIntensityCategory.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7976616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_23B405174@<X0>(uint64_t *a1@<X8>)
{
  result = ApparentPrecipitationIntensityCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static ApparentPrecipitationIntensity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_23B3E71A0(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t ApparentPrecipitationIntensity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132418, &qword_23B5110B0);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16[-v10];
  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B405404();
  sub_23B50D974();
  v16[15] = 0;
  sub_23B50D7C4();
  if (!v2)
  {
    v16[14] = v13;
    v16[13] = 1;
    sub_23B405458();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_23B405404()
{
  result = qword_27E132420;
  if (!qword_27E132420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132420);
  }

  return result;
}

unint64_t sub_23B405458()
{
  result = qword_27E132428;
  if (!qword_27E132428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132428);
  }

  return result;
}

uint64_t ApparentPrecipitationIntensity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132430, &qword_23B5110B8);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B405404();
  sub_23B50D964();
  if (!v2)
  {
    v18[15] = 0;
    sub_23B50D704();
    v15 = v14;
    v18[13] = 1;
    sub_23B405668();
    sub_23B50D734();
    (*(v8 + 8))(v12, v5);
    v16 = v18[14];
    *a2 = v15;
    *(a2 + 8) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23B405668()
{
  result = qword_27E132438;
  if (!qword_27E132438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132438);
  }

  return result;
}

uint64_t ApparentPrecipitationIntensity.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v1);
  OUTLINED_FUNCTION_0_12();
  sub_23B50D1C4();
}

uint64_t ApparentPrecipitationIntensity.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23B50D8C4();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x23EE9DB70](*&v3);
  OUTLINED_FUNCTION_0_12();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B405838()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23B50D8C4();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x23EE9DB70](*&v3);
  sub_23B50D1C4();

  return sub_23B50D914();
}

unint64_t sub_23B4058F4()
{
  result = qword_27E132440;
  if (!qword_27E132440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132440);
  }

  return result;
}

unint64_t sub_23B40594C()
{
  result = qword_27E132448;
  if (!qword_27E132448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132450, &qword_23B5111B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132448);
  }

  return result;
}

unint64_t sub_23B4059B4()
{
  result = qword_27E132458;
  if (!qword_27E132458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132458);
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

uint64_t getEnumTagSinglePayload for ApparentPrecipitationIntensity(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ApparentPrecipitationIntensity(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ApparentPrecipitationIntensityCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ApparentPrecipitationIntensity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B405C58()
{
  result = qword_27E132460;
  if (!qword_27E132460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132460);
  }

  return result;
}

unint64_t sub_23B405CB0()
{
  result = qword_27E132468;
  if (!qword_27E132468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132468);
  }

  return result;
}

unint64_t sub_23B405D08()
{
  result = qword_27E132470;
  if (!qword_27E132470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132470);
  }

  return result;
}

unint64_t sub_23B405D5C()
{
  result = qword_27E132478;
  if (!qword_27E132478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132478);
  }

  return result;
}

uint64_t Trend.init(baseline:currentValue:deviation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for TrendBaseline();
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 32))(a4, a1);
  v10 = type metadata accessor for Trend();
  v11 = *(v10 + 28);
  v12 = sub_23B50A9E4();
  OUTLINED_FUNCTION_6(v12);
  result = (*(v13 + 32))(a4 + v11, a2);
  *(a4 + *(v10 + 32)) = v7;
  return result;
}

uint64_t Trend.baseline.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for TrendBaseline();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2, v6);
}

uint64_t Trend.baseline.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for TrendBaseline();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 40);

  return v8(v2, a1, v6);
}

uint64_t Trend.currentValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 16);
  v6 = sub_23B50A9E4();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 16);

  return v9(a2, v2 + v4, v7);
}

uint64_t Trend.currentValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = *(a2 + 16);
  v6 = sub_23B50A9E4();
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 40);

  return v8(v2 + v4, a1);
}

BOOL static Trend.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static TrendBaseline.== infix(_:_:)() & 1) != 0 && (OUTLINED_FUNCTION_6_3(), sub_23B50A9E4(), OUTLINED_FUNCTION_6_3(), v4 = type metadata accessor for Trend(), v5 = *(v4 + 28), swift_getWitnessTable(), (sub_23B50D134()))
  {
    return *(a1 + *(v4 + 32)) == *(a2 + *(v4 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B40614C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C65736162 && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x56746E6572727563 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F69746169766564 && a2 == 0xE90000000000006ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B406268(char a1)
{
  if (!a1)
  {
    return 0x656E696C65736162;
  }

  if (a1 == 1)
  {
    return 0x56746E6572727563;
  }

  return 0x6F69746169766564;
}

uint64_t sub_23B4062F4(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  v4 = *(a2 + 16);
  sub_23B3DE0C0(v6, *v2);
  return sub_23B50D914();
}

uint64_t sub_23B406348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_23B40614C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23B406374(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  return sub_23B3DEE7C();
}

uint64_t sub_23B406398@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_23B3E64C0();
  *a2 = result;
  return result;
}

uint64_t sub_23B4063C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B406418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Trend.encode(to:)(void *a1, uint64_t a2)
{
  v19 = a2;
  v3 = *(a2 + 16);
  type metadata accessor for Trend.CodingKeys();
  OUTLINED_FUNCTION_2_14();
  swift_getWitnessTable();
  v4 = sub_23B50D804();
  OUTLINED_FUNCTION_5(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v20;
  sub_23B50D974();
  v25 = 0;
  type metadata accessor for TrendBaseline();
  swift_getWitnessTable();
  v14 = v21;
  sub_23B50D7F4();
  if (!v14)
  {
    v15 = v19;
    v16 = *(v19 + 28);
    v24 = 1;
    sub_23B50A9E4();
    swift_getWitnessTable();
    sub_23B50D7F4();
    v23 = *(v13 + *(v15 + 32));
    v22 = 2;
    sub_23B406CBC();
    sub_23B50D7F4();
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t Trend.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_23B50A9E4();
  v4 = OUTLINED_FUNCTION_5(v3);
  v47 = v5;
  v48 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v46 = &v40 - v9;
  OUTLINED_FUNCTION_6_3();
  v49 = type metadata accessor for TrendBaseline();
  OUTLINED_FUNCTION_5(v49);
  v44 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v50 = &v40 - v14;
  type metadata accessor for Trend.CodingKeys();
  OUTLINED_FUNCTION_2_14();
  swift_getWitnessTable();
  v51 = sub_23B50D754();
  OUTLINED_FUNCTION_5(v51);
  v45 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  OUTLINED_FUNCTION_6_3();
  v21 = type metadata accessor for Trend();
  OUTLINED_FUNCTION_5(v21);
  v42 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  v27 = &v40 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v20;
  v29 = v53;
  sub_23B50D964();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v45;
  v30 = v46;
  v41 = v27;
  v53 = a1;
  v33 = v47;
  v32 = v48;
  v57 = 0;
  v34 = v49;
  swift_getWitnessTable();
  sub_23B50D734();
  (*(v44 + 32))(v41, v50, v34);
  v56 = 1;
  swift_getWitnessTable();
  sub_23B50D734();
  v50 = v21;
  v35 = *(v21 + 28);
  v36 = v41;
  (*(v33 + 32))(&v41[v35], v30, v32);
  v54 = 2;
  sub_23B406D10();
  sub_23B50D734();
  (*(v31 + 8))(v52, v51);
  v37 = v50;
  v36[*(v50 + 8)] = v55;
  v38 = v42;
  (*(v42 + 16))(v43, v36, v37);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return (*(v38 + 8))(v36, v37);
}

uint64_t Trend.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  OUTLINED_FUNCTION_7_11();
  v7 = type metadata accessor for TrendBaseline();
  TrendBaseline.hash(into:)(a1, v7);
  v8 = *(a2 + 28);
  OUTLINED_FUNCTION_7_11();
  sub_23B50A9E4();
  swift_getWitnessTable();
  sub_23B50D0E4();
  return MEMORY[0x23EE9DB40](*(v3 + *(a2 + 32)));
}

uint64_t Trend.hashValue.getter(uint64_t a1)
{
  sub_23B50D8C4();
  Trend.hash(into:)(v3, a1);
  return sub_23B50D914();
}

uint64_t sub_23B406C60(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  Trend.hash(into:)(v4, a2);
  return sub_23B50D914();
}

unint64_t sub_23B406CBC()
{
  result = qword_27E132480;
  if (!qword_27E132480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132480);
  }

  return result;
}

unint64_t sub_23B406D10()
{
  result = qword_27E132488[0];
  if (!qword_27E132488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E132488);
  }

  return result;
}

_BYTE *sub_23B406DA8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t HistoricalComparisons.init(comparisons:metadata:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v2 = *(type metadata accessor for HistoricalComparisons() + 20);
  OUTLINED_FUNCTION_10_7();
  return sub_23B40939C();
}

uint64_t HistoricalComparisons.comparisons.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t HistoricalComparisons.metadata.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = v1 + *(type metadata accessor for HistoricalComparisons() + 20);

  return sub_23B407020(v0, v2);
}

uint64_t sub_23B407020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMetadata();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double (*HistoricalComparisons.metadata.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HistoricalComparisons() + 20);
  return GEOLocationCoordinate2DMake;
}

unint64_t HistoricalComparisons.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *v1;
    if (*(v2 + 16) > result)
    {
      v3 = type metadata accessor for HistoricalComparison();
      OUTLINED_FUNCTION_28_0(v3);
      v5 = v4;
      v7 = v6;
      v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v9 = *(v7 + 72);
      OUTLINED_FUNCTION_5_7();
      return sub_23B40A6B8();
    }
  }

  __break(1u);
  return result;
}

BOOL static HistoricalComparisons.== infix(_:_:)()
{
  OUTLINED_FUNCTION_220();
  v3 = *v2;
  v5 = *v4;
  sub_23B3DFDE8();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for HistoricalComparisons() + 20);

  return static WeatherMetadata.== infix(_:_:)(v1 + v7, v0 + v7);
}

uint64_t sub_23B4071E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73697261706D6F63 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23B4072B4(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x73697261706D6F63;
  }
}

uint64_t sub_23B4072FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4071E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B407324(uint64_t a1)
{
  v2 = sub_23B407F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B407360(uint64_t a1)
{
  v2 = sub_23B407F04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HistoricalComparisons.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132510, &qword_23B511690);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B407F04();
  sub_23B50D974();
  v18 = *v3;
  v17[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132520, &qword_23B511698);
  sub_23B407F58(&unk_27E132528);
  OUTLINED_FUNCTION_40();
  if (!v2)
  {
    v14 = *(type metadata accessor for HistoricalComparisons() + 20);
    v17[6] = 1;
    type metadata accessor for WeatherMetadata();
    OUTLINED_FUNCTION_11_4();
    sub_23B40A0F0(v15);
    OUTLINED_FUNCTION_40();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t HistoricalComparisons.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = type metadata accessor for WeatherMetadata();
  v4 = OUTLINED_FUNCTION_6(v31);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132538, &qword_23B5116A0);
  OUTLINED_FUNCTION_5(v32);
  v30 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for HistoricalComparisons();
  v14 = OUTLINED_FUNCTION_6(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v19 = (v18 - v17);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B407F04();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = a1;
  v21 = v19;
  v22 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132520, &qword_23B511698);
  v34 = 0;
  sub_23B407F58(&unk_27E132540);
  v23 = v32;
  sub_23B50D734();
  v27[0] = v21;
  v27[1] = v35;
  *v21 = v35;
  v33 = 1;
  OUTLINED_FUNCTION_11_4();
  sub_23B40A0F0(v24);
  sub_23B50D734();
  (*(v22 + 8))(v12, v23);
  v25 = *(v13 + 20);
  OUTLINED_FUNCTION_10_7();
  sub_23B40939C();
  sub_23B40A6B8();
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_23B40A714();
}

uint64_t sub_23B4078D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B410C20(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_23B4078FC(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_23B3D2640(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23B407950@<X0>(uint64_t *a1@<X8>)
{
  result = HistoricalComparisons.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_23B407978(void **a1, unint64_t *a2))(void **a1)
{
  v4 = type metadata accessor for HistoricalComparison();
  *a1 = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  HistoricalComparisons.subscript.getter(*a2);
  return sub_23B4079F8;
}

void sub_23B4079F8(void **a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_3_12();
  sub_23B40A714();

  free(v1);
}

uint64_t sub_23B407A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B412A68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23B407AA8@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_23B412A5C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B407AD4(uint64_t *a1)
{
  v3 = *a1;
  result = sub_23B3D2640(*v1);
  if (v3 < 0 || v3 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }

  return result;
}

uint64_t sub_23B407B20@<X0>(uint64_t a1@<X8>)
{
  sub_23B40939C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1325C0, &qword_23B5118C0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

BOOL HistoricalComparisons.hasDeviationsFromTrend.getter()
{
  v1 = type metadata accessor for HistoricalComparison();
  v2 = OUTLINED_FUNCTION_28_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  HistoricalComparisons.hasValidData.getter();
  if ((v7 & 1) != 0 && *(*v0 + 16))
  {
    v8 = *(v4 + 80);
    OUTLINED_FUNCTION_5_7();
    sub_23B40A6B8();
    v9 = HistoricalComparison.isDeviatingFromTrend.getter();
    OUTLINED_FUNCTION_3_12();
    sub_23B40A714();
  }

  else
  {
    return 0;
  }

  return v9;
}

void HistoricalComparisons.hasValidData.getter()
{
  OUTLINED_FUNCTION_21();
  v1 = type metadata accessor for HistoricalComparison();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  v7 = *v0;
  v8 = *(*v0 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
LABEL_3:
    v11 = v9;
    while (2)
    {
      if (v11 < *(v7 + 16))
      {
        v12 = v11 + 1;
        v13 = *(v4 + 72);
        OUTLINED_FUNCTION_5_7();
        sub_23B40A6B8();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            OUTLINED_FUNCTION_3_12();
            sub_23B40A714();
            ++v11;
            if (v8 == v12)
            {
              goto LABEL_9;
            }

            continue;
          default:
            sub_23B40A714();
            v9 = v11 + 1;
            if (v8 - 1 == v11)
            {
              goto LABEL_9;
            }

            goto LABEL_3;
        }
      }

      break;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_20();
  }
}

void HistoricalComparisons.hash(into:)()
{
  v1 = *v0;
  sub_23B408824();
  v2 = v0 + *(type metadata accessor for HistoricalComparisons() + 20);
  WeatherMetadata.hash(into:)();
}

uint64_t HistoricalComparisons.hashValue.getter()
{
  sub_23B50D8C4();
  v1 = *v0;
  sub_23B408824();
  v2 = v0 + *(type metadata accessor for HistoricalComparisons() + 20);
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B407EB0(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  v4 = *v2;
  sub_23B408824();
  v5 = v2 + *(a2 + 20);
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B407F04()
{
  result = qword_27E132518;
  if (!qword_27E132518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132518);
  }

  return result;
}

unint64_t sub_23B407F58(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132520, &qword_23B511698);
    sub_23B40A0F0(v4);
    result = OUTLINED_FUNCTION_41();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_23B407FE0(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void sub_23B408004()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v39[2] = v9 - v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = v39 - v12;
  v14 = type metadata accessor for MinuteSummary();
  v15 = OUTLINED_FUNCTION_5(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  v22 = v21 - v20;
  v23 = *(v1 + 16);
  MEMORY[0x23EE9DB40](v23);
  if (v23)
  {
    v24 = v14[5];
    v43 = v14[6];
    v44 = v24;
    v25 = v14[7];
    v41 = v14[8];
    v42 = v25;
    v26 = (v22 + v14[9]);
    v27 = *(v17 + 80);
    OUTLINED_FUNCTION_52_0();
    v29 = v1 + v28;
    v40 = *(v17 + 72);
    v39[0] = v5 + 8;
    v39[1] = v5 + 32;
    do
    {
      sub_23B40A6B8();
      OUTLINED_FUNCTION_0_13();
      sub_23B40A0F0(&qword_280B42B48);
      sub_23B50D0E4();
      sub_23B3C7DF4(v22 + v44, v13);
      OUTLINED_FUNCTION_22_3(v13);
      if (v30)
      {
        OUTLINED_FUNCTION_83();
      }

      else
      {
        v31 = OUTLINED_FUNCTION_20_5();
        v32(v31, v13, v2);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_16_3();
        sub_23B50D0E4();
        v33 = OUTLINED_FUNCTION_20_5();
        v34(v33, v2);
      }

      switch(*(v22 + v43))
      {
        case 2:
          OUTLINED_FUNCTION_17_3();
          break;
        case 4:
          OUTLINED_FUNCTION_18_5();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_29_4();

      switch(*(v22 + v42))
      {
        case 2:
          OUTLINED_FUNCTION_17_3();
          break;
        case 4:
          OUTLINED_FUNCTION_18_5();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_29_4();

      v35 = OUTLINED_FUNCTION_7_12(*(v22 + v41));
      MEMORY[0x23EE9DB70](v35);
      v36 = *(v26 + 8);
      if (v36 == 3)
      {
        OUTLINED_FUNCTION_83();
      }

      else
      {
        v37 = *v26;
        OUTLINED_FUNCTION_84();
        if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }

        MEMORY[0x23EE9DB70](v38);
        if (!v36)
        {
          OUTLINED_FUNCTION_39_3();
        }

        OUTLINED_FUNCTION_29_4();
      }

      sub_23B40A714();
      v29 += v40;
      --v23;
    }

    while (v23);
  }

  OUTLINED_FUNCTION_26_3();
}

void sub_23B4083F0()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_5(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_12_0();
  v59 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v58 = &v51 - v11;
  MEMORY[0x28223BE20](v12);
  v57 = &v51 - v13;
  OUTLINED_FUNCTION_24_0();
  v14 = type metadata accessor for MinuteCondition();
  v15 = OUTLINED_FUNCTION_5(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  v22 = v21 - v20;
  v23 = *(v1 + 16);
  MEMORY[0x23EE9DB40](v23);
  if (v23)
  {
    v24 = v14[5];
    v55 = (v22 + v14[6]);
    v56 = v24;
    v25 = v14[8];
    v54 = (v22 + v14[7]);
    v60 = v22 + v25;
    v26 = type metadata accessor for PrecipitationShift();
    v27 = *(v26 + 20);
    v52 = *(v26 + 24);
    v53 = v27;
    v28 = *(v17 + 80);
    OUTLINED_FUNCTION_52_0();
    v30 = v1 + v29;
    v51 = *(v17 + 72);
    do
    {
      sub_23B40A6B8();
      OUTLINED_FUNCTION_0_13();
      sub_23B40A0F0(&qword_280B42B48);
      sub_23B50D0E4();
      v31 = v57;
      sub_23B3C7DF4(v22 + v56, v57);
      OUTLINED_FUNCTION_22_3(v31);
      if (v32)
      {
        OUTLINED_FUNCTION_83();
      }

      else
      {
        v33 = OUTLINED_FUNCTION_14_6();
        v34(v33);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_16_3();
        sub_23B50D0E4();
        v35 = OUTLINED_FUNCTION_24_3();
        v36(v35);
      }

      v37 = *v55;
      v38 = v55[1];
      sub_23B50D1C4();
      v39 = *v54;
      v40 = v54[1];
      sub_23B50D1C4();
      v41 = v58;
      sub_23B3C7DF4(v60, v58);
      OUTLINED_FUNCTION_22_3(v41);
      if (v32)
      {
        OUTLINED_FUNCTION_83();
      }

      else
      {
        v42 = OUTLINED_FUNCTION_14_6();
        v43(v42);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_16_3();
        sub_23B50D0E4();
        v44 = OUTLINED_FUNCTION_24_3();
        v45(v44);
      }

      v46 = v59;
      sub_23B3C7DF4(v60 + v53, v59);
      OUTLINED_FUNCTION_22_3(v46);
      if (v32)
      {
        OUTLINED_FUNCTION_83();
      }

      else
      {
        v47 = OUTLINED_FUNCTION_14_6();
        v48(v47);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_16_3();
        sub_23B50D0E4();
        v49 = OUTLINED_FUNCTION_24_3();
        v50(v49);
      }

      MEMORY[0x23EE9DB40](*(v60 + v52));
      sub_23B40A714();
      v30 += v51;
      --v23;
    }

    while (v23);
  }

  OUTLINED_FUNCTION_20();
}

void sub_23B40879C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_3(a1, a2);
  if (v2)
  {
    v4 = (v3 + 48);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      *(v4 - 4);
      sub_23B50D8F4();

      sub_23B50D1C4();

      v4 += 6;
      --v2;
    }

    while (v2);
  }
}

void sub_23B408824()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  OUTLINED_FUNCTION_6(v36);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52();
  v35 = v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  OUTLINED_FUNCTION_6(v34);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v33 = v9;
  OUTLINED_FUNCTION_24_0();
  v10 = type metadata accessor for HistoricalComparison();
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_0();
  v17 = MEMORY[0x28223BE20](v16);
  v18 = *(v1 + 16);
  MEMORY[0x23EE9DB40](v18, v17);
  if (v18)
  {
    v19 = *(v13 + 80);
    OUTLINED_FUNCTION_52_0();
    v21 = v1 + v20;
    v37 = *(v13 + 72);
    do
    {
      sub_23B40A6B8();
      sub_23B40A6B8();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_23B40A768();
          MEMORY[0x23EE9DB40](1);
          MEMORY[0x23EE9DB40](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
          OUTLINED_FUNCTION_6_2();
          sub_23B40A674(&qword_280B42B80);
          OUTLINED_FUNCTION_43_3();
          v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890) + 32);
          sub_23B50AD24();
          OUTLINED_FUNCTION_0_13();
          sub_23B40A0F0(&qword_280B42B48);
          sub_23B50D0E4();
          v32 = v33 + *(v34 + 28);
          OUTLINED_FUNCTION_43_3();
          MEMORY[0x23EE9DB40](*(v33 + *(v34 + 32)));
          v24 = v33;
          goto LABEL_9;
        case 2u:
          v25 = v35;
          sub_23B40A768();
          v26 = 2;
          goto LABEL_7;
        case 3u:
          v25 = v35;
          sub_23B40A768();
          v26 = 3;
LABEL_7:
          MEMORY[0x23EE9DB40](v26);
          MEMORY[0x23EE9DB40](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
          OUTLINED_FUNCTION_6_2();
          sub_23B40A674(&qword_280B42BC8);
          OUTLINED_FUNCTION_43_3();
          v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0) + 32);
          sub_23B50AD24();
          OUTLINED_FUNCTION_0_13();
          sub_23B40A0F0(&qword_280B42B48);
          sub_23B50D0E4();
          v28 = v25 + *(v36 + 28);
          OUTLINED_FUNCTION_43_3();
          MEMORY[0x23EE9DB40](*(v25 + *(v36 + 32)));
          v24 = v25;
          v29 = &qword_27E132230;
          v30 = &qword_23B510210;
          break;
        default:
          sub_23B40A768();
          MEMORY[0x23EE9DB40](0);
          MEMORY[0x23EE9DB40](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
          OUTLINED_FUNCTION_6_2();
          sub_23B40A674(&qword_280B42B80);
          sub_23B50D0E4();
          v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890) + 32);
          sub_23B50AD24();
          OUTLINED_FUNCTION_0_13();
          sub_23B40A0F0(&qword_280B42B48);
          sub_23B50D0E4();
          v23 = v33 + *(v34 + 28);
          sub_23B50D0E4();
          MEMORY[0x23EE9DB40](*(v33 + *(v34 + 32)));
          v24 = v33;
LABEL_9:
          v29 = &qword_27E132220;
          v30 = &unk_23B510200;
          break;
      }

      sub_23B398890(v24, v29, v30);
      OUTLINED_FUNCTION_3_12();
      sub_23B40A714();
      v21 += v37;
      --v18;
    }

    while (v18);
  }

  OUTLINED_FUNCTION_20();
}

unint64_t sub_23B408E00()
{
  result = qword_27E132570;
  if (!qword_27E132570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132570);
  }

  return result;
}

unint64_t sub_23B408F70(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132580, &qword_23B511728);
    sub_23B40A0F0(v4);
    result = OUTLINED_FUNCTION_41();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23B409074(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132568, &qword_23B511720);
    sub_23B408E00();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoricalComparisons.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B409298()
{
  result = qword_27E1325D0;
  if (!qword_27E1325D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1325D0);
  }

  return result;
}

unint64_t sub_23B4092F0()
{
  result = qword_27E1325D8;
  if (!qword_27E1325D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1325D8);
  }

  return result;
}

unint64_t sub_23B409348()
{
  result = qword_27E1325E0;
  if (!qword_27E1325E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1325E0);
  }

  return result;
}

uint64_t sub_23B40939C()
{
  OUTLINED_FUNCTION_220();
  v3 = v2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

void sub_23B4093F8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  OUTLINED_FUNCTION_19();
  v2 = type metadata accessor for DayPartForecast();
  v3 = OUTLINED_FUNCTION_28_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v8 = *(v1 + 16);
  MEMORY[0x23EE9DB40](v8);
  if (v8)
  {
    v9 = 0;
    v17 = v1 + 32;
    do
    {
      v10 = (v17 + 16 * v9);
      v11 = v10[1];
      MEMORY[0x23EE9DB40](*v10);
      MEMORY[0x23EE9DB40](*(v11 + 16));
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = *(v5 + 80);
        OUTLINED_FUNCTION_52_0();
        v15 = v11 + v14;

        v16 = *(v5 + 72);
        do
        {
          sub_23B40A6B8();
          DayPartForecast.hash(into:)();
          sub_23B40A714();
          v15 += v16;
          --v12;
        }

        while (v12);
      }

      ++v9;
    }

    while (v9 != v8);
  }

  OUTLINED_FUNCTION_20();
}

void sub_23B40957C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_3();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5(v73);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52();
  v11 = OUTLINED_FUNCTION_24_0();
  v75 = type metadata accessor for HistoricalFact.Argument(v11);
  v12 = OUTLINED_FUNCTION_5(v75);
  v63 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v20 = type metadata accessor for HistoricalFact(0);
  v21 = OUTLINED_FUNCTION_5(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  v26 = *(v3 + 16);
  MEMORY[0x23EE9DB40](v26);
  v71 = v26;
  if (v26)
  {
    v69 = v0 + *(v20 + 40);
    type metadata accessor for WeatherMetadata();
    v27 = 0;
    v28 = *(v23 + 80);
    OUTLINED_FUNCTION_52_0();
    v67 = v29[6];
    v68 = v29[5];
    v65 = v29[8];
    v66 = v29[7];
    v64 = *(v23 + 72);
    v70 = v0;
    do
    {
      v72 = v27;
      sub_23B40A6B8();
      *v0;
      *v0;
      OUTLINED_FUNCTION_29_4();

      if (*(v0 + 1))
      {
        v30 = *(v0 + 1) == 1;
      }

      OUTLINED_FUNCTION_29_4();

      v31 = *(v0 + 8);
      v32 = *(v0 + 16);
      sub_23B50D1C4();
      v33 = *(v0 + 24);
      v34 = *(v0 + 32);
      sub_23B50D1C4();
      v35 = *(v0 + 40);
      v36 = *(v0 + 48);
      sub_23B50D1C4();
      v37 = *(v0 + 56);
      MEMORY[0x23EE9DB40](*(v37 + 16));
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = *(v63 + 80);
        OUTLINED_FUNCTION_52_0();
        v41 = v37 + v40;
        v43 = *(v42 + 72);
        v74 = v43;
        do
        {
          OUTLINED_FUNCTION_9_7();
          sub_23B40A6B8();
          sub_23B40A6B8();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v59 = OUTLINED_FUNCTION_34_4();
              v60(v59, v18, v73);
              MEMORY[0x23EE9DB40](1);
              OUTLINED_FUNCTION_6_2();
              sub_23B40A674(&qword_280B42B80);
              OUTLINED_FUNCTION_23_4();
              sub_23B50D0E4();
              v56 = OUTLINED_FUNCTION_34_4();
              v58 = v73;
              v43 = v74;
              goto LABEL_17;
            case 2u:
              v51 = OUTLINED_FUNCTION_20_5();
              v52(v51, v18, v4);
              v53 = 2;
              goto LABEL_15;
            case 3u:
              v54 = OUTLINED_FUNCTION_20_5();
              v55(v54, v18, v4);
              v53 = 3;
LABEL_15:
              MEMORY[0x23EE9DB40](v53);
              OUTLINED_FUNCTION_6_2();
              sub_23B40A674(&qword_280B42BC8);
              OUTLINED_FUNCTION_23_4();
              sub_23B50D0E4();
              v56 = OUTLINED_FUNCTION_20_5();
              v58 = v4;
LABEL_17:
              v57(v56, v58);
              break;
            case 4u:
              v45 = *v18;
              v46 = v1;
              v47 = v4;
              v48 = *(v18 + 8);
              v49 = *(v18 + 16);
              MEMORY[0x23EE9DB40](4);
              if (v45 == 0.0)
              {
                v50 = 0.0;
              }

              else
              {
                v50 = v45;
              }

              MEMORY[0x23EE9DB70](*&v50);
              sub_23B50D1C4();
              v4 = v47;
              v1 = v46;
              v43 = v74;

              break;
            default:
              v44 = *v18;
              MEMORY[0x23EE9DB40](0);
              MEMORY[0x23EE9DB40](*&v44);
              break;
          }

          OUTLINED_FUNCTION_8_5();
          sub_23B40A714();
          v41 += v43;
          --v38;
        }

        while (v38);
      }

      sub_23B50AD24();
      OUTLINED_FUNCTION_0_13();
      sub_23B40A0F0(&qword_280B42B48);
      sub_23B50D0E4();
      sub_23B50D0E4();
      v61 = OUTLINED_FUNCTION_7_12(*(v69 + v67));
      MEMORY[0x23EE9DB70](v61);
      v62 = OUTLINED_FUNCTION_7_12(*(v69 + v66));
      MEMORY[0x23EE9DB70](v62);
      if (*(v69 + v65))
      {
        OUTLINED_FUNCTION_84();
        sub_23B42E190();
      }

      else
      {
        OUTLINED_FUNCTION_83();
      }

      v0 = v70;
      ++v27;
      sub_23B40A714();
    }

    while (v72 + 1 != v71);
  }

  OUTLINED_FUNCTION_26_3();
}

void sub_23B409BE4()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_3();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5(v43);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v10 = OUTLINED_FUNCTION_24_0();
  v11 = type metadata accessor for HistoricalFact.Argument(v10);
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_0();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v22 = *(v2 + 16);
  MEMORY[0x23EE9DB40](v22, v21);
  if (v22)
  {
    v23 = *(v14 + 80);
    OUTLINED_FUNCTION_52_0();
    v25 = v2 + v24;
    v44 = *(v14 + 72);
    do
    {
      OUTLINED_FUNCTION_9_7();
      sub_23B40A6B8();
      sub_23B40A6B8();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v41 = OUTLINED_FUNCTION_34_4();
          v42(v41, v19, v43);
          MEMORY[0x23EE9DB40](1);
          OUTLINED_FUNCTION_6_2();
          sub_23B40A674(&qword_280B42B80);
          OUTLINED_FUNCTION_23_4();
          sub_23B50D0E4();
          v38 = OUTLINED_FUNCTION_34_4();
          v40 = v43;
          goto LABEL_13;
        case 2u:
          v33 = OUTLINED_FUNCTION_20_5();
          v34(v33, v19, v3);
          v35 = 2;
          goto LABEL_11;
        case 3u:
          v36 = OUTLINED_FUNCTION_20_5();
          v37(v36, v19, v3);
          v35 = 3;
LABEL_11:
          MEMORY[0x23EE9DB40](v35);
          OUTLINED_FUNCTION_6_2();
          sub_23B40A674(&qword_280B42BC8);
          OUTLINED_FUNCTION_23_4();
          sub_23B50D0E4();
          v38 = OUTLINED_FUNCTION_20_5();
          v40 = v3;
LABEL_13:
          v39(v38, v40);
          break;
        case 4u:
          v27 = *v19;
          v28 = v0;
          v29 = v3;
          v30 = *(v19 + 8);
          v31 = *(v19 + 16);
          MEMORY[0x23EE9DB40](4);
          if (v27 == 0.0)
          {
            v32 = 0.0;
          }

          else
          {
            v32 = v27;
          }

          MEMORY[0x23EE9DB70](*&v32);
          sub_23B50D1C4();
          v3 = v29;
          v0 = v28;

          break;
        default:
          v26 = *v19;
          MEMORY[0x23EE9DB40](0);
          MEMORY[0x23EE9DB40](*&v26);
          break;
      }

      OUTLINED_FUNCTION_8_5();
      sub_23B40A714();
      v25 += v44;
      --v22;
    }

    while (v22);
  }

  OUTLINED_FUNCTION_26_3();
}

void sub_23B409FAC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_3(a1, a2);
  if (v2)
  {
    v4 = (v3 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = v4[1];
      v10 = v4[3];
      v14 = v4[4];
      v15 = v4[5];
      v12 = v4[2];
      v13 = v4[6];
      v11 = v4[7];

      sub_23B50D1C4();
      MEMORY[0x23EE9DB40](v7);
      sub_23B50D1C4();
      sub_23B50D8E4();
      if (v10)
      {
        sub_23B50D1C4();
      }

      MEMORY[0x23EE9DB40](v14);
      MEMORY[0x23EE9DB40](v15);
      sub_23B50D8E4();
      if (v11)
      {
        sub_23B50D1C4();
      }

      v4 += 11;
      --v2;
    }

    while (v2);
  }
}

unint64_t sub_23B40A0F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_23B40A160()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  v3 = type metadata accessor for WeatherChange();
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  v9 = *(v2 + 16);
  MEMORY[0x23EE9DB40](v9);
  if (v9)
  {
    v10 = v3[6];
    v17 = v3[5];
    v12 = v3[7];
    v11 = v3[8];
    v13 = *(v6 + 80);
    OUTLINED_FUNCTION_52_0();
    v15 = v2 + v14;
    v16 = *(v6 + 72);
    do
    {
      sub_23B40A6B8();
      sub_23B50AD24();
      OUTLINED_FUNCTION_0_13();
      sub_23B40A0F0(&qword_280B42B48);
      OUTLINED_FUNCTION_23_4();
      sub_23B50D0E4();
      MEMORY[0x23EE9DB40](*(v0 + v17));
      MEMORY[0x23EE9DB40](*(v0 + v10));
      MEMORY[0x23EE9DB40](*(v0 + v12));
      MEMORY[0x23EE9DB40](*(v0 + v11));
      sub_23B40A714();
      v15 += v16;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B40A330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v8 = *(a2 + 16);
  result = MEMORY[0x23EE9DB40](v8);
  if (v8)
  {
    v10 = a3(0);
    OUTLINED_FUNCTION_28_0(v10);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    do
    {
      result = a4(a1);
      v12 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_23B40A3EC()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  v3 = type metadata accessor for MinuteWeather();
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  v9 = *(v2 + 16);
  MEMORY[0x23EE9DB40](v9);
  if (v9)
  {
    v20 = v3[7];
    v10 = v0 + v3[8];
    v11 = *(v6 + 80);
    OUTLINED_FUNCTION_52_0();
    v18 = v3[6];
    v19 = v3[5];
    v13 = v2 + v12;
    v14 = *(v6 + 72);
    do
    {
      sub_23B40A6B8();
      sub_23B50AD24();
      OUTLINED_FUNCTION_0_13();
      sub_23B40A0F0(&qword_280B42B48);
      OUTLINED_FUNCTION_23_4();
      sub_23B50D0E4();
      switch(*(v0 + v19))
      {
        case 2:
          OUTLINED_FUNCTION_17_3();
          break;
        case 4:
          OUTLINED_FUNCTION_18_5();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_29_4();

      v15 = OUTLINED_FUNCTION_7_12(*(v0 + v18));
      MEMORY[0x23EE9DB70](v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_6_2();
      sub_23B40A674(&qword_280B42BE0);
      sub_23B50D0E4();
      v16 = *(v10 + 8);
      v17 = OUTLINED_FUNCTION_7_12(*v10);
      MEMORY[0x23EE9DB70](v17);
      if (!v16)
      {
        OUTLINED_FUNCTION_39_3();
      }

      OUTLINED_FUNCTION_29_4();

      sub_23B40A714();
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_26_3();
}

unint64_t sub_23B40A674(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_23B40A6B8()
{
  OUTLINED_FUNCTION_220();
  v3 = v2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_23B40A714()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_23B40A768()
{
  OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t DayTemperatureStatistics.init(day:averageLowTemperature:averageHighTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for DayTemperatureStatistics();
  v8 = *(v7 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v9);
  v13 = *(v10 + 32);
  v13(&a4[v8], a2, v9);
  v11 = &a4[*(v7 + 24)];

  return (v13)(v11, a3, v9);
}

uint64_t type metadata accessor for DayTemperatureStatistics()
{
  result = qword_27E132600;
  if (!qword_27E132600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DayTemperatureStatistics.averageLowTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayTemperatureStatistics() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DayTemperatureStatistics.averageLowTemperature.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_13() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t DayTemperatureStatistics.averageHighTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayTemperatureStatistics() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DayTemperatureStatistics.averageHighTemperature.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_13() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t static DayTemperatureStatistics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v2 = type metadata accessor for DayTemperatureStatistics();
  v3 = *(v2 + 20);
  sub_23B40B418(&qword_280B42B78);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 24);
  return sub_23B50D134() & 1;
}

uint64_t sub_23B40AC5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000023B529C40 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x800000023B529C60 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B40AD78(char a1)
{
  if (!a1)
  {
    return 7954788;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000016;
}

uint64_t sub_23B40ADD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B40AC5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B40ADF8(uint64_t a1)
{
  v2 = sub_23B40B02C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40AE34(uint64_t a1)
{
  v2 = sub_23B40B02C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DayTemperatureStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1325E8, &qword_23B511AC8);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40B02C();
  sub_23B50D974();
  v14 = *v3;
  v22 = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v15 = type metadata accessor for DayTemperatureStatistics();
    v16 = *(v15 + 20);
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    sub_23B40B418(&qword_280B42B88);
    OUTLINED_FUNCTION_2_2();
    v17 = *(v15 + 24);
    v20 = 2;
    OUTLINED_FUNCTION_2_2();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_23B40B02C()
{
  result = qword_27E1325F0;
  if (!qword_27E1325F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1325F0);
  }

  return result;
}

uint64_t DayTemperatureStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v4 = OUTLINED_FUNCTION_5(v44);
  v42 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1325F8, &qword_23B511AD0);
  v12 = OUTLINED_FUNCTION_5(v45);
  v43 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = type metadata accessor for DayTemperatureStatistics();
  v19 = OUTLINED_FUNCTION_6(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40B02C();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = a1;
  v25 = v23;
  v26 = v43;
  v27 = v44;
  v48 = 0;
  v28 = v45;
  v29 = sub_23B50D724();
  v38 = v25;
  *v25 = v29;
  v47 = 1;
  sub_23B40B418(&qword_27E132090);
  sub_23B50D734();
  v30 = *(v42 + 32);
  v37 = *(v18 + 20);
  v35 = v18;
  v36 = v30;
  v30(v38 + v37, v11, v27);
  v46 = 2;
  v31 = v41;
  sub_23B50D734();
  (*(v26 + 8))(v17, v28);
  v32 = v38;
  v36(v38 + *(v35 + 24), v31, v27);
  sub_23B40B468(v32, v40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_23B40B4CC(v32);
}

uint64_t sub_23B40B418(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131E30, &qword_23B511AC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B40B468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayTemperatureStatistics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B40B4CC(uint64_t a1)
{
  v2 = type metadata accessor for DayTemperatureStatistics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DayTemperatureStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B40B664()
{
  result = qword_27E132610;
  if (!qword_27E132610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132610);
  }

  return result;
}

unint64_t sub_23B40B6BC()
{
  result = qword_27E132618;
  if (!qword_27E132618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132618);
  }

  return result;
}

unint64_t sub_23B40B714()
{
  result = qword_27E132620;
  if (!qword_27E132620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132620);
  }

  return result;
}

uint64_t AirPollutant.init(kind:amount:displayUnit:)@<X0>(_BYTE *a1@<X0>, char *a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  *a3 = *a1;
  v5 = type metadata accessor for AirPollutant();
  v6 = OUTLINED_FUNCTION_3_14(v5);
  result = sub_23B3F1200(v6, v7);
  a3[*(v5 + 24)] = v4;
  return result;
}

uint64_t AirPollutant.amount.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = type metadata accessor for AirPollutant();
  v1 = OUTLINED_FUNCTION_3_14(v0);

  return sub_23B40B878(v1, v2);
}

uint64_t sub_23B40B878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPollutantMeasurement();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double (*AirPollutant.amount.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirPollutant() + 20);
  return GEOLocationCoordinate2DMake;
}

uint64_t AirPollutant.displayUnit.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AirPollutant();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AirPollutant.displayUnit.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AirPollutant();
  *(v1 + *(result + 24)) = v2;
  return result;
}

double (*AirPollutant.displayUnit.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for AirPollutant() + 24);
  return GEOLocationCoordinate2DMake;
}

uint64_t AirPollutant.init(name:amount:)@<X0>(_BYTE *a1@<X8>)
{
  sub_23B3B672C(&v6);
  *a1 = v6;
  v2 = type metadata accessor for AirPollutant();
  v3 = OUTLINED_FUNCTION_3_14(v2);
  result = sub_23B3F1200(v3, v4);
  a1[*(v2 + 24)] = 0;
  return result;
}

uint64_t AirPollutant.init(kind:amount:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  v3 = type metadata accessor for AirPollutant();
  v4 = OUTLINED_FUNCTION_3_14(v3);
  result = sub_23B3F1200(v4, v5);
  a2[*(v3 + 24)] = 0;
  return result;
}

uint64_t sub_23B40BA78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5579616C70736964 && a2 == 0xEB0000000074696ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B40BB88(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x746E756F6D61;
  }

  return 0x5579616C70736964;
}

uint64_t sub_23B40BBDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6451312 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172676F7263696DLL && a2 == 0xEF334D726550736DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23B40BCAC(char a1)
{
  if (a1)
  {
    return 0x6172676F7263696DLL;
  }

  else
  {
    return 6451312;
  }
}

uint64_t sub_23B40BCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B40BA78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B40BD24(uint64_t a1)
{
  v2 = sub_23B40CE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40BD60(uint64_t a1)
{
  v2 = sub_23B40CE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B40BDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B40BBDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B40BDCC(uint64_t a1)
{
  v2 = sub_23B40D0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40BE08(uint64_t a1)
{
  v2 = sub_23B40D0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B40BE64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E5F40();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B40BE90(uint64_t a1)
{
  v2 = sub_23B40D120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40BECC(uint64_t a1)
{
  v2 = sub_23B40D120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B40BF08(uint64_t a1)
{
  v2 = sub_23B40D174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40BF44(uint64_t a1)
{
  v2 = sub_23B40D174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AirPollutant.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v4 = type metadata accessor for AirPollutant();
    if (static AirPollutantMeasurement.== infix(_:_:)(&a1[*(v4 + 20)], &a2[*(v4 + 20)]))
    {
      v5 = a1[*(v4 + 24)] ^ a2[*(v4 + 24)] ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t AirPollutant.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132628, &qword_23B511CA0);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40CE74();
  sub_23B50D974();
  v19[15] = *v3;
  v19[14] = 0;
  sub_23B40CEC8();
  sub_23B50D7F4();
  if (!v2)
  {
    v14 = type metadata accessor for AirPollutant();
    v15 = *(v14 + 20);
    v19[13] = 1;
    type metadata accessor for AirPollutantMeasurement();
    OUTLINED_FUNCTION_1_8();
    sub_23B40D248(v16, v17);
    sub_23B50D7F4();
    v19[12] = v3[*(v14 + 24)];
    v19[11] = 2;
    sub_23B40CF1C();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t AirPollutant.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = type metadata accessor for AirPollutantMeasurement();
  v3 = OUTLINED_FUNCTION_6(v31);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132638, &qword_23B511CA8);
  OUTLINED_FUNCTION_5(v32);
  v30 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for AirPollutant();
  v15 = OUTLINED_FUNCTION_6(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40CE74();
  v21 = v33;
  sub_23B50D964();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v22 = v30;
  v23 = v19;
  v37 = 0;
  sub_23B40CF70();
  v24 = v32;
  sub_23B50D734();
  *v23 = v38;
  v36 = 1;
  OUTLINED_FUNCTION_1_8();
  sub_23B40D248(v25, v26);
  sub_23B50D734();
  sub_23B3F1200(v7, &v23[*(v14 + 20)]);
  v34 = 2;
  sub_23B40CFC4();
  sub_23B50D734();
  (*(v22 + 8))(v13, v24);
  v23[*(v14 + 24)] = v35;
  sub_23B40D018(v23, v29, type metadata accessor for AirPollutant);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_23B40D078();
}

uint64_t AirPollutantUnit.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132658, &qword_23B511CB0);
  v4 = OUTLINED_FUNCTION_5(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132660, &qword_23B511CB8);
  v11 = OUTLINED_FUNCTION_5(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132668, &qword_23B511CC0);
  OUTLINED_FUNCTION_5(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40D0CC();
  sub_23B50D974();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_23B40D120();
    v29 = v33;
    sub_23B50D764();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_23B40D174();
    sub_23B50D764();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

void AirPollutantUnit.init(from:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132688, &qword_23B511CC8);
  OUTLINED_FUNCTION_5(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132690, &qword_23B511CD0);
  OUTLINED_FUNCTION_5(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132698, &qword_23B511CD8);
  OUTLINED_FUNCTION_5(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40D0CC();
  v24 = v53;
  sub_23B50D964();
  if (v24)
  {
    goto LABEL_10;
  }

  v46 = v9;
  v47 = v15;
  v53 = a1;
  v25 = v52;
  v26 = sub_23B50D744();
  sub_23B40D1C8(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = v27;
LABEL_9:
    v40 = sub_23B50D5F4();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0) + 48);
    *v42 = &type metadata for AirPollutantUnit;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v22, v16);
    a1 = v53;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v45[1] = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v28 + v29);
    v32 = sub_23B40D840(v29 + 1, v30 >> 1, v27, v28, v29, v30);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 != v36 >> 1)
    {
      v52 = v32;
      goto LABEL_9;
    }

    v54 = v31;
    if (v31)
    {
      v56 = 1;
      sub_23B40D120();
      v37 = v8;
      OUTLINED_FUNCTION_7_13();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v49 + 8))(v37, v25);
    }

    else
    {
      v55 = 0;
      sub_23B40D174();
      v44 = v47;
      OUTLINED_FUNCTION_7_13();
      v38 = v50;
      v39 = v51;
      swift_unknownObjectRelease();
      (*(v48 + 8))(v44, v46);
    }

    (*(v39 + 8))(v22, v34);
    *v38 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
  }
}

uint64_t AirPollutant.hash(into:)()
{
  v1 = v0;
  MEMORY[0x23EE9DB40](*v0);
  v2 = type metadata accessor for AirPollutant();
  v3 = &v0[*(v2 + 20)];
  AirPollutantMeasurement.hash(into:)();
  return MEMORY[0x23EE9DB40](v1[*(v2 + 24)]);
}

uint64_t AirPollutant.hashValue.getter()
{
  v1 = v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](*v0);
  v2 = type metadata accessor for AirPollutant();
  v3 = &v0[*(v2 + 20)];
  AirPollutantMeasurement.hash(into:)();
  MEMORY[0x23EE9DB40](v1[*(v2 + 24)]);
  return sub_23B50D914();
}

uint64_t sub_23B40CD88(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](*v2);
  v5 = &v2[*(a2 + 20)];
  AirPollutantMeasurement.hash(into:)();
  MEMORY[0x23EE9DB40](v4[*(a2 + 24)]);
  return sub_23B50D914();
}

uint64_t AirPollutantUnit.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

unint64_t sub_23B40CE74()
{
  result = qword_280B425A8;
  if (!qword_280B425A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B425A8);
  }

  return result;
}

unint64_t sub_23B40CEC8()
{
  result = qword_280B423F0;
  if (!qword_280B423F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423F0);
  }

  return result;
}

unint64_t sub_23B40CF1C()
{
  result = qword_27E132630;
  if (!qword_27E132630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132630);
  }

  return result;
}

unint64_t sub_23B40CF70()
{
  result = qword_27E132640;
  if (!qword_27E132640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132640);
  }

  return result;
}

unint64_t sub_23B40CFC4()
{
  result = qword_27E132650;
  if (!qword_27E132650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132650);
  }

  return result;
}

uint64_t sub_23B40D018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B40D078()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_23B40D0CC()
{
  result = qword_27E132670;
  if (!qword_27E132670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132670);
  }

  return result;
}

unint64_t sub_23B40D120()
{
  result = qword_27E132678;
  if (!qword_27E132678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132678);
  }

  return result;
}

unint64_t sub_23B40D174()
{
  result = qword_27E132680;
  if (!qword_27E132680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132680);
  }

  return result;
}

void sub_23B40D1C8(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_8();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_23B40D248(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B40D294()
{
  result = qword_27E1326B0;
  if (!qword_27E1326B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326B0);
  }

  return result;
}

_BYTE *sub_23B40D2F8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirPollutant.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B40D4D4()
{
  result = qword_27E1326B8;
  if (!qword_27E1326B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326B8);
  }

  return result;
}

unint64_t sub_23B40D52C()
{
  result = qword_27E1326C0;
  if (!qword_27E1326C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326C0);
  }

  return result;
}

unint64_t sub_23B40D584()
{
  result = qword_27E1326C8;
  if (!qword_27E1326C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326C8);
  }

  return result;
}

unint64_t sub_23B40D5DC()
{
  result = qword_27E1326D0;
  if (!qword_27E1326D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326D0);
  }

  return result;
}

unint64_t sub_23B40D634()
{
  result = qword_27E1326D8;
  if (!qword_27E1326D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326D8);
  }

  return result;
}

unint64_t sub_23B40D68C()
{
  result = qword_27E1326E0;
  if (!qword_27E1326E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326E0);
  }

  return result;
}

unint64_t sub_23B40D6E4()
{
  result = qword_27E1326E8;
  if (!qword_27E1326E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326E8);
  }

  return result;
}

unint64_t sub_23B40D73C()
{
  result = qword_27E1326F0;
  if (!qword_27E1326F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326F0);
  }

  return result;
}

unint64_t sub_23B40D794()
{
  result = qword_280B42598;
  if (!qword_280B42598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42598);
  }

  return result;
}

unint64_t sub_23B40D7EC()
{
  result = qword_280B425A0;
  if (!qword_280B425A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B425A0);
  }

  return result;
}

uint64_t sub_23B40D840(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t static WeatherChanges.mock(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = sub_23B50AD24();
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v19 = v18 - v17;
  sub_23B3C7DF4(a1, v10);
  OUTLINED_FUNCTION_21_0(v10);
  if (v20)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_21_0(v10);
    if (!v20)
    {
      sub_23B3CF54C(v10);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326F8, &qword_23B512250);
  v21 = *(type metadata accessor for WeatherChange() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23B510090;
  v25 = v24 + v23;
  sub_23B50AC94();
  OUTLINED_FUNCTION_1_9();
  static WeatherChange.mockAllSteady(with:)(v7, v25);
  sub_23B3CF54C(v7);
  sub_23B50AC94();
  OUTLINED_FUNCTION_1_9();
  static WeatherChange.mockAllIncreasing(with:)(v7, v25 + v22);
  sub_23B3CF54C(v7);
  sub_23B50AC94();
  OUTLINED_FUNCTION_1_9();
  static WeatherChange.mockAllDecreasing(with:)(v7, v25 + 2 * v22);
  sub_23B3CF54C(v7);
  v26 = type metadata accessor for WeatherChanges();
  static WeatherMetadata.mock()(a2 + *(v26 + 20));
  result = (*(v14 + 8))(v19, v11);
  *a2 = v24;
  return result;
}

int *sub_23B40DBAC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = OUTLINED_FUNCTION_4_12();
  v10 = OUTLINED_FUNCTION_5(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  v17 = v16 - v15;
  sub_23B3C7DF4(a1, v3);
  OUTLINED_FUNCTION_21_0(v3);
  if (v18)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_21_0(v3);
    if (!v18)
    {
      sub_23B3CF54C(v3);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v3, v9);
  }

  (*(v12 + 32))(a3, v17, v9);
  result = type metadata accessor for WeatherChange();
  *(a3 + result[5]) = a2;
  *(a3 + result[6]) = a2;
  *(a3 + result[7]) = a2;
  *(a3 + result[8]) = a2;
  return result;
}

int *static WeatherChange.mockRandomDirections(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = OUTLINED_FUNCTION_4_12();
  v8 = OUTLINED_FUNCTION_5(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v15 = v14 - v13;
  sub_23B3C7DF4(a1, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
    {
      sub_23B3CF54C(v2);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v2, v7);
  }

  (*(v10 + 16))(a2, v15, v7);
  v16 = sub_23B40DF14();
  v17 = sub_23B40DF14();
  v18 = sub_23B40DF14();
  v19 = sub_23B40DF14();
  (*(v10 + 8))(v15, v7);
  result = type metadata accessor for WeatherChange();
  *(a2 + result[5]) = v16;
  *(a2 + result[6]) = v17;
  *(a2 + result[7]) = v18;
  *(a2 + result[8]) = v19;
  return result;
}

unint64_t sub_23B40DF14()
{
  result = sub_23B40DF3C(3uLL);
  if (result >= 3)
  {
    return 2;
  }

  else
  {
    return result;
  }
}

unint64_t sub_23B40DF3C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23EE9E270](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23EE9E270](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ArticlePlacement.articles.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_23B40E4DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C6369747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23B40E5AC(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x73656C6369747261;
  }
}

uint64_t sub_23B40E5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B40E4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B40E60C(uint64_t a1)
{
  v2 = sub_23B40EDE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40E648(uint64_t a1)
{
  v2 = sub_23B40EDE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static ArticlePlacement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_23B3DF86C();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return sub_23B3E5838(v3, v5);
}

uint64_t ArticlePlacement.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132700, &qword_23B512258);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = *(v1 + 8);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40EDE4();

  sub_23B50D974();
  v20 = v12;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132710, &qword_23B512260);
  sub_23B40EE8C(&qword_27E132718, &qword_27E132720);
  sub_23B50D7F4();

  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    sub_23B40EE38();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t ArticlePlacement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132730, &qword_23B512268);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40EDE4();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132710, &qword_23B512260);
  v17[15] = 0;
  sub_23B40EE8C(&qword_27E132738, &qword_27E132740);
  sub_23B50D734();
  v14 = v18;
  v17[13] = 1;
  sub_23B40EF58();
  sub_23B50D734();
  (*(v8 + 8))(v12, v5);
  v15 = v17[14];
  *a2 = v14;
  *(a2 + 8) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23B40EB40(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23B50D1E4();
    v1 = sub_23B50D234();

    return v1;
  }

  return result;
}

uint64_t sub_23B40EC00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Article();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B40EC64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23B40ECBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B40ED24(uint64_t a1)
{
  v2 = type metadata accessor for Article();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B40ED80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Article();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B40EDE4()
{
  result = qword_27E132708;
  if (!qword_27E132708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132708);
  }

  return result;
}

unint64_t sub_23B40EE38()
{
  result = qword_27E132728;
  if (!qword_27E132728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132728);
  }

  return result;
}

uint64_t sub_23B40EE8C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132710, &qword_23B512260);
    sub_23B40EF14(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B40EF14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Article();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B40EF58()
{
  result = qword_27E132748;
  if (!qword_27E132748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132748);
  }

  return result;
}

uint64_t sub_23B40EFAC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23B40EFEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ArticlePlacement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B40F11C()
{
  result = qword_27E132750;
  if (!qword_27E132750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132750);
  }

  return result;
}

unint64_t sub_23B40F174()
{
  result = qword_27E132758;
  if (!qword_27E132758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132758);
  }

  return result;
}

unint64_t sub_23B40F1CC()
{
  result = qword_27E132760;
  if (!qword_27E132760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132760);
  }

  return result;
}

unint64_t sub_23B40F28C()
{
  result = qword_280B423C0;
  if (!qword_280B423C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423C0);
  }

  return result;
}

unint64_t sub_23B40F2E4()
{
  result = qword_27E132768;
  if (!qword_27E132768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132768);
  }

  return result;
}

unint64_t sub_23B40F344()
{
  result = qword_280B423C8;
  if (!qword_280B423C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423C8);
  }

  return result;
}

unint64_t sub_23B40F39C()
{
  result = qword_280B423B8;
  if (!qword_280B423B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423B8);
  }

  return result;
}

WeatherKit::AvailableDataSets sub_23B40F484@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AvailableDataSets.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B40F4C4@<X0>(uint64_t *a1@<X8>)
{
  result = AvailableDataSets.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AvailableDataSets(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AvailableDataSets(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

WeatherKit::UVIndex __swiftcall UVIndex.init(value:category:)(Swift::Int value, WeatherKit::UVIndex::ExposureCategory category)
{
  *v2 = value;
  *(v2 + 8) = category;
  result.value = value;
  result.category = category;
  return result;
}

uint64_t UVIndex.ExposureCategory.rangeValue.getter(char a1)
{
  v1 = a1;
  result = qword_23B512A60[a1];
  v3 = qword_23B512A38[v1];
  return result;
}

uint64_t UVIndex.ExposureCategory.description.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_2_15();
      return sub_23B50AAD4();
    case 2:
      if (qword_280B43260 != -1)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_3_15();
      OUTLINED_FUNCTION_5_9(0x482079726556);
      goto LABEL_11;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    default:
      if (qword_280B43260 == -1)
      {
        goto LABEL_7;
      }

LABEL_16:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_7:
      OUTLINED_FUNCTION_1_11();
LABEL_11:
      OUTLINED_FUNCTION_2_12();
      return sub_23B50AAD4();
  }
}

uint64_t UVIndex.ExposureCategory.accessibilityDescription.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_2_15();
      return sub_23B50AAD4();
    case 2:
      if (qword_280B43260 != -1)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_3_15();
      OUTLINED_FUNCTION_5_9(0x682079726576);
      goto LABEL_12;
    case 4:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_3_15();
      return sub_23B50AAD4();
    default:
      if (qword_280B43260 != -1)
      {
LABEL_17:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_3:
      OUTLINED_FUNCTION_1_11();
LABEL_12:
      OUTLINED_FUNCTION_2_12();
      return sub_23B50AAD4();
  }
}

WeatherKit::UVIndex::ExposureCategory_optional __swiftcall UVIndex.ExposureCategory.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_23B50D664();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t UVIndex.ExposureCategory.rawValue.getter(char a1)
{
  result = 7827308;
  switch(a1)
  {
    case 1:
      result = 0x6574617265646F6DLL;
      break;
    case 2:
      result = 1751607656;
      break;
    case 3:
      result = 0x6867694879726576;
      break;
    case 4:
      result = 0x656D6572747865;
      break;
    default:
      return result;
  }

  return result;
}

WeatherKit::UVIndex::ExposureCategory_optional sub_23B40FBCC@<W0>(Swift::String *a1@<X0>, WeatherKit::UVIndex::ExposureCategory_optional *a2@<X8>)
{
  result.value = UVIndex.ExposureCategory.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_23B40FBFC@<X0>(uint64_t *a1@<X8>)
{
  result = UVIndex.ExposureCategory.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B40FD20(uint64_t a1)
{
  v2 = sub_23B410300();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40FD5C(uint64_t a1)
{
  v2 = sub_23B410300();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static UVIndex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
    v3 = UVIndex.ExposureCategory.rawValue.getter(*(a1 + 8));
    v5 = v4;
    if (v3 == UVIndex.ExposureCategory.rawValue.getter(v2) && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_23B50D834();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t UVIndex.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132770, &qword_23B512660);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = *(v1 + 8);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B410300();
  sub_23B50D974();
  v19 = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    sub_23B410354();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t UVIndex.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132778, &qword_23B512668);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B410300();
  sub_23B50D964();
  if (!v2)
  {
    v20 = 0;
    v14 = sub_23B50D724();
    v18 = 1;
    sub_23B4103A8();
    sub_23B50D734();
    (*(v8 + 8))(v12, v5);
    v15 = v19;
    *a2 = v14;
    *(a2 + 8) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UVIndex.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x23EE9DB40](*v0);
  UVIndex.ExposureCategory.rawValue.getter(v1);
  sub_23B50D1C4();
}

uint64_t UVIndex.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  UVIndex.ExposureCategory.rawValue.getter(v2);
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B410288()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  UVIndex.ExposureCategory.rawValue.getter(v2);
  sub_23B50D1C4();

  return sub_23B50D914();
}

unint64_t sub_23B410300()
{
  result = qword_280B41B48[0];
  if (!qword_280B41B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B41B48);
  }

  return result;
}

unint64_t sub_23B410354()
{
  result = qword_280B41B30;
  if (!qword_280B41B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41B30);
  }

  return result;
}

unint64_t sub_23B4103A8()
{
  result = qword_27E132780;
  if (!qword_27E132780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132780);
  }

  return result;
}

unint64_t sub_23B4103FC()
{
  result = qword_27E132788;
  if (!qword_27E132788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132788);
  }

  return result;
}

unint64_t sub_23B410454()
{
  result = qword_27E132790;
  if (!qword_27E132790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132798, &qword_23B5127D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132790);
  }

  return result;
}

unint64_t sub_23B4104BC()
{
  result = qword_27E1327A0;
  if (!qword_27E1327A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1327A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UVIndex(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UVIndex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UVIndex.ExposureCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UVIndex.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B41074C()
{
  result = qword_27E1327A8;
  if (!qword_27E1327A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1327A8);
  }

  return result;
}

unint64_t sub_23B4107A4()
{
  result = qword_280B41B38;
  if (!qword_280B41B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41B38);
  }

  return result;
}

unint64_t sub_23B4107FC()
{
  result = qword_280B41B40;
  if (!qword_280B41B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41B40);
  }

  return result;
}

unint64_t sub_23B410850()
{
  result = qword_280B41B28;
  if (!qword_280B41B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41B28);
  }

  return result;
}

uint64_t WeatherQueryHourlyRelativeRange.RelativeTo.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

unint64_t sub_23B410954()
{
  result = qword_27E1327B0;
  if (!qword_27E1327B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1327B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceHourlyRelativeRange(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WeatherServiceHourlyRelativeRange(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}