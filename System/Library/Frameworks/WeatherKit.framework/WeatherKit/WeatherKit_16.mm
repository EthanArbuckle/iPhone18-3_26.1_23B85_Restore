uint64_t sub_23B4F566C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourWeather();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4F56D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourWeather();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4F5734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23B4F57DC(char a1, uint64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D00, &unk_23B514F10);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

char *sub_23B4F5A14(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_59(a3, result);
  }

  return result;
}

char *sub_23B4F5A34(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_59(a3, result);
  }

  return result;
}

char *sub_23B4F5A5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_59(a3, result);
  }

  return result;
}

uint64_t sub_23B4F5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_5_32();
  if (v10 && (v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_6(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_1_47();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_1_47();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_23B4F5D20(uint64_t a1)
{
  v2 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:cacheReadPolicy:updateCacheAsynchronously:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, char a11)
{
  OUTLINED_FUNCTION_7_46();
  v18 = *v17;
  v20 = OUTLINED_FUNCTION_2_49(v17, v19, a10);
  v21 = v20[5];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_6_30();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = v20[12];
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  *(v11 + v20[14]) = MEMORY[0x277D84F90];
  *v11 = v16;
  v11[1] = v15;
  v35 = sub_23B39A558(v14, v11 + v21, &qword_27E131F68, &unk_23B50F2A0);
  *v13 = v18;
  OUTLINED_FUNCTION_4_45(v35, v36, v37, v38, v39, v40, v41, v42, *v44, *&v44[4], v46, v48);
  sub_23B39A558(v56, v11 + v12, &qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_0_60(v20[10], v45, v47, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  *(v11 + v43) = a11;
}

void WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:cacheReadPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10)
{
  OUTLINED_FUNCTION_7_46();
  v17 = *v16;
  v19 = OUTLINED_FUNCTION_2_49(v16, v18, a10);
  v20 = v19[5];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OUTLINED_FUNCTION_6_30();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v29 = v19[12];
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  *(v10 + v19[14]) = MEMORY[0x277D84F90];
  *v10 = v15;
  v10[1] = v14;
  v34 = sub_23B39A558(v13, v10 + v20, &qword_27E131F68, &unk_23B50F2A0);
  *v12 = v17;
  OUTLINED_FUNCTION_4_45(v34, v35, v36, v37, v38, v39, v40, v41, *v43, *&v43[4], v45, v47);
  sub_23B39A558(v55, v10 + v11, &qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_0_60(v19[10], v44, v46, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  *(v10 + v42) = 0;
}

uint64_t WeatherServiceFetchOptions.countryCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WeatherServiceFetchOptions.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WeatherServiceFetchOptions.locationOptions.getter()
{
  result = OUTLINED_FUNCTION_9_38();
  v3 = (v1 + *(result + 24));
  v4 = *v3;
  LOWORD(v3) = *(v3 + 4);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t WeatherServiceFetchOptions.locationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = type metadata accessor for WeatherServiceFetchOptions();
  v5 = v1 + *(result + 24);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t WeatherServiceFetchOptions.cachingOptions.getter()
{
  result = OUTLINED_FUNCTION_9_38();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t WeatherServiceFetchOptions.cachingOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for WeatherServiceFetchOptions();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t WeatherServiceFetchOptions.treatmentIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for WeatherServiceFetchOptions() + 32));
}

uint64_t WeatherServiceFetchOptions.treatmentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_33() + 32);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t WeatherServiceFetchOptions.needsMarineData.setter(char a1)
{
  result = type metadata accessor for WeatherServiceFetchOptions();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t WeatherServiceFetchOptions.needsTwilightData.setter(char a1)
{
  result = type metadata accessor for WeatherServiceFetchOptions();
  *(v1 + *(result + 44)) = a1;
  return result;
}

__n128 WeatherServiceFetchOptions.cacheReadPolicy.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_9_38() + 52));
  v3 = v2[1].n128_u64[0];
  result = *v2;
  v6 = v2[1].n128_u32[2];
  v2 = (v2 + 24);
  v5 = v6;
  LOWORD(v6) = v2->n128_u16[2];
  *v0 = result;
  v0[1].n128_u64[0] = v3;
  v0[1].n128_u32[2] = v5;
  v0[1].n128_u16[6] = v6;
  v0[1].n128_u8[14] = v2->n128_u8[6];
  return result;
}

__n128 WeatherServiceFetchOptions.cacheReadPolicy.setter(__n128 *a1)
{
  v9 = *a1;
  v2 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u32[2];
  v3 = &a1[1].n128_i8[8];
  v5 = *(v3 + 2);
  v6 = v3[6];
  v7 = (v1 + *(type metadata accessor for WeatherServiceFetchOptions() + 52));
  result = v9;
  *v7 = v9;
  v7[1].n128_u64[0] = v2;
  v7[1].n128_u8[14] = v6;
  v7[1].n128_u16[6] = v5;
  v7[1].n128_u32[2] = v4;
  return result;
}

uint64_t WeatherServiceFetchOptions.requestDenyList.getter()
{
  v1 = *(v0 + *(type metadata accessor for WeatherServiceFetchOptions() + 56));
}

uint64_t WeatherServiceFetchOptions.requestDenyList.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_33() + 56);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t WeatherServiceFetchOptions.updateCacheAsynchronously.setter(char a1)
{
  result = type metadata accessor for WeatherServiceFetchOptions();
  *(v1 + *(result + 60)) = a1;
  return result;
}

double WeatherServiceFetchOptions.with(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:needsMarineData:needsTwilightData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X8>)
{
  v71 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v74 = &v65 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v22 = OUTLINED_FUNCTION_3(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v73 = &v65 - v28;
  v72 = *a4;
  v75 = *(a4 + 4);
  v29 = *a5;
  v70 = a2;
  v30 = *(a5 + 8);
  if (!a2)
  {
    v31 = *v8;
    v70 = v8[1];
    v71 = v31;
  }

  sub_23B39A44C(a3, v26, &qword_27E131F68, &unk_23B50F2A0);
  v32 = sub_23B50AEF4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v32) == 1)
  {
    Options = type metadata accessor for WeatherServiceFetchOptions();
    sub_23B39A44C(v8 + *(Options + 20), v73, &qword_27E131F68, &unk_23B50F2A0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v32);

    if (EnumTagSinglePayload != 1)
    {
      sub_23B398890(v26, &qword_27E131F68, &unk_23B50F2A0);
    }
  }

  else
  {
    v35 = v73;
    (*(*(v32 - 8) + 32))(v73, v26, v32);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v32);
  }

  if ((v75 & 0xFF00) != 0x300)
  {
    if (!v30)
    {
      goto LABEL_9;
    }

LABEL_12:
    v29 = *(v8 + *(type metadata accessor for WeatherServiceFetchOptions() + 28));
    if (a6)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v36 = v8 + *(type metadata accessor for WeatherServiceFetchOptions() + 24);
  v72 = *v36;
  v75 = *(v36 + 4);
  if (v30)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (a6)
  {
LABEL_10:
    v67 = a6;
    goto LABEL_14;
  }

LABEL_13:
  v67 = *(v8 + *(type metadata accessor for WeatherServiceFetchOptions() + 32));

LABEL_14:
  v37 = type metadata accessor for WeatherNetworkActivity();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  if (a7 == 2)
  {
    a7 = *(v8 + *(type metadata accessor for WeatherServiceFetchOptions() + 40));
  }

  v68 = v29;
  v69 = a7;
  v41 = type metadata accessor for WeatherServiceFetchOptions();
  v66 = *(v8 + v41[15]);
  v42 = qword_280B42708;

  if (v42 != -1)
  {
    swift_once();
  }

  v65 = xmmword_280B42710;
  v43 = qword_280B42720;
  v44 = dword_280B42728;
  v45 = word_280B4272C;
  v46 = v41[5];
  v47 = byte_280B4272E;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v32);
  v51 = a8 + v41[6];
  *v51 = 0;
  *(v51 + 4) = 768;
  v52 = v41[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v37);
  v56 = v41[12];
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  *(a8 + v41[14]) = MEMORY[0x277D84F90];
  v61 = v70;
  *a8 = v71;
  a8[1] = v61;
  sub_23B39A558(v73, a8 + v46, &qword_27E131F68, &unk_23B50F2A0);
  *v51 = v72;
  *(v51 + 4) = v75;
  v62 = v67;
  *(a8 + v41[7]) = v68;
  *(a8 + v41[8]) = v62;
  sub_23B39A558(v74, a8 + v52, &qword_27E1338B0, &unk_23B519390);
  *(a8 + v41[10]) = v69 & 1;
  *(a8 + v41[11]) = 0;
  v63 = a8 + v41[13];
  result = *&v65;
  *v63 = v65;
  *(v63 + 2) = v43;
  v63[30] = v47;
  *(v63 + 14) = v45;
  *(v63 + 6) = v44;
  *(a8 + v41[15]) = v66;
  return result;
}

uint64_t CurrentWeather.init(date:cloudCover:cloudCoverLow:cloudCoverMid:cloudCoverHigh:cloudCoverByAltitude:condition:symbolName:dewPoint:humidity:precipitationIntensity:pressure:pressureTrend:rainfallAmount:snowfallAmount:pastHourPrecipitationAmountByType:pastSixHoursPrecipitationAmountByType:pastTwentyFourHoursPrecipitationAmountByType:nextHourPrecipitationAmountByType:nextSixHoursPrecipitationAmountByType:nextTwentyFourHoursPrecipitationAmountByType:apparentPrecipitationIntensity:isDaylight:temperature:apparentTemperature:highTemperature:lowTemperature:uvIndex:visibility:wind:metadata:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30, uint64_t a31)
{
  v81 = *a2;
  v41 = *(a2 + 2);
  v42 = *a3;
  v43 = *a15;
  v44 = *a24;
  v85 = *(a24 + 8);
  v87 = *a30;
  v86 = *(a30 + 8);
  v45 = type metadata accessor for CurrentWeather();
  v84 = v45[29];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
  v50 = v45[30];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v46);
  v54 = sub_23B50AD24();
  OUTLINED_FUNCTION_2(v54);
  (*(v55 + 32))(a9, a1);
  *(a9 + v45[5]) = a10;
  *(a9 + v45[6]) = a11;
  *(a9 + v45[7]) = a12;
  *(a9 + v45[8]) = a13;
  v56 = a9 + v45[9];
  *v56 = v81;
  *(v56 + 16) = v41;
  *(a9 + v45[10]) = v42;
  v57 = (a9 + v45[11]);
  *v57 = a4;
  v57[1] = a5;
  v58 = *(*(v46 - 8) + 32);
  v58(a9 + v45[12], a6, v46);
  *(a9 + v45[13]) = a14;
  v59 = v45[14];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2(v60);
  (*(v61 + 32))(a9 + v59, a7);
  v62 = v45[15];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2(v63);
  (*(v64 + 32))(a9 + v62, a8);
  *(a9 + v45[16]) = v43;
  v65 = v45[17];
  sub_23B3B0660();
  v66 = v45[18];
  sub_23B3B0660();
  v67 = v45[19];
  sub_23B3B0660();
  v68 = v45[20];
  sub_23B3B0660();
  v69 = v45[21];
  sub_23B3B0660();
  v70 = v45[22];
  sub_23B3B0660();
  v71 = v45[23];
  sub_23B3B0660();
  v72 = v45[24];
  sub_23B3B0660();
  v73 = a9 + v45[25];
  *v73 = v44;
  *(v73 + 8) = v85;
  *(a9 + v45[26]) = a25;
  v58(a9 + v45[27], a26, v46);
  v58(a9 + v45[28], a27, v46);
  sub_23B4F70E4(a28, a9 + v84);
  sub_23B4F70E4(a29, a9 + v50);
  v74 = a9 + v45[31];
  *v74 = v87;
  *(v74 + 8) = v86;
  v75 = v45[32];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v76);
  (*(v77 + 32))(a9 + v75, a31);
  v78 = v45[33];
  OUTLINED_FUNCTION_21_16();
  sub_23B3B0660();
  v79 = v45[34];
  OUTLINED_FUNCTION_20_21();
  return sub_23B3B0660();
}

uint64_t sub_23B4F70E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CurrentWeather.isExpired.getter()
{
  v1 = sub_23B50AD24();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  sub_23B50B9D4();
  sub_23B50B994();
  v10 = v0 + *(type metadata accessor for CurrentWeather() + 136);
  v11 = *(type metadata accessor for WeatherMetadata() + 20);
  OUTLINED_FUNCTION_6_31();
  sub_23B4FC170(v12, v13);
  LOBYTE(v10) = sub_23B50D114();
  (*(v4 + 8))(v9, v1);
  return v10 & 1;
}

uint64_t CurrentWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t CurrentWeather.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_69_3();
  *(v0 + *(result + 20)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCover.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.cloudCoverLow.setter()
{
  result = OUTLINED_FUNCTION_69_3();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverLow.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.cloudCoverMid.setter()
{
  result = OUTLINED_FUNCTION_69_3();
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverMid.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.cloudCoverHigh.setter()
{
  result = OUTLINED_FUNCTION_69_3();
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t CurrentWeather.cloudCoverHigh.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 32);
  return OUTLINED_FUNCTION_44();
}

double CurrentWeather.cloudCoverByAltitude.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for CurrentWeather() + 36);
  result = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 16) = result;
  return result;
}

__n128 CurrentWeather.cloudCoverByAltitude.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for CurrentWeather() + 36));
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t CurrentWeather.cloudCoverByAltitude.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CurrentWeather();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t CurrentWeather.condition.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 40);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.symbolName.getter()
{
  v1 = (v0 + *(type metadata accessor for CurrentWeather() + 44));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_65();
}

uint64_t CurrentWeather.symbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CurrentWeather() + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CurrentWeather.symbolName.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 44);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.dewPoint.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for CurrentWeather() + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t CurrentWeather.dewPoint.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t CurrentWeather.dewPoint.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 48);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.humidity.setter()
{
  result = OUTLINED_FUNCTION_69_3();
  *(v0 + *(result + 52)) = v1;
  return result;
}

uint64_t CurrentWeather.humidity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 52);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.precipitationIntensity.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for CurrentWeather() + 56);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t CurrentWeather.precipitationIntensity.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 56);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t CurrentWeather.precipitationIntensity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 56);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.pressure.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 60);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t CurrentWeather.pressure.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 60);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.pressureTrend.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CurrentWeather();
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t CurrentWeather.pressureTrend.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 64);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B4F7A94()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for CurrentWeather() + 68);
  return OUTLINED_FUNCTION_44_6();
}

uint64_t CurrentWeather.rainfallAmount.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 68);
  OUTLINED_FUNCTION_12_27();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.rainfallAmount.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 68);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.snowfallAmount.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for CurrentWeather() + 72);
  return OUTLINED_FUNCTION_44_6();
}

uint64_t CurrentWeather.snowfallAmount.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 72);
  OUTLINED_FUNCTION_12_27();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.snowfallAmount.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 72);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.pastHourPrecipitationAmountByType.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 76);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.pastHourPrecipitationAmountByType.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 76);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.pastSixHoursPrecipitationAmountByType.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 80);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.pastSixHoursPrecipitationAmountByType.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 80);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.pastTwentyFourHoursPrecipitationAmountByType.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 84);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.pastTwentyFourHoursPrecipitationAmountByType.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 84);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.nextHourPrecipitationAmountByType.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for CurrentWeather() + 88);
  return OUTLINED_FUNCTION_7_47();
}

uint64_t CurrentWeather.nextHourPrecipitationAmountByType.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 88);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.nextHourPrecipitationAmountByType.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 88);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.nextSixHoursPrecipitationAmountByType.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for CurrentWeather() + 92);
  return OUTLINED_FUNCTION_7_47();
}

uint64_t CurrentWeather.nextSixHoursPrecipitationAmountByType.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 92);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.nextSixHoursPrecipitationAmountByType.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 92);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.nextTwentyFourHoursPrecipitationAmountByType.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 96);
  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.nextTwentyFourHoursPrecipitationAmountByType.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 96);
  return OUTLINED_FUNCTION_44();
}

double CurrentWeather.apparentPrecipitationIntensity.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for CurrentWeather() + 100);
  result = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *v0 = result;
  *(v0 + 8) = v2;
  return result;
}

uint64_t CurrentWeather.apparentPrecipitationIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for CurrentWeather();
  v5 = v1 + *(result + 100);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t CurrentWeather.apparentPrecipitationIntensity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 100);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.isDaylight.setter(char a1)
{
  result = type metadata accessor for CurrentWeather();
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t CurrentWeather.isDaylight.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 104);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.temperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 108);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t CurrentWeather.temperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 108);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.apparentTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 112);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t CurrentWeather.apparentTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 112);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.highTemperature.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for CurrentWeather() + 116);

  return sub_23B4F81DC(v2, v0);
}

uint64_t sub_23B4F81DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CurrentWeather.highTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 116);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B4F70E4(v1, v2);
}

uint64_t CurrentWeather.highTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 116);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.lowTemperature.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for CurrentWeather() + 120);

  return sub_23B4F81DC(v2, v0);
}

uint64_t CurrentWeather.lowTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 120);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B4F70E4(v1, v2);
}

uint64_t CurrentWeather.lowTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 120);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.uvIndex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for CurrentWeather();
  v5 = v1 + *(result + 124);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t CurrentWeather.uvIndex.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 124);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.visibility.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 128);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t CurrentWeather.visibility.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 128);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.wind.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 132);
  OUTLINED_FUNCTION_21_16();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t CurrentWeather.wind.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 132);
  return OUTLINED_FUNCTION_44();
}

uint64_t CurrentWeather.metadata.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 136);
  OUTLINED_FUNCTION_20_21();
  OUTLINED_FUNCTION_57();
  return sub_23B4F8564();
}

uint64_t sub_23B4F8564()
{
  v1 = OUTLINED_FUNCTION_67();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t CurrentWeather.metadata.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for CurrentWeather() + 136);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B4F85F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x766F4364756F6C63 && a2 == 0xED0000776F4C7265;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x766F4364756F6C63 && a2 == 0xED000064694D7265;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x766F4364756F6C63 && a2 == 0xEE00686769487265;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000023B529F40 == a2;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x746E696F50776564 && a2 == 0xE800000000000000;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x800000023B528C20 == a2;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6572757373657270 && a2 == 0xED0000646E657254;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6C6C61666E696172 && a2 == 0xEE00746E756F6D41;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41;
                              if (v19 || (sub_23B50D834() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000021 && 0x800000023B539340 == a2;
                                if (v20 || (sub_23B50D834() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000025 && 0x800000023B539370 == a2;
                                  if (v21 || (sub_23B50D834() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD00000000000002CLL && 0x800000023B5393A0 == a2;
                                    if (v22 || (sub_23B50D834() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000021 && 0x800000023B5393D0 == a2;
                                      if (v23 || (sub_23B50D834() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000025 && 0x800000023B539400 == a2;
                                        if (v24 || (sub_23B50D834() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD00000000000002CLL && 0x800000023B539430 == a2;
                                          if (v25 || (sub_23B50D834() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001ELL && 0x800000023B528C40 == a2;
                                            if (v26 || (sub_23B50D834() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468;
                                              if (v27 || (sub_23B50D834() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
                                                if (v28 || (sub_23B50D834() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000013 && 0x800000023B529F60 == a2;
                                                  if (v29 || (sub_23B50D834() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
                                                    if (v30 || (sub_23B50D834() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
                                                      if (v31 || (sub_23B50D834() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
                                                        if (v32 || (sub_23B50D834() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
                                                          if (v33 || (sub_23B50D834() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 1684957559 && a2 == 0xE400000000000000;
                                                            if (v34 || (sub_23B50D834() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
                                                            {

                                                              return 30;
                                                            }

                                                            else
                                                            {
                                                              v36 = sub_23B50D834();

                                                              if (v36)
                                                              {
                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                return 31;
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

uint64_t sub_23B4F8F20(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x766F4364756F6C63;
      break;
    case 2:
    case 3:
    case 4:
      result = 0x766F4364756F6C63;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6F697469646E6F63;
      break;
    case 7:
      result = 0x614E6C6F626D7973;
      break;
    case 8:
      result = 0x746E696F50776564;
      break;
    case 9:
      result = 0x79746964696D7568;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
    case 12:
      result = 0x6572757373657270;
      break;
    case 13:
      v3 = 1852399986;
      goto LABEL_16;
    case 14:
      v3 = 2003791475;
LABEL_16:
      result = v3 | 0x6C6C616600000000;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
    case 19:
      result = 0xD000000000000025;
      break;
    case 17:
    case 20:
      result = 0xD00000000000002CLL;
      break;
    case 18:
      result = 0xD000000000000021;
      break;
    case 21:
      result = 0xD00000000000001ELL;
      break;
    case 22:
      result = 0x67696C7961447369;
      break;
    case 23:
      result = 0x74617265706D6574;
      break;
    case 24:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0x706D655468676968;
      break;
    case 26:
      result = 0x65706D6554776F6CLL;
      break;
    case 27:
      result = 0x7865646E497675;
      break;
    case 28:
      result = 0x696C696269736976;
      break;
    case 29:
      result = 1684957559;
      break;
    case 30:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4F9270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4F85F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4F9298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B4F8F18();
  *a1 = result;
  return result;
}

uint64_t sub_23B4F92C0(uint64_t a1)
{
  v2 = sub_23B4FA250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4F92FC(uint64_t a1)
{
  v2 = sub_23B4FA250();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CurrentWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v89[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_12_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v89[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A18, &qword_23B526960);
  v21 = OUTLINED_FUNCTION_6(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v89[-v28];
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v94 = v6;
  v30 = type metadata accessor for CurrentWeather();
  OUTLINED_FUNCTION_13_0(*(v30 + 20));
  if (!v38)
  {
    return 0;
  }

  v32 = v31;
  OUTLINED_FUNCTION_13_0(v31[6]);
  if (!v38)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v32[7]);
  if (!v38)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v32[8]);
  if (!v38)
  {
    return 0;
  }

  v33 = v32[9];
  v34 = *(a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = *(a1 + v33 + 16);
  v37 = (a2 + v33);
  v38 = v34 == *v37 && v35 == v37[1];
  v39 = v38 && v36 == v37[2];
  if (!v39 || (sub_23B3CAE4C(*(a1 + v32[10]), *(a2 + v32[10])) & 1) == 0)
  {
    return 0;
  }

  v40 = v32[11];
  v41 = *(a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = v41 == *v43 && v42 == v43[1];
  if (!v44 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v93 = v32;
  v45 = v32[12];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v46, v47, v48);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_58_2();
  v92 = v49;
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v50 = v93;
  OUTLINED_FUNCTION_13_0(v93[13]);
  if (!v38)
  {
    return 0;
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v51 = v50[14];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v52, &qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_64_3();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  v53 = v93[15];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v54, &qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_64_3();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v55 = v93;
  if ((sub_23B3E5D18(*(a1 + v93[16]), *(a2 + v93[16])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v55[17]);
  if ((static PrecipitationAmount.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v55[18]);
  if ((static PrecipitationAmount.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v55[19]);
  if ((static PrecipitationAmountByType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v55[20]);
  if ((static PrecipitationAmountByType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v93[21]);
  if ((static PrecipitationAmountByType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v93[22]);
  if ((static PrecipitationAmountByType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v93[23]);
  if ((static PrecipitationAmountByType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v93[24]);
  if ((static PrecipitationAmountByType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v56 = v93[25];
  v57 = a1 + v56;
  v58 = *(a1 + v56);
  v59 = a2 + v56;
  if (v58 != *v59)
  {
    return 0;
  }

  if ((sub_23B3E71A0(*(v57 + 8), *(v59 + 8)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v93[26]) != *(a2 + v93[26]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v93[27]);
  OUTLINED_FUNCTION_58_2();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v93[28]);
  OUTLINED_FUNCTION_58_2();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v91 = v93[29];
  v60 = *(v20 + 48);
  sub_23B4F81DC(a1 + v91, v29);
  v61 = a2 + v91;
  v91 = v60;
  sub_23B4F81DC(v61, &v29[v60]);
  OUTLINED_FUNCTION_1_43(v29);
  if (v38)
  {
    OUTLINED_FUNCTION_1_43(&v29[v91]);
    if (v38)
    {
      sub_23B398890(v29, &qword_27E132168, &qword_23B510108);
      goto LABEL_53;
    }

LABEL_51:
    v63 = v29;
LABEL_62:
    sub_23B398890(v63, &qword_27E135A18, &qword_23B526960);
    return 0;
  }

  sub_23B4F81DC(v29, v19);
  OUTLINED_FUNCTION_1_43(&v29[v91]);
  if (v62)
  {
    (*(v94 + 8))(v19, v4);
    goto LABEL_51;
  }

  (*(v94 + 32))(v11, &v29[v91], v4);
  OUTLINED_FUNCTION_58_2();
  v90 = sub_23B50D134();
  v91 = *(v94 + 8);
  (v91)(v11, v4);
  (v91)(v19, v4);
  sub_23B398890(v29, &qword_27E132168, &qword_23B510108);
  if ((v90 & 1) == 0)
  {
    return 0;
  }

LABEL_53:
  v64 = v93[30];
  v65 = *(v20 + 48);
  sub_23B4F81DC(a1 + v64, v26);
  sub_23B4F81DC(a2 + v64, v26 + v65);
  OUTLINED_FUNCTION_1_43(v26);
  if (v38)
  {
    OUTLINED_FUNCTION_1_43(v26 + v65);
    if (v38)
    {
      sub_23B398890(v26, &qword_27E132168, &qword_23B510108);
      goto LABEL_66;
    }

    goto LABEL_61;
  }

  sub_23B4F81DC(v26, v16);
  OUTLINED_FUNCTION_1_43(v26 + v65);
  if (v66)
  {
    (*(v94 + 8))(v16, v4);
LABEL_61:
    v63 = v26;
    goto LABEL_62;
  }

  v69 = v94;
  (*(v94 + 32))(v11, v26 + v65, v4);
  OUTLINED_FUNCTION_58_2();
  v70 = sub_23B50D134();
  v71 = *(v69 + 8);
  v71(v11, v4);
  v71(v16, v4);
  sub_23B398890(v26, &qword_27E132168, &qword_23B510108);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_66:
  v72 = v93[31];
  v73 = a1 + v72;
  v74 = *(a1 + v72);
  v75 = a2 + v72;
  if (v74 == *v75)
  {
    v76 = *(v75 + 8);
    v77 = UVIndex.ExposureCategory.rawValue.getter(*(v73 + 8));
    v79 = v78;
    if (v77 == UVIndex.ExposureCategory.rawValue.getter(v76) && v79 == v80)
    {
    }

    else
    {
      v82 = sub_23B50D834();

      if ((v82 & 1) == 0)
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    v83 = v93[32];
    OUTLINED_FUNCTION_4_1();
    sub_23B3F1C50(v84, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_58_2();
    if (sub_23B50D134())
    {
      v85 = OUTLINED_FUNCTION_31_2(v93[33]);
      if (static Wind.== infix(_:_:)(v85, v86))
      {
        v87 = OUTLINED_FUNCTION_31_2(v93[34]);
        return static WeatherMetadata.== infix(_:_:)(v87, v88);
      }
    }
  }

  return 0;
}

uint64_t CurrentWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A20, &qword_23B526968);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = v55 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FA250();
  sub_23B50D974();
  LOBYTE(v56) = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_6_31();
  sub_23B4FC170(v14, v15);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_26();
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for CurrentWeather();
    v17 = *(v3 + v16[5]);
    OUTLINED_FUNCTION_7_2(1);
    v18 = *(v3 + v16[6]);
    OUTLINED_FUNCTION_7_2(2);
    v19 = *(v3 + v16[7]);
    OUTLINED_FUNCTION_7_2(3);
    v20 = *(v3 + v16[8]);
    OUTLINED_FUNCTION_7_2(4);
    v21 = (v3 + v16[9]);
    v22 = *(v21 + 2);
    v56 = *v21;
    v57 = v22;
    v58 = 5;
    sub_23B41A4BC();
    OUTLINED_FUNCTION_6_5();
    LOBYTE(v56) = *(v3 + v16[10]);
    v58 = 6;
    sub_23B3F03A8();
    OUTLINED_FUNCTION_6_5();
    v23 = (v3 + v16[11]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v56) = 7;
    OUTLINED_FUNCTION_26();
    sub_23B50D7A4();
    v26 = v16[12];
    LOBYTE(v56) = 8;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_16();
    v29 = sub_23B3F1C50(v28, &qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_21_2();
    v55[1] = v27;
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v55[0] = v29;
    v30 = *(v3 + v16[13]);
    OUTLINED_FUNCTION_7_2(9);
    v31 = v16[14];
    LOBYTE(v56) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v32, &qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v33 = v16[15];
    LOBYTE(v56) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v34, &qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v56) = *(v3 + v16[16]);
    v58 = 12;
    sub_23B41A510();
    OUTLINED_FUNCTION_6_5();
    v35 = v16[17];
    OUTLINED_FUNCTION_73_3(13);
    type metadata accessor for PrecipitationAmount();
    OUTLINED_FUNCTION_50_5();
    sub_23B4FC170(v36, v37);
    OUTLINED_FUNCTION_16_19();
    OUTLINED_FUNCTION_14_8(v16[18]);
    OUTLINED_FUNCTION_26_19();
    v38 = v16[19];
    OUTLINED_FUNCTION_73_3(15);
    type metadata accessor for PrecipitationAmountByType();
    OUTLINED_FUNCTION_49_6();
    sub_23B4FC170(v39, v40);
    OUTLINED_FUNCTION_16_19();
    OUTLINED_FUNCTION_14_8(v16[20]);
    OUTLINED_FUNCTION_26_19();
    OUTLINED_FUNCTION_14_8(v16[21]);
    OUTLINED_FUNCTION_26_19();
    OUTLINED_FUNCTION_14_8(v16[22]);
    OUTLINED_FUNCTION_26_19();
    OUTLINED_FUNCTION_14_8(v16[23]);
    OUTLINED_FUNCTION_26_19();
    OUTLINED_FUNCTION_14_8(v16[24]);
    OUTLINED_FUNCTION_26_19();
    v41 = (v3 + v16[25]);
    v42 = *v41;
    LOBYTE(v41) = *(v41 + 8);
    *&v56 = v42;
    BYTE8(v56) = v41;
    v58 = 21;
    sub_23B3E9E24();
    OUTLINED_FUNCTION_6_5();
    v43 = *(v3 + v16[26]);
    LOBYTE(v56) = 22;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7B4();
    OUTLINED_FUNCTION_14_8(v16[27]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_14_8(v16[28]);
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_14_8(v16[29]);
    OUTLINED_FUNCTION_26();
    sub_23B50D794();
    OUTLINED_FUNCTION_14_8(v16[30]);
    OUTLINED_FUNCTION_26();
    sub_23B50D794();
    v44 = (v3 + v16[31]);
    v45 = *v44;
    LOBYTE(v44) = *(v44 + 8);
    *&v56 = v45;
    BYTE8(v56) = v44;
    v58 = 27;
    sub_23B3F03FC();
    OUTLINED_FUNCTION_6_5();
    v46 = v16[32];
    LOBYTE(v56) = 28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v47, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v48 = v16[33];
    OUTLINED_FUNCTION_73_3(29);
    type metadata accessor for Wind();
    OUTLINED_FUNCTION_54_4();
    sub_23B4FC170(v49, v50);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v51 = v16[34];
    OUTLINED_FUNCTION_73_3(30);
    type metadata accessor for WeatherMetadata();
    OUTLINED_FUNCTION_53_4();
    sub_23B4FC170(v52, v53);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_23B4FA250()
{
  result = qword_280B42968;
  if (!qword_280B42968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42968);
  }

  return result;
}

uint64_t CurrentWeather.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v210 = a1;
  v185 = a2;
  v184 = type metadata accessor for WeatherMetadata();
  v2 = OUTLINED_FUNCTION_6(v184);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35(v6 - v5);
  v181 = type metadata accessor for Wind();
  v7 = OUTLINED_FUNCTION_6(v181);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v182 = v11 - v10;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5(v188);
  v187 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52();
  v183 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v20);
  v194 = type metadata accessor for PrecipitationAmountByType();
  v21 = OUTLINED_FUNCTION_6(v194);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v29);
  v197 = type metadata accessor for PrecipitationAmount();
  v30 = OUTLINED_FUNCTION_6(v197);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_0();
  v195 = v33 - v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_76();
  v196 = v36;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_5(v191);
  v189 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_52();
  v198 = v41;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5(v192);
  v190 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_52();
  v200 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v48 = OUTLINED_FUNCTION_5(v47);
  v209 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_12_0();
  v54 = (v52 - v53);
  MEMORY[0x28223BE20](v55);
  v57 = v180 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = v180 - v59;
  v61 = sub_23B50AD24();
  v62 = OUTLINED_FUNCTION_5(v61);
  v193 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_27();
  v68 = v67 - v66;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A28, &qword_23B526970);
  OUTLINED_FUNCTION_5(v201);
  v199 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v72);
  v74 = v180 - v73;
  v75 = type metadata accessor for CurrentWeather();
  v76 = OUTLINED_FUNCTION_6(v75);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_27();
  v81 = v80 - v79;
  v205 = *(v82 + 116);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v47);
  v206 = v81;
  v207 = v75;
  v204 = *(v75 + 120);
  OUTLINED_FUNCTION_1();
  v208 = v47;
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v47);
  v89 = v210[4];
  __swift_project_boxed_opaque_existential_1(v210, v210[3]);
  sub_23B4FA250();
  v202 = v74;
  v90 = v203;
  sub_23B50D964();
  v186 = v61;
  if (v90)
  {
    v93 = 0;
    LODWORD(v92) = 0;
    v133 = 0;
    v135 = 0;
    LODWORD(v194) = 0;
    LODWORD(v195) = 0;
    LODWORD(v196) = 0;
    LODWORD(v197) = 0;
    LODWORD(v198) = 0;
    LODWORD(v199) = 0;
    LODWORD(v200) = 0;
    LODWORD(v201) = 0;
    LODWORD(v202) = 0;
    v96 = v206;
    v97 = v207;
    v203 = v90;
    __swift_destroy_boxed_opaque_existential_1(v210);
    v108 = 0;
    v109 = 0;
  }

  else
  {
    v91 = v60;
    v92 = v200;
    v180[0] = v57;
    v203 = v54;
    v93 = v199;
    LOBYTE(v211) = 0;
    OUTLINED_FUNCTION_6_31();
    sub_23B4FC170(v94, v95);
    OUTLINED_FUNCTION_30();
    sub_23B50D734();
    v120 = v206;
    (*(v193 + 32))(v206, v68, v61);
    LOBYTE(v211) = 1;
    sub_23B50D704();
    v121 = v207;
    *(v120 + v207[5]) = v122;
    OUTLINED_FUNCTION_22_18(2);
    sub_23B50D704();
    *(v120 + v121[6]) = v123;
    OUTLINED_FUNCTION_22_18(3);
    sub_23B50D704();
    *(v120 + v121[7]) = v124;
    OUTLINED_FUNCTION_22_18(4);
    sub_23B50D704();
    *(v120 + v121[8]) = v125;
    v213 = 5;
    sub_23B41A564();
    OUTLINED_FUNCTION_29_13();
    v126 = v212;
    v127 = v120 + v121[9];
    *v127 = v211;
    *(v127 + 16) = v126;
    v213 = 6;
    sub_23B3F0450();
    OUTLINED_FUNCTION_29_13();
    *(v120 + v121[10]) = v211;
    OUTLINED_FUNCTION_22_18(7);
    v128 = sub_23B50D6E4();
    v129 = (v120 + v121[11]);
    *v129 = v128;
    v129[1] = v130;
    LOBYTE(v211) = 8;
    OUTLINED_FUNCTION_3_8(&qword_27E132090, &qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_30();
    v131 = v91;
    OUTLINED_FUNCTION_39_12();
    v133 = v132;
    sub_23B50D734();
    v134 = v121[12];
    v135 = v209 + 32;
    v136 = *(v209 + 32);
    v136(v120 + v134, v131, v208);
    OUTLINED_FUNCTION_22_18(9);
    sub_23B50D704();
    *(v206 + v207[13]) = v137;
    LOBYTE(v211) = 10;
    OUTLINED_FUNCTION_3_8(&qword_27E132018, &qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_39_12();
    sub_23B50D734();
    v138 = OUTLINED_FUNCTION_62_2(v207[14]);
    v139(v138, v92, v192);
    LOBYTE(v211) = 11;
    OUTLINED_FUNCTION_3_8(&qword_27E132A28, &qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_39_12();
    sub_23B50D734();
    v140 = OUTLINED_FUNCTION_62_2(v207[15]);
    v141(v140, v198, v191);
    v213 = 12;
    sub_23B41A5B8();
    OUTLINED_FUNCTION_29_13();
    *(v206 + v207[16]) = v211;
    LOBYTE(v211) = 13;
    OUTLINED_FUNCTION_50_5();
    sub_23B4FC170(v142, v143);
    OUTLINED_FUNCTION_27_16();
    v144 = v207[17];
    OUTLINED_FUNCTION_12_27();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(14);
    OUTLINED_FUNCTION_27_16();
    v145 = v207[18];
    OUTLINED_FUNCTION_12_27();
    sub_23B3B0660();
    LOBYTE(v211) = 15;
    OUTLINED_FUNCTION_49_6();
    sub_23B4FC170(v146, v147);
    OUTLINED_FUNCTION_19_21(&v214);
    v148 = v207[19];
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(16);
    OUTLINED_FUNCTION_19_21(&v205);
    v149 = v207[20];
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(17);
    OUTLINED_FUNCTION_19_21(&v206);
    v150 = v207[21];
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(18);
    OUTLINED_FUNCTION_19_21(&v207);
    v151 = v207[22];
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(19);
    OUTLINED_FUNCTION_19_21(&v204);
    v152 = v207[23];
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    OUTLINED_FUNCTION_29(20);
    OUTLINED_FUNCTION_19_21(&v208);
    v153 = v207[24];
    OUTLINED_FUNCTION_0_61();
    sub_23B3B0660();
    v213 = 21;
    sub_23B3E9ECC();
    OUTLINED_FUNCTION_29_13();
    v154 = BYTE8(v211);
    v155 = v206 + v207[25];
    *v155 = v211;
    *(v155 + 8) = v154;
    OUTLINED_FUNCTION_22_18(22);
    *(v206 + v207[26]) = sub_23B50D6F4() & 1;
    OUTLINED_FUNCTION_29(23);
    OUTLINED_FUNCTION_39_12();
    sub_23B50D734();
    v136(v206 + v207[27], v180[0], v208);
    OUTLINED_FUNCTION_29(24);
    sub_23B50D734();
    v136(v206 + v207[28], v203, v208);
    OUTLINED_FUNCTION_29(25);
    v156 = v202;
    sub_23B50D6D4();
    sub_23B4F70E4(v180[6], v206 + v205);
    OUTLINED_FUNCTION_29(26);
    OUTLINED_FUNCTION_39_12();
    sub_23B50D6D4();
    sub_23B4F70E4(v180[7], v206 + v204);
    v213 = 27;
    sub_23B3F04A4();
    OUTLINED_FUNCTION_29_13();
    v203 = 0;
    v157 = BYTE8(v211);
    v158 = v206 + v207[31];
    *v158 = v211;
    *(v158 + 8) = v157;
    LOBYTE(v211) = 28;
    OUTLINED_FUNCTION_3_8(&qword_27E131E60, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_39_12();
    v159 = v203;
    sub_23B50D734();
    v203 = v159;
    if (v159)
    {
      v160 = OUTLINED_FUNCTION_43_11();
      v161(v160);
      v109 = 0;
      v108 = 0;
    }

    else
    {
      v164 = OUTLINED_FUNCTION_62_2(v207[32]);
      v165(v164, v183, v188);
      LOBYTE(v211) = 29;
      OUTLINED_FUNCTION_54_4();
      sub_23B4FC170(v166, v167);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_39_12();
      v168 = v203;
      sub_23B50D734();
      v203 = v168;
      if (v168)
      {
        v169 = OUTLINED_FUNCTION_43_11();
        v170(v169);
        v108 = 0;
        v109 = 1;
      }

      else
      {
        v171 = v207[33];
        OUTLINED_FUNCTION_21_16();
        sub_23B3B0660();
        LOBYTE(v211) = 30;
        OUTLINED_FUNCTION_53_4();
        sub_23B4FC170(v172, v173);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_39_12();
        v174 = v203;
        sub_23B50D734();
        v203 = v174;
        if (!v174)
        {
          v177 = OUTLINED_FUNCTION_43_11();
          v178(v177);
          v179 = v207[34];
          OUTLINED_FUNCTION_20_21();
          sub_23B3B0660();
          sub_23B396CA4();
          __swift_destroy_boxed_opaque_existential_1(v210);
          return sub_23B4FB78C();
        }

        v175 = OUTLINED_FUNCTION_43_11();
        v176(v175);
        v109 = 1;
        v108 = 1;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v210);
    OUTLINED_FUNCTION_2_50();
    OUTLINED_FUNCTION_24_14(v162);
    LODWORD(v200) = v163;
    LODWORD(v201) = v163;
    LODWORD(v202) = v163;
    v96 = v206;
    v97 = v207;
    (*(v193 + 8))(v206, v186);
    if (v156)
    {
      v98 = *(v96 + v97[11] + 8);

      if ((v93 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  if (!v93)
  {
LABEL_6:
    v99 = v208;
    if (v92)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v99 = v208;
  (*(v209 + 8))(v96 + v97[12], v208);
  if (v92)
  {
LABEL_7:
    v100 = OUTLINED_FUNCTION_65_4(v97[14]);
    v101(v100, v192);
    if ((v133 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!v133)
  {
LABEL_8:
    if (v135)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v110 = OUTLINED_FUNCTION_65_4(v97[15]);
  v111(v110, v191);
  if (v135)
  {
LABEL_9:
    v102 = v97[17];
    OUTLINED_FUNCTION_55_5();
    if ((v194 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v194)
  {
LABEL_10:
    v103 = v209;
    if (v195)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v112 = v97[18];
  OUTLINED_FUNCTION_55_5();
  v103 = v209;
  if (v195)
  {
LABEL_11:
    v104 = v97[19];
    OUTLINED_FUNCTION_8_32();
    if ((v196 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v196)
  {
LABEL_12:
    if (v197)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v113 = v97[20];
  OUTLINED_FUNCTION_8_32();
  if (v197)
  {
LABEL_13:
    v105 = v97[21];
    OUTLINED_FUNCTION_8_32();
    if ((v198 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v198)
  {
LABEL_14:
    if (v199)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v114 = v97[22];
  OUTLINED_FUNCTION_8_32();
  if (v199)
  {
LABEL_15:
    v106 = v97[23];
    OUTLINED_FUNCTION_8_32();
    if ((v200 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v200)
  {
LABEL_16:
    if (v201)
    {
      goto LABEL_17;
    }

LABEL_31:
    if (!v202)
    {
      goto LABEL_34;
    }

    v107 = *(v103 + 8);
    goto LABEL_33;
  }

LABEL_30:
  v115 = v97[24];
  OUTLINED_FUNCTION_8_32();
  if ((v201 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  v107 = *(v103 + 8);
  v107(v96 + v97[27], v99);
  if (v202)
  {
LABEL_33:
    v107(v96 + v97[28], v99);
  }

LABEL_34:
  sub_23B398890(v96 + v205, &qword_27E132168, &qword_23B510108);
  result = sub_23B398890(v96 + v204, &qword_27E132168, &qword_23B510108);
  if (v109)
  {
    v117 = OUTLINED_FUNCTION_65_4(v97[32]);
    result = v118(v117, v188);
  }

  if (v108)
  {
    v119 = v96 + v97[33];
    return sub_23B4FB78C();
  }

  return result;
}

uint64_t sub_23B4FB78C()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void CurrentWeather.hash(into:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5(v2);
  v63 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132168, &qword_23B510108);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_12_0();
  v62 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_76();
  v61 = v12;
  sub_23B50AD24();
  OUTLINED_FUNCTION_6_31();
  sub_23B4FC170(v13, v14);
  sub_23B50D0E4();
  v15 = type metadata accessor for CurrentWeather();
  v16 = *(v0 + v15[5]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v16);
  v17 = OUTLINED_FUNCTION_9_9(v15[6]);
  MEMORY[0x23EE9DB70](v17);
  v18 = OUTLINED_FUNCTION_9_9(v15[7]);
  MEMORY[0x23EE9DB70](v18);
  v19 = OUTLINED_FUNCTION_9_9(v15[8]);
  MEMORY[0x23EE9DB70](v19);
  v20 = (v0 + v15[9]);
  v64 = *v20;
  v65 = *(v20 + 2);
  CloudCoverByAltitude.hash(into:)();
  LOBYTE(v64) = *(v0 + v15[10]);
  WeatherCondition.rawValue.getter();
  OUTLINED_FUNCTION_14_0();

  v21 = (v0 + v15[11]);
  v22 = *v21;
  v23 = v21[1];
  sub_23B50D1C4();
  v24 = v15[12];
  sub_23B3F1C50(&qword_280B42B80, &qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_68_3();
  v25 = OUTLINED_FUNCTION_9_9(v15[13]);
  MEMORY[0x23EE9DB70](v25);
  v26 = v15[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  sub_23B3F1C50(&qword_280B42BE0, &qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_76_2();
  v27 = v15[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  sub_23B3F1C50(&qword_280B42BB0, &qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_76_2();
  if (*(v1 + v15[16]))
  {
    *(v1 + v15[16]);
  }

  sub_23B50D1C4();

  v28 = v1 + v15[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3F1C50(&qword_280B42BC8, &qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_70_3();
  sub_23B50D0E4();
  v29 = type metadata accessor for PrecipitationAmount();
  v30 = v29[5];
  OUTLINED_FUNCTION_23_16();
  v31 = v29[6];
  OUTLINED_FUNCTION_23_16();
  v32 = v29[7];
  OUTLINED_FUNCTION_23_16();
  v33 = v29[8];
  OUTLINED_FUNCTION_23_16();
  v34 = v29[9];
  OUTLINED_FUNCTION_23_16();
  v35 = v1 + v15[18];
  OUTLINED_FUNCTION_70_3();
  sub_23B50D0E4();
  v36 = v29[5];
  OUTLINED_FUNCTION_23_16();
  v37 = v29[6];
  OUTLINED_FUNCTION_23_16();
  v38 = v29[7];
  OUTLINED_FUNCTION_23_16();
  v39 = v29[8];
  OUTLINED_FUNCTION_23_16();
  v40 = v29[9];
  OUTLINED_FUNCTION_23_16();
  v41 = v15[19];
  OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)();
  v42 = v15[20];
  OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)();
  v43 = v15[21];
  OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)();
  v44 = v15[22];
  OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)();
  v45 = v15[23];
  OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)();
  v46 = v15[24];
  OUTLINED_FUNCTION_28();
  PrecipitationAmountByType.hash(into:)();
  v47 = v1 + v15[25];
  v48 = *v47;
  LODWORD(v29) = *(v47 + 8);
  if (*v47 == 0.0)
  {
    v48 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v48);
  sub_23B50D1C4();

  v49 = *(v1 + v15[26]);
  sub_23B50D8E4();
  v50 = v15[27];
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_68_3();
  v51 = v15[28];
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_68_3();
  sub_23B4F81DC(v1 + v15[29], v61);
  if (__swift_getEnumTagSinglePayload(v61, 1, v2) == 1)
  {
    sub_23B50D8E4();
  }

  else
  {
    v52 = OUTLINED_FUNCTION_60_3();
    v53(v52);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_70_3();
    OUTLINED_FUNCTION_68_3();
    (*(v63 + 8))(v35, v2);
  }

  sub_23B4F81DC(v1 + v15[30], v62);
  if (__swift_getEnumTagSinglePayload(v62, 1, v2) == 1)
  {
    sub_23B50D8E4();
  }

  else
  {
    v54 = OUTLINED_FUNCTION_60_3();
    v55(v54);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_70_3();
    OUTLINED_FUNCTION_68_3();
    (*(v63 + 8))(v35, v2);
  }

  v56 = v1 + v15[31];
  v57 = *(v56 + 8);
  MEMORY[0x23EE9DB40](*v56);
  UVIndex.ExposureCategory.rawValue.getter(v57);
  OUTLINED_FUNCTION_14_0();

  v58 = v15[32];
  OUTLINED_FUNCTION_28();
  sub_23B50D0E4();
  v59 = v15[33];
  OUTLINED_FUNCTION_28();
  Wind.hash(into:)();
  v60 = v15[34];
  OUTLINED_FUNCTION_28();
  WeatherMetadata.hash(into:)();
}

uint64_t CurrentWeather.hashValue.getter()
{
  sub_23B50D8C4();
  CurrentWeather.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B4FBEBC()
{
  sub_23B50D8C4();
  CurrentWeather.hash(into:)();
  return sub_23B50D914();
}

uint64_t CurrentWeather.debugDescription.getter()
{
  v1 = v0;
  BYTE8(v13) = 0;
  sub_23B50D5C4();
  MEMORY[0x23EE9D460](0x3D65746164, 0xE500000000000000);
  v2 = type metadata accessor for CurrentWeather();
  v3 = v0 + v2[34];
  sub_23B50AD24();
  OUTLINED_FUNCTION_6_31();
  sub_23B4FC170(v4, v5);
  v6 = sub_23B50D824();
  MEMORY[0x23EE9D460](v6);

  MEMORY[0x23EE9D460](0xD000000000000011, 0x800000023B538A90);
  v7 = v3 + *(type metadata accessor for WeatherMetadata() + 20);
  v8 = sub_23B50D824();
  MEMORY[0x23EE9D460](v8);

  MEMORY[0x23EE9D460](0x7469646E6F63202CLL, 0xEC0000003D6E6F69);
  *&v13 = *(v1 + v2[10]);
  v9 = WeatherCondition.description.getter();
  MEMORY[0x23EE9D460](v9);

  MEMORY[0x23EE9D460](0x7265706D6574202CLL, 0xEE003D6572757461);
  v10 = v2[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  sub_23B3F1C50(&qword_280B42B70, &qword_27E131E30, &qword_23B511AC0);
  v11 = sub_23B50D824();
  MEMORY[0x23EE9D460](v11);

  return *(&v13 + 1);
}

uint64_t sub_23B4FC170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CurrentWeather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CurrentWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4FC324()
{
  result = qword_27E135A40;
  if (!qword_27E135A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A40);
  }

  return result;
}

unint64_t sub_23B4FC37C()
{
  result = qword_280B42958;
  if (!qword_280B42958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42958);
  }

  return result;
}

unint64_t sub_23B4FC3D4()
{
  result = qword_280B42960;
  if (!qword_280B42960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42960);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return type metadata accessor for CurrentWeather();
}

uint64_t TideEvent.init(date:eventType:height:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 32))(a4, a1);
  v10 = type metadata accessor for TideEvent();
  *(a4 + *(v10 + 20)) = v7;
  v11 = *(v10 + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v12);
  v14 = *(v13 + 32);

  return v14(a4 + v11, a3);
}

uint64_t TideEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t TideEvent.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t TideEvent.eventType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TideEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TideEvent.eventType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TideEvent();
  *(v1 + *(result + 20)) = v2;
  return result;
}

double (*TideEvent.eventType.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for TideEvent() + 20);
  return GEOLocationCoordinate2DMake;
}

uint64_t TideEvent.height.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TideEvent() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t TideEvent.height.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for TideEvent() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

double (*TideEvent.height.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for TideEvent() + 24);
  return GEOLocationCoordinate2DMake;
}

uint64_t static TideEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TideEvent();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v7 = *(v6 + 24);
  sub_23B3E38E8(&qword_280B42BC0);
  return sub_23B50D134() & 1;
}

uint64_t sub_23B4FC8B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
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

uint64_t sub_23B4FC9C4(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x707954746E657665;
  }

  return 0x746867696568;
}

uint64_t sub_23B4FCA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4FC8B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4FCA44(uint64_t a1)
{
  v2 = sub_23B4FD0D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4FCA80(uint64_t a1)
{
  v2 = sub_23B4FD0D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TideEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A48, &qword_23B526C80);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FD0D8();
  sub_23B50D974();
  v17[15] = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50);
  OUTLINED_FUNCTION_40();
  if (!v2)
  {
    v14 = type metadata accessor for TideEvent();
    v17[14] = *(v3 + *(v14 + 20));
    v17[13] = 1;
    sub_23B4FD12C();
    sub_23B50D7F4();
    v15 = *(v14 + 24);
    v17[12] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    sub_23B3E38E8(&qword_280B42BD0);
    OUTLINED_FUNCTION_40();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t TideEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5(v38);
  v36 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v42 = sub_23B50AD24();
  v10 = OUTLINED_FUNCTION_5(v42);
  v40 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v41 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A60, &qword_23B526C88);
  OUTLINED_FUNCTION_5(v43);
  v39 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  v19 = type metadata accessor for TideEvent();
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FD0D8();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v19;
  v35 = v24;
  v27 = v40;
  v47 = 0;
  sub_23B402DA8(&qword_27E132008);
  v28 = v41;
  OUTLINED_FUNCTION_6_32();
  (*(v27 + 32))(v35, v28, v42);
  v45 = 1;
  sub_23B4FD180();
  OUTLINED_FUNCTION_6_32();
  v35[*(v26 + 20)] = v46;
  v44 = 2;
  sub_23B3E38E8(&qword_27E131E60);
  v41 = v9;
  v29 = v38;
  sub_23B50D734();
  v30 = OUTLINED_FUNCTION_3_57();
  v31(v30);
  v32 = v35;
  (*(v36 + 32))(&v35[*(v26 + 24)], v41, v29);
  sub_23B4FD1D4(v32, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B4FD238(v32);
}

unint64_t sub_23B4FD0D8()
{
  result = qword_27E135A50;
  if (!qword_27E135A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A50);
  }

  return result;
}

unint64_t sub_23B4FD12C()
{
  result = qword_27E135A58;
  if (!qword_27E135A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A58);
  }

  return result;
}

unint64_t sub_23B4FD180()
{
  result = qword_27E135A68;
  if (!qword_27E135A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A68);
  }

  return result;
}

uint64_t sub_23B4FD1D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TideEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4FD238(uint64_t a1)
{
  v2 = type metadata accessor for TideEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4FD294(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000)
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

uint64_t sub_23B4FD35C(char a1)
{
  if (a1)
  {
    return 1751607656;
  }

  else
  {
    return 7827308;
  }
}

uint64_t sub_23B4FD38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4FD294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4FD3B4(uint64_t a1)
{
  v2 = sub_23B4FD79C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4FD3F0(uint64_t a1)
{
  v2 = sub_23B4FD79C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4FD42C(uint64_t a1)
{
  v2 = sub_23B4FD7F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4FD468(uint64_t a1)
{
  v2 = sub_23B4FD7F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4FD4A4(uint64_t a1)
{
  v2 = sub_23B4FD844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4FD4E0(uint64_t a1)
{
  v2 = sub_23B4FD844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TideEvent.EventType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A70, &qword_23B526C90);
  v4 = OUTLINED_FUNCTION_5(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A78, &qword_23B526C98);
  v11 = OUTLINED_FUNCTION_5(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135A80, &qword_23B526CA0);
  OUTLINED_FUNCTION_5(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FD79C();
  sub_23B50D974();
  v28 = (v20 + 8);
  if (v26)
  {
    v37 = 1;
    sub_23B4FD7F0();
    v29 = v33;
    sub_23B50D764();
    (*(v34 + 8))(v29, v35);
  }

  else
  {
    v36 = 0;
    sub_23B4FD844();
    sub_23B50D764();
    (*(v31 + 8))(v17, v32);
  }

  return (*v28)(v25, v18);
}

unint64_t sub_23B4FD79C()
{
  result = qword_27E135A88;
  if (!qword_27E135A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A88);
  }

  return result;
}

unint64_t sub_23B4FD7F0()
{
  result = qword_27E135A90;
  if (!qword_27E135A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A90);
  }

  return result;
}

unint64_t sub_23B4FD844()
{
  result = qword_27E135A98;
  if (!qword_27E135A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135A98);
  }

  return result;
}

uint64_t TideEvent.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

void TideEvent.EventType.init(from:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135AA0, &qword_23B526CA8);
  OUTLINED_FUNCTION_5(v52);
  v49 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135AA8, &qword_23B526CB0);
  OUTLINED_FUNCTION_5(v9);
  v48 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135AB0, &qword_23B526CB8);
  OUTLINED_FUNCTION_5(v16);
  v51 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = v45 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FD79C();
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
  sub_23B3D2834(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = v27;
LABEL_9:
    v40 = sub_23B50D5F4();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0) + 48);
    *v42 = &type metadata for TideEvent.EventType;
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
    v32 = sub_23B40D8C4(v29 + 1);
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
      sub_23B4FD7F0();
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
      sub_23B4FD844();
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

unint64_t sub_23B4FDDBC()
{
  result = qword_27E135AB8;
  if (!qword_27E135AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AB8);
  }

  return result;
}

_BYTE *sub_23B4FDE48(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TideEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4FE024()
{
  result = qword_27E135AC0;
  if (!qword_27E135AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AC0);
  }

  return result;
}

unint64_t sub_23B4FE07C()
{
  result = qword_27E135AC8;
  if (!qword_27E135AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AC8);
  }

  return result;
}

unint64_t sub_23B4FE0D4()
{
  result = qword_27E135AD0;
  if (!qword_27E135AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AD0);
  }

  return result;
}

unint64_t sub_23B4FE12C()
{
  result = qword_27E135AD8;
  if (!qword_27E135AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AD8);
  }

  return result;
}

unint64_t sub_23B4FE184()
{
  result = qword_27E135AE0;
  if (!qword_27E135AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AE0);
  }

  return result;
}

unint64_t sub_23B4FE1DC()
{
  result = qword_27E135AE8;
  if (!qword_27E135AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AE8);
  }

  return result;
}

unint64_t sub_23B4FE234()
{
  result = qword_27E135AF0;
  if (!qword_27E135AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AF0);
  }

  return result;
}

unint64_t sub_23B4FE28C()
{
  result = qword_27E135AF8;
  if (!qword_27E135AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135AF8);
  }

  return result;
}

unint64_t sub_23B4FE2E4()
{
  result = qword_27E135B00;
  if (!qword_27E135B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B00);
  }

  return result;
}

unint64_t sub_23B4FE33C()
{
  result = qword_27E135B08;
  if (!qword_27E135B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B08);
  }

  return result;
}

uint64_t HourMarineWeather.init(date:primarySwell:waterTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v8);
  (*(v9 + 32))(a4, a1);
  v10 = type metadata accessor for HourMarineWeather();
  sub_23B451400(a2, a4 + *(v10 + 20));
  v11 = *(v10 + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v12);
  v14 = *(v13 + 32);

  return v14(a4 + v11, a3);
}

uint64_t HourMarineWeather.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B50AD24();
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t HourMarineWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t HourMarineWeather.primarySwell.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = v1 + *(type metadata accessor for HourMarineWeather() + 20);

  return sub_23B4FE5D0(v0, v2);
}

uint64_t sub_23B4FE5D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Swell();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double (*HourMarineWeather.primarySwell.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourMarineWeather() + 20);
  return GEOLocationCoordinate2DMake;
}

uint64_t HourMarineWeather.waterTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HourMarineWeather() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t HourMarineWeather.waterTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for HourMarineWeather() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

double (*HourMarineWeather.waterTemperature.modify())(double, double)
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for HourMarineWeather() + 24);
  return GEOLocationCoordinate2DMake;
}

uint64_t sub_23B4FE7B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x537972616D697270 && a2 == 0xEC0000006C6C6577;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x800000023B539460 == a2)
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

uint64_t sub_23B4FE8D4(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x537972616D697270;
  }

  return 0xD000000000000010;
}

uint64_t sub_23B4FE938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4FE7B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4FE960(uint64_t a1)
{
  v2 = sub_23B4FEBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4FE99C(uint64_t a1)
{
  v2 = sub_23B4FEBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HourMarineWeather.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B10, &qword_23B5271A8);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v20[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FEBEC();
  sub_23B50D974();
  v20[15] = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_2_51();
  sub_23B4FF118(v12, v13);
  OUTLINED_FUNCTION_40();
  if (!v1)
  {
    v14 = type metadata accessor for HourMarineWeather();
    v15 = *(v14 + 20);
    v20[14] = 1;
    type metadata accessor for Swell();
    OUTLINED_FUNCTION_3_58();
    sub_23B4FF118(v16, v17);
    OUTLINED_FUNCTION_40();
    v18 = *(v14 + 24);
    v20[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    sub_23B40B418(&qword_280B42B88);
    OUTLINED_FUNCTION_40();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B4FEBEC()
{
  result = qword_27E135B18;
  if (!qword_27E135B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B18);
  }

  return result;
}

uint64_t HourMarineWeather.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v3 = OUTLINED_FUNCTION_5(v53);
  v50 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v49 - v7;
  v56 = type metadata accessor for Swell();
  v8 = OUTLINED_FUNCTION_6(v56);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v13 = v12 - v11;
  v14 = sub_23B50AD24();
  v15 = OUTLINED_FUNCTION_5(v14);
  v54 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  v57 = v20 - v19;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B28, &qword_23B5271B0);
  v21 = OUTLINED_FUNCTION_5(v58);
  v55 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v49 - v25;
  v27 = type metadata accessor for HourMarineWeather();
  v28 = OUTLINED_FUNCTION_6(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_27();
  v33 = v32 - v31;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4FEBEC();
  v59 = v26;
  v35 = v60;
  sub_23B50D964();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v55;
  v49 = v27;
  v60 = v33;
  v37 = a1;
  v63 = 0;
  OUTLINED_FUNCTION_2_51();
  sub_23B4FF118(v38, v39);
  v40 = v57;
  sub_23B50D734();
  (*(v54 + 32))(v60, v40, v14);
  v62 = 1;
  OUTLINED_FUNCTION_3_58();
  sub_23B4FF118(v41, v42);
  v43 = v13;
  sub_23B50D734();
  v57 = v14;
  v44 = v49;
  v45 = v60;
  sub_23B451400(v43, v60 + *(v49 + 20));
  v61 = 2;
  sub_23B40B418(&qword_27E132090);
  v46 = v52;
  v47 = v53;
  sub_23B50D734();
  (*(v36 + 8))(v59, v58);
  (*(v50 + 32))(v45 + *(v44 + 24), v46, v47);
  sub_23B4FF160(v45, v51, type metadata accessor for HourMarineWeather);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_23B4FF1C0();
}

uint64_t sub_23B4FF118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B4FF160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B4FF1C0()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t static HourMarineWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HourMarineWeather();
  if (!static Swell.== infix(_:_:)(a1 + *(v4 + 20), a2 + *(v4 + 20)))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v5 = *(v4 + 24);
  sub_23B40B418(&qword_280B42B78);
  return sub_23B50D134() & 1;
}

_BYTE *storeEnumTagSinglePayload for HourMarineWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4FF404()
{
  result = qword_27E135B38;
  if (!qword_27E135B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B38);
  }

  return result;
}

unint64_t sub_23B4FF45C()
{
  result = qword_27E135B40;
  if (!qword_27E135B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B40);
  }

  return result;
}

unint64_t sub_23B4FF4B4()
{
  result = qword_27E135B48;
  if (!qword_27E135B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B48);
  }

  return result;
}

uint64_t sub_23B4FF508@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - v8;
  v10 = sub_23B50C3C4();
  v11 = OUTLINED_FUNCTION_5(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v49 = a1;
  v50 = a2;

  MEMORY[0x23EE9D460](45, 0xE100000000000000);
  v18 = sub_23B50B7A4();
  MEMORY[0x23EE9D460](v18);

  v19 = v49;
  v20 = v50;
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v21 = sub_23B50CDF4();
  v22 = __swift_project_value_buffer(v21, qword_280B4E9D8);

  v47 = v22;
  v23 = sub_23B50CDD4();
  v24 = sub_23B50D4C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v45 = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v44 = v17;
    v28 = v10;
    v29 = v13;
    v30 = a3;
    v31 = v27;
    v49 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_23B391F1C(v19, v20, &v49);
    _os_log_impl(&dword_23B38D000, v23, v24, "Attempting to retrieve air quality scale with cache key: %{public}s from cache", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    a3 = v30;
    v13 = v29;
    v10 = v28;
    v17 = v44;
    OUTLINED_FUNCTION_38();
    a2 = v45;
    OUTLINED_FUNCTION_38();
  }

  v32 = *(v48 + 16);
  sub_23B3A4498(v19, v20, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {

    sub_23B4FFCEC(v9);
    v33 = 1;
  }

  else
  {
    v34 = v19;
    v48 = *(v13 + 32);
    (v48)(v17, v9, v10);

    v35 = sub_23B50CDD4();
    v36 = sub_23B50D4C4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v37 = 136446466;
      *(v37 + 4) = sub_23B391F1C(v46, a2, &v49);
      *(v37 + 12) = 2082;
      v38 = sub_23B391F1C(v34, v20, &v49);
      v39 = v17;
      v40 = a3;
      v41 = v38;

      *(v37 + 14) = v41;
      a3 = v40;
      v17 = v39;
      _os_log_impl(&dword_23B38D000, v35, v36, "Successfully retrieved air quality scale: %{public}s with cache key:  %{public}s from cache", v37, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    (v48)(a3, v17, v10);
    v33 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v33, 1, v10);
}

uint64_t sub_23B4FF928(void *a1)
{
  v1 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
  return sub_23B50B704();
}

uint64_t sub_23B4FF998(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_23B50C3C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  sub_23B47DBE8(a1, a3, a4);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v14 = sub_23B50CDF4();
  __swift_project_value_buffer(v14, qword_280B4E9D8);

  v15 = sub_23B50CDD4();
  v16 = sub_23B50D4C4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27 = a1;
    v20 = v19;
    v28 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_23B391F1C(a3, a4, &v28);
    _os_log_impl(&dword_23B38D000, v15, v16, "Successfully fetched air quality scale with key: %{public}s and updated the scale cache", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    a1 = v27;
    MEMORY[0x23EE9E260](v20, -1, -1);
    v21 = v18;
    v8 = v26;
    MEMORY[0x23EE9E260](v21, -1, -1);
  }

  (*(v9 + 16))(v12, a1, v8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B50, &unk_23B5273F0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  return sub_23B50B094();
}

uint64_t sub_23B4FFBEC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_23B4FFCEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4FFD54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_23B4FF928(*(v0 + 16));
}

uint64_t sub_23B4FFD90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void sub_23B4FFE28(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_23B3DD920(a1);
}

void sub_23B4FFE34(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_23B3DD928(a1);
}

void sub_23B4FFE58(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_23B3DD978(a1);
}

WeatherKit::WeatherServiceCaching::Options sub_23B4FFE8C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = WeatherServiceCaching.Options.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B4FFECC@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherServiceCaching.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WeatherServiceCaching.EnablementStatus.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

unint64_t sub_23B4FFFC4()
{
  result = qword_27E135B60;
  if (!qword_27E135B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B60);
  }

  return result;
}

unint64_t sub_23B50001C()
{
  result = qword_27E135B68;
  if (!qword_27E135B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B68);
  }

  return result;
}

unint64_t sub_23B500074()
{
  result = qword_27E135B70;
  if (!qword_27E135B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceCaching(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = v4 - 2;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for WeatherServiceCaching(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceCaching.EnablementStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B5002C8(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (v2 > 0)
    {
      return OUTLINED_FUNCTION_0_62(v2 - 1);
    }

    v3 = __OFSUB__(0, v2);
    v4 = -v2;
    if (!v3)
    {
      return 8784 * (v4 / 8784) - v4 + 8784;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23B50030C(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (v2 > 0)
    {
      return OUTLINED_FUNCTION_0_62(v2 - 1);
    }

    v3 = __OFSUB__(0, v2);
    v4 = -v2;
    if (!v3)
    {
      return 366 * (v4 / 366) - v4 + 366;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23B5003C8(uint64_t a1)
{
  v2 = sub_23B500778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B500404(uint64_t a1)
{
  v2 = sub_23B500778();

  return MEMORY[0x2821FE720](a1, v2);
}

WeatherKit::NextHourPerceivedIntensityScale_optional __swiftcall NextHourPerceivedIntensityScale.init(rawValue:)(Swift::String rawValue)
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

uint64_t NextHourPerceivedIntensityScale.rawValue.getter()
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

uint64_t sub_23B5004F8@<X0>(uint64_t *a1@<X8>)
{
  result = NextHourPerceivedIntensityScale.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static NextHourPerceivedIntensity.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t NextHourPerceivedIntensity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B78, &qword_23B527690);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16[-v10];
  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B500778();
  sub_23B50D974();
  v16[15] = 0;
  sub_23B50D7C4();
  if (!v2)
  {
    v16[14] = v13;
    v16[13] = 1;
    sub_23B5007CC();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_23B500778()
{
  result = qword_27E135B80;
  if (!qword_27E135B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B80);
  }

  return result;
}

unint64_t sub_23B5007CC()
{
  result = qword_27E135B88;
  if (!qword_27E135B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B88);
  }

  return result;
}

uint64_t NextHourPerceivedIntensity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135B90, &qword_23B527698);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B500778();
  sub_23B50D964();
  if (!v2)
  {
    v18[15] = 0;
    sub_23B50D704();
    v15 = v14;
    v18[13] = 1;
    sub_23B5009DC();
    sub_23B50D734();
    (*(v8 + 8))(v12, v5);
    v16 = v18[14];
    *a2 = v15;
    *(a2 + 8) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23B5009DC()
{
  result = qword_27E135B98;
  if (!qword_27E135B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135B98);
  }

  return result;
}

unint64_t sub_23B500A34()
{
  result = qword_27E135BA0;
  if (!qword_27E135BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NextHourPerceivedIntensityScale(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NextHourPerceivedIntensity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B500C84()
{
  result = qword_27E135BA8;
  if (!qword_27E135BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BA8);
  }

  return result;
}

unint64_t sub_23B500CDC()
{
  result = qword_27E135BB0;
  if (!qword_27E135BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BB0);
  }

  return result;
}

unint64_t sub_23B500D34()
{
  result = qword_27E135BB8;
  if (!qword_27E135BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BB8);
  }

  return result;
}

unint64_t sub_23B500D88()
{
  result = qword_27E135BC0;
  if (!qword_27E135BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BC0);
  }

  return result;
}

uint64_t ReverseGeocodeResult.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ReverseGeocodeResult.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReverseGeocodeResult() + 20);
  v4 = sub_23B50AEF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ReverseGeocodeResult()
{
  result = qword_280B431A8;
  if (!qword_280B431A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReverseGeocodeResult.countryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for ReverseGeocodeResult() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_23B500F14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
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

uint64_t sub_23B501028(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x656E6F5A656D6974;
  }

  return 0x437972746E756F63;
}

uint64_t sub_23B501088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B500F14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B5010B0(uint64_t a1)
{
  v2 = sub_23B5012F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B5010EC(uint64_t a1)
{
  v2 = sub_23B5012F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReverseGeocodeResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135BC8, &qword_23B527990);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5012F4();
  sub_23B50D974();
  v14 = *v3;
  v15 = v3[1];
  v22[15] = 0;
  sub_23B50D7A4();
  if (!v2)
  {
    v16 = type metadata accessor for ReverseGeocodeResult();
    v17 = *(v16 + 20);
    v22[14] = 1;
    sub_23B50AEF4();
    sub_23B5016D4(&qword_280B43108);
    sub_23B50D7F4();
    v18 = (v3 + *(v16 + 24));
    v19 = *v18;
    v20 = v18[1];
    v22[13] = 2;
    sub_23B50D774();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_23B5012F4()
{
  result = qword_280B431C8;
  if (!qword_280B431C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431C8);
  }

  return result;
}

uint64_t ReverseGeocodeResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v38 = sub_23B50AEF4();
  v4 = OUTLINED_FUNCTION_5(v38);
  v36 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135BD0, &qword_23B527998);
  v10 = OUTLINED_FUNCTION_5(v39);
  v37 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = type metadata accessor for ReverseGeocodeResult();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B5012F4();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v14;
  v34 = a1;
  v19 = v38;
  v42 = 0;
  v20 = v17;
  *v17 = sub_23B50D6E4();
  v17[1] = v21;
  v32[2] = v21;
  v41 = 1;
  sub_23B5016D4(&qword_280B43100);
  sub_23B50D734();
  v22 = v33;
  (*(v36 + 32))(v20 + *(v33 + 20), v9, v19);
  v40 = 2;
  v32[1] = 0;
  v23 = sub_23B50D6B4();
  v32[0] = v24;
  v25 = v34;
  v26 = v23;
  v27 = OUTLINED_FUNCTION_1_50();
  v28(v27, v39);
  v29 = (v20 + *(v22 + 24));
  v30 = v32[0];
  *v29 = v26;
  v29[1] = v30;
  sub_23B3FE9CC(v20, v35);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_23B437A6C(v20);
}

uint64_t sub_23B5016D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23B50AEF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23B501770()
{
  sub_23B50AEF4();
  if (v0 <= 0x3F)
  {
    sub_23B39B084();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodeResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B5018E4()
{
  result = qword_27E135BD8;
  if (!qword_27E135BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BD8);
  }

  return result;
}

unint64_t sub_23B50193C()
{
  result = qword_280B431B8;
  if (!qword_280B431B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431B8);
  }

  return result;
}

unint64_t sub_23B501994()
{
  result = qword_280B431C0;
  if (!qword_280B431C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B431C0);
  }

  return result;
}

uint64_t static HistoricalComparisons.mock(comparisons:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for HistoricalComparisons();
  static WeatherMetadata.mock()(&a2[*(v4 + 20)]);
  *a2 = a1;
}

uint64_t DayPartForecast.init(forecastStart:forecastEnd:cloudCover:cloudCoverByAltitude:condition:highTemperature:lowTemperature:precipitation:precipitationAmountByType:precipitationChance:precipitationIntensityMax:perceivedPrecipitationIntensityMax:isDaylight:maximumUVIndex:minimumUVIndex:maximumHumidity:minimumHumidity:maximumVisibility:minimumVisibility:wind:highWindSpeed:humidity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, char a11, uint64_t *a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_37_14();
  v22 = v21;
  v24 = v23;
  v65 = *v25;
  v26 = *(v25 + 2);
  v28 = *v27;
  v30 = *v29;
  v31 = *a9;
  v32 = *(a9 + 8);
  v33 = *a10;
  v68 = *a12;
  v66 = *(a10 + 8);
  v67 = *(a12 + 8);
  v70 = *a13;
  v69 = *(a13 + 8);
  v34 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v34);
  v36 = *(v35 + 32);
  v36(v24, v22, v34);
  v37 = type metadata accessor for DayPartForecast();
  v38 = (v36)(v24 + v37[5], a2, v34);
  OUTLINED_FUNCTION_30_13(v38, v39, v40, v41, v42, v43, v44, v45, v46);
  *(v47 + 16) = v26;
  *(v24 + v37[8]) = v28;
  v48 = v37[9];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v49);
  v51 = *(v50 + 32);
  v51(v24 + v48, a5, v49);
  v51(v24 + v37[10], a6, v49);
  *(v24 + v37[11]) = v30;
  v52 = v37[12];
  OUTLINED_FUNCTION_0_63();
  sub_23B501D44();
  *(v24 + v37[13]) = v18;
  v53 = v24 + v37[14];
  *v53 = v31;
  *(v53 + 8) = v32;
  v54 = v24 + v37[15];
  *v54 = v33;
  *(v54 + 8) = v66;
  *(v24 + v37[16]) = a11;
  v55 = v24 + v37[17];
  *v55 = v68;
  *(v55 + 8) = v67;
  v56 = v24 + v37[18];
  *v56 = v70;
  *(v56 + 8) = v69;
  OUTLINED_FUNCTION_42_10();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v57);
  v59 = *(v58 + 32);
  v59(v24 + v48, a14, v57);
  v59(v24 + v37[22], a15, v57);
  v60 = v37[23];
  OUTLINED_FUNCTION_2_54();
  sub_23B501D44();
  v61 = v37[24];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2(v62);
  result = (*(v63 + 32))(v24 + v61, a17);
  *(v24 + v37[25]) = v17;
  return result;
}

uint64_t sub_23B501D44()
{
  v1 = OUTLINED_FUNCTION_67();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t DayPartForecast.init(cloudCover:cloudCoverByAltitude:condition:highTemperature:lowTemperature:precipitation:precipitationAmountByType:precipitationChance:maximumHumidity:minimumHumidity:maximumVisibility:minimumVisibility:wind:highWindSpeed:humidity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_37_14();
  v15 = v14;
  v47 = *v16;
  v17 = *(v16 + 2);
  v19 = *v18;
  v21 = *v20;
  sub_23B50B9D4();
  sub_23B50B994();
  v22 = type metadata accessor for DayPartForecast();
  v23 = v15 + v22[5];
  v24 = sub_23B50B994();
  OUTLINED_FUNCTION_30_13(v24, v25, v26, v27, v28, v29, v30, v31, v32);
  *(v33 + 16) = v17;
  *(v15 + v22[8]) = v19;
  v34 = v22[9];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v35);
  v37 = *(v36 + 32);
  v37(v15 + v34, a3, v35);
  v37(v15 + v22[10], a4, v35);
  *(v15 + v22[11]) = v21;
  v38 = v22[12];
  OUTLINED_FUNCTION_0_63();
  sub_23B501D44();
  *(v15 + v22[13]) = v11;
  OUTLINED_FUNCTION_0_50(v22[14]);
  OUTLINED_FUNCTION_0_50(v22[15]);
  *(v15 + v22[16]) = 1;
  OUTLINED_FUNCTION_0_50(v22[17]);
  OUTLINED_FUNCTION_0_50(v22[18]);
  OUTLINED_FUNCTION_42_10();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v39);
  v41 = *(v40 + 32);
  v41(v15 + v21, a7, v39);
  v41(v15 + v22[22], a8, v39);
  v42 = v22[23];
  OUTLINED_FUNCTION_2_54();
  sub_23B501D44();
  v43 = v22[24];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2(v44);
  result = (*(v45 + 32))(v15 + v43, a10);
  *(v15 + v22[25]) = v10;
  return result;
}

uint64_t DayPartForecast.forecastStart.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_65();

  return v4(v3);
}

uint64_t DayPartForecast.forecastStart.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t DayPartForecast.forecastEnd.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayPartForecast() + 20);
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t DayPartForecast.forecastEnd.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 20);
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayPartForecast.forecastEnd.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_48_7();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t DayPartForecast.cloudCover.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 24);
  return OUTLINED_FUNCTION_44();
}

double DayPartForecast.cloudCoverByAltitude.getter()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1 + *(type metadata accessor for DayPartForecast() + 28);
  result = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 16) = result;
  return result;
}

__n128 DayPartForecast.cloudCoverByAltitude.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for DayPartForecast() + 28));
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t DayPartForecast.cloudCoverByAltitude.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.condition.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for DayPartForecast();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t DayPartForecast.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayPartForecast();
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t DayPartForecast.condition.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.highTemperature.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayPartForecast() + 36);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t DayPartForecast.highTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 36);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayPartForecast.highTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.lowTemperature.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayPartForecast() + 40);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t DayPartForecast.lowTemperature.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 40);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayPartForecast.lowTemperature.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 40);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.precipitation.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for DayPartForecast();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t DayPartForecast.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DayPartForecast();
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t DayPartForecast.precipitation.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 44);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.precipitationAmountByType.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayPartForecast() + 48);
  return sub_23B3BAC04();
}

uint64_t DayPartForecast.precipitationAmountByType.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 48);
  OUTLINED_FUNCTION_0_63();
  return sub_23B502F2C();
}

uint64_t DayPartForecast.precipitationAmountByType.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 48);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.precipitationChance.setter()
{
  result = OUTLINED_FUNCTION_48_7();
  *(v0 + *(result + 52)) = v1;
  return result;
}

uint64_t DayPartForecast.precipitationChance.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 52);
  return OUTLINED_FUNCTION_44();
}

double DayPartForecast.precipitationIntensityMax.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_40_10(*(v0 + 56));
}

uint64_t DayPartForecast.precipitationIntensityMax.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DayPartForecast();
  v5 = v1 + *(result + 56);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DayPartForecast.precipitationIntensityMax.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 56);
  return OUTLINED_FUNCTION_44();
}

double DayPartForecast.perceivedPrecipitationIntensityMax.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for DayPartForecast();
  return OUTLINED_FUNCTION_40_10(*(v0 + 60));
}

uint64_t DayPartForecast.perceivedPrecipitationIntensityMax.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DayPartForecast();
  v5 = v1 + *(result + 60);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DayPartForecast.perceivedPrecipitationIntensityMax.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 60);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.isDaylight.setter(char a1)
{
  result = type metadata accessor for DayPartForecast();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t DayPartForecast.isDaylight.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 64);
  return OUTLINED_FUNCTION_44();
}

void DayPartForecast.maximumUVIndex.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for DayPartForecast();
  OUTLINED_FUNCTION_14_28(*(v0 + 68));
}

uint64_t DayPartForecast.maximumUVIndex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DayPartForecast();
  v5 = v1 + *(result + 68);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DayPartForecast.maximumUVIndex.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 68);
  return OUTLINED_FUNCTION_44();
}

void DayPartForecast.minimumUVIndex.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for DayPartForecast();
  OUTLINED_FUNCTION_14_28(*(v0 + 72));
}

uint64_t DayPartForecast.minimumUVIndex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for DayPartForecast();
  v5 = v1 + *(result + 72);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t DayPartForecast.minimumUVIndex.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 72);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.maximumHumidity.setter()
{
  result = OUTLINED_FUNCTION_48_7();
  *(v0 + *(result + 76)) = v1;
  return result;
}

uint64_t DayPartForecast.maximumHumidity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 76);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.minimumHumidity.setter()
{
  result = OUTLINED_FUNCTION_48_7();
  *(v0 + *(result + 80)) = v1;
  return result;
}

uint64_t DayPartForecast.minimumHumidity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 80);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.maximumVisibility.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayPartForecast() + 84);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t DayPartForecast.maximumVisibility.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 84);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayPartForecast.maximumVisibility.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 84);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.minimumVisibility.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayPartForecast() + 88);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t DayPartForecast.minimumVisibility.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 88);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayPartForecast.minimumVisibility.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 88);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.wind.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayPartForecast() + 92);
  return sub_23B3BAC04();
}

uint64_t DayPartForecast.wind.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 92);
  OUTLINED_FUNCTION_2_54();
  return sub_23B502F2C();
}

uint64_t sub_23B502F2C()
{
  v1 = OUTLINED_FUNCTION_67();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_65();
  v7(v6);
  return v0;
}

uint64_t DayPartForecast.wind.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 92);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.highWindSpeed.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for DayPartForecast() + 96);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t DayPartForecast.highWindSpeed.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 96);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t DayPartForecast.highWindSpeed.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 96);
  return OUTLINED_FUNCTION_44();
}

uint64_t DayPartForecast.conditionAccessibilityDescription.getter()
{
  v1 = type metadata accessor for DayPartForecast();
  v3 = *(v0 + *(v1 + 32));
  return WeatherCondition.accessibilityDescription(isDaylight:)(*(v0 + *(v1 + 64)))._countAndFlagsBits;
}

uint64_t DayPartForecast.humidity.setter()
{
  result = OUTLINED_FUNCTION_48_7();
  *(v0 + *(result + 100)) = v1;
  return result;
}

uint64_t DayPartForecast.humidity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for DayPartForecast() + 100);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B5031B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7473616365726F66 && a2 == 0xED00007472617453;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473616365726F66 && a2 == 0xEB00000000646E45;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000023B529F40 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x800000023B528CA0 == a2;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000019 && 0x800000023B5394B0 == a2;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000022 && 0x800000023B5394D0 == a2;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x556D756D6978616DLL && a2 == 0xEE007865646E4956;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x556D756D696E696DLL && a2 == 0xEE007865646E4956;
                              if (v19 || (sub_23B50D834() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x486D756D6978616DLL && a2 == 0xEF79746964696D75;
                                if (v20 || (sub_23B50D834() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x486D756D696E696DLL && a2 == 0xEF79746964696D75;
                                  if (v21 || (sub_23B50D834() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x800000023B528CC0 == a2;
                                    if (v22 || (sub_23B50D834() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000011 && 0x800000023B528CE0 == a2;
                                      if (v23 || (sub_23B50D834() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 1684957559 && a2 == 0xE400000000000000;
                                        if (v24 || (sub_23B50D834() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x646E695768676968 && a2 == 0xED00006465657053;
                                          if (v25 || (sub_23B50D834() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else if (a1 == 0x79746964696D7568 && a2 == 0xE800000000000000)
                                          {

                                            return 21;
                                          }

                                          else
                                          {
                                            v27 = sub_23B50D834();

                                            if (v27)
                                            {
                                              return 21;
                                            }

                                            else
                                            {
                                              return 22;
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
      }
    }
  }
}

uint64_t sub_23B5038A0(char a1)
{
  result = 0x7473616365726F66;
  switch(a1)
  {
    case 2:
      return 0x766F4364756F6C63;
    case 3:
      return 0xD000000000000014;
    case 4:
      return 0x6F697469646E6F63;
    case 5:
      return 0x706D655468676968;
    case 6:
      return 0x65706D6554776F6CLL;
    case 7:
      return 0x7469706963657270;
    case 8:
    case 10:
      return 0xD000000000000019;
    case 9:
      return 0xD000000000000013;
    case 11:
      return 0xD000000000000022;
    case 12:
      return 0x67696C7961447369;
    case 13:
      v4 = 1769496941;
      return v4 | 0x556D756D00000000;
    case 14:
      v4 = 1768843629;
      return v4 | 0x556D756D00000000;
    case 15:
      v3 = 1769496941;
      goto LABEL_10;
    case 16:
      v3 = 1768843629;
LABEL_10:
      result = v3 | 0x486D756D00000000;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 1684957559;
      break;
    case 20:
      result = 0x646E695768676968;
      break;
    case 21:
      result = 0x79746964696D7568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B503B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B5031B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B503B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B503898();
  *a1 = result;
  return result;
}

uint64_t sub_23B503B7C(uint64_t a1)
{
  v2 = sub_23B50454C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B503BB8(uint64_t a1)
{
  v2 = sub_23B50454C();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static DayPartForecast.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DayPartForecast();
  OUTLINED_FUNCTION_31_2(v4[5]);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v4[6]);
  if (!v10)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = (a2 + v5);
  v10 = v6 == *v9 && v7 == v9[1];
  if (!v10 || v8 != v9[2])
  {
    return 0;
  }

  if ((sub_23B3CAE4C(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v12 = v4[9];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v13, &qword_27E131E30, &qword_23B511AC0);
  if ((OUTLINED_FUNCTION_45_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v4[10]);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  if ((sub_23B3CFF58(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v4[12]);
  if ((static PrecipitationAmountByType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v4[13]);
  if (!v10)
  {
    return 0;
  }

  v14 = v4[14];
  OUTLINED_FUNCTION_38_9();
  if (!v10)
  {
    return 0;
  }

  if ((sub_23B3E71A0(*(v15 + 8), *(v16 + 8)) & 1) == 0)
  {
    return 0;
  }

  v17 = v4[15];
  OUTLINED_FUNCTION_38_9();
  if (!v10)
  {
    return 0;
  }

  if ((sub_23B3E71A0(*(v18 + 8), *(v19 + 8)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[16]) != *(a2 + v4[16]))
  {
    return 0;
  }

  v20 = v4[17];
  OUTLINED_FUNCTION_39_13();
  if (!v10)
  {
    return 0;
  }

  v23 = *(v22 + 8);
  v24 = UVIndex.ExposureCategory.rawValue.getter(*(v21 + 8));
  v26 = v25;
  if (v24 == UVIndex.ExposureCategory.rawValue.getter(v23) && v26 == v27)
  {
  }

  else
  {
    v29 = OUTLINED_FUNCTION_46_6();

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = v4[18];
  OUTLINED_FUNCTION_39_13();
  if (!v10)
  {
    return 0;
  }

  v33 = *(v32 + 8);
  v34 = UVIndex.ExposureCategory.rawValue.getter(*(v31 + 8));
  v36 = v35;
  if (v34 == UVIndex.ExposureCategory.rawValue.getter(v33) && v36 == v37)
  {
  }

  else
  {
    v39 = OUTLINED_FUNCTION_46_6();

    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_13_0(v4[19]);
  if (!v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v4[20]);
  if (!v10)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v40 = v4[21];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v41, &qword_27E131E28, &qword_23B50EFB0);
  if ((OUTLINED_FUNCTION_45_8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_31_2(v4[22]);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v42 = OUTLINED_FUNCTION_31_2(v4[23]);
  if (!static Wind.== infix(_:_:)(v42, v43))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v44 = v4[24];
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v45, &qword_27E131E10, &unk_23B5100F0);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v4[25]);
  return v10;
}

uint64_t DayPartForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135BE0, &qword_23B527B38);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v42 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50454C();
  sub_23B50D974();
  LOBYTE(v43) = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_5_35();
  sub_23B505950(v14, v15);
  OUTLINED_FUNCTION_26();
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for DayPartForecast();
    v17 = v16[5];
    LOBYTE(v43) = 1;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v18 = *(v3 + v16[6]);
    OUTLINED_FUNCTION_7_2(2);
    v19 = (v3 + v16[7]);
    v20 = *(v19 + 2);
    v43 = *v19;
    v44 = v20;
    v45 = 3;
    sub_23B41A4BC();
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v43) = *(v3 + v16[8]);
    v45 = 4;
    sub_23B3F03A8();
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v21 = v16[9];
    LOBYTE(v43) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v22, &qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v23 = v16[10];
    LOBYTE(v43) = 6;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v43) = *(v3 + v16[11]);
    v45 = 7;
    sub_23B3E9DD0();
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v24 = v16[12];
    LOBYTE(v43) = 8;
    type metadata accessor for PrecipitationAmountByType();
    OUTLINED_FUNCTION_24_15();
    sub_23B505950(v25, v26);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v27 = *(v3 + v16[13]);
    OUTLINED_FUNCTION_7_2(9);
    OUTLINED_FUNCTION_43_12(v16[14]);
    v45 = 10;
    sub_23B3E9E24();
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_43_12(v16[15]);
    v45 = 11;
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v28 = *(v3 + v16[16]);
    LOBYTE(v43) = 12;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7B4();
    OUTLINED_FUNCTION_44_7(v16[17]);
    v45 = 13;
    sub_23B3F03FC();
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_44_7(v16[18]);
    v45 = 14;
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v29 = *(v3 + v16[19]);
    OUTLINED_FUNCTION_7_2(15);
    v30 = *(v3 + v16[20]);
    OUTLINED_FUNCTION_7_2(16);
    v31 = v16[21];
    LOBYTE(v43) = 17;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v33, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_21_2();
    v42[1] = v32;
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v34 = v16[22];
    LOBYTE(v43) = 18;
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v35 = v16[23];
    LOBYTE(v43) = 19;
    type metadata accessor for Wind();
    OUTLINED_FUNCTION_23_17();
    sub_23B505950(v36, v37);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v38 = v16[24];
    LOBYTE(v43) = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v39, &qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    v40 = *(v3 + v16[25]);
    OUTLINED_FUNCTION_7_2(21);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_23B50454C()
{
  result = qword_27E135BE8;
  if (!qword_27E135BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135BE8);
  }

  return result;
}

uint64_t DayPartForecast.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  v4 = OUTLINED_FUNCTION_5(v3);
  v127 = v5;
  v128 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v122 = &v114 - v8;
  v120 = type metadata accessor for Wind();
  v9 = OUTLINED_FUNCTION_6(v120);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v121 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v14 = OUTLINED_FUNCTION_5(v13);
  v129 = v15;
  v130 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_0();
  v119 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v118 = &v114 - v21;
  v124 = type metadata accessor for PrecipitationAmountByType();
  v22 = OUTLINED_FUNCTION_6(v124);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v125 = v25;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v26 = OUTLINED_FUNCTION_5(v137);
  v131 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v114 - v34;
  v36 = sub_23B50AD24();
  v37 = OUTLINED_FUNCTION_5(v36);
  v138 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12_0();
  v43 = (v41 - v42);
  MEMORY[0x28223BE20](v44);
  v134 = &v114 - v45;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135BF0, &qword_23B527B40);
  v46 = OUTLINED_FUNCTION_5(v133);
  v126 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  v51 = &v114 - v50;
  v140 = type metadata accessor for DayPartForecast();
  v52 = OUTLINED_FUNCTION_6(v140);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_0();
  v139 = v55;
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50454C();
  v132 = v51;
  v57 = v136;
  sub_23B50D964();
  v58 = v57;
  v135 = v36;
  if (v57)
  {
    v136 = v57;
    OUTLINED_FUNCTION_21_17();
    v59 = v140;
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    v65 = 0;
  }

  else
  {
    v136 = v43;
    v117 = v35;
    v116 = v32;
    LOBYTE(v142) = 0;
    OUTLINED_FUNCTION_5_35();
    sub_23B505950(v60, v61);
    v62 = v134;
    sub_23B50D734();
    v115 = a1;
    v74 = v139;
    v75 = *(v138 + 32);
    v75(v139, v62, v36);
    LOBYTE(v142) = 1;
    v76 = v136;
    sub_23B50D734();
    v77 = v140;
    v75(v74 + v140[5], v76, 0);
    LOBYTE(v142) = 2;
    sub_23B50D704();
    *(v74 + v77[6]) = v78;
    v141 = 3;
    sub_23B41A564();
    OUTLINED_FUNCTION_4_47();
    sub_23B50D734();
    v79 = v143;
    v80 = v74 + v77[7];
    *v80 = v142;
    *(v80 + 16) = v79;
    v141 = 4;
    sub_23B3F0450();
    OUTLINED_FUNCTION_4_47();
    sub_23B50D734();
    *(v74 + v77[8]) = v142;
    LOBYTE(v142) = 5;
    OUTLINED_FUNCTION_3_8(&qword_27E132090, &qword_27E131E30, &qword_23B511AC0);
    v81 = v117;
    v36 = v137;
    OUTLINED_FUNCTION_50_6();
    sub_23B50D734();
    v82 = v74 + v77[9];
    v136 = *(v131 + 32);
    v136(v82, v81, v36);
    LOBYTE(v142) = 6;
    v83 = v116;
    OUTLINED_FUNCTION_50_6();
    sub_23B50D734();
    v136(v74 + v77[10], v83, v36);
    v141 = 7;
    sub_23B3E9E78();
    OUTLINED_FUNCTION_4_47();
    sub_23B50D734();
    *(v74 + v77[11]) = v142;
    LOBYTE(v142) = 8;
    OUTLINED_FUNCTION_24_15();
    sub_23B505950(v84, v85);
    OUTLINED_FUNCTION_22_19();
    sub_23B50D734();
    v136 = 0;
    v86 = v77[12];
    OUTLINED_FUNCTION_0_63();
    sub_23B501D44();
    OUTLINED_FUNCTION_11_28(9);
    sub_23B50D704();
    v136 = 0;
    *(v139 + v140[13]) = v87;
    v141 = 10;
    sub_23B3E9ECC();
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_47_7();
    v136 = 0;
    v88 = BYTE8(v142);
    v89 = v139 + v140[14];
    *v89 = v142;
    *(v89 + 8) = v88;
    v141 = 11;
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_47_7();
    v136 = 0;
    v90 = BYTE8(v142);
    v91 = v139 + v140[15];
    *v91 = v142;
    *(v91 + 8) = v90;
    OUTLINED_FUNCTION_11_28(12);
    v92 = sub_23B50D6F4();
    v136 = 0;
    *(v139 + v140[16]) = v92 & 1;
    v141 = 13;
    sub_23B3F04A4();
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_47_7();
    v136 = 0;
    v93 = BYTE8(v142);
    v94 = v139 + v140[17];
    *v94 = v142;
    *(v94 + 8) = v93;
    v141 = 14;
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_47_7();
    v136 = 0;
    v95 = BYTE8(v142);
    v96 = v139 + v140[18];
    *v96 = v142;
    *(v96 + 8) = v95;
    OUTLINED_FUNCTION_11_28(15);
    sub_23B50D704();
    v136 = 0;
    *(v139 + v140[19]) = v97;
    OUTLINED_FUNCTION_11_28(16);
    sub_23B50D704();
    v136 = 0;
    *(v139 + v140[20]) = v98;
    LOBYTE(v142) = 17;
    OUTLINED_FUNCTION_3_8(&qword_27E131E60, &qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_22_19();
    OUTLINED_FUNCTION_47_7();
    v136 = 0;
    LODWORD(v32) = v129 + 32;
    v99 = *(v129 + 32);
    v99(v139 + v140[21], v118, v130);
    LOBYTE(v142) = 18;
    v100 = v136;
    sub_23B50D734();
    LODWORD(v134) = v100 == 0;
    v136 = v100;
    if (v100)
    {
      goto LABEL_24;
    }

    v99(v139 + v140[22], v119, v130);
    LOBYTE(v142) = 19;
    OUTLINED_FUNCTION_23_17();
    sub_23B505950(v101, v102);
    OUTLINED_FUNCTION_22_19();
    v103 = v136;
    sub_23B50D734();
    v136 = v103;
    if (v103)
    {
LABEL_24:
      v104 = OUTLINED_FUNCTION_9_39();
      v105(v104);
      LODWORD(v133) = 0;
    }

    else
    {
      v106 = v140[23];
      OUTLINED_FUNCTION_2_54();
      sub_23B501D44();
      LOBYTE(v142) = 20;
      OUTLINED_FUNCTION_3_8(&qword_27E132018, &qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_22_19();
      v107 = v136;
      sub_23B50D734();
      v136 = v107;
      if (!v107)
      {
        (*(v127 + 32))(v139 + v140[24], v122, v128);
        OUTLINED_FUNCTION_11_28(21);
        sub_23B50D704();
        v136 = 0;
        v111 = v110;
        v112 = OUTLINED_FUNCTION_9_39();
        v113(v112);
        *(v139 + v140[25]) = v111;
        sub_23B3BAC04();
        __swift_destroy_boxed_opaque_existential_1(v115);
        return sub_23B5053F0();
      }

      v108 = OUTLINED_FUNCTION_9_39();
      v109(v108);
      LODWORD(v133) = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v115);
    OUTLINED_FUNCTION_32_12();
    v58 = 1;
    v65 = 1;
    result = (*(v138 + 8))(v139, v135);
    v59 = v140;
  }

  v66 = v139;
  v67 = v137;
  if (v36)
  {
    v68 = *(v131 + 8);
    result = v68(v139 + v59[9], v137);
    if (v32)
    {
      v64 = v134;
      result = v68(v66 + v59[10], v67);
LABEL_9:
      if ((v58 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    v64 = v134;
  }

  else
  {
    v64 = v134;
    if (v32)
    {
      result = (*(v131 + 8))(v139 + v59[10], v137);
      goto LABEL_9;
    }
  }

  if (!v58)
  {
LABEL_10:
    if (v65)
    {
      goto LABEL_11;
    }

LABEL_16:
    if (!v64)
    {
      goto LABEL_20;
    }

    v69 = v130;
    v70 = *(v129 + 8);
    goto LABEL_18;
  }

LABEL_15:
  v71 = v59[12];
  result = sub_23B5053F0();
  if ((v65 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v69 = v130;
  v70 = *(v129 + 8);
  result = v70(v66 + v59[21], v130);
  if ((v64 & 1) == 0)
  {
LABEL_20:
    if (v133)
    {
      goto LABEL_21;
    }

    return result;
  }

LABEL_18:
  v72 = v133;
  result = v70(v66 + v59[22], v69);
  if (v72)
  {
LABEL_21:
    v73 = v59[23];
    return sub_23B5053F0();
  }

  return result;
}

uint64_t sub_23B5053F0()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t DayPartForecast.hash(into:)()
{
  v1 = v0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_5_35();
  sub_23B505950(v2, v3);
  OUTLINED_FUNCTION_36_12();
  sub_23B50D0E4();
  v4 = type metadata accessor for DayPartForecast();
  v5 = v0 + v4[5];
  OUTLINED_FUNCTION_36_12();
  sub_23B50D0E4();
  v6 = *(v1 + v4[6]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v6);
  v7 = (v1 + v4[7]);
  v32 = *v7;
  v33 = *(v7 + 2);
  CloudCoverByAltitude.hash(into:)();
  LOBYTE(v32) = *(v1 + v4[8]);
  WeatherCondition.rawValue.getter();
  OUTLINED_FUNCTION_14_0();

  v8 = v4[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  sub_23B3F1C50(&qword_280B42B80, &qword_27E131E30, &qword_23B511AC0);
  sub_23B50D0E4();
  v9 = v1 + v4[10];
  sub_23B50D0E4();
  v10 = *(v1 + v4[11]);
  sub_23B3CFAAC();
  v11 = v1 + v4[12];
  PrecipitationAmountByType.hash(into:)();
  v12 = OUTLINED_FUNCTION_7_12(*(v1 + v4[13]));
  MEMORY[0x23EE9DB70](v12);
  v13 = v1 + v4[14];
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_7_12(*v13);
  MEMORY[0x23EE9DB70](v15);
  sub_23B50D1C4();

  v16 = v1 + v4[15];
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_7_12(*v16);
  MEMORY[0x23EE9DB70](v18);
  sub_23B50D1C4();

  v19 = *(v1 + v4[16]);
  sub_23B50D8E4();
  v20 = v1 + v4[17];
  v21 = *(v20 + 8);
  MEMORY[0x23EE9DB40](*v20);
  UVIndex.ExposureCategory.rawValue.getter(v21);
  OUTLINED_FUNCTION_14_0();

  v22 = v1 + v4[18];
  v23 = *(v22 + 8);
  MEMORY[0x23EE9DB40](*v22);
  UVIndex.ExposureCategory.rawValue.getter(v23);
  OUTLINED_FUNCTION_14_0();

  v24 = OUTLINED_FUNCTION_7_12(*(v1 + v4[19]));
  MEMORY[0x23EE9DB70](v24);
  v25 = OUTLINED_FUNCTION_7_12(*(v1 + v4[20]));
  MEMORY[0x23EE9DB70](v25);
  v26 = v4[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3F1C50(&qword_280B42BC8, &qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_36_12();
  sub_23B50D0E4();
  v27 = v1 + v4[22];
  OUTLINED_FUNCTION_36_12();
  sub_23B50D0E4();
  v28 = v1 + v4[23];
  Wind.hash(into:)();
  v29 = v4[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  sub_23B3F1C50(&qword_280B42BE0, &qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_36_12();
  sub_23B50D0E4();
  v30 = OUTLINED_FUNCTION_7_12(*(v1 + v4[25]));
  return MEMORY[0x23EE9DB70](v30);
}

uint64_t DayPartForecast.hashValue.getter()
{
  sub_23B50D8C4();
  DayPartForecast.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B5058CC()
{
  sub_23B50D8C4();
  DayPartForecast.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B505950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for DayPartForecast.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DayPartForecast.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B505B00()
{
  result = qword_27E135C00;
  if (!qword_27E135C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C00);
  }

  return result;
}

unint64_t sub_23B505B58()
{
  result = qword_27E135C08;
  if (!qword_27E135C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C08);
  }

  return result;
}

unint64_t sub_23B505BB0()
{
  result = qword_27E135C10;
  if (!qword_27E135C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C10);
  }

  return result;
}

double static Coordinate.mock()@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27E131C58 != -1)
  {
    swift_once();
  }

  result = *&xmmword_27E15A780;
  *a1 = xmmword_27E15A780;
  return result;
}

double sub_23B505C60()
{
  result = 36.97;
  xmmword_27E15A780 = xmmword_23B527DE0;
  return result;
}

uint64_t WeatherAlert.init(detailsURL:source:expirationDate:issuedDate:onsetTime:endDate:summary:region:severity:importance:metadata:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, char *a14, uint64_t a15, uint64_t a16)
{
  v51 = *a13;
  v52 = *a14;
  v19 = type metadata accessor for WeatherAlert();
  v20 = v19[9];
  v21 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
  v25 = v19[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
  v53 = v19[13];
  v29 = sub_23B50AB34();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v33 = (a9 + v19[14]);
  (*(*(v29 - 8) + 32))(a9, a1, v29);
  v34 = (a9 + v19[5]);
  *v34 = a2;
  v34[1] = a3;
  v35 = *(v21 - 8);
  v36 = *(v35 + 32);
  v36(a9 + v19[7], a4, v21);
  v36(a9 + v19[8], a5, v21);
  OUTLINED_FUNCTION_47_8(a6, a9 + v20);
  OUTLINED_FUNCTION_47_8(a7, a9 + v25);
  v37 = (a9 + v19[11]);
  *v37 = a8;
  v37[1] = a10;
  *v33 = a11;
  v33[1] = a12;
  *(a9 + v19[15]) = v51;
  *(a9 + v19[16]) = v52;
  sub_23B5090B8(a15, a9 + v19[17]);
  (*(v35 + 16))(a9 + v19[6], a15, v21);

  sub_23B50910C();
  v38 = (a9 + v19[12]);
  *v38 = a8;
  v38[1] = a10;
  sub_23B398890(a9 + v53, &qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v29);
  v42 = v19[18];
  v43 = sub_23B50AD64();
  OUTLINED_FUNCTION_2(v43);
  v45 = *(v44 + 32);

  return v45(a9 + v42, a16);
}

uint64_t Array<A>.isExpired.getter()
{
  OUTLINED_FUNCTION_34_0();
  v1 = sub_23B50AD24();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  v10 = type metadata accessor for WeatherAlert();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  if (*(v0 + 16))
  {
    sub_23B5090B8(v0 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_23B50B9D4();
    sub_23B50B994();
    v14 = *(v10 + 68);
    v15 = v14 + *(type metadata accessor for WeatherMetadata() + 20);
    OUTLINED_FUNCTION_0_64();
    sub_23B5098E0(v16, v17);
    v18 = sub_23B50D114();
    (*(v4 + 8))(v9, v1);
    sub_23B50910C();
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t WeatherAlert.detailsURL.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = sub_23B50AB34();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_65();

  return v4(v3);
}

uint64_t WeatherAlert.detailsURL.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AB34();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t WeatherAlert.source.getter()
{
  v0 = type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_9_31(*(v0 + 20));
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherAlert.source.setter()
{
  OUTLINED_FUNCTION_8_14();
  v3 = type metadata accessor for WeatherAlert();
  result = OUTLINED_FUNCTION_18(*(v3 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.source.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.date.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for WeatherAlert() + 24);
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t WeatherAlert.date.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 24);
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t WeatherAlert.date.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.expirationDate.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for WeatherAlert() + 28);
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t WeatherAlert.expirationDate.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 28);
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t WeatherAlert.expirationDate.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.issuedDate.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for WeatherAlert() + 32);
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t WeatherAlert.issuedDate.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 32);
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t WeatherAlert.issuedDate.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.onsetTime.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for WeatherAlert();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 36));
  return sub_23B3EB900(v1, v2, v3, v4);
}

uint64_t WeatherAlert.onsetTime.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 36);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t WeatherAlert.onsetTime.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.endDate.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for WeatherAlert();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 40));
  return sub_23B3EB900(v1, v2, v3, v4);
}

uint64_t WeatherAlert.endDate.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 40);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t WeatherAlert.endDate.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 40);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.summary.getter()
{
  v0 = type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_9_31(*(v0 + 44));
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherAlert.summary.setter()
{
  OUTLINED_FUNCTION_8_14();
  v3 = type metadata accessor for WeatherAlert();
  result = OUTLINED_FUNCTION_18(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.summary.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 44);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.description.getter()
{
  v0 = type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_9_31(*(v0 + 48));
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherAlert.description.setter()
{
  OUTLINED_FUNCTION_8_14();
  v3 = type metadata accessor for WeatherAlert();
  result = OUTLINED_FUNCTION_18(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.description.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 48);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.details.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for WeatherAlert();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 52));
  return sub_23B3EB900(v1, v2, v3, v4);
}

uint64_t WeatherAlert.details.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 52);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3EB988(v1, v2, v3, v4);
}

uint64_t WeatherAlert.details.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 52);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.region.getter()
{
  v0 = type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_9_31(*(v0 + 56));
  return OUTLINED_FUNCTION_65();
}

uint64_t WeatherAlert.region.setter()
{
  OUTLINED_FUNCTION_8_14();
  v3 = type metadata accessor for WeatherAlert();
  result = OUTLINED_FUNCTION_18(*(v3 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WeatherAlert.region.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 56);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.severity.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for WeatherAlert();
  *v0 = *(v1 + *(result + 60));
  return result;
}

uint64_t WeatherAlert.severity.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for WeatherAlert();
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t WeatherAlert.severity.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 60);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.importance.getter()
{
  OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for WeatherAlert();
  *v0 = *(v1 + *(result + 64));
  return result;
}

uint64_t WeatherAlert.importance.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for WeatherAlert();
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t WeatherAlert.importance.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 64);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.metadata.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = type metadata accessor for WeatherAlert();
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 68));
  return sub_23B5090B8(v1, v2);
}

uint64_t WeatherAlert.metadata.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 68);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B407020(v1, v2);
}

uint64_t WeatherAlert.metadata.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 68);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.id.getter()
{
  OUTLINED_FUNCTION_7_0();
  v0 = *(type metadata accessor for WeatherAlert() + 72);
  v1 = sub_23B50AD64();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_24();

  return v5(v4);
}

uint64_t WeatherAlert.id.setter()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 72);
  v1 = sub_23B50AD64();
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_64();

  return v5(v4);
}

uint64_t WeatherAlert.id.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for WeatherAlert() + 72);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherAlert.init(detailsURL:source:date:expirationDate:issuedDate:onsetTime:endDate:summary:description:details:region:severity:importance:metadata:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, char *a18, uint64_t a19, uint64_t a20)
{
  v55 = *a17;
  v53 = *a18;
  v23 = type metadata accessor for WeatherAlert();
  v24 = v23[9];
  v25 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  v29 = v23[10];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v25);
  v33 = v23[13];
  v34 = sub_23B50AB34();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  v38 = (a9 + v23[14]);
  (*(*(v34 - 8) + 32))(a9, a1, v34);
  v39 = (a9 + v23[5]);
  *v39 = a2;
  v39[1] = a3;
  v40 = *(*(v25 - 8) + 32);
  v40(a9 + v23[6], a4, v25);
  v40(a9 + v23[7], a5, v25);
  v40(a9 + v23[8], a6, v25);
  OUTLINED_FUNCTION_47_8(a7, a9 + v24);
  OUTLINED_FUNCTION_47_8(a8, a9 + v29);
  v41 = (a9 + v23[12]);
  *v41 = a12;
  v41[1] = a13;
  sub_23B3EB988(a14, a9 + v33, &qword_27E131FC0, &qword_23B515170);
  *v38 = a15;
  v38[1] = a16;
  *(a9 + v23[16]) = v53;
  *(a9 + v23[15]) = v55;
  v42 = (a9 + v23[11]);
  *v42 = a10;
  v42[1] = a11;
  sub_23B3CA20C(a19, a9 + v23[17]);
  v43 = v23[18];
  v44 = sub_23B50AD64();
  OUTLINED_FUNCTION_2(v44);
  v46 = *(v45 + 32);

  return v46(a9 + v43, a20);
}

uint64_t sub_23B506FDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55736C6961746564 && a2 == 0xEA00000000004C52;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6144646575737369 && a2 == 0xEA00000000006574;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D69547465736E6FLL && a2 == 0xE900000000000065;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x736C6961746564 && a2 == 0xE700000000000000;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7974697265766573 && a2 == 0xE800000000000000;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6E6174726F706D69 && a2 == 0xEA00000000006563;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 25705 && a2 == 0xE200000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_23B50D834();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

uint64_t sub_23B507464(char a1)
{
  result = 0x55736C6961746564;
  switch(a1)
  {
    case 1:
      result = 0x656372756F73;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6974617269707865;
      break;
    case 4:
      result = 0x6144646575737369;
      break;
    case 5:
      result = 0x6D69547465736E6FLL;
      break;
    case 6:
      result = 0x65746144646E65;
      break;
    case 7:
      result = 0x7972616D6D7573;
      break;
    case 8:
      result = 0x7470697263736564;
      break;
    case 9:
      result = 0x736C6961746564;
      break;
    case 10:
      result = 0x6E6F69676572;
      break;
    case 11:
      result = 0x7974697265766573;
      break;
    case 12:
      result = 0x6E6174726F706D69;
      break;
    case 13:
      result = 0x617461646174656DLL;
      break;
    case 14:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B507604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B506FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B50762C(uint64_t a1)
{
  v2 = sub_23B509160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B507668(uint64_t a1)
{
  v2 = sub_23B509160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static WeatherAlert.== infix(_:_:)()
{
  OUTLINED_FUNCTION_8_14();
  v111 = sub_23B50AB34();
  v3 = OUTLINED_FUNCTION_5(v111);
  v109 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v107 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_52();
  v108 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132DE0, &qword_23B515490);
  OUTLINED_FUNCTION_6(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52();
  v110 = v18;
  OUTLINED_FUNCTION_24_0();
  v19 = sub_23B50AD24();
  v20 = OUTLINED_FUNCTION_5(v19);
  v112 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v28 = OUTLINED_FUNCTION_3(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_123();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  v36 = OUTLINED_FUNCTION_6(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_0();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v103 - v43;
  if ((sub_23B50AAF4() & 1) == 0)
  {
    goto LABEL_31;
  }

  v106 = v14;
  v45 = type metadata accessor for WeatherAlert();
  OUTLINED_FUNCTION_12_1(v45[5]);
  v48 = v48 && v46 == v47;
  if (!v48 && (sub_23B50D834() & 1) == 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_31_2(v45[6]);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_31_2(v45[7]);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_31_2(v45[8]);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    goto LABEL_31;
  }

  v49 = v45[9];
  v104 = v45;
  v105 = v49;
  v50 = *(v35 + 48);
  sub_23B3EB900(v1 + v49, v44, &qword_27E131E18, &unk_23B50F710);
  v51 = v0 + v105;
  v105 = v50;
  sub_23B3EB900(v51, &v44[v50], &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_46(v44);
  if (v48)
  {
    OUTLINED_FUNCTION_46(&v44[v105]);
    if (v48)
    {
      sub_23B398890(v44, &qword_27E131E18, &unk_23B50F710);
      goto LABEL_20;
    }

LABEL_18:
    v53 = &qword_27E131E20;
    v54 = &qword_23B51E340;
    v55 = v44;
LABEL_30:
    sub_23B398890(v55, v53, v54);
    goto LABEL_31;
  }

  sub_23B3EB900(v44, v2, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_46(&v44[v105]);
  if (v52)
  {
    (*(v112 + 8))(v2, v19);
    goto LABEL_18;
  }

  v56 = v112;
  (*(v112 + 32))(v26, &v44[v105], v19);
  OUTLINED_FUNCTION_0_64();
  sub_23B5098E0(v57, v58);
  HIDWORD(v103) = sub_23B50D134();
  v59 = v56 + 8;
  v60 = *(v56 + 8);
  v105 = v59;
  v60(v26, v19);
  v60(v2, v19);
  sub_23B398890(v44, &qword_27E131E18, &unk_23B50F710);
  if ((v103 & 0x100000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  v61 = v104[10];
  v62 = *(v35 + 48);
  sub_23B3EB900(v1 + v61, v41, &qword_27E131E18, &unk_23B50F710);
  sub_23B3EB900(v0 + v61, v41 + v62, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_46(v41);
  if (v48)
  {
    OUTLINED_FUNCTION_46(v41 + v62);
    if (v48)
    {
      sub_23B398890(v41, &qword_27E131E18, &unk_23B50F710);
      goto LABEL_34;
    }

LABEL_28:
    v53 = &qword_27E131E20;
    v54 = &qword_23B51E340;
LABEL_29:
    v55 = v41;
    goto LABEL_30;
  }

  sub_23B3EB900(v41, v33, &qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_46(v41 + v62);
  if (v63)
  {
    (*(v112 + 8))(v33, v19);
    goto LABEL_28;
  }

  v66 = v112;
  (*(v112 + 32))(v26, v41 + v62, v19);
  OUTLINED_FUNCTION_0_64();
  sub_23B5098E0(v67, v68);
  v69 = sub_23B50D134();
  v70 = *(v66 + 8);
  v70(v26, v19);
  v70(v33, v19);
  sub_23B398890(v41, &qword_27E131E18, &unk_23B50F710);
  if ((v69 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  OUTLINED_FUNCTION_12_1(v104[11]);
  if (!v48 || v71 != v72)
  {
    v75 = sub_23B50D834();
    v73 = v104;
    if ((v75 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_12_1(v73[12]);
  if (!v48 || v76 != v77)
  {
    v80 = sub_23B50D834();
    v78 = v104;
    if ((v80 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v81 = v78[13];
  v82 = *(v106 + 48);
  v41 = v110;
  sub_23B3EB900(v1 + v81, v110, &qword_27E131FC0, &qword_23B515170);
  sub_23B3EB900(v0 + v81, v41 + v82, &qword_27E131FC0, &qword_23B515170);
  v83 = v111;
  if (__swift_getEnumTagSinglePayload(v41, 1, v111) != 1)
  {
    v84 = v108;
    sub_23B3EB900(v41, v108, &qword_27E131FC0, &qword_23B515170);
    if (__swift_getEnumTagSinglePayload(v41 + v82, 1, v83) != 1)
    {
      v85 = v109;
      v86 = v41 + v82;
      v87 = v107;
      (*(v109 + 32))(v107, v86, v83);
      OUTLINED_FUNCTION_1_51();
      sub_23B5098E0(v88, v89);
      v90 = sub_23B50D134();
      v91 = *(v85 + 8);
      v91(v87, v83);
      v91(v84, v83);
      sub_23B398890(v41, &qword_27E131FC0, &qword_23B515170);
      if ((v90 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_51;
    }

    (*(v109 + 8))(v84, v83);
    goto LABEL_49;
  }

  if (__swift_getEnumTagSinglePayload(v41 + v82, 1, v83) != 1)
  {
LABEL_49:
    v53 = &qword_27E132DE0;
    v54 = &qword_23B515490;
    goto LABEL_29;
  }

  sub_23B398890(v41, &qword_27E131FC0, &qword_23B515170);
LABEL_51:
  v92 = v104;
  v93 = v104[14];
  v94 = (v1 + v93);
  v95 = *(v1 + v93 + 8);
  v96 = (v0 + v93);
  v97 = v96[1];
  if (v95)
  {
    if (!v97)
    {
      goto LABEL_31;
    }

    if (*v94 != *v96 || v95 != v97)
    {
      v99 = sub_23B50D834();
      v92 = v104;
      if ((v99 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v97)
  {
    goto LABEL_31;
  }

  v100 = v92;
  if (sub_23B3E71AC(*(v1 + v92[15]), *(v0 + v92[15])) & 1) != 0 && (sub_23B3E5DFC(*(v1 + v100[16]), *(v0 + v100[16])))
  {
    v101 = OUTLINED_FUNCTION_31_2(v100[17]);
    if (static WeatherMetadata.== infix(_:_:)(v101, v102))
    {
      OUTLINED_FUNCTION_31_2(v100[18]);
      v64 = _s10WeatherKit0A28ServiceCacheObservationTokenV2eeoiySbAC_ACtFZ_0();
      return v64 & 1;
    }
  }

LABEL_31:
  v64 = 0;
  return v64 & 1;
}

uint64_t WeatherAlert.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135C18, &qword_23B527DF0);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B509160();
  sub_23B50D974();
  v33 = 0;
  sub_23B50AB34();
  OUTLINED_FUNCTION_1_51();
  sub_23B5098E0(v14, v15);
  OUTLINED_FUNCTION_23_0();
  sub_23B50D7F4();
  if (!v2)
  {
    v16 = type metadata accessor for WeatherAlert();
    OUTLINED_FUNCTION_15(*(v16 + 20));
    OUTLINED_FUNCTION_8_33(1);
    sub_23B50D7A4();
    v31 = v16;
    v17 = *(v16 + 24);
    v33 = 2;
    v18 = sub_23B50AD24();
    OUTLINED_FUNCTION_0_64();
    sub_23B5098E0(v19, v20);
    OUTLINED_FUNCTION_26_20();
    v30 = v18;
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_5_36(v31[7]);
    sub_23B50D7F4();
    OUTLINED_FUNCTION_5_36(v31[8]);
    sub_23B50D7F4();
    OUTLINED_FUNCTION_5_36(v31[9]);
    sub_23B50D794();
    OUTLINED_FUNCTION_5_36(v31[10]);
    sub_23B50D794();
    v21 = v31;
    OUTLINED_FUNCTION_15(v31[11]);
    OUTLINED_FUNCTION_8_33(7);
    sub_23B50D7A4();
    OUTLINED_FUNCTION_15(v21[12]);
    OUTLINED_FUNCTION_8_33(8);
    sub_23B50D7A4();
    v22 = v21[13];
    v33 = 9;
    OUTLINED_FUNCTION_26_20();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D794();
    OUTLINED_FUNCTION_15(v21[14]);
    OUTLINED_FUNCTION_8_33(10);
    sub_23B50D774();
    v33 = *(v3 + v31[15]);
    v32 = 11;
    sub_23B5091B4();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v33 = *(v3 + v31[16]);
    v32 = 12;
    sub_23B509208();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v23 = v31[17];
    v33 = 13;
    type metadata accessor for WeatherMetadata();
    OUTLINED_FUNCTION_19_22();
    sub_23B5098E0(v24, v25);
    OUTLINED_FUNCTION_26_20();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v26 = v31[18];
    v33 = 14;
    sub_23B50AD64();
    OUTLINED_FUNCTION_6_33();
    sub_23B5098E0(v27, v28);
    OUTLINED_FUNCTION_26_20();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t WeatherAlert.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v133 = sub_23B50AD64();
  v3 = OUTLINED_FUNCTION_5(v133);
  v130 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v132 = v8 - v7;
  OUTLINED_FUNCTION_24_0();
  v134 = type metadata accessor for WeatherMetadata();
  v9 = OUTLINED_FUNCTION_6(v134);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v135 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52();
  v136 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v20 = OUTLINED_FUNCTION_3(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_0();
  v137 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v138 = v129 - v26;
  OUTLINED_FUNCTION_24_0();
  v27 = sub_23B50AD24();
  v28 = OUTLINED_FUNCTION_5(v27);
  v152 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_0();
  v145 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = v129 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_123();
  v38 = sub_23B50AB34();
  v39 = OUTLINED_FUNCTION_5(v38);
  v143 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_27();
  v45 = v44 - v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135C38, &qword_23B527DF8);
  v47 = OUTLINED_FUNCTION_5(v46);
  v139 = v48;
  v140 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  v53 = v129 - v52;
  v54 = type metadata accessor for WeatherAlert();
  v55 = OUTLINED_FUNCTION_6(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_27();
  v60 = v59 - v58;
  v151 = *(v61 + 36);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v27);
  v150 = *(v54 + 40);
  OUTLINED_FUNCTION_1();
  v153 = v27;
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v27);
  v146 = *(v54 + 52);
  v147 = v54;
  v148 = v60;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v38);
  v72 = a1[3];
  v71 = a1[4];
  v144 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v72);
  sub_23B509160();
  v141 = v53;
  v73 = v149;
  sub_23B50D964();
  v142 = v38;
  if (v73)
  {
    v149 = v73;
    v77 = 0;
    LODWORD(v78) = 0;
    LODWORD(v79) = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
  }

  else
  {
    v149 = v36;
    v155 = 0;
    OUTLINED_FUNCTION_1_51();
    v76 = sub_23B5098E0(v74, v75);
    sub_23B50D734();
    v92 = v148;
    (*(v143 + 32))(v148, v45, v38);
    OUTLINED_FUNCTION_32_13(1);
    v93 = sub_23B50D6E4();
    v94 = v147;
    v129[2] = v76;
    v95 = (v92 + v147[5]);
    *v95 = v93;
    v95[1] = v96;
    v155 = 2;
    OUTLINED_FUNCTION_0_64();
    sub_23B5098E0(v97, v98);
    v78 = v153;
    OUTLINED_FUNCTION_31_11();
    sub_23B50D734();
    v99 = *(v152 + 32);
    v100 = OUTLINED_FUNCTION_41_8(v94[6]);
    *(v101 - 256) = v102;
    v102(v100);
    OUTLINED_FUNCTION_34_13(3);
    OUTLINED_FUNCTION_31_11();
    sub_23B50D734();
    v103 = OUTLINED_FUNCTION_41_8(v94[7]);
    v105 = *(v104 - 256);
    v105(v103);
    OUTLINED_FUNCTION_34_13(4);
    v106 = v145;
    v81 = v141;
    sub_23B50D734();
    (v105)(v92 + v94[8], v106, v78);
    OUTLINED_FUNCTION_34_13(5);
    v107 = v138;
    sub_23B50D6D4();
    sub_23B3EB988(v107, v92 + v151, &qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_34_13(6);
    v79 = v137;
    OUTLINED_FUNCTION_31_11();
    sub_23B50D6D4();
    sub_23B3EB988(v79, v92 + v150, &qword_27E131E18, &unk_23B50F710);
    OUTLINED_FUNCTION_32_13(7);
    v108 = sub_23B50D6E4();
    v80 = v139;
    v109 = (v92 + v94[11]);
    *v109 = v108;
    v109[1] = v110;
    OUTLINED_FUNCTION_32_13(8);
    v111 = sub_23B50D6E4();
    v149 = 0;
    v113 = (v92 + v94[12]);
    *v113 = v111;
    v113[1] = v112;
    OUTLINED_FUNCTION_34_13(9);
    v114 = v149;
    sub_23B50D6D4();
    v149 = v114;
    if (!v114)
    {
      sub_23B3EB988(v136, v148 + v146, &qword_27E131FC0, &qword_23B515170);
      v155 = 10;
      v81 = v141;
      v115 = v149;
      v116 = sub_23B50D6B4();
      v145 = v117;
      v149 = v115;
      if (!v115)
      {
        v120 = (v148 + v147[14]);
        v121 = v145;
        *v120 = v116;
        v120[1] = v121;
        v154 = 11;
        sub_23B50925C();
        OUTLINED_FUNCTION_29_14();
        v149 = 0;
        *(v148 + v147[15]) = v155;
        v154 = 12;
        sub_23B5092B0();
        OUTLINED_FUNCTION_29_14();
        v149 = 0;
        *(v148 + v147[16]) = v155;
        v155 = 13;
        OUTLINED_FUNCTION_19_22();
        sub_23B5098E0(v122, v123);
        OUTLINED_FUNCTION_29_14();
        v149 = 0;
        sub_23B3CA20C(v135, v148 + v147[17]);
        v155 = 14;
        OUTLINED_FUNCTION_6_33();
        sub_23B5098E0(v124, v125);
        OUTLINED_FUNCTION_29_14();
        v149 = 0;
        v126 = OUTLINED_FUNCTION_14_30();
        v127(v126);
        v128 = v148;
        (*(v130 + 32))(v148 + v147[18], v132, v133);
        sub_23B5090B8(v128, v131);
        __swift_destroy_boxed_opaque_existential_1(v144);
        OUTLINED_FUNCTION_65();
        return sub_23B50910C();
      }
    }

    v118 = OUTLINED_FUNCTION_14_30();
    v119(v118);
    v77 = 1;
    OUTLINED_FUNCTION_10_31();
    v82 = 1;
    v83 = 1;
  }

  v85 = v147;
  v84 = v148;
  __swift_destroy_boxed_opaque_existential_1(v144);
  if (v77)
  {
    v145 = 0;
    (*(v143 + 8))(v84, v142);
    if (v78)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v145 = 0;
    if (v78)
    {
LABEL_6:
      v86 = *(v84 + v85[5] + 8);

      if ((v79 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  if (!v79)
  {
LABEL_7:
    if (v80)
    {
      v87 = *(v152 + 8);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_11:
  v87 = *(v152 + 8);
  v87(v84 + v85[6], v153);
  if (v80)
  {
LABEL_12:
    v88 = v153;
    v87(v84 + v85[7], v153);
    if ((v81 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_14:
  v88 = v153;
  if (v81)
  {
    v87 = *(v152 + 8);
LABEL_16:
    v87(v84 + v85[8], v88);
  }

LABEL_17:
  sub_23B398890(v84 + v151, &qword_27E131E18, &unk_23B50F710);
  sub_23B398890(v84 + v150, &qword_27E131E18, &unk_23B50F710);
  if (v82)
  {
    v89 = *(v84 + v85[11] + 8);
  }

  if (v83)
  {
    v90 = *(v84 + v85[12] + 8);
  }

  sub_23B398890(v84 + v146, &qword_27E131FC0, &qword_23B515170);
}

uint64_t WeatherAlert.isExpired.getter()
{
  v1 = sub_23B50AD24();
  v2 = OUTLINED_FUNCTION_5(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  sub_23B50B9D4();
  sub_23B50B994();
  v10 = v0 + *(type metadata accessor for WeatherAlert() + 68);
  v11 = *(type metadata accessor for WeatherMetadata() + 20);
  OUTLINED_FUNCTION_0_64();
  sub_23B5098E0(v12, v13);
  LOBYTE(v10) = sub_23B50D114();
  (*(v4 + 8))(v9, v1);
  return v10 & 1;
}

uint64_t sub_23B5090B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return a2;
}

uint64_t sub_23B50910C()
{
  v1 = OUTLINED_FUNCTION_19();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_23B509160()
{
  result = qword_27E135C20;
  if (!qword_27E135C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C20);
  }

  return result;
}

unint64_t sub_23B5091B4()
{
  result = qword_27E135C28;
  if (!qword_27E135C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C28);
  }

  return result;
}

unint64_t sub_23B509208()
{
  result = qword_27E135C30;
  if (!qword_27E135C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C30);
  }

  return result;
}

unint64_t sub_23B50925C()
{
  result = qword_27E135C40;
  if (!qword_27E135C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C40);
  }

  return result;
}

unint64_t sub_23B5092B0()
{
  result = qword_27E135C48;
  if (!qword_27E135C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C48);
  }

  return result;
}

uint64_t WeatherAlert.hash(into:)()
{
  v3 = v1;
  OUTLINED_FUNCTION_19();
  v4 = sub_23B50AB34();
  v5 = OUTLINED_FUNCTION_5(v4);
  v58 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v57 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52();
  v59 = v15;
  OUTLINED_FUNCTION_24_0();
  v16 = sub_23B50AD24();
  v17 = OUTLINED_FUNCTION_5(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v26 = OUTLINED_FUNCTION_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_1_51();
  sub_23B5098E0(v33, v34);
  sub_23B50D0E4();
  v35 = type metadata accessor for WeatherAlert();
  v36 = (v1 + v35[5]);
  v37 = *v36;
  v38 = v36[1];
  sub_23B50D1C4();
  v39 = v35[6];
  OUTLINED_FUNCTION_0_64();
  sub_23B5098E0(v40, v41);
  OUTLINED_FUNCTION_36_13();
  v42 = v3 + v35[7];
  OUTLINED_FUNCTION_36_13();
  v43 = v3 + v35[8];
  OUTLINED_FUNCTION_36_13();
  sub_23B3EB900(v3 + v35[9], v2, &qword_27E131E18, &unk_23B50F710);
  if (__swift_getEnumTagSinglePayload(v2, 1, v16) == 1)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    (*(v19 + 32))(v24, v2, v16);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_46_7();
    (*(v19 + 8))(v24, v16);
  }

  sub_23B3EB900(v3 + v35[10], v31, &qword_27E131E18, &unk_23B50F710);
  if (__swift_getEnumTagSinglePayload(v31, 1, v16) == 1)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    (*(v19 + 32))(v24, v31, v16);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_46_7();
    (*(v19 + 8))(v24, v16);
  }

  v44 = (v3 + v35[11]);
  v45 = *v44;
  v46 = v44[1];
  sub_23B50D1C4();
  v47 = (v3 + v35[12]);
  v48 = *v47;
  v49 = v47[1];
  sub_23B50D1C4();
  sub_23B3EB900(v3 + v35[13], v59, &qword_27E131FC0, &qword_23B515170);
  if (__swift_getEnumTagSinglePayload(v59, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    (*(v58 + 32))(v57, v59, v4);
    OUTLINED_FUNCTION_84();
    sub_23B50D0E4();
    (*(v58 + 8))(v57, v4);
  }

  v50 = (v3 + v35[14]);
  if (v50[1])
  {
    v51 = *v50;
    OUTLINED_FUNCTION_84();
    sub_23B50D1C4();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  sub_23B3E7198(v0, *(v3 + v35[15]));
  if (*(v3 + v35[16]))
  {
    *(v3 + v35[16]);
  }

  sub_23B50D1C4();

  v52 = v3 + v35[17];
  WeatherMetadata.hash(into:)();
  v53 = v35[18];
  sub_23B50AD64();
  OUTLINED_FUNCTION_6_33();
  sub_23B5098E0(v54, v55);
  return sub_23B50D0E4();
}

uint64_t WeatherAlert.hashValue.getter()
{
  sub_23B50D8C4();
  WeatherAlert.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B50985C()
{
  sub_23B50D8C4();
  WeatherAlert.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B5098E0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WeatherAlert.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B509A30()
{
  result = qword_27E135C58;
  if (!qword_27E135C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C58);
  }

  return result;
}

unint64_t sub_23B509A88()
{
  result = qword_27E135C60;
  if (!qword_27E135C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C60);
  }

  return result;
}

unint64_t sub_23B509AE0()
{
  result = qword_27E135C68;
  if (!qword_27E135C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C68);
  }

  return result;
}

WeatherKit::AirQualityScaleGradientStop __swiftcall AirQualityScaleGradientStop.init(location:color:)(Swift::Float location, Swift::String color)
{
  *v2 = location;
  *(v2 + 8) = color;
  result.color = color;
  result.location = location;
  return result;
}

uint64_t AirQualityScaleGradientStop.color.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AirQualityScaleGradientStop.color.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_23B509BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
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

uint64_t sub_23B509CBC(char a1)
{
  if (a1)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_23B509CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B509BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B509D20(uint64_t a1)
{
  v2 = sub_23B509F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B509D5C(uint64_t a1)
{
  v2 = sub_23B509F58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AirQualityScaleGradientStop.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_23B50D834();
  }
}

uint64_t AirQualityScaleGradientStop.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135C70, &qword_23B528060);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = *(v1 + 2);
  v16 = *(v1 + 1);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B509F58();
  sub_23B50D974();
  v18 = 0;
  sub_23B50D7D4();
  if (!v2)
  {
    v17 = 1;
    sub_23B50D7A4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_23B509F58()
{
  result = qword_280B41D70[0];
  if (!qword_280B41D70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B41D70);
  }

  return result;
}

uint64_t AirQualityScaleGradientStop.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135C78, &qword_23B528068);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B509F58();
  sub_23B50D964();
  if (!v2)
  {
    v20[15] = 0;
    sub_23B50D714();
    v15 = v14;
    v20[14] = 1;
    v17 = sub_23B50D6E4();
    v19 = v18;
    (*(v8 + 8))(v12, v5);
    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AirQualityScaleGradientStop.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  *v0;
  sub_23B50D8F4();

  return sub_23B50D1C4();
}

uint64_t AirQualityScaleGradientStop.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_23B50D8C4();
  sub_23B50D8F4();
  sub_23B50D1C4();
  return sub_23B50D914();
}

uint64_t sub_23B50A268()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_23B50D8C4();
  AirQualityScaleGradientStop.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B50A2BC()
{
  result = qword_27E135C80;
  if (!qword_27E135C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityScaleGradientStop.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B50A3F0()
{
  result = qword_27E135C88;
  if (!qword_27E135C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135C88);
  }

  return result;
}

unint64_t sub_23B50A448()
{
  result = qword_280B41D60;
  if (!qword_280B41D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41D60);
  }

  return result;
}

unint64_t sub_23B50A4A0()
{
  result = qword_280B41D68;
  if (!qword_280B41D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41D68);
  }

  return result;
}

unint64_t sub_23B50A4F4(_BYTE *a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for CLLocationCoordinate2D.SolarEvents();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  CLLocationCoordinate2D.solarEvents(referenceDate:timeZone:)(a2, v12, a3, a4);
  v13 = v12[*(v9 + 32)];
  v17 = a1;
  v14 = sub_23B50A5D4(&v17, v13);
  sub_23B4F5D20(v12);
  return v14;
}

unint64_t sub_23B50A5D4(unsigned __int8 *a1, char a2)
{
  v2 = *a1;
  result = 0x6C616369706F7274;
  switch(v2)
  {
    case 1:
      result = 0x747375642E6E7573;
      break;
    case 2:
      result = 0x6F6E732E646E6977;
      break;
    case 3:
    case 32:
      result = 1684957559;
      break;
    case 4:
    case 16:
    case 19:
      if (a2)
      {
        result = 0x2E78616D2E6E7573;
      }

      else
      {
        result = 0x6174732E6E6F6F6DLL;
      }

      break;
    case 5:
    case 20:
      result = 0x69662E64756F6C63;
      break;
    case 6:
      if (a2)
      {
        result = 0xD000000000000012;
      }

      else
      {
        result = 0xD000000000000014;
      }

      break;
    case 7:
    case 26:
    case 28:
      result = 0x6B616C66776F6E73;
      break;
    case 8:
      result = 0x6F662E64756F6C63;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
    case 24:
    case 33:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x61682E64756F6C63;
      break;
    case 13:
    case 25:
      result = 0x657A61682E6E7573;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x6E61636972727568;
      break;
    case 18:
    case 23:
      if (a2)
      {
        result = 0x6F622E64756F6C63;
      }

      else
      {
        result = 0xD000000000000014;
      }

      break;
    case 21:
      if (a2)
      {
        result = 0x75732E64756F6C63;
      }

      else
      {
        result = 0x6F6D2E64756F6C63;
      }

      break;
    case 22:
      result = 0x61722E64756F6C63;
      break;
    case 27:
    case 30:
      result = 0xD000000000000014;
      break;
    case 29:
      result = 0xD000000000000013;
      break;
    case 31:
      return result;
    default:
      result = 0x6E732E64756F6C63;
      break;
  }

  return result;
}