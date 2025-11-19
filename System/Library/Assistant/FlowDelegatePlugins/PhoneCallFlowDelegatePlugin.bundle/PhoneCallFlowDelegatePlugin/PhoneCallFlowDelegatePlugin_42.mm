uint64_t StartCallCATs.intentHandledResponse(intent:redactedContacts:device:appName:isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 98) = v2;
  *(v1 + 97) = v3;
  *(v1 + 96) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v0;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  *(v1 + 64) = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 90) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t StartCallCATs.intentHandledResponse(intent:redactedContacts:device:appName:isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_186();
  *(v12 + 72) = v14;
  OUTLINED_FUNCTION_12_6(v14, xmmword_431D00);
  if (v13)
  {
    type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v15 = *(v12 + 32);
  *(v14 + 48) = v13;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 72) = v16;
  *(v14 + 80) = 0xD000000000000010;
  *(v14 + 88) = v17;
  if (v15)
  {
    type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  v18 = *(v12 + 40);
  *(v14 + 96) = v15;
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_217_0(v19, v20);
  if (v18)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  v21 = *(v12 + 64);
  v22 = *(v12 + 48);
  *(v14 + 144) = v18;
  OUTLINED_FUNCTION_21_40();
  *(v14 + 168) = v23;
  *(v14 + 176) = v24;
  *(v14 + 184) = 0xE700000000000000;
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v25);
  v26 = type metadata accessor for SpeakableString();
  v27 = OUTLINED_FUNCTION_45_20();
  __swift_getEnumTagSinglePayload(v27, v28, v26);
  v29 = *(v12 + 64);
  v30 = *(v12 + 32);
  v31 = *(v12 + 40);
  OUTLINED_FUNCTION_204_0();
  if (v32)
  {

    outlined destroy of SpeakableString?(v29, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v26;
    __swift_allocate_boxed_opaque_existential_1((v14 + 192));
    OUTLINED_FUNCTION_24_23();
    (*(v33 + 32))();
  }

  v34 = *(v12 + 98);
  v35 = *(v12 + 97);
  v36 = *(v12 + 96);
  OUTLINED_FUNCTION_141_1();
  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_194(v37);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v12 + 80) = v38;
  *v38 = v39;
  v38[1] = SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  v40 = *(v12 + 56);
  v41 = *(v12 + 16);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_133_3();

  return v46(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_186();
  *(v12 + 64) = v14;
  OUTLINED_FUNCTION_12_6(v14, xmmword_431D00);
  if (v13)
  {
    type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v15 = *(v12 + 24);
  *(v14 + 48) = v13;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 72) = v16;
  *(v14 + 80) = 0xD000000000000010;
  *(v14 + 88) = v17;
  if (v15)
  {
    type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  v18 = *(v12 + 32);
  *(v14 + 96) = v15;
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_217_0(v19, v20);
  if (v18)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  v21 = *(v12 + 56);
  v22 = *(v12 + 40);
  *(v14 + 144) = v18;
  OUTLINED_FUNCTION_21_40();
  *(v14 + 168) = v23;
  *(v14 + 176) = v24;
  *(v14 + 184) = 0xE700000000000000;
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v25);
  v26 = type metadata accessor for SpeakableString();
  v27 = OUTLINED_FUNCTION_45_20();
  __swift_getEnumTagSinglePayload(v27, v28, v26);
  v29 = *(v12 + 56);
  v30 = *(v12 + 24);
  v31 = *(v12 + 32);
  OUTLINED_FUNCTION_225_0();
  if (v32)
  {

    outlined destroy of SpeakableString?(v29, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v26;
    __swift_allocate_boxed_opaque_existential_1((v14 + 192));
    OUTLINED_FUNCTION_24_23();
    (*(v33 + 32))();
  }

  v34 = *(v12 + 90);
  v35 = *(v12 + 89);
  v36 = *(v12 + 88);
  OUTLINED_FUNCTION_141_1();
  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_194(v37);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v12 + 72) = v38;
  *v38 = v39;
  v38[1] = SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  v40 = *(v12 + 48);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_133_3();

  return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

void StartCallCATs.intentHandledResponse(intent:redactedContacts:device:appName:isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:)()
{
  OUTLINED_FUNCTION_66();
  v28 = v5;
  OUTLINED_FUNCTION_179();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_182_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_12_6(v10, xmmword_431D00);
  if (v2)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v11 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v10[3].n128_u64[0] = v11;
  OUTLINED_FUNCTION_36_7();
  v10[4].n128_u64[1] = v12;
  v10[5].n128_u64[0] = 0xD000000000000010;
  v10[5].n128_u64[1] = v13;
  if (v1)
  {
    type metadata accessor for PhonePersonList();
    v14 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_7_7();
  }

  v10[6].n128_u64[0] = v14;
  OUTLINED_FUNCTION_27_1();
  v10[7].n128_u64[1] = v15;
  v10[8].n128_u64[0] = v16;
  v10[8].n128_u64[1] = 0xE600000000000000;
  if (v3)
  {
    type metadata accessor for SirikitDeviceState();
    v17 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v10[9].n128_u64[1] = 0;
    v10[10].n128_u64[0] = 0;
  }

  v10[9].n128_u64[0] = v17;
  OUTLINED_FUNCTION_48_2();
  v10[10].n128_u64[1] = v18;
  v10[11].n128_u64[0] = v19;
  v10[11].n128_u64[1] = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v0, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = type metadata accessor for SpeakableString();
  v21 = OUTLINED_FUNCTION_221_0();
  OUTLINED_FUNCTION_9_40(v21, v22, v20);
  if (v23)
  {

    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    OUTLINED_FUNCTION_228_0();
    OUTLINED_FUNCTION_6_0();
    (*(v24 + 32))();
  }

  OUTLINED_FUNCTION_21_48();
  v10[14].n128_u64[0] = v25;
  v10[14].n128_u64[1] = v26;
  OUTLINED_FUNCTION_121_3();
  v10[19].n128_u64[1] = v27;
  v10[20].n128_u64[0] = 0xD00000000000001ELL;
  v10[20].n128_u64[1] = 0x8000000000462240;
  v10[22].n128_u64[1] = v27;
  v10[21].n128_u8[0] = v28 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.intentHandledResponseEmergency(intent:noCountdownPresented:isMyriadCall:isRepromptAutoCall:device:completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_12_6(v10, xmmword_42BF20);
  if (v9)
  {
    v11 = type metadata accessor for PhoneStartCallIntent(0);
    v12 = v9;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_14();
  }

  v10[3].n128_u64[0] = v12;
  v10[4].n128_u64[1] = v11;
  v10[5].n128_u64[0] = 0xD000000000000014;
  v10[5].n128_u64[1] = 0x8000000000462410;
  v10[6].n128_u8[0] = v7 & 1;
  OUTLINED_FUNCTION_209();
  v10[7].n128_u64[1] = v14;
  v10[8].n128_u64[0] = v13;
  v10[8].n128_u64[1] = 0xEC0000006C6C6143;
  v10[9].n128_u8[0] = v5 & 1;
  OUTLINED_FUNCTION_27_2();
  v10[10].n128_u64[1] = v15;
  v10[11].n128_u64[0] = 0xD000000000000012;
  v10[11].n128_u64[1] = v16;
  v10[12].n128_u8[0] = v3 & 1;
  OUTLINED_FUNCTION_27_1();
  v10[13].n128_u64[1] = v18;
  v10[14].n128_u64[0] = v17;
  v10[14].n128_u64[1] = 0xE600000000000000;
  if (v1)
  {
    v19 = type metadata accessor for SirikitDeviceState();
    v20 = v1;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_18_2();
    v10[15].n128_u64[1] = 0;
    v10[16].n128_u64[0] = 0;
  }

  v10[15].n128_u64[0] = v20;
  v10[16].n128_u64[1] = v19;
  OUTLINED_FUNCTION_202_0();

  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.intentHandledResponseEmergency(intent:noCountdownPresented:isMyriadCall:isRepromptAutoCall:device:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 74) = a5;
  *(v7 + 73) = a4;
  *(v7 + 72) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.intentHandledResponseEmergency(intent:noCountdownPresented:isMyriadCall:isRepromptAutoCall:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187();
  v14 = OUTLINED_FUNCTION_153(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_42BF20);
  if (v12)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = *(v10 + 32);
  v17 = *(v10 + 74);
  v18 = *(v10 + 73);
  v19 = *(v10 + 72);
  v11[6] = v15;
  OUTLINED_FUNCTION_27_2();
  v11[9] = v20;
  v11[10] = 0xD000000000000014;
  v11[11] = v21;
  OUTLINED_FUNCTION_139_0(&type metadata for Bool);
  v23 = OUTLINED_FUNCTION_124_2(v22);
  if (v16)
  {
    v23 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[31] = 0;
    v11[32] = 0;
  }

  v11[30] = v16;
  v11[33] = v23;
  v24 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_17_53();

  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_22_19(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_44_2(v26);
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_60();

  return v32(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_42BF20);
  if (v12)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = *(v10 + 24);
  v17 = *(v10 + 66);
  v18 = *(v10 + 65);
  v19 = *(v10 + 64);
  v11[6] = v15;
  OUTLINED_FUNCTION_27_2();
  v11[9] = v20;
  v11[10] = 0xD000000000000014;
  v11[11] = v21;
  OUTLINED_FUNCTION_139_0(&type metadata for Bool);
  v23 = OUTLINED_FUNCTION_124_2(v22);
  if (v16)
  {
    v23 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[31] = 0;
    v11[32] = 0;
  }

  v11[30] = v16;
  v11[33] = v23;
  v24 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_17_53();

  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_16_12(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_114_0(v26);
  OUTLINED_FUNCTION_183_1();
  OUTLINED_FUNCTION_60();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t StartCallCATs.intentHandledResponseEmergency(intent:noCountdownPresented:isMyriadCall:isRepromptAutoCall:device:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 66) = a4;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.intentHandledResponseEmergency(intent:noCountdownPresented:isMyriadCall:isRepromptAutoCall:device:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_12_6(v10, xmmword_42BF20);
  if (v9)
  {
    v11 = type metadata accessor for PhoneStartCallIntent(0);
    v12 = v9;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_8();
  }

  v10[3].n128_u64[0] = v12;
  v10[4].n128_u64[1] = v11;
  v10[5].n128_u64[0] = 0xD000000000000014;
  v10[5].n128_u64[1] = 0x8000000000462410;
  v10[6].n128_u8[0] = v7 & 1;
  OUTLINED_FUNCTION_209();
  v10[7].n128_u64[1] = v14;
  v10[8].n128_u64[0] = v13;
  v10[8].n128_u64[1] = 0xEC0000006C6C6143;
  v10[9].n128_u8[0] = v5 & 1;
  OUTLINED_FUNCTION_27_2();
  v10[10].n128_u64[1] = v15;
  v10[11].n128_u64[0] = 0xD000000000000012;
  v10[11].n128_u64[1] = v16;
  v10[12].n128_u8[0] = v3 & 1;
  OUTLINED_FUNCTION_27_1();
  v10[13].n128_u64[1] = v18;
  v10[14].n128_u64[0] = v17;
  v10[14].n128_u64[1] = 0xE600000000000000;
  if (v1)
  {
    v19 = type metadata accessor for SirikitDeviceState();
    v20 = v1;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_18_2();
    v10[15].n128_u64[1] = 0;
    v10[16].n128_u64[0] = 0;
  }

  v10[15].n128_u64[0] = v20;
  v10[16].n128_u64[1] = v19;
  OUTLINED_FUNCTION_62_3();

  OUTLINED_FUNCTION_149_0();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.intentHandledResponseWithFaceTimeLink()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(47);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.internalConversionError(device:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.internalConversionError(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.internalConversionError(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(33);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_111_6(33);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.internalConversionError(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.joinFaceTimeMessage()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(29);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.promptForCallCapability()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void StartCallCATs.promptForContacts(appName:isFaceTime:rePromptCount:startingOver:isUnsupportedFollowUp:completion:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_182_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_0_4(v17, xmmword_42BF20);
  outlined init with copy of SpeakableString?(v12, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  v19 = OUTLINED_FUNCTION_221_0();
  OUTLINED_FUNCTION_9_40(v19, v20, v18);
  if (v21)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
  }

  else
  {
    *(v17 + 72) = v18;
    __swift_allocate_boxed_opaque_existential_1((v17 + 48));
    OUTLINED_FUNCTION_6_0();
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_93();
  *(v17 + 80) = v23;
  *(v17 + 88) = v24;
  *(v17 + 96) = v10 & 1;
  OUTLINED_FUNCTION_213_0();
  *(v17 + 120) = v25;
  *(v17 + 128) = v26;
  OUTLINED_FUNCTION_211();
  *(v17 + 136) = v27;
  if (v6)
  {
    v8 = 0;
    *(v17 + 152) = 0;
    *(v17 + 160) = 0;
  }

  *(v17 + 144) = v8;
  OUTLINED_FUNCTION_195_0();
  *(v17 + 168) = v28;
  *(v17 + 176) = v29;
  *(v17 + 184) = 0xEC0000007265764FLL;
  *(v17 + 192) = v4 & 1;
  OUTLINED_FUNCTION_39_0();
  *(v17 + 216) = v30;
  *(v17 + 224) = 0xD000000000000015;
  *(v17 + 232) = v31;
  *(v17 + 264) = v30;
  *(v17 + 240) = v2 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.promptForContacts(appName:isFaceTime:rePromptCount:startingOver:isUnsupportedFollowUp:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 83) = v2;
  *(v1 + 82) = v3;
  *(v1 + 81) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v0;
  *(v1 + 80) = v6;
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_75_6();
  v25 = v1;
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_187();
  *(v0 + 56) = v4;
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_42BF20);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_58(v7);
  v9 = *(v0 + 48);
  if (v8 == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_16_0();
    v12();
  }

  v13 = *(v0 + 81);
  v14 = *(v0 + 80);
  OUTLINED_FUNCTION_47_2();
  v4[5].n128_u64[0] = v15;
  v4[5].n128_u64[1] = 0xEA0000000000656DLL;
  OUTLINED_FUNCTION_133_4(&type metadata for Bool);
  if (v16)
  {
    v17 = 0;
    v4[9].n128_u64[1] = 0;
    v4[10].n128_u64[0] = 0;
  }

  else
  {
    v17 = *(v0 + 32);
  }

  v18 = *(v0 + 83);
  v19 = *(v0 + 82);
  v4[9].n128_u64[0] = v17;
  OUTLINED_FUNCTION_136_5();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_173_0(v20);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_44_2(v21);
  OUTLINED_FUNCTION_120_4();

  return v24();
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 75) = v3;
  *(v1 + 74) = v4;
  *(v1 + 73) = v5;
  *(v1 + 72) = v6;
  *(v1 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_75_6();
  v27 = v2;
  OUTLINED_FUNCTION_23_0();
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_187();
  v6 = OUTLINED_FUNCTION_46_15(v5);
  v7 = OUTLINED_FUNCTION_0_4(v6, xmmword_42BF20);
  OUTLINED_FUNCTION_54_2(v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v9);
  if (v10)
  {
    outlined destroy of SpeakableString?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = *(v0 + 73);
  v15 = *(v0 + 72);
  OUTLINED_FUNCTION_47_2();
  v1[10] = v16;
  v1[11] = 0xEA0000000000656DLL;
  OUTLINED_FUNCTION_133_4(&type metadata for Bool);
  if (v17)
  {
    v18 = 0;
    v1[19] = 0;
    v1[20] = 0;
  }

  else
  {
    v18 = *(v0 + 24);
  }

  v19 = *(v0 + 75);
  v20 = *(v0 + 74);
  v1[18] = v18;
  OUTLINED_FUNCTION_136_5();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_173_0(v21);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_22_19(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_114_0(v23);
  OUTLINED_FUNCTION_212();

  return v26();
}

void StartCallCATs.promptForContacts(appName:isFaceTime:rePromptCount:startingOver:isUnsupportedFollowUp:)()
{
  OUTLINED_FUNCTION_66();
  v33 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v19 = OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_0_4(v19, xmmword_42BF20);
  outlined init with copy of SpeakableString?(v12, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_9_40(v18, 1, v20);
  if (v21)
  {
    outlined destroy of SpeakableString?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
  }

  else
  {
    *(v19 + 72) = v20;
    __swift_allocate_boxed_opaque_existential_1((v19 + 48));
    OUTLINED_FUNCTION_40(v20);
    (*(v22 + 32))(v23);
  }

  OUTLINED_FUNCTION_93();
  *(v19 + 80) = v24;
  *(v19 + 88) = v25;
  *(v19 + 96) = v10 & 1;
  OUTLINED_FUNCTION_213_0();
  *(v19 + 120) = v26;
  *(v19 + 128) = v27;
  OUTLINED_FUNCTION_211();
  *(v19 + 136) = v28;
  if (v6)
  {
    v8 = 0;
    *(v19 + 152) = 0;
    *(v19 + 160) = 0;
  }

  *(v19 + 144) = v8;
  OUTLINED_FUNCTION_195_0();
  *(v19 + 168) = v29;
  *(v19 + 176) = v30;
  *(v19 + 184) = 0xEC0000007265764FLL;
  *(v19 + 192) = v4 & 1;
  OUTLINED_FUNCTION_39_0();
  *(v19 + 216) = v31;
  *(v19 + 224) = 0xD000000000000015;
  *(v19 + 232) = v32;
  *(v19 + 264) = v31;
  *(v19 + 240) = v2 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

void StartCallCATs.promptForContactsKnownLabel(requestedHandleLabelEnum:requestedHandle:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_130_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_45_0();
  *(v9 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v10 + 32) = 0xD000000000000018;
  *(v10 + 40) = v11;
  v12 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_57_25(v14);
  if (v15)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    *(v9 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40(v4);
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_175_1();
    v18();
  }

  OUTLINED_FUNCTION_46_27();
  *(v9 + 80) = v19;
  *(v9 + 88) = v20;
  if (v2)
  {
    v21 = type metadata accessor for DialogPersonHandle();
    v22 = v2;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_71_12();
  }

  OUTLINED_FUNCTION_164_1(v21, v22);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.promptForContactsKnownLabel(requestedHandleLabelEnum:requestedHandle:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t StartCallCATs.promptForContactsKnownLabel(requestedHandleLabelEnum:requestedHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v11 = v10[6];
  v12 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v10[7] = v13;
  *(v13 + 16) = xmmword_424FF0;
  v14 = OUTLINED_FUNCTION_0_8(v13, "requestedHandleLabelEnum");
  OUTLINED_FUNCTION_54_2(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = type metadata accessor for SpeakableString();
  v17 = OUTLINED_FUNCTION_58(v16);
  v18 = v10[6];
  if (v17 == 1)
  {
    outlined destroy of SpeakableString?(v10[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_16_0();
    v21();
  }

  v22 = v10[4];
  OUTLINED_FUNCTION_46_27();
  v24 = OUTLINED_FUNCTION_220_0(v23);
  if (v22)
  {
    v24 = type metadata accessor for DialogPersonHandle();
  }

  else
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  OUTLINED_FUNCTION_218_0(v24);
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[8] = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_44_2(v25);
  OUTLINED_FUNCTION_82_9();
  OUTLINED_FUNCTION_65_2();

  return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = v10[5];
  v13 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0();
  v15 = OUTLINED_FUNCTION_46_15(v14);
  *(v15 + 16) = xmmword_424FF0;
  v16 = OUTLINED_FUNCTION_0_8(v15, "requestedHandleLabelEnum");
  OUTLINED_FUNCTION_54_2(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v18);
  if (v19)
  {
    outlined destroy of SpeakableString?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_16_0();
    v22();
  }

  v23 = v10[3];
  OUTLINED_FUNCTION_46_27();
  v25 = OUTLINED_FUNCTION_220_0(v24);
  if (v23)
  {
    v25 = type metadata accessor for DialogPersonHandle();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_218_0(v25);
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v26 = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_22_19(v26);
  *v27 = v28;
  OUTLINED_FUNCTION_114_0(v27);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

void StartCallCATs.promptForContactsKnownLabel(requestedHandleLabelEnum:requestedHandle:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_45_0();
  *(v7 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v8 + 32) = 0xD000000000000018;
  *(v8 + 40) = v9;
  OUTLINED_FUNCTION_40_15();
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v10);
  if (v11)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_47_15();
    v14();
  }

  OUTLINED_FUNCTION_46_27();
  *(v7 + 80) = v15;
  *(v7 + 88) = v16;
  if (v2)
  {
    v17 = type metadata accessor for DialogPersonHandle();
    v18 = v2;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_18_2();
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v18;
  *(v7 + 120) = v17;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.promptForDestinationType()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.promptForPreferredCallProvider()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(40);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void StartCallCATs.relationship(relationship:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_42_1(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_40_15();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.relationship(relationship:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_46_15(v2);
  v4 = OUTLINED_FUNCTION_42_1(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_49(v12);
  OUTLINED_FUNCTION_37_17();

  return v14();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_42_1(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(22);

  return v15(v14);
}

void StartCallCATs.relationship(relationship:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_151_2();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_42_1(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_67_16();
  OUTLINED_FUNCTION_190();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.unsupportedCallCapability()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.errorNoTargetCall();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(35);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void StartCallCATs.unsupportedCallCapabilityCameraNotAccessible(appName:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_40_15();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.unsupportedCallCapabilityCameraNotAccessible(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_46_15(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_49(v12);
  OUTLINED_FUNCTION_37_17();

  return v14();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(54);

  return v15(v14);
}

void StartCallCATs.unsupportedCallCapabilityCameraNotAccessible(appName:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_151_2();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_67_16();
  OUTLINED_FUNCTION_190();

  OUTLINED_FUNCTION_60_1();
}

void StartCallCATs.unsupportedCallCapabilityMicrophoneNotAccessible(appName:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_40_15();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.unsupportedCallCapabilityMicrophoneNotAccessible(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_46_15(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_49(v12);
  OUTLINED_FUNCTION_37_17();

  return v14();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(58);

  return v15(v14);
}

void StartCallCATs.unsupportedCallCapabilityMicrophoneNotAccessible(appName:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_151_2();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_67_16();
  OUTLINED_FUNCTION_190();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.unsupportedCallCapabilityVideoCallUnsupported()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(55);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.unsupportedContactsForeignEmergencyDisambiguation()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(59);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.unsupportedContactsInvalidHandle(contacts:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1() + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_48_25();
  *(v1 + 32) = v2;
  *(v1 + 40) = 0xE800000000000000;
  if (v0)
  {
    v3 = type metadata accessor for PhonePersonList();
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v3, v4);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.unsupportedContactsInvalidHandle(contacts:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedContactsInvalidHandle(contacts:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_50_0(v3) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_48_25();
  v6 = OUTLINED_FUNCTION_73_9(v4, v5);
  if (v2)
  {
    v6 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_12(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_19_10(v8);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_51(v3) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_48_25();
  v6 = OUTLINED_FUNCTION_73_9(v4, v5);
  if (v2)
  {
    v6 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(42);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1() + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_48_25();
  *(v1 + 32) = v2;
  *(v1 + 40) = 0xE800000000000000;
  if (v0)
  {
    v3 = type metadata accessor for PhonePersonList();
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v3, v4);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_111_6(42);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.unsupportedContactsInvalidHandle(contacts:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedContactsMultipleContactsUnsupported()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(56);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.unsupportedContactsNoCallHistoryForRedial()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(51);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void StartCallCATs.unsupportedContactsNoContactFound(contact:appName:isFirstPartyApp:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_61_6();
  a17 = v18;
  a18 = v19;
  OUTLINED_FUNCTION_216_0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v32 = OUTLINED_FUNCTION_47();
  v33 = OUTLINED_FUNCTION_49_28(v32, xmmword_426980);
  v33[2].n128_u64[0] = v34 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
  v33[2].n128_u64[1] = 0xE700000000000000;
  if (v25)
  {
    type metadata accessor for DialogPerson();
    v35 = v25;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v32[3].n128_u64[0] = v35;
  OUTLINED_FUNCTION_48_2();
  v32[4].n128_u64[1] = v36;
  v32[5].n128_u64[0] = v37;
  v32[5].n128_u64[1] = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v23, v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v38 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_9_40(v31, 1, v38);
  if (v39)
  {

    outlined destroy of SpeakableString?(v31, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    v32[7].n128_u64[1] = v38;
    __swift_allocate_boxed_opaque_existential_1(&v32[6]);
    OUTLINED_FUNCTION_40(v38);
    (*(v40 + 32))();
  }

  OUTLINED_FUNCTION_21_48();
  v32[8].n128_u64[0] = v41;
  v32[8].n128_u64[1] = v42;
  v32[10].n128_u64[1] = &type metadata for Bool;
  v32[9].n128_u8[0] = v21 & 1;
  OUTLINED_FUNCTION_109_4();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.unsupportedContactsNoContactFound(contact:appName:isFirstPartyApp:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 80) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_47();
  *(v0 + 56) = v2;
  v3 = OUTLINED_FUNCTION_49_28(v2, xmmword_426980);
  OUTLINED_FUNCTION_73_9(v3, v4 & 0xFFFFFFFFFFFFLL | 0x74000000000000);
  if (v1)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_21_40();
  v2[4].n128_u64[1] = v7;
  v2[5].n128_u64[0] = v8;
  v2[5].n128_u64[1] = 0xE700000000000000;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v9);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_58(v10);
  v11 = *(v0 + 48);
  OUTLINED_FUNCTION_204_0();
  if (v12)
  {

    outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_16_0();
    v15();
  }

  v16 = *(v0 + 80);
  OUTLINED_FUNCTION_21_48();
  v2[8].n128_u64[0] = v17;
  v2[8].n128_u64[1] = v18;
  OUTLINED_FUNCTION_224_0(v19);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_44_2(v20);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_65_1();

  return v26(v22, v23, v24, v25, v26, v27, v28, v29);
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_153(v3);
  v5 = OUTLINED_FUNCTION_49_28(v4, xmmword_426980);
  OUTLINED_FUNCTION_73_9(v5, v6 & 0xFFFFFFFFFFFFLL | 0x74000000000000);
  if (v2)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  v1[6] = v2;
  OUTLINED_FUNCTION_21_40();
  v1[9] = v9;
  v1[10] = v10;
  v1[11] = 0xE700000000000000;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v11);
  v12 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_58(v12);
  v13 = *(v0 + 40);
  OUTLINED_FUNCTION_225_0();
  if (v14)
  {

    outlined destroy of SpeakableString?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_16_0();
    v17();
  }

  v18 = *(v0 + 72);
  OUTLINED_FUNCTION_21_48();
  v1[16] = v19;
  v1[17] = v20;
  OUTLINED_FUNCTION_224_0(v21);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v22 = swift_task_alloc();
  *(v0 + 56) = v22;
  *v22 = v0;
  OUTLINED_FUNCTION_114_0(v22);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_131_3(43);
  OUTLINED_FUNCTION_65_1();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30);
}

void StartCallCATs.unsupportedContactsNoContactFound(contact:appName:isFirstPartyApp:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_2_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v11 = OUTLINED_FUNCTION_47();
  v12 = OUTLINED_FUNCTION_49_28(v11, xmmword_426980);
  v12[2].n128_u64[0] = v13 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
  v12[2].n128_u64[1] = 0xE700000000000000;
  if (v6)
  {
    type metadata accessor for DialogPerson();
    v14 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  *(v11 + 48) = v14;
  OUTLINED_FUNCTION_48_2();
  *(v11 + 72) = v15;
  *(v11 + 80) = v16;
  *(v11 + 88) = 0xE700000000000000;
  v17 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v17, v18, v19, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_57_25(v21);
  if (v22)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v4;
    __swift_allocate_boxed_opaque_existential_1((v11 + 96));
    OUTLINED_FUNCTION_40(v4);
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_175_1();
    v25();
  }

  OUTLINED_FUNCTION_21_48();
  *(v11 + 128) = v26;
  *(v11 + 136) = v27;
  *(v11 + 168) = &type metadata for Bool;
  *(v11 + 144) = v2 & 1;
  OUTLINED_FUNCTION_29(43);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.unsupportedContactsNoContactFoundUserUnknown()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(54);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void StartCallCATs.unsupportedContactsNoHandleForLabel(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:completion:)()
{
  OUTLINED_FUNCTION_66();
  v39[0] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v20 = OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_12_6(v20, xmmword_42BF20);
  if (v10)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v21 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  *(v20 + 48) = v21;
  OUTLINED_FUNCTION_27_2();
  *(v20 + 72) = v22;
  *(v20 + 80) = 0xD000000000000015;
  *(v20 + 88) = v23;
  outlined init with copy of SpeakableString?(v8, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v24 = type metadata accessor for SpeakableString();
  v25 = OUTLINED_FUNCTION_45_20();
  OUTLINED_FUNCTION_9_40(v25, v26, v24);
  if (v27)
  {

    outlined destroy of SpeakableString?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
  }

  else
  {
    *(v20 + 120) = v24;
    __swift_allocate_boxed_opaque_existential_1((v20 + 96));
    OUTLINED_FUNCTION_40(v24);
    (*(v28 + 32))(v29);
  }

  OUTLINED_FUNCTION_27_2();
  *(v20 + 128) = 0xD000000000000011;
  *(v20 + 136) = v30;
  if (v6)
  {
    type metadata accessor for DialogPerson();
    v31 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v20 + 152) = 0;
    *(v20 + 160) = 0;
  }

  *(v20 + 144) = v31;
  OUTLINED_FUNCTION_27_2();
  *(v20 + 168) = v32;
  *(v20 + 176) = 0xD00000000000001CLL;
  *(v20 + 184) = v33;
  outlined init with copy of SpeakableString?(v4, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_40(v16, 1, v24);
  if (v27)
  {

    outlined destroy of SpeakableString?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v20 + 192) = 0u;
    *(v20 + 208) = 0u;
  }

  else
  {
    *(v20 + 216) = v24;
    __swift_allocate_boxed_opaque_existential_1((v20 + 192));
    OUTLINED_FUNCTION_40(v24);
    (*(v34 + 32))(v35);
  }

  OUTLINED_FUNCTION_27_2();
  *(v20 + 224) = 0xD000000000000011;
  *(v20 + 232) = v36;
  if (v2)
  {
    v37 = type metadata accessor for DialogPersonHandle();
    v38 = v2;
  }

  else
  {
    v37 = OUTLINED_FUNCTION_18_2();
    *(v20 + 248) = 0;
    *(v20 + 256) = 0;
  }

  *(v20 + 240) = v38;
  *(v20 + 264) = v37;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.unsupportedContactsNoHandleForLabel(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:)()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[10];
    v12 = v3[11];
    v14 = v3[9];

    OUTLINED_FUNCTION_8_1();

    return v15();
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  OUTLINED_FUNCTION_11();
  v5 = v0[13];

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[9];
    v12 = v3[10];
    v14 = v3[8];

    v15 = OUTLINED_FUNCTION_49();

    return v16(v15);
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  OUTLINED_FUNCTION_11();
  v5 = v0[12];

  return v4();
}

uint64_t StartCallCATs.unsupportedContactsNoHandleForLabel(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = v11[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187();
  v11[11] = v13;
  OUTLINED_FUNCTION_12_6(v13, xmmword_42BF20);
  if (v12)
  {
    type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    v13[3].n128_u64[1] = 0;
    v13[4].n128_u64[0] = 0;
  }

  v14 = v11[10];
  v15 = v11[4];
  v13[3].n128_u64[0] = v12;
  OUTLINED_FUNCTION_39_0();
  v13[4].n128_u64[1] = v16;
  v13[5].n128_u64[0] = 0xD000000000000015;
  v13[5].n128_u64[1] = v17;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v18);
  v19 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_58(v19);
  v20 = v11[10];
  OUTLINED_FUNCTION_204_0();
  if (v21)
  {

    outlined destroy of SpeakableString?(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_16_0();
    v24();
  }

  v25 = v11[5];
  OUTLINED_FUNCTION_27_2();
  v13[8].n128_u64[0] = 0xD000000000000011;
  v13[8].n128_u64[1] = v26;
  if (v25)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    v13[9].n128_u64[1] = 0;
    v13[10].n128_u64[0] = 0;
  }

  v27 = v11[9];
  v28 = v11[6];
  v13[9].n128_u64[0] = v25;
  OUTLINED_FUNCTION_39_0();
  v13[10].n128_u64[1] = v29;
  v13[11].n128_u64[0] = 0xD00000000000001CLL;
  v13[11].n128_u64[1] = v30;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v31);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v10);
  v33 = v11[9];
  v34 = v11[5];
  if (EnumTagSinglePayload == 1)
  {
    v35 = v11[5];

    outlined destroy of SpeakableString?(v33, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    OUTLINED_FUNCTION_228_0();
    OUTLINED_FUNCTION_6_0();
    v37 = *(v36 + 32);
    OUTLINED_FUNCTION_16_0();
    v38();
  }

  v39 = v11[7];
  OUTLINED_FUNCTION_27_2();
  v13[14].n128_u64[0] = 0xD000000000000011;
  v13[14].n128_u64[1] = v40;
  v41 = 0;
  if (v39)
  {
    v41 = type metadata accessor for DialogPersonHandle();
  }

  else
  {
    v13[15].n128_u64[1] = 0;
    v13[16].n128_u64[0] = 0;
  }

  v13[15].n128_u64[0] = v39;
  v13[16].n128_u64[1] = v41;
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v11[12] = v42;
  *v42 = v43;
  v42[1] = StartCallCATs.unsupportedContactsNoHandleForLabel(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:);
  v44 = v11[8];
  v45 = v11[2];
  OUTLINED_FUNCTION_65_2();

  return v50(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = v11[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187();
  v11[10] = v13;
  OUTLINED_FUNCTION_12_6(v13, xmmword_42BF20);
  if (v12)
  {
    type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    v13[3].n128_u64[1] = 0;
    v13[4].n128_u64[0] = 0;
  }

  v14 = v11[9];
  v15 = v11[3];
  v13[3].n128_u64[0] = v12;
  OUTLINED_FUNCTION_39_0();
  v13[4].n128_u64[1] = v16;
  v13[5].n128_u64[0] = 0xD000000000000015;
  v13[5].n128_u64[1] = v17;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v18);
  v19 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_58(v19);
  v20 = v11[9];
  OUTLINED_FUNCTION_225_0();
  if (v21)
  {

    outlined destroy of SpeakableString?(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_16_0();
    v24();
  }

  v25 = v11[4];
  OUTLINED_FUNCTION_27_2();
  v13[8].n128_u64[0] = 0xD000000000000011;
  v13[8].n128_u64[1] = v26;
  if (v25)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    v13[9].n128_u64[1] = 0;
    v13[10].n128_u64[0] = 0;
  }

  v27 = v11[8];
  v28 = v11[5];
  v13[9].n128_u64[0] = v25;
  OUTLINED_FUNCTION_39_0();
  v13[10].n128_u64[1] = v29;
  v13[11].n128_u64[0] = 0xD00000000000001CLL;
  v13[11].n128_u64[1] = v30;
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v31);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v10);
  v33 = v11[8];
  v34 = v11[4];
  if (EnumTagSinglePayload == 1)
  {
    v35 = v11[4];

    outlined destroy of SpeakableString?(v33, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    OUTLINED_FUNCTION_228_0();
    OUTLINED_FUNCTION_6_0();
    v37 = *(v36 + 32);
    OUTLINED_FUNCTION_16_0();
    v38();
  }

  v39 = v11[6];
  OUTLINED_FUNCTION_27_2();
  v13[14].n128_u64[0] = 0xD000000000000011;
  v13[14].n128_u64[1] = v40;
  v41 = 0;
  if (v39)
  {
    v41 = type metadata accessor for DialogPersonHandle();
  }

  else
  {
    v13[15].n128_u64[1] = 0;
    v13[16].n128_u64[0] = 0;
  }

  v13[15].n128_u64[0] = v39;
  v13[16].n128_u64[1] = v41;
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v11[11] = v42;
  *v42 = v43;
  v42[1] = StartCallCATs.unsupportedContactsNoHandleForLabel(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:);
  v44 = v11[7];
  OUTLINED_FUNCTION_65_2();

  return v48(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

void StartCallCATs.unsupportedContactsNoHandleForLabel(intent:preferredCallProvider:unsupportedPerson:unsupportedPersonHandleLabel:unsupportedHandle:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v38[-v15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_12_6(v17, xmmword_42BF20);
  if (v7)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v18 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
  }

  *(v17 + 48) = v18;
  OUTLINED_FUNCTION_27_2();
  *(v17 + 72) = v19;
  *(v17 + 80) = 0xD000000000000015;
  *(v17 + 88) = v20;
  outlined init with copy of SpeakableString?(v5, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = type metadata accessor for SpeakableString();
  v22 = OUTLINED_FUNCTION_221_0();
  OUTLINED_FUNCTION_9_40(v22, v23, v21);
  if (v24)
  {

    outlined destroy of SpeakableString?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
  }

  else
  {
    *(v17 + 120) = v21;
    __swift_allocate_boxed_opaque_existential_1((v17 + 96));
    OUTLINED_FUNCTION_40(v21);
    (*(v25 + 32))();
  }

  OUTLINED_FUNCTION_27_2();
  *(v17 + 128) = 0xD000000000000011;
  *(v17 + 136) = v26;
  if (v3)
  {
    type metadata accessor for DialogPerson();
    v27 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v17 + 152) = 0;
    *(v17 + 160) = 0;
  }

  *(v17 + 144) = v27;
  OUTLINED_FUNCTION_27_2();
  *(v17 + 168) = v28;
  *(v17 + 176) = 0xD00000000000001CLL;
  *(v17 + 184) = v29;
  v30 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v30, v31, v32, v33);
  OUTLINED_FUNCTION_9_40(v13, 1, v21);
  if (v24)
  {

    outlined destroy of SpeakableString?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v17 + 192) = 0u;
    *(v17 + 208) = 0u;
  }

  else
  {
    *(v17 + 216) = v21;
    __swift_allocate_boxed_opaque_existential_1((v17 + 192));
    OUTLINED_FUNCTION_40(v21);
    (*(v34 + 32))();
  }

  OUTLINED_FUNCTION_27_2();
  *(v17 + 224) = 0xD000000000000011;
  *(v17 + 232) = v35;
  if (v1)
  {
    v36 = type metadata accessor for DialogPersonHandle();
    v37 = v1;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_18_2();
    *(v17 + 248) = 0;
    *(v17 + 256) = 0;
  }

  *(v17 + 240) = v37;
  *(v17 + 264) = v36;
  OUTLINED_FUNCTION_171();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.unsupportedContactsNoUsableHandleForRedial()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(52);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.unsupportedContactsUnsupportedMmiUssd()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(47);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.unsupportedDestinationType()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.unsupportedDeviceFaceTimeLink(device:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.unsupportedDeviceFaceTimeLink(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedDeviceFaceTimeLink(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(39);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_111_6(39);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.unsupportedDeviceFaceTimeLink(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedDeviceGroupFaceTime(device:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.unsupportedDeviceGroupFaceTime(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedDeviceGroupFaceTime(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(40);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_111_6(40);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.unsupportedDeviceGroupFaceTime(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedPreferredCallProvider(intent:device:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_7_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_12_6(v2, xmmword_424FF0);
  if (v1)
  {
    v3 = type metadata accessor for PhoneStartCallIntent(0);
    v4 = v1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_15_9(v3, v4);
  if (v0)
  {
    v5 = type metadata accessor for SirikitDeviceState();
    v6 = v0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_192_0(v5, v6);
  OUTLINED_FUNCTION_202_0();

  OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.unsupportedPreferredCallProvider(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedPreferredCallProvider(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_153(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_424FF0);
  if (v12)
  {
    v15 = type metadata accessor for PhoneStartCallIntent(0);
    v16 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14();
  }

  v17 = *(v10 + 32);
  OUTLINED_FUNCTION_15_9(v15, v16);
  v18 = 0;
  if (v17)
  {
    v18 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v18);
  v19 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_22_19(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_44_2(v21);
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_65_2();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_424FF0);
  if (v12)
  {
    v15 = type metadata accessor for PhoneStartCallIntent(0);
    v16 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14();
  }

  v17 = *(v10 + 24);
  OUTLINED_FUNCTION_15_9(v15, v16);
  v18 = 0;
  if (v17)
  {
    v18 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v18);
  v19 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_61_4(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_114_0(v21);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_131_3(42);
  OUTLINED_FUNCTION_65_2();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t StartCallCATs.unsupportedPreferredCallProvider(intent:device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedPreferredCallProvider(intent:device:)()
{
  OUTLINED_FUNCTION_97_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_12_6(v2, xmmword_424FF0);
  if (v1)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_181(v4, v5);
  if (v0)
  {
    v6 = type metadata accessor for SirikitDeviceState();
    v7 = v0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_71_12();
  }

  OUTLINED_FUNCTION_164_1(v6, v7);
  OUTLINED_FUNCTION_62_3();

  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_29(42);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderAccountSetupRequired(intent:device:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_7_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_12_6(v2, xmmword_424FF0);
  if (v1)
  {
    v3 = type metadata accessor for PhoneStartCallIntent(0);
    v4 = v1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_15_9(v3, v4);
  if (v0)
  {
    v5 = type metadata accessor for SirikitDeviceState();
    v6 = v0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_192_0(v5, v6);
  OUTLINED_FUNCTION_202_0();

  OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderAccountSetupRequired(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderAccountSetupRequired(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_153(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_424FF0);
  if (v12)
  {
    v15 = type metadata accessor for PhoneStartCallIntent(0);
    v16 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14();
  }

  v17 = *(v10 + 32);
  OUTLINED_FUNCTION_15_9(v15, v16);
  v18 = 0;
  if (v17)
  {
    v18 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v18);
  v19 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_22_19(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_44_2(v21);
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_65_2();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_424FF0);
  if (v12)
  {
    v15 = type metadata accessor for PhoneStartCallIntent(0);
    v16 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14();
  }

  v17 = *(v10 + 24);
  OUTLINED_FUNCTION_15_9(v15, v16);
  v18 = 0;
  if (v17)
  {
    v18 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v18);
  v19 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_61_4(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_114_0(v21);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_131_3(62);
  OUTLINED_FUNCTION_65_2();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderAccountSetupRequired(intent:device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderAccountSetupRequired(intent:device:)()
{
  OUTLINED_FUNCTION_97_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_12_6(v2, xmmword_424FF0);
  if (v1)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_181(v4, v5);
  if (v0)
  {
    v6 = type metadata accessor for SirikitDeviceState();
    v7 = v0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_71_12();
  }

  OUTLINED_FUNCTION_164_1(v6, v7);
  OUTLINED_FUNCTION_62_3();

  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_29(62);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderEmergencyCallProviderNotAccessible()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(76);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderProviderDisabledInSettings()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(68);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderSettingsRestricted(intent:device:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_7_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_12_6(v2, xmmword_424FF0);
  if (v1)
  {
    v3 = type metadata accessor for PhoneStartCallIntent(0);
    v4 = v1;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_15_9(v3, v4);
  if (v0)
  {
    v5 = type metadata accessor for SirikitDeviceState();
    v6 = v0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_192_0(v5, v6);
  OUTLINED_FUNCTION_202_0();

  OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderSettingsRestricted(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderSettingsRestricted(intent:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_153(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_424FF0);
  if (v12)
  {
    v15 = type metadata accessor for PhoneStartCallIntent(0);
    v16 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14();
  }

  v17 = *(v10 + 32);
  OUTLINED_FUNCTION_15_9(v15, v16);
  v18 = 0;
  if (v17)
  {
    v18 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v18);
  v19 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_22_19(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_44_2(v21);
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_65_2();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_424FF0);
  if (v12)
  {
    v15 = type metadata accessor for PhoneStartCallIntent(0);
    v16 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14();
  }

  v17 = *(v10 + 24);
  OUTLINED_FUNCTION_15_9(v15, v16);
  v18 = 0;
  if (v17)
  {
    v18 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_140_2(v18);
  v19 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_61_4(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_114_0(v21);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_131_3(60);
  OUTLINED_FUNCTION_65_2();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderSettingsRestricted(intent:device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderSettingsRestricted(intent:device:)()
{
  OUTLINED_FUNCTION_97_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_12_6(v2, xmmword_424FF0);
  if (v1)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_181(v4, v5);
  if (v0)
  {
    v6 = type metadata accessor for SirikitDeviceState();
    v7 = v0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_71_12();
  }

  OUTLINED_FUNCTION_164_1(v6, v7);
  OUTLINED_FUNCTION_62_3();

  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_29(60);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderTelephonyUnsupported(device:isFaceTimeOnlyDevice:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_130_3();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FF0);
  if (v1)
  {
    type metadata accessor for SirikitDeviceState();
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_222_0(v4, v5);
  OUTLINED_FUNCTION_169_0(&type metadata for Bool);
  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderTelephonyUnsupported(device:isFaceTimeOnlyDevice:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderTelephonyUnsupported(device:isFaceTimeOnlyDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_50_0(v13);
  OUTLINED_FUNCTION_0_2(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[7] = 0;
    v11[8] = 0;
  }

  v15 = *(v10 + 64);
  v11[6] = v12;
  OUTLINED_FUNCTION_39_0();
  v11[11] = v16;
  OUTLINED_FUNCTION_73_1(v17);
  v18 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_101_5(v19);

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_16_12(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_24(v21);
  OUTLINED_FUNCTION_82_9();
  OUTLINED_FUNCTION_65_2();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_51(v13);
  OUTLINED_FUNCTION_0_2(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[7] = 0;
    v11[8] = 0;
  }

  v15 = *(v10 + 56);
  v11[6] = v12;
  OUTLINED_FUNCTION_39_0();
  v11[11] = v16;
  OUTLINED_FUNCTION_73_1(v17);
  v18 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_101_5(v19);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_39(v20);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderTelephonyUnsupported(device:isFaceTimeOnlyDevice:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.unsupportedPreferredCallProviderTelephonyUnsupported(device:isFaceTimeOnlyDevice:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FF0);
  if (v0)
  {
    type metadata accessor for SirikitDeviceState();
    v2 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  v1[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_101_5(v3);
  v1[5].n128_u64[1] = v4;
  OUTLINED_FUNCTION_168_1(&type metadata for Bool);
  OUTLINED_FUNCTION_149_0();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

unint64_t lazy protocol witness table accessor for type StartCallCATs.Properties and conformance StartCallCATs.Properties()
{
  result = lazy protocol witness table cache variable for type StartCallCATs.Properties and conformance StartCallCATs.Properties;
  if (!lazy protocol witness table cache variable for type StartCallCATs.Properties and conformance StartCallCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATs.Properties and conformance StartCallCATs.Properties);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartCallCATs.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xBC)
  {
    if (a2 + 68 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 68) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 69;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x45;
  v5 = v6 - 69;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StartCallCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 68 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 68) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xBC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xBB)
  {
    v6 = ((a2 - 188) >> 8) + 1;
    *result = a2 + 68;
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
          *result = a2 + 68;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_101_5(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 80) = 0xD000000000000014;
  return result;
}

uint64_t OUTLINED_FUNCTION_109_4()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_116_2()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

void OUTLINED_FUNCTION_119_6()
{
  *(v4 + 192) = v1;
  *(v4 + 216) = v3;
  *(v4 + 224) = v5;
  *(v4 + 232) = (v2 - 32) | 0x8000000000000000;
  *(v4 + 240) = v0;
  *(v4 + 264) = v3;
  *(v4 + 272) = 0x636E657265666E69;
  *(v4 + 280) = 0xEF656372756F5365;
}

uint64_t OUTLINED_FUNCTION_124_2@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 144) = v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v5;
  *(v4 + 184) = (v3 - 32) | 0x8000000000000000;
  *(v4 + 192) = v1;
  *(v4 + 216) = a1;
  *(v4 + 224) = 0x656369766564;
  *(v4 + 232) = 0xE600000000000000;
  return 0;
}

void OUTLINED_FUNCTION_128_2()
{
  *(v3 + 240) = v2;
  *(v3 + 264) = v1;
  strcpy((v3 + 272), "isWalkieTalkie");
  *(v3 + 287) = -18;
  *(v3 + 288) = v0;
}

uint64_t OUTLINED_FUNCTION_132_1(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "hintIdentifier");
  *(v2 + 95) = -18;
  return result;
}

void OUTLINED_FUNCTION_133_4(uint64_t a1@<X8>)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  strcpy((v2 + 128), "rePromptCount");
  *(v2 + 142) = -4864;
}

void OUTLINED_FUNCTION_136_5()
{
  *(v2 + 168) = v0;
  strcpy((v2 + 176), "startingOver");
  *(v2 + 189) = 0;
  *(v2 + 190) = -5120;
  *(v2 + 192) = v1;
}

uint64_t OUTLINED_FUNCTION_140_2(uint64_t result)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_142_1(uint64_t result)
{
  v2[6] = v1;
  v2[9] = result;
  v2[10] = 0x656772656D457369;
  v2[11] = 0xEB0000000079636ELL;
  return result;
}

uint64_t OUTLINED_FUNCTION_150_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  *(result + 40) = 0xE800000000000000;
  return result;
}

double OUTLINED_FUNCTION_160_2()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_164_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 96) = a2;
  *(v2 + 120) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_165_1@<X0>(uint64_t a1@<X0>, int *a2@<X8>)
{
  v4 = a2[1];
  v6 = a2 + *a2;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0xD000000000000016;
}

uint64_t OUTLINED_FUNCTION_168_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 120) = a1;
  *(v2 + 96) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_169_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 120) = a1;
  *(v2 + 96) = v1 & 1;
}

void OUTLINED_FUNCTION_173_0(uint64_t a1@<X8>)
{
  *(v3 + 216) = a1;
  *(v3 + 224) = 0xD000000000000015;
  *(v3 + 232) = v1;
  *(v3 + 264) = a1;
  *(v3 + 240) = v2;
}

uint64_t OUTLINED_FUNCTION_181@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[9] = result;
  v2[10] = a2;
  v2[11] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_191@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of SpeakableString?(a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_192_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 96) = a2;
  *(v2 + 120) = result;
  return result;
}

void OUTLINED_FUNCTION_194(char a1@<W8>)
{
  *(v3 + 312) = v2;
  *(v3 + 320) = v4 + 14;
  *(v3 + 328) = v1;
  *(v3 + 360) = v2;
  *(v3 + 336) = a1;
}

uint64_t OUTLINED_FUNCTION_197_0(uint64_t result)
{
  v2[21] = result;
  v2[22] = v3 - 2;
  v2[23] = (v1 - 32) | 0x8000000000000000;
  return result;
}

uint64_t *OUTLINED_FUNCTION_201()
{
  *(v1 + 120) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 96));
}

uint64_t OUTLINED_FUNCTION_202_0()
{
}

uint64_t OUTLINED_FUNCTION_203@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[9] = v2;
  a1[10] = v3 - 8;
  a1[11] = a2;
  return 0;
}

double OUTLINED_FUNCTION_214_0()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_215_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[9] = v2;
  result[10] = v3;
  result[11] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_217_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[15] = a1;
  v2[16] = a2;
  v2[17] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_218_0(uint64_t result)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_220_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_222_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[9] = result;
  v2[10] = 0xD000000000000014;
  v2[11] = a2;
  return result;
}

uint64_t *OUTLINED_FUNCTION_228_0()
{
  *(v1 + 216) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 192));
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::Properties_optional __swiftcall StartCallCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_33_2();
  if (v1 >= 0x45)
  {
    return 69;
  }

  else
  {
    return v1;
  }
}

unint64_t StartCallCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000028;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
    case 36:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
    case 28:
      result = 0xD000000000000026;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 47:
      result = 0xD000000000000023;
      break;
    case 8:
    case 26:
    case 29:
    case 60:
      result = 0xD000000000000024;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
    case 34:
      result = 0xD00000000000002ELL;
      break;
    case 11:
    case 15:
    case 21:
    case 33:
    case 43:
      result = 0xD000000000000025;
      break;
    case 12:
      result = 0xD00000000000002CLL;
      break;
    case 13:
      result = 0xD000000000000029;
      break;
    case 14:
    case 61:
      result = 0xD000000000000027;
      break;
    case 16:
    case 55:
      result = 0xD00000000000002BLL;
      break;
    case 17:
    case 32:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 19:
    case 52:
    case 63:
      result = 0xD00000000000002ALL;
      break;
    case 20:
    case 24:
    case 38:
    case 59:
      result = 0xD00000000000002FLL;
      break;
    case 22:
    case 44:
      result = 0xD000000000000022;
      break;
    case 23:
    case 25:
      result = 0xD000000000000031;
      break;
    case 27:
    case 54:
      result = 0xD000000000000033;
      break;
    case 30:
    case 46:
      result = 0xD000000000000016;
      break;
    case 31:
      result = 0xD000000000000013;
      break;
    case 35:
      result = 0xD000000000000032;
      break;
    case 37:
    case 45:
    case 62:
      result = 0xD000000000000028;
      break;
    case 39:
    case 41:
      result = 0xD000000000000021;
      break;
    case 40:
      result = 0xD00000000000001DLL;
      break;
    case 42:
      result = 0xD00000000000001BLL;
      break;
    case 48:
    case 56:
      result = 0xD000000000000036;
      break;
    case 49:
      result = 0xD00000000000003ALL;
      break;
    case 50:
      result = 0xD000000000000037;
      break;
    case 51:
      result = 0xD00000000000003BLL;
      break;
    case 53:
      result = 0xD000000000000038;
      break;
    case 57:
      result = 0xD00000000000002DLL;
      break;
    case 58:
      result = 0xD000000000000034;
      break;
    case 64:
    case 68:
      result = 0xD00000000000003ELL;
      break;
    case 65:
      result = 0xD00000000000004CLL;
      break;
    case 66:
      result = 0xD000000000000044;
      break;
    case 67:
      result = 0xD00000000000003CLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.businessCallingFeatureDisabled(device:isFaceTimeOnlyDevice:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.businessCallingFeatureDisabled(device:isFaceTimeOnlyDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_51(v13);
  OUTLINED_FUNCTION_3_0(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[7] = 0;
    v11[8] = 0;
  }

  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_39_0();
  v11[11] = v15;
  OUTLINED_FUNCTION_73_1(v16);
  v17 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_92_6(v18);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_117(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_39(v20);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::BusinessCallingFeatureDisabledDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::BusinessCallingFeatureDisabledDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t StartCallCATsSimple.businessCallingFeatureDisabledAsLabels(device:isFaceTimeOnlyDevice:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.businessCallingFeatureDisabledAsLabels(device:isFaceTimeOnlyDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_51(v13);
  OUTLINED_FUNCTION_3_0(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[7] = 0;
    v11[8] = 0;
  }

  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_39_0();
  v11[11] = v15;
  OUTLINED_FUNCTION_73_1(v16);
  v17 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_92_6(v18);
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v19);
  lazy protocol witness table accessor for type StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds and conformance StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds();
  OUTLINED_FUNCTION_9();
  *v12 = v20;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_65_2();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds and conformance StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds and conformance StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds and conformance StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds and conformance StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds and conformance StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds and conformance StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds and conformance StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.confirmApp(appName:isPhoneApp:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v20 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  v12 = *(v1 + 64);
  OUTLINED_FUNCTION_40_16();
  OUTLINED_FUNCTION_73_1(v13);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_61_4(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_19_2(v15);
  v17 = OUTLINED_FUNCTION_38_1(20);

  return v18(v17);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmAppDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ConfirmAppDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmAppDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ConfirmAppDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.ConfirmAppDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.ConfirmAppDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t StartCallCATsSimple.confirmAppAsLabels(appName:isPhoneApp:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v20 = v3;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_50_0(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_16_0();
    v12();
  }

  v13 = *(v2 + 64);
  OUTLINED_FUNCTION_40_16();
  OUTLINED_FUNCTION_73_1(v14);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v15);
  lazy protocol witness table accessor for type StartCallCATsSimple.ConfirmAppDialogIds and conformance StartCallCATsSimple.ConfirmAppDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v16;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v17 = OUTLINED_FUNCTION_29_9(20);

  return v18(v17);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ConfirmAppDialogIds and conformance StartCallCATsSimple.ConfirmAppDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmAppDialogIds and conformance StartCallCATsSimple.ConfirmAppDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmAppDialogIds and conformance StartCallCATsSimple.ConfirmAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmAppDialogIds and conformance StartCallCATsSimple.ConfirmAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmAppDialogIds and conformance StartCallCATsSimple.ConfirmAppDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmAppDialogIds and conformance StartCallCATsSimple.ConfirmAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmAppDialogIds and conformance StartCallCATsSimple.ConfirmAppDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.confirmCallCapability(callCapability:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_34_24(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(31);

  return v15(v14);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmCallCapabilityDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmCallCapabilityDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ConfirmCallCapabilityDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.ConfirmCallCapabilityDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = 0xE700000000000000;
}

uint64_t StartCallCATsSimple.confirmCallCapabilityAsLabels(callCapability:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_34_24(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v12);
  lazy protocol witness table accessor for type StartCallCATsSimple.ConfirmCallCapabilityDialogIds and conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v13;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v14 = OUTLINED_FUNCTION_29_9(31);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ConfirmCallCapabilityDialogIds and conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmCallCapabilityDialogIds and conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmCallCapabilityDialogIds and conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmCallCapabilityDialogIds and conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmCallCapabilityDialogIds and conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmCallCapabilityDialogIds and conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmCallCapabilityDialogIds and conformance StartCallCATsSimple.ConfirmCallCapabilityDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.confirmContacts(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_147_2(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t StartCallCATsSimple.confirmContacts(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_162_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = swift_allocObject();
  v12[7] = v14;
  *(v14 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_47_2();
  *(v15 + 32) = v16;
  *(v15 + 40) = 0xEA0000000000656DLL;
  *(v15 + 48) = v11;
  OUTLINED_FUNCTION_27_2();
  v19 = OUTLINED_FUNCTION_203(v17, v18);
  if (v10)
  {
    v19 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  v20 = v12[3];
  *(v14 + 96) = v10;
  OUTLINED_FUNCTION_106_0(v19, "isTopMatchConfirmation");
  if (v20)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  OUTLINED_FUNCTION_146_1();
  OUTLINED_FUNCTION_197_0(v21);
  OUTLINED_FUNCTION_119_6();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v22);
  v23 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_164_2(v23);
  if (v24)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v13;
    __swift_allocate_boxed_opaque_existential_1((v14 + 288));
    OUTLINED_FUNCTION_40(v13);
    (*(v25 + 32))();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v12[8] = v26;
  *v26 = v27;
  v26[1] = StartCallCATs.confirmContacts(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:);
  v28 = v12[5];
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_60();

  return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmContactsDialogIds_optional __swiftcall StartCallCATsSimple.ConfirmContactsDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.ConfirmContactsDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t StartCallCATsSimple.ConfirmContactsDialogIds.rawValue.getter(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
    case 2:
    case 6:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmContactsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ConfirmContactsDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmContactsDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ConfirmContactsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.ConfirmContactsDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.ConfirmContactsDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.confirmContactsAsLabels(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_147_2(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    v14 = OUTLINED_FUNCTION_49();

    return v15(v14);
  }
}

uint64_t StartCallCATsSimple.confirmContactsAsLabels(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_162_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = swift_allocObject();
  v12[7] = v14;
  *(v14 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_47_2();
  *(v15 + 32) = v16;
  *(v15 + 40) = 0xEA0000000000656DLL;
  *(v15 + 48) = v11;
  OUTLINED_FUNCTION_27_2();
  v19 = OUTLINED_FUNCTION_203(v17, v18);
  if (v10)
  {
    v19 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  v20 = v12[3];
  *(v14 + 96) = v10;
  OUTLINED_FUNCTION_106_0(v19, "isTopMatchConfirmation");
  if (v20)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  OUTLINED_FUNCTION_146_1();
  OUTLINED_FUNCTION_197_0(v21);
  OUTLINED_FUNCTION_119_6();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v22);
  v23 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_164_2(v23);
  if (v24)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v13;
    __swift_allocate_boxed_opaque_existential_1((v14 + 288));
    OUTLINED_FUNCTION_40(v13);
    (*(v25 + 32))();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v26 = swift_task_alloc();
  v12[8] = v26;
  lazy protocol witness table accessor for type StartCallCATsSimple.ConfirmContactsDialogIds and conformance StartCallCATsSimple.ConfirmContactsDialogIds();
  OUTLINED_FUNCTION_9();
  *v26 = v27;
  v26[1] = StartCallCATsSimple.confirmContactsAsLabels(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:);
  v28 = v12[5];
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_60();

  return v34(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ConfirmContactsDialogIds and conformance StartCallCATsSimple.ConfirmContactsDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmContactsDialogIds and conformance StartCallCATsSimple.ConfirmContactsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmContactsDialogIds and conformance StartCallCATsSimple.ConfirmContactsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmContactsDialogIds and conformance StartCallCATsSimple.ConfirmContactsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmContactsDialogIds and conformance StartCallCATsSimple.ConfirmContactsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmContactsDialogIds and conformance StartCallCATsSimple.ConfirmContactsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmContactsDialogIds and conformance StartCallCATsSimple.ConfirmContactsDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.confirmDestinationType(destinationType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_35_26(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(32);

  return v15(v14);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmDestinationTypeDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ConfirmDestinationTypeDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmDestinationTypeDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ConfirmDestinationTypeDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.confirmDestinationTypeAsLabels(destinationType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_35_26(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v12);
  lazy protocol witness table accessor for type StartCallCATsSimple.ConfirmDestinationTypeDialogIds and conformance StartCallCATsSimple.ConfirmDestinationTypeDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v13;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v14 = OUTLINED_FUNCTION_29_9(32);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ConfirmDestinationTypeDialogIds and conformance StartCallCATsSimple.ConfirmDestinationTypeDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmDestinationTypeDialogIds and conformance StartCallCATsSimple.ConfirmDestinationTypeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmDestinationTypeDialogIds and conformance StartCallCATsSimple.ConfirmDestinationTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmDestinationTypeDialogIds and conformance StartCallCATsSimple.ConfirmDestinationTypeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmDestinationTypeDialogIds and conformance StartCallCATsSimple.ConfirmDestinationTypeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmDestinationTypeDialogIds and conformance StartCallCATsSimple.ConfirmDestinationTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmDestinationTypeDialogIds and conformance StartCallCATsSimple.ConfirmDestinationTypeDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.confirmPreferredCallProvider(preferredCallProvider:device:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t StartCallCATsSimple.confirmPreferredCallProvider(preferredCallProvider:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_101_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_46_15(v13);
  *(v14 + 16) = xmmword_424FF0;
  v15 = OUTLINED_FUNCTION_0_8(v14, "preferredCallProvider");
  OUTLINED_FUNCTION_54_2(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v17 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_19_42(v17) == 1)
  {
    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v19 = *(v18 + 32);
    OUTLINED_FUNCTION_16_0();
    v20();
  }

  v21 = *(v11 + 24);
  OUTLINED_FUNCTION_9_79();
  v12[10] = v22;
  v12[11] = v23;
  v24 = 0;
  if (v21)
  {
    v24 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_218_0(v24);
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 56) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_114_0(v25);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmPreferredCallProviderDialogIds_optional __swiftcall StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmPreferredCallProviderDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ConfirmPreferredCallProviderDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.confirmPreferredCallProviderAsLabels(preferredCallProvider:device:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t StartCallCATsSimple.confirmPreferredCallProviderAsLabels(preferredCallProvider:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_101_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_46_15(v13);
  *(v14 + 16) = xmmword_424FF0;
  v15 = OUTLINED_FUNCTION_0_8(v14, "preferredCallProvider");
  OUTLINED_FUNCTION_54_2(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v17 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_19_42(v17) == 1)
  {
    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v19 = *(v18 + 32);
    OUTLINED_FUNCTION_16_0();
    v20();
  }

  v21 = *(v11 + 24);
  OUTLINED_FUNCTION_9_79();
  v12[10] = v22;
  v12[11] = v23;
  v24 = 0;
  if (v21)
  {
    v24 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_218_0(v24);
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v25 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v25);
  lazy protocol witness table accessor for type StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds and conformance StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds();
  OUTLINED_FUNCTION_9();
  *v21 = v26;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_65_2();

  return v32(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds and conformance StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds and conformance StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds and conformance StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds and conformance StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds and conformance StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds and conformance StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds and conformance StartCallCATsSimple.ConfirmPreferredCallProviderDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguateApps(isOnlyPhoneAndFaceTime:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateApps(isOnlyPhoneAndFaceTime:)()
{
  OUTLINED_FUNCTION_75_6();
  v12 = v1;
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = v5;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v2;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v7;
  *v7 = v8;
  v7[1] = AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:);
  v9 = *(v0 + 16);

  return v11(0xD00000000000001ALL, 0x8000000000454F80, v3);
}

uint64_t StartCallCATsSimple.DisambiguateAppsDialogIds.rawValue.getter()
{
  OUTLINED_FUNCTION_27_2();
  if (v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x32676F6C616964;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StartCallCATsSimple.DisambiguateAppsDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateAppsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguateAppsDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateAppsDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.DisambiguateAppsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.DisambiguateAppsDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.DisambiguateAppsDialogIds.rawValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t StartCallCATsSimple.disambiguateAppsAsLabels(isOnlyPhoneAndFaceTime:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateAppsAsLabels(isOnlyPhoneAndFaceTime:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000016;
  *(v3 + 40) = v4;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateAppsDialogIds and conformance StartCallCATsSimple.DisambiguateAppsDialogIds();
  OUTLINED_FUNCTION_9();
  *v6 = v7;
  v6[1] = AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:);
  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateAppsDialogIds and conformance StartCallCATsSimple.DisambiguateAppsDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsDialogIds and conformance StartCallCATsSimple.DisambiguateAppsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsDialogIds and conformance StartCallCATsSimple.DisambiguateAppsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsDialogIds and conformance StartCallCATsSimple.DisambiguateAppsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsDialogIds and conformance StartCallCATsSimple.DisambiguateAppsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsDialogIds and conformance StartCallCATsSimple.DisambiguateAppsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsDialogIds and conformance StartCallCATsSimple.DisambiguateAppsDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguateAppsVoiceMode(appNames:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateAppsVoiceMode(appNames:)()
{
  OUTLINED_FUNCTION_75_6();
  v12 = v1;
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  *(v0 + 32) = v3;
  v4 = OUTLINED_FUNCTION_12_2(v3, xmmword_424FD0);
  v4[2].n128_u64[0] = v5 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  v4[2].n128_u64[1] = 0xE800000000000000;
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[3].n128_u64[0] = v2;
  v6 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v11 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_39(v8);

  return v11(0xD000000000000023, 0x8000000000454FA0, v3);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateAppsVoiceModeDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateAppsVoiceModeDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t StartCallCATsSimple.disambiguateAppsVoiceModeAsLabels(appNames:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateAppsVoiceModeAsLabels(appNames:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_12_2(v4, xmmword_424FD0);
  v5[2].n128_u64[0] = v6 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  v5[2].n128_u64[1] = 0xE800000000000000;
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds and conformance StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(35);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds and conformance StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds and conformance StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds and conformance StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds and conformance StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds and conformance StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds and conformance StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds and conformance StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguateCallCapability()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

BOOL StartCallCATsSimple.DisambiguateCallCapabilityDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.DisambiguateCallCapabilityDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguateCallCapabilityDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.DisambiguateCallCapabilityDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t StartCallCATsSimple.disambiguateCallCapabilityAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateCallCapabilityDialogIds and conformance StartCallCATsSimple.DisambiguateCallCapabilityDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(36);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateCallCapabilityDialogIds and conformance StartCallCATsSimple.DisambiguateCallCapabilityDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateCallCapabilityDialogIds and conformance StartCallCATsSimple.DisambiguateCallCapabilityDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateCallCapabilityDialogIds and conformance StartCallCATsSimple.DisambiguateCallCapabilityDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateCallCapabilityDialogIds and conformance StartCallCATsSimple.DisambiguateCallCapabilityDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateCallCapabilityDialogIds and conformance StartCallCATsSimple.DisambiguateCallCapabilityDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateCallCapabilityDialogIds and conformance StartCallCATsSimple.DisambiguateCallCapabilityDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateCallCapabilityDialogIds and conformance StartCallCATsSimple.DisambiguateCallCapabilityDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguateContacts(requestedRelationship:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "requestedRelationship");
  OUTLINED_FUNCTION_54_2(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_61_4(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateContactsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguateContactsDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateContactsDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.DisambiguateContactsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.DisambiguateContactsDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.DisambiguateContactsDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t StartCallCATsSimple.disambiguateContactsAsLabels(requestedRelationship:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "requestedRelationship");
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v11);
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsDialogIds and conformance StartCallCATsSimple.DisambiguateContactsDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_65_1();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsDialogIds and conformance StartCallCATsSimple.DisambiguateContactsDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsDialogIds and conformance StartCallCATsSimple.DisambiguateContactsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsDialogIds and conformance StartCallCATsSimple.DisambiguateContactsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsDialogIds and conformance StartCallCATsSimple.DisambiguateContactsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsDialogIds and conformance StartCallCATsSimple.DisambiguateContactsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsDialogIds and conformance StartCallCATsSimple.DisambiguateContactsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsDialogIds and conformance StartCallCATsSimple.DisambiguateContactsDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguateContactsForeignEmergency(device:nonLocalEmergencyContact:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateContactsForeignEmergency(device:nonLocalEmergencyContact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_0_2(v14, xmmword_424FF0);
  if (v12)
  {
    v15 = type metadata accessor for SirikitDeviceState();
    v16 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14();
  }

  v17 = *(v10 + 24);
  v11[6] = v16;
  v11[9] = v15;
  v11[10] = 0xD000000000000018;
  v18 = OUTLINED_FUNCTION_129_4(0x80000000004623D0);
  if (v17)
  {
    v18 = type metadata accessor for DialogPerson();
  }

  else
  {
    v11[13] = 0;
    v11[14] = 0;
  }

  OUTLINED_FUNCTION_140_2(v18);
  v19 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_17_53();

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_61_4(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_114_0(v21);
  OUTLINED_FUNCTION_183_1();
  OUTLINED_FUNCTION_60();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

BOOL StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t StartCallCATsSimple.disambiguateContactsForeignEmergencyAsLabels(device:nonLocalEmergencyContact:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateContactsForeignEmergencyAsLabels(device:nonLocalEmergencyContact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_0_2(v14, xmmword_424FF0);
  if (v12)
  {
    v15 = type metadata accessor for SirikitDeviceState();
    v16 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14();
  }

  v17 = *(v10 + 24);
  v11[6] = v16;
  v11[9] = v15;
  v11[10] = 0xD000000000000018;
  v18 = OUTLINED_FUNCTION_129_4(0x80000000004623D0);
  if (v17)
  {
    v18 = type metadata accessor for DialogPerson();
  }

  else
  {
    v11[13] = 0;
    v11[14] = 0;
  }

  OUTLINED_FUNCTION_140_2(v18);
  v19 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  OUTLINED_FUNCTION_17_53();

  v20 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v20);
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v12 = v21;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_60();

  return v27(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsForeignEmergencyDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguateContactsHandles(isRequestForHandle:isPhoneNumberHandleDisambiguation:requestedContact:)(char a1, char a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  *(v4 + 57) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateContactsHandles(isRequestForHandle:isPhoneNumberHandleDisambiguation:requestedContact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_149_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47();
  *(OUTLINED_FUNCTION_51(v15) + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v16 + 32) = v14 | 2;
  *(v16 + 40) = v17;
  *(v16 + 48) = v12;
  OUTLINED_FUNCTION_27_2();
  *(v18 + 72) = v19;
  *(v18 + 80) = v14 + 17;
  *(v18 + 88) = v20;
  *(v18 + 96) = v11;
  OUTLINED_FUNCTION_27_2();
  v21[15] = v22;
  v21[16] = v14;
  v21[17] = v23;
  v24 = 0;
  if (v10)
  {
    v24 = type metadata accessor for DialogPerson();
  }

  else
  {
    v13[19] = 0;
    v13[20] = 0;
  }

  v13[18] = v10;
  v13[21] = v24;
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_117(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_39(v26);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateContactsHandlesDialogIds_optional __swiftcall StartCallCATsSimple.DisambiguateContactsHandlesDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.DisambiguateContactsHandlesDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t StartCallCATsSimple.DisambiguateContactsHandlesDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD00000000000001BLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000019;
  }

  return 0x6574736575716552;
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateContactsHandlesDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguateContactsHandlesDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateContactsHandlesDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.DisambiguateContactsHandlesDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.DisambiguateContactsHandlesDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.DisambiguateContactsHandlesDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.disambiguateContactsHandlesAsLabels(isRequestForHandle:isPhoneNumberHandleDisambiguation:requestedContact:)(char a1, char a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  *(v4 + 57) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateContactsHandlesAsLabels(isRequestForHandle:isPhoneNumberHandleDisambiguation:requestedContact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_149_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47();
  *(OUTLINED_FUNCTION_51(v15) + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v16 + 32) = v14 | 2;
  *(v16 + 40) = v17;
  *(v16 + 48) = v12;
  OUTLINED_FUNCTION_27_2();
  *(v18 + 72) = v19;
  *(v18 + 80) = v14 + 17;
  *(v18 + 88) = v20;
  *(v18 + 96) = v11;
  OUTLINED_FUNCTION_27_2();
  v21[15] = v22;
  v21[16] = v14;
  v21[17] = v23;
  v24 = 0;
  if (v10)
  {
    v24 = type metadata accessor for DialogPerson();
  }

  else
  {
    v13[19] = 0;
    v13[20] = 0;
  }

  v13[18] = v10;
  v13[21] = v24;
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v25 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v25);
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsHandlesDialogIds and conformance StartCallCATsSimple.DisambiguateContactsHandlesDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v26;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_65_2();

  return v32(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsHandlesDialogIds and conformance StartCallCATsSimple.DisambiguateContactsHandlesDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsHandlesDialogIds and conformance StartCallCATsSimple.DisambiguateContactsHandlesDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsHandlesDialogIds and conformance StartCallCATsSimple.DisambiguateContactsHandlesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsHandlesDialogIds and conformance StartCallCATsSimple.DisambiguateContactsHandlesDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsHandlesDialogIds and conformance StartCallCATsSimple.DisambiguateContactsHandlesDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsHandlesDialogIds and conformance StartCallCATsSimple.DisambiguateContactsHandlesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsHandlesDialogIds and conformance StartCallCATsSimple.DisambiguateContactsHandlesDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguateContactsLocalEmergency(localEmergencyServices:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateContactsLocalEmergency(localEmergencyServices:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000016;
  *(v3 + 40) = v4;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_18_37(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_117(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_39(v6);
  OUTLINED_FUNCTION_65_1();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

BOOL StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t StartCallCATsSimple.disambiguateContactsLocalEmergencyAsLabels(localEmergencyServices:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateContactsLocalEmergencyAsLabels(localEmergencyServices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_51(v13) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 32) = 0xD000000000000016;
  *(v14 + 40) = v15;
  *(v11 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *(v11 + 48) = v12;
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v16 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v16);
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v12 = v17;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_65_2();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds and conformance StartCallCATsSimple.DisambiguateContactsLocalEmergencyDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguateContactsPartialList()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(41);

  return v4(v3);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateContactsPartialListDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguateContactsPartialListDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateContactsPartialListDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.DisambiguateContactsPartialListDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.disambiguateContactsPartialListAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsPartialListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsPartialListDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(41);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsPartialListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsPartialListDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsPartialListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsPartialListDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsPartialListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsPartialListDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsPartialListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsPartialListDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsPartialListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsPartialListDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsPartialListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsPartialListDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsPartialListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsPartialListDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguateContactsVoxNoList(personsToDisambiguate:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateContactsVoxNoList(personsToDisambiguate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_162_0();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1();
  v14 = OUTLINED_FUNCTION_51(v13);
  *(v14 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v14, "personsToDisambiguate");
  v15 = 0;
  if (v12)
  {
    v15 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v15);
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_117(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_39(v17);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds.rawValue.getter()
{
  OUTLINED_FUNCTION_27_2();
  if (v0)
  {
    return 0x65766947656D6153;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateContactsVoxNoListDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::DisambiguateContactsVoxNoListDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds.rawValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t StartCallCATsSimple.disambiguateContactsVoxNoListAsLabels(personsToDisambiguate:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.disambiguateContactsVoxNoListAsLabels(personsToDisambiguate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_162_0();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1();
  v14 = OUTLINED_FUNCTION_51(v13);
  *(v14 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v14, "personsToDisambiguate");
  v15 = 0;
  if (v12)
  {
    v15 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v15);
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v16 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v16);
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds();
  OUTLINED_FUNCTION_9();
  *v12 = v17;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_37_28();
  OUTLINED_FUNCTION_65_2();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds and conformance StartCallCATsSimple.DisambiguateContactsVoxNoListDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguateDestinationType()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(37);

  return v4(v3);
}

BOOL StartCallCATsSimple.DisambiguateDestinationTypeDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.DisambiguateDestinationTypeDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguateDestinationTypeDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.DisambiguateDestinationTypeDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t StartCallCATsSimple.disambiguateDestinationTypeAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateDestinationTypeDialogIds and conformance StartCallCATsSimple.DisambiguateDestinationTypeDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(37);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguateDestinationTypeDialogIds and conformance StartCallCATsSimple.DisambiguateDestinationTypeDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateDestinationTypeDialogIds and conformance StartCallCATsSimple.DisambiguateDestinationTypeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateDestinationTypeDialogIds and conformance StartCallCATsSimple.DisambiguateDestinationTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateDestinationTypeDialogIds and conformance StartCallCATsSimple.DisambiguateDestinationTypeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateDestinationTypeDialogIds and conformance StartCallCATsSimple.DisambiguateDestinationTypeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateDestinationTypeDialogIds and conformance StartCallCATsSimple.DisambiguateDestinationTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguateDestinationTypeDialogIds and conformance StartCallCATsSimple.DisambiguateDestinationTypeDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.disambiguatePreferredCallProvider()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(43);

  return v4(v3);
}

BOOL StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t StartCallCATsSimple.disambiguatePreferredCallProviderAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds and conformance StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(43);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds and conformance StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds and conformance StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds and conformance StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds and conformance StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds and conformance StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds and conformance StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds and conformance StartCallCATsSimple.DisambiguatePreferredCallProviderDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.emergencyCountdown()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(28);

  return v4(v3);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::EmergencyCountdownDialogIds_optional __swiftcall StartCallCATsSimple.EmergencyCountdownDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.EmergencyCountdownDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t StartCallCATsSimple.EmergencyCountdownDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x676E696C6C6163;
  }

  OUTLINED_FUNCTION_39_0();
  if (v1 == 1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 7565171;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StartCallCATsSimple.EmergencyCountdownDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::EmergencyCountdownDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.EmergencyCountdownDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::EmergencyCountdownDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.EmergencyCountdownDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.EmergencyCountdownDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.EmergencyCountdownDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.emergencyCountdownAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.EmergencyCountdownDialogIds and conformance StartCallCATsSimple.EmergencyCountdownDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(28);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.EmergencyCountdownDialogIds and conformance StartCallCATsSimple.EmergencyCountdownDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.EmergencyCountdownDialogIds and conformance StartCallCATsSimple.EmergencyCountdownDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.EmergencyCountdownDialogIds and conformance StartCallCATsSimple.EmergencyCountdownDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.EmergencyCountdownDialogIds and conformance StartCallCATsSimple.EmergencyCountdownDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.EmergencyCountdownDialogIds and conformance StartCallCATsSimple.EmergencyCountdownDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.EmergencyCountdownDialogIds and conformance StartCallCATsSimple.EmergencyCountdownDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.EmergencyCountdownDialogIds and conformance StartCallCATsSimple.EmergencyCountdownDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCode(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCode(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FD0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(23);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeDialogIds_optional __swiftcall StartCallCATsSimple.ErrorWithCodeDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.ErrorWithCodeDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ErrorWithCodeDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeAsLabels(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FD0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v6);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v7;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(23);
  OUTLINED_FUNCTION_65_1();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeAirplaneModeEnabled(device:isEmergency:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeAirplaneModeEnabled(device:isEmergency:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FF0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_90_4(v5);
  OUTLINED_FUNCTION_73_1(v6);
  OUTLINED_FUNCTION_18_37(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(42);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeAirplaneModeEnabledDialogIds_optional __swiftcall StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_174_0();
  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeAirplaneModeEnabledDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeAirplaneModeEnabledDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeAirplaneModeEnabledAsLabels(device:isEmergency:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeAirplaneModeEnabledAsLabels(device:isEmergency:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FF0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_90_4(v5);
  OUTLINED_FUNCTION_73_1(v6);
  OUTLINED_FUNCTION_18_37(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(42);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeAppConfigurationRequired(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(47);

  return v15(v14);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeAppConfigurationRequiredDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeAppConfigurationRequiredDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeAppConfigurationRequiredAsLabels(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v12);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v13;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v14 = OUTLINED_FUNCTION_29_9(47);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance StartCallCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeCallInProgress(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeCallInProgress(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FD0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(37);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeCallInProgressDialogIds_optional __swiftcall StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeCallInProgressDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeCallInProgressDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeCallInProgressAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeCallInProgressAsLabels(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FD0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v6);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v7;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(37);
  OUTLINED_FUNCTION_65_1();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallInProgressDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeCallRinging(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeCallRinging(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FD0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(34);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeCallRingingDialogIds_optional __swiftcall StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeCallRingingDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeCallRingingDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeCallRingingAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeCallRingingAsLabels(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FD0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v6);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v7;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(34);
  OUTLINED_FUNCTION_65_1();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallRingingDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeCallingServiceNotAvailable(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeCallingServiceNotAvailable(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FD0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(49);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeCallingServiceNotAvailableDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeCallingServiceNotAvailableDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeCallingServiceNotAvailableAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeCallingServiceNotAvailableAsLabels(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FD0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v6);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v7;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(49);
  OUTLINED_FUNCTION_65_1();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds and conformance StartCallCATsSimple.ErrorWithCodeCallingServiceNotAvailableDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeContactNotSupportedByApp(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(47);

  return v15(v14);
}

BOOL StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeContactNotSupportedByAppAsLabels(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v12);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds and conformance StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v13;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v14 = OUTLINED_FUNCTION_29_9(47);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds and conformance StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds and conformance StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds and conformance StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds and conformance StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds and conformance StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds and conformance StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds and conformance StartCallCATsSimple.ErrorWithCodeContactNotSupportedByAppDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeDownTimeRestrictionEnabled(intent:contacts:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeDownTimeRestrictionEnabled(intent:contacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = *(v10 + 24);
  v11[6] = v15;
  OUTLINED_FUNCTION_51_28();
  v11[9] = v18;
  v11[10] = v17 & 0xFFFFFFFFFFFFLL | 0x7374000000000000;
  v19 = OUTLINED_FUNCTION_129_4(0xE800000000000000);
  if (v16)
  {
    v19 = type metadata accessor for PhonePersonList();
  }

  else
  {
    v11[13] = 0;
    v11[14] = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  v20 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_61_4(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_64_17(v22);
  OUTLINED_FUNCTION_131_3(49);
  OUTLINED_FUNCTION_65_2();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeDownTimeRestrictionEnabledDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeDownTimeRestrictionEnabledDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeDownTimeRestrictionEnabledAsLabels(intent:contacts:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.errorWithCodeDownTimeRestrictionEnabledAsLabels(intent:contacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = *(v10 + 24);
  v11[6] = v15;
  OUTLINED_FUNCTION_51_28();
  v11[9] = v18;
  v11[10] = v17 & 0xFFFFFFFFFFFFLL | 0x7374000000000000;
  v19 = OUTLINED_FUNCTION_129_4(0xE800000000000000);
  if (v16)
  {
    v19 = type metadata accessor for PhonePersonList();
  }

  else
  {
    v11[13] = 0;
    v11[14] = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  v20 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v21 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v21);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds();
  OUTLINED_FUNCTION_9();
  *v12 = v22;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_99_5();
  OUTLINED_FUNCTION_131_3(49);
  OUTLINED_FUNCTION_65_2();

  return v28(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeDownTimeRestrictionEnabledDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeNoValidNumber(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(36);

  return v15(v14);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeNoValidNumberDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::ErrorWithCodeNoValidNumberDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeNoValidNumberAsLabels(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v12);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds and conformance StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v13;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v14 = OUTLINED_FUNCTION_29_9(36);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds and conformance StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds and conformance StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds and conformance StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds and conformance StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds and conformance StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds and conformance StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds and conformance StartCallCATsSimple.ErrorWithCodeNoValidNumberDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeScreenTimeRestrictionEnabled()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(51);

  return v4(v3);
}

BOOL StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeScreenTimeRestrictionEnabledAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(51);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds and conformance StartCallCATsSimple.ErrorWithCodeScreenTimeRestrictionEnabledDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeUnableToHandOff()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(38);

  return v4(v3);
}

BOOL StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t StartCallCATsSimple.errorWithCodeUnableToHandOffAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds and conformance StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(38);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds and conformance StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds and conformance StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds and conformance StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds and conformance StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds and conformance StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds and conformance StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds and conformance StartCallCATsSimple.ErrorWithCodeUnableToHandOffDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.finalLowConfidenceResponse()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

BOOL StartCallCATsSimple.FinalLowConfidenceResponseDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.FinalLowConfidenceResponseDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.FinalLowConfidenceResponseDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.FinalLowConfidenceResponseDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t StartCallCATsSimple.finalLowConfidenceResponseAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.FinalLowConfidenceResponseDialogIds and conformance StartCallCATsSimple.FinalLowConfidenceResponseDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(36);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.FinalLowConfidenceResponseDialogIds and conformance StartCallCATsSimple.FinalLowConfidenceResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.FinalLowConfidenceResponseDialogIds and conformance StartCallCATsSimple.FinalLowConfidenceResponseDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.FinalLowConfidenceResponseDialogIds and conformance StartCallCATsSimple.FinalLowConfidenceResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.FinalLowConfidenceResponseDialogIds and conformance StartCallCATsSimple.FinalLowConfidenceResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.FinalLowConfidenceResponseDialogIds and conformance StartCallCATsSimple.FinalLowConfidenceResponseDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.FinalLowConfidenceResponseDialogIds and conformance StartCallCATsSimple.FinalLowConfidenceResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.FinalLowConfidenceResponseDialogIds and conformance StartCallCATsSimple.FinalLowConfidenceResponseDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.genericError(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.genericError(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FD0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(22);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::GenericErrorDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.GenericErrorDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::GenericErrorDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.GenericErrorDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t StartCallCATsSimple.genericErrorAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.genericErrorAsLabels(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  v5 = OUTLINED_FUNCTION_3_0(v4, xmmword_424FD0);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v6);
  lazy protocol witness table accessor for type StartCallCATsSimple.GenericErrorDialogIds and conformance StartCallCATsSimple.GenericErrorDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v7;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(22);
  OUTLINED_FUNCTION_65_1();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.GenericErrorDialogIds and conformance StartCallCATsSimple.GenericErrorDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.GenericErrorDialogIds and conformance StartCallCATsSimple.GenericErrorDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.GenericErrorDialogIds and conformance StartCallCATsSimple.GenericErrorDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.GenericErrorDialogIds and conformance StartCallCATsSimple.GenericErrorDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.GenericErrorDialogIds and conformance StartCallCATsSimple.GenericErrorDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.GenericErrorDialogIds and conformance StartCallCATsSimple.GenericErrorDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.GenericErrorDialogIds and conformance StartCallCATsSimple.GenericErrorDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.hangUpTip(device:hintIdentifier:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_153(v4);
  v6 = OUTLINED_FUNCTION_3_0(v5, xmmword_424FF0);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_79_9(v6);
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_19_42(v8);
  OUTLINED_FUNCTION_225_0();
  if (v9)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_16_0();
    v12();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  *(v1 + 56) = v13;
  *v13 = v1;
  OUTLINED_FUNCTION_114_0(v13);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_131_3(19);
  OUTLINED_FUNCTION_65_1();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

BOOL StartCallCATsSimple.HangUpTipDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.HangUpTipDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.HangUpTipDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.HangUpTipDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t StartCallCATsSimple.hangUpTipAsLabels(device:hintIdentifier:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v4 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0();
  v6 = OUTLINED_FUNCTION_153(v5);
  v7 = OUTLINED_FUNCTION_3_0(v6, xmmword_424FF0);
  if (v4)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  OUTLINED_FUNCTION_79_9(v7);
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_19_42(v9);
  OUTLINED_FUNCTION_225_0();
  if (v10)
  {

    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v14);
  lazy protocol witness table accessor for type StartCallCATsSimple.HangUpTipDialogIds and conformance StartCallCATsSimple.HangUpTipDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v15;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_131_3(19);
  OUTLINED_FUNCTION_65_1();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.HangUpTipDialogIds and conformance StartCallCATsSimple.HangUpTipDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.HangUpTipDialogIds and conformance StartCallCATsSimple.HangUpTipDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.HangUpTipDialogIds and conformance StartCallCATsSimple.HangUpTipDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.HangUpTipDialogIds and conformance StartCallCATsSimple.HangUpTipDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.HangUpTipDialogIds and conformance StartCallCATsSimple.HangUpTipDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.HangUpTipDialogIds and conformance StartCallCATsSimple.HangUpTipDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.HangUpTipDialogIds and conformance StartCallCATsSimple.HangUpTipDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.intentConfirmation(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.intentConfirmation(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_12_6(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(28);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t StartCallCATsSimple.IntentConfirmationDialogIds.rawValue.getter()
{
  OUTLINED_FUNCTION_27_2();
  if (v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x436D7269666E6F43;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StartCallCATsSimple.IntentConfirmationDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentConfirmationDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.IntentConfirmationDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentConfirmationDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.IntentConfirmationDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.IntentConfirmationDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.IntentConfirmationDialogIds.rawValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t StartCallCATsSimple.intentConfirmationAsLabels(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.intentConfirmationAsLabels(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_12_6(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v6);
  lazy protocol witness table accessor for type StartCallCATsSimple.IntentConfirmationDialogIds and conformance StartCallCATsSimple.IntentConfirmationDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v7;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(28);
  OUTLINED_FUNCTION_65_1();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.IntentConfirmationDialogIds and conformance StartCallCATsSimple.IntentConfirmationDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationDialogIds and conformance StartCallCATsSimple.IntentConfirmationDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationDialogIds and conformance StartCallCATsSimple.IntentConfirmationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationDialogIds and conformance StartCallCATsSimple.IntentConfirmationDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationDialogIds and conformance StartCallCATsSimple.IntentConfirmationDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationDialogIds and conformance StartCallCATsSimple.IntentConfirmationDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationDialogIds and conformance StartCallCATsSimple.IntentConfirmationDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.intentConfirmationEmergency(intent:device:shouldPlayTTSCountdown:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.intentConfirmationEmergency(intent:device:shouldPlayTTSCountdown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v15 = OUTLINED_FUNCTION_47_3(v14);
  OUTLINED_FUNCTION_12_6(v15, xmmword_426980);
  if (v13)
  {
    v16 = type metadata accessor for PhoneStartCallIntent(0);
    v17 = v13;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_20_1(v16, v17);
  if (v10)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  v18 = *(v11 + 64);
  v12[12] = v10;
  OUTLINED_FUNCTION_39_0();
  v12[17] = v19;
  OUTLINED_FUNCTION_224_0(v20);
  OUTLINED_FUNCTION_165_1(v21, &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_61_4(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_114_0(v23);
  OUTLINED_FUNCTION_183_1();
  OUTLINED_FUNCTION_60();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

BOOL StartCallCATsSimple.IntentConfirmationEmergencyDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.IntentConfirmationEmergencyDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.IntentConfirmationEmergencyDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.IntentConfirmationEmergencyDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.IntentConfirmationEmergencyDialogIds@<X0>(void *a1@<X8>)
{
  result = StartCallCATsSimple.IntentConfirmationEmergencyDialogIds.rawValue.getter();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.intentConfirmationEmergencyAsLabels(intent:device:shouldPlayTTSCountdown:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.intentConfirmationEmergencyAsLabels(intent:device:shouldPlayTTSCountdown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v15 = OUTLINED_FUNCTION_47_3(v14);
  OUTLINED_FUNCTION_12_6(v15, xmmword_426980);
  if (v13)
  {
    v16 = type metadata accessor for PhoneStartCallIntent(0);
    v17 = v13;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_20_1(v16, v17);
  if (v10)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  v18 = *(v11 + 64);
  v12[12] = v10;
  OUTLINED_FUNCTION_39_0();
  v12[17] = v19;
  OUTLINED_FUNCTION_224_0(v20);
  OUTLINED_FUNCTION_165_1(v21, &async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v22 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v22);
  lazy protocol witness table accessor for type StartCallCATsSimple.IntentConfirmationEmergencyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v13 = v23;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_99_5();
  OUTLINED_FUNCTION_60();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.IntentConfirmationEmergencyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.intentConfirmationEmergencyVoiceOnly()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(46);

  return v4(v3);
}

BOOL StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds@<X0>(void *a1@<X8>)
{
  result = StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds.rawValue.getter();
  *a1 = 0xD000000000000018;
  a1[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.intentConfirmationEmergencyVoiceOnlyAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(46);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds and conformance StartCallCATsSimple.IntentConfirmationEmergencyVoiceOnlyDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.intentConfirmationWithRestrictedContacts(intent:allowedContacts:restrictedContacts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.intentConfirmationWithRestrictedContacts(intent:allowedContacts:restrictedContacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v14 = v13[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47();
  v13[6] = v15;
  OUTLINED_FUNCTION_12_6(v15, xmmword_426980);
  if (v14)
  {
    v16 = type metadata accessor for PhoneStartCallIntent(0);
    v17 = v14;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_18_2();
    v15[3].n128_u64[1] = 0;
    v15[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_82_10(v16, v17);
  if (v12)
  {
    v18 = type metadata accessor for PhonePersonList();
    v19 = v12;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_18_2();
    v15[6].n128_u64[1] = 0;
    v15[7].n128_u64[0] = 0;
  }

  v20 = v13[4];
  v15[6].n128_u64[0] = v19;
  v21 = OUTLINED_FUNCTION_106_0(v18, "launchAppPunchOutAction");
  if (v20)
  {
    v21 = type metadata accessor for PhonePersonList();
  }

  else
  {
    v15[9].n128_u64[1] = 0;
    v15[10].n128_u64[0] = 0;
  }

  v15[9].n128_u64[0] = v20;
  v15[10].n128_u64[1] = v21;
  v22 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v13[7] = v23;
  *v23 = v24;
  v23[1] = SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:);
  v25 = v13[5];
  OUTLINED_FUNCTION_133_3();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentConfirmationWithRestrictedContactsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentConfirmationWithRestrictedContactsDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t StartCallCATsSimple.intentConfirmationWithRestrictedContactsAsLabels(intent:allowedContacts:restrictedContacts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATsSimple.intentConfirmationWithRestrictedContactsAsLabels(intent:allowedContacts:restrictedContacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v14 = v13[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47();
  v13[6] = v15;
  OUTLINED_FUNCTION_12_6(v15, xmmword_426980);
  if (v14)
  {
    v16 = type metadata accessor for PhoneStartCallIntent(0);
    v17 = v14;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_18_2();
    v15[3].n128_u64[1] = 0;
    v15[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_82_10(v16, v17);
  if (v12)
  {
    v18 = type metadata accessor for PhonePersonList();
    v19 = v12;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_18_2();
    v15[6].n128_u64[1] = 0;
    v15[7].n128_u64[0] = 0;
  }

  v20 = v13[4];
  v15[6].n128_u64[0] = v19;
  v21 = OUTLINED_FUNCTION_106_0(v18, "launchAppPunchOutAction");
  if (v20)
  {
    v21 = type metadata accessor for PhonePersonList();
  }

  else
  {
    v15[9].n128_u64[1] = 0;
    v15[10].n128_u64[0] = 0;
  }

  v15[9].n128_u64[0] = v20;
  v15[10].n128_u64[1] = v21;
  v22 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v23);
  lazy protocol witness table accessor for type StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds and conformance StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds();
  OUTLINED_FUNCTION_9();
  *v14 = v24;
  v14[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  v25 = v13[5];
  OUTLINED_FUNCTION_133_3();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

unint64_t lazy protocol witness table accessor for type StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds and conformance StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds()
{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds and conformance StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds and conformance StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds and conformance StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds and conformance StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds;
  if (!lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds and conformance StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds and conformance StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds);
  }

  return result;
}

uint64_t StartCallCATsSimple.intentHandledResponse(intent:redactedContacts:device:appName:isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_126_3(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t StartCallCATsSimple.intentHandledResponse(intent:redactedContacts:device:appName:isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = swift_allocObject();
  *(v12 + 64) = v14;
  OUTLINED_FUNCTION_12_6(v14, xmmword_431D00);
  if (v13)
  {
    type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v15 = *(v12 + 24);
  *(v14 + 48) = v13;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 72) = v16;
  *(v14 + 80) = 0xD000000000000010;
  *(v14 + 88) = v17;
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  OUTLINED_FUNCTION_100_4(v18);
  if (v13)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  v19 = *(v12 + 56);
  v20 = *(v12 + 40);
  *(v14 + 144) = v13;
  OUTLINED_FUNCTION_21_40();
  *(v14 + 168) = v21;
  *(v14 + 176) = v22;
  *(v14 + 184) = 0xE700000000000000;
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v23);
  v24 = type metadata accessor for SpeakableString();
  __swift_getEnumTagSinglePayload(v19, 1, v24);
  v25 = *(v12 + 56);
  v26 = *(v12 + 24);
  v27 = *(v12 + 32);
  OUTLINED_FUNCTION_225_0();
  if (v28)
  {

    outlined destroy of SpeakableString?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v24;
    __swift_allocate_boxed_opaque_existential_1((v14 + 192));
    OUTLINED_FUNCTION_40(v24);
    (*(v29 + 32))();
  }

  v30 = *(v12 + 90);
  v31 = *(v12 + 89);
  v32 = *(v12 + 88);
  OUTLINED_FUNCTION_98_7();
  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_194(v33);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v12 + 72) = v34;
  *v34 = v35;
  v34[1] = SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  v36 = *(v12 + 48);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_133_3();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentHandledResponseDialogIds_optional __swiftcall StartCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StartCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t StartCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(char a1)
{
  result = 0x6C61436F69647561;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
    case 4:
      result = 0x656D695465636166;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = OUTLINED_FUNCTION_136_6(0x6567u);
      break;
    case 8:
      result = OUTLINED_FUNCTION_135_3(0x7267u);
      break;
    case 9:
      result = 0x7261506472696874;
      break;
    case 10:
      result = 0x6C61436F65646976;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = StartCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATsSimple.IntentHandledResponseDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = StartCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t StartCallCATsSimple.intentHandledResponseAsLabels(intent:redactedContacts:device:appName:isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_126_3(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t StartCallCATsSimple.intentHandledResponseAsLabels(intent:redactedContacts:device:appName:isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = swift_allocObject();
  *(v12 + 64) = v14;
  OUTLINED_FUNCTION_12_6(v14, xmmword_431D00);
  if (v13)
  {
    type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v15 = *(v12 + 24);
  *(v14 + 48) = v13;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 72) = v16;
  *(v14 + 80) = 0xD000000000000010;
  *(v14 + 88) = v17;
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
  }

  OUTLINED_FUNCTION_100_4(v18);
  if (v13)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
  }

  v19 = *(v12 + 56);
  v20 = *(v12 + 40);
  *(v14 + 144) = v13;
  OUTLINED_FUNCTION_21_40();
  *(v14 + 168) = v21;
  *(v14 + 176) = v22;
  *(v14 + 184) = 0xE700000000000000;
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v23);
  v24 = type metadata accessor for SpeakableString();
  __swift_getEnumTagSinglePayload(v19, 1, v24);
  v25 = *(v12 + 56);
  v26 = *(v12 + 24);
  v27 = *(v12 + 32);
  OUTLINED_FUNCTION_225_0();
  if (v28)
  {

    outlined destroy of SpeakableString?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v24;
    __swift_allocate_boxed_opaque_existential_1((v14 + 192));
    OUTLINED_FUNCTION_40(v24);
    (*(v29 + 32))();
  }

  v30 = *(v12 + 90);
  v31 = *(v12 + 89);
  v32 = *(v12 + 88);
  OUTLINED_FUNCTION_98_7();
  OUTLINED_FUNCTION_128_2();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_194(v33);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v34 = swift_task_alloc();
  *(v12 + 72) = v34;
  lazy protocol witness table accessor for type StartCallCATsSimple.IntentHandledResponseDialogIds and conformance StartCallCATsSimple.IntentHandledResponseDialogIds();
  OUTLINED_FUNCTION_9();
  *v34 = v35;
  v34[1] = SearchCallHistoryCATsSimple.readSearchCallHistoryIntroductionAsLabels(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  v36 = *(v12 + 48);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_133_3();

  return v42(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}