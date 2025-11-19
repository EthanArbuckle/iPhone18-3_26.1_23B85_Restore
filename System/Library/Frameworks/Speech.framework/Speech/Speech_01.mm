uint64_t sub_1AC5D2234()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_50_4()
{
  v9 = v0[33];
  v10 = v0[35];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v8 = v0[26];
  v5 = v0[20];
  v6 = v0[21];
}

uint64_t OUTLINED_FUNCTION_50_5()
{
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v6 = v0[57];
  v5 = v0[58];
  v7 = v0[56];
  v8 = v0[53];
}

uint64_t OUTLINED_FUNCTION_50_6(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[11];
  v4 = v2[12];
  v5 = v2[8];
  v6 = v2[9];
  v7 = v2[6];
  v8 = v2[7];
  return result;
}

uint64_t OUTLINED_FUNCTION_50_8()
{
  v2 = *(v0 + 40);

  return sub_1AC7A0E78();
}

void OUTLINED_FUNCTION_50_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_50_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t sub_1AC5D2398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t OUTLINED_FUNCTION_6_2(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return swift_dynamicCastObjCProtocolConditional();
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1)
{
  *(a1 + 8) = sub_1AC6C6AD0;
  v2 = *(v1 + 248);
  return 1;
}

uint64_t OUTLINED_FUNCTION_6_14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1AC5D25B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1AC5D263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_130_0(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_167(v8);
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_67_0();
  return a4(a1);
}

uint64_t sub_1AC5D26A4(char a1, void (*a2)(_BYTE *))
{
  v4 = MEMORY[0x1E69E6370];
  v3[0] = a1;
  a2(v3);
  return sub_1AC5C71B8(v3, &unk_1EB56C620);
}

uint64_t OUTLINED_FUNCTION_192_0()
{
  *(v1 + *(*(v4 - 120) + 48)) = *(*(v0 + 56) + 8 * v3);

  return sub_1AC61B988(v1, v2);
}

uint64_t sub_1AC5D2934(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v6, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (!dynamic_cast_existential_1_conditional(MEMORY[0x1E69E6370]))
  {

LABEL_6:
    sub_1AC5C71B8(v6, &unk_1EB56C620);
    v3 = sub_1AC5D2AC0(a1);
    return v3 & 1;
  }

  sub_1AC6EB2E4();

  if (v1)
  {
    v3 = sub_1AC5C71B8(v6, &unk_1EB56C620);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
    swift_dynamicCast();
    sub_1AC5C71B8(v6, &unk_1EB56C620);
    v3 = v6[47];
  }

  return v3 & 1;
}

uint64_t sub_1AC5D2AC0(uint64_t a1)
{
  sub_1AC5D1E4C(a1, &v4, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  if (!swift_dynamicCast() || (v1 = v5, v5 == 2))
  {
    sub_1AC6015E8();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }

  return v1 & 1;
}

uint64_t OUTLINED_FUNCTION_103_1()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_103_2@<Q0>(__n128 *a1@<X8>)
{
  v3 = a1[1].n128_u64[0];
  result = *a1;
  *(v2 - 128) = *a1;
  v1[24] = result;
  v1[25].n128_u64[0] = v3;
  return result;
}

void *OUTLINED_FUNCTION_191_0()
{

  return memcpy((v2 + 32), (v0 + 32), 24 * v1);
}

__CFString *SFAnalyticsEventTypeGetName(uint64_t a1)
{
  if (a1 > 105)
  {
    if (a1 > 300)
    {
      switch(a1)
      {
        case 301:
          v1 = @"com.apple.speechapi.PrepareStarted";
          goto LABEL_28;
        case 302:
          v1 = @"com.apple.speechapi.PrepareCompleted";
          goto LABEL_28;
        case 303:
          v1 = @"com.apple.speechapi.PrepareFailed";
          goto LABEL_28;
      }
    }

    else
    {
      switch(a1)
      {
        case 106:
          v1 = @"com.apple.speechapi.RequestPerformance";
          goto LABEL_28;
        case 201:
          v1 = @"com.apple.speechapi.AssetRequested";
          goto LABEL_28;
        case 202:
          v1 = @"com.apple.speechapi.AssetRequestCompleted";
          goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  if (a1 <= 102)
  {
    switch(a1)
    {
      case 'd':
        v1 = @"com.apple.speechapi.RequestStarted";
        goto LABEL_28;
      case 'e':
        v1 = @"com.apple.speechapi.StopSpeech";
        goto LABEL_28;
      case 'f':
        v1 = @"com.apple.speechapi.CancelSpeech";
        goto LABEL_28;
    }

LABEL_27:
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown.%ld", a1];
    goto LABEL_28;
  }

  if (a1 == 103)
  {
    v1 = @"com.apple.speechapi.ResultPackage";
  }

  else if (a1 == 104)
  {
    v1 = @"com.apple.speechapi.RequestCompleted";
  }

  else
  {
    v1 = @"com.apple.speechapi.RequestFailed";
  }

LABEL_28:

  return v1;
}

void sub_1AC5D2E70(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1AC5D2EA4();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1AC5D3188()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D31BC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D3224()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1AC5D37E0(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1AC5D37F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D3828()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D385C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D38B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_50_0();
  v6 = sub_1AC79FB18();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_24(*(v4 + *(a3 + 20) + 8));
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    v8 = v4 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_1AC5D3984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_50_0();
  result = sub_1AC79FB18();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v5;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + *(a4 + 20) + 8) = (v4 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    v10 = v5 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_1AC5D3A5C(unint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_24(*a1);
  }

  sub_1AC79F8E8();
  v3 = OUTLINED_FUNCTION_25_2();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1AC5D3AD0()
{
  OUTLINED_FUNCTION_50_0();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1AC79F8E8();
    v3 = OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1AC5D3B44(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_24(*(a1 + 8));
  }

  sub_1AC79F8E8();
  v3 = OUTLINED_FUNCTION_25_2();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1AC5D3BB8()
{
  OUTLINED_FUNCTION_50_0();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_1AC79F8E8();
    v3 = OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1AC5D3D3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_24(*a1);
  }

  v7 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v8 = a1 + *(a3 + 32);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_1AC5D3DB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DictationTranscriber.ModelOptions(0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void *_s6Speech20DictationTranscriberC11ContentHintVwCP_0(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2 >= 3)
  {
    v4 = v3;
  }

  *a1 = v3;
  return a1;
}

uint64_t sub_1AC5D3E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_24(*(a1 + *(a3 + 28)));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1AC5D3F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void *_s6Speech20DictationTranscriberC11ContentHintV8HintCaseOwCP_0(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v4 = v3;
  }

  *a1 = v3;
  return a1;
}

void sub_1AC5D4180(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1AC79FF58();
  [a3 setResultCandidateId_];
}

uint64_t sub_1AC5D42E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F5C8();
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

    return (v8 + 1);
  }
}

uint64_t sub_1AC5D4390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AC79F5C8();
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

void *_s6Speech14AudioAnalyticsV15AcousticFeatureVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_1AC5D44C8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AC5D4514()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AC5D4554()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AC5D459C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AC5D45D4()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D4608()
{
  v1 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
    v8 = *(v0 + 64);
  }

  v9 = (v4 + 72) & ~v4;
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v9, v1);
  v12 = *(v0 + v10);

  v13 = *(v0 + v11 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 16, v4 | 7);
}

uint64_t sub_1AC5D4708()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D47D0()
{
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D480C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  v10 = *(v0 + 6);

  v4 = (v3 + 56) & ~v3;
  v11 = type metadata accessor for SpeechAnalyzer.Options(0);
  v12 = OUTLINED_FUNCTION_178_1();
  if (!__swift_getEnumTagSinglePayload(v12, v13, v11))
  {
    v14 = sub_1AC7A0288();
    OUTLINED_FUNCTION_22_0(v14);
    (*(v15 + 8))(&v0[v4]);
    v16 = &v0[v4 + *(v11 + 24)];
    if (*(v16 + 1))
    {

      v17 = *(v16 + 3);

      v18 = *(v16 + 5);
    }
  }

  v19 = OUTLINED_FUNCTION_214();

  return MEMORY[0x1EEE6BDD0](v19, v20, v21);
}

uint64_t sub_1AC5D4934()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D4968()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D49C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_414();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1AC5D4A08()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D4A40()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D4A74()
{
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22_0(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  OUTLINED_FUNCTION_314();
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9(v0 + v8);
  v10 = *(v0 + v1);

  v11 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  v12 = OUTLINED_FUNCTION_420();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1AC5D4B28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1AC688EEC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AC5D4B88()
{
  OUTLINED_FUNCTION_104();
  v1 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40(v1);
  v4 = ((*(v2 + 80) + 64) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_40(v5);
  v7 = v6;
  v8 = (v4 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 32);

  v13 = OUTLINED_FUNCTION_305();
  v14(v13);
  (*(v7 + 8))(v0 + v8, v5);
  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_105();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1AC5D4CBC()
{
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22_0(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  OUTLINED_FUNCTION_314();
  v8(v0 + v7);
  v9 = *(v0 + v1);

  v10 = *(v0 + ((v1 + 43) & 0xFFFFFFFFFFFFFFF8) + 8);

  v11 = OUTLINED_FUNCTION_420();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1AC5D4D54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_40(v1);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[4];

  v8 = v0[9];

  v9 = OUTLINED_FUNCTION_328();
  v10(v9);
  v11 = OUTLINED_FUNCTION_214();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1AC5D4E24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_22_0(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)));
  v4 = OUTLINED_FUNCTION_420();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1AC5D4EA8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AC5D4EF4()
{
  OUTLINED_FUNCTION_104();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_40(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1AC7A0288();
  OUTLINED_FUNCTION_40(v5);
  v7 = v6;
  v8 = (v4 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();

  v12 = OUTLINED_FUNCTION_305();
  v13(v12);
  v14 = *(v0 + v4);

  (*(v7 + 8))(v0 + v8, v5);
  OUTLINED_FUNCTION_592();
  OUTLINED_FUNCTION_105();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1AC5D5038()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  OUTLINED_FUNCTION_40(v1);
  v3 = (*(v2 + 80) + 65) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = OUTLINED_FUNCTION_328();
  v9(v8);
  v10 = OUTLINED_FUNCTION_214();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1AC5D50F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 132, 7);
}

uint64_t sub_1AC5D512C()
{
  v1 = v0[4];
  OUTLINED_FUNCTION_44_4();
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[6];

  v8 = OUTLINED_FUNCTION_328();
  v9(v8);
  v10 = OUTLINED_FUNCTION_214();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1AC5D51D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_573();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1AC5D5214()
{
  MEMORY[0x1B26EABE0](v0 + 16);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D5248()
{
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22_0(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  OUTLINED_FUNCTION_314();
  v8(v0 + v7);
  v9 = *(v0 + v1);

  v10 = *(v0 + ((v1 + 15) & 0xFFFFFFFFFFFFFFF8));

  v11 = OUTLINED_FUNCTION_420();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1AC5D52DC()
{
  v2 = sub_1AC7A0288();
  OUTLINED_FUNCTION_22_0(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  OUTLINED_FUNCTION_314();
  v8(v0 + v7);
  v9 = *(v0 + v1);

  v10 = OUTLINED_FUNCTION_420();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1AC5D55B0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D5634()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D5680()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 120);

  v6 = *(v0 + 136);

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AC5D56E8()
{
  OUTLINED_FUNCTION_21_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  OUTLINED_FUNCTION_28_5(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_254_0(v12))
  {
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  v13 = sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0(v13);
  (*(v14 + 8))(v0 + v9);
  OUTLINED_FUNCTION_258_0();
  v15 = OUTLINED_FUNCTION_158_2();
  if (!OUTLINED_FUNCTION_107_1(v15))
  {
    v16 = OUTLINED_FUNCTION_257_0();
    if (!OUTLINED_FUNCTION_109_2(v16))
    {
      OUTLINED_FUNCTION_40_5();
      v18 = *(v17 + 8);
      v19 = OUTLINED_FUNCTION_236();
      v20(v19);
    }

    OUTLINED_FUNCTION_156_2();
    v21 = *(v1 + 28);
    if (!OUTLINED_FUNCTION_13_1(v4 + v21))
    {
      OUTLINED_FUNCTION_40_5();
      (*(v22 + 8))(v4 + v21, v11);
    }

    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_255_0();
    OUTLINED_FUNCTION_271_0();
    OUTLINED_FUNCTION_270_0();
  }

  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_267_0();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6BDD0](v23, v24, v25);
}

uint64_t sub_1AC5D5900()
{
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_228_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D5938()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  v8 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_113_3(v8))
  {
    OUTLINED_FUNCTION_61_3();
    v10 = *(v9 + 8);
    v11 = OUTLINED_FUNCTION_216_0();
    v12(v11);
  }

  OUTLINED_FUNCTION_66_4();
  v14 = v13 & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_3_3(v15);
  v16 = *(v0 + v14);

  v17 = OUTLINED_FUNCTION_178_2();

  return MEMORY[0x1EEE6BDD0](v17, v18, v19);
}

uint64_t sub_1AC5D5A38()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D5A70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_113_3(v7))
  {
    OUTLINED_FUNCTION_61_3();
    v9 = *(v8 + 8);
    v10 = OUTLINED_FUNCTION_216_0();
    v11(v10);
  }

  OUTLINED_FUNCTION_66_4();
  v13 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_3_3(v14);
  v15 = *(v0 + v13);

  v16 = OUTLINED_FUNCTION_178_2();

  return MEMORY[0x1EEE6BDD0](v16, v17, v18);
}

uint64_t sub_1AC5D5B6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  v9 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_113_3(v9))
  {
    OUTLINED_FUNCTION_61_3();
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_216_0();
    v13(v12);
  }

  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_3_3(v14);
  v15 = OUTLINED_FUNCTION_178_2();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1AC5D5C68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  v9 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_113_3(v9))
  {
    OUTLINED_FUNCTION_61_3();
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_216_0();
    v13(v12);
  }

  v14 = (v5 + ((v3 + 56) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 16, v3 | 7);
}

uint64_t sub_1AC5D5D74()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D5E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1AC7A0D38();
  }
}

uint64_t sub_1AC5D5E9C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAB8, &unk_1AC7AB910);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AC5D5ECC()
{
  v2 = OUTLINED_FUNCTION_20_7();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1AC5D5F08()
{
  v2 = OUTLINED_FUNCTION_20_7();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_1AC5D5F48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_20_7();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = a3[6];
LABEL_8:

    return __swift_getEnumTagSinglePayload(v4 + v8, v3, v7);
  }

  if (v3 != 0x7FFFFFFF)
  {
    v7 = sub_1AC79F9C8();
    v8 = a3[8];
    goto LABEL_8;
  }

  v9 = *(v4 + a3[7]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1AC5D600C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = OUTLINED_FUNCTION_20_7();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v5 + a4[7]) = (v4 - 1);
      return result;
    }

    v9 = sub_1AC79F9C8();
    v10 = a4[8];
  }

  return __swift_storeEnumTagSinglePayload(v5 + v10, v4, v4, v9);
}

uint64_t sub_1AC5D60D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D6118()
{
  MEMORY[0x1B26EABE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D61C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D620C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CB48, &unk_1AC7AC0B0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AC5D623C()
{
  MEMORY[0x1B26EABE0](v0 + 16);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D6270()
{
  v1 = sub_1AC79F958();
  OUTLINED_FUNCTION_40(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 16) & ~v4;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v3 + 8);
  v11(v0 + v5, v1);
  v12 = *(v0 + v8 + 8);

  v11(v0 + v9, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v7, v4 | 7);
}

uint64_t sub_1AC5D6370()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D63A4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D63E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_24(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  v8 = a1 + *(a3 + 32);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1AC5D646C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AC5D64F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_24(*(a1 + *(a3 + 24) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1AC5D659C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AC79F958();
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

uint64_t sub_1AC5D6684(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AC79F8E8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1AC79FB18();
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1AC5D6750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1AC79F8E8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1AC79FB18();
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void **_s6Speech14SpeechDonationV11AudioSourceV10SourceCaseOwCP_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

void **assignWithCopy for CommandRecognizer.ActiveSet(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **assignWithTake for CommandRecognizer.ActiveSet(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void *_s6Speech14AudioConverterVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_1AC5D6978()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AC5D69B0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *_s6Speech17SpeechTranscriberC12ModelOptionsVwCP_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AC5D6B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490) - 8) + 84) == a2)
  {
    v6 = OUTLINED_FUNCTION_42_6();

    return __swift_getEnumTagSinglePayload(v6, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 36));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1AC5D6C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AC5D6E1C()
{
  OUTLINED_FUNCTION_17_8();
  v2 = sub_1AC79F958();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1AC5D6E5C()
{
  OUTLINED_FUNCTION_17_8();
  sub_1AC79F958();
  v0 = OUTLINED_FUNCTION_26_10();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1AC5D6E9C@<X0>(uint64_t *a1@<X8>)
{
  result = AnalysisContext.UserDataTag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AC5D6EC4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1AC5D6F34(uint64_t *a1)
{
  OUTLINED_FUNCTION_26_11(a1);
  result = AnalysisContext.contextualStrings.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1AC5D6F60(uint64_t *a1)
{
  OUTLINED_FUNCTION_26_11(a1);
  result = AnalysisContext.userData.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1AC5D6F8C(uint64_t *a1)
{
  OUTLINED_FUNCTION_26_11(a1);
  result = AnalysisContext.enhancedContextualStrings.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1AC5D6FB8(uint64_t *a1)
{
  OUTLINED_FUNCTION_26_11(a1);
  result = AnalysisContext.contextualNamedEntities.getter();
  *v1 = result;
  return result;
}

uint64_t sub_1AC5D6FEC(uint64_t *a1)
{
  OUTLINED_FUNCTION_26_11(a1);
  result = AnalysisContext.profileData.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1AC5D7040(uint64_t *a1)
{
  OUTLINED_FUNCTION_26_11(a1);
  result = AnalysisContext.jitProfileData.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *_s6Speech15AnalysisContextC20ContextualStringsTagVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *_s6Speech15AnalysisContextC20ContextualStringsTagVwta_0(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_1AC5D712C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_613();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1AC5D7170()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D71A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_613();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1AC5D71E8()
{
  MEMORY[0x1B26EABE0](v0 + 16);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D7220()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D72D0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AC5D7308()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D733C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D7370()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D7414()
{
  MEMORY[0x1B26EABE0](v0 + 16);
  v1 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D7444()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AC5D747C()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1AC5D74AC()
{
  MEMORY[0x1B26EABE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D74E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D7528()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D7558()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v2 = sub_1AC7A01E8();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1AC5D7600()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v2 = sub_1AC7A01E8();
  OUTLINED_FUNCTION_40(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 80) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v0 + 64);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v8, v5 | 7);
}

uint64_t sub_1AC5D7748()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AC5D7780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AC5D7854()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D78F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79FB18();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1AC5D79D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AC79FB18();
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

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t _s6Speech22RecognizerCapabilitiesVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = v3;
  return a1;
}

char *sub_1AC5D7B28(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_7_16(a3, result, a2);
  }

  return result;
}

uint64_t sub_1AC5D7BEC()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_12_11();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D7C1C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  OUTLINED_FUNCTION_86_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 2);

  v9 = *(v1 + 3);

  v10 = *(v1 + 4);

  v11 = *(v1 + 6);

  v12 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_22_0(v12);
  (*(v13 + 8))(&v1[v5]);
  v14 = *&v1[v5 + 8 + *(v0 + 56)];

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1AC5D7D1C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE30, &unk_1AC7A8230);
  OUTLINED_FUNCTION_86_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];

  v9 = v1[3];

  v10 = v1[4];

  v11 = v1[6];

  v12 = v1 + v5;
  v13 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_22_0(v13);
  (*(v14 + 8))(v12);
  v15 = *&v12[*(v0 + 56) + 8];

  v16 = *(v1 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v1, v7 + 16, v4 | 7);
}

uint64_t sub_1AC5D7E3C()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_19_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D7E6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8C0, &qword_1AC7B0968);
  OUTLINED_FUNCTION_22_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AC5D7F80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D7FC0@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneticEmbedder.InputFormat.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AC5D7FE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D8020()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D8080()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D80B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D80F0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D8124()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D8178()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CB30, &qword_1AC7B1CA0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1AC5D81A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_24(*(a1 + *(a3 + 20) + 8));
    }

    v7 = sub_1AC79FBA8();
    v8 = a1 + *(a3 + 32);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1AC5D827C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1AC79FBA8();
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1AC5D8358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_24(*(a1 + 16));
  }

  v7 = sub_1AC79FBA8();
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1AC5D83D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1AC79FBA8();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AC5D84C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D8508()
{
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D853C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D8570()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AC5D85FC()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D8630()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_68_7();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1AC5D8670()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_573();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D86B8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D86EC()
{
  _Block_release(*(v0 + 32));

  v1 = OUTLINED_FUNCTION_68_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D8734()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D8768()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AC5D87B8()
{
  MEMORY[0x1B26EABE0](v0 + 16);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D88F8()
{
  _Block_release(*(v0 + 32));
  v1 = OUTLINED_FUNCTION_68_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D8938()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 88);
  swift_unknownObjectRelease();
  v5 = *(v0 + 96);
  swift_unknownObjectRelease();
  v6 = *(v0 + 104);
  swift_unknownObjectRelease();

  v7 = *(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AC5D89C8()
{
  v1 = sub_1AC79F498();
  OUTLINED_FUNCTION_80(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AC5D8B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1AC5D8BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AC5D8C90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D8CD8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D8D34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D8D6C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC5D8E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AC5D8EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AC5D9088()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AC5D9104()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AC5D914C()
{
  MEMORY[0x1B26EABE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D9194(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79FB18();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1AC5D91DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79FB18();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1AC5D9228()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AC5D9268()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AC5D92A0()
{
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC5D92D4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t initializeBufferWithCopyOfBuffer for AnalyzerInput(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_1AC5D9374(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AC5D9384(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_1AC5D93E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC5D9408(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

char *sub_1AC5D9428(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_14(a3, result);
  }

  return result;
}

void sub_1AC5D9454(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1AC5D948C(char a1)
{
  sub_1AC7A0E78();
  sub_1AC625934(a1);
  OUTLINED_FUNCTION_3_2();

  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D94E8()
{
  sub_1AC7A0E78();
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9538()
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1B26E9A40](v0 + 1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9578()
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1B26E9A40](v0 & 1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D95B4()
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1B26E9A40](v0);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D95F0(uint64_t a1)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9638()
{
  sub_1AC7A0E78();
  sub_1AC7A0048();

  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D96EC()
{
  sub_1AC7A0E78();
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9738(uint64_t a1, unsigned __int8 a2)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a2 + 1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9780(uint64_t a1, char a2)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a2 & 1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D97C4(uint64_t a1, char a2)
{
  sub_1AC7A0E78();
  sub_1AC625934(a2);
  OUTLINED_FUNCTION_3_2();

  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9810(uint64_t a1, unsigned __int8 a2)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9854(uint64_t a1, uint64_t a2)
{
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9898()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1AC5D9918(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC5D9938(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AC5D9988(uint64_t a1, int a2)
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

uint64_t sub_1AC5D99A8(uint64_t result, int a2, int a3)
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

uint64_t sub_1AC5D9A48()
{
  v1 = OUTLINED_FUNCTION_1_0();
  result = nullsub_1(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1AC5D9A88(uint64_t a1)
{
  v2 = sub_1AC5D9F2C(&qword_1EB56B838, type metadata accessor for SFSpeechError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AC5D9AF4(uint64_t a1)
{
  v2 = sub_1AC5D9F2C(&qword_1EB56B838, type metadata accessor for SFSpeechError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1AC5D9B64(uint64_t a1)
{
  v2 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1AC5D9BE4(uint64_t a1)
{
  v2 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1AC5D9C50(uint64_t a1)
{
  v2 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1AC5D9CBC(void *a1, uint64_t a2)
{
  v4 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1AC5D9D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1AC5D9DF4()
{
  v2 = *v0;
  sub_1AC7A0E78();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5D9E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC5D9F2C(&qword_1EB56B870, type metadata accessor for SFSpeechError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1AC5D9F2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AC5DA13C()
{
  result = qword_1EB56B860;
  if (!qword_1EB56B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B860);
  }

  return result;
}

void sub_1AC5DA268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, int a22, char a23, int a24, char a25, __int16 a26, char a27, char a28, char a29, char a30)
{
  v34 = OBJC_IVAR____TtC6Speech14OndeviceRecord_asrId;
  v35 = sub_1AC79F958();
  __swift_storeEnumTagSinglePayload(v30 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId;
  __swift_storeEnumTagSinglePayload(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId, 1, 1, v35);
  v37 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_triggerType);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_bundleId);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_geoLMRegionId);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_locale);
  *v40 = 0;
  v40[1] = 0;
  v41 = v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_snrRatio;
  *v41 = 0;
  *(v41 + 4) = 1;
  v42 = v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_pitch;
  *v42 = 0;
  *(v42 + 4) = 1;
  v89 = OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeUsed;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeUsed) = 2;
  v88 = OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeUsed;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeUsed) = 2;
  v87 = OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeRecognized;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeRecognized) = 2;
  v85 = OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeRecognized;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeRecognized) = 2;
  v84 = OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales) = 0;
  swift_beginAccess();
  sub_1AC5DC800(a1, v30 + v34);
  swift_endAccess();
  swift_beginAccess();
  sub_1AC5DC800(a2, v30 + v36);
  swift_endAccess();
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_timestamp) = a3;
  v43 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType);
  *v43 = a4;
  v43[1] = a5;
  v44 = v37[1];
  *v37 = a6;
  v37[1] = a7;

  v45 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_asrTask);
  *v45 = a8;
  v45[1] = a11;
  v46 = v38[1];
  *v38 = a12;
  v38[1] = a13;

  v47 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_clientId);
  *v47 = a14;
  v47[1] = a15;
  v48 = v39[1];
  *v39 = a16;
  v39[1] = a17;

  v49 = v40[1];
  *v40 = a18;
  v40[1] = a19;

  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_audioDurationMs) = a9;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_recognitionDurationMs) = a10;
  *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_completionState) = a20;
  *v41 = a22;
  *(v41 + 4) = a23 & 1;
  *v42 = a24;
  *(v42 + 4) = a25 & 1;
  *(v30 + v89) = a27;
  *(v30 + v88) = a28;
  *(v30 + v87) = a29;
  *(v30 + v85) = a30;
  v50 = MobileGestalt_get_current_device();
  if (!v50)
  {
    __break(1u);
    goto LABEL_9;
  }

  v51 = v50;
  v52 = MobileGestalt_copy_deviceClass_obj();

  if (!v52)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v53 = sub_1AC79FF68();
  v55 = v54;

  v56 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass);
  *v56 = v53;
  v56[1] = v55;
  v57 = MobileGestalt_get_current_device();
  if (!v57)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v58 = v57;
  v59 = MobileGestalt_copy_productType_obj();

  if (!v59)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v60 = sub_1AC79FF68();
  v62 = v61;

  v63 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType);
  *v63 = v60;
  v63[1] = v62;
  v64 = MobileGestalt_get_current_device();
  if (!v64)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v65 = v64;
  v66 = MobileGestalt_copy_buildVersion_obj();

  if (v66)
  {

    v67 = sub_1AC79FF68();
    v69 = v68;

    v70 = (v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceBuild);
    *v70 = v67;
    v70[1] = v69;
    v71 = [objc_opt_self() sharedPreferences];
    v72 = [v71 siriDataSharingOptInStatus];

    *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isSiriOptIn) = v72 == 1;
    v73 = OUTLINED_FUNCTION_14_0();
    LOBYTE(v72) = [v73 assistantIsEnabled];

    *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isAssistantEnabled) = v72;
    v74 = OUTLINED_FUNCTION_14_0();
    LOBYTE(v72) = [v74 dictationIsEnabled];

    *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isDictationEnabled) = v72;
    v75 = OUTLINED_FUNCTION_14_0();
    v76 = [v75 enabledDictationLocales];

    v77 = sub_1AC79FE28();
    v78 = sub_1AC60536C(v77);
    v79 = sub_1AC5DA8E8(v78);

    v80 = *(v30 + v84);
    *(v30 + v84) = v79;

    v81 = OUTLINED_FUNCTION_14_0();
    v82 = [v81 activeDictationLanguages];

    v83 = sub_1AC7A0158();
    sub_1AC5DC870(a2);
    sub_1AC5DC870(a1);
    *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_activeDictationLanguages) = v83;
    *(v30 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isMultipleDictationKeyboardsInstalled) = *(v83 + 16) > 1uLL;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1AC5DA8E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1AC6310CC(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1AC5DC8D8(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AC6310CC(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 40;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1AC5DA9FC()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_2_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v90 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v90 - v12;
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_1AC7A09C8();
  v94 = v92;
  v95 = v93;
  MEMORY[0x1B26E8C40](0x3A6449727361, 0xE600000000000000);
  v14 = OBJC_IVAR____TtC6Speech14OndeviceRecord_asrId;
  OUTLINED_FUNCTION_12();
  sub_1AC5DC36C(v0 + v14, v13);
  v15 = sub_1AC79F958();
  v16 = OUTLINED_FUNCTION_13_1(v13);
  sub_1AC5DC870(v13);
  if (v16 == 1)
  {
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    sub_1AC5DC36C(v2 + v14, v11);
    result = OUTLINED_FUNCTION_13_1(v11);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_82;
    }

    v18 = sub_1AC79F908();
    v17 = v20;
    (*(*(v15 - 8) + 8))(v11, v15);
  }

  MEMORY[0x1B26E8C40](v18, v17);

  MEMORY[0x1B26E8C40](0x736575716572202CLL, 0xEC0000003A644974);
  v21 = OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId;
  OUTLINED_FUNCTION_12();
  sub_1AC5DC36C(v2 + v21, v8);
  v22 = OUTLINED_FUNCTION_13_1(v8);
  sub_1AC5DC870(v8);
  if (v22 != 1)
  {
    sub_1AC5DC36C(v2 + v21, v1);
    result = OUTLINED_FUNCTION_13_1(v1);
    if (result != 1)
    {
      v24 = sub_1AC79F908();
      v23 = v25;
      (*(*(v15 - 8) + 8))(v1, v15);
      goto LABEL_9;
    }

LABEL_82:
    __break(1u);
    return result;
  }

  v23 = 0xE300000000000000;
  v24 = 7104878;
LABEL_9:
  MEMORY[0x1B26E8C40](v24, v23);

  MEMORY[0x1B26E8C40](0x7473656D6974202CLL, 0xEC0000003A706D61);
  v91 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_timestamp);
  v26 = sub_1AC7A0CC8();
  MEMORY[0x1B26E8C40](v26);

  MEMORY[0x1B26E8C40](0xD000000000000011, 0x80000001AC7B4AB0);
  v27 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType);
  v28 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType + 8);

  MEMORY[0x1B26E8C40](v27, v28);

  MEMORY[0x1B26E8C40](0x656767697274202CLL, 0xEE003A6570795472);
  if (OUTLINED_FUNCTION_7_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_triggerType))
  {
    OUTLINED_FUNCTION_6_1(v29);
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_11_0();

  MEMORY[0x1B26E8C40](0x736154727361202CLL, 0xEA00000000003A6BLL);
  OUTLINED_FUNCTION_5_1(OBJC_IVAR____TtC6Speech14OndeviceRecord_asrTask);
  MEMORY[0x1B26E8C40](v28, v15);

  MEMORY[0x1B26E8C40](0x656C646E7562202CLL, 0xEB000000003A6449);
  if (OUTLINED_FUNCTION_7_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_bundleId))
  {
    OUTLINED_FUNCTION_6_1(v30);
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_11_0();

  MEMORY[0x1B26E8C40](0x746E65696C63202CLL, 0xEB000000003A6449);
  OUTLINED_FUNCTION_5_1(OBJC_IVAR____TtC6Speech14OndeviceRecord_clientId);
  MEMORY[0x1B26E8C40](v28, v15);

  MEMORY[0x1B26E8C40](0xD000000000000010, 0x80000001AC7B4AD0);
  if (OUTLINED_FUNCTION_7_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_geoLMRegionId))
  {
    OUTLINED_FUNCTION_6_1(v31);
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_11_0();

  MEMORY[0x1B26E8C40](0x656C61636F6C202CLL, 0xE90000000000003ALL);
  if (OUTLINED_FUNCTION_7_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_locale))
  {
    OUTLINED_FUNCTION_6_1(v32);
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_11_0();

  OUTLINED_FUNCTION_10();
  v33 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_audioDurationMs);
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](0xD000000000000018, 0x80000001AC7B4B10);
  v34 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_recognitionDurationMs);
  sub_1AC7A03F8();
  OUTLINED_FUNCTION_10();
  LOBYTE(v91) = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_completionState);
  sub_1AC7A0AF8();
  MEMORY[0x1B26E8C40](0x746152726E73202CLL, 0xEB000000003A6F69);
  OUTLINED_FUNCTION_8(OBJC_IVAR____TtC6Speech14OndeviceRecord_snrRatio);
  if (v36)
  {
    v37 = 0xE300000000000000;
    v38 = 7104878;
  }

  else
  {
    v39 = *v35;
    v38 = sub_1AC7A0418();
    v37 = v40;
  }

  MEMORY[0x1B26E8C40](v38, v37);

  MEMORY[0x1B26E8C40](0x3A6863746970202CLL, 0xE800000000000000);
  OUTLINED_FUNCTION_8(OBJC_IVAR____TtC6Speech14OndeviceRecord_pitch);
  v42 = 0xE300000000000000;
  v43 = 7104878;
  v44 = 0xE300000000000000;
  if ((v45 & 1) == 0)
  {
    v46 = *v41;
    v43 = sub_1AC7A0418();
    v44 = v47;
  }

  MEMORY[0x1B26E8C40](v43, v44);

  MEMORY[0x1B26E8C40](0x656D4C74696A202CLL, 0xED00003A64657355);
  OUTLINED_FUNCTION_1_1(OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeUsed);
  if (v50)
  {
    v51 = 0xE500000000000000;
  }

  else
  {
    v51 = 0xE400000000000000;
  }

  if (v48 == 2)
  {
    v52 = 7104878;
  }

  else
  {
    v52 = v49;
  }

  if (v48 == 2)
  {
    v53 = 0xE300000000000000;
  }

  else
  {
    v53 = v51;
  }

  MEMORY[0x1B26E8C40](v52, v53);

  MEMORY[0x1B26E8C40](0x656D4C746F61202CLL, 0xED00003A64657355);
  OUTLINED_FUNCTION_1_1(OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeUsed);
  if (v50)
  {
    v56 = 0xE500000000000000;
  }

  else
  {
    v56 = 0xE400000000000000;
  }

  if (v54 == 2)
  {
    v57 = 7104878;
  }

  else
  {
    v57 = v55;
  }

  if (v54 == 2)
  {
    v58 = 0xE300000000000000;
  }

  else
  {
    v58 = v56;
  }

  MEMORY[0x1B26E8C40](v57, v58);

  MEMORY[0x1B26E8C40](0xD000000000000013, 0x80000001AC7B4B50);
  OUTLINED_FUNCTION_1_1(OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeRecognized);
  if (v50)
  {
    v61 = 0xE500000000000000;
  }

  else
  {
    v61 = 0xE400000000000000;
  }

  if (v59 == 2)
  {
    v62 = 7104878;
  }

  else
  {
    v62 = v60;
  }

  if (v59 == 2)
  {
    v63 = 0xE300000000000000;
  }

  else
  {
    v63 = v61;
  }

  MEMORY[0x1B26E8C40](v62, v63);

  MEMORY[0x1B26E8C40](0xD000000000000013, 0x80000001AC7B4B70);
  OUTLINED_FUNCTION_1_1(OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeRecognized);
  if (v50)
  {
    v66 = 0xE500000000000000;
  }

  else
  {
    v66 = 0xE400000000000000;
  }

  if (v64 == 2)
  {
    v67 = 7104878;
  }

  else
  {
    v67 = v65;
  }

  if (v64 == 2)
  {
    v68 = 0xE300000000000000;
  }

  else
  {
    v68 = v66;
  }

  MEMORY[0x1B26E8C40](v67, v68);

  MEMORY[0x1B26E8C40](0x656369766564202CLL, 0xEE003A7373616C43);
  v69 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass);
  v70 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass + 8);

  MEMORY[0x1B26E8C40](v69, v70);

  MEMORY[0x1B26E8C40](0x656369766564202CLL, 0xED00003A65707954);
  v71 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType);
  v72 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType + 8);

  MEMORY[0x1B26E8C40](v71, v72);

  MEMORY[0x1B26E8C40](0x656369766564202CLL, 0xEE003A646C697542);
  OUTLINED_FUNCTION_5_1(OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceBuild);
  MEMORY[0x1B26E8C40](0x656369766564202CLL, v71);

  MEMORY[0x1B26E8C40](0x697269537369202CLL, 0xEE003A6E4974704FLL);
  v73 = OUTLINED_FUNCTION_4(OBJC_IVAR____TtC6Speech14OndeviceRecord_isSiriOptIn);
  if (v50)
  {
    v74 = 0xE500000000000000;
  }

  else
  {
    v74 = 0xE400000000000000;
  }

  MEMORY[0x1B26E8C40](v73, v74);

  MEMORY[0x1B26E8C40](0xD000000000000015, 0x80000001AC7B4B90);
  v75 = OUTLINED_FUNCTION_4(OBJC_IVAR____TtC6Speech14OndeviceRecord_isAssistantEnabled);
  if (v50)
  {
    v76 = 0xE500000000000000;
  }

  else
  {
    v76 = 0xE400000000000000;
  }

  MEMORY[0x1B26E8C40](v75, v76);

  MEMORY[0x1B26E8C40](0xD000000000000015, 0x80000001AC7B4BB0);
  v77 = OUTLINED_FUNCTION_4(OBJC_IVAR____TtC6Speech14OndeviceRecord_isDictationEnabled);
  if (v50)
  {
    v78 = 0xE500000000000000;
  }

  else
  {
    v78 = 0xE400000000000000;
  }

  MEMORY[0x1B26E8C40](v77, v78);

  MEMORY[0x1B26E8C40](0xD00000000000001BLL, 0x80000001AC7B4BD0);
  if (*(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales))
  {
    v79 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales);

    v81 = MEMORY[0x1B26E8D20](v80, MEMORY[0x1E69E6158]);
    v42 = v82;
  }

  else
  {
    v81 = 7104878;
  }

  MEMORY[0x1B26E8C40](v81, v42);

  MEMORY[0x1B26E8C40](0xD00000000000001BLL, 0x80000001AC7B4BF0);
  v83 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_activeDictationLanguages);

  v85 = MEMORY[0x1B26E8D20](v84, MEMORY[0x1E69E6158]);
  v87 = v86;

  MEMORY[0x1B26E8C40](v85, v87);

  MEMORY[0x1B26E8C40](0xD000000000000028, 0x80000001AC7B4C10);
  if (*(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isMultipleDictationKeyboardsInstalled))
  {
    v88 = 1702195828;
  }

  else
  {
    v88 = 0x65736C6166;
  }

  if (*(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isMultipleDictationKeyboardsInstalled))
  {
    v89 = 0xE400000000000000;
  }

  else
  {
    v89 = 0xE500000000000000;
  }

  MEMORY[0x1B26E8C40](v88, v89);

  return v94;
}

id sub_1AC5DB44C()
{
  v2 = v0;
  v3 = sub_1AC79F958();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_completionState);
  v14 = OBJC_IVAR____TtC6Speech14OndeviceRecord_asrId;
  OUTLINED_FUNCTION_12();
  sub_1AC5DC36C(v2 + v14, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3))
  {
    sub_1AC5DC870(v12);
    v82 = 0;
    v83 = 0;
  }

  else
  {
    (*(v4 + 16))(v7, v12, v3);
    sub_1AC5DC870(v12);
    v15 = sub_1AC79F908();
    v82 = v16;
    v83 = v15;
    (*(v4 + 8))(v7, v3);
  }

  v17 = OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId;
  OUTLINED_FUNCTION_12();
  sub_1AC5DC36C(v2 + v17, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v3))
  {
    sub_1AC5DC870(v1);
    v80 = 0;
    v81 = 0;
  }

  else
  {
    (*(v4 + 16))(v7, v1, v3);
    sub_1AC5DC870(v1);
    v18 = sub_1AC79F908();
    v80 = v19;
    v81 = v18;
    (*(v4 + 8))(v7, v3);
  }

  v20 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_timestamp);
  v21 = sub_1AC7A0EE8();
  v22 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType + 8);
  v78 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType);
  v79 = v21;
  v23 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_triggerType + 8);
  v76 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_triggerType);
  v24 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_asrTask + 8);
  v74 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_asrTask);
  v25 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_bundleId + 8);
  v72 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_bundleId);
  v26 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_clientId + 8);
  v70 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_clientId);
  v27 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_geoLMRegionId + 8);
  v68 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_geoLMRegionId);
  v28 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_locale + 8);
  v66 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_locale);
  v29 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_audioDurationMs);
  v65 = v28;

  v77 = v22;

  v73 = v24;

  v69 = v26;

  v75 = v23;

  v71 = v25;

  v67 = v27;

  v64 = sub_1AC7A03D8();
  v30 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_recognitionDurationMs);
  v63 = sub_1AC7A03D8();
  OUTLINED_FUNCTION_8(OBJC_IVAR____TtC6Speech14OndeviceRecord_snrRatio);
  if (v32)
  {
    v62 = 0;
  }

  else
  {
    v33 = *v31;
    v62 = sub_1AC7A0408();
  }

  OUTLINED_FUNCTION_8(OBJC_IVAR____TtC6Speech14OndeviceRecord_pitch);
  if (v35)
  {
    v61 = 0;
  }

  else
  {
    v36 = *v34;
    v61 = sub_1AC7A0408();
  }

  OUTLINED_FUNCTION_9_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeUsed);
  if (v37)
  {
    v60 = 0;
  }

  else
  {
    v60 = sub_1AC7A01A8();
  }

  OUTLINED_FUNCTION_9_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeUsed);
  if (v37)
  {
    v59 = 0;
  }

  else
  {
    v59 = sub_1AC7A01A8();
  }

  OUTLINED_FUNCTION_9_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_jitLmeRecognized);
  if (v37)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_1AC7A01A8();
  }

  OUTLINED_FUNCTION_9_0(OBJC_IVAR____TtC6Speech14OndeviceRecord_aotLmeRecognized);
  if (v37)
  {
    v57 = 0;
  }

  else
  {
    v57 = sub_1AC7A01A8();
  }

  v56 = v13 + 1;
  v38 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass + 8);
  v55 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass);
  v39 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType + 8);
  v54 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType);
  v40 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceBuild + 8);
  v53 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceBuild);
  v41 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isSiriOptIn);

  v52 = sub_1AC7A01A8();
  v42 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isAssistantEnabled);
  v43 = sub_1AC7A01A8();
  v44 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isDictationEnabled);
  v45 = sub_1AC7A01A8();
  v46 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_isMultipleDictationKeyboardsInstalled);
  v47 = sub_1AC7A01A8();
  if (*(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales))
  {
    v48 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales);
  }

  v49 = *(v2 + OBJC_IVAR____TtC6Speech14OndeviceRecord_activeDictationLanguages);
  objc_allocWithZone(MEMORY[0x1E698EA80]);

  return sub_1AC5DC3DC(v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v56, v62, v61, v60, v59, v58, v57, v55, v38, v54, v39, v53, v40, v52, v43, v45, v47);
}

uint64_t sub_1AC5DBB1C()
{
  sub_1AC5DC870(v0 + OBJC_IVAR____TtC6Speech14OndeviceRecord_asrId);
  sub_1AC5DC870(v0 + OBJC_IVAR____TtC6Speech14OndeviceRecord_requestId);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech14OndeviceRecord_invocationType);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech14OndeviceRecord_triggerType);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech14OndeviceRecord_asrTask);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech14OndeviceRecord_bundleId);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech14OndeviceRecord_clientId);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech14OndeviceRecord_geoLMRegionId);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech14OndeviceRecord_locale);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceClass);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceType);
  OUTLINED_FUNCTION_3_3(OBJC_IVAR____TtC6Speech14OndeviceRecord_deviceBuild);
  v1 = *(v0 + OBJC_IVAR____TtC6Speech14OndeviceRecord_enabledDictationLocales);

  v2 = *(v0 + OBJC_IVAR____TtC6Speech14OndeviceRecord_activeDictationLanguages);

  return v0;
}

uint64_t sub_1AC5DBBEC()
{
  sub_1AC5DBB1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for OndeviceRecord()
{
  result = qword_1EB56B108;
  if (!qword_1EB56B108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AC5DBC98()
{
  sub_1AC5DBDA8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1AC5DBDA8()
{
  if (!qword_1ED937D68)
  {
    sub_1AC79F958();
    v0 = sub_1AC7A0798();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED937D68);
    }
  }
}

void sub_1AC5DBE00()
{
  if (!*(v0 + 16))
  {
    v1 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v2 = [v1 ASR];
    swift_unknownObjectRelease();
    v3 = [v2 RequestMetricsRecord];
    swift_unknownObjectRelease();
    v4 = [v3 source];

    v5 = *(v0 + 16);
    *(v0 + 16) = v4;
  }
}

uint64_t sub_1AC5DBEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, void *a11, uint64_t *a12, uint64_t a13)
{
  v64 = a8;
  v65 = a4;
  v68 = a7;
  v69 = a5;
  v70 = a3;
  v66 = a6;
  v67 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v56 - v21;
  v71 = v13;
  sub_1AC5DBE00();
  type metadata accessor for Instrumentation();
  v60 = sub_1AC727560(a11, a13);
  sub_1AC5DC36C(a1, v22);
  sub_1AC5DC36C(a2, v20);
  v23 = mach_continuous_time();
  v24 = a12[3];
  v62 = a12[2];
  v63 = v23;
  v25 = a12[7];
  v61 = a12[6];
  v26 = a12[4];
  v27 = a12[5];
  v28 = a12[1];
  v58 = *a12;
  v59 = v26;
  v29 = *(a13 + 72);
  v30 = *(a13 + 64) * 1000.0;
  v31 = *(a13 + 56);
  v32 = *(a13 + 60);
  v57 = *(a13 + 240);
  v33 = type metadata accessor for OndeviceRecord();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v56[1] = swift_allocObject();
  v36 = v64;

  v37 = v65;

  v73 = v32;
  v55 = v67 | ((HIDWORD(v67) & 1) << 32);
  sub_1AC5DA268(v22, v20, v63, v62, v24, v61, v25, v70, v29, v30, v37, v59, v27, v58, v28, v69, v38, v68, v36, v60, v54, v31, (v31 | (v32 << 32)) >> 32, v55, SBYTE4(v55), SHIWORD(v55), v57, SBYTE1(v57), SBYTE2(v57), SHIBYTE(v57));
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v39 = sub_1AC79FDE8();
  __swift_project_value_buffer(v39, qword_1ED9386C8);

  v40 = sub_1AC79FDC8();
  v41 = sub_1AC7A05E8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v72 = v43;
    *v42 = 136315138;
    v44 = sub_1AC5DA9FC();
    v46 = sub_1AC5CFE74(v44, v45, &v72);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_1AC5BC000, v40, v41, "Created on-device record with contents %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1B26EAB10](v43, -1, -1);
    MEMORY[0x1B26EAB10](v42, -1, -1);
  }

  v47 = sub_1AC79FDC8();
  v48 = sub_1AC7A05D8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1AC5BC000, v47, v48, "Queueing on-device record for storage to Biome stream Siri.ASR.RequestMetricsRecord", v49, 2u);
    MEMORY[0x1B26EAB10](v49, -1, -1);
  }

  v50 = *(v71 + 16);
  if (v50)
  {
    v51 = v50;
    v52 = sub_1AC5DB44C();
    [v51 sendEvent_];
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AC5DC36C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1AC5DC3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, int a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, void *a37, void *a38)
{
  if (a2)
  {
    v51 = sub_1AC79FF58();

    if (a4)
    {
LABEL_3:
      v50 = sub_1AC79FF58();

      goto LABEL_6;
    }
  }

  else
  {
    v51 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v50 = 0;
LABEL_6:
  if (a7)
  {
    v49 = sub_1AC79FF58();
  }

  else
  {
    v49 = 0;
  }

  if (a9)
  {
    v48 = sub_1AC79FF58();
  }

  else
  {
    v48 = 0;
  }

  if (a11)
  {
    v47 = sub_1AC79FF58();
  }

  else
  {
    v47 = 0;
  }

  if (a13)
  {
    v46 = sub_1AC79FF58();
  }

  else
  {
    v46 = 0;
  }

  if (a15)
  {
    v45 = sub_1AC79FF58();
  }

  else
  {
    v45 = 0;
  }

  if (a17)
  {
    v58 = sub_1AC79FF58();
  }

  else
  {
    v58 = 0;
  }

  if (a19)
  {
    v57 = sub_1AC79FF58();
  }

  else
  {
    v57 = 0;
  }

  if (a30)
  {
    v55 = sub_1AC79FF58();
  }

  else
  {
    v55 = 0;
  }

  if (a32)
  {
    v56 = sub_1AC79FF58();
  }

  else
  {
    v56 = 0;
  }

  if (a34)
  {
    v40 = sub_1AC79FF58();
  }

  else
  {
    v40 = 0;
  }

  v43 = sub_1AC7A0148();

  v44 = sub_1AC7A0148();

  LODWORD(v42) = a22;
  v53 = [v52 initWithAsrId:v51 requestId:v50 timestamp:a5 invocationType:v49 triggerType:v48 asrTask:v47 bundleId:v46 clientId:v45 geoLMRegionId:v58 locale:v57 audioDurationMs:a20 recognitionDurationMs:a21 completionState:v42 snrRatio:a23 avgPitch:a24 jitLmeUsed:a25 aotLmeUsed:a26 jitLmeRecognized:a27 aotLmeRecognized:a28 deviceClass:v55 deviceType:v56 deviceBuild:v40 isSiriOptIn:a35 isAssistantEnabled:a36 isDictationEnabled:a37 isMultipleDictationKeyboardsInstalled:a38 enabledDictationLocales:v43 activeDictationLanguages:v44];

  return v53;
}

uint64_t sub_1AC5DC800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC5DC870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + a1))
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AC5DC950()
{
  OUTLINED_FUNCTION_85();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v1[12] = v7;
  v1[13] = v8;
  v1[11] = v9;
  v10 = sub_1AC79FC78();
  v1[20] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[21] = v11;
  v13 = *(v12 + 64);
  v1[22] = OUTLINED_FUNCTION_126();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F8, &unk_1AC7A6D20);
  v1[23] = v14;
  OUTLINED_FUNCTION_22(v14);
  v1[24] = v15;
  v17 = *(v16 + 64);
  v1[25] = OUTLINED_FUNCTION_126();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[26] = v18;
  OUTLINED_FUNCTION_22(v18);
  v1[27] = v19;
  v21 = *(v20 + 64);
  v1[28] = OUTLINED_FUNCTION_189();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B908, &qword_1AC7A6D30);
  v1[31] = v22;
  OUTLINED_FUNCTION_22(v22);
  v1[32] = v23;
  v25 = *(v24 + 64);
  v1[33] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1AC5DCB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v17 = v16[19];
  if (swift_distributed_actor_is_remote())
  {
    v18 = v16[33];
    v19 = v16[11];
    v20 = OUTLINED_FUNCTION_140(v16[19]);
    v16[9] = v19;
    v16[8] = v20;
    type metadata accessor for EARSpeechRecognitionResultStream();

    sub_1AC79FC98();
    OUTLINED_FUNCTION_92();
    v21 = sub_1AC5DDE3C();
    if (v18)
    {
      (*(v16[32] + 8))(v16[33], v16[31], v21);
      v41 = v16[8];

      v42 = v16[33];
      v43 = v16[29];
      v44 = v16[30];
      v45 = v16[28];
      v46 = v16[25];
      v47 = v16[22];

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_54();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      v26 = v16[30];
      v27 = v16[13];
      v16[2] = v16[12];
      v16[3] = v27;

      sub_1AC79FC98();
      v28 = OUTLINED_FUNCTION_200();
      sub_1AC5C6DD8(v28);
      v29 = v16[29];
      v30 = v16[15];
      v16[4] = v16[14];
      v16[5] = v30;

      sub_1AC79FC98();
      v31 = OUTLINED_FUNCTION_200();
      sub_1AC5C6DD8(v31);
      v32 = v16[25];
      v16[10] = v16[16];
      sub_1AC79FC98();
      v33 = OUTLINED_FUNCTION_200();
      sub_1AC5DDF60(v33);
      v34 = v16[28];
      v35 = v16[18];
      v16[6] = v16[17];
      v16[7] = v35;

      sub_1AC79FC98();
      v36 = OUTLINED_FUNCTION_200();
      v37 = sub_1AC5C6DD8(v36);
      v39 = nullsub_1(v37, v38);
      nullsub_1(v39, v40);
      v56 = v16[22];
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6DE8);
      v68 = v57;
      v58 = swift_task_alloc();
      v16[34] = v58;
      *v58 = v16;
      v58[1] = sub_1AC5DD024;
      v59 = v16[22];
      OUTLINED_FUNCTION_31_0(v16[19]);
      OUTLINED_FUNCTION_54();

      return v63(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, v68, a13, a14, a15, a16);
    }
  }

  else
  {
    v22 = swift_task_alloc();
    v16[37] = v22;
    *v22 = v16;
    v22[1] = sub_1AC5DD23C;
    v23 = v16[19];
    OUTLINED_FUNCTION_54();

    return sub_1AC5E2180();
  }
}

uint64_t sub_1AC5DD024()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 272);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v5[35] = v0;

  if (!v0)
  {
    v5[36] = v3;
  }

  v11 = v5[8];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC5DD23C()
{
  OUTLINED_FUNCTION_102();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 296);
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = v3[33];
  v8 = v3[30];
  v9 = v3[29];
  v10 = v3[28];
  v11 = v3[25];
  v12 = v3[22];

  v13 = *(v5 + 8);

  return v13(v2);
}

uint64_t sub_1AC5DD4E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v10 = *v8;
  v11 = a2[1];
  v3[6] = v11;
  v12 = *(v11 - 8);
  v3[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[8] = v14;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v34 = *v14;
  v33 = v14[1];
  v15 = a2[2];
  v3[9] = v15;
  v16 = *(v15 - 8);
  v3[10] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v3[11] = v18;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC6E6540();
  v31 = v18[1];
  v32 = *v18;
  v19 = a2[3];
  v3[12] = v19;
  v20 = *(v19 - 8);
  v3[13] = v20;
  v21 = *(v20 + 64) + 15;
  v22 = swift_task_alloc();
  v3[14] = v22;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v30 = *v22;
  v23 = a2[4];
  v3[15] = v23;
  v24 = *(v23 - 8);
  v3[16] = v24;
  v25 = *(v24 + 64) + 15;
  v26 = swift_task_alloc();
  v3[17] = v26;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v28 = *v26;
  v27 = v26[1];
  v29 = swift_task_alloc();
  v3[18] = v29;
  *v29 = v3;
  v29[1] = sub_1AC5DDAB0;

  return sub_1AC5DC950();
}

uint64_t sub_1AC5DDAB0()
{
  v1 = *(*v0 + 144);
  v35 = *(*v0 + 136);
  OUTLINED_FUNCTION_108();
  v34 = *(v2 + 128);
  OUTLINED_FUNCTION_108();
  v30 = *(v3 + 120);
  OUTLINED_FUNCTION_108();
  v33 = *(v4 + 112);
  OUTLINED_FUNCTION_108();
  v32 = *(v5 + 104);
  OUTLINED_FUNCTION_108();
  v28 = *(v6 + 96);
  OUTLINED_FUNCTION_108();
  v31 = *(v7 + 88);
  OUTLINED_FUNCTION_108();
  v29 = *(v8 + 80);
  OUTLINED_FUNCTION_108();
  v10 = *(v9 + 72);
  v27 = *(v11 + 64);
  OUTLINED_FUNCTION_108();
  v26 = *(v12 + 56);
  OUTLINED_FUNCTION_108();
  v14 = *(v13 + 48);
  v16 = v15[5];
  v17 = v15[4];
  v18 = v15[3];
  v19 = v15[2];
  OUTLINED_FUNCTION_141();
  v21 = v20;
  *v23 = v22;

  (*(v17 + 8))(v16, v18);
  (*(v26 + 8))(v27, v14);
  (*(v29 + 8))(v31, v10);
  (*(v32 + 8))(v33, v28);
  (*(v34 + 8))(v35, v30);

  v24 = *(v21 + 8);

  return v24();
}

__n128 sub_1AC5DDE3C()
{
  *(&v14 + 1) = type metadata accessor for EARSpeechRecognitionResultStream();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B908, &qword_1AC7A6D30);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  v1 = *v7;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC90, &qword_1AC7A7E08);
  *&v11 = v1;
  v8 = v13;
  v9 = v14;
  sub_1AC5C3968(&v11, v10);
  sub_1AC5C3978();
  v2 = *(*v0 + 16);
  sub_1AC5C1578(v2);
  v3 = *v0;
  *(v3 + 16) = v2 + 1;
  v4 = (v3 + (v2 << 6));
  result = v8;
  v6 = v10[1];
  v4[4] = v10[0];
  v4[5] = v6;
  v4[2] = v8;
  v4[3] = v9;
  *v0 = v3;
  return result;
}

__n128 sub_1AC5DE11C()
{
  *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B938, &qword_1AC7A72C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B920, &qword_1AC7A72B0);
  sub_1AC79FCA8();
  sub_1AC79FCA8();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC40, &qword_1AC7A7DB8);
  *&v10 = *(&v13 + 1);
  v7 = v12;
  v8 = v13;
  sub_1AC5C3968(&v10, v9);
  sub_1AC5C3978();
  v1 = *(*v0 + 16);
  sub_1AC5C1578(v1);
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  v3 = (v2 + (v1 << 6));
  result = v7;
  v5 = v9[1];
  v3[4] = v9[0];
  v3[5] = v5;
  v3[2] = v7;
  v3[3] = v8;
  *v0 = v2;
  return result;
}

__n128 sub_1AC5DE220()
{
  *(&v12 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B948, &unk_1AC7A73C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B940, &qword_1AC7A73B8);
  sub_1AC79FCA8();
  sub_1AC79FCA8();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC38, &qword_1AC7A7DB0);
  *&v9 = *(&v12 + 1);
  v6 = v11;
  v7 = v12;
  sub_1AC5C3968(&v9, v8);
  sub_1AC5C3978();
  v1 = *(*v0 + 16);
  sub_1AC5C1578(v1);
  v2 = *v0;
  *(v2 + 16) = v1 + 1;
  v3 = (v2 + (v1 << 6));
  result = v6;
  v5 = v8[1];
  v3[4] = v8[0];
  v3[5] = v5;
  v3[2] = v6;
  v3[3] = v7;
  *v0 = v2;
  return result;
}

void sub_1AC5DE590()
{
  OUTLINED_FUNCTION_28();
  v0 = sub_1AC79FB18();
  v1 = OUTLINED_FUNCTION_40(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_75(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE8, &unk_1AC7A9660);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_117();
  v9(v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBF0, &qword_1AC7A7D60);
  OUTLINED_FUNCTION_81(v10);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_10_0(v11, v12, v13, v14, v15);
}

void sub_1AC5DE7C4()
{
  OUTLINED_FUNCTION_28();
  v0 = sub_1AC79F7F8();
  v1 = OUTLINED_FUNCTION_40(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_75(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB40, &qword_1AC7A7C60);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_117();
  v9(v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB48, &qword_1AC7A7C68);
  OUTLINED_FUNCTION_81(v10);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_10_0(v11, v12, v13, v14, v15);
}

void sub_1AC5DE8D0()
{
  OUTLINED_FUNCTION_28();
  v1 = OUTLINED_FUNCTION_77();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_177(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB30, &qword_1AC7A7C50);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  sub_1AC5C71B8(v0, &qword_1EB56B8F0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB38, &qword_1AC7A7C58);
  *&v12 = v3;
  v9 = v14;
  v10 = v15;
  OUTLINED_FUNCTION_135(&v12, v11);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_10_0(v8, v9, v10, v11[0], v11[1]);
}

void sub_1AC5DECB0()
{
  OUTLINED_FUNCTION_28();
  v0 = sub_1AC79F958();
  v1 = OUTLINED_FUNCTION_40(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_75(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA78, &qword_1AC7A7B30);
  sub_1AC79FCA8();
  sub_1AC79FCA8();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_117();
  v9(v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA80, &qword_1AC7A7B38);
  OUTLINED_FUNCTION_81(v10);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_10_0(v11, v12, v13, v14, v15);
}

uint64_t sub_1AC5DEFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DEFC4, 0, 0);
}

uint64_t sub_1AC5DEFC4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v15);
    type metadata accessor for EARSpeechRecognitionAudioBuffer();
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5DF0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF0E4, 0, 0);
}

uint64_t sub_1AC5DF0E4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_120();
  *(v1 + 64) = sub_1AC5EFEBC(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_114_0();
    v12 = OUTLINED_FUNCTION_127_0();
    *(v1 + 72) = v12;
    OUTLINED_FUNCTION_23(v12, *(v1 + 40));
    v13 = *(MEMORY[0x1E69E8920] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v1 + 80) = v14;
    *v14 = v15;
    v14[1] = sub_1AC5DF1FC;
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5DF1FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5DF2FC()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1AC5DF360()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC5DF3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF3E8, 0, 0);
}

uint64_t sub_1AC5DF3E8()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    sub_1AC5CF764(0, &qword_1EB56AB70, off_1E797AC80);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5DF4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF51C, 0, 0);
}

uint64_t sub_1AC5DF51C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B998, &unk_1AC7A7A10);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5DF628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF64C, 0, 0);
}

uint64_t sub_1AC5DF64C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9A0, &unk_1AC7B2F90);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5DF758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF77C, 0, 0);
}

uint64_t sub_1AC5DF77C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    sub_1AC5CF764(0, &qword_1EB56AB28, off_1E797AC78);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5DF88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF8B0, 0, 0);
}

uint64_t sub_1AC5DF8B0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5EFEBC(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_56_1(v14);
    *v15 = v16;
    v15[1] = sub_1AC5C2260;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5DF9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DF9E0, 0, 0);
}

uint64_t sub_1AC5DF9E0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_25_1();
  *(v1 + 56) = sub_1AC5EFEBC(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v12);
    v13 = *(MEMORY[0x1E69E8920] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v1 + 72) = v14;
    *v14 = v15;
    v14[1] = sub_1AC5DFAEC;
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5DFAEC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5DFBEC()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC5DFC48()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC5DFCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5DFCD0, 0, 0);
}

uint64_t sub_1AC5DFCD0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5EFEBC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9A8, &qword_1AC7A7A20);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5DFDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5DFDF4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F00FC(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBF8, &qword_1AC7A7D70);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5DFF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5DFF18()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5F00FC(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_56_1(v14);
    *v15 = v16;
    v15[1] = sub_1AC5C2260;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E0024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E003C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5F00FC(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_56_1(v14);
    *v15 = v16;
    v15[1] = sub_1AC5C2260;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E0148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0160()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v15);
    type metadata accessor for LSRAssetInventory();
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0274()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0340(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBC8, &qword_1AC7A7D20);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E0380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0398()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0340(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBB8, &qword_1AC7A7D08);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E04A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E04BC()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_120();
  *(v1 + 64) = sub_1AC5F0340(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_114_0();
    v12 = OUTLINED_FUNCTION_127_0();
    *(v1 + 72) = v12;
    OUTLINED_FUNCTION_23(v12, *(v1 + 40));
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    *(v1 + 80) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B930, &qword_1AC7A72C0);
    OUTLINED_FUNCTION_26_1();
    *v14 = v15;
    v14[1] = sub_1AC5E05D8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E05D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5E06D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E06F0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0340(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    sub_1AC5CF764(0, &qword_1EB56AB60, off_1E797ADF8);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E0800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0818()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    type metadata accessor for EARSpeechRecognizer();
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E0914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0930()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_25_1();
  v1[7] = sub_1AC5C7608(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v12);
    v13 = *(MEMORY[0x1E69E8920] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    v1[9] = v14;
    *v14 = v15;
    v14[1] = sub_1AC5E0A40;
    v16 = v1[2];
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E0A40()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5E0B40()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1AC5E0B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0BB0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_120();
  *(v1 + 64) = sub_1AC5C7608(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_114_0();
    v12 = OUTLINED_FUNCTION_127_0();
    *(v1 + 72) = v12;
    OUTLINED_FUNCTION_23(v12, *(v1 + 40));
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    *(v1 + 80) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB18, &qword_1AC7A7C28);
    OUTLINED_FUNCTION_26_1();
    *v14 = v15;
    v14[1] = sub_1AC5E0CCC;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E0CCC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5E0DCC()
{
  OUTLINED_FUNCTION_85();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1AC5E0E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0E4C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v15);
    type metadata accessor for EAREuclid();
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E0F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E0F60()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v15);
    type metadata accessor for EARLanguageDetector();
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E105C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1074()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5C7608(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_56_1(v14);
    *v15 = v16;
    v15[1] = sub_1AC5E1180;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E1180()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5E1280()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_82();

  return v3(0);
}

uint64_t sub_1AC5E12E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1300()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v15);
    type metadata accessor for EARFullPayloadCorrector();
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5E13FC;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E13FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5E14FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1514()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5C7608(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v15);
    type metadata accessor for EARTranscriptionEvaluator();
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E1610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1628()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_25_1();
  *(v1 + 56) = sub_1AC5D0940(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v12);
    v13 = *(MEMORY[0x1E69E8920] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v1 + 72) = v14;
    *v14 = v15;
    v14[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E1734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E174C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F07C8(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    sub_1AC5CF764(0, &qword_1EB56AB70, off_1E797AC80);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E185C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1874()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_60_0();
  *(v1 + 48) = sub_1AC5F0A0C(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_149_0();

    return v5(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v12 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_20_0(v12);
    v13 = *(MEMORY[0x1E69E8920] + 4);
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_56_1(v14);
    *v15 = v16;
    v15[1] = sub_1AC5C2260;
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E1980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1998()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0C50(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    sub_1AC5CF764(0, &qword_1EB56BA40, off_1E797AC68);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E1AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1AC0()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0E94(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA18, &qword_1AC7A7AD0);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E1BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1BE4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0E94(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E1CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1D0C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F0E94(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9F8, &qword_1AC7A7AA0);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E1E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1E30()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_120();
  *(v1 + 64) = sub_1AC5F0E94(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_114_0();
    v12 = OUTLINED_FUNCTION_127_0();
    *(v1 + 72) = v12;
    OUTLINED_FUNCTION_23(v12, *(v1 + 40));
    v13 = *(MEMORY[0x1E69E8920] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v1 + 80) = v14;
    *v14 = v15;
    v14[1] = sub_1AC5E05D8;
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1AC5E1F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E1F60()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F07C8(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_68(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E2084()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = OUTLINED_FUNCTION_25_1();
  *(v2 + 56) = sub_1AC5F07C8(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_149_0();

    return v5(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v13 = OUTLINED_FUNCTION_127_0();
    OUTLINED_FUNCTION_5_2(v13);
    v14 = *(MEMORY[0x1E69E8920] + 4);
    v15 = swift_task_alloc();
    OUTLINED_FUNCTION_41(v15);
    type metadata accessor for EARLanguageDetectorAudioBuffer();
    OUTLINED_FUNCTION_26_1();
    *v0 = v16;
    v0[1] = sub_1AC5C55E8;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_1AC5E21FC()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B910, &unk_1AC7A6E00);
  v0[11] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_189();
  v0[14] = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC5E2300()
{
  OUTLINED_FUNCTION_102();
  v1 = v0[7];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[14];
    v3 = v0[5];
    v4 = OUTLINED_FUNCTION_140(v0[7]);
    OUTLINED_FUNCTION_206(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v5 = OUTLINED_FUNCTION_92();
    sub_1AC5DDFEC(v5);
    if (v2)
    {
      (*(v0[12] + 8))(v0[14], v0[11]);
      v14 = v0[2];

      v16 = v0[13];
      v15 = v0[14];
      v17 = v0[10];

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_168();

      __asm { BRAA            X1, X16 }
    }

    v11 = v0[13];
    v0[4] = v0[6];

    OUTLINED_FUNCTION_171_0();
    sub_1AC79FC98();
    v12 = sub_1AC5DDFEC(v11);
    nullsub_1(v12, v13);
    v20 = v0[10];
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(dword_1AC7A6E70);
    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_1AC5E256C;
    v22 = v0[10];
    OUTLINED_FUNCTION_9_1(v0[7]);
    OUTLINED_FUNCTION_168();

    __asm { BR              X3 }
  }

  v6 = v0[7];
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_168();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC5E256C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 120);
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 16);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E2684()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_166();
  v3(v2);
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_170();
  v4(v5);
  v6 = OUTLINED_FUNCTION_123();
  v4(v6);
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[10];

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_149_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1AC5E272C()
{
  OUTLINED_FUNCTION_85();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1AC5E2798()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v2 = OUTLINED_FUNCTION_166();
  v3(v2);
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_170();
  v4(v5);
  v6 = OUTLINED_FUNCTION_123();
  v4(v6);
  v7 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1AC5E2844(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[4] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v9 = *v7;
  v10 = a2[1];
  v2[5] = v10;
  v11 = *(v10 - 8);
  v2[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v2[7] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v14 = *v13;
  v15 = swift_task_alloc();
  v2[8] = v15;
  *v15 = v2;
  v15[1] = sub_1AC5E2A94;

  return sub_1AC5E21FC();
}

uint64_t sub_1AC5E2A94()
{
  OUTLINED_FUNCTION_50();
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[3];
  v6 = v0[5] - 8;
  v7 = v0[2] - 8;
  OUTLINED_FUNCTION_141();
  v9 = v8;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  v11 = *(v5 + 8);
  v12 = OUTLINED_FUNCTION_77();
  v13(v12);
  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_170();
  v16(v15);

  OUTLINED_FUNCTION_44();

  return v17();
}

uint64_t sub_1AC5E2C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC5E2C98, 0, 0);
}

uint64_t sub_1AC5E2C98()
{
  v32 = v1;
  v3 = OUTLINED_FUNCTION_38();
  v4 = sub_1AC5EFEBC(v3);
  if (v0)
  {
    OUTLINED_FUNCTION_17();
LABEL_3:

    return v5();
  }

  v7 = v4;
  v8 = v1[8];
  v9 = [v4 remoteObjectProxy];
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  OUTLINED_FUNCTION_43();
  v10 = v1[6];
  sub_1AC79FC68();
  v11 = sub_1AC7A0838();
  v13 = v12;

  if (v13)
  {
    v15 = v1[9];
    v14 = v1[10];
    v28 = MEMORY[0x1E69E7CC0];
    v16 = *(*(v14 + 128) + 16);

    os_unfair_lock_lock(v16);
    sub_1AC5D1B54(&v28, v15);
    os_unfair_lock_unlock(v16);
    v17 = v1[10];

    type metadata accessor for EARSpeechRecognizer();
    v2 = v10;
    sub_1AC5EDC90(v11, v13, v2);
    v19 = v18;

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v20 = sub_1AC79FDE8();
    __swift_project_value_buffer(v20, qword_1ED9386C8);
    if (v19)
    {

      OUTLINED_FUNCTION_29();
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v26 = v11;
  v27 = v2;

  v21 = sub_1AC79FDC8();
  v22 = sub_1AC7A05F8();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_107();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    v30 = 0;
    *v23 = 136315138;
    v31 = 0xE000000000000000;
    sub_1AC7A09C8();

    v30 = 0xD00000000000002ALL;
    v31 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v26, v13);

    v25 = sub_1AC5CFE74(v30, v31, &v29);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_1AC5BC000, v21, v22, "Failed precondition: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_70_1();
    MEMORY[0x1B26EAB10]();
    OUTLINED_FUNCTION_70_1();
    MEMORY[0x1B26EAB10]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5E2FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E3470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E36C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E3918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E3B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E3DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E4014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC5E4268()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B918, &unk_1AC7ACDB0);
  v0[11] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC5E4360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  v12 = v11[7];
  if (swift_distributed_actor_is_remote())
  {
    v13 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v13);
    v14 = OUTLINED_FUNCTION_117();
    sub_1AC5CFBB8(v14, v15);
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v16 = OUTLINED_FUNCTION_63();
    v17 = sub_1AC5D0788(v16);
    if (v10)
    {
      v19 = OUTLINED_FUNCTION_59_1();
      v20(v19);
      v21 = v11[4];

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
    }

    else
    {
      nullsub_1(v17, v18);
      v36 = v11[10];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v49 = v37;
      v38 = swift_task_alloc();
      v39 = OUTLINED_FUNCTION_143_0(v38);
      *v39 = v40;
      OUTLINED_FUNCTION_14_1(v39);
      OUTLINED_FUNCTION_174();

      return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, v49);
    }
  }

  else
  {
    v31 = v11[7];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v32, v33, v34);
  }
}

uint64_t sub_1AC5E44FC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 112);
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 32);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E4614(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = *v6;
    v9 = v6[1];
    v10 = swift_task_alloc();
    v2[5] = v10;
    *v10 = v2;
    v10[1] = sub_1AC604AD0;

    return sub_1AC5E4268();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5E4788()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B918, &unk_1AC7ACDB0);
  v0[11] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC5E4880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  v12 = v11[7];
  if (swift_distributed_actor_is_remote())
  {
    v13 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v13);
    v14 = OUTLINED_FUNCTION_117();
    sub_1AC5CFBB8(v14, v15);
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v16 = OUTLINED_FUNCTION_63();
    v17 = sub_1AC5D0788(v16);
    if (v10)
    {
      v19 = OUTLINED_FUNCTION_59_1();
      v20(v19);
      v21 = v11[4];

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
    }

    else
    {
      nullsub_1(v17, v18);
      v36 = v11[10];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v49 = v37;
      v38 = swift_task_alloc();
      v39 = OUTLINED_FUNCTION_143_0(v38);
      *v39 = v40;
      OUTLINED_FUNCTION_14_1(v39);
      OUTLINED_FUNCTION_174();

      return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, v49);
    }
  }

  else
  {
    v31 = v11[7];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v32, v33, v34);
  }
}

uint64_t sub_1AC5E4A1C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = *v6;
    v9 = v6[1];
    v10 = swift_task_alloc();
    v2[5] = v10;
    *v10 = v2;
    v10[1] = sub_1AC604AD0;

    return sub_1AC5E4788();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5E4B90()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B918, &unk_1AC7ACDB0);
  v0[11] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC5E4C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  v12 = v11[7];
  if (swift_distributed_actor_is_remote())
  {
    v13 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v13);
    v14 = OUTLINED_FUNCTION_117();
    sub_1AC5CFBB8(v14, v15);
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v16 = OUTLINED_FUNCTION_63();
    v17 = sub_1AC5D0788(v16);
    if (v10)
    {
      v19 = OUTLINED_FUNCTION_59_1();
      v20(v19);
      v21 = v11[4];

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
    }

    else
    {
      nullsub_1(v17, v18);
      v36 = v11[10];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v49 = v37;
      v38 = swift_task_alloc();
      v39 = OUTLINED_FUNCTION_143_0(v38);
      *v39 = v40;
      OUTLINED_FUNCTION_14_1(v39);
      OUTLINED_FUNCTION_174();

      return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, v49);
    }
  }

  else
  {
    v31 = v11[7];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v32, v33, v34);
  }
}

uint64_t sub_1AC5E4E24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = *v6;
    v9 = v6[1];
    v10 = swift_task_alloc();
    v2[5] = v10;
    *v10 = v2;
    v10[1] = sub_1AC604AD0;

    return sub_1AC5E4B90();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5E4F98()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5E5034()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A7018);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC5E5184()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v9 = v6[8];
  *v8 = *v1;
  v7[9] = v0;

  v10 = v6[7];

  if (!v0)
  {
    v7[10] = v3;
    v7[11] = v5;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC5E52BC()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_69_0();
  v2(v1);

  v3 = v0[1];
  v5 = v0[10];
  v4 = v0[11];

  return v3(v4, v5);
}

uint64_t sub_1AC5E5360()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_61();
  v1(v0);
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC5E53C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E545C;

  return sub_1AC5E4F98();
}

uint64_t sub_1AC5E545C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v8 = *v0;
  *v3 = v4;
  v3[1] = v5;

  OUTLINED_FUNCTION_44();

  return v6();
}

uint64_t sub_1AC5E5590()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5E562C()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A7070);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC5E577C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  v5 = v3[8];
  *v4 = *v2;
  v3[9] = v0;

  OUTLINED_FUNCTION_132_0();
  v7 = *(v6 + 56);

  if (!v0)
  {
    v3[10] = v1;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E58C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC5E5590();
}

uint64_t sub_1AC5E5994()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5E5A30()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A70E0);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC5E5BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC5E5994();
}

uint64_t sub_1AC5E5C7C()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5E5D18()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A7150);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC5E5E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC5E5C7C();
}

uint64_t sub_1AC5E5F64()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5E6000()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A71C8);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC5E6150()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_18();
  *v4 = v3;
  v5 = v3[8];
  *v4 = *v2;
  v3[9] = v0;

  OUTLINED_FUNCTION_132_0();
  v7 = *(v6 + 56);

  if (!v0)
  {
    v3[10] = v1;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E626C()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_69_0();
  v2(v1);

  OUTLINED_FUNCTION_82();
  v4 = *(v0 + 80);

  return v3(v4);
}

uint64_t sub_1AC5E630C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E63A4;

  return sub_1AC5E5F64();
}

uint64_t sub_1AC5E63A4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 24);
  v6 = *v0;
  **(v1 + 16) = v3;

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC5E64D8()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5E6574()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    nullsub_1(v5, v6);
    if (v0)
    {

      v7 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v9(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      v21 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v22 = swift_task_alloc();
      v23 = OUTLINED_FUNCTION_76(v22);
      *v23 = v24;
      OUTLINED_FUNCTION_6_0(v23);
      OUTLINED_FUNCTION_155();

      return v28(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

uint64_t sub_1AC5E66B8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 64);
  *v4 = *v2;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 56);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E67D0()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_61();
  v2(v1);
  v3 = *(v0 + 48);

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1AC5E6838()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC5E6890()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC5E64D8();
}

uint64_t sub_1AC5E6924()
{
  OUTLINED_FUNCTION_85();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  v1[9] = v7;
  v8 = sub_1AC79FC78();
  v1[16] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[17] = v9;
  v11 = *(v10 + 64);
  v1[18] = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[19] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[20] = v13;
  v15 = *(v14 + 64);
  v1[21] = OUTLINED_FUNCTION_189();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1AC5E6A48()
{
  OUTLINED_FUNCTION_102();
  v1 = v0[15];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[9];
    v3 = v0[10];
    v5 = OUTLINED_FUNCTION_140(v0[15]);
    OUTLINED_FUNCTION_181(v5);
    OUTLINED_FUNCTION_197();
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v6 = OUTLINED_FUNCTION_92();
    sub_1AC5C6DD8(v6);
    if (v2)
    {
      (*(v0[20] + 8))(v0[23], v0[19]);
      v20 = v0[8];

      v22 = v0[22];
      v21 = v0[23];
      v23 = v0[21];
      v24 = v0[18];

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_168();

      __asm { BRAA            X1, X16 }
    }

    v12 = v0[22];
    v13 = v0[12];
    v0[4] = v0[11];
    v0[5] = v13;

    OUTLINED_FUNCTION_196();
    OUTLINED_FUNCTION_164();
    sub_1AC79FC98();
    v14 = OUTLINED_FUNCTION_119();
    sub_1AC5C6DD8(v14);
    v15 = v0[21];
    v16 = v0[14];
    v0[6] = v0[13];
    v0[7] = v16;

    OUTLINED_FUNCTION_118_0();
    sub_1AC79FC98();
    v17 = OUTLINED_FUNCTION_119();
    v18 = sub_1AC5C6DD8(v17);
    nullsub_1(v18, v19);
    v27 = v0[18];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(dword_1AC7A6E70);
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_1AC5E6D20;
    v29 = v0[18];
    OUTLINED_FUNCTION_31_0(v0[15]);
    OUTLINED_FUNCTION_168();

    __asm { BR              X3 }
  }

  v7 = v0[15];
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_168();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E6D20()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 64);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E6E38()
{
  OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_172_0();
  v5(v4);
  v6 = *(v3 + 8);
  v6(v0, v2);
  v7 = OUTLINED_FUNCTION_193();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_198();
  (v6)(v8);
  v10 = v1[22];
  v9 = v1[23];
  v11 = v1[21];
  v12 = v1[18];

  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t sub_1AC5E6F08()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[18];

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1AC5E6F88()
{
  OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_172_0();
  v5(v4);
  v6 = *(v3 + 8);
  v6(v0, v2);
  v7 = OUTLINED_FUNCTION_193();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_198();
  (v6)(v8);
  v9 = v1[25];
  v11 = v1[22];
  v10 = v1[23];
  v12 = v1[21];
  v13 = v1[18];

  OUTLINED_FUNCTION_44();

  return v14();
}

uint64_t sub_1AC5E705C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[4] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1AC6E6540();
  v22 = v7[1];
  v23 = *v7;
  v9 = a2[1];
  v2[5] = v9;
  v10 = *(v9 - 8);
  v2[6] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v2[7] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1AC6E6540();
  v21 = *v12;
  v20 = v12[1];
  v13 = a2[2];
  v2[8] = v13;
  v14 = *(v13 - 8);
  v2[9] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v2[10] = v16;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v17 = *v16;
  v18 = v16[1];
  v19 = swift_task_alloc();
  v2[11] = v19;
  *v19 = v2;
  v19[1] = sub_1AC5E73A0;

  return sub_1AC5E6924();
}

uint64_t sub_1AC5E73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_50();
  v18 = v17[11];
  v19 = v17[10];
  v46 = v17[9];
  OUTLINED_FUNCTION_64_1();
  v21 = *(v20 + 64);
  v23 = *(v22 + 56);
  v45 = *(v22 + 48);
  OUTLINED_FUNCTION_64_1();
  v25 = *(v24 + 40);
  v27 = v26[4];
  v28 = v26[3];
  v29 = v26[2];
  OUTLINED_FUNCTION_141();
  v31 = v30;
  OUTLINED_FUNCTION_18();
  *v32 = v31;

  (*(v28 + 8))(v27, v29);
  (*(v45 + 8))(v23, v25);
  v33 = *(v46 + 8);
  v34 = OUTLINED_FUNCTION_117();
  v35(v34);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_54();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v21 - 8, v46, v16, a14, a15, a16);
}

uint64_t sub_1AC5E75E8()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 192) = v28;
  *(v1 + 200) = v0;
  *(v1 + 176) = v27;
  *(v1 + 160) = v2;
  *(v1 + 168) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  *(v1 + 128) = v6;
  *(v1 + 136) = v7;
  *(v1 + 112) = v8;
  *(v1 + 120) = v9;
  v10 = sub_1AC79FC78();
  *(v1 + 208) = v10;
  OUTLINED_FUNCTION_22(v10);
  *(v1 + 216) = v11;
  v13 = *(v12 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_126();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B920, &qword_1AC7A72B0);
  *(v1 + 232) = v14;
  OUTLINED_FUNCTION_22(v14);
  *(v1 + 240) = v15;
  v17 = *(v16 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_189();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B928, &qword_1AC7A72B8);
  *(v1 + 288) = v18;
  OUTLINED_FUNCTION_22(v18);
  *(v1 + 296) = v19;
  v21 = *(v20 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_189();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1AC5E7EF4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 328);
  *v4 = *v2;
  *(v3 + 336) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 64);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E800C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v24 = OUTLINED_FUNCTION_101();
  v25(v24);
  v26 = *(v19 + 8);
  v26(v23, v17);
  v26(v22, v17);
  v26(v21, v17);
  v26(v20, v17);
  v26(a10, v17);
  v27 = *(v18 + 8);
  v27(a11, v16);
  v27(a12, v16);
  v27(a13, v16);
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_54();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1AC5E8160()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_157();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC5E820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v25 = OUTLINED_FUNCTION_101();
  v26(v25);
  v27 = *(v20 + 8);
  v27(v24, v17);
  v27(v23, v17);
  v27(v22, v17);
  v27(v21, v17);
  v27(a10, v17);
  v28 = *(v18 + 8);
  v28(a11, v16);
  v28(a12, v16);
  v28(a13, v16);
  v29 = v19[42];
  v31 = v19[39];
  v30 = v19[40];
  v32 = v19[38];
  OUTLINED_FUNCTION_204();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_54();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1AC5E836C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[4] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v47 = v7[1];
  v48 = *v7;
  v9 = a2[1];
  v2[5] = v9;
  v10 = *(v9 - 8);
  v2[6] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v2[7] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1AC6E6540();
  v46 = *v12;
  v45 = v12[1];
  v13 = a2[2];
  v2[8] = v13;
  v14 = *(v13 - 8);
  v2[9] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v2[10] = v16;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1AC6E6540();
  v44 = *v16;
  v43 = v16[1];
  v17 = a2[3];
  v2[11] = v17;
  v18 = *(v17 - 8);
  v2[12] = v18;
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  v2[13] = v20;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1AC6E6540();
  v21 = *v20;
  v22 = a2[4];
  v2[14] = v22;
  v23 = *(v22 - 8);
  v2[15] = v23;
  v24 = *(v23 + 64) + 15;
  v25 = swift_task_alloc();
  v2[16] = v25;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1AC6E6540();
  v26 = *v25;
  v27 = a2[5];
  v2[17] = v27;
  v28 = *(v27 - 8);
  v2[18] = v28;
  v29 = *(v28 + 64) + 15;
  v30 = swift_task_alloc();
  v2[19] = v30;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1AC6E6540();
  v31 = *v30;
  v32 = a2[6];
  v2[20] = v32;
  v33 = *(v32 - 8);
  v2[21] = v33;
  v34 = *(v33 + 64) + 15;
  v35 = swift_task_alloc();
  v2[22] = v35;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1AC6E6540();
  v42 = *v35;
  v36 = a2[7];
  v2[23] = v36;
  v37 = *(v36 - 8);
  v2[24] = v37;
  v38 = *(v37 + 64) + 15;
  v39 = swift_task_alloc();
  v2[25] = v39;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v40 = *v39;
  v41 = swift_task_alloc();
  v2[26] = v41;
  *v41 = v2;
  v41[1] = sub_1AC5E8DF0;

  return sub_1AC5E75E8();
}

uint64_t sub_1AC5E8DF0()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 208);
  v48 = *(v0 + 200);
  OUTLINED_FUNCTION_64_1();
  v47 = *(v2 + 192);
  OUTLINED_FUNCTION_64_1();
  v41 = *(v3 + 184);
  OUTLINED_FUNCTION_64_1();
  v46 = *(v4 + 176);
  OUTLINED_FUNCTION_64_1();
  v45 = *(v5 + 168);
  OUTLINED_FUNCTION_64_1();
  v39 = *(v6 + 160);
  OUTLINED_FUNCTION_64_1();
  v44 = *(v7 + 152);
  OUTLINED_FUNCTION_64_1();
  v43 = *(v8 + 144);
  OUTLINED_FUNCTION_64_1();
  v34 = *(v9 + 136);
  OUTLINED_FUNCTION_64_1();
  v42 = *(v10 + 128);
  OUTLINED_FUNCTION_64_1();
  v40 = *(v11 + 120);
  OUTLINED_FUNCTION_64_1();
  v31 = *(v12 + 112);
  OUTLINED_FUNCTION_64_1();
  v38 = *(v13 + 104);
  OUTLINED_FUNCTION_64_1();
  v37 = *(v14 + 96);
  OUTLINED_FUNCTION_64_1();
  v16 = *(v15 + 88);
  v36 = *(v17 + 80);
  OUTLINED_FUNCTION_64_1();
  v35 = *(v18 + 72);
  OUTLINED_FUNCTION_64_1();
  v20 = *(v19 + 64);
  v33 = *(v21 + 56);
  OUTLINED_FUNCTION_64_1();
  v32 = *(v22 + 48);
  OUTLINED_FUNCTION_64_1();
  v24 = *(v23 + 40);
  v26 = v25[4];
  v27 = v25[3];
  v28 = v25[2];
  OUTLINED_FUNCTION_141();

  (*(v27 + 8))(v26, v28);
  (*(v32 + 8))(v33, v24);
  (*(v35 + 8))(v36, v20);
  (*(v37 + 8))(v38, v16);
  (*(v40 + 8))(v42, v31);
  (*(v43 + 8))(v44, v34);
  (*(v45 + 8))(v46, v39);
  (*(v47 + 8))(v48, v41);

  OUTLINED_FUNCTION_44();

  return v29();
}

uint64_t sub_1AC5E92CC()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1AC79FC78();
  v1[6] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B940, &qword_1AC7A73B8);
  v1[9] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC5E93CC()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[11];
    v3 = v0[4];
    v4 = OUTLINED_FUNCTION_140(v0[5]);
    OUTLINED_FUNCTION_206(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B948, &unk_1AC7A73C0);
    OUTLINED_FUNCTION_144();
    sub_1AC79FC98();
    OUTLINED_FUNCTION_92();
    v7 = sub_1AC5DE220();
    if (v2)
    {
      (*(v0[10] + 8))(v0[11], v0[9], v7);
      v8 = v0[2];

      OUTLINED_FUNCTION_207();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v10(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    else
    {
      nullsub_1(v5, v6);
      v23 = v0[8];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v24 = swift_task_alloc();
      v0[12] = v24;
      *v24 = v0;
      v24[1] = sub_1AC5E9574;
      v25 = v0[8];
      OUTLINED_FUNCTION_9_1(v0[5]);
      OUTLINED_FUNCTION_155();

      return v29(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  else
  {
    v18 = v0[5];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC5E9574()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 96);
  *v4 = *v2;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 16);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E968C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = *v6;
    v9 = swift_task_alloc();
    v2[5] = v9;
    *v9 = v2;
    v9[1] = sub_1AC604AD0;

    return sub_1AC5E92CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5E97FC()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v0[11] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC5E98F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  v12 = v11[7];
  if (swift_distributed_actor_is_remote())
  {
    v13 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v13);

    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v14 = OUTLINED_FUNCTION_63();
    v15 = sub_1AC5C6DD8(v14);
    if (v10)
    {
      v17 = OUTLINED_FUNCTION_59_1();
      v18(v17);
      v19 = v11[4];

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
    }

    else
    {
      nullsub_1(v15, v16);
      v34 = v11[10];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v47 = v35;
      v36 = swift_task_alloc();
      v37 = OUTLINED_FUNCTION_143_0(v36);
      *v37 = v38;
      OUTLINED_FUNCTION_14_1(v37);
      OUTLINED_FUNCTION_174();

      return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
    }
  }

  else
  {
    v29 = v11[7];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v30, v31, v32);
  }
}

uint64_t sub_1AC5E9A90(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = *v6;
    v9 = v6[1];
    v10 = swift_task_alloc();
    v2[5] = v10;
    *v10 = v2;
    v10[1] = sub_1AC604AD0;

    return sub_1AC5E97FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5E9C04()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v0[11] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC5E9CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  v12 = v11[7];
  if (swift_distributed_actor_is_remote())
  {
    v13 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v13);

    OUTLINED_FUNCTION_196();
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v14 = OUTLINED_FUNCTION_63();
    v15 = sub_1AC5C6DD8(v14);
    if (v10)
    {
      v17 = OUTLINED_FUNCTION_59_1();
      v18(v17);
      v19 = v11[4];

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
    }

    else
    {
      nullsub_1(v15, v16);
      v34 = v11[10];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v47 = v35;
      v36 = swift_task_alloc();
      v37 = OUTLINED_FUNCTION_143_0(v36);
      *v37 = v38;
      OUTLINED_FUNCTION_14_1(v37);
      OUTLINED_FUNCTION_174();

      return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
    }
  }

  else
  {
    v29 = v11[7];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v30, v31, v32);
  }
}

uint64_t sub_1AC5E9E88()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 112);
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 32);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5E9FA0()
{
  OUTLINED_FUNCTION_72();
  v1 = OUTLINED_FUNCTION_190();
  v2(v1);
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_89();
  v5(v4);
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1AC5EA028()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC5EA084()
{
  OUTLINED_FUNCTION_72();
  v2 = OUTLINED_FUNCTION_190();
  v3(v2);
  v4 = *(v0 + 8);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);
  v7 = v1[15];
  v8 = v1[13];
  v9 = v1[10];

  OUTLINED_FUNCTION_44();

  return v10();
}

uint64_t sub_1AC5EA118(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = *v6;
    v9 = v6[1];
    v10 = swift_task_alloc();
    v2[5] = v10;
    *v10 = v2;
    v10[1] = sub_1AC604AD0;

    return sub_1AC5E9C04();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5EA28C()
{
  OUTLINED_FUNCTION_85();
  v3 = OUTLINED_FUNCTION_106_0(v1, v2);
  v0[8] = v3;
  OUTLINED_FUNCTION_22(v3);
  v0[9] = v4;
  v6 = *(v5 + 64);
  v0[10] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v0[11] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[12] = v8;
  v10 = *(v9 + 64);
  v0[13] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC5EA384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  v12 = v11[7];
  if (swift_distributed_actor_is_remote())
  {
    v13 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_62_0(v13);

    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_32();
    sub_1AC79FC98();
    v14 = OUTLINED_FUNCTION_63();
    v15 = sub_1AC5C6DD8(v14);
    if (v10)
    {
      v17 = OUTLINED_FUNCTION_59_1();
      v18(v17);
      v19 = v11[4];

      OUTLINED_FUNCTION_162();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
    }

    else
    {
      nullsub_1(v15, v16);
      v34 = v11[10];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v47 = v35;
      v36 = swift_task_alloc();
      v37 = OUTLINED_FUNCTION_143_0(v36);
      *v37 = v38;
      OUTLINED_FUNCTION_14_1(v37);
      OUTLINED_FUNCTION_174();

      return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, v47);
    }
  }

  else
  {
    v29 = v11[7];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v30, v31, v32);
  }
}

uint64_t sub_1AC5EA510(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = *v6;
    v9 = v6[1];
    v10 = swift_task_alloc();
    v2[5] = v10;
    *v10 = v2;
    v10[1] = sub_1AC604AD0;

    return sub_1AC5EA28C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5EA684()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5EA720()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    nullsub_1(v5, v6);
    if (v0)
    {

      v7 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v9(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      v21 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v22 = swift_task_alloc();
      v23 = OUTLINED_FUNCTION_76(v22);
      *v23 = v24;
      OUTLINED_FUNCTION_6_0(v23);
      OUTLINED_FUNCTION_155();

      return v28(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

uint64_t sub_1AC5EA864()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 64);
  *v4 = *v2;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 56);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5EA97C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC5EA684();
}

uint64_t sub_1AC5EAA10()
{
  OUTLINED_FUNCTION_85();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_1AC79FC78();
  v1[12] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B950, &qword_1AC7A7590);
  v1[15] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[16] = v11;
  v13 = *(v12 + 64);
  v1[17] = OUTLINED_FUNCTION_126();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B958, &qword_1AC7A7598);
  v1[18] = v14;
  OUTLINED_FUNCTION_22(v14);
  v1[19] = v15;
  v17 = *(v16 + 64);
  v1[20] = OUTLINED_FUNCTION_126();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B960, &qword_1AC7A75A0);
  v1[21] = v18;
  OUTLINED_FUNCTION_22(v18);
  v1[22] = v19;
  v21 = *(v20 + 64);
  v1[23] = OUTLINED_FUNCTION_126();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B968, &qword_1AC7A75A8);
  v1[24] = v22;
  OUTLINED_FUNCTION_22(v22);
  v1[25] = v23;
  v25 = *(v24 + 64);
  v1[26] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1AC5EAC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v15 = v14[11];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[26];
    v17 = v14[7];
    v18 = OUTLINED_FUNCTION_140(v14[11]);
    v14[3] = v17;
    v14[2] = v18;
    sub_1AC5CF764(0, &qword_1EB56AAD0, &off_1E797AE30);
    v19 = v17;
    sub_1AC79FC98();
    v20 = OUTLINED_FUNCTION_92();
    sub_1AC5DE324(v20);
    if (v16)
    {
      (*(v14[25] + 8))(v14[26], v14[24]);
      v37 = v14[2];

      OUTLINED_FUNCTION_154();
      v38 = v14[17];
      v39 = v14[14];

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_115();

      return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v26 = v14[23];
      v27 = v14[8];
      v14[4] = v27;
      sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
      v28 = v27;
      sub_1AC79FC98();
      sub_1AC5DE3C0(v26);
      v29 = v14[20];
      v30 = v14[9];
      v14[5] = v30;
      sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
      v31 = v30;
      OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_192();
      sub_1AC79FC98();
      sub_1AC5DE45C(v29);
      v32 = v14[17];
      v33 = v14[10];
      v14[6] = v33;
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B970, &unk_1AC7A75B0);
      OUTLINED_FUNCTION_192();
      sub_1AC79FC98();
      v35 = sub_1AC5DE4F8(v32);
      nullsub_1(v35, v36);
      v48 = v14[14];
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v61 = v49;
      v50 = swift_task_alloc();
      v14[27] = v50;
      *v50 = v14;
      v50[1] = sub_1AC5EB054;
      v51 = v14[14];
      OUTLINED_FUNCTION_15_0(v14[11]);
      OUTLINED_FUNCTION_115();

      return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, v61, a11, a12, a13, a14);
    }
  }

  else
  {
    v21 = v14[11];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_115();

    return MEMORY[0x1EEE6DFA0](v22, v23, v24);
  }
}

uint64_t sub_1AC5EB054()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 216);
  *v4 = *v2;
  *(v3 + 224) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 16);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5EB254()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1AC5EB3D0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[4] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AC6E6540();
  v9 = *v7;
  v10 = a2[1];
  v2[5] = v10;
  v11 = *(v10 - 8);
  v2[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v2[7] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v25 = *v13;
  v14 = a2[2];
  v2[8] = v14;
  v15 = *(v14 - 8);
  v2[9] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v2[10] = v17;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v24 = *v17;
  v18 = a2[3];
  v2[11] = v18;
  v19 = *(v18 - 8);
  v2[12] = v19;
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v2[13] = v21;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v22 = *v21;
  v23 = swift_task_alloc();
  v2[14] = v23;
  *v23 = v2;
  v23[1] = sub_1AC5EB834;

  return sub_1AC5EAA10();
}

uint64_t sub_1AC5EB834()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 112);
  v27 = *(v0 + 104);
  OUTLINED_FUNCTION_64_1();
  v26 = *(v2 + 96);
  OUTLINED_FUNCTION_64_1();
  v4 = *(v3 + 88);
  v25 = *(v5 + 80);
  OUTLINED_FUNCTION_64_1();
  v24 = *(v6 + 72);
  OUTLINED_FUNCTION_64_1();
  v8 = *(v7 + 64);
  v23 = *(v9 + 56);
  OUTLINED_FUNCTION_64_1();
  v22 = *(v10 + 48);
  OUTLINED_FUNCTION_64_1();
  v12 = *(v11 + 40);
  v14 = v13[4];
  v15 = v13[3];
  v16 = v13[2];
  OUTLINED_FUNCTION_141();
  v18 = v17;
  OUTLINED_FUNCTION_18();
  *v19 = v18;

  (*(v15 + 8))(v14, v16);
  (*(v22 + 8))(v23, v12);
  (*(v24 + 8))(v25, v8);
  (*(v26 + 8))(v27, v4);

  v20 = *(v18 + 8);

  return v20();
}

uint64_t sub_1AC5EBB24()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1AC79FC78();
  v1[6] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B960, &qword_1AC7A75A0);
  v1[9] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC5EBC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_102();
  v11 = v10[5];
  if (swift_distributed_actor_is_remote())
  {
    v12 = v10[11];
    v13 = v10[4];
    v14 = OUTLINED_FUNCTION_140(v10[5]);
    v10[3] = v13;
    v10[2] = v14;
    sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
    v15 = v13;
    OUTLINED_FUNCTION_144();
    sub_1AC79FC98();
    v16 = OUTLINED_FUNCTION_92();
    v17 = sub_1AC5DE3C0(v16);
    if (v12)
    {
      (*(v10[10] + 8))(v10[11], v10[9]);
      v19 = v10[2];

      OUTLINED_FUNCTION_207();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_174();

      return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
    }

    else
    {
      nullsub_1(v17, v18);
      v34 = v10[8];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A6E70);
      v46 = v35;
      v36 = swift_task_alloc();
      v10[12] = v36;
      *v36 = v10;
      v36[1] = sub_1AC5EBDE4;
      v37 = v10[8];
      OUTLINED_FUNCTION_15_0(v10[5]);
      OUTLINED_FUNCTION_174();

      return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, v46);
    }
  }

  else
  {
    v29 = v10[5];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_174();

    return MEMORY[0x1EEE6DFA0](v30, v31, v32);
  }
}

uint64_t sub_1AC5EBDE4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v1 + 96);
  *v4 = *v2;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_88();
  v7 = *(v6 + 16);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC5EBEFC()
{
  OUTLINED_FUNCTION_72();
  v1 = OUTLINED_FUNCTION_199();
  v2(v1);
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_89();
  v5(v4);
  OUTLINED_FUNCTION_207();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1AC5EBF84()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_207();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1AC5EBFE0()
{
  OUTLINED_FUNCTION_72();
  v2 = OUTLINED_FUNCTION_199();
  v3(v2);
  v4 = *(v0 + 8);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);
  v7 = v1[13];
  v8 = v1[11];
  v9 = v1[8];

  OUTLINED_FUNCTION_44();

  return v10();
}

uint64_t sub_1AC5EC074(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v2[4] = v6;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = *v6;
    v9 = swift_task_alloc();
    v2[5] = v9;
    *v9 = v2;
    v9[1] = sub_1AC5EC1E4;

    return sub_1AC5EBB24();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5EC1E4()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = v0[2] - 8;
  OUTLINED_FUNCTION_141();
  v6 = v5;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_170();
  v10(v9);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_149_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1AC5EC338()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5EC3D4()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_155();

      return v12(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A7750);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC5EC524()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v7 = *(v4 + 64);
  *v6 = *v1;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_132_0();
  v9 = *(v8 + 56);

  if (!v0)
  {
    *(v5 + 80) = v3 & 1;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5EC64C()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_69_0();
  v2(v1);

  OUTLINED_FUNCTION_82();
  v4 = *(v0 + 80);

  return v3(v4);
}

uint64_t sub_1AC5EC6EC()
{
  OUTLINED_FUNCTION_85();
  v0 = OUTLINED_FUNCTION_61();
  v1(v0);
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_82();

  return v2(0);
}

uint64_t sub_1AC5EC754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5EC7EC;

  return sub_1AC5EC338();
}

uint64_t sub_1AC5EC7EC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 24);
  v6 = *v0;
  **(v1 + 16) = v3;

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC5EC920()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5EC9BC()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A77A8);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC5ECB0C()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v7 = *(v4 + 64);
  *v6 = *v1;
  *(v5 + 72) = v0;

  v8 = *(v4 + 56);

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC5ECC40()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_69_0();
  v2(v1);

  OUTLINED_FUNCTION_44();
  v4.n128_u64[0] = *(v0 + 80);

  return v3(v4);
}

uint64_t sub_1AC5ECCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5ECD78;

  return sub_1AC5EC920();
}

uint64_t sub_1AC5ECD78()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  *v6 = v7;

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC5ECEA4()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5ECF40()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A7808);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC5ED0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC5ECEA4();
}

uint64_t sub_1AC5ED18C()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC5ED228()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_155();

      return v12(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(dword_1AC7A7750);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC5ED378()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v7 = *(v4 + 64);
  *v6 = *v1;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_132_0();
  v9 = *(v8 + 56);

  if (!v0)
  {
    *(v5 + 80) = v3 & 1;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC5ED4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AE4;

  return sub_1AC5ED18C();
}

uint64_t sub_1AC5ED59C(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EF99C(a1, a2, a3, a4, type metadata accessor for EARSpeechRecognizer);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARSpeechRecognizer();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    v11 = OUTLINED_FUNCTION_117();
    sub_1AC5D0DD0(v11, v12, v6);
  }

  return v10;
}

void *sub_1AC5ED634()
{
  v1 = v0;
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[17];
  sub_1AC6E80A4(v2, v3, *(v1 + 128));
  sub_1AC5D1128(v1[14], v1[15], *(v1 + 128));
  v5 = v1[17];

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1AC5ED684()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_1AC5D1128(*(v0 + 112), *(v0 + 120), *(v0 + 128));
    v1 = *(v0 + 136);

    swift_defaultActor_destroy();
  }

  else
  {
    sub_1AC5ED634();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC5ED700()
{
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognizer();
  OUTLINED_FUNCTION_103_0();
  sub_1AC604360(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC5ED77C()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARSpeechRecognizer();
    OUTLINED_FUNCTION_103_0();
    sub_1AC604360(v1, v2, v3);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC5ED84C()
{
  v1 = *v0;
  type metadata accessor for EARSpeechRecognizer();
  sub_1AC604360(&qword_1EB56AE98, v2, type metadata accessor for EARSpeechRecognizer);
  return sub_1AC79FC28();
}

uint64_t sub_1AC5ED8C4()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognizer();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}