void WeatherService.__allocating_init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21_1();
  v5 = type metadata accessor for WDSEndpoint();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v11 = v10 - v9;
  if (qword_280B45350 != -1)
  {
    OUTLINED_FUNCTION_19_17();
  }

  sub_23B50AB04();
  v12 = sub_23B50AB34();
  v13 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_51(v13, v14, v12);
  if (v15)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_48(v12);
    (*(v16 + 32))(v11, v0, v12);
    OUTLINED_FUNCTION_39_8(*(v5 + 20));
    if (qword_280B45360 != -1)
    {
      OUTLINED_FUNCTION_53_3();
    }

    OUTLINED_FUNCTION_173_0(&word_280B4536B);
    v17 = sub_23B50C2E4();
    OUTLINED_FUNCTION_45(v17);
    sub_23B50C2D4();
    OUTLINED_FUNCTION_36();
    WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:)();
  }
}

uint64_t type metadata accessor for WeatherService()
{
  result = qword_280B45BF8;
  if (!qword_280B45BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B38EC88()
{
  result = type metadata accessor for WDSEndpoint();
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

uint64_t type metadata accessor for WDSEndpoint()
{
  result = qword_280B45B18;
  if (!qword_280B45B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B38ED8C()
{
  sub_23B50AB34();
  if (v0 <= 0x3F)
  {
    sub_23B38EE10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B38EE10()
{
  if (!qword_280B45318[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132180, &qword_23B510128);
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, qword_280B45318);
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_121(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t OUTLINED_FUNCTION_9_6()
{

  return type metadata accessor for PrecipitationAmountByType();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return sub_23B50D834();
}

double OUTLINED_FUNCTION_9_9@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  if (result == 0.0)
  {
    return v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11()
{

  return sub_23B50D0E4();
}

void OUTLINED_FUNCTION_9_11()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_9_12(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
}

uint64_t OUTLINED_FUNCTION_9_14()
{
  v4 = v0 + *(v2 + 44);

  return sub_23B3B0A38(v1, v4, type metadata accessor for InstantWeatherQueryOptions);
}

uint64_t OUTLINED_FUNCTION_9_15()
{
  v2 = *(v0 - 240);

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_9_18(uint64_t result)
{
  *(v2 + 80) = result;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_22()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_9_23()
{

  return sub_23B4591A0(v0, type metadata accessor for MinuteWeather);
}

uint64_t OUTLINED_FUNCTION_9_29()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_9_30@<X0>(uint64_t a1@<X8>)
{
  v4[6] = a1;
  v4[7] = v1;
  v4[8] = v2;
  v4[9] = v3;
  return 255;
}

uint64_t OUTLINED_FUNCTION_9_31@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_9_34@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 168) = v1 - a1;

  return sub_23B50AE64();
}

uint64_t OUTLINED_FUNCTION_9_38()
{

  return type metadata accessor for WeatherServiceFetchOptions();
}

uint64_t OUTLINED_FUNCTION_9_39()
{
  v1 = *(*(v0 - 240) + 8);
  result = *(v0 - 192);
  v3 = *(v0 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_38()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return sub_23B50D834();
}

__n128 *OUTLINED_FUNCTION_0_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u32[0] = 0;
  result[2].n128_u64[1] = 0x39353743343323;
  result[3].n128_u64[0] = 0xE700000000000000;
  result[3].n128_u32[2] = 1103626240;
  result[4].n128_u64[0] = 0x39353743343323;
  result[4].n128_u64[1] = 0xE700000000000000;
  result[5].n128_u32[0] = 1117126656;
  result[5].n128_u64[1] = 0x30304343464623;
  result[6].n128_u64[0] = 0xE700000000000000;
  result[6].n128_u32[2] = 1123680256;
  result[7].n128_u64[0] = 0x30303539464623;
  result[7].n128_u64[1] = 0xE700000000000000;
  result[8].n128_u32[0] = 1127153664;
  result[8].n128_u64[1] = 0x35354432464623;
  result[9].n128_u64[0] = 0xE700000000000000;
  result[9].n128_u32[2] = 1132068864;
  result[10].n128_u64[0] = 0x46463030414123;
  result[10].n128_u64[1] = 0xE700000000000000;
  result[11].n128_u32[0] = 1135542272;
  result[11].n128_u64[1] = 0x38423830433923;
  result[12].n128_u64[0] = 0xE700000000000000;
  result[12].n128_u32[2] = 1140457472;
  result[13].n128_u64[0] = 0x44323132353723;
  result[13].n128_u64[1] = 0xE700000000000000;
  return result;
}

void OUTLINED_FUNCTION_0_5()
{
  v2 = *(v0 - 184);

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_2_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v2;

  return sub_23B41EB24(va);
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return sub_23B50D144();
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return sub_23B50D7C4();
}

uint64_t OUTLINED_FUNCTION_0_27(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_0_45()
{
  v3 = *(v1 + 8);
  result = v2;
  v5 = *(v0 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_47@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = v5;
  v7 = v1 + v4[9];
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = v6;
  v8 = v1 + v4[10];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = v6;
  __swift_storeEnumTagSinglePayload(v1 + v4[11], 1, 1, v2);
  v9 = v1 + v4[12];

  return __swift_storeEnumTagSinglePayload(v9, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_0_48@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(a1 - 256) + 8);
  result = *(v1 - 392);
  v4 = *(v1 - 384);
  return result;
}

void OUTLINED_FUNCTION_0_50(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_0_51()
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_0_52()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_57@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *v1 = *v3;
  v1[1].n128_u8[0] = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_0_60@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, int a6, unsigned __int16 a7, unint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, unsigned __int32 a12)
{
  *(v13 + a1) = v12;
  *(v13 + v14[11]) = 0;
  v15 = (v13 + v14[13]);
  result = a9;
  *v15 = a9;
  v15[1].n128_u64[0] = a8;
  v15[1].n128_u8[14] = a5;
  v15[1].n128_u16[6] = a7;
  v15[1].n128_u32[2] = a12;
  v17 = v14[15];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v1 = *(*(v0 - 136) + 8);
  result = *(v0 - 120);
  v3 = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F1C50(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_3_10()
{
  *(v0 + 12) = 2081;
  v4 = *(v2 - 272);

  return sub_23B391F1C(v4, v1, (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return type metadata accessor for DayTemperatureStatistics();
}

uint64_t OUTLINED_FUNCTION_3_16@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 120);
  v4 = *(v1 - 112);

  return sub_23B50D764();
}

void OUTLINED_FUNCTION_3_21()
{
  *(v0 + 12) = 2160;
  *(v0 + 14) = 1752392040;
  *(v0 + 22) = 2081;
}

uint64_t OUTLINED_FUNCTION_3_23(uint64_t a1)
{
  v2 = *(v1 - 96);
  result = *(v1 - 88) + *(a1 + 28);
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_24(unint64_t *a1)
{

  return sub_23B3F1C50(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_26()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F054C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_28()
{
  *(v1 + 88) = v0;
  *(v1 + 96) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_29()
{
  v2 = *(v0 - 96);

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_3_30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F1C50(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_3_38()
{

  return sub_23B50D734();
}

void OUTLINED_FUNCTION_3_39(char a1@<W2>, char a2@<W3>, char a3@<W4>, uint64_t a4@<X8>)
{
  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 25) = a3;
  *(a4 + 26) = 0;
  *(a4 + 27) = a1;
  *(a4 + 28) = a2;
}

uint64_t OUTLINED_FUNCTION_3_41(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v2 + *(a1 + 28), 1, 1, v1);
  v5 = (v2 + *(a1 + 32));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_44()
{
  v2 = *(v0 - 2520);

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_3_45()
{
  v7 = *(v4 + 8 * v5);
  v6[10] = v0;
  v6[11] = v1;
  v6[12] = v2;
  v6[13] = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_3_46@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(v3 - 88) + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return type metadata accessor for MonthTemperatureStatistics();
}

uint64_t OUTLINED_FUNCTION_3_51()
{

  return type metadata accessor for WeatherServiceOptions();
}

uint64_t OUTLINED_FUNCTION_3_53()
{

  return sub_23B50D764();
}

void OUTLINED_FUNCTION_3_56()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
}

uint64_t OUTLINED_FUNCTION_3_57()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 88);
  return result;
}

void OUTLINED_FUNCTION_3_59(char *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *v1 = v2;
  v1[1] = v3;
  v1[2] = v4;
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_36_13()
{

  return sub_23B50D0E4();
}

uint64_t sub_23B390374()
{
  type metadata accessor for WeatherAQIScaleCacheManager();
  v0 = swift_allocObject();
  result = WeatherAQIScaleCacheManager.init(store:)(sub_23B3A5340, 0);
  qword_280B45358 = v0;
  return result;
}

uint64_t WeatherAQIScaleCacheManager.init(store:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23B50AFF4();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_23B390580();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132298, &qword_23B519F00);
  sub_23B390F60();
  sub_23B50D594();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AB8, &qword_23B519F08);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_23B50B024();

  *(v3 + 32) = v14;
  return v3;
}

uint64_t sub_23B390548()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_23B390580()
{
  result = qword_280B45380;
  if (!qword_280B45380)
  {
    sub_23B50AFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45380);
  }

  return result;
}

void OUTLINED_FUNCTION_51_2()
{
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  *(v1 + 16) = v0[20];
  *(v1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, unint64_t a2)
{

  return sub_23B391F1C(a1, a2, (v2 - 72));
}

void OUTLINED_FUNCTION_47_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_47_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[21] = a8;
  v9[22] = v8;
  v9[19] = a6;
  v9[20] = a7;
  v9[17] = a4;
  v9[18] = a5;
  v9[15] = a2;
  v9[16] = a3;
  v9[14] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_6()
{
  v2 = *(v0 - 104);

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_47_7()
{
  v2 = *(v0 - 160);

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_47_8(uint64_t a1, uint64_t a2)
{

  return sub_23B3EB988(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_56()
{

  return sub_23B50CDD4();
}

void OUTLINED_FUNCTION_203_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 224) = v1;
  *(v2 - 216) = v3;
}

uint64_t OUTLINED_FUNCTION_38_8()
{

  return type metadata accessor for InstantWeather();
}

double OUTLINED_FUNCTION_38_9()
{
  result = *(v2 + v0);
  v4 = *(v1 + v0);
  return result;
}

uint64_t OUTLINED_FUNCTION_172@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 136) = v1;
  *(v2 - 184) = a1;

  return sub_23B50CCA4();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for WDSEndpoint();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_171();
  v11 = *v4;
  v12 = v4[1];
  v13 = v4[2];
  if (qword_280B45350 != -1)
  {
    OUTLINED_FUNCTION_19_17();
  }

  v14 = OUTLINED_FUNCTION_16_16();
  sub_23B3943E8(v14, v0);
  v16[37] = v11;
  v16[38] = v12;
  v16[39] = v13;
  sub_23B3923E8(v2, v16);

  OUTLINED_FUNCTION_226_1();
  WeatherService.__allocating_init(scaleCacheManager:endpoint:caching:networkMonitor:attributionBundleIdentifier:)();

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_6_25();
  sub_23B393E24(v6, v15);
  OUTLINED_FUNCTION_223_1();
  OUTLINED_FUNCTION_20();
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_32_3@<X0>(uint64_t a1@<X8>)
{

  return sub_23B3CF890(v1, v2 + a1);
}

uint64_t OUTLINED_FUNCTION_32_6()
{
  result = v0;
  v3 = *(v1 - 328);
  v4 = *(v1 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_8()
{

  return type metadata accessor for Wind();
}

uint64_t OUTLINED_FUNCTION_32_9()
{
  result = v0;
  v3 = *(v1 - 384);
  v4 = *(v1 - 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_getWitnessTable();
}

BOOL OUTLINED_FUNCTION_10_10()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
  *(v0 - 88) = 1;

  return Forecast<>.isRelevant(in:)(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_10_14()
{
  v2 = *(v0 - 96);

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_22(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  v4 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_24()
{

  return type metadata accessor for LocationInfo();
}

uint64_t OUTLINED_FUNCTION_10_25()
{
  v2 = *(v0 - 280);

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_10_26()
{
  result = v0;
  v4 = *(v1 - 136);
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_28@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_23B39A5A8(v3, v4 + a3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_10_30()
{

  return sub_23B50D1C4();
}

unint64_t sub_23B390F60()
{
  result = qword_280B45370;
  if (!qword_280B45370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132298, &qword_23B519F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45370);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return sub_23B50D7F4();
}

void OUTLINED_FUNCTION_2_7(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_2_10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F1C50(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return sub_23B50A9B4();
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_2_23(unint64_t *a1)
{

  return sub_23B3F1C50(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_1_0(unint64_t *a1)
{

  return sub_23B3F054C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_2_24()
{

  return sub_23B50D7A4();
}

uint64_t OUTLINED_FUNCTION_2_26()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

void OUTLINED_FUNCTION_2_27()
{

  JUMPOUT(0x23EE9D460);
}

uint64_t OUTLINED_FUNCTION_2_28@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v3 = *(v2 - 8);
  return result;
}

void OUTLINED_FUNCTION_2_32()
{
  v3 = v0 + *(v1 + 36);
  *v3 = 0;
  *(v3 + 8) = 3;
  v4 = *(v2 - 8);
}

uint64_t OUTLINED_FUNCTION_2_34()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_2_36()
{

  return sub_23B50AE84();
}

uint64_t OUTLINED_FUNCTION_2_38(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v1 + *(a1 + 28), 1, 1, v2);
  v5 = (v1 + *(a1 + 32));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_43()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

__n128 OUTLINED_FUNCTION_2_44@<Q0>(uint64_t a1@<X8>, uint64_t a2, unsigned __int8 a3, int a4, unsigned __int16 a5, unint64_t a6, __n128 a7, unsigned __int32 a8)
{
  v9 = (v8 + a1);
  result = a7;
  *v9 = a7;
  v9[1].n128_u64[0] = a6;
  v9[1].n128_u8[14] = a3;
  v9[1].n128_u16[6] = a5;
  v9[1].n128_u32[2] = a8;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_45(unint64_t *a1)
{

  return sub_23B3F1C50(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_2_49@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X4>, __int128 *a3@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *a2;
  v12 = *a3;
  v4 = *(a3 + 2);
  v6 = *(a3 + 6);
  v5 = a3 + 24;
  v11 = *(v5 + 4);
  v10 = *(v5 + 6);

  return type metadata accessor for WeatherServiceFetchOptions();
}

uint64_t OUTLINED_FUNCTION_2_52()
{

  return sub_23B391F1C(v1, v0, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_2_53()
{

  return sub_23B493EA4(v1, v0);
}

uint64_t type metadata accessor for WeatherMetadata()
{
  result = qword_280B44548;
  if (!qword_280B44548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CurrentWeather()
{
  result = qword_280B44F68;
  if (!qword_280B44F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return sub_23B3EB798();
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1)
{
  v6 = *v5;
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  v2[5] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t a1)
{
  v4 = v2 + *(a1 + 28);

  return __swift_getEnumTagSinglePayload(v4, 1, v1);
}

uint64_t OUTLINED_FUNCTION_109()
{

  return sub_23B3C7314(v0, type metadata accessor for WeatherMetadata);
}

void OUTLINED_FUNCTION_109_0()
{

  JUMPOUT(0x23EE9E260);
}

void OUTLINED_FUNCTION_109_1()
{
  v3[2] = v0;
  v3[3] = v1;
  v3[4] = v2;
}

void OUTLINED_FUNCTION_217()
{
  v1 = *(v0 - 112);
  *(v0 - 96) = *(v0 - 144);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_217_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = a9;
  v11 = *(v9 + 40);
  return result;
}

uint64_t sub_23B391884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GeocodeService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  return result;
}

uint64_t sub_23B391960()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133068, &qword_23B516000);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23B391990()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133070, &qword_23B516008);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23B3919C0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1359D8, &qword_23B5267E0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_23B3919F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23B50CDF4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23B50CDE4();
}

id GeocodeManager.init(service:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23B50AFF4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  *(v3 + 32) = 0;
  *(v3 + 40) = MEMORY[0x277D84F98];
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v10 = sub_23B391C9C(result);
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    *(v3 + 48) = 0;
    *(v3 + 56) = v12;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    *(v3 + 64) = v13;
    *(v3 + 16) = a1;
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    sub_23B390580();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132298, &qword_23B519F00);
    sub_23B390F60();
    sub_23B50D594();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133050, &qword_23B515F98);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    *(v3 + 24) = sub_23B50B024();
    sub_23B391D0C();
    os_unfair_lock_lock((v3 + 48));
    sub_23B391D88((v3 + 56));
    os_unfair_lock_unlock((v3 + 48));

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B391C64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_23B391C9C(void *a1)
{
  v2 = [a1 countryCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23B50D164();

  return v3;
}

void sub_23B391D0C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_handleCountryConfigurationChange_ name:*MEMORY[0x277D0E7C8] object:0];
}

void sub_23B391D88(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v3 = sub_23B50CDF4();
  __swift_project_value_buffer(v3, qword_280B4E9F0);

  v4 = sub_23B50CDD4();
  v5 = sub_23B50D4C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    v8 = sub_23B391F1C(v2, v1, &v9);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_23B38D000, v4, v5, "Initializing GeocodeManager - configuredCountryCode=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EE9E260](v7, -1, -1);
    MEMORY[0x23EE9E260](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B391F1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B3921B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_23B3923E8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_23B391FE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_23B39202C(a1, a2);
  sub_23B3922B8(&unk_284E0D168);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23B39202C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_23B50D204())
  {
    result = sub_23B392144(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_23B50D5B4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_23B50D604();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_23B392144(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FE0, &qword_23B50F758);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_23B3921B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23B391FE0(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_23B50D604();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23B3922B8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_23B3E8798(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23B3923E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_23B392468(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_23B3924C0(255, a3, a4);
    v5 = sub_23B50A9E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23B3924C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for WeatherStatisticsModel()
{
  result = qword_280B42860;
  if (!qword_280B42860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39255C()
{
  if (!qword_280B42970[0])
  {
    type metadata accessor for HourTemperatureStatistics();
    sub_23B392958(&qword_280B42228, type metadata accessor for HourTemperatureStatistics);
    sub_23B392958(qword_280B42238, type metadata accessor for HourTemperatureStatistics);
    sub_23B392958(&qword_280B42230, type metadata accessor for HourTemperatureStatistics);
    v0 = type metadata accessor for HourlyWeatherStatistics();
    if (!v1)
    {
      atomic_store(v0, qword_280B42970);
    }
  }
}

void sub_23B392660()
{
  sub_23B39255C();
  if (v0 <= 0x3F)
  {
    sub_23B392B40();
    if (v1 <= 0x3F)
    {
      sub_23B392D84();
      if (v2 <= 0x3F)
      {
        sub_23B392FC0();
        if (v3 <= 0x3F)
        {
          sub_23B393110();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for HourTemperatureStatistics()
{
  result = qword_280B42218;
  if (!qword_280B42218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B392790()
{
  if (!qword_280B425B0[0])
  {
    sub_23B392894();
    v0 = type metadata accessor for Percentiles();
    if (!v1)
    {
      atomic_store(v0, qword_280B425B0);
    }
  }
}

void sub_23B3927E8()
{
  sub_23B392790();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23B392894()
{
  result = qword_280B43388;
  if (!qword_280B43388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B43388);
  }

  return result;
}

uint64_t sub_23B3928E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_23B50A9E4();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B392958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B3929C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_23B50D304();
  if (v3 <= 0x3F)
  {
    result = sub_23B50AD24();
    if (v4 <= 0x3F)
    {
      result = type metadata accessor for WeatherMetadata();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_23B392A60()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B392AF0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B392AF0()
{
  if (!qword_280B44CC8[0])
  {
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, qword_280B44CC8);
    }
  }
}

void sub_23B392B40()
{
  if (!qword_280B42A80[0])
  {
    type metadata accessor for DayPrecipitationStatistics();
    sub_23B392958(&qword_280B42180, type metadata accessor for DayPrecipitationStatistics);
    sub_23B392958(qword_280B42190, type metadata accessor for DayPrecipitationStatistics);
    sub_23B392958(&qword_280B42188, type metadata accessor for DayPrecipitationStatistics);
    v0 = type metadata accessor for DailyWeatherStatistics();
    if (!v1)
    {
      atomic_store(v0, qword_280B42A80);
    }
  }
}

uint64_t type metadata accessor for DayPrecipitationStatistics()
{
  result = qword_280B42170;
  if (!qword_280B42170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B392C90()
{
  sub_23B392D14();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B392D14()
{
  if (!qword_280B452F8)
  {
    sub_23B3E3A54();
    v0 = sub_23B50A9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280B452F8);
    }
  }
}

void sub_23B392D84()
{
  if (!qword_280B428C8[0])
  {
    type metadata accessor for MonthTemperatureStatistics();
    sub_23B392958(&qword_280B420D0, type metadata accessor for MonthTemperatureStatistics);
    sub_23B392958(qword_280B420E0, type metadata accessor for MonthTemperatureStatistics);
    sub_23B392958(&qword_280B420D8, type metadata accessor for MonthTemperatureStatistics);
    v0 = type metadata accessor for MonthlyWeatherStatistics();
    if (!v1)
    {
      atomic_store(v0, qword_280B428C8);
    }
  }
}

uint64_t type metadata accessor for MonthTemperatureStatistics()
{
  result = qword_280B420C0;
  if (!qword_280B420C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B392ED4()
{
  sub_23B392F50();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B392F50()
{
  if (!qword_280B452E0)
  {
    sub_23B392894();
    v0 = sub_23B50A9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280B452E0);
    }
  }
}

void sub_23B392FC0()
{
  if (!qword_280B428C0)
  {
    type metadata accessor for MonthPrecipitationStatistics();
    sub_23B392958(&qword_280B41D40, type metadata accessor for MonthPrecipitationStatistics);
    sub_23B392958(&qword_280B41D50, type metadata accessor for MonthPrecipitationStatistics);
    sub_23B392958(&qword_280B41D48, type metadata accessor for MonthPrecipitationStatistics);
    v0 = type metadata accessor for MonthlyWeatherStatistics();
    if (!v1)
    {
      atomic_store(v0, &qword_280B428C0);
    }
  }
}

uint64_t type metadata accessor for MonthPrecipitationStatistics()
{
  result = qword_280B41D30;
  if (!qword_280B41D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B393110()
{
  if (!qword_280B429F8[0])
  {
    type metadata accessor for DayPrecipitationSummary();
    sub_23B392958(&qword_280B422D8, type metadata accessor for DayPrecipitationSummary);
    sub_23B392958(&qword_280B422E8, type metadata accessor for DayPrecipitationSummary);
    sub_23B392958(&qword_280B422E0, type metadata accessor for DayPrecipitationSummary);
    v0 = type metadata accessor for DailyWeatherSummary();
    if (!v1)
    {
      atomic_store(v0, qword_280B429F8);
    }
  }
}

uint64_t type metadata accessor for DayPrecipitationSummary()
{
  result = qword_280B422C8;
  if (!qword_280B422C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B393260()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B392D14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B393304(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_23B50D304();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for WeatherMetadata();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for Wind()
{
  result = qword_280B43878;
  if (!qword_280B43878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3933F8()
{
  sub_23B392468(319, &qword_280B45310, &qword_280B433B0, 0x277CCADA8);
  if (v0 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B45308, &qword_280B433A8, 0x277CCAE40);
    if (v1 <= 0x3F)
    {
      sub_23B3934D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B3934D4()
{
  if (!qword_280B45300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131E10, &unk_23B5100F0);
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, &qword_280B45300);
    }
  }
}

uint64_t sub_23B393588()
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

      v4 = type metadata accessor for PrecipitationAmount();
      if (v7 > 0x3F)
      {
        return v4;
      }

      v4 = type metadata accessor for PrecipitationAmountByType();
      if (v8 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_23B396F20();
        v0 = v9;
        if (v10 <= 0x3F)
        {
          sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
          v0 = v11;
          if (v12 <= 0x3F)
          {
            v0 = type metadata accessor for Wind();
            if (v13 <= 0x3F)
            {
              v0 = type metadata accessor for WeatherMetadata();
              if (v14 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

uint64_t type metadata accessor for PrecipitationAmount()
{
  result = qword_280B43C48;
  if (!qword_280B43C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B393818()
{
  sub_23B392D14();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for PrecipitationAmountByType()
{
  result = qword_280B43928;
  if (!qword_280B43928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3938DC()
{
  sub_23B392D14();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SnowfallAmount();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_23B39396C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132290, &qword_23B510418);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23B50ED30;
  *(v0 + 32) = sub_23B50D984();
  *(v0 + 40) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23B50ED30;
  *(v2 + 32) = sub_23B50D984();
  *(v2 + 40) = v3;
  LOBYTE(xmmword_280B4EA08) = 0;
  *(&xmmword_280B4EA08 + 1) = v0;
  word_280B4EA18 = 0;
  byte_280B4EA1A = 1;
  *&result = 1;
  unk_280B4EA20 = xmmword_23B5102B0;
  byte_280B4EA30 = 1;
  qword_280B4EA38 = MEMORY[0x277D84F90];
  unk_280B4EA40 = v2;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id static Automation.shouldShowSimulatedAlert.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = OUTLINED_FUNCTION_0_20();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_23B393B54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_25_11(a1, a1, v3);
  (*v4)(a2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_22_1@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;
  v3 = *(v1 - 248);
  v4 = *(v1 - 240);

  return sub_23B50D704();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return sub_23B50D8E4();
}

uint64_t OUTLINED_FUNCTION_22_2()
{
  v2 = *(v0 - 376);

  return sub_23B3C7314(v2, type metadata accessor for MoonEvents);
}

void OUTLINED_FUNCTION_22_5()
{

  sub_23B4226D4();
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return sub_23B398890(v2, v0, v1);
}

void OUTLINED_FUNCTION_22_10()
{

  JUMPOUT(0x23EE9D460);
}

uint64_t OUTLINED_FUNCTION_22_12()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_22_16()
{
  v2 = *(v0 + 8);
  result = *(v1 - 136);
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_17()
{
  v2 = *(v0 + 8);
  result = *(v1 - 168);
  v4 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_18@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;
  result = v1 - 112;
  v3 = *(v1 - 192);
  v4 = *(v1 - 184);
  return result;
}

uint64_t sub_23B393E24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23B393E78()
{
  sub_23B3FD99C();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t WDSEndpoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WDSEndpoint();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B50AA64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132360, &qword_23B510B40);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v46 - v20;
  v22 = v2 + *(v5 + 28);
  v23 = *v22;
  if (*v22)
  {
    v24 = *(v22 + 8);

    v25 = sub_23B50AA34();
    v48 = v24;
    v47 = v23(v25);
    if (!__swift_getEnumTagSinglePayload(v21, 1, v9))
    {
      sub_23B50AA54();
    }

    if (__swift_getEnumTagSinglePayload(v21, 1, v9))
    {
      v26 = sub_23B50AB34();
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v26);
    }

    else
    {
      (*(v10 + 16))(v13, v21, v9);
      sub_23B50AA44();
      (*(v10 + 8))(v13, v9);
      v32 = sub_23B50AB34();
      if (__swift_getEnumTagSinglePayload(v17, 1, v32) != 1)
      {
        sub_23B401D08(v23);
        (*(*(v32 - 8) + 32))(a1, v17, v32);
        return sub_23B398890(v21, &qword_27E132360, &qword_23B510B40);
      }
    }

    sub_23B398890(v17, &qword_27E131FC0, &qword_23B515170);
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v33 = sub_23B50CDF4();
    __swift_project_value_buffer(v33, qword_280B4E9D8);
    sub_23B401CA4(v2, v8);
    v34 = sub_23B50CDD4();
    v35 = sub_23B50D4B4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46 = a1;
      v38 = v37;
      v49 = v37;
      *v36 = 136446466;
      sub_23B50AB34();
      sub_23B401D74();
      v39 = sub_23B50D824();
      v41 = v40;
      sub_23B401D18(v8);
      v42 = sub_23B391F1C(v39, v41, &v49);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2050;
      *(v36 + 14) = v47;
      _os_log_impl(&dword_23B38D000, v34, v35, "Failed to generate URL from component with url: %{public}s and port: %{public}ld", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v43 = v38;
      a1 = v46;
      MEMORY[0x23EE9E260](v43, -1, -1);
      MEMORY[0x23EE9E260](v36, -1, -1);
      sub_23B401D08(v23);
    }

    else
    {
      sub_23B401D08(v23);

      sub_23B401D18(v8);
    }

    v44 = sub_23B50AB34();
    OUTLINED_FUNCTION_6(v44);
    (*(v45 + 16))(a1, v2);
    return sub_23B398890(v21, &qword_27E132360, &qword_23B510B40);
  }

  v27 = sub_23B50AB34();
  v28 = OUTLINED_FUNCTION_6(v27);
  v30 = *(v29 + 16);

  return v30(a1, v2, v28);
}

uint64_t sub_23B3943D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23B3943E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return a2;
}

id OUTLINED_FUNCTION_57_0()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_57_4()
{
  v4 = v1 + *(v2 + 48);

  return __swift_getEnumTagSinglePayload(v4, 1, v0);
}

uint64_t sub_23B3944A0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 8))(&v4, v1, v2);

  sub_23B50C8B4();
  return sub_23B39463C(&v4);
}

uint64_t sub_23B3945AC@<X0>(_OWORD *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 64);
  v9[2] = *(*v1 + 48);
  v9[3] = v5;
  v9[0] = v3;
  v9[1] = v4;
  v6 = v2[2];
  *a1 = v2[1];
  a1[1] = v6;
  a1[2] = v2[3];
  a1[3] = v5;
  return sub_23B3918CC(v9, &v8);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_43_0()
{
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_43_4@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

void OUTLINED_FUNCTION_43_6()
{
  v1 = v0[2];
  v2 = *(v0 + 2);
  v3 = *v0;
}

uint64_t OUTLINED_FUNCTION_43_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_15@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_43_11()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 192);
  return *(v1 - 184);
}

double OUTLINED_FUNCTION_43_12@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *(v2 - 112) = result;
  *(v2 - 104) = v3;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void *sub_23B3947EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v82 = a4;
  v83 = a5;
  v67 = a3;
  v13 = sub_23B50AB34();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_23B50BE34();
  v70 = *(v81 - 8);
  v17 = *(v70 + 64);
  v18 = MEMORY[0x28223BE20](v81);
  v79 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v77 = &v65 - v20;
  v80 = sub_23B50B774();
  v71 = *(v80 - 8);
  v21 = *(v71 + 64);
  v22 = MEMORY[0x28223BE20](v80);
  v69 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v65 - v24;
  v78 = sub_23B50B7C4();
  v68 = *(v78 - 8);
  v25 = *(v68 + 64);
  v26 = MEMORY[0x28223BE20](v78);
  v74 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v65 - v28;
  v76 = sub_23B50B614();
  v30 = *(v76 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v76);
  v72 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v65 - v34;
  v94[3] = type metadata accessor for WeatherServiceFetchOptionsProvider();
  v94[4] = &protocol witness table for WeatherServiceFetchOptionsProvider;
  v94[0] = a6;
  v93[3] = type metadata accessor for StaticServiceConfigurationProvider();
  v93[4] = &off_284E0EE38;
  v93[0] = a7;
  v36 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  type metadata accessor for WeatherModelFactory();
  swift_allocObject();
  *(a8 + v36) = sub_23B39523C();
  v37 = OBJC_IVAR____TtC10WeatherKit14WeatherService_shouldShowSimulatedAlert;
  type metadata accessor for Automation();
  *(a8 + v37) = static Automation.shouldShowSimulatedAlert.getter() & 1;
  a8[7] = a1;
  sub_23B393B54(v94, (a8 + 8));
  v84 = a2;
  sub_23B3943E8(a2, a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_endpoint);
  sub_23B50AFE4();
  v75 = a1;

  sub_23B50AFD4();
  sub_23B50AF04();
  sub_23B50AFC4();

  if (v90 == 1)
  {
    v38 = sub_23B50B644();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = sub_23B50B634();
    v42 = MEMORY[0x277D7ABF0];
    a8[5] = v38;
    a8[6] = v42;
    a8[2] = v41;
  }

  else
  {
    v43 = v67;
    v44 = v35;
    v66 = v35;
    sub_23B39530C(v67 & 0x10101, v35);
    v45 = v29;
    v65 = v29;
    sub_23B395450(v43 & 1, v29);
    sub_23B39551C(v43 & 0x101, v73);
    v46 = v84;
    WDSEndpoint.url.getter(v16);
    v47 = (v46 + *(type metadata accessor for WDSEndpoint() + 20));
    v48 = v47[1];
    if (*v47)
    {
      v49 = v47[1];
    }

    sub_23B3943D8(*v47);
    v50 = v77;
    sub_23B50BE24();
    v51 = v70;
    (*(v70 + 16))(v79, v50, v81);
    (*(v30 + 16))(v72, v44, v76);
    v52 = v68;
    (*(v68 + 16))(v74, v45, v78);
    v53 = v71;
    v54 = v73;
    (*(v71 + 16))(v69, v73, v80);
    sub_23B3923E8(v82, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353C8, &qword_23B523840);
    swift_dynamicCast();
    sub_23B3923E8(v83, &v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353D0, &qword_23B523848);
    swift_dynamicCast();
    sub_23B393B54(v93, &v85);
    v55 = type metadata accessor for WeatherServiceClientSettingsProvider();
    v56 = swift_allocObject();
    sub_23B399858(&v85, v56 + 16);
    v86 = v55;
    v87 = sub_23B391884(qword_280B45810, type metadata accessor for WeatherServiceClientSettingsProvider);
    *&v85 = v56;
    v57 = sub_23B50B764();
    v58 = objc_allocWithZone(v57);
    v59 = sub_23B50B754();
    v91 = v57;
    v92 = MEMORY[0x277D7AC40];
    *&v90 = v59;
    (*(v51 + 8))(v77, v81);
    (*(v53 + 8))(v54, v80);
    (*(v52 + 8))(v65, v78);
    (*(v30 + 8))(v66, v76);
    sub_23B399858(&v90, (a8 + 2));
  }

  v60 = v82;
  v61 = v83;
  sub_23B393B54((a8 + 2), &v90);
  type metadata accessor for WeatherAQIScaleService();
  v62 = swift_allocObject();
  *(v62 + 16) = v75;
  sub_23B399858(&v90, v62 + 24);
  *(a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_airQualityScaleService) = v62;
  v63 = a8[7];

  sub_23B395624();

  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v60);
  sub_23B393E24(v84, type metadata accessor for WDSEndpoint);
  __swift_destroy_boxed_opaque_existential_1(v94);
  __swift_destroy_boxed_opaque_existential_1(v93);
  return a8;
}

uint64_t sub_23B394FA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_23B50AEF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B50ADC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_23B50AD74();
  v15 = sub_23B50ADA4();
  (*(v10 + 8))(v13, v9);
  [v14 setLocale_];

  sub_23B395284(0x2D4D4D2D59595959, 0xEA00000000006464, v14);
  sub_23B50AEA4();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v17 = sub_23B50AEB4();
    (*(v5 + 8))(v8, v4);
    [v14 setTimeZone_];

    return v14;
  }

  return result;
}

uint64_t sub_23B39523C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = sub_23B394FA0();
  return v0;
}

void sub_23B395284(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23B50D144();

  [a3 setDateFormat_];
}

uint64_t sub_23B39530C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_23B50AFE4();
  sub_23B50AFD4();
  sub_23B50AF14();
  sub_23B50AFC4();

  sub_23B50AFD4();
  sub_23B50AF34();
  sub_23B50AFC4();

  if ((v10 & 1) != 0 || v9)
  {
    v6 = *MEMORY[0x277D7ABE0];
    v7 = sub_23B50B614();
    return (*(*(v7 - 8) + 104))(a2, v6, v7);
  }

  else
  {
    v4 = sub_23B50B614();
    if ((a1 & 0x10000) != 0)
    {
      v5 = MEMORY[0x277D7ABD8];
    }

    else
    {
      v5 = MEMORY[0x277D7ABE0];
    }

    return (*(*(v4 - 8) + 104))(a2, *v5, v4);
  }
}

uint64_t sub_23B395450@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_23B50AFE4();
  sub_23B50AFD4();
  sub_23B50AF64();
  sub_23B50AFC4();

  v4 = sub_23B50B7C4();
  v5 = *MEMORY[0x277D7AC58];
  if ((a1 & 1) == 0)
  {
    v5 = *MEMORY[0x277D7AC60];
  }

  if (v8)
  {
    v6 = *MEMORY[0x277D7AC60];
  }

  else
  {
    v6 = v5;
  }

  return (*(*(v4 - 8) + 104))(a2, v6, v4);
}

uint64_t sub_23B39551C@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  sub_23B50AFE4();
  sub_23B50AFD4();
  sub_23B50AF44();
  sub_23B50AFC4();

  if (v9 == 1)
  {
    v4 = *MEMORY[0x277D7AC50];
    v5 = sub_23B50B774();
    return (*(*(v5 - 8) + 104))(a2, v4, v5);
  }

  else
  {
    v7 = sub_23B50B774();
    if ((a1 & 0x100) != 0)
    {
      v8 = MEMORY[0x277D7AC48];
    }

    else
    {
      v8 = MEMORY[0x277D7AC50];
    }

    return (*(*(v7 - 8) + 104))(a2, *v8, v7);
  }
}

uint64_t sub_23B395624()
{
  sub_23B50AFE4();
  sub_23B50AFD4();
  sub_23B50AF54();
  sub_23B50AFC4();

  if (v1 == 1)
  {
    sub_23B50AF24();
    sub_23B50AF54();
    sub_23B50AF74();

    return sub_23B47E484();
  }

  return result;
}

uint64_t sub_23B3956C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_23B50D8E4();
}

uint64_t OUTLINED_FUNCTION_7_2@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_23B50D7C4();
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return type metadata accessor for SunEvents();
}

uint64_t OUTLINED_FUNCTION_27_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_23B3CE510(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_31_6()
{
  result = v0;
  v3 = *(v1 - 424);
  v4 = *(v1 - 432);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F1C50(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_8_3()
{
  result = *(v1 - 104);
  v3 = *(v1 - 72);
  *(v1 - 136) = result + ((*(v0 + 80) + 32) & ~*(v0 + 80));
  *(v1 - 144) = v0 + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_23B50D794();
}

uint64_t OUTLINED_FUNCTION_8_7()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);
  v4 = *(v0 - 128);

  return sub_23B50D6D4();
}

uint64_t OUTLINED_FUNCTION_8_9(unint64_t *a1)
{

  return sub_23B3F1C50(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_10()
{

  return sub_23B3CE510(v0 + v4, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return type metadata accessor for PrecipitationAmount();
}

uint64_t OUTLINED_FUNCTION_8_13()
{

  return type metadata accessor for SnowfallAmount();
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return sub_23B4591A0(v0, type metadata accessor for DayWeather);
}

uint64_t OUTLINED_FUNCTION_8_16(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  return type metadata accessor for WeatherMetadata();
}

uint64_t OUTLINED_FUNCTION_8_17()
{
  result = *(v0 - 152);
  v2 = *(*(v0 - 160) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_18()
{
  v1 = *(*(v0 - 624) + 8);
  result = *(v0 - 320);
  v3 = *(v0 - 616);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_27(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(v10 + 16);
  v9[23] = *(v10 + 24);
  v9[24] = v8;
  v9[21] = a8;
  v9[22] = v11;
  v9[19] = a6;
  v9[20] = a7;
  v9[17] = a4;
  v9[18] = a5;
  v9[15] = a2;
  v9[16] = a3;
  v9[14] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return sub_23B4FB78C();
}

uint64_t sub_23B395C50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WeatherMetadata();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_23B395CEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WeatherMetadata();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B395D80(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_34_0();
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_15:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[11];
    }

    else
    {
      v17 = sub_23B50AB34();
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v16 = a3[12];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
        v21 = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a2)
        {
          v9 = v21;
          v16 = a3[14];
        }

        else
        {
          v9 = type metadata accessor for WeatherMetadata();
          v16 = a3[17];
        }
      }
    }

    v10 = v3 + v16;
    goto LABEL_15;
  }

  v11 = *(v3 + a3[6] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_23B395F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23B395FE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23B50AD24();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_25:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[12];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v16 = a3[14];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
        v21 = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a2)
        {
          v9 = v21;
          v16 = a3[15];
        }

        else
        {
          v23 = type metadata accessor for PrecipitationAmount();
          v24 = OUTLINED_FUNCTION_8_0(v23);
          if (*(v25 + 84) == a2)
          {
            v9 = v24;
            v16 = a3[17];
          }

          else
          {
            v26 = type metadata accessor for PrecipitationAmountByType();
            v27 = OUTLINED_FUNCTION_8_0(v26);
            if (*(v28 + 84) == a2)
            {
              v9 = v27;
              v16 = a3[19];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
              v30 = OUTLINED_FUNCTION_8_0(v29);
              if (*(v31 + 84) == a2)
              {
                v9 = v30;
                v16 = a3[29];
              }

              else
              {
                v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
                v33 = OUTLINED_FUNCTION_8_0(v32);
                if (*(v34 + 84) == a2)
                {
                  v9 = v33;
                  v16 = a3[32];
                }

                else
                {
                  v35 = type metadata accessor for Wind();
                  v36 = OUTLINED_FUNCTION_8_0(v35);
                  if (*(v37 + 84) == a2)
                  {
                    v9 = v36;
                    v16 = a3[33];
                  }

                  else
                  {
                    v9 = type metadata accessor for WeatherMetadata();
                    v16 = a3[34];
                  }
                }
              }
            }
          }
        }
      }
    }

    v10 = a1 + v16;
    goto LABEL_25;
  }

  v11 = *(a1 + a3[11] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  v2 = *(*(v1 - 144) + 8);
  result = v0;
  v4 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_6()
{
  v2 = *(v0 - 264);
}

uint64_t OUTLINED_FUNCTION_7_9()
{
  v2 = *(v0 + 8);
  result = *(v1 - 296);
  v4 = *(v1 - 312);
  return result;
}

double OUTLINED_FUNCTION_7_12(double result)
{
  if (result == 0.0)
  {
    return v1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_13()
{
  v2 = *(v0 - 152);

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_7_16()
{

  return sub_23B50D6D4();
}

void OUTLINED_FUNCTION_7_21(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 1, v6);

  sub_23B42E4E4(0, 0, v5, v4, v3, v2);
}

void OUTLINED_FUNCTION_7_23(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return sub_23B50D794();
}

uint64_t OUTLINED_FUNCTION_7_28(unint64_t *a1)
{

  return sub_23B3E38E8(a1);
}

uint64_t OUTLINED_FUNCTION_7_31()
{

  return sub_23B4591A0(v0, type metadata accessor for HourWeather);
}

uint64_t OUTLINED_FUNCTION_7_32@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 120) = a1;
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;
  *(v4 - 96) = v3;
  return 0;
}

void OUTLINED_FUNCTION_7_33()
{
  *(v0 + *(v1 + 32)) = v5;
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_7_43(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  return type metadata accessor for WeatherServiceOptions();
}

uint64_t OUTLINED_FUNCTION_7_47()
{

  return sub_23B396CA4();
}

uint64_t sub_23B396754(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B3967F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19();
  v6 = type metadata accessor for AirPollutantMeasurement();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return type metadata accessor for HourWeather();
}

uint64_t OUTLINED_FUNCTION_34_9()
{

  return sub_23B50D6A4();
}

void OUTLINED_FUNCTION_34_11()
{
  v3 = *v0;
  v4 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  v5 = *v1;
}

uint64_t OUTLINED_FUNCTION_34_12()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t type metadata accessor for AirPollutantMeasurement()
{
  result = qword_280B439D0;
  if (!qword_280B439D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B396A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AirPollutantMeasurement();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23B396AC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_34_0();
  v8 = sub_23B50AD24();
  result = OUTLINED_FUNCTION_8_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[6] + 8) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
    v14 = OUTLINED_FUNCTION_8_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[11];
    }

    else
    {
      v17 = sub_23B50AB34();
      v18 = OUTLINED_FUNCTION_8_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[12];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
        v21 = OUTLINED_FUNCTION_8_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[14];
        }

        else
        {
          v11 = type metadata accessor for WeatherMetadata();
          v16 = a4[17];
        }
      }
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t CurrentWeather.metadata.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for CurrentWeather() + 136);
  return OUTLINED_FUNCTION_44_6();
}

uint64_t sub_23B396CA4()
{
  v1 = OUTLINED_FUNCTION_67();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_42_2()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_42_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x23EE9DB40);
}

uint64_t OUTLINED_FUNCTION_42_4()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return type metadata accessor for Forecast();
}

void OUTLINED_FUNCTION_42_10()
{
  *(v0 + v1[19]) = v3;
  *(v0 + v1[20]) = v2;
  v4 = v1[21];
}

uint64_t OUTLINED_FUNCTION_59_0()
{
}

uint64_t OUTLINED_FUNCTION_59_1()
{
  v1 = *(*(v0 - 280) + 8);
  result = *(v0 - 216);
  v3 = *(v0 - 248);
  return result;
}

uint64_t WeatherMetadata.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WeatherMetadata() + 20);
  v4 = sub_23B50AD24();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for SnowfallAmount()
{
  result = qword_280B43FA8;
  if (!qword_280B43FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B396F20()
{
  if (!qword_280B452D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131E30, &qword_23B511AC0);
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, &qword_280B452D8);
    }
  }
}

uint64_t sub_23B396F94()
{
  v0 = sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B397278(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_23B397228(319, &qword_280B452B0, MEMORY[0x277CC9578]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_23B397278(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          v0 = type metadata accessor for PrecipitationAmountByType();
          if (v8 <= 0x3F)
          {
            v0 = type metadata accessor for SunEvents();
            if (v9 <= 0x3F)
            {
              v0 = type metadata accessor for MoonEvents();
              if (v10 <= 0x3F)
              {
                v0 = type metadata accessor for Wind();
                if (v11 <= 0x3F)
                {
                  sub_23B3934D4();
                  v0 = v12;
                  if (v13 <= 0x3F)
                  {
                    sub_23B397278(319, &qword_280B45308, &qword_280B433A8, 0x277CCAE40);
                    v0 = v14;
                    if (v15 <= 0x3F)
                    {
                      v0 = type metadata accessor for DayPartForecast();
                      if (v16 <= 0x3F)
                      {
                        sub_23B397228(319, qword_280B43E88, type metadata accessor for DayPartForecast);
                        v0 = v17;
                        if (v18 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                          return 0;
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

  return v0;
}

void sub_23B397228(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_23B397278(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_23B3924C0(255, a3, a4);
    OUTLINED_FUNCTION_77();
    v5 = sub_23B50A9E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return sub_23B50D1C4();
}

uint64_t OUTLINED_FUNCTION_67_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t type metadata accessor for SunEvents()
{
  result = qword_280B43588;
  if (!qword_280B43588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397358()
{
  sub_23B3973DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B3973DC()
{
  if (!qword_280B452B0)
  {
    sub_23B50AD24();
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, &qword_280B452B0);
    }
  }
}

uint64_t type metadata accessor for MoonEvents()
{
  result = qword_280B443D8;
  if (!qword_280B443D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397480()
{
  sub_23B3973DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for DayPartForecast()
{
  result = qword_280B43F08;
  if (!qword_280B43F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397548()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PrecipitationAmountByType();
      if (v2 <= 0x3F)
      {
        sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Wind();
          if (v4 <= 0x3F)
          {
            sub_23B392468(319, &qword_280B45308, &qword_280B433A8, 0x277CCAE40);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23B3976E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23B50D504();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata accessor for MinuteCondition()
{
  result = qword_280B43E18;
  if (!qword_280B43E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397778()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B3973DC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PrecipitationShift();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for PrecipitationShift()
{
  result = qword_280B43CE0;
  if (!qword_280B43CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397870()
{
  sub_23B3973DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for MinuteSummary()
{
  result = qword_280B44148;
  if (!qword_280B44148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B397938()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B3973DC();
    if (v1 <= 0x3F)
    {
      sub_23B3979E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B3979E8()
{
  if (!qword_280B43890[0])
  {
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, qword_280B43890);
    }
  }
}

uint64_t sub_23B397A38()
{
  v0 = sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_23B392468(319, &qword_280B452F0, &qword_280B43398, 0x277CCAE38);
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          v0 = type metadata accessor for Wind();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t type metadata accessor for HourWeather()
{
  result = qword_280B450F0;
  if (!qword_280B450F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherNetworkActivity.Label(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
        JUMPOUT(0x23B397D3CLL);
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Wind.CompassDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23B397E44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B50AB34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_23B397F28(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_23B50D304();
  if (v2 <= 0x3F)
  {
    type metadata accessor for WeatherMetadata();
    if (v3 <= 0x3F)
    {
      sub_23B3976E0(319, &qword_280B43430);
      if (v4 <= 0x3F)
      {
        sub_23B490060(319, &qword_280B43408, &qword_27E133D70, &qword_23B51B168);
        if (v5 <= 0x3F)
        {
          sub_23B490060(319, &qword_280B43410, &qword_27E133D78, &qword_23B51B170);
          if (v6 <= 0x3F)
          {
            sub_23B3976E0(319, qword_280B443E8);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23B398060(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_265(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = sub_23B50D504();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t static WeatherAQIScaleCacheManager.shared.getter()
{
  if (qword_280B45350 != -1)
  {
    swift_once();
  }
}

uint64_t sub_23B398120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B50AB34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t WDSEndpoint.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23B50AB34();
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 32))(a2, a1);
  result = type metadata accessor for WDSEndpoint();
  v7 = (a2 + *(result + 20));
  *v7 = 0;
  v7[1] = 0;
  return result;
}

void static WeatherServiceCaching.disabled.getter()
{
  if (qword_27E131C48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_59(&word_27E135B58);
}

uint64_t type metadata accessor for DayWeather()
{
  result = qword_280B451F8;
  if (!qword_280B451F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WDSEndpoint.portOverrideProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for WDSEndpoint() + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_23B3943D8(*v1);
  return v2;
}

uint64_t WeatherServiceFetchOptionsProvider.init(geocodeManager:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

void sub_23B398340()
{
  OUTLINED_FUNCTION_21();
  v12 = v0;
  v2 = v1;
  OUTLINED_FUNCTION_148_0();
  v4 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, *(v3 + 24));
  OUTLINED_FUNCTION_7_4();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v9 = OUTLINED_FUNCTION_180_1(v8);
  v10(v9);
  v11 = OUTLINED_FUNCTION_195_1();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_20();
}

void sub_23B398454()
{
  sub_23B3984D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B3984D8()
{
  if (!qword_280B452A8)
  {
    sub_23B50AD64();
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, &qword_280B452A8);
    }
  }
}

uint64_t type metadata accessor for WeatherNetworkActivity()
{
  result = qword_280B44C00;
  if (!qword_280B44C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39857C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WeatherNetworkActivity.createNWActivity()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - v5;
  v7 = sub_23B50AD64();
  v8 = OUTLINED_FUNCTION_5(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  *v0;
  v19 = v0[1];
  v20 = sub_23B50D094();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_23B50D084();
  v24 = type metadata accessor for WeatherNetworkActivity();
  sub_23B398820(&v0[*(v24 + 28)], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_23B398890(v6, &qword_27E1321E8, &qword_23B5101C0);
  }

  else
  {
    (*(v10 + 32))(v18, v6, v7);
    (*(v10 + 16))(v15, v18, v7);
    v25 = *(v20 + 48);
    v26 = *(v20 + 52);
    swift_allocObject();
    sub_23B50D074();

    sub_23B50D064();

    (*(v10 + 8))(v18, v7);
  }

  return v23;
}

uint64_t sub_23B398820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B398890(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_23B3988E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23B398958()
{
  result = qword_280B43250;
  if (!qword_280B43250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43250);
  }

  return result;
}

double WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>)
{
  v64 = a8;
  v62 = a2;
  v63 = a6;
  v61 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v56 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v21 = OUTLINED_FUNCTION_3(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v51 - v24;
  v60 = *a4;
  v59 = *(a4 + 4);
  v26 = *a5;
  v52 = v26;
  v27 = a3;
  sub_23B39A44C(a3, &v51 - v24, &qword_27E131F68, &unk_23B50F2A0);
  sub_23B39A44C(a7, v19, &qword_27E1338B0, &unk_23B519390);
  v70 = v26;
  WeatherServiceCaching.Options.cacheReadPolicy.getter(&v65);
  v55 = v65;
  v58 = v68;
  v57 = v67;
  v53 = v69;
  v54 = v66;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v29 = Options[5];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v34 = a9 + Options[6];
  *v34 = 0;
  *(v34 + 4) = 768;
  v35 = Options[9];
  type metadata accessor for WeatherNetworkActivity();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v40 = Options[12];
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v45 = Options[14];
  sub_23B398890(a7, &qword_27E1338B0, &unk_23B519390);
  sub_23B398890(v27, &qword_27E131F68, &unk_23B50F2A0);
  *(a9 + v45) = MEMORY[0x277D84F90];
  v46 = v62;
  *a9 = v61;
  a9[1] = v46;
  sub_23B39A558(v25, a9 + v29, &qword_27E131F68, &unk_23B50F2A0);
  *v34 = v60;
  *(v34 + 4) = v59;
  *(a9 + Options[7]) = v52;
  *(a9 + Options[8]) = v63;
  sub_23B39A558(v56, a9 + v35, &qword_27E1338B0, &unk_23B519390);
  *(a9 + Options[10]) = v64;
  *(a9 + Options[11]) = 0;
  v47 = a9 + Options[13];
  result = *&v55;
  *v47 = v55;
  v49 = v53;
  *(v47 + 2) = v54;
  v47[30] = v49;
  v50 = v57;
  *(v47 + 14) = v58;
  *(v47 + 6) = v50;
  *(a9 + Options[15]) = 0;
  return result;
}

void sub_23B398C94()
{
  sub_23B399C6C(319, &qword_280B42F00, type metadata accessor for CurrentWeather);
  if (v0 <= 0x3F)
  {
    sub_23B39A134(319, &qword_280B42ED0, &qword_27E131C90, &unk_23B514EC0);
    if (v1 <= 0x3F)
    {
      sub_23B39A134(319, &qword_280B42ED8, &qword_27E131CA8, &unk_23B50ED70);
      if (v2 <= 0x3F)
      {
        sub_23B399C6C(319, &qword_280B426E0, type metadata accessor for PeriodicForecasts);
        if (v3 <= 0x3F)
        {
          sub_23B39A134(319, &qword_280B42EE0, &qword_27E131CB0, &qword_23B516B60);
          if (v4 <= 0x3F)
          {
            sub_23B39A134(319, &qword_280B42EF0, &qword_27E131C78, &qword_23B50ED40);
            if (v5 <= 0x3F)
            {
              sub_23B39A134(319, &qword_280B42EF8, &qword_27E131EF0, &unk_23B50F220);
              if (v6 <= 0x3F)
              {
                sub_23B39A134(319, &qword_280B42EC8, &qword_27E131EC8, &unk_23B50F1F0);
                if (v7 <= 0x3F)
                {
                  sub_23B39B0D4();
                  if (v8 <= 0x3F)
                  {
                    sub_23B39A134(319, &qword_280B426D0, &qword_27E131ED8, &qword_23B50F208);
                    if (v9 <= 0x3F)
                    {
                      sub_23B39A134(319, &qword_280B426D8, &qword_27E131E88, &unk_23B519360);
                      if (v10 <= 0x3F)
                      {
                        sub_23B39A134(319, &qword_280B426E8, &qword_27E131EF8, &unk_23B50F230);
                        if (v11 <= 0x3F)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_23B398F80(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v95 = a5;
  v93 = a4;
  v81 = a2;
  v15 = sub_23B50AB34();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_23B50BE34();
  v80 = *(v92 - 8);
  v19 = *(v80 + 64);
  v20 = MEMORY[0x28223BE20](v92);
  v90 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v88 = &v75 - v22;
  v91 = sub_23B50B774();
  v79 = *(v91 - 8);
  v23 = *(v79 + 64);
  v24 = MEMORY[0x28223BE20](v91);
  v77 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v85 = &v75 - v26;
  v89 = sub_23B50B7C4();
  v78 = *(v89 - 8);
  v27 = *(v78 + 64);
  v28 = MEMORY[0x28223BE20](v89);
  v84 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v83 = &v75 - v30;
  v86 = sub_23B50B614();
  v76 = *(v86 - 8);
  v31 = *(v76 + 64);
  v32 = MEMORY[0x28223BE20](v86);
  v82 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v75 - v34;
  v104[3] = a9;
  v104[4] = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v104);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0, a7, a9);
  v37 = *a3;
  v38 = a3[1];
  v39 = a3[2];
  v40 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  type metadata accessor for WeatherModelFactory();
  swift_allocObject();
  *(a8 + v40) = sub_23B39523C();
  v41 = OBJC_IVAR____TtC10WeatherKit14WeatherService_shouldShowSimulatedAlert;
  type metadata accessor for Automation();
  *(a8 + v41) = static Automation.shouldShowSimulatedAlert.getter() & 1;
  a8[7] = a1;
  v94 = a6;
  v42 = a6;
  v43 = v81;
  sub_23B393B54(v42, (a8 + 8));
  sub_23B3943E8(v43, a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_endpoint);
  sub_23B50AFE4();
  v87 = a1;

  sub_23B50AFD4();
  sub_23B50AF04();
  sub_23B50AFC4();

  if (v101 == 1)
  {
    v44 = sub_23B50B644();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v47 = sub_23B50B634();
    v48 = MEMORY[0x277D7ABF0];
    a8[5] = v44;
    a8[6] = v48;
    a8[2] = v47;
    v49 = v93;
  }

  else
  {
    if (v39)
    {
      v50 = 0x10000;
    }

    else
    {
      v50 = 0;
    }

    if (v38)
    {
      v51 = 256;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51 | v37;
    v53 = v35;
    v75 = v35;
    sub_23B39530C(v51 | v37 | v50, v35);
    v54 = v18;
    v55 = v83;
    sub_23B395450(v52 | v50, v83);
    v56 = v85;
    sub_23B39551C(v52 | v50, v85);
    WDSEndpoint.url.getter(v54);
    v57 = (v43 + *(type metadata accessor for WDSEndpoint() + 20));
    v58 = v57[1];
    if (*v57)
    {
      v59 = v57[1];
    }

    sub_23B3943D8(*v57);
    v60 = v88;
    sub_23B50BE24();
    v61 = v80;
    (*(v80 + 16))(v90, v60, v92);
    v62 = v76;
    (*(v76 + 16))(v82, v53, v86);
    v63 = v78;
    (*(v78 + 16))(v84, v55, v89);
    v64 = v79;
    (*(v79 + 16))(v77, v56, v91);
    v65 = v93;
    sub_23B3923E8(v93, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353C8, &qword_23B523840);
    swift_dynamicCast();
    sub_23B3923E8(v95, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353D0, &qword_23B523848);
    swift_dynamicCast();
    sub_23B393B54(v104, &v96);
    v66 = type metadata accessor for WeatherServiceClientSettingsProvider();
    v67 = swift_allocObject();
    sub_23B399858(&v96, v67 + 16);
    v97 = v66;
    v98 = sub_23B391884(qword_280B45810, type metadata accessor for WeatherServiceClientSettingsProvider);
    *&v96 = v67;
    v68 = sub_23B50B764();
    v69 = objc_allocWithZone(v68);
    v70 = sub_23B50B754();
    v102 = v68;
    v103 = MEMORY[0x277D7AC40];
    *&v101 = v70;
    (*(v61 + 8))(v88, v92);
    (*(v64 + 8))(v85, v91);
    (*(v63 + 8))(v83, v89);
    (*(v62 + 8))(v75, v86);
    sub_23B399858(&v101, (a8 + 2));
    v49 = v65;
  }

  v71 = v95;
  sub_23B393B54((a8 + 2), &v101);
  type metadata accessor for WeatherAQIScaleService();
  v72 = swift_allocObject();
  *(v72 + 16) = v87;
  sub_23B399858(&v101, v72 + 24);
  *(a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_airQualityScaleService) = v72;
  v73 = a8[7];

  sub_23B395624();

  __swift_destroy_boxed_opaque_existential_1(v94);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v49);
  sub_23B393E24(v43, type metadata accessor for WDSEndpoint);
  __swift_destroy_boxed_opaque_existential_1(v104);
  return a8;
}

uint64_t sub_23B399858(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for WeatherServiceFetchOptions()
{
  result = qword_280B44A88;
  if (!qword_280B44A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3998BC()
{
  sub_23B399B1C(319, &qword_280B43430, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23B399ABC(319, &qword_280B452A0, MEMORY[0x277CC9A70]);
    if (v1 <= 0x3F)
    {
      sub_23B399B1C(319, qword_280B449D8, &type metadata for WeatherServiceLocationOptions, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23B399B1C(319, &qword_280B433C0, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_23B399ABC(319, qword_280B44BC8, type metadata accessor for WeatherNetworkActivity);
          if (v4 <= 0x3F)
          {
            sub_23B399ABC(319, &qword_280B452B0, MEMORY[0x277CC9578]);
            if (v5 <= 0x3F)
            {
              sub_23B399B1C(319, &qword_280B433D0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
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

void sub_23B399ABC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_23B399B1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t WeatherNetworkActivity.init(domain:label:token:parentToken:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v8 = *a2;
  *a5 = *a1;
  a5[1] = v8;
  v9 = type metadata accessor for WeatherNetworkActivity();
  sub_23B39857C(a3, &a5[*(v9 + 24)]);
  v10 = &a5[*(v9 + 28)];

  return sub_23B39857C(a4, v10);
}

unint64_t sub_23B399BF8()
{
  result = qword_280B43248;
  if (!qword_280B43248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43248);
  }

  return result;
}

void sub_23B399C6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for WeatherQuery();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B399CD8()
{
  sub_23B399E40(319, &qword_280B452C8, MEMORY[0x277CC88A8]);
  if (v0 <= 0x3F)
  {
    sub_23B3976E0(319, &qword_280B449D0);
    if (v1 <= 0x3F)
    {
      sub_23B3976E0(319, &qword_280B449C8);
      if (v2 <= 0x3F)
      {
        sub_23B3976E0(319, qword_280B44870);
        if (v3 <= 0x3F)
        {
          sub_23B399E40(319, qword_280B44D40, type metadata accessor for InstantWeatherQueryOptions);
          if (v4 <= 0x3F)
          {
            sub_23B399E40(319, qword_280B44978, type metadata accessor for WeatherQueryPeriodicRelativeRange);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23B399E40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_23B399E94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for InstantWeatherQueryOptions()
{
  result = qword_280B44D70;
  if (!qword_280B44D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B399F34()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B399FA8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23B399FA8()
{
  if (!qword_280B452C0)
  {
    sub_23B50AA24();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B452C0);
    }
  }
}

uint64_t type metadata accessor for WeatherQueryPeriodicRelativeRange()
{
  result = qword_280B449B0;
  if (!qword_280B449B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39A060()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B39A0E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B39A0E4()
{
  if (!qword_280B433C8)
  {
    v0 = sub_23B50D304();
    if (!v1)
    {
      atomic_store(v0, &qword_280B433C8);
    }
  }
}

void sub_23B39A134(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for WeatherQuery();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for MinuteWeather()
{
  result = qword_280B45008;
  if (!qword_280B45008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39A1D4()
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

WeatherKit::WeatherServiceLocationOptions __swiftcall WeatherServiceLocationOptions.init(decimalPrecision:limitsPrecision:)(Swift::Int_optional decimalPrecision, Swift::Bool_optional limitsPrecision)
{
  *v2 = decimalPrecision.value;
  *(v2 + 8) = decimalPrecision.is_nil;
  *(v2 + 9) = limitsPrecision;
  result.decimalPrecision = decimalPrecision;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for WeatherServiceLocationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

_BYTE *sub_23B39A2FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B39A398(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
    v9 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23B39A44C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_23B39A49C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void WeatherServiceCaching.Options.cacheReadPolicy.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if ((*v1 & 8) != 0)
  {
    v3 = 0;
    v6 = 0;
    v7 = 512;
  }

  else
  {
    v3 = (v2 & 1) == 0;
    v4 = (v2 >> 1) & 1;
    v5 = (v2 >> 2) & 1;
    v6 = 1;
    v7 = (v4 << 8) | (v5 << 16) | 0x10000000001;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 30) = 0;
  *(a1 + 24) = v7;
  *(a1 + 28) = WORD2(v7);
}

uint64_t sub_23B39A558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_23B39A5A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

void sub_23B39A5F4()
{
  if (!qword_280B45308)
  {
    sub_23B3EA0E8();
    v0 = sub_23B50A9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280B45308);
    }
  }
}

uint64_t type metadata accessor for PeriodicForecasts()
{
  result = qword_280B43D78;
  if (!qword_280B43D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39A698()
{
  type metadata accessor for WeatherMetadata();
  if (v0 <= 0x3F)
  {
    sub_23B39A71C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B39A71C()
{
  if (!qword_280B43400)
  {
    v0 = sub_23B50D304();
    if (!v1)
    {
      atomic_store(v0, &qword_280B43400);
    }
  }
}

uint64_t type metadata accessor for AirQuality()
{
  result = qword_280B444A8;
  if (!qword_280B444A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39A7B8()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B39A928(319, qword_280B43B78, type metadata accessor for ProviderAttribution);
    if (v1 <= 0x3F)
    {
      sub_23B50AB34();
      if (v2 <= 0x3F)
      {
        sub_23B39AA9C();
        if (v3 <= 0x3F)
        {
          sub_23B39A928(319, qword_280B44260, type metadata accessor for AirPollutant);
          if (v4 <= 0x3F)
          {
            type metadata accessor for WeatherMetadata();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23B39A928(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for ProviderAttribution()
{
  result = qword_280B43BA8;
  if (!qword_280B43BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39A9C8()
{
  sub_23B39AA44();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23B39AA44()
{
  if (!qword_280B452B8)
  {
    sub_23B50AB34();
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, &qword_280B452B8);
    }
  }
}

void sub_23B39AA9C()
{
  if (!qword_280B43438)
  {
    type metadata accessor for AirPollutant();
    v0 = sub_23B50D0C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280B43438);
    }
  }
}

uint64_t type metadata accessor for AirPollutant()
{
  result = qword_280B44298;
  if (!qword_280B44298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39AB50()
{
  result = type metadata accessor for AirPollutantMeasurement();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23B39ABD4()
{
  sub_23B392468(319, &qword_280B452E8, &qword_280B43390, 0x277CCADC8);
  if (v0 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452D0, &qword_280B43378, 0x277CCADB8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for WeatherChanges()
{
  result = qword_280B44670;
  if (!qword_280B44670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39ACC4()
{
  if (!qword_280B43418)
  {
    type metadata accessor for WeatherChange();
    v0 = sub_23B50D304();
    if (!v1)
    {
      atomic_store(v0, &qword_280B43418);
    }
  }
}

void sub_23B39AD1C()
{
  sub_23B39ACC4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherMetadata();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for WeatherChange()
{
  result = qword_280B44710;
  if (!qword_280B44710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39AE04()
{
  result = sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WeatherAlert()
{
  result = qword_280B44858;
  if (!qword_280B44858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39AED0()
{
  sub_23B50AB34();
  if (v0 <= 0x3F)
  {
    sub_23B50AD24();
    if (v1 <= 0x3F)
    {
      sub_23B39B030(319, &qword_280B452B0, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_23B39B030(319, &qword_280B452B8, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          sub_23B39B084();
          if (v4 <= 0x3F)
          {
            type metadata accessor for WeatherMetadata();
            if (v5 <= 0x3F)
            {
              sub_23B50AD64();
              if (v6 <= 0x3F)
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

void sub_23B39B030(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_23B39B084()
{
  if (!qword_280B43430)
  {
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, &qword_280B43430);
    }
  }
}

void sub_23B39B0D4()
{
  if (!qword_280B426F0)
  {
    v0 = type metadata accessor for WeatherQuery();
    if (!v1)
    {
      atomic_store(v0, &qword_280B426F0);
    }
  }
}

uint64_t type metadata accessor for HistoricalComparisons()
{
  result = qword_280B43A68;
  if (!qword_280B43A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39B170()
{
  sub_23B39B1F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherMetadata();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B39B1F4()
{
  if (!qword_280B433F8)
  {
    type metadata accessor for HistoricalComparison();
    v0 = sub_23B50D304();
    if (!v1)
    {
      atomic_store(v0, &qword_280B433F8);
    }
  }
}

uint64_t type metadata accessor for HistoricalComparison()
{
  result = qword_280B43B10;
  if (!qword_280B43B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39B298(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_23B3924C0(255, a3, a4);
    v5 = type metadata accessor for Trend();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23B39B2F0()
{
  sub_23B39B298(319, &qword_280B436C8, &qword_280B43388, 0x277CCAE48);
  if (v0 <= 0x3F)
  {
    sub_23B39B298(319, qword_280B436D0, &qword_280B433A0, 0x277CCAE20);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_23B39B3C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for TrendBaseline();
  if (v3 <= 0x3F)
  {
    result = sub_23B50A9E4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B39B474(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for TrendBaseline.Kind();
  if (v3 <= 0x3F)
  {
    result = sub_23B50A9E4();
    if (v4 <= 0x3F)
    {
      result = sub_23B50AD24();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void ProductRequirementsFactory.appRequiredProducts(for:)()
{
  OUTLINED_FUNCTION_21();
  v138 = v0;
  v141 = v1;
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange();
  v3 = *(*(PeriodicRelativeRange - 8) + 64);
  MEMORY[0x28223BE20](PeriodicRelativeRange);
  OUTLINED_FUNCTION_27();
  v142 = v5 - v4;
  v150 = sub_23B50AD24();
  v6 = OUTLINED_FUNCTION_5(v150);
  v140 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v149 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v147 = &v137 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v137 - v15);
  v17 = sub_23B50AEF4();
  v18 = OUTLINED_FUNCTION_5(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27();
  v25 = v24 - v23;
  v148 = sub_23B50AE84();
  v26 = OUTLINED_FUNCTION_5(v148);
  v139 = v27;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = &v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v146 = &v137 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  v35 = (v34 - 8);
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v137 - v37;
  v39 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  v43 = v35[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v39);
  v47 = v35[13];
  type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_1();
  v144 = v48;
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
  v52 = v35[14];
  OUTLINED_FUNCTION_1();
  v143 = PeriodicRelativeRange;
  __swift_storeEnumTagSinglePayload(v53, v54, v55, PeriodicRelativeRange);
  v56 = &v38[v35[10]];
  *v56 = xmmword_23B51CAD0;
  v56[16] = 0;
  v57 = &v38[v35[11]];
  *v57 = 0;
  *(v57 + 1) = 0;
  v57[16] = 2;
  v58 = v35[12];
  v145 = v38;
  v59 = &v38[v58];
  *v59 = 0;
  *(v59 + 1) = 0;
  v59[16] = 2;
  sub_23B39E56C(v138, v16, &qword_27E131F68, &unk_23B50F2A0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_23B50AEC4();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_23B497228(v16);
    }
  }

  else
  {
    (*(v20 + 32))(v25, v16, v17);
  }

  sub_23B50ADF4();
  (*(v20 + 8))(v25, v17);
  sub_23B50B9D4();
  v60 = v149;
  sub_23B50B994();
  sub_23B50ADE4();
  v61 = v140;
  (*(v140 + 8))(v60, v150);
  sub_23B50AE44();
  sub_23B50AB84();
  v139 = *(v139 + 8);
  (v139)(v32, v148);
  v62 = v141;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v39);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  v67 = v66[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v39);
  v71 = v62 + v66[8];
  *v71 = 0;
  *(v71 + 8) = 0;
  *(v71 + 16) = 1;
  v72 = v62 + v66[9];
  *v72 = 0;
  *(v72 + 8) = 0;
  *(v72 + 16) = 2;
  v73 = v62 + v66[10];
  *v73 = 0;
  *(v73 + 8) = 0;
  *(v73 + 16) = 2;
  v74 = v66[11];
  OUTLINED_FUNCTION_1();
  v75 = v144;
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v144);
  v79 = v66[12];
  OUTLINED_FUNCTION_1();
  v80 = v143;
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v143);
  v84 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts(0);
  v85 = *(v84 + 20);
  v86 = v84;
  v138 = v84;
  OUTLINED_FUNCTION_15_18(v85);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
  OUTLINED_FUNCTION_2_38(v87);
  OUTLINED_FUNCTION_55_3(v88);
  OUTLINED_FUNCTION_18_17(v16[9]);
  OUTLINED_FUNCTION_18_17(v16[10]);
  v89 = OUTLINED_FUNCTION_6_23();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v75);
  v92 = OUTLINED_FUNCTION_9_24(v16[12]);
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v80);
  OUTLINED_FUNCTION_15_18(*(v86 + 24));
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  OUTLINED_FUNCTION_2_38(v95);
  OUTLINED_FUNCTION_55_3(v96);
  OUTLINED_FUNCTION_18_17(v16[9]);
  OUTLINED_FUNCTION_18_17(v16[10]);
  v97 = OUTLINED_FUNCTION_6_23();
  v98 = v75;
  __swift_storeEnumTagSinglePayload(v97, v99, v100, v75);
  v101 = OUTLINED_FUNCTION_9_24(v16[12]);
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v80);
  (v139)(v146, v148);
  v104 = *(v61 + 32);
  v105 = v142;
  v106 = v150;
  v104(v142, v147, v150);
  v104(v105 + *(v80 + 20), v149, v106);
  *(v105 + *(v80 + 24)) = &unk_284E0DED8;
  v107 = v138;
  OUTLINED_FUNCTION_15_18(v138[7]);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F60, &qword_23B50F298);
  OUTLINED_FUNCTION_31_8(v108);
  v110 = OUTLINED_FUNCTION_9_24(v109);
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v39);
  v113 = OUTLINED_FUNCTION_6_23();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v98);
  v116 = v16[12];
  sub_23B3A003C(v105, v106 + v116);
  __swift_storeEnumTagSinglePayload(v106 + v116, 0, 1, v80);
  v117 = v106 + v16[8];
  *v117 = 0;
  *(v117 + 8) = 0;
  *(v117 + 16) = 1;
  v118 = (v106 + v16[9]);
  *v118 = 0;
  v118[1] = 0;
  OUTLINED_FUNCTION_19_14(v118);
  OUTLINED_FUNCTION_15_18(v107[9]);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
  OUTLINED_FUNCTION_1_32(v119);
  *(v120 + 16) = 2;
  OUTLINED_FUNCTION_20_15();
  *(v121 + 16) = 2;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v107[10]);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
  OUTLINED_FUNCTION_1_32(v122);
  OUTLINED_FUNCTION_19_14(v123);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v107[11]);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
  OUTLINED_FUNCTION_1_32(v124);
  *(v125 + 16) = 2;
  OUTLINED_FUNCTION_20_15();
  *(v126 + 16) = 2;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v107[12]);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE0, &unk_23B51CB40);
  OUTLINED_FUNCTION_1_32(v127);
  OUTLINED_FUNCTION_19_14(v128);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v107[13]);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F00, &qword_23B515830);
  OUTLINED_FUNCTION_1_32(v129);
  *(v130 + 16) = 2;
  OUTLINED_FUNCTION_20_15();
  *(v131 + 16) = 2;
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v107[14]);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F10, &unk_23B51CB50);
  OUTLINED_FUNCTION_1_32(v132);
  OUTLINED_FUNCTION_19_14(v133);
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_15_18(v107[15]);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF0, &qword_23B515828);
  OUTLINED_FUNCTION_1_32(v134);
  *(v135 + 16) = 2;
  OUTLINED_FUNCTION_20_15();
  *(v136 + 16) = 2;
  OUTLINED_FUNCTION_4_31();
  sub_23B3A09CC(v145, v62 + v107[8]);
  OUTLINED_FUNCTION_20();
}

uint64_t type metadata accessor for WeatherServiceLastFetched()
{
  result = qword_280B427A0;
  if (!qword_280B427A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39BDA8()
{
  v0 = sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_21();
  a19 = v37;
  a20 = v38;
  v157[1] = v39;
  v155 = v40;
  v163 = v41;
  OUTLINED_FUNCTION_147_0(a25);
  OUTLINED_FUNCTION_114_0(v42);
  OUTLINED_FUNCTION_115_0(v43);
  OUTLINED_FUNCTION_94_0(v44);
  OUTLINED_FUNCTION_93_0(v45);
  OUTLINED_FUNCTION_231_0(v46);
  OUTLINED_FUNCTION_73_1(v47);
  OUTLINED_FUNCTION_116_0(a28);
  v48 = a29;
  v148 = a29;
  v49 = a30;
  v50 = a31;
  v51 = a33;
  v52 = a34;
  v53 = a35;
  OUTLINED_FUNCTION_80_1(a36, v179);
  v54 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v54, v178);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v58);
  v59 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v59, &v174);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v63);
  v171 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_5(v171);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v67);
  v68 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v68, &v168);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v72);
  v73 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v73, &a15);
  v169 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v78);
  v79 = type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_2_0(v79, &a13);
  v167[0] = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_69_2();
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2_28(v84, &v156);
  v86 = v85;
  v141 = v85;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v90);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_2_28(v91, &v158);
  v93 = v92;
  v145 = v92;
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_258();
  OUTLINED_FUNCTION_174_0();
  OUTLINED_FUNCTION_2_28(v97, &v161);
  v99 = v98;
  v151 = v98;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_192_0(v160);
  type metadata accessor for WeatherQuery();
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_2_28(v103, &v164);
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_15_13();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_159_0();
  v107();
  v178[0] = v51;
  v108 = *(v99 + 16);
  OUTLINED_FUNCTION_279(&v171);
  v109();
  v178[1] = v50;
  v110 = *(v93 + 16);
  OUTLINED_FUNCTION_167_0(&v173);
  v111();
  v178[2] = v52;
  v112 = *(v86 + 16);
  OUTLINED_FUNCTION_160(&a9);
  OUTLINED_FUNCTION_131_0(&v176);
  v113();
  v178[3] = v52;
  OUTLINED_FUNCTION_50_1(&a11);
  OUTLINED_FUNCTION_136();
  v114();
  v179[0] = v53;
  OUTLINED_FUNCTION_50_1(&a14);
  v115 = OUTLINED_FUNCTION_49_2();
  v116(v115, v155, v170[0]);
  v179[1] = v52;
  OUTLINED_FUNCTION_39_6(v167);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_166_0();
  v117();
  v179[2] = v52;
  OUTLINED_FUNCTION_53_1(v170);
  v118 = OUTLINED_FUNCTION_269();
  v119(v118, v157[0], v171);
  v179[3] = v48;
  OUTLINED_FUNCTION_77_1(&v172);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_183_0();
  v120();
  v180 = v36;
  OUTLINED_FUNCTION_56_2(&v177);
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_224_0();
  v121();
  v181 = v50;
  OUTLINED_FUNCTION_184_0();
  v172 = v123;
  v173 = v122;
  OUTLINED_FUNCTION_297(&v166);
  OUTLINED_FUNCTION_204_0(&v169);
  OUTLINED_FUNCTION_144_0(&v175);
  OUTLINED_FUNCTION_120_0(v179);
  sub_23B39C90C(v163, v178, v160[1], v162, v161, 10, &v172, v124, v53, v139, v141, v52, v143, v145, v146, v148, v149, v151, v51, v153);
  v125 = *(v53 + 8);
  v126 = OUTLINED_FUNCTION_32();
  v127(v126);
  v128 = *(v93 + 24);
  v129 = OUTLINED_FUNCTION_243();
  v130(v129);
  (*(v52 + 8))(v170[1], v171);
  (*(v51 + 8))(v167[1], v49);
  OUTLINED_FUNCTION_56_1(&a14);
  OUTLINED_FUNCTION_268();
  v131();
  OUTLINED_FUNCTION_56_1(&a11);
  v132 = OUTLINED_FUNCTION_128_0();
  v133(v132);
  OUTLINED_FUNCTION_56_1(v157);
  v134 = OUTLINED_FUNCTION_277();
  v135(v134, v140);
  OUTLINED_FUNCTION_56_1(&v159);
  v136(v142, v144);
  OUTLINED_FUNCTION_56_1(&v162);
  v137(v147, v150);
  OUTLINED_FUNCTION_56_1(&v165);
  v138(v152, v154);
  OUTLINED_FUNCTION_20();
}

void OUTLINED_FUNCTION_144_0(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 200) = v1;
  *(v2 - 192) = v3;
  v4 = *(v2 - 440);
}

void OUTLINED_FUNCTION_16_1()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_16_10()
{

  JUMPOUT(0x23EE9D460);
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_16_17()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_16_19()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_140_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = *(v2 - 200);
  *(a1 - 16) = v3;
  *(a1 - 8) = v4;
  return 0;
}

void sub_23B39C90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v173 = v31;
  v33 = v32;
  v159 = v34;
  v181 = v20;
  v176 = *v20;
  v35 = sub_23B50AD24();
  v36 = OUTLINED_FUNCTION_5(v35);
  v179 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v175 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v41);
  MEMORY[0x28223BE20](v42);
  v44 = (&v158 - v43);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_76();
  v183 = v46;
  OUTLINED_FUNCTION_24_0();
  v47 = sub_23B50B7B4();
  v48 = OUTLINED_FUNCTION_5(v47);
  v177 = v49;
  v178 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_76();
  v182 = v54;
  v186 = v24;
  v187 = v26;
  v184 = v35;
  v170 = v30;
  v171 = v28;
  v166 = v39;
  v164 = v55;
  v161 = v56;
  v160 = v44;
  if (v26 == 1)
  {
    OUTLINED_FUNCTION_230_0((v24 & 0xFFFFFFFFFFFFFFFELL));
    TupleTypeMetadata = type metadata accessor for WeatherQuery();
    v58 = v187;
  }

  else
  {
    MEMORY[0x28223BE20](v53);
    OUTLINED_FUNCTION_248_0();
    v59 = 0;
    v60 = v24 & 0xFFFFFFFFFFFFFFFELL;
    while (v187 != v59)
    {
      v61 = *(v60 + 8 * v59);
      v26[v59++] = type metadata accessor for WeatherQuery();
    }

    v58 = v187;
    OUTLINED_FUNCTION_58_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v169 = &v158;
  v185 = TupleTypeMetadata;
  v62 = OUTLINED_FUNCTION_5(TupleTypeMetadata);
  v174 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_55(&v158 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = &v158;
  v162 = v67;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_248();
  _s21WeatherServiceRequestVMa();
  OUTLINED_FUNCTION_73_1(&v158);
  v172 = v69;
  v70 = OUTLINED_FUNCTION_6(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_0();
  v180 = v73;
  OUTLINED_FUNCTION_100(&v158);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_248_0();
  if (v58)
  {
    v75 = (v186 & 0xFFFFFFFFFFFFFFFELL);
    v76 = (v185 + 32);
    v77 = v33;
    v78 = v26;
    v79 = v58;
    do
    {
      if (v58 == 1)
      {
        v80 = 0;
      }

      else
      {
        v80 = *v76;
      }

      v81 = *v75++;
      v82 = v35 + v80;
      v83 = *v77++;
      v84 = type metadata accessor for WeatherQuery();
      OUTLINED_FUNCTION_2(v84);
      (*(v85 + 16))(v82, v83);
      *v78++ = v82;
      v76 += 4;
      --v79;
      v58 = v187;
    }

    while (v79);
  }

  v86 = v180;
  v87 = v159;
  v88 = v26;
  v89 = v173;
  sub_23B3ADF24(v88, v173, v58, v186, v180);
  (*(v174 + 8))(v35, v185);
  sub_23B3A0F38(v89, v86 + *(v172 + 5), v90, v91, v92, v93, v94, v95, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
  v96 = v183;
  sub_23B50AD14();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v97 = sub_23B50CDF4();
  __swift_project_value_buffer(v97, qword_280B4E9D8);
  v98 = v179;
  OUTLINED_FUNCTION_107_0();
  v99 = OUTLINED_FUNCTION_161_0();
  v100 = v184;
  v172 = v102;
  v173 = v101;
  (v102)(v99, v96, v184);
  v103 = v87;
  v104 = sub_23B50CDD4();
  v105 = sub_23B50D4C4();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = OUTLINED_FUNCTION_42_0();
    v107 = v100;
    v108 = OUTLINED_FUNCTION_303();
    v159 = OUTLINED_FUNCTION_42_0();
    v188 = v159;
    OUTLINED_FUNCTION_189_0(7.2226e-34);
    *(v106 + 14) = v103;
    *v108 = v103;
    *(v106 + 22) = 2082;
    v109 = OUTLINED_FUNCTION_222_0(&a9);
    v172(v109, v86, v107);
    v110 = v103;
    v111 = sub_23B50D1A4();
    v112 = v86;
    v114 = v113;
    v160 = *(v98 + 8);
    v160(v112, v107);
    v87 = sub_23B391F1C(v111, v114, &v188);

    *(v106 + 24) = v87;
    OUTLINED_FUNCTION_300(&dword_23B38D000, v115, v116, "About to fetch weather data; location=%{private,mask.hash}@, startTime=%{public}s");
    sub_23B398890(v108, &qword_27E132D80, &qword_23B5192E0);
    v100 = v107;
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_1(v159);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_109_0();
  }

  else
  {

    v118 = *(v98 + 8);
    v119 = OUTLINED_FUNCTION_227_0();
    v160 = v120;
    v117 = (v120)(v119);
  }

  MEMORY[0x28223BE20](v117);
  v121 = v180;
  *(&v158 - 4) = v181;
  *(&v158 - 3) = v121;
  v122 = v182;
  *(&v158 - 2) = v103;
  *(&v158 - 1) = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133950, &unk_23B519500);
  sub_23B50B0C4();
  v124 = v177;
  v123 = v178;
  OUTLINED_FUNCTION_107_0();
  v125 = OUTLINED_FUNCTION_199();
  v126(v125, v122, v123);
  v127 = (*(v124 + 80) + 24) & ~*(v124 + 80);
  v128 = swift_allocObject();
  *(v128 + 16) = v103;
  (*(v124 + 32))(v128 + v127, v87, v123);
  v161 = v103;
  v129 = sub_23B50B034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  v164 = sub_23B50B064();

  v172(v175, v183, v100);
  v130 = v187;
  v131 = v166;
  v132 = v163;
  if (v187)
  {
    v133 = (v186 & 0xFFFFFFFFFFFFFFFELL);
    v134 = (v185 + 32);
    v135 = v187;
    do
    {
      if (v130 == 1)
      {
        v136 = 0;
      }

      else
      {
        v136 = *v134;
      }

      v137 = *v133++;
      v138 = *v33++;
      v139 = type metadata accessor for WeatherQuery();
      OUTLINED_FUNCTION_2(v139);
      (*(v140 + 16))(v132 + v136, v138);
      v134 += 4;
      --v135;
    }

    while (v135);
  }

  v141 = v130;
  v142 = v179;
  v143 = (*(v179 + 80) + 32) & ~*(v179 + 80);
  v144 = (v131 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
  v145 = v174;
  v146 = (*(v174 + 80) + v144 + 8) & ~*(v174 + 80);
  v147 = (v162 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
  v148 = swift_allocObject();
  *(v148 + 16) = v141;
  OUTLINED_FUNCTION_175();
  *(v148 + 24) = swift_allocateMetadataPack();
  (*(v142 + 32))(v148 + v143, v175, v184);
  v149 = v161;
  *(v148 + v144) = v161;
  (*(v145 + 32))(v148 + v146, v132, v185);
  v150 = (v148 + v147);
  v152 = v170;
  v151 = v171;
  *v150 = v170;
  v150[1] = v151;
  v153 = v149;

  v154 = sub_23B50B034();
  OUTLINED_FUNCTION_152_0();
  sub_23B50B074();

  v155 = swift_allocObject();
  v155[2] = v141;
  OUTLINED_FUNCTION_175();
  v155[3] = swift_allocateMetadataPack();
  v155[4] = v153;
  v155[5] = v152;
  v155[6] = v151;
  v156 = v153;

  v157 = sub_23B50B034();
  sub_23B50B084();

  v160(v183, v184);
  (*(v177 + 8))(v182, v178);
  sub_23B3A24BC(v180, _s21WeatherServiceRequestVMa);
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_175_0();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B39D33C()
{
  v1 = sub_23B50B7B4();
  OUTLINED_FUNCTION_5(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

void sub_23B39D3F4()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_23B50AD24();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v8 = *(v6 + 80);
  v10 = *(v9 + 64);
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_230_0((v3 & 0xFFFFFFFFFFFFFFFELL));
    TupleTypeMetadata = type metadata accessor for WeatherQuery();
  }

  else
  {
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27_3();
    v12 = 0;
    v13 = v3 & 0xFFFFFFFFFFFFFFFELL;
    while (v2 != v12)
    {
      v14 = *(v13 + 8 * v12);
      *(v1 + 8 * v12++) = type metadata accessor for WeatherQuery();
    }

    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v15 = (v8 + 32) & ~v8;
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(TupleTypeMetadata - 8);
  v18 = (v16 + *(v17 + 80) + 8) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v7 + 8))(v0 + v15, v4);

  (*(v17 + 8))(v0 + v18, TupleTypeMetadata);
  v20 = *(v0 + v19 + 8);

  swift_deallocObject();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B39D5BC()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t _s21WeatherServiceRequestVMa()
{
  result = qword_280B445D8;
  if (!qword_280B445D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39D648()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AC8, &unk_23B519F60);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_23B39D678()
{
  sub_23B39D6FC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WeatherServiceOptions();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B39D6FC()
{
  if (!qword_280B433D8)
  {
    v0 = sub_23B50D304();
    if (!v1)
    {
      atomic_store(v0, &qword_280B433D8);
    }
  }
}

uint64_t type metadata accessor for WeatherServiceOptions()
{
  result = qword_280B44CA8;
  if (!qword_280B44CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39D798()
{
  sub_23B399E94(319, &qword_280B452C8, MEMORY[0x277CC88A8]);
  if (v0 <= 0x3F)
  {
    sub_23B3976E0(319, &qword_280B449C0);
    if (v1 <= 0x3F)
    {
      sub_23B3976E0(319, qword_280B44918);
      if (v2 <= 0x3F)
      {
        sub_23B399E94(319, qword_280B448D0, type metadata accessor for WeatherServicePeriodicRelativeRange);
        if (v3 <= 0x3F)
        {
          sub_23B3976E0(319, &qword_280B44868);
          if (v4 <= 0x3F)
          {
            sub_23B399E94(319, qword_280B44D40, type metadata accessor for InstantWeatherQueryOptions);
            if (v5 <= 0x3F)
            {
              sub_23B399E94(319, &qword_280B452A0, MEMORY[0x277CC9A70]);
              if (v6 <= 0x3F)
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

uint64_t type metadata accessor for WeatherServicePeriodicRelativeRange()
{
  result = qword_280B44908;
  if (!qword_280B44908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39D980(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v68 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F70, &unk_23B5192B0);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v71 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F58, &qword_23B50F290);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v72 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v70 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v69 = &v67 - v23;
  *a1 = MEMORY[0x277D84F90];
  v24 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);
  v31 = type metadata accessor for WeatherServicePeriodicRelativeRange();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  Options = type metadata accessor for InstantWeatherQueryOptions();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, Options);
  v39 = sub_23B50AEF4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  v43 = a1 + *(_s21WeatherServiceRequestVMa() + 20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v24);
  v47 = type metadata accessor for WeatherServiceOptions();
  v48 = v47[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v24);
  v52 = v43 + v47[6];
  *v52 = 0;
  *(v52 + 8) = 0;
  *(v52 + 16) = 1;
  v53 = v43 + v47[7];
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 16) = 2;
  v54 = v47[8];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v31);
  v58 = v43 + v47[9];
  *v58 = 0;
  *(v58 + 8) = 0;
  *(v58 + 16) = 2;
  v59 = v47[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, Options);
  v63 = v47[11];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v39);
  sub_23B39A558(v69, v43, &qword_27E131F00, &unk_23B5257B0);
  sub_23B39A558(v70, v43 + v48, &qword_27E131F00, &unk_23B5257B0);
  *v52 = 0;
  *(v52 + 8) = 0;
  *(v52 + 16) = 1;
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 16) = 2;
  sub_23B39A558(v72, v43 + v54, &qword_27E131F58, &qword_23B50F290);
  *v58 = 0;
  *(v58 + 8) = 0;
  *(v58 + 16) = 2;
  sub_23B39A558(v71, v43 + v59, &qword_27E131F70, &unk_23B5192B0);
  sub_23B39A558(v68, v43 + v63, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_20();
}

void sub_23B39DCFC(char a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + *(type metadata accessor for WeatherServiceFetchOptions() + 56));
  v10[0] = sub_23B50B624();
  v10[1] = v6;
  v9[2] = v10;
  LOBYTE(v5) = sub_23B39DDB8(sub_23B3E46FC, v9, v5);

  if ((v5 & 1) == 0)
  {
    sub_23B3AE65C();
    v7 = *(*a3 + 16);
    sub_23B3AEAD8(v7);
    v8 = *a3;
    *(v8 + 16) = v7 + 1;
    *(v8 + v7 + 32) = a1;
  }
}

BOOL sub_23B39DDB8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_23B39DE94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v72 = a2;
  v74 = sub_23B50AA24();
  v76 = *(v74 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v64 - v10;
  v11 = type metadata accessor for WeatherQuery();
  v73 = *(v11 - 8);
  v12 = *(v73 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F08, &unk_23B50F240);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  v25 = type metadata accessor for WeatherServiceOptions();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v30 = *(_s21WeatherServiceRequestVMa() + 20);
  sub_23B3AEEF0(a1 + v30, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  if (v31 == v77)
  {
    v67 = v24;
    v68 = v17;
    v65 = v15;
    v66 = v22;
    v77 = v11;
    v69 = v30;
    v32 = v76;

    if (sub_23B3AF288(3, v29))
    {

      return sub_23B3AF34C(v28, type metadata accessor for WeatherServiceOptions);
    }

    sub_23B3AF34C(a1, _s21WeatherServiceRequestVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23B3AE984(0, *(v29 + 16) + 1, 1, v29);
      v29 = v62;
    }

    v35 = *(v29 + 16);
    v34 = *(v29 + 24);
    v36 = v77;
    v37 = v75;
    v38 = v68;
    if (v35 >= v34 >> 1)
    {
      sub_23B3AE984(v34 > 1, v35 + 1, 1, v29);
      v37 = v75;
      v29 = v63;
    }

    v39 = v73;
    *(v29 + 16) = v35 + 1;
    *(v29 + v35 + 32) = 3;
    v40 = v25;
    v41 = &v28[*(v25 + 28)];
    if (v41[16] == 2)
    {
      (*(v39 + 16))(v38, v72, v36);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
      v43 = v67;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v43, 0, 1, v42);
        v44 = v43 + *(v42 + 36);
        v45 = v43;
        v46 = *v44;
        v47 = *(v44 + 8);
        v48 = *(v44 + 16);
        sub_23B398890(v45, &qword_27E131F10, &unk_23B51CB10);
        v37 = v75;
        v40 = v25;
        if (v48 != 2)
        {
          *v41 = v46;
          *(v41 + 1) = v47;
          v41[16] = v48 & 1;
          v49 = v64;
          v50 = v69;
LABEL_20:
          sub_23B3AEEF0(v28, v49 + v50);
          *v49 = v29;
          return sub_23B3AF34C(v28, type metadata accessor for WeatherServiceOptions);
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v43, 1, 1, v42);
        sub_23B398890(v43, &qword_27E131F08, &unk_23B50F240);
        v37 = v75;
        v40 = v25;
      }
    }

    v51 = *(v40 + 20);
    v52 = v37;
    sub_23B39A44C(&v28[v51], v37, &qword_27E131F00, &unk_23B5257B0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v74);
    sub_23B398890(v52, &qword_27E131F00, &unk_23B5257B0);
    v54 = EnumTagSinglePayload == 1;
    v49 = v64;
    v50 = v69;
    if (!v54)
    {
      goto LABEL_20;
    }

    (*(v39 + 16))(v65, v72, v77);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
    v56 = v66;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v55);
      v57 = v71;
      sub_23B39A44C(v56 + *(v55 + 28), v71, &qword_27E131F00, &unk_23B5257B0);
      sub_23B398890(v56, &qword_27E131F10, &unk_23B51CB10);
      v58 = v74;
      if (__swift_getEnumTagSinglePayload(v57, 1, v74) != 1)
      {
        v59 = *(v32 + 32);
        v60 = v70;
        v59(v70, v57, v58);
        sub_23B398890(&v28[v51], &qword_27E131F00, &unk_23B5257B0);
        v59(&v28[v51], v60, v58);
        v49 = v64;
        __swift_storeEnumTagSinglePayload(&v28[v51], 0, 1, v58);
        goto LABEL_20;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v56, 1, 1, v55);
      sub_23B398890(v56, &qword_27E131F08, &unk_23B50F240);
      v57 = v71;
      __swift_storeEnumTagSinglePayload(v71, 1, 1, v74);
    }

    sub_23B398890(v57, &qword_27E131F00, &unk_23B5257B0);
    goto LABEL_20;
  }

  return sub_23B3AF34C(v28, type metadata accessor for WeatherServiceOptions);
}

uint64_t sub_23B39E56C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B39E5D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v69 = a2;
  v72 = sub_23B50AA24();
  v67 = *(v72 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v72);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v60 - v10;
  v11 = type metadata accessor for WeatherQuery();
  v70 = *(v11 - 8);
  v12 = *(v70 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F18, &unk_23B50F250);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v60 - v23;
  v25 = type metadata accessor for WeatherServiceOptions();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v30 = *(_s21WeatherServiceRequestVMa() + 20);
  sub_23B3AEEF0(a1 + v30, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  if (v31 == v73)
  {
    v63 = v22;
    v64 = v24;
    v62 = v15;
    v73 = v11;
    v65 = v30;
    v32 = v72;

    if (sub_23B3AF288(2, v29))
    {

      return sub_23B3AF34C(v28, type metadata accessor for WeatherServiceOptions);
    }

    sub_23B3AF34C(a1, _s21WeatherServiceRequestVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23B3AE984(0, *(v29 + 16) + 1, 1, v29);
      v29 = v58;
    }

    v35 = *(v29 + 16);
    v34 = *(v29 + 24);
    v36 = v73;
    v37 = v71;
    v38 = v64;
    if (v35 >= v34 >> 1)
    {
      sub_23B3AE984(v34 > 1, v35 + 1, 1, v29);
      v37 = v71;
      v36 = v73;
      v29 = v59;
    }

    *(v29 + 16) = v35 + 1;
    *(v29 + v35 + 32) = 2;
    v39 = &v28[*(v25 + 24)];
    v40 = v70;
    if (v39[16] == 1)
    {
      (*(v70 + 16))(v17, v69, v36);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
        v42 = v38 + *(v41 + 32);
        v43 = v38;
        v44 = *v42;
        v45 = *(v42 + 8);
        v46 = *(v42 + 16);
        sub_23B398890(v43, &qword_27E131F20, &unk_23B51CB20);
        v37 = v71;
        if ((v46 & 1) == 0)
        {
          *v39 = v44;
          *(v39 + 1) = v45;
          v39[16] = 0;
          v47 = v61;
          v48 = v65;
LABEL_20:
          sub_23B3AEEF0(v28, v47 + v48);
          *v47 = v29;
          return sub_23B3AF34C(v28, type metadata accessor for WeatherServiceOptions);
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v38, 1, 1, v41);
        sub_23B398890(v38, &qword_27E131F18, &unk_23B50F250);
        v37 = v71;
      }
    }

    v49 = v37;
    sub_23B39A44C(v28, v37, &qword_27E131F00, &unk_23B5257B0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v32);
    sub_23B398890(v49, &qword_27E131F00, &unk_23B5257B0);
    v51 = EnumTagSinglePayload == 1;
    v47 = v61;
    v48 = v65;
    if (!v51)
    {
      goto LABEL_20;
    }

    (*(v40 + 16))(v62, v69, v73);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
    v53 = v63;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
      v54 = v68;
      sub_23B39A44C(v53, v68, &qword_27E131F00, &unk_23B5257B0);
      sub_23B398890(v53, &qword_27E131F20, &unk_23B51CB20);
      if (__swift_getEnumTagSinglePayload(v54, 1, v32) != 1)
      {
        v55 = v66;
        v56 = *(v67 + 32);
        v56(v66, v54, v32);
        sub_23B398890(v28, &qword_27E131F00, &unk_23B5257B0);
        v56(v28, v55, v32);
        v47 = v61;
        __swift_storeEnumTagSinglePayload(v28, 0, 1, v32);
        goto LABEL_20;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v53, 1, 1, v52);
      sub_23B398890(v53, &qword_27E131F18, &unk_23B50F250);
      v54 = v68;
      __swift_storeEnumTagSinglePayload(v68, 1, 1, v32);
    }

    sub_23B398890(v54, &qword_27E131F00, &unk_23B5257B0);
    goto LABEL_20;
  }

  return sub_23B3AF34C(v28, type metadata accessor for WeatherServiceOptions);
}

uint64_t type metadata accessor for HourMarineWeather()
{
  result = qword_280B45290;
  if (!qword_280B45290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B39ECF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_23B39EDA0()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Swell();
    if (v1 <= 0x3F)
    {
      sub_23B392F50();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void OUTLINED_FUNCTION_54_1(uint64_t a1@<X8>)
{
  *(v4 - 96) = a1;
  *(v4 - 88) = v1;
  *(v4 - 80) = v2;
  *(v4 - 72) = v3;
}

void sub_23B39EEA0(uint64_t a1, uint64_t a2, uint64_t *a3, ValueMetadata *a4)
{
  v7 = type metadata accessor for WeatherQuery();
  v8 = OUTLINED_FUNCTION_5(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  if (type metadata accessor for CurrentWeather() == a4 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0) == a4)
  {
    goto LABEL_21;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70) == a4)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_20();

    sub_23B39DE94(v32, v33, v34);
    return;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60) == a4)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_20();

    sub_23B39E5D4(v36, v37, v38);
    return;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC8, &unk_23B50F1F0) == a4 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40) == a4)
  {
    goto LABEL_21;
  }

  if (a4 == &type metadata for WeatherAvailability)
  {
    v40 = sub_23B3B06B0(*a3);

    *a3 = v40;
LABEL_33:
    OUTLINED_FUNCTION_20();
    return;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED0, &qword_23B50F200) == a4)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_20();

    sub_23B3E3E88(v41, v42, v43);
    return;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131ED8, &qword_23B50F208) == a4)
  {
    goto LABEL_21;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE0, &qword_23B50F210) == a4)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_20();

    sub_23B3E422C(v45, v46, v47);
    return;
  }

  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EE8, &qword_23B50F218) == a4 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220) == a4 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360) == a4 || type metadata accessor for LocationInfo() == a4 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF8, &unk_23B50F230) == a4)
  {
LABEL_21:
    OUTLINED_FUNCTION_20();

    sub_23B39DCFC(v28, v29, v30);
    return;
  }

  if (type metadata accessor for PeriodicForecasts() != a4)
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v18 = sub_23B50CDF4();
    __swift_project_value_buffer(v18, qword_280B4E9D8);
    v19 = *(v10 + 16);
    v19(v17, a1, v7);
    v20 = sub_23B50CDD4();
    v21 = sub_23B50D4B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v54 = v23;
      *v22 = 136446210;
      v19(v15, v17, v7);
      v24 = sub_23B50D184();
      v26 = v25;
      (*(v10 + 8))(v17, v7);
      v27 = sub_23B391F1C(v24, v26, &v54);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_23B38D000, v20, v21, "Unknown default; availableDataSets=%{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x23EE9E260](v23, -1, -1);
      MEMORY[0x23EE9E260](v22, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v17, v7);
    }

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_20();

  sub_23B3C255C(v49, v50, v51);
}

uint64_t type metadata accessor for Swell()
{
  result = qword_280B437E0;
  if (!qword_280B437E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39F440()
{
  sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
  if (v0 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B45310, &qword_280B433B0, 0x277CCADA8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_6_9(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_23B3F1C50(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_6_13()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_6_15()
{

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_6_24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 104);
  v5 = *(v1 - 96);

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_6_27()
{

  return sub_23B4E2428(v0, type metadata accessor for HistoricalFact.Argument);
}

uint64_t OUTLINED_FUNCTION_6_28()
{

  return type metadata accessor for WeatherServiceOptions();
}

uint64_t OUTLINED_FUNCTION_6_29()
{

  return sub_23B50D8C4();
}

uint64_t OUTLINED_FUNCTION_6_30()
{
  v3 = v0 + *(v1 + 24);
  *v3 = 0;
  *(v3 + 8) = 768;
  v4 = *(v1 + 36);

  return type metadata accessor for WeatherNetworkActivity();
}

uint64_t OUTLINED_FUNCTION_6_32()
{
  v2 = *(v0 - 88);

  return sub_23B50D734();
}

BOOL OUTLINED_FUNCTION_17_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_1()
{
  v1 = *(v0 - 248);
  v2 = *(*(v0 - 256) + 8);
  return *(v0 - 240);
}

uint64_t OUTLINED_FUNCTION_17_2()
{
  v3 = *(v2 - 144);
  v4 = *(v2 - 136) + *(v1 + 72) * v0;
  v5 = *(v1 + 16);
  return *(v2 - 112);
}

uint64_t OUTLINED_FUNCTION_17_4()
{
  v3 = *(v0 - 224);
  v2 = *(v0 - 216);
  v4 = *(v0 - 152);

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t result)
{
  *(v2 + 32) = result;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_9()
{
  v2 = *(*(v1 - 120) + 8);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return sub_23B50D794();
}

uint64_t OUTLINED_FUNCTION_12_1@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_11()
{

  return sub_23B50D824();
}

void OUTLINED_FUNCTION_17_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_17_15@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

void OUTLINED_FUNCTION_17_19(uint64_t a1@<X8>, uint64_t a2)
{
  v6 = *(a2 + 8 * v2);
  v7 = *(v3 + 8 * v2);
  v8 = *(v4 + 8 * v2);
  v9 = *(v5 + 8 * v2);
  v10 = *(a1 + 8 * v2);
}

uint64_t OUTLINED_FUNCTION_17_20()
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return type metadata accessor for MonthPrecipitationStatistics();
}

void OUTLINED_FUNCTION_4_7(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

BOOL OUTLINED_FUNCTION_4_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_4_11()
{

  return [v0 (v1 + 1016)];
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return sub_23B50AD24();
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return sub_23B50D794();
}

uint64_t OUTLINED_FUNCTION_4_17@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return type metadata accessor for DayPrecipitationStatistics();
}

uint64_t OUTLINED_FUNCTION_4_31()
{
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 44), 1, 1, v2);
  v4 = v1 + *(v3 + 48);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_4_33()
{
  result = *(v0 - 392);
  v2 = *(v0 - 384);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_34@<X0>(__int128 *a1@<X8>)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v4 = *(a1 + 6);
  v3 = a1 + 24;
  v7 = *(v3 + 4);
  v6 = *(v3 + 6);

  return type metadata accessor for WeatherServiceFetchOptions();
}

uint64_t OUTLINED_FUNCTION_4_37()
{
  v6 = *(v3 + 8 * v5);
  v7 = *(v1 + 8 * v5);
  v8 = *(v0 + 8 * v5);
  v2[6] = *(v4 + 8 * v5);
  v2[7] = v6;
  v2[8] = v7;
  v2[9] = v8;
  return 255;
}

void OUTLINED_FUNCTION_4_39()
{
  v3 = v0 + *(v1 + 32);
  *v3 = 0;
  *(v3 + 8) = 3;
  v4 = v0 + *(v1 + 36);
  *v4 = 0;
  *(v4 + 8) = 3;
  v5 = *(v2 - 8);
}

uint64_t OUTLINED_FUNCTION_4_40()
{
  v2 = *(v1 - 152);
  v3 = *(*(v1 - 160) + 8);
  return v0;
}

void OUTLINED_FUNCTION_4_41(uint64_t a1@<X8>)
{
  v5 = v2 + a1;
  *v5 = v1;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t OUTLINED_FUNCTION_4_44()
{

  return sub_23B4F21E8(v0, type metadata accessor for AirQualityData);
}

void OUTLINED_FUNCTION_4_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, uint64_t a11, uint64_t a12)
{
  *(v13 + 8) = a10;
  *(v12 + *(v14 + 28)) = a11;
  *(v12 + *(v14 + 32)) = a12;
}

void OUTLINED_FUNCTION_4_46()
{
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
}

uint64_t type metadata accessor for TideEvents()
{
  result = qword_280B44340;
  if (!qword_280B44340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B39FF38()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B3A00A0(319, &qword_280B433E8, type metadata accessor for TideEvent);
    if (v1 <= 0x3F)
    {
      sub_23B3A00A0(319, &qword_280B433F0, type metadata accessor for HourTide);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLLocationCoordinate2D();
        if (v3 <= 0x3F)
        {
          type metadata accessor for WeatherMetadata();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B3A003C(uint64_t a1, uint64_t a2)
{
  PeriodicRelativeRange = type metadata accessor for WeatherQueryPeriodicRelativeRange();
  (*(*(PeriodicRelativeRange - 8) + 32))(a2, a1, PeriodicRelativeRange);
  return a2;
}

void sub_23B3A00A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B50D304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void OUTLINED_FUNCTION_14_3()
{

  JUMPOUT(0x23EE9E260);
}

uint64_t OUTLINED_FUNCTION_14_4@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_23B50D7C4();
}

uint64_t OUTLINED_FUNCTION_14_5()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_14_13()
{

  return sub_23B50AA24();
}

uint64_t OUTLINED_FUNCTION_14_16()
{
  v2 = *(v0 + 8);
  result = *(v1 - 112);
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_18()
{

  return type metadata accessor for PrecipitationAmount();
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return type metadata accessor for SnowfallAmount();
}

uint64_t OUTLINED_FUNCTION_14_20()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_14_24(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_14_27@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

void OUTLINED_FUNCTION_14_28(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v1 = v4;
  *(v1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_14_29@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;
  result = v1 - 104;
  v4 = *(v1 - 168);
  v3 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_30()
{
  v1 = *(v0 - 200);
  v2 = *(*(v0 - 208) + 8);
  return *(v0 - 192);
}

void OUTLINED_FUNCTION_1_2(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return sub_23B50D524();
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return sub_23B50D704();
}

uint64_t OUTLINED_FUNCTION_1_16()
{
  *(v3 - 124) = *v0;
  result = v1;
  v5 = *(v3 - 120);
  *(v3 - 120) = *(v2 + 16);
  return result;
}

void OUTLINED_FUNCTION_1_17(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 2;
}

void OUTLINED_FUNCTION_1_18()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];
}

uint64_t OUTLINED_FUNCTION_1_21()
{
  v2 = *(v0 - 96);

  return sub_23B50D764();
}

uint64_t OUTLINED_FUNCTION_1_29@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v3 = *(result + 8);
  v5 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_32(int *a1)
{
  result = __swift_storeEnumTagSinglePayload(v2 + a1[7], 1, 1, v3);
  v6 = v2 + a1[8];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = v1;
  v7 = (v2 + a1[9]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_35()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_1_37()
{

  return sub_23B50A9B4();
}

uint64_t OUTLINED_FUNCTION_1_38@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 2520);

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_1_39@<X0>(uint64_t a1@<X8>)
{
  v5 = *v2;
  v6 = *v3;
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = v5;
  v4[5] = v6;
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_44()
{

  return sub_23B50D674();
}

uint64_t OUTLINED_FUNCTION_1_46(uint64_t a1, void *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t type metadata accessor for TideEvent()
{
  result = qword_280B434D8;
  if (!qword_280B434D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B3A0940()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B392D14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23B3A09CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for HourTide()
{
  result = qword_280B43618;
  if (!qword_280B43618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double OUTLINED_FUNCTION_11_3@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  if (result == 0.0)
  {
    return v2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_11_21()
{
  result = __swift_storeEnumTagSinglePayload(v1 + v0[7], 1, 1, v3);
  v5 = v1 + v0[8];
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = v2;
  v6 = (v1 + v0[9]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_22()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_23()
{
  result = *(v2 + v0 + 8);
  v4 = *(v1 + v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_24()
{
  *(v1 - 96) = v0;
  v3 = *(v1 - 104);

  return sub_23B50D7F4();
}

uint64_t OUTLINED_FUNCTION_11_25@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_23B39A49C(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_11_27()
{

  return sub_23B50D8C4();
}

uint64_t OUTLINED_FUNCTION_11_28@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;
  result = v1 - 112;
  v4 = *(v1 - 192);
  v3 = *(v1 - 184);
  v5 = *(v1 - 160);
  return result;
}

void sub_23B3A0D24()
{
  sub_23B50AD24();
  if (v0 <= 0x3F)
  {
    sub_23B392D14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_25_5()
{
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return sub_23B4338F4(v3, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_9()
{

  return sub_23B398890(v2 - 128, v1, v0);
}

uint64_t OUTLINED_FUNCTION_25_12@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;
  v3 = *(v1 - 112);

  return sub_23B50D6E4();
}

void type metadata accessor for CLLocationCoordinate2D()
{
  if (!qword_280B43380)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280B43380);
    }
  }
}

void sub_23B3A0F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_23B50CB54();
  v26 = OUTLINED_FUNCTION_5(v25);
  v176 = v27;
  v177 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v178 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  OUTLINED_FUNCTION_3(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_3(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_29_8(v40, v167);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D20, &qword_23B515138);
  OUTLINED_FUNCTION_3(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_52();
  v175 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D28, &unk_23B5193A0);
  OUTLINED_FUNCTION_3(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_52();
  v179 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D30, &qword_23B515140);
  OUTLINED_FUNCTION_3(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_52();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v59);
  v60 = sub_23B50B844();
  v61 = OUTLINED_FUNCTION_2_0(v60, &v186);
  v169 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D38, &unk_23B5193B0);
  OUTLINED_FUNCTION_3(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_52();
  v181 = v70;
  OUTLINED_FUNCTION_24_0();
  v71 = sub_23B50AD24();
  v72 = OUTLINED_FUNCTION_2_0(v71, &a10);
  v171 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F58, &qword_23B50F290);
  OUTLINED_FUNCTION_3(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_52();
  v84 = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D40, &unk_23B5193C0);
  OUTLINED_FUNCTION_3(v85);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_52();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v90 = OUTLINED_FUNCTION_3(v89);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_214_0();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_24_0();
  v94 = sub_23B50B7E4();
  v95 = OUTLINED_FUNCTION_5(v94);
  v97 = v96;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_6_0();
  v180 = v100;
  OUTLINED_FUNCTION_24_0();
  v101 = sub_23B50B604();
  v102 = OUTLINED_FUNCTION_3(v101);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_6_0();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D48, &unk_23B5193D0);
  OUTLINED_FUNCTION_3(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_23();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v109);
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_15_13();
  sub_23B50AD84();
  OUTLINED_FUNCTION_80_1(v113, &a14);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v115 = v24 + Options[5];
  sub_23B3A23E0();
  v116 = v24[1];
  OUTLINED_FUNCTION_145_0(*v24);
  v182 = Options;
  v117 = v24 + Options[6];
  if ((*(v117 + 4) & 0xFF00) == 0x300)
  {
    sub_23B50B834();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
  }

  else
  {
    v122 = *v117;

    sub_23B50B824();
    sub_23B50B834();
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
  }

  v183 = *(v24 + Options[7]);
  sub_23B3A1C3C();
  v127 = v24 + Options[13];
  v128 = *(v127 + 6) | ((*(v127 + 14) | (v127[30] << 16)) << 32);
  if ((*(v127 + 6) & 0xFF00) == 0x200)
  {
    (*(v97 + 104))(v180, *MEMORY[0x277D7AC70], v94);
  }

  else
  {
    v129 = *(v127 + 2);
    v130 = *(v127 + 2);
    v131 = *v127;
    v191 = v130 & 1;
    v190 = v128 & 1;
    v132 = vdupq_n_s64(v128);
    v183 = v131;
    v184 = v130 & 1;
    v185 = v129;
    v186 = v128 & 1;
    *v132.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v132, xmmword_23B5192A0), vshlq_u64(v132, xmmword_23B519290))), 0x1000100010001);
    v187 = vuzp1_s8(*v132.i8, *v132.i8).u32[0];
    v188 = BYTE5(v128) & 1;
    v189 = BYTE6(v128) & 1;
    sub_23B3A205C();
    (*(v97 + 104))(v180, *MEMORY[0x277D7AC68], v94);
  }

  v133 = *(v24 + Options[8]);
  OUTLINED_FUNCTION_160(&a17);
  sub_23B3A23E0();
  v134 = type metadata accessor for WeatherServiceOptions();
  v135 = v20 + v134[5];
  sub_23B3A23E0();
  v136 = v134[8];
  sub_23B3A23E0();
  v137 = type metadata accessor for WeatherServicePeriodicRelativeRange();
  OUTLINED_FUNCTION_51(v84, 1, v137);
  if (v138)
  {

    sub_23B398890(v84, &qword_27E131F58, &qword_23B50F290);
  }

  else
  {
    v139 = *(v171 + 16);
    v140 = OUTLINED_FUNCTION_222_0(&v183);
    v139(v140, v84);
    v139(v168, v84 + *(v137 + 5));
    v137 = *(v84 + *(v137 + 6));

    sub_23B50B884();
    sub_23B3A24BC(v84, type metadata accessor for WeatherServicePeriodicRelativeRange);
  }

  v141 = v179;
  v142 = sub_23B50B894();
  OUTLINED_FUNCTION_254_0(v142);
  v143 = (v20 + v134[6]);
  if ((v143[2] & 1) == 0)
  {
    v144 = *v143;
    v145 = v143[1];
    (*(v169 + 104))(v173, *MEMORY[0x277D7ACA8]);
    v146 = v24 + v182[12];
    sub_23B3A23E0();
    v147 = OUTLINED_FUNCTION_172_0();
    OUTLINED_FUNCTION_51(v147, v148, v172);
    if (v138)
    {
      sub_23B50ACE4();
      v149 = OUTLINED_FUNCTION_172_0();
      OUTLINED_FUNCTION_51(v149, v150, v172);
      if (!v138)
      {
        sub_23B398890(v170, &qword_27E131E18, &unk_23B50F710);
      }
    }

    else
    {
      v151 = *(v171 + 32);
      v152 = OUTLINED_FUNCTION_243();
      v153(v152);
    }

    sub_23B50B854();
    v137 = 0;
    v141 = v179;
  }

  v154 = sub_23B50B864();
  __swift_storeEnumTagSinglePayload(v181, v137, 1, v154);
  v155 = *(v20 + v134[7] + 16);
  if (v155 != 2)
  {
    OUTLINED_FUNCTION_271(v155);
    v137 = &v183;
    sub_23B3D112C();
  }

  v156 = sub_23B50B874();
  OUTLINED_FUNCTION_254_0(v156);
  v157 = *(v20 + v134[9] + 16);
  if (v157 != 2)
  {
    OUTLINED_FUNCTION_271(v157);
    sub_23B3D112C();
    v137 = 0;
  }

  v158 = sub_23B50B8A4();
  __swift_storeEnumTagSinglePayload(v141, v137, 1, v158);
  v159 = v182[9];
  sub_23B3A23E0();
  v160 = type metadata accessor for WeatherNetworkActivity();
  OUTLINED_FUNCTION_51(v174, 1, v160);
  if (v138)
  {
    sub_23B398890(v174, &qword_27E1338B0, &unk_23B519390);
    v163 = 1;
  }

  else
  {
    *v174;
    v161 = v174[1];
    v162 = &v174[*(v160 + 28)];
    sub_23B3A23E0();
    sub_23B50C824();
    sub_23B3A24BC(v174, type metadata accessor for WeatherNetworkActivity);
    v163 = 0;
  }

  v164 = sub_23B50C834();
  __swift_storeEnumTagSinglePayload(v175, v163, 1, v164);
  v165 = *(v24 + v182[10]);
  sub_23B50AD94();
  v166 = *(v24 + v182[15]);
  (*(v176 + 104))(v178, *MEMORY[0x277D7B100], v177);
  sub_23B50B784();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B3A1C3C()
{
  v1 = sub_23B50B604();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v7 = *v0;
  v18[1] = MEMORY[0x277D84F90];
  v8 = sub_23B3A1EB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D50, &unk_23B527680);
  sub_23B3A1F08();
  result = sub_23B50D594();
  if (v7)
  {
    sub_23B50B5C4();
    OUTLINED_FUNCTION_2_53();
    v12 = OUTLINED_FUNCTION_1_49();
    v8(v12);
    v13 = OUTLINED_FUNCTION_119();
    result = (v8)(v13);
    if ((v7 & 4) == 0)
    {
LABEL_3:
      if ((v7 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_3;
  }

  sub_23B50B5E4();
  OUTLINED_FUNCTION_2_53();
  v14 = OUTLINED_FUNCTION_1_49();
  v8(v14);
  v15 = OUTLINED_FUNCTION_119();
  result = (v8)(v15);
  if ((v7 & 2) == 0)
  {
LABEL_4:
    if ((v7 & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  sub_23B50B5F4();
  OUTLINED_FUNCTION_2_53();
  v16 = OUTLINED_FUNCTION_1_49();
  v8(v16);
  v17 = OUTLINED_FUNCTION_119();
  result = (v8)(v17);
  if ((v7 & 8) == 0)
  {
    return result;
  }

LABEL_5:
  sub_23B50B5D4();
  OUTLINED_FUNCTION_2_53();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v11 = OUTLINED_FUNCTION_119();
  return (v10)(v11);
}

uint64_t sub_23B3A1E54(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23B50AD24();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

unint64_t sub_23B3A1EB0()
{
  result = qword_280B43448[0];
  if (!qword_280B43448[0])
  {
    sub_23B50B604();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B43448);
  }

  return result;
}

unint64_t sub_23B3A1F08()
{
  result = qword_280B433E0;
  if (!qword_280B433E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132D50, &unk_23B527680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B433E0);
  }

  return result;
}

uint64_t sub_23B3A1F80(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_23B3A205C()
{
  OUTLINED_FUNCTION_25();
  v4 = sub_23B50B814();
  v5 = OUTLINED_FUNCTION_5(v4);
  v45 = v6;
  v46 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v44 = v9;
  OUTLINED_FUNCTION_24_0();
  v10 = sub_23B50B804();
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_248();
  v20 = sub_23B50B744();
  v21 = OUTLINED_FUNCTION_5(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_214_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_30_4();
  v27 = *v0;
  v28 = v0[2];
  v29 = *(v0 + 24);
  v42 = *(v0 + 26);
  v43 = *(v0 + 25);
  v40 = *(v0 + 28);
  v41 = *(v0 + 27);
  v38 = *(v0 + 29);
  v39 = *(v0 + 30);
  if (*(v0 + 8) == 1)
  {
    if (v27)
    {
      v30 = MEMORY[0x277D7AC38];
    }

    else
    {
      v30 = MEMORY[0x277D7AC30];
    }

    (*(v23 + 104))(v2, *v30, v20);
  }

  else
  {
    *v2 = v27;
    (*(v23 + 104))(v2, *MEMORY[0x277D7AC28], v20);
  }

  if (v29)
  {
    v31 = MEMORY[0x277D7AC90];
  }

  else
  {
    *v1 = v28;
    v31 = MEMORY[0x277D7AC88];
  }

  (*(v13 + 104))(v1, *v31, v10);
  OUTLINED_FUNCTION_117_0();
  v32(v3, v2, v20);
  OUTLINED_FUNCTION_88_0();
  v33(v18, v1, v10);
  v34 = MEMORY[0x277D7ACA0];
  if (!v38)
  {
    v34 = MEMORY[0x277D7AC98];
  }

  (*(v45 + 104))(v44, *v34, v46);
  sub_23B50B7D4();
  v35 = *(v13 + 8);
  v36 = OUTLINED_FUNCTION_32();
  v37(v36);
  (*(v23 + 8))(v2, v20);
  OUTLINED_FUNCTION_26_3();
}

uint64_t sub_23B3A23E0()
{
  OUTLINED_FUNCTION_220();
  v4 = OUTLINED_FUNCTION_265(v1, v2, v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_65();
  v10(v9);
  return v0;
}

uint64_t sub_23B3A24BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_23B3A2564(void *a1, uint64_t *a2, void *a3)
{
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  v6 = *a2;
  [a3 coordinate];
  return sub_23B50B734();
}

uint64_t sub_23B3A2604()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 32));
}

_BYTE *storeEnumTagSinglePayload for WeatherCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDE)
  {
    v6 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
        JUMPOUT(0x23B3A2708);
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
          *result = a2 + 33;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return type metadata accessor for PrecipitationAmountByType();
}

uint64_t OUTLINED_FUNCTION_12_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_12()
{

  return sub_23B50D114();
}

void OUTLINED_FUNCTION_12_17(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2113;
}

uint64_t OUTLINED_FUNCTION_12_25()
{
  v4[10] = v0;
  v4[11] = v1;
  v4[12] = v2;
  v4[13] = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_12_26()
{

  return sub_23B50D8C4();
}

uint64_t OUTLINED_FUNCTION_35_1()
{
  v1 = *(v0[2] + 8);
  result = v0[4];
  v3 = v0[5];
  return result;
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return sub_23B50D734();
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return sub_23B3C7DF4(v3 + v1, v2 + v0);
}

__n128 OUTLINED_FUNCTION_35_8@<Q0>(__n128 *a1@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 - 112) = *a1;
  *(v1 - 96) = v2;
  return result;
}

uint64_t sub_23B3A2A80()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 36));
}

uint64_t getEnumTagSinglePayload for WeatherCondition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDF)
  {
    if (a2 + 33 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 33) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 34;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v5 = v6 - 34;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23B3A2B68()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 40));
}

uint64_t sub_23B3A2BC8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v190 = a2;
  v6 = *v4;
  v184 = v4;
  v182 = a3;
  v183 = v6;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  OUTLINED_FUNCTION_6(v191);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v187 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52();
  v186 = v15;
  OUTLINED_FUNCTION_24_0();
  v185 = sub_23B50AD24();
  v16 = OUTLINED_FUNCTION_5(v185);
  v181 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v23);
  v180 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_76();
  v188 = v26;
  OUTLINED_FUNCTION_24_0();
  v27 = sub_23B50BAE4();
  v28 = OUTLINED_FUNCTION_5(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_0();
  v177 = v33 - v34;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_1();
  v178 = v36;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_1();
  v199 = v38;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_76();
  v193 = v40;
  OUTLINED_FUNCTION_24_0();
  v41 = sub_23B50B654();
  v42 = OUTLINED_FUNCTION_5(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_12_0();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v177 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D68, &qword_23B515158);
  v54 = OUTLINED_FUNCTION_3(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_12_0();
  v189 = (v57 - v58);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_76();
  v194 = v60;
  v195 = v21;
  v61 = *(a1 + 16);
  v196 = v27;
  v197 = v30;
  v192 = a1;
  if (v61)
  {
    v62 = *(v44 + 80);
    OUTLINED_FUNCTION_52_0();
    v64 = a1 + v63;
    v65 = *(v44 + 72);
    v198 = (v30 + 32);
    v66 = MEMORY[0x277D84F90];
    do
    {
      sub_23B3A52DC(v64, v52);
      sub_23B3A39AC(v52, v49);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_23B3A582C(v49);
      }

      else if (__swift_getEnumTagSinglePayload(v49, 1, v27) == 1)
      {
        sub_23B398890(v49, &qword_27E132D68, &qword_23B515158);
      }

      else
      {
        v67 = *v198;
        (*v198)(v199, v49, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3A5A20(0, *(v66 + 16) + 1, 1, v66);
          v66 = v73;
        }

        v69 = *(v66 + 16);
        v68 = *(v66 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_23B3A5A20(v68 > 1, v69 + 1, 1, v66);
          v66 = v74;
        }

        *(v66 + 16) = v69 + 1;
        v27 = v196;
        v70 = *(v197 + 80);
        OUTLINED_FUNCTION_52_0();
        v67(v66 + v71 + *(v72 + 72) * v69, v199, v27);
        v21 = v195;
      }

      v64 += v65;
      --v61;
    }

    while (v61);
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v75 = v194;
  sub_23B3A60F0(v66, v194);

  v76 = v189;
  sub_23B3A61A0(v75, v189);
  if (__swift_getEnumTagSinglePayload(v76, 1, v27) == 1)
  {
    sub_23B398890(v76, &qword_27E132D68, &qword_23B515158);
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v77 = sub_23B50CDF4();
    OUTLINED_FUNCTION_88(v77, qword_280B4E9D8);
    v78 = v190;
    v79 = sub_23B50CDD4();
    sub_23B50D4C4();

    if (OUTLINED_FUNCTION_20_7())
    {
      v80 = swift_slowAlloc();
      v81 = OUTLINED_FUNCTION_42_0();
      v200 = v78;
      v201[0] = v81;
      OUTLINED_FUNCTION_5_13(7.2225e-34);
      OUTLINED_FUNCTION_24_6();
      v82 = v78;
      v83 = sub_23B50D1A4();
      v85 = sub_23B391F1C(v83, v84, v201);

      *(v80 + 14) = v85;
      OUTLINED_FUNCTION_7_20();
      _os_log_impl(v86, v87, v88, v89, v90, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v81);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_9_11();
    }

    v92 = v191;
    v91 = v192;
    v94 = v186;
    v93 = v187;
    sub_23B50C3C4();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
    v99 = *(v92 + 48);
    *v93 = v91;
    sub_23B3AEA68(v94, v93 + v99);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D78, &qword_23B515168);
    v101 = *(v100 + 48);
    v102 = *(v100 + 52);
    swift_allocObject();

    v103 = sub_23B50B094();
  }

  else
  {
    v104 = v197;
    (*(v197 + 32))(v193, v76, v27);
    v105 = sub_23B50BAC4();
    if (v106)
    {
      v198 = v106;
      v199 = v105;
      v107 = v188;
      sub_23B50AD14();
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v108 = sub_23B50CDF4();
      OUTLINED_FUNCTION_88(v108, qword_280B4E9D8);
      v109 = v181;
      v110 = v179;
      v111 = v185;
      v189 = *(v181 + 16);
      v189(v179, v107, v185);
      v112 = v190;
      v113 = sub_23B50CDD4();
      v114 = sub_23B50D4C4();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = OUTLINED_FUNCTION_42_0();
        v186 = swift_slowAlloc();
        v200 = v112;
        v201[0] = v186;
        *v115 = 141558531;
        *(v115 + 4) = 1752392040;
        *(v115 + 12) = 2081;
        sub_23B3A3BC8();
        v116 = v110;
        v117 = v112;
        v118 = sub_23B50D1A4();
        v120 = sub_23B391F1C(v118, v119, v201);

        *(v115 + 14) = v120;
        *(v115 + 22) = 2082;
        v189(v195, v110, v111);
        v121 = sub_23B50D1A4();
        v123 = v122;
        OUTLINED_FUNCTION_13_7(v109);
        v187 = v124;
        v190 = v125;
        (v125)(v116, v111);
        v126 = sub_23B391F1C(v121, v123, v201);

        *(v115 + 24) = v126;
        _os_log_impl(&dword_23B38D000, v113, v114, "About to fetch AQI Scale; location=%{private,mask.hash}s, startTime=%{public}s", v115, 0x20u);
        swift_arrayDestroy();
        v21 = v195;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {

        OUTLINED_FUNCTION_13_7(v109);
        v187 = v147;
        v190 = v148;
        v127 = (v148)(v110, v111);
      }

      v149 = v112;
      MEMORY[0x28223BE20](v127);
      v151 = v198;
      v150 = v199;
      *(&v177 - 4) = v184;
      *(&v177 - 3) = v150;
      v152 = v182;
      *(&v177 - 2) = v151;
      *(&v177 - 1) = v152;
      sub_23B50C3C4();
      sub_23B50B0C4();
      v189(v21, v188, v111);
      v153 = (*(v109 + 80) + 16) & ~*(v109 + 80);
      v154 = (v180 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
      v155 = swift_allocObject();
      v156 = v111;
      (*(v109 + 32))(v155 + v153, v21, v111);
      *(v155 + v154) = v149;
      v157 = v192;
      *(v155 + ((v154 + 15) & 0xFFFFFFFFFFFFFFF8)) = v192;
      v158 = v149;

      v159 = sub_23B50B034();
      sub_23B50B064();

      v160 = swift_allocObject();
      v161 = v198;
      v160[2] = v199;
      v160[3] = v161;
      v160[4] = v158;
      v160[5] = v157;
      v162 = v158;

      v163 = sub_23B50B034();
      v103 = sub_23B50B0A4();

      (v190)(v188, v156);
      (*(v197 + 8))(v193, v196);
      v75 = v194;
    }

    else
    {
      if (qword_280B43440 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v128 = sub_23B50CDF4();
      OUTLINED_FUNCTION_88(v128, qword_280B4E9D8);
      v129 = *(v104 + 16);
      v130 = v178;
      v129(v178, v193, v27);
      v131 = v190;
      v132 = sub_23B50CDD4();
      sub_23B50D4B4();

      if (OUTLINED_FUNCTION_20_7())
      {
        OUTLINED_FUNCTION_42_0();
        v199 = OUTLINED_FUNCTION_23_7();
        v201[0] = v199;
        *v104 = 136315651;
        v129(v177, v130, v196);
        v133 = sub_23B50D184();
        v135 = v134;
        v136 = *(v104 + 8);
        v136(v130, v196);
        v137 = sub_23B391F1C(v133, v135, v201);
        v75 = v194;

        *(v104 + 4) = v137;
        OUTLINED_FUNCTION_3_21();
        v200 = v131;
        v138 = sub_23B3A3BC8();
        v139 = v131;
        v140 = sub_23B50D1A4();
        sub_23B391F1C(v140, v141, v201);
        OUTLINED_FUNCTION_25_5();
        *(v104 + 24) = v138;
        OUTLINED_FUNCTION_7_20();
        _os_log_impl(v142, v143, v144, v145, v146, 0x20u);
        swift_arrayDestroy();
        v27 = v196;
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_9_11();
      }

      else
      {

        v136 = *(v104 + 8);
        v136(v130, v27);
      }

      v165 = v191;
      v164 = v192;
      v166 = v187;
      sub_23B50C3C4();
      v167 = v186;
      OUTLINED_FUNCTION_1();
      __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
      v172 = *(v165 + 48);
      *v166 = v164;
      sub_23B3AEA68(v167, v166 + v172);
      v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D78, &qword_23B515168);
      v174 = *(v173 + 48);
      v175 = *(v173 + 52);
      swift_allocObject();

      v103 = sub_23B50B094();
      v136(v193, v27);
    }
  }

  sub_23B398890(v75, &qword_27E132D68, &qword_23B515158);
  return v103;
}

uint64_t sub_23B3A38D0()
{
  v3 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 8);
  v4 += 8;
  v6 = *(v4 + 72);
  v7 = *(v4 + 56);
  OUTLINED_FUNCTION_22_6();
  v9(v0 + v8);

  v10 = *(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_23B3A3964()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_23B3A39AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50B654();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B3A3A10()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 44));
}

void sub_23B3A3A48(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_18();
    if (v12 != v13)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_23B3B8AE0(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_23B3A3B68()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 48));
}

unint64_t sub_23B3A3BC8()
{
  result = qword_280B433B8;
  if (!qword_280B433B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B433B8);
  }

  return result;
}

uint64_t sub_23B3A3C34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - v10;
  v61 = sub_23B50C3C4();
  v12 = OUTLINED_FUNCTION_5(v61);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v57 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v59 = a1;
  v60 = a2;
  v62 = a1;
  v63 = a2;

  MEMORY[0x23EE9D460](45, 0xE100000000000000);
  v56 = a3;
  v21 = sub_23B50B7A4();
  MEMORY[0x23EE9D460](v21);

  v23 = v62;
  v22 = v63;
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v24 = sub_23B50CDF4();
  __swift_project_value_buffer(v24, qword_280B4E9D8);

  v25 = sub_23B50CDD4();
  v26 = sub_23B50D4C4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v54 = v14;
    v28 = v27;
    v29 = swift_slowAlloc();
    v55 = v4;
    v30 = v29;
    v62 = v29;
    *v28 = 136446210;
    *(v28 + 4) = OUTLINED_FUNCTION_2_52();
    _os_log_impl(&dword_23B38D000, v25, v26, "Attempting to retrieve air quality scale with cache key: %{public}s from cache", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v4 = v55;
    OUTLINED_FUNCTION_38();
    v14 = v54;
    OUTLINED_FUNCTION_38();
  }

  v31 = v4[2];
  sub_23B3A4498(v23, v22, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v61) == 1)
  {
    sub_23B4FFCEC(v11);

    v32 = sub_23B50CDD4();
    v33 = sub_23B50D4C4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v62 = v35;
      *v34 = 136446210;
      *(v34 + 4) = OUTLINED_FUNCTION_2_52();
      _os_log_impl(&dword_23B38D000, v32, v33, "Unable to retrieve air quality scale with cache key: %{public}s from cache, fetching it ...", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    MEMORY[0x28223BE20](v36);
    v37 = v59;
    v38 = v60;
    *(&v54 - 4) = v4;
    *(&v54 - 3) = v37;
    v39 = v56;
    *(&v54 - 2) = v38;
    *(&v54 - 1) = v39;
    sub_23B50B0C4();
    v40 = swift_allocObject();
    *(v40 + 16) = v23;
    *(v40 + 24) = v22;
    v41 = sub_23B50B034();
    v42 = sub_23B50B064();
  }

  else
  {
    (*(v14 + 32))(v20, v11, v61);

    v43 = sub_23B50CDD4();
    v44 = sub_23B50D4C4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v45 = 136446466;
      *(v45 + 4) = sub_23B391F1C(v59, v60, &v62);
      *(v45 + 12) = 2082;
      v46 = OUTLINED_FUNCTION_2_52();

      *(v45 + 14) = v46;
      _os_log_impl(&dword_23B38D000, v43, v44, "Successfully retrieved air quality scale: %{public}s with cache key:  %{public}s from cache", v45, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    v47 = v20;
    v48 = v20;
    v49 = v61;
    (*(v14 + 16))(v57, v47, v61);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B50, &unk_23B5273F0);
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v42 = sub_23B50B094();
    (*(v14 + 8))(v48, v49);
  }

  return v42;
}

uint64_t sub_23B3A4204()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_2()
{
  v1 = *(*(v0 - 400) + 8);
  result = *(v0 - 152);
  v3 = *(v0 - 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return sub_23B50D134();
}

uint64_t OUTLINED_FUNCTION_27_6()
{

  return sub_23B50D0E4();
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_27_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_16()
{
  v2 = *(v0 - 192);
  v3 = *(v0 - 184);

  return sub_23B50D734();
}

uint64_t sub_23B3A43A8()
{
  OUTLINED_FUNCTION_209_0();
  v2 = sub_23B50B7B4();
  OUTLINED_FUNCTION_3(v2);
  return sub_23B3A2BC8(*v1, *(v0 + 16), v0 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
}

uint64_t sub_23B3A441C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_23B50B7B4();
  OUTLINED_FUNCTION_3(v5);
  return sub_23B45F774(a1, a2, *(v2 + 16), v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)));
}

void sub_23B3A4498(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  os_unfair_lock_lock((v3 + 16));
  v8 = sub_23B3A461C((v3 + 24));
  if (*(v8 + 16) && (v9 = sub_23B3A7084(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = sub_23B50C3C4();
    OUTLINED_FUNCTION_6(v13);
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);

    v15 = a3;
    v16 = 0;
    v17 = v13;
  }

  else
  {

    v17 = sub_23B50C3C4();
    v15 = a3;
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);

  os_unfair_lock_unlock(v4 + 4);
}