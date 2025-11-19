uint64_t SearchCallHistoryCATs.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  *(v9 + 99) = a9;
  OUTLINED_FUNCTION_61_3(v10, v11, v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_222(v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v21);
  v23 = *(v22 + 64);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v24 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v24, v25, v26);
}

void SearchCallHistoryCATs.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)()
{
  OUTLINED_FUNCTION_66();
  v8 = v7;
  v36 = v9;
  v11 = v10;
  OUTLINED_FUNCTION_111_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_129_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_1_106(v16, xmmword_431D00);
  if (v3)
  {
    type metadata accessor for PhoneCallRecord(0);
    v17 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
  }

  *(v16 + 48) = v17;
  OUTLINED_FUNCTION_14_8();
  *(v16 + 72) = v18;
  *(v16 + 80) = v19;
  *(v16 + 88) = 0xE600000000000000;
  if (v4)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v16 + 104) = 0;
    *(v16 + 112) = 0;
  }

  OUTLINED_FUNCTION_125_2();
  *(v16 + 96) = v20;
  OUTLINED_FUNCTION_27_2();
  *(v16 + 120) = v21;
  *(v16 + 128) = v2 | 2;
  *(v16 + 136) = v22;
  *(v16 + 144) = v1 & 1;
  OUTLINED_FUNCTION_39_0();
  *(v16 + 168) = v23;
  *(v16 + 176) = v2 + 1;
  *(v16 + 184) = v24;
  *(v16 + 192) = v0 & 1;
  OUTLINED_FUNCTION_119_3();
  *(v16 + 216) = v25;
  *(v16 + 224) = v2;
  *(v16 + 232) = v26;
  outlined init with copy of SpeakableString?(v6, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v27 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0(v5);
  if (v28)
  {

    outlined destroy of SpeakableString?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v16 + 240) = 0u;
    *(v16 + 256) = 0u;
  }

  else
  {
    *(v16 + 264) = v27;
    __swift_allocate_boxed_opaque_existential_1((v16 + 240));
    OUTLINED_FUNCTION_6_0();
    (*(v29 + 32))();
  }

  OUTLINED_FUNCTION_4_78();
  *(v16 + 272) = v30;
  *(v16 + 280) = v31;
  if (v36)
  {
    v11 = 0;
    *(v16 + 296) = 0;
    *(v16 + 304) = 0;
  }

  *(v16 + 288) = v11;
  OUTLINED_FUNCTION_13_10();
  *(v16 + 312) = v32;
  *(v16 + 320) = v2;
  *(v16 + 328) = v33;
  if (v34)
  {
    v8 = 0;
    v35 = 0;
    *(v16 + 344) = 0;
    *(v16 + 352) = 0;
  }

  else
  {
    v35 = &type metadata for Double;
  }

  *(v16 + 336) = v8;
  *(v16 + 360) = v35;
  OUTLINED_FUNCTION_205();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readPlayVoiceMailPrePrompt()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(44);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void SearchCallHistoryCATs.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:completion:)()
{
  OUTLINED_FUNCTION_66();
  v35 = v5;
  v36 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_107_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_1_106(v13, xmmword_43CD90);
  if (v1)
  {
    type metadata accessor for PhoneCallRecord(0);
    v14 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  *(v13 + 48) = v14;
  OUTLINED_FUNCTION_14_8();
  *(v13 + 72) = v15;
  *(v13 + 80) = v16;
  *(v13 + 88) = 0xE600000000000000;
  if (v2)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v17 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  *(v13 + 96) = v17;
  OUTLINED_FUNCTION_27_2();
  *(v13 + 120) = v18;
  *(v13 + 128) = 0xD000000000000013;
  *(v13 + 136) = v19;
  *(v13 + 144) = v0 & 1;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_216(v20);
  *(v13 + 192) = v21;
  OUTLINED_FUNCTION_36_7();
  *(v13 + 216) = &type metadata for Bool;
  *(v13 + 224) = 0xD000000000000011;
  *(v13 + 232) = v22;
  outlined init with copy of SpeakableString?(v4, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v23 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_150_0(v23);
  if (v24)
  {

    outlined destroy of SpeakableString?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
  }

  else
  {
    *(v13 + 264) = v0;
    __swift_allocate_boxed_opaque_existential_1((v13 + 240));
    OUTLINED_FUNCTION_19_12();
    (*(v25 + 32))();
  }

  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_24_35();
  *(v13 + 272) = v26;
  *(v13 + 280) = v27;
  if (v36)
  {
    v8 = 0;
    *(v13 + 296) = 0;
    *(v13 + 304) = 0;
  }

  *(v13 + 288) = v8;
  OUTLINED_FUNCTION_26_3();
  *(v13 + 312) = v28;
  *(v13 + 320) = 0xD000000000000011;
  *(v13 + 328) = v29;
  if (v30)
  {
    v31 = 0;
    *(v13 + 344) = 0;
    *(v13 + 352) = 0;
  }

  else
  {
    v31 = v35;
  }

  *(v13 + 336) = v31;
  OUTLINED_FUNCTION_26_3();
  *(v13 + 360) = v32;
  *(v13 + 368) = 0xD000000000000021;
  *(v13 + 376) = v33;
  *(v13 + 408) = &type metadata for Bool;
  *(v13 + 384) = v34 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_221();
  *(v12 + 56) = v13;
  *(v12 + 64) = v11;
  *(v12 + 108) = a11;
  OUTLINED_FUNCTION_82_7(v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v22);
  v24 = *(v23 + 64);
  *(v12 + 72) = OUTLINED_FUNCTION_45();
  v25 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v25, v26, v27);
}

uint64_t SearchCallHistoryCATs.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_185();
  v15 = OUTLINED_FUNCTION_193(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_43CD90);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 32);
  v12[6] = v13;
  OUTLINED_FUNCTION_10_67(v16);
  if (v17)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_57_22(v18);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v19);
  v20 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v20);
  OUTLINED_FUNCTION_176();
  if (v21)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_123_0();
    v24();
  }

  v25 = *(v11 + 106);
  OUTLINED_FUNCTION_4_78();
  v12[34] = v26;
  v12[35] = v27;
  if (v28)
  {
    OUTLINED_FUNCTION_5_15();
    v12[37] = 0;
    v12[38] = 0;
  }

  else
  {
    v30 = *(v11 + 48);
    v29 = &type metadata for Double;
  }

  v31 = *(v11 + 107);
  OUTLINED_FUNCTION_33_5(v29);
  if (v32)
  {
    OUTLINED_FUNCTION_5_15();
    v12[43] = 0;
    v12[44] = 0;
  }

  else
  {
    v33 = *(v11 + 56);
  }

  v34 = *(v11 + 108);
  v12[42] = v33;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_189(v35);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 88) = v36;
  *v36 = v37;
  OUTLINED_FUNCTION_109_3(v36);
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_60();

  return v42(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_185();
  v15 = OUTLINED_FUNCTION_192(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_43CD90);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 24);
  v12[6] = v13;
  OUTLINED_FUNCTION_10_67(v16);
  if (v17)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v18);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v19);
  v20 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v20);
  OUTLINED_FUNCTION_173();
  if (v21)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_123_0();
    v24();
  }

  v25 = *(v11 + 98);
  OUTLINED_FUNCTION_4_78();
  v12[34] = v26;
  v12[35] = v27;
  if (v28)
  {
    OUTLINED_FUNCTION_5_15();
    v12[37] = 0;
    v12[38] = 0;
  }

  else
  {
    v30 = *(v11 + 40);
    v29 = &type metadata for Double;
  }

  v31 = *(v11 + 99);
  OUTLINED_FUNCTION_33_5(v29);
  if (v32)
  {
    OUTLINED_FUNCTION_5_15();
    v12[43] = 0;
    v12[44] = 0;
  }

  else
  {
    v33 = *(v11 + 48);
  }

  v34 = *(v11 + 100);
  v12[42] = v33;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_189(v35);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v36 = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_77_12(v36);
  *v37 = v38;
  OUTLINED_FUNCTION_156_0(v37);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t SearchCallHistoryCATs.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  OUTLINED_FUNCTION_15();
  *(v9 + 99) = a9;
  OUTLINED_FUNCTION_61_3(v10, v11, v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_222(v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v21);
  v23 = *(v22 + 64);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v24 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v24, v25, v26);
}

void SearchCallHistoryCATs.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)()
{
  OUTLINED_FUNCTION_66();
  v36 = v6;
  v37 = v7;
  v9 = v8;
  OUTLINED_FUNCTION_111_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_129_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_1_106(v14, xmmword_43CD90);
  if (v2)
  {
    type metadata accessor for PhoneCallRecord(0);
    v15 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
  }

  v14[3].n128_u64[0] = v15;
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_177(v16, v17);
  if (v3)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v14[6].n128_u64[1] = 0;
    v14[7].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_125_2();
  v14[6].n128_u64[0] = v18;
  OUTLINED_FUNCTION_27_2();
  v14[7].n128_u64[1] = v19;
  v14[8].n128_u64[0] = v1 | 2;
  v14[8].n128_u64[1] = v20;
  v14[9].n128_u8[0] = v0 & 1;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_220(v21);
  v14[12].n128_u8[0] = v22;
  OUTLINED_FUNCTION_36_7();
  v14[13].n128_u64[1] = &type metadata for Bool;
  v14[14].n128_u64[0] = v1;
  v14[14].n128_u64[1] = v23;
  outlined init with copy of SpeakableString?(v5, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v24 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0(v4);
  if (v25)
  {

    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_202();
  }

  else
  {
    v14[16].n128_u64[1] = v24;
    __swift_allocate_boxed_opaque_existential_1(&v14[15]);
    OUTLINED_FUNCTION_6_0();
    (*(v26 + 32))();
  }

  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_24_35();
  v14[17].n128_u64[0] = v27;
  v14[17].n128_u64[1] = v28;
  if (v37)
  {
    v9 = 0;
    v14[18].n128_u64[1] = 0;
    v14[19].n128_u64[0] = 0;
  }

  v14[18].n128_u64[0] = v9;
  OUTLINED_FUNCTION_26_3();
  v14[19].n128_u64[1] = v29;
  v14[20].n128_u64[0] = v1;
  v14[20].n128_u64[1] = v30;
  if (v31)
  {
    v32 = 0;
    v14[21].n128_u64[1] = 0;
    v14[22].n128_u64[0] = 0;
  }

  else
  {
    v32 = v36;
  }

  v14[21].n128_u64[0] = v32;
  OUTLINED_FUNCTION_26_3();
  v14[22].n128_u64[1] = v33;
  v14[23].n128_u64[0] = v1 + 16;
  v14[23].n128_u64[1] = v34;
  v14[25].n128_u64[1] = &type metadata for Bool;
  v14[24].n128_u8[0] = v35 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

void SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:completion:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v19 = OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_0_104(v19, xmmword_42BF20);
  if (v12)
  {
    v14 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  v19[3].n128_u64[0] = v14;
  OUTLINED_FUNCTION_39_0();
  v19[4].n128_u64[1] = v20;
  v19[5].n128_u64[0] = 0xD000000000000014;
  v19[5].n128_u64[1] = v21;
  if (v8)
  {
    v10 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  else
  {
    v22 = &type metadata for Double;
  }

  v19[6].n128_u64[0] = v10;
  OUTLINED_FUNCTION_29_29(v22);
  if (v6)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v23 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v19[9].n128_u64[1] = 0;
    v19[10].n128_u64[0] = 0;
  }

  v19[9].n128_u64[0] = v23;
  OUTLINED_FUNCTION_55_22();
  v19[10].n128_u64[1] = v24;
  v19[11].n128_u64[0] = v25;
  OUTLINED_FUNCTION_56_12();
  v19[11].n128_u64[1] = v26;
  v19[12].n128_u8[0] = v4 & 1;
  OUTLINED_FUNCTION_21_40();
  v19[13].n128_u64[1] = v27;
  v19[14].n128_u64[0] = v28;
  v19[14].n128_u64[1] = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v2, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v29 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v29);
  if (v30)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_202();
  }

  else
  {
    v19[16].n128_u64[1] = v2;
    __swift_allocate_boxed_opaque_existential_1(&v19[15]);
    OUTLINED_FUNCTION_40(v2);
    v32 = *(v31 + 32);
    OUTLINED_FUNCTION_47_15();
    v33();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 98) = v3;
  *(v1 + 97) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  OUTLINED_FUNCTION_222(v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  *(v1 + 64) = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_11();
  v4 = v0[11];

  return v3();
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 90) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 89) = v6;
  *(v1 + 88) = v7;
  *(v1 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    v14 = OUTLINED_FUNCTION_49();

    return v15(v14);
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_11();
  v4 = v0[10];

  return v3();
}

uint64_t SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_187();
  *(v10 + 72) = v12;
  OUTLINED_FUNCTION_0_104(v12, xmmword_42BF20);
  if (v11)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  else
  {
    v13 = *(v10 + 24);
  }

  v14 = *(v10 + 97);
  *(v12 + 48) = v13;
  OUTLINED_FUNCTION_104_3();
  *(v12 + 72) = v15;
  *(v12 + 80) = 0xD000000000000014;
  *(v12 + 88) = v16;
  if (v17)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v19 = *(v10 + 32);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 40);
  *(v12 + 96) = v19;
  *(v12 + 120) = v18;
  *(v12 + 128) = 0x746E65746E69;
  v21 = OUTLINED_FUNCTION_137_2();
  if (v20)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v21);
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  v22 = *(v10 + 64);
  v23 = *(v10 + 48);
  v24 = *(v10 + 98);
  *(v12 + 144) = v20;
  OUTLINED_FUNCTION_53_3();
  *(v12 + 168) = v25;
  *(v12 + 176) = v26;
  OUTLINED_FUNCTION_51_3();
  *(v12 + 184) = v27;
  *(v12 + 192) = v28;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 216) = v30;
  *(v12 + 224) = v29;
  *(v12 + 232) = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v31, v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v32 = type metadata accessor for SpeakableString();
  v33 = OUTLINED_FUNCTION_58(v32);
  v34 = *(v10 + 64);
  v35 = *(v10 + 40);
  if (v33 == 1)
  {
    v36 = *(v10 + 40);

    outlined destroy of SpeakableString?(v34, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
  }

  else
  {
    *(v12 + 264) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 240));
    OUTLINED_FUNCTION_6_0();
    v38 = *(v37 + 32);
    OUTLINED_FUNCTION_16_0();
    v39();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v54 = v40;
  v41 = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_77_12(v41);
  *v42 = v43;
  OUTLINED_FUNCTION_156_0(v42);
  v44 = *(v10 + 16);
  OUTLINED_FUNCTION_65_2();

  return v49(v45, v46, v47, v48, v49, v50, v51, v52, a9, v54);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_187();
  *(v10 + 64) = v12;
  OUTLINED_FUNCTION_0_104(v12, xmmword_42BF20);
  if (v11)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  else
  {
    v13 = *(v10 + 16);
  }

  v14 = *(v10 + 89);
  *(v12 + 48) = v13;
  OUTLINED_FUNCTION_104_3();
  *(v12 + 72) = v15;
  *(v12 + 80) = 0xD000000000000014;
  *(v12 + 88) = v16;
  if (v17)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v19 = *(v10 + 24);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 32);
  *(v12 + 96) = v19;
  *(v12 + 120) = v18;
  *(v12 + 128) = 0x746E65746E69;
  v21 = OUTLINED_FUNCTION_137_2();
  if (v20)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v21);
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  v22 = *(v10 + 56);
  v23 = *(v10 + 40);
  v24 = *(v10 + 90);
  *(v12 + 144) = v20;
  OUTLINED_FUNCTION_53_3();
  *(v12 + 168) = v25;
  *(v12 + 176) = v26;
  OUTLINED_FUNCTION_51_3();
  *(v12 + 184) = v27;
  *(v12 + 192) = v28;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 216) = v30;
  *(v12 + 224) = v29;
  *(v12 + 232) = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v31, v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v32 = type metadata accessor for SpeakableString();
  v33 = OUTLINED_FUNCTION_58(v32);
  v34 = *(v10 + 56);
  v35 = *(v10 + 32);
  if (v33 == 1)
  {
    v36 = *(v10 + 32);

    outlined destroy of SpeakableString?(v34, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
  }

  else
  {
    *(v12 + 264) = v9;
    __swift_allocate_boxed_opaque_existential_1((v12 + 240));
    OUTLINED_FUNCTION_6_0();
    v38 = *(v37 + 32);
    OUTLINED_FUNCTION_16_0();
    v39();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v53 = v40;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 72) = v41;
  *v41 = v42;
  v41[1] = SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  v43 = *(v10 + 48);
  OUTLINED_FUNCTION_65_2();

  return v47(v44, v45, v46, v47, v48, v49, v50, v51, a9, v53);
}

void SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v19 = OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_0_104(v19, xmmword_42BF20);
  if (v12)
  {
    v14 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  v19[3].n128_u64[0] = v14;
  OUTLINED_FUNCTION_39_0();
  v19[4].n128_u64[1] = v20;
  v19[5].n128_u64[0] = 0xD000000000000014;
  v19[5].n128_u64[1] = v21;
  if (v8)
  {
    v10 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  else
  {
    v22 = &type metadata for Double;
  }

  v19[6].n128_u64[0] = v10;
  OUTLINED_FUNCTION_29_29(v22);
  if (v6)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v23 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v19[9].n128_u64[1] = 0;
    v19[10].n128_u64[0] = 0;
  }

  v19[9].n128_u64[0] = v23;
  OUTLINED_FUNCTION_55_22();
  v19[10].n128_u64[1] = v24;
  v19[11].n128_u64[0] = v25;
  OUTLINED_FUNCTION_56_12();
  v19[11].n128_u64[1] = v26;
  v19[12].n128_u8[0] = v4 & 1;
  OUTLINED_FUNCTION_21_40();
  v19[13].n128_u64[1] = v27;
  v19[14].n128_u64[0] = v28;
  v19[14].n128_u64[1] = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v2, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v29 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v29);
  if (v30)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_202();
  }

  else
  {
    v19[16].n128_u64[1] = v2;
    __swift_allocate_boxed_opaque_existential_1(&v19[15]);
    OUTLINED_FUNCTION_40(v2);
    v32 = *(v31 + 32);
    OUTLINED_FUNCTION_47_15();
    v33();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_162_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_1_106(v3, xmmword_42BF10);
  if (v1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v5;
  OUTLINED_FUNCTION_10_67(v4);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v6 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v6;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_172();
  v3[7].n128_u64[1] = v7;
  v3[8].n128_u64[0] = v8;
  v3[8].n128_u64[1] = v9;
  v3[9].n128_u8[0] = v2 & 1;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_184(v10);

  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 72) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_161_0();
  *(v10 + 48) = v12;
  OUTLINED_FUNCTION_1_106(v12, xmmword_42BF10);
  if (v11)
  {
    v13 = type metadata accessor for PhoneCallRecord(0);
    v14 = v11;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_14();
  }

  v15 = *(v10 + 32);
  OUTLINED_FUNCTION_14_52(v13, v14);
  if (v15)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[6].n128_u64[1] = 0;
    v12[7].n128_u64[0] = 0;
  }

  v16 = *(v10 + 73);
  v17 = *(v10 + 72);
  v12[6].n128_u64[0] = v15;
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v18);
  v12[9].n128_u8[0] = v19;
  OUTLINED_FUNCTION_56_13(v20);
  v21 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_22_19(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_44_2(v23);
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_60();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_161_0();
  *(v10 + 40) = v12;
  OUTLINED_FUNCTION_1_106(v12, xmmword_42BF10);
  if (v11)
  {
    v13 = type metadata accessor for PhoneCallRecord(0);
    v14 = v11;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_14();
  }

  v15 = *(v10 + 24);
  OUTLINED_FUNCTION_14_52(v13, v14);
  if (v15)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[6].n128_u64[1] = 0;
    v12[7].n128_u64[0] = 0;
  }

  v16 = *(v10 + 65);
  v17 = *(v10 + 64);
  v12[6].n128_u64[0] = v15;
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v18);
  v12[9].n128_u8[0] = v19;
  OUTLINED_FUNCTION_56_13(v20);
  v21 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_16_12(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_114_0(v23);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t SearchCallHistoryCATs.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_199();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_1_106(v3, xmmword_42BF10);
  if (v1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_14_52(v4, v5);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v6 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v6;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_198(v7, v8);
  v3[9].n128_u8[0] = v2 & 1;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_183(v9);

  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_162_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_1_106(v3, xmmword_42BF10);
  if (v1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v5;
  OUTLINED_FUNCTION_10_67(v4);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v6 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v6;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_172();
  v3[7].n128_u64[1] = v7;
  v3[8].n128_u64[0] = v8;
  v3[8].n128_u64[1] = v9;
  v3[9].n128_u8[0] = v2 & 1;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_184(v10);

  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 72) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_161_0();
  *(v10 + 48) = v12;
  OUTLINED_FUNCTION_1_106(v12, xmmword_42BF10);
  if (v11)
  {
    v13 = type metadata accessor for PhoneCallRecord(0);
    v14 = v11;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_14();
  }

  v15 = *(v10 + 32);
  OUTLINED_FUNCTION_14_52(v13, v14);
  if (v15)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[6].n128_u64[1] = 0;
    v12[7].n128_u64[0] = 0;
  }

  v16 = *(v10 + 73);
  v17 = *(v10 + 72);
  v12[6].n128_u64[0] = v15;
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v18);
  v12[9].n128_u8[0] = v19;
  OUTLINED_FUNCTION_56_13(v20);
  v21 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_22_19(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_44_2(v23);
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_60();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_161_0();
  *(v10 + 40) = v12;
  OUTLINED_FUNCTION_1_106(v12, xmmword_42BF10);
  if (v11)
  {
    v13 = type metadata accessor for PhoneCallRecord(0);
    v14 = v11;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_14();
  }

  v15 = *(v10 + 24);
  OUTLINED_FUNCTION_14_52(v13, v14);
  if (v15)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[6].n128_u64[1] = 0;
    v12[7].n128_u64[0] = 0;
  }

  v16 = *(v10 + 65);
  v17 = *(v10 + 64);
  v12[6].n128_u64[0] = v15;
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v18);
  v12[9].n128_u8[0] = v19;
  OUTLINED_FUNCTION_56_13(v20);
  v21 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_16_12(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_114_0(v23);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t SearchCallHistoryCATs.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_199();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_1_106(v3, xmmword_42BF10);
  if (v1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_14_52(v4, v5);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v6 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v6;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_198(v7, v8);
  v3[9].n128_u8[0] = v2 & 1;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_183(v9);

  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47();
  *(v5 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_9_65(v6, v7);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_120_2();
  }

  *(v5 + 48) = v3;
  OUTLINED_FUNCTION_39_0();
  *(v5 + 72) = v8;
  *(v5 + 80) = 0xD000000000000011;
  *(v5 + 88) = v9;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  else
  {
    v10 = &type metadata for Double;
  }

  *(v5 + 96) = v1;
  OUTLINED_FUNCTION_8_66(v10);
  if (v0)
  {
    v11 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v12 = v0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_18_2();
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  *(v5 + 144) = v12;
  *(v5 + 168) = v11;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47();
  *(OUTLINED_FUNCTION_197(v13) + 16) = xmmword_426980;
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_9_65(v14, v15);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  else
  {
    v16 = *(v10 + 24);
  }

  OUTLINED_FUNCTION_125_2();
  v17 = *(v10 + 81);
  OUTLINED_FUNCTION_28_26(v18);
  if (v19)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v21 = *(v10 + 32);
    v20 = &type metadata for Double;
  }

  v22 = *(v10 + 40);
  v11[12] = v21;
  OUTLINED_FUNCTION_8_66(v20);
  v23 = 0;
  if (v22)
  {
    v23 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v23);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 64) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_175(v24);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47();
  *(OUTLINED_FUNCTION_46_15(v13) + 16) = xmmword_426980;
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_9_65(v14, v15);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  else
  {
    v16 = *(v10 + 16);
  }

  OUTLINED_FUNCTION_125_2();
  v17 = *(v10 + 73);
  OUTLINED_FUNCTION_28_26(v18);
  if (v19)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v21 = *(v10 + 24);
    v20 = &type metadata for Double;
  }

  v22 = *(v10 + 32);
  v11[12] = v21;
  OUTLINED_FUNCTION_8_66(v20);
  v23 = 0;
  if (v22)
  {
    v23 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v23);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v24 = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_22_19(v24);
  *v25 = v26;
  v25[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  v27 = *(v10 + 40);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t SearchCallHistoryCATs.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_94_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47();
  *(v5 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_9_65(v6, v7);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  *(v5 + 48) = v3;
  OUTLINED_FUNCTION_39_0();
  *(v5 + 72) = v8;
  *(v5 + 80) = 0xD000000000000011;
  *(v5 + 88) = v9;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  else
  {
    v10 = &type metadata for Double;
  }

  *(v5 + 96) = v1;
  OUTLINED_FUNCTION_29_29(v10);
  if (v0)
  {
    v11 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v12 = v0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_18_2();
    *(v5 + 152) = 0;
    *(v5 + 160) = 0;
  }

  *(v5 + 144) = v12;
  *(v5 + 168) = v11;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.repeatVoicemailPause()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void SearchCallHistoryCATs.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_66();
  v56 = v27;
  v29 = v28;
  v31 = v30;
  OUTLINED_FUNCTION_200();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v36 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_0_104(v36, xmmword_431D00);
  if (v23)
  {
    v26 = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
  }

  *(v36 + 48) = v26;
  OUTLINED_FUNCTION_39_0();
  *(v36 + 72) = v38;
  *(v36 + 80) = v37 + 1;
  *(v36 + 88) = v39;
  if (v25)
  {
    v24 = 0;
    *(v36 + 104) = 0;
    *(v36 + 112) = 0;
  }

  *(v36 + 96) = v24;
  OUTLINED_FUNCTION_71_8();
  *(v36 + 120) = v40;
  *(v36 + 128) = v41;
  *(v36 + 136) = 0xE600000000000000;
  if (v21)
  {
    type metadata accessor for SirikitDeviceState();
    v42 = v21;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v36 + 152) = 0;
    *(v36 + 160) = 0;
  }

  *(v36 + 144) = v42;
  OUTLINED_FUNCTION_14_8();
  *(v36 + 168) = v43;
  *(v36 + 176) = v44;
  *(v36 + 184) = 0xE600000000000000;
  if (v31)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v45 = v31;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v36 + 200) = 0;
    *(v36 + 208) = 0;
  }

  *(v36 + 192) = v45;
  OUTLINED_FUNCTION_55_22();
  *(v36 + 216) = v46;
  *(v36 + 224) = v47;
  OUTLINED_FUNCTION_56_12();
  *(v36 + 232) = v48;
  *(v36 + 240) = v29 & 1;
  OUTLINED_FUNCTION_48_2();
  *(v36 + 264) = &type metadata for Bool;
  *(v36 + 272) = v49;
  *(v36 + 280) = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v56, v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v50 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v50);
  if (v51)
  {

    outlined destroy of SpeakableString?(v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v36 + 288) = 0u;
    *(v36 + 304) = 0u;
  }

  else
  {
    *(v36 + 312) = v23;
    __swift_allocate_boxed_opaque_existential_1((v36 + 288));
    OUTLINED_FUNCTION_40(v23);
    v53 = *(v52 + 32);
    OUTLINED_FUNCTION_47_15();
    v54();
  }

  OUTLINED_FUNCTION_39_0();
  *(v36 + 320) = 0xD000000000000013;
  *(v36 + 328) = v55;
  *(v36 + 360) = &type metadata for Bool;
  *(v36 + 336) = a21 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_221();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 107) = v3;
  OUTLINED_FUNCTION_157_0(v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_45();
  v15 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
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

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    v14 = OUTLINED_FUNCTION_49();

    return v15(v14);
  }
}

uint64_t SearchCallHistoryCATs.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_186();
  v14 = OUTLINED_FUNCTION_193(v13);
  OUTLINED_FUNCTION_0_104(v14, xmmword_431D00);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  else
  {
    v15 = *(v10 + 24);
  }

  v16 = *(v10 + 105);
  *(v11 + 48) = v15;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 72) = v17;
  *(v11 + 80) = 0xD000000000000014;
  *(v11 + 88) = v18;
  if (v19)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v21 = *(v10 + 32);
    v20 = &type metadata for Double;
  }

  v22 = *(v10 + 40);
  OUTLINED_FUNCTION_36_26(v20);
  if (v22)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  v23 = *(v10 + 48);
  *(v11 + 144) = v22;
  OUTLINED_FUNCTION_14_8();
  v26 = OUTLINED_FUNCTION_98_5(v24, v25);
  if (v23)
  {
    v26 = type metadata accessor for PhoneSearchCallHistoryIntent(v26);
  }

  else
  {
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  v27 = *(v10 + 72);
  v28 = *(v10 + 56);
  v29 = *(v10 + 106);
  OUTLINED_FUNCTION_20_40(v26);
  *(v11 + 240) = v30;
  OUTLINED_FUNCTION_21_40();
  *(v11 + 264) = &type metadata for Bool;
  *(v11 + 272) = v31;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v32);
  v33 = type metadata accessor for SpeakableString();
  v34 = OUTLINED_FUNCTION_69_12(v33);
  v35 = *(v10 + 72);
  v36 = *(v10 + 40);
  v37 = *(v10 + 48);
  if (v34 == 1)
  {
    v38 = *(v10 + 48);

    outlined destroy of SpeakableString?(v35, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    v40 = *(v39 + 32);
    OUTLINED_FUNCTION_123_0();
    v41();
  }

  v42 = *(v10 + 107);
  OUTLINED_FUNCTION_119_3();
  *(v11 + 320) = 0xD000000000000013;
  *(v11 + 328) = v43;
  *(v11 + 360) = &type metadata for Bool;
  *(v11 + 336) = v44;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 88) = v45;
  *v45 = v46;
  OUTLINED_FUNCTION_109_3(v45);
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_60();

  return v51(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_186();
  v14 = OUTLINED_FUNCTION_192(v13);
  OUTLINED_FUNCTION_0_104(v14, xmmword_431D00);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  else
  {
    v15 = *(v10 + 16);
  }

  v16 = *(v10 + 97);
  *(v11 + 48) = v15;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 72) = v17;
  *(v11 + 80) = 0xD000000000000014;
  *(v11 + 88) = v18;
  if (v19)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v21 = *(v10 + 24);
    v20 = &type metadata for Double;
  }

  v22 = *(v10 + 32);
  OUTLINED_FUNCTION_36_26(v20);
  if (v22)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  v23 = *(v10 + 40);
  *(v11 + 144) = v22;
  OUTLINED_FUNCTION_14_8();
  v26 = OUTLINED_FUNCTION_98_5(v24, v25);
  if (v23)
  {
    v26 = type metadata accessor for PhoneSearchCallHistoryIntent(v26);
  }

  else
  {
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  v27 = *(v10 + 64);
  v28 = *(v10 + 48);
  v29 = *(v10 + 98);
  OUTLINED_FUNCTION_20_40(v26);
  *(v11 + 240) = v30;
  OUTLINED_FUNCTION_21_40();
  *(v11 + 264) = &type metadata for Bool;
  *(v11 + 272) = v31;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v32);
  v33 = type metadata accessor for SpeakableString();
  v34 = OUTLINED_FUNCTION_69_12(v33);
  v35 = *(v10 + 64);
  v36 = *(v10 + 32);
  v37 = *(v10 + 40);
  if (v34 == 1)
  {
    v38 = *(v10 + 40);

    outlined destroy of SpeakableString?(v35, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    v40 = *(v39 + 32);
    OUTLINED_FUNCTION_123_0();
    v41();
  }

  v42 = *(v10 + 99);
  OUTLINED_FUNCTION_119_3();
  *(v11 + 320) = 0xD000000000000013;
  *(v11 + 328) = v43;
  *(v11 + 360) = &type metadata for Bool;
  *(v11 + 336) = v44;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v45 = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_77_12(v45);
  *v46 = v47;
  OUTLINED_FUNCTION_156_0(v46);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10);
}

uint64_t SearchCallHistoryCATs.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  *(v9 + 99) = a9;
  OUTLINED_FUNCTION_61_3(v10, v11, v12, v13, v14, v15, v16, v17);
  *(v9 + 96) = v18;
  *(v9 + 16) = v19;
  *(v9 + 24) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v21);
  v23 = *(v22 + 64);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v24 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v24, v25, v26);
}

void SearchCallHistoryCATs.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_133_2(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_2_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v34 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_0_104(v34, xmmword_431D00);
  if (v22)
  {
    v21 = 0;
    OUTLINED_FUNCTION_120_2();
  }

  *(v34 + 48) = v21;
  OUTLINED_FUNCTION_39_0();
  *(v34 + 72) = v35;
  *(v34 + 80) = 0xD000000000000014;
  *(v34 + 88) = v36;
  if (v28)
  {
    v27 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  *(v34 + 96) = v27;
  OUTLINED_FUNCTION_71_8();
  *(v34 + 120) = v37;
  *(v34 + 128) = v38;
  *(v34 + 136) = 0xE600000000000000;
  if (v23)
  {
    type metadata accessor for SirikitDeviceState();
    v39 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v34 + 152) = 0;
    *(v34 + 160) = 0;
  }

  *(v34 + 144) = v39;
  OUTLINED_FUNCTION_14_8();
  *(v34 + 168) = v40;
  *(v34 + 176) = v41;
  *(v34 + 184) = 0xE600000000000000;
  if (v24)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v42 = v24;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v34 + 200) = 0;
    *(v34 + 208) = 0;
  }

  *(v34 + 192) = v42;
  OUTLINED_FUNCTION_55_22();
  *(v34 + 216) = v43;
  *(v34 + 224) = v44;
  OUTLINED_FUNCTION_56_12();
  *(v34 + 232) = v45;
  *(v34 + 240) = v26 & 1;
  OUTLINED_FUNCTION_48_2();
  *(v34 + 264) = &type metadata for Bool;
  *(v34 + 272) = v46;
  *(v34 + 280) = 0xE700000000000000;
  v47 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v47, v48, v49, v50);
  v51 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0(v25);
  if (v52)
  {

    outlined destroy of SpeakableString?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v34 + 288) = 0u;
    *(v34 + 304) = 0u;
  }

  else
  {
    *(v34 + 312) = v51;
    __swift_allocate_boxed_opaque_existential_1((v34 + 288));
    OUTLINED_FUNCTION_6_0();
    (*(v53 + 32))();
  }

  OUTLINED_FUNCTION_39_0();
  *(v34 + 320) = 0xD000000000000013;
  *(v34 + 328) = v54;
  *(v34 + 360) = &type metadata for Bool;
  *(v34 + 336) = a21 & 1;
  OUTLINED_FUNCTION_205();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.unsupportedCallTypes()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.errorNoTargetCall();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t SearchCallHistoryCATs.unsupportedDateCreated()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
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

uint64_t SearchCallHistoryCATs.unsupportedRecipient()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t SearchCallHistoryCATs.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_161_0();
  v9 = OUTLINED_FUNCTION_27_33(v8, xmmword_42BF10);
  v9[3].n128_u8[0] = v7;
  v10 = OUTLINED_FUNCTION_41_31(v9, &type metadata for Bool);
  *(v10 + 96) = v5;
  *(OUTLINED_FUNCTION_52_19(v10, v11) + 144) = v3;
  OUTLINED_FUNCTION_39_0();
  v12[21] = v13;
  v12[22] = 0xD000000000000010;
  v12[23] = v14;
  if (v1)
  {
    v15 = type metadata accessor for DialogPerson();
    v16 = v1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_18_2();
    v8[12].n128_u64[1] = 0;
    v8[13].n128_u64[0] = 0;
  }

  v8[12].n128_u64[0] = v16;
  v8[13].n128_u64[1] = v15;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 66) = a4;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  v13 = *(v10 + 66);
  v14 = *(v10 + 65);
  v15 = *(v10 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_161_0();
  v17 = OUTLINED_FUNCTION_50_0(v16);
  v18 = OUTLINED_FUNCTION_27_33(v17, xmmword_42BF10);
  v18[3].n128_u8[0] = v15;
  v19 = OUTLINED_FUNCTION_41_31(v18, &type metadata for Bool);
  *(v19 + 96) = v14;
  *(OUTLINED_FUNCTION_52_19(v19, v20) + 144) = v13;
  OUTLINED_FUNCTION_39_0();
  v21[21] = v22;
  v21[22] = 0xD000000000000010;
  v21[23] = v23;
  v24 = 0;
  if (v12)
  {
    v24 = type metadata accessor for DialogPerson();
  }

  else
  {
    v11[25] = 0;
    v11[26] = 0;
  }

  v11[24] = v12;
  v11[27] = v24;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_16_12(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_24(v26);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v32(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  v13 = *(v10 + 58);
  v14 = *(v10 + 57);
  v15 = *(v10 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_161_0();
  v17 = OUTLINED_FUNCTION_51(v16);
  v18 = OUTLINED_FUNCTION_27_33(v17, xmmword_42BF10);
  v18[3].n128_u8[0] = v15;
  v19 = OUTLINED_FUNCTION_41_31(v18, &type metadata for Bool);
  *(v19 + 96) = v14;
  *(OUTLINED_FUNCTION_52_19(v19, v20) + 144) = v13;
  OUTLINED_FUNCTION_39_0();
  v21[21] = v22;
  v21[22] = 0xD000000000000010;
  v21[23] = v23;
  v24 = 0;
  if (v12)
  {
    v24 = type metadata accessor for DialogPerson();
  }

  else
  {
    v11[25] = 0;
    v11[26] = 0;
  }

  v11[24] = v12;
  v11[27] = v24;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_76_9(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_39(v26);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t SearchCallHistoryCATs.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)(char a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = v4;
  *(v5 + 58) = a3;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_161_0();
  v9 = OUTLINED_FUNCTION_27_33(v8, xmmword_42BF10);
  v9[3].n128_u8[0] = v7;
  v10 = OUTLINED_FUNCTION_41_31(v9, &type metadata for Bool);
  *(v10 + 96) = v5;
  *(OUTLINED_FUNCTION_52_19(v10, v11) + 144) = v3;
  OUTLINED_FUNCTION_39_0();
  v12[21] = v13;
  v12[22] = 0xD000000000000010;
  v12[23] = v14;
  if (v1)
  {
    v15 = type metadata accessor for DialogPerson();
    v16 = v1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_18_2();
    v8[12].n128_u64[1] = 0;
    v8[13].n128_u64[0] = 0;
  }

  v8[12].n128_u64[0] = v16;
  v8[13].n128_u64[1] = v15;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.unsupportedUnseen(intent:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_12_6(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_18_2();
    v1[3].n128_u64[1] = 0;
    v1[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t SearchCallHistoryCATs.unsupportedUnseen(intent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.unsupportedUnseen(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_12_6(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_24(v7);
  OUTLINED_FUNCTION_53_6();
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
  OUTLINED_FUNCTION_12_6(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(35);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_12_6(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_180();
}

uint64_t SearchCallHistoryCATs.unsupportedUnseen(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.visualCatText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  *(v4 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v4) + 48) = v3;
  OUTLINED_FUNCTION_39_0();
  *(OUTLINED_FUNCTION_188(v5, v6) + 96) = v1;
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 57);
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v3) + 48) = v2;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_167(v4, v5);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = v6;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_76_9(v7);
  *v8 = v9;
  v8[1] = SearchCallHistoryCATs.offerToContinueReading(isLastPage:);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  return v13(v10, v2 | 0x11, 0x8000000000454440, v3);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v3) + 48) = v2;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_167(v4, v5);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v7;
  *v7 = v8;
  v7[1] = AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:);
  v9 = *(v0 + 16);

  return v11(v2 | 0x11, 0x8000000000454440, v3);
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:)(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  *(v4 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v4) + 48) = a1;
  OUTLINED_FUNCTION_39_0();
  *(OUTLINED_FUNCTION_188(v5, v6) + 96) = a2;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToFollowUpAction(isLastPage:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v0 = OUTLINED_FUNCTION_35_1();
  *(v0 + 16) = xmmword_424FD0;
  v1 = OUTLINED_FUNCTION_3_98(v0);
  OUTLINED_FUNCTION_182(v1, &type metadata for Bool);
  OUTLINED_FUNCTION_78_0();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToFollowUpAction(isLastPage:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToFollowUpAction(isLastPage:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_3_98(v2);
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v0 + 32) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_76_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_134_0(v6);
  OUTLINED_FUNCTION_174();

  return v8();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_3_98(v2);
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_135_1(v5);
  v6 = OUTLINED_FUNCTION_34_21(48);

  return v7(v6);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v0 = OUTLINED_FUNCTION_35_1();
  *(v0 + 16) = xmmword_424FD0;
  v1 = OUTLINED_FUNCTION_3_98(v0);
  OUTLINED_FUNCTION_138_2(v1, &type metadata for Bool);
  OUTLINED_FUNCTION_180();
}

uint64_t SearchCallHistoryCATs.voiceMailOfferToFollowUpAction(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.voiceMailPromptToPlay()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(39);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t SearchCallHistoryCATs.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_47();
  v9 = OUTLINED_FUNCTION_22_30(v8, xmmword_426980);
  v9[3].n128_u8[0] = v7;
  v10 = OUTLINED_FUNCTION_26_32(v9, &type metadata for Bool);
  *(v10 + 96) = v5;
  OUTLINED_FUNCTION_39_24(v10, v11);
  if (v1)
  {
    v3 = 0;
    v12 = 0;
    v8[9].n128_u64[1] = 0;
    v8[10].n128_u64[0] = 0;
  }

  else
  {
    v12 = &type metadata for Double;
  }

  v8[9].n128_u64[0] = v3;
  v8[10].n128_u64[1] = v12;
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:)(uint64_t a1, char a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 66);
  v2 = *(v0 + 65);
  v3 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_47();
  *(v0 + 40) = v4;
  v5 = OUTLINED_FUNCTION_22_30(v4, xmmword_426980);
  v5[3].n128_u8[0] = v3;
  v6 = OUTLINED_FUNCTION_26_32(v5, &type metadata for Bool);
  *(v6 + 96) = v2;
  OUTLINED_FUNCTION_39_24(v6, v7);
  if (v1)
  {
    OUTLINED_FUNCTION_160_0();
    v4[9].n128_u64[1] = 0;
    v4[10].n128_u64[0] = 0;
  }

  else
  {
    v8 = *(v0 + 24);
    v9 = &type metadata for Double;
  }

  v4[9].n128_u64[0] = v8;
  v4[10].n128_u64[1] = v9;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v16 = v10;
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_16_12(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_24(v12);

  return v16(v14, 0xD000000000000036, 0x8000000000454480, v4);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 58);
  v2 = *(v0 + 57);
  v3 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_47();
  *(v0 + 32) = v4;
  v5 = OUTLINED_FUNCTION_22_30(v4, xmmword_426980);
  v5[3].n128_u8[0] = v3;
  v6 = OUTLINED_FUNCTION_26_32(v5, &type metadata for Bool);
  *(v6 + 96) = v2;
  OUTLINED_FUNCTION_39_24(v6, v7);
  if (v1)
  {
    OUTLINED_FUNCTION_160_0();
    v4[9].n128_u64[1] = 0;
    v4[10].n128_u64[0] = 0;
  }

  else
  {
    v8 = *(v0 + 16);
    v9 = &type metadata for Double;
  }

  v4[9].n128_u64[0] = v8;
  v4[10].n128_u64[1] = v9;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v15 = v10;
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_117(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_39(v12);

  return v15(0xD000000000000036, 0x8000000000454480, v4);
}

{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_47();
  v9 = OUTLINED_FUNCTION_22_30(v8, xmmword_426980);
  v9[3].n128_u8[0] = v7;
  v10 = OUTLINED_FUNCTION_26_32(v9, &type metadata for Bool);
  *(v10 + 96) = v5;
  OUTLINED_FUNCTION_39_24(v10, v11);
  if (v1)
  {
    v3 = 0;
    v12 = 0;
    v8[9].n128_u64[1] = 0;
    v8[10].n128_u64[0] = 0;
  }

  else
  {
    v12 = &type metadata for Double;
  }

  v8[9].n128_u64[0] = v3;
  v8[10].n128_u64[1] = v12;
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:)(char a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

void SearchCallHistoryCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for CATOption();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_129_2();
  outlined init with copy of SpeakableString?(v26, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v28 + 16))(v31, v24, v27);
  CATWrapper.init(templateDir:options:globals:)();
  (*(v28 + 8))(v24, v27);
  outlined destroy of SpeakableString?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATs.Properties and conformance SearchCallHistoryCATs.Properties()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATs.Properties and conformance SearchCallHistoryCATs.Properties;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATs.Properties and conformance SearchCallHistoryCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATs.Properties and conformance SearchCallHistoryCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for SearchCallHistoryCATs()
{
  result = type metadata singleton initialization cache for SearchCallHistoryCATs;
  if (!type metadata singleton initialization cache for SearchCallHistoryCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchCallHistoryCATs.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD9)
  {
    if (a2 + 39 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 39) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 40;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v5 = v6 - 40;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD8)
  {
    v6 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
          *result = a2 + 39;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_32@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 72) = a2;
  strcpy((result + 80), "isLastWindow");
  *(result + 93) = 0;
  *(result + 94) = -5120;
  return result;
}

void OUTLINED_FUNCTION_29_29(uint64_t a1@<X8>)
{
  v1[15] = a1;
  v1[16] = 0x746E65746E69;
  v1[17] = 0xE600000000000000;
}

uint64_t OUTLINED_FUNCTION_36_26@<X0>(uint64_t a1@<X8>)
{
  v2[12] = v1;
  v2[15] = a1;
  v2[16] = 0x656369766564;
  v2[17] = 0xE600000000000000;
  return 0;
}

__n128 *OUTLINED_FUNCTION_38_25(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6953776F646E6977;
  result[2].n128_u64[1] = 0xEA0000000000657ALL;
  return result;
}

void *OUTLINED_FUNCTION_39_24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[15] = a2;
  result[16] = 0x6953776F646E6977;
  result[17] = 0xEA0000000000657ALL;
  return result;
}

void OUTLINED_FUNCTION_56_13(char a1@<W8>)
{
  *(v3 + 168) = v2;
  *(v3 + 176) = v4;
  *(v3 + 184) = (v1 - 32) | 0x8000000000000000;
  *(v3 + 216) = v2;
  *(v3 + 192) = a1;
}

void OUTLINED_FUNCTION_72_10()
{
  *(v3 + 192) = v0;
  *(v3 + 216) = v2;
  *(v3 + 224) = v4;
  *(v3 + 232) = (v1 - 32) | 0x8000000000000000;
}

void OUTLINED_FUNCTION_81_7()
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 40);
  v5 = *(v1 + 105);
  v6 = *(v1 + 104);
  *(v2 + 96) = v0;
}

uint64_t OUTLINED_FUNCTION_82_7(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 107) = v8;
  *(v9 + 106) = a8;
  *(v9 + 40) = a6;
  *(v9 + 48) = a7;
  *(v9 + 105) = a5;
  *(v9 + 104) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_109_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 64);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_134_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_135_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_138_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 72) = a2;
  *(result + 48) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_149()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OUTLINED_FUNCTION_156_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_157_0(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 106) = a8;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 105) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 104) = a3;
  *(v8 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_161_0()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_165_0()
{
  result = 0.0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_167@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 72) = a2;
  *(result + 80) = 0xD000000000000020;
  *(result + 88) = v2;
  *(result + 120) = a2;
  *(result + 96) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_168()
{
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of SpeakableString?(a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_171()
{
}

void OUTLINED_FUNCTION_173()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = v0[3];
}

uint64_t OUTLINED_FUNCTION_175(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 48);
  return *(v2 + 16);
}

void OUTLINED_FUNCTION_176()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_177@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[9] = result;
  v2[10] = a2;
  v2[11] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_180()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OUTLINED_FUNCTION_182@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 72) = a2;
  *(result + 48) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_183@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v4;
  *(v3 + 184) = v1;
  *(v3 + 216) = a1;
  *(v3 + 192) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_184@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v4;
  *(v3 + 184) = v1;
  *(v3 + 216) = a1;
  *(v3 + 192) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_185()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_186()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_187()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_188@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[9] = a2;
  result[10] = 0xD000000000000020;
  result[11] = v2;
  result[15] = a2;
  return result;
}

void OUTLINED_FUNCTION_189(uint64_t a1@<X8>)
{
  *(v4 + 360) = a1;
  *(v4 + 368) = v5 + 16;
  *(v4 + 376) = v1;
  *(v4 + 408) = v3;
  *(v4 + 384) = v2;
}

void OUTLINED_FUNCTION_195(char a1@<W8>)
{
  *(v3 + 360) = v2;
  *(v3 + 368) = v4 + 2;
  *(v3 + 376) = v1;
  *(v3 + 408) = v2;
  *(v3 + 384) = a1;
}

uint64_t OUTLINED_FUNCTION_198@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[15] = result;
  v2[16] = 0xD000000000000013;
  v2[17] = a2;
  return result;
}

double OUTLINED_FUNCTION_202()
{
  result = 0.0;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_204()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OUTLINED_FUNCTION_205()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t *OUTLINED_FUNCTION_206()
{
  *(v1 + 264) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 240));
}

void OUTLINED_FUNCTION_216(uint64_t a1@<X8>)
{
  v3[21] = v1;
  v3[22] = v2 + 1;
  v3[23] = a1;
}

void OUTLINED_FUNCTION_217(char a1@<W8>)
{
  *(v3 + 216) = v2;
  *(v3 + 224) = v4;
  *(v3 + 232) = v1;
  *(v3 + 264) = v2;
  *(v3 + 240) = a1;
}

void OUTLINED_FUNCTION_220(uint64_t a1@<X8>)
{
  v2[21] = v1;
  v2[22] = v3 + 1;
  v2[23] = a1;
}

uint64_t OUTLINED_FUNCTION_222(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 96) = a3;
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_223@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[33] = a1;
  v2[34] = a2;
  v2[35] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_224(uint64_t result)
{
  v3[15] = result;
  v3[16] = v2;
  v3[17] = v1;
  return result;
}

double OUTLINED_FUNCTION_225()
{
  result = 0.0;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_228()
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_229()
{
  *(v1 + 312) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 288));
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::Properties_optional __swiftcall SearchCallHistoryCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_33_2();
  if (v1 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v1;
  }
}

unint64_t SearchCallHistoryCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000027;
  switch(a1)
  {
    case 1:
    case 12:
    case 22:
      result = 0xD00000000000002CLL;
      break;
    case 2:
    case 4:
      result = 0xD000000000000022;
      break;
    case 3:
    case 13:
    case 15:
      result = 0xD000000000000024;
      break;
    case 5:
    case 6:
    case 35:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD000000000000037;
      break;
    case 8:
    case 38:
      result = 0xD000000000000027;
      break;
    case 9:
    case 36:
      result = 0xD000000000000031;
      break;
    case 10:
    case 16:
      result = 0xD000000000000021;
      break;
    case 11:
    case 21:
    case 31:
      result = 0xD000000000000028;
      break;
    case 14:
    case 25:
    case 28:
    case 29:
    case 30:
    case 32:
      result = 0xD000000000000026;
      break;
    case 17:
      result = 0xD000000000000020;
      break;
    case 18:
    case 24:
      result = 0xD000000000000033;
      break;
    case 19:
      result = 0xD000000000000029;
      break;
    case 20:
      result = 0xD00000000000002FLL;
      break;
    case 23:
      result = 0xD00000000000002ALL;
      break;
    case 26:
      result = 0xD00000000000002BLL;
      break;
    case 27:
      result = 0xD000000000000032;
      break;
    case 33:
      result = 0xD00000000000002DLL;
      break;
    case 34:
      result = 0xD000000000000023;
      break;
    case 37:
      result = 0xD000000000000030;
      break;
    case 39:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDetail(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDetail(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_1_106(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(39);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

BOOL SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDetailAsLabels(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDetailAsLabels(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_1_106(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v6);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v7;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(39);
  OUTLINED_FUNCTION_65_1();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDetailDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDisplayName(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDisplayName(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_1_106(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(44);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

BOOL SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDisplayNameAsLabels(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.buildCallRecordDisplayNameAsLabels(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_1_106(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v6);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v7;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(44);
  OUTLINED_FUNCTION_65_1();

  return v13(v8, v9, v10, v11, v12, v13, v14, v15);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds and conformance SearchCallHistoryCATsSimple.BuildCallRecordDisplayNameDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmCallTypes(callTypeToConfirm:callTypesCount:)()
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
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_164_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_46_15(v3);
  *(v4 + 16) = xmmword_424FF0;
  v5 = OUTLINED_FUNCTION_0_8(v4, "callTypeToConfirm");
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_80_9();
  if (v12)
  {
    OUTLINED_FUNCTION_160_0();
    v2[13] = 0;
    v2[14] = 0;
  }

  else
  {
    v13 = *(v1 + 24);
    v14 = &type metadata for Double;
  }

  v2[12] = v13;
  v2[15] = v14;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_114_0(v15);
  OUTLINED_FUNCTION_65_1();

  return v20(v17, v18, v19, v20, v21, v22, v23, v24);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmCallTypesDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.init(rawValue:), v3);
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

void SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_151_1();
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmCallTypesDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmCallTypesDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t SearchCallHistoryCATsSimple.confirmCallTypesAsLabels(callTypeToConfirm:callTypesCount:)()
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
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_164_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_46_15(v4);
  *(v5 + 16) = xmmword_424FF0;
  v6 = OUTLINED_FUNCTION_0_8(v5, "callTypeToConfirm");
  OUTLINED_FUNCTION_48_1(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v8);
  if (v9)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_80_9();
  if (v13)
  {
    OUTLINED_FUNCTION_160_0();
    v3[13] = 0;
    v3[14] = 0;
  }

  else
  {
    v14 = *(v2 + 24);
    v15 = &type metadata for Double;
  }

  v3[12] = v14;
  v3[15] = v15;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v16 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v16);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v17;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_65_1();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_51(v13);
  OUTLINED_FUNCTION_122_2(v14, "dateCreatedToConfirm", xmmword_424FF0);
  if (v10)
  {
    type metadata accessor for DialogCalendar();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v15 = *(v11 + 56);
  *(v12 + 48) = v10;
  OUTLINED_FUNCTION_39_0();
  *(v12 + 88) = v16;
  *(v12 + 120) = &type metadata for Bool;
  *(v12 + 96) = v17;
  OUTLINED_FUNCTION_218(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v12 + 72) = v18;
  *(v12 + 80) = 17;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 40) = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_39(v19);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmDateCreatedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmDateCreatedDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t SearchCallHistoryCATsSimple.confirmDateCreatedAsLabels(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmDateCreatedAsLabels(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_51(v13);
  OUTLINED_FUNCTION_122_2(v14, "dateCreatedToConfirm", xmmword_424FF0);
  if (v10)
  {
    type metadata accessor for DialogCalendar();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v15 = *(v11 + 56);
  *(v12 + 48) = v10;
  OUTLINED_FUNCTION_39_0();
  *(v12 + 88) = v16;
  *(v12 + 120) = &type metadata for Bool;
  *(v12 + 96) = v17;
  OUTLINED_FUNCTION_218(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  *(v12 + 72) = v18;
  *(v12 + 80) = 17;

  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v19);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v20;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmRecipient(recipientToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmRecipient(recipientToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1();
  v14 = OUTLINED_FUNCTION_51(v13);
  *(v14 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v14, "recipientToConfirm");
  v15 = 0;
  if (v10)
  {
    v15 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v15);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 40) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_39(v16);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x31676F6C616964;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmRecipientDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmRecipientDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmRecipientAsLabels(recipientToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmRecipientAsLabels(recipientToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_35_1();
  v13 = OUTLINED_FUNCTION_51(v12);
  *(v13 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v13, "recipientToConfirm");
  v14 = 0;
  if (v10)
  {
    v14 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v14);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v15);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v16;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmRecipientDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmUnseen(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmUnseen(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_51(v3) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_14_8();
  v6 = OUTLINED_FUNCTION_73_9(v4, v5);
  if (v2)
  {
    v6 = type metadata accessor for PhoneSearchCallHistoryIntent(v6);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(31);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x32676F6C616964;
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmUnseenDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ConfirmUnseenDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.confirmUnseenAsLabels(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.confirmUnseenAsLabels(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_51(v3) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_14_8();
  v6 = OUTLINED_FUNCTION_73_9(v4, v5);
  if (v2)
  {
    v6 = type metadata accessor for PhoneSearchCallHistoryIntent(v6);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(31);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds and conformance SearchCallHistoryCATsSimple.ConfirmUnseenDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.errorWithCode()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.errorWithCodeAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(31);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.errorWithCodeAppConfigurationRequired(appName:intent:)()
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
  OUTLINED_FUNCTION_164_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_46_15(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FF0);
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v12 = *(v1 + 24);
  OUTLINED_FUNCTION_14_8();
  v2[10] = v13;
  v2[11] = 0xE600000000000000;
  v14 = 0;
  if (v12)
  {
    v14 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v2[13] = 0;
    v2[14] = 0;
  }

  v2[12] = v12;
  v2[15] = v14;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v15 = swift_task_alloc();
  *(v1 + 56) = v15;
  *v15 = v1;
  OUTLINED_FUNCTION_114_0(v15);
  OUTLINED_FUNCTION_43_4(55);
  OUTLINED_FUNCTION_65_1();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ErrorWithCodeAppConfigurationRequiredDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds.init(rawValue:), v3);
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

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ErrorWithCodeAppConfigurationRequiredDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ErrorWithCodeAppConfigurationRequiredDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.errorWithCodeAppConfigurationRequiredAsLabels(appName:intent:)()
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
  OUTLINED_FUNCTION_164_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_46_15(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FF0);
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v12 = *(v1 + 24);
  OUTLINED_FUNCTION_14_8();
  v2[10] = v13;
  v2[11] = 0xE600000000000000;
  v14 = 0;
  if (v12)
  {
    v14 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v2[13] = 0;
    v2[14] = 0;
  }

  v2[12] = v12;
  v2[15] = v14;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v15);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds();
  OUTLINED_FUNCTION_9();
  *v12 = v16;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(55);
  OUTLINED_FUNCTION_65_1();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds and conformance SearchCallHistoryCATsSimple.ErrorWithCodeAppConfigurationRequiredDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_61_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_168_0(v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_45();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_192(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_427BC0);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  else
  {
    v16 = *(v11 + 16);
  }

  v17 = *(v11 + 97);
  *(v12 + 48) = v16;
  OUTLINED_FUNCTION_104_3();
  *(v12 + 72) = v18;
  *(v12 + 80) = 0xD000000000000014;
  *(v12 + 88) = v19;
  if (v20)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v22 = *(v11 + 24);
    v21 = &type metadata for Double;
  }

  v23 = OUTLINED_FUNCTION_25_33(v21);
  if (v10)
  {
    v23 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  v24 = OUTLINED_FUNCTION_24_36(v23);
  if (v13)
  {
    v24 = type metadata accessor for PhoneSearchCallHistoryIntent(v24);
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_15_49(v24);
  *(v12 + 240) = v25;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 264) = v27;
  *(v12 + 272) = v26;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v28);
  v29 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v29);
  OUTLINED_FUNCTION_160_1();
  if (v30)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    v32 = *(v31 + 32);
    OUTLINED_FUNCTION_123_0();
    v33();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v34 = swift_task_alloc();
  v35 = OUTLINED_FUNCTION_77_12(v34);
  *v35 = v36;
  OUTLINED_FUNCTION_156_0(v35);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponseAsLabels(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_61_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_168_0(v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_45();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponseAsLabels(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_192(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_427BC0);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  else
  {
    v16 = *(v11 + 16);
  }

  v17 = *(v11 + 97);
  *(v12 + 48) = v16;
  OUTLINED_FUNCTION_104_3();
  *(v12 + 72) = v18;
  *(v12 + 80) = 0xD000000000000014;
  *(v12 + 88) = v19;
  if (v20)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v22 = *(v11 + 24);
    v21 = &type metadata for Double;
  }

  v23 = OUTLINED_FUNCTION_25_33(v21);
  if (v10)
  {
    v23 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  v24 = OUTLINED_FUNCTION_24_36(v23);
  if (v13)
  {
    v24 = type metadata accessor for PhoneSearchCallHistoryIntent(v24);
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_15_49(v24);
  *(v12 + 240) = v25;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 264) = v27;
  *(v12 + 272) = v26;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v28);
  v29 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v29);
  OUTLINED_FUNCTION_160_1();
  if (v30)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    v32 = *(v31 + 32);
    OUTLINED_FUNCTION_123_0();
    v33();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v34);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v35;
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_60();

  return v41(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v15 = OUTLINED_FUNCTION_46_15(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_426980);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  else
  {
    v16 = *(v11 + 16);
  }

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = OUTLINED_FUNCTION_7_68(v19);
  if (v10)
  {
    v21 = type metadata accessor for PhoneSearchCallHistoryIntent(v21);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v21);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 56) = v22;
  *v22 = v23;
  v22[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  v24 = *(v11 + 40);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.intentHandledResponseMissedCallAsLabels(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v15 = OUTLINED_FUNCTION_46_15(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_426980);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  else
  {
    v16 = *(v11 + 16);
  }

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = OUTLINED_FUNCTION_7_68(v19);
  if (v10)
  {
    v21 = type metadata accessor for PhoneSearchCallHistoryIntent(v21);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v21);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v22 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v22);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v23;
  v10[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  v24 = *(v11 + 40);
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds and conformance SearchCallHistoryCATsSimple.IntentHandledResponseMissedCallDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToCallBack()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.OfferToCallBackDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.OfferToCallBackDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.OfferToCallBackDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToCallBackAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(33);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToCallBackDialogIds and conformance SearchCallHistoryCATsSimple.OfferToCallBackDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToContinueReading(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.offerToContinueReading(isLastPage:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_3_98(v2);
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_135_1(v5);
  v6 = OUTLINED_FUNCTION_34_21(40);

  return v7(v6);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::OfferToContinueReadingDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::OfferToContinueReadingDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToContinueReadingAsLabels(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.offerToContinueReadingAsLabels(isLastPage:)()
{
  OUTLINED_FUNCTION_75_6();
  v12 = v2;
  OUTLINED_FUNCTION_23_0();
  v3 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1();
  v5 = OUTLINED_FUNCTION_3_98(v4);
  *(v5 + 72) = &type metadata for Bool;
  *(v5 + 48) = v3;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  *(v1 + 24) = v4;
  *(v4 + 16) = v6;
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_138_3(v7);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v8;
  OUTLINED_FUNCTION_166_0();
  OUTLINED_FUNCTION_145_0();
  v9 = OUTLINED_FUNCTION_97_4(40);

  return v10(v9);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.OfferToContinueReadingDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToReadMoreCallRecords(isLastWindow:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.offerToReadMoreCallRecords(isLastWindow:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_74_0();
  v5 = OUTLINED_FUNCTION_144_1(v3, v4);
  *(v5 + 72) = &type metadata for Bool;
  *(v5 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v6;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_135_1(v7);
  v8 = OUTLINED_FUNCTION_34_21(44);

  return v9(v8);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::OfferToReadMoreCallRecordsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::OfferToReadMoreCallRecordsDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.offerToReadMoreCallRecordsAsLabels(isLastWindow:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.offerToReadMoreCallRecordsAsLabels(isLastWindow:)()
{
  OUTLINED_FUNCTION_75_6();
  v14 = v2;
  OUTLINED_FUNCTION_23_0();
  v3 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_74_0();
  v7 = OUTLINED_FUNCTION_144_1(v5, v6);
  *(v7 + 72) = &type metadata for Bool;
  *(v7 + 48) = v3;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  *(v1 + 24) = v4;
  *(v4 + 16) = v8;
  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_138_3(v9);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v10;
  OUTLINED_FUNCTION_166_0();
  OUTLINED_FUNCTION_145_0();
  v11 = OUTLINED_FUNCTION_97_4(44);

  return v12(v11);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.OfferToReadMoreCallRecordsDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForCallTypes()()
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

BOOL SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForCallTypesAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(36);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.PromptForCallTypesDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForDateCreated()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForDateCreatedAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_44_19();

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.PromptForDateCreatedDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForRecipient()()
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

BOOL SearchCallHistoryCATsSimple.PromptForRecipientDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.PromptForRecipientDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.PromptForRecipientDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForRecipientAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(36);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForRecipientDialogIds and conformance SearchCallHistoryCATsSimple.PromptForRecipientDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForUnseen()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.PromptForUnseenDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.PromptForUnseenDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.PromptForUnseenDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.promptForUnseenAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(33);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.PromptForUnseenDialogIds and conformance SearchCallHistoryCATsSimple.PromptForUnseenDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a4;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_1_106(v14, xmmword_42BF20);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = *(v10 + 24);
  v17 = *(v10 + 64);
  *(v11 + 48) = v15;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_79_0(v18, v19);
  *(v11 + 96) = v20;
  OUTLINED_FUNCTION_14_8();
  v22 = OUTLINED_FUNCTION_171_0(v21);
  if (v16)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v22);
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  v23 = *(v10 + 66);
  v24 = *(v10 + 65);
  *(v11 + 144) = v16;
  OUTLINED_FUNCTION_30_2();
  *(v11 + 168) = v25;
  *(v11 + 176) = v26;
  *(v11 + 184) = v27;
  *(v11 + 192) = v28;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_217(v29);
  v30 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 48) = v31;
  *v31 = v32;
  OUTLINED_FUNCTION_114_0(v31);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.ReadCallRecordDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadCallRecordDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.ReadCallRecordDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readCallRecordAsLabels(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a4;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readCallRecordAsLabels(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_1_106(v14, xmmword_42BF20);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = *(v10 + 24);
  v17 = *(v10 + 64);
  *(v11 + 48) = v15;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_79_0(v18, v19);
  *(v11 + 96) = v20;
  OUTLINED_FUNCTION_14_8();
  v22 = OUTLINED_FUNCTION_171_0(v21);
  if (v16)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v22);
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  v23 = *(v10 + 66);
  v24 = *(v10 + 65);
  *(v11 + 144) = v16;
  OUTLINED_FUNCTION_30_2();
  *(v11 + 168) = v25;
  *(v11 + 176) = v26;
  *(v11 + 184) = v27;
  *(v11 + 192) = v28;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_217(v29);
  v30 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v31 = swift_task_alloc();
  *(v10 + 48) = v31;
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v31 = v32;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_96_5();
  OUTLINED_FUNCTION_60();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadCallRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v15 = OUTLINED_FUNCTION_46_15(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_426980);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  else
  {
    v16 = *(v11 + 16);
  }

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = OUTLINED_FUNCTION_7_68(v19);
  if (v10)
  {
    v21 = type metadata accessor for PhoneSearchCallHistoryIntent(v21);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v21);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 56) = v22;
  *v22 = v23;
  v22[1] = SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:);
  v24 = *(v11 + 40);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readMissedCallHistoryIntroductionAsLabels(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v15 = OUTLINED_FUNCTION_46_15(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_426980);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  else
  {
    v16 = *(v11 + 16);
  }

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = OUTLINED_FUNCTION_7_68(v19);
  if (v10)
  {
    v21 = type metadata accessor for PhoneSearchCallHistoryIntent(v21);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v21);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v22 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v22);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v23;
  v10[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  v24 = *(v11 + 40);
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadMissedCallHistoryIntroductionDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  v5 = *(v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_185();
  *(v1 + 72) = v6;
  OUTLINED_FUNCTION_38_25(v6, xmmword_43CD90);
  if (v5)
  {
    OUTLINED_FUNCTION_5_15();
    v6[3].n128_u64[1] = 0;
    v6[4].n128_u64[0] = 0;
  }

  else
  {
    v7 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_135_2();
  v6[3].n128_u64[0] = v8;
  OUTLINED_FUNCTION_119_3();
  v6[4].n128_u64[1] = v9;
  v6[5].n128_u64[0] = v4;
  v6[5].n128_u64[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v6[6].n128_u64[0] = v3;
  v12 = OUTLINED_FUNCTION_163_1(v11, "callRecordsItem2");
  v6[10].n128_u64[1] = v12;
  v6[11].n128_u64[0] = v4;
  v6[11].n128_u64[1] = 0x8000000000460EA0;
  v6[12].n128_u64[0] = v2;
  v6[13].n128_u64[1] = v12;
  v6[14].n128_u64[0] = v4;
  v6[14].n128_u64[1] = 0x8000000000460EC0;
  v6[15].n128_u64[0] = v5;
  OUTLINED_FUNCTION_14_8();
  v15 = OUTLINED_FUNCTION_223(v13, v14);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v15);
  }

  else
  {
    v6[18].n128_u64[1] = 0;
    v6[19].n128_u64[0] = 0;
  }

  v16 = *(v1 + 98);
  v17 = *(v1 + 97);
  v6[18].n128_u64[0] = v0;
  OUTLINED_FUNCTION_13_10();
  v6[19].n128_u64[1] = v18;
  v6[20].n128_u64[0] = v4 + 3;
  v6[20].n128_u64[1] = v19;
  v6[21].n128_u8[0] = v20;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_195(v21);
  v22 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_77_12(v23);
  *v24 = v25;
  v24[1] = SearchCallHistoryCATsSimple.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:);
  v26 = *(v1 + 64);

  return v28(v4 + 25, 0x8000000000453C20, v6);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadMultipleCallRecordsDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds.init(rawValue:), v3);
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

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadMultipleCallRecordsDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadMultipleCallRecordsDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds.rawValue.getter();
  *v0 = 0x61696423316C6C61;
  v0[1] = v2;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readMultipleCallRecordsAsLabels(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  v5 = *(v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_185();
  *(v1 + 72) = v6;
  OUTLINED_FUNCTION_38_25(v6, xmmword_43CD90);
  if (v5)
  {
    OUTLINED_FUNCTION_5_15();
    v6[3].n128_u64[1] = 0;
    v6[4].n128_u64[0] = 0;
  }

  else
  {
    v7 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_135_2();
  v6[3].n128_u64[0] = v8;
  OUTLINED_FUNCTION_119_3();
  v6[4].n128_u64[1] = v9;
  v6[5].n128_u64[0] = v4;
  v6[5].n128_u64[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v6[6].n128_u64[0] = v3;
  v12 = OUTLINED_FUNCTION_163_1(v11, "callRecordsItem2");
  v6[10].n128_u64[1] = v12;
  v6[11].n128_u64[0] = v4;
  v6[11].n128_u64[1] = 0x8000000000460EA0;
  v6[12].n128_u64[0] = v2;
  v6[13].n128_u64[1] = v12;
  v6[14].n128_u64[0] = v4;
  v6[14].n128_u64[1] = 0x8000000000460EC0;
  v6[15].n128_u64[0] = v5;
  OUTLINED_FUNCTION_14_8();
  v15 = OUTLINED_FUNCTION_223(v13, v14);
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v15);
  }

  else
  {
    v6[18].n128_u64[1] = 0;
    v6[19].n128_u64[0] = 0;
  }

  v16 = *(v1 + 98);
  v17 = *(v1 + 97);
  v6[18].n128_u64[0] = v0;
  OUTLINED_FUNCTION_13_10();
  v6[19].n128_u64[1] = v18;
  v6[20].n128_u64[0] = v4 + 3;
  v6[20].n128_u64[1] = v19;
  v6[21].n128_u8[0] = v20;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_195(v21);
  v22 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v23);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v24;
  v0[1] = SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:);
  v25 = *(v1 + 64);
  OUTLINED_FUNCTION_19_4();

  return v27();
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds and conformance SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_175_0();
  *(v10 + 101) = a10;
  *(v10 + 100) = v11;
  OUTLINED_FUNCTION_14_53(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v21);
  v23 = *(v22 + 64);
  *(v10 + 64) = OUTLINED_FUNCTION_45();
  v24 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v24, v25, v26);
}

uint64_t SearchCallHistoryCATsSimple.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_4441E0);
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v13[7] = 0;
    v13[8] = 0;
  }

  v18 = OUTLINED_FUNCTION_8_67(v17);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v18);
  }

  else
  {
    v13[13] = 0;
    v13[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v21);
  OUTLINED_FUNCTION_123_3();
  if (v22)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_123_0();
    v25();
  }

  OUTLINED_FUNCTION_5_82();
  if (v26)
  {
    OUTLINED_FUNCTION_5_15();
    v13[37] = 0;
    v13[38] = 0;
  }

  else
  {
    v28 = *(v12 + 40);
    v27 = &type metadata for Double;
  }

  v29 = *(v12 + 99);
  OUTLINED_FUNCTION_33_5(v27);
  if (v30)
  {
    OUTLINED_FUNCTION_5_15();
    v13[43] = 0;
    v13[44] = 0;
  }

  else
  {
    v31 = *(v12 + 48);
  }

  v32 = *(v12 + 101);
  v33 = *(v12 + 100);
  v13[42] = v31;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_105(v34);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v35 = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_77_12(v35);
  *v36 = v37;
  OUTLINED_FUNCTION_156_0(v36);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadNewOrSavedVoiceMailRecordDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds.init(rawValue:), v3);
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

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadNewOrSavedVoiceMailRecordDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadNewOrSavedVoiceMailRecordDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readNewOrSavedVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, char a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_175_0();
  *(v10 + 101) = a10;
  *(v10 + 100) = v11;
  OUTLINED_FUNCTION_14_53(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v21);
  v23 = *(v22 + 64);
  *(v10 + 64) = OUTLINED_FUNCTION_45();
  v24 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v24, v25, v26);
}

uint64_t SearchCallHistoryCATsSimple.readNewOrSavedVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_4441E0);
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v13[7] = 0;
    v13[8] = 0;
  }

  v18 = OUTLINED_FUNCTION_8_67(v17);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v18);
  }

  else
  {
    v13[13] = 0;
    v13[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v21);
  OUTLINED_FUNCTION_123_3();
  if (v22)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_123_0();
    v25();
  }

  OUTLINED_FUNCTION_5_82();
  if (v26)
  {
    OUTLINED_FUNCTION_5_15();
    v13[37] = 0;
    v13[38] = 0;
  }

  else
  {
    v28 = *(v12 + 40);
    v27 = &type metadata for Double;
  }

  v29 = *(v12 + 99);
  OUTLINED_FUNCTION_33_5(v27);
  if (v30)
  {
    OUTLINED_FUNCTION_5_15();
    v13[43] = 0;
    v13[44] = 0;
  }

  else
  {
    v31 = *(v12 + 48);
  }

  v32 = *(v12 + 101);
  v33 = *(v12 + 100);
  v13[42] = v31;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_105(v34);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v35 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v35);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v36;
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_60();

  return v42(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewOrSavedVoiceMailRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_53(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v18);
  v20 = *(v19 + 64);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v21 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v21, v22, v23);
}

uint64_t SearchCallHistoryCATsSimple.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v15 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_186();
  v17 = OUTLINED_FUNCTION_192(v16);
  OUTLINED_FUNCTION_1_106(v17, xmmword_431D00);
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  v19 = OUTLINED_FUNCTION_8_67(v18);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v19);
  }

  else
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v20);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_13_10();
  *(v13 + 168) = v21;
  *(v13 + 176) = v14 + 1;
  *(v13 + 184) = v22;
  *(v13 + 192) = v23;
  OUTLINED_FUNCTION_119_3();
  *(v13 + 216) = v24;
  *(v13 + 224) = v14;
  *(v13 + 232) = v25;
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v26);
  v27 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v27);
  OUTLINED_FUNCTION_123_3();
  if (v28)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v30 = *(v29 + 32);
    OUTLINED_FUNCTION_123_0();
    v31();
  }

  OUTLINED_FUNCTION_5_82();
  if (v32)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 296) = 0;
    *(v13 + 304) = 0;
  }

  else
  {
    v34 = *(v12 + 40);
    v33 = &type metadata for Double;
  }

  v35 = *(v12 + 99);
  OUTLINED_FUNCTION_33_5(v33);
  if (v36)
  {
    OUTLINED_FUNCTION_160_0();
    *(v13 + 344) = 0;
    *(v13 + 352) = 0;
  }

  else
  {
    v37 = *(v12 + 48);
    v38 = &type metadata for Double;
  }

  *(v13 + 336) = v37;
  *(v13 + 360) = v38;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_77_12(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_156_0(v40);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v45(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadNewVoiceMailRecordDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadNewVoiceMailRecordDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readNewVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_14_53(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v18);
  v20 = *(v19 + 64);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v21 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v21, v22, v23);
}

uint64_t SearchCallHistoryCATsSimple.readNewVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v15 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_186();
  v17 = OUTLINED_FUNCTION_192(v16);
  OUTLINED_FUNCTION_1_106(v17, xmmword_431D00);
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  v19 = OUTLINED_FUNCTION_8_67(v18);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v19);
  }

  else
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v20);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_13_10();
  *(v13 + 168) = v21;
  *(v13 + 176) = v14 + 1;
  *(v13 + 184) = v22;
  *(v13 + 192) = v23;
  OUTLINED_FUNCTION_119_3();
  *(v13 + 216) = v24;
  *(v13 + 224) = v14;
  *(v13 + 232) = v25;
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v26);
  v27 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v27);
  OUTLINED_FUNCTION_123_3();
  if (v28)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v30 = *(v29 + 32);
    OUTLINED_FUNCTION_123_0();
    v31();
  }

  OUTLINED_FUNCTION_5_82();
  if (v32)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 296) = 0;
    *(v13 + 304) = 0;
  }

  else
  {
    v34 = *(v12 + 40);
    v33 = &type metadata for Double;
  }

  v35 = *(v12 + 99);
  OUTLINED_FUNCTION_33_5(v33);
  if (v36)
  {
    OUTLINED_FUNCTION_160_0();
    *(v13 + 344) = 0;
    *(v13 + 352) = 0;
  }

  else
  {
    v37 = *(v12 + 48);
    v38 = &type metadata for Double;
  }

  *(v13 + 336) = v37;
  *(v13 + 360) = v38;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v39 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v39);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v40;
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_60();

  return v46(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadNewVoiceMailRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readPlayVoiceMailPrePrompt()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(44);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readPlayVoiceMailPrePromptAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(44);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds and conformance SearchCallHistoryCATsSimple.ReadPlayVoiceMailPrePromptDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_175_0();
  *(v0 + 100) = v1;
  OUTLINED_FUNCTION_14_53(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v14, v15, v16);
}

uint64_t SearchCallHistoryCATsSimple.readSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_185();
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_43CD90);
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v13[7] = 0;
    v13[8] = 0;
  }

  v18 = OUTLINED_FUNCTION_8_67(v17);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v18);
  }

  else
  {
    v13[13] = 0;
    v13[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v21);
  OUTLINED_FUNCTION_123_3();
  if (v22)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_123_0();
    v25();
  }

  OUTLINED_FUNCTION_5_82();
  if (v26)
  {
    OUTLINED_FUNCTION_5_15();
    v13[37] = 0;
    v13[38] = 0;
  }

  else
  {
    v28 = *(v12 + 40);
    v27 = &type metadata for Double;
  }

  v29 = *(v12 + 99);
  OUTLINED_FUNCTION_33_5(v27);
  if (v30)
  {
    OUTLINED_FUNCTION_5_15();
    v13[43] = 0;
    v13[44] = 0;
  }

  else
  {
    v31 = *(v12 + 48);
  }

  v32 = *(v12 + 100);
  v13[42] = v31;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_189(v33);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v34 = swift_task_alloc();
  v35 = OUTLINED_FUNCTION_77_12(v34);
  *v35 = v36;
  OUTLINED_FUNCTION_156_0(v35);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadSavedVoiceMailRecordDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadSavedVoiceMailRecordDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSavedVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_175_0();
  *(v0 + 100) = v1;
  OUTLINED_FUNCTION_14_53(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v14, v15, v16);
}

uint64_t SearchCallHistoryCATsSimple.readSavedVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_185();
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_43CD90);
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v13[7] = 0;
    v13[8] = 0;
  }

  v18 = OUTLINED_FUNCTION_8_67(v17);
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v18);
  }

  else
  {
    v13[13] = 0;
    v13[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v20);
  v21 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v21);
  OUTLINED_FUNCTION_123_3();
  if (v22)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_123_0();
    v25();
  }

  OUTLINED_FUNCTION_5_82();
  if (v26)
  {
    OUTLINED_FUNCTION_5_15();
    v13[37] = 0;
    v13[38] = 0;
  }

  else
  {
    v28 = *(v12 + 40);
    v27 = &type metadata for Double;
  }

  v29 = *(v12 + 99);
  OUTLINED_FUNCTION_33_5(v27);
  if (v30)
  {
    OUTLINED_FUNCTION_5_15();
    v13[43] = 0;
    v13[44] = 0;
  }

  else
  {
    v31 = *(v12 + 48);
  }

  v32 = *(v12 + 100);
  v13[42] = v31;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_189(v33);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v34);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v35;
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_60();

  return v41(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSavedVoiceMailRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_120_3(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t SearchCallHistoryCATsSimple.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v11 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187();
  *(v11 + 64) = v13;
  OUTLINED_FUNCTION_0_104(v13, xmmword_42BF20);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  else
  {
    v14 = *(v11 + 16);
  }

  v15 = *(v11 + 89);
  *(v13 + 48) = v14;
  OUTLINED_FUNCTION_104_3();
  *(v13 + 72) = v16;
  *(v13 + 80) = 0xD000000000000014;
  *(v13 + 88) = v17;
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = OUTLINED_FUNCTION_89_4(v19);
  if (v12)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v21);
  }

  else
  {
    *(v13 + 152) = 0;
    *(v13 + 160) = 0;
  }

  v22 = *(v11 + 56);
  v23 = *(v11 + 40);
  v24 = *(v11 + 90);
  *(v13 + 144) = v12;
  OUTLINED_FUNCTION_53_3();
  *(v13 + 168) = v25;
  *(v13 + 176) = v26;
  OUTLINED_FUNCTION_51_3();
  *(v13 + 184) = v27;
  *(v13 + 192) = v28;
  OUTLINED_FUNCTION_21_40();
  *(v13 + 216) = v30;
  *(v13 + 224) = v29;
  *(v13 + 232) = 0xE700000000000000;
  outlined init with copy of PhoneCallNLIntent?(v31, v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v32 = type metadata accessor for SpeakableString();
  v33 = OUTLINED_FUNCTION_58(v32);
  v34 = *(v11 + 56);
  v35 = *(v11 + 32);
  if (v33 == 1)
  {
    v36 = *(v11 + 32);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v34, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
  }

  else
  {
    *(v13 + 264) = v10;
    __swift_allocate_boxed_opaque_existential_1((v13 + 240));
    OUTLINED_FUNCTION_6_0();
    v38 = *(v37 + 32);
    OUTLINED_FUNCTION_16_0();
    v39();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 72) = v40;
  *v40 = v41;
  v40[1] = SearchCallHistoryCATs.readSearchCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  v42 = *(v11 + 48);
  OUTLINED_FUNCTION_65_2();

  return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSearchCallHistoryIntroductionAsLabels(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_120_3(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  *(v0 + 56) = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    v14 = OUTLINED_FUNCTION_49();

    return v15(v14);
  }
}

uint64_t SearchCallHistoryCATsSimple.readSearchCallHistoryIntroductionAsLabels(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v11 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_187();
  *(v11 + 64) = v13;
  OUTLINED_FUNCTION_0_104(v13, xmmword_42BF20);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  else
  {
    v14 = *(v11 + 16);
  }

  v15 = *(v11 + 89);
  *(v13 + 48) = v14;
  OUTLINED_FUNCTION_104_3();
  *(v13 + 72) = v16;
  *(v13 + 80) = 0xD000000000000014;
  *(v13 + 88) = v17;
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = OUTLINED_FUNCTION_89_4(v19);
  if (v12)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v21);
  }

  else
  {
    *(v13 + 152) = 0;
    *(v13 + 160) = 0;
  }

  v22 = *(v11 + 56);
  v23 = *(v11 + 40);
  v24 = *(v11 + 90);
  *(v13 + 144) = v12;
  OUTLINED_FUNCTION_53_3();
  *(v13 + 168) = v25;
  *(v13 + 176) = v26;
  OUTLINED_FUNCTION_51_3();
  *(v13 + 184) = v27;
  *(v13 + 192) = v28;
  OUTLINED_FUNCTION_21_40();
  *(v13 + 216) = v30;
  *(v13 + 224) = v29;
  *(v13 + 232) = 0xE700000000000000;
  outlined init with copy of PhoneCallNLIntent?(v31, v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v32 = type metadata accessor for SpeakableString();
  v33 = OUTLINED_FUNCTION_58(v32);
  v34 = *(v11 + 56);
  v35 = *(v11 + 32);
  if (v33 == 1)
  {
    v36 = *(v11 + 32);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v34, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
  }

  else
  {
    *(v13 + 264) = v10;
    __swift_allocate_boxed_opaque_existential_1((v13 + 240));
    OUTLINED_FUNCTION_6_0();
    v38 = *(v37 + 32);
    OUTLINED_FUNCTION_16_0();
    v39();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v40 = swift_task_alloc();
  *(v11 + 72) = v40;
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds();
  OUTLINED_FUNCTION_9();
  *v40 = v41;
  v40[1] = SearchCallHistoryCATsSimple.readSearchCallHistoryIntroductionAsLabels(callRecordCount:totalCallRecordCount:intent:isFirstPartyApp:appName:);
  v42 = *(v11 + 48);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_65_2();

  return v48(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadSearchCallHistoryIntroductionDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readSingleCallRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_161_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_1_106(v14, xmmword_42BF10);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = v10[3];
  *(v11 + 48) = v15;
  OUTLINED_FUNCTION_14_8();
  v19 = OUTLINED_FUNCTION_58_13(v17, v18);
  if (v16)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v19);
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v20);
  *(v11 + 144) = v21;
  OUTLINED_FUNCTION_56_13(v22);
  v23 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[6] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_114_0(v24);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSingleCallRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readSingleCallRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_161_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_1_106(v14, xmmword_42BF10);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = v10[3];
  *(v11 + 48) = v15;
  OUTLINED_FUNCTION_14_8();
  v19 = OUTLINED_FUNCTION_58_13(v17, v18);
  if (v16)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v19);
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v20);
  *(v11 + 144) = v21;
  OUTLINED_FUNCTION_56_13(v22);
  v23 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v24 = swift_task_alloc();
  v10[6] = v24;
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v24 = v25;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_96_5();
  OUTLINED_FUNCTION_60();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleCallRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readSingleVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_161_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_1_106(v14, xmmword_42BF10);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = v10[3];
  *(v11 + 48) = v15;
  OUTLINED_FUNCTION_14_8();
  v19 = OUTLINED_FUNCTION_58_13(v17, v18);
  if (v16)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v19);
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v20);
  *(v11 + 144) = v21;
  OUTLINED_FUNCTION_56_13(v22);
  v23 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[6] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_114_0(v24);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadSingleVoiceMailRecordDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds.init(rawValue:), v3);
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

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadSingleVoiceMailRecordDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ReadSingleVoiceMailRecordDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readSingleVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 65) = a4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.readSingleVoiceMailRecordAsLabels(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_161_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_1_106(v14, xmmword_42BF10);
  if (v12)
  {
    type metadata accessor for PhoneCallRecord(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = v10[3];
  *(v11 + 48) = v15;
  OUTLINED_FUNCTION_14_8();
  v19 = OUTLINED_FUNCTION_58_13(v17, v18);
  if (v16)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v19);
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_224(v20);
  *(v11 + 144) = v21;
  OUTLINED_FUNCTION_56_13(v22);
  v23 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v24 = swift_task_alloc();
  v10[6] = v24;
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds();
  OUTLINED_FUNCTION_9();
  *v24 = v25;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_96_5();
  OUTLINED_FUNCTION_60();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds and conformance SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.readVoiceMailHistoryIntroduction(newRecordsCount:savedRecordsCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v15 = OUTLINED_FUNCTION_46_15(v14);
  *(v15 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_9_65(v15, 0x726F63655277656ELL);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  else
  {
    v16 = *(v11 + 16);
  }

  OUTLINED_FUNCTION_125_2();
  v17 = *(v11 + 73);
  OUTLINED_FUNCTION_28_26(v18);
  if (v19)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v21 = *(v11 + 24);
    v20 = &type metadata for Double;
  }

  v22 = OUTLINED_FUNCTION_7_68(v20);
  if (v10)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(v22);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v22);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 56) = v23;
  *v23 = v24;
  v23[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  v25 = *(v11 + 40);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.readVoiceMailHistoryIntroductionAsLabels(newRecordsCount:savedRecordsCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v15 = OUTLINED_FUNCTION_46_15(v14);
  *(v15 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_9_65(v15, 0x726F63655277656ELL);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    v12[7] = 0;
    v12[8] = 0;
  }

  else
  {
    v16 = *(v11 + 16);
  }

  OUTLINED_FUNCTION_125_2();
  v17 = *(v11 + 73);
  OUTLINED_FUNCTION_28_26(v18);
  if (v19)
  {
    OUTLINED_FUNCTION_5_15();
    v12[13] = 0;
    v12[14] = 0;
  }

  else
  {
    v21 = *(v11 + 24);
    v20 = &type metadata for Double;
  }

  v22 = OUTLINED_FUNCTION_7_68(v20);
  if (v10)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(v22);
  }

  else
  {
    v12[19] = 0;
    v12[20] = 0;
  }

  OUTLINED_FUNCTION_166(v22);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v23);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v24;
  v10[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  v25 = *(v11 + 40);
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v31(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds and conformance SearchCallHistoryCATsSimple.ReadVoiceMailHistoryIntroductionDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.repeatVoicemailPause()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.repeatVoicemailPauseAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_44_19();

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds and conformance SearchCallHistoryCATsSimple.RepeatVoicemailPauseDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_50(v10, v11, v12, v13, v14, a9);
  OUTLINED_FUNCTION_168_0(v15, v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v18);
  v20 = *(v19 + 64);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v21 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v21, v22, v23);
}

uint64_t SearchCallHistoryCATsSimple.showCallHistoryIntro(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v11 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_186();
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_0_104(v16, xmmword_431D00);
  if (v14)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  else
  {
    v17 = *(v11 + 16);
  }

  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_39_0();
  *(v12 + 72) = v18;
  *(v12 + 80) = v13 + 1;
  *(v12 + 88) = v19;
  if (v20)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v22 = *(v11 + 24);
    v21 = &type metadata for Double;
  }

  v23 = OUTLINED_FUNCTION_25_33(v21);
  if (v10)
  {
    v23 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  v24 = OUTLINED_FUNCTION_24_36(v23);
  if (v14)
  {
    v24 = type metadata accessor for PhoneSearchCallHistoryIntent(v24);
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_15_49(v24);
  *(v12 + 240) = v25;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 264) = &type metadata for Bool;
  *(v12 + 272) = v26;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v27);
  v28 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v28);
  OUTLINED_FUNCTION_160_1();
  if (v29)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    v31 = *(v30 + 32);
    OUTLINED_FUNCTION_123_0();
    v32();
  }

  v33 = *(v11 + 99);
  OUTLINED_FUNCTION_119_3();
  *(v12 + 320) = v13;
  *(v12 + 328) = v34;
  *(v12 + 360) = &type metadata for Bool;
  *(v12 + 336) = v35;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v36 = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_77_12(v36);
  *v37 = v38;
  OUTLINED_FUNCTION_156_0(v37);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ShowCallHistoryIntroDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::ShowCallHistoryIntroDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t SearchCallHistoryCATsSimple.showCallHistoryIntroAsLabels(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_50(v10, v11, v12, v13, v14, a9);
  OUTLINED_FUNCTION_168_0(v15, v16, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v18);
  v20 = *(v19 + 64);
  *(v9 + 64) = OUTLINED_FUNCTION_45();
  v21 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v21, v22, v23);
}

uint64_t SearchCallHistoryCATsSimple.showCallHistoryIntroAsLabels(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:isShowingMissedCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v11 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_186();
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_0_104(v16, xmmword_431D00);
  if (v14)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  else
  {
    v17 = *(v11 + 16);
  }

  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_39_0();
  *(v12 + 72) = v18;
  *(v12 + 80) = v13 + 1;
  *(v12 + 88) = v19;
  if (v20)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v22 = *(v11 + 24);
    v21 = &type metadata for Double;
  }

  v23 = OUTLINED_FUNCTION_25_33(v21);
  if (v10)
  {
    v23 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  v24 = OUTLINED_FUNCTION_24_36(v23);
  if (v14)
  {
    v24 = type metadata accessor for PhoneSearchCallHistoryIntent(v24);
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  OUTLINED_FUNCTION_15_49(v24);
  *(v12 + 240) = v25;
  OUTLINED_FUNCTION_21_40();
  *(v12 + 264) = &type metadata for Bool;
  *(v12 + 272) = v26;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_127_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v27);
  v28 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_11_57(v28);
  OUTLINED_FUNCTION_160_1();
  if (v29)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    v31 = *(v30 + 32);
    OUTLINED_FUNCTION_123_0();
    v32();
  }

  v33 = *(v11 + 99);
  OUTLINED_FUNCTION_119_3();
  *(v12 + 320) = v13;
  *(v12 + 328) = v34;
  *(v12 + 360) = &type metadata for Bool;
  *(v12 + 336) = v35;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_119_4(v36);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v37;
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_43_27();
  OUTLINED_FUNCTION_60();

  return v43(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds and conformance SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedCallTypes()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedCallTypesAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();
  v3 = OUTLINED_FUNCTION_44_19();

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedCallTypesDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedDateCreated()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(40);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedDateCreatedAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(40);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedDateCreatedDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedRecipient()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedRecipientAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_44_19();

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedRecipientDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)(char a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = v4;
  *(v5 + 58) = a3;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.unsupportedSearchParameters(isVoicemail:isMissed:isLatest:contactToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  v13 = *(v11 + 58);
  v14 = *(v11 + 57);
  v15 = *(v11 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_161_0();
  v17 = OUTLINED_FUNCTION_51(v16);
  v18 = OUTLINED_FUNCTION_27_33(v17, xmmword_42BF10);
  *(OUTLINED_FUNCTION_71_9(v18, &type metadata for Bool) + 144) = v13;
  OUTLINED_FUNCTION_39_0();
  v19[21] = v20;
  v19[22] = 16;
  v19[23] = v21;
  v22 = 0;
  if (v10)
  {
    v22 = type metadata accessor for DialogPerson();
  }

  else
  {
    v12[25] = 0;
    v12[26] = 0;
  }

  v12[24] = v10;
  v12[27] = v22;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 40) = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_39(v23);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

BOOL SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedSearchParametersAsLabels(isVoicemail:isMissed:isLatest:contactToConfirm:)(char a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = v4;
  *(v5 + 58) = a3;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.unsupportedSearchParametersAsLabels(isVoicemail:isMissed:isLatest:contactToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_1();
  v13 = v11[58];
  v14 = v11[57];
  v15 = v11[56];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_161_0();
  v17 = OUTLINED_FUNCTION_51(v16);
  v18 = OUTLINED_FUNCTION_27_33(v17, xmmword_42BF10);
  *(OUTLINED_FUNCTION_71_9(v18, &type metadata for Bool) + 144) = v13;
  OUTLINED_FUNCTION_39_0();
  v19[21] = v20;
  v19[22] = 16;
  v19[23] = v21;
  v22 = 0;
  if (v10)
  {
    v22 = type metadata accessor for DialogPerson();
  }

  else
  {
    v12[25] = 0;
    v12[26] = 0;
  }

  v12[24] = v10;
  v12[27] = v22;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v23 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v23);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds();
  OUTLINED_FUNCTION_9();
  *v10 = v24;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_65_2();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedSearchParametersDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedUnseen(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.unsupportedUnseen(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_51(v3) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_14_8();
  v6 = OUTLINED_FUNCTION_73_9(v4, v5);
  if (v2)
  {
    v6 = type metadata accessor for PhoneSearchCallHistoryIntent(v6);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_30(v8);
  OUTLINED_FUNCTION_43_4(35);
  OUTLINED_FUNCTION_65_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::UnsupportedUnseenDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::UnsupportedUnseenDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.unsupportedUnseenAsLabels(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.unsupportedUnseenAsLabels(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_51(v3) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_14_8();
  v6 = OUTLINED_FUNCTION_73_9(v4, v5);
  if (v2)
  {
    v6 = type metadata accessor for PhoneSearchCallHistoryIntent(v6);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v7);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_70_10(35);
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds and conformance SearchCallHistoryCATsSimple.UnsupportedUnseenDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.visualCatText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VisualCatTextDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.VisualCatTextDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.VisualCatTextDialogIds.init(rawValue:), v3);
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

uint64_t SearchCallHistoryCATsSimple.VisualCatTextDialogIds.rawValue.getter(char a1)
{
  result = 28494;
  switch(a1)
  {
    case 1:
      result = 0x73746E65636552;
      break;
    case 2:
      result = 0x69616D6563696F56;
      break;
    case 3:
      result = 7562585;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VisualCatTextDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VisualCatTextDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.VisualCatTextDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SearchCallHistoryCATsSimple.VisualCatTextDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.visualCatTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(31);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VisualCatTextDialogIds and conformance SearchCallHistoryCATsSimple.VisualCatTextDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:)(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToContinueReading(isLastPage:isLeadingSavedVoiceMailPrePrompt:)()
{
  OUTLINED_FUNCTION_75_6();
  v13 = v1;
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 49);
  v3 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  *(v0 + 24) = v4;
  *(v4 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v4) + 48) = v3;
  OUTLINED_FUNCTION_39_0();
  *(v5 + 72) = v6;
  *(v5 + 80) = 0xD000000000000020;
  *(v5 + 88) = v7;
  *(v5 + 120) = v6;
  *(v5 + 96) = v2;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v8;
  *v8 = v9;
  v8[1] = AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:);
  v10 = *(v0 + 16);

  return v12(0xD000000000000031, 0x8000000000454440, v4);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VoiceMailOfferToContinueReadingDialogIds_optional __swiftcall SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds.init(rawValue:), v3);
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

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VoiceMailOfferToContinueReadingDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VoiceMailOfferToContinueReadingDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToContinueReadingAsLabels(isLastPage:isLeadingSavedVoiceMailPrePrompt:)(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToContinueReadingAsLabels(isLastPage:isLeadingSavedVoiceMailPrePrompt:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_424FF0;
  *(OUTLINED_FUNCTION_3_98(v3) + 48) = v2;
  OUTLINED_FUNCTION_39_0();
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000020;
  *(v4 + 88) = v6;
  *(v4 + 120) = v5;
  *(v4 + 96) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_138_3(v7);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v8;
  OUTLINED_FUNCTION_166_0();
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_65_1();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToContinueReadingDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToFollowUpAction(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToFollowUpAction(isLastPage:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_3_98(v2);
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_135_1(v5);
  v6 = OUTLINED_FUNCTION_34_21(48);

  return v7(v6);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VoiceMailOfferToFollowUpActionDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATsSimple::VoiceMailOfferToFollowUpActionDialogIds_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToFollowUpActionAsLabels(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.voiceMailOfferToFollowUpActionAsLabels(isLastPage:)()
{
  OUTLINED_FUNCTION_75_6();
  v12 = v2;
  OUTLINED_FUNCTION_23_0();
  v3 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1();
  v5 = OUTLINED_FUNCTION_3_98(v4);
  *(v5 + 72) = &type metadata for Bool;
  *(v5 + 48) = v3;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  *(v1 + 24) = v4;
  *(v4 + 16) = v6;
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_138_3(v7);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v8;
  OUTLINED_FUNCTION_166_0();
  OUTLINED_FUNCTION_145_0();
  v9 = OUTLINED_FUNCTION_97_4(48);

  return v10(v9);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailOfferToFollowUpActionDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailPromptToPlay()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(39);

  return v4(v3);
}

BOOL SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.voiceMailPromptToPlayAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(39);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds and conformance SearchCallHistoryCATsSimple.VoiceMailPromptToPlayDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:)(char a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.windowIntroForReadingMultipleRecords(isFirstWindow:isLastWindow:windowSize:)()
{
  OUTLINED_FUNCTION_75_6();
  v18 = v2;
  OUTLINED_FUNCTION_23_0();
  v3 = *(v1 + 58);
  v4 = *(v1 + 57);
  v5 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47();
  v7 = OUTLINED_FUNCTION_138_3(v6);
  v8 = OUTLINED_FUNCTION_22_30(v7, xmmword_426980);
  v9 = OUTLINED_FUNCTION_85_6(v8, &type metadata for Bool);
  *(v9 + 96) = v4;
  OUTLINED_FUNCTION_39_24(v9, v10);
  if (v3)
  {
    OUTLINED_FUNCTION_160_0();
    v0[19] = 0;
    v0[20] = 0;
  }

  else
  {
    v11 = *(v1 + 16);
    v12 = &type metadata for Double;
  }

  v0[18] = v11;
  v0[21] = v12;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_117(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_39(v14);

  return v17(0xD000000000000036, 0x8000000000454480, v0);
}

BOOL SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t SearchCallHistoryCATsSimple.windowIntroForReadingMultipleRecordsAsLabels(isFirstWindow:isLastWindow:windowSize:)(char a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;
  *(v5 + 57) = a2;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATsSimple.windowIntroForReadingMultipleRecordsAsLabels(isFirstWindow:isLastWindow:windowSize:)()
{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 58);
  v3 = *(v0 + 57);
  v4 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47();
  *(v0 + 32) = v5;
  v6 = OUTLINED_FUNCTION_22_30(v5, xmmword_426980);
  v7 = OUTLINED_FUNCTION_85_6(v6, &type metadata for Bool);
  *(v7 + 96) = v3;
  OUTLINED_FUNCTION_39_24(v7, v8);
  if (v2)
  {
    OUTLINED_FUNCTION_160_0();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  else
  {
    v9 = *(v0 + 16);
    v10 = &type metadata for Double;
  }

  v5[9].n128_u64[0] = v9;
  v5[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_42_0(v11);
  lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds();
  OUTLINED_FUNCTION_9();
  *v3 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_145_0();
  v13 = OUTLINED_FUNCTION_97_4(54);

  return v14(v13);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds and conformance SearchCallHistoryCATsSimple.WindowIntroForReadingMultipleRecordsDialogIds);
  }

  return result;
}

uint64_t SearchCallHistoryCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return SearchCallHistoryCATsSimple.init(templateDir:options:globals:)(v3, v4);
}

uint64_t SearchCallHistoryCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_14_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  outlined init with copy of PhoneCallNLIntent?(a1, &v21 - v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v13, a2, v2);
  v19 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v19;
}

uint64_t SearchCallHistoryCATsSimple.__allocating_init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14_5(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_39_1();
  v9(v8);
  CATWrapperSimple.init(useResponseMode:options:)();
  v10 = OUTLINED_FUNCTION_53();
  v11(v10);
  return v7;
}

uint64_t SearchCallHistoryCATsSimple.init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14_5(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_39_1();
  v6(v5);
  CATWrapperSimple.init(useResponseMode:options:)();
  v7 = OUTLINED_FUNCTION_53();
  v8(v7);
  return v0;
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATsSimple.Properties and conformance SearchCallHistoryCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.Properties and conformance SearchCallHistoryCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.Properties and conformance SearchCallHistoryCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATsSimple.Properties and conformance SearchCallHistoryCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for SearchCallHistoryCATsSimple()
{
  result = type metadata singleton initialization cache for SearchCallHistoryCATsSimple;
  if (!type metadata singleton initialization cache for SearchCallHistoryCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD8)
  {
    v6 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
          *result = a2 + 39;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchCallHistoryCATsSimple.ReadMultipleCallRecordsDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_84_6(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_84_6((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_84_6(v8);
}